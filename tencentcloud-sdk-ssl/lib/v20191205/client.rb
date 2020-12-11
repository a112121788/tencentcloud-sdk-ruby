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

require 'json'

module TencentCloud
  module Ssl
    module V20191205
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-12-05'
        @@endpoint = 'ssl.tencentcloudapi.com'
        @@sdk_version = 'SSL_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 本接口（ApplyCertificate）用于免费证书申请。

        # @param request: Request instance for ApplyCertificate.
        # @type request: :class:`Tencentcloud::ssl::V20191205::ApplyCertificateRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::ApplyCertificateResponse`
        def ApplyCertificate(request)
          body = send_request('ApplyCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ApplyCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 取消证书订单。

        # @param request: Request instance for CancelCertificateOrder.
        # @type request: :class:`Tencentcloud::ssl::V20191205::CancelCertificateOrderRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::CancelCertificateOrderResponse`
        def CancelCertificateOrder(request)
          body = send_request('CancelCertificateOrder', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelCertificateOrderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交证书订单。

        # @param request: Request instance for CommitCertificateInformation.
        # @type request: :class:`Tencentcloud::ssl::V20191205::CommitCertificateInformationRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::CommitCertificateInformationResponse`
        def CommitCertificateInformation(request)
          body = send_request('CommitCertificateInformation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CommitCertificateInformationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteCertificate）用于删除证书。

        # @param request: Request instance for DeleteCertificate.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DeleteCertificateRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DeleteCertificateResponse`
        def DeleteCertificate(request)
          body = send_request('DeleteCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeCertificate）用于获取证书信息。

        # @param request: Request instance for DescribeCertificate.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeCertificateRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeCertificateResponse`
        def DescribeCertificate(request)
          body = send_request('DescribeCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取证书详情。

        # @param request: Request instance for DescribeCertificateDetail.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeCertificateDetailRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeCertificateDetailResponse`
        def DescribeCertificateDetail(request)
          body = send_request('DescribeCertificateDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCertificateDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户账号下有关证书的操作日志。

        # @param request: Request instance for DescribeCertificateOperateLogs.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeCertificateOperateLogsRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeCertificateOperateLogsResponse`
        def DescribeCertificateOperateLogs(request)
          body = send_request('DescribeCertificateOperateLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCertificateOperateLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeCertificates）用于获取证书列表。

        # @param request: Request instance for DescribeCertificates.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DescribeCertificatesRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DescribeCertificatesResponse`
        def DescribeCertificates(request)
          body = send_request('DescribeCertificates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCertificatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DownloadCertificate）用于下载证书。

        # @param request: Request instance for DownloadCertificate.
        # @type request: :class:`Tencentcloud::ssl::V20191205::DownloadCertificateRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::DownloadCertificateResponse`
        def DownloadCertificate(request)
          body = send_request('DownloadCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户传入证书id和备注来修改证书备注。

        # @param request: Request instance for ModifyCertificateAlias.
        # @type request: :class:`Tencentcloud::ssl::V20191205::ModifyCertificateAliasRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::ModifyCertificateAliasResponse`
        def ModifyCertificateAlias(request)
          body = send_request('ModifyCertificateAlias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCertificateAliasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改证书所属项目。

        # @param request: Request instance for ModifyCertificateProject.
        # @type request: :class:`Tencentcloud::ssl::V20191205::ModifyCertificateProjectRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::ModifyCertificateProjectResponse`
        def ModifyCertificateProject(request)
          body = send_request('ModifyCertificateProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCertificateProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ReplaceCertificate）用于重颁发证书。已申请的免费证书仅支持 RSA 算法、密钥对参数为2048的证书重颁发，并且目前仅支持1次重颁发。

        # @param request: Request instance for ReplaceCertificate.
        # @type request: :class:`Tencentcloud::ssl::V20191205::ReplaceCertificateRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::ReplaceCertificateResponse`
        def ReplaceCertificate(request)
          body = send_request('ReplaceCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提交证书资料。

        # @param request: Request instance for SubmitCertificateInformation.
        # @type request: :class:`Tencentcloud::ssl::V20191205::SubmitCertificateInformationRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::SubmitCertificateInformationResponse`
        def SubmitCertificateInformation(request)
          body = send_request('SubmitCertificateInformation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitCertificateInformationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UploadCertificate）用于上传证书。

        # @param request: Request instance for UploadCertificate.
        # @type request: :class:`Tencentcloud::ssl::V20191205::UploadCertificateRequest`
        # @rtype: :class:`Tencentcloud::ssl::V20191205::UploadCertificateResponse`
        def UploadCertificate(request)
          body = send_request('UploadCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end


      end
    end
  end
end