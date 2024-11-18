Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E99A9D0A2D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2024 08:23:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4195D84EB2;
	Mon, 18 Nov 2024 07:23:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jf38tCdf1P6g; Mon, 18 Nov 2024 07:23:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88CDE84EB3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731914630;
	bh=EW5ajVjQcwr0AdmjccRxboJjBFZleY1Y4/C8hXcfGpM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K0HCcHIUFwTKIfjrCsBYzTqzTt0/CVma60+a+eU+WS14WxqeCeN5/oR0QgfWP/gr7
	 lyWd0RifK6QB48Mt3jjnOMrfhWCr/97gqpkwFQ1A7S1WvGyIHz22zrNHoqSf9nyRKU
	 sUPawkJrFhnXLVLkbqi8z4tehWM/G/5ltU3P+ojDnb3RRvBnR4WRE2rysjl1YLZk91
	 64zdIGMVnmBNPqg8mXtALNhZMFInxK5N2dSAqn8E9hsAHk8nXtKNlseOOC5n4e77rP
	 eD07vJqhyGysFK87gaCfzNPgcQGjnbmpmcqo97WoRxzXQWvtLMlO2O9ehjmrfZMT39
	 T5KbYNzIuO6MA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88CDE84EB3;
	Mon, 18 Nov 2024 07:23:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 588CFDB3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 07:23:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45BB842EDD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 07:23:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y5AbG7SizHuY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Nov 2024 07:23:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E203842F2B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E203842F2B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E203842F2B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 07:23:46 +0000 (UTC)
X-CSE-ConnectionGUID: qqqmGLAtRg6K+qSuFPWawQ==
X-CSE-MsgGUID: Xm9BLKB2QRuNB/B5goku+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11259"; a="31794124"
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="31794124"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2024 23:23:43 -0800
X-CSE-ConnectionGUID: 4HnHqwGPTeWHiFvcHk7p2w==
X-CSE-MsgGUID: 62VMaFNPT6OVGwexLdYtgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="89541739"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2024 23:23:43 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 17 Nov 2024 23:23:43 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 17 Nov 2024 23:23:43 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 17 Nov 2024 23:23:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QV3TP5msPGjC9/JVJY2OaiZ4l9mBuC3e937Ti4RCJNm5IE8BRTWdbcX0i+FNclSUjsyWJuHwse95cRdjBPc9hLojEehwY7mhTrTlXqZ0cjSi5rhgMGiJmjhaUCHmvMSpA3/lBUM4ipRcXrat82xRoUDhID2586XkI2MExrdbnGdUpXsuf0x1m001vM76nSdhS4tbfIvmvj187EFnNWY6urZVREseIAwuSVWnHDnxxmmHZhE6DKVsL3ATzj5Jf82VE+dIedSc+of7B+Yshe5nU+Tb309wxlrTruVFz4O0srkXVCdDKhxRmoY6FcW+X7oGX6st9DVoCwVTopKZOQnupw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EW5ajVjQcwr0AdmjccRxboJjBFZleY1Y4/C8hXcfGpM=;
 b=SvzUQ46BhWrmo5nk4OGCjT2t3j/f8LgGn3keKNGIWx753myBz7s58lsFkwri1K4C0KlT0Pn6i13pVoNTSenqxG+ncYp/IrPkJpxckq5GoVf7lC7YiZZkdhXACWPAu9joBGa0RLog08pAl7U9CVLWSpEQEIKFWdOkcfsaa3qEJnWKLUXkTD0TPKEUP6fUDk8qcV44tp5sLUR4KfSvuADWp3zwi46KOPO/skQo+sfPqPD911UQW0e+owpD2ak7uUviMuoHVjA7n3meFs9sgKBdUpz9kdBpss9T3vbkIjKg0YCuCmsg04KMyr8jbVuAed+aP0BpTS9W+bepKP8wc++Yug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB6475.namprd11.prod.outlook.com (2603:10b6:510:1f1::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.22; Mon, 18 Nov
 2024 07:23:32 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8158.023; Mon, 18 Nov 2024
 07:23:31 +0000
Message-ID: <e8c5b0ad-19aa-44b1-9b08-3929990e81c1@intel.com>
Date: Mon, 18 Nov 2024 08:23:26 +0100
User-Agent: Mozilla Thunderbird
To: <linux@treblig.org>, <anthony.l.nguyen@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>,
 <netdev@vger.kernel.org>
References: <20241116152433.96262-1-linux@treblig.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20241116152433.96262-1-linux@treblig.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0128.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::7) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB6475:EE_
X-MS-Office365-Filtering-Correlation-Id: d3ede303-a911-4cc1-b7e3-08dd07a1e7ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M2ZHdGRiNDczVHk5Wms2ak5YbjR2NHBLQUNvU01Wa1VJQXU4eHZxdElIRTlL?=
 =?utf-8?B?SGRkWXJ6RzBOeGQ5QkhIQlR0NDVrTkNxNWdvNTZibWxvRGJqaDhtblJLWlpU?=
 =?utf-8?B?SkptdnVkL1JOUUJiVWNtUS8zdmNvSURVSU0ycHlrWE1jcDZKR3czeHNmUjJY?=
 =?utf-8?B?UW0yNXg4WGlGYzRvTnhaVlBGS3JsZXBSa1owQW12VGVab1NLaGthUE85ZjlD?=
 =?utf-8?B?ZnUxYU5HU0xsVnlEaXRFQ25NYUxRVkpweURSMU9BLzYvZ1BOTFcvL2wxUUFx?=
 =?utf-8?B?S1ZxWW9GSGNMT1cyV0NSdFNWbGkwTlNIOHZkbVlZaEtoTDUrYlZiZUQ4ZzFi?=
 =?utf-8?B?cUpZN0VUYnczL0FLaVRlOXN2MzA2eXN6ZW9Idm4wT0I2Z1JEdDBmL1N5RTdR?=
 =?utf-8?B?UGI0WnJucyttRktDRVFZbmhKRXNKZnF4MzVmYUs0VU9QQ3FiMjVMeEFXZDZt?=
 =?utf-8?B?VHE0QlNtS3FWb0k3ZVNmNjVCcnNLaDR4REJHbmI3SC9jYWVxUEJMQnkvY01l?=
 =?utf-8?B?cWg1R1BiSmRISnZaZHUxbnUwRmdnQzVMc21KMjFkNnVzZWt0Tk9tQ09saDVr?=
 =?utf-8?B?OHJpVnQvZU10cU0yZVVxQnNZVVZNcnhSWGJSRUJwaXlnR0E0TitnQ2F6Kzlp?=
 =?utf-8?B?ZDR3THZ6TTJYMEFPQkk5L1VpZE9BOUxFUjEyOCtsNzdXcGNveitZelg0T1lL?=
 =?utf-8?B?aitXazNQNGNBWUQ4RmF3L25Ia0NON3NvTy94bTRXYnA1aytkcDNjRnA5cnlH?=
 =?utf-8?B?SGpMcTZuZlVkMk5iSmE0V1ljV2lFbFlyT2NWNENIT3dpNWtodlhSYTV1TGkv?=
 =?utf-8?B?U1dRVlF5Nnpab3dIVHhBQ1RsMFJqOXB1WjVhM2FTSTljei9wRXZtazNUTWs1?=
 =?utf-8?B?QWZZTFRmb1ZqS3pwOTk2cVpETVpTNmM5OS9BaGxYOGtwRlk0QkRRTjF5c2Er?=
 =?utf-8?B?MGlLQVZYMlFvOURVQmdXdE45RDU5ejhPUU9aSXJYTXVHdjlPc3RFN2FhNWJr?=
 =?utf-8?B?SnFXZDQyYjdrUGUzNHQrZGJYV0JBU0ZyaDZ3R3g5MmNvQ3BWcWVySkIrazU5?=
 =?utf-8?B?UDBpbDZOOC82K0ZLRXdLNC9PbTgwUCt0TVBFNmRaQml5Z0xNUEtzSFNhVnJh?=
 =?utf-8?B?MCtiZXNYc1Q3OHdCWE1YbWsvTis0a09HOXp4SGZEN2tieU9DdVdDaDM1Q3Za?=
 =?utf-8?B?clhhY0UyYlFBem5nZ1RycEpvSDRSRzlPRExLTngvQTJ2WG9vOEpOaUhjT1Jw?=
 =?utf-8?B?SUxtNlhXWEtBYWJoV1pHUE9NMUJTTEtoTnNiOVpsYnhaQ2lUZjExZDVoQXdw?=
 =?utf-8?B?VklGSHcrQ0ZVdHd3N3JHQndVeXJBWjVUaUpYMXNRdWc1UFZkbkNkT2JGTHkr?=
 =?utf-8?B?L3ZBZmwrVktKYU9xZ3ZSZy9VTHdmZmhURGdxb3RONXpxbXU0b1VTdHN0VEtE?=
 =?utf-8?B?L2ZmWHlZbjRlSTQ2SGR4WXYxbDQrdWQ0MjFZeE9XV0FjMmNNRSt1ZjgzVExr?=
 =?utf-8?B?d3VxS2VsbnpFMS9Rd1I0aGRiME5BME1Kc2Fla1JHVWFPM2pXMkZmdm9VNzhz?=
 =?utf-8?B?YmluYjZYVGJNUis1dGZGYkhHNEdFT0FGT3BpYW1Db0RoTGRXQUwxYUVYUUNO?=
 =?utf-8?B?V3RYS0txZSszV09lRnBBbU1GYVlIUElOdVBiblJWaitqZlNtZFRoTWpIZURE?=
 =?utf-8?B?bG9tdE81dXJLeEdQaUhTeVk2N2xHS1VhSTIyNFAwOWdqTnZXampzSGJFSnps?=
 =?utf-8?Q?Cg3f0GmID9yFR7rIDhjYbpRyrrNafXQzXg8bxO2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NzVHZjhpR3p0R1pkZnRVK0s5SmMzR05Gd25ob1lHVUdycjQzTkpGMDI5QzVr?=
 =?utf-8?B?Q2hxZ2xMVXhxVkIxU3BwUGVabm9LUURXTVYrZFhmOFAxMEY2L0dwVW9naFA4?=
 =?utf-8?B?SCsxQVR4SFpBSm5zKzZwSVFMVXc3MktVMWJqelpGMHdCUHRoRDg5U04wNzNo?=
 =?utf-8?B?aXgvdllyQ3U0ZDd4M2MyQnRhYVRKTmVua2o4S3dsWXpmd0ZqZ29xL3EzNzlQ?=
 =?utf-8?B?amRTay9ZZytLT1hwaFdhZXAzTzdJeHhIN3dxUlV2NWJxS3hucEVJQU5scjV2?=
 =?utf-8?B?dkZTVERab2VxU0xETE02RThvL292TU8xeEVGdjVWTmRoOGJYSEtwekFaUmpw?=
 =?utf-8?B?dGVTazE3OEJMdW1qN2dzU3pPcElicGNxcEJuV011Rll2ZXJzZTFRNG56TVRD?=
 =?utf-8?B?SHN1TUplc2RDMFFLY3JSYTFMcU9abEVXbjlHUHBiajAvaGpwNkVPWlprZXV3?=
 =?utf-8?B?bzltWnAycE9DdXdDUmdZWm5oMTF4UUl6anBRRlBGU2pLam1XVEZ0bFJoaWgx?=
 =?utf-8?B?cWM3dVBDTUhOV24rM1YyVzJYWTJBUGNhKytYb0I2c3JQcU84Rk9GOHRLUCt3?=
 =?utf-8?B?QjN5djMyRXpFOWQ3WEpOTlFyL3hHaFZGNWtYOWo5MVRMQXhXZ0RQQTl2UXFu?=
 =?utf-8?B?bDFHanNvOEp4bGhETTZDc0tiNnp1ZmxOWDRwQmp2azlkVFI3U2hwT05ReWRV?=
 =?utf-8?B?RkMrVTMwYk5PU0tvalk4c0diVEpjOS9FaGxaV0w2em5QWkNUL2FuZXU1bEhD?=
 =?utf-8?B?QVYwakkyaC91MnZERWRXUEVOTTg1T0YzM21raXZRc1BVV2JSQ1Izc1Z6VXVD?=
 =?utf-8?B?QWo2d09NcjJ4K3oxTXI2SGZqRTZBN3N5ZmNsc2JrSFU0andrSVJRNC9Wc2ts?=
 =?utf-8?B?M3czNkt4eXFZQ016cTdZUXk2aFc1V3FBZllsQjVBVWRDSVZIK1VrU0pIcXZp?=
 =?utf-8?B?amc5R3EvVDl4NHd1NTk2alEvaFJ4WlRITzNtZmRLbDZSM0hRZlZYbjhOMkhP?=
 =?utf-8?B?YWZFVkY5b3JJR1E0bDdWWWlGa2UybFpzWHJsdzRKenI4bTFGemxubXZYTjZt?=
 =?utf-8?B?K0dXZm9NUllhaHRuYmJJMDk3MnRERnphSHdHcVd3QTQ2S2tmU2I0L3BoRjlX?=
 =?utf-8?B?bTJzSXc5TmEvZ3lLNytkaDJLTlJkZEVONExkRXZkVXNJcEpiR2N2ZFJVK0dy?=
 =?utf-8?B?WWMzUEg5c01oYkdXMzZ5NTNiSTVaMEljcTNRcDZzSk9hUVgvdUNWQmpkMFBH?=
 =?utf-8?B?TDB1R3hpZ2lXRE5PMWtHQ1BOTFFKcWJMQzdKRmRzaWpyVHpDcUxXOXlmMEc3?=
 =?utf-8?B?Um81YkpxeHIzb0h4ZTJ6RmFsS2xnbXVyajgzbEo3QnFhLzRBSCtSbkFkRS9u?=
 =?utf-8?B?VmJxVjlwZlgvQm5JdXMvWmp3QUdRZE9nY2lHQlNxTGFESW1kSVNwYXd3VHJt?=
 =?utf-8?B?UGtQR0o1cVdxMjBsa0dGR1p4QktnS1ZzU0g0NUxwdjBtbWtaa0tkdndCYzY0?=
 =?utf-8?B?WmJzNGJ5cFhUbFErM2M4d3NlYXVxVk1RL01DOXJmKzlKc2N4VUZSdzlFdFp4?=
 =?utf-8?B?c0RYYzBkQjF0VDBHK3lzQnVBZm1xZXkzempZVko4Ujk5dzZmdUR0ZXFybUJ0?=
 =?utf-8?B?eGh6VGd6cWNodUFWYmxBUnJkVkFpM3l6QVMzL0hiVjQ4ZndOdUJZbjJSZjNP?=
 =?utf-8?B?TmNWakNodnd3ME1BbXc1Q0lRN2UzWTdlSXUxSHZnd2JrUDRSVnZEMHZiWG5o?=
 =?utf-8?B?S2JBdllyajY1UkU4eXFqQi8ySlp1RVdWcEFJU2ZvcWxhZzdIUmhjby9XeVhC?=
 =?utf-8?B?ZmxialVSZ1NBRmF2SEVHTzRTRTh0Z3NzTFVsT0l2VzU5cTVuRFhPcklaVWND?=
 =?utf-8?B?dVVuTW9vY1RUajlESzN4TkcrOUduSVhHRFZocklFTVFCcStScFFKUktCMCtT?=
 =?utf-8?B?VS91MWtzSVVMM2JNM0QwWjJjK0c3cWRERzZINzVIZXlhMGpzY1doTlowanAz?=
 =?utf-8?B?WVEyVEhPRVVmcVlucnQ2ZTNRMjRBUGdsNFRXd3R0aVVmdmx1Snk2bUx5a3pn?=
 =?utf-8?B?WVUxL3NvSUZ0cE96Mm1MZmZXOS9saXlHM2hwY2RzTDNIQmx3UTRxSmN2WGpi?=
 =?utf-8?B?bFJIUVJJRWJTcHZad1B1OTNXejlEUHBxV1Zkc1NJRnEwWEM3ay9xOGhkZ3lP?=
 =?utf-8?B?L2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3ede303-a911-4cc1-b7e3-08dd07a1e7ca
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2024 07:23:31.8985 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NLAzvdH3wYCeUfwM4PgKONCp9ZLibWRW95PeVefPHq3vhRgGw+5gLgRNDp6y8OG43uzV9Q/hNa6LeaZRP19a1U0JwBhdv8nhy61XdOAxiJs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6475
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731914627; x=1763450627;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zJI3Hkq/QFcglZBGF+ygaYSIgW5a/v7U1ihqW89lXJM=;
 b=SlOgqs2TxgCXmpFtRYA/hH7WJRqrXHs51mALSZMoWhMg3Huon9cfItIT
 UgSgpHf2shQpHeeEAzTT3xyf51BFjR79+V6v5hFVibOO+m656lly6xQeP
 9vb6AA2wKTjIG8GBBVQL3ZNvm7X4Ly6qwAve5Rf+zaIIdigRKECrTEt9O
 4GxsUgCYMJmDQNdu7My3E+TicQ3DnHj2NDmV/KNHRAPMOuM0ZesQTdycC
 FfhmRHsD4/UnvORj/ADP2SEDrmQVNwNvCt1A7B61lacy8al6PJ/7QFxjH
 ZCYX3iPAZKIlPg7ws5ikyNWkOK7YMM7sh64PTgSXoFXzJfecwBZr/c1C8
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SlOgqs2T
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] intel/fm10k: Remove unused
 fm10k_iov_msg_mac_vlan_pf
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

On 11/16/24 16:24, linux@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> fm10k_iov_msg_mac_vlan_pf() has been unused since 2017's
> commit 1f5c27e52857 ("fm10k: use the MAC/VLAN queue for VF<->PF MAC/VLAN
> requests")
> 
> Remove it.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

makes sense, and all constants in the removed code seem to be used
elsewhere, so:
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

for you future Intel-Ethernet-only changes it would be better to
target as [iwl-next] or [iwl-net],
no need to repost just fro that
