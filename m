Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A86296BC81
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 14:36:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29284605AA;
	Wed,  4 Sep 2024 12:36:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5TTGq034qji9; Wed,  4 Sep 2024 12:36:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D85046087B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725453384;
	bh=j6g6s/ZyW55uGTMRLnYxuo7KAwHuGZmd5u4lCTXKwxU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1oIKUCPpqC+LHFLrygfc44doJY25bmFnvzf7I1KnxTLLtiFw68t8S8fh5XtnC4AWC
	 RXPdWXuYNdACHRDDYcEWgcbq14iV0BA0x8/sFplykby6q/uynsJIS7oL8lgYmNOh4+
	 3039wHsQx6ApCjSl0q6JxzGoxFxBGP4QzJSUCxDMKx/9rtdgd8+Xx1eMwCsGKvGYA9
	 xxdpVfXqmSuMc4ryNnlMAolau5QnQDfEAS0xNt2Zfr62Tr2AGKghl6jwLSWlqrlhjS
	 QKn8bZEevlDOCBeZvNiMX5FMUnoCXvmWnPRSqIfG+9G1YM3WYpDiMu4Kc8Ibv6iMcz
	 LVluLpsk9ml+A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D85046087B;
	Wed,  4 Sep 2024 12:36:24 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 93ADB1BF267
 for <intel-wired-lan@osuosl.org>; Wed,  4 Sep 2024 12:36:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7EC1440452
 for <intel-wired-lan@osuosl.org>; Wed,  4 Sep 2024 12:36:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fO2x2ZJt4rWa for <intel-wired-lan@osuosl.org>;
 Wed,  4 Sep 2024 12:36:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1975940129
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1975940129
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1975940129
 for <intel-wired-lan@osuosl.org>; Wed,  4 Sep 2024 12:36:21 +0000 (UTC)
X-CSE-ConnectionGUID: oKRqBuAFRUmVOJXH+r6HAA==
X-CSE-MsgGUID: NtfLrO/eRW6KdA7jFNZF6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="49515055"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="49515055"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 05:36:21 -0700
X-CSE-ConnectionGUID: iIbVjsP/SVqO3isMYxvF/A==
X-CSE-MsgGUID: 9+ljFlQYRfSseuZ0aEGxxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="64913709"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 05:36:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 05:36:19 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 05:36:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 05:36:18 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 05:36:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=chpGZ4+rppBJSDqV/LlrdfCTtdS30xT8erY+CX+EPEh4vidQbqLqUR+yi+sn2bQYMOb5a5KmePvmAVCBdBNzDJ6n7bRrDCJA5twBcBkdc525d/572u5FwEUEgPldXwJUBFO6emH3Lj0/Nq73gvESwA+DTDrJ8tgfsX0iVVDeSpp43DuILqvKI9Vhpfy4kT6vJ5wKFH5BB5UGGj+V3F76SaFPmC8SzSbbg9H6blpM28ofhc/A8m7YQMjJflfzM+/9I1SKnO4VgeSRSInNKLA1/7pea7mkhJgsC0cvfWxxTZpHvoqZLTuGLvqdQcIw7W9ZP86VEGFphFBsCqJko0MQPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j6g6s/ZyW55uGTMRLnYxuo7KAwHuGZmd5u4lCTXKwxU=;
 b=ho8IltgP8500d0iM00ih2jnViMn7gBV36ebbdqCvWz3iY6gKCoToH46Ksuh786TBu58PNcA+bvMeMbFD67ywCpC9AMgDZ9jMxq9CrfmwqrQ/DhCYFdj7keNYumj5velnOA98iEQ8Sq+pZBM89Zy8xFJGACyFLBbztX3K6/Lg8ZBu5svCKu/q/Kl0gbdpPdOZ6CiACq8gQjJ7VAVBlzePxAg7juG8zccgDIj6kG+hNBicrxnMRwzgySCTIT90ybF4AmkJPXmdSuPpg8tfEynxlvAMcupMsRXEnJjD1iCyw2W7iWNc7UEBbD+Z4UNKw8OvLaoqalrWOCjX2EDjzQNIFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by PH0PR11MB4903.namprd11.prod.outlook.com (2603:10b6:510:36::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Wed, 4 Sep
 2024 12:36:16 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 12:36:16 +0000
Message-ID: <5349b6fd-bd22-9b15-25a2-0f42c67b9c9e@intel.com>
Date: Wed, 4 Sep 2024 15:36:39 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <3ef52bb5-3289-416a-81b6-4064c49960c8@lunn.ch>
 <20240904055646.58588-1-takamitz@amazon.co.jp>
 <b6b56dd0-b6ff-47d1-a678-d2fde5184723@lunn.ch>
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
In-Reply-To: <b6b56dd0-b6ff-47d1-a678-d2fde5184723@lunn.ch>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0010.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::8)
 To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|PH0PR11MB4903:EE_
