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
  module Dbbrain
    module V20191016
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-10-16'
        @@endpoint = 'dbbrain.tencentcloudapi.com'
        @@sdk_version = 'DBBRAIN_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 获取实例异常诊断事件的详情信息。

        # @param request: Request instance for DescribeDBDiagEvent.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeDBDiagEventRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeDBDiagEventResponse`
        def DescribeDBDiagEvent(request)
          body = send_request('DescribeDBDiagEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBDiagEventResponse.new
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

        # 获取实例诊断事件的列表。

        # @param request: Request instance for DescribeDBDiagHistory.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeDBDiagHistoryRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeDBDiagHistoryResponse`
        def DescribeDBDiagHistory(request)
          body = send_request('DescribeDBDiagHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBDiagHistoryResponse.new
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

        # 获取指定时间段内的实例空间使用概览，包括磁盘增长量(MB)、磁盘剩余(MB)、磁盘总量(MB)及预计可用天数。

        # @param request: Request instance for DescribeDBSpaceStatus.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeDBSpaceStatusRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeDBSpaceStatusResponse`
        def DescribeDBSpaceStatus(request)
          body = send_request('DescribeDBSpaceStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDBSpaceStatusResponse.new
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

        # 获取慢日志统计柱状图

        # @param request: Request instance for DescribeSlowLogTimeSeriesStats.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeSlowLogTimeSeriesStatsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeSlowLogTimeSeriesStatsResponse`
        def DescribeSlowLogTimeSeriesStats(request)
          body = send_request('DescribeSlowLogTimeSeriesStats', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSlowLogTimeSeriesStatsResponse.new
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

        # 按照Sql模板+schema的聚合方式，统计排序指定时间段内的top慢sql。

        # @param request: Request instance for DescribeSlowLogTopSqls.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeSlowLogTopSqlsRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeSlowLogTopSqlsResponse`
        def DescribeSlowLogTopSqls(request)
          body = send_request('DescribeSlowLogTopSqls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSlowLogTopSqlsResponse.new
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

        # 获取实例占用空间最大的前几张表在指定时间段内的每日由DBbrain定时采集的空间数据，默认返回按大小排序。

        # @param request: Request instance for DescribeTopSpaceTableTimeSeries.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeTopSpaceTableTimeSeriesRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeTopSpaceTableTimeSeriesResponse`
        def DescribeTopSpaceTableTimeSeries(request)
          body = send_request('DescribeTopSpaceTableTimeSeries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopSpaceTableTimeSeriesResponse.new
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

        # 获取实例Top表的实时空间统计信息，默认返回按大小排序。

        # @param request: Request instance for DescribeTopSpaceTables.
        # @type request: :class:`Tencentcloud::dbbrain::V20191016::DescribeTopSpaceTablesRequest`
        # @rtype: :class:`Tencentcloud::dbbrain::V20191016::DescribeTopSpaceTablesResponse`
        def DescribeTopSpaceTables(request)
          body = send_request('DescribeTopSpaceTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopSpaceTablesResponse.new
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