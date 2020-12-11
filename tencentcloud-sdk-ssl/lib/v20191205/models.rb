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
  module Ssl
    module V20191205
      # ApplyCertificate请求参数结构体
      class ApplyCertificateRequest < TencentCloud::Common::AbstractModel
        # @param DvAuthMethod: 验证方式：DNS_AUTO = 自动DNS验证，DNS = 手动DNS验证，FILE = 文件验证。
        # @type DvAuthMethod: String
        # @param DomainName: 域名。
        # @type DomainName: String
        # @param ProjectId: 项目 ID。
        # @type ProjectId: Integer
        # @param PackageType: 证书类型，目前仅支持类型2。2 = TrustAsia TLS RSA CA。
        # @type PackageType: String
        # @param ContactEmail: 邮箱。
        # @type ContactEmail: String
        # @param ContactPhone: 手机。
        # @type ContactPhone: String
        # @param ValidityPeriod: 有效期，默认12个月，目前仅支持12个月。
        # @type ValidityPeriod: String
        # @param CsrEncryptAlgo: 加密算法，仅支持 RSA。
        # @type CsrEncryptAlgo: String
        # @param CsrKeyParameter: 密钥对参数，仅支持2048。
        # @type CsrKeyParameter: String
        # @param CsrKeyPassword: CSR 的加密密码。
        # @type CsrKeyPassword: String
        # @param Alias: 备注名称。
        # @type Alias: String
        # @param OldCertificateId: 原证书 ID，用于重新申请。
        # @type OldCertificateId: String

        attr_accessor :DvAuthMethod, :DomainName, :ProjectId, :PackageType, :ContactEmail, :ContactPhone, :ValidityPeriod, :CsrEncryptAlgo, :CsrKeyParameter, :CsrKeyPassword, :Alias, :OldCertificateId
        
        def initialize(dvauthmethod=nil, domainname=nil, projectid=nil, packagetype=nil, contactemail=nil, contactphone=nil, validityperiod=nil, csrencryptalgo=nil, csrkeyparameter=nil, csrkeypassword=nil, alias=nil, oldcertificateid=nil)
          @DvAuthMethod = dvauthmethod
          @DomainName = domainname
          @ProjectId = projectid
          @PackageType = packagetype
          @ContactEmail = contactemail
          @ContactPhone = contactphone
          @ValidityPeriod = validityperiod
          @CsrEncryptAlgo = csrencryptalgo
          @CsrKeyParameter = csrkeyparameter
          @CsrKeyPassword = csrkeypassword
          @Alias = alias
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @DvAuthMethod = params['DvAuthMethod']
          @DomainName = params['DomainName']
          @ProjectId = params['ProjectId']
          @PackageType = params['PackageType']
          @ContactEmail = params['ContactEmail']
          @ContactPhone = params['ContactPhone']
          @ValidityPeriod = params['ValidityPeriod']
          @CsrEncryptAlgo = params['CsrEncryptAlgo']
          @CsrKeyParameter = params['CsrKeyParameter']
          @CsrKeyPassword = params['CsrKeyPassword']
          @Alias = params['Alias']
          @OldCertificateId = params['OldCertificateId']
        end
      end

      # ApplyCertificate返回参数结构体
      class ApplyCertificateResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :RequestId
        
        def initialize(certificateid=nil, requestid=nil)
          @CertificateId = certificateid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @RequestId = params['RequestId']
        end
      end

      # CancelCertificateOrder请求参数结构体
      class CancelCertificateOrderRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String

        attr_accessor :CertificateId
        
        def initialize(certificateid=nil)
          @CertificateId = certificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
        end
      end

      # CancelCertificateOrder返回参数结构体
      class CancelCertificateOrderResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 取消订单成功的证书 ID。
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :RequestId
        
        def initialize(certificateid=nil, requestid=nil)
          @CertificateId = certificateid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @RequestId = params['RequestId']
        end
      end

      # 获取证书列表（DescribeCertificates）返回参数键为 Certificates 数组下，key为CertificateExtra 的内容。
      class CertificateExtra < TencentCloud::Common::AbstractModel
        # @param DomainNumber: 证书可配置域名数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainNumber: String
        # @param OriginCertificateId: 原始证书 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginCertificateId: String
        # @param ReplacedBy: 重颁发证书原始 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplacedBy: String
        # @param ReplacedFor: 重颁发证书新 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplacedFor: String
        # @param RenewOrder: 新订单证书 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewOrder: String

        attr_accessor :DomainNumber, :OriginCertificateId, :ReplacedBy, :ReplacedFor, :RenewOrder
        
        def initialize(domainnumber=nil, origincertificateid=nil, replacedby=nil, replacedfor=nil, reneworder=nil)
          @DomainNumber = domainnumber
          @OriginCertificateId = origincertificateid
          @ReplacedBy = replacedby
          @ReplacedFor = replacedfor
          @RenewOrder = reneworder
        end

        def deserialize(params)
          @DomainNumber = params['DomainNumber']
          @OriginCertificateId = params['OriginCertificateId']
          @ReplacedBy = params['ReplacedBy']
          @ReplacedFor = params['ReplacedFor']
          @RenewOrder = params['RenewOrder']
        end
      end

      # 获取证书列表（DescribeCertificates）返回参数键为 Certificates 的内容。
      class Certificates < TencentCloud::Common::AbstractModel
        # @param OwnerUin: 用户 UIN。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param ProjectId: 项目 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param From: 证书来源。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type From: String
        # @param PackageType: 证书套餐类型：1 = GeoTrust DV SSL CA - G3， 2 = TrustAsia TLS RSA CA， 3 = SecureSite 增强型企业版（EV Pro）， 4 = SecureSite 增强型（EV）， 5 = SecureSite 企业型专业版（OV Pro）， 6 = SecureSite 企业型（OV）， 7 = SecureSite 企业型（OV）通配符， 8 = Geotrust 增强型（EV）， 9 = Geotrust 企业型（OV）， 10 = Geotrust 企业型（OV）通配符， 11 = TrustAsia 域名型多域名 SSL 证书， 12 = TrustAsia 域名型（DV）通配符， 13 = TrustAsia 企业型通配符（OV）SSL 证书（D3）， 14 = TrustAsia 企业型（OV）SSL 证书（D3）， 15 = TrustAsia 企业型多域名 （OV）SSL 证书（D3）， 16 = TrustAsia 增强型 （EV）SSL 证书（D3）， 17 = TrustAsia 增强型多域名（EV）SSL 证书（D3）， 18 = GlobalSign 企业型（OV）SSL 证书， 19 = GlobalSign 企业型通配符 （OV）SSL 证书， 20 = GlobalSign 增强型 （EV）SSL 证书， 21 = TrustAsia 企业型通配符多域名（OV）SSL 证书（D3）， 22 = GlobalSign 企业型多域名（OV）SSL 证书， 23 = GlobalSign 企业型通配符多域名（OV）SSL 证书， 24 = GlobalSign 增强型多域名（EV）SSL 证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageType: String
        # @param CertificateType: 证书类型：CA = 客户端证书，SVR = 服务器证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateType: String
        # @param ProductZhName: 颁发者。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductZhName: String
        # @param Domain: 主域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Alias: 备注名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param Status: 状态值 0：审核中，1：已通过，2：审核失败，3：已过期，4：已添加 DNS 解析记录，5：OV/EV 证书，待提交资料，6：订单取消中，7：已取消，8：已提交资料， 待上传确认函。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CertificateExtra: 证书扩展信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateExtra: :class:`Tencentcloud::Ssl.v20191205.models.CertificateExtra`
        # @param VulnerabilityStatus: 漏洞扫描状态：INACTIVE = 未开启，ACTIVE = 已开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityStatus: String
        # @param StatusMsg: 状态信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusMsg: String
        # @param VerifyType: 验证类型：DNS_AUTO = 自动DNS验证，DNS = 手动DNS验证，FILE = 文件验证，EMAIL = 邮件验证。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyType: String
        # @param CertBeginTime: 证书生效时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertBeginTime: String
        # @param CertEndTime: 证书过期时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertEndTime: String
        # @param ValidityPeriod: 证书有效期，单位（月）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidityPeriod: String
        # @param InsertTime: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InsertTime: String
        # @param CertificateId: 证书 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateId: String
        # @param SubjectAltName: 证书包含的多个域名（包含主域名）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubjectAltName: Array
        # @param PackageTypeName: 证书类型名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageTypeName: String
        # @param StatusName: 状态名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusName: String
        # @param IsVip: 是否为 VIP 客户。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVip: Boolean
        # @param IsDv: 是否为 DV 版证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDv: Boolean
        # @param IsWildcard: 是否为泛域名证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsWildcard: Boolean
        # @param IsVulnerability: 是否启用了漏洞扫描功能。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVulnerability: Boolean
        # @param RenewAble: 是否可重颁发证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewAble: Boolean
        # @param ProjectInfo: 项目信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectInfo: :class:`Tencentcloud::Ssl.v20191205.models.ProjectInfo`
        # @param BoundResource: 关联的云资源，暂不可用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BoundResource: Array
        # @param Deployable: 是否可部署。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deployable: Boolean

        attr_accessor :OwnerUin, :ProjectId, :From, :PackageType, :CertificateType, :ProductZhName, :Domain, :Alias, :Status, :CertificateExtra, :VulnerabilityStatus, :StatusMsg, :VerifyType, :CertBeginTime, :CertEndTime, :ValidityPeriod, :InsertTime, :CertificateId, :SubjectAltName, :PackageTypeName, :StatusName, :IsVip, :IsDv, :IsWildcard, :IsVulnerability, :RenewAble, :ProjectInfo, :BoundResource, :Deployable
        
        def initialize(owneruin=nil, projectid=nil, from=nil, packagetype=nil, certificatetype=nil, productzhname=nil, domain=nil, alias=nil, status=nil, certificateextra=nil, vulnerabilitystatus=nil, statusmsg=nil, verifytype=nil, certbegintime=nil, certendtime=nil, validityperiod=nil, inserttime=nil, certificateid=nil, subjectaltname=nil, packagetypename=nil, statusname=nil, isvip=nil, isdv=nil, iswildcard=nil, isvulnerability=nil, renewable=nil, projectinfo=nil, boundresource=nil, deployable=nil)
          @OwnerUin = owneruin
          @ProjectId = projectid
          @From = from
          @PackageType = packagetype
          @CertificateType = certificatetype
          @ProductZhName = productzhname
          @Domain = domain
          @Alias = alias
          @Status = status
          @CertificateExtra = certificateextra
          @VulnerabilityStatus = vulnerabilitystatus
          @StatusMsg = statusmsg
          @VerifyType = verifytype
          @CertBeginTime = certbegintime
          @CertEndTime = certendtime
          @ValidityPeriod = validityperiod
          @InsertTime = inserttime
          @CertificateId = certificateid
          @SubjectAltName = subjectaltname
          @PackageTypeName = packagetypename
          @StatusName = statusname
          @IsVip = isvip
          @IsDv = isdv
          @IsWildcard = iswildcard
          @IsVulnerability = isvulnerability
          @RenewAble = renewable
          @ProjectInfo = projectinfo
          @BoundResource = boundresource
          @Deployable = deployable
        end

        def deserialize(params)
          @OwnerUin = params['OwnerUin']
          @ProjectId = params['ProjectId']
          @From = params['From']
          @PackageType = params['PackageType']
          @CertificateType = params['CertificateType']
          @ProductZhName = params['ProductZhName']
          @Domain = params['Domain']
          @Alias = params['Alias']
          @Status = params['Status']
          unless params['CertificateExtra'].nil?
            @CertificateExtra = CertificateExtra.new.deserialize(params[CertificateExtra])
          end
          @VulnerabilityStatus = params['VulnerabilityStatus']
          @StatusMsg = params['StatusMsg']
          @VerifyType = params['VerifyType']
          @CertBeginTime = params['CertBeginTime']
          @CertEndTime = params['CertEndTime']
          @ValidityPeriod = params['ValidityPeriod']
          @InsertTime = params['InsertTime']
          @CertificateId = params['CertificateId']
          @SubjectAltName = params['SubjectAltName']
          @PackageTypeName = params['PackageTypeName']
          @StatusName = params['StatusName']
          @IsVip = params['IsVip']
          @IsDv = params['IsDv']
          @IsWildcard = params['IsWildcard']
          @IsVulnerability = params['IsVulnerability']
          @RenewAble = params['RenewAble']
          unless params['ProjectInfo'].nil?
            @ProjectInfo = ProjectInfo.new.deserialize(params[ProjectInfo])
          end
          @BoundResource = params['BoundResource']
          @Deployable = params['Deployable']
        end
      end

      # CommitCertificateInformation请求参数结构体
      class CommitCertificateInformationRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String

        attr_accessor :CertificateId
        
        def initialize(certificateid=nil)
          @CertificateId = certificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
        end
      end

      # CommitCertificateInformation返回参数结构体
      class CommitCertificateInformationResponse < TencentCloud::Common::AbstractModel
        # @param OrderId: 亚信订单号。
        # @type OrderId: String
        # @param Status: 证书状态：0 = 审核中，1 = 已通过，2 = 审核失败，3 = 已过期，4 = 已添加DNS记录，5 = 企业证书，待提交，6 = 订单取消中，7 = 已取消，8 = 已提交资料， 待上传确认函，9 = 证书吊销中，10 = 已吊销，11 = 重颁发中，12 = 待上传吊销确认函。
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderId, :Status, :RequestId
        
        def initialize(orderid=nil, status=nil, requestid=nil)
          @OrderId = orderid
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCertificate请求参数结构体
      class DeleteCertificateRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String

        attr_accessor :CertificateId
        
        def initialize(certificateid=nil)
          @CertificateId = certificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
        end
      end

      # DeleteCertificate返回参数结构体
      class DeleteCertificateResponse < TencentCloud::Common::AbstractModel
        # @param DeleteResult: 删除结果。
        # @type DeleteResult: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeleteResult, :RequestId
        
        def initialize(deleteresult=nil, requestid=nil)
          @DeleteResult = deleteresult
          @RequestId = requestid
        end

        def deserialize(params)
          @DeleteResult = params['DeleteResult']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCertificateDetail请求参数结构体
      class DescribeCertificateDetailRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String

        attr_accessor :CertificateId
        
        def initialize(certificateid=nil)
          @CertificateId = certificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
        end
      end

      # DescribeCertificateDetail返回参数结构体
      class DescribeCertificateDetailResponse < TencentCloud::Common::AbstractModel
        # @param OwnerUin: 用户 UIN。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param ProjectId: 项目 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param From: 证书来源：trustasia = 亚洲诚信，upload = 用户上传。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type From: String
        # @param CertificateType: 证书类型：CA = 客户端证书，SVR = 服务器证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateType: String
        # @param PackageType: 证书套餐类型：1 = GeoTrust DV SSL CA - G3， 2 = TrustAsia TLS RSA CA， 3 = SecureSite 增强型企业版（EV Pro）， 4 = SecureSite 增强型（EV）， 5 = SecureSite 企业型专业版（OV Pro）， 6 = SecureSite 企业型（OV）， 7 = SecureSite 企业型（OV）通配符， 8 = Geotrust 增强型（EV）， 9 = Geotrust 企业型（OV）， 10 = Geotrust 企业型（OV）通配符， 11 = TrustAsia 域名型多域名 SSL 证书， 12 = TrustAsia 域名型（DV）通配符， 13 = TrustAsia 企业型通配符（OV）SSL 证书（D3）， 14 = TrustAsia 企业型（OV）SSL 证书（D3）， 15 = TrustAsia 企业型多域名 （OV）SSL 证书（D3）， 16 = TrustAsia 增强型 （EV）SSL 证书（D3）， 17 = TrustAsia 增强型多域名（EV）SSL 证书（D3）， 18 = GlobalSign 企业型（OV）SSL 证书， 19 = GlobalSign 企业型通配符 （OV）SSL 证书， 20 = GlobalSign 增强型 （EV）SSL 证书， 21 = TrustAsia 企业型通配符多域名（OV）SSL 证书（D3）， 22 = GlobalSign 企业型多域名（OV）SSL 证书， 23 = GlobalSign 企业型通配符多域名（OV）SSL 证书， 24 = GlobalSign 增强型多域名（EV）SSL 证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageType: String
        # @param ProductZhName: 颁发者。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductZhName: String
        # @param Domain: 域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Alias: 备注名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param Status: 证书状态：0 = 审核中，1 = 已通过，2 = 审核失败，3 = 已过期，4 = 已添加DNS记录，5 = 企业证书，待提交，6 = 订单取消中，7 = 已取消，8 = 已提交资料， 待上传确认函，9 = 证书吊销中，10 = 已吊销，11 = 重颁发中，12 = 待上传吊销确认函。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param StatusMsg: 状态信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusMsg: String
        # @param VerifyType: 验证类型：DNS_AUTO = 自动DNS验证，DNS = 手动DNS验证，FILE = 文件验证，EMAIL = 邮件验证。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyType: String
        # @param VulnerabilityStatus: 漏洞扫描状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityStatus: String
        # @param CertBeginTime: 证书生效时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertBeginTime: String
        # @param CertEndTime: 证书失效时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertEndTime: String
        # @param ValidityPeriod: 证书有效期：单位（月）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidityPeriod: String
        # @param InsertTime: 申请时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InsertTime: String
        # @param OrderId: 订单 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderId: String
        # @param CertificateExtra: 证书扩展信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateExtra: :class:`Tencentcloud::Ssl.v20191205.models.CertificateExtra`
        # @param CertificatePrivateKey: 证书私钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificatePrivateKey: String
        # @param CertificatePublicKey: 证书公钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificatePublicKey: String
        # @param DvAuthDetail: DV 认证信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthDetail: :class:`Tencentcloud::Ssl.v20191205.models.DvAuthDetail`
        # @param VulnerabilityReport: 漏洞扫描评估报告。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityReport: String
        # @param CertificateId: 证书 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateId: String
        # @param TypeName: 证书类型名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeName: String
        # @param StatusName: 状态描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusName: String
        # @param SubjectAltName: 证书包含的多个域名（包含主域名）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubjectAltName: Array
        # @param IsVip: 是否为 VIP 客户。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVip: Boolean
        # @param IsWildcard: 是否为泛域名证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsWildcard: Boolean
        # @param IsDv: 是否为 DV 版证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDv: Boolean
        # @param IsVulnerability: 是否启用了漏洞扫描功能。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVulnerability: Boolean
        # @param SubmittedData: 提交的资料信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubmittedData: :class:`Tencentcloud::Ssl.v20191205.models.SubmittedData`
        # @param RenewAble: 是否可重颁发证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewAble: Boolean
        # @param Deployable: 是否可部署。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deployable: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OwnerUin, :ProjectId, :From, :CertificateType, :PackageType, :ProductZhName, :Domain, :Alias, :Status, :StatusMsg, :VerifyType, :VulnerabilityStatus, :CertBeginTime, :CertEndTime, :ValidityPeriod, :InsertTime, :OrderId, :CertificateExtra, :CertificatePrivateKey, :CertificatePublicKey, :DvAuthDetail, :VulnerabilityReport, :CertificateId, :TypeName, :StatusName, :SubjectAltName, :IsVip, :IsWildcard, :IsDv, :IsVulnerability, :SubmittedData, :RenewAble, :Deployable, :RequestId
        
        def initialize(owneruin=nil, projectid=nil, from=nil, certificatetype=nil, packagetype=nil, productzhname=nil, domain=nil, alias=nil, status=nil, statusmsg=nil, verifytype=nil, vulnerabilitystatus=nil, certbegintime=nil, certendtime=nil, validityperiod=nil, inserttime=nil, orderid=nil, certificateextra=nil, certificateprivatekey=nil, certificatepublickey=nil, dvauthdetail=nil, vulnerabilityreport=nil, certificateid=nil, typename=nil, statusname=nil, subjectaltname=nil, isvip=nil, iswildcard=nil, isdv=nil, isvulnerability=nil, submitteddata=nil, renewable=nil, deployable=nil, requestid=nil)
          @OwnerUin = owneruin
          @ProjectId = projectid
          @From = from
          @CertificateType = certificatetype
          @PackageType = packagetype
          @ProductZhName = productzhname
          @Domain = domain
          @Alias = alias
          @Status = status
          @StatusMsg = statusmsg
          @VerifyType = verifytype
          @VulnerabilityStatus = vulnerabilitystatus
          @CertBeginTime = certbegintime
          @CertEndTime = certendtime
          @ValidityPeriod = validityperiod
          @InsertTime = inserttime
          @OrderId = orderid
          @CertificateExtra = certificateextra
          @CertificatePrivateKey = certificateprivatekey
          @CertificatePublicKey = certificatepublickey
          @DvAuthDetail = dvauthdetail
          @VulnerabilityReport = vulnerabilityreport
          @CertificateId = certificateid
          @TypeName = typename
          @StatusName = statusname
          @SubjectAltName = subjectaltname
          @IsVip = isvip
          @IsWildcard = iswildcard
          @IsDv = isdv
          @IsVulnerability = isvulnerability
          @SubmittedData = submitteddata
          @RenewAble = renewable
          @Deployable = deployable
          @RequestId = requestid
        end

        def deserialize(params)
          @OwnerUin = params['OwnerUin']
          @ProjectId = params['ProjectId']
          @From = params['From']
          @CertificateType = params['CertificateType']
          @PackageType = params['PackageType']
          @ProductZhName = params['ProductZhName']
          @Domain = params['Domain']
          @Alias = params['Alias']
          @Status = params['Status']
          @StatusMsg = params['StatusMsg']
          @VerifyType = params['VerifyType']
          @VulnerabilityStatus = params['VulnerabilityStatus']
          @CertBeginTime = params['CertBeginTime']
          @CertEndTime = params['CertEndTime']
          @ValidityPeriod = params['ValidityPeriod']
          @InsertTime = params['InsertTime']
          @OrderId = params['OrderId']
          unless params['CertificateExtra'].nil?
            @CertificateExtra = CertificateExtra.new.deserialize(params[CertificateExtra])
          end
          @CertificatePrivateKey = params['CertificatePrivateKey']
          @CertificatePublicKey = params['CertificatePublicKey']
          unless params['DvAuthDetail'].nil?
            @DvAuthDetail = DvAuthDetail.new.deserialize(params[DvAuthDetail])
          end
          @VulnerabilityReport = params['VulnerabilityReport']
          @CertificateId = params['CertificateId']
          @TypeName = params['TypeName']
          @StatusName = params['StatusName']
          @SubjectAltName = params['SubjectAltName']
          @IsVip = params['IsVip']
          @IsWildcard = params['IsWildcard']
          @IsDv = params['IsDv']
          @IsVulnerability = params['IsVulnerability']
          unless params['SubmittedData'].nil?
            @SubmittedData = SubmittedData.new.deserialize(params[SubmittedData])
          end
          @RenewAble = params['RenewAble']
          @Deployable = params['Deployable']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCertificateOperateLogs请求参数结构体
      class DescribeCertificateOperateLogsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 请求日志数量，默认为20。
        # @type Limit: Integer
        # @param StartTime: 开始时间，默认15天前。
        # @type StartTime: String
        # @param EndTime: 结束时间，默认现在时间。
        # @type EndTime: String

        attr_accessor :Offset, :Limit, :StartTime, :EndTime
        
        def initialize(offset=nil, limit=nil, starttime=nil, endtime=nil)
          @Offset = offset
          @Limit = limit
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeCertificateOperateLogs返回参数结构体
      class DescribeCertificateOperateLogsResponse < TencentCloud::Common::AbstractModel
        # @param AllTotal: 当前查询条件日志总数。
        # @type AllTotal: Integer
        # @param TotalCount: 本次请求返回的日志数量。
        # @type TotalCount: Integer
        # @param OperateLogs: 证书操作日志列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateLogs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AllTotal, :TotalCount, :OperateLogs, :RequestId
        
        def initialize(alltotal=nil, totalcount=nil, operatelogs=nil, requestid=nil)
          @AllTotal = alltotal
          @TotalCount = totalcount
          @OperateLogs = operatelogs
          @RequestId = requestid
        end

        def deserialize(params)
          @AllTotal = params['AllTotal']
          @TotalCount = params['TotalCount']
          @OperateLogs = params['OperateLogs']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCertificate请求参数结构体
      class DescribeCertificateRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String

        attr_accessor :CertificateId
        
        def initialize(certificateid=nil)
          @CertificateId = certificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
        end
      end

      # DescribeCertificate返回参数结构体
      class DescribeCertificateResponse < TencentCloud::Common::AbstractModel
        # @param OwnerUin: 用户 UIN。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param ProjectId: 项目 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param From: 证书来源：trustasia = 亚洲诚信，upload = 用户上传。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type From: String
        # @param CertificateType: 证书类型：CA = 客户端证书，SVR = 服务器证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateType: String
        # @param PackageType: 证书套餐类型：1 = GeoTrust DV SSL CA - G3， 2 = TrustAsia TLS RSA CA， 3 = SecureSite 增强型企业版（EV Pro）， 4 = SecureSite 增强型（EV）， 5 = SecureSite 企业型专业版（OV Pro）， 6 = SecureSite 企业型（OV）， 7 = SecureSite 企业型（OV）通配符， 8 = Geotrust 增强型（EV）， 9 = Geotrust 企业型（OV）， 10 = Geotrust 企业型（OV）通配符， 11 = TrustAsia 域名型多域名 SSL 证书， 12 = TrustAsia 域名型（DV）通配符， 13 = TrustAsia 企业型通配符（OV）SSL 证书（D3）， 14 = TrustAsia 企业型（OV）SSL 证书（D3）， 15 = TrustAsia 企业型多域名 （OV）SSL 证书（D3）， 16 = TrustAsia 增强型 （EV）SSL 证书（D3）， 17 = TrustAsia 增强型多域名（EV）SSL 证书（D3）， 18 = GlobalSign 企业型（OV）SSL 证书， 19 = GlobalSign 企业型通配符 （OV）SSL 证书， 20 = GlobalSign 增强型 （EV）SSL 证书， 21 = TrustAsia 企业型通配符多域名（OV）SSL 证书（D3）， 22 = GlobalSign 企业型多域名（OV）SSL 证书， 23 = GlobalSign 企业型通配符多域名（OV）SSL 证书， 24 = GlobalSign 增强型多域名（EV）SSL 证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageType: String
        # @param ProductZhName: 证书颁发者名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductZhName: String
        # @param Domain: 域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Alias: 备注名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param Status: 证书状态：0 = 审核中，1 = 已通过，2 = 审核失败，3 = 已过期，4 = 已添加DNS记录，5 = 企业证书，待提交，6 = 订单取消中，7 = 已取消，8 = 已提交资料， 待上传确认函，9 = 证书吊销中，10 = 已吊销，11 = 重颁发中，12 = 待上传吊销确认函。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param StatusMsg: 状态信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusMsg: String
        # @param VerifyType: 验证类型：DNS_AUTO = 自动DNS验证，DNS = 手动DNS验证，FILE = 文件验证，EMAIL = 邮件验证。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyType: String
        # @param VulnerabilityStatus: 漏洞扫描状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityStatus: String
        # @param CertBeginTime: 证书生效时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertBeginTime: String
        # @param CertEndTime: 证书失效时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertEndTime: String
        # @param ValidityPeriod: 证书有效期：单位(月)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidityPeriod: String
        # @param InsertTime: 申请时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InsertTime: String
        # @param OrderId: 订单 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderId: String
        # @param CertificateExtra: 证书扩展信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateExtra: :class:`Tencentcloud::Ssl.v20191205.models.CertificateExtra`
        # @param DvAuthDetail: DV 认证信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthDetail: :class:`Tencentcloud::Ssl.v20191205.models.DvAuthDetail`
        # @param VulnerabilityReport: 漏洞扫描评估报告。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityReport: String
        # @param CertificateId: 证书 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateId: String
        # @param PackageTypeName: 证书类型名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageTypeName: String
        # @param StatusName: 状态描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusName: String
        # @param SubjectAltName: 证书包含的多个域名（包含主域名）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubjectAltName: Array
        # @param IsVip: 是否为 VIP 客户。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVip: Boolean
        # @param IsWildcard: 是否为泛域名证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsWildcard: Boolean
        # @param IsDv: 是否为 DV 版证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDv: Boolean
        # @param IsVulnerability: 是否启用了漏洞扫描功能。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVulnerability: Boolean
        # @param RenewAble: 是否可重颁发证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewAble: Boolean
        # @param SubmittedData: 提交的资料信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubmittedData: :class:`Tencentcloud::Ssl.v20191205.models.SubmittedData`
        # @param Deployable: 是否可部署。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deployable: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OwnerUin, :ProjectId, :From, :CertificateType, :PackageType, :ProductZhName, :Domain, :Alias, :Status, :StatusMsg, :VerifyType, :VulnerabilityStatus, :CertBeginTime, :CertEndTime, :ValidityPeriod, :InsertTime, :OrderId, :CertificateExtra, :DvAuthDetail, :VulnerabilityReport, :CertificateId, :PackageTypeName, :StatusName, :SubjectAltName, :IsVip, :IsWildcard, :IsDv, :IsVulnerability, :RenewAble, :SubmittedData, :Deployable, :RequestId
        
        def initialize(owneruin=nil, projectid=nil, from=nil, certificatetype=nil, packagetype=nil, productzhname=nil, domain=nil, alias=nil, status=nil, statusmsg=nil, verifytype=nil, vulnerabilitystatus=nil, certbegintime=nil, certendtime=nil, validityperiod=nil, inserttime=nil, orderid=nil, certificateextra=nil, dvauthdetail=nil, vulnerabilityreport=nil, certificateid=nil, packagetypename=nil, statusname=nil, subjectaltname=nil, isvip=nil, iswildcard=nil, isdv=nil, isvulnerability=nil, renewable=nil, submitteddata=nil, deployable=nil, requestid=nil)
          @OwnerUin = owneruin
          @ProjectId = projectid
          @From = from
          @CertificateType = certificatetype
          @PackageType = packagetype
          @ProductZhName = productzhname
          @Domain = domain
          @Alias = alias
          @Status = status
          @StatusMsg = statusmsg
          @VerifyType = verifytype
          @VulnerabilityStatus = vulnerabilitystatus
          @CertBeginTime = certbegintime
          @CertEndTime = certendtime
          @ValidityPeriod = validityperiod
          @InsertTime = inserttime
          @OrderId = orderid
          @CertificateExtra = certificateextra
          @DvAuthDetail = dvauthdetail
          @VulnerabilityReport = vulnerabilityreport
          @CertificateId = certificateid
          @PackageTypeName = packagetypename
          @StatusName = statusname
          @SubjectAltName = subjectaltname
          @IsVip = isvip
          @IsWildcard = iswildcard
          @IsDv = isdv
          @IsVulnerability = isvulnerability
          @RenewAble = renewable
          @SubmittedData = submitteddata
          @Deployable = deployable
          @RequestId = requestid
        end

        def deserialize(params)
          @OwnerUin = params['OwnerUin']
          @ProjectId = params['ProjectId']
          @From = params['From']
          @CertificateType = params['CertificateType']
          @PackageType = params['PackageType']
          @ProductZhName = params['ProductZhName']
          @Domain = params['Domain']
          @Alias = params['Alias']
          @Status = params['Status']
          @StatusMsg = params['StatusMsg']
          @VerifyType = params['VerifyType']
          @VulnerabilityStatus = params['VulnerabilityStatus']
          @CertBeginTime = params['CertBeginTime']
          @CertEndTime = params['CertEndTime']
          @ValidityPeriod = params['ValidityPeriod']
          @InsertTime = params['InsertTime']
          @OrderId = params['OrderId']
          unless params['CertificateExtra'].nil?
            @CertificateExtra = CertificateExtra.new.deserialize(params[CertificateExtra])
          end
          unless params['DvAuthDetail'].nil?
            @DvAuthDetail = DvAuthDetail.new.deserialize(params[DvAuthDetail])
          end
          @VulnerabilityReport = params['VulnerabilityReport']
          @CertificateId = params['CertificateId']
          @PackageTypeName = params['PackageTypeName']
          @StatusName = params['StatusName']
          @SubjectAltName = params['SubjectAltName']
          @IsVip = params['IsVip']
          @IsWildcard = params['IsWildcard']
          @IsDv = params['IsDv']
          @IsVulnerability = params['IsVulnerability']
          @RenewAble = params['RenewAble']
          unless params['SubmittedData'].nil?
            @SubmittedData = SubmittedData.new.deserialize(params[SubmittedData])
          end
          @Deployable = params['Deployable']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCertificates请求参数结构体
      class DescribeCertificatesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量，从0开始。
        # @type Offset: Integer
        # @param Limit: 每页数量，默认20。
        # @type Limit: Integer
        # @param SearchKey: 搜索关键词，可搜索证书 ID、备注名称、域名。例如： a8xHcaIs。
        # @type SearchKey: String
        # @param CertificateType: 证书类型：CA = 客户端证书，SVR = 服务器证书。
        # @type CertificateType: String
        # @param ProjectId: 项目 ID。
        # @type ProjectId: Integer
        # @param ExpirationSort: 按到期时间排序：DESC = 降序， ASC = 升序。
        # @type ExpirationSort: String
        # @param CertificateStatus: 证书状态。
        # @type CertificateStatus: Array
        # @param Deployable: 是否可部署，可选值：1 = 可部署，0 =  不可部署。
        # @type Deployable: Integer

        attr_accessor :Offset, :Limit, :SearchKey, :CertificateType, :ProjectId, :ExpirationSort, :CertificateStatus, :Deployable
        
        def initialize(offset=nil, limit=nil, searchkey=nil, certificatetype=nil, projectid=nil, expirationsort=nil, certificatestatus=nil, deployable=nil)
          @Offset = offset
          @Limit = limit
          @SearchKey = searchkey
          @CertificateType = certificatetype
          @ProjectId = projectid
          @ExpirationSort = expirationsort
          @CertificateStatus = certificatestatus
          @Deployable = deployable
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchKey = params['SearchKey']
          @CertificateType = params['CertificateType']
          @ProjectId = params['ProjectId']
          @ExpirationSort = params['ExpirationSort']
          @CertificateStatus = params['CertificateStatus']
          @Deployable = params['Deployable']
        end
      end

      # DescribeCertificates返回参数结构体
      class DescribeCertificatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Certificates: 列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Certificates: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Certificates, :RequestId
        
        def initialize(totalcount=nil, certificates=nil, requestid=nil)
          @TotalCount = totalcount
          @Certificates = certificates
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Certificates = params['Certificates']
          @RequestId = params['RequestId']
        end
      end

      # DownloadCertificate请求参数结构体
      class DownloadCertificateRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String

        attr_accessor :CertificateId
        
        def initialize(certificateid=nil)
          @CertificateId = certificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
        end
      end

      # DownloadCertificate返回参数结构体
      class DownloadCertificateResponse < TencentCloud::Common::AbstractModel
        # @param Content: ZIP base64 编码内容，base64 解码后可保存为 ZIP 文件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param ContentType: MIME 类型：application/zip = ZIP 压缩文件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContentType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :ContentType, :RequestId
        
        def initialize(content=nil, contenttype=nil, requestid=nil)
          @Content = content
          @ContentType = contenttype
          @RequestId = requestid
        end

        def deserialize(params)
          @Content = params['Content']
          @ContentType = params['ContentType']
          @RequestId = params['RequestId']
        end
      end

      # 获取证书列表（DescribeCertificate）返回参数键为 DvAuthDetail 的内容。
      class DvAuthDetail < TencentCloud::Common::AbstractModel
        # @param DvAuthKey: DV 认证密钥。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthKey: String
        # @param DvAuthValue: DV 认证值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthValue: String
        # @param DvAuthDomain: DV 认证值域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthDomain: String
        # @param DvAuthPath: DV 认证值路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthPath: String
        # @param DvAuthKeySubDomain: DV 认证子域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthKeySubDomain: String
        # @param DvAuths: DV 认证信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuths: Array

        attr_accessor :DvAuthKey, :DvAuthValue, :DvAuthDomain, :DvAuthPath, :DvAuthKeySubDomain, :DvAuths
        
        def initialize(dvauthkey=nil, dvauthvalue=nil, dvauthdomain=nil, dvauthpath=nil, dvauthkeysubdomain=nil, dvauths=nil)
          @DvAuthKey = dvauthkey
          @DvAuthValue = dvauthvalue
          @DvAuthDomain = dvauthdomain
          @DvAuthPath = dvauthpath
          @DvAuthKeySubDomain = dvauthkeysubdomain
          @DvAuths = dvauths
        end

        def deserialize(params)
          @DvAuthKey = params['DvAuthKey']
          @DvAuthValue = params['DvAuthValue']
          @DvAuthDomain = params['DvAuthDomain']
          @DvAuthPath = params['DvAuthPath']
          @DvAuthKeySubDomain = params['DvAuthKeySubDomain']
          @DvAuths = params['DvAuths']
        end
      end

      # 返回参数键为 DvAuths 的内容。
      class DvAuths < TencentCloud::Common::AbstractModel
        # @param DvAuthKey: DV 认证密钥。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthKey: String
        # @param DvAuthValue: DV 认证值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthValue: String
        # @param DvAuthDomain: DV 认证值域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthDomain: String
        # @param DvAuthPath: DV 认证值路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthPath: String
        # @param DvAuthSubDomain: DV 认证子域名，
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthSubDomain: String
        # @param DvAuthVerifyType: DV 认证类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthVerifyType: String

        attr_accessor :DvAuthKey, :DvAuthValue, :DvAuthDomain, :DvAuthPath, :DvAuthSubDomain, :DvAuthVerifyType
        
        def initialize(dvauthkey=nil, dvauthvalue=nil, dvauthdomain=nil, dvauthpath=nil, dvauthsubdomain=nil, dvauthverifytype=nil)
          @DvAuthKey = dvauthkey
          @DvAuthValue = dvauthvalue
          @DvAuthDomain = dvauthdomain
          @DvAuthPath = dvauthpath
          @DvAuthSubDomain = dvauthsubdomain
          @DvAuthVerifyType = dvauthverifytype
        end

        def deserialize(params)
          @DvAuthKey = params['DvAuthKey']
          @DvAuthValue = params['DvAuthValue']
          @DvAuthDomain = params['DvAuthDomain']
          @DvAuthPath = params['DvAuthPath']
          @DvAuthSubDomain = params['DvAuthSubDomain']
          @DvAuthVerifyType = params['DvAuthVerifyType']
        end
      end

      # ModifyCertificateAlias请求参数结构体
      class ModifyCertificateAliasRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param Alias: 备注名称。
        # @type Alias: String

        attr_accessor :CertificateId, :Alias
        
        def initialize(certificateid=nil, alias=nil)
          @CertificateId = certificateid
          @Alias = alias
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @Alias = params['Alias']
        end
      end

      # ModifyCertificateAlias返回参数结构体
      class ModifyCertificateAliasResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 修改成功的证书 ID。
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :RequestId
        
        def initialize(certificateid=nil, requestid=nil)
          @CertificateId = certificateid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyCertificateProject请求参数结构体
      class ModifyCertificateProjectRequest < TencentCloud::Common::AbstractModel
        # @param CertificateIdList: 需要修改所属项目的证书 ID 集合，最多100个证书。
        # @type CertificateIdList: Array
        # @param ProjectId: 项目 ID。
        # @type ProjectId: Integer

        attr_accessor :CertificateIdList, :ProjectId
        
        def initialize(certificateidlist=nil, projectid=nil)
          @CertificateIdList = certificateidlist
          @ProjectId = projectid
        end

        def deserialize(params)
          @CertificateIdList = params['CertificateIdList']
          @ProjectId = params['ProjectId']
        end
      end

      # ModifyCertificateProject返回参数结构体
      class ModifyCertificateProjectResponse < TencentCloud::Common::AbstractModel
        # @param SuccessCertificates: 修改所属项目成功的证书集合。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessCertificates: Array
        # @param FailCertificates: 修改所属项目失败的证书集合。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailCertificates: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessCertificates, :FailCertificates, :RequestId
        
        def initialize(successcertificates=nil, failcertificates=nil, requestid=nil)
          @SuccessCertificates = successcertificates
          @FailCertificates = failcertificates
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessCertificates = params['SuccessCertificates']
          @FailCertificates = params['FailCertificates']
          @RequestId = params['RequestId']
        end
      end

      # 证书操作日志。
      class OperationLog < TencentCloud::Common::AbstractModel
        # @param Action: 操作证书动作。
        # @type Action: String
        # @param CreatedOn: 操作时间。
        # @type CreatedOn: String

        attr_accessor :Action, :CreatedOn
        
        def initialize(action=nil, createdon=nil)
          @Action = action
          @CreatedOn = createdon
        end

        def deserialize(params)
          @Action = params['Action']
          @CreatedOn = params['CreatedOn']
        end
      end

      # 获取证书列表（DescribeCertificates）返回参数键为 Certificates 下，key为 ProjectInfo 的内容。
      class ProjectInfo < TencentCloud::Common::AbstractModel
        # @param ProjectName: 项目名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param ProjectCreatorUin: 项目创建用户 UIN。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectCreatorUin: Integer
        # @param ProjectCreateTime: 项目创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectCreateTime: String
        # @param ProjectResume: 项目信息简述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectResume: String
        # @param OwnerUin: 用户 UIN。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: Integer
        # @param ProjectId: 项目 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String

        attr_accessor :ProjectName, :ProjectCreatorUin, :ProjectCreateTime, :ProjectResume, :OwnerUin, :ProjectId
        
        def initialize(projectname=nil, projectcreatoruin=nil, projectcreatetime=nil, projectresume=nil, owneruin=nil, projectid=nil)
          @ProjectName = projectname
          @ProjectCreatorUin = projectcreatoruin
          @ProjectCreateTime = projectcreatetime
          @ProjectResume = projectresume
          @OwnerUin = owneruin
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectName = params['ProjectName']
          @ProjectCreatorUin = params['ProjectCreatorUin']
          @ProjectCreateTime = params['ProjectCreateTime']
          @ProjectResume = params['ProjectResume']
          @OwnerUin = params['OwnerUin']
          @ProjectId = params['ProjectId']
        end
      end

      # ReplaceCertificate请求参数结构体
      class ReplaceCertificateRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param ValidType: 验证类型：DNS_AUTO = 自动DNS验证，DNS = 手动DNS验证，FILE = 文件验证。
        # @type ValidType: String
        # @param CsrType: 类型，默认 Original。可选项：Original = 原证书 CSR，Upload = 手动上传，Online = 在线生成。
        # @type CsrType: String
        # @param CsrContent: CSR 内容。
        # @type CsrContent: String
        # @param CsrkeyPassword: KEY 密码。
        # @type CsrkeyPassword: String

        attr_accessor :CertificateId, :ValidType, :CsrType, :CsrContent, :CsrkeyPassword
        
        def initialize(certificateid=nil, validtype=nil, csrtype=nil, csrcontent=nil, csrkeypassword=nil)
          @CertificateId = certificateid
          @ValidType = validtype
          @CsrType = csrtype
          @CsrContent = csrcontent
          @CsrkeyPassword = csrkeypassword
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @ValidType = params['ValidType']
          @CsrType = params['CsrType']
          @CsrContent = params['CsrContent']
          @CsrkeyPassword = params['CsrkeyPassword']
        end
      end

      # ReplaceCertificate返回参数结构体
      class ReplaceCertificateResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :RequestId
        
        def initialize(certificateid=nil, requestid=nil)
          @CertificateId = certificateid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitCertificateInformation请求参数结构体
      class SubmitCertificateInformationRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param CsrType: CSR 生成方式：online = 在线生成, parse = 手动上传。
        # @type CsrType: String
        # @param CsrContent: 上传的 CSR 内容。
        # @type CsrContent: String
        # @param CertificateDomain: 绑定证书的域名。
        # @type CertificateDomain: String
        # @param DomainList: 上传的域名数组（多域名证书可以上传）。
        # @type DomainList: Array
        # @param KeyPassword: 私钥密码。
        # @type KeyPassword: String
        # @param OrganizationName: 公司名称。
        # @type OrganizationName: String
        # @param OrganizationDivision: 部门名称。
        # @type OrganizationDivision: String
        # @param OrganizationAddress: 公司详细地址。
        # @type OrganizationAddress: String
        # @param OrganizationCountry: 国家名称，如中国：CN 。
        # @type OrganizationCountry: String
        # @param OrganizationCity: 公司所在城市。
        # @type OrganizationCity: String
        # @param OrganizationRegion: 公司所在省份。
        # @type OrganizationRegion: String
        # @param PostalCode: 公司邮编。
        # @type PostalCode: String
        # @param PhoneAreaCode: 公司座机区号。
        # @type PhoneAreaCode: String
        # @param PhoneNumber: 公司座机号码。
        # @type PhoneNumber: String
        # @param VerifyType: 证书验证方式。
        # @type VerifyType: String
        # @param AdminFirstName: 管理人名。
        # @type AdminFirstName: String
        # @param AdminLastName: 管理人姓。
        # @type AdminLastName: String
        # @param AdminPhoneNum: 管理人手机号码。
        # @type AdminPhoneNum: String
        # @param AdminEmail: 管理人邮箱地址。
        # @type AdminEmail: String
        # @param AdminPosition: 管理人职位。
        # @type AdminPosition: String
        # @param ContactFirstName: 联系人名。
        # @type ContactFirstName: String
        # @param ContactLastName: 联系人姓。
        # @type ContactLastName: String
        # @param ContactEmail: 联系人邮箱地址。
        # @type ContactEmail: String
        # @param ContactNumber: 联系人手机号码。
        # @type ContactNumber: String
        # @param ContactPosition: 联系人职位。
        # @type ContactPosition: String

        attr_accessor :CertificateId, :CsrType, :CsrContent, :CertificateDomain, :DomainList, :KeyPassword, :OrganizationName, :OrganizationDivision, :OrganizationAddress, :OrganizationCountry, :OrganizationCity, :OrganizationRegion, :PostalCode, :PhoneAreaCode, :PhoneNumber, :VerifyType, :AdminFirstName, :AdminLastName, :AdminPhoneNum, :AdminEmail, :AdminPosition, :ContactFirstName, :ContactLastName, :ContactEmail, :ContactNumber, :ContactPosition
        
        def initialize(certificateid=nil, csrtype=nil, csrcontent=nil, certificatedomain=nil, domainlist=nil, keypassword=nil, organizationname=nil, organizationdivision=nil, organizationaddress=nil, organizationcountry=nil, organizationcity=nil, organizationregion=nil, postalcode=nil, phoneareacode=nil, phonenumber=nil, verifytype=nil, adminfirstname=nil, adminlastname=nil, adminphonenum=nil, adminemail=nil, adminposition=nil, contactfirstname=nil, contactlastname=nil, contactemail=nil, contactnumber=nil, contactposition=nil)
          @CertificateId = certificateid
          @CsrType = csrtype
          @CsrContent = csrcontent
          @CertificateDomain = certificatedomain
          @DomainList = domainlist
          @KeyPassword = keypassword
          @OrganizationName = organizationname
          @OrganizationDivision = organizationdivision
          @OrganizationAddress = organizationaddress
          @OrganizationCountry = organizationcountry
          @OrganizationCity = organizationcity
          @OrganizationRegion = organizationregion
          @PostalCode = postalcode
          @PhoneAreaCode = phoneareacode
          @PhoneNumber = phonenumber
          @VerifyType = verifytype
          @AdminFirstName = adminfirstname
          @AdminLastName = adminlastname
          @AdminPhoneNum = adminphonenum
          @AdminEmail = adminemail
          @AdminPosition = adminposition
          @ContactFirstName = contactfirstname
          @ContactLastName = contactlastname
          @ContactEmail = contactemail
          @ContactNumber = contactnumber
          @ContactPosition = contactposition
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @CsrType = params['CsrType']
          @CsrContent = params['CsrContent']
          @CertificateDomain = params['CertificateDomain']
          @DomainList = params['DomainList']
          @KeyPassword = params['KeyPassword']
          @OrganizationName = params['OrganizationName']
          @OrganizationDivision = params['OrganizationDivision']
          @OrganizationAddress = params['OrganizationAddress']
          @OrganizationCountry = params['OrganizationCountry']
          @OrganizationCity = params['OrganizationCity']
          @OrganizationRegion = params['OrganizationRegion']
          @PostalCode = params['PostalCode']
          @PhoneAreaCode = params['PhoneAreaCode']
          @PhoneNumber = params['PhoneNumber']
          @VerifyType = params['VerifyType']
          @AdminFirstName = params['AdminFirstName']
          @AdminLastName = params['AdminLastName']
          @AdminPhoneNum = params['AdminPhoneNum']
          @AdminEmail = params['AdminEmail']
          @AdminPosition = params['AdminPosition']
          @ContactFirstName = params['ContactFirstName']
          @ContactLastName = params['ContactLastName']
          @ContactEmail = params['ContactEmail']
          @ContactNumber = params['ContactNumber']
          @ContactPosition = params['ContactPosition']
        end
      end

      # SubmitCertificateInformation返回参数结构体
      class SubmitCertificateInformationResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :RequestId
        
        def initialize(certificateid=nil, requestid=nil)
          @CertificateId = certificateid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @RequestId = params['RequestId']
        end
      end

      # 获取证书列表（DescribeCertificate）返回参数键为 SubmittedData 的内容。
      class SubmittedData < TencentCloud::Common::AbstractModel
        # @param CsrType: CSR 类型，（online = 在线生成CSR，parse = 粘贴 CSR）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CsrType: String
        # @param CsrContent: CSR 内容。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CsrContent: String
        # @param CertificateDomain: 域名信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateDomain: String
        # @param DomainList: DNS 信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainList: Array
        # @param KeyPassword: 私钥密码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyPassword: String
        # @param OrganizationName: 企业或单位名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationName: String
        # @param OrganizationDivision: 部门。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationDivision: String
        # @param OrganizationAddress: 地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationAddress: String
        # @param OrganizationCountry: 国家。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationCountry: String
        # @param OrganizationCity: 市。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationCity: String
        # @param OrganizationRegion: 省。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationRegion: String
        # @param PostalCode: 邮政编码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostalCode: String
        # @param PhoneAreaCode: 座机区号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneAreaCode: String
        # @param PhoneNumber: 座机号码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneNumber: String
        # @param AdminFirstName: 管理员名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdminFirstName: String
        # @param AdminLastName: 管理员姓。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdminLastName: String
        # @param AdminPhoneNum: 管理员电话号码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdminPhoneNum: String
        # @param AdminEmail: 管理员邮箱地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdminEmail: String
        # @param AdminPosition: 管理员职位。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdminPosition: String
        # @param ContactFirstName: 联系人名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContactFirstName: String
        # @param ContactLastName: 联系人姓。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContactLastName: String
        # @param ContactNumber: 联系人电话号码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContactNumber: String
        # @param ContactEmail: 联系人邮箱地址，
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContactEmail: String
        # @param ContactPosition: 联系人职位。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContactPosition: String
        # @param VerifyType: 验证类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyType: String

        attr_accessor :CsrType, :CsrContent, :CertificateDomain, :DomainList, :KeyPassword, :OrganizationName, :OrganizationDivision, :OrganizationAddress, :OrganizationCountry, :OrganizationCity, :OrganizationRegion, :PostalCode, :PhoneAreaCode, :PhoneNumber, :AdminFirstName, :AdminLastName, :AdminPhoneNum, :AdminEmail, :AdminPosition, :ContactFirstName, :ContactLastName, :ContactNumber, :ContactEmail, :ContactPosition, :VerifyType
        
        def initialize(csrtype=nil, csrcontent=nil, certificatedomain=nil, domainlist=nil, keypassword=nil, organizationname=nil, organizationdivision=nil, organizationaddress=nil, organizationcountry=nil, organizationcity=nil, organizationregion=nil, postalcode=nil, phoneareacode=nil, phonenumber=nil, adminfirstname=nil, adminlastname=nil, adminphonenum=nil, adminemail=nil, adminposition=nil, contactfirstname=nil, contactlastname=nil, contactnumber=nil, contactemail=nil, contactposition=nil, verifytype=nil)
          @CsrType = csrtype
          @CsrContent = csrcontent
          @CertificateDomain = certificatedomain
          @DomainList = domainlist
          @KeyPassword = keypassword
          @OrganizationName = organizationname
          @OrganizationDivision = organizationdivision
          @OrganizationAddress = organizationaddress
          @OrganizationCountry = organizationcountry
          @OrganizationCity = organizationcity
          @OrganizationRegion = organizationregion
          @PostalCode = postalcode
          @PhoneAreaCode = phoneareacode
          @PhoneNumber = phonenumber
          @AdminFirstName = adminfirstname
          @AdminLastName = adminlastname
          @AdminPhoneNum = adminphonenum
          @AdminEmail = adminemail
          @AdminPosition = adminposition
          @ContactFirstName = contactfirstname
          @ContactLastName = contactlastname
          @ContactNumber = contactnumber
          @ContactEmail = contactemail
          @ContactPosition = contactposition
          @VerifyType = verifytype
        end

        def deserialize(params)
          @CsrType = params['CsrType']
          @CsrContent = params['CsrContent']
          @CertificateDomain = params['CertificateDomain']
          @DomainList = params['DomainList']
          @KeyPassword = params['KeyPassword']
          @OrganizationName = params['OrganizationName']
          @OrganizationDivision = params['OrganizationDivision']
          @OrganizationAddress = params['OrganizationAddress']
          @OrganizationCountry = params['OrganizationCountry']
          @OrganizationCity = params['OrganizationCity']
          @OrganizationRegion = params['OrganizationRegion']
          @PostalCode = params['PostalCode']
          @PhoneAreaCode = params['PhoneAreaCode']
          @PhoneNumber = params['PhoneNumber']
          @AdminFirstName = params['AdminFirstName']
          @AdminLastName = params['AdminLastName']
          @AdminPhoneNum = params['AdminPhoneNum']
          @AdminEmail = params['AdminEmail']
          @AdminPosition = params['AdminPosition']
          @ContactFirstName = params['ContactFirstName']
          @ContactLastName = params['ContactLastName']
          @ContactNumber = params['ContactNumber']
          @ContactEmail = params['ContactEmail']
          @ContactPosition = params['ContactPosition']
          @VerifyType = params['VerifyType']
        end
      end

      # UploadCertificate请求参数结构体
      class UploadCertificateRequest < TencentCloud::Common::AbstractModel
        # @param CertificatePublicKey: 证书公钥。
        # @type CertificatePublicKey: String
        # @param CertificatePrivateKey: 私钥内容，证书类型为 SVR 时必填，为 CA 时可不填。
        # @type CertificatePrivateKey: String
        # @param CertificateType: 证书类型，默认 SVR。CA = 客户端证书，SVR = 服务器证书。
        # @type CertificateType: String
        # @param Alias: 备注名称。
        # @type Alias: String
        # @param ProjectId: 项目 ID。
        # @type ProjectId: Integer

        attr_accessor :CertificatePublicKey, :CertificatePrivateKey, :CertificateType, :Alias, :ProjectId
        
        def initialize(certificatepublickey=nil, certificateprivatekey=nil, certificatetype=nil, alias=nil, projectid=nil)
          @CertificatePublicKey = certificatepublickey
          @CertificatePrivateKey = certificateprivatekey
          @CertificateType = certificatetype
          @Alias = alias
          @ProjectId = projectid
        end

        def deserialize(params)
          @CertificatePublicKey = params['CertificatePublicKey']
          @CertificatePrivateKey = params['CertificatePrivateKey']
          @CertificateType = params['CertificateType']
          @Alias = params['Alias']
          @ProjectId = params['ProjectId']
        end
      end

      # UploadCertificate返回参数结构体
      class UploadCertificateResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :RequestId
        
        def initialize(certificateid=nil, requestid=nil)
          @CertificateId = certificateid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

