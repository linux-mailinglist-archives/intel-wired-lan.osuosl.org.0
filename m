Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95505B161F4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 15:55:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44FAE822EB;
	Wed, 30 Jul 2025 13:55:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V7FhkuDcjq-s; Wed, 30 Jul 2025 13:55:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16EE5822D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753883708;
	bh=ZKKo32n0fprltBVlWsu3JuOMagXqxdnTXNXmQ0FZ/jo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Yg2Iad6wP7Vds3XPI/OfBegvsKDa61GIpwt7Qrmfmce2oFR7szjCYNk/rbB8HLVxI
	 oIpZTNy+Ky9n71rqV1Sv9DRwJK4XAOv9yUbMK2eIN+j1jEOJuE8m9cjo9QYt0ibi7b
	 hk1G6hzANFF38H2SNVRliCi4scZhTS5m7K6iKp8hGxGNJT6qYDG6RteUyB3HrhSY5h
	 gLuMfaKKCduc/7uAiT297UVsrvT5978Ywai7SmZV4l+nSfiDxJKEPiHmN2YWJaWeqi
	 43MwxssxuFfq+sibVu54UjbpcsmZl5nez0wtAM9r/EL2EPmCWLxg81GsAfjWr9k+18
	 sEfy6UzwlNw3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16EE5822D1;
	Wed, 30 Jul 2025 13:55:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2BF22186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 13:55:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 11D1B4087C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 13:55:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TXjPL17Tq8PX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 13:55:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.101.86;
 helo=nam04-mw2-obe.outbound.protection.outlook.com;
 envelope-from=gal@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5668B40877
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5668B40877
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam04on2086.outbound.protection.outlook.com [40.107.101.86])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5668B40877
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 13:55:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RiQhuU7bGIF/kCtff5a7nD+VUBk7tGzfoR3ixAFyaKIw4TDzMCLTYCUpms2pkqAFc9hdg7tJoaeXganGhY0ZjdAUjRhtEkVJLUcN0DRb79FK8X+RBnvYXn8UZyr2ZK/rzI9Lc1iIdhCLg9cOLA89j7HVmlAGSLHOEgDburQ6/UatBNURUxshtZsOJjEjRGcjg/4x2reykw6DQlrmrhwaPHcZJ3PmJjJGvtFkxxAPqgazsTJUqrgo/Matu/tIRRP0a80QoxUwMVS6/c8fIg73pwbB/3c8On7q76v78cZlfUxvu26w22H0CJIewl6ioiZamNucuNgmcBsmFF+GkXigbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZKKo32n0fprltBVlWsu3JuOMagXqxdnTXNXmQ0FZ/jo=;
 b=YMyBm5b+QQV5H0Je6345S2HyeDRmoEx+URz+F+bOgewreLz7FGYwafTJMB36fCfVV0pnUNFNbcxedC6kLCGJluS82mAd992uO+zjDiMmG9ywVj5cOvz1Fq0OYyxvSErgj4TunUAGL15Pzyo95/cV9Q2GkBzn2V7D63XEriReoiqeI2Y48wifhXCL8tLsRD4uL1P7vx4ISCLZHCrc+jcpWromycmdify7XAIYl7UnZdeDrAa80xykGFbf7PQRVi7oI9U1AxiAe2hdt2s+ylArbm5nHcbXlyzc2TS4W7U8e3pYziIgrGyRxJO2/IXHzTzJdm5l3Ja5guF2rw9EH3TJyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from CH3PR12MB7500.namprd12.prod.outlook.com (2603:10b6:610:148::17)
 by DS5PPF4A654669B.namprd12.prod.outlook.com (2603:10b6:f:fc00::64b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.29; Wed, 30 Jul
 2025 13:55:01 +0000
Received: from CH3PR12MB7500.namprd12.prod.outlook.com
 ([fe80::7470:5626:d269:2bf2]) by CH3PR12MB7500.namprd12.prod.outlook.com
 ([fe80::7470:5626:d269:2bf2%6]) with mapi id 15.20.8989.010; Wed, 30 Jul 2025
 13:55:01 +0000
Message-ID: <53eb1301-fd35-4006-8eed-2d815575f196@nvidia.com>
Date: Wed, 30 Jul 2025 16:54:55 +0300
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
Cc: Jakub Kicinski <kuba@kernel.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Donald Hunter <donald.hunter@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
References: <20250729102354.771859-1-vadfed@meta.com>
 <982c780a-1ff1-4d79-9104-c61605c7e802@lunn.ch>
 <1a7f0aa0-47ae-4936-9e55-576cdf71f4cc@linux.dev>
 <9c1c8db9-b283-4097-bb3f-db4a295de2a5@lunn.ch>
 <4270ff14-06cd-4a78-afe7-1aa5f254ebb6@linux.dev>
 <c52af63b-1350-4574-874e-7d6c41bc615d@lunn.ch>
 <424e38be-127d-49d8-98bf-1b4a2075d710@linux.dev>
 <20250729185146.513504e0@kernel.org>
 <b16f0738-9b73-46f4-93ba-edcf84eb961a@nvidia.com>
 <459b5f33-ccb2-4392-9833-f67fcedeaead@lunn.ch>
From: Gal Pressman <gal@nvidia.com>
Content-Language: en-US
In-Reply-To: <459b5f33-ccb2-4392-9833-f67fcedeaead@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::11) To CH3PR12MB7500.namprd12.prod.outlook.com
 (2603:10b6:610:148::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB7500:EE_|DS5PPF4A654669B:EE_
X-MS-Office365-Filtering-Correlation-Id: f141c598-e1ff-4df6-a5aa-08ddcf70ad62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dVp0QndYeVM5cnV5ZGYvZmErOGwvVWJoZVFhVW9kbW40QVBqYjRxTGF0TDZW?=
 =?utf-8?B?bHFiclNSOGpBR2VlM3FJWVgxK3psRCtabk9BVjQ0THRjR0VJR2tzR1ByaTd2?=
 =?utf-8?B?R2tOUWYwNk5nTHlQUzhORjN1YUZRbFJ0T0tsV1ZjU2krKzFoK2hvM1pQS0RW?=
 =?utf-8?B?c3MyaWl1dUxxR1VuaWxCcTVFMkJ4K3QxWi9JYkNqdDhsN2JFOUJHM1pQU3d3?=
 =?utf-8?B?SUtQNVNLNDNQR0ExYUtYWkpkSHVLaDJGWkcxUnV1Vjk1UXN4ajdyQkVHVDcx?=
 =?utf-8?B?clNjTEtkckJ6b3dlMGdMNVprczVOSGJFS216THgwWnZ5cmkxYzFvSGw0MFZY?=
 =?utf-8?B?bWRZNVNZelgxb2F1dHgxZEJzV3NSbWNmZ3hySzExWkQ2QTYyRzI3NzhjSEMx?=
 =?utf-8?B?alN2L2RsTlJocTcwc1NkbVBycWNUaGlwODRPMVRKUEhwS1VLdXltQ3BYa0tq?=
 =?utf-8?B?ekRtV2RyVUN2QVppalNzVHd3QStkeC9IcjRFbGhhUkZNc1FUaXRYU2dwb2ZY?=
 =?utf-8?B?R1pZVW5FNmVjZUExRU9PbWg5Y0hlbGgrVjRKL0R0VGFER0F0VG5acWJieEhH?=
 =?utf-8?B?STJpZ0loUHJPUTY0NElxbDd2N3JRdHNkdkVzNUJ3ejhvcTZoVzdVQTFoWWVU?=
 =?utf-8?B?UERYTG1SdUl2cUd3YjV5dk5HNzl5T21wSXJubHpycldUK1ZUYVV5TmNiSTN4?=
 =?utf-8?B?bThTL2JkZjA4dkJJdm1UanJ6NE9NTVFhTWFDUExSZW1WR2ZGOStJbStWU0xs?=
 =?utf-8?B?d3NRd2tOUW1JdEV3QnhEUnRpWWI0eTBWZ1NHVWw3ZFpXeUZFZFhvdzNONXJZ?=
 =?utf-8?B?OTIyK0JMZFc5RlRWcDArNFcvRHZscTNzWk5uZGIyWTZZcER2QnV1YWUwZmlq?=
 =?utf-8?B?U1pwaFZrZUlua044SFpYYjA4MnhnU1NqbFRFQjdQY2VuZEZ5aWJVL3BsL0t5?=
 =?utf-8?B?R21HMWNtOTQzNVhlZmtuR1lIZm4yWXRRc0l1UG1kSXRKTmJueHFacUl0REpU?=
 =?utf-8?B?TUFsZVZ4V255Y1A2dmw0ckpoYmpieFpBZkFYcnFmQTA2ZmxFV25iWWc0ei9q?=
 =?utf-8?B?N0I1YksxcDlEdG44MzBhczI0aEV5aE5VTVM1Z0lRcDJCREdHWlpLTTRDbGN5?=
 =?utf-8?B?aHB3eC9HMEFEVW91OGxtcTltOWhBMGttOHgvaU5TeVhUdkpTL296YmRadlVx?=
 =?utf-8?B?ejB0N3VmckdmSTJ2OHdIcFIzYTdSTWxGSFh3aVlyUFI0RnZBRDVpcDZ4Z0pI?=
 =?utf-8?B?OWMwMHBFdm8reSsrajZkbjc1aFBEUlNrUVdOVkdUbTE2Q3RsbktPUm1OTDdV?=
 =?utf-8?B?WWdtM2FRL0FqU0k5OFpIWWN6c3cxVFRrR1d6TzM2UFc3ZHl0MGdscjZFUVFY?=
 =?utf-8?B?bndiRlBWQUVZNWtoN2FlOTVsbXBiNGVUM082NjlDY2ZlcUl0OUhTUFkwbDlP?=
 =?utf-8?B?M3JJYW52aTBpaDJGeVlZcjRFOFoydGxyKzlnRFlFVVh2YkRuOERuM1hlTzNq?=
 =?utf-8?B?bm1MVFVmcUVCaThDcld2ZEdSbFVMY0VhaldDMGhSL0F3dHdIWGtDcVJWdDZl?=
 =?utf-8?B?eGxRT2xaVyt4Mll6K2VUTGRPc0YwZS9RS2daSDh2cE5nRmdtU2E4SHJDMWxP?=
 =?utf-8?B?Tis1WUpzbWVFNldlc0VtRWZaSFk2bE5wTm5kTm9sRlovRG1MNXU1ZHlsbFU3?=
 =?utf-8?B?THA4SkJqRlpEVE45N3Rnc20vYWh5WkhJMi9Vc2VZTnhoeXFHWk1lQUQ2UWEr?=
 =?utf-8?B?NkhYMHR5Nm5FNkJEVkdjYWhRVkVkd2k0WXppM2Z3dWtXTDhEZStSVnhsR1ov?=
 =?utf-8?B?cW9ZbjdUTkRhaW1FK0M2Uzl1aGJFajUyem9QbTJaVkIvSjNpVU9PRjV4T1Ar?=
 =?utf-8?B?U1NCMmlXNm5HZDhGb0N4dWhrTitTVmN3R1hESUFxb0JrM1VnbHFZanovQnM4?=
 =?utf-8?Q?SqGG1w+Z7NY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR12MB7500.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVZWam1VSVR0UndzVDlmMHNkdkdXZGlyNXdLRldXYW1VSUlqQ3RiTStVYm1M?=
 =?utf-8?B?alFpcysyQVk1djR5RTducCttL0R0czAyWm8xUXh1ZFU4MVRkcm50aHJ2eXZi?=
 =?utf-8?B?S24wRUxqcUFrZ3ZRaW5qZVhzTjYzd21lM1VHdlVoMWwxVVVQT1lFZWFremhV?=
 =?utf-8?B?STBIMVNMODFKQ3VWRHI5bWMzUlZUTk1OUklxeGVFc3JiYitWSlZtR3ZUTnRQ?=
 =?utf-8?B?MTFHcGh3eU9JVVRsNisvY1ZKU3VlVVQ4Qy9TWFdXMFFOSFIwT0cyN0dSMjFv?=
 =?utf-8?B?SEdLbGJOZGJzNXQ1SjdvQVVPcjdYZG9mYjF6K1FnUDYxU3IxVjltaDBkZWF0?=
 =?utf-8?B?ZERXNFNQTnh4ZDlTRG8wenRTV1JEQ2EzZG5PUWNxQm9YeXpvUzh1N0U4VkU2?=
 =?utf-8?B?bGxaMlRCSXorditsVDRvYmxJdXp6U1hoVDVsckNCemJIUFJoVHg5RGovelhu?=
 =?utf-8?B?OXhFcXdmZzlxZDdUaVJqM3ZZT1E3TE10cVg5S3d0V2dmOTMyeU9Mejl2Qzlz?=
 =?utf-8?B?UnhPMFJIaUFLaE1pSDk3WkpZVUozODN0Yy93ZGdqdWNYUFdmYUc5b3grcElu?=
 =?utf-8?B?SGlqd2h0QVROdmpiTjRpejZEVVdtTVRYcFpLYUlLb2YrTjNmU0VXSkZ3OHFG?=
 =?utf-8?B?eHRwZjI2SEU5MzJqNy9PRU9JYjhOUkZUU2lIY2NsY1FiNDlRcmM1YjhodzFa?=
 =?utf-8?B?ZEg5RzV1K1dvZTNMWTQ3ejBNd3RYMlpoTDRINmdTR3YwejlyZFdINTd1M0ZB?=
 =?utf-8?B?VjdnTy9CWmVacXpTSlNZcS8zMXVXb3gyRHJEcC9HN1U0UWVrYitQYm9yVXdt?=
 =?utf-8?B?Mk4yWTFYc1VQSzZsWFR3TEpER05NN2hsWG1KMlk4ZjlxZVc1dHRlbG50c1hO?=
 =?utf-8?B?a3czcDNmOWNmQWxUMFRjRzhkY096ZkR1VTNXOEJnUnRnNGZYbEFsWDB2bHZ1?=
 =?utf-8?B?M0lxb25RK0hXU0RlZURIYUtEdFpDenYxeDlqOFNNSk1qWVJ2TFJiMFIrdzB5?=
 =?utf-8?B?WXV6TS9haTJTOWxZN0tOR0lqOEJNVlNIMDBMQVltMWxHSjRNNW1wUTg1d3c2?=
 =?utf-8?B?RUtlUysyOVRuUEQ4MzZIQ0dMMklZVDN0YnhOTi9yZ1VvNzlWaUcvT25ldlVQ?=
 =?utf-8?B?aFBnb1dqQzh2MHp1S0lWYU1qUzRtQW9xSHByRUVzK1JBWGRVbnl3MzZmVDN0?=
 =?utf-8?B?eWtsM2Vrcno5SXhaL1pEWFlKZE9WNktRc2dFTUhWUzZVK0JIL3BlbzVmR3ND?=
 =?utf-8?B?MkFTRUhQejdraXBlK3MxRUxCa25OZXRuRmE4RmlyckF1NEdjbm9OZzJ1TlQz?=
 =?utf-8?B?b3J6MHYwK1hFTm9wTUZWZTJtUmMvc0RLbmxDUVpvd2NLbzBYWlR6N0djUnpi?=
 =?utf-8?B?MzFqaW5ST1hQaEtGU2VHVjMwYnVMc2tabjBIVUJCRlRra3hrTkR0aWlkaUtC?=
 =?utf-8?B?STNYWE83YVBGRHhpdlJ1MEdXbldac2QwYm0wclIvdlBObjhSUXIwcjY0b05B?=
 =?utf-8?B?NVBWcENDR1duMzd5dTZacmxTVzU3Sy9VMFlnM2VBUEx6WlVoWE9ia0NNWUxw?=
 =?utf-8?B?U3gyaVkyblFSSmlHcFNTTm5HL2JxbVlyL2lkbnlrRE1yTEMwTXZMTTdhZnpW?=
 =?utf-8?B?UHJqOVJrcHJuYjU0TUVYdXNIQUFYa0pQS0FvUS82d1hEcWhnbk84SUJDZnB2?=
 =?utf-8?B?STU0SHVRRDl6ekdTTWxqaExsQmxYaUo3akFSQ2tMTllvSlFKb3BlVjVDVVls?=
 =?utf-8?B?TnIyM1pDdUtYdXVWdzBTVnVSNUZ3VXhBU2I3dFF2VkRSTjNXc08vYU5mZm9X?=
 =?utf-8?B?ZXk2KzljV1VYNVk1RG9oaVA1bVI1cWF3RVEzNVVFRFMzdXBPM3hpTDlRRHA3?=
 =?utf-8?B?UmFXNFdSRm9zY244YTFKZDRyYXF1VU1IckZwMUdxRDBITWVORWhSeVBIOVlM?=
 =?utf-8?B?NHhpQXhWalZrVHFOemhjT1ZUWWRmd1JkTjVtakJyVVU5MFp2cTZRbVcwbWZx?=
 =?utf-8?B?U0hXRyswbmVRTlFBQ3Rwbm03TnJTWjBDTmt5T2h6OWROTGVwMVVMTWNIUUc0?=
 =?utf-8?B?bDAzeWRTNFZCcGplTlZnM2pNd09iL2hwRzJINXUrMkQwRngrcUFLTmJQd0hh?=
 =?utf-8?Q?oYJr6X5cPxL4ZPV5MNCHihaDa?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f141c598-e1ff-4df6-a5aa-08ddcf70ad62
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB7500.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2025 13:55:01.1956 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +RWuKEqw7bhCH5c25wRUcIbFuBjhp+iAtu1YBi1rnwkmCveS59agbNoFWO6tIYG9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS5PPF4A654669B
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZKKo32n0fprltBVlWsu3JuOMagXqxdnTXNXmQ0FZ/jo=;
 b=sEPz/fqVU/IR1A+y8F97IA/rSvNQYeUsOhvOfkUptTzONiYg/y87a4rhI/FSjvc5I9iQjp05Yb8uIckTF4UyrMeiGHVTs9btGQwklaCmEoPg23o4QZ2JlmtIs4wSjyEfAIpuE3BDWCp4oqOTde7BFz3tsJen3nvXxRC/XE43/1tP+eQFQ30tBYpsFFxjYSh6k6LqS1mEorUGbBNABjbmELXEmMq4ax6C0Q946NbpZkTCD5Qw2DskztL5tYxKAMyWmQNVzNqY+2VJTibFGY00/Sm4oQGPz/HaXk6/dFEdyIFXee/c2JYakGvX618FDOHWHeH1HrC8ShXHMD4AyRTdNw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=sEPz/fqV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH] ethtool: add FEC bins histogramm
 report
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

