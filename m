Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BAAA43BD2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 11:35:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92BD840878;
	Tue, 25 Feb 2025 10:35:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6FZEQqmti7Dh; Tue, 25 Feb 2025 10:35:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7024D409C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740479738;
	bh=2l9tXOixGHMqxiPW5bAVrdpEVxItXjLDifFZouMWQXM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mqcgbKBkjxoGny6SkyraOFLIZ10qPceyud6SPQ9FKLYpOqfB9oA/iuOHUxL5y+8JD
	 k3wGTW0ChCSpLFC8MBSQgvG5Hen5b2XfL3wKTWgJAeIn/4mVa74fo8Ktoma6R6AR7q
	 ua6EzRbmTsiiKlzIMyatT8zSSEdPSgRko3L1l7p4NqxGqaTXV94RWRL7sR/xtLbtWS
	 4jVyjfqkiX0VNUwu4Yl3brc8asyB1Fh6HowpeYSTJNjz3EeFKjq8PIa8K9UhrpFD0Z
	 E8wO+5kM8GkWNkTcjYhvdNA25o8TxEKW63+lWugyLMXzVbcTJgSEu7RsvYntcl1Vu4
	 b/5jtLqcnglrw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7024D409C3;
	Tue, 25 Feb 2025 10:35:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 09B352292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 10:35:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D9A284086E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 10:35:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hdyPWcbGB_yq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 10:35:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7DEBD40160
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DEBD40160
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7DEBD40160
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 10:35:34 +0000 (UTC)
X-CSE-ConnectionGUID: uqEeOYc9RUWl3JGyDMms6A==
X-CSE-MsgGUID: SzOxciEGREuva/fTfg4ntw==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="28869295"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="28869295"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 02:35:33 -0800
X-CSE-ConnectionGUID: vkWQsMpdQWq4f56I+E9scg==
X-CSE-MsgGUID: u02VN0qLQ6+uxCSrx3H3Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="147237167"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Feb 2025 02:35:33 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 25 Feb 2025 02:35:32 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 02:35:32 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 02:35:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hzyyAvzNvorz9eE5JPRnsG5f/Ef60dsnQMbYIJlTBXsLGV3glLvOZOGMI66+YKbkt2aj/ux7NCthKki242ln0B9IXRJmWnq8ayttNgdfQ80nilBTJKx9ti1p9U2ZAVJ7mMZAf0mQaoz4wf/51uiMjCzJ/kMemmxNMXYx2Lh4RT+VeUrUdRlontNpHhpa1dA2mcX/aXrIAo1dx+zTyvKYASmRFustH5HYuSlEcG9iLsGYGJ1/qxgPKiUdwZ7qCgSXU/RE/bZU6efrL4i4w5LqKb06FJvb8uqglTNoAxmP2RHx9SD3KsR3gQMu5tnycnyaH52EtY88e9hTzYrq/+V7yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2l9tXOixGHMqxiPW5bAVrdpEVxItXjLDifFZouMWQXM=;
 b=f/HP9iE0U+XDv8yhDomaXjqV0jUSWkY1eCzPOH1d4Y5vBP4/xK44jEbzXd7St1Yk0qiDNkHZlfzGoFJItXdDfJkYfRewRLf/ivdkoPwwFWibpqcevEuTjdhNcJ/NfPCicskIUekBe1LBepQ4yCFz7kCD04csyHVP+GvxET2wg/6sVInQyLSgl2hC4/FtW2+xHIzL7k5RlsmxtHhGPX3/yjUF4BzdUSKQeWyatNkCK3ec/AcUymjwYJ0Xzw+MB8VSDgpsbuZ9w+lLwrpT1xEwb7HzQxjH70JNTbmAJo0Ych/uKF7eTH1Se9pTD2jdMSA3C2OI/+MVoO9ZebUVc1J48A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CY5PR11MB6283.namprd11.prod.outlook.com (2603:10b6:930:21::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Tue, 25 Feb
 2025 10:34:43 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 10:34:43 +0000
Message-ID: <47b210a5-ece8-4f06-9e9f-223f604b881a@intel.com>
Date: Tue, 25 Feb 2025 11:34:36 +0100
User-Agent: Mozilla Thunderbird
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
CC: <netdev@vger.kernel.org>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250225090847.513849-8-martyna.szapar-mudlaw@linux.intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250225090847.513849-8-martyna.szapar-mudlaw@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR08CA0232.eurprd08.prod.outlook.com
 (2603:10a6:802:15::41) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CY5PR11MB6283:EE_
X-MS-Office365-Filtering-Correlation-Id: e7df48c7-1985-490d-4299-08dd558803fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dVVoRHdPR1JtN05CWVhNRG1yd2xmM2lRbUhnVjJqUEd6Z2JEN3FJMlpydFRx?=
 =?utf-8?B?N0NLdkdMYkRIeU84NWF6dkMwSVJVNFJLbEdlZndjQmRtK2dlVDlxazFEdExv?=
 =?utf-8?B?YmwxZU1GQXdsTWcrOXVnb1d0ckpmKzJzbEFJMTNXTnNFT1lvOFhZUWpRNENX?=
 =?utf-8?B?d0xRUjVZSWlQNGV6T1lvdFl1TWNrblJiQ2ZkS1ZFWHlwSEdHak1jNkV1UEQ1?=
 =?utf-8?B?cnR2UXZkUXd1dno2UVJ5NHNTSlZVeVE4c0dnZ1ZjdHRXRFJFMFdJR01oWTlq?=
 =?utf-8?B?RlRyRlVvSTBJUUJ6UGVSc21ENTJhUDVZekVlYm1XbVBHVVQ5dnZKSkhBWlFu?=
 =?utf-8?B?QmhFeVMxYnhUaXZ4cnJXWUIrUHNoczYzZ2hFK1ppaFNPc2hDdEdyenlUdnFF?=
 =?utf-8?B?YnY3THNqdEcyQUg2V0NjN1lnU1p0WE10NXIvSDN3WWRXcGNvNXhDOHRMYmMy?=
 =?utf-8?B?aGNCREJBcjROc0tHY2Z5Z3l0bnpQbXI0cnZHd0V3RWFtU2RLeld0aXdHeHdu?=
 =?utf-8?B?MWJmaG9hSVI3VGxlWWhDdWJSUVNNbi9xZDZuOWRqNDNMdlFMRjZTUklDQ0Fp?=
 =?utf-8?B?ckZHM25nMUtYQlFDQTN0MjF2eVNlajI4UWtkaWZkS2hxZEI1dG05emZsR3BQ?=
 =?utf-8?B?bFpUNFhYWTBLaGt3dEN2cXhKMTMxRHdaWEI4YlNrbjMyd0xrZzI4dlVxamxv?=
 =?utf-8?B?OFBQSjhrTGl1Rkt0WUdUdmJPZ3BXTFVsNlpHaDhFVnUrakNMMnBrQUxJRitO?=
 =?utf-8?B?NVloWHcxNDViY0FNWTN2NGY4eUZTaUNjdGpEMEc1SDV4WHB5OC9IN1NKcm1G?=
 =?utf-8?B?LytkVUtwQWdsQnFyWXEvTFNqRzBPRU0rekFWM2U0VHpwR0JrcnI0ZFB6UHFq?=
 =?utf-8?B?bEtCbHp4eGc3R242L3VQWVlubktTSWdqa1ozU3ZWcThublRTSnRBY1lmTzY5?=
 =?utf-8?B?TFFhSTVmazdCRUpXRms5em9MdUdjSitqTWdlT2hMd2dvcVpRWGRMYjVGK1o4?=
 =?utf-8?B?MUQwd2FJS3c5SXA1aWZ1VVYwUFhNQlk4YytlZjlEZlJNekY1NGdycnNranlj?=
 =?utf-8?B?T0paTEc0T0cxRXI5aStWWGpqb0tGR0cvRyt5OHkyMHNjSnBpU09CMGtLTlZp?=
 =?utf-8?B?VVFTTjEzeVBzK0F2cENYUlhjWDZRN3lMTHpWdXZJbEVSUGJCUE40TFZiOGw5?=
 =?utf-8?B?c25IRmFXR1hscGgwNkxUTitqZWFucmVrTk5aWUZBSCs0U1BHMEpXeS9RRnNT?=
 =?utf-8?B?UHZDTGFDRmp3bGU1ZUJXUk9SMzJGY1IxUFlZUFhkL2MvM0wxa3A1U2hTbzlP?=
 =?utf-8?B?QXdlaDBQWnUyaTM5bjUvK1dlUERXckVERHlwSlBDbzFJMjNtbmJ3c0FmVXV3?=
 =?utf-8?B?a014RDNyN1hMWEhKand0NWtUZFhCaTFhOHpESjdPb0pMVGU4T3F3QTFkTXFs?=
 =?utf-8?B?dUJsYjRXVWRmanRaTnJzWE9kNi8vakxsRHBHS1dMV0NBbTJMdXFIUm43alZ3?=
 =?utf-8?B?eFdLdE0vSnFTcVFzNFcva2hlWnhlSGlDaHA5d2JsNVg0bEJORGdPYWhLVlRl?=
 =?utf-8?B?SVIwL1g0OHVsUXNUMmMwSnUrUHpMUWVvaDlrWU5YUkEwZlhuOHZMeDRPVXZz?=
 =?utf-8?B?OUdsQThqeEExTkFtS0hRRWQwMlBBSTlWbnpLUGY3TzVwdmYrK0pmZ2dCZWVq?=
 =?utf-8?B?MlZ6bDZRR09sQjZ1MCtqaGI5Zk5CWmV5andxd1dkajhUTzNNV05wL3Fsa3VZ?=
 =?utf-8?B?aVRSVnhHQWtySGVVUktYU2E2bmZXM3dpcHNTRmMzOXNPWDZMYkMrclFnMmVr?=
 =?utf-8?B?SGQyTVQycElXRHBiTHpCZXE2OGRDYng4NlIxTk02NXcxc05sT3psMWY3d0JH?=
 =?utf-8?Q?jbkM1FiDhmBiS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dnNYZnpoaGRhcDVQMGVuVkwvMWRiUUQ0YXBkL3lrcUxIb1kxcTh5THVnSlYy?=
 =?utf-8?B?dE9TcFNmUVJCY0VyeGdwdW5xakZURWZLRUlNZW5uM3BEWFQrN0laV0UvV3V4?=
 =?utf-8?B?WHRBWTJhOWdsV2lncWdtdjdlajBJQlFHWTVMMCtCTmVmWXF6WHNmYVdUWkw1?=
 =?utf-8?B?TnZoNFlzRkF2WGFqNGVBbFBlYmIxb1krM3gvVHh2QlE0UzcxWVdxME52bTNr?=
 =?utf-8?B?eGR0NU5QUEZISWV3dzhKc3VQN3ZsSExyUS9tNkhtS25DVVV4UXhQeFlQZGtq?=
 =?utf-8?B?VkpWMHROcW44SUgzZ0llMnBkRlhDTThhUXlnb3piZHFCRjNVZk5XQTdxU1dO?=
 =?utf-8?B?U0w0T2tsUnJvRXhvbFpwVGQxSUhCTWo0em5DQVQ4eHkwMXpsN2c0V2NaR3dp?=
 =?utf-8?B?U0NELzZZQ3dRQklFeVY0eWkvTXpPVVJ5eER6azdtcGs1cU5tUEpnNkt0cTBo?=
 =?utf-8?B?YkRNYXlwcFNtQSt3VmhVTHRhUHhSRHNYZ05nMzF0dGE0YkFvNHVwWFU0MDVw?=
 =?utf-8?B?aWd4eDErTVhkQmxQOXg2aUM0QmJZMzBDem0vT2tMZzZ1UTdLV2Izbll0d3Fi?=
 =?utf-8?B?Vitmd2JHWjVDWWh4RUFOMDVlOFpUMnFHQUMxcndSR0lvTFR3WWp3NFQrZUU1?=
 =?utf-8?B?YnJXOGp5aXNaNUNkL1hRcm1NbVArQmxobXhhSkd6WkswN0huTytVWW5iSW4r?=
 =?utf-8?B?Z1JmZ2tUWTNpYXFieFduMjBSMGh5LzNrSHNnMkwxYUx5UCsyL3pTajEvSFl1?=
 =?utf-8?B?WkVJdjE5OE5qaTFzN0N5WCtrTG9LbjVzU1VKVlBEdE9Nb1FqejRlR2s2UEVF?=
 =?utf-8?B?dGR6dFdZbjRUR0pYUE43NGQ2VW1mbG43eVNacGZyWklObWFLanJHWi8vVmpa?=
 =?utf-8?B?RGluM1pQd3NmbUozem9PdUwyUVZ0TzVKelhnUFNQMlB2aC9IOU9FSnZVN0FN?=
 =?utf-8?B?a285SmRTZ0FLT2NWMnA4NTUzTXh3UUw4RFgzN3lhaFZadFpTK24wcDVMRWkv?=
 =?utf-8?B?UDBpZEYxeGRLVGEwdmtyTGhzZk9INUJZNlo4RkpnZjBLaGt3WVExR1ord3Jz?=
 =?utf-8?B?cXEvckVLbHo4SXpKMjFSeENETHVuLzQ5WHFtNDJyT2NoQS9HaVVvbzEvNXIr?=
 =?utf-8?B?VnJTSWE3Nm93S2xuc243azhuVnNOUzRwT3BFbTJ1d0k1TXdWa3Y2RkJzUG8w?=
 =?utf-8?B?MWt4UGVQME81NE5Db2IrZ0xkVUJqWU5YWkdKRDE0SXRQU2Q5WnhLTTRUdzZn?=
 =?utf-8?B?YUpFZVZrTXBoeXVvM3dEdzhoaEpMd01rcFU3OHA1ZXBZUkJaUkpnV3JhUVA3?=
 =?utf-8?B?WlZkQW16S1BHUXQyaGtyWlNLRlp1azBuejBpRGJpUXJuRmtBY0F0VXQ0QzJn?=
 =?utf-8?B?SkdCRjFld3g3NFhsMnhTZ1h2Zk5IU0ZuMkdRQ2MweTUwUnNUMjBsWHc3aldh?=
 =?utf-8?B?YUpwSHNHUE5xSXNvN0NMWElQUzRGdVhXdlRyL3hyTEtyYzZKR29rQnFrc0x4?=
 =?utf-8?B?Q3g0RkIvUVRRVnBkSlJWSnZKeVdnb045RFg2ZFg2dnhBeE1sSm1lQnpDdVlx?=
 =?utf-8?B?QkZYWEZDQzQ0UVZNQys0SHFKYW4wVE5wL3hhK09MYm1FTU1uS2lyZzhxYnRJ?=
 =?utf-8?B?dVF4YktBYndrSVFEZDVhZ1ZrMERvNForZ2h6dGZXQjNUUWRUSVQyRlVCM1RH?=
 =?utf-8?B?S1pxNVBLdUFrdGVMcnE2NTFnTzlWSGdzdU54QWl0U2VkVzVCeXRCNEVCdWZt?=
 =?utf-8?B?aTU2WTNJYlFQb3F0bUxaZnV3YldSL1BxYzVRWUM5TmVCTDN0S2JDNllTbTNk?=
 =?utf-8?B?WnQ5TUdmSi9xd1RZTkJlMnppWFovbnBNOE9Pa052ZUNrMGJtNWRoRFMxa0hh?=
 =?utf-8?B?VGxvNzkvdktGVXpuaGZlbXVqTWNvVXM3SWcydXlicmNnVUJ6emliK0FsSjN1?=
 =?utf-8?B?dXpsSWVIaTNMSE9HeUFMb0lKZnNUZXJFc2ZVK0l1UkpwKzNmQzVoNXVZRlQ3?=
 =?utf-8?B?b2JLQ2w0WmRHbHRWc1ZOQktQSllrcXlEbHlzMVpwNUVZbkF3akI0bmZ6WnpO?=
 =?utf-8?B?alZGQWNoTUNSV1R6eGZTYmh4ZTFyYmtFM3Y5OWk4S1E1TCtTcWM5SmZvSkxS?=
 =?utf-8?B?ZktiRnI5K2pSYVlINXJ2L0RIeWNqV2ZhVVEySHc5OHlnYmtpblNKNi9lbTFD?=
 =?utf-8?B?Q1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7df48c7-1985-490d-4299-08dd558803fa
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2025 10:34:42.9010 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3EE3ZKKe0Z8fJFVxXqpvCBM2Eqh3CUFYFpk5QPctP44vTPkgc5mKnk94/S3wpCIc8mXYDKq0HyOg7516b/T/hHw5fQtqdso3zJYvHjoLOrU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6283
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740479734; x=1772015734;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pz3kS0zk8wRFBOmv7uv8aYHCDAQ0WGDYbR2oOR8Q5Fk=;
 b=f28kficqI4nfU4et+P0iDWnw1V9nZPsYoyYT7I85c68Yl2PGKzy/YsDf
 DFphXDciKfMqBNgL9vm4bKCxmJwU1oPh2Wf8zYpnYd+qxKnhx3JIQYlh0
 1PtBHPBvpkCJygnDjuCC6NTZr80/r7rhgnxfQWSQ/yzxPkSL7yevRBy21
 fy3YjUBj8ziIEcYodFr+fcKmuO36H44giZCpgce7DQz/34Fw0XmWOO+/Z
 qpZj95sIO4ERuOz0gfIUgo4jeB/4YtY3gBd6CI/LlvMvwvtFNWqiX4M3W
 2+mdJQAHKIcFV4UA+AzFMFZqGqcOkleTLazNXEscrhd9mZuSyoECxzIex
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f28kficq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net v2 5/5] ice: fix using untrusted
 value of pkt_len in ice_vc_fdir_parse_raw()
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

On 2/25/25 10:08, Martyna Szapar-Mudlaw wrote:
> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> 
> Fix using the untrusted value of proto->raw.pkt_len in function
> ice_vc_fdir_parse_raw() by verifying if it does not exceed the
> VIRTCHNL_MAX_SIZE_RAW_PACKET value.
> 
> Fixes: 99f419df8a5c ("ice: enable FDIR filters from raw binary patterns for VFs")
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
> ---
>   .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 25 +++++++++++++------
>   1 file changed, 17 insertions(+), 8 deletions(-)
> 
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
