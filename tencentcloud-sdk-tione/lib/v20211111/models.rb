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
  module Tione
    module V20211111
      # 跑批任务详情
      class BatchTaskDetail < TencentCloud::Common::AbstractModel
        # @param BatchTaskId: 跑批任务ID
        # @type BatchTaskId: String
        # @param BatchTaskName: 跑批任务名称
        # @type BatchTaskName: String
        # @param Uin: 主账号uin
        # @type Uin: String
        # @param SubUin: 子账号uin
        # @type SubUin: String
        # @param Region: 地域
        # @type Region: String
        # @param ChargeType: 计费模式
        # @type ChargeType: String
        # @param ResourceGroupId: 预付费专用资源组id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ResourceGroupName: 预付费专用资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param ResourceConfigInfo: 资源配置
        # @type ResourceConfigInfo: :class:`Tencentcloud::Tione.v20211111.models.ResourceConfigInfo`
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param ModelInfo: 服务对应的模型信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelInfo: :class:`Tencentcloud::Tione.v20211111.models.ModelInfo`
        # @param ImageInfo: 自定义镜像信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param CodePackagePath: 代码包
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodePackagePath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param StartCmd: 启动命令
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartCmd: String
        # @param DataConfigs: 输入数据配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataConfigs: Array
        # @param Outputs: 输出数据配置
        # @type Outputs: Array
        # @param LogEnable: 是否上报日志
        # @type LogEnable: Boolean
        # @param LogConfig: 日志配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogConfig: :class:`Tencentcloud::Tione.v20211111.models.LogConfig`
        # @param VpcId: vpc id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param Status: 任务状态
        # @type Status: String
        # @param RuntimeInSeconds: 运行时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeInSeconds: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param StartTime: 任务开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 任务结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param ChargeStatus: 计费状态，eg：BILLING计费中，ARREARS_STOP欠费停止，NOT_BILLING不在计费中
        # @type ChargeStatus: String
        # @param LatestInstanceId: 最近一次实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestInstanceId: String
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param FailureReason: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureReason: String
        # @param BillingInfo: 计费金额信息，eg：2.00元/小时 (for后付费)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingInfo: String

        attr_accessor :BatchTaskId, :BatchTaskName, :Uin, :SubUin, :Region, :ChargeType, :ResourceGroupId, :ResourceGroupName, :ResourceConfigInfo, :Tags, :ModelInfo, :ImageInfo, :CodePackagePath, :StartCmd, :DataConfigs, :Outputs, :LogEnable, :LogConfig, :VpcId, :SubnetId, :Status, :RuntimeInSeconds, :CreateTime, :UpdateTime, :StartTime, :EndTime, :ChargeStatus, :LatestInstanceId, :Remark, :FailureReason, :BillingInfo
        
        def initialize(batchtaskid=nil, batchtaskname=nil, uin=nil, subuin=nil, region=nil, chargetype=nil, resourcegroupid=nil, resourcegroupname=nil, resourceconfiginfo=nil, tags=nil, modelinfo=nil, imageinfo=nil, codepackagepath=nil, startcmd=nil, dataconfigs=nil, outputs=nil, logenable=nil, logconfig=nil, vpcid=nil, subnetid=nil, status=nil, runtimeinseconds=nil, createtime=nil, updatetime=nil, starttime=nil, endtime=nil, chargestatus=nil, latestinstanceid=nil, remark=nil, failurereason=nil, billinginfo=nil)
          @BatchTaskId = batchtaskid
          @BatchTaskName = batchtaskname
          @Uin = uin
          @SubUin = subuin
          @Region = region
          @ChargeType = chargetype
          @ResourceGroupId = resourcegroupid
          @ResourceGroupName = resourcegroupname
          @ResourceConfigInfo = resourceconfiginfo
          @Tags = tags
          @ModelInfo = modelinfo
          @ImageInfo = imageinfo
          @CodePackagePath = codepackagepath
          @StartCmd = startcmd
          @DataConfigs = dataconfigs
          @Outputs = outputs
          @LogEnable = logenable
          @LogConfig = logconfig
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @RuntimeInSeconds = runtimeinseconds
          @CreateTime = createtime
          @UpdateTime = updatetime
          @StartTime = starttime
          @EndTime = endtime
          @ChargeStatus = chargestatus
          @LatestInstanceId = latestinstanceid
          @Remark = remark
          @FailureReason = failurereason
          @BillingInfo = billinginfo
        end

        def deserialize(params)
          @BatchTaskId = params['BatchTaskId']
          @BatchTaskName = params['BatchTaskName']
          @Uin = params['Uin']
          @SubUin = params['SubUin']
          @Region = params['Region']
          @ChargeType = params['ChargeType']
          @ResourceGroupId = params['ResourceGroupId']
          @ResourceGroupName = params['ResourceGroupName']
          unless params['ResourceConfigInfo'].nil?
            @ResourceConfigInfo = ResourceConfigInfo.new
            @ResourceConfigInfo.deserialize(params['ResourceConfigInfo'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['ModelInfo'].nil?
            @ModelInfo = ModelInfo.new
            @ModelInfo.deserialize(params['ModelInfo'])
          end
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          unless params['CodePackagePath'].nil?
            @CodePackagePath = CosPathInfo.new
            @CodePackagePath.deserialize(params['CodePackagePath'])
          end
          @StartCmd = params['StartCmd']
          unless params['DataConfigs'].nil?
            @DataConfigs = []
            params['DataConfigs'].each do |i|
              dataconfig_tmp = DataConfig.new
              dataconfig_tmp.deserialize(i)
              @DataConfigs << dataconfig_tmp
            end
          end
          unless params['Outputs'].nil?
            @Outputs = []
            params['Outputs'].each do |i|
              dataconfig_tmp = DataConfig.new
              dataconfig_tmp.deserialize(i)
              @Outputs << dataconfig_tmp
            end
          end
          @LogEnable = params['LogEnable']
          unless params['LogConfig'].nil?
            @LogConfig = LogConfig.new
            @LogConfig.deserialize(params['LogConfig'])
          end
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @RuntimeInSeconds = params['RuntimeInSeconds']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ChargeStatus = params['ChargeStatus']
          @LatestInstanceId = params['LatestInstanceId']
          @Remark = params['Remark']
          @FailureReason = params['FailureReason']
          @BillingInfo = params['BillingInfo']
        end
      end

      # 批处理任务实例
      class BatchTaskInstance < TencentCloud::Common::AbstractModel
        # @param BatchTaskInstanceId: 任务实例id
        # @type BatchTaskInstanceId: String
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Status: 任务状态
        # @type Status: String
        # @param RuntimeInSeconds: 运行时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeInSeconds: Integer

        attr_accessor :BatchTaskInstanceId, :StartTime, :EndTime, :Status, :RuntimeInSeconds
        
        def initialize(batchtaskinstanceid=nil, starttime=nil, endtime=nil, status=nil, runtimeinseconds=nil)
          @BatchTaskInstanceId = batchtaskinstanceid
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @RuntimeInSeconds = runtimeinseconds
        end

        def deserialize(params)
          @BatchTaskInstanceId = params['BatchTaskInstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @RuntimeInSeconds = params['RuntimeInSeconds']
        end
      end

      # 出参类型
      class BatchTaskSetItem < TencentCloud::Common::AbstractModel
        # @param BatchTaskId: 跑批任务ID
        # @type BatchTaskId: String
        # @param BatchTaskName: 跑批任务名称
        # @type BatchTaskName: String
        # @param ModelInfo: 模型信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelInfo: :class:`Tencentcloud::Tione.v20211111.models.ModelInfo`
        # @param ImageInfo: 镜像信息
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param ChargeType: 计费模式
        # @type ChargeType: String
        # @param ChargeStatus: 计费状态，eg：BILLING计费中，ARREARS_STOP欠费停止，NOT_BILLING不在计费中
        # @type ChargeStatus: String
        # @param ResourceGroupId: 预付费专用资源组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ResourceConfigInfo: 资源配置
        # @type ResourceConfigInfo: :class:`Tencentcloud::Tione.v20211111.models.ResourceConfigInfo`
        # @param Tags: 标签配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Status: 任务状态
        # @type Status: String
        # @param RuntimeInSeconds: 运行时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeInSeconds: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Outputs: 输出
        # @type Outputs: Array
        # @param ResourceGroupName: 预付费专用资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param FailureReason: 失败原因
        # @type FailureReason: String
        # @param BillingInfo: 计费金额信息，eg：2.00元/小时 (for后付费)
        # @type BillingInfo: String

        attr_accessor :BatchTaskId, :BatchTaskName, :ModelInfo, :ImageInfo, :ChargeType, :ChargeStatus, :ResourceGroupId, :ResourceConfigInfo, :Tags, :Status, :RuntimeInSeconds, :CreateTime, :StartTime, :EndTime, :UpdateTime, :Outputs, :ResourceGroupName, :FailureReason, :BillingInfo
        
        def initialize(batchtaskid=nil, batchtaskname=nil, modelinfo=nil, imageinfo=nil, chargetype=nil, chargestatus=nil, resourcegroupid=nil, resourceconfiginfo=nil, tags=nil, status=nil, runtimeinseconds=nil, createtime=nil, starttime=nil, endtime=nil, updatetime=nil, outputs=nil, resourcegroupname=nil, failurereason=nil, billinginfo=nil)
          @BatchTaskId = batchtaskid
          @BatchTaskName = batchtaskname
          @ModelInfo = modelinfo
          @ImageInfo = imageinfo
          @ChargeType = chargetype
          @ChargeStatus = chargestatus
          @ResourceGroupId = resourcegroupid
          @ResourceConfigInfo = resourceconfiginfo
          @Tags = tags
          @Status = status
          @RuntimeInSeconds = runtimeinseconds
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
          @UpdateTime = updatetime
          @Outputs = outputs
          @ResourceGroupName = resourcegroupname
          @FailureReason = failurereason
          @BillingInfo = billinginfo
        end

        def deserialize(params)
          @BatchTaskId = params['BatchTaskId']
          @BatchTaskName = params['BatchTaskName']
          unless params['ModelInfo'].nil?
            @ModelInfo = ModelInfo.new
            @ModelInfo.deserialize(params['ModelInfo'])
          end
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          @ChargeType = params['ChargeType']
          @ChargeStatus = params['ChargeStatus']
          @ResourceGroupId = params['ResourceGroupId']
          unless params['ResourceConfigInfo'].nil?
            @ResourceConfigInfo = ResourceConfigInfo.new
            @ResourceConfigInfo.deserialize(params['ResourceConfigInfo'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Status = params['Status']
          @RuntimeInSeconds = params['RuntimeInSeconds']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @UpdateTime = params['UpdateTime']
          unless params['Outputs'].nil?
            @Outputs = []
            params['Outputs'].each do |i|
              dataconfig_tmp = DataConfig.new
              dataconfig_tmp.deserialize(i)
              @Outputs << dataconfig_tmp
            end
          end
          @ResourceGroupName = params['ResourceGroupName']
          @FailureReason = params['FailureReason']
          @BillingInfo = params['BillingInfo']
        end
      end

      # CFS存储的配置
      class CFSConfig < TencentCloud::Common::AbstractModel
        # @param Id: cfs的实例的ID
        # @type Id: String
        # @param Path: 存储的路径
        # @type Path: String

        attr_accessor :Id, :Path
        
        def initialize(id=nil, path=nil)
          @Id = id
          @Path = path
        end

        def deserialize(params)
          @Id = params['Id']
          @Path = params['Path']
        end
      end

      # cos的路径信息
      class CosPathInfo < TencentCloud::Common::AbstractModel
        # @param Bucket: 存储桶
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bucket: String
        # @param Region: 所在地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Paths: 路径列表，目前只支持单个
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Paths: Array

        attr_accessor :Bucket, :Region, :Paths
        
        def initialize(bucket=nil, region=nil, paths=nil)
          @Bucket = bucket
          @Region = region
          @Paths = paths
        end

        def deserialize(params)
          @Bucket = params['Bucket']
          @Region = params['Region']
          @Paths = params['Paths']
        end
      end

      # CreateBatchTask请求参数结构体
      class CreateBatchTaskRequest < TencentCloud::Common::AbstractModel
        # @param BatchTaskName: 跑批任务名称，不超过60个字符，仅支持中英文、数字、下划线"_"、短横"-"，只能以中英文、数字开头
        # @type BatchTaskName: String
        # @param ChargeType: 计费模式，eg：PREPAID预付费，即包年包月；POSTPAID_BY_HOUR按小时后付费
        # @type ChargeType: String
        # @param ResourceConfigInfo: 资源配置
        # @type ResourceConfigInfo: :class:`Tencentcloud::Tione.v20211111.models.ResourceConfigInfo`
        # @param Outputs: 结果输出
        # @type Outputs: Array
        # @param LogEnable: 是否上报日志
        # @type LogEnable: Boolean
        # @param JobType: 工作类型 1:单次 2:周期
        # @type JobType: Integer
        # @param CronInfo: 任务周期描述
        # @type CronInfo: :class:`Tencentcloud::Tione.v20211111.models.CronInfo`
        # @param ResourceGroupId: 预付费专用资源组
        # @type ResourceGroupId: String
        # @param Tags: 标签配置
        # @type Tags: Array
        # @param ModelInfo: 服务对应的模型信息，有模型文件时需要填写
        # @type ModelInfo: :class:`Tencentcloud::Tione.v20211111.models.ModelInfo`
        # @param ImageInfo: 自定义镜像信息
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param CodePackage: 代码包
        # @type CodePackage: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param StartCmd: 启动命令
        # @type StartCmd: String
        # @param DataConfigs: 数据配置
        # @type DataConfigs: Array
        # @param LogConfig: 日志配置
        # @type LogConfig: :class:`Tencentcloud::Tione.v20211111.models.LogConfig`
        # @param VpcId: VPC Id
        # @type VpcId: String
        # @param SubnetId: 子网Id
        # @type SubnetId: String
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :BatchTaskName, :ChargeType, :ResourceConfigInfo, :Outputs, :LogEnable, :JobType, :CronInfo, :ResourceGroupId, :Tags, :ModelInfo, :ImageInfo, :CodePackage, :StartCmd, :DataConfigs, :LogConfig, :VpcId, :SubnetId, :Remark
        
        def initialize(batchtaskname=nil, chargetype=nil, resourceconfiginfo=nil, outputs=nil, logenable=nil, jobtype=nil, croninfo=nil, resourcegroupid=nil, tags=nil, modelinfo=nil, imageinfo=nil, codepackage=nil, startcmd=nil, dataconfigs=nil, logconfig=nil, vpcid=nil, subnetid=nil, remark=nil)
          @BatchTaskName = batchtaskname
          @ChargeType = chargetype
          @ResourceConfigInfo = resourceconfiginfo
          @Outputs = outputs
          @LogEnable = logenable
          @JobType = jobtype
          @CronInfo = croninfo
          @ResourceGroupId = resourcegroupid
          @Tags = tags
          @ModelInfo = modelinfo
          @ImageInfo = imageinfo
          @CodePackage = codepackage
          @StartCmd = startcmd
          @DataConfigs = dataconfigs
          @LogConfig = logconfig
          @VpcId = vpcid
          @SubnetId = subnetid
          @Remark = remark
        end

        def deserialize(params)
          @BatchTaskName = params['BatchTaskName']
          @ChargeType = params['ChargeType']
          unless params['ResourceConfigInfo'].nil?
            @ResourceConfigInfo = ResourceConfigInfo.new
            @ResourceConfigInfo.deserialize(params['ResourceConfigInfo'])
          end
          unless params['Outputs'].nil?
            @Outputs = []
            params['Outputs'].each do |i|
              dataconfig_tmp = DataConfig.new
              dataconfig_tmp.deserialize(i)
              @Outputs << dataconfig_tmp
            end
          end
          @LogEnable = params['LogEnable']
          @JobType = params['JobType']
          unless params['CronInfo'].nil?
            @CronInfo = CronInfo.new
            @CronInfo.deserialize(params['CronInfo'])
          end
          @ResourceGroupId = params['ResourceGroupId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['ModelInfo'].nil?
            @ModelInfo = ModelInfo.new
            @ModelInfo.deserialize(params['ModelInfo'])
          end
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          unless params['CodePackage'].nil?
            @CodePackage = CosPathInfo.new
            @CodePackage.deserialize(params['CodePackage'])
          end
          @StartCmd = params['StartCmd']
          unless params['DataConfigs'].nil?
            @DataConfigs = []
            params['DataConfigs'].each do |i|
              dataconfig_tmp = DataConfig.new
              dataconfig_tmp.deserialize(i)
              @DataConfigs << dataconfig_tmp
            end
          end
          unless params['LogConfig'].nil?
            @LogConfig = LogConfig.new
            @LogConfig.deserialize(params['LogConfig'])
          end
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Remark = params['Remark']
        end
      end

      # CreateBatchTask返回参数结构体
      class CreateBatchTaskResponse < TencentCloud::Common::AbstractModel
        # @param BatchTaskId: 跑批任务ID
        # @type BatchTaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchTaskId, :RequestId
        
        def initialize(batchtaskid=nil, requestid=nil)
          @BatchTaskId = batchtaskid
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchTaskId = params['BatchTaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDataset请求参数结构体
      class CreateDatasetRequest < TencentCloud::Common::AbstractModel
        # @param DatasetName: 数据集名称，不超过60个字符，仅支持中英文、数字、下划线"_"、短横"-"，只能以中英文、数字开头
        # @type DatasetName: String
        # @param DatasetType: 数据集类型:
        # TYPE_DATASET_TEXT，文本
        # TYPE_DATASET_IMAGE，图片
        # TYPE_DATASET_TABLE，表格
        # TYPE_DATASET_OTHER，其他
        # @type DatasetType: String
        # @param StorageDataPath: 数据源cos路径
        # @type StorageDataPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param StorageLabelPath: 数据集标签cos存储路径
        # @type StorageLabelPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param DatasetTags: 数据集标签
        # @type DatasetTags: Array
        # @param AnnotationStatus: 数据集标注状态:
        # STATUS_NON_ANNOTATED，未标注
        # STATUS_ANNOTATED，已标注
        # @type AnnotationStatus: String
        # @param AnnotationType: 标注类型:
        # ANNOTATION_TYPE_CLASSIFICATION，图片分类
        # ANNOTATION_TYPE_DETECTION，目标检测
        # ANNOTATION_TYPE_SEGMENTATION，图片分割
        # ANNOTATION_TYPE_TRACKING，目标跟踪
        # @type AnnotationType: String
        # @param AnnotationFormat: 标注格式:
        # ANNOTATION_FORMAT_TI，TI平台格式
        # ANNOTATION_FORMAT_PASCAL，Pascal Voc
        # ANNOTATION_FORMAT_COCO，COCO
        # ANNOTATION_FORMAT_FILE，文件目录结构
        # @type AnnotationFormat: String
        # @param SchemaInfos: 表头信息
        # @type SchemaInfos: Array
        # @param IsSchemaExisted: 数据是否存在表头
        # @type IsSchemaExisted: Boolean
        # @param ContentType: 导入文件粒度，按行或者按文件
        # @type ContentType: String

        attr_accessor :DatasetName, :DatasetType, :StorageDataPath, :StorageLabelPath, :DatasetTags, :AnnotationStatus, :AnnotationType, :AnnotationFormat, :SchemaInfos, :IsSchemaExisted, :ContentType
        
        def initialize(datasetname=nil, datasettype=nil, storagedatapath=nil, storagelabelpath=nil, datasettags=nil, annotationstatus=nil, annotationtype=nil, annotationformat=nil, schemainfos=nil, isschemaexisted=nil, contenttype=nil)
          @DatasetName = datasetname
          @DatasetType = datasettype
          @StorageDataPath = storagedatapath
          @StorageLabelPath = storagelabelpath
          @DatasetTags = datasettags
          @AnnotationStatus = annotationstatus
          @AnnotationType = annotationtype
          @AnnotationFormat = annotationformat
          @SchemaInfos = schemainfos
          @IsSchemaExisted = isschemaexisted
          @ContentType = contenttype
        end

        def deserialize(params)
          @DatasetName = params['DatasetName']
          @DatasetType = params['DatasetType']
          unless params['StorageDataPath'].nil?
            @StorageDataPath = CosPathInfo.new
            @StorageDataPath.deserialize(params['StorageDataPath'])
          end
          unless params['StorageLabelPath'].nil?
            @StorageLabelPath = CosPathInfo.new
            @StorageLabelPath.deserialize(params['StorageLabelPath'])
          end
          unless params['DatasetTags'].nil?
            @DatasetTags = []
            params['DatasetTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @DatasetTags << tag_tmp
            end
          end
          @AnnotationStatus = params['AnnotationStatus']
          @AnnotationType = params['AnnotationType']
          @AnnotationFormat = params['AnnotationFormat']
          unless params['SchemaInfos'].nil?
            @SchemaInfos = []
            params['SchemaInfos'].each do |i|
              schemainfo_tmp = SchemaInfo.new
              schemainfo_tmp.deserialize(i)
              @SchemaInfos << schemainfo_tmp
            end
          end
          @IsSchemaExisted = params['IsSchemaExisted']
          @ContentType = params['ContentType']
        end
      end

      # CreateDataset返回参数结构体
      class CreateDatasetResponse < TencentCloud::Common::AbstractModel
        # @param DatasetId: 数据集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DatasetId, :RequestId
        
        def initialize(datasetid=nil, requestid=nil)
          @DatasetId = datasetid
          @RequestId = requestid
        end

        def deserialize(params)
          @DatasetId = params['DatasetId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTrainingModel请求参数结构体
      class CreateTrainingModelRequest < TencentCloud::Common::AbstractModel
        # @param ImportMethod: 导入方式
        # MODEL：导入新模型
        # VERSION：导入新版本
        # EXIST：导入现有版本
        # @type ImportMethod: String
        # @param TrainingModelCosPath: 模型来源cos目录，以/结尾
        # @type TrainingModelCosPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param ReasoningEnvironmentSource: 推理环境来源（SYSTEM/CUSTOM）
        # @type ReasoningEnvironmentSource: String
        # @param TrainingModelName: 模型名称，不超过60个字符，仅支持中英文、数字、下划线"_"、短横"-"，只能以中英文、数字开头
        # @type TrainingModelName: String
        # @param Tags: 标签配置
        # @type Tags: Array
        # @param TrainingJobName: 训练任务名称
        # @type TrainingJobName: String
        # @param AlgorithmFramework: 算法框架 （PYTORCH/TENSORFLOW/DETECTRON2/PMML/MMDETECTION)
        # @type AlgorithmFramework: String
        # @param ReasoningEnvironment: 推理环境
        # @type ReasoningEnvironment: String
        # @param TrainingModelIndex: 训练指标，最多支持1000字符
        # @type TrainingModelIndex: String
        # @param TrainingModelVersion: 模型版本
        # @type TrainingModelVersion: String
        # @param ReasoningImageInfo: 自定义推理环境
        # @type ReasoningImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param ModelMoveMode: 模型移动方式（CUT/COPY）
        # @type ModelMoveMode: String
        # @param TrainingJobId: 训练任务ID
        # @type TrainingJobId: String
        # @param TrainingModelId: 模型ID（导入新模型不需要，导入新版本需要）
        # @type TrainingModelId: String
        # @param ModelOutputPath: 模型存储cos目录
        # @type ModelOutputPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param TrainingModelSource: 模型来源 （JOB/COS）
        # @type TrainingModelSource: String
        # @param TrainingPreference: 模型偏好
        # @type TrainingPreference: String
        # @param AutoMLTaskId: 自动学习任务ID（已废弃）
        # @type AutoMLTaskId: String
        # @param TrainingJobVersion: 任务版本
        # @type TrainingJobVersion: String
        # @param ModelVersionType: 模型版本类型；
        # 枚举值：NORMAL(通用)  ACCELERATE(加速)
        # 注意:  默认为NORMAL
        # @type ModelVersionType: String
        # @param ModelFormat: 模型格式 （PYTORCH/TORCH_SCRIPT/DETECTRON2/SAVED_MODEL/FROZEN_GRAPH/PMML）
        # @type ModelFormat: String
        # @param ReasoningEnvironmentId: 推理镜像ID
        # @type ReasoningEnvironmentId: String
        # @param AutoClean: 模型自动清理开关(true/false)，当前版本仅支持SAVED_MODEL格式模型
        # @type AutoClean: String
        # @param MaxReservedModels: 模型数量保留上限(默认值为24个，上限为24，下限为1，步长为1)
        # @type MaxReservedModels: Integer
        # @param ModelCleanPeriod: 模型清理周期(默认值为1分钟，上限为1440，下限为1分钟，步长为1)
        # @type ModelCleanPeriod: Integer

        attr_accessor :ImportMethod, :TrainingModelCosPath, :ReasoningEnvironmentSource, :TrainingModelName, :Tags, :TrainingJobName, :AlgorithmFramework, :ReasoningEnvironment, :TrainingModelIndex, :TrainingModelVersion, :ReasoningImageInfo, :ModelMoveMode, :TrainingJobId, :TrainingModelId, :ModelOutputPath, :TrainingModelSource, :TrainingPreference, :AutoMLTaskId, :TrainingJobVersion, :ModelVersionType, :ModelFormat, :ReasoningEnvironmentId, :AutoClean, :MaxReservedModels, :ModelCleanPeriod
        
        def initialize(importmethod=nil, trainingmodelcospath=nil, reasoningenvironmentsource=nil, trainingmodelname=nil, tags=nil, trainingjobname=nil, algorithmframework=nil, reasoningenvironment=nil, trainingmodelindex=nil, trainingmodelversion=nil, reasoningimageinfo=nil, modelmovemode=nil, trainingjobid=nil, trainingmodelid=nil, modeloutputpath=nil, trainingmodelsource=nil, trainingpreference=nil, automltaskid=nil, trainingjobversion=nil, modelversiontype=nil, modelformat=nil, reasoningenvironmentid=nil, autoclean=nil, maxreservedmodels=nil, modelcleanperiod=nil)
          @ImportMethod = importmethod
          @TrainingModelCosPath = trainingmodelcospath
          @ReasoningEnvironmentSource = reasoningenvironmentsource
          @TrainingModelName = trainingmodelname
          @Tags = tags
          @TrainingJobName = trainingjobname
          @AlgorithmFramework = algorithmframework
          @ReasoningEnvironment = reasoningenvironment
          @TrainingModelIndex = trainingmodelindex
          @TrainingModelVersion = trainingmodelversion
          @ReasoningImageInfo = reasoningimageinfo
          @ModelMoveMode = modelmovemode
          @TrainingJobId = trainingjobid
          @TrainingModelId = trainingmodelid
          @ModelOutputPath = modeloutputpath
          @TrainingModelSource = trainingmodelsource
          @TrainingPreference = trainingpreference
          @AutoMLTaskId = automltaskid
          @TrainingJobVersion = trainingjobversion
          @ModelVersionType = modelversiontype
          @ModelFormat = modelformat
          @ReasoningEnvironmentId = reasoningenvironmentid
          @AutoClean = autoclean
          @MaxReservedModels = maxreservedmodels
          @ModelCleanPeriod = modelcleanperiod
        end

        def deserialize(params)
          @ImportMethod = params['ImportMethod']
          unless params['TrainingModelCosPath'].nil?
            @TrainingModelCosPath = CosPathInfo.new
            @TrainingModelCosPath.deserialize(params['TrainingModelCosPath'])
          end
          @ReasoningEnvironmentSource = params['ReasoningEnvironmentSource']
          @TrainingModelName = params['TrainingModelName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @TrainingJobName = params['TrainingJobName']
          @AlgorithmFramework = params['AlgorithmFramework']
          @ReasoningEnvironment = params['ReasoningEnvironment']
          @TrainingModelIndex = params['TrainingModelIndex']
          @TrainingModelVersion = params['TrainingModelVersion']
          unless params['ReasoningImageInfo'].nil?
            @ReasoningImageInfo = ImageInfo.new
            @ReasoningImageInfo.deserialize(params['ReasoningImageInfo'])
          end
          @ModelMoveMode = params['ModelMoveMode']
          @TrainingJobId = params['TrainingJobId']
          @TrainingModelId = params['TrainingModelId']
          unless params['ModelOutputPath'].nil?
            @ModelOutputPath = CosPathInfo.new
            @ModelOutputPath.deserialize(params['ModelOutputPath'])
          end
          @TrainingModelSource = params['TrainingModelSource']
          @TrainingPreference = params['TrainingPreference']
          @AutoMLTaskId = params['AutoMLTaskId']
          @TrainingJobVersion = params['TrainingJobVersion']
          @ModelVersionType = params['ModelVersionType']
          @ModelFormat = params['ModelFormat']
          @ReasoningEnvironmentId = params['ReasoningEnvironmentId']
          @AutoClean = params['AutoClean']
          @MaxReservedModels = params['MaxReservedModels']
          @ModelCleanPeriod = params['ModelCleanPeriod']
        end
      end

      # CreateTrainingModel返回参数结构体
      class CreateTrainingModelResponse < TencentCloud::Common::AbstractModel
        # @param Id: 模型ID，TrainingModel ID
        # @type Id: String
        # @param TrainingModelVersionId: 模型版本ID
        # @type TrainingModelVersionId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :TrainingModelVersionId, :RequestId
        
        def initialize(id=nil, trainingmodelversionid=nil, requestid=nil)
          @Id = id
          @TrainingModelVersionId = trainingmodelversionid
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @TrainingModelVersionId = params['TrainingModelVersionId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTrainingTask请求参数结构体
      class CreateTrainingTaskRequest < TencentCloud::Common::AbstractModel
        # @param Name: 训练任务名称，不超过60个字符，仅支持中英文、数字、下划线"_"、短横"-"，只能以中英文、数字开头
        # @type Name: String
        # @param TrainingMode: 训练模式，通过DescribeTrainingFrameworks接口查询，eg：PS_WORKER、DDP、MPI、HOROVOD
        # @type TrainingMode: String
        # @param ChargeType: 计费模式，eg：PREPAID预付费，即包年包月；POSTPAID_BY_HOUR按小时后付费
        # @type ChargeType: String
        # @param ResourceConfigInfos: 资源配置，需填写对应算力规格ID和节点数量，算力规格ID查询接口为DescribeBillingSpecsPrice，eg：[{"Role":"WORKER", "InstanceType": "TI.S.MEDIUM.POST", "InstanceNum": 1}]
        # @type ResourceConfigInfos: Array
        # @param CodePackagePath: COS代码包路径
        # @type CodePackagePath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param Output: COS训练输出路径
        # @type Output: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param LogEnable: 是否上报日志
        # @type LogEnable: Boolean
        # @param FrameworkName: 训练框架名称，通过DescribeTrainingFrameworks接口查询，eg：SPARK、PYSPARK、TENSORFLOW、PYTORCH
        # @type FrameworkName: String
        # @param FrameworkVersion: 训练框架版本，通过DescribeTrainingFrameworks接口查询，eg：tf1.15-py3.7-cpu、torch1.9-py3.8-cuda11.1-gpu
        # @type FrameworkVersion: String
        # @param ResourceGroupId: 预付费专用资源组ID，通过DescribeBillingResourceGroups接口查询
        # @type ResourceGroupId: String
        # @param Tags: 标签配置
        # @type Tags: Array
        # @param ImageInfo: 自定义镜像信息
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param StartCmdInfo: 启动命令信息，默认为sh start.sh
        # @type StartCmdInfo: :class:`Tencentcloud::Tione.v20211111.models.StartCmdInfo`
        # @param DataSource: 数据来源，eg：DATASET、COS、CFS、HDFS
        # @type DataSource: String
        # @param DataConfigs: 数据配置
        # @type DataConfigs: Array
        # @param VpcId: VPC Id
        # @type VpcId: String
        # @param SubnetId: 子网Id
        # @type SubnetId: String
        # @param LogConfig: CLS日志配置
        # @type LogConfig: :class:`Tencentcloud::Tione.v20211111.models.LogConfig`
        # @param TuningParameters: 调优参数
        # @type TuningParameters: String
        # @param Remark: 备注，最多500个字
        # @type Remark: String

        attr_accessor :Name, :TrainingMode, :ChargeType, :ResourceConfigInfos, :CodePackagePath, :Output, :LogEnable, :FrameworkName, :FrameworkVersion, :ResourceGroupId, :Tags, :ImageInfo, :StartCmdInfo, :DataSource, :DataConfigs, :VpcId, :SubnetId, :LogConfig, :TuningParameters, :Remark
        
        def initialize(name=nil, trainingmode=nil, chargetype=nil, resourceconfiginfos=nil, codepackagepath=nil, output=nil, logenable=nil, frameworkname=nil, frameworkversion=nil, resourcegroupid=nil, tags=nil, imageinfo=nil, startcmdinfo=nil, datasource=nil, dataconfigs=nil, vpcid=nil, subnetid=nil, logconfig=nil, tuningparameters=nil, remark=nil)
          @Name = name
          @TrainingMode = trainingmode
          @ChargeType = chargetype
          @ResourceConfigInfos = resourceconfiginfos
          @CodePackagePath = codepackagepath
          @Output = output
          @LogEnable = logenable
          @FrameworkName = frameworkname
          @FrameworkVersion = frameworkversion
          @ResourceGroupId = resourcegroupid
          @Tags = tags
          @ImageInfo = imageinfo
          @StartCmdInfo = startcmdinfo
          @DataSource = datasource
          @DataConfigs = dataconfigs
          @VpcId = vpcid
          @SubnetId = subnetid
          @LogConfig = logconfig
          @TuningParameters = tuningparameters
          @Remark = remark
        end

        def deserialize(params)
          @Name = params['Name']
          @TrainingMode = params['TrainingMode']
          @ChargeType = params['ChargeType']
          unless params['ResourceConfigInfos'].nil?
            @ResourceConfigInfos = []
            params['ResourceConfigInfos'].each do |i|
              resourceconfiginfo_tmp = ResourceConfigInfo.new
              resourceconfiginfo_tmp.deserialize(i)
              @ResourceConfigInfos << resourceconfiginfo_tmp
            end
          end
          unless params['CodePackagePath'].nil?
            @CodePackagePath = CosPathInfo.new
            @CodePackagePath.deserialize(params['CodePackagePath'])
          end
          unless params['Output'].nil?
            @Output = CosPathInfo.new
            @Output.deserialize(params['Output'])
          end
          @LogEnable = params['LogEnable']
          @FrameworkName = params['FrameworkName']
          @FrameworkVersion = params['FrameworkVersion']
          @ResourceGroupId = params['ResourceGroupId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          unless params['StartCmdInfo'].nil?
            @StartCmdInfo = StartCmdInfo.new
            @StartCmdInfo.deserialize(params['StartCmdInfo'])
          end
          @DataSource = params['DataSource']
          unless params['DataConfigs'].nil?
            @DataConfigs = []
            params['DataConfigs'].each do |i|
              dataconfig_tmp = DataConfig.new
              dataconfig_tmp.deserialize(i)
              @DataConfigs << dataconfig_tmp
            end
          end
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          unless params['LogConfig'].nil?
            @LogConfig = LogConfig.new
            @LogConfig.deserialize(params['LogConfig'])
          end
          @TuningParameters = params['TuningParameters']
          @Remark = params['Remark']
        end
      end

      # CreateTrainingTask返回参数结构体
      class CreateTrainingTaskResponse < TencentCloud::Common::AbstractModel
        # @param Id: 训练任务ID
        # @type Id: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId
        
        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

      # 跑批任务周期描述
      class CronInfo < TencentCloud::Common::AbstractModel
        # @param CronConfig: cron配置
        # @type CronConfig: String
        # @param StartTime: 周期开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 周期结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :CronConfig, :StartTime, :EndTime
        
        def initialize(cronconfig=nil, starttime=nil, endtime=nil)
          @CronConfig = cronconfig
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @CronConfig = params['CronConfig']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 自定义指标
      class CustomTrainingData < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricName: String
        # @param Metrics: 指标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metrics: Array

        attr_accessor :MetricName, :Metrics
        
        def initialize(metricname=nil, metrics=nil)
          @MetricName = metricname
          @Metrics = metrics
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              customtrainingmetric_tmp = CustomTrainingMetric.new
              customtrainingmetric_tmp.deserialize(i)
              @Metrics << customtrainingmetric_tmp
            end
          end
        end
      end

      # 自定义指标
      class CustomTrainingMetric < TencentCloud::Common::AbstractModel
        # @param XType: X轴数据类型: TIMESTAMP; EPOCH; STEP
        # @type XType: String
        # @param Points: 数据点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Points: Array

        attr_accessor :XType, :Points
        
        def initialize(xtype=nil, points=nil)
          @XType = xtype
          @Points = points
        end

        def deserialize(params)
          @XType = params['XType']
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              customtrainingpoint_tmp = CustomTrainingPoint.new
              customtrainingpoint_tmp.deserialize(i)
              @Points << customtrainingpoint_tmp
            end
          end
        end
      end

      # 自定义训练指标数据点
      class CustomTrainingPoint < TencentCloud::Common::AbstractModel
        # @param XValue: X值
        # @type XValue: Float
        # @param YValue: Y值
        # @type YValue: Float

        attr_accessor :XValue, :YValue
        
        def initialize(xvalue=nil, yvalue=nil)
          @XValue = xvalue
          @YValue = yvalue
        end

        def deserialize(params)
          @XValue = params['XValue']
          @YValue = params['YValue']
        end
      end

      # 数据配置
      class DataConfig < TencentCloud::Common::AbstractModel
        # @param MappingPath: 映射路径
        # @type MappingPath: String
        # @param DataSourceType: DATASET、COS、CFS、HDFS、WEDATA_HDFS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSourceType: String
        # @param DataSetSource: 来自数据集的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSetSource: :class:`Tencentcloud::Tione.v20211111.models.DataSetConfig`
        # @param COSSource: 来自cos的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type COSSource: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param CFSSource: 来自CFS的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CFSSource: :class:`Tencentcloud::Tione.v20211111.models.CFSConfig`
        # @param HDFSSource: 来自HDFS的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HDFSSource: :class:`Tencentcloud::Tione.v20211111.models.HDFSConfig`

        attr_accessor :MappingPath, :DataSourceType, :DataSetSource, :COSSource, :CFSSource, :HDFSSource
        
        def initialize(mappingpath=nil, datasourcetype=nil, datasetsource=nil, cossource=nil, cfssource=nil, hdfssource=nil)
          @MappingPath = mappingpath
          @DataSourceType = datasourcetype
          @DataSetSource = datasetsource
          @COSSource = cossource
          @CFSSource = cfssource
          @HDFSSource = hdfssource
        end

        def deserialize(params)
          @MappingPath = params['MappingPath']
          @DataSourceType = params['DataSourceType']
          unless params['DataSetSource'].nil?
            @DataSetSource = DataSetConfig.new
            @DataSetSource.deserialize(params['DataSetSource'])
          end
          unless params['COSSource'].nil?
            @COSSource = CosPathInfo.new
            @COSSource.deserialize(params['COSSource'])
          end
          unless params['CFSSource'].nil?
            @CFSSource = CFSConfig.new
            @CFSSource.deserialize(params['CFSSource'])
          end
          unless params['HDFSSource'].nil?
            @HDFSSource = HDFSConfig.new
            @HDFSSource.deserialize(params['HDFSSource'])
          end
        end
      end

      # 数据点
      class DataPoint < TencentCloud::Common::AbstractModel
        # @param Name: 指标名字
        # @type Name: String
        # @param Value: 值
        # @type Value: Float

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 数据集结构体
      class DataSetConfig < TencentCloud::Common::AbstractModel
        # @param Id: 数据集ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # 数据集组
      class DatasetGroup < TencentCloud::Common::AbstractModel
        # @param DatasetId: 数据集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetId: String
        # @param DatasetName: 数据集名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetName: String
        # @param Creator: 创建者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creator: String
        # @param DatasetVersion: 数据集版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetVersion: String
        # @param DatasetType: 数据集类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetType: String
        # @param DatasetTags: 数据集标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetTags: Array
        # @param DatasetAnnotationTaskName: 数据集标注任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetAnnotationTaskName: String
        # @param DatasetAnnotationTaskId: 数据集标注任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetAnnotationTaskId: String
        # @param Process: 处理进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Process: Integer
        # @param DatasetStatus: 数据集状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetStatus: String
        # @param ErrorMsg: 错误详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param ExternalTaskType: 外部关联TASKType
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalTaskType: String
        # @param DatasetSize: 数据集大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetSize: String
        # @param FileNum: 数据集数据量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileNum: Integer
        # @param StorageDataPath: 数据集源COS路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageDataPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param StorageLabelPath: 数据集标签存储路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageLabelPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param DatasetVersions: 数据集版本聚合详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetVersions: Array
        # @param AnnotationStatus: 数据集标注状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationStatus: String
        # @param AnnotationType: 数据集类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationType: String
        # @param AnnotationFormat: 数据集标注格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationFormat: String
        # @param DatasetScope: 数据集范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetScope: String

        attr_accessor :DatasetId, :DatasetName, :Creator, :DatasetVersion, :DatasetType, :DatasetTags, :DatasetAnnotationTaskName, :DatasetAnnotationTaskId, :Process, :DatasetStatus, :ErrorMsg, :CreateTime, :UpdateTime, :ExternalTaskType, :DatasetSize, :FileNum, :StorageDataPath, :StorageLabelPath, :DatasetVersions, :AnnotationStatus, :AnnotationType, :AnnotationFormat, :DatasetScope
        
        def initialize(datasetid=nil, datasetname=nil, creator=nil, datasetversion=nil, datasettype=nil, datasettags=nil, datasetannotationtaskname=nil, datasetannotationtaskid=nil, process=nil, datasetstatus=nil, errormsg=nil, createtime=nil, updatetime=nil, externaltasktype=nil, datasetsize=nil, filenum=nil, storagedatapath=nil, storagelabelpath=nil, datasetversions=nil, annotationstatus=nil, annotationtype=nil, annotationformat=nil, datasetscope=nil)
          @DatasetId = datasetid
          @DatasetName = datasetname
          @Creator = creator
          @DatasetVersion = datasetversion
          @DatasetType = datasettype
          @DatasetTags = datasettags
          @DatasetAnnotationTaskName = datasetannotationtaskname
          @DatasetAnnotationTaskId = datasetannotationtaskid
          @Process = process
          @DatasetStatus = datasetstatus
          @ErrorMsg = errormsg
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ExternalTaskType = externaltasktype
          @DatasetSize = datasetsize
          @FileNum = filenum
          @StorageDataPath = storagedatapath
          @StorageLabelPath = storagelabelpath
          @DatasetVersions = datasetversions
          @AnnotationStatus = annotationstatus
          @AnnotationType = annotationtype
          @AnnotationFormat = annotationformat
          @DatasetScope = datasetscope
        end

        def deserialize(params)
          @DatasetId = params['DatasetId']
          @DatasetName = params['DatasetName']
          @Creator = params['Creator']
          @DatasetVersion = params['DatasetVersion']
          @DatasetType = params['DatasetType']
          unless params['DatasetTags'].nil?
            @DatasetTags = []
            params['DatasetTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @DatasetTags << tag_tmp
            end
          end
          @DatasetAnnotationTaskName = params['DatasetAnnotationTaskName']
          @DatasetAnnotationTaskId = params['DatasetAnnotationTaskId']
          @Process = params['Process']
          @DatasetStatus = params['DatasetStatus']
          @ErrorMsg = params['ErrorMsg']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ExternalTaskType = params['ExternalTaskType']
          @DatasetSize = params['DatasetSize']
          @FileNum = params['FileNum']
          unless params['StorageDataPath'].nil?
            @StorageDataPath = CosPathInfo.new
            @StorageDataPath.deserialize(params['StorageDataPath'])
          end
          unless params['StorageLabelPath'].nil?
            @StorageLabelPath = CosPathInfo.new
            @StorageLabelPath.deserialize(params['StorageLabelPath'])
          end
          unless params['DatasetVersions'].nil?
            @DatasetVersions = []
            params['DatasetVersions'].each do |i|
              datasetinfo_tmp = DatasetInfo.new
              datasetinfo_tmp.deserialize(i)
              @DatasetVersions << datasetinfo_tmp
            end
          end
          @AnnotationStatus = params['AnnotationStatus']
          @AnnotationType = params['AnnotationType']
          @AnnotationFormat = params['AnnotationFormat']
          @DatasetScope = params['DatasetScope']
        end
      end

      # 数据集详情
      class DatasetInfo < TencentCloud::Common::AbstractModel
        # @param DatasetId: 数据集id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetId: String
        # @param DatasetName: 数据集名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetName: String
        # @param Creator: 数据集创建者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creator: String
        # @param DatasetVersion: 数据集版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetVersion: String
        # @param DatasetType: 数据集类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetType: String
        # @param DatasetTags: 数据集标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetTags: Array
        # @param DatasetAnnotationTaskName: 数据集对应标注任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetAnnotationTaskName: String
        # @param DatasetAnnotationTaskId: 数据集对应标注任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetAnnotationTaskId: String
        # @param Process: 处理进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Process: Integer
        # @param DatasetStatus: 数据集状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetStatus: String
        # @param ErrorMsg: 错误详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param CreateTime: 数据集创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 数据集更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param ExternalTaskType: 外部任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExternalTaskType: String
        # @param DatasetSize: 数据集存储大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetSize: String
        # @param FileNum: 数据集数据数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileNum: Integer
        # @param StorageDataPath: 数据集源cos 路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageDataPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param StorageLabelPath: 数据集输出cos路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageLabelPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param AnnotationStatus: 数据集标注状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationStatus: String
        # @param AnnotationType: 数据集类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationType: String
        # @param AnnotationFormat: 数据集标注格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotationFormat: String
        # @param DatasetScope: 数据集范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetScope: String

        attr_accessor :DatasetId, :DatasetName, :Creator, :DatasetVersion, :DatasetType, :DatasetTags, :DatasetAnnotationTaskName, :DatasetAnnotationTaskId, :Process, :DatasetStatus, :ErrorMsg, :CreateTime, :UpdateTime, :ExternalTaskType, :DatasetSize, :FileNum, :StorageDataPath, :StorageLabelPath, :AnnotationStatus, :AnnotationType, :AnnotationFormat, :DatasetScope
        
        def initialize(datasetid=nil, datasetname=nil, creator=nil, datasetversion=nil, datasettype=nil, datasettags=nil, datasetannotationtaskname=nil, datasetannotationtaskid=nil, process=nil, datasetstatus=nil, errormsg=nil, createtime=nil, updatetime=nil, externaltasktype=nil, datasetsize=nil, filenum=nil, storagedatapath=nil, storagelabelpath=nil, annotationstatus=nil, annotationtype=nil, annotationformat=nil, datasetscope=nil)
          @DatasetId = datasetid
          @DatasetName = datasetname
          @Creator = creator
          @DatasetVersion = datasetversion
          @DatasetType = datasettype
          @DatasetTags = datasettags
          @DatasetAnnotationTaskName = datasetannotationtaskname
          @DatasetAnnotationTaskId = datasetannotationtaskid
          @Process = process
          @DatasetStatus = datasetstatus
          @ErrorMsg = errormsg
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ExternalTaskType = externaltasktype
          @DatasetSize = datasetsize
          @FileNum = filenum
          @StorageDataPath = storagedatapath
          @StorageLabelPath = storagelabelpath
          @AnnotationStatus = annotationstatus
          @AnnotationType = annotationtype
          @AnnotationFormat = annotationformat
          @DatasetScope = datasetscope
        end

        def deserialize(params)
          @DatasetId = params['DatasetId']
          @DatasetName = params['DatasetName']
          @Creator = params['Creator']
          @DatasetVersion = params['DatasetVersion']
          @DatasetType = params['DatasetType']
          unless params['DatasetTags'].nil?
            @DatasetTags = []
            params['DatasetTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @DatasetTags << tag_tmp
            end
          end
          @DatasetAnnotationTaskName = params['DatasetAnnotationTaskName']
          @DatasetAnnotationTaskId = params['DatasetAnnotationTaskId']
          @Process = params['Process']
          @DatasetStatus = params['DatasetStatus']
          @ErrorMsg = params['ErrorMsg']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ExternalTaskType = params['ExternalTaskType']
          @DatasetSize = params['DatasetSize']
          @FileNum = params['FileNum']
          unless params['StorageDataPath'].nil?
            @StorageDataPath = CosPathInfo.new
            @StorageDataPath.deserialize(params['StorageDataPath'])
          end
          unless params['StorageLabelPath'].nil?
            @StorageLabelPath = CosPathInfo.new
            @StorageLabelPath.deserialize(params['StorageLabelPath'])
          end
          @AnnotationStatus = params['AnnotationStatus']
          @AnnotationType = params['AnnotationType']
          @AnnotationFormat = params['AnnotationFormat']
          @DatasetScope = params['DatasetScope']
        end
      end

      # DeleteBatchTask请求参数结构体
      class DeleteBatchTaskRequest < TencentCloud::Common::AbstractModel
        # @param BatchTaskId: 跑批任务ID
        # @type BatchTaskId: String

        attr_accessor :BatchTaskId
        
        def initialize(batchtaskid=nil)
          @BatchTaskId = batchtaskid
        end

        def deserialize(params)
          @BatchTaskId = params['BatchTaskId']
        end
      end

      # DeleteBatchTask返回参数结构体
      class DeleteBatchTaskResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDataset请求参数结构体
      class DeleteDatasetRequest < TencentCloud::Common::AbstractModel
        # @param DatasetId: 数据集id
        # @type DatasetId: String
        # @param DeleteLabelEnable: 是否删除cos标签文件
        # @type DeleteLabelEnable: Boolean

        attr_accessor :DatasetId, :DeleteLabelEnable
        
        def initialize(datasetid=nil, deletelabelenable=nil)
          @DatasetId = datasetid
          @DeleteLabelEnable = deletelabelenable
        end

        def deserialize(params)
          @DatasetId = params['DatasetId']
          @DeleteLabelEnable = params['DeleteLabelEnable']
        end
      end

      # DeleteDataset返回参数结构体
      class DeleteDatasetResponse < TencentCloud::Common::AbstractModel
        # @param DatasetId: 删除的datasetId
        # @type DatasetId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DatasetId, :RequestId
        
        def initialize(datasetid=nil, requestid=nil)
          @DatasetId = datasetid
          @RequestId = requestid
        end

        def deserialize(params)
          @DatasetId = params['DatasetId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteTrainingModel请求参数结构体
      class DeleteTrainingModelRequest < TencentCloud::Common::AbstractModel
        # @param TrainingModelId: 模型ID
        # @type TrainingModelId: String
        # @param EnableDeleteCos: 是否同步清理cos
        # @type EnableDeleteCos: Boolean
        # @param ModelVersionType: 删除模型类型，枚举值：NORMAL 普通，ACCELERATE 加速，不传则删除所有
        # @type ModelVersionType: String

        attr_accessor :TrainingModelId, :EnableDeleteCos, :ModelVersionType
        
        def initialize(trainingmodelid=nil, enabledeletecos=nil, modelversiontype=nil)
          @TrainingModelId = trainingmodelid
          @EnableDeleteCos = enabledeletecos
          @ModelVersionType = modelversiontype
        end

        def deserialize(params)
          @TrainingModelId = params['TrainingModelId']
          @EnableDeleteCos = params['EnableDeleteCos']
          @ModelVersionType = params['ModelVersionType']
        end
      end

      # DeleteTrainingModel返回参数结构体
      class DeleteTrainingModelResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTrainingModelVersion请求参数结构体
      class DeleteTrainingModelVersionRequest < TencentCloud::Common::AbstractModel
        # @param TrainingModelVersionId: 模型版本ID
        # @type TrainingModelVersionId: String
        # @param EnableDeleteCos: 是否同步清理cos
        # @type EnableDeleteCos: Boolean

        attr_accessor :TrainingModelVersionId, :EnableDeleteCos
        
        def initialize(trainingmodelversionid=nil, enabledeletecos=nil)
          @TrainingModelVersionId = trainingmodelversionid
          @EnableDeleteCos = enabledeletecos
        end

        def deserialize(params)
          @TrainingModelVersionId = params['TrainingModelVersionId']
          @EnableDeleteCos = params['EnableDeleteCos']
        end
      end

      # DeleteTrainingModelVersion返回参数结构体
      class DeleteTrainingModelVersionResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTrainingTask请求参数结构体
      class DeleteTrainingTaskRequest < TencentCloud::Common::AbstractModel
        # @param Id: 训练任务ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DeleteTrainingTask返回参数结构体
      class DeleteTrainingTaskResponse < TencentCloud::Common::AbstractModel
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

      # DescribeBatchTaskInstances请求参数结构体
      class DescribeBatchTaskInstancesRequest < TencentCloud::Common::AbstractModel
        # @param BatchTaskId: 跑批任务id
        # @type BatchTaskId: String

        attr_accessor :BatchTaskId
        
        def initialize(batchtaskid=nil)
          @BatchTaskId = batchtaskid
        end

        def deserialize(params)
          @BatchTaskId = params['BatchTaskId']
        end
      end

      # DescribeBatchTaskInstances返回参数结构体
      class DescribeBatchTaskInstancesResponse < TencentCloud::Common::AbstractModel
        # @param BatchInstances: 实例集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchInstances: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchInstances, :RequestId
        
        def initialize(batchinstances=nil, requestid=nil)
          @BatchInstances = batchinstances
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BatchInstances'].nil?
            @BatchInstances = []
            params['BatchInstances'].each do |i|
              batchtaskinstance_tmp = BatchTaskInstance.new
              batchtaskinstance_tmp.deserialize(i)
              @BatchInstances << batchtaskinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBatchTask请求参数结构体
      class DescribeBatchTaskRequest < TencentCloud::Common::AbstractModel
        # @param BatchTaskId: 跑批任务ID
        # @type BatchTaskId: String

        attr_accessor :BatchTaskId
        
        def initialize(batchtaskid=nil)
          @BatchTaskId = batchtaskid
        end

        def deserialize(params)
          @BatchTaskId = params['BatchTaskId']
        end
      end

      # DescribeBatchTask返回参数结构体
      class DescribeBatchTaskResponse < TencentCloud::Common::AbstractModel
        # @param BatchTaskDetail: 跑批任务详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchTaskDetail: :class:`Tencentcloud::Tione.v20211111.models.BatchTaskDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchTaskDetail, :RequestId
        
        def initialize(batchtaskdetail=nil, requestid=nil)
          @BatchTaskDetail = batchtaskdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BatchTaskDetail'].nil?
            @BatchTaskDetail = BatchTaskDetail.new
            @BatchTaskDetail.deserialize(params['BatchTaskDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBatchTasks请求参数结构体
      class DescribeBatchTasksRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤器，eg：[{ "Name": "Id", "Values": ["train-23091792777383936"] }]

        # 取值范围：
        # Name（名称）：task1
        # Id（task ID）：train-23091792777383936
        # Status（状态）：STARTING / RUNNING / STOPPING / STOPPED / FAILED / SUCCEED / SUBMIT_FAILED
        # ChargeType（计费类型）：PREPAID（预付费）/ POSTPAID_BY_HOUR（后付费）
        # CHARGE_STATUS（计费状态）：NOT_BILLING（未开始计费）/ BILLING（计费中）/ ARREARS_STOP（欠费停止）
        # @type Filters: Array
        # @param TagFilters: 标签过滤器，eg：[{ "TagKey": "TagKeyA", "TagValue": ["TagValueA"] }]
        # @type TagFilters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为10，最大为50
        # @type Limit: Integer
        # @param Order: 输出列表的排列顺序。取值范围：ASC（升序排列）/ DESC（降序排列），默认为DESC
        # @type Order: String
        # @param OrderField: 排序的依据字段， 取值范围 "CreateTime" "UpdateTime"
        # @type OrderField: String

        attr_accessor :Filters, :TagFilters, :Offset, :Limit, :Order, :OrderField
        
        def initialize(filters=nil, tagfilters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @Filters = filters
          @TagFilters = tagfilters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeBatchTasks返回参数结构体
      class DescribeBatchTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param BatchTaskSet: 任务集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchTaskSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BatchTaskSet, :RequestId
        
        def initialize(totalcount=nil, batchtaskset=nil, requestid=nil)
          @TotalCount = totalcount
          @BatchTaskSet = batchtaskset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BatchTaskSet'].nil?
            @BatchTaskSet = []
            params['BatchTaskSet'].each do |i|
              batchtasksetitem_tmp = BatchTaskSetItem.new
              batchtasksetitem_tmp.deserialize(i)
              @BatchTaskSet << batchtasksetitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillingResourceGroups请求参数结构体
      class DescribeBillingResourceGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Type: 资源组类型; 枚举值 TRAIN:训练 INFERENCE:推理
        # @type Type: String
        # @param Filters: Filter.Name: 枚举值: ResourceGroupId (资源组id列表)
        #                     ResourceGroupName (资源组名称列表)
        # Filter.Values: 长度为1且Filter.Fuzzy=true时，支持模糊查询; 不为1时，精确查询
        # 每次请求的Filters的上限为5，Filter.Values的上限为100
        # @type Filters: Array
        # @param TagFilters: 标签过滤
        # @type TagFilters: Array
        # @param Offset: 偏移量，默认为0；分页查询起始位置，如：Limit为100，第一页Offset为0，第二页OffSet为100....即每页左边为闭区间
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为30;
        # 注意：小于0则默认为20；大于30则默认为30
        # @type Limit: Integer
        # @param SearchWord: 支持模糊查找资源组id和资源组名
        # @type SearchWord: String
        # @param DontShowInstanceSet: 是否不展示节点列表;
        # true: 不展示，false 展示；
        # 默认为false
        # @type DontShowInstanceSet: Boolean

        attr_accessor :Type, :Filters, :TagFilters, :Offset, :Limit, :SearchWord, :DontShowInstanceSet
        
        def initialize(type=nil, filters=nil, tagfilters=nil, offset=nil, limit=nil, searchword=nil, dontshowinstanceset=nil)
          @Type = type
          @Filters = filters
          @TagFilters = tagfilters
          @Offset = offset
          @Limit = limit
          @SearchWord = searchword
          @DontShowInstanceSet = dontshowinstanceset
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchWord = params['SearchWord']
          @DontShowInstanceSet = params['DontShowInstanceSet']
        end
      end

      # DescribeBillingResourceGroups返回参数结构体
      class DescribeBillingResourceGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 资源组总数； 注意接口是分页拉取的，total是指资源组总数，不是本次返回中ResourceGroupSet数组的大小
        # @type TotalCount: Integer
        # @param ResourceGroupSet: 资源组详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ResourceGroupSet, :RequestId
        
        def initialize(totalcount=nil, resourcegroupset=nil, requestid=nil)
          @TotalCount = totalcount
          @ResourceGroupSet = resourcegroupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ResourceGroupSet'].nil?
            @ResourceGroupSet = []
            params['ResourceGroupSet'].each do |i|
              resourcegroup_tmp = ResourceGroup.new
              resourcegroup_tmp.deserialize(i)
              @ResourceGroupSet << resourcegroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillingSpecsPrice请求参数结构体
      class DescribeBillingSpecsPriceRequest < TencentCloud::Common::AbstractModel
        # @param SpecsParam: 询价参数，支持批量询价
        # @type SpecsParam: Array

        attr_accessor :SpecsParam
        
        def initialize(specsparam=nil)
          @SpecsParam = specsparam
        end

        def deserialize(params)
          unless params['SpecsParam'].nil?
            @SpecsParam = []
            params['SpecsParam'].each do |i|
              specunit_tmp = SpecUnit.new
              specunit_tmp.deserialize(i)
              @SpecsParam << specunit_tmp
            end
          end
        end
      end

      # DescribeBillingSpecsPrice返回参数结构体
      class DescribeBillingSpecsPriceResponse < TencentCloud::Common::AbstractModel
        # @param SpecsPrice: 计费项价格，支持批量返回
        # @type SpecsPrice: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpecsPrice, :RequestId
        
        def initialize(specsprice=nil, requestid=nil)
          @SpecsPrice = specsprice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SpecsPrice'].nil?
            @SpecsPrice = []
            params['SpecsPrice'].each do |i|
              specprice_tmp = SpecPrice.new
              specprice_tmp.deserialize(i)
              @SpecsPrice << specprice_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillingSpecs请求参数结构体
      class DescribeBillingSpecsRequest < TencentCloud::Common::AbstractModel
        # @param TaskType: 枚举值：TRAIN、NOTEBOOK、INFERENCE
        # @type TaskType: String
        # @param ChargeType: 付费模式：POSTPAID_BY_HOUR后付费、PREPAID预付费
        # @type ChargeType: String
        # @param ResourceType: 资源类型：CALC 计算资源、CPU CPU资源、GPU GPU资源、CBS云硬盘
        # @type ResourceType: String

        attr_accessor :TaskType, :ChargeType, :ResourceType
        
        def initialize(tasktype=nil, chargetype=nil, resourcetype=nil)
          @TaskType = tasktype
          @ChargeType = chargetype
          @ResourceType = resourcetype
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @ChargeType = params['ChargeType']
          @ResourceType = params['ResourceType']
        end
      end

      # DescribeBillingSpecs返回参数结构体
      class DescribeBillingSpecsResponse < TencentCloud::Common::AbstractModel
        # @param Specs: 计费项列表
        # @type Specs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Specs, :RequestId
        
        def initialize(specs=nil, requestid=nil)
          @Specs = specs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Specs'].nil?
            @Specs = []
            params['Specs'].each do |i|
              spec_tmp = Spec.new
              spec_tmp.deserialize(i)
              @Specs << spec_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatasetDetailStructured请求参数结构体
      class DescribeDatasetDetailStructuredRequest < TencentCloud::Common::AbstractModel
        # @param DatasetId: 数据集ID
        # @type DatasetId: String
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param Limit: 返回数据条数，默认20，目前最大支持2000条数据
        # @type Limit: Integer

        attr_accessor :DatasetId, :Offset, :Limit
        
        def initialize(datasetid=nil, offset=nil, limit=nil)
          @DatasetId = datasetid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DatasetId = params['DatasetId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDatasetDetailStructured返回参数结构体
      class DescribeDatasetDetailStructuredResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ColumnNames: 表格头信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColumnNames: Array
        # @param RowItems: 表格内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowItems: Array
        # @param RowTexts: 文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowTexts: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ColumnNames, :RowItems, :RowTexts, :RequestId
        
        def initialize(totalcount=nil, columnnames=nil, rowitems=nil, rowtexts=nil, requestid=nil)
          @TotalCount = totalcount
          @ColumnNames = columnnames
          @RowItems = rowitems
          @RowTexts = rowtexts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ColumnNames = params['ColumnNames']
          unless params['RowItems'].nil?
            @RowItems = []
            params['RowItems'].each do |i|
              rowitem_tmp = RowItem.new
              rowitem_tmp.deserialize(i)
              @RowItems << rowitem_tmp
            end
          end
          @RowTexts = params['RowTexts']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatasetDetailUnstructured请求参数结构体
      class DescribeDatasetDetailUnstructuredRequest < TencentCloud::Common::AbstractModel
        # @param DatasetId: 数据集ID
        # @type DatasetId: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回个数，默认20，目前最大支持2000条数据
        # @type Limit: Integer
        # @param LabelList: 标签过滤参数，对应标签值
        # @type LabelList: Array
        # @param AnnotationStatus: 标注状态过滤参数:
        # STATUS_ANNOTATED，已标注
        # STATUS_NON_ANNOTATED，未标注
        # STATUS_ALL，全部
        # 默认为STATUS_ALL
        # @type AnnotationStatus: String
        # @param DatasetIds: 数据集ID列表
        # @type DatasetIds: Array
        # @param TextClassificationLabels: 要筛选的文本分类场景标签信息
        # @type TextClassificationLabels: Array

        attr_accessor :DatasetId, :Offset, :Limit, :LabelList, :AnnotationStatus, :DatasetIds, :TextClassificationLabels
        
        def initialize(datasetid=nil, offset=nil, limit=nil, labellist=nil, annotationstatus=nil, datasetids=nil, textclassificationlabels=nil)
          @DatasetId = datasetid
          @Offset = offset
          @Limit = limit
          @LabelList = labellist
          @AnnotationStatus = annotationstatus
          @DatasetIds = datasetids
          @TextClassificationLabels = textclassificationlabels
        end

        def deserialize(params)
          @DatasetId = params['DatasetId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @LabelList = params['LabelList']
          @AnnotationStatus = params['AnnotationStatus']
          @DatasetIds = params['DatasetIds']
          unless params['TextClassificationLabels'].nil?
            @TextClassificationLabels = []
            params['TextClassificationLabels'].each do |i|
              textlabeldistributioninfo_tmp = TextLabelDistributionInfo.new
              textlabeldistributioninfo_tmp.deserialize(i)
              @TextClassificationLabels << textlabeldistributioninfo_tmp
            end
          end
        end
      end

      # DescribeDatasetDetailUnstructured返回参数结构体
      class DescribeDatasetDetailUnstructuredResponse < TencentCloud::Common::AbstractModel
        # @param AnnotatedTotalCount: 已标注数据量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnnotatedTotalCount: Integer
        # @param NonAnnotatedTotalCount: 没有标注数据量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NonAnnotatedTotalCount: Integer
        # @param FilterTotalCount: 过滤数据总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterTotalCount: Integer
        # @param FilterLabelList: 过滤数据详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilterLabelList: Array
        # @param RowTexts: 数据文本行，默认返回前1000行
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowTexts: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AnnotatedTotalCount, :NonAnnotatedTotalCount, :FilterTotalCount, :FilterLabelList, :RowTexts, :RequestId
        
        def initialize(annotatedtotalcount=nil, nonannotatedtotalcount=nil, filtertotalcount=nil, filterlabellist=nil, rowtexts=nil, requestid=nil)
          @AnnotatedTotalCount = annotatedtotalcount
          @NonAnnotatedTotalCount = nonannotatedtotalcount
          @FilterTotalCount = filtertotalcount
          @FilterLabelList = filterlabellist
          @RowTexts = rowtexts
          @RequestId = requestid
        end

        def deserialize(params)
          @AnnotatedTotalCount = params['AnnotatedTotalCount']
          @NonAnnotatedTotalCount = params['NonAnnotatedTotalCount']
          @FilterTotalCount = params['FilterTotalCount']
          unless params['FilterLabelList'].nil?
            @FilterLabelList = []
            params['FilterLabelList'].each do |i|
              filterlabelinfo_tmp = FilterLabelInfo.new
              filterlabelinfo_tmp.deserialize(i)
              @FilterLabelList << filterlabelinfo_tmp
            end
          end
          @RowTexts = params['RowTexts']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatasets请求参数结构体
      class DescribeDatasetsRequest < TencentCloud::Common::AbstractModel
        # @param DatasetIds: 数据集id列表
        # @type DatasetIds: Array
        # @param Filters: 数据集查询过滤条件，多个Filter之间的关系为逻辑与（AND）关系，过滤字段Filter.Name，类型为String
        # DatasetName，数据集名称
        # DatasetScope，数据集范围，SCOPE_DATASET_PRIVATE或SCOPE_DATASET_PUBLIC
        # @type Filters: Array
        # @param TagFilters: 标签过滤条件
        # @type TagFilters: Array
        # @param Order: 排序值，支持Asc或Desc，默认Desc
        # @type Order: String
        # @param OrderField: 排序字段，支持CreateTime或UpdateTime，默认CreateTime
        # @type OrderField: String
        # @param Offset: 偏移值
        # @type Offset: Integer
        # @param Limit: 返回数据个数，默认20，最大支持200
        # @type Limit: Integer

        attr_accessor :DatasetIds, :Filters, :TagFilters, :Order, :OrderField, :Offset, :Limit
        
        def initialize(datasetids=nil, filters=nil, tagfilters=nil, order=nil, orderfield=nil, offset=nil, limit=nil)
          @DatasetIds = datasetids
          @Filters = filters
          @TagFilters = tagfilters
          @Order = order
          @OrderField = orderfield
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DatasetIds = params['DatasetIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
          @Order = params['Order']
          @OrderField = params['OrderField']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDatasets返回参数结构体
      class DescribeDatasetsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据集总量（名称维度）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param DatasetGroups: 数据集按照数据集名称聚合的分组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetGroups: Array
        # @param DatasetIdNums: 数据集ID总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasetIdNums: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DatasetGroups, :DatasetIdNums, :RequestId
        
        def initialize(totalcount=nil, datasetgroups=nil, datasetidnums=nil, requestid=nil)
          @TotalCount = totalcount
          @DatasetGroups = datasetgroups
          @DatasetIdNums = datasetidnums
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DatasetGroups'].nil?
            @DatasetGroups = []
            params['DatasetGroups'].each do |i|
              datasetgroup_tmp = DatasetGroup.new
              datasetgroup_tmp.deserialize(i)
              @DatasetGroups << datasetgroup_tmp
            end
          end
          @DatasetIdNums = params['DatasetIdNums']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInferTemplates请求参数结构体
      class DescribeInferTemplatesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeInferTemplates返回参数结构体
      class DescribeInferTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param FrameworkTemplates: 模板列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameworkTemplates: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FrameworkTemplates, :RequestId
        
        def initialize(frameworktemplates=nil, requestid=nil)
          @FrameworkTemplates = frameworktemplates
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FrameworkTemplates'].nil?
            @FrameworkTemplates = []
            params['FrameworkTemplates'].each do |i|
              infertemplategroup_tmp = InferTemplateGroup.new
              infertemplategroup_tmp.deserialize(i)
              @FrameworkTemplates << infertemplategroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLatestTrainingMetrics请求参数结构体
      class DescribeLatestTrainingMetricsRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeLatestTrainingMetrics返回参数结构体
      class DescribeLatestTrainingMetricsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param Metrics: 最近一次上报的训练指标.每个Metric中只有一个点的数据, 即len(Values) = len(Timestamps) = 1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metrics: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Metrics, :RequestId
        
        def initialize(taskid=nil, metrics=nil, requestid=nil)
          @TaskId = taskid
          @Metrics = metrics
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              trainingmetric_tmp = TrainingMetric.new
              trainingmetric_tmp.deserialize(i)
              @Metrics << trainingmetric_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogs请求参数结构体
      class DescribeLogsRequest < TencentCloud::Common::AbstractModel
        # @param Service: 查询哪个服务的事件（可选值为TRAIN, NOTEBOOK, INFER）
        # @type Service: String
        # @param PodName: 查询哪个Pod的日志（支持结尾通配符*)
        # @type PodName: String
        # @param StartTime: 日志查询开始时间（RFC3339格式的时间字符串），默认值为当前时间的前一个小时
        # @type StartTime: String
        # @param EndTime: 日志查询结束时间（RFC3339格式的时间字符串），默认值为当前时间
        # @type EndTime: String
        # @param Limit: 日志查询条数，默认值100，最大值100
        # @type Limit: Integer
        # @param Order: 排序方向（可选值为ASC, DESC ），默认为DESC
        # @type Order: String
        # @param OrderField: 按哪个字段排序（可选值为Timestamp），默认值为Timestamp
        # @type OrderField: String
        # @param Context: 日志查询上下文，查询下一页的时候需要回传这个字段，该字段来自本接口的返回
        # @type Context: String
        # @param Filters: 过滤条件
        # 注意:
        # 1. Filter.Name：目前只支持Key（也就是按关键字过滤日志）
        # 2. Filter.Values：表示过滤日志的关键字；Values为多个的时候表示同时满足
        # 3. Filter. Negative和Filter. Fuzzy没有使用
        # @type Filters: Array

        attr_accessor :Service, :PodName, :StartTime, :EndTime, :Limit, :Order, :OrderField, :Context, :Filters
        
        def initialize(service=nil, podname=nil, starttime=nil, endtime=nil, limit=nil, order=nil, orderfield=nil, context=nil, filters=nil)
          @Service = service
          @PodName = podname
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Order = order
          @OrderField = orderfield
          @Context = context
          @Filters = filters
        end

        def deserialize(params)
          @Service = params['Service']
          @PodName = params['PodName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
          @Context = params['Context']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeLogs返回参数结构体
      class DescribeLogsResponse < TencentCloud::Common::AbstractModel
        # @param Context: 分页的游标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param Content: 日志数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :Content, :RequestId
        
        def initialize(context=nil, content=nil, requestid=nil)
          @Context = context
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              logidentity_tmp = LogIdentity.new
              logidentity_tmp.deserialize(i)
              @Content << logidentity_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrainingFrameworks请求参数结构体
      class DescribeTrainingFrameworksRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeTrainingFrameworks返回参数结构体
      class DescribeTrainingFrameworksResponse < TencentCloud::Common::AbstractModel
        # @param FrameworkInfos: 框架信息列表
        # @type FrameworkInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FrameworkInfos, :RequestId
        
        def initialize(frameworkinfos=nil, requestid=nil)
          @FrameworkInfos = frameworkinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FrameworkInfos'].nil?
            @FrameworkInfos = []
            params['FrameworkInfos'].each do |i|
              frameworkinfo_tmp = FrameworkInfo.new
              frameworkinfo_tmp.deserialize(i)
              @FrameworkInfos << frameworkinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrainingMetrics请求参数结构体
      class DescribeTrainingMetricsRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeTrainingMetrics返回参数结构体
      class DescribeTrainingMetricsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param Data: 训练指标数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Data, :RequestId
        
        def initialize(taskid=nil, data=nil, requestid=nil)
          @TaskId = taskid
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              customtrainingdata_tmp = CustomTrainingData.new
              customtrainingdata_tmp.deserialize(i)
              @Data << customtrainingdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrainingModelVersion请求参数结构体
      class DescribeTrainingModelVersionRequest < TencentCloud::Common::AbstractModel
        # @param TrainingModelVersionId: 模型版本ID
        # @type TrainingModelVersionId: String

        attr_accessor :TrainingModelVersionId
        
        def initialize(trainingmodelversionid=nil)
          @TrainingModelVersionId = trainingmodelversionid
        end

        def deserialize(params)
          @TrainingModelVersionId = params['TrainingModelVersionId']
        end
      end

      # DescribeTrainingModelVersion返回参数结构体
      class DescribeTrainingModelVersionResponse < TencentCloud::Common::AbstractModel
        # @param TrainingModelVersion: 模型版本
        # @type TrainingModelVersion: :class:`Tencentcloud::Tione.v20211111.models.TrainingModelVersionDTO`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrainingModelVersion, :RequestId
        
        def initialize(trainingmodelversion=nil, requestid=nil)
          @TrainingModelVersion = trainingmodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TrainingModelVersion'].nil?
            @TrainingModelVersion = TrainingModelVersionDTO.new
            @TrainingModelVersion.deserialize(params['TrainingModelVersion'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrainingModelVersions请求参数结构体
      class DescribeTrainingModelVersionsRequest < TencentCloud::Common::AbstractModel
        # @param TrainingModelId: 模型ID
        # @type TrainingModelId: String
        # @param Filters: 过滤条件
        # Filter.Name: 枚举值:
        #     TrainingModelVersionId (模型版本ID)
        #     ModelVersionType (模型版本类型) 其值支持: NORMAL(通用) ACCELERATE (加速)
        #     ModelFormat（模型格式）其值Filter.Values支持：
        # TORCH_SCRIPT/PYTORCH/DETECTRON2/SAVED_MODEL/FROZEN_GRAPH/PMML
        #     AlgorithmFramework (算法框架) 其值Filter.Values支持：TENSORFLOW/PYTORCH/DETECTRON2
        # Filter.Values: 当长度为1时，支持模糊查询; 不为1时，精确查询
        # 每次请求的Filters的上限为10，Filter.Values的上限为100
        # @type Filters: Array

        attr_accessor :TrainingModelId, :Filters
        
        def initialize(trainingmodelid=nil, filters=nil)
          @TrainingModelId = trainingmodelid
          @Filters = filters
        end

        def deserialize(params)
          @TrainingModelId = params['TrainingModelId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeTrainingModelVersions返回参数结构体
      class DescribeTrainingModelVersionsResponse < TencentCloud::Common::AbstractModel
        # @param TrainingModelVersions: 模型版本列表
        # @type TrainingModelVersions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrainingModelVersions, :RequestId
        
        def initialize(trainingmodelversions=nil, requestid=nil)
          @TrainingModelVersions = trainingmodelversions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TrainingModelVersions'].nil?
            @TrainingModelVersions = []
            params['TrainingModelVersions'].each do |i|
              trainingmodelversiondto_tmp = TrainingModelVersionDTO.new
              trainingmodelversiondto_tmp.deserialize(i)
              @TrainingModelVersions << trainingmodelversiondto_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrainingModels请求参数结构体
      class DescribeTrainingModelsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤器
        # Filter.Name: 枚举值:
        #     keyword (模型名称)
        #     TrainingModelId (模型ID)
        #     ModelVersionType (模型版本类型) 其值Filter.Values支持: NORMAL(通用) ACCELERATE (加速)
        #     TrainingModelSource (模型来源)  其值Filter.Values支持： JOB/COS/AUTO_ML
        #     AlgorithmFramework (算法框架) 其值Filter.Values支持：TENSORFLOW/PYTORCH/DETECTRON2
        #     ModelFormat（模型格式）其值Filter.Values支持：
        # TORCH_SCRIPT/PYTORCH/DETECTRON2/SAVED_MODEL/FROZEN_GRAPH/PMML
        # Filter.Values: 当长度为1时，支持模糊查询; 不为1时，精确查询
        # 每次请求的Filters的上限为10，Filter.Values的上限为100
        # Filter.Fuzzy取值：true/false，是否支持模糊匹配
        # @type Filters: Array
        # @param OrderField: 排序字段，默认CreateTime
        # @type OrderField: String
        # @param Order: 排序方式，ASC/DESC，默认DESC
        # @type Order: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回结果数量
        # @type Limit: Integer
        # @param TagFilters: 标签过滤
        # @type TagFilters: Array

        attr_accessor :Filters, :OrderField, :Order, :Offset, :Limit, :TagFilters
        
        def initialize(filters=nil, orderfield=nil, order=nil, offset=nil, limit=nil, tagfilters=nil)
          @Filters = filters
          @OrderField = orderfield
          @Order = order
          @Offset = offset
          @Limit = limit
          @TagFilters = tagfilters
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @OrderField = params['OrderField']
          @Order = params['Order']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
        end
      end

      # DescribeTrainingModels返回参数结构体
      class DescribeTrainingModelsResponse < TencentCloud::Common::AbstractModel
        # @param TrainingModels: 模型列表
        # @type TrainingModels: Array
        # @param TotalCount: 模型总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrainingModels, :TotalCount, :RequestId
        
        def initialize(trainingmodels=nil, totalcount=nil, requestid=nil)
          @TrainingModels = trainingmodels
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TrainingModels'].nil?
            @TrainingModels = []
            params['TrainingModels'].each do |i|
              trainingmodeldto_tmp = TrainingModelDTO.new
              trainingmodeldto_tmp.deserialize(i)
              @TrainingModels << trainingmodeldto_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrainingTaskPods请求参数结构体
      class DescribeTrainingTaskPodsRequest < TencentCloud::Common::AbstractModel
        # @param Id: 训练任务ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeTrainingTaskPods返回参数结构体
      class DescribeTrainingTaskPodsResponse < TencentCloud::Common::AbstractModel
        # @param PodNames: pod名称列表
        # @type PodNames: Array
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PodNames, :TotalCount, :RequestId
        
        def initialize(podnames=nil, totalcount=nil, requestid=nil)
          @PodNames = podnames
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @PodNames = params['PodNames']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrainingTask请求参数结构体
      class DescribeTrainingTaskRequest < TencentCloud::Common::AbstractModel
        # @param Id: 训练任务ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeTrainingTask返回参数结构体
      class DescribeTrainingTaskResponse < TencentCloud::Common::AbstractModel
        # @param TrainingTaskDetail: 训练任务详情
        # @type TrainingTaskDetail: :class:`Tencentcloud::Tione.v20211111.models.TrainingTaskDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrainingTaskDetail, :RequestId
        
        def initialize(trainingtaskdetail=nil, requestid=nil)
          @TrainingTaskDetail = trainingtaskdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TrainingTaskDetail'].nil?
            @TrainingTaskDetail = TrainingTaskDetail.new
            @TrainingTaskDetail.deserialize(params['TrainingTaskDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrainingTasks请求参数结构体
      class DescribeTrainingTasksRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤器，eg：[{ "Name": "Id", "Values": ["train-23091792777383936"] }]

        # 取值范围：
        # Name（名称）：task1
        # Id（task ID）：train-23091792777383936
        # Status（状态）：STARTING / RUNNING / STOPPING / STOPPED / FAILED / SUCCEED / SUBMIT_FAILED
        # ChargeType（计费类型）：PREPAID（预付费）/ POSTPAID_BY_HOUR（后付费）
        # CHARGE_STATUS（计费状态）：NOT_BILLING（未开始计费）/ BILLING（计费中）/ ARREARS_STOP（欠费停止）
        # @type Filters: Array
        # @param TagFilters: 标签过滤器，eg：[{ "TagKey": "TagKeyA", "TagValue": ["TagValueA"] }]
        # @type TagFilters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为10，最大为50
        # @type Limit: Integer
        # @param Order: 输出列表的排列顺序。取值范围：ASC（升序排列）/ DESC（降序排列），默认为DESC
        # @type Order: String
        # @param OrderField: 排序的依据字段， 取值范围 "CreateTime" "UpdateTime"
        # @type OrderField: String

        attr_accessor :Filters, :TagFilters, :Offset, :Limit, :Order, :OrderField
        
        def initialize(filters=nil, tagfilters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @Filters = filters
          @TagFilters = tagfilters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          unless params['TagFilters'].nil?
            @TagFilters = []
            params['TagFilters'].each do |i|
              tagfilter_tmp = TagFilter.new
              tagfilter_tmp.deserialize(i)
              @TagFilters << tagfilter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeTrainingTasks返回参数结构体
      class DescribeTrainingTasksResponse < TencentCloud::Common::AbstractModel
        # @param TrainingTaskSet: 训练任务集
        # @type TrainingTaskSet: Array
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrainingTaskSet, :TotalCount, :RequestId
        
        def initialize(trainingtaskset=nil, totalcount=nil, requestid=nil)
          @TrainingTaskSet = trainingtaskset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TrainingTaskSet'].nil?
            @TrainingTaskSet = []
            params['TrainingTaskSet'].each do |i|
              trainingtasksetitem_tmp = TrainingTaskSetItem.new
              trainingtasksetitem_tmp.deserialize(i)
              @TrainingTaskSet << trainingtasksetitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 图像检测参数信息
      class DetectionLabelInfo < TencentCloud::Common::AbstractModel
        # @param Points: 点坐标列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Points: Array
        # @param Labels: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param FrameType: 类别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameType: String

        attr_accessor :Points, :Labels, :FrameType
        
        def initialize(points=nil, labels=nil, frametype=nil)
          @Points = points
          @Labels = labels
          @FrameType = frametype
        end

        def deserialize(params)
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              pointinfo_tmp = PointInfo.new
              pointinfo_tmp.deserialize(i)
              @Points << pointinfo_tmp
            end
          end
          @Labels = params['Labels']
          @FrameType = params['FrameType']
        end
      end

      # 过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名称
        # @type Name: String
        # @param Values: 过滤字段取值
        # @type Values: Array
        # @param Negative: 是否开启反向查询
        # @type Negative: Boolean
        # @param Fuzzy: 是否开启模糊匹配
        # @type Fuzzy: Boolean

        attr_accessor :Name, :Values, :Negative, :Fuzzy
        
        def initialize(name=nil, values=nil, negative=nil, fuzzy=nil)
          @Name = name
          @Values = values
          @Negative = negative
          @Fuzzy = fuzzy
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @Negative = params['Negative']
          @Fuzzy = params['Fuzzy']
        end
      end

      # 图片列表查询结果详情
      class FilterLabelInfo < TencentCloud::Common::AbstractModel
        # @param DatasetId: 数据集id
        # @type DatasetId: String
        # @param FileId: 文件ID
        # @type FileId: String
        # @param FileName: 文件路径
        # @type FileName: String
        # @param ClassificationLabels: 分类标签结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassificationLabels: Array
        # @param DetectionLabels: 检测标签结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetectionLabels: Array
        # @param SegmentationLabels: 分割标签结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentationLabels: Array
        # @param RGBPath: RGB 图片路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RGBPath: String
        # @param LabelTemplateType: 标签模板类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelTemplateType: String
        # @param DownloadUrl: 下载url链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadUrl: String
        # @param DownloadThumbnailUrl: 缩略图下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadThumbnailUrl: String
        # @param DownloadRGBUrl: 分割结果图片下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadRGBUrl: String
        # @param OcrScene: OCR场景
        # IDENTITY：识别
        # STRUCTURE：智能结构化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrScene: String
        # @param OcrLabels: OCR场景标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrLabels: Array
        # @param OcrLabelInfo: OCR场景标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrLabelInfo: String
        # @param TextClassificationLabelList: 文本分类场景标签结果，内容是json结构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextClassificationLabelList: String
        # @param RowText: 文本内容，返回50字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowText: String
        # @param ContentOmit: 文本内容是否完全返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContentOmit: Boolean

        attr_accessor :DatasetId, :FileId, :FileName, :ClassificationLabels, :DetectionLabels, :SegmentationLabels, :RGBPath, :LabelTemplateType, :DownloadUrl, :DownloadThumbnailUrl, :DownloadRGBUrl, :OcrScene, :OcrLabels, :OcrLabelInfo, :TextClassificationLabelList, :RowText, :ContentOmit
        
        def initialize(datasetid=nil, fileid=nil, filename=nil, classificationlabels=nil, detectionlabels=nil, segmentationlabels=nil, rgbpath=nil, labeltemplatetype=nil, downloadurl=nil, downloadthumbnailurl=nil, downloadrgburl=nil, ocrscene=nil, ocrlabels=nil, ocrlabelinfo=nil, textclassificationlabellist=nil, rowtext=nil, contentomit=nil)
          @DatasetId = datasetid
          @FileId = fileid
          @FileName = filename
          @ClassificationLabels = classificationlabels
          @DetectionLabels = detectionlabels
          @SegmentationLabels = segmentationlabels
          @RGBPath = rgbpath
          @LabelTemplateType = labeltemplatetype
          @DownloadUrl = downloadurl
          @DownloadThumbnailUrl = downloadthumbnailurl
          @DownloadRGBUrl = downloadrgburl
          @OcrScene = ocrscene
          @OcrLabels = ocrlabels
          @OcrLabelInfo = ocrlabelinfo
          @TextClassificationLabelList = textclassificationlabellist
          @RowText = rowtext
          @ContentOmit = contentomit
        end

        def deserialize(params)
          @DatasetId = params['DatasetId']
          @FileId = params['FileId']
          @FileName = params['FileName']
          @ClassificationLabels = params['ClassificationLabels']
          unless params['DetectionLabels'].nil?
            @DetectionLabels = []
            params['DetectionLabels'].each do |i|
              detectionlabelinfo_tmp = DetectionLabelInfo.new
              detectionlabelinfo_tmp.deserialize(i)
              @DetectionLabels << detectionlabelinfo_tmp
            end
          end
          unless params['SegmentationLabels'].nil?
            @SegmentationLabels = []
            params['SegmentationLabels'].each do |i|
              segmentationinfo_tmp = SegmentationInfo.new
              segmentationinfo_tmp.deserialize(i)
              @SegmentationLabels << segmentationinfo_tmp
            end
          end
          @RGBPath = params['RGBPath']
          @LabelTemplateType = params['LabelTemplateType']
          @DownloadUrl = params['DownloadUrl']
          @DownloadThumbnailUrl = params['DownloadThumbnailUrl']
          @DownloadRGBUrl = params['DownloadRGBUrl']
          @OcrScene = params['OcrScene']
          unless params['OcrLabels'].nil?
            @OcrLabels = []
            params['OcrLabels'].each do |i|
              ocrlabelinfo_tmp = OcrLabelInfo.new
              ocrlabelinfo_tmp.deserialize(i)
              @OcrLabels << ocrlabelinfo_tmp
            end
          end
          @OcrLabelInfo = params['OcrLabelInfo']
          @TextClassificationLabelList = params['TextClassificationLabelList']
          @RowText = params['RowText']
          @ContentOmit = params['ContentOmit']
        end
      end

      # 框架信息列表
      class FrameworkInfo < TencentCloud::Common::AbstractModel
        # @param Name: 框架名称
        # @type Name: String
        # @param VersionInfos: 框架版本以及对应的训练模式
        # @type VersionInfos: Array

        attr_accessor :Name, :VersionInfos
        
        def initialize(name=nil, versioninfos=nil)
          @Name = name
          @VersionInfos = versioninfos
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['VersionInfos'].nil?
            @VersionInfos = []
            params['VersionInfos'].each do |i|
              frameworkversion_tmp = FrameworkVersion.new
              frameworkversion_tmp.deserialize(i)
              @VersionInfos << frameworkversion_tmp
            end
          end
        end
      end

      # 框架版本以及对应的训练模式
      class FrameworkVersion < TencentCloud::Common::AbstractModel
        # @param Version: 框架版本
        # @type Version: String
        # @param TrainingModes: 训练模式
        # @type TrainingModes: Array

        attr_accessor :Version, :TrainingModes
        
        def initialize(version=nil, trainingmodes=nil)
          @Version = version
          @TrainingModes = trainingmodes
        end

        def deserialize(params)
          @Version = params['Version']
          @TrainingModes = params['TrainingModes']
        end
      end

      # gpu 详情
      class GpuDetail < TencentCloud::Common::AbstractModel
        # @param Name: GPU 显卡类型；枚举值: V100 A100 T4
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: GPU 显卡数；单位为1/100卡，比如100代表1卡
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: Integer

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 资源信息
      class GroupResource < TencentCloud::Common::AbstractModel
        # @param Cpu: CPU核数; 单位为1/1000核，比如100表示0.1核
        # @type Cpu: Integer
        # @param Memory: 内存；单位为MB
        # @type Memory: Integer
        # @param Gpu: 总卡数；GPUDetail 显卡数之和；单位为1/100卡，比如100代表1卡
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gpu: Integer
        # @param GpuDetailSet: Gpu详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GpuDetailSet: Array

        attr_accessor :Cpu, :Memory, :Gpu, :GpuDetailSet
        
        def initialize(cpu=nil, memory=nil, gpu=nil, gpudetailset=nil)
          @Cpu = cpu
          @Memory = memory
          @Gpu = gpu
          @GpuDetailSet = gpudetailset
        end

        def deserialize(params)
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Gpu = params['Gpu']
          unless params['GpuDetailSet'].nil?
            @GpuDetailSet = []
            params['GpuDetailSet'].each do |i|
              gpudetail_tmp = GpuDetail.new
              gpudetail_tmp.deserialize(i)
              @GpuDetailSet << gpudetail_tmp
            end
          end
        end
      end

      # HDFS的参数配置
      class HDFSConfig < TencentCloud::Common::AbstractModel
        # @param Id: 集群实例ID,实例ID形如: emr-xxxxxxxx
        # @type Id: String
        # @param Path: 路径
        # @type Path: String

        attr_accessor :Id, :Path
        
        def initialize(id=nil, path=nil)
          @Id = id
          @Path = path
        end

        def deserialize(params)
          @Id = params['Id']
          @Path = params['Path']
        end
      end

      # 镜像描述信息
      class ImageInfo < TencentCloud::Common::AbstractModel
        # @param ImageType: 镜像类型：TCR为腾讯云TCR镜像; CCR为腾讯云TCR个人版镜像，PreSet为平台预置镜像
        # @type ImageType: String
        # @param ImageUrl: 镜像地址
        # @type ImageUrl: String
        # @param RegistryRegion: TCR镜像对应的地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistryRegion: String
        # @param RegistryId: TCR镜像对应的实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistryId: String

        attr_accessor :ImageType, :ImageUrl, :RegistryRegion, :RegistryId
        
        def initialize(imagetype=nil, imageurl=nil, registryregion=nil, registryid=nil)
          @ImageType = imagetype
          @ImageUrl = imageurl
          @RegistryRegion = registryregion
          @RegistryId = registryid
        end

        def deserialize(params)
          @ImageType = params['ImageType']
          @ImageUrl = params['ImageUrl']
          @RegistryRegion = params['RegistryRegion']
          @RegistryId = params['RegistryId']
        end
      end

      # 推理镜像详情
      class InferTemplate < TencentCloud::Common::AbstractModel
        # @param InferTemplateId: 模板ID
        # @type InferTemplateId: String
        # @param InferTemplateImage: 模板镜像
        # @type InferTemplateImage: String

        attr_accessor :InferTemplateId, :InferTemplateImage
        
        def initialize(infertemplateid=nil, infertemplateimage=nil)
          @InferTemplateId = infertemplateid
          @InferTemplateImage = infertemplateimage
        end

        def deserialize(params)
          @InferTemplateId = params['InferTemplateId']
          @InferTemplateImage = params['InferTemplateImage']
        end
      end

      # 推理镜像组
      class InferTemplateGroup < TencentCloud::Common::AbstractModel
        # @param Framework: 算法框架
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Framework: String
        # @param FrameworkVersion: 版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameworkVersion: String
        # @param Groups: 支持的训练框架集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Groups: Array
        # @param InferTemplates: 镜像模板参数列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InferTemplates: Array

        attr_accessor :Framework, :FrameworkVersion, :Groups, :InferTemplates
        
        def initialize(framework=nil, frameworkversion=nil, groups=nil, infertemplates=nil)
          @Framework = framework
          @FrameworkVersion = frameworkversion
          @Groups = groups
          @InferTemplates = infertemplates
        end

        def deserialize(params)
          @Framework = params['Framework']
          @FrameworkVersion = params['FrameworkVersion']
          @Groups = params['Groups']
          unless params['InferTemplates'].nil?
            @InferTemplates = []
            params['InferTemplates'].each do |i|
              infertemplate_tmp = InferTemplate.new
              infertemplate_tmp.deserialize(i)
              @InferTemplates << infertemplate_tmp
            end
          end
        end
      end

      # 资源组节点信息
      class Instance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源组节点id
        # @type InstanceId: String
        # @param UsedResource: 节点已用资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedResource: :class:`Tencentcloud::Tione.v20211111.models.ResourceInfo`
        # @param TotalResource: 节点总资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalResource: :class:`Tencentcloud::Tione.v20211111.models.ResourceInfo`
        # @param InstanceStatus: 节点状态
        # 注意：此字段为枚举值
        # 说明:
        # DEPLOYING: 部署中
        # RUNNING: 运行中
        # DEPLOY_FAILED: 部署失败
        #  RELEASING 释放中
        # RELEASED：已释放
        # EXCEPTION：异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStatus: String
        # @param SubUin: 创建人
        # @type SubUin: String
        # @param CreateTime: 创建时间:
        # 注意：北京时间，比如: 2021-12-01 12:00:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ExpireTime: 到期时间
        # 注意：北京时间，比如：2021-12-11 12:00:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param AutoRenewFlag: 自动续费标识
        # 注意：此字段为枚举值
        # 说明：
        # NOTIFY_AND_MANUAL_RENEW：手动续费(取消自动续费)且到期通知
        # NOTIFY_AND_AUTO_RENEW：自动续费且到期通知
        # DISABLE_NOTIFY_AND_MANUAL_RENEW：手动续费(取消自动续费)且到期不通知
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewFlag: String
        # @param SpecId: 计费项ID
        # @type SpecId: String
        # @param SpecAlias: 计费项别名
        # @type SpecAlias: String

        attr_accessor :InstanceId, :UsedResource, :TotalResource, :InstanceStatus, :SubUin, :CreateTime, :ExpireTime, :AutoRenewFlag, :SpecId, :SpecAlias
        
        def initialize(instanceid=nil, usedresource=nil, totalresource=nil, instancestatus=nil, subuin=nil, createtime=nil, expiretime=nil, autorenewflag=nil, specid=nil, specalias=nil)
          @InstanceId = instanceid
          @UsedResource = usedresource
          @TotalResource = totalresource
          @InstanceStatus = instancestatus
          @SubUin = subuin
          @CreateTime = createtime
          @ExpireTime = expiretime
          @AutoRenewFlag = autorenewflag
          @SpecId = specid
          @SpecAlias = specalias
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['UsedResource'].nil?
            @UsedResource = ResourceInfo.new
            @UsedResource.deserialize(params['UsedResource'])
          end
          unless params['TotalResource'].nil?
            @TotalResource = ResourceInfo.new
            @TotalResource.deserialize(params['TotalResource'])
          end
          @InstanceStatus = params['InstanceStatus']
          @SubUin = params['SubUin']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @AutoRenewFlag = params['AutoRenewFlag']
          @SpecId = params['SpecId']
          @SpecAlias = params['SpecAlias']
        end
      end

      # 日志配置
      class LogConfig < TencentCloud::Common::AbstractModel
        # @param LogsetId: 日志需要投递到cls的日志集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogsetId: String
        # @param TopicId: 日志需要投递到cls的主题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String

        attr_accessor :LogsetId, :TopicId
        
        def initialize(logsetid=nil, topicid=nil)
          @LogsetId = logsetid
          @TopicId = topicid
        end

        def deserialize(params)
          @LogsetId = params['LogsetId']
          @TopicId = params['TopicId']
        end
      end

      # 单条日志数据结构
      class LogIdentity < TencentCloud::Common::AbstractModel
        # @param Id: 单条日志的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Message: 单条日志的内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param PodName: 这条日志对应的Pod名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodName: String
        # @param Timestamp: 日志的时间戳（RFC3339格式的时间字符串）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: String

        attr_accessor :Id, :Message, :PodName, :Timestamp
        
        def initialize(id=nil, message=nil, podname=nil, timestamp=nil)
          @Id = id
          @Message = message
          @PodName = podname
          @Timestamp = timestamp
        end

        def deserialize(params)
          @Id = params['Id']
          @Message = params['Message']
          @PodName = params['PodName']
          @Timestamp = params['Timestamp']
        end
      end

      # 指标数据
      class MetricData < TencentCloud::Common::AbstractModel
        # @param TaskId: 训练任务id
        # @type TaskId: String
        # @param Timestamp: 时间戳.unix timestamp,单位为秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: Integer
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param Epoch: 本次上报数据所处的训练周期数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Epoch: Integer
        # @param Step: 本次上报数据所处的训练迭代次数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Step: Integer
        # @param TotalSteps: 训练停止所需的迭代总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSteps: Integer
        # @param Points: 数据点。数组元素为不同指标的数据。数组长度不超过10。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Points: Array

        attr_accessor :TaskId, :Timestamp, :Uin, :Epoch, :Step, :TotalSteps, :Points
        
        def initialize(taskid=nil, timestamp=nil, uin=nil, epoch=nil, step=nil, totalsteps=nil, points=nil)
          @TaskId = taskid
          @Timestamp = timestamp
          @Uin = uin
          @Epoch = epoch
          @Step = step
          @TotalSteps = totalsteps
          @Points = points
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Timestamp = params['Timestamp']
          @Uin = params['Uin']
          @Epoch = params['Epoch']
          @Step = params['Step']
          @TotalSteps = params['TotalSteps']
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              datapoint_tmp = DataPoint.new
              datapoint_tmp.deserialize(i)
              @Points << datapoint_tmp
            end
          end
        end
      end

      # 模型描述信息
      class ModelInfo < TencentCloud::Common::AbstractModel
        # @param ModelVersionId: 模型版本id, DescribeTrainingModelVersion查询模型接口时的id
        # 自动学习类型的模型填写自动学习的任务id
        # @type ModelVersionId: String
        # @param ModelId: 模型id
        # @type ModelId: String
        # @param ModelName: 模型名
        # @type ModelName: String
        # @param ModelVersion: 模型版本
        # @type ModelVersion: String
        # @param ModelSource: 模型来源
        # @type ModelSource: String
        # @param CosPathInfo: cos路径信息
        # @type CosPathInfo: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param AlgorithmFramework: 模型对应的算法框架，预留
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlgorithmFramework: String
        # @param ModelType: 默认为 NORMAL, 已加速模型: ACCELERATE, 自动学习模型 AUTO_ML
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelType: String

        attr_accessor :ModelVersionId, :ModelId, :ModelName, :ModelVersion, :ModelSource, :CosPathInfo, :AlgorithmFramework, :ModelType
        
        def initialize(modelversionid=nil, modelid=nil, modelname=nil, modelversion=nil, modelsource=nil, cospathinfo=nil, algorithmframework=nil, modeltype=nil)
          @ModelVersionId = modelversionid
          @ModelId = modelid
          @ModelName = modelname
          @ModelVersion = modelversion
          @ModelSource = modelsource
          @CosPathInfo = cospathinfo
          @AlgorithmFramework = algorithmframework
          @ModelType = modeltype
        end

        def deserialize(params)
          @ModelVersionId = params['ModelVersionId']
          @ModelId = params['ModelId']
          @ModelName = params['ModelName']
          @ModelVersion = params['ModelVersion']
          @ModelSource = params['ModelSource']
          unless params['CosPathInfo'].nil?
            @CosPathInfo = CosPathInfo.new
            @CosPathInfo.deserialize(params['CosPathInfo'])
          end
          @AlgorithmFramework = params['AlgorithmFramework']
          @ModelType = params['ModelType']
        end
      end

      # OCR场景标签列表
      class OcrLabelInfo < TencentCloud::Common::AbstractModel
        # @param Points: 坐标点围起来的框
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Points: Array
        # @param FrameType: 框的形状：
        # FRAME_TYPE_RECTANGLE
        # FRAME_TYPE_POLYGON
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameType: String
        # @param Key: 智能结构化：key区域对应的内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param KeyId: 智能结构化：上述key的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyId: String
        # @param Value: 识别：框区域的内容
        # 智能结构化：value区域对应的内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param KeyIdsForValue: 智能结构化：value区域所关联的key 区域的keyID的集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyIdsForValue: Array
        # @param Direction: key或者value区域内容的方向：
        # DIRECTION_VERTICAL
        # DIRECTION_HORIZONTAL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Direction: String

        attr_accessor :Points, :FrameType, :Key, :KeyId, :Value, :KeyIdsForValue, :Direction
        
        def initialize(points=nil, frametype=nil, key=nil, keyid=nil, value=nil, keyidsforvalue=nil, direction=nil)
          @Points = points
          @FrameType = frametype
          @Key = key
          @KeyId = keyid
          @Value = value
          @KeyIdsForValue = keyidsforvalue
          @Direction = direction
        end

        def deserialize(params)
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              pointinfo_tmp = PointInfo.new
              pointinfo_tmp.deserialize(i)
              @Points << pointinfo_tmp
            end
          end
          @FrameType = params['FrameType']
          @Key = params['Key']
          @KeyId = params['KeyId']
          @Value = params['Value']
          @KeyIdsForValue = params['KeyIdsForValue']
          @Direction = params['Direction']
        end
      end

      # 点信息描述
      class PointInfo < TencentCloud::Common::AbstractModel
        # @param X: X坐标值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type X: Float
        # @param Y: Y坐标值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Y: Float

        attr_accessor :X, :Y
        
        def initialize(x=nil, y=nil)
          @X = x
          @Y = y
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
        end
      end

      # PushTrainingMetrics请求参数结构体
      class PushTrainingMetricsRequest < TencentCloud::Common::AbstractModel
        # @param Data: 指标数据
        # @type Data: Array

        attr_accessor :Data
        
        def initialize(data=nil)
          @Data = data
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              metricdata_tmp = MetricData.new
              metricdata_tmp.deserialize(i)
              @Data << metricdata_tmp
            end
          end
        end
      end

      # PushTrainingMetrics返回参数结构体
      class PushTrainingMetricsResponse < TencentCloud::Common::AbstractModel
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

      # 资源配置
      class ResourceConfigInfo < TencentCloud::Common::AbstractModel
        # @param Role: 角色，eg：PS、WORKER、DRIVER、EXECUTOR
        # @type Role: String
        # @param Cpu: cpu核数，1000=1核
        # @type Cpu: Integer
        # @param Memory: 内存，单位为MB
        # @type Memory: Integer
        # @param GpuType: gpu卡类型
        # @type GpuType: String
        # @param Gpu: gpu数
        # @type Gpu: Integer
        # @param InstanceType: 算力规格ID
        # 计算规格 (for后付费)，可选值如下：
        # TI.S.LARGE.POST: 4C8G
        # TI.S.2XLARGE16.POST:  8C16G
        # TI.S.2XLARGE32.POST:  8C32G
        # TI.S.4XLARGE32.POST:  16C32G
        # TI.S.4XLARGE64.POST:  16C64G
        # TI.S.6XLARGE48.POST:  24C48G
        # TI.S.6XLARGE96.POST:  24C96G
        # TI.S.8XLARGE64.POST:  32C64G
        # TI.S.8XLARGE128.POST : 32C128G
        # TI.GN10.2XLARGE40.POST: 8C40G V100*1
        # TI.GN10.5XLARGE80.POST:  18C80G V100*2
        # TI.GN10.10XLARGE160.POST :  32C160G V100*4
        # TI.GN10.20XLARGE320.POST :  72C320G V100*8
        # TI.GN7.8XLARGE128.POST: 32C128G T4*1
        # TI.GN7.10XLARGE160.POST: 40C160G T4*2
        # TI.GN7.20XLARGE320.POST: 80C32
        # @type InstanceType: String
        # @param InstanceNum: 计算节点数
        # @type InstanceNum: Integer
        # @param InstanceTypeAlias: 算力规格名称
        # 计算规格 (for后付费)，可选值如下：
        # 4C8G
        # 8C16G
        # 8C32G
        # 16C32G
        # 6C64G
        # 24C48G
        # 24C96G
        # 32C64G
        # 32C128G
        # 8C40G V100*1
        # 8C80G V100*2
        # 32C160G V100*4
        # 72C320G V100*8
        # 32C128G T4*1
        # 40C160G T4*2
        # 80C32
        # @type InstanceTypeAlias: String

        attr_accessor :Role, :Cpu, :Memory, :GpuType, :Gpu, :InstanceType, :InstanceNum, :InstanceTypeAlias
        
        def initialize(role=nil, cpu=nil, memory=nil, gputype=nil, gpu=nil, instancetype=nil, instancenum=nil, instancetypealias=nil)
          @Role = role
          @Cpu = cpu
          @Memory = memory
          @GpuType = gputype
          @Gpu = gpu
          @InstanceType = instancetype
          @InstanceNum = instancenum
          @InstanceTypeAlias = instancetypealias
        end

        def deserialize(params)
          @Role = params['Role']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @GpuType = params['GpuType']
          @Gpu = params['Gpu']
          @InstanceType = params['InstanceType']
          @InstanceNum = params['InstanceNum']
          @InstanceTypeAlias = params['InstanceTypeAlias']
        end
      end

      # 资源组
      class ResourceGroup < TencentCloud::Common::AbstractModel
        # @param ResourceGroupId: 资源组id
        # @type ResourceGroupId: String
        # @param ResourceGroupName: 资源组名称
        # @type ResourceGroupName: String
        # @param FreeInstance: 可用节点个数(运行中的节点)
        # @type FreeInstance: Integer
        # @param TotalInstance: 总节点个数(所有节点)
        # @type TotalInstance: Integer
        # @param UsedResource: 资资源组已用的资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedResource: :class:`Tencentcloud::Tione.v20211111.models.GroupResource`
        # @param TotalResource: 资源组总资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalResource: :class:`Tencentcloud::Tione.v20211111.models.GroupResource`
        # @param InstanceSet: 节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceSet: Array
        # @param TagSet: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSet: Array

        attr_accessor :ResourceGroupId, :ResourceGroupName, :FreeInstance, :TotalInstance, :UsedResource, :TotalResource, :InstanceSet, :TagSet
        
        def initialize(resourcegroupid=nil, resourcegroupname=nil, freeinstance=nil, totalinstance=nil, usedresource=nil, totalresource=nil, instanceset=nil, tagset=nil)
          @ResourceGroupId = resourcegroupid
          @ResourceGroupName = resourcegroupname
          @FreeInstance = freeinstance
          @TotalInstance = totalinstance
          @UsedResource = usedresource
          @TotalResource = totalresource
          @InstanceSet = instanceset
          @TagSet = tagset
        end

        def deserialize(params)
          @ResourceGroupId = params['ResourceGroupId']
          @ResourceGroupName = params['ResourceGroupName']
          @FreeInstance = params['FreeInstance']
          @TotalInstance = params['TotalInstance']
          unless params['UsedResource'].nil?
            @UsedResource = GroupResource.new
            @UsedResource.deserialize(params['UsedResource'])
          end
          unless params['TotalResource'].nil?
            @TotalResource = GroupResource.new
            @TotalResource.deserialize(params['TotalResource'])
          end
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @InstanceSet << instance_tmp
            end
          end
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
        end
      end

      # 描述资源信息
      class ResourceInfo < TencentCloud::Common::AbstractModel
        # @param Cpu: 处理器资源, 单位为1/1000核
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Integer
        # @param Memory: 内存资源, 单位为1M
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memory: Integer
        # @param Gpu: Gpu卡个数资源, 单位为0.01单位的GpuType.
        # Gpu=100表示使用了“一张”gpu卡, 但此处的“一张”卡有可能是虚拟化后的1/4卡, 也有可能是整张卡. 取决于实例的机型
        # 例1 实例的机型带有1张虚拟gpu卡, 每张虚拟gpu卡对应1/4张实际T4卡, 则此时 GpuType=T4, Gpu=100, RealGpu=25.
        # 例2 实例的机型带有4张gpu整卡, 每张卡对应1张实际T4卡, 则 此时 GpuType=T4, Gpu=400, RealGpu=400.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gpu: Integer
        # @param GpuType: Gpu卡型号 T4或者V100
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GpuType: String
        # @param RealGpu: 创建或更新时无需填写，仅展示需要关注
        # 后付费非整卡实例对应的实际的Gpu卡资源, 表示gpu资源对应实际的gpu卡个数.
        # RealGpu=100表示实际使用了一张gpu卡, 对应实际的实例机型, 有可能代表带有1/4卡的实例4个, 或者带有1/2卡的实例2个, 或者带有1卡的实力1个.
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealGpu: Integer

        attr_accessor :Cpu, :Memory, :Gpu, :GpuType, :RealGpu
        
        def initialize(cpu=nil, memory=nil, gpu=nil, gputype=nil, realgpu=nil)
          @Cpu = cpu
          @Memory = memory
          @Gpu = gpu
          @GpuType = gputype
          @RealGpu = realgpu
        end

        def deserialize(params)
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Gpu = params['Gpu']
          @GpuType = params['GpuType']
          @RealGpu = params['RealGpu']
        end
      end

      # 文本行信息
      class RowItem < TencentCloud::Common::AbstractModel
        # @param Values: rowValue 数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Values
        
        def initialize(values=nil)
          @Values = values
        end

        def deserialize(params)
          unless params['Values'].nil?
            @Values = []
            params['Values'].each do |i|
              rowvalue_tmp = RowValue.new
              rowvalue_tmp.deserialize(i)
              @Values << rowvalue_tmp
            end
          end
        end
      end

      # 文件行信息
      class RowValue < TencentCloud::Common::AbstractModel
        # @param Name: 列名
        # @type Name: String
        # @param Value: 列值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Name, :Value
        
        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 表格数据集表头信息
      class SchemaInfo < TencentCloud::Common::AbstractModel
        # @param Name: 长度30字符内
        # @type Name: String
        # @param Type: 数据类型
        # @type Type: String

        attr_accessor :Name, :Type
        
        def initialize(name=nil, type=nil)
          @Name = name
          @Type = type
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
        end
      end

      # 图片分割参数信息
      class SegmentationInfo < TencentCloud::Common::AbstractModel
        # @param Points: 点坐标数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Points: Array
        # @param Label: 分割标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Gray: 灰度值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gray: Integer
        # @param Color: 颜色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Color: String

        attr_accessor :Points, :Label, :Gray, :Color
        
        def initialize(points=nil, label=nil, gray=nil, color=nil)
          @Points = points
          @Label = label
          @Gray = gray
          @Color = color
        end

        def deserialize(params)
          unless params['Points'].nil?
            @Points = []
            params['Points'].each do |i|
              pointinfo_tmp = PointInfo.new
              pointinfo_tmp.deserialize(i)
              @Points << pointinfo_tmp
            end
          end
          @Label = params['Label']
          @Gray = params['Gray']
          @Color = params['Color']
        end
      end

      # 计费项内容
      class Spec < TencentCloud::Common::AbstractModel
        # @param SpecId: 计费项标签
        # @type SpecId: String
        # @param SpecName: 计费项名称
        # @type SpecName: String
        # @param SpecAlias: 计费项显示名称
        # @type SpecAlias: String

        attr_accessor :SpecId, :SpecName, :SpecAlias
        
        def initialize(specid=nil, specname=nil, specalias=nil)
          @SpecId = specid
          @SpecName = specname
          @SpecAlias = specalias
        end

        def deserialize(params)
          @SpecId = params['SpecId']
          @SpecName = params['SpecName']
          @SpecAlias = params['SpecAlias']
        end
      end

      # 计费项询价结果
      class SpecPrice < TencentCloud::Common::AbstractModel
        # @param SpecName: 计费项名称
        # @type SpecName: String
        # @param TotalCost: 原价，单位：分。最大值42亿，超过则返回0
        # @type TotalCost: Integer
        # @param RealTotalCost: 优惠后的价格，单位：分
        # @type RealTotalCost: Integer

        attr_accessor :SpecName, :TotalCost, :RealTotalCost
        
        def initialize(specname=nil, totalcost=nil, realtotalcost=nil)
          @SpecName = specname
          @TotalCost = totalcost
          @RealTotalCost = realtotalcost
        end

        def deserialize(params)
          @SpecName = params['SpecName']
          @TotalCost = params['TotalCost']
          @RealTotalCost = params['RealTotalCost']
        end
      end

      # 计费项询价单元
      class SpecUnit < TencentCloud::Common::AbstractModel
        # @param SpecName: 计费项名称
        # @type SpecName: String
        # @param SpecCount: 计费项数量,建议不超过100万
        # @type SpecCount: Integer

        attr_accessor :SpecName, :SpecCount
        
        def initialize(specname=nil, speccount=nil)
          @SpecName = specname
          @SpecCount = speccount
        end

        def deserialize(params)
          @SpecName = params['SpecName']
          @SpecCount = params['SpecCount']
        end
      end

      # 启动命令信息
      class StartCmdInfo < TencentCloud::Common::AbstractModel
        # @param StartCmd: 启动命令
        # @type StartCmd: String
        # @param PsStartCmd: ps启动命令
        # @type PsStartCmd: String
        # @param WorkerStartCmd: worker启动命令
        # @type WorkerStartCmd: String

        attr_accessor :StartCmd, :PsStartCmd, :WorkerStartCmd
        
        def initialize(startcmd=nil, psstartcmd=nil, workerstartcmd=nil)
          @StartCmd = startcmd
          @PsStartCmd = psstartcmd
          @WorkerStartCmd = workerstartcmd
        end

        def deserialize(params)
          @StartCmd = params['StartCmd']
          @PsStartCmd = params['PsStartCmd']
          @WorkerStartCmd = params['WorkerStartCmd']
        end
      end

      # StartTrainingTask请求参数结构体
      class StartTrainingTaskRequest < TencentCloud::Common::AbstractModel
        # @param Id: 训练任务ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # StartTrainingTask返回参数结构体
      class StartTrainingTaskResponse < TencentCloud::Common::AbstractModel
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

      # StopBatchTask请求参数结构体
      class StopBatchTaskRequest < TencentCloud::Common::AbstractModel
        # @param BatchTaskId: 跑批任务ID
        # @type BatchTaskId: String

        attr_accessor :BatchTaskId
        
        def initialize(batchtaskid=nil)
          @BatchTaskId = batchtaskid
        end

        def deserialize(params)
          @BatchTaskId = params['BatchTaskId']
        end
      end

      # StopBatchTask返回参数结构体
      class StopBatchTaskResponse < TencentCloud::Common::AbstractModel
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

      # StopTrainingTask请求参数结构体
      class StopTrainingTaskRequest < TencentCloud::Common::AbstractModel
        # @param Id: 训练任务ID
        # @type Id: String

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # StopTrainingTask返回参数结构体
      class StopTrainingTaskResponse < TencentCloud::Common::AbstractModel
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

      # 描述腾讯云标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKey: String
        # @param TagValue: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # Tag过滤参数
      class TagFilter < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValues: 多个标签值
        # @type TagValues: Array

        attr_accessor :TagKey, :TagValues
        
        def initialize(tagkey=nil, tagvalues=nil)
          @TagKey = tagkey
          @TagValues = tagvalues
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValues = params['TagValues']
        end
      end

      # 五级标签
      class TextLabelDistributionDetailInfoFifthClass < TencentCloud::Common::AbstractModel
        # @param LabelValue: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValue: String
        # @param LabelCount: 标签个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelCount: Integer
        # @param LabelPercentage: 标签占比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelPercentage: Float

        attr_accessor :LabelValue, :LabelCount, :LabelPercentage
        
        def initialize(labelvalue=nil, labelcount=nil, labelpercentage=nil)
          @LabelValue = labelvalue
          @LabelCount = labelcount
          @LabelPercentage = labelpercentage
        end

        def deserialize(params)
          @LabelValue = params['LabelValue']
          @LabelCount = params['LabelCount']
          @LabelPercentage = params['LabelPercentage']
        end
      end

      # 一级标签
      class TextLabelDistributionDetailInfoFirstClass < TencentCloud::Common::AbstractModel
        # @param LabelValue: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValue: String
        # @param LabelCount: 标签个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelCount: Integer
        # @param LabelPercentage: 标签占比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelPercentage: Float
        # @param ChildLabelList: 子标签分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChildLabelList: Array

        attr_accessor :LabelValue, :LabelCount, :LabelPercentage, :ChildLabelList
        
        def initialize(labelvalue=nil, labelcount=nil, labelpercentage=nil, childlabellist=nil)
          @LabelValue = labelvalue
          @LabelCount = labelcount
          @LabelPercentage = labelpercentage
          @ChildLabelList = childlabellist
        end

        def deserialize(params)
          @LabelValue = params['LabelValue']
          @LabelCount = params['LabelCount']
          @LabelPercentage = params['LabelPercentage']
          unless params['ChildLabelList'].nil?
            @ChildLabelList = []
            params['ChildLabelList'].each do |i|
              textlabeldistributiondetailinfosecondclass_tmp = TextLabelDistributionDetailInfoSecondClass.new
              textlabeldistributiondetailinfosecondclass_tmp.deserialize(i)
              @ChildLabelList << textlabeldistributiondetailinfosecondclass_tmp
            end
          end
        end
      end

      # 四级标签
      class TextLabelDistributionDetailInfoFourthClass < TencentCloud::Common::AbstractModel
        # @param LabelValue: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValue: String
        # @param LabelCount: 标签个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelCount: Integer
        # @param LabelPercentage: 标签占比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelPercentage: Float
        # @param ChildLabelList: 子标签分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChildLabelList: Array

        attr_accessor :LabelValue, :LabelCount, :LabelPercentage, :ChildLabelList
        
        def initialize(labelvalue=nil, labelcount=nil, labelpercentage=nil, childlabellist=nil)
          @LabelValue = labelvalue
          @LabelCount = labelcount
          @LabelPercentage = labelpercentage
          @ChildLabelList = childlabellist
        end

        def deserialize(params)
          @LabelValue = params['LabelValue']
          @LabelCount = params['LabelCount']
          @LabelPercentage = params['LabelPercentage']
          unless params['ChildLabelList'].nil?
            @ChildLabelList = []
            params['ChildLabelList'].each do |i|
              textlabeldistributiondetailinfofifthclass_tmp = TextLabelDistributionDetailInfoFifthClass.new
              textlabeldistributiondetailinfofifthclass_tmp.deserialize(i)
              @ChildLabelList << textlabeldistributiondetailinfofifthclass_tmp
            end
          end
        end
      end

      # 二级标签
      class TextLabelDistributionDetailInfoSecondClass < TencentCloud::Common::AbstractModel
        # @param LabelValue: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValue: String
        # @param LabelCount: 标签个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelCount: Integer
        # @param LabelPercentage: 标签占比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelPercentage: Float
        # @param ChildLabelList: 子标签分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChildLabelList: Array

        attr_accessor :LabelValue, :LabelCount, :LabelPercentage, :ChildLabelList
        
        def initialize(labelvalue=nil, labelcount=nil, labelpercentage=nil, childlabellist=nil)
          @LabelValue = labelvalue
          @LabelCount = labelcount
          @LabelPercentage = labelpercentage
          @ChildLabelList = childlabellist
        end

        def deserialize(params)
          @LabelValue = params['LabelValue']
          @LabelCount = params['LabelCount']
          @LabelPercentage = params['LabelPercentage']
          unless params['ChildLabelList'].nil?
            @ChildLabelList = []
            params['ChildLabelList'].each do |i|
              textlabeldistributiondetailinfothirdclass_tmp = TextLabelDistributionDetailInfoThirdClass.new
              textlabeldistributiondetailinfothirdclass_tmp.deserialize(i)
              @ChildLabelList << textlabeldistributiondetailinfothirdclass_tmp
            end
          end
        end
      end

      # 三级标签
      class TextLabelDistributionDetailInfoThirdClass < TencentCloud::Common::AbstractModel
        # @param LabelValue: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValue: String
        # @param LabelCount: 标签个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelCount: Integer
        # @param LabelPercentage: 标签占比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelPercentage: Float
        # @param ChildLabelList: 子标签分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChildLabelList: Array

        attr_accessor :LabelValue, :LabelCount, :LabelPercentage, :ChildLabelList
        
        def initialize(labelvalue=nil, labelcount=nil, labelpercentage=nil, childlabellist=nil)
          @LabelValue = labelvalue
          @LabelCount = labelcount
          @LabelPercentage = labelpercentage
          @ChildLabelList = childlabellist
        end

        def deserialize(params)
          @LabelValue = params['LabelValue']
          @LabelCount = params['LabelCount']
          @LabelPercentage = params['LabelPercentage']
          unless params['ChildLabelList'].nil?
            @ChildLabelList = []
            params['ChildLabelList'].each do |i|
              textlabeldistributiondetailinfofourthclass_tmp = TextLabelDistributionDetailInfoFourthClass.new
              textlabeldistributiondetailinfofourthclass_tmp.deserialize(i)
              @ChildLabelList << textlabeldistributiondetailinfofourthclass_tmp
            end
          end
        end
      end

      # 文本标签
      class TextLabelDistributionInfo < TencentCloud::Common::AbstractModel
        # @param Theme: 文本分类题目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Theme: String
        # @param ClassLabelList: 一级标签分布
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassLabelList: Array

        attr_accessor :Theme, :ClassLabelList
        
        def initialize(theme=nil, classlabellist=nil)
          @Theme = theme
          @ClassLabelList = classlabellist
        end

        def deserialize(params)
          @Theme = params['Theme']
          unless params['ClassLabelList'].nil?
            @ClassLabelList = []
            params['ClassLabelList'].each do |i|
              textlabeldistributiondetailinfofirstclass_tmp = TextLabelDistributionDetailInfoFirstClass.new
              textlabeldistributiondetailinfofirstclass_tmp.deserialize(i)
              @ClassLabelList << textlabeldistributiondetailinfofirstclass_tmp
            end
          end
        end
      end

      # 训练数据
      class TrainingDataPoint < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # 训练指标
      class TrainingMetric < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param Values: 数据值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array
        # @param Epochs: 上报的Epoch. 可能为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Epochs: Array
        # @param Steps: 上报的Step. 可能为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Steps: Array
        # @param TotalSteps: 上报的TotalSteps. 可能为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalSteps: Array

        attr_accessor :MetricName, :Values, :Epochs, :Steps, :TotalSteps
        
        def initialize(metricname=nil, values=nil, epochs=nil, steps=nil, totalsteps=nil)
          @MetricName = metricname
          @Values = values
          @Epochs = epochs
          @Steps = steps
          @TotalSteps = totalsteps
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          unless params['Values'].nil?
            @Values = []
            params['Values'].each do |i|
              trainingdatapoint_tmp = TrainingDataPoint.new
              trainingdatapoint_tmp.deserialize(i)
              @Values << trainingdatapoint_tmp
            end
          end
          unless params['Epochs'].nil?
            @Epochs = []
            params['Epochs'].each do |i|
              trainingdatapoint_tmp = TrainingDataPoint.new
              trainingdatapoint_tmp.deserialize(i)
              @Epochs << trainingdatapoint_tmp
            end
          end
          unless params['Steps'].nil?
            @Steps = []
            params['Steps'].each do |i|
              trainingdatapoint_tmp = TrainingDataPoint.new
              trainingdatapoint_tmp.deserialize(i)
              @Steps << trainingdatapoint_tmp
            end
          end
          unless params['TotalSteps'].nil?
            @TotalSteps = []
            params['TotalSteps'].each do |i|
              trainingdatapoint_tmp = TrainingDataPoint.new
              trainingdatapoint_tmp.deserialize(i)
              @TotalSteps << trainingdatapoint_tmp
            end
          end
        end
      end

      # 模型列表
      class TrainingModelDTO < TencentCloud::Common::AbstractModel
        # @param TrainingModelId: 模型id
        # @type TrainingModelId: String
        # @param TrainingModelName: 模型名称
        # @type TrainingModelName: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param CreateTime: 模型创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String

        attr_accessor :TrainingModelId, :TrainingModelName, :Tags, :CreateTime
        
        def initialize(trainingmodelid=nil, trainingmodelname=nil, tags=nil, createtime=nil)
          @TrainingModelId = trainingmodelid
          @TrainingModelName = trainingmodelname
          @Tags = tags
          @CreateTime = createtime
        end

        def deserialize(params)
          @TrainingModelId = params['TrainingModelId']
          @TrainingModelName = params['TrainingModelName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @CreateTime = params['CreateTime']
        end
      end

      # 模型版本列表
      class TrainingModelVersionDTO < TencentCloud::Common::AbstractModel
        # @param TrainingModelId: 模型id
        # @type TrainingModelId: String
        # @param TrainingModelVersionId: 模型版本id
        # @type TrainingModelVersionId: String
        # @param TrainingModelVersion: 模型版本
        # @type TrainingModelVersion: String
        # @param TrainingModelSource: 模型来源
        # @type TrainingModelSource: String
        # @param TrainingModelCreateTime: 创建时间
        # @type TrainingModelCreateTime: String
        # @param TrainingModelCreator: 创建人uin
        # @type TrainingModelCreator: String
        # @param AlgorithmFramework: 算法框架
        # @type AlgorithmFramework: String
        # @param ReasoningEnvironment: 推理环境
        # @type ReasoningEnvironment: String
        # @param ReasoningEnvironmentSource: 推理环境来源
        # @type ReasoningEnvironmentSource: String
        # @param TrainingModelIndex: 模型指标
        # @type TrainingModelIndex: String
        # @param TrainingJobName: 训练任务名称
        # @type TrainingJobName: String
        # @param TrainingModelCosPath: 模型cos路径
        # @type TrainingModelCosPath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param TrainingModelName: 模型名称
        # @type TrainingModelName: String
        # @param TrainingJobId: 训练任务id
        # @type TrainingJobId: String
        # @param ReasoningImageInfo: 自定义推理环境
        # @type ReasoningImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param CreateTime: 模型版本创建时间
        # @type CreateTime: String
        # @param TrainingModelStatus: 模型处理状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingModelStatus: String
        # @param TrainingModelProgress: 模型处理进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingModelProgress: Integer
        # @param TrainingModelErrorMsg: 模型错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingModelErrorMsg: String
        # @param TrainingModelFormat: 模型格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingModelFormat: String
        # @param VersionType: 模型版本类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionType: String
        # @param GPUType: GPU类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GPUType: String
        # @param AutoClean: 模型自动清理开关
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoClean: String
        # @param ModelCleanPeriod: 模型清理周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelCleanPeriod: Integer
        # @param MaxReservedModels: 模型数量保留上限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxReservedModels: Integer
        # @param ModelHotUpdatePath: 模型热更新目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelHotUpdatePath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`

        attr_accessor :TrainingModelId, :TrainingModelVersionId, :TrainingModelVersion, :TrainingModelSource, :TrainingModelCreateTime, :TrainingModelCreator, :AlgorithmFramework, :ReasoningEnvironment, :ReasoningEnvironmentSource, :TrainingModelIndex, :TrainingJobName, :TrainingModelCosPath, :TrainingModelName, :TrainingJobId, :ReasoningImageInfo, :CreateTime, :TrainingModelStatus, :TrainingModelProgress, :TrainingModelErrorMsg, :TrainingModelFormat, :VersionType, :GPUType, :AutoClean, :ModelCleanPeriod, :MaxReservedModels, :ModelHotUpdatePath
        
        def initialize(trainingmodelid=nil, trainingmodelversionid=nil, trainingmodelversion=nil, trainingmodelsource=nil, trainingmodelcreatetime=nil, trainingmodelcreator=nil, algorithmframework=nil, reasoningenvironment=nil, reasoningenvironmentsource=nil, trainingmodelindex=nil, trainingjobname=nil, trainingmodelcospath=nil, trainingmodelname=nil, trainingjobid=nil, reasoningimageinfo=nil, createtime=nil, trainingmodelstatus=nil, trainingmodelprogress=nil, trainingmodelerrormsg=nil, trainingmodelformat=nil, versiontype=nil, gputype=nil, autoclean=nil, modelcleanperiod=nil, maxreservedmodels=nil, modelhotupdatepath=nil)
          @TrainingModelId = trainingmodelid
          @TrainingModelVersionId = trainingmodelversionid
          @TrainingModelVersion = trainingmodelversion
          @TrainingModelSource = trainingmodelsource
          @TrainingModelCreateTime = trainingmodelcreatetime
          @TrainingModelCreator = trainingmodelcreator
          @AlgorithmFramework = algorithmframework
          @ReasoningEnvironment = reasoningenvironment
          @ReasoningEnvironmentSource = reasoningenvironmentsource
          @TrainingModelIndex = trainingmodelindex
          @TrainingJobName = trainingjobname
          @TrainingModelCosPath = trainingmodelcospath
          @TrainingModelName = trainingmodelname
          @TrainingJobId = trainingjobid
          @ReasoningImageInfo = reasoningimageinfo
          @CreateTime = createtime
          @TrainingModelStatus = trainingmodelstatus
          @TrainingModelProgress = trainingmodelprogress
          @TrainingModelErrorMsg = trainingmodelerrormsg
          @TrainingModelFormat = trainingmodelformat
          @VersionType = versiontype
          @GPUType = gputype
          @AutoClean = autoclean
          @ModelCleanPeriod = modelcleanperiod
          @MaxReservedModels = maxreservedmodels
          @ModelHotUpdatePath = modelhotupdatepath
        end

        def deserialize(params)
          @TrainingModelId = params['TrainingModelId']
          @TrainingModelVersionId = params['TrainingModelVersionId']
          @TrainingModelVersion = params['TrainingModelVersion']
          @TrainingModelSource = params['TrainingModelSource']
          @TrainingModelCreateTime = params['TrainingModelCreateTime']
          @TrainingModelCreator = params['TrainingModelCreator']
          @AlgorithmFramework = params['AlgorithmFramework']
          @ReasoningEnvironment = params['ReasoningEnvironment']
          @ReasoningEnvironmentSource = params['ReasoningEnvironmentSource']
          @TrainingModelIndex = params['TrainingModelIndex']
          @TrainingJobName = params['TrainingJobName']
          unless params['TrainingModelCosPath'].nil?
            @TrainingModelCosPath = CosPathInfo.new
            @TrainingModelCosPath.deserialize(params['TrainingModelCosPath'])
          end
          @TrainingModelName = params['TrainingModelName']
          @TrainingJobId = params['TrainingJobId']
          unless params['ReasoningImageInfo'].nil?
            @ReasoningImageInfo = ImageInfo.new
            @ReasoningImageInfo.deserialize(params['ReasoningImageInfo'])
          end
          @CreateTime = params['CreateTime']
          @TrainingModelStatus = params['TrainingModelStatus']
          @TrainingModelProgress = params['TrainingModelProgress']
          @TrainingModelErrorMsg = params['TrainingModelErrorMsg']
          @TrainingModelFormat = params['TrainingModelFormat']
          @VersionType = params['VersionType']
          @GPUType = params['GPUType']
          @AutoClean = params['AutoClean']
          @ModelCleanPeriod = params['ModelCleanPeriod']
          @MaxReservedModels = params['MaxReservedModels']
          unless params['ModelHotUpdatePath'].nil?
            @ModelHotUpdatePath = CosPathInfo.new
            @ModelHotUpdatePath.deserialize(params['ModelHotUpdatePath'])
          end
        end
      end

      # 训练任务详情
      class TrainingTaskDetail < TencentCloud::Common::AbstractModel
        # @param Id: 训练任务ID
        # @type Id: String
        # @param Name: 训练任务名称
        # @type Name: String
        # @param Uin: 主账号uin
        # @type Uin: String
        # @param SubUin: 子账号uin
        # @type SubUin: String
        # @param Region: 地域
        # @type Region: String
        # @param FrameworkName: 训练框架名称，eg：SPARK、TENSORFLOW、PYTORCH、LIGHT
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameworkName: String
        # @param FrameworkVersion: 训练框架版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameworkVersion: String
        # @param TrainingMode: 训练模式，eg：PS_WORKER、DDP、MPI、HOROVOD
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingMode: String
        # @param ChargeType: 计费模式
        # @type ChargeType: String
        # @param ResourceGroupId: 预付费专用资源组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ResourceConfigInfos: 资源配置
        # @type ResourceConfigInfos: Array
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param ImageInfo: 自定义镜像信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param CodePackagePath: 代码包
        # @type CodePackagePath: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param StartCmdInfo: 启动命令信息
        # @type StartCmdInfo: :class:`Tencentcloud::Tione.v20211111.models.StartCmdInfo`
        # @param DataSource: 数据来源，eg：DATASET、COS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSource: String
        # @param DataConfigs: 数据配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataConfigs: Array
        # @param TuningParameters: 调优参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TuningParameters: String
        # @param Output: 训练输出
        # @type Output: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param LogEnable: 是否上报日志
        # @type LogEnable: Boolean
        # @param LogConfig: 日志配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogConfig: :class:`Tencentcloud::Tione.v20211111.models.LogConfig`
        # @param VpcId: VPC ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param Status: 任务状态
        # @type Status: String
        # @param RuntimeInSeconds: 运行时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeInSeconds: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param StartTime: 训练开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param ChargeStatus: 计费状态，eg：BILLING计费中，ARREARS_STOP欠费停止，NOT_BILLING不在计费中
        # @type ChargeStatus: String
        # @param LatestInstanceId: 最近一次实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestInstanceId: String
        # @param TensorBoardId: TensorBoard ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TensorBoardId: String
        # @param Remark: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param FailureReason: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureReason: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param EndTime: 训练结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param BillingInfo: 计费金额信息，eg：2.00元/小时 (for后付费)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingInfo: String
        # @param ResourceGroupName: 预付费专用资源组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param Message: 任务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :Id, :Name, :Uin, :SubUin, :Region, :FrameworkName, :FrameworkVersion, :TrainingMode, :ChargeType, :ResourceGroupId, :ResourceConfigInfos, :Tags, :ImageInfo, :CodePackagePath, :StartCmdInfo, :DataSource, :DataConfigs, :TuningParameters, :Output, :LogEnable, :LogConfig, :VpcId, :SubnetId, :Status, :RuntimeInSeconds, :CreateTime, :StartTime, :ChargeStatus, :LatestInstanceId, :TensorBoardId, :Remark, :FailureReason, :UpdateTime, :EndTime, :BillingInfo, :ResourceGroupName, :Message
        
        def initialize(id=nil, name=nil, uin=nil, subuin=nil, region=nil, frameworkname=nil, frameworkversion=nil, trainingmode=nil, chargetype=nil, resourcegroupid=nil, resourceconfiginfos=nil, tags=nil, imageinfo=nil, codepackagepath=nil, startcmdinfo=nil, datasource=nil, dataconfigs=nil, tuningparameters=nil, output=nil, logenable=nil, logconfig=nil, vpcid=nil, subnetid=nil, status=nil, runtimeinseconds=nil, createtime=nil, starttime=nil, chargestatus=nil, latestinstanceid=nil, tensorboardid=nil, remark=nil, failurereason=nil, updatetime=nil, endtime=nil, billinginfo=nil, resourcegroupname=nil, message=nil)
          @Id = id
          @Name = name
          @Uin = uin
          @SubUin = subuin
          @Region = region
          @FrameworkName = frameworkname
          @FrameworkVersion = frameworkversion
          @TrainingMode = trainingmode
          @ChargeType = chargetype
          @ResourceGroupId = resourcegroupid
          @ResourceConfigInfos = resourceconfiginfos
          @Tags = tags
          @ImageInfo = imageinfo
          @CodePackagePath = codepackagepath
          @StartCmdInfo = startcmdinfo
          @DataSource = datasource
          @DataConfigs = dataconfigs
          @TuningParameters = tuningparameters
          @Output = output
          @LogEnable = logenable
          @LogConfig = logconfig
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @RuntimeInSeconds = runtimeinseconds
          @CreateTime = createtime
          @StartTime = starttime
          @ChargeStatus = chargestatus
          @LatestInstanceId = latestinstanceid
          @TensorBoardId = tensorboardid
          @Remark = remark
          @FailureReason = failurereason
          @UpdateTime = updatetime
          @EndTime = endtime
          @BillingInfo = billinginfo
          @ResourceGroupName = resourcegroupname
          @Message = message
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Uin = params['Uin']
          @SubUin = params['SubUin']
          @Region = params['Region']
          @FrameworkName = params['FrameworkName']
          @FrameworkVersion = params['FrameworkVersion']
          @TrainingMode = params['TrainingMode']
          @ChargeType = params['ChargeType']
          @ResourceGroupId = params['ResourceGroupId']
          unless params['ResourceConfigInfos'].nil?
            @ResourceConfigInfos = []
            params['ResourceConfigInfos'].each do |i|
              resourceconfiginfo_tmp = ResourceConfigInfo.new
              resourceconfiginfo_tmp.deserialize(i)
              @ResourceConfigInfos << resourceconfiginfo_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          unless params['CodePackagePath'].nil?
            @CodePackagePath = CosPathInfo.new
            @CodePackagePath.deserialize(params['CodePackagePath'])
          end
          unless params['StartCmdInfo'].nil?
            @StartCmdInfo = StartCmdInfo.new
            @StartCmdInfo.deserialize(params['StartCmdInfo'])
          end
          @DataSource = params['DataSource']
          unless params['DataConfigs'].nil?
            @DataConfigs = []
            params['DataConfigs'].each do |i|
              dataconfig_tmp = DataConfig.new
              dataconfig_tmp.deserialize(i)
              @DataConfigs << dataconfig_tmp
            end
          end
          @TuningParameters = params['TuningParameters']
          unless params['Output'].nil?
            @Output = CosPathInfo.new
            @Output.deserialize(params['Output'])
          end
          @LogEnable = params['LogEnable']
          unless params['LogConfig'].nil?
            @LogConfig = LogConfig.new
            @LogConfig.deserialize(params['LogConfig'])
          end
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @RuntimeInSeconds = params['RuntimeInSeconds']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @ChargeStatus = params['ChargeStatus']
          @LatestInstanceId = params['LatestInstanceId']
          @TensorBoardId = params['TensorBoardId']
          @Remark = params['Remark']
          @FailureReason = params['FailureReason']
          @UpdateTime = params['UpdateTime']
          @EndTime = params['EndTime']
          @BillingInfo = params['BillingInfo']
          @ResourceGroupName = params['ResourceGroupName']
          @Message = params['Message']
        end
      end

      # 出参类型
      class TrainingTaskSetItem < TencentCloud::Common::AbstractModel
        # @param Id: 训练任务ID
        # @type Id: String
        # @param Name: 训练任务名称
        # @type Name: String
        # @param FrameworkName: 框架名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameworkName: String
        # @param FrameworkVersion: 训练框架版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameworkVersion: String
        # @param TrainingMode: 训练模式eg：PS_WORKER、DDP、MPI、HOROVOD
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingMode: String
        # @param ChargeType: 计费模式
        # @type ChargeType: String
        # @param ChargeStatus: 计费状态，eg：BILLING计费中，ARREARS_STOP欠费停止，NOT_BILLING不在计费中
        # @type ChargeStatus: String
        # @param ResourceGroupId: 预付费专用资源组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ResourceConfigInfos: 资源配置
        # @type ResourceConfigInfos: Array
        # @param Tags: 标签配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Status: 任务状态
        # @type Status: String
        # @param RuntimeInSeconds: 运行时长
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimeInSeconds: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param StartTime: 训练开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 训练结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Output: 训练输出
        # @type Output: :class:`Tencentcloud::Tione.v20211111.models.CosPathInfo`
        # @param FailureReason: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureReason: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param BillingInfo: 计费金额信息，eg：2.00元/小时 (for后付费)
        # @type BillingInfo: String
        # @param ResourceGroupName: 预付费专用资源组名称
        # @type ResourceGroupName: String
        # @param ImageInfo: 自定义镜像信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageInfo: :class:`Tencentcloud::Tione.v20211111.models.ImageInfo`
        # @param Message: 任务信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :Id, :Name, :FrameworkName, :FrameworkVersion, :TrainingMode, :ChargeType, :ChargeStatus, :ResourceGroupId, :ResourceConfigInfos, :Tags, :Status, :RuntimeInSeconds, :CreateTime, :StartTime, :EndTime, :Output, :FailureReason, :UpdateTime, :BillingInfo, :ResourceGroupName, :ImageInfo, :Message
        
        def initialize(id=nil, name=nil, frameworkname=nil, frameworkversion=nil, trainingmode=nil, chargetype=nil, chargestatus=nil, resourcegroupid=nil, resourceconfiginfos=nil, tags=nil, status=nil, runtimeinseconds=nil, createtime=nil, starttime=nil, endtime=nil, output=nil, failurereason=nil, updatetime=nil, billinginfo=nil, resourcegroupname=nil, imageinfo=nil, message=nil)
          @Id = id
          @Name = name
          @FrameworkName = frameworkname
          @FrameworkVersion = frameworkversion
          @TrainingMode = trainingmode
          @ChargeType = chargetype
          @ChargeStatus = chargestatus
          @ResourceGroupId = resourcegroupid
          @ResourceConfigInfos = resourceconfiginfos
          @Tags = tags
          @Status = status
          @RuntimeInSeconds = runtimeinseconds
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
          @Output = output
          @FailureReason = failurereason
          @UpdateTime = updatetime
          @BillingInfo = billinginfo
          @ResourceGroupName = resourcegroupname
          @ImageInfo = imageinfo
          @Message = message
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @FrameworkName = params['FrameworkName']
          @FrameworkVersion = params['FrameworkVersion']
          @TrainingMode = params['TrainingMode']
          @ChargeType = params['ChargeType']
          @ChargeStatus = params['ChargeStatus']
          @ResourceGroupId = params['ResourceGroupId']
          unless params['ResourceConfigInfos'].nil?
            @ResourceConfigInfos = []
            params['ResourceConfigInfos'].each do |i|
              resourceconfiginfo_tmp = ResourceConfigInfo.new
              resourceconfiginfo_tmp.deserialize(i)
              @ResourceConfigInfos << resourceconfiginfo_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Status = params['Status']
          @RuntimeInSeconds = params['RuntimeInSeconds']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['Output'].nil?
            @Output = CosPathInfo.new
            @Output.deserialize(params['Output'])
          end
          @FailureReason = params['FailureReason']
          @UpdateTime = params['UpdateTime']
          @BillingInfo = params['BillingInfo']
          @ResourceGroupName = params['ResourceGroupName']
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          @Message = params['Message']
        end
      end

    end
  end
end