X-MS-Office365-Filtering-Correlation-Id: 025b5d3f-cf5c-4186-542a-08dcccde2b53
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RjZhaXh0aGZhWEErdG11NUhoNFRUR05sazY0WFU2TlEvbkl2YXhUSlBQN0lE?=
 =?utf-8?B?a2tUT0txcStMcVRNTUhGaGFTTzVPZFpoUFU3ZUFRbGM5NlhKSGh2eENUT2tk?=
 =?utf-8?B?ZDJvc09BOG9RbExrRDZwSWIvYUo5aGFiTlBKdXlRSzBCRUl5SzliYXFpWEV0?=
 =?utf-8?B?QmE2L0dvdU83UDZHWndFdnBhZGR1aFU2cXhBVzhQNTVHWWsxTXMvVVB6VkVL?=
 =?utf-8?B?VUc4MnZ3MWVIWlVianpCZ1llUmFReGlQeUp5M2tNTEYrNS9WcGFyOFQ3WkNF?=
 =?utf-8?B?VlRxREtEN1M5R3hlS1B1SjZYMnVOeUQydWliYnViYmRvNDErT3Qvc3BDUXZT?=
 =?utf-8?B?UVQycDlDUXJuMW5xNXhNclcxdGMvUFRCbnYrWVRWS0tqcFl2RFlWT0xET0dt?=
 =?utf-8?B?NmVaREZlMmxxQjlhVkxmK1lqV2xGcy9XWHVYdHdzVTAzbENXYjZoRWNJcWcw?=
 =?utf-8?B?dzlmUzVtTXcvbHhYSXRxN2FUMjQwZHhSNUQ1RitkSWkwcWJqajRyR3IrZjg1?=
 =?utf-8?B?RUUzcUVTSzkxcUxpaC95UUVlaDlHcEtHdnRhYmV0Z2I3eERXTi9IQS9RUzQ3?=
 =?utf-8?B?T29OcmEwL1BNMHZCN1MxZEFOWkdzanBqNmcxdk00ZjVKWEhxelljbU04cWg3?=
 =?utf-8?B?RWVKeHpXR2ppTlErekRWa1grbXJLa0EvZmtkem95SVgxVHh2QU5KakpuVGlO?=
 =?utf-8?B?OVRuMXRCMWd1ZVhVM3dQcm9DLzU4Tmllc1FPb1JCaTF5QmYrMWhLU0xrLzVG?=
 =?utf-8?B?VWxSM3BMR0xCVThDeVl6RXhwbUYzcWt1QkNuUVh0WlRaeU4xL1RMdHc2aHpz?=
 =?utf-8?B?K3ZrVUZwR2tmZU0wZGZHdC8xRzFzTEt1MWV1NC9LZmFZdjg4L1FicENPZWJt?=
 =?utf-8?B?Q1pmU0dJVXVWV2RGaHZUMlpuYVBzZHRBQ1ZXYmNxZDNCbGg2VG9yMGNDNXJY?=
 =?utf-8?B?c2JMaklhaDFPL0pibk1zaU00bXc2eFhGQzVJeHprT0F5OElJTVdXalZxV01r?=
 =?utf-8?B?UGZyVm5aSjRKOEoya1dYc3BsMjdTalRIZVRjRThVNitMNm1rM2xHVkk0b0Rv?=
 =?utf-8?B?T3RseDYwVkhzdkdudVBOejZ5UDZHRS9qS3RySmN0a2tUU3UwMGF0S0pEbWVV?=
 =?utf-8?B?aFNWVEVLUTgwY0VZT0JBOGpSaENvZUtreWpJdlNqLzdFcWxsazNIYkJjUWRM?=
 =?utf-8?B?QXZ6WG5aaTlXMUxjblZoNktkQW10OUJ5YzdKSTE4dnErTnpLQjZHaXBCdXN1?=
 =?utf-8?B?RGZhblNOL0RIUXJLYTZ2MzdTZUFjNW51bkp5MU1oUGRwWTJOYTFFUHNHRUlo?=
 =?utf-8?B?R3IvWUNyWnhjaTgrNE4rdW9ra0JZUEZNVlkzNDVteEhSN29oMmk3cm9XWUZ3?=
 =?utf-8?B?YzhOaU5zdjRSMHRjRTdZLzJyOFVnb1ZaMy8yVjFyVHM2d0Uyeis3RVBWdDhs?=
 =?utf-8?B?c2x2Q2RWdHZKTVZNNlp6dXRDTWcveXFhMms3cm43cnp1dXI1d2R6RFNtUzRv?=
 =?utf-8?B?eUxMbU9OOUlzMldiSmR3a29STVAwQnRqQ0toQWxaMG5FWXcrQWc4QTh2ZU01?=
 =?utf-8?B?Y2RsUjZsSWJvWjRmMlVRc3pEZmpIV0wrbDB2VUd2VndFNmVRNFZsdEphOWRq?=
 =?utf-8?B?aWF6M3lPR2JnZG9LUGIxd29aM2p1Z0xFUUVUNXZ5angxVWtsTU0yMEJsQTRZ?=
 =?utf-8?B?Q0Q4em40eDFoSHFhWmgxYmhreWZQU2pyamcrTnhrY05uUGlwVkZ6QiszcS84?=
 =?utf-8?B?ZHBOb0ZDcENVRk1waEJ6c0wrdHprYUJDM3FIYmJQSVB4c3VLalM0OXBKclZq?=
 =?utf-8?Q?QzDOCeTs+KTC+PjzSV75pRdhRfDR/LqjEBKsQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGdPOEdwdGhTclZIVHo5dlhLdzBMV3hkZ2t6QVh5QmdaUDF1U1NzZHhJNlgv?=
 =?utf-8?B?RlJuYUxqcEVydk0zYURJZWk1UkZXR0VOSGJmS3Q4TE1FcGtBejJXR0FaTEE2?=
 =?utf-8?B?TW9idmdLaDZWRzBIQVFxNEtQWHhlS2VjTTZQSWNZdGVXOFFJSFNrcXZhT1lW?=
 =?utf-8?B?MkNDZktjaVB4T2NLVG1xdFRsOXR4VGpSZFI1TTJjS3RHdUpSaEFvbUhOTHla?=
 =?utf-8?B?YjMzVEhWTk5yVEdJNnh3anU2YmhEYmliWXNaYlhiT2xHb1hqNTFrNWhDRUFM?=
 =?utf-8?B?Z1ZETUtRajBFQ3hPMkVOQ293cFVqWGtPS2JTU3VSWjNlVThwMlUxTVdpMWE0?=
 =?utf-8?B?c2g3TEJvakU0bzE1NVVxclFENTdtVDdBVDNxU1ZuYzdlWGxUYXNXV0tyUml6?=
 =?utf-8?B?UmpDejhUcFVzc3ZkUVJodHJYSDVTbzJiSmZEV1FCcnExSXN4ZFdJOXJwUUZU?=
 =?utf-8?B?czc4cEZGRlZlRzZDb3J5NWZjdDVKaVQ4UTZHNkU1MmhjTEtaK3k0dXY1MERr?=
 =?utf-8?B?MlVNSm9TVFFyNGJrNFdheHdCdFI0SGU4ZHRlM0Q2bnNUQUw2K3ZtSjYwMytF?=
 =?utf-8?B?SkVRVC9qcnVFVlVzK0pDU1FWNzdnSUk4Mjh6NU9CTFdXRWs5LzVES1RlcGRz?=
 =?utf-8?B?RjFQU0Fob0dKWXdQQVJnelpWYnBMQ1E5N0tybkZLaE9NV2FIYWNSNnUvKzF0?=
 =?utf-8?B?elJzMFp2MHQrNGh5SjN0bzd6Zzhja3BIcmNQYXB4cW56NmxrZEFtU0tQRzF1?=
 =?utf-8?B?QkI4SXpUTWpWWE9SeGhGYWlUVUtvUWt5YUdBd0xqYUNOSnJlbW9GRzlmai8v?=
 =?utf-8?B?cDU5OHo1Lzc3ejA4QlpPQVo0ODZCSUZsbzR3SHQzeGplNWs0RWtwaXJsaS8z?=
 =?utf-8?B?V3Z6TTRWeFFPR0pZT2F1bFh3OXNLbEVpamNjS2FHVG9WUkIraVVONGFxN1BJ?=
 =?utf-8?B?QUo2Z2s2Vk9rWHUxTXM0b3VlcThVNmpGeVd4QU5pVWQ3OEJ3clhaRzhib1Qy?=
 =?utf-8?B?MWd5MktkVHlQdHRQUW1ieU1uRFMwamF1Wm5vM1R4UVVOTVU4dDd1ZVY1bDJm?=
 =?utf-8?B?ZmhRVllTajdKQUxMd2dsanI2NkNCNjQzR1ArNEEzQ2U3dTRlVWNkbkFsQS9G?=
 =?utf-8?B?d3JDdXFJUGg1bGJjSk1VTGRINDU0R0NVSnp5QXh5WHhNT0ZWbU9NZVgzVzFN?=
 =?utf-8?B?M0kzaVkrY1FVcS9VRklTR01MZEFjVktPOWF3ODI1MEtMb0tGMHdwSlF3bFNx?=
 =?utf-8?B?MVY3K1g3djhjZnJGdlJ4NndTZ1dyVjV3MnA2NGVqTG5OWUVDK1hXUVdBdjJI?=
 =?utf-8?B?QUoyNnlLL21TSmlNWWQva0FQdmRyRVI2SHZCdHdUK01MYmV3T3ZSdkVrdER4?=
 =?utf-8?B?K1NEeHVEUGI4VFRMd1RTSWVNK0JiSUl6blhHRVhGOGpVWFhHUExVc3YxVVVr?=
 =?utf-8?B?UXlEYTA0b2M4dXIrQm5GWG1ZWXBsbndEUmVGU2hZK3JnNFNLRG1yOXJ0SVFk?=
 =?utf-8?B?bnlwUE8wOTNHS1M1TnB4VzZDeGduQXdvcW9ESWVjQnVlNWpOdDRBd3BtclA3?=
 =?utf-8?B?bmMxRURlNm02V2ZjSlRPZ0hBVmwvWjRraVFOd25NaWlZZzF2bzg0R0pZeEJr?=
 =?utf-8?B?d3pHOXFpWGFQOWM1SFBnaHVVRHhHYXFwYU1iZlZVa1hBSENjMXhzTFVSaTZq?=
 =?utf-8?B?T2R1OHkzVFgvbnVYMFFlaFcxL2xYekVtTXdlQkIrSFdvQTd0UldMMFVxODJQ?=
 =?utf-8?B?bFJTQzh4eWV0aHpzQTEzSm1ZU3BNa2pzc1dqQlhuRzAzZkhXcFY2ZFpSMmFS?=
 =?utf-8?B?TnJ0c0hVaWU4b3JCc29UcFNyMFJNcFRWc2o3OVpkSlphYlUzK1l3MlE4L2Jl?=
 =?utf-8?B?bXlEMFRKSVdpNk9vNU1jN0swVlh0NnowS1RLbTZOazU4V3RHdVkyUGNWMGw0?=
 =?utf-8?B?UGZTUXNuWEp5WWxMd2o5TFQ2WkVSeDhhNDNacCtLZFo5ZFBZcksrRmJVMGRt?=
 =?utf-8?B?QitTY3FYYUI4dFFkbE9JQzdsbXZpOW92M1pJYThYSnZzeXRERGZJNXRTU1NV?=
 =?utf-8?B?ZEpDaWdmajBMa0FHVXd5NVhiallZOXJuRjRQZHc2R0JBb29yb1BIT2hVNHFJ?=
 =?utf-8?B?QXcyZVhZNHRkalZtc3BIeFRuWG05emx3VTZxLzViOWhtUVN5M0V3WVU5Mkl0?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 025b5d3f-cf5c-4186-542a-08dcccde2b53
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 12:36:16.4157 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wS5M45b5uEPt9iXucmiQ+xGiOuNG7TmMN1ThueiR0sp5DHDn8N1cu5NcBHtfq1BoNxxrEOCP5zNW++ma+uXByBQA1KbJspAoVsgFYV9y/A8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4903
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725453382; x=1756989382;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TAih6Sy22aucMrLoU1TdSaLXQUpdO2zJV7F9jQjlDQQ=;
 b=HKtY48h0DuO9kdSu4sP/KAZusb9BohN6TEiRQwN33LbqwZWvQHDd16EL
 C6N7F8F83TUH24rDqoehjxW5W98HOPI/Uxra0iNNUhZ+QICk4U7j/tXda
 P8pDNszyqCHjx8xPfEacrQrubvQd/YCciX9Kq1W9YbVlYgo+2LgQMQmON
 EhIWqT28rwLzDbyCYHH9BPmRniwfprmWCKlw5NUE08sTXaZM5LjzLOdJm
 CLKXWRxcN7e1Um+R02Ol+hHpebmrh/fhKzXEfdNQUAmFITzi+jC63ilrl
 yv15AP+UsyaNmGOUt8EGqajO26F1Mcte0lN7pGbAJAsFhRWaMjjZSqHA+
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HKtY48h0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 net-next] e1000e: Remove duplicated
 writel() in e1000_configure_tx/rx()
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


On 9/4/2024 3:13 PM, Andrew Lunn wrote:
> On Wed, Sep 04, 2024 at 02:56:46PM +0900, Takamitsu Iwai wrote:
>>> So you have confirmed with the datsheet that the write is not needed?
>>>
>>> As i said, this is a hardware register, not memory. Writes are not
>>> always idempotent. It might be necessary to write it twice.
>> I have checked following datasheets and I can not find that we need to write
>> RDH, RDT, TDH, TDT registers twice at initialization.
>>
>> https://www.intel.com/content/dam/www/public/us/en/documents/datasheets/82577-gbe-phy-datasheet.pdf
>> https://www.intel.com/content/www/us/en/content-details/613460/intel-82583v-gbe-controller-datasheet.html
>>
>> Write happened once before commit 0845d45e900c, so just out of curiosity,
>> have you seen such a device?
> This is just risk minimisation. I don't want e1000e to be broken
> because you removed a write. I'm trying to ensure you fully understand
> what you are changing, and have verified it is a safe change. I don't
> have this hardware, so i cannot test it.
>
>> My colleague, Kohei, tested the patch with a real hardware and will provide his
>> Tested-by shortly.
> Please resend the patch, adding his Tested-by: and update the commit
> message to summarise this discussion. Explain how you determined this
> is safe.
>
> Thanks
> 	Andrew


I believe that this patch should not cause any damage, even on old 
hardware, but I would like to test it internally first.

