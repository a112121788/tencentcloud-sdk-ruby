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
  module Tag
    module V20180813
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-08-13'
        @@endpoint = 'tag.tencentcloudapi.com'
        @@sdk_version = 'TAG_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 本接口用于给标签关联资源

        # @param request: Request instance for AddResourceTag.
        # @type request: :class:`Tencentcloud::tag::V20180813::AddResourceTagRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::AddResourceTagResponse`
        def AddResourceTag(request)
          body = send_request('AddResourceTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddResourceTagResponse.new
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

        # 给多个资源关联某个标签

        # @param request: Request instance for AttachResourcesTag.
        # @type request: :class:`Tencentcloud::tag::V20180813::AttachResourcesTagRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::AttachResourcesTagResponse`
        def AttachResourcesTag(request)
          body = send_request('AttachResourcesTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachResourcesTagResponse.new
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

        # 本接口用于创建一对标签键和标签值

        # @param request: Request instance for CreateTag.
        # @type request: :class:`Tencentcloud::tag::V20180813::CreateTagRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::CreateTagResponse`
        def CreateTag(request)
          body = send_request('CreateTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTagResponse.new
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

        # 本接口用于解除标签和资源的关联关系

        # @param request: Request instance for DeleteResourceTag.
        # @type request: :class:`Tencentcloud::tag::V20180813::DeleteResourceTagRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::DeleteResourceTagResponse`
        def DeleteResourceTag(request)
          body = send_request('DeleteResourceTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteResourceTagResponse.new
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

        # 本接口用于删除一对标签键和标签值

        # @param request: Request instance for DeleteTag.
        # @type request: :class:`Tencentcloud::tag::V20180813::DeleteTagRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::DeleteTagResponse`
        def DeleteTag(request)
          body = send_request('DeleteTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTagResponse.new
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

        # 查询资源关联标签

        # @param request: Request instance for DescribeResourceTags.
        # @type request: :class:`Tencentcloud::tag::V20180813::DescribeResourceTagsRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::DescribeResourceTagsResponse`
        def DescribeResourceTags(request)
          body = send_request('DescribeResourceTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceTagsResponse.new
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

        # 用于查询已有资源标签键值对

        # @param request: Request instance for DescribeResourceTagsByResourceIds.
        # @type request: :class:`Tencentcloud::tag::V20180813::DescribeResourceTagsByResourceIdsRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::DescribeResourceTagsByResourceIdsResponse`
        def DescribeResourceTagsByResourceIds(request)
          body = send_request('DescribeResourceTagsByResourceIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceTagsByResourceIdsResponse.new
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

        # 按顺序查看资源关联的标签

        # @param request: Request instance for DescribeResourceTagsByResourceIdsSeq.
        # @type request: :class:`Tencentcloud::tag::V20180813::DescribeResourceTagsByResourceIdsSeqRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::DescribeResourceTagsByResourceIdsSeqResponse`
        def DescribeResourceTagsByResourceIdsSeq(request)
          body = send_request('DescribeResourceTagsByResourceIdsSeq', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceTagsByResourceIdsSeqResponse.new
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

        # 根据标签键获取资源标签

        # @param request: Request instance for DescribeResourceTagsByTagKeys.
        # @type request: :class:`Tencentcloud::tag::V20180813::DescribeResourceTagsByTagKeysRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::DescribeResourceTagsByTagKeysResponse`
        def DescribeResourceTagsByTagKeys(request)
          body = send_request('DescribeResourceTagsByTagKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceTagsByTagKeysResponse.new
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

        # 通过标签查询资源列表

        # @param request: Request instance for DescribeResourcesByTags.
        # @type request: :class:`Tencentcloud::tag::V20180813::DescribeResourcesByTagsRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::DescribeResourcesByTagsResponse`
        def DescribeResourcesByTags(request)
          body = send_request('DescribeResourcesByTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourcesByTagsResponse.new
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

        # 用于查询已建立的标签列表中的标签键。

        # @param request: Request instance for DescribeTagKeys.
        # @type request: :class:`Tencentcloud::tag::V20180813::DescribeTagKeysRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::DescribeTagKeysResponse`
        def DescribeTagKeys(request)
          body = send_request('DescribeTagKeys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTagKeysResponse.new
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

        # 用于查询已建立的标签列表中的标签值。

        # @param request: Request instance for DescribeTagValues.
        # @type request: :class:`Tencentcloud::tag::V20180813::DescribeTagValuesRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::DescribeTagValuesResponse`
        def DescribeTagValues(request)
          body = send_request('DescribeTagValues', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTagValuesResponse.new
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

        # 用于查询已建立的标签列表中的标签值。

        # @param request: Request instance for DescribeTagValuesSeq.
        # @type request: :class:`Tencentcloud::tag::V20180813::DescribeTagValuesSeqRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::DescribeTagValuesSeqResponse`
        def DescribeTagValuesSeq(request)
          body = send_request('DescribeTagValuesSeq', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTagValuesSeqResponse.new
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

        # 用于查询已建立的标签列表。

        # @param request: Request instance for DescribeTags.
        # @type request: :class:`Tencentcloud::tag::V20180813::DescribeTagsRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::DescribeTagsResponse`
        def DescribeTags(request)
          body = send_request('DescribeTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTagsResponse.new
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

        # 用于查询已建立的标签列表。

        # @param request: Request instance for DescribeTagsSeq.
        # @type request: :class:`Tencentcloud::tag::V20180813::DescribeTagsSeqRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::DescribeTagsSeqResponse`
        def DescribeTagsSeq(request)
          body = send_request('DescribeTagsSeq', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTagsSeqResponse.new
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

        # 解绑多个资源关联的某个标签

        # @param request: Request instance for DetachResourcesTag.
        # @type request: :class:`Tencentcloud::tag::V20180813::DetachResourcesTagRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::DetachResourcesTagResponse`
        def DetachResourcesTag(request)
          body = send_request('DetachResourcesTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachResourcesTagResponse.new
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

        # 本接口用于修改资源关联的所有标签

        # @param request: Request instance for ModifyResourceTags.
        # @type request: :class:`Tencentcloud::tag::V20180813::ModifyResourceTagsRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::ModifyResourceTagsResponse`
        def ModifyResourceTags(request)
          body = send_request('ModifyResourceTags', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyResourceTagsResponse.new
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

        # 修改多个资源关联的某个标签键对应的标签值

        # @param request: Request instance for ModifyResourcesTagValue.
        # @type request: :class:`Tencentcloud::tag::V20180813::ModifyResourcesTagValueRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::ModifyResourcesTagValueResponse`
        def ModifyResourcesTagValue(request)
          body = send_request('ModifyResourcesTagValue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyResourcesTagValueResponse.new
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

        # 本接口用于修改资源已关联的标签值（标签键不变）

        # @param request: Request instance for UpdateResourceTagValue.
        # @type request: :class:`Tencentcloud::tag::V20180813::UpdateResourceTagValueRequest`
        # @rtype: :class:`Tencentcloud::tag::V20180813::UpdateResourceTagValueResponse`
        def UpdateResourceTagValue(request)
          body = send_request('UpdateResourceTagValue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateResourceTagValueResponse.new
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