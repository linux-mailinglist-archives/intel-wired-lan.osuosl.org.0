Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C47FB86BA4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 21:41:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B249860AFF;
	Thu, 18 Sep 2025 19:41:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ucZBRD98I4sf; Thu, 18 Sep 2025 19:41:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3972560B02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758224515;
	bh=BE5ViBErMLOej9IkEFo4hWHdt7hmYlq99hDTIBAZXAE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j8I/gxvdMEUy00UllUTiAuhJ+O6NiA934LAJhVcnMLuE3Z3Xp9VDSwUbDEwPN1mSe
	 bzo09D7irU+uNm8gB89qNFvpXQujd4DtfXoOQ/9rsLGw3vSjxorCU1ofKGA7qI5qxu
	 WAVYPxPgDvTeQdbSxIXxSeUP/L9rSzBKkEoBXPGf+0emLtR34UOH5fSOHqP3ykJO94
	 zSwytjLlbINi5V4Ypr8NHSuc2DS6Ll7oqZv+dxe0X2M2RLU7mYuFXZq+LDgolVOeyO
	 brrXtNJZG2OZrhmim9yxZl3+e/fGzgAmkD21977aBEb/xg6P9nHHzjaUHwJkIch0OV
	 HH34f6BcuybDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3972560B02;
	Thu, 18 Sep 2025 19:41:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 34CC5273
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 19:41:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 259C082089
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 19:41:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j7rVjAM9DXZ0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 19:41:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.53.15;
 helo=bl0pr03cu003.outbound.protection.outlook.com;
 envelope-from=cjubran@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9FC048207D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FC048207D
Received: from BL0PR03CU003.outbound.protection.outlook.com
 (mail-eastusazon11012015.outbound.protection.outlook.com [52.101.53.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9FC048207D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 19:41:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RxV3ikq9xSCCdkjSyDNoM0Cby9VqyVhnoE1V68wulvUlr4WHEX8ohWRS9FaaQTHmLb5QnVqQPkeNFfz1LMjMJU64JPV6wgs36fKd7jgQ3B+C3KE4E6sDy9XKKZVu8TDq3UO4Z5WLBYp5yBp71PJMuQiJG/iLqTyTe9c/S7mCI/I2pphgAdgBR0E6dihwkOEKGuzL0YUgN7fRY2ZR9/kRP/sQ+90O0b8dMVgOX16tP2q7TWCo9V8hAcTd4MnSXQrppfWxyAeoBed4f2iieX161KeTuKD/TG64/wKaLlEDZ5aIJujNscOkZ23wXeGT4bQMq/lslzVNug8wgkuQUfNWKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BE5ViBErMLOej9IkEFo4hWHdt7hmYlq99hDTIBAZXAE=;
 b=NWkNlsEO/diN81vpJ4/lwohu8d7igociae4NedK1dl7N8ExTZGl3hlkVYRdNz+rOA4JyQJjEO0HClOlwVsBecSPkni3N2h4dlXL6UIZ+gEynFklbMrOTlQ6Kt8PBliDzgaF8gxRvtx3G+45r0UbZZtQoSKua0Nu9MVo0GVbbwzlfPs9c29RlNFfWFJUFwqCFeANB9elfdehUx+UVqkZSaKjf9Li88ljq6XEqj9B8ELrK2npSjHgEBBWIYEtIxEQUcR8wZPu5A69xQyvXRzKTrKnUNNAk3Tx+/hy8vxLfov/p3OlmvH/viYaUkoNEIZNLZPkxc3eh2fuOyzaBICH0Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from MW4PR12MB7141.namprd12.prod.outlook.com (2603:10b6:303:213::20)
 by SJ0PR12MB7068.namprd12.prod.outlook.com (2603:10b6:a03:4ae::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.13; Thu, 18 Sep
 2025 19:41:47 +0000
Received: from MW4PR12MB7141.namprd12.prod.outlook.com
 ([fe80::932c:7607:9eaa:b1f2]) by MW4PR12MB7141.namprd12.prod.outlook.com
 ([fe80::932c:7607:9eaa:b1f2%5]) with mapi id 15.20.9137.012; Thu, 18 Sep 2025
 19:41:46 +0000
Message-ID: <f84efe86-098f-4783-85af-4289f62804e9@nvidia.com>
Date: Thu, 18 Sep 2025 22:41:38 +0300
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Andrew Lunn
 <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
 Yael Chemla <ychemla@nvidia.com>, Dragos Tatulea <dtatulea@nvidia.com>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
 <20250916191257.13343-4-vadim.fedorenko@linux.dev>
 <20250917174638.238fa5fc@kernel.org>
 <4d3a0a08-bda4-483f-a120-b1f905ec0761@nvidia.com>
 <20250918073551.782c5c25@kernel.org>
 <76611a9c-4c53-40a2-96c1-e1cf5b211611@nvidia.com>
 <20250918084000.1b4fb4f4@kernel.org>
Content-Language: en-US
From: Carolina Jubran <cjubran@nvidia.com>
In-Reply-To: <20250918084000.1b4fb4f4@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0006.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::6)
 To MW4PR12MB7141.namprd12.prod.outlook.com
 (2603:10b6:303:213::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR12MB7141:EE_|SJ0PR12MB7068:EE_
X-MS-Office365-Filtering-Correlation-Id: 6936c452-d307-4750-f99a-08ddf6eb671f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aEM2UmZmZGlhUlJucEg3SjAzdGMwSENPcWN1M1lpUXZsKy9LWVkvUUJMUE40?=
 =?utf-8?B?THA4WEpZRGd3d1I2dGNOS1h4Q3lxeVFvUUlqZE9NQVV5ai9tZjZtRzY1U2VM?=
 =?utf-8?B?Znd6QVR2dmhvaEkvNDRmUXpEeFBST1ZIbDZabUJiVG1xOVpqUUFyNnFNbkxV?=
 =?utf-8?B?eE1EUVR5ZEgrSWE5aHA3MDE3TWM1aGxrTGVHL0hSWFNBZUx4K2JYOHVaWFdN?=
 =?utf-8?B?blAycGdoSkYyOG1rTFFaRFNsN204bmRMN2pVamVWRmtVTEJJdjRIbkNxbU92?=
 =?utf-8?B?enpKMDJJdk5wOC9hZytPYjB6cDRKYkwzWjlUYmNRampFMlJ6WDlERkdGWCtD?=
 =?utf-8?B?STJabTlsTXdjeGtiMWtDNk04YlpZNVBFeXdGV2RmZU12VXduNzBoeDdEOWE1?=
 =?utf-8?B?TE5Dd2VhOHRjNVJ0ajA0Y2xMeE1UcXlIU0Fhbzh1ekc5VkhxdVJUVlVnMDc4?=
 =?utf-8?B?OE1CK1JybUdGZ21Wb3ZuaHB2b1VodDZtWHpSVmp3T3p0eDZWelpMTEFBUDhD?=
 =?utf-8?B?cFVReG9LcFN5Tk5zZlpkeXJYZW9lSm5PRmlJMHAwbnRUY1RmU1ZuNUdVNHFX?=
 =?utf-8?B?RUZnd2t0bVBEMFAyT1B3QVBlemR4S2piVzhna2JGeEk1UDRvRHlSVXNTcDRL?=
 =?utf-8?B?Q3JrMUdDZWFFRmt4c1IxejlnZkYzUE5qdXgyKzQ1SXFEQVFQUmo4RjI3ckVy?=
 =?utf-8?B?VW9jcEZqR0hqemJSNjNYRE5GTFFUSXRTSnJXTG0rei9FWTNtamN6MC9LNHAv?=
 =?utf-8?B?QjVjdzJmVmhmV2cyUWVlZWtOQlBjS3VBaDNVdEszMFRZWVVyalkvdVQrcVBl?=
 =?utf-8?B?eCs5RWNJQ1NiYkx6SGlianJ1YzUzRlQ2bUdZdTU1RS9yb0NUMUhRMnYyNHRl?=
 =?utf-8?B?ZkVBQVFRNUlzdExDNGJYd0hTa1dSYXMzM0hqUVBZZXdvZVNiWXN5SGozV3pq?=
 =?utf-8?B?TUxiU3V1KzRMUFVvbHdBY3dsRHBtRjY3SEJDM1Jidk5hRG5la3UrbzhmQ3E1?=
 =?utf-8?B?cmhHZS80UnJMUkJXSU12VFM2c0dYVGFreENHSklmb2lmZEFiWTRaK2RZNnJ1?=
 =?utf-8?B?bEtEYUhhenlJU3BCWjcvWlEyRlVjRWdlV21La2dMVTk0N2I2NnRTQVl2dmU5?=
 =?utf-8?B?TGFMeHRaSVl5enF2V1hUU2IvOFhUQlZNWEh5N2M5RUIwcS9nOG0rcENOVzg1?=
 =?utf-8?B?ZjA2Tk0rZnRXSStlRERJUTJaZGF5QUdnRHN4VlVzK2RHZDhGREc3NVFaRjlk?=
 =?utf-8?B?ZVlWK0s1aVV1OGVLWlBYZHVCamlEMG5udWhMT1RQYVRmUHBRY0ducm5ud2NU?=
 =?utf-8?B?TDdOd2lmQmpzWkFXMi9PRlMxYkg5VWVIS25ob2IwUzhuT0xVZ0R5NVRDbEJG?=
 =?utf-8?B?eEltZ3J3MzdiQ2s1U1ZtdVNKTURxQ29sR2JIZWplYVNnaTlUTjFMclZLTm50?=
 =?utf-8?B?NjdjeFFrSmFZKzF2N2QzdVVXa0duYnU1RUJCbDBqdFdXT3hKZ1ZWRGpCT1R6?=
 =?utf-8?B?OGRrQWhPRThQNzhZVHk4RDV3ek5RQlJnWVFFWldGZUw2bjZDNm5tbmptT0V0?=
 =?utf-8?B?RUh4RDBHMmY3aHlpWWhiWVRZL3FsOWZ4b1NQQi9QZ0ZjS1JQN2J6dXJuMm1Q?=
 =?utf-8?B?emQ0di9YaFQ1dDJjczQraDNvNk5KVk9QV0lFN09aampGV1BVb1NETFQvamta?=
 =?utf-8?B?WndUQUQwQ1krQWxpQVVhNFlpa1g3ZWdZT28wT0ZXelZHV3cvQ2dZYWx1MVJK?=
 =?utf-8?B?S3lYZjNteDVYVTludjh4bHJ3OXZnaUlOUlc2V3huUjJObjYxNVR2RjBJYjBK?=
 =?utf-8?B?dnZqd0tGRkRkSjNaZkJsWWd6aEZadmp3T1BUNzQ1Qm9tQ3RRVDljRFFSbFMr?=
 =?utf-8?B?Y2MvWTZSVFd4a0VYWGVPTEdvbFg5NEd2cDdMTmxZbCtYUVFIWGdISnBlZ0Qz?=
 =?utf-8?Q?r88wMebMxGM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR12MB7141.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M3orUDgyQ0cwWmlaNnM1L1NQcy80TEttZmZaM3FqcVA2OGNTampKNklRb25V?=
 =?utf-8?B?NWh4bkUzQmVIcUhacVNBY1U2cFZMRTVhd3BWbEhNK2JiVWRXK2pLUnh2d1hN?=
 =?utf-8?B?bmFuVE9DZG1PKzN2Z25nR1NRQ1VlekFyYlJMRFd0dVBkbDZJck1Rbk0xS3lV?=
 =?utf-8?B?eU9sanlzYlBKZzFWM25TbHlxUjdNckNQeG8zOVpMN2psRC9lUzByS2gwMmY2?=
 =?utf-8?B?RTF3UFJuUWxiQXpXc3JTbENGZnVuWjRwaENaUjRjTXFhSlZyYzhSNzhYbVZB?=
 =?utf-8?B?SGx1T3F0YlFPR2NPUGkwVDNzdDJrQlo0czhQcTU5amFnL1ZPc2VPQWJjczVB?=
 =?utf-8?B?Yk11YXFQaWVXWVl0eW15ekZZUWpsamFpNWFLbEd6V1JJWmZNNzVmTG1md1Ir?=
 =?utf-8?B?VEpEa05LMFkyK2JDSCtqbTRib3dBZjVRUTNEMWxBbWJ4aVZIYi80WWREV0g1?=
 =?utf-8?B?TExENlMwU2lxWndiY1JLVTNvMng5RVJiVklsVENETDdleWp1QWFFd2xHMUxV?=
 =?utf-8?B?eFNxR1ZJVFdwNFVIS3JnMnlneSttcUFNZVdOL0h4QUJmU3FkclhnbFpreVc2?=
 =?utf-8?B?Vnd5YzJxdnlYZkUrZys3SU4waHE5LzQ5RzR4M01MQ3dmU0ZPUTJCSEFXcFdv?=
 =?utf-8?B?RzlCcE0wcWZLM1lYSjFrcFBkWWg3YWttQlAzVmQwQ1VDc2RpOWVDVEdUNHo5?=
 =?utf-8?B?Vk9nU1dlUnltTGRWMkRTRk9XbGpRcHZLM0x2Tk52Z3I4T1BkaFpDR2V0V1Br?=
 =?utf-8?B?bTVESS9hQTY3cFRweFUxRXpZY0RaUWdIaUVneGhDNHJrTkpsd0tMVDlWdlhk?=
 =?utf-8?B?dkcvdmo3VUJHMGFQeERNSHlvSmxvc0RTeFczcFd1Um9xWDNHaDBLeVk4YktJ?=
 =?utf-8?B?RkgzQ2VvSzRhR1VCcS9maElzQ2FGT1RmQituUnRsV0g0K2tNOElHZ3I1MU5Q?=
 =?utf-8?B?RkpJbUMvd2EvNEFQQi9WZC9DUVJGTlZNWDVXbmRLaTZ0QUtVM3RYNUNZV1Nl?=
 =?utf-8?B?OGh2RUdZL1JjZCsvcEs1VFRldlBVUzJoa3EyQ2NOeUVBS3VSM0llbmNleWhO?=
 =?utf-8?B?QVJ6NGZ6MlRuUHBCMUpBcHdDemtMTGFhTGU4aEJHQ2NBckthQlpnc3JYTXAw?=
 =?utf-8?B?WkVuWHliWUhSRzdsQ0gxNzRHYmhMRWZPb2xiU3NqWHZPSjJodmRJczhDcXU2?=
 =?utf-8?B?NG5DWlorWm8zY0IzNkg4cURLdERhek9tdUpucVptU0QwZW9rVTBjNnZzb1Bj?=
 =?utf-8?B?TFZBU2F5RjVjMFdwcmwvMm13bkpiOW5ZWStCejdCSWJuUHJ0V21LRzJsUHVr?=
 =?utf-8?B?dWptL1VTUHczY0UrcGNtNlovSFlGRkE3aXk0K1JMYTd5aGdGbjFNeGVUTnJV?=
 =?utf-8?B?T0tXdDhRWlNrTFZ6ald2UmpzZlFsTk0weHJHU2dkdTRPTWN5NU1oZzFpS3Jp?=
 =?utf-8?B?T2g1Vm1PSkRsdGY2TGRIbFl0ZUgyOUs5b3ZxS1g5MWlsdGJ1Qk1XSm9EbzF3?=
 =?utf-8?B?MkVTODhYUitWVVdJQ3ZVWk41enc2NFg5Ym44d3h0bkxhTGhsNFZ1TFVkNVpv?=
 =?utf-8?B?Z1h1Z2FZL29Ub3U1Z2tVNXBGWW4xajRpSmZvaWV5TjdyVjAwc1QzdE56ejYx?=
 =?utf-8?B?cTRUSG15OE0vd241RGROSWVZNjRBdUVXK0hTQzBqTXVXbUllNGlPeXVFZ2cy?=
 =?utf-8?B?M3RuNklhUGIxOTMrQ1Z1TE40ZHlHZm5XellmNGNIL0hkN2drVC9rbm5PVlFE?=
 =?utf-8?B?NEFGcjg0aWc4Mm92cE5wSUhSb1lTTDVoYmgwNlIzeGQ0cE5zVHpvcGZNTEk5?=
 =?utf-8?B?UERNbkk5YWVMOWxyWXYxQXo2cTdWejlMV3pQTHQ0azlJcm95amUrUEFvc3Np?=
 =?utf-8?B?SXYwUXRXb3d6dEdWb1FUUURLWTRPRHg3c1dsMHJyUkVVREVudHdrT3hpV3FZ?=
 =?utf-8?B?UUZHK1ljNS9oZVRxbUNYdVJTUkFhRTBVdFp6bldaRVF6Ni9ON3hqZmJUZy9j?=
 =?utf-8?B?NUc3WFhvaU1GdlVGMjhhZHlxb2JwU2ozMXBKa2tWT3czSHc3aHlQdFUwcjZz?=
 =?utf-8?B?WFU2NDdzc1JUQml2d3FJWElXaFRDQU16VmJpb3JjM1hZK3p2Z3RoQnNDVUha?=
 =?utf-8?Q?Ww3HkI6vrUuXB4jtE0tR854He?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6936c452-d307-4750-f99a-08ddf6eb671f
X-MS-Exchange-CrossTenant-AuthSource: MW4PR12MB7141.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 19:41:46.8660 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +h1TGmN3QjDQO3FRBbzDEkONix0mBnZQVZGUWrMP+OHdcEkpkuFqezS8ZxolmfzcUj8OdAfYncWMKT0PQ5pcog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB7068
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BE5ViBErMLOej9IkEFo4hWHdt7hmYlq99hDTIBAZXAE=;
 b=qVcWLcuUkSKnjlAFWI+xkc3uY1nq22NzbHDpksA8no1xpydvQaIROQDjF8ldrfcRcSn8KHzDPc49B8cvZPiAfIeNf/Ds28AabYI1Z0JvnLfPTyzgmrKBh8ZS2tcQJI0AAso+DFhZYg9TctXx5XToNf+XXcXAv5urXREarf1Ri/MCl7Mm/CEiyI6udeBoovCrEOjByXmjQJKR6rH+fjwKf95uFGf+yi4+dPSArdQhtXb6bfqf/R9Q2UR/6mdlivCYD9FfblMoiAf09GMY8/CQFOjtieHNEl1bZm4ESjrG2py10q7Zo1Y7AFtTNFlwZQZkwXn7ziX1rNwCFcs7koc9AA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=qVcWLcuU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 3/4] net/mlx5e: Add logic
 to read RS-FEC histogram bin ranges from PPHCR
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 18/09/2025 18:40, Jakub Kicinski wrote:
> I understand that the modes should not be exposed.
> I don't get why this has anything to do with the number of bins.
> Does the FW hardcode that the non-Ethernet modes use bins >=16?
> When you say "internal modes that can report more than 16 bins"
> it sounds like it uses bins starting from 0, e.g. 0..31.

The FW hardcodes that Ethernet modes report up to 16 bins,
while non-Ethernet modes may report up to 19.
And yes, those modes use bins starting from 0, e.g. 0..18.

