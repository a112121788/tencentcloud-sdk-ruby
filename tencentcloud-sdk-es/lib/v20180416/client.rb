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
  module Es
    module V20180416
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-04-16'
            api_endpoint = 'es.tencentcloudapi.com'
            sdk_version = 'ES_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建索引

        # @param request: Request instance for CreateIndex.
        # @type request: :class:`Tencentcloud::es::V20180416::CreateIndexRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::CreateIndexResponse`
        def CreateIndex(request)
          body = send_request('CreateIndex', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIndexResponse.new
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

        # 创建指定规格的ES集群实例

        # @param request: Request instance for CreateInstance.
        # @type request: :class:`Tencentcloud::es::V20180416::CreateInstanceRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::CreateInstanceResponse`
        def CreateInstance(request)
          body = send_request('CreateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstanceResponse.new
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

        # 用于创建Logstash实例

        # @param request: Request instance for CreateLogstashInstance.
        # @type request: :class:`Tencentcloud::es::V20180416::CreateLogstashInstanceRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::CreateLogstashInstanceResponse`
        def CreateLogstashInstance(request)
          body = send_request('CreateLogstashInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLogstashInstanceResponse.new
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

        # 删除索引

        # @param request: Request instance for DeleteIndex.
        # @type request: :class:`Tencentcloud::es::V20180416::DeleteIndexRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DeleteIndexResponse`
        def DeleteIndex(request)
          body = send_request('DeleteIndex', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteIndexResponse.new
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

        # 销毁集群实例

        # @param request: Request instance for DeleteInstance.
        # @type request: :class:`Tencentcloud::es::V20180416::DeleteInstanceRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DeleteInstanceResponse`
        def DeleteInstance(request)
          body = send_request('DeleteInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteInstanceResponse.new
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

        # 用于删除Logstash实例

        # @param request: Request instance for DeleteLogstashInstance.
        # @type request: :class:`Tencentcloud::es::V20180416::DeleteLogstashInstanceRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DeleteLogstashInstanceResponse`
        def DeleteLogstashInstance(request)
          body = send_request('DeleteLogstashInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLogstashInstanceResponse.new
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

        # 用于批量删除Logstash管道

        # @param request: Request instance for DeleteLogstashPipelines.
        # @type request: :class:`Tencentcloud::es::V20180416::DeleteLogstashPipelinesRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DeleteLogstashPipelinesResponse`
        def DeleteLogstashPipelines(request)
          body = send_request('DeleteLogstashPipelines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLogstashPipelinesResponse.new
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

        # 获取索引列表

        # @param request: Request instance for DescribeIndexList.
        # @type request: :class:`Tencentcloud::es::V20180416::DescribeIndexListRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DescribeIndexListResponse`
        def DescribeIndexList(request)
          body = send_request('DescribeIndexList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIndexListResponse.new
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

        # 获取索引元数据

        # @param request: Request instance for DescribeIndexMeta.
        # @type request: :class:`Tencentcloud::es::V20180416::DescribeIndexMetaRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DescribeIndexMetaResponse`
        def DescribeIndexMeta(request)
          body = send_request('DescribeIndexMeta', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIndexMetaResponse.new
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

        # 查询用户该地域下符合条件的ES集群的日志

        # @param request: Request instance for DescribeInstanceLogs.
        # @type request: :class:`Tencentcloud::es::V20180416::DescribeInstanceLogsRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DescribeInstanceLogsResponse`
        def DescribeInstanceLogs(request)
          body = send_request('DescribeInstanceLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceLogsResponse.new
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

        # 查询实例指定条件下的操作记录

        # @param request: Request instance for DescribeInstanceOperations.
        # @type request: :class:`Tencentcloud::es::V20180416::DescribeInstanceOperationsRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DescribeInstanceOperationsResponse`
        def DescribeInstanceOperations(request)
          body = send_request('DescribeInstanceOperations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceOperationsResponse.new
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

        # 查询用户该地域下符合条件的所有实例

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::es::V20180416::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DescribeInstancesResponse`
        def DescribeInstances(request)
          body = send_request('DescribeInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesResponse.new
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

        # 查询用户该地域下符合条件的Logstash实例的日志

        # @param request: Request instance for DescribeLogstashInstanceLogs.
        # @type request: :class:`Tencentcloud::es::V20180416::DescribeLogstashInstanceLogsRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DescribeLogstashInstanceLogsResponse`
        def DescribeLogstashInstanceLogs(request)
          body = send_request('DescribeLogstashInstanceLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogstashInstanceLogsResponse.new
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

        # 查询实例指定条件下的操作记录

        # @param request: Request instance for DescribeLogstashInstanceOperations.
        # @type request: :class:`Tencentcloud::es::V20180416::DescribeLogstashInstanceOperationsRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DescribeLogstashInstanceOperationsResponse`
        def DescribeLogstashInstanceOperations(request)
          body = send_request('DescribeLogstashInstanceOperations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogstashInstanceOperationsResponse.new
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

        # 查询用户该地域下符合条件的所有Logstash实例

        # @param request: Request instance for DescribeLogstashInstances.
        # @type request: :class:`Tencentcloud::es::V20180416::DescribeLogstashInstancesRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DescribeLogstashInstancesResponse`
        def DescribeLogstashInstances(request)
          body = send_request('DescribeLogstashInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogstashInstancesResponse.new
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

        # 用于获取Logstash实例管道列表

        # @param request: Request instance for DescribeLogstashPipelines.
        # @type request: :class:`Tencentcloud::es::V20180416::DescribeLogstashPipelinesRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DescribeLogstashPipelinesResponse`
        def DescribeLogstashPipelines(request)
          body = send_request('DescribeLogstashPipelines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogstashPipelinesResponse.new
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

        # 查询集群各视图数据，包括集群维度、节点维度、Kibana维度

        # @param request: Request instance for DescribeViews.
        # @type request: :class:`Tencentcloud::es::V20180416::DescribeViewsRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DescribeViewsResponse`
        def DescribeViews(request)
          body = send_request('DescribeViews', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeViewsResponse.new
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

        # 智能运维诊断集群

        # @param request: Request instance for DiagnoseInstance.
        # @type request: :class:`Tencentcloud::es::V20180416::DiagnoseInstanceRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::DiagnoseInstanceResponse`
        def DiagnoseInstance(request)
          body = send_request('DiagnoseInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DiagnoseInstanceResponse.new
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

        # 获取接收客户端请求的节点类型

        # @param request: Request instance for GetRequestTargetNodeTypes.
        # @type request: :class:`Tencentcloud::es::V20180416::GetRequestTargetNodeTypesRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::GetRequestTargetNodeTypesResponse`
        def GetRequestTargetNodeTypes(request)
          body = send_request('GetRequestTargetNodeTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetRequestTargetNodeTypesResponse.new
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

        # 重启ES集群实例(用于系统版本更新等操作)

        # @param request: Request instance for RestartInstance.
        # @type request: :class:`Tencentcloud::es::V20180416::RestartInstanceRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::RestartInstanceResponse`
        def RestartInstance(request)
          body = send_request('RestartInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartInstanceResponse.new
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

        # 重启Kibana

        # @param request: Request instance for RestartKibana.
        # @type request: :class:`Tencentcloud::es::V20180416::RestartKibanaRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::RestartKibanaResponse`
        def RestartKibana(request)
          body = send_request('RestartKibana', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartKibanaResponse.new
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

        # 用于重启Logstash实例

        # @param request: Request instance for RestartLogstashInstance.
        # @type request: :class:`Tencentcloud::es::V20180416::RestartLogstashInstanceRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::RestartLogstashInstanceResponse`
        def RestartLogstashInstance(request)
          body = send_request('RestartLogstashInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartLogstashInstanceResponse.new
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

        # 用于重启集群节点

        # @param request: Request instance for RestartNodes.
        # @type request: :class:`Tencentcloud::es::V20180416::RestartNodesRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::RestartNodesResponse`
        def RestartNodes(request)
          body = send_request('RestartNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartNodesResponse.new
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

        # 用于下发并且部署管道

        # @param request: Request instance for SaveAndDeployLogstashPipeline.
        # @type request: :class:`Tencentcloud::es::V20180416::SaveAndDeployLogstashPipelineRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::SaveAndDeployLogstashPipelineResponse`
        def SaveAndDeployLogstashPipeline(request)
          body = send_request('SaveAndDeployLogstashPipeline', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SaveAndDeployLogstashPipelineResponse.new
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

        # 用于启动Logstash管道

        # @param request: Request instance for StartLogstashPipelines.
        # @type request: :class:`Tencentcloud::es::V20180416::StartLogstashPipelinesRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::StartLogstashPipelinesResponse`
        def StartLogstashPipelines(request)
          body = send_request('StartLogstashPipelines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartLogstashPipelinesResponse.new
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

        # 用于批量停止Logstash管道

        # @param request: Request instance for StopLogstashPipelines.
        # @type request: :class:`Tencentcloud::es::V20180416::StopLogstashPipelinesRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::StopLogstashPipelinesResponse`
        def StopLogstashPipelines(request)
          body = send_request('StopLogstashPipelines', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopLogstashPipelinesResponse.new
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

        # 更新智能运维配置

        # @param request: Request instance for UpdateDiagnoseSettings.
        # @type request: :class:`Tencentcloud::es::V20180416::UpdateDiagnoseSettingsRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpdateDiagnoseSettingsResponse`
        def UpdateDiagnoseSettings(request)
          body = send_request('UpdateDiagnoseSettings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDiagnoseSettingsResponse.new
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

        # 更新ES集群词典

        # @param request: Request instance for UpdateDictionaries.
        # @type request: :class:`Tencentcloud::es::V20180416::UpdateDictionariesRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpdateDictionariesResponse`
        def UpdateDictionaries(request)
          body = send_request('UpdateDictionaries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDictionariesResponse.new
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

        # 更新索引

        # @param request: Request instance for UpdateIndex.
        # @type request: :class:`Tencentcloud::es::V20180416::UpdateIndexRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpdateIndexResponse`
        def UpdateIndex(request)
          body = send_request('UpdateIndex', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateIndexResponse.new
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

        # 对集群进行节点规格变更，修改实例名称，修改配置，重置密码， 添加Kibana黑白名单等操作。参数中InstanceId为必传参数，ForceRestart为选填参数，剩余参数传递组合及含义如下：
        # - InstanceName：修改实例名称(仅用于标识实例)
        # - NodeInfoList: 修改节点配置（节点横向扩缩容，纵向扩缩容，增加主节点，增加冷节点等）
        # - EsConfig：修改集群配置
        # - Password：修改默认用户elastic的密码
        # - EsAcl：修改访问控制列表
        # - CosBackUp: 设置集群COS自动备份信息
        # 以上参数组合只能传递一种，多传或少传均会导致请求失败

        # @param request: Request instance for UpdateInstance.
        # @type request: :class:`Tencentcloud::es::V20180416::UpdateInstanceRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpdateInstanceResponse`
        def UpdateInstance(request)
          body = send_request('UpdateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateInstanceResponse.new
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

        # 更新实例Jdk配置

        # @param request: Request instance for UpdateJdk.
        # @type request: :class:`Tencentcloud::es::V20180416::UpdateJdkRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpdateJdkResponse`
        def UpdateJdk(request)
          body = send_request('UpdateJdk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateJdkResponse.new
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

        # 对集群进行节点规格变更，修改实例名称，修改配置，等操作。参数中InstanceId为必传参数，参数传递组合及含义如下：
        # - InstanceName：修改实例名称(仅用于标识实例)
        # - NodeNum: 修改实例节点数量（节点横向扩缩容，纵向扩缩容等）
        # - YMLConfig: 修改实例YML配置
        # - BindedES：修改绑定的ES集群配置
        # 以上参数组合只能传递一种，多传或少传均会导致请求失败

        # @param request: Request instance for UpdateLogstashInstance.
        # @type request: :class:`Tencentcloud::es::V20180416::UpdateLogstashInstanceRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpdateLogstashInstanceResponse`
        def UpdateLogstashInstance(request)
          body = send_request('UpdateLogstashInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateLogstashInstanceResponse.new
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

        # 用于更新管道描述信息

        # @param request: Request instance for UpdateLogstashPipelineDesc.
        # @type request: :class:`Tencentcloud::es::V20180416::UpdateLogstashPipelineDescRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpdateLogstashPipelineDescResponse`
        def UpdateLogstashPipelineDesc(request)
          body = send_request('UpdateLogstashPipelineDesc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateLogstashPipelineDescResponse.new
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

        # 变更插件列表

        # @param request: Request instance for UpdatePlugins.
        # @type request: :class:`Tencentcloud::es::V20180416::UpdatePluginsRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpdatePluginsResponse`
        def UpdatePlugins(request)
          body = send_request('UpdatePlugins', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdatePluginsResponse.new
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

        # 更新接收客户端请求的节点类型

        # @param request: Request instance for UpdateRequestTargetNodeTypes.
        # @type request: :class:`Tencentcloud::es::V20180416::UpdateRequestTargetNodeTypesRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpdateRequestTargetNodeTypesResponse`
        def UpdateRequestTargetNodeTypes(request)
          body = send_request('UpdateRequestTargetNodeTypes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateRequestTargetNodeTypesResponse.new
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

        # 升级ES集群版本

        # @param request: Request instance for UpgradeInstance.
        # @type request: :class:`Tencentcloud::es::V20180416::UpgradeInstanceRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpgradeInstanceResponse`
        def UpgradeInstance(request)
          body = send_request('UpgradeInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeInstanceResponse.new
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

        # 升级ES商业特性

        # @param request: Request instance for UpgradeLicense.
        # @type request: :class:`Tencentcloud::es::V20180416::UpgradeLicenseRequest`
        # @rtype: :class:`Tencentcloud::es::V20180416::UpgradeLicenseResponse`
        def UpgradeLicense(request)
          body = send_request('UpgradeLicense', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeLicenseResponse.new
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