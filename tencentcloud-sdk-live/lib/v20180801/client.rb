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
  module Live
    module V20180801
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2018-08-01'
        @@endpoint = 'live.tencentcloudapi.com'
        @@sdk_version = 'LIVE_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 对流设置延播时间
        # 注意：如果在推流前设置延播，需要提前5分钟设置。
        # 目前该接口只支持流粒度的，域名及应用粒度功能支持当前开发中。
        # 使用场景：对重要直播，避免出现突发状况，可通过设置延迟播放，提前做好把控。

        # @param request: Request instance for AddDelayLiveStream.
        # @type request: :class:`Tencentcloud::live::V20180801::AddDelayLiveStreamRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::AddDelayLiveStreamResponse`
        def AddDelayLiveStream(request)
          body = send_request('AddDelayLiveStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddDelayLiveStreamResponse.new
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

        # 添加域名，一次只能提交一个域名。域名必须已备案。

        # @param request: Request instance for AddLiveDomain.
        # @type request: :class:`Tencentcloud::live::V20180801::AddLiveDomainRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::AddLiveDomainResponse`
        def AddLiveDomain(request)
          body = send_request('AddLiveDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddLiveDomainResponse.new
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

        # 添加水印，成功返回水印 ID 后，需要调用[CreateLiveWatermarkRule](/document/product/267/32629)接口将水印 ID 绑定到流使用。

        # @param request: Request instance for AddLiveWatermark.
        # @type request: :class:`Tencentcloud::live::V20180801::AddLiveWatermarkRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::AddLiveWatermarkResponse`
        def AddLiveWatermark(request)
          body = send_request('AddLiveWatermark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddLiveWatermarkResponse.new
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

        # 域名绑定证书。
        # 注意：需先调用添加证书接口进行证书添加。获取到证书Id后再调用该接口进行绑定。

        # @param request: Request instance for BindLiveDomainCert.
        # @type request: :class:`Tencentcloud::live::V20180801::BindLiveDomainCertRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::BindLiveDomainCertResponse`
        def BindLiveDomainCert(request)
          body = send_request('BindLiveDomainCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindLiveDomainCertResponse.new
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

        # 该接口用来取消混流。用法与 mix_streamv2.cancel_mix_stream 基本一致。

        # @param request: Request instance for CancelCommonMixStream.
        # @type request: :class:`Tencentcloud::live::V20180801::CancelCommonMixStreamRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CancelCommonMixStreamResponse`
        def CancelCommonMixStream(request)
          body = send_request('CancelCommonMixStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelCommonMixStreamResponse.new
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

        # 该接口用来创建通用混流。用法与旧接口 mix_streamv2.start_mix_stream_advanced 基本一致。
        # 注意：当前最多支持16路混流。

        # @param request: Request instance for CreateCommonMixStream.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateCommonMixStreamRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateCommonMixStreamResponse`
        def CreateCommonMixStream(request)
          body = send_request('CreateCommonMixStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCommonMixStreamResponse.new
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

        # 创建回调规则，需要先调用[CreateLiveCallbackTemplate](/document/product/267/32637)接口创建回调模板，将返回的模板id绑定到域名/路径进行使用。
        # <br>回调协议相关文档：[事件消息通知](/document/product/267/32744)。

        # @param request: Request instance for CreateLiveCallbackRule.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveCallbackRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveCallbackRuleResponse`
        def CreateLiveCallbackRule(request)
          body = send_request('CreateLiveCallbackRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveCallbackRuleResponse.new
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

        # 创建回调模板，成功返回模板id后，需要调用[CreateLiveCallbackRule](/document/product/267/32638)接口将模板 ID 绑定到域名/路径使用。
        # <br>回调协议相关文档：[事件消息通知](/document/product/267/32744)。

        # @param request: Request instance for CreateLiveCallbackTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveCallbackTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveCallbackTemplateResponse`
        def CreateLiveCallbackTemplate(request)
          body = send_request('CreateLiveCallbackTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveCallbackTemplateResponse.new
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

        # 添加证书

        # @param request: Request instance for CreateLiveCert.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveCertRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveCertResponse`
        def CreateLiveCert(request)
          body = send_request('CreateLiveCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveCertResponse.new
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

        # - 使用前提
        #   1. 录制文件存放于点播平台，所以用户如需使用录制功能，需首先自行开通点播服务。
        #   2. 录制文件存放后相关费用（含存储以及下行播放流量）按照点播平台计费方式收取，具体请参考 [对应文档](https://cloud.tencent.com/document/product/266/2838)。

        # - 模式说明
        #   该接口支持两种录制模式：
        #   1. 定时录制模式【默认模式】。
        #     需要传入开始时间与结束时间，录制任务根据起止时间自动开始与结束。在所设置结束时间过期之前（且未调用StopLiveRecord提前终止任务），录制任务都是有效的，期间多次断流然后重推都会启动录制任务。
        #   2. 实时视频录制模式。
        #     忽略传入的开始时间，在录制任务创建后立即开始录制，录制时长支持最大为30分钟，如果传入的结束时间与当前时间差大于30分钟，则按30分钟计算，实时视频录制主要用于录制精彩视频场景，时长建议控制在5分钟以内。

        # - 注意事项
        #   1. 调用接口超时设置应大于3秒，小于3秒重试以及按不同起止时间调用都有可能产生重复录制任务，进而导致额外录制费用。
        #   2. 受限于音视频文件格式（FLV/MP4/HLS）对编码类型的支持，视频编码类型支持 H.264，音频编码类型支持 AAC。
        #   3. 为避免恶意或非主观的频繁 API 请求，对定时录制模式最大创建任务数做了限制：其中，当天可以创建的最大任务数不超过4000（不含已删除的任务）；当前时刻并发运行的任务数不超过400。有超出此限制的需要提工单申请。
        #   4. 此调用方式暂时不支持海外推流录制。

        # @param request: Request instance for CreateLiveRecord.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveRecordRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveRecordResponse`
        def CreateLiveRecord(request)
          body = send_request('CreateLiveRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveRecordResponse.new
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

        # 创建录制规则，需要先调用[CreateLiveRecordTemplate](/document/product/267/32614)接口创建录制模板，将返回的模板id绑定到流使用。
        # <br>录制相关文档：[直播录制](/document/product/267/32739)。

        # @param request: Request instance for CreateLiveRecordRule.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveRecordRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveRecordRuleResponse`
        def CreateLiveRecordRule(request)
          body = send_request('CreateLiveRecordRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveRecordRuleResponse.new
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

        # 创建录制模板，成功返回模板id后，需要调用[CreateLiveRecordRule](/document/product/267/32615)接口，将模板id绑定到流进行使用。
        # <br>录制相关文档：[直播录制](/document/product/267/32739)。

        # @param request: Request instance for CreateLiveRecordTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveRecordTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveRecordTemplateResponse`
        def CreateLiveRecordTemplate(request)
          body = send_request('CreateLiveRecordTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveRecordTemplateResponse.new
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

        # 创建截图规则，需要先调用[CreateLiveSnapshotTemplate](/document/product/267/32624)接口创建截图模板，然后将返回的模板 ID 绑定到流进行使用。
        # <br>截图相关文档：[直播截图](/document/product/267/32737)。
        # 注意：单个域名仅支持关联一个截图模板。

        # @param request: Request instance for CreateLiveSnapshotRule.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveSnapshotRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveSnapshotRuleResponse`
        def CreateLiveSnapshotRule(request)
          body = send_request('CreateLiveSnapshotRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveSnapshotRuleResponse.new
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

        # 创建截图模板，成功返回模板id后，需要调用[CreateLiveSnapshotRule](/document/product/267/32625)接口，将模板id绑定到流使用。
        # <br>截图相关文档：[直播截图](/document/product/267/32737)。

        # @param request: Request instance for CreateLiveSnapshotTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveSnapshotTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveSnapshotTemplateResponse`
        def CreateLiveSnapshotTemplate(request)
          body = send_request('CreateLiveSnapshotTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveSnapshotTemplateResponse.new
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

        # 创建转码规则，需要先调用[CreateLiveTranscodeTemplate](/document/product/267/32646)接口创建转码模板，将返回的模板id绑定到流使用。
        # <br>转码相关文档：[直播转封装及转码](/document/product/267/32736)。

        # @param request: Request instance for CreateLiveTranscodeRule.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveTranscodeRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveTranscodeRuleResponse`
        def CreateLiveTranscodeRule(request)
          body = send_request('CreateLiveTranscodeRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveTranscodeRuleResponse.new
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

        # 创建转码模板，成功返回模板id后，需要调用[CreateLiveTranscodeRule](/document/product/267/32647)接口，将返回的模板id绑定到流使用。
        # <br>转码相关文档：[直播转封装及转码](/document/product/267/32736)。

        # @param request: Request instance for CreateLiveTranscodeTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveTranscodeTemplateResponse`
        def CreateLiveTranscodeTemplate(request)
          body = send_request('CreateLiveTranscodeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveTranscodeTemplateResponse.new
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

        # 创建水印规则，需要先调用[AddLiveWatermark](/document/product/267/30154)接口添加水印，将返回的水印id绑定到流使用。

        # @param request: Request instance for CreateLiveWatermarkRule.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveWatermarkRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveWatermarkRuleResponse`
        def CreateLiveWatermarkRule(request)
          body = send_request('CreateLiveWatermarkRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveWatermarkRuleResponse.new
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

        # 创建临时拉流转推任务，目前限制添加10条任务。

        # 注意：该接口用于创建临时拉流转推任务，
        # 拉流源地址即 FromUrl 可以是腾讯或非腾讯数据源，
        # 但转推目标地址即 ToUrl 目前限制为已注册的腾讯直播域名。

        # @param request: Request instance for CreatePullStreamConfig.
        # @type request: :class:`Tencentcloud::live::V20180801::CreatePullStreamConfigRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreatePullStreamConfigResponse`
        def CreatePullStreamConfig(request)
          body = send_request('CreatePullStreamConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePullStreamConfigResponse.new
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

        # 创建一个在指定时间启动、结束的录制任务，并使用指定录制模板ID对应的配置进行录制。
        # - 使用前提
        # 1. 录制文件存放于点播平台，所以用户如需使用录制功能，需首先自行开通点播服务。
        # 2. 录制文件存放后相关费用（含存储以及下行播放流量）按照点播平台计费方式收取，具体请参考 对应文档。
        # - 注意事项
        # 1. 断流会结束当前录制并生成录制文件。在结束时间到达之前任务仍然有效，期间只要正常推流都会正常录制，与是否多次推、断流无关。
        # 2. 使用上避免创建时间段相互重叠的录制任务。若同一条流当前存在多个时段重叠的任务，为避免重复录制系统将启动最多3个录制任务。
        # 3. 创建的录制任务记录在平台侧只保留3个月。
        # 4. 当前录制任务管理API（CreateRecordTask/StopRecordTask/DeleteRecordTask）与旧API（CreateLiveRecord/StopLiveRecord/DeleteLiveRecord）不兼容，两套接口不能混用。

        # @param request: Request instance for CreateRecordTask.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateRecordTaskRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateRecordTaskResponse`
        def CreateRecordTask(request)
          body = send_request('CreateRecordTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRecordTaskResponse.new
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

        # 删除回调规则。

        # @param request: Request instance for DeleteLiveCallbackRule.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveCallbackRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveCallbackRuleResponse`
        def DeleteLiveCallbackRule(request)
          body = send_request('DeleteLiveCallbackRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveCallbackRuleResponse.new
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

        # 删除回调模板。

        # @param request: Request instance for DeleteLiveCallbackTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveCallbackTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveCallbackTemplateResponse`
        def DeleteLiveCallbackTemplate(request)
          body = send_request('DeleteLiveCallbackTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveCallbackTemplateResponse.new
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

        # 删除域名对应的证书

        # @param request: Request instance for DeleteLiveCert.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveCertRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveCertResponse`
        def DeleteLiveCert(request)
          body = send_request('DeleteLiveCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveCertResponse.new
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

        # 删除已添加的直播域名

        # @param request: Request instance for DeleteLiveDomain.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveDomainRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveDomainResponse`
        def DeleteLiveDomain(request)
          body = send_request('DeleteLiveDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveDomainResponse.new
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

        # 注：DeleteLiveRecord 接口仅用于删除录制任务记录，不具备停止录制的功能，也不能删除正在进行中的录制。如果需要停止录制任务，请使用终止录制[StopLiveRecord](/document/product/267/30146) 接口。

        # @param request: Request instance for DeleteLiveRecord.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveRecordRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveRecordResponse`
        def DeleteLiveRecord(request)
          body = send_request('DeleteLiveRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveRecordResponse.new
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

        # 删除录制规则。

        # @param request: Request instance for DeleteLiveRecordRule.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveRecordRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveRecordRuleResponse`
        def DeleteLiveRecordRule(request)
          body = send_request('DeleteLiveRecordRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveRecordRuleResponse.new
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

        # 删除录制模板。

        # @param request: Request instance for DeleteLiveRecordTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveRecordTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveRecordTemplateResponse`
        def DeleteLiveRecordTemplate(request)
          body = send_request('DeleteLiveRecordTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveRecordTemplateResponse.new
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

        # 删除截图规则。

        # @param request: Request instance for DeleteLiveSnapshotRule.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveSnapshotRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveSnapshotRuleResponse`
        def DeleteLiveSnapshotRule(request)
          body = send_request('DeleteLiveSnapshotRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveSnapshotRuleResponse.new
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

        # 删除截图模板

        # @param request: Request instance for DeleteLiveSnapshotTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveSnapshotTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveSnapshotTemplateResponse`
        def DeleteLiveSnapshotTemplate(request)
          body = send_request('DeleteLiveSnapshotTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveSnapshotTemplateResponse.new
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

        # 删除转码规则。
        # DomainName+AppName+StreamName+TemplateId唯一标识单个转码规则，如需删除需要强匹配。其中TemplateId必填，其余参数为空时也需要传空字符串进行强匹配。

        # @param request: Request instance for DeleteLiveTranscodeRule.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveTranscodeRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveTranscodeRuleResponse`
        def DeleteLiveTranscodeRule(request)
          body = send_request('DeleteLiveTranscodeRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveTranscodeRuleResponse.new
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

        # 删除转码模板。

        # @param request: Request instance for DeleteLiveTranscodeTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveTranscodeTemplateResponse`
        def DeleteLiveTranscodeTemplate(request)
          body = send_request('DeleteLiveTranscodeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveTranscodeTemplateResponse.new
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

        # 删除水印。

        # @param request: Request instance for DeleteLiveWatermark.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveWatermarkRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveWatermarkResponse`
        def DeleteLiveWatermark(request)
          body = send_request('DeleteLiveWatermark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveWatermarkResponse.new
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

        # 删除水印规则

        # @param request: Request instance for DeleteLiveWatermarkRule.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveWatermarkRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveWatermarkRuleResponse`
        def DeleteLiveWatermarkRule(request)
          body = send_request('DeleteLiveWatermarkRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveWatermarkRuleResponse.new
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

        # 删除直播拉流配置。

        # @param request: Request instance for DeletePullStreamConfig.
        # @type request: :class:`Tencentcloud::live::V20180801::DeletePullStreamConfigRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeletePullStreamConfigResponse`
        def DeletePullStreamConfig(request)
          body = send_request('DeletePullStreamConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePullStreamConfigResponse.new
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

        # 删除录制任务配置。删除操作不影响正在运行当中的任务，仅对删除之后新的推流有效。

        # @param request: Request instance for DeleteRecordTask.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteRecordTaskRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteRecordTaskResponse`
        def DeleteRecordTask(request)
          body = send_request('DeleteRecordTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRecordTaskResponse.new
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

        # 输入某个时间点（1分钟维度），查询该时间点所有流的下行信息。

        # @param request: Request instance for DescribeAllStreamPlayInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeAllStreamPlayInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeAllStreamPlayInfoListResponse`
        def DescribeAllStreamPlayInfoList(request)
          body = send_request('DescribeAllStreamPlayInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllStreamPlayInfoListResponse.new
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

        # 直播计费带宽和流量数据查询。

        # @param request: Request instance for DescribeBillBandwidthAndFluxList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeBillBandwidthAndFluxListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeBillBandwidthAndFluxListResponse`
        def DescribeBillBandwidthAndFluxList(request)
          body = send_request('DescribeBillBandwidthAndFluxList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillBandwidthAndFluxListResponse.new
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

        # 查询并发录制路数，对慢直播和普通直播适用。

        # @param request: Request instance for DescribeConcurrentRecordStreamNum.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeConcurrentRecordStreamNumRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeConcurrentRecordStreamNumResponse`
        def DescribeConcurrentRecordStreamNum(request)
          body = send_request('DescribeConcurrentRecordStreamNum', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConcurrentRecordStreamNumResponse.new
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

        # 查询按省份和运营商分组的下行播放数据。

        # @param request: Request instance for DescribeGroupProIspPlayInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeGroupProIspPlayInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeGroupProIspPlayInfoListResponse`
        def DescribeGroupProIspPlayInfoList(request)
          body = send_request('DescribeGroupProIspPlayInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupProIspPlayInfoListResponse.new
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

        # 查询某段时间内5分钟粒度的各播放http状态码的个数。
        # 备注：数据延迟1小时，如10:00-10:59点的数据12点才能查到。

        # @param request: Request instance for DescribeHttpStatusInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeHttpStatusInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeHttpStatusInfoListResponse`
        def DescribeHttpStatusInfoList(request)
          body = send_request('DescribeHttpStatusInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHttpStatusInfoListResponse.new
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

        # 获取回调规则列表

        # @param request: Request instance for DescribeLiveCallbackRules.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveCallbackRulesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveCallbackRulesResponse`
        def DescribeLiveCallbackRules(request)
          body = send_request('DescribeLiveCallbackRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveCallbackRulesResponse.new
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

        # 获取单个回调模板。

        # @param request: Request instance for DescribeLiveCallbackTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveCallbackTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveCallbackTemplateResponse`
        def DescribeLiveCallbackTemplate(request)
          body = send_request('DescribeLiveCallbackTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveCallbackTemplateResponse.new
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

        # 获取回调模板列表

        # @param request: Request instance for DescribeLiveCallbackTemplates.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveCallbackTemplatesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveCallbackTemplatesResponse`
        def DescribeLiveCallbackTemplates(request)
          body = send_request('DescribeLiveCallbackTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveCallbackTemplatesResponse.new
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

        # 获取证书信息

        # @param request: Request instance for DescribeLiveCert.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveCertRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveCertResponse`
        def DescribeLiveCert(request)
          body = send_request('DescribeLiveCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveCertResponse.new
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

        # 获取证书信息列表

        # @param request: Request instance for DescribeLiveCerts.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveCertsRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveCertsResponse`
        def DescribeLiveCerts(request)
          body = send_request('DescribeLiveCerts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveCertsResponse.new
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

        # 获取直播延播列表。

        # @param request: Request instance for DescribeLiveDelayInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveDelayInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveDelayInfoListResponse`
        def DescribeLiveDelayInfoList(request)
          body = send_request('DescribeLiveDelayInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveDelayInfoListResponse.new
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

        # 查询直播域名信息。

        # @param request: Request instance for DescribeLiveDomain.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainResponse`
        def DescribeLiveDomain(request)
          body = send_request('DescribeLiveDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveDomainResponse.new
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

        # 获取域名证书信息。

        # @param request: Request instance for DescribeLiveDomainCert.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainCertRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainCertResponse`
        def DescribeLiveDomainCert(request)
          body = send_request('DescribeLiveDomainCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveDomainCertResponse.new
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

        # 查询实时的域名维度下行播放数据，由于数据处理有耗时，接口默认查询4分钟前的准实时数据。

        # @param request: Request instance for DescribeLiveDomainPlayInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainPlayInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainPlayInfoListResponse`
        def DescribeLiveDomainPlayInfoList(request)
          body = send_request('DescribeLiveDomainPlayInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveDomainPlayInfoListResponse.new
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

        # 根据域名状态、类型等信息查询用户的域名信息。

        # @param request: Request instance for DescribeLiveDomains.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainsRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainsResponse`
        def DescribeLiveDomains(request)
          body = send_request('DescribeLiveDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveDomainsResponse.new
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

        # 获取禁推流列表。

        # @param request: Request instance for DescribeLiveForbidStreamList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveForbidStreamListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveForbidStreamListResponse`
        def DescribeLiveForbidStreamList(request)
          body = send_request('DescribeLiveForbidStreamList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveForbidStreamListResponse.new
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

        # 查询用户套餐包总量、使用量、剩余量、包状态、购买时间和过期时间等。

        # @param request: Request instance for DescribeLivePackageInfo.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLivePackageInfoRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLivePackageInfoResponse`
        def DescribeLivePackageInfo(request)
          body = send_request('DescribeLivePackageInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLivePackageInfoResponse.new
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

        # 查询播放鉴权key。

        # @param request: Request instance for DescribeLivePlayAuthKey.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLivePlayAuthKeyRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLivePlayAuthKeyResponse`
        def DescribeLivePlayAuthKey(request)
          body = send_request('DescribeLivePlayAuthKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLivePlayAuthKeyResponse.new
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

        # 查询直播推流鉴权key

        # @param request: Request instance for DescribeLivePushAuthKey.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLivePushAuthKeyRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLivePushAuthKeyResponse`
        def DescribeLivePushAuthKey(request)
          body = send_request('DescribeLivePushAuthKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLivePushAuthKeyResponse.new
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

        # 获取录制规则列表

        # @param request: Request instance for DescribeLiveRecordRules.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveRecordRulesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveRecordRulesResponse`
        def DescribeLiveRecordRules(request)
          body = send_request('DescribeLiveRecordRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveRecordRulesResponse.new
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

        # 获取单个录制模板。

        # @param request: Request instance for DescribeLiveRecordTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveRecordTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveRecordTemplateResponse`
        def DescribeLiveRecordTemplate(request)
          body = send_request('DescribeLiveRecordTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveRecordTemplateResponse.new
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

        # 获取录制模板列表。

        # @param request: Request instance for DescribeLiveRecordTemplates.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveRecordTemplatesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveRecordTemplatesResponse`
        def DescribeLiveRecordTemplates(request)
          body = send_request('DescribeLiveRecordTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveRecordTemplatesResponse.new
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

        # 获取截图规则列表

        # @param request: Request instance for DescribeLiveSnapshotRules.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveSnapshotRulesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveSnapshotRulesResponse`
        def DescribeLiveSnapshotRules(request)
          body = send_request('DescribeLiveSnapshotRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveSnapshotRulesResponse.new
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

        # 获取单个截图模板。

        # @param request: Request instance for DescribeLiveSnapshotTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveSnapshotTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveSnapshotTemplateResponse`
        def DescribeLiveSnapshotTemplate(request)
          body = send_request('DescribeLiveSnapshotTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveSnapshotTemplateResponse.new
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

        # 获取截图模板列表。

        # @param request: Request instance for DescribeLiveSnapshotTemplates.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveSnapshotTemplatesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveSnapshotTemplatesResponse`
        def DescribeLiveSnapshotTemplates(request)
          body = send_request('DescribeLiveSnapshotTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveSnapshotTemplatesResponse.new
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

        # 用于查询推断流事件。<br>

        # 注意：该接口可通过使用IsFilter进行过滤，返回推流历史记录。

        # @param request: Request instance for DescribeLiveStreamEventList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamEventListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamEventListResponse`
        def DescribeLiveStreamEventList(request)
          body = send_request('DescribeLiveStreamEventList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveStreamEventListResponse.new
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

        # 返回正在直播中的流列表。适用于推流成功后查询在线流信息。

        # @param request: Request instance for DescribeLiveStreamOnlineList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamOnlineListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamOnlineListResponse`
        def DescribeLiveStreamOnlineList(request)
          body = send_request('DescribeLiveStreamOnlineList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveStreamOnlineListResponse.new
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

        # 返回已经推过流的流列表。<br>
        # 注意：分页最多支持查询1万条记录，可通过调整查询时间范围来获取更多数据。

        # @param request: Request instance for DescribeLiveStreamPublishedList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamPublishedListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamPublishedListResponse`
        def DescribeLiveStreamPublishedList(request)
          body = send_request('DescribeLiveStreamPublishedList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveStreamPublishedListResponse.new
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

        # 查询所有实时流的推流信息，包括客户端IP，服务端IP，帧率，码率，域名，开始推流时间。

        # @param request: Request instance for DescribeLiveStreamPushInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamPushInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamPushInfoListResponse`
        def DescribeLiveStreamPushInfoList(request)
          body = send_request('DescribeLiveStreamPushInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveStreamPushInfoListResponse.new
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

        # 返回直播中、无推流或者禁播等状态

        # @param request: Request instance for DescribeLiveStreamState.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamStateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamStateResponse`
        def DescribeLiveStreamState(request)
          body = send_request('DescribeLiveStreamState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveStreamStateResponse.new
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

        # 支持查询某天或某段时间的转码详细信息。

        # @param request: Request instance for DescribeLiveTranscodeDetailInfo.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeDetailInfoRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeDetailInfoResponse`
        def DescribeLiveTranscodeDetailInfo(request)
          body = send_request('DescribeLiveTranscodeDetailInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveTranscodeDetailInfoResponse.new
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

        # 获取转码规则列表

        # @param request: Request instance for DescribeLiveTranscodeRules.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeRulesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeRulesResponse`
        def DescribeLiveTranscodeRules(request)
          body = send_request('DescribeLiveTranscodeRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveTranscodeRulesResponse.new
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

        # 获取单个转码模板。

        # @param request: Request instance for DescribeLiveTranscodeTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeTemplateResponse`
        def DescribeLiveTranscodeTemplate(request)
          body = send_request('DescribeLiveTranscodeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveTranscodeTemplateResponse.new
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

        # 获取转码模板列表。

        # @param request: Request instance for DescribeLiveTranscodeTemplates.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeTemplatesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeTemplatesResponse`
        def DescribeLiveTranscodeTemplates(request)
          body = send_request('DescribeLiveTranscodeTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveTranscodeTemplatesResponse.new
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

        # 获取单个水印信息。

        # @param request: Request instance for DescribeLiveWatermark.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveWatermarkRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveWatermarkResponse`
        def DescribeLiveWatermark(request)
          body = send_request('DescribeLiveWatermark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveWatermarkResponse.new
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

        # 获取水印规则列表。

        # @param request: Request instance for DescribeLiveWatermarkRules.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveWatermarkRulesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveWatermarkRulesResponse`
        def DescribeLiveWatermarkRules(request)
          body = send_request('DescribeLiveWatermarkRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveWatermarkRulesResponse.new
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

        # 查询水印列表。

        # @param request: Request instance for DescribeLiveWatermarks.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveWatermarksRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveWatermarksResponse`
        def DescribeLiveWatermarks(request)
          body = send_request('DescribeLiveWatermarks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveWatermarksResponse.new
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

        # 批量获取日志URL。

        # @param request: Request instance for DescribeLogDownloadList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLogDownloadListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLogDownloadListResponse`
        def DescribeLogDownloadList(request)
          body = send_request('DescribeLogDownloadList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogDownloadListResponse.new
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

        # 查询下行播放错误码信息，某段时间内1分钟粒度的各http错误码出现的次数，包括4xx，5xx。


        # @param request: Request instance for DescribePlayErrorCodeDetailInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribePlayErrorCodeDetailInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribePlayErrorCodeDetailInfoListResponse`
        def DescribePlayErrorCodeDetailInfoList(request)
          body = send_request('DescribePlayErrorCodeDetailInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePlayErrorCodeDetailInfoListResponse.new
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

        # 查询下行播放错误码信息。

        # @param request: Request instance for DescribePlayErrorCodeSumInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribePlayErrorCodeSumInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribePlayErrorCodeSumInfoListResponse`
        def DescribePlayErrorCodeSumInfoList(request)
          body = send_request('DescribePlayErrorCodeSumInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePlayErrorCodeSumInfoListResponse.new
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

        # 查询某段时间内每个国家地区每个省份每个运营商的平均每秒流量，总流量，总请求数信息。

        # @param request: Request instance for DescribeProIspPlaySumInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeProIspPlaySumInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeProIspPlaySumInfoListResponse`
        def DescribeProIspPlaySumInfoList(request)
          body = send_request('DescribeProIspPlaySumInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProIspPlaySumInfoListResponse.new
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

        # 查询某省份某运营商下行播放数据，包括带宽，流量，请求数，并发连接数信息。

        # @param request: Request instance for DescribeProvinceIspPlayInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeProvinceIspPlayInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeProvinceIspPlayInfoListResponse`
        def DescribeProvinceIspPlayInfoList(request)
          body = send_request('DescribeProvinceIspPlayInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProvinceIspPlayInfoListResponse.new
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

        # 查询直播拉流配置。

        # @param request: Request instance for DescribePullStreamConfigs.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribePullStreamConfigsRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribePullStreamConfigsResponse`
        def DescribePullStreamConfigs(request)
          body = send_request('DescribePullStreamConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePullStreamConfigsResponse.new
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

        # 接口用来查询直播增值业务--截图的张数

        # @param request: Request instance for DescribeScreenShotSheetNumList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeScreenShotSheetNumListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeScreenShotSheetNumListResponse`
        def DescribeScreenShotSheetNumList(request)
          body = send_request('DescribeScreenShotSheetNumList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScreenShotSheetNumListResponse.new
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

        # 查询天维度每条流的播放数据，包括总流量等。

        # @param request: Request instance for DescribeStreamDayPlayInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeStreamDayPlayInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeStreamDayPlayInfoListResponse`
        def DescribeStreamDayPlayInfoList(request)
          body = send_request('DescribeStreamDayPlayInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamDayPlayInfoListResponse.new
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

        # 查询播放数据，支持按流名称查询详细播放数据，也可按播放域名查询详细总数据，数据延迟4分钟左右。
        # 注意：按AppName查询，需要联系客服同学提单支持。

        # @param request: Request instance for DescribeStreamPlayInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeStreamPlayInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeStreamPlayInfoListResponse`
        def DescribeStreamPlayInfoList(request)
          body = send_request('DescribeStreamPlayInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamPlayInfoListResponse.new
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

        # 查询流id的上行推流质量数据，包括音视频的帧率，码率，流逝时间，编码格式等。

        # @param request: Request instance for DescribeStreamPushInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeStreamPushInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeStreamPushInfoListResponse`
        def DescribeStreamPushInfoList(request)
          body = send_request('DescribeStreamPushInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamPushInfoListResponse.new
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

        # 查询某段时间top n客户端ip汇总信息（暂支持top 1000）

        # @param request: Request instance for DescribeTopClientIpSumInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeTopClientIpSumInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeTopClientIpSumInfoListResponse`
        def DescribeTopClientIpSumInfoList(request)
          body = send_request('DescribeTopClientIpSumInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopClientIpSumInfoListResponse.new
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

        # 查询某时间段top n的域名或流id信息（暂支持top 1000）。

        # @param request: Request instance for DescribeVisitTopSumInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeVisitTopSumInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeVisitTopSumInfoListResponse`
        def DescribeVisitTopSumInfoList(request)
          body = send_request('DescribeVisitTopSumInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVisitTopSumInfoListResponse.new
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

        # 断开推流连接，但可以重新推流。

        # @param request: Request instance for DropLiveStream.
        # @type request: :class:`Tencentcloud::live::V20180801::DropLiveStreamRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DropLiveStreamResponse`
        def DropLiveStream(request)
          body = send_request('DropLiveStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DropLiveStreamResponse.new
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

        # 启用状态为停用的直播域名。

        # @param request: Request instance for EnableLiveDomain.
        # @type request: :class:`Tencentcloud::live::V20180801::EnableLiveDomainRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::EnableLiveDomainResponse`
        def EnableLiveDomain(request)
          body = send_request('EnableLiveDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableLiveDomainResponse.new
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

        # 停止使用某个直播域名。

        # @param request: Request instance for ForbidLiveDomain.
        # @type request: :class:`Tencentcloud::live::V20180801::ForbidLiveDomainRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ForbidLiveDomainResponse`
        def ForbidLiveDomain(request)
          body = send_request('ForbidLiveDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ForbidLiveDomainResponse.new
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

        # 禁止某条流的推送，可以预设某个时刻将流恢复。

        # @param request: Request instance for ForbidLiveStream.
        # @type request: :class:`Tencentcloud::live::V20180801::ForbidLiveStreamRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ForbidLiveStreamResponse`
        def ForbidLiveStream(request)
          body = send_request('ForbidLiveStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ForbidLiveStreamResponse.new
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

        # 修改回调模板。

        # @param request: Request instance for ModifyLiveCallbackTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLiveCallbackTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLiveCallbackTemplateResponse`
        def ModifyLiveCallbackTemplate(request)
          body = send_request('ModifyLiveCallbackTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLiveCallbackTemplateResponse.new
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

        # 修改证书

        # @param request: Request instance for ModifyLiveCert.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLiveCertRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLiveCertResponse`
        def ModifyLiveCert(request)
          body = send_request('ModifyLiveCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLiveCertResponse.new
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

        # 修改域名和证书绑定信息

        # @param request: Request instance for ModifyLiveDomainCert.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLiveDomainCertRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLiveDomainCertResponse`
        def ModifyLiveDomainCert(request)
          body = send_request('ModifyLiveDomainCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLiveDomainCertResponse.new
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

        # 修改播放鉴权key

        # @param request: Request instance for ModifyLivePlayAuthKey.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLivePlayAuthKeyRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLivePlayAuthKeyResponse`
        def ModifyLivePlayAuthKey(request)
          body = send_request('ModifyLivePlayAuthKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLivePlayAuthKeyResponse.new
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

        # 修改播放域名信息。

        # @param request: Request instance for ModifyLivePlayDomain.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLivePlayDomainRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLivePlayDomainResponse`
        def ModifyLivePlayDomain(request)
          body = send_request('ModifyLivePlayDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLivePlayDomainResponse.new
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

        # 修改直播推流鉴权key

        # @param request: Request instance for ModifyLivePushAuthKey.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLivePushAuthKeyRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLivePushAuthKeyResponse`
        def ModifyLivePushAuthKey(request)
          body = send_request('ModifyLivePushAuthKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLivePushAuthKeyResponse.new
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

        # 修改录制模板配置。

        # @param request: Request instance for ModifyLiveRecordTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLiveRecordTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLiveRecordTemplateResponse`
        def ModifyLiveRecordTemplate(request)
          body = send_request('ModifyLiveRecordTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLiveRecordTemplateResponse.new
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

        # 修改截图模板配置。

        # @param request: Request instance for ModifyLiveSnapshotTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLiveSnapshotTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLiveSnapshotTemplateResponse`
        def ModifyLiveSnapshotTemplate(request)
          body = send_request('ModifyLiveSnapshotTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLiveSnapshotTemplateResponse.new
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

        # 修改转码模板配置。

        # @param request: Request instance for ModifyLiveTranscodeTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLiveTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLiveTranscodeTemplateResponse`
        def ModifyLiveTranscodeTemplate(request)
          body = send_request('ModifyLiveTranscodeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLiveTranscodeTemplateResponse.new
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

        # 更新拉流配置。

        # @param request: Request instance for ModifyPullStreamConfig.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyPullStreamConfigRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyPullStreamConfigResponse`
        def ModifyPullStreamConfig(request)
          body = send_request('ModifyPullStreamConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPullStreamConfigResponse.new
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

        # 修改直播拉流配置的状态。

        # @param request: Request instance for ModifyPullStreamStatus.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyPullStreamStatusRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyPullStreamStatusResponse`
        def ModifyPullStreamStatus(request)
          body = send_request('ModifyPullStreamStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPullStreamStatusResponse.new
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

        # 恢复延迟播放设置

        # @param request: Request instance for ResumeDelayLiveStream.
        # @type request: :class:`Tencentcloud::live::V20180801::ResumeDelayLiveStreamRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ResumeDelayLiveStreamResponse`
        def ResumeDelayLiveStream(request)
          body = send_request('ResumeDelayLiveStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeDelayLiveStreamResponse.new
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

        # 恢复某条流的推流。

        # @param request: Request instance for ResumeLiveStream.
        # @type request: :class:`Tencentcloud::live::V20180801::ResumeLiveStreamRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ResumeLiveStreamResponse`
        def ResumeLiveStream(request)
          body = send_request('ResumeLiveStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeLiveStreamResponse.new
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

        # 说明：录制后的文件存放于点播平台。用户如需使用录制功能，需首先自行开通点播账号并确保账号可用。录制文件存放后，相关费用（含存储以及下行播放流量）按照点播平台计费方式收取，请参考对应文档。

        # @param request: Request instance for StopLiveRecord.
        # @type request: :class:`Tencentcloud::live::V20180801::StopLiveRecordRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::StopLiveRecordResponse`
        def StopLiveRecord(request)
          body = send_request('StopLiveRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopLiveRecordResponse.new
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

        # 提前结束录制，并中止运行中的录制任务。任务被成功中止后将不再启动。

        # @param request: Request instance for StopRecordTask.
        # @type request: :class:`Tencentcloud::live::V20180801::StopRecordTaskRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::StopRecordTaskResponse`
        def StopRecordTask(request)
          body = send_request('StopRecordTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopRecordTaskResponse.new
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

        # 解绑域名证书

        # @param request: Request instance for UnBindLiveDomainCert.
        # @type request: :class:`Tencentcloud::live::V20180801::UnBindLiveDomainCertRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::UnBindLiveDomainCertResponse`
        def UnBindLiveDomainCert(request)
          body = send_request('UnBindLiveDomainCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnBindLiveDomainCertResponse.new
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

        # 更新水印。

        # @param request: Request instance for UpdateLiveWatermark.
        # @type request: :class:`Tencentcloud::live::V20180801::UpdateLiveWatermarkRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::UpdateLiveWatermarkResponse`
        def UpdateLiveWatermark(request)
          body = send_request('UpdateLiveWatermark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateLiveWatermarkResponse.new
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