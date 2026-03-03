FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]
```
Press **Ctrl + S** to save ✅

---

## Step 10: Create .dockerignore
Click **New File** → name it `.dockerignore`

Paste this inside:
```
node_modules
npm-debug.log
.git