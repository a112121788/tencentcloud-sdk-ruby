# frozen_string_literal: true

# Copyright (c) 2017-2018 THL A29 Limited, a Tencent company. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module TencentCloud
  module Cam
    module V20190116
      # 访问密钥列表
      class AccessKey < TencentCloud::Common::AbstractModel
        # @param AccessKeyId: 访问密钥标识
        # @type AccessKeyId: String
        # @param Status: 密钥状态，激活（Active）或未激活（Inactive）
        # @type Status: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :AccessKeyId, :Status, :CreateTime
        
        def initialize(accesskeyid=nil, status=nil, createtime=nil)
          @AccessKeyId = accesskeyid
          @Status = status
          @CreateTime = createtime
        end

        def deserialize(params)
          @AccessKeyId = params['AccessKeyId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
        end
      end

      # AddUser请求参数结构体
      class AddUserRequest < TencentCloud::Common::AbstractModel
        # @param Name: 子用户用户名
        # @type Name: String
        # @param Remark: 子用户备注
        # @type Remark: String
        # @param ConsoleLogin: 子用户是否可以登录控制台。传0子用户无法登录控制台，传1子用户可以登录控制台。
        # @type ConsoleLogin: Integer
        # @param UseApi: 是否生成子用户密钥。传0不生成子用户密钥，传1生成子用户密钥。
        # @type UseApi: Integer
        # @param Password: 子用户控制台登录密码，若未进行密码规则设置则默认密码规则为8位以上同时包含大小写字母、数字和特殊字符。只有可以登录控制台时才有效，如果传空并且上面指定允许登录控制台，则自动生成随机密码，随机密码规则为32位包含大小写字母、数字和特殊字符。
        # @type Password: String
        # @param NeedResetPassword: 子用户是否要在下次登录时重置密码。传0子用户下次登录控制台不需重置密码，传1子用户下次登录控制台需要重置密码。
        # @type NeedResetPassword: Integer
        # @param PhoneNum: 手机号
        # @type PhoneNum: String
        # @param CountryCode: 区号
        # @type CountryCode: String
        # @param Email: 邮箱
        # @type Email: String

        attr_accessor :Name, :Remark, :ConsoleLogin, :UseApi, :Password, :NeedResetPassword, :PhoneNum, :CountryCode, :Email
        
        def initialize(name=nil, remark=nil, consolelogin=nil, useapi=nil, password=nil, needresetpassword=nil, phonenum=nil, countrycode=nil, email=nil)
          @Name = name
          @Remark = remark
          @ConsoleLogin = consolelogin
          @UseApi = useapi
          @Password = password
          @NeedResetPassword = needresetpassword
          @PhoneNum = phonenum
          @CountryCode = countrycode
          @Email = email
        end

        def deserialize(params)
          @Name = params['Name']
          @Remark = params['Remark']
          @ConsoleLogin = params['ConsoleLogin']
          @UseApi = params['UseApi']
          @Password = params['Password']
          @NeedResetPassword = params['NeedResetPassword']
          @PhoneNum = params['PhoneNum']
          @CountryCode = params['CountryCode']
          @Email = params['Email']
        end
      end

      # AddUser返回参数结构体
      class AddUserResponse < TencentCloud::Common::AbstractModel
        # @param Uin: 子用户 UIN
        # @type Uin: Integer
        # @param Name: 子用户用户名
        # @type Name: String
        # @param Password: 如果输入参数组合为自动生成随机密码，则返回生成的密码
        # @type Password: String
        # @param SecretId: 子用户密钥 ID
        # @type SecretId: String
        # @param SecretKey: 子用户密钥 Key
        # @type SecretKey: String
        # @param Uid: 子用户 UID
        # @type Uid: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Uin, :Name, :Password, :SecretId, :SecretKey, :Uid, :RequestId
        
        def initialize(uin=nil, name=nil, password=nil, secretid=nil, secretkey=nil, uid=nil, requestid=nil)
          @Uin = uin
          @Name = name
          @Password = password
          @SecretId = secretid
          @SecretKey = secretkey
          @Uid = uid
          @RequestId = requestid
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Name = params['Name']
          @Password = params['Password']
          @SecretId = params['SecretId']
          @SecretKey = params['SecretKey']
          @Uid = params['Uid']
          @RequestId = params['RequestId']
        end
      end

      # AddUserToGroup请求参数结构体
      class AddUserToGroupRequest < TencentCloud::Common::AbstractModel
        # @param Info: 添加的子用户 UID 和用户组 ID 关联关系
        # @type Info: Array

        attr_accessor :Info
        
        def initialize(info=nil)
          @Info = info
        end

        def deserialize(params)
          @Info = params['Info']
        end
      end

      # AddUserToGroup返回参数结构体
      class AddUserToGroupResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 策略关联的实体信息
      class AttachEntityOfPolicy < TencentCloud::Common::AbstractModel
        # @param Id: 实体ID
        # @type Id: String
        # @param Name: 实体名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Uin: 实体Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: Integer
        # @param RelatedType: 关联类型。1 用户关联 ； 2 用户组关联
        # @type RelatedType: Integer

        attr_accessor :Id, :Name, :Uin, :RelatedType
        
        def initialize(id=nil, name=nil, uin=nil, relatedtype=nil)
          @Id = id
          @Name = name
          @Uin = uin
          @RelatedType = relatedtype
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Uin = params['Uin']
          @RelatedType = params['RelatedType']
        end
      end

      # AttachGroupPolicy请求参数结构体
      class AttachGroupPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略 id
        # @type PolicyId: Integer
        # @param AttachGroupId: 用户组 id
        # @type AttachGroupId: Integer

        attr_accessor :PolicyId, :AttachGroupId
        
        def initialize(policyid=nil, attachgroupid=nil)
          @PolicyId = policyid
          @AttachGroupId = attachgroupid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @AttachGroupId = params['AttachGroupId']
        end
      end

      # AttachGroupPolicy返回参数结构体
      class AttachGroupPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 关联策略信息
      class AttachPolicyInfo < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略id
        # @type PolicyId: Integer
        # @param PolicyName: 策略名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyName: String
        # @param AddTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String
        # @param CreateMode: 创建来源，1 通过控制台创建, 2 通过策略语法创建。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateMode: Integer
        # @param PolicyType: 取值为user和QCS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyType: String
        # @param Remark: 策略备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param OperateOwnerUin: 策略关联操作者主帐号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateOwnerUin: String
        # @param OperateUin: 策略关联操作者ID，如果UinType为0表示子帐号Uin，如果UinType为1表示角色ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateUin: String
        # @param OperateUinType: UinType为0表示OperateUin字段是子帐号Uin，如果UinType为1表示OperateUin字段是角色ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateUinType: Integer
        # @param Deactived: 是否已下线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deactived: Integer
        # @param DeactivedDetail: 已下线的产品列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeactivedDetail: Array

        attr_accessor :PolicyId, :PolicyName, :AddTime, :CreateMode, :PolicyType, :Remark, :OperateOwnerUin, :OperateUin, :OperateUinType, :Deactived, :DeactivedDetail
        
        def initialize(policyid=nil, policyname=nil, addtime=nil, createmode=nil, policytype=nil, remark=nil, operateowneruin=nil, operateuin=nil, operateuintype=nil, deactived=nil, deactiveddetail=nil)
          @PolicyId = policyid
          @PolicyName = policyname
          @AddTime = addtime
          @CreateMode = createmode
          @PolicyType = policytype
          @Remark = remark
          @OperateOwnerUin = operateowneruin
          @OperateUin = operateuin
          @OperateUinType = operateuintype
          @Deactived = deactived
          @DeactivedDetail = deactiveddetail
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @AddTime = params['AddTime']
          @CreateMode = params['CreateMode']
          @PolicyType = params['PolicyType']
          @Remark = params['Remark']
          @OperateOwnerUin = params['OperateOwnerUin']
          @OperateUin = params['OperateUin']
          @OperateUinType = params['OperateUinType']
          @Deactived = params['Deactived']
          @DeactivedDetail = params['DeactivedDetail']
        end
      end

      # AttachRolePolicy请求参数结构体
      class AttachRolePolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID，入参PolicyId与PolicyName二选一
        # @type PolicyId: Integer
        # @param AttachRoleId: 角色ID，用于指定角色，入参 AttachRoleId 与 AttachRoleName 二选一
        # @type AttachRoleId: String
        # @param AttachRoleName: 角色名称，用于指定角色，入参 AttachRoleId 与 AttachRoleName 二选一
        # @type AttachRoleName: String
        # @param PolicyName: 策略名，入参PolicyId与PolicyName二选一
        # @type PolicyName: String

        attr_accessor :PolicyId, :AttachRoleId, :AttachRoleName, :PolicyName
        
        def initialize(policyid=nil, attachroleid=nil, attachrolename=nil, policyname=nil)
          @PolicyId = policyid
          @AttachRoleId = attachroleid
          @AttachRoleName = attachrolename
          @PolicyName = policyname
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @AttachRoleId = params['AttachRoleId']
          @AttachRoleName = params['AttachRoleName']
          @PolicyName = params['PolicyName']
        end
      end

      # AttachRolePolicy返回参数结构体
      class AttachRolePolicyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # AttachUserPolicy请求参数结构体
      class AttachUserPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略 id
        # @type PolicyId: Integer
        # @param AttachUin: 子账号 uin
        # @type AttachUin: Integer

        attr_accessor :PolicyId, :AttachUin
        
        def initialize(policyid=nil, attachuin=nil)
          @PolicyId = policyid
          @AttachUin = attachuin
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @AttachUin = params['AttachUin']
        end
      end

      # AttachUserPolicy返回参数结构体
      class AttachUserPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 角色关联的策略信息
      class AttachedPolicyOfRole < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: Integer
        # @param PolicyName: 策略名称
        # @type PolicyName: String
        # @param AddTime: 绑定时间
        # @type AddTime: String
        # @param PolicyType: 策略类型，User表示自定义策略，QCS表示预设策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyType: String
        # @param CreateMode: 策略创建方式，1表示按产品功能或项目权限创建，其他表示按策略语法创建
        # @type CreateMode: Integer
        # @param Deactived: 是否已下线(0:否 1:是)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deactived: Integer
        # @param DeactivedDetail: 已下线的产品列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeactivedDetail: Array
        # @param Description: 策略描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :PolicyId, :PolicyName, :AddTime, :PolicyType, :CreateMode, :Deactived, :DeactivedDetail, :Description
        
        def initialize(policyid=nil, policyname=nil, addtime=nil, policytype=nil, createmode=nil, deactived=nil, deactiveddetail=nil, description=nil)
          @PolicyId = policyid
          @PolicyName = policyname
          @AddTime = addtime
          @PolicyType = policytype
          @CreateMode = createmode
          @Deactived = deactived
          @DeactivedDetail = deactiveddetail
          @Description = description
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @AddTime = params['AddTime']
          @PolicyType = params['PolicyType']
          @CreateMode = params['CreateMode']
          @Deactived = params['Deactived']
          @DeactivedDetail = params['DeactivedDetail']
          @Description = params['Description']
        end
      end

      # ConsumeCustomMFAToken请求参数结构体
      class ConsumeCustomMFATokenRequest < TencentCloud::Common::AbstractModel
        # @param MFAToken: 自定义多因子验证Token
        # @type MFAToken: String

        attr_accessor :MFAToken
        
        def initialize(mfatoken=nil)
          @MFAToken = mfatoken
        end

        def deserialize(params)
          @MFAToken = params['MFAToken']
        end
      end

      # ConsumeCustomMFAToken返回参数结构体
      class ConsumeCustomMFATokenResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateGroup请求参数结构体
      class CreateGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 用户组名
        # @type GroupName: String
        # @param Remark: 用户组描述
        # @type Remark: String

        attr_accessor :GroupName, :Remark
        
        def initialize(groupname=nil, remark=nil)
          @GroupName = groupname
          @Remark = remark
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @Remark = params['Remark']
        end
      end

      # CreateGroup返回参数结构体
      class CreateGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 用户组 ID
        # @type GroupId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :RequestId
        
        def initialize(groupid=nil, requestid=nil)
          @GroupId = groupid
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreatePolicy请求参数结构体
      class CreatePolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyName: 策略名
        # @type PolicyName: String
        # @param PolicyDocument: 策略文档，示例：{"version":"2.0","statement":[{"action":"name/sts:AssumeRole","effect":"allow","principal":{"service":["cloudaudit.cloud.tencent.com","cls.cloud.tencent.com"]}}]}，principal用于指定角色的授权对象。获取该参数可参阅 获取角色详情（https://cloud.tencent.com/document/product/598/36221） 输出参数RoleInfo
        # @type PolicyDocument: String
        # @param Description: 策略描述
        # @type Description: String

        attr_accessor :PolicyName, :PolicyDocument, :Description
        
        def initialize(policyname=nil, policydocument=nil, description=nil)
          @PolicyName = policyname
          @PolicyDocument = policydocument
          @Description = description
        end

        def deserialize(params)
          @PolicyName = params['PolicyName']
          @PolicyDocument = params['PolicyDocument']
          @Description = params['Description']
        end
      end

      # CreatePolicy返回参数结构体
      class CreatePolicyResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: 新增策略ID
        # @type PolicyId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyId, :RequestId
        
        def initialize(policyid=nil, requestid=nil)
          @PolicyId = policyid
          @RequestId = requestid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @RequestId = params['RequestId']
        end
      end

      # CreatePolicyVersion请求参数结构体
      class CreatePolicyVersionRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: Integer
        # @param PolicyDocument: 策略文本信息
        # @type PolicyDocument: String
        # @param SetAsDefault: 是否设置为当前策略的版本
        # @type SetAsDefault: Boolean

        attr_accessor :PolicyId, :PolicyDocument, :SetAsDefault
        
        def initialize(policyid=nil, policydocument=nil, setasdefault=nil)
          @PolicyId = policyid
          @PolicyDocument = policydocument
          @SetAsDefault = setasdefault
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyDocument = params['PolicyDocument']
          @SetAsDefault = params['SetAsDefault']
        end
      end

      # CreatePolicyVersion返回参数结构体
      class CreatePolicyVersionResponse < TencentCloud::Common::AbstractModel
        # @param VersionId: 策略版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VersionId, :RequestId
        
        def initialize(versionid=nil, requestid=nil)
          @VersionId = versionid
          @RequestId = requestid
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRole请求参数结构体
      class CreateRoleRequest < TencentCloud::Common::AbstractModel
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param PolicyDocument: 策略文档，示例：{"version":"2.0","statement":[{"action":"name/sts:AssumeRole","effect":"allow","principal":{"service":["cloudaudit.cloud.tencent.com","cls.cloud.tencent.com"]}}]}，principal用于指定角色的授权对象。获取该参数可参阅 获取角色详情（https://cloud.tencent.com/document/product/598/36221） 输出参数RoleInfo
        # @type PolicyDocument: String
        # @param Description: 角色描述
        # @type Description: String
        # @param ConsoleLogin: 是否允许登录 1 为允许 0 为不允许
        # @type ConsoleLogin: Integer
        # @param SessionDuration: 申请角色临时密钥的最长有效期限制(范围：0~43200)
        # @type SessionDuration: Integer

        attr_accessor :RoleName, :PolicyDocument, :Description, :ConsoleLogin, :SessionDuration
        
        def initialize(rolename=nil, policydocument=nil, description=nil, consolelogin=nil, sessionduration=nil)
          @RoleName = rolename
          @PolicyDocument = policydocument
          @Description = description
          @ConsoleLogin = consolelogin
          @SessionDuration = sessionduration
        end

        def deserialize(params)
          @RoleName = params['RoleName']
          @PolicyDocument = params['PolicyDocument']
          @Description = params['Description']
          @ConsoleLogin = params['ConsoleLogin']
          @SessionDuration = params['SessionDuration']
        end
      end

      # CreateRole返回参数结构体
      class CreateRoleResponse < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleId, :RequestId
        
        def initialize(roleid=nil, requestid=nil)
          @RoleId = roleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSAMLProvider请求参数结构体
      class CreateSAMLProviderRequest < TencentCloud::Common::AbstractModel
        # @param Name: SAML身份提供商名称
        # @type Name: String
        # @param Description: SAML身份提供商描述
        # @type Description: String
        # @param SAMLMetadataDocument: SAML身份提供商Base64编码的元数据文档
        # @type SAMLMetadataDocument: String

        attr_accessor :Name, :Description, :SAMLMetadataDocument
        
        def initialize(name=nil, description=nil, samlmetadatadocument=nil)
          @Name = name
          @Description = description
          @SAMLMetadataDocument = samlmetadatadocument
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @SAMLMetadataDocument = params['SAMLMetadataDocument']
        end
      end

      # CreateSAMLProvider返回参数结构体
      class CreateSAMLProviderResponse < TencentCloud::Common::AbstractModel
        # @param ProviderArn: SAML身份提供商资源描述符
        # @type ProviderArn: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProviderArn, :RequestId
        
        def initialize(providerarn=nil, requestid=nil)
          @ProviderArn = providerarn
          @RequestId = requestid
        end

        def deserialize(params)
          @ProviderArn = params['ProviderArn']
          @RequestId = params['RequestId']
        end
      end

      # CreateServiceLinkedRole请求参数结构体
      class CreateServiceLinkedRoleRequest < TencentCloud::Common::AbstractModel
        # @param QCSServiceName: 授权服务，附加了此角色的腾讯云服务主体。
        # @type QCSServiceName: Array
        # @param CustomSuffix: 自定义后缀，根据您提供的字符串，与服务提供的前缀组合在一起以形成完整的角色名称。
        # @type CustomSuffix: String
        # @param Description: 角色说明。
        # @type Description: String

        attr_accessor :QCSServiceName, :CustomSuffix, :Description
        
        def initialize(qcsservicename=nil, customsuffix=nil, description=nil)
          @QCSServiceName = qcsservicename
          @CustomSuffix = customsuffix
          @Description = description
        end

        def deserialize(params)
          @QCSServiceName = params['QCSServiceName']
          @CustomSuffix = params['CustomSuffix']
          @Description = params['Description']
        end
      end

      # CreateServiceLinkedRole返回参数结构体
      class CreateServiceLinkedRoleResponse < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色ID
        # @type RoleId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleId, :RequestId
        
        def initialize(roleid=nil, requestid=nil)
          @RoleId = roleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteGroup请求参数结构体
      class DeleteGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 用户组 ID
        # @type GroupId: Integer

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DeleteGroup返回参数结构体
      class DeleteGroupResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeletePolicy请求参数结构体
      class DeletePolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 数组，数组成员是策略 id，支持批量删除策略
        # @type PolicyId: Array

        attr_accessor :PolicyId
        
        def initialize(policyid=nil)
          @PolicyId = policyid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
        end
      end

      # DeletePolicy返回参数结构体
      class DeletePolicyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeletePolicyVersion请求参数结构体
      class DeletePolicyVersionRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: Integer
        # @param VersionId: 策略版本号
        # @type VersionId: Array

        attr_accessor :PolicyId, :VersionId
        
        def initialize(policyid=nil, versionid=nil)
          @PolicyId = policyid
          @VersionId = versionid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @VersionId = params['VersionId']
        end
      end

      # DeletePolicyVersion返回参数结构体
      class DeletePolicyVersionResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteRole请求参数结构体
      class DeleteRoleRequest < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色ID，用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleId: String
        # @param RoleName: 角色名称，用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleName: String

        attr_accessor :RoleId, :RoleName
        
        def initialize(roleid=nil, rolename=nil)
          @RoleId = roleid
          @RoleName = rolename
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
        end
      end

      # DeleteRole返回参数结构体
      class DeleteRoleResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteSAMLProvider请求参数结构体
      class DeleteSAMLProviderRequest < TencentCloud::Common::AbstractModel
        # @param Name: SAML身份提供商名称
        # @type Name: String

        attr_accessor :Name
        
        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # DeleteSAMLProvider返回参数结构体
      class DeleteSAMLProviderResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteServiceLinkedRole请求参数结构体
      class DeleteServiceLinkedRoleRequest < TencentCloud::Common::AbstractModel
        # @param RoleName: 要删除的服务相关角色的名称。
        # @type RoleName: String

        attr_accessor :RoleName
        
        def initialize(rolename=nil)
          @RoleName = rolename
        end

        def deserialize(params)
          @RoleName = params['RoleName']
        end
      end

      # DeleteServiceLinkedRole返回参数结构体
      class DeleteServiceLinkedRoleResponse < TencentCloud::Common::AbstractModel
        # @param DeletionTaskId: 删除任务ID，可用于检查删除服务相关角色状态。
        # @type DeletionTaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeletionTaskId, :RequestId
        
        def initialize(deletiontaskid=nil, requestid=nil)
          @DeletionTaskId = deletiontaskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DeletionTaskId = params['DeletionTaskId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteUser请求参数结构体
      class DeleteUserRequest < TencentCloud::Common::AbstractModel
        # @param Name: 子用户用户名
        # @type Name: String
        # @param Force: 是否强制删除该子用户，默认入参为0。0：若该用户存在未删除API密钥，则不删除用户；1：若该用户存在未删除API密钥，则先删除密钥后删除用户。删除密钥需要您拥有cam:DeleteApiKey权限，您将可以删除该用户下启用或禁用状态的所有密钥，无权限则删除密钥和用户失败
        # @type Force: Integer

        attr_accessor :Name, :Force
        
        def initialize(name=nil, force=nil)
          @Name = name
          @Force = force
        end

        def deserialize(params)
          @Name = params['Name']
          @Force = params['Force']
        end
      end

      # DeleteUser返回参数结构体
      class DeleteUserResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoleList请求参数结构体
      class DescribeRoleListRequest < TencentCloud::Common::AbstractModel
        # @param Page: 页码，从1开始
        # @type Page: Integer
        # @param Rp: 每页行数，不能大于200
        # @type Rp: Integer

        attr_accessor :Page, :Rp
        
        def initialize(page=nil, rp=nil)
          @Page = page
          @Rp = rp
        end

        def deserialize(params)
          @Page = params['Page']
          @Rp = params['Rp']
        end
      end

      # DescribeRoleList返回参数结构体
      class DescribeRoleListResponse < TencentCloud::Common::AbstractModel
        # @param List: 角色详情列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param TotalNum: 角色总数
        # @type TotalNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :TotalNum, :RequestId
        
        def initialize(list=nil, totalnum=nil, requestid=nil)
          @List = list
          @TotalNum = totalnum
          @RequestId = requestid
        end

        def deserialize(params)
          @List = params['List']
          @TotalNum = params['TotalNum']
          @RequestId = params['RequestId']
        end
      end

      # DetachGroupPolicy请求参数结构体
      class DetachGroupPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略 id
        # @type PolicyId: Integer
        # @param DetachGroupId: 用户组 id
        # @type DetachGroupId: Integer

        attr_accessor :PolicyId, :DetachGroupId
        
        def initialize(policyid=nil, detachgroupid=nil)
          @PolicyId = policyid
          @DetachGroupId = detachgroupid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @DetachGroupId = params['DetachGroupId']
        end
      end

      # DetachGroupPolicy返回参数结构体
      class DetachGroupPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DetachRolePolicy请求参数结构体
      class DetachRolePolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID，入参PolicyId与PolicyName二选一
        # @type PolicyId: Integer
        # @param DetachRoleId: 角色ID，用于指定角色，入参 AttachRoleId 与 AttachRoleName 二选一
        # @type DetachRoleId: String
        # @param DetachRoleName: 角色名称，用于指定角色，入参 AttachRoleId 与 AttachRoleName 二选一
        # @type DetachRoleName: String
        # @param PolicyName: 策略名，入参PolicyId与PolicyName二选一
        # @type PolicyName: String

        attr_accessor :PolicyId, :DetachRoleId, :DetachRoleName, :PolicyName
        
        def initialize(policyid=nil, detachroleid=nil, detachrolename=nil, policyname=nil)
          @PolicyId = policyid
          @DetachRoleId = detachroleid
          @DetachRoleName = detachrolename
          @PolicyName = policyname
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @DetachRoleId = params['DetachRoleId']
          @DetachRoleName = params['DetachRoleName']
          @PolicyName = params['PolicyName']
        end
      end

      # DetachRolePolicy返回参数结构体
      class DetachRolePolicyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DetachUserPolicy请求参数结构体
      class DetachUserPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略 id
        # @type PolicyId: Integer
        # @param DetachUin: 子账号 uin
        # @type DetachUin: Integer

        attr_accessor :PolicyId, :DetachUin
        
        def initialize(policyid=nil, detachuin=nil)
          @PolicyId = policyid
          @DetachUin = detachuin
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @DetachUin = params['DetachUin']
        end
      end

      # DetachUserPolicy返回参数结构体
      class DetachUserPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # GetCustomMFATokenInfo请求参数结构体
      class GetCustomMFATokenInfoRequest < TencentCloud::Common::AbstractModel
        # @param MFAToken: 自定义多因子验证Token
        # @type MFAToken: String

        attr_accessor :MFAToken
        
        def initialize(mfatoken=nil)
          @MFAToken = mfatoken
        end

        def deserialize(params)
          @MFAToken = params['MFAToken']
        end
      end

      # GetCustomMFATokenInfo返回参数结构体
      class GetCustomMFATokenInfoResponse < TencentCloud::Common::AbstractModel
        # @param Uin: 自定义多因子验证Token对应的帐号Id
        # @type Uin: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Uin, :RequestId
        
        def initialize(uin=nil, requestid=nil)
          @Uin = uin
          @RequestId = requestid
        end

        def deserialize(params)
          @Uin = params['Uin']
          @RequestId = params['RequestId']
        end
      end

      # GetGroup请求参数结构体
      class GetGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 用户组 ID
        # @type GroupId: Integer

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # GetGroup返回参数结构体
      class GetGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 用户组 ID
        # @type GroupId: Integer
        # @param GroupName: 用户组名称
        # @type GroupName: String
        # @param GroupNum: 用户组成员数量
        # @type GroupNum: Integer
        # @param Remark: 用户组描述
        # @type Remark: String
        # @param CreateTime: 用户组创建时间
        # @type CreateTime: String
        # @param UserInfo: 用户组成员信息
        # @type UserInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :GroupName, :GroupNum, :Remark, :CreateTime, :UserInfo, :RequestId
        
        def initialize(groupid=nil, groupname=nil, groupnum=nil, remark=nil, createtime=nil, userinfo=nil, requestid=nil)
          @GroupId = groupid
          @GroupName = groupname
          @GroupNum = groupnum
          @Remark = remark
          @CreateTime = createtime
          @UserInfo = userinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @GroupNum = params['GroupNum']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @UserInfo = params['UserInfo']
          @RequestId = params['RequestId']
        end
      end

      # GetPolicy请求参数结构体
      class GetPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略Id
        # @type PolicyId: Integer

        attr_accessor :PolicyId
        
        def initialize(policyid=nil)
          @PolicyId = policyid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
        end
      end

      # GetPolicy返回参数结构体
      class GetPolicyResponse < TencentCloud::Common::AbstractModel
        # @param PolicyName: 策略名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyName: String
        # @param Description: 策略描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Type: 1 表示自定义策略，2 表示预设策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param AddTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String
        # @param UpdateTime: 最近更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param PolicyDocument: 策略文档
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyDocument: String
        # @param PresetAlias: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PresetAlias: String
        # @param IsServiceLinkedRolePolicy: 是否服务相关策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsServiceLinkedRolePolicy: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyName, :Description, :Type, :AddTime, :UpdateTime, :PolicyDocument, :PresetAlias, :IsServiceLinkedRolePolicy, :RequestId
        
        def initialize(policyname=nil, description=nil, type=nil, addtime=nil, updatetime=nil, policydocument=nil, presetalias=nil, isservicelinkedrolepolicy=nil, requestid=nil)
          @PolicyName = policyname
          @Description = description
          @Type = type
          @AddTime = addtime
          @UpdateTime = updatetime
          @PolicyDocument = policydocument
          @PresetAlias = presetalias
          @IsServiceLinkedRolePolicy = isservicelinkedrolepolicy
          @RequestId = requestid
        end

        def deserialize(params)
          @PolicyName = params['PolicyName']
          @Description = params['Description']
          @Type = params['Type']
          @AddTime = params['AddTime']
          @UpdateTime = params['UpdateTime']
          @PolicyDocument = params['PolicyDocument']
          @PresetAlias = params['PresetAlias']
          @IsServiceLinkedRolePolicy = params['IsServiceLinkedRolePolicy']
          @RequestId = params['RequestId']
        end
      end

      # GetPolicyVersion请求参数结构体
      class GetPolicyVersionRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: Integer
        # @param VersionId: 策略版本号
        # @type VersionId: Integer

        attr_accessor :PolicyId, :VersionId
        
        def initialize(policyid=nil, versionid=nil)
          @PolicyId = policyid
          @VersionId = versionid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @VersionId = params['VersionId']
        end
      end

      # GetPolicyVersion返回参数结构体
      class GetPolicyVersionResponse < TencentCloud::Common::AbstractModel
        # @param PolicyVersion: 策略版本详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyVersion: :class:`Tencentcloud::Cam.v20190116.models.PolicyVersionDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyVersion, :RequestId
        
        def initialize(policyversion=nil, requestid=nil)
          @PolicyVersion = policyversion
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PolicyVersion'].nil?
            @PolicyVersion = PolicyVersionDetail.new.deserialize(params[PolicyVersion])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetRole请求参数结构体
      class GetRoleRequest < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色 ID，用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleId: String
        # @param RoleName: 角色名，用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleName: String

        attr_accessor :RoleId, :RoleName
        
        def initialize(roleid=nil, rolename=nil)
          @RoleId = roleid
          @RoleName = rolename
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
        end
      end

      # GetRole返回参数结构体
      class GetRoleResponse < TencentCloud::Common::AbstractModel
        # @param RoleInfo: 角色详情
        # @type RoleInfo: :class:`Tencentcloud::Cam.v20190116.models.RoleInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoleInfo, :RequestId
        
        def initialize(roleinfo=nil, requestid=nil)
          @RoleInfo = roleinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RoleInfo'].nil?
            @RoleInfo = RoleInfo.new.deserialize(params[RoleInfo])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetSAMLProvider请求参数结构体
      class GetSAMLProviderRequest < TencentCloud::Common::AbstractModel
        # @param Name: SAML身份提供商名称
        # @type Name: String

        attr_accessor :Name
        
        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # GetSAMLProvider返回参数结构体
      class GetSAMLProviderResponse < TencentCloud::Common::AbstractModel
        # @param Name: SAML身份提供商名称
        # @type Name: String
        # @param Description: SAML身份提供商描述
        # @type Description: String
        # @param CreateTime: SAML身份提供商创建时间
        # @type CreateTime: String
        # @param ModifyTime: SAML身份提供商上次修改时间
        # @type ModifyTime: String
        # @param SAMLMetadata: SAML身份提供商元数据文档
        # @type SAMLMetadata: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :Description, :CreateTime, :ModifyTime, :SAMLMetadata, :RequestId
        
        def initialize(name=nil, description=nil, createtime=nil, modifytime=nil, samlmetadata=nil, requestid=nil)
          @Name = name
          @Description = description
          @CreateTime = createtime
          @ModifyTime = modifytime
          @SAMLMetadata = samlmetadata
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @SAMLMetadata = params['SAMLMetadata']
          @RequestId = params['RequestId']
        end
      end

      # GetServiceLinkedRoleDeletionStatus请求参数结构体
      class GetServiceLinkedRoleDeletionStatusRequest < TencentCloud::Common::AbstractModel
        # @param DeletionTaskId: 删除任务ID
        # @type DeletionTaskId: String

        attr_accessor :DeletionTaskId
        
        def initialize(deletiontaskid=nil)
          @DeletionTaskId = deletiontaskid
        end

        def deserialize(params)
          @DeletionTaskId = params['DeletionTaskId']
        end
      end

      # GetServiceLinkedRoleDeletionStatus返回参数结构体
      class GetServiceLinkedRoleDeletionStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态：NOT_STARTED，IN_PROGRESS，SUCCEEDED，FAILED
        # @type Status: String
        # @param Reason: 失败原因
        # @type Reason: String
        # @param ServiceType: 服务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceType: String
        # @param ServiceName: 服务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Reason, :ServiceType, :ServiceName, :RequestId
        
        def initialize(status=nil, reason=nil, servicetype=nil, servicename=nil, requestid=nil)
          @Status = status
          @Reason = reason
          @ServiceType = servicetype
          @ServiceName = servicename
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Reason = params['Reason']
          @ServiceType = params['ServiceType']
          @ServiceName = params['ServiceName']
          @RequestId = params['RequestId']
        end
      end

      # GetUser请求参数结构体
      class GetUserRequest < TencentCloud::Common::AbstractModel
        # @param Name: 子用户用户名
        # @type Name: String

        attr_accessor :Name
        
        def initialize(name=nil)
          @Name = name
        end

        def deserialize(params)
          @Name = params['Name']
        end
      end

      # GetUser返回参数结构体
      class GetUserResponse < TencentCloud::Common::AbstractModel
        # @param Uin: 子用户用户 UIN
        # @type Uin: Integer
        # @param Name: 子用户用户名
        # @type Name: String
        # @param Uid: 子用户 UID
        # @type Uid: Integer
        # @param Remark: 子用户备注
        # @type Remark: String
        # @param ConsoleLogin: 子用户能否登录控制台
        # @type ConsoleLogin: Integer
        # @param PhoneNum: 手机号
        # @type PhoneNum: String
        # @param CountryCode: 区号
        # @type CountryCode: String
        # @param Email: 邮箱
        # @type Email: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Uin, :Name, :Uid, :Remark, :ConsoleLogin, :PhoneNum, :CountryCode, :Email, :RequestId
        
        def initialize(uin=nil, name=nil, uid=nil, remark=nil, consolelogin=nil, phonenum=nil, countrycode=nil, email=nil, requestid=nil)
          @Uin = uin
          @Name = name
          @Uid = uid
          @Remark = remark
          @ConsoleLogin = consolelogin
          @PhoneNum = phonenum
          @CountryCode = countrycode
          @Email = email
          @RequestId = requestid
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Name = params['Name']
          @Uid = params['Uid']
          @Remark = params['Remark']
          @ConsoleLogin = params['ConsoleLogin']
          @PhoneNum = params['PhoneNum']
          @CountryCode = params['CountryCode']
          @Email = params['Email']
          @RequestId = params['RequestId']
        end
      end

      # 子用户和用户组关联信息
      class GroupIdOfUidInfo < TencentCloud::Common::AbstractModel
        # @param Uid: 子用户 UID
        # @type Uid: Integer
        # @param GroupId: 用户组 ID
        # @type GroupId: Integer

        attr_accessor :Uid, :GroupId
        
        def initialize(uid=nil, groupid=nil)
          @Uid = uid
          @GroupId = groupid
        end

        def deserialize(params)
          @Uid = params['Uid']
          @GroupId = params['GroupId']
        end
      end

      # 用户组信息
      class GroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 用户组 ID。
        # @type GroupId: Integer
        # @param GroupName: 用户组名称。
        # @type GroupName: String
        # @param CreateTime: 用户组创建时间。
        # @type CreateTime: String
        # @param Remark: 用户组描述。
        # @type Remark: String

        attr_accessor :GroupId, :GroupName, :CreateTime, :Remark
        
        def initialize(groupid=nil, groupname=nil, createtime=nil, remark=nil)
          @GroupId = groupid
          @GroupName = groupname
          @CreateTime = createtime
          @Remark = remark
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @CreateTime = params['CreateTime']
          @Remark = params['Remark']
        end
      end

      # 用户组用户信息
      class GroupMemberInfo < TencentCloud::Common::AbstractModel
        # @param Uid: 子用户 Uid。
        # @type Uid: Integer
        # @param Uin: 子用户 Uin。
        # @type Uin: Integer
        # @param Name: 子用户名称。
        # @type Name: String
        # @param PhoneNum: 手机号。
        # @type PhoneNum: String
        # @param CountryCode: 手机区域代码。
        # @type CountryCode: String
        # @param PhoneFlag: 是否已验证手机。
        # @type PhoneFlag: Integer
        # @param Email: 邮箱地址。
        # @type Email: String
        # @param EmailFlag: 是否已验证邮箱。
        # @type EmailFlag: Integer
        # @param UserType: 用户类型。
        # @type UserType: Integer
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param IsReceiverOwner: 是否为主消息接收人。
        # @type IsReceiverOwner: Integer

        attr_accessor :Uid, :Uin, :Name, :PhoneNum, :CountryCode, :PhoneFlag, :Email, :EmailFlag, :UserType, :CreateTime, :IsReceiverOwner
        
        def initialize(uid=nil, uin=nil, name=nil, phonenum=nil, countrycode=nil, phoneflag=nil, email=nil, emailflag=nil, usertype=nil, createtime=nil, isreceiverowner=nil)
          @Uid = uid
          @Uin = uin
          @Name = name
          @PhoneNum = phonenum
          @CountryCode = countrycode
          @PhoneFlag = phoneflag
          @Email = email
          @EmailFlag = emailflag
          @UserType = usertype
          @CreateTime = createtime
          @IsReceiverOwner = isreceiverowner
        end

        def deserialize(params)
          @Uid = params['Uid']
          @Uin = params['Uin']
          @Name = params['Name']
          @PhoneNum = params['PhoneNum']
          @CountryCode = params['CountryCode']
          @PhoneFlag = params['PhoneFlag']
          @Email = params['Email']
          @EmailFlag = params['EmailFlag']
          @UserType = params['UserType']
          @CreateTime = params['CreateTime']
          @IsReceiverOwner = params['IsReceiverOwner']
        end
      end

      # ListAccessKeys请求参数结构体
      class ListAccessKeysRequest < TencentCloud::Common::AbstractModel
        # @param TargetUin: 指定用户Uin，不填默认列出当前用户访问密钥
        # @type TargetUin: Integer

        attr_accessor :TargetUin
        
        def initialize(targetuin=nil)
          @TargetUin = targetuin
        end

        def deserialize(params)
          @TargetUin = params['TargetUin']
        end
      end

      # ListAccessKeys返回参数结构体
      class ListAccessKeysResponse < TencentCloud::Common::AbstractModel
        # @param AccessKeys: 访问密钥列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessKeys: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessKeys, :RequestId
        
        def initialize(accesskeys=nil, requestid=nil)
          @AccessKeys = accesskeys
          @RequestId = requestid
        end

        def deserialize(params)
          @AccessKeys = params['AccessKeys']
          @RequestId = params['RequestId']
        end
      end

      # ListAttachedGroupPolicies请求参数结构体
      class ListAttachedGroupPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param TargetGroupId: 用户组ID
        # @type TargetGroupId: Integer
        # @param Page: 页码，默认值是 1，从 1 开始
        # @type Page: Integer
        # @param Rp: 每页大小，默认值是 20
        # @type Rp: Integer

        attr_accessor :TargetGroupId, :Page, :Rp
        
        def initialize(targetgroupid=nil, page=nil, rp=nil)
          @TargetGroupId = targetgroupid
          @Page = page
          @Rp = rp
        end

        def deserialize(params)
          @TargetGroupId = params['TargetGroupId']
          @Page = params['Page']
          @Rp = params['Rp']
        end
      end

      # ListAttachedGroupPolicies返回参数结构体
      class ListAttachedGroupPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 策略总数
        # @type TotalNum: Integer
        # @param List: 策略列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :List, :RequestId
        
        def initialize(totalnum=nil, list=nil, requestid=nil)
          @TotalNum = totalnum
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          @List = params['List']
          @RequestId = params['RequestId']
        end
      end

      # ListAttachedRolePolicies请求参数结构体
      class ListAttachedRolePoliciesRequest < TencentCloud::Common::AbstractModel
        # @param Page: 页码，从 1 开始
        # @type Page: Integer
        # @param Rp: 每页行数，不能大于200
        # @type Rp: Integer
        # @param RoleId: 角色 ID。用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleId: String
        # @param RoleName: 角色名。用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleName: String
        # @param PolicyType: 按策略类型过滤，User表示仅查询自定义策略，QCS表示仅查询预设策略
        # @type PolicyType: String

        attr_accessor :Page, :Rp, :RoleId, :RoleName, :PolicyType
        
        def initialize(page=nil, rp=nil, roleid=nil, rolename=nil, policytype=nil)
          @Page = page
          @Rp = rp
          @RoleId = roleid
          @RoleName = rolename
          @PolicyType = policytype
        end

        def deserialize(params)
          @Page = params['Page']
          @Rp = params['Rp']
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
          @PolicyType = params['PolicyType']
        end
      end

      # ListAttachedRolePolicies返回参数结构体
      class ListAttachedRolePoliciesResponse < TencentCloud::Common::AbstractModel
        # @param List: 角色关联的策略列表
        # @type List: Array
        # @param TotalNum: 角色关联的策略总数
        # @type TotalNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :List, :TotalNum, :RequestId
        
        def initialize(list=nil, totalnum=nil, requestid=nil)
          @List = list
          @TotalNum = totalnum
          @RequestId = requestid
        end

        def deserialize(params)
          @List = params['List']
          @TotalNum = params['TotalNum']
          @RequestId = params['RequestId']
        end
      end

      # ListAttachedUserPolicies请求参数结构体
      class ListAttachedUserPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param TargetUin: 子账号 uin
        # @type TargetUin: Integer
        # @param Page: 页码，默认值是 1，从 1 开始
        # @type Page: Integer
        # @param Rp: 每页大小，默认值是 20
        # @type Rp: Integer

        attr_accessor :TargetUin, :Page, :Rp
        
        def initialize(targetuin=nil, page=nil, rp=nil)
          @TargetUin = targetuin
          @Page = page
          @Rp = rp
        end

        def deserialize(params)
          @TargetUin = params['TargetUin']
          @Page = params['Page']
          @Rp = params['Rp']
        end
      end

      # ListAttachedUserPolicies返回参数结构体
      class ListAttachedUserPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 策略总数
        # @type TotalNum: Integer
        # @param List: 策略列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :List, :RequestId
        
        def initialize(totalnum=nil, list=nil, requestid=nil)
          @TotalNum = totalnum
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          @List = params['List']
          @RequestId = params['RequestId']
        end
      end

      # ListCollaborators请求参数结构体
      class ListCollaboratorsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页条数，缺省为20
        # @type Limit: Integer
        # @param Offset: 分页起始值，缺省为0
        # @type Offset: Integer

        attr_accessor :Limit, :Offset
        
        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # ListCollaborators返回参数结构体
      class ListCollaboratorsResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 总数
        # @type TotalNum: Integer
        # @param Data: 协作者信息
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :Data, :RequestId
        
        def initialize(totalnum=nil, data=nil, requestid=nil)
          @TotalNum = totalnum
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # ListEntitiesForPolicy请求参数结构体
      class ListEntitiesForPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略 id
        # @type PolicyId: Integer
        # @param Page: 页码，默认值是 1，从 1 开始
        # @type Page: Integer
        # @param Rp: 每页大小，默认值是 20
        # @type Rp: Integer
        # @param EntityFilter: 可取值 'All'、'User'、'Group' 和 'Role'，'All' 表示获取所有实体类型，'User' 表示只获取子账号，'Group' 表示只获取用户组，'Role' 表示只获取角色，默认取 'All'
        # @type EntityFilter: String

        attr_accessor :PolicyId, :Page, :Rp, :EntityFilter
        
        def initialize(policyid=nil, page=nil, rp=nil, entityfilter=nil)
          @PolicyId = policyid
          @Page = page
          @Rp = rp
          @EntityFilter = entityfilter
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @Page = params['Page']
          @Rp = params['Rp']
          @EntityFilter = params['EntityFilter']
        end
      end

      # ListEntitiesForPolicy返回参数结构体
      class ListEntitiesForPolicyResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 实体总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalNum: Integer
        # @param List: 实体列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :List, :RequestId
        
        def initialize(totalnum=nil, list=nil, requestid=nil)
          @TotalNum = totalnum
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          @List = params['List']
          @RequestId = params['RequestId']
        end
      end

      # ListGroupsForUser请求参数结构体
      class ListGroupsForUserRequest < TencentCloud::Common::AbstractModel
        # @param Uid: 子用户 UID
        # @type Uid: Integer
        # @param Rp: 每页数量。默认为20。
        # @type Rp: Integer
        # @param Page: 页码。默认为1。
        # @type Page: Integer
        # @param SubUin: 子账号UIN
        # @type SubUin: Integer

        attr_accessor :Uid, :Rp, :Page, :SubUin
        
        def initialize(uid=nil, rp=nil, page=nil, subuin=nil)
          @Uid = uid
          @Rp = rp
          @Page = page
          @SubUin = subuin
        end

        def deserialize(params)
          @Uid = params['Uid']
          @Rp = params['Rp']
          @Page = params['Page']
          @SubUin = params['SubUin']
        end
      end

      # ListGroupsForUser返回参数结构体
      class ListGroupsForUserResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 子用户加入的用户组总数
        # @type TotalNum: Integer
        # @param GroupInfo: 用户组信息
        # @type GroupInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :GroupInfo, :RequestId
        
        def initialize(totalnum=nil, groupinfo=nil, requestid=nil)
          @TotalNum = totalnum
          @GroupInfo = groupinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          @GroupInfo = params['GroupInfo']
          @RequestId = params['RequestId']
        end
      end

      # ListGroups请求参数结构体
      class ListGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Page: 页码。默认为1。
        # @type Page: Integer
        # @param Rp: 每页数量。默认为20。
        # @type Rp: Integer
        # @param Keyword: 按用户组名称匹配。
        # @type Keyword: String

        attr_accessor :Page, :Rp, :Keyword
        
        def initialize(page=nil, rp=nil, keyword=nil)
          @Page = page
          @Rp = rp
          @Keyword = keyword
        end

        def deserialize(params)
          @Page = params['Page']
          @Rp = params['Rp']
          @Keyword = params['Keyword']
        end
      end

      # ListGroups返回参数结构体
      class ListGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 用户组总数。
        # @type TotalNum: Integer
        # @param GroupInfo: 用户组数组信息。
        # @type GroupInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :GroupInfo, :RequestId
        
        def initialize(totalnum=nil, groupinfo=nil, requestid=nil)
          @TotalNum = totalnum
          @GroupInfo = groupinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          @GroupInfo = params['GroupInfo']
          @RequestId = params['RequestId']
        end
      end

      # ListPolicies请求参数结构体
      class ListPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param Rp: 每页数量，默认值是 20，必须大于 0 且小于或等于 200
        # @type Rp: Integer
        # @param Page: 页码，默认值是 1，从 1开始，不能大于 200
        # @type Page: Integer
        # @param Scope: 可取值 'All'、'QCS' 和 'Local'，'All' 获取所有策略，'QCS' 只获取预设策略，'Local' 只获取自定义策略，默认取 'All'
        # @type Scope: String
        # @param Keyword: 按策略名匹配
        # @type Keyword: String

        attr_accessor :Rp, :Page, :Scope, :Keyword
        
        def initialize(rp=nil, page=nil, scope=nil, keyword=nil)
          @Rp = rp
          @Page = page
          @Scope = scope
          @Keyword = keyword
        end

        def deserialize(params)
          @Rp = params['Rp']
          @Page = params['Page']
          @Scope = params['Scope']
          @Keyword = params['Keyword']
        end
      end

      # ListPolicies返回参数结构体
      class ListPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 策略总数
        # @type TotalNum: Integer
        # @param List: 策略数组，数组每个成员包括 policyId、policyName、addTime、type、description、 createMode 字段。其中：
        # policyId：策略 id
        # policyName：策略名
        # addTime：策略创建时间
        # type：1 表示自定义策略，2 表示预设策略
        # description：策略描述
        # createMode：1 表示按业务权限创建的策略，其他值表示可以查看策略语法和通过策略语法更新策略
        # Attachments: 关联的用户数
        # ServiceType: 策略关联的产品
        # IsAttached: 当需要查询标记实体是否已经关联策略时不为null。0表示未关联策略，1表示已关联策略
        # @type List: Array
        # @param ServiceTypeList: 保留字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceTypeList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :List, :ServiceTypeList, :RequestId
        
        def initialize(totalnum=nil, list=nil, servicetypelist=nil, requestid=nil)
          @TotalNum = totalnum
          @List = list
          @ServiceTypeList = servicetypelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          @List = params['List']
          @ServiceTypeList = params['ServiceTypeList']
          @RequestId = params['RequestId']
        end
      end

      # ListPolicyVersions请求参数结构体
      class ListPolicyVersionsRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: Integer

        attr_accessor :PolicyId
        
        def initialize(policyid=nil)
          @PolicyId = policyid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
        end
      end

      # ListPolicyVersions返回参数结构体
      class ListPolicyVersionsResponse < TencentCloud::Common::AbstractModel
        # @param Versions: 策略版本列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Versions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Versions, :RequestId
        
        def initialize(versions=nil, requestid=nil)
          @Versions = versions
          @RequestId = requestid
        end

        def deserialize(params)
          @Versions = params['Versions']
          @RequestId = params['RequestId']
        end
      end

      # ListSAMLProviders请求参数结构体
      class ListSAMLProvidersRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListSAMLProviders返回参数结构体
      class ListSAMLProvidersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: SAML身份提供商总数
        # @type TotalCount: Integer
        # @param SAMLProviderSet: SAML身份提供商列表
        # @type SAMLProviderSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SAMLProviderSet, :RequestId
        
        def initialize(totalcount=nil, samlproviderset=nil, requestid=nil)
          @TotalCount = totalcount
          @SAMLProviderSet = samlproviderset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @SAMLProviderSet = params['SAMLProviderSet']
          @RequestId = params['RequestId']
        end
      end

      # ListUsersForGroup请求参数结构体
      class ListUsersForGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 用户组 ID。
        # @type GroupId: Integer
        # @param Page: 页码。默认为1。
        # @type Page: Integer
        # @param Rp: 每页数量。默认为20。
        # @type Rp: Integer

        attr_accessor :GroupId, :Page, :Rp
        
        def initialize(groupid=nil, page=nil, rp=nil)
          @GroupId = groupid
          @Page = page
          @Rp = rp
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Page = params['Page']
          @Rp = params['Rp']
        end
      end

      # ListUsersForGroup返回参数结构体
      class ListUsersForGroupResponse < TencentCloud::Common::AbstractModel
        # @param TotalNum: 用户组关联的用户总数。
        # @type TotalNum: Integer
        # @param UserInfo: 子用户信息。
        # @type UserInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalNum, :UserInfo, :RequestId
        
        def initialize(totalnum=nil, userinfo=nil, requestid=nil)
          @TotalNum = totalnum
          @UserInfo = userinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalNum = params['TotalNum']
          @UserInfo = params['UserInfo']
          @RequestId = params['RequestId']
        end
      end

      # ListUsers请求参数结构体
      class ListUsersRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListUsers返回参数结构体
      class ListUsersResponse < TencentCloud::Common::AbstractModel
        # @param Data: 子用户信息
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # 登录和敏感操作flag
      class LoginActionMfaFlag < TencentCloud::Common::AbstractModel
        # @param Phone: 手机
        # @type Phone: Integer
        # @param Stoken: 软token
        # @type Stoken: Integer
        # @param Wechat: 微信
        # @type Wechat: Integer

        attr_accessor :Phone, :Stoken, :Wechat
        
        def initialize(phone=nil, stoken=nil, wechat=nil)
          @Phone = phone
          @Stoken = stoken
          @Wechat = wechat
        end

        def deserialize(params)
          @Phone = params['Phone']
          @Stoken = params['Stoken']
          @Wechat = params['Wechat']
        end
      end

      # 策略版本详情
      class PolicyVersionDetail < TencentCloud::Common::AbstractModel
        # @param VersionId: 策略版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: Integer
        # @param CreateDate: 策略版本创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateDate: String
        # @param IsDefaultVersion: 是否是正在生效的版本。0表示不是，1表示是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDefaultVersion: Integer
        # @param Document: 策略语法文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Document: String

        attr_accessor :VersionId, :CreateDate, :IsDefaultVersion, :Document
        
        def initialize(versionid=nil, createdate=nil, isdefaultversion=nil, document=nil)
          @VersionId = versionid
          @CreateDate = createdate
          @IsDefaultVersion = isdefaultversion
          @Document = document
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @CreateDate = params['CreateDate']
          @IsDefaultVersion = params['IsDefaultVersion']
          @Document = params['Document']
        end
      end

      # 策略版本列表元素结构
      class PolicyVersionItem < TencentCloud::Common::AbstractModel
        # @param VersionId: 策略版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: Integer
        # @param CreateDate: 策略版本创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateDate: String
        # @param IsDefaultVersion: 是否是正在生效的版本。0表示不是，1表示是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDefaultVersion: Integer

        attr_accessor :VersionId, :CreateDate, :IsDefaultVersion
        
        def initialize(versionid=nil, createdate=nil, isdefaultversion=nil)
          @VersionId = versionid
          @CreateDate = createdate
          @IsDefaultVersion = isdefaultversion
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @CreateDate = params['CreateDate']
          @IsDefaultVersion = params['IsDefaultVersion']
        end
      end

      # RemoveUserFromGroup请求参数结构体
      class RemoveUserFromGroupRequest < TencentCloud::Common::AbstractModel
        # @param Info: 要删除的用户 UID和用户组 ID对应数组
        # @type Info: Array

        attr_accessor :Info
        
        def initialize(info=nil)
          @Info = info
        end

        def deserialize(params)
          @Info = params['Info']
        end
      end

      # RemoveUserFromGroup返回参数结构体
      class RemoveUserFromGroupResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 角色详细信息
      class RoleInfo < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色ID
        # @type RoleId: String
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param PolicyDocument: 角色的策略文档
        # @type PolicyDocument: String
        # @param Description: 角色描述
        # @type Description: String
        # @param AddTime: 角色的创建时间
        # @type AddTime: String
        # @param UpdateTime: 角色的最近一次时间
        # @type UpdateTime: String
        # @param ConsoleLogin: 角色是否允许登录
        # @type ConsoleLogin: Integer
        # @param RoleType: 角色类型，取user、system或service_linked
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleType: String
        # @param SessionDuration: 有效时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionDuration: Integer
        # @param DeletionTaskId: 服务相关角色删除TaskId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeletionTaskId: String

        attr_accessor :RoleId, :RoleName, :PolicyDocument, :Description, :AddTime, :UpdateTime, :ConsoleLogin, :RoleType, :SessionDuration, :DeletionTaskId
        
        def initialize(roleid=nil, rolename=nil, policydocument=nil, description=nil, addtime=nil, updatetime=nil, consolelogin=nil, roletype=nil, sessionduration=nil, deletiontaskid=nil)
          @RoleId = roleid
          @RoleName = rolename
          @PolicyDocument = policydocument
          @Description = description
          @AddTime = addtime
          @UpdateTime = updatetime
          @ConsoleLogin = consolelogin
          @RoleType = roletype
          @SessionDuration = sessionduration
          @DeletionTaskId = deletiontaskid
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
          @PolicyDocument = params['PolicyDocument']
          @Description = params['Description']
          @AddTime = params['AddTime']
          @UpdateTime = params['UpdateTime']
          @ConsoleLogin = params['ConsoleLogin']
          @RoleType = params['RoleType']
          @SessionDuration = params['SessionDuration']
          @DeletionTaskId = params['DeletionTaskId']
        end
      end

      # SAML身份提供商
      class SAMLProviderInfo < TencentCloud::Common::AbstractModel
        # @param Name: SAML身份提供商名称
        # @type Name: String
        # @param Description: SAML身份提供商描述
        # @type Description: String
        # @param CreateTime: SAML身份提供商创建时间
        # @type CreateTime: String
        # @param ModifyTime: SAML身份提供商上次修改时间
        # @type ModifyTime: String

        attr_accessor :Name, :Description, :CreateTime, :ModifyTime
        
        def initialize(name=nil, description=nil, createtime=nil, modifytime=nil)
          @Name = name
          @Description = description
          @CreateTime = createtime
          @ModifyTime = modifytime
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
        end
      end

      # SetDefaultPolicyVersion请求参数结构体
      class SetDefaultPolicyVersionRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: Integer
        # @param VersionId: 策略版本号
        # @type VersionId: Integer

        attr_accessor :PolicyId, :VersionId
        
        def initialize(policyid=nil, versionid=nil)
          @PolicyId = policyid
          @VersionId = versionid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @VersionId = params['VersionId']
        end
      end

      # SetDefaultPolicyVersion返回参数结构体
      class SetDefaultPolicyVersionResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # SetMfaFlag请求参数结构体
      class SetMfaFlagRequest < TencentCloud::Common::AbstractModel
        # @param OpUin: 设置用户的uin
        # @type OpUin: Integer
        # @param LoginFlag: 登录保护设置
        # @type LoginFlag: :class:`Tencentcloud::Cam.v20190116.models.LoginActionMfaFlag`
        # @param ActionFlag: 操作保护设置
        # @type ActionFlag: :class:`Tencentcloud::Cam.v20190116.models.LoginActionMfaFlag`

        attr_accessor :OpUin, :LoginFlag, :ActionFlag
        
        def initialize(opuin=nil, loginflag=nil, actionflag=nil)
          @OpUin = opuin
          @LoginFlag = loginflag
          @ActionFlag = actionflag
        end

        def deserialize(params)
          @OpUin = params['OpUin']
          unless params['LoginFlag'].nil?
            @LoginFlag = LoginActionMfaFlag.new.deserialize(params[LoginFlag])
          end
          unless params['ActionFlag'].nil?
            @ActionFlag = LoginActionMfaFlag.new.deserialize(params[ActionFlag])
          end
        end
      end

      # SetMfaFlag返回参数结构体
      class SetMfaFlagResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 策略信息
      class StrategyInfo < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID。
        # @type PolicyId: Integer
        # @param PolicyName: 策略名称。
        # @type PolicyName: String
        # @param AddTime: 策略创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddTime: String
        # @param Type: 策略类型。1 表示自定义策略，2 表示预设策略。
        # @type Type: Integer
        # @param Description: 策略描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateMode: 创建来源，1 通过控制台创建, 2 通过策略语法创建。
        # @type CreateMode: Integer
        # @param Attachments: 关联的用户数
        # @type Attachments: Integer
        # @param ServiceType: 策略关联的产品
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceType: String
        # @param IsAttached: 当需要查询标记实体是否已经关联策略时不为null。0表示未关联策略，1表示已关联策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAttached: Integer
        # @param Deactived: 是否已下线
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deactived: Integer
        # @param DeactivedDetail: 已下线产品列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeactivedDetail: Array
        # @param IsServiceLinkedPolicy: 是否是服务相关角色策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsServiceLinkedPolicy: Integer

        attr_accessor :PolicyId, :PolicyName, :AddTime, :Type, :Description, :CreateMode, :Attachments, :ServiceType, :IsAttached, :Deactived, :DeactivedDetail, :IsServiceLinkedPolicy
        
        def initialize(policyid=nil, policyname=nil, addtime=nil, type=nil, description=nil, createmode=nil, attachments=nil, servicetype=nil, isattached=nil, deactived=nil, deactiveddetail=nil, isservicelinkedpolicy=nil)
          @PolicyId = policyid
          @PolicyName = policyname
          @AddTime = addtime
          @Type = type
          @Description = description
          @CreateMode = createmode
          @Attachments = attachments
          @ServiceType = servicetype
          @IsAttached = isattached
          @Deactived = deactived
          @DeactivedDetail = deactiveddetail
          @IsServiceLinkedPolicy = isservicelinkedpolicy
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @AddTime = params['AddTime']
          @Type = params['Type']
          @Description = params['Description']
          @CreateMode = params['CreateMode']
          @Attachments = params['Attachments']
          @ServiceType = params['ServiceType']
          @IsAttached = params['IsAttached']
          @Deactived = params['Deactived']
          @DeactivedDetail = params['DeactivedDetail']
          @IsServiceLinkedPolicy = params['IsServiceLinkedPolicy']
        end
      end

      # 子用户信息
      class SubAccountInfo < TencentCloud::Common::AbstractModel
        # @param Uin: 子用户用户 ID
        # @type Uin: Integer
        # @param Name: 子用户用户名
        # @type Name: String
        # @param Uid: 子用户 UID
        # @type Uid: Integer
        # @param Remark: 子用户备注
        # @type Remark: String
        # @param ConsoleLogin: 子用户能否登录控制台
        # @type ConsoleLogin: Integer
        # @param PhoneNum: 手机号
        # @type PhoneNum: String
        # @param CountryCode: 区号
        # @type CountryCode: String
        # @param Email: 邮箱
        # @type Email: String

        attr_accessor :Uin, :Name, :Uid, :Remark, :ConsoleLogin, :PhoneNum, :CountryCode, :Email
        
        def initialize(uin=nil, name=nil, uid=nil, remark=nil, consolelogin=nil, phonenum=nil, countrycode=nil, email=nil)
          @Uin = uin
          @Name = name
          @Uid = uid
          @Remark = remark
          @ConsoleLogin = consolelogin
          @PhoneNum = phonenum
          @CountryCode = countrycode
          @Email = email
        end

        def deserialize(params)
          @Uin = params['Uin']
          @Name = params['Name']
          @Uid = params['Uid']
          @Remark = params['Remark']
          @ConsoleLogin = params['ConsoleLogin']
          @PhoneNum = params['PhoneNum']
          @CountryCode = params['CountryCode']
          @Email = params['Email']
        end
      end

      # UpdateAssumeRolePolicy请求参数结构体
      class UpdateAssumeRolePolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyDocument: 策略文档，示例：{"version":"2.0","statement":[{"action":"name/sts:AssumeRole","effect":"allow","principal":{"service":["cloudaudit.cloud.tencent.com","cls.cloud.tencent.com"]}}]}，principal用于指定角色的授权对象。获取该参数可参阅 获取角色详情（https://cloud.tencent.com/document/product/598/36221） 输出参数RoleInfo
        # @type PolicyDocument: String
        # @param RoleId: 角色ID，用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleId: String
        # @param RoleName: 角色名称，用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleName: String

        attr_accessor :PolicyDocument, :RoleId, :RoleName
        
        def initialize(policydocument=nil, roleid=nil, rolename=nil)
          @PolicyDocument = policydocument
          @RoleId = roleid
          @RoleName = rolename
        end

        def deserialize(params)
          @PolicyDocument = params['PolicyDocument']
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
        end
      end

      # UpdateAssumeRolePolicy返回参数结构体
      class UpdateAssumeRolePolicyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # UpdateGroup请求参数结构体
      class UpdateGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 用户组 ID
        # @type GroupId: Integer
        # @param GroupName: 用户组名
        # @type GroupName: String
        # @param Remark: 用户组描述
        # @type Remark: String

        attr_accessor :GroupId, :GroupName, :Remark
        
        def initialize(groupid=nil, groupname=nil, remark=nil)
          @GroupId = groupid
          @GroupName = groupname
          @Remark = remark
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @Remark = params['Remark']
        end
      end

      # UpdateGroup返回参数结构体
      class UpdateGroupResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # UpdatePolicy请求参数结构体
      class UpdatePolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID，与PolicyName二选一必填
        # @type PolicyId: Integer
        # @param PolicyName: 策略名，与PolicyId二选一必填
        # @type PolicyName: String
        # @param Description: 策略描述
        # @type Description: String
        # @param PolicyDocument: 策略文档，示例：{"version":"2.0","statement":[{"action":"name/sts:AssumeRole","effect":"allow","principal":{"service":["cloudaudit.cloud.tencent.com","cls.cloud.tencent.com"]}}]}，principal用于指定角色的授权对象。获取该参数可参阅 获取角色详情（https://cloud.tencent.com/document/product/598/36221） 输出参数RoleInfo
        # @type PolicyDocument: String
        # @param Alias: 预设策略备注
        # @type Alias: String

        attr_accessor :PolicyId, :PolicyName, :Description, :PolicyDocument, :Alias
        
        def initialize(policyid=nil, policyname=nil, description=nil, policydocument=nil, alias=nil)
          @PolicyId = policyid
          @PolicyName = policyname
          @Description = description
          @PolicyDocument = policydocument
          @Alias = alias
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @Description = params['Description']
          @PolicyDocument = params['PolicyDocument']
          @Alias = params['Alias']
        end
      end

      # UpdatePolicy返回参数结构体
      class UpdatePolicyResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略id，入参是PolicyName时，才会返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyId, :RequestId
        
        def initialize(policyid=nil, requestid=nil)
          @PolicyId = policyid
          @RequestId = requestid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @RequestId = params['RequestId']
        end
      end

      # UpdateRoleConsoleLogin请求参数结构体
      class UpdateRoleConsoleLoginRequest < TencentCloud::Common::AbstractModel
        # @param ConsoleLogin: 是否可登录，可登录：1，不可登录：0
        # @type ConsoleLogin: Integer
        # @param RoleId: 角色ID
        # @type RoleId: Integer
        # @param RoleName: 角色名
        # @type RoleName: String

        attr_accessor :ConsoleLogin, :RoleId, :RoleName
        
        def initialize(consolelogin=nil, roleid=nil, rolename=nil)
          @ConsoleLogin = consolelogin
          @RoleId = roleid
          @RoleName = rolename
        end

        def deserialize(params)
          @ConsoleLogin = params['ConsoleLogin']
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
        end
      end

      # UpdateRoleConsoleLogin返回参数结构体
      class UpdateRoleConsoleLoginResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # UpdateRoleDescription请求参数结构体
      class UpdateRoleDescriptionRequest < TencentCloud::Common::AbstractModel
        # @param Description: 角色描述
        # @type Description: String
        # @param RoleId: 角色ID，用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleId: String
        # @param RoleName: 角色名称，用于指定角色，入参 RoleId 与 RoleName 二选一
        # @type RoleName: String

        attr_accessor :Description, :RoleId, :RoleName
        
        def initialize(description=nil, roleid=nil, rolename=nil)
          @Description = description
          @RoleId = roleid
          @RoleName = rolename
        end

        def deserialize(params)
          @Description = params['Description']
          @RoleId = params['RoleId']
          @RoleName = params['RoleName']
        end
      end

      # UpdateRoleDescription返回参数结构体
      class UpdateRoleDescriptionResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # UpdateSAMLProvider请求参数结构体
      class UpdateSAMLProviderRequest < TencentCloud::Common::AbstractModel
        # @param Name: SAML身份提供商名称
        # @type Name: String
        # @param Description: SAML身份提供商描述
        # @type Description: String
        # @param SAMLMetadataDocument: SAML身份提供商Base64编码的元数据文档
        # @type SAMLMetadataDocument: String

        attr_accessor :Name, :Description, :SAMLMetadataDocument
        
        def initialize(name=nil, description=nil, samlmetadatadocument=nil)
          @Name = name
          @Description = description
          @SAMLMetadataDocument = samlmetadatadocument
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @SAMLMetadataDocument = params['SAMLMetadataDocument']
        end
      end

      # UpdateSAMLProvider返回参数结构体
      class UpdateSAMLProviderResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # UpdateUser请求参数结构体
      class UpdateUserRequest < TencentCloud::Common::AbstractModel
        # @param Name: 子用户用户名
        # @type Name: String
        # @param Remark: 子用户备注
        # @type Remark: String
        # @param ConsoleLogin: 子用户是否可以登录控制台。传0子用户无法登录控制台，传1子用户可以登录控制台。
        # @type ConsoleLogin: Integer
        # @param Password: 子用户控制台登录密码，若未进行密码规则设置则默认密码规则为8位以上同时包含大小写字母、数字和特殊字符。只有可以登录控制台时才有效，如果传空并且上面指定允许登录控制台，则自动生成随机密码，随机密码规则为32位包含大小写字母、数字和特殊字符。
        # @type Password: String
        # @param NeedResetPassword: 子用户是否要在下次登录时重置密码。传0子用户下次登录控制台不需重置密码，传1子用户下次登录控制台需要重置密码。
        # @type NeedResetPassword: Integer
        # @param PhoneNum: 手机号
        # @type PhoneNum: String
        # @param CountryCode: 区号
        # @type CountryCode: String
        # @param Email: 邮箱
        # @type Email: String

        attr_accessor :Name, :Remark, :ConsoleLogin, :Password, :NeedResetPassword, :PhoneNum, :CountryCode, :Email
        
        def initialize(name=nil, remark=nil, consolelogin=nil, password=nil, needresetpassword=nil, phonenum=nil, countrycode=nil, email=nil)
          @Name = name
          @Remark = remark
          @ConsoleLogin = consolelogin
          @Password = password
          @NeedResetPassword = needresetpassword
          @PhoneNum = phonenum
          @CountryCode = countrycode
          @Email = email
        end

        def deserialize(params)
          @Name = params['Name']
          @Remark = params['Remark']
          @ConsoleLogin = params['ConsoleLogin']
          @Password = params['Password']
          @NeedResetPassword = params['NeedResetPassword']
          @PhoneNum = params['PhoneNum']
          @CountryCode = params['CountryCode']
          @Email = params['Email']
        end
      end

      # UpdateUser返回参数结构体
      class UpdateUserResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

