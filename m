Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C81498A1BE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 14:14:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E62EB6065C;
	Mon, 30 Sep 2024 12:14:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RYnhOw3gV15K; Mon, 30 Sep 2024 12:14:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BF4260668
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727698475;
	bh=6s8Jg4PYHzWQnQVBvK5U/2QiDUJN8ud+GWWe8wgit+I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xb0JDzxEuxwLsttpiEWDm8sQTWBPumnPMI7o4Ib7h2F3aqxHbV8h2EaK3zRxqlEvN
	 AysbOlNxLVWy5+pEVuktDHq6sQBzK4n0m1fFREy/RdbyrK+FEgmvpHNMzSYomeNNIb
	 gfMUSjJaRWmzbf/cmy/Z579+j/oJf6cOwWFShGSnSmfQ+O72XHSTGIbxj37SA1bqvS
	 Feryb1yDQivX0MJBeOaSEYUVIXEf/pBaGCpZKfhD+9GLre5WMiv7qRd7J1UTO/qs5k
	 C8EKZwr6EHYyaGX9R5YHi+B6Xp7kZo0XXMbo93R5f9hMPcrouzEeI34/kK6k5Qb77j
	 mjCT4/yG5zXTg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BF4260668;
	Mon, 30 Sep 2024 12:14:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E08401BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CE09D80F30
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:14:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l_a8B4yfw97m for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 12:14:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 146B080EA4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 146B080EA4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 146B080EA4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:14:31 +0000 (UTC)
X-CSE-ConnectionGUID: 6Q5jSvQMQ3arceIefn4dDg==
X-CSE-MsgGUID: nEb/FLppT1+1DoQkWciUpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="37456409"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="37456409"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:14:31 -0700
X-CSE-ConnectionGUID: rJfIBFBVRaK8u5c8B9jLkw==
X-CSE-MsgGUID: kwuqPvgGSTOMUMGend9nuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="73405206"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Sep 2024 05:14:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 30 Sep 2024 05:14:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 30 Sep 2024 05:14:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 30 Sep 2024 05:14:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TB1HuirTDDgkHu1y08/zx77ZOabY+huo69Lr4Q0JLiGw/77ZnKFGlJ1uxjP7Tl8QmL4svf3fR6pcouNnllOu0cdUpBk5FUzFD7JUvEh1p6bOCRDzecY7HYLhHJu0nkR6F+kaRo9FJPfHpkHFSWgcbfZvNZyaNN8neg+zIa2hufnHJ9aD/zzDZxD6DJDjkN9MuZUohrj625Jctt4ei8lxrcLnQJ0hncnlvxhGghe4kIMOf58Zd4fH/jiKOyi0/P+g8yKyt/fADJbpkFTi6FoGXMMem1nQA23t83D6Ty8BHh+g38ctqT7U3h+mzB543e3kyZAMWalQm4xLwe6h5Mv2Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6s8Jg4PYHzWQnQVBvK5U/2QiDUJN8ud+GWWe8wgit+I=;
 b=pbux70m3JacVwY+IeBO8JVrD1iwfPo7wDLTm4bGwP322fCudkLFOM0EJrI7HscrUPihBhvEnRmj+hesAB1nMwYxLZQ8cRpQtvMBJOzuI8fzwqJA8CTeYcHfao1bCM5foJKqNNhCh2hFfjvNXaAKzgUArCAbUA38yc03m4ELK9q5yKlVZOyP/mhBXQju9H5ZjvVvJ04im6//u2Pnoh9aP3wS2TFYqHL7XzZLG5cc6CiAbZB0ivEER2ry4q52NPsjol9gZYS02B87DIY2jaPRKWobnwtVLrCpWBmwGCT+b7nW2Tq6tUwEFfcILgjSqHUBENZBD8ob3zCpy7R2U4ohZJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by IA0PR11MB7404.namprd11.prod.outlook.com (2603:10b6:208:430::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.25; Mon, 30 Sep
 2024 12:14:26 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%6]) with mapi id 15.20.8005.024; Mon, 30 Sep 2024
 12:14:26 +0000
Message-ID: <2a52e295-3e88-4727-ab67-a145c8f5e455@intel.com>
Date: Mon, 30 Sep 2024 15:14:21 +0300
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240908064917.3941680-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20240908064917.3941680-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0025.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::20) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|IA0PR11MB7404:EE_
X-MS-Office365-Filtering-Correlation-Id: 5bf89082-f393-45f0-29e9-08dce1496d57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L1JmV0dlcDdVb0l1cVJZM2tMTnRoMnJMQXFyRmhFdkxqWmZtWEkyRWlpOC9M?=
 =?utf-8?B?U1BqZmFCa0U4bzduY3JBU0tIdmp6VStWZ1ZCQnhGOFU0cUM0TmV1TldEbGtp?=
 =?utf-8?B?TWc2KzMzbExOcEpyd2xub3NNZmRlSWR6S1NQT1BhVWpnVjB3UmZRbThEMWJy?=
 =?utf-8?B?cmVqYUR0NzhYZmtkQ1ozejA1MzNFUmVucHpidk1nRFozNXA5WUZSNXVpSWZ3?=
 =?utf-8?B?ZENIWktsVWxxdXdMNE94YnhKMGZHWER6V3p3TUc3SW1yUDA5Tmowdmp5SzRz?=
 =?utf-8?B?K2VzaWJwb2tLUGhEejNtZ3NWbml4aWFoejF1OHR2RzduK0oyVW5ibUJIdERo?=
 =?utf-8?B?MTJnZDNDTEU0MGU0czRTQVBNL1pCc0xoa1hpOHFhemhrNkZqcFU5R0E4cEZq?=
 =?utf-8?B?RmhxUVJkQ2NQYlRoWDdEbTNjbzl5YnlWYUY2MktzRGxzM3R2bFYxQW1Delhu?=
 =?utf-8?B?d1BPRnVESW5qY1F1QmZNak5vNlA1TzZmOXR2YWxoUWE5Tm11aFJMS3Nsbkhs?=
 =?utf-8?B?VnpCbDRySy9iMWRLeVNTNDVCWDFGUnBzdnpJb05tYmNQSnpUUUJjQmFtMWpq?=
 =?utf-8?B?cXVYSlFkRVVwUmt2MUZ3QlI2TDd6V3hnVjRLRFZQazRmL0NJTHBxRnlNLytu?=
 =?utf-8?B?NDNVS2Z1MXRzeU5GVmVndVhQa0QvNGdQOUN5T0s4M0FBeUo4emx1RjRwb2Z2?=
 =?utf-8?B?UUMzdWxvMkxkOXVpei9ncHM0RnBqSXRWV0ZzTXozVmZnQVNieHdGYzFGc3cz?=
 =?utf-8?B?MmFNRVZ5YmpLOEpaUjhQZld5WHdUY3VVSWFNMkR2cVhLRVo5akxGVjVhWVRp?=
 =?utf-8?B?clMyM3dTL2J4QjZZUUk4SklXNVZDUmJOV3lrMWlqYzdnS0xWU2VuYkN0ZjRq?=
 =?utf-8?B?bW1WNERyQzc1OUFXbzV5WUFVRDRQRUpiMm8rdHVXQUFmWEZhMlBIaC9aTzhF?=
 =?utf-8?B?bHpSUTF5RENDMUh1MFZ3bXFpQW1LUWd6SHZZMnNGZDR5MVNVNHdlbTNBT21E?=
 =?utf-8?B?L1JZVi8zdkxYUnlxUUZBSXZINXp0WERGSlBoTmVhYkJXdXpSb1ZKck9rK3lz?=
 =?utf-8?B?dytwUm9yUkRMUW8rclp0a3gveXN3ZVQ4UnhHbS9IL0tnblZRUU9GTngwOWZ6?=
 =?utf-8?B?eWtNUEZ0SEs0V0lBR3E0czYrZTZLUU03cjF6RElvU0p2dVUwdklkYU5FRmNW?=
 =?utf-8?B?TkdQaGtCUHZKRDZFSXhhL1ZXeWtoWjNRd0RCbzVpZVZhUGdoQTBVeDhQdnhG?=
 =?utf-8?B?NFBWR2IxZWhycDZ5ZWhPdTJGREN6Rko0U2RYMnhLMHJKUWpEZFcvNThiZ0Nm?=
 =?utf-8?B?VUx0NkxTMis3UXhxc0gxUEdpOTRka09NUFA0UVdxNmFtc2sxaUtsVi9NMzNW?=
 =?utf-8?B?SUkwZXhEVVI2cVRnZnJydTg3YjRGUEZ6eGJTZnVHLzJqdytpUDd5NXZ6ak41?=
 =?utf-8?B?aTdkS0FxTGlQcnEwVXh4OXRTVnpoRnBuRkQ4S0RaQ2pSMjBZNnlCa2x6SEgw?=
 =?utf-8?B?YXRVK1BGb1V5Q0JmUFpQM0RJdTlPQ1lQQlNYY0xGdk92Nk11d25MWW9lRlZy?=
 =?utf-8?B?bGkrbUt3SFp4QVBQbVNOYkIyZ1U0VDJ0bVpnVE9EUGFOdUxmc2hIT1dMSzZa?=
 =?utf-8?B?dFFjL0Y0Wms1bXZNTWl3LzRhcHdra1ZUTkJSd2c2YmhOVDNMRXV0VE95QmhW?=
 =?utf-8?B?OFlyWEVkZk42SFRrZmJkWm5xbHJjcW11aGlycW1oNE1KWTRTMTZkRUpHY1p4?=
 =?utf-8?B?bWJ1WTJKN2x5aXZUN1JUcGtQYzF5TEVVaG54ckZYMm5BQm1ScXpxUUF3ZWRq?=
 =?utf-8?B?RHRXalQzYWhHd3dCWnIwZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFNJUDZGQ3krbm9OU1owR2M4U1Y5Lzd6UzZBTDlKOGFMWitMWE4vWTh4Z0N0?=
 =?utf-8?B?YkxsSHFLUXFVTEJlRlVwRkY4WTNhUHk2aUpROCtwUk1SNEU2S0RITWcvRFZH?=
 =?utf-8?B?MlY1UUlUbFpMekJlU1FjRXJZSXlVY2dEM2pBK0VTQWp3UGdKRDFOelI1cmdn?=
 =?utf-8?B?c2NFZnNyOGlSM25DcXZpMHo2VlFSWXdIZisvSVhVS1lKVVczaXhCUHlINXF4?=
 =?utf-8?B?TXNpWS8zNEwzZE5rUnhXOU9qdVNaZnJ2WlNWUVh1T1N1bS8wOTE4UFJUVHJq?=
 =?utf-8?B?Zm5hNnljR2lTWGhRblpOMXk3OHdWNmVjMUVJcTFjbWdxWEdrcGpyQmpyakhF?=
 =?utf-8?B?NktpQzJ3NTlQa2NyTmpicDdua3dXT2JyY0crVE9ENjB0d2VNZFZtWkszbjdu?=
 =?utf-8?B?VXZUbTJKbTVVNnZnMGZpbmhTa1ZVakJ0b2J2U1ZNZlRqUDBOU0MxUkRxMXNP?=
 =?utf-8?B?blU3dm1rVnhUdk5tUVczSEhhNFl6UG5ydk55Ry9nckZ0MGpWeEVXUnpVcVJE?=
 =?utf-8?B?T1ptZlZ6cE9BWFpWVWR2Y255YTVOV1lHcmdiczR1ek9yRGtFa3hGNHdhWC9x?=
 =?utf-8?B?Y3BTbWVSZVpqaTdUb3JvNDRsN0Zua0ltdWliTU1wQzJxVk5DUDRPK1hjSG5Q?=
 =?utf-8?B?RlRvQVNEd3dZZS92SUNrKzRvWFdFa0FFZ044QWp3aFZUV3JpZUhxM3FyejY3?=
 =?utf-8?B?TzN0eEYwbmFOczIvWk9aR0hnVWF6ZUNTOTdXNy9ZS1Z0WHN3bU5ZcnF1aWVM?=
 =?utf-8?B?OWE5WWo1Q25DSmJPZDg0UTZBaU5GeFhJbEJiUUpVYWptWDFuY2VNR1ZlV2d1?=
 =?utf-8?B?NzNjTjJ4TDFDdGp4RmcxQzUzVTJEbGc1UlMycE94dkJLT1IyTEdrMGtQRGxn?=
 =?utf-8?B?bC96TW5EU01iZnJPRlo3MG9DWVQxbWpCb2JHT2I5Z2Qva04yY1ljc2QxVnpQ?=
 =?utf-8?B?dXdiTTlDK3gwMFVtY2V2Vk9lK0M0RitOSTc0MTJFQ3FIUVMyME5WRHQwdmdn?=
 =?utf-8?B?eE1ERTNTNnlaYWJsYmtXTi9iRG1aamNzZFRoZTNodUJrYnpLNVFnYXJZN01O?=
 =?utf-8?B?b0hmNVlYUDlSclcyTjRHLzdXSjIvaTM0N0orZGdOMUxseHZWTVJUMWV2MGdE?=
 =?utf-8?B?dm50UEJoVnRVWFFBbFk2RExsYnFRbHdoMUd2Qmg2SExCM3FPMTNNUEE3S0JI?=
 =?utf-8?B?d08rcjhxMmlkMHRCaFpaN0ZTNlJhV09rdC9CaWRyNkZXVW9pN1lDOWlvd1VS?=
 =?utf-8?B?a25USUVtbWVSUzI5Y09oZk5LZGdBM1hrQVRPSVR3YVFOV2xlTmMwYnJ6anNS?=
 =?utf-8?B?cFVFSm5DWEdqd1hySTh6em94YmplaXU4a092aENzaGZoUlUvdUFJRWZ6VlpT?=
 =?utf-8?B?bW1SUktmZzBvS2p4Q2RlY0k4aDRUUnBndk85SG8xQlh2K2VPWHlNc2ltci81?=
 =?utf-8?B?Ky9kVmFiNGJEVDBOY3M5QWNRZFpmQkQvM2I2YlQrZEVaZVJvNEVQQ2dRVTFD?=
 =?utf-8?B?WE5WOGgxekZzR3dSNVQ1RVBCUmdxdWJHdnhmVVJTb2xCUFNXT3pvSHNuNXRG?=
 =?utf-8?B?RTk5SG5ONExtMkxsWHdvVXJNSjIyTkoyS3BWN3Ztcm9lRmlJU1JFOURRTjVz?=
 =?utf-8?B?YytJc0hBYkF1Q0JqNktLNEppSWhRS2RvbnY5SnRJSXVDeXJscEJIaEErekFt?=
 =?utf-8?B?NlExTGVFdTZQbVNLb0hkbXdXN0JqQzRtcUExWXNNTHVzSTQxYk1zV2ZWOGxY?=
 =?utf-8?B?dldqYTZCMDVNdXJxVEU0Sk43RlYxSk52aFRsdmpDYmJkRE80YnVzVVg2eks3?=
 =?utf-8?B?YnpBTHE1aU9Da21ONXB2Y2FpeUN3QjdHQXZRUXVsWkRFVUZZZ1gzdHBYQ09J?=
 =?utf-8?B?VEwyRnA2NVRWbFVpV05MenJVbzVoenhPNGRHUGFBRFFKWXU2UWg5b3Yyc3Bz?=
 =?utf-8?B?MUZmWVZuWnZDRzZtck0weHBGQjkxQnI2WFplN3h4dFJHQnd1b29CWW9QRjYr?=
 =?utf-8?B?WWdMMlpkRHdnZklRV0dRMlFJRUl1QXg0cE1RLytLczZZbW1yNDA2bHZrYkxt?=
 =?utf-8?B?bWRBOVpCUSsvTWliZE9RMDBJbGd0KytibzVnU2dZOFlXRHhDQmhlWlZ1WEhO?=
 =?utf-8?B?UkVjcFBNM055UXllU0hhN281aHUyV3BIeDZETmJyMktPUU9qSUxXZlY4clVo?=
 =?utf-8?B?dGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bf89082-f393-45f0-29e9-08dce1496d57
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2024 12:14:26.6018 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vo62bIsIdaVHJJtyqYan3Tv2byvLwFNWw0kKMdxcs3WzixCTIdLPr0gEGlLtgG8kWjt+1vxF0p4MTyGCqxbPPeKFMbYl/fmXZl9i2PSrScs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7404
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727698472; x=1759234472;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=i6YGCaJwkaIsDmruubec/u6f19FTlkfx6D3c7s50fss=;
 b=Q8YUnM0DWnd891QiGxuvPXLCFTRY9SMRSGqhsWAzGQHrUbRfoO9/fzLZ
 bPn8ty/iQiFBJPpywS2SSBCuAgWEoGjy5+0CLMcCWLlnqcb+yJVP9ZCLM
 OL2rYso7bQuqxFcYaPT89qEeyS1q+YXsu1roMpVMT0jOG6JR0dSwx1TVy
 5AKtK40EZvId06KhRPq711jAQYZFYeMdAlOheks6XfYmDG20tj0v+bRlc
 DLjmLpPGr6Qat2ePFyprGtwLVOldid9INPgQUqA+b5Jb8PbkMGzIsr9Wu
 EWLcBFnLTPkyF4iDgCfMnsvr5qdL9zgqcua0Wn8e2cVe0enBwHP4hSluX
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q8YUnM0D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 1/1] e1000e: change I219
 (19) devices to ADP
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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

On 08/09/2024 9:49, Vitaly Lifshits wrote:
> Sporadic issues, such as PHY access loss, have been observed on I219 (19)
> devices. It was found that these devices have hardware more closely
> related to ADP than MTP and the issues were caused by taking MTP-specific
> flows.
> 
> Change the MAC and board types of these devices from MTP to ADP to
> correctly reflect the LAN hardware, and flows, of these devices.
> 
> Fixes: db2d737d63c5 ("e1000e: Separate MTP board type from ADP")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v3: add an example to affected flows
> v2: elaborate on the meanings of this change
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/hw.h     | 4 ++--
>   drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++--
>   2 files changed, 4 insertions(+), 4 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
