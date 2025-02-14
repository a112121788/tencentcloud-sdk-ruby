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
  module Dlc
    module V20210125
      # AddDMSPartitions请求参数结构体
      class AddDMSPartitionsRequest < TencentCloud::Common::AbstractModel
        # @param Partitions: 分区
        # @type Partitions: Array

        attr_accessor :Partitions
        
        def initialize(partitions=nil)
          @Partitions = partitions
        end

        def deserialize(params)
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              dmspartition_tmp = DMSPartition.new
              dmspartition_tmp.deserialize(i)
              @Partitions << dmspartition_tmp
            end
          end
        end
      end

      # AddDMSPartitions返回参数结构体
      class AddDMSPartitionsResponse < TencentCloud::Common::AbstractModel
        # @param Total: 成功数量
        # @type Total: Integer
        # @param Partitions: 分区值
        # @type Partitions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Partitions, :RequestId
        
        def initialize(total=nil, partitions=nil, requestid=nil)
          @Total = total
          @Partitions = partitions
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              dmspartition_tmp = DMSPartition.new
              dmspartition_tmp.deserialize(i)
              @Partitions << dmspartition_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # AddUsersToWorkGroup请求参数结构体
      class AddUsersToWorkGroupRequest < TencentCloud::Common::AbstractModel
        # @param AddInfo: 要操作的工作组和用户信息
        # @type AddInfo: :class:`Tencentcloud::Dlc.v20210125.models.UserIdSetOfWorkGroupId`

        attr_accessor :AddInfo
        
        def initialize(addinfo=nil)
          @AddInfo = addinfo
        end

        def deserialize(params)
          unless params['AddInfo'].nil?
            @AddInfo = UserIdSetOfWorkGroupId.new
            @AddInfo.deserialize(params['AddInfo'])
          end
        end
      end

      # AddUsersToWorkGroup返回参数结构体
      class AddUsersToWorkGroupResponse < TencentCloud::Common::AbstractModel
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

      # AlterDMSDatabase请求参数结构体
      class AlterDMSDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param CurrentName: 当前名称
        # @type CurrentName: String
        # @param SchemaName: schema名称
        # @type SchemaName: String
        # @param Location: 路径
        # @type Location: String
        # @param Asset: 基础对象
        # @type Asset: :class:`Tencentcloud::Dlc.v20210125.models.Asset`

        attr_accessor :CurrentName, :SchemaName, :Location, :Asset
        
        def initialize(currentname=nil, schemaname=nil, location=nil, asset=nil)
          @CurrentName = currentname
          @SchemaName = schemaname
          @Location = location
          @Asset = asset
        end

        def deserialize(params)
          @CurrentName = params['CurrentName']
          @SchemaName = params['SchemaName']
          @Location = params['Location']
          unless params['Asset'].nil?
            @Asset = Asset.new
            @Asset.deserialize(params['Asset'])
          end
        end
      end

      # AlterDMSDatabase返回参数结构体
      class AlterDMSDatabaseResponse < TencentCloud::Common::AbstractModel
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

      # AlterDMSPartition请求参数结构体
      class AlterDMSPartitionRequest < TencentCloud::Common::AbstractModel
        # @param CurrentDbName: 当前名称，变更前db名称
        # @type CurrentDbName: String
        # @param CurrentTableName: 当前名称，变更前table名称
        # @type CurrentTableName: String
        # @param CurrentValues: 当前名称，变更前Part名称
        # @type CurrentValues: String
        # @param Partition: 分区
        # @type Partition: :class:`Tencentcloud::Dlc.v20210125.models.DMSPartition`

        attr_accessor :CurrentDbName, :CurrentTableName, :CurrentValues, :Partition
        
        def initialize(currentdbname=nil, currenttablename=nil, currentvalues=nil, partition=nil)
          @CurrentDbName = currentdbname
          @CurrentTableName = currenttablename
          @CurrentValues = currentvalues
          @Partition = partition
        end

        def deserialize(params)
          @CurrentDbName = params['CurrentDbName']
          @CurrentTableName = params['CurrentTableName']
          @CurrentValues = params['CurrentValues']
          unless params['Partition'].nil?
            @Partition = DMSPartition.new
            @Partition.deserialize(params['Partition'])
          end
        end
      end

      # AlterDMSPartition返回参数结构体
      class AlterDMSPartitionResponse < TencentCloud::Common::AbstractModel
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

      # AlterDMSTable请求参数结构体
      class AlterDMSTableRequest < TencentCloud::Common::AbstractModel
        # @param CurrentName: 当前名称
        # @type CurrentName: String
        # @param CurrentDbName: 当前数据库名称
        # @type CurrentDbName: String
        # @param Asset: 基础对象
        # @type Asset: :class:`Tencentcloud::Dlc.v20210125.models.Asset`
        # @param Type: 表类型
        # @type Type: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param StorageSize: 存储大小
        # @type StorageSize: Integer
        # @param RecordCount: 记录数量
        # @type RecordCount: Integer
        # @param LifeTime: 生命周期
        # @type LifeTime: Integer
        # @param DataUpdateTime: 数据更新时间
        # @type DataUpdateTime: String
        # @param StructUpdateTime: 结构更新时间
        # @type StructUpdateTime: String
        # @param LastAccessTime: 最后访问时间
        # @type LastAccessTime: String
        # @param Sds: 存储对象
        # @type Sds: :class:`Tencentcloud::Dlc.v20210125.models.DMSSds`
        # @param Columns: 列
        # @type Columns: Array
        # @param PartitionKeys: 分区键值
        # @type PartitionKeys: Array
        # @param ViewOriginalText: 视图文本
        # @type ViewOriginalText: String
        # @param ViewExpandedText: 视图文本
        # @type ViewExpandedText: String
        # @param Partitions: 分区
        # @type Partitions: Array
        # @param Name: 当前表名
        # @type Name: String

        attr_accessor :CurrentName, :CurrentDbName, :Asset, :Type, :DbName, :StorageSize, :RecordCount, :LifeTime, :DataUpdateTime, :StructUpdateTime, :LastAccessTime, :Sds, :Columns, :PartitionKeys, :ViewOriginalText, :ViewExpandedText, :Partitions, :Name
        
        def initialize(currentname=nil, currentdbname=nil, asset=nil, type=nil, dbname=nil, storagesize=nil, recordcount=nil, lifetime=nil, dataupdatetime=nil, structupdatetime=nil, lastaccesstime=nil, sds=nil, columns=nil, partitionkeys=nil, vieworiginaltext=nil, viewexpandedtext=nil, partitions=nil, name=nil)
          @CurrentName = currentname
          @CurrentDbName = currentdbname
          @Asset = asset
          @Type = type
          @DbName = dbname
          @StorageSize = storagesize
          @RecordCount = recordcount
          @LifeTime = lifetime
          @DataUpdateTime = dataupdatetime
          @StructUpdateTime = structupdatetime
          @LastAccessTime = lastaccesstime
          @Sds = sds
          @Columns = columns
          @PartitionKeys = partitionkeys
          @ViewOriginalText = vieworiginaltext
          @ViewExpandedText = viewexpandedtext
          @Partitions = partitions
          @Name = name
        end

        def deserialize(params)
          @CurrentName = params['CurrentName']
          @CurrentDbName = params['CurrentDbName']
          unless params['Asset'].nil?
            @Asset = Asset.new
            @Asset.deserialize(params['Asset'])
          end
          @Type = params['Type']
          @DbName = params['DbName']
          @StorageSize = params['StorageSize']
          @RecordCount = params['RecordCount']
          @LifeTime = params['LifeTime']
          @DataUpdateTime = params['DataUpdateTime']
          @StructUpdateTime = params['StructUpdateTime']
          @LastAccessTime = params['LastAccessTime']
          unless params['Sds'].nil?
            @Sds = DMSSds.new
            @Sds.deserialize(params['Sds'])
          end
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @Columns << dmscolumn_tmp
            end
          end
          unless params['PartitionKeys'].nil?
            @PartitionKeys = []
            params['PartitionKeys'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @PartitionKeys << dmscolumn_tmp
            end
          end
          @ViewOriginalText = params['ViewOriginalText']
          @ViewExpandedText = params['ViewExpandedText']
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              dmspartition_tmp = DMSPartition.new
              dmspartition_tmp.deserialize(i)
              @Partitions << dmspartition_tmp
            end
          end
          @Name = params['Name']
        end
      end

      # AlterDMSTable返回参数结构体
      class AlterDMSTableResponse < TencentCloud::Common::AbstractModel
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

      # 元数据基本对象
      class Asset < TencentCloud::Common::AbstractModel
        # @param Id: 主键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Guid: 对象GUID值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Guid: String
        # @param Catalog: 数据目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Catalog: String
        # @param Description: 描述信息
        # @type Description: String
        # @param Owner: 对象owner
        # @type Owner: String
        # @param OwnerAccount: 对象owner账户
        # @type OwnerAccount: String
        # @param PermValues: 权限
        # @type PermValues: Array
        # @param Params: 附加属性
        # @type Params: Array
        # @param BizParams: 附加业务属性
        # @type BizParams: Array
        # @param DataVersion: 数据版本
        # @type DataVersion: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifiedTime: 修改时间
        # @type ModifiedTime: String
        # @param DatasourceId: 数据源主键
        # @type DatasourceId: Integer

        attr_accessor :Id, :Name, :Guid, :Catalog, :Description, :Owner, :OwnerAccount, :PermValues, :Params, :BizParams, :DataVersion, :CreateTime, :ModifiedTime, :DatasourceId
        
        def initialize(id=nil, name=nil, guid=nil, catalog=nil, description=nil, owner=nil, owneraccount=nil, permvalues=nil, params=nil, bizparams=nil, dataversion=nil, createtime=nil, modifiedtime=nil, datasourceid=nil)
          @Id = id
          @Name = name
          @Guid = guid
          @Catalog = catalog
          @Description = description
          @Owner = owner
          @OwnerAccount = owneraccount
          @PermValues = permvalues
          @Params = params
          @BizParams = bizparams
          @DataVersion = dataversion
          @CreateTime = createtime
          @ModifiedTime = modifiedtime
          @DatasourceId = datasourceid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Guid = params['Guid']
          @Catalog = params['Catalog']
          @Description = params['Description']
          @Owner = params['Owner']
          @OwnerAccount = params['OwnerAccount']
          unless params['PermValues'].nil?
            @PermValues = []
            params['PermValues'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @PermValues << kvpair_tmp
            end
          end
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Params << kvpair_tmp
            end
          end
          unless params['BizParams'].nil?
            @BizParams = []
            params['BizParams'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @BizParams << kvpair_tmp
            end
          end
          @DataVersion = params['DataVersion']
          @CreateTime = params['CreateTime']
          @ModifiedTime = params['ModifiedTime']
          @DatasourceId = params['DatasourceId']
        end
      end

      # AttachUserPolicy请求参数结构体
      class AttachUserPolicyRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id，和子用户uin相同，需要先使用CreateUser接口创建用户。可以使用DescribeUsers接口查看。
        # @type UserId: String
        # @param PolicySet: 鉴权策略集合
        # @type PolicySet: Array

        attr_accessor :UserId, :PolicySet
        
        def initialize(userid=nil, policyset=nil)
          @UserId = userid
          @PolicySet = policyset
        end

        def deserialize(params)
          @UserId = params['UserId']
          unless params['PolicySet'].nil?
            @PolicySet = []
            params['PolicySet'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicySet << policy_tmp
            end
          end
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

      # AttachWorkGroupPolicy请求参数结构体
      class AttachWorkGroupPolicyRequest < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 工作组Id
        # @type WorkGroupId: Integer
        # @param PolicySet: 要绑定的策略集合
        # @type PolicySet: Array

        attr_accessor :WorkGroupId, :PolicySet
        
        def initialize(workgroupid=nil, policyset=nil)
          @WorkGroupId = workgroupid
          @PolicySet = policyset
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
          unless params['PolicySet'].nil?
            @PolicySet = []
            params['PolicySet'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicySet << policy_tmp
            end
          end
        end
      end

      # AttachWorkGroupPolicy返回参数结构体
      class AttachWorkGroupPolicyResponse < TencentCloud::Common::AbstractModel
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

      # BindWorkGroupsToUser请求参数结构体
      class BindWorkGroupsToUserRequest < TencentCloud::Common::AbstractModel
        # @param AddInfo: 绑定的用户和工作组信息
        # @type AddInfo: :class:`Tencentcloud::Dlc.v20210125.models.WorkGroupIdSetOfUserId`

        attr_accessor :AddInfo
        
        def initialize(addinfo=nil)
          @AddInfo = addinfo
        end

        def deserialize(params)
          unless params['AddInfo'].nil?
            @AddInfo = WorkGroupIdSetOfUserId.new
            @AddInfo.deserialize(params['AddInfo'])
          end
        end
      end

      # BindWorkGroupsToUser返回参数结构体
      class BindWorkGroupsToUserResponse < TencentCloud::Common::AbstractModel
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

      # CSV类型数据格式
      class CSV < TencentCloud::Common::AbstractModel
        # @param CodeCompress: 压缩格式，["Snappy", "Gzip", "None"选一]。
        # @type CodeCompress: String
        # @param CSVSerde: CSV序列化及反序列化数据结构。
        # @type CSVSerde: :class:`Tencentcloud::Dlc.v20210125.models.CSVSerde`
        # @param HeadLines: 标题行，默认为0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeadLines: Integer
        # @param Format: 格式，默认值为CSV
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Format: String

        attr_accessor :CodeCompress, :CSVSerde, :HeadLines, :Format
        
        def initialize(codecompress=nil, csvserde=nil, headlines=nil, format=nil)
          @CodeCompress = codecompress
          @CSVSerde = csvserde
          @HeadLines = headlines
          @Format = format
        end

        def deserialize(params)
          @CodeCompress = params['CodeCompress']
          unless params['CSVSerde'].nil?
            @CSVSerde = CSVSerde.new
            @CSVSerde.deserialize(params['CSVSerde'])
          end
          @HeadLines = params['HeadLines']
          @Format = params['Format']
        end
      end

      # CSV序列化及反序列化数据结构
      class CSVSerde < TencentCloud::Common::AbstractModel
        # @param Escape: CSV序列化转义符，默认为"\\"，最长8个字符，如 Escape: "/\"
        # @type Escape: String
        # @param Quote: CSV序列化字段域符，默认为"'"，最长8个字符, 如 Quote: "\""
        # @type Quote: String
        # @param Separator: CSV序列化分隔符，默认为"\t"，最长8个字符, 如 Separator: "\t"
        # @type Separator: String

        attr_accessor :Escape, :Quote, :Separator
        
        def initialize(escape=nil, quote=nil, separator=nil)
          @Escape = escape
          @Quote = quote
          @Separator = separator
        end

        def deserialize(params)
          @Escape = params['Escape']
          @Quote = params['Quote']
          @Separator = params['Separator']
        end
      end

      # CancelTask请求参数结构体
      class CancelTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务Id，全局唯一
        # @type TaskId: String

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # CancelTask返回参数结构体
      class CancelTaskResponse < TencentCloud::Common::AbstractModel
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

      # CheckLockMetaData请求参数结构体
      class CheckLockMetaDataRequest < TencentCloud::Common::AbstractModel
        # @param LockId: 锁ID
        # @type LockId: Integer
        # @param DatasourceConnectionName: 数据源名称
        # @type DatasourceConnectionName: String
        # @param TxnId: 事务ID
        # @type TxnId: Integer
        # @param ElapsedMs: 过期时间ms
        # @type ElapsedMs: Integer

        attr_accessor :LockId, :DatasourceConnectionName, :TxnId, :ElapsedMs
        
        def initialize(lockid=nil, datasourceconnectionname=nil, txnid=nil, elapsedms=nil)
          @LockId = lockid
          @DatasourceConnectionName = datasourceconnectionname
          @TxnId = txnid
          @ElapsedMs = elapsedms
        end

        def deserialize(params)
          @LockId = params['LockId']
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @TxnId = params['TxnId']
          @ElapsedMs = params['ElapsedMs']
        end
      end

      # CheckLockMetaData返回参数结构体
      class CheckLockMetaDataResponse < TencentCloud::Common::AbstractModel
        # @param LockId: 锁ID
        # @type LockId: Integer
        # @param LockState: 锁状态：ACQUIRED、WAITING、ABORT、NOT_ACQUIRED
        # @type LockState: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LockId, :LockState, :RequestId
        
        def initialize(lockid=nil, lockstate=nil, requestid=nil)
          @LockId = lockid
          @LockState = lockstate
          @RequestId = requestid
        end

        def deserialize(params)
          @LockId = params['LockId']
          @LockState = params['LockState']
          @RequestId = params['RequestId']
        end
      end

      # 数据表列信息。
      class Column < TencentCloud::Common::AbstractModel
        # @param Name: 列名称，不区分大小写，最大支持25个字符。
        # @type Name: String
        # @param Type: 列类型，支持如下类型定义:
        # string|tinyint|smallint|int|bigint|boolean|float|double|decimal|timestamp|date|binary|array<data_type>|map<primitive_type, data_type>|struct<col_name : data_type [COMMENT col_comment], ...>|uniontype<data_type, data_type, ...>。
        # @type Type: String
        # @param Comment: 对该类的注释。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param Precision: 表示整个 numeric 的长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Precision: Integer
        # @param Scale: 表示小数部分的长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scale: Integer
        # @param Nullable: 是否为null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nullable: String
        # @param Position: 字段位置，小的在前
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Position: Integer
        # @param CreateTime: 字段创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ModifiedTime: 字段修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param IsPartition: 是否为分区字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPartition: Boolean

        attr_accessor :Name, :Type, :Comment, :Precision, :Scale, :Nullable, :Position, :CreateTime, :ModifiedTime, :IsPartition
        
        def initialize(name=nil, type=nil, comment=nil, precision=nil, scale=nil, nullable=nil, position=nil, createtime=nil, modifiedtime=nil, ispartition=nil)
          @Name = name
          @Type = type
          @Comment = comment
          @Precision = precision
          @Scale = scale
          @Nullable = nullable
          @Position = position
          @CreateTime = createtime
          @ModifiedTime = modifiedtime
          @IsPartition = ispartition
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Comment = params['Comment']
          @Precision = params['Precision']
          @Scale = params['Scale']
          @Nullable = params['Nullable']
          @Position = params['Position']
          @CreateTime = params['CreateTime']
          @ModifiedTime = params['ModifiedTime']
          @IsPartition = params['IsPartition']
        end
      end

      # CreateDMSDatabase请求参数结构体
      class CreateDMSDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param Asset: 基础元数据对象
        # @type Asset: :class:`Tencentcloud::Dlc.v20210125.models.Asset`
        # @param SchemaName: Schema目录
        # @type SchemaName: String
        # @param Location: Db存储路径
        # @type Location: String
        # @param Name: 数据库名称
        # @type Name: String

        attr_accessor :Asset, :SchemaName, :Location, :Name
        
        def initialize(asset=nil, schemaname=nil, location=nil, name=nil)
          @Asset = asset
          @SchemaName = schemaname
          @Location = location
          @Name = name
        end

        def deserialize(params)
          unless params['Asset'].nil?
            @Asset = Asset.new
            @Asset.deserialize(params['Asset'])
          end
          @SchemaName = params['SchemaName']
          @Location = params['Location']
          @Name = params['Name']
        end
      end

      # CreateDMSDatabase返回参数结构体
      class CreateDMSDatabaseResponse < TencentCloud::Common::AbstractModel
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

      # CreateDMSTable请求参数结构体
      class CreateDMSTableRequest < TencentCloud::Common::AbstractModel
        # @param Asset: 基础对象
        # @type Asset: :class:`Tencentcloud::Dlc.v20210125.models.Asset`
        # @param Type: 表类型
        # @type Type: String
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param StorageSize: 存储大小
        # @type StorageSize: Integer
        # @param RecordCount: 记录数量
        # @type RecordCount: Integer
        # @param LifeTime: 生命周期
        # @type LifeTime: Integer
        # @param DataUpdateTime: 数据更新时间
        # @type DataUpdateTime: String
        # @param StructUpdateTime: 结构更新时间
        # @type StructUpdateTime: String
        # @param LastAccessTime: 最后访问时间
        # @type LastAccessTime: String
        # @param Sds: 存储对象
        # @type Sds: :class:`Tencentcloud::Dlc.v20210125.models.DMSSds`
        # @param Columns: 列
        # @type Columns: Array
        # @param PartitionKeys: 分区键值
        # @type PartitionKeys: Array
        # @param ViewOriginalText: 视图文本
        # @type ViewOriginalText: String
        # @param ViewExpandedText: 视图文本
        # @type ViewExpandedText: String
        # @param Partitions: 分区
        # @type Partitions: Array
        # @param Name: 表名称
        # @type Name: String

        attr_accessor :Asset, :Type, :DbName, :StorageSize, :RecordCount, :LifeTime, :DataUpdateTime, :StructUpdateTime, :LastAccessTime, :Sds, :Columns, :PartitionKeys, :ViewOriginalText, :ViewExpandedText, :Partitions, :Name
        
        def initialize(asset=nil, type=nil, dbname=nil, storagesize=nil, recordcount=nil, lifetime=nil, dataupdatetime=nil, structupdatetime=nil, lastaccesstime=nil, sds=nil, columns=nil, partitionkeys=nil, vieworiginaltext=nil, viewexpandedtext=nil, partitions=nil, name=nil)
          @Asset = asset
          @Type = type
          @DbName = dbname
          @StorageSize = storagesize
          @RecordCount = recordcount
          @LifeTime = lifetime
          @DataUpdateTime = dataupdatetime
          @StructUpdateTime = structupdatetime
          @LastAccessTime = lastaccesstime
          @Sds = sds
          @Columns = columns
          @PartitionKeys = partitionkeys
          @ViewOriginalText = vieworiginaltext
          @ViewExpandedText = viewexpandedtext
          @Partitions = partitions
          @Name = name
        end

        def deserialize(params)
          unless params['Asset'].nil?
            @Asset = Asset.new
            @Asset.deserialize(params['Asset'])
          end
          @Type = params['Type']
          @DbName = params['DbName']
          @StorageSize = params['StorageSize']
          @RecordCount = params['RecordCount']
          @LifeTime = params['LifeTime']
          @DataUpdateTime = params['DataUpdateTime']
          @StructUpdateTime = params['StructUpdateTime']
          @LastAccessTime = params['LastAccessTime']
          unless params['Sds'].nil?
            @Sds = DMSSds.new
            @Sds.deserialize(params['Sds'])
          end
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @Columns << dmscolumn_tmp
            end
          end
          unless params['PartitionKeys'].nil?
            @PartitionKeys = []
            params['PartitionKeys'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @PartitionKeys << dmscolumn_tmp
            end
          end
          @ViewOriginalText = params['ViewOriginalText']
          @ViewExpandedText = params['ViewExpandedText']
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              dmspartition_tmp = DMSPartition.new
              dmspartition_tmp.deserialize(i)
              @Partitions << dmspartition_tmp
            end
          end
          @Name = params['Name']
        end
      end

      # CreateDMSTable返回参数结构体
      class CreateDMSTableResponse < TencentCloud::Common::AbstractModel
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

      # CreateDatabase请求参数结构体
      class CreateDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseInfo: 数据库基础信息
        # @type DatabaseInfo: :class:`Tencentcloud::Dlc.v20210125.models.DatabaseInfo`
        # @param DatasourceConnectionName: 数据源名称，默认为DataLakeCatalog
        # @type DatasourceConnectionName: String

        attr_accessor :DatabaseInfo, :DatasourceConnectionName
        
        def initialize(databaseinfo=nil, datasourceconnectionname=nil)
          @DatabaseInfo = databaseinfo
          @DatasourceConnectionName = datasourceconnectionname
        end

        def deserialize(params)
          unless params['DatabaseInfo'].nil?
            @DatabaseInfo = DatabaseInfo.new
            @DatabaseInfo.deserialize(params['DatabaseInfo'])
          end
          @DatasourceConnectionName = params['DatasourceConnectionName']
        end
      end

      # CreateDatabase返回参数结构体
      class CreateDatabaseResponse < TencentCloud::Common::AbstractModel
        # @param Execution: 生成的建库执行语句对象。
        # @type Execution: :class:`Tencentcloud::Dlc.v20210125.models.Execution`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Execution, :RequestId
        
        def initialize(execution=nil, requestid=nil)
          @Execution = execution
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Execution'].nil?
            @Execution = Execution.new
            @Execution.deserialize(params['Execution'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateExportTask请求参数结构体
      class CreateExportTaskRequest < TencentCloud::Common::AbstractModel
        # @param InputType: 数据来源，lakefsStorage、taskResult
        # @type InputType: String
        # @param InputConf: 导出任务输入配置
        # @type InputConf: Array
        # @param OutputConf: 导出任务输出配置
        # @type OutputConf: Array
        # @param OutputType: 目标数据源的类型，目前支持导出到cos
        # @type OutputType: String

        attr_accessor :InputType, :InputConf, :OutputConf, :OutputType
        
        def initialize(inputtype=nil, inputconf=nil, outputconf=nil, outputtype=nil)
          @InputType = inputtype
          @InputConf = inputconf
          @OutputConf = outputconf
          @OutputType = outputtype
        end

        def deserialize(params)
          @InputType = params['InputType']
          unless params['InputConf'].nil?
            @InputConf = []
            params['InputConf'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @InputConf << kvpair_tmp
            end
          end
          unless params['OutputConf'].nil?
            @OutputConf = []
            params['OutputConf'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @OutputConf << kvpair_tmp
            end
          end
          @OutputType = params['OutputType']
        end
      end

      # CreateExportTask返回参数结构体
      class CreateExportTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateImportTask请求参数结构体
      class CreateImportTaskRequest < TencentCloud::Common::AbstractModel
        # @param InputType: 数据来源，cos
        # @type InputType: String
        # @param InputConf: 输入配置
        # @type InputConf: Array
        # @param OutputConf: 输出配置
        # @type OutputConf: Array
        # @param OutputType: 目标数据源的类型，目前支持导入到托管存储，即lakefsStorage
        # @type OutputType: String

        attr_accessor :InputType, :InputConf, :OutputConf, :OutputType
        
        def initialize(inputtype=nil, inputconf=nil, outputconf=nil, outputtype=nil)
          @InputType = inputtype
          @InputConf = inputconf
          @OutputConf = outputconf
          @OutputType = outputtype
        end

        def deserialize(params)
          @InputType = params['InputType']
          unless params['InputConf'].nil?
            @InputConf = []
            params['InputConf'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @InputConf << kvpair_tmp
            end
          end
          unless params['OutputConf'].nil?
            @OutputConf = []
            params['OutputConf'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @OutputConf << kvpair_tmp
            end
          end
          @OutputType = params['OutputType']
        end
      end

      # CreateImportTask返回参数结构体
      class CreateImportTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateScript请求参数结构体
      class CreateScriptRequest < TencentCloud::Common::AbstractModel
        # @param ScriptName: 脚本名称，最大不能超过255个字符。
        # @type ScriptName: String
        # @param SQLStatement: base64编码后的sql语句
        # @type SQLStatement: String
        # @param ScriptDesc: 脚本描述， 不能超过50个字符
        # @type ScriptDesc: String
        # @param DatabaseName: 数据库名称
        # @type DatabaseName: String

        attr_accessor :ScriptName, :SQLStatement, :ScriptDesc, :DatabaseName
        
        def initialize(scriptname=nil, sqlstatement=nil, scriptdesc=nil, databasename=nil)
          @ScriptName = scriptname
          @SQLStatement = sqlstatement
          @ScriptDesc = scriptdesc
          @DatabaseName = databasename
        end

        def deserialize(params)
          @ScriptName = params['ScriptName']
          @SQLStatement = params['SQLStatement']
          @ScriptDesc = params['ScriptDesc']
          @DatabaseName = params['DatabaseName']
        end
      end

      # CreateScript返回参数结构体
      class CreateScriptResponse < TencentCloud::Common::AbstractModel
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

      # CreateSparkApp请求参数结构体
      class CreateSparkAppRequest < TencentCloud::Common::AbstractModel
        # @param AppName: spark应用名
        # @type AppName: String
        # @param AppType: 1代表spark jar应用，2代表spark streaming应用
        # @type AppType: Integer
        # @param DataEngine: 执行spark作业的数据引擎
        # @type DataEngine: String
        # @param AppFile: spark应用的执行入口
        # @type AppFile: String
        # @param RoleArn: 执行spark作业的角色ID
        # @type RoleArn: Integer
        # @param AppDriverSize: spark作业driver资源规格大小, 可取small,medium,large,xlarge
        # @type AppDriverSize: String
        # @param AppExecutorSize: spark作业executor资源规格大小, 可取small,medium,large,xlarge
        # @type AppExecutorSize: String
        # @param AppExecutorNums: spark作业executor个数
        # @type AppExecutorNums: Integer
        # @param Eni: 该字段已下线，请使用字段Datasource
        # @type Eni: String
        # @param IsLocal: 是否本地上传，可去cos,lakefs
        # @type IsLocal: String
        # @param MainClass: spark jar作业时的主类
        # @type MainClass: String
        # @param AppConf: spark配置，以换行符分隔
        # @type AppConf: String
        # @param IsLocalJars: 是否本地上传，包含cos,lakefs
        # @type IsLocalJars: String
        # @param AppJars: spark jar作业依赖jars，以逗号分隔
        # @type AppJars: String
        # @param IsLocalFiles: 是否本地上传，包含cos,lakefs
        # @type IsLocalFiles: String
        # @param AppFiles: spark作业依赖资源，以逗号分隔
        # @type AppFiles: String
        # @param CmdArgs: spark作业命令行参数
        # @type CmdArgs: String
        # @param MaxRetries: 只对spark流任务生效
        # @type MaxRetries: Integer
        # @param DataSource: 数据源名
        # @type DataSource: String
        # @param IsLocalPythonFiles: pyspark：依赖上传方式，1、cos；2、lakefs（控制台使用，该方式不支持直接接口调用）
        # @type IsLocalPythonFiles: String
        # @param AppPythonFiles: pyspark：python依赖, 除py文件外，还支持zip/egg等归档格式，多文件以逗号分隔
        # @type AppPythonFiles: String
        # @param IsLocalArchives: archives：依赖上传方式，1、cos；2、lakefs（控制台使用，该方式不支持直接接口调用）
        # @type IsLocalArchives: String
        # @param AppArchives: archives：依赖资源
        # @type AppArchives: String

        attr_accessor :AppName, :AppType, :DataEngine, :AppFile, :RoleArn, :AppDriverSize, :AppExecutorSize, :AppExecutorNums, :Eni, :IsLocal, :MainClass, :AppConf, :IsLocalJars, :AppJars, :IsLocalFiles, :AppFiles, :CmdArgs, :MaxRetries, :DataSource, :IsLocalPythonFiles, :AppPythonFiles, :IsLocalArchives, :AppArchives
        
        def initialize(appname=nil, apptype=nil, dataengine=nil, appfile=nil, rolearn=nil, appdriversize=nil, appexecutorsize=nil, appexecutornums=nil, eni=nil, islocal=nil, mainclass=nil, appconf=nil, islocaljars=nil, appjars=nil, islocalfiles=nil, appfiles=nil, cmdargs=nil, maxretries=nil, datasource=nil, islocalpythonfiles=nil, apppythonfiles=nil, islocalarchives=nil, apparchives=nil)
          @AppName = appname
          @AppType = apptype
          @DataEngine = dataengine
          @AppFile = appfile
          @RoleArn = rolearn
          @AppDriverSize = appdriversize
          @AppExecutorSize = appexecutorsize
          @AppExecutorNums = appexecutornums
          @Eni = eni
          @IsLocal = islocal
          @MainClass = mainclass
          @AppConf = appconf
          @IsLocalJars = islocaljars
          @AppJars = appjars
          @IsLocalFiles = islocalfiles
          @AppFiles = appfiles
          @CmdArgs = cmdargs
          @MaxRetries = maxretries
          @DataSource = datasource
          @IsLocalPythonFiles = islocalpythonfiles
          @AppPythonFiles = apppythonfiles
          @IsLocalArchives = islocalarchives
          @AppArchives = apparchives
        end

        def deserialize(params)
          @AppName = params['AppName']
          @AppType = params['AppType']
          @DataEngine = params['DataEngine']
          @AppFile = params['AppFile']
          @RoleArn = params['RoleArn']
          @AppDriverSize = params['AppDriverSize']
          @AppExecutorSize = params['AppExecutorSize']
          @AppExecutorNums = params['AppExecutorNums']
          @Eni = params['Eni']
          @IsLocal = params['IsLocal']
          @MainClass = params['MainClass']
          @AppConf = params['AppConf']
          @IsLocalJars = params['IsLocalJars']
          @AppJars = params['AppJars']
          @IsLocalFiles = params['IsLocalFiles']
          @AppFiles = params['AppFiles']
          @CmdArgs = params['CmdArgs']
          @MaxRetries = params['MaxRetries']
          @DataSource = params['DataSource']
          @IsLocalPythonFiles = params['IsLocalPythonFiles']
          @AppPythonFiles = params['AppPythonFiles']
          @IsLocalArchives = params['IsLocalArchives']
          @AppArchives = params['AppArchives']
        end
      end

      # CreateSparkApp返回参数结构体
      class CreateSparkAppResponse < TencentCloud::Common::AbstractModel
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

      # CreateSparkAppTask请求参数结构体
      class CreateSparkAppTaskRequest < TencentCloud::Common::AbstractModel
        # @param JobName: spark作业名
        # @type JobName: String
        # @param CmdArgs: spark作业的命令行参数，以空格分隔；一般用于周期性调用使用
        # @type CmdArgs: String

        attr_accessor :JobName, :CmdArgs
        
        def initialize(jobname=nil, cmdargs=nil)
          @JobName = jobname
          @CmdArgs = cmdargs
        end

        def deserialize(params)
          @JobName = params['JobName']
          @CmdArgs = params['CmdArgs']
        end
      end

      # CreateSparkAppTask返回参数结构体
      class CreateSparkAppTaskResponse < TencentCloud::Common::AbstractModel
        # @param BatchId: 批Id
        # @type BatchId: String
        # @param TaskId: 任务Id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchId, :TaskId, :RequestId
        
        def initialize(batchid=nil, taskid=nil, requestid=nil)
          @BatchId = batchid
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateStoreLocation请求参数结构体
      class CreateStoreLocationRequest < TencentCloud::Common::AbstractModel
        # @param StoreLocation: 计算结果存储cos路径，如：cosn://bucketname/
        # @type StoreLocation: String

        attr_accessor :StoreLocation
        
        def initialize(storelocation=nil)
          @StoreLocation = storelocation
        end

        def deserialize(params)
          @StoreLocation = params['StoreLocation']
        end
      end

      # CreateStoreLocation返回参数结构体
      class CreateStoreLocationResponse < TencentCloud::Common::AbstractModel
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

      # CreateTable请求参数结构体
      class CreateTableRequest < TencentCloud::Common::AbstractModel
        # @param TableInfo: 数据表配置信息
        # @type TableInfo: :class:`Tencentcloud::Dlc.v20210125.models.TableInfo`

        attr_accessor :TableInfo
        
        def initialize(tableinfo=nil)
          @TableInfo = tableinfo
        end

        def deserialize(params)
          unless params['TableInfo'].nil?
            @TableInfo = TableInfo.new
            @TableInfo.deserialize(params['TableInfo'])
          end
        end
      end

      # CreateTable返回参数结构体
      class CreateTableResponse < TencentCloud::Common::AbstractModel
        # @param Execution: 生成的建表执行语句对象。
        # @type Execution: :class:`Tencentcloud::Dlc.v20210125.models.Execution`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Execution, :RequestId
        
        def initialize(execution=nil, requestid=nil)
          @Execution = execution
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Execution'].nil?
            @Execution = Execution.new
            @Execution.deserialize(params['Execution'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTask请求参数结构体
      class CreateTaskRequest < TencentCloud::Common::AbstractModel
        # @param Task: 计算任务，该参数中包含任务类型及其相关配置信息
        # @type Task: :class:`Tencentcloud::Dlc.v20210125.models.Task`
        # @param DatabaseName: 数据库名称。如果SQL语句中有数据库名称，优先使用SQL语句中的数据库，否则使用该参数指定的数据库（注：当提交建库sql时，该字段传空字符串）。
        # @type DatabaseName: String
        # @param DatasourceConnectionName: 默认数据源名称。
        # @type DatasourceConnectionName: String
        # @param DataEngineName: 数据引擎名称，不填提交到默认集群
        # @type DataEngineName: String

        attr_accessor :Task, :DatabaseName, :DatasourceConnectionName, :DataEngineName
        
        def initialize(task=nil, databasename=nil, datasourceconnectionname=nil, dataenginename=nil)
          @Task = task
          @DatabaseName = databasename
          @DatasourceConnectionName = datasourceconnectionname
          @DataEngineName = dataenginename
        end

        def deserialize(params)
          unless params['Task'].nil?
            @Task = Task.new
            @Task.deserialize(params['Task'])
          end
          @DatabaseName = params['DatabaseName']
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @DataEngineName = params['DataEngineName']
        end
      end

      # CreateTask返回参数结构体
      class CreateTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTasksInOrder请求参数结构体
      class CreateTasksInOrderRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名称。如果SQL语句中有数据库名称，优先使用SQL语句中的数据库，否则使用该参数指定的数据库。
        # @type DatabaseName: String
        # @param Tasks: SQL任务信息
        # @type Tasks: :class:`Tencentcloud::Dlc.v20210125.models.TasksInfo`
        # @param DatasourceConnectionName: 数据源名称，默认为COSDataCatalog
        # @type DatasourceConnectionName: String

        attr_accessor :DatabaseName, :Tasks, :DatasourceConnectionName
        
        def initialize(databasename=nil, tasks=nil, datasourceconnectionname=nil)
          @DatabaseName = databasename
          @Tasks = tasks
          @DatasourceConnectionName = datasourceconnectionname
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          unless params['Tasks'].nil?
            @Tasks = TasksInfo.new
            @Tasks.deserialize(params['Tasks'])
          end
          @DatasourceConnectionName = params['DatasourceConnectionName']
        end
      end

      # CreateTasksInOrder返回参数结构体
      class CreateTasksInOrderResponse < TencentCloud::Common::AbstractModel
        # @param BatchId: 本批次提交的任务的批次Id
        # @type BatchId: String
        # @param TaskIdSet: 任务Id集合，按照执行顺序排列
        # @type TaskIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchId, :TaskIdSet, :RequestId
        
        def initialize(batchid=nil, taskidset=nil, requestid=nil)
          @BatchId = batchid
          @TaskIdSet = taskidset
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @TaskIdSet = params['TaskIdSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateTasks请求参数结构体
      class CreateTasksRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名称。如果SQL语句中有数据库名称，优先使用SQL语句中的数据库，否则使用该参数指定的数据库（注：当提交建库sql时，该字段传空字符串）。
        # @type DatabaseName: String
        # @param Tasks: SQL任务信息
        # @type Tasks: :class:`Tencentcloud::Dlc.v20210125.models.TasksInfo`
        # @param DatasourceConnectionName: 数据源名称，默认为DataLakeCatalog
        # @type DatasourceConnectionName: String
        # @param DataEngineName: 计算引擎名称，不填任务提交到默认集群
        # @type DataEngineName: String

        attr_accessor :DatabaseName, :Tasks, :DatasourceConnectionName, :DataEngineName
        
        def initialize(databasename=nil, tasks=nil, datasourceconnectionname=nil, dataenginename=nil)
          @DatabaseName = databasename
          @Tasks = tasks
          @DatasourceConnectionName = datasourceconnectionname
          @DataEngineName = dataenginename
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          unless params['Tasks'].nil?
            @Tasks = TasksInfo.new
            @Tasks.deserialize(params['Tasks'])
          end
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @DataEngineName = params['DataEngineName']
        end
      end

      # CreateTasks返回参数结构体
      class CreateTasksResponse < TencentCloud::Common::AbstractModel
        # @param BatchId: 本批次提交的任务的批次Id
        # @type BatchId: String
        # @param TaskIdSet: 任务Id集合，按照执行顺序排列
        # @type TaskIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchId, :TaskIdSet, :RequestId
        
        def initialize(batchid=nil, taskidset=nil, requestid=nil)
          @BatchId = batchid
          @TaskIdSet = taskidset
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @TaskIdSet = params['TaskIdSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateUser请求参数结构体
      class CreateUserRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 需要授权的子用户uin，可以通过腾讯云控制台右上角 → “账号信息” → “账号ID进行查看”。
        # @type UserId: String
        # @param UserDescription: 用户描述信息，方便区分不同用户
        # @type UserDescription: String
        # @param PolicySet: 绑定到用户的权限集合
        # @type PolicySet: Array
        # @param UserType: 用户类型。ADMIN：管理员 COMMON：一般用户。当用户类型为管理员的时候，不能设置权限集合和绑定的工作组集合，管理员默认拥有所有权限。该参数不填默认为COMMON
        # @type UserType: String
        # @param WorkGroupIds: 绑定到用户的工作组ID集合。
        # @type WorkGroupIds: Array
        # @param UserAlias: 用户别名，字符长度小50
        # @type UserAlias: String

        attr_accessor :UserId, :UserDescription, :PolicySet, :UserType, :WorkGroupIds, :UserAlias
        
        def initialize(userid=nil, userdescription=nil, policyset=nil, usertype=nil, workgroupids=nil, useralias=nil)
          @UserId = userid
          @UserDescription = userdescription
          @PolicySet = policyset
          @UserType = usertype
          @WorkGroupIds = workgroupids
          @UserAlias = useralias
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserDescription = params['UserDescription']
          unless params['PolicySet'].nil?
            @PolicySet = []
            params['PolicySet'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicySet << policy_tmp
            end
          end
          @UserType = params['UserType']
          @WorkGroupIds = params['WorkGroupIds']
          @UserAlias = params['UserAlias']
        end
      end

      # CreateUser返回参数结构体
      class CreateUserResponse < TencentCloud::Common::AbstractModel
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

      # CreateWorkGroup请求参数结构体
      class CreateWorkGroupRequest < TencentCloud::Common::AbstractModel
        # @param WorkGroupName: 工作组名称
        # @type WorkGroupName: String
        # @param WorkGroupDescription: 工作组描述
        # @type WorkGroupDescription: String
        # @param PolicySet: 工作组绑定的鉴权策略集合
        # @type PolicySet: Array
        # @param UserIds: 需要绑定到工作组的用户Id集合
        # @type UserIds: Array

        attr_accessor :WorkGroupName, :WorkGroupDescription, :PolicySet, :UserIds
        
        def initialize(workgroupname=nil, workgroupdescription=nil, policyset=nil, userids=nil)
          @WorkGroupName = workgroupname
          @WorkGroupDescription = workgroupdescription
          @PolicySet = policyset
          @UserIds = userids
        end

        def deserialize(params)
          @WorkGroupName = params['WorkGroupName']
          @WorkGroupDescription = params['WorkGroupDescription']
          unless params['PolicySet'].nil?
            @PolicySet = []
            params['PolicySet'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicySet << policy_tmp
            end
          end
          @UserIds = params['UserIds']
        end
      end

      # CreateWorkGroup返回参数结构体
      class CreateWorkGroupResponse < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 工作组Id，全局唯一
        # @type WorkGroupId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkGroupId, :RequestId
        
        def initialize(workgroupid=nil, requestid=nil)
          @WorkGroupId = workgroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
          @RequestId = params['RequestId']
        end
      end

      # 迁移列对象
      class DMSColumn < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Position: 排序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Position: Integer
        # @param Params: 附加参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: Array
        # @param BizParams: 业务参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizParams: Array
        # @param IsPartition: 是否分区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPartition: Boolean

        attr_accessor :Name, :Description, :Type, :Position, :Params, :BizParams, :IsPartition
        
        def initialize(name=nil, description=nil, type=nil, position=nil, params=nil, bizparams=nil, ispartition=nil)
          @Name = name
          @Description = description
          @Type = type
          @Position = position
          @Params = params
          @BizParams = bizparams
          @IsPartition = ispartition
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @Type = params['Type']
          @Position = params['Position']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Params << kvpair_tmp
            end
          end
          unless params['BizParams'].nil?
            @BizParams = []
            params['BizParams'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @BizParams << kvpair_tmp
            end
          end
          @IsPartition = params['IsPartition']
        end
      end

      # 列排序对象
      class DMSColumnOrder < TencentCloud::Common::AbstractModel
        # @param Col: 列名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Col: String
        # @param Order: 排序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Order: Integer

        attr_accessor :Col, :Order
        
        def initialize(col=nil, order=nil)
          @Col = col
          @Order = order
        end

        def deserialize(params)
          @Col = params['Col']
          @Order = params['Order']
        end
      end

      # 迁移元数据分区对象
      class DMSPartition < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名称
        # @type DatabaseName: String
        # @param SchemaName: 数据目录名称
        # @type SchemaName: String
        # @param TableName: 表名称
        # @type TableName: String
        # @param DataVersion: 数据版本
        # @type DataVersion: Integer
        # @param Name: 分区名称
        # @type Name: String
        # @param Values: 值列表
        # @type Values: Array
        # @param StorageSize: 存储大小
        # @type StorageSize: Integer
        # @param RecordCount: 记录数量
        # @type RecordCount: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifiedTime: 修改时间
        # @type ModifiedTime: String
        # @param LastAccessTime: 最后访问时间
        # @type LastAccessTime: String
        # @param Params: 附件属性
        # @type Params: Array
        # @param Sds: 存储对象
        # @type Sds: :class:`Tencentcloud::Dlc.v20210125.models.DMSSds`

        attr_accessor :DatabaseName, :SchemaName, :TableName, :DataVersion, :Name, :Values, :StorageSize, :RecordCount, :CreateTime, :ModifiedTime, :LastAccessTime, :Params, :Sds
        
        def initialize(databasename=nil, schemaname=nil, tablename=nil, dataversion=nil, name=nil, values=nil, storagesize=nil, recordcount=nil, createtime=nil, modifiedtime=nil, lastaccesstime=nil, params=nil, sds=nil)
          @DatabaseName = databasename
          @SchemaName = schemaname
          @TableName = tablename
          @DataVersion = dataversion
          @Name = name
          @Values = values
          @StorageSize = storagesize
          @RecordCount = recordcount
          @CreateTime = createtime
          @ModifiedTime = modifiedtime
          @LastAccessTime = lastaccesstime
          @Params = params
          @Sds = sds
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @SchemaName = params['SchemaName']
          @TableName = params['TableName']
          @DataVersion = params['DataVersion']
          @Name = params['Name']
          @Values = params['Values']
          @StorageSize = params['StorageSize']
          @RecordCount = params['RecordCount']
          @CreateTime = params['CreateTime']
          @ModifiedTime = params['ModifiedTime']
          @LastAccessTime = params['LastAccessTime']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Params << kvpair_tmp
            end
          end
          unless params['Sds'].nil?
            @Sds = DMSSds.new
            @Sds.deserialize(params['Sds'])
          end
        end
      end

      # 元数据存储描述属性
      class DMSSds < TencentCloud::Common::AbstractModel
        # @param Location: 存储地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: String
        # @param InputFormat: 输入格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputFormat: String
        # @param OutputFormat: 输出格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputFormat: String
        # @param NumBuckets: bucket数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NumBuckets: Integer
        # @param Compressed: 是是否压缩
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Compressed: Boolean
        # @param StoredAsSubDirectories: 是否有子目录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoredAsSubDirectories: Boolean
        # @param SerdeLib: 序列化lib
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SerdeLib: String
        # @param SerdeName: 序列化名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SerdeName: String
        # @param BucketCols: 桶名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BucketCols: Array
        # @param SerdeParams: 序列化参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SerdeParams: Array
        # @param Params: 附加参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: Array
        # @param SortCols: 列排序(Expired)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SortCols: :class:`Tencentcloud::Dlc.v20210125.models.DMSColumnOrder`
        # @param Cols: 列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cols: Array
        # @param SortColumns: 列排序字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SortColumns: Array

        attr_accessor :Location, :InputFormat, :OutputFormat, :NumBuckets, :Compressed, :StoredAsSubDirectories, :SerdeLib, :SerdeName, :BucketCols, :SerdeParams, :Params, :SortCols, :Cols, :SortColumns
        
        def initialize(location=nil, inputformat=nil, outputformat=nil, numbuckets=nil, compressed=nil, storedassubdirectories=nil, serdelib=nil, serdename=nil, bucketcols=nil, serdeparams=nil, params=nil, sortcols=nil, cols=nil, sortcolumns=nil)
          @Location = location
          @InputFormat = inputformat
          @OutputFormat = outputformat
          @NumBuckets = numbuckets
          @Compressed = compressed
          @StoredAsSubDirectories = storedassubdirectories
          @SerdeLib = serdelib
          @SerdeName = serdename
          @BucketCols = bucketcols
          @SerdeParams = serdeparams
          @Params = params
          @SortCols = sortcols
          @Cols = cols
          @SortColumns = sortcolumns
        end

        def deserialize(params)
          @Location = params['Location']
          @InputFormat = params['InputFormat']
          @OutputFormat = params['OutputFormat']
          @NumBuckets = params['NumBuckets']
          @Compressed = params['Compressed']
          @StoredAsSubDirectories = params['StoredAsSubDirectories']
          @SerdeLib = params['SerdeLib']
          @SerdeName = params['SerdeName']
          @BucketCols = params['BucketCols']
          unless params['SerdeParams'].nil?
            @SerdeParams = []
            params['SerdeParams'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @SerdeParams << kvpair_tmp
            end
          end
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Params << kvpair_tmp
            end
          end
          unless params['SortCols'].nil?
            @SortCols = DMSColumnOrder.new
            @SortCols.deserialize(params['SortCols'])
          end
          unless params['Cols'].nil?
            @Cols = []
            params['Cols'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @Cols << dmscolumn_tmp
            end
          end
          unless params['SortColumns'].nil?
            @SortColumns = []
            params['SortColumns'].each do |i|
              dmscolumnorder_tmp = DMSColumnOrder.new
              dmscolumnorder_tmp.deserialize(i)
              @SortColumns << dmscolumnorder_tmp
            end
          end
        end
      end

      # DMSTable基本信息
      class DMSTable < TencentCloud::Common::AbstractModel
        # @param ViewOriginalText: 视图文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewOriginalText: String
        # @param ViewExpandedText: 视图文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewExpandedText: String
        # @param Retention: hive维护版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Retention: Integer
        # @param Sds: 存储对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sds: :class:`Tencentcloud::Dlc.v20210125.models.DMSSds`
        # @param PartitionKeys: 分区列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionKeys: Array
        # @param Partitions: 分区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitions: Array
        # @param Type: 表类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param DbName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbName: String
        # @param SchemaName: Schema名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param StorageSize: 存储大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageSize: Integer
        # @param RecordCount: 记录数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordCount: Integer
        # @param LifeTime: 生命周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LifeTime: Integer
        # @param LastAccessTime: 最后访问时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastAccessTime: String
        # @param DataUpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataUpdateTime: String
        # @param StructUpdateTime: 结构更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StructUpdateTime: String
        # @param Columns: 列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param Name: 表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String

        attr_accessor :ViewOriginalText, :ViewExpandedText, :Retention, :Sds, :PartitionKeys, :Partitions, :Type, :DbName, :SchemaName, :StorageSize, :RecordCount, :LifeTime, :LastAccessTime, :DataUpdateTime, :StructUpdateTime, :Columns, :Name
        
        def initialize(vieworiginaltext=nil, viewexpandedtext=nil, retention=nil, sds=nil, partitionkeys=nil, partitions=nil, type=nil, dbname=nil, schemaname=nil, storagesize=nil, recordcount=nil, lifetime=nil, lastaccesstime=nil, dataupdatetime=nil, structupdatetime=nil, columns=nil, name=nil)
          @ViewOriginalText = vieworiginaltext
          @ViewExpandedText = viewexpandedtext
          @Retention = retention
          @Sds = sds
          @PartitionKeys = partitionkeys
          @Partitions = partitions
          @Type = type
          @DbName = dbname
          @SchemaName = schemaname
          @StorageSize = storagesize
          @RecordCount = recordcount
          @LifeTime = lifetime
          @LastAccessTime = lastaccesstime
          @DataUpdateTime = dataupdatetime
          @StructUpdateTime = structupdatetime
          @Columns = columns
          @Name = name
        end

        def deserialize(params)
          @ViewOriginalText = params['ViewOriginalText']
          @ViewExpandedText = params['ViewExpandedText']
          @Retention = params['Retention']
          unless params['Sds'].nil?
            @Sds = DMSSds.new
            @Sds.deserialize(params['Sds'])
          end
          unless params['PartitionKeys'].nil?
            @PartitionKeys = []
            params['PartitionKeys'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @PartitionKeys << dmscolumn_tmp
            end
          end
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              dmspartition_tmp = DMSPartition.new
              dmspartition_tmp.deserialize(i)
              @Partitions << dmspartition_tmp
            end
          end
          @Type = params['Type']
          @DbName = params['DbName']
          @SchemaName = params['SchemaName']
          @StorageSize = params['StorageSize']
          @RecordCount = params['RecordCount']
          @LifeTime = params['LifeTime']
          @LastAccessTime = params['LastAccessTime']
          @DataUpdateTime = params['DataUpdateTime']
          @StructUpdateTime = params['StructUpdateTime']
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @Columns << dmscolumn_tmp
            end
          end
          @Name = params['Name']
        end
      end

      # DMSTable信息
      class DMSTableInfo < TencentCloud::Common::AbstractModel
        # @param Table: DMS表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Table: :class:`Tencentcloud::Dlc.v20210125.models.DMSTable`
        # @param Asset: 基础对象信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Asset: :class:`Tencentcloud::Dlc.v20210125.models.Asset`

        attr_accessor :Table, :Asset
        
        def initialize(table=nil, asset=nil)
          @Table = table
          @Asset = asset
        end

        def deserialize(params)
          unless params['Table'].nil?
            @Table = DMSTable.new
            @Table.deserialize(params['Table'])
          end
          unless params['Asset'].nil?
            @Asset = Asset.new
            @Asset.deserialize(params['Asset'])
          end
        end
      end

      # 数据表数据格式。
      class DataFormat < TencentCloud::Common::AbstractModel
        # @param TextFile: 文本格式，TextFile。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextFile: :class:`Tencentcloud::Dlc.v20210125.models.TextFile`
        # @param CSV: 文本格式，CSV。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CSV: :class:`Tencentcloud::Dlc.v20210125.models.CSV`
        # @param Json: 文本格式，Json。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Json: :class:`Tencentcloud::Dlc.v20210125.models.Other`
        # @param Parquet: Parquet格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Parquet: :class:`Tencentcloud::Dlc.v20210125.models.Other`
        # @param ORC: ORC格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ORC: :class:`Tencentcloud::Dlc.v20210125.models.Other`
        # @param AVRO: AVRO格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AVRO: :class:`Tencentcloud::Dlc.v20210125.models.Other`

        attr_accessor :TextFile, :CSV, :Json, :Parquet, :ORC, :AVRO
        
        def initialize(textfile=nil, csv=nil, json=nil, parquet=nil, orc=nil, avro=nil)
          @TextFile = textfile
          @CSV = csv
          @Json = json
          @Parquet = parquet
          @ORC = orc
          @AVRO = avro
        end

        def deserialize(params)
          unless params['TextFile'].nil?
            @TextFile = TextFile.new
            @TextFile.deserialize(params['TextFile'])
          end
          unless params['CSV'].nil?
            @CSV = CSV.new
            @CSV.deserialize(params['CSV'])
          end
          unless params['Json'].nil?
            @Json = Other.new
            @Json.deserialize(params['Json'])
          end
          unless params['Parquet'].nil?
            @Parquet = Other.new
            @Parquet.deserialize(params['Parquet'])
          end
          unless params['ORC'].nil?
            @ORC = Other.new
            @ORC.deserialize(params['ORC'])
          end
          unless params['AVRO'].nil?
            @AVRO = Other.new
            @AVRO.deserialize(params['AVRO'])
          end
        end
      end

      # 数据库对象
      class DatabaseInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名称，长度0~128，支持数字、字母下划线，不允许数字大头，统一转换为小写。
        # @type DatabaseName: String
        # @param Comment: 数据库描述信息，长度 0~500。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param Properties: 数据库属性列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array
        # @param Location: 数据库cos路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: String

        attr_accessor :DatabaseName, :Comment, :Properties, :Location
        
        def initialize(databasename=nil, comment=nil, properties=nil, location=nil)
          @DatabaseName = databasename
          @Comment = comment
          @Properties = properties
          @Location = location
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @Comment = params['Comment']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
          @Location = params['Location']
        end
      end

      # 数据库对象
      class DatabaseResponseInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名称。
        # @type DatabaseName: String
        # @param Comment: 数据库描述信息，长度 0~256。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param Properties: 允许针对数据库的属性元数据信息进行指定。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array
        # @param CreateTime: 数据库创建时间戳，单位：s。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param ModifiedTime: 数据库更新时间戳，单位：s。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param Location: cos存储路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: String
        # @param UserAlias: 建库用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAlias: String
        # @param UserSubUin: 建库用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserSubUin: String

        attr_accessor :DatabaseName, :Comment, :Properties, :CreateTime, :ModifiedTime, :Location, :UserAlias, :UserSubUin
        
        def initialize(databasename=nil, comment=nil, properties=nil, createtime=nil, modifiedtime=nil, location=nil, useralias=nil, usersubuin=nil)
          @DatabaseName = databasename
          @Comment = comment
          @Properties = properties
          @CreateTime = createtime
          @ModifiedTime = modifiedtime
          @Location = location
          @UserAlias = useralias
          @UserSubUin = usersubuin
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @Comment = params['Comment']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @ModifiedTime = params['ModifiedTime']
          @Location = params['Location']
          @UserAlias = params['UserAlias']
          @UserSubUin = params['UserSubUin']
        end
      end

      # DeleteScript请求参数结构体
      class DeleteScriptRequest < TencentCloud::Common::AbstractModel
        # @param ScriptIds: 脚本id，其可以通过DescribeScripts接口提取
        # @type ScriptIds: Array

        attr_accessor :ScriptIds
        
        def initialize(scriptids=nil)
          @ScriptIds = scriptids
        end

        def deserialize(params)
          @ScriptIds = params['ScriptIds']
        end
      end

      # DeleteScript返回参数结构体
      class DeleteScriptResponse < TencentCloud::Common::AbstractModel
        # @param ScriptsAffected: 删除的脚本数量
        # @type ScriptsAffected: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScriptsAffected, :RequestId
        
        def initialize(scriptsaffected=nil, requestid=nil)
          @ScriptsAffected = scriptsaffected
          @RequestId = requestid
        end

        def deserialize(params)
          @ScriptsAffected = params['ScriptsAffected']
          @RequestId = params['RequestId']
        end
      end

      # DeleteSparkApp请求参数结构体
      class DeleteSparkAppRequest < TencentCloud::Common::AbstractModel
        # @param AppName: spark应用名
        # @type AppName: String

        attr_accessor :AppName
        
        def initialize(appname=nil)
          @AppName = appname
        end

        def deserialize(params)
          @AppName = params['AppName']
        end
      end

      # DeleteSparkApp返回参数结构体
      class DeleteSparkAppResponse < TencentCloud::Common::AbstractModel
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

      # DeleteUser请求参数结构体
      class DeleteUserRequest < TencentCloud::Common::AbstractModel
        # @param UserIds: 需要删除的用户的Id
        # @type UserIds: Array

        attr_accessor :UserIds
        
        def initialize(userids=nil)
          @UserIds = userids
        end

        def deserialize(params)
          @UserIds = params['UserIds']
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

      # DeleteUsersFromWorkGroup请求参数结构体
      class DeleteUsersFromWorkGroupRequest < TencentCloud::Common::AbstractModel
        # @param AddInfo: 要删除的用户信息
        # @type AddInfo: :class:`Tencentcloud::Dlc.v20210125.models.UserIdSetOfWorkGroupId`

        attr_accessor :AddInfo
        
        def initialize(addinfo=nil)
          @AddInfo = addinfo
        end

        def deserialize(params)
          unless params['AddInfo'].nil?
            @AddInfo = UserIdSetOfWorkGroupId.new
            @AddInfo.deserialize(params['AddInfo'])
          end
        end
      end

      # DeleteUsersFromWorkGroup返回参数结构体
      class DeleteUsersFromWorkGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteWorkGroup请求参数结构体
      class DeleteWorkGroupRequest < TencentCloud::Common::AbstractModel
        # @param WorkGroupIds: 要删除的工作组Id集合
        # @type WorkGroupIds: Array

        attr_accessor :WorkGroupIds
        
        def initialize(workgroupids=nil)
          @WorkGroupIds = workgroupids
        end

        def deserialize(params)
          @WorkGroupIds = params['WorkGroupIds']
        end
      end

      # DeleteWorkGroup返回参数结构体
      class DeleteWorkGroupResponse < TencentCloud::Common::AbstractModel
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

      # DescribeDMSDatabase请求参数结构体
      class DescribeDMSDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param Name: 数据库名称
        # @type Name: String
        # @param SchemaName: schema名称
        # @type SchemaName: String
        # @param Pattern: 匹配规则
        # @type Pattern: String

        attr_accessor :Name, :SchemaName, :Pattern
        
        def initialize(name=nil, schemaname=nil, pattern=nil)
          @Name = name
          @SchemaName = schemaname
          @Pattern = pattern
        end

        def deserialize(params)
          @Name = params['Name']
          @SchemaName = params['SchemaName']
          @Pattern = params['Pattern']
        end
      end

      # DescribeDMSDatabase返回参数结构体
      class DescribeDMSDatabaseResponse < TencentCloud::Common::AbstractModel
        # @param Name: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param SchemaName: schema名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param Location: 存储地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: String
        # @param Asset: 数据对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Asset: :class:`Tencentcloud::Dlc.v20210125.models.Asset`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Name, :SchemaName, :Location, :Asset, :RequestId
        
        def initialize(name=nil, schemaname=nil, location=nil, asset=nil, requestid=nil)
          @Name = name
          @SchemaName = schemaname
          @Location = location
          @Asset = asset
          @RequestId = requestid
        end

        def deserialize(params)
          @Name = params['Name']
          @SchemaName = params['SchemaName']
          @Location = params['Location']
          unless params['Asset'].nil?
            @Asset = Asset.new
            @Asset.deserialize(params['Asset'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDMSPartitions请求参数结构体
      class DescribeDMSPartitionsRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名
        # @type DatabaseName: String
        # @param TableName: 表名称
        # @type TableName: String
        # @param SchemaName: schema名称
        # @type SchemaName: String
        # @param Name: 名称
        # @type Name: String
        # @param Values: 单个分区名称，精准匹配
        # @type Values: Array
        # @param PartitionNames: 多个分区名称，精准匹配
        # @type PartitionNames: Array
        # @param PartValues: 多个分区字段的匹配，模糊匹配
        # @type PartValues: Array
        # @param Filter: 过滤SQL
        # @type Filter: String
        # @param MaxParts: 最大分区数量
        # @type MaxParts: Integer
        # @param Offset: 翻页跳过数量
        # @type Offset: Integer
        # @param Limit: 页面数量
        # @type Limit: Integer
        # @param Expression: 表达式
        # @type Expression: String

        attr_accessor :DatabaseName, :TableName, :SchemaName, :Name, :Values, :PartitionNames, :PartValues, :Filter, :MaxParts, :Offset, :Limit, :Expression
        
        def initialize(databasename=nil, tablename=nil, schemaname=nil, name=nil, values=nil, partitionnames=nil, partvalues=nil, filter=nil, maxparts=nil, offset=nil, limit=nil, expression=nil)
          @DatabaseName = databasename
          @TableName = tablename
          @SchemaName = schemaname
          @Name = name
          @Values = values
          @PartitionNames = partitionnames
          @PartValues = partvalues
          @Filter = filter
          @MaxParts = maxparts
          @Offset = offset
          @Limit = limit
          @Expression = expression
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @TableName = params['TableName']
          @SchemaName = params['SchemaName']
          @Name = params['Name']
          @Values = params['Values']
          @PartitionNames = params['PartitionNames']
          @PartValues = params['PartValues']
          @Filter = params['Filter']
          @MaxParts = params['MaxParts']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Expression = params['Expression']
        end
      end

      # DescribeDMSPartitions返回参数结构体
      class DescribeDMSPartitionsResponse < TencentCloud::Common::AbstractModel
        # @param Partitions: 分区信息
        # @type Partitions: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Partitions, :Total, :RequestId
        
        def initialize(partitions=nil, total=nil, requestid=nil)
          @Partitions = partitions
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              dmspartition_tmp = DMSPartition.new
              dmspartition_tmp.deserialize(i)
              @Partitions << dmspartition_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDMSTable请求参数结构体
      class DescribeDMSTableRequest < TencentCloud::Common::AbstractModel
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param SchemaName: 数据库schema名称
        # @type SchemaName: String
        # @param Name: 表名称
        # @type Name: String
        # @param Catalog: 数据目录
        # @type Catalog: String
        # @param Keyword: 查询关键词
        # @type Keyword: String
        # @param Pattern: 查询模式
        # @type Pattern: String
        # @param Type: 表类型
        # @type Type: String

        attr_accessor :DbName, :SchemaName, :Name, :Catalog, :Keyword, :Pattern, :Type
        
        def initialize(dbname=nil, schemaname=nil, name=nil, catalog=nil, keyword=nil, pattern=nil, type=nil)
          @DbName = dbname
          @SchemaName = schemaname
          @Name = name
          @Catalog = catalog
          @Keyword = keyword
          @Pattern = pattern
          @Type = type
        end

        def deserialize(params)
          @DbName = params['DbName']
          @SchemaName = params['SchemaName']
          @Name = params['Name']
          @Catalog = params['Catalog']
          @Keyword = params['Keyword']
          @Pattern = params['Pattern']
          @Type = params['Type']
        end
      end

      # DescribeDMSTable返回参数结构体
      class DescribeDMSTableResponse < TencentCloud::Common::AbstractModel
        # @param Asset: 基础对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Asset: :class:`Tencentcloud::Dlc.v20210125.models.Asset`
        # @param ViewOriginalText: 视图文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewOriginalText: String
        # @param ViewExpandedText: 视图文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ViewExpandedText: String
        # @param Retention: hive维护版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Retention: Integer
        # @param Sds: 存储对象
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sds: :class:`Tencentcloud::Dlc.v20210125.models.DMSSds`
        # @param PartitionKeys: 分区列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PartitionKeys: Array
        # @param Partitions: 分区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitions: Array
        # @param Type: 表类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param DbName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbName: String
        # @param SchemaName: Schame名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchemaName: String
        # @param StorageSize: 存储大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageSize: Integer
        # @param RecordCount: 记录数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordCount: Integer
        # @param LifeTime: 生命周期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LifeTime: Integer
        # @param LastAccessTime: 最后访问时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastAccessTime: String
        # @param DataUpdateTime: 数据更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataUpdateTime: String
        # @param StructUpdateTime: 结构更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StructUpdateTime: String
        # @param Columns: 列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param Name: 表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Asset, :ViewOriginalText, :ViewExpandedText, :Retention, :Sds, :PartitionKeys, :Partitions, :Type, :DbName, :SchemaName, :StorageSize, :RecordCount, :LifeTime, :LastAccessTime, :DataUpdateTime, :StructUpdateTime, :Columns, :Name, :RequestId
        
        def initialize(asset=nil, vieworiginaltext=nil, viewexpandedtext=nil, retention=nil, sds=nil, partitionkeys=nil, partitions=nil, type=nil, dbname=nil, schemaname=nil, storagesize=nil, recordcount=nil, lifetime=nil, lastaccesstime=nil, dataupdatetime=nil, structupdatetime=nil, columns=nil, name=nil, requestid=nil)
          @Asset = asset
          @ViewOriginalText = vieworiginaltext
          @ViewExpandedText = viewexpandedtext
          @Retention = retention
          @Sds = sds
          @PartitionKeys = partitionkeys
          @Partitions = partitions
          @Type = type
          @DbName = dbname
          @SchemaName = schemaname
          @StorageSize = storagesize
          @RecordCount = recordcount
          @LifeTime = lifetime
          @LastAccessTime = lastaccesstime
          @DataUpdateTime = dataupdatetime
          @StructUpdateTime = structupdatetime
          @Columns = columns
          @Name = name
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Asset'].nil?
            @Asset = Asset.new
            @Asset.deserialize(params['Asset'])
          end
          @ViewOriginalText = params['ViewOriginalText']
          @ViewExpandedText = params['ViewExpandedText']
          @Retention = params['Retention']
          unless params['Sds'].nil?
            @Sds = DMSSds.new
            @Sds.deserialize(params['Sds'])
          end
          unless params['PartitionKeys'].nil?
            @PartitionKeys = []
            params['PartitionKeys'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @PartitionKeys << dmscolumn_tmp
            end
          end
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              dmspartition_tmp = DMSPartition.new
              dmspartition_tmp.deserialize(i)
              @Partitions << dmspartition_tmp
            end
          end
          @Type = params['Type']
          @DbName = params['DbName']
          @SchemaName = params['SchemaName']
          @StorageSize = params['StorageSize']
          @RecordCount = params['RecordCount']
          @LifeTime = params['LifeTime']
          @LastAccessTime = params['LastAccessTime']
          @DataUpdateTime = params['DataUpdateTime']
          @StructUpdateTime = params['StructUpdateTime']
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              dmscolumn_tmp = DMSColumn.new
              dmscolumn_tmp.deserialize(i)
              @Columns << dmscolumn_tmp
            end
          end
          @Name = params['Name']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDMSTables请求参数结构体
      class DescribeDMSTablesRequest < TencentCloud::Common::AbstractModel
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param SchemaName: 数据库schema名称
        # @type SchemaName: String
        # @param Name: 表名称
        # @type Name: String
        # @param Catalog: 数据目录
        # @type Catalog: String
        # @param Keyword: 查询关键词
        # @type Keyword: String
        # @param Pattern: 查询模式
        # @type Pattern: String
        # @param Type: 表类型
        # @type Type: String
        # @param StartTime: 筛选参数：更新开始时间
        # @type StartTime: String
        # @param EndTime: 筛选参数：更新结束时间
        # @type EndTime: String
        # @param Limit: 分页参数
        # @type Limit: Integer
        # @param Offset: 分页参数
        # @type Offset: Integer
        # @param Sort: 排序字段：create_time：创建时间
        # @type Sort: String
        # @param Asc: 排序字段：true：升序（默认），false：降序
        # @type Asc: Boolean

        attr_accessor :DbName, :SchemaName, :Name, :Catalog, :Keyword, :Pattern, :Type, :StartTime, :EndTime, :Limit, :Offset, :Sort, :Asc
        
        def initialize(dbname=nil, schemaname=nil, name=nil, catalog=nil, keyword=nil, pattern=nil, type=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, sort=nil, asc=nil)
          @DbName = dbname
          @SchemaName = schemaname
          @Name = name
          @Catalog = catalog
          @Keyword = keyword
          @Pattern = pattern
          @Type = type
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @Sort = sort
          @Asc = asc
        end

        def deserialize(params)
          @DbName = params['DbName']
          @SchemaName = params['SchemaName']
          @Name = params['Name']
          @Catalog = params['Catalog']
          @Keyword = params['Keyword']
          @Pattern = params['Pattern']
          @Type = params['Type']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Sort = params['Sort']
          @Asc = params['Asc']
        end
      end

      # DescribeDMSTables返回参数结构体
      class DescribeDMSTablesResponse < TencentCloud::Common::AbstractModel
        # @param TableList: DMS元数据列表信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableList: Array
        # @param TotalCount: 统计值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TableList, :TotalCount, :RequestId
        
        def initialize(tablelist=nil, totalcount=nil, requestid=nil)
          @TableList = tablelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TableList'].nil?
            @TableList = []
            params['TableList'].each do |i|
              dmstableinfo_tmp = DMSTableInfo.new
              dmstableinfo_tmp.deserialize(i)
              @TableList << dmstableinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabases请求参数结构体
      class DescribeDatabasesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始，默认为0。
        # @type Offset: Integer
        # @param KeyWord: 模糊匹配，库名关键字。
        # @type KeyWord: String
        # @param DatasourceConnectionName: 数据源唯名称，该名称可以通过DescribeDatasourceConnection接口查询到。默认为DataLakeCatalog
        # @type DatasourceConnectionName: String
        # @param Sort: 排序字段，当前版本仅支持按库名排序
        # @type Sort: String
        # @param Asc: 排序类型：false：降序（默认）、true：升序
        # @type Asc: Boolean

        attr_accessor :Limit, :Offset, :KeyWord, :DatasourceConnectionName, :Sort, :Asc
        
        def initialize(limit=nil, offset=nil, keyword=nil, datasourceconnectionname=nil, sort=nil, asc=nil)
          @Limit = limit
          @Offset = offset
          @KeyWord = keyword
          @DatasourceConnectionName = datasourceconnectionname
          @Sort = sort
          @Asc = asc
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @KeyWord = params['KeyWord']
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @Sort = params['Sort']
          @Asc = params['Asc']
        end
      end

      # DescribeDatabases返回参数结构体
      class DescribeDatabasesResponse < TencentCloud::Common::AbstractModel
        # @param DatabaseList: 数据库对象列表。
        # @type DatabaseList: Array
        # @param TotalCount: 实例总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DatabaseList, :TotalCount, :RequestId
        
        def initialize(databaselist=nil, totalcount=nil, requestid=nil)
          @DatabaseList = databaselist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DatabaseList'].nil?
            @DatabaseList = []
            params['DatabaseList'].each do |i|
              databaseresponseinfo_tmp = DatabaseResponseInfo.new
              databaseresponseinfo_tmp.deserialize(i)
              @DatabaseList << databaseresponseinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeScripts请求参数结构体
      class DescribeScriptsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param SortBy: 按字段排序，支持如下字段类型，update-time
        # @type SortBy: String
        # @param Sorting: 排序方式，desc表示正序，asc表示反序，默认asc
        # @type Sorting: String
        # @param Filters: 过滤条件，如下支持的过滤类型，传参Name应为其一
        # script-id - String - （过滤条件）script-id取值形如：157de0d1-26b4-4df2-a2d0-b64afc406c25。
        # script-name-keyword - String - （过滤条件）数据表名称,形如：script-test。
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :SortBy, :Sorting, :Filters
        
        def initialize(limit=nil, offset=nil, sortby=nil, sorting=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @SortBy = sortby
          @Sorting = sorting
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SortBy = params['SortBy']
          @Sorting = params['Sorting']
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

      # DescribeScripts返回参数结构体
      class DescribeScriptsResponse < TencentCloud::Common::AbstractModel
        # @param Scripts: Script列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scripts: Array
        # @param TotalCount: 实例总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Scripts, :TotalCount, :RequestId
        
        def initialize(scripts=nil, totalcount=nil, requestid=nil)
          @Scripts = scripts
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Scripts'].nil?
            @Scripts = []
            params['Scripts'].each do |i|
              script_tmp = Script.new
              script_tmp.deserialize(i)
              @Scripts << script_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSparkAppJob请求参数结构体
      class DescribeSparkAppJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: spark作业Id，与JobName同时存在时，JobName无效
        # @type JobId: String
        # @param JobName: spark作业名
        # @type JobName: String

        attr_accessor :JobId, :JobName
        
        def initialize(jobid=nil, jobname=nil)
          @JobId = jobid
          @JobName = jobname
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
        end
      end

      # DescribeSparkAppJob返回参数结构体
      class DescribeSparkAppJobResponse < TencentCloud::Common::AbstractModel
        # @param Job: spark作业详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Job: :class:`Tencentcloud::Dlc.v20210125.models.SparkJobInfo`
        # @param IsExists: 查询的spark作业是否存在
        # @type IsExists: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Job, :IsExists, :RequestId
        
        def initialize(job=nil, isexists=nil, requestid=nil)
          @Job = job
          @IsExists = isexists
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Job'].nil?
            @Job = SparkJobInfo.new
            @Job.deserialize(params['Job'])
          end
          @IsExists = params['IsExists']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSparkAppJobs请求参数结构体
      class DescribeSparkAppJobsRequest < TencentCloud::Common::AbstractModel
        # @param SortBy: 返回结果按照该字段排序
        # @type SortBy: String
        # @param Sorting: 正序或者倒序，例如：desc
        # @type Sorting: String
        # @param Filters: 按照该参数过滤,支持spark-job-name
        # @type Filters: Array
        # @param StartTime: 更新时间起始点
        # @type StartTime: String
        # @param EndTime: 更新时间截止点
        # @type EndTime: String
        # @param Offset: 查询列表偏移量
        # @type Offset: Integer
        # @param Limit: 查询列表限制数量
        # @type Limit: Integer

        attr_accessor :SortBy, :Sorting, :Filters, :StartTime, :EndTime, :Offset, :Limit
        
        def initialize(sortby=nil, sorting=nil, filters=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @SortBy = sortby
          @Sorting = sorting
          @Filters = filters
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SortBy = params['SortBy']
          @Sorting = params['Sorting']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSparkAppJobs返回参数结构体
      class DescribeSparkAppJobsResponse < TencentCloud::Common::AbstractModel
        # @param SparkAppJobs: spark作业列表详情
        # @type SparkAppJobs: Array
        # @param TotalCount: spark作业总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SparkAppJobs, :TotalCount, :RequestId
        
        def initialize(sparkappjobs=nil, totalcount=nil, requestid=nil)
          @SparkAppJobs = sparkappjobs
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SparkAppJobs'].nil?
            @SparkAppJobs = []
            params['SparkAppJobs'].each do |i|
              sparkjobinfo_tmp = SparkJobInfo.new
              sparkjobinfo_tmp.deserialize(i)
              @SparkAppJobs << sparkjobinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSparkAppTasks请求参数结构体
      class DescribeSparkAppTasksRequest < TencentCloud::Common::AbstractModel
        # @param JobId: spark作业Id
        # @type JobId: String
        # @param Offset: 分页查询偏移量
        # @type Offset: Integer
        # @param Limit: 分页查询Limit
        # @type Limit: Integer
        # @param TaskId: 执行实例id
        # @type TaskId: String
        # @param StartTime: 更新时间起始点
        # @type StartTime: String
        # @param EndTime: 更新时间截止点
        # @type EndTime: String
        # @param Filters: 按照该参数过滤,支持task-state
        # @type Filters: Array

        attr_accessor :JobId, :Offset, :Limit, :TaskId, :StartTime, :EndTime, :Filters
        
        def initialize(jobid=nil, offset=nil, limit=nil, taskid=nil, starttime=nil, endtime=nil, filters=nil)
          @JobId = jobid
          @Offset = offset
          @Limit = limit
          @TaskId = taskid
          @StartTime = starttime
          @EndTime = endtime
          @Filters = filters
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TaskId = params['TaskId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
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

      # DescribeSparkAppTasks返回参数结构体
      class DescribeSparkAppTasksResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: 任务结果（该字段已废弃）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tasks: :class:`Tencentcloud::Dlc.v20210125.models.TaskResponseInfo`
        # @param TotalCount: 任务总数
        # @type TotalCount: Integer
        # @param SparkAppTasks: 任务结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparkAppTasks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :TotalCount, :SparkAppTasks, :RequestId
        
        def initialize(tasks=nil, totalcount=nil, sparkapptasks=nil, requestid=nil)
          @Tasks = tasks
          @TotalCount = totalcount
          @SparkAppTasks = sparkapptasks
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = TaskResponseInfo.new
            @Tasks.deserialize(params['Tasks'])
          end
          @TotalCount = params['TotalCount']
          unless params['SparkAppTasks'].nil?
            @SparkAppTasks = []
            params['SparkAppTasks'].each do |i|
              taskresponseinfo_tmp = TaskResponseInfo.new
              taskresponseinfo_tmp.deserialize(i)
              @SparkAppTasks << taskresponseinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStoreLocation请求参数结构体
      class DescribeStoreLocationRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeStoreLocation返回参数结构体
      class DescribeStoreLocationResponse < TencentCloud::Common::AbstractModel
        # @param StoreLocation: 返回用户设置的结果存储位置路径，如果未设置则返回空字符串：""
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoreLocation: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StoreLocation, :RequestId
        
        def initialize(storelocation=nil, requestid=nil)
          @StoreLocation = storelocation
          @RequestId = requestid
        end

        def deserialize(params)
          @StoreLocation = params['StoreLocation']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTable请求参数结构体
      class DescribeTableRequest < TencentCloud::Common::AbstractModel
        # @param TableName: 查询对象表名称
        # @type TableName: String
        # @param DatabaseName: 查询表所在的数据库名称。
        # @type DatabaseName: String
        # @param DatasourceConnectionName: 查询表所在的数据源名称
        # @type DatasourceConnectionName: String

        attr_accessor :TableName, :DatabaseName, :DatasourceConnectionName
        
        def initialize(tablename=nil, databasename=nil, datasourceconnectionname=nil)
          @TableName = tablename
          @DatabaseName = databasename
          @DatasourceConnectionName = datasourceconnectionname
        end

        def deserialize(params)
          @TableName = params['TableName']
          @DatabaseName = params['DatabaseName']
          @DatasourceConnectionName = params['DatasourceConnectionName']
        end
      end

      # DescribeTable返回参数结构体
      class DescribeTableResponse < TencentCloud::Common::AbstractModel
        # @param Table: 数据表对象
        # @type Table: :class:`Tencentcloud::Dlc.v20210125.models.TableResponseInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Table, :RequestId
        
        def initialize(table=nil, requestid=nil)
          @Table = table
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Table'].nil?
            @Table = TableResponseInfo.new
            @Table.deserialize(params['Table'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTables请求参数结构体
      class DescribeTablesRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 列出该数据库下所属数据表。
        # @type DatabaseName: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件，如下支持的过滤类型，传参Name应为其一
        # table-name - String - （过滤条件）数据表名称,形如：table-001。
        # table-id - String - （过滤条件）table id形如：12342。
        # @type Filters: Array
        # @param DatasourceConnectionName: 指定查询的数据源名称，默认为DataLakeCatalog
        # @type DatasourceConnectionName: String
        # @param StartTime: 起始时间：用于对更新时间的筛选
        # @type StartTime: String
        # @param EndTime: 终止时间：用于对更新时间的筛选
        # @type EndTime: String
        # @param Sort: 排序字段，支持：CreateTime、UpdateTime、StorageSize、RecordCount、Name（不传则默认按name升序）
        # @type Sort: String
        # @param Asc: 排序字段，false：降序（默认）；true：升序
        # @type Asc: Boolean
        # @param TableType: table type，表类型查询,可用值:EXTERNAL_TABLE,INDEX_TABLE,MANAGED_TABLE,MATERIALIZED_VIEW,TABLE,VIEW,VIRTUAL_VIEW
        # @type TableType: String
        # @param TableFormat: 筛选字段-表格式：不传（默认）为查全部；LAKEFS：托管表；ICEBERG：非托管iceberg表；HIVE：非托管hive表；OTHER：非托管其它；
        # @type TableFormat: String

        attr_accessor :DatabaseName, :Limit, :Offset, :Filters, :DatasourceConnectionName, :StartTime, :EndTime, :Sort, :Asc, :TableType, :TableFormat
        
        def initialize(databasename=nil, limit=nil, offset=nil, filters=nil, datasourceconnectionname=nil, starttime=nil, endtime=nil, sort=nil, asc=nil, tabletype=nil, tableformat=nil)
          @DatabaseName = databasename
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @DatasourceConnectionName = datasourceconnectionname
          @StartTime = starttime
          @EndTime = endtime
          @Sort = sort
          @Asc = asc
          @TableType = tabletype
          @TableFormat = tableformat
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Sort = params['Sort']
          @Asc = params['Asc']
          @TableType = params['TableType']
          @TableFormat = params['TableFormat']
        end
      end

      # DescribeTables返回参数结构体
      class DescribeTablesResponse < TencentCloud::Common::AbstractModel
        # @param TableList: 数据表对象列表。
        # @type TableList: Array
        # @param TotalCount: 实例总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TableList, :TotalCount, :RequestId
        
        def initialize(tablelist=nil, totalcount=nil, requestid=nil)
          @TableList = tablelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TableList'].nil?
            @TableList = []
            params['TableList'].each do |i|
              tableresponseinfo_tmp = TableResponseInfo.new
              tableresponseinfo_tmp.deserialize(i)
              @TableList << tableresponseinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskResult请求参数结构体
      class DescribeTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务唯一ID
        # @type TaskId: String
        # @param NextToken: 上一次请求响应返回的分页信息。第一次可以不带，从头开始返回数据，每次返回MaxResults字段设置的数据量。
        # @type NextToken: String
        # @param MaxResults: 返回结果的最大行数，范围0~1000，默认为1000.
        # @type MaxResults: Integer

        attr_accessor :TaskId, :NextToken, :MaxResults
        
        def initialize(taskid=nil, nexttoken=nil, maxresults=nil)
          @TaskId = taskid
          @NextToken = nexttoken
          @MaxResults = maxresults
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @NextToken = params['NextToken']
          @MaxResults = params['MaxResults']
        end
      end

      # DescribeTaskResult返回参数结构体
      class DescribeTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param TaskInfo: 查询的任务信息，返回为空表示输入任务ID对应的任务不存在。只有当任务状态为成功（2）的时候，才会返回任务的结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskInfo: :class:`Tencentcloud::Dlc.v20210125.models.TaskResultInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskInfo, :RequestId
        
        def initialize(taskinfo=nil, requestid=nil)
          @TaskInfo = taskinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskInfo'].nil?
            @TaskInfo = TaskResultInfo.new
            @TaskInfo.deserialize(params['TaskInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件，如下支持的过滤类型，传参Name应为以下其中一个,其中task-id支持最大50个过滤个数，其他过滤参数支持的总数不超过5个。
        # task-id - String - （任务ID准确过滤）task-id取值形如：e386471f-139a-4e59-877f-50ece8135b99。
        # task-state - String - （任务状态过滤）取值范围 0(初始化)， 1(运行中)， 2(成功)， -1(失败)。
        # task-sql-keyword - String - （SQL语句关键字模糊过滤）取值形如：DROP TABLE。
        # task-operator- string （子uin过滤）
        # task-kind - string （任务类型过滤）
        # @type Filters: Array
        # @param SortBy: 排序字段，支持如下字段类型，create-time（创建时间，默认）、update-time（更新时间）
        # @type SortBy: String
        # @param Sorting: 排序方式，desc表示正序，asc表示反序， 默认为asc。
        # @type Sorting: String
        # @param StartTime: 起始时间点，格式为yyyy-mm-dd HH:MM:SS。默认为45天前的当前时刻
        # @type StartTime: String
        # @param EndTime: 结束时间点，格式为yyyy-mm-dd HH:MM:SS时间跨度在(0,30天]，支持最近45天数据查询。默认为当前时刻
        # @type EndTime: String
        # @param DataEngineName: 支持计算资源名字筛选
        # @type DataEngineName: String

        attr_accessor :Limit, :Offset, :Filters, :SortBy, :Sorting, :StartTime, :EndTime, :DataEngineName
        
        def initialize(limit=nil, offset=nil, filters=nil, sortby=nil, sorting=nil, starttime=nil, endtime=nil, dataenginename=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @SortBy = sortby
          @Sorting = sorting
          @StartTime = starttime
          @EndTime = endtime
          @DataEngineName = dataenginename
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @SortBy = params['SortBy']
          @Sorting = params['Sorting']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DataEngineName = params['DataEngineName']
        end
      end

      # DescribeTasks返回参数结构体
      class DescribeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskList: 任务对象列表。
        # @type TaskList: Array
        # @param TotalCount: 实例总数。
        # @type TotalCount: Integer
        # @param TasksOverview: 任务概览信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TasksOverview: :class:`Tencentcloud::Dlc.v20210125.models.TasksOverview`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskList, :TotalCount, :TasksOverview, :RequestId
        
        def initialize(tasklist=nil, totalcount=nil, tasksoverview=nil, requestid=nil)
          @TaskList = tasklist
          @TotalCount = totalcount
          @TasksOverview = tasksoverview
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              taskresponseinfo_tmp = TaskResponseInfo.new
              taskresponseinfo_tmp.deserialize(i)
              @TaskList << taskresponseinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          unless params['TasksOverview'].nil?
            @TasksOverview = TasksOverview.new
            @TasksOverview.deserialize(params['TasksOverview'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsers请求参数结构体
      class DescribeUsersRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 指定查询的子用户uin，用户需要通过CreateUser接口创建。
        # @type UserId: String
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大值100
        # @type Limit: Integer
        # @param SortBy: 排序字段，支持如下字段类型，create-time
        # @type SortBy: String
        # @param Sorting: 排序方式，desc表示正序，asc表示反序， 默认为asc
        # @type Sorting: String
        # @param Filters: 过滤条件，支持如下字段类型，user-type：根据用户类型过滤。user-keyword：根据用户名称过滤
        # @type Filters: Array

        attr_accessor :UserId, :Offset, :Limit, :SortBy, :Sorting, :Filters
        
        def initialize(userid=nil, offset=nil, limit=nil, sortby=nil, sorting=nil, filters=nil)
          @UserId = userid
          @Offset = offset
          @Limit = limit
          @SortBy = sortby
          @Sorting = sorting
          @Filters = filters
        end

        def deserialize(params)
          @UserId = params['UserId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SortBy = params['SortBy']
          @Sorting = params['Sorting']
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

      # DescribeUsers返回参数结构体
      class DescribeUsersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询到的用户总数
        # @type TotalCount: Integer
        # @param UserSet: 查询到的授权用户信息集合
        # @type UserSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :UserSet, :RequestId
        
        def initialize(totalcount=nil, userset=nil, requestid=nil)
          @TotalCount = totalcount
          @UserSet = userset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['UserSet'].nil?
            @UserSet = []
            params['UserSet'].each do |i|
              userinfo_tmp = UserInfo.new
              userinfo_tmp.deserialize(i)
              @UserSet << userinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeViews请求参数结构体
      class DescribeViewsRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 列出该数据库下所属数据表。
        # @type DatabaseName: String
        # @param Limit: 返回数量，默认为10，最大值为100。
        # @type Limit: Integer
        # @param Offset: 数据偏移量，从0开始，默认为0。
        # @type Offset: Integer
        # @param Filters: 过滤条件，如下支持的过滤类型，传参Name应为其一
        # view-name - String - （过滤条件）数据表名称,形如：view-001。
        # view-id - String - （过滤条件）view id形如：12342。
        # @type Filters: Array
        # @param DatasourceConnectionName: 数据库所属的数据源名称
        # @type DatasourceConnectionName: String
        # @param Sort: 排序字段
        # @type Sort: String
        # @param Asc: 排序规则，true:升序；false:降序
        # @type Asc: Boolean
        # @param StartTime: 按视图更新时间筛选，开始时间，如2021-11-11 00:00:00
        # @type StartTime: String
        # @param EndTime: 按视图更新时间筛选，结束时间，如2021-11-12 00:00:00
        # @type EndTime: String

        attr_accessor :DatabaseName, :Limit, :Offset, :Filters, :DatasourceConnectionName, :Sort, :Asc, :StartTime, :EndTime
        
        def initialize(databasename=nil, limit=nil, offset=nil, filters=nil, datasourceconnectionname=nil, sort=nil, asc=nil, starttime=nil, endtime=nil)
          @DatabaseName = databasename
          @Limit = limit
          @Offset = offset
          @Filters = filters
          @DatasourceConnectionName = datasourceconnectionname
          @Sort = sort
          @Asc = asc
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @Sort = params['Sort']
          @Asc = params['Asc']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeViews返回参数结构体
      class DescribeViewsResponse < TencentCloud::Common::AbstractModel
        # @param ViewList: 视图对象列表。
        # @type ViewList: Array
        # @param TotalCount: 实例总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ViewList, :TotalCount, :RequestId
        
        def initialize(viewlist=nil, totalcount=nil, requestid=nil)
          @ViewList = viewlist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ViewList'].nil?
            @ViewList = []
            params['ViewList'].each do |i|
              viewresponseinfo_tmp = ViewResponseInfo.new
              viewresponseinfo_tmp.deserialize(i)
              @ViewList << viewresponseinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWorkGroups请求参数结构体
      class DescribeWorkGroupsRequest < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 查询的工作组Id，不填或填0表示不过滤。
        # @type WorkGroupId: Integer
        # @param Filters: 过滤条件，当前仅支持按照工作组名称进行模糊搜索。Key为workgroup-name
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大值100
        # @type Limit: Integer
        # @param SortBy: 排序字段，支持如下字段类型，create-time
        # @type SortBy: String
        # @param Sorting: 排序方式，desc表示正序，asc表示反序， 默认为asc
        # @type Sorting: String

        attr_accessor :WorkGroupId, :Filters, :Offset, :Limit, :SortBy, :Sorting
        
        def initialize(workgroupid=nil, filters=nil, offset=nil, limit=nil, sortby=nil, sorting=nil)
          @WorkGroupId = workgroupid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @SortBy = sortby
          @Sorting = sorting
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SortBy = params['SortBy']
          @Sorting = params['Sorting']
        end
      end

      # DescribeWorkGroups返回参数结构体
      class DescribeWorkGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 工作组总数
        # @type TotalCount: Integer
        # @param WorkGroupSet: 工作组信息集合
        # @type WorkGroupSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :WorkGroupSet, :RequestId
        
        def initialize(totalcount=nil, workgroupset=nil, requestid=nil)
          @TotalCount = totalcount
          @WorkGroupSet = workgroupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['WorkGroupSet'].nil?
            @WorkGroupSet = []
            params['WorkGroupSet'].each do |i|
              workgroupinfo_tmp = WorkGroupInfo.new
              workgroupinfo_tmp.deserialize(i)
              @WorkGroupSet << workgroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DetachUserPolicy请求参数结构体
      class DetachUserPolicyRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id，和CAM侧Uin匹配
        # @type UserId: String
        # @param PolicySet: 解绑的权限集合
        # @type PolicySet: Array

        attr_accessor :UserId, :PolicySet
        
        def initialize(userid=nil, policyset=nil)
          @UserId = userid
          @PolicySet = policyset
        end

        def deserialize(params)
          @UserId = params['UserId']
          unless params['PolicySet'].nil?
            @PolicySet = []
            params['PolicySet'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicySet << policy_tmp
            end
          end
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

      # DetachWorkGroupPolicy请求参数结构体
      class DetachWorkGroupPolicyRequest < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 工作组Id
        # @type WorkGroupId: Integer
        # @param PolicySet: 解绑的权限集合
        # @type PolicySet: Array

        attr_accessor :WorkGroupId, :PolicySet
        
        def initialize(workgroupid=nil, policyset=nil)
          @WorkGroupId = workgroupid
          @PolicySet = policyset
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
          unless params['PolicySet'].nil?
            @PolicySet = []
            params['PolicySet'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicySet << policy_tmp
            end
          end
        end
      end

      # DetachWorkGroupPolicy返回参数结构体
      class DetachWorkGroupPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DropDMSDatabase请求参数结构体
      class DropDMSDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param Name: 数据库名称
        # @type Name: String
        # @param DeleteData: 是否删除数据
        # @type DeleteData: Boolean
        # @param Cascade: 是否级联删除
        # @type Cascade: Boolean

        attr_accessor :Name, :DeleteData, :Cascade
        
        def initialize(name=nil, deletedata=nil, cascade=nil)
          @Name = name
          @DeleteData = deletedata
          @Cascade = cascade
        end

        def deserialize(params)
          @Name = params['Name']
          @DeleteData = params['DeleteData']
          @Cascade = params['Cascade']
        end
      end

      # DropDMSDatabase返回参数结构体
      class DropDMSDatabaseResponse < TencentCloud::Common::AbstractModel
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

      # DropDMSPartitions请求参数结构体
      class DropDMSPartitionsRequest < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名称
        # @type DatabaseName: String
        # @param SchemaName: 数据库Schema名称
        # @type SchemaName: String
        # @param TableName: 数据表名称
        # @type TableName: String
        # @param Name: 分区名称
        # @type Name: String
        # @param Values: 单个分区名称
        # @type Values: Array
        # @param DeleteData: 是否删除分区数据
        # @type DeleteData: Boolean

        attr_accessor :DatabaseName, :SchemaName, :TableName, :Name, :Values, :DeleteData
        
        def initialize(databasename=nil, schemaname=nil, tablename=nil, name=nil, values=nil, deletedata=nil)
          @DatabaseName = databasename
          @SchemaName = schemaname
          @TableName = tablename
          @Name = name
          @Values = values
          @DeleteData = deletedata
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @SchemaName = params['SchemaName']
          @TableName = params['TableName']
          @Name = params['Name']
          @Values = params['Values']
          @DeleteData = params['DeleteData']
        end
      end

      # DropDMSPartitions返回参数结构体
      class DropDMSPartitionsResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态
        # @type Status: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DropDMSTable请求参数结构体
      class DropDMSTableRequest < TencentCloud::Common::AbstractModel
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param Name: 表名称
        # @type Name: String
        # @param DeleteData: 是否删除数据
        # @type DeleteData: Boolean
        # @param EnvProps: 环境属性
        # @type EnvProps: :class:`Tencentcloud::Dlc.v20210125.models.KVPair`

        attr_accessor :DbName, :Name, :DeleteData, :EnvProps
        
        def initialize(dbname=nil, name=nil, deletedata=nil, envprops=nil)
          @DbName = dbname
          @Name = name
          @DeleteData = deletedata
          @EnvProps = envprops
        end

        def deserialize(params)
          @DbName = params['DbName']
          @Name = params['Name']
          @DeleteData = params['DeleteData']
          unless params['EnvProps'].nil?
            @EnvProps = KVPair.new
            @EnvProps.deserialize(params['EnvProps'])
          end
        end
      end

      # DropDMSTable返回参数结构体
      class DropDMSTableResponse < TencentCloud::Common::AbstractModel
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

      # SQL语句对象
      class Execution < TencentCloud::Common::AbstractModel
        # @param SQL: 自动生成SQL语句。
        # @type SQL: String

        attr_accessor :SQL
        
        def initialize(sql=nil)
          @SQL = sql
        end

        def deserialize(params)
          @SQL = params['SQL']
        end
      end

      # 查询列表过滤条件参数
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 属性名称, 若存在多个Filter时，Filter间的关系为逻辑或（OR）关系。
        # @type Name: String
        # @param Values: 属性值, 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
        # @type Values: Array

        attr_accessor :Name, :Values
        
        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 日志详情
      class JobLogResult < TencentCloud::Common::AbstractModel
        # @param Time: 日志时间戳，毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Time: Integer
        # @param TopicId: 日志topic id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicId: String
        # @param TopicName: 日志topic name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopicName: String
        # @param LogJson: 日志内容，json字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogJson: String

        attr_accessor :Time, :TopicId, :TopicName, :LogJson
        
        def initialize(time=nil, topicid=nil, topicname=nil, logjson=nil)
          @Time = time
          @TopicId = topicid
          @TopicName = topicname
          @LogJson = logjson
        end

        def deserialize(params)
          @Time = params['Time']
          @TopicId = params['TopicId']
          @TopicName = params['TopicName']
          @LogJson = params['LogJson']
        end
      end

      # 配置格式
      class KVPair < TencentCloud::Common::AbstractModel
        # @param Key: 配置的key值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 配置的value值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Key, :Value
        
        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # ListTaskJobLogDetail请求参数结构体
      class ListTaskJobLogDetailRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 列表返回的Id
        # @type TaskId: String
        # @param StartTime: 开始运行时间，unix时间戳（毫秒）
        # @type StartTime: Integer
        # @param EndTime: 结束运行时间，unix时间戳（毫秒）
        # @type EndTime: Integer
        # @param Limit: 分页大小，最大1000，配合Context一起使用
        # @type Limit: Integer
        # @param Context: 下一次分页参数，第一次传空
        # @type Context: String
        # @param Asc: 最近1000条日志是否升序排列，true:升序排序，false:倒序，默认false，倒序排列
        # @type Asc: Boolean
        # @param Filters: 预览日志的通用过滤条件
        # @type Filters: Array

        attr_accessor :TaskId, :StartTime, :EndTime, :Limit, :Context, :Asc, :Filters
        
        def initialize(taskid=nil, starttime=nil, endtime=nil, limit=nil, context=nil, asc=nil, filters=nil)
          @TaskId = taskid
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Context = context
          @Asc = asc
          @Filters = filters
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Context = params['Context']
          @Asc = params['Asc']
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

      # ListTaskJobLogDetail返回参数结构体
      class ListTaskJobLogDetailResponse < TencentCloud::Common::AbstractModel
        # @param Context: 下一次分页参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param ListOver: 是否获取完结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListOver: Boolean
        # @param Results: 日志详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :ListOver, :Results, :RequestId
        
        def initialize(context=nil, listover=nil, results=nil, requestid=nil)
          @Context = context
          @ListOver = listover
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          @ListOver = params['ListOver']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              joblogresult_tmp = JobLogResult.new
              joblogresult_tmp.deserialize(i)
              @Results << joblogresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 元数据加锁内容
      class LockComponentInfo < TencentCloud::Common::AbstractModel
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param TableName: 表名称
        # @type TableName: String
        # @param Partition: 分区
        # @type Partition: String
        # @param LockType: 锁类型：SHARED_READ、SHARED_WRITE、EXCLUSIVE
        # @type LockType: String
        # @param LockLevel: 锁级别：DB、TABLE、PARTITION
        # @type LockLevel: String
        # @param DataOperationType: 锁操作：SELECT,INSERT,UPDATE,DELETE,UNSET,NO_TXN
        # @type DataOperationType: String
        # @param IsAcid: 是否保持Acid
        # @type IsAcid: Boolean
        # @param IsDynamicPartitionWrite: 是否动态分区写
        # @type IsDynamicPartitionWrite: Boolean

        attr_accessor :DbName, :TableName, :Partition, :LockType, :LockLevel, :DataOperationType, :IsAcid, :IsDynamicPartitionWrite
        
        def initialize(dbname=nil, tablename=nil, partition=nil, locktype=nil, locklevel=nil, dataoperationtype=nil, isacid=nil, isdynamicpartitionwrite=nil)
          @DbName = dbname
          @TableName = tablename
          @Partition = partition
          @LockType = locktype
          @LockLevel = locklevel
          @DataOperationType = dataoperationtype
          @IsAcid = isacid
          @IsDynamicPartitionWrite = isdynamicpartitionwrite
        end

        def deserialize(params)
          @DbName = params['DbName']
          @TableName = params['TableName']
          @Partition = params['Partition']
          @LockType = params['LockType']
          @LockLevel = params['LockLevel']
          @DataOperationType = params['DataOperationType']
          @IsAcid = params['IsAcid']
          @IsDynamicPartitionWrite = params['IsDynamicPartitionWrite']
        end
      end

      # LockMetaData请求参数结构体
      class LockMetaDataRequest < TencentCloud::Common::AbstractModel
        # @param LockComponentList: 加锁内容
        # @type LockComponentList: Array
        # @param DatasourceConnectionName: 数据源名称
        # @type DatasourceConnectionName: String
        # @param TxnId: 事务id
        # @type TxnId: Integer
        # @param AgentInfo: 客户端信息
        # @type AgentInfo: String
        # @param Hostname: 主机名
        # @type Hostname: String

        attr_accessor :LockComponentList, :DatasourceConnectionName, :TxnId, :AgentInfo, :Hostname
        
        def initialize(lockcomponentlist=nil, datasourceconnectionname=nil, txnid=nil, agentinfo=nil, hostname=nil)
          @LockComponentList = lockcomponentlist
          @DatasourceConnectionName = datasourceconnectionname
          @TxnId = txnid
          @AgentInfo = agentinfo
          @Hostname = hostname
        end

        def deserialize(params)
          unless params['LockComponentList'].nil?
            @LockComponentList = []
            params['LockComponentList'].each do |i|
              lockcomponentinfo_tmp = LockComponentInfo.new
              lockcomponentinfo_tmp.deserialize(i)
              @LockComponentList << lockcomponentinfo_tmp
            end
          end
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @TxnId = params['TxnId']
          @AgentInfo = params['AgentInfo']
          @Hostname = params['Hostname']
        end
      end

      # LockMetaData返回参数结构体
      class LockMetaDataResponse < TencentCloud::Common::AbstractModel
        # @param LockId: 锁id
        # @type LockId: Integer
        # @param LockState: 锁状态：ACQUIRED、WAITING、ABORT、NOT_ACQUIRED
        # @type LockState: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LockId, :LockState, :RequestId
        
        def initialize(lockid=nil, lockstate=nil, requestid=nil)
          @LockId = lockid
          @LockState = lockstate
          @RequestId = requestid
        end

        def deserialize(params)
          @LockId = params['LockId']
          @LockState = params['LockState']
          @RequestId = params['RequestId']
        end
      end

      # ModifySparkApp请求参数结构体
      class ModifySparkAppRequest < TencentCloud::Common::AbstractModel
        # @param AppName: spark应用名
        # @type AppName: String
        # @param AppType: 1代表spark jar应用，2代表spark streaming应用
        # @type AppType: Integer
        # @param DataEngine: 执行spark作业的数据引擎
        # @type DataEngine: String
        # @param AppFile: spark应用的执行入口
        # @type AppFile: String
        # @param RoleArn: 执行spark作业的角色ID
        # @type RoleArn: Integer
        # @param AppDriverSize: spark作业driver资源规格大小, 可取small,medium,large,xlarge
        # @type AppDriverSize: String
        # @param AppExecutorSize: spark作业executor资源规格大小, 可取small,medium,large,xlarge
        # @type AppExecutorSize: String
        # @param AppExecutorNums: spark作业executor个数
        # @type AppExecutorNums: Integer
        # @param SparkAppId: spark应用Id
        # @type SparkAppId: String
        # @param Eni: 该字段已下线，请使用字段Datasource
        # @type Eni: String
        # @param IsLocal: 是否本地上传，可取cos,lakefs
        # @type IsLocal: String
        # @param MainClass: spark jar作业时的主类
        # @type MainClass: String
        # @param AppConf: spark配置，以换行符分隔
        # @type AppConf: String
        # @param IsLocalJars: jar资源依赖上传方式，1、cos；2、lakefs（控制台使用，该方式不支持直接接口调用）
        # @type IsLocalJars: String
        # @param AppJars: spark jar作业依赖jars，以逗号分隔
        # @type AppJars: String
        # @param IsLocalFiles: file资源依赖上传方式，1、cos；2、lakefs（控制台使用，该方式不支持直接接口调用）
        # @type IsLocalFiles: String
        # @param AppFiles: spark作业依赖资源，以逗号分隔
        # @type AppFiles: String
        # @param IsLocalPythonFiles: pyspark：依赖上传方式，1、cos；2、lakefs（控制台使用，该方式不支持直接接口调用）
        # @type IsLocalPythonFiles: String
        # @param AppPythonFiles: pyspark：python依赖, 除py文件外，还支持zip/egg等归档格式，多文件以逗号分隔
        # @type AppPythonFiles: String
        # @param CmdArgs: spark作业命令行参数
        # @type CmdArgs: String
        # @param MaxRetries: 只对spark流任务生效
        # @type MaxRetries: Integer
        # @param DataSource: 数据源名
        # @type DataSource: String
        # @param IsLocalArchives: archives：依赖上传方式，1、cos；2、lakefs（控制台使用，该方式不支持直接接口调用）
        # @type IsLocalArchives: String
        # @param AppArchives: archives：依赖资源
        # @type AppArchives: String

        attr_accessor :AppName, :AppType, :DataEngine, :AppFile, :RoleArn, :AppDriverSize, :AppExecutorSize, :AppExecutorNums, :SparkAppId, :Eni, :IsLocal, :MainClass, :AppConf, :IsLocalJars, :AppJars, :IsLocalFiles, :AppFiles, :IsLocalPythonFiles, :AppPythonFiles, :CmdArgs, :MaxRetries, :DataSource, :IsLocalArchives, :AppArchives
        
        def initialize(appname=nil, apptype=nil, dataengine=nil, appfile=nil, rolearn=nil, appdriversize=nil, appexecutorsize=nil, appexecutornums=nil, sparkappid=nil, eni=nil, islocal=nil, mainclass=nil, appconf=nil, islocaljars=nil, appjars=nil, islocalfiles=nil, appfiles=nil, islocalpythonfiles=nil, apppythonfiles=nil, cmdargs=nil, maxretries=nil, datasource=nil, islocalarchives=nil, apparchives=nil)
          @AppName = appname
          @AppType = apptype
          @DataEngine = dataengine
          @AppFile = appfile
          @RoleArn = rolearn
          @AppDriverSize = appdriversize
          @AppExecutorSize = appexecutorsize
          @AppExecutorNums = appexecutornums
          @SparkAppId = sparkappid
          @Eni = eni
          @IsLocal = islocal
          @MainClass = mainclass
          @AppConf = appconf
          @IsLocalJars = islocaljars
          @AppJars = appjars
          @IsLocalFiles = islocalfiles
          @AppFiles = appfiles
          @IsLocalPythonFiles = islocalpythonfiles
          @AppPythonFiles = apppythonfiles
          @CmdArgs = cmdargs
          @MaxRetries = maxretries
          @DataSource = datasource
          @IsLocalArchives = islocalarchives
          @AppArchives = apparchives
        end

        def deserialize(params)
          @AppName = params['AppName']
          @AppType = params['AppType']
          @DataEngine = params['DataEngine']
          @AppFile = params['AppFile']
          @RoleArn = params['RoleArn']
          @AppDriverSize = params['AppDriverSize']
          @AppExecutorSize = params['AppExecutorSize']
          @AppExecutorNums = params['AppExecutorNums']
          @SparkAppId = params['SparkAppId']
          @Eni = params['Eni']
          @IsLocal = params['IsLocal']
          @MainClass = params['MainClass']
          @AppConf = params['AppConf']
          @IsLocalJars = params['IsLocalJars']
          @AppJars = params['AppJars']
          @IsLocalFiles = params['IsLocalFiles']
          @AppFiles = params['AppFiles']
          @IsLocalPythonFiles = params['IsLocalPythonFiles']
          @AppPythonFiles = params['AppPythonFiles']
          @CmdArgs = params['CmdArgs']
          @MaxRetries = params['MaxRetries']
          @DataSource = params['DataSource']
          @IsLocalArchives = params['IsLocalArchives']
          @AppArchives = params['AppArchives']
        end
      end

      # ModifySparkApp返回参数结构体
      class ModifySparkAppResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUser请求参数结构体
      class ModifyUserRequest < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id，和CAM侧Uin匹配
        # @type UserId: String
        # @param UserDescription: 用户描述
        # @type UserDescription: String

        attr_accessor :UserId, :UserDescription
        
        def initialize(userid=nil, userdescription=nil)
          @UserId = userid
          @UserDescription = userdescription
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserDescription = params['UserDescription']
        end
      end

      # ModifyUser返回参数结构体
      class ModifyUserResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWorkGroup请求参数结构体
      class ModifyWorkGroupRequest < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 工作组Id
        # @type WorkGroupId: Integer
        # @param WorkGroupDescription: 工作组描述
        # @type WorkGroupDescription: String

        attr_accessor :WorkGroupId, :WorkGroupDescription
        
        def initialize(workgroupid=nil, workgroupdescription=nil)
          @WorkGroupId = workgroupid
          @WorkGroupDescription = workgroupdescription
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
          @WorkGroupDescription = params['WorkGroupDescription']
        end
      end

      # ModifyWorkGroup返回参数结构体
      class ModifyWorkGroupResponse < TencentCloud::Common::AbstractModel
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

      # 数据格式其它类型。
      class Other < TencentCloud::Common::AbstractModel
        # @param Format: 枚举类型，默认值为Json，可选值为[Json, Parquet, ORC, AVRD]之一。
        # @type Format: String

        attr_accessor :Format
        
        def initialize(format=nil)
          @Format = format
        end

        def deserialize(params)
          @Format = params['Format']
        end
      end

      # 数据表分块信息。
      class Partition < TencentCloud::Common::AbstractModel
        # @param Name: 分区列名。
        # @type Name: String
        # @param Type: 分区类型。
        # @type Type: String
        # @param Comment: 对分区的描述。
        # @type Comment: String
        # @param Transform: 隐式分区转换策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Transform: String
        # @param TransformArgs: 转换策略参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransformArgs: Array
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer

        attr_accessor :Name, :Type, :Comment, :Transform, :TransformArgs, :CreateTime
        
        def initialize(name=nil, type=nil, comment=nil, transform=nil, transformargs=nil, createtime=nil)
          @Name = name
          @Type = type
          @Comment = comment
          @Transform = transform
          @TransformArgs = transformargs
          @CreateTime = createtime
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Comment = params['Comment']
          @Transform = params['Transform']
          @TransformArgs = params['TransformArgs']
          @CreateTime = params['CreateTime']
        end
      end

      # 权限对象
      class Policy < TencentCloud::Common::AbstractModel
        # @param Database: 需要授权的数据库名，填*代表当前Catalog下所有数据库。当授权类型为管理员级别时，只允许填“*”，当授权类型为数据连接级别时只允许填空，其他类型下可以任意指定数据库。
        # @type Database: String
        # @param Catalog: 需要授权的数据源名称，管理员级别下只支持填*（代表该级别全部资源）；数据源级别和数据库级别鉴权的情况下，只支持填COSDataCatalog或者*；在数据表级别鉴权下可以填写用户自定义数据源。不填情况下默认为DataLakeCatalog。注意：如果是对用户自定义数据源进行鉴权，DLC能够管理的权限是用户接入数据源的时候提供的账户的子集。
        # @type Catalog: String
        # @param Table: 需要授权的表名，填*代表当前Database下所有表。当授权类型为管理员级别时，只允许填“*”，当授权类型为数据连接级别、数据库级别时只允许填空，其他类型下可以任意指定数据表。
        # @type Table: String
        # @param Operation: 授权的权限操作，对于不同级别的鉴权提供不同操作。管理员权限：ALL，不填默认为ALL；数据连接级鉴权：CREATE；数据库级别鉴权：ALL、CREATE、ALTER、DROP；数据表权限：ALL、SELECT、INSERT、ALTER、DELETE、DROP、UPDATE。注意：在数据表权限下，指定的数据源不为COSDataCatalog的时候，只支持SELECT操作。
        # @type Operation: String
        # @param PolicyType: 授权类型，现在支持八种授权类型：ADMIN:管理员级别鉴权 DATASOURCE：数据连接级别鉴权 DATABASE：数据库级别鉴权 TABLE：表级别鉴权 VIEW：视图级别鉴权 FUNCTION：函数级别鉴权 COLUMN：列级别鉴权 ENGINE：数据引擎鉴权。不填默认为管理员级别鉴权。
        # @type PolicyType: String
        # @param Function: 需要授权的函数名，填*代表当前Catalog下所有函数。当授权类型为管理员级别时，只允许填“*”，当授权类型为数据连接级别时只允许填空，其他类型下可以任意指定函数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Function: String
        # @param View: 需要授权的视图，填*代表当前Database下所有视图。当授权类型为管理员级别时，只允许填“*”，当授权类型为数据连接级别、数据库级别时只允许填空，其他类型下可以任意指定视图。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type View: String
        # @param Column: 需要授权的列，填*代表当前所有列。当授权类型为管理员级别时，只允许填“*”
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Column: String
        # @param DataEngine: 需要授权的数据引擎，填*代表当前所有引擎。当授权类型为管理员级别时，只允许填“*”
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataEngine: String
        # @param ReAuth: 用户是否可以进行二次授权。当为true的时候，被授权的用户可以将本次获取的权限再次授权给其他子用户。默认为false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReAuth: Boolean
        # @param Source: 权限来源，入参不填。USER：权限来自用户本身；WORKGROUP：权限来自绑定的工作组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param Mode: 授权模式，入参不填。COMMON：普通模式；SENIOR：高级模式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mode: String
        # @param Operator: 操作者，入参不填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param CreateTime: 权限创建的时间，入参不填
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param SourceId: 权限所属工作组的ID，只有当该权限的来源为工作组时才会有值。即仅当Source字段的值为WORKGROUP时该字段才有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceId: Integer
        # @param SourceName: 权限所属工作组的名称，只有当该权限的来源为工作组时才会有值。即仅当Source字段的值为WORKGROUP时该字段才有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceName: String

        attr_accessor :Database, :Catalog, :Table, :Operation, :PolicyType, :Function, :View, :Column, :DataEngine, :ReAuth, :Source, :Mode, :Operator, :CreateTime, :SourceId, :SourceName
        
        def initialize(database=nil, catalog=nil, table=nil, operation=nil, policytype=nil, function=nil, view=nil, column=nil, dataengine=nil, reauth=nil, source=nil, mode=nil, operator=nil, createtime=nil, sourceid=nil, sourcename=nil)
          @Database = database
          @Catalog = catalog
          @Table = table
          @Operation = operation
          @PolicyType = policytype
          @Function = function
          @View = view
          @Column = column
          @DataEngine = dataengine
          @ReAuth = reauth
          @Source = source
          @Mode = mode
          @Operator = operator
          @CreateTime = createtime
          @SourceId = sourceid
          @SourceName = sourcename
        end

        def deserialize(params)
          @Database = params['Database']
          @Catalog = params['Catalog']
          @Table = params['Table']
          @Operation = params['Operation']
          @PolicyType = params['PolicyType']
          @Function = params['Function']
          @View = params['View']
          @Column = params['Column']
          @DataEngine = params['DataEngine']
          @ReAuth = params['ReAuth']
          @Source = params['Source']
          @Mode = params['Mode']
          @Operator = params['Operator']
          @CreateTime = params['CreateTime']
          @SourceId = params['SourceId']
          @SourceName = params['SourceName']
        end
      end

      # 数据库和数据表属性信息
      class Property < TencentCloud::Common::AbstractModel
        # @param Key: 属性key名称。
        # @type Key: String
        # @param Value: 属性key对应的value。
        # @type Value: String

        attr_accessor :Key, :Value
        
        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # ReportHeartbeatMetaData请求参数结构体
      class ReportHeartbeatMetaDataRequest < TencentCloud::Common::AbstractModel
        # @param DatasourceConnectionName: 数据源名称
        # @type DatasourceConnectionName: String
        # @param LockId: 锁ID
        # @type LockId: Integer
        # @param TxnId: 事务ID
        # @type TxnId: Integer

        attr_accessor :DatasourceConnectionName, :LockId, :TxnId
        
        def initialize(datasourceconnectionname=nil, lockid=nil, txnid=nil)
          @DatasourceConnectionName = datasourceconnectionname
          @LockId = lockid
          @TxnId = txnid
        end

        def deserialize(params)
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @LockId = params['LockId']
          @TxnId = params['TxnId']
        end
      end

      # ReportHeartbeatMetaData返回参数结构体
      class ReportHeartbeatMetaDataResponse < TencentCloud::Common::AbstractModel
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

      #  SQL查询任务
      class SQLTask < TencentCloud::Common::AbstractModel
        # @param SQL: base64加密后的SQL语句
        # @type SQL: String
        # @param Config: 任务的配置信息
        # @type Config: Array

        attr_accessor :SQL, :Config
        
        def initialize(sql=nil, config=nil)
          @SQL = sql
          @Config = config
        end

        def deserialize(params)
          @SQL = params['SQL']
          unless params['Config'].nil?
            @Config = []
            params['Config'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Config << kvpair_tmp
            end
          end
        end
      end

      # script实例。
      class Script < TencentCloud::Common::AbstractModel
        # @param ScriptId: 脚本Id，长度36字节。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptId: String
        # @param ScriptName: 脚本名称，长度0-25。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptName: String
        # @param ScriptDesc: 脚本描述，长度0-50。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScriptDesc: String
        # @param DatabaseName: 默认关联数据库。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param SQLStatement: SQL描述，长度0-10000。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SQLStatement: String
        # @param UpdateTime: 更新时间戳， 单位：ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: Integer

        attr_accessor :ScriptId, :ScriptName, :ScriptDesc, :DatabaseName, :SQLStatement, :UpdateTime
        
        def initialize(scriptid=nil, scriptname=nil, scriptdesc=nil, databasename=nil, sqlstatement=nil, updatetime=nil)
          @ScriptId = scriptid
          @ScriptName = scriptname
          @ScriptDesc = scriptdesc
          @DatabaseName = databasename
          @SQLStatement = sqlstatement
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ScriptId = params['ScriptId']
          @ScriptName = params['ScriptName']
          @ScriptDesc = params['ScriptDesc']
          @DatabaseName = params['DatabaseName']
          @SQLStatement = params['SQLStatement']
          @UpdateTime = params['UpdateTime']
        end
      end

      # spark作业详情
      class SparkJobInfo < TencentCloud::Common::AbstractModel
        # @param JobId: spark作业ID
        # @type JobId: String
        # @param JobName: spark作业名
        # @type JobName: String
        # @param JobType: spark作业类型，可去1或者2，1表示batch作业， 2表示streaming作业
        # @type JobType: Integer
        # @param DataEngine: 引擎名
        # @type DataEngine: String
        # @param Eni: 该字段已下线，请使用字段Datasource
        # @type Eni: String
        # @param IsLocal: 程序包是否本地上传，cos或者lakefs
        # @type IsLocal: String
        # @param JobFile: 程序包路径
        # @type JobFile: String
        # @param RoleArn: 角色ID
        # @type RoleArn: Integer
        # @param MainClass: spark作业运行主类
        # @type MainClass: String
        # @param CmdArgs: 命令行参数，spark作业命令行参数，空格分隔
        # @type CmdArgs: String
        # @param JobConf: spark原生配置，换行符分隔
        # @type JobConf: String
        # @param IsLocalJars: 依赖jars是否本地上传，cos或者lakefs
        # @type IsLocalJars: String
        # @param JobJars: spark作业依赖jars，逗号分隔
        # @type JobJars: String
        # @param IsLocalFiles: 依赖文件是否本地上传，cos或者lakefs
        # @type IsLocalFiles: String
        # @param JobFiles: spark作业依赖文件，逗号分隔
        # @type JobFiles: String
        # @param JobDriverSize: spark作业driver资源大小
        # @type JobDriverSize: String
        # @param JobExecutorSize: spark作业executor资源大小
        # @type JobExecutorSize: String
        # @param JobExecutorNums: spark作业executor个数
        # @type JobExecutorNums: Integer
        # @param JobMaxAttempts: spark流任务最大重试次数
        # @type JobMaxAttempts: Integer
        # @param JobCreator: spark作业创建者
        # @type JobCreator: String
        # @param JobCreateTime: spark作业创建时间
        # @type JobCreateTime: Integer
        # @param JobUpdateTime: spark作业更新时间
        # @type JobUpdateTime: Integer
        # @param CurrentTaskId: spark作业最近任务ID
        # @type CurrentTaskId: String
        # @param JobStatus: spark作业最近运行状态
        # @type JobStatus: Integer
        # @param StreamingStat: spark流作业统计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StreamingStat: :class:`Tencentcloud::Dlc.v20210125.models.StreamingStatistics`
        # @param DataSource: 数据源名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSource: String
        # @param IsLocalPythonFiles: pyspark：依赖上传方式，1、cos；2、lakefs（控制台使用，该方式不支持直接接口调用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsLocalPythonFiles: String
        # @param AppPythonFiles: 注：该返回值已废弃
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppPythonFiles: String
        # @param IsLocalArchives: archives：依赖上传方式，1、cos；2、lakefs（控制台使用，该方式不支持直接接口调用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsLocalArchives: String
        # @param JobArchives: archives：依赖资源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobArchives: String
        # @param JobPythonFiles: pyspark：python依赖, 除py文件外，还支持zip/egg等归档格式，多文件以逗号分隔
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobPythonFiles: String
        # @param TaskNum: 当前job正在运行或准备运行的任务个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskNum: Integer
        # @param DataEngineStatus: 引擎状态：-100（默认：未知状态），-2~11：引擎正常状态；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataEngineStatus: Integer

        attr_accessor :JobId, :JobName, :JobType, :DataEngine, :Eni, :IsLocal, :JobFile, :RoleArn, :MainClass, :CmdArgs, :JobConf, :IsLocalJars, :JobJars, :IsLocalFiles, :JobFiles, :JobDriverSize, :JobExecutorSize, :JobExecutorNums, :JobMaxAttempts, :JobCreator, :JobCreateTime, :JobUpdateTime, :CurrentTaskId, :JobStatus, :StreamingStat, :DataSource, :IsLocalPythonFiles, :AppPythonFiles, :IsLocalArchives, :JobArchives, :JobPythonFiles, :TaskNum, :DataEngineStatus
        
        def initialize(jobid=nil, jobname=nil, jobtype=nil, dataengine=nil, eni=nil, islocal=nil, jobfile=nil, rolearn=nil, mainclass=nil, cmdargs=nil, jobconf=nil, islocaljars=nil, jobjars=nil, islocalfiles=nil, jobfiles=nil, jobdriversize=nil, jobexecutorsize=nil, jobexecutornums=nil, jobmaxattempts=nil, jobcreator=nil, jobcreatetime=nil, jobupdatetime=nil, currenttaskid=nil, jobstatus=nil, streamingstat=nil, datasource=nil, islocalpythonfiles=nil, apppythonfiles=nil, islocalarchives=nil, jobarchives=nil, jobpythonfiles=nil, tasknum=nil, dataenginestatus=nil)
          @JobId = jobid
          @JobName = jobname
          @JobType = jobtype
          @DataEngine = dataengine
          @Eni = eni
          @IsLocal = islocal
          @JobFile = jobfile
          @RoleArn = rolearn
          @MainClass = mainclass
          @CmdArgs = cmdargs
          @JobConf = jobconf
          @IsLocalJars = islocaljars
          @JobJars = jobjars
          @IsLocalFiles = islocalfiles
          @JobFiles = jobfiles
          @JobDriverSize = jobdriversize
          @JobExecutorSize = jobexecutorsize
          @JobExecutorNums = jobexecutornums
          @JobMaxAttempts = jobmaxattempts
          @JobCreator = jobcreator
          @JobCreateTime = jobcreatetime
          @JobUpdateTime = jobupdatetime
          @CurrentTaskId = currenttaskid
          @JobStatus = jobstatus
          @StreamingStat = streamingstat
          @DataSource = datasource
          @IsLocalPythonFiles = islocalpythonfiles
          @AppPythonFiles = apppythonfiles
          @IsLocalArchives = islocalarchives
          @JobArchives = jobarchives
          @JobPythonFiles = jobpythonfiles
          @TaskNum = tasknum
          @DataEngineStatus = dataenginestatus
        end

        def deserialize(params)
          @JobId = params['JobId']
          @JobName = params['JobName']
          @JobType = params['JobType']
          @DataEngine = params['DataEngine']
          @Eni = params['Eni']
          @IsLocal = params['IsLocal']
          @JobFile = params['JobFile']
          @RoleArn = params['RoleArn']
          @MainClass = params['MainClass']
          @CmdArgs = params['CmdArgs']
          @JobConf = params['JobConf']
          @IsLocalJars = params['IsLocalJars']
          @JobJars = params['JobJars']
          @IsLocalFiles = params['IsLocalFiles']
          @JobFiles = params['JobFiles']
          @JobDriverSize = params['JobDriverSize']
          @JobExecutorSize = params['JobExecutorSize']
          @JobExecutorNums = params['JobExecutorNums']
          @JobMaxAttempts = params['JobMaxAttempts']
          @JobCreator = params['JobCreator']
          @JobCreateTime = params['JobCreateTime']
          @JobUpdateTime = params['JobUpdateTime']
          @CurrentTaskId = params['CurrentTaskId']
          @JobStatus = params['JobStatus']
          unless params['StreamingStat'].nil?
            @StreamingStat = StreamingStatistics.new
            @StreamingStat.deserialize(params['StreamingStat'])
          end
          @DataSource = params['DataSource']
          @IsLocalPythonFiles = params['IsLocalPythonFiles']
          @AppPythonFiles = params['AppPythonFiles']
          @IsLocalArchives = params['IsLocalArchives']
          @JobArchives = params['JobArchives']
          @JobPythonFiles = params['JobPythonFiles']
          @TaskNum = params['TaskNum']
          @DataEngineStatus = params['DataEngineStatus']
        end
      end

      # spark流任务统计信息
      class StreamingStatistics < TencentCloud::Common::AbstractModel
        # @param StartTime: 任务开始时间
        # @type StartTime: String
        # @param Receivers: 数据接收器数
        # @type Receivers: Integer
        # @param NumActiveReceivers: 运行中的接收器数
        # @type NumActiveReceivers: Integer
        # @param NumInactiveReceivers: 不活跃的接收器数
        # @type NumInactiveReceivers: Integer
        # @param NumActiveBatches: 运行中的批数
        # @type NumActiveBatches: Integer
        # @param NumRetainedCompletedBatches: 待处理的批数
        # @type NumRetainedCompletedBatches: Integer
        # @param NumTotalCompletedBatches: 已完成的批数
        # @type NumTotalCompletedBatches: Integer
        # @param AverageInputRate: 平均输入速率
        # @type AverageInputRate: Float
        # @param AverageSchedulingDelay: 平均等待时长
        # @type AverageSchedulingDelay: Float
        # @param AverageProcessingTime: 平均处理时长
        # @type AverageProcessingTime: Float
        # @param AverageTotalDelay: 平均延时
        # @type AverageTotalDelay: Float

        attr_accessor :StartTime, :Receivers, :NumActiveReceivers, :NumInactiveReceivers, :NumActiveBatches, :NumRetainedCompletedBatches, :NumTotalCompletedBatches, :AverageInputRate, :AverageSchedulingDelay, :AverageProcessingTime, :AverageTotalDelay
        
        def initialize(starttime=nil, receivers=nil, numactivereceivers=nil, numinactivereceivers=nil, numactivebatches=nil, numretainedcompletedbatches=nil, numtotalcompletedbatches=nil, averageinputrate=nil, averageschedulingdelay=nil, averageprocessingtime=nil, averagetotaldelay=nil)
          @StartTime = starttime
          @Receivers = receivers
          @NumActiveReceivers = numactivereceivers
          @NumInactiveReceivers = numinactivereceivers
          @NumActiveBatches = numactivebatches
          @NumRetainedCompletedBatches = numretainedcompletedbatches
          @NumTotalCompletedBatches = numtotalcompletedbatches
          @AverageInputRate = averageinputrate
          @AverageSchedulingDelay = averageschedulingdelay
          @AverageProcessingTime = averageprocessingtime
          @AverageTotalDelay = averagetotaldelay
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Receivers = params['Receivers']
          @NumActiveReceivers = params['NumActiveReceivers']
          @NumInactiveReceivers = params['NumInactiveReceivers']
          @NumActiveBatches = params['NumActiveBatches']
          @NumRetainedCompletedBatches = params['NumRetainedCompletedBatches']
          @NumTotalCompletedBatches = params['NumTotalCompletedBatches']
          @AverageInputRate = params['AverageInputRate']
          @AverageSchedulingDelay = params['AverageSchedulingDelay']
          @AverageProcessingTime = params['AverageProcessingTime']
          @AverageTotalDelay = params['AverageTotalDelay']
        end
      end

      # 数据表配置信息
      class TableBaseInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 该数据表所属数据库名字
        # @type DatabaseName: String
        # @param TableName: 数据表名字
        # @type TableName: String
        # @param DatasourceConnectionName: 该数据表所属数据源名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceConnectionName: String
        # @param TableComment: 该数据表备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableComment: String
        # @param Type: 具体类型，表or视图
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param TableFormat: 数据格式类型，hive，iceberg等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableFormat: String
        # @param UserAlias: 建表用户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAlias: String
        # @param UserSubUin: 建表用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserSubUin: String

        attr_accessor :DatabaseName, :TableName, :DatasourceConnectionName, :TableComment, :Type, :TableFormat, :UserAlias, :UserSubUin
        
        def initialize(databasename=nil, tablename=nil, datasourceconnectionname=nil, tablecomment=nil, type=nil, tableformat=nil, useralias=nil, usersubuin=nil)
          @DatabaseName = databasename
          @TableName = tablename
          @DatasourceConnectionName = datasourceconnectionname
          @TableComment = tablecomment
          @Type = type
          @TableFormat = tableformat
          @UserAlias = useralias
          @UserSubUin = usersubuin
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @TableName = params['TableName']
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @TableComment = params['TableComment']
          @Type = params['Type']
          @TableFormat = params['TableFormat']
          @UserAlias = params['UserAlias']
          @UserSubUin = params['UserSubUin']
        end
      end

      # 返回数据表的相关信息。
      class TableInfo < TencentCloud::Common::AbstractModel
        # @param TableBaseInfo: 数据表配置信息。
        # @type TableBaseInfo: :class:`Tencentcloud::Dlc.v20210125.models.TableBaseInfo`
        # @param DataFormat: 数据表格式。每次入参可选如下其一的KV结构，[TextFile，CSV，Json, Parquet, ORC, AVRD]。
        # @type DataFormat: :class:`Tencentcloud::Dlc.v20210125.models.DataFormat`
        # @param Columns: 数据表列信息。
        # @type Columns: Array
        # @param Partitions: 数据表分块信息。
        # @type Partitions: Array
        # @param Location: 数据存储路径。当前仅支持cos路径，格式如下：cosn://bucket-name/filepath。
        # @type Location: String

        attr_accessor :TableBaseInfo, :DataFormat, :Columns, :Partitions, :Location
        
        def initialize(tablebaseinfo=nil, dataformat=nil, columns=nil, partitions=nil, location=nil)
          @TableBaseInfo = tablebaseinfo
          @DataFormat = dataformat
          @Columns = columns
          @Partitions = partitions
          @Location = location
        end

        def deserialize(params)
          unless params['TableBaseInfo'].nil?
            @TableBaseInfo = TableBaseInfo.new
            @TableBaseInfo.deserialize(params['TableBaseInfo'])
          end
          unless params['DataFormat'].nil?
            @DataFormat = DataFormat.new
            @DataFormat.deserialize(params['DataFormat'])
          end
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              column_tmp = Column.new
              column_tmp.deserialize(i)
              @Columns << column_tmp
            end
          end
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              partition_tmp = Partition.new
              partition_tmp.deserialize(i)
              @Partitions << partition_tmp
            end
          end
          @Location = params['Location']
        end
      end

      # 查询表信息对象
      class TableResponseInfo < TencentCloud::Common::AbstractModel
        # @param TableBaseInfo: 数据表基本信息。
        # @type TableBaseInfo: :class:`Tencentcloud::Dlc.v20210125.models.TableBaseInfo`
        # @param Columns: 数据表列信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param Partitions: 数据表分块信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitions: Array
        # @param Location: 数据存储路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Location: String
        # @param Properties: 数据表属性信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array
        # @param ModifiedTime: 数据表更新时间, 单位: ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param CreateTime: 数据表创建时间,单位: ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param InputFormat: 数据格式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputFormat: String
        # @param StorageSize: 数据表存储大小（单位：Byte）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageSize: Integer
        # @param RecordCount: 数据表行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordCount: Integer

        attr_accessor :TableBaseInfo, :Columns, :Partitions, :Location, :Properties, :ModifiedTime, :CreateTime, :InputFormat, :StorageSize, :RecordCount
        
        def initialize(tablebaseinfo=nil, columns=nil, partitions=nil, location=nil, properties=nil, modifiedtime=nil, createtime=nil, inputformat=nil, storagesize=nil, recordcount=nil)
          @TableBaseInfo = tablebaseinfo
          @Columns = columns
          @Partitions = partitions
          @Location = location
          @Properties = properties
          @ModifiedTime = modifiedtime
          @CreateTime = createtime
          @InputFormat = inputformat
          @StorageSize = storagesize
          @RecordCount = recordcount
        end

        def deserialize(params)
          unless params['TableBaseInfo'].nil?
            @TableBaseInfo = TableBaseInfo.new
            @TableBaseInfo.deserialize(params['TableBaseInfo'])
          end
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              column_tmp = Column.new
              column_tmp.deserialize(i)
              @Columns << column_tmp
            end
          end
          unless params['Partitions'].nil?
            @Partitions = []
            params['Partitions'].each do |i|
              partition_tmp = Partition.new
              partition_tmp.deserialize(i)
              @Partitions << partition_tmp
            end
          end
          @Location = params['Location']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
          @ModifiedTime = params['ModifiedTime']
          @CreateTime = params['CreateTime']
          @InputFormat = params['InputFormat']
          @StorageSize = params['StorageSize']
          @RecordCount = params['RecordCount']
        end
      end

      # 任务类型，任务如SQL查询等。
      class Task < TencentCloud::Common::AbstractModel
        # @param SQLTask: SQL查询任务
        # @type SQLTask: :class:`Tencentcloud::Dlc.v20210125.models.SQLTask`
        # @param SparkSQLTask: Spark SQL查询任务
        # @type SparkSQLTask: :class:`Tencentcloud::Dlc.v20210125.models.SQLTask`

        attr_accessor :SQLTask, :SparkSQLTask
        
        def initialize(sqltask=nil, sparksqltask=nil)
          @SQLTask = sqltask
          @SparkSQLTask = sparksqltask
        end

        def deserialize(params)
          unless params['SQLTask'].nil?
            @SQLTask = SQLTask.new
            @SQLTask.deserialize(params['SQLTask'])
          end
          unless params['SparkSQLTask'].nil?
            @SparkSQLTask = SQLTask.new
            @SparkSQLTask.deserialize(params['SparkSQLTask'])
          end
        end
      end

      # 任务实例。
      class TaskResponseInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 任务所属Database的名称。
        # @type DatabaseName: String
        # @param DataAmount: 任务数据量。
        # @type DataAmount: Integer
        # @param Id: 任务Id。
        # @type Id: String
        # @param UsedTime: 计算耗时，单位： ms
        # @type UsedTime: Integer
        # @param OutputPath: 任务输出路径。
        # @type OutputPath: String
        # @param CreateTime: 任务创建时间。
        # @type CreateTime: String
        # @param State: 任务状态：0 初始化， 1 执行中， 2 执行成功，-1 执行失败，-3 已取消。
        # @type State: Integer
        # @param SQLType: 任务SQL类型，DDL|DML等
        # @type SQLType: String
        # @param SQL: 任务SQL语句
        # @type SQL: String
        # @param ResultExpired: 结果是否过期。
        # @type ResultExpired: Boolean
        # @param RowAffectInfo: 数据影响统计信息。
        # @type RowAffectInfo: String
        # @param DataSet: 任务结果数据表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataSet: String
        # @param Error: 失败信息, 例如：errorMessage。该字段已废弃。
        # @type Error: String
        # @param Percentage: 任务执行进度num/100(%)
        # @type Percentage: Integer
        # @param OutputMessage: 任务执行输出信息。
        # @type OutputMessage: String
        # @param TaskType: 执行SQL的引擎类型
        # @type TaskType: String
        # @param ProgressDetail: 任务进度明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgressDetail: String
        # @param UpdateTime: 任务结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param DataEngineId: 计算资源id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataEngineId: String
        # @param OperateUin: 执行sql的子uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateUin: String
        # @param DataEngineName: 计算资源名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataEngineName: String
        # @param InputType: 导入类型是本地导入还是cos
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputType: String
        # @param InputConf: 导入配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputConf: String
        # @param DataNumber: 数据条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataNumber: Integer
        # @param CanDownload: 查询数据能不能下载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanDownload: Boolean
        # @param UserAlias: 用户别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAlias: String
        # @param SparkJobName: spark应用作业名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparkJobName: String
        # @param SparkJobId: spark应用作业Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparkJobId: String
        # @param SparkJobFile: spark应用入口jar文件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparkJobFile: String
        # @param UiUrl: spark ui url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UiUrl: String
        # @param TotalTime: 任务耗时，单位： ms
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalTime: Integer
        # @param CmdArgs: spark app job执行task的程序入口参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CmdArgs: String

        attr_accessor :DatabaseName, :DataAmount, :Id, :UsedTime, :OutputPath, :CreateTime, :State, :SQLType, :SQL, :ResultExpired, :RowAffectInfo, :DataSet, :Error, :Percentage, :OutputMessage, :TaskType, :ProgressDetail, :UpdateTime, :DataEngineId, :OperateUin, :DataEngineName, :InputType, :InputConf, :DataNumber, :CanDownload, :UserAlias, :SparkJobName, :SparkJobId, :SparkJobFile, :UiUrl, :TotalTime, :CmdArgs
        
        def initialize(databasename=nil, dataamount=nil, id=nil, usedtime=nil, outputpath=nil, createtime=nil, state=nil, sqltype=nil, sql=nil, resultexpired=nil, rowaffectinfo=nil, dataset=nil, error=nil, percentage=nil, outputmessage=nil, tasktype=nil, progressdetail=nil, updatetime=nil, dataengineid=nil, operateuin=nil, dataenginename=nil, inputtype=nil, inputconf=nil, datanumber=nil, candownload=nil, useralias=nil, sparkjobname=nil, sparkjobid=nil, sparkjobfile=nil, uiurl=nil, totaltime=nil, cmdargs=nil)
          @DatabaseName = databasename
          @DataAmount = dataamount
          @Id = id
          @UsedTime = usedtime
          @OutputPath = outputpath
          @CreateTime = createtime
          @State = state
          @SQLType = sqltype
          @SQL = sql
          @ResultExpired = resultexpired
          @RowAffectInfo = rowaffectinfo
          @DataSet = dataset
          @Error = error
          @Percentage = percentage
          @OutputMessage = outputmessage
          @TaskType = tasktype
          @ProgressDetail = progressdetail
          @UpdateTime = updatetime
          @DataEngineId = dataengineid
          @OperateUin = operateuin
          @DataEngineName = dataenginename
          @InputType = inputtype
          @InputConf = inputconf
          @DataNumber = datanumber
          @CanDownload = candownload
          @UserAlias = useralias
          @SparkJobName = sparkjobname
          @SparkJobId = sparkjobid
          @SparkJobFile = sparkjobfile
          @UiUrl = uiurl
          @TotalTime = totaltime
          @CmdArgs = cmdargs
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @DataAmount = params['DataAmount']
          @Id = params['Id']
          @UsedTime = params['UsedTime']
          @OutputPath = params['OutputPath']
          @CreateTime = params['CreateTime']
          @State = params['State']
          @SQLType = params['SQLType']
          @SQL = params['SQL']
          @ResultExpired = params['ResultExpired']
          @RowAffectInfo = params['RowAffectInfo']
          @DataSet = params['DataSet']
          @Error = params['Error']
          @Percentage = params['Percentage']
          @OutputMessage = params['OutputMessage']
          @TaskType = params['TaskType']
          @ProgressDetail = params['ProgressDetail']
          @UpdateTime = params['UpdateTime']
          @DataEngineId = params['DataEngineId']
          @OperateUin = params['OperateUin']
          @DataEngineName = params['DataEngineName']
          @InputType = params['InputType']
          @InputConf = params['InputConf']
          @DataNumber = params['DataNumber']
          @CanDownload = params['CanDownload']
          @UserAlias = params['UserAlias']
          @SparkJobName = params['SparkJobName']
          @SparkJobId = params['SparkJobId']
          @SparkJobFile = params['SparkJobFile']
          @UiUrl = params['UiUrl']
          @TotalTime = params['TotalTime']
          @CmdArgs = params['CmdArgs']
        end
      end

      # 任务结果信息。
      class TaskResultInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务唯一ID
        # @type TaskId: String
        # @param DatasourceConnectionName: 数据源名称，当前任务执行时候选中的默认数据源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatasourceConnectionName: String
        # @param DatabaseName: 数据库名称，当前任务执行时候选中的默认数据库
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param SQL: 当前执行的SQL，一个任务包含一个SQL
        # @type SQL: String
        # @param SQLType: 执行任务的类型，现在分为DDL、DML、DQL
        # @type SQLType: String
        # @param State: 任务当前的状态，0：初始化 1：任务运行中 2：任务执行成功 -1：任务执行失败 -3：用户手动终止。只有任务执行成功的情况下，才会返回任务执行的结果
        # @type State: Integer
        # @param DataAmount: 扫描的数据量，单位byte
        # @type DataAmount: Integer
        # @param UsedTime: 计算耗时，单位： ms
        # @type UsedTime: Integer
        # @param OutputPath: 任务结果输出的COS桶地址
        # @type OutputPath: String
        # @param CreateTime: 任务创建时间，时间戳
        # @type CreateTime: String
        # @param OutputMessage: 任务执行信息，成功时返回success，失败时返回失败原因
        # @type OutputMessage: String
        # @param RowAffectInfo: 被影响的行数
        # @type RowAffectInfo: String
        # @param ResultSchema: 结果的schema信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultSchema: Array
        # @param ResultSet: 结果信息，反转义后，外层数组的每个元素为一行数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultSet: String
        # @param NextToken: 分页信息，如果没有更多结果数据，nextToken为空
        # @type NextToken: String
        # @param Percentage: 任务执行进度num/100(%)
        # @type Percentage: Integer
        # @param ProgressDetail: 任务进度明细
        # @type ProgressDetail: String
        # @param DisplayFormat: 控制台展示格式。table：表格展示 text：文本展示
        # @type DisplayFormat: String
        # @param TotalTime: 任务耗时，单位： ms
        # @type TotalTime: Integer

        attr_accessor :TaskId, :DatasourceConnectionName, :DatabaseName, :SQL, :SQLType, :State, :DataAmount, :UsedTime, :OutputPath, :CreateTime, :OutputMessage, :RowAffectInfo, :ResultSchema, :ResultSet, :NextToken, :Percentage, :ProgressDetail, :DisplayFormat, :TotalTime
        
        def initialize(taskid=nil, datasourceconnectionname=nil, databasename=nil, sql=nil, sqltype=nil, state=nil, dataamount=nil, usedtime=nil, outputpath=nil, createtime=nil, outputmessage=nil, rowaffectinfo=nil, resultschema=nil, resultset=nil, nexttoken=nil, percentage=nil, progressdetail=nil, displayformat=nil, totaltime=nil)
          @TaskId = taskid
          @DatasourceConnectionName = datasourceconnectionname
          @DatabaseName = databasename
          @SQL = sql
          @SQLType = sqltype
          @State = state
          @DataAmount = dataamount
          @UsedTime = usedtime
          @OutputPath = outputpath
          @CreateTime = createtime
          @OutputMessage = outputmessage
          @RowAffectInfo = rowaffectinfo
          @ResultSchema = resultschema
          @ResultSet = resultset
          @NextToken = nexttoken
          @Percentage = percentage
          @ProgressDetail = progressdetail
          @DisplayFormat = displayformat
          @TotalTime = totaltime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @DatasourceConnectionName = params['DatasourceConnectionName']
          @DatabaseName = params['DatabaseName']
          @SQL = params['SQL']
          @SQLType = params['SQLType']
          @State = params['State']
          @DataAmount = params['DataAmount']
          @UsedTime = params['UsedTime']
          @OutputPath = params['OutputPath']
          @CreateTime = params['CreateTime']
          @OutputMessage = params['OutputMessage']
          @RowAffectInfo = params['RowAffectInfo']
          unless params['ResultSchema'].nil?
            @ResultSchema = []
            params['ResultSchema'].each do |i|
              column_tmp = Column.new
              column_tmp.deserialize(i)
              @ResultSchema << column_tmp
            end
          end
          @ResultSet = params['ResultSet']
          @NextToken = params['NextToken']
          @Percentage = params['Percentage']
          @ProgressDetail = params['ProgressDetail']
          @DisplayFormat = params['DisplayFormat']
          @TotalTime = params['TotalTime']
        end
      end

      # 批量顺序执行任务集合
      class TasksInfo < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型，SQLTask：SQL查询任务。SparkSQLTask：Spark SQL查询任务
        # @type TaskType: String
        # @param FailureTolerance: 容错策略。Proceed：前面任务出错/取消后继续执行后面的任务。Terminate：前面的任务出错/取消之后终止后面任务的执行，后面的任务全部标记为已取消。
        # @type FailureTolerance: String
        # @param SQL: base64加密后的SQL语句，用";"号分隔每个SQL语句，一次最多提交50个任务。严格按照前后顺序执行
        # @type SQL: String
        # @param Config: 任务的配置信息，当前仅支持SparkSQLTask任务。
        # @type Config: Array
        # @param Params: 任务的用户自定义参数信息
        # @type Params: Array

        attr_accessor :TaskType, :FailureTolerance, :SQL, :Config, :Params
        
        def initialize(tasktype=nil, failuretolerance=nil, sql=nil, config=nil, params=nil)
          @TaskType = tasktype
          @FailureTolerance = failuretolerance
          @SQL = sql
          @Config = config
          @Params = params
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @FailureTolerance = params['FailureTolerance']
          @SQL = params['SQL']
          unless params['Config'].nil?
            @Config = []
            params['Config'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Config << kvpair_tmp
            end
          end
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Params << kvpair_tmp
            end
          end
        end
      end

      # 任务概览
      class TasksOverview < TencentCloud::Common::AbstractModel
        # @param TaskQueuedCount: 正在排队的任务个数
        # @type TaskQueuedCount: Integer
        # @param TaskInitCount: 初始化的任务个数
        # @type TaskInitCount: Integer
        # @param TaskRunningCount: 正在执行的任务个数
        # @type TaskRunningCount: Integer
        # @param TotalTaskCount: 当前时间范围的总任务个数
        # @type TotalTaskCount: Integer

        attr_accessor :TaskQueuedCount, :TaskInitCount, :TaskRunningCount, :TotalTaskCount
        
        def initialize(taskqueuedcount=nil, taskinitcount=nil, taskrunningcount=nil, totaltaskcount=nil)
          @TaskQueuedCount = taskqueuedcount
          @TaskInitCount = taskinitcount
          @TaskRunningCount = taskrunningcount
          @TotalTaskCount = totaltaskcount
        end

        def deserialize(params)
          @TaskQueuedCount = params['TaskQueuedCount']
          @TaskInitCount = params['TaskInitCount']
          @TaskRunningCount = params['TaskRunningCount']
          @TotalTaskCount = params['TotalTaskCount']
        end
      end

      # 文本格式
      class TextFile < TencentCloud::Common::AbstractModel
        # @param Format: 文本类型，本参数取值为TextFile。
        # @type Format: String
        # @param Regex: 处理文本用的正则表达式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Regex: String

        attr_accessor :Format, :Regex
        
        def initialize(format=nil, regex=nil)
          @Format = format
          @Regex = regex
        end

        def deserialize(params)
          @Format = params['Format']
          @Regex = params['Regex']
        end
      end

      # UnbindWorkGroupsFromUser请求参数结构体
      class UnbindWorkGroupsFromUserRequest < TencentCloud::Common::AbstractModel
        # @param AddInfo: 解绑的工作组Id和用户Id的关联关系
        # @type AddInfo: :class:`Tencentcloud::Dlc.v20210125.models.WorkGroupIdSetOfUserId`

        attr_accessor :AddInfo
        
        def initialize(addinfo=nil)
          @AddInfo = addinfo
        end

        def deserialize(params)
          unless params['AddInfo'].nil?
            @AddInfo = WorkGroupIdSetOfUserId.new
            @AddInfo.deserialize(params['AddInfo'])
          end
        end
      end

      # UnbindWorkGroupsFromUser返回参数结构体
      class UnbindWorkGroupsFromUserResponse < TencentCloud::Common::AbstractModel
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

      # UnlockMetaData请求参数结构体
      class UnlockMetaDataRequest < TencentCloud::Common::AbstractModel
        # @param LockId: 锁ID
        # @type LockId: Integer
        # @param DatasourceConnectionName: 数据源名称
        # @type DatasourceConnectionName: String

        attr_accessor :LockId, :DatasourceConnectionName
        
        def initialize(lockid=nil, datasourceconnectionname=nil)
          @LockId = lockid
          @DatasourceConnectionName = datasourceconnectionname
        end

        def deserialize(params)
          @LockId = params['LockId']
          @DatasourceConnectionName = params['DatasourceConnectionName']
        end
      end

      # UnlockMetaData返回参数结构体
      class UnlockMetaDataResponse < TencentCloud::Common::AbstractModel
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

      # 绑定到同一个工作组的用户Id的集合
      class UserIdSetOfWorkGroupId < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 工作组Id
        # @type WorkGroupId: Integer
        # @param UserIds: 用户Id集合，和CAM侧Uin匹配
        # @type UserIds: Array

        attr_accessor :WorkGroupId, :UserIds
        
        def initialize(workgroupid=nil, userids=nil)
          @WorkGroupId = workgroupid
          @UserIds = userids
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
          @UserIds = params['UserIds']
        end
      end

      # 授权用户信息
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id，和子用户uin相同
        # @type UserId: String
        # @param UserDescription: 用户描述信息，方便区分不同用户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserDescription: String
        # @param PolicySet: 单独给用户绑定的权限集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicySet: Array
        # @param Creator: 当前用户的创建者
        # @type Creator: String
        # @param CreateTime: 创建时间，格式如2021-07-28 16:19:32
        # @type CreateTime: String
        # @param WorkGroupSet: 关联的工作组集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkGroupSet: Array
        # @param IsOwner: 是否是主账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsOwner: Boolean
        # @param UserType: 用户类型。ADMIN：管理员 COMMON：普通用户。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserType: String
        # @param UserAlias: 用户别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserAlias: String

        attr_accessor :UserId, :UserDescription, :PolicySet, :Creator, :CreateTime, :WorkGroupSet, :IsOwner, :UserType, :UserAlias
        
        def initialize(userid=nil, userdescription=nil, policyset=nil, creator=nil, createtime=nil, workgroupset=nil, isowner=nil, usertype=nil, useralias=nil)
          @UserId = userid
          @UserDescription = userdescription
          @PolicySet = policyset
          @Creator = creator
          @CreateTime = createtime
          @WorkGroupSet = workgroupset
          @IsOwner = isowner
          @UserType = usertype
          @UserAlias = useralias
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserDescription = params['UserDescription']
          unless params['PolicySet'].nil?
            @PolicySet = []
            params['PolicySet'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicySet << policy_tmp
            end
          end
          @Creator = params['Creator']
          @CreateTime = params['CreateTime']
          unless params['WorkGroupSet'].nil?
            @WorkGroupSet = []
            params['WorkGroupSet'].each do |i|
              workgroupmessage_tmp = WorkGroupMessage.new
              workgroupmessage_tmp.deserialize(i)
              @WorkGroupSet << workgroupmessage_tmp
            end
          end
          @IsOwner = params['IsOwner']
          @UserType = params['UserType']
          @UserAlias = params['UserAlias']
        end
      end

      # 用户部分信息
      class UserMessage < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id，和CAM侧子用户Uin匹配
        # @type UserId: String
        # @param UserDescription: 用户描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserDescription: String
        # @param Creator: 当前用户的创建者
        # @type Creator: String
        # @param CreateTime: 当前用户的创建时间，形如2021-07-28 16:19:32
        # @type CreateTime: String
        # @param UserAlias: 用户别名
        # @type UserAlias: String

        attr_accessor :UserId, :UserDescription, :Creator, :CreateTime, :UserAlias
        
        def initialize(userid=nil, userdescription=nil, creator=nil, createtime=nil, useralias=nil)
          @UserId = userid
          @UserDescription = userdescription
          @Creator = creator
          @CreateTime = createtime
          @UserAlias = useralias
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserDescription = params['UserDescription']
          @Creator = params['Creator']
          @CreateTime = params['CreateTime']
          @UserAlias = params['UserAlias']
        end
      end

      # 视图基本配置信息
      class ViewBaseInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 该视图所属数据库名字
        # @type DatabaseName: String
        # @param ViewName: 视图名称
        # @type ViewName: String
        # @param UserAlias: 视图创建人昵称
        # @type UserAlias: String
        # @param UserSubUin: 视图创建人ID
        # @type UserSubUin: String

        attr_accessor :DatabaseName, :ViewName, :UserAlias, :UserSubUin
        
        def initialize(databasename=nil, viewname=nil, useralias=nil, usersubuin=nil)
          @DatabaseName = databasename
          @ViewName = viewname
          @UserAlias = useralias
          @UserSubUin = usersubuin
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @ViewName = params['ViewName']
          @UserAlias = params['UserAlias']
          @UserSubUin = params['UserSubUin']
        end
      end

      # 查询视图信息对象
      class ViewResponseInfo < TencentCloud::Common::AbstractModel
        # @param ViewBaseInfo: 视图基本信息。
        # @type ViewBaseInfo: :class:`Tencentcloud::Dlc.v20210125.models.ViewBaseInfo`
        # @param Columns: 视图列信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param Properties: 视图属性信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array
        # @param CreateTime: 视图创建时间。
        # @type CreateTime: String
        # @param ModifiedTime: 视图更新时间。
        # @type ModifiedTime: String

        attr_accessor :ViewBaseInfo, :Columns, :Properties, :CreateTime, :ModifiedTime
        
        def initialize(viewbaseinfo=nil, columns=nil, properties=nil, createtime=nil, modifiedtime=nil)
          @ViewBaseInfo = viewbaseinfo
          @Columns = columns
          @Properties = properties
          @CreateTime = createtime
          @ModifiedTime = modifiedtime
        end

        def deserialize(params)
          unless params['ViewBaseInfo'].nil?
            @ViewBaseInfo = ViewBaseInfo.new
            @ViewBaseInfo.deserialize(params['ViewBaseInfo'])
          end
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              column_tmp = Column.new
              column_tmp.deserialize(i)
              @Columns << column_tmp
            end
          end
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              property_tmp = Property.new
              property_tmp.deserialize(i)
              @Properties << property_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @ModifiedTime = params['ModifiedTime']
        end
      end

      # 同一个用户绑定的工作组集合
      class WorkGroupIdSetOfUserId < TencentCloud::Common::AbstractModel
        # @param UserId: 用户Id，和CAM侧Uin匹配
        # @type UserId: String
        # @param WorkGroupIds: 工作组Id集合
        # @type WorkGroupIds: Array

        attr_accessor :UserId, :WorkGroupIds
        
        def initialize(userid=nil, workgroupids=nil)
          @UserId = userid
          @WorkGroupIds = workgroupids
        end

        def deserialize(params)
          @UserId = params['UserId']
          @WorkGroupIds = params['WorkGroupIds']
        end
      end

      # 工作组信息
      class WorkGroupInfo < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 查询到的工作组唯一Id
        # @type WorkGroupId: Integer
        # @param WorkGroupName: 工作组名称
        # @type WorkGroupName: String
        # @param WorkGroupDescription: 工作组描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkGroupDescription: String
        # @param UserNum: 工作组关联的用户数量
        # @type UserNum: Integer
        # @param UserSet: 工作组关联的用户集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserSet: Array
        # @param PolicySet: 工作组绑定的权限集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicySet: Array
        # @param Creator: 工作组的创建人
        # @type Creator: String
        # @param CreateTime: 工作组的创建时间，形如2021-07-28 16:19:32
        # @type CreateTime: String

        attr_accessor :WorkGroupId, :WorkGroupName, :WorkGroupDescription, :UserNum, :UserSet, :PolicySet, :Creator, :CreateTime
        
        def initialize(workgroupid=nil, workgroupname=nil, workgroupdescription=nil, usernum=nil, userset=nil, policyset=nil, creator=nil, createtime=nil)
          @WorkGroupId = workgroupid
          @WorkGroupName = workgroupname
          @WorkGroupDescription = workgroupdescription
          @UserNum = usernum
          @UserSet = userset
          @PolicySet = policyset
          @Creator = creator
          @CreateTime = createtime
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
          @WorkGroupName = params['WorkGroupName']
          @WorkGroupDescription = params['WorkGroupDescription']
          @UserNum = params['UserNum']
          unless params['UserSet'].nil?
            @UserSet = []
            params['UserSet'].each do |i|
              usermessage_tmp = UserMessage.new
              usermessage_tmp.deserialize(i)
              @UserSet << usermessage_tmp
            end
          end
          unless params['PolicySet'].nil?
            @PolicySet = []
            params['PolicySet'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @PolicySet << policy_tmp
            end
          end
          @Creator = params['Creator']
          @CreateTime = params['CreateTime']
        end
      end

      # 工作组部分信息
      class WorkGroupMessage < TencentCloud::Common::AbstractModel
        # @param WorkGroupId: 工作组唯一Id
        # @type WorkGroupId: Integer
        # @param WorkGroupName: 工作组名称
        # @type WorkGroupName: String
        # @param WorkGroupDescription: 工作组描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkGroupDescription: String
        # @param Creator: 创建者
        # @type Creator: String
        # @param CreateTime: 工作组创建的时间，形如2021-07-28 16:19:32
        # @type CreateTime: String

        attr_accessor :WorkGroupId, :WorkGroupName, :WorkGroupDescription, :Creator, :CreateTime
        
        def initialize(workgroupid=nil, workgroupname=nil, workgroupdescription=nil, creator=nil, createtime=nil)
          @WorkGroupId = workgroupid
          @WorkGroupName = workgroupname
          @WorkGroupDescription = workgroupdescription
          @Creator = creator
          @CreateTime = createtime
        end

        def deserialize(params)
          @WorkGroupId = params['WorkGroupId']
          @WorkGroupName = params['WorkGroupName']
          @WorkGroupDescription = params['WorkGroupDescription']
          @Creator = params['Creator']
          @CreateTime = params['CreateTime']
        end
      end

    end
  end
end