On 30/07/2025 15:59, Andrew Lunn wrote:
> On Wed, Jul 30, 2025 at 08:39:25AM +0300, Gal Pressman wrote:
>> On 30/07/2025 4:51, Jakub Kicinski wrote:
>>> On Tue, 29 Jul 2025 19:07:59 +0100 Vadim Fedorenko wrote:
>>>> On 29/07/2025 18:31, Andrew Lunn wrote:
>>>>>> The only one bin will have negative value is the one to signal the end
>>>>>> of the list of the bins, which is not actually put into netlink message.
>>>>>> It actually better to change spec to have unsigned values, I believe.  
>>>>>
>>>>> Can any of these NICs send runt packets? Can any send packets without
>>>>> an ethernet header and FCS?
>>>>>
>>>>> Seems to me, the bin (0,0) is meaningless, so can could be considered
>>>>> the end marker. You then have unsigned everywhere, keeping it KISS.  
>>>>
>>>> I had to revisit the 802.3df-2024, and it looks like you are right:
>>>> "FEC_codeword_error_bin_i, where i=1 to 15, are optional 32-bit
>>>> counters. While align_status is true, for each codeword received with
>>>> exactly i correctable 10-bit symbols"
>>>>
>>>> That means bin (0,0) doesn't exist according to standard, so we can use
>>>> it as a marker even though some vendors provide this bin as part of
>>>> histogram.
>>>
>>> IDK, 0,0 means all symbols were completely correct.
>>> It may be useful for calculating bit error rate?
>>
>> Exactly. mlx5 will use (0, 0) for sure.
> 
> Sorry, i did not spend time to read the standard and issued this was
> related to frame length somehow, like the RMON statistics which have
> bins for packet length counts.

I'm not sure I'm using the right terminology, but the ranges are # of
symbols that had FEC errors. So (0, 0) means zero symbol errors.
