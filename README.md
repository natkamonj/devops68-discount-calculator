# Discount Calculator API

Calculate discount amount and final price.

## Endpoint

### GET `/calculate`
https://github.com/nattaponkum/devops68-discount-calculator.git
**Parameters:**
- `price` (required): Original price
- `discount` (required): Discount percentage

**Example Request:**
```
http://localhost:3022/calculate?price=100&discount=20
```

**Example Response:**
```json
{
  "originalPrice": 100,
  "discountPercent": 20,
  "discountAmount": 20,
  "finalPrice": 80
}
```

<!-- 1. ให้ fork ต้นฉบับจากอาจารย์ไปไว้ใน GitHub account ของตนเองก่อน -->
<!-- จากนั้น clone ลงเครื่อง https://github.com/natkamonj/devops68-discount-calculator.git
2.ทำการ login เข้า Azure account โดยทำสั่ง az login แล้วเช็ค subscription ที่ใช้งาน โดย az account show  เพื่อคัดลอกค่า id ของ subscription มาใช้ในไฟล์ terraform.tfvars
3.เตรียมค่าใน terraform.tfvars โดยจะมี
resource_group_name = ชื่อ Resource Group ที่จะสร้าง
location = Azure region ที่จะ deploy
subscription_id = Azure Subscription ID ของผู้ใช้งาน
vm_admin_password = รหัสผ่านสำหรับ VM
github_repo_url = URL ของ GitHub repository ที่ fork มา
4.เข้าโฟลเดอร์ terraform โดยคำสั่ง cd terraform
5.cd terraform โดยคำสั่ง terraform init
6.ตรวจสอบแผนการสร้าง Infrastructure ด้วยคำสั่ง terraform plan
7.
8.ตรวจสอบ Output หลัง Deploy สำเร็จ จะขึ้นApply complete! Resources: 10 added, 0 changed, 0 destroyed.
app_url = "http://20.89.17.240:3022/calculate?price=100&discount=20"
public_ip = "20.89.17.240"
resource_group_name = "rg-devops68-discount-japaneast-3"
9.ทดสอบ Application ที่ Deploy แล้ว ด้วย http://20.89.17.240:3022/calculate?price=100&discount=20
10.ตรวจสอบ Resource บน Azure Portal เข้า Azure Portal แล้วตรวจสอบ Resource Group ที่ถูกสร้าง จะขึ้น rg-devops68-discount-japaneast-3  -->
