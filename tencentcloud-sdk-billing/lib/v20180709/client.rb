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
  module Billing
    module V20180709
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-07-09'
            api_endpoint = 'billing.tencentcloudapi.com'
            sdk_version = 'BILLING_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 获取云账户余额信息。

        # @param request: Request instance for DescribeAccountBalance.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeAccountBalanceRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeAccountBalanceResponse`
        def DescribeAccountBalance(request)
          body = send_request('DescribeAccountBalance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountBalanceResponse.new
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

        # 查询账单明细数据

        # @param request: Request instance for DescribeBillDetail.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillDetailRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillDetailResponse`
        def DescribeBillDetail(request)
          body = send_request('DescribeBillDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillDetailResponse.new
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

        # 获取收支明细列表，支持翻页和参数过滤

        # @param request: Request instance for DescribeBillList.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillListRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillListResponse`
        def DescribeBillList(request)
          body = send_request('DescribeBillList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillListResponse.new
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

        # 查询账单资源汇总数据

        # @param request: Request instance for DescribeBillResourceSummary.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillResourceSummaryRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillResourceSummaryResponse`
        def DescribeBillResourceSummary(request)
          body = send_request('DescribeBillResourceSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillResourceSummaryResponse.new
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

        # 获取按付费模式汇总费用分布

        # @param request: Request instance for DescribeBillSummaryByPayMode.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByPayModeRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByPayModeResponse`
        def DescribeBillSummaryByPayMode(request)
          body = send_request('DescribeBillSummaryByPayMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillSummaryByPayModeResponse.new
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

        # 获取产品汇总费用分布

        # @param request: Request instance for DescribeBillSummaryByProduct.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByProductRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByProductResponse`
        def DescribeBillSummaryByProduct(request)
          body = send_request('DescribeBillSummaryByProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillSummaryByProductResponse.new
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

        # 获取按项目汇总费用分布

        # @param request: Request instance for DescribeBillSummaryByProject.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByProjectRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByProjectResponse`
        def DescribeBillSummaryByProject(request)
          body = send_request('DescribeBillSummaryByProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillSummaryByProjectResponse.new
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

        # 获取按地域汇总费用分布

        # @param request: Request instance for DescribeBillSummaryByRegion.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByRegionRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByRegionResponse`
        def DescribeBillSummaryByRegion(request)
          body = send_request('DescribeBillSummaryByRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillSummaryByRegionResponse.new
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

        # 获取按标签汇总费用分布

        # @param request: Request instance for DescribeBillSummaryByTag.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByTagRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeBillSummaryByTagResponse`
        def DescribeBillSummaryByTag(request)
          body = send_request('DescribeBillSummaryByTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillSummaryByTagResponse.new
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

        # 查询消耗明细

        # @param request: Request instance for DescribeCostDetail.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeCostDetailRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeCostDetailResponse`
        def DescribeCostDetail(request)
          body = send_request('DescribeCostDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCostDetailResponse.new
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

        # 获取按产品汇总消耗详情

        # @param request: Request instance for DescribeCostSummaryByProduct.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByProductRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByProductResponse`
        def DescribeCostSummaryByProduct(request)
          body = send_request('DescribeCostSummaryByProduct', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCostSummaryByProductResponse.new
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

        # 获取按项目汇总消耗详情

        # @param request: Request instance for DescribeCostSummaryByProject.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByProjectRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByProjectResponse`
        def DescribeCostSummaryByProject(request)
          body = send_request('DescribeCostSummaryByProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCostSummaryByProjectResponse.new
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

        # 获取按地域汇总消耗详情

        # @param request: Request instance for DescribeCostSummaryByRegion.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByRegionRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByRegionResponse`
        def DescribeCostSummaryByRegion(request)
          body = send_request('DescribeCostSummaryByRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCostSummaryByRegionResponse.new
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

        # 获取按资源汇总消耗详情

        # @param request: Request instance for DescribeCostSummaryByResource.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByResourceRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeCostSummaryByResourceResponse`
        def DescribeCostSummaryByResource(request)
          body = send_request('DescribeCostSummaryByResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCostSummaryByResourceResponse.new
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

        # 查询订单

        # @param request: Request instance for DescribeDealsByCond.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeDealsByCondRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeDealsByCondResponse`
        def DescribeDealsByCond(request)
          body = send_request('DescribeDealsByCond', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDealsByCondResponse.new
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

        # 获取COS产品用量明细

        # @param request: Request instance for DescribeDosageCosDetailByDate.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeDosageCosDetailByDateRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeDosageCosDetailByDateResponse`
        def DescribeDosageCosDetailByDate(request)
          body = send_request('DescribeDosageCosDetailByDate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDosageCosDetailByDateResponse.new
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

        # 按日期获取产品用量明细

        # @param request: Request instance for DescribeDosageDetailByDate.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeDosageDetailByDateRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeDosageDetailByDateResponse`
        def DescribeDosageDetailByDate(request)
          body = send_request('DescribeDosageDetailByDate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDosageDetailByDateResponse.new
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

        # 获取代金券相关信息

        # @param request: Request instance for DescribeVoucherInfo.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeVoucherInfoRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeVoucherInfoResponse`
        def DescribeVoucherInfo(request)
          body = send_request('DescribeVoucherInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVoucherInfoResponse.new
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

        # 获取代金券使用记录

        # @param request: Request instance for DescribeVoucherUsageDetails.
        # @type request: :class:`Tencentcloud::billing::V20180709::DescribeVoucherUsageDetailsRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::DescribeVoucherUsageDetailsResponse`
        def DescribeVoucherUsageDetails(request)
          body = send_request('DescribeVoucherUsageDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVoucherUsageDetailsResponse.new
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

        # 支付订单

        # @param request: Request instance for PayDeals.
        # @type request: :class:`Tencentcloud::billing::V20180709::PayDealsRequest`
        # @rtype: :class:`Tencentcloud::billing::V20180709::PayDealsResponse`
        def PayDeals(request)
          body = send_request('PayDeals', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PayDealsResponse.new
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