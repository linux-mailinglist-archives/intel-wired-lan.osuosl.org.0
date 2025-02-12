Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A49EA32C72
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 17:51:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC708846BA;
	Wed, 12 Feb 2025 16:51:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uEm2f1szt5ij; Wed, 12 Feb 2025 16:51:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3739F81E39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739379102;
	bh=Fi/tdogygbgmhMO0Oua4PMs9ctzpCW48XoFsWChuepc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6V7bZ18PKcew87lSh0Nh/5mvUfsLuvLl8PcCBV1r1LcTuJSb0r4zeWcVsToqIvAQX
	 Dj3YQUR9V7RfUd/twjgR5T2ANtUu+8ORdMTA0NauEMF1JSJPdTH+JuJ0pYXsTXL38e
	 Glm5uKL6wVoDiFv/PbzXk6gipk97HttsJC7hmZimGWHN6cCBrtB05mH1RQQxmFlQF9
	 XVYsOEU8L3nMbGP0mia3dPSLBRht2NTrMjrxDH0fn3msXePNSGC/XgpZdH97WILFcD
	 3G8mS6L92MM7FXWcG3YXnnMvszqaSdXdCUWbtdalmNccqDEXsIiy/29W2OMRdqQrnF
	 ICGW07VPSZ56A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3739F81E39;
	Wed, 12 Feb 2025 16:51:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DB5FC1C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 16:51:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BFAF9608F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 16:51:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bv_BLsEH_bny for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 16:51:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D0E9A60843
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0E9A60843
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D0E9A60843
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 16:51:39 +0000 (UTC)
X-CSE-ConnectionGUID: CmYKGTOPQpuj6UltRWyZXQ==
X-CSE-MsgGUID: hMoTdPizRgCklv9PrxWBCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="42886341"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="42886341"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:51:38 -0800
X-CSE-ConnectionGUID: lY/ed0yuT76mgX869MNMhg==
X-CSE-MsgGUID: b+4H9TZnSZuqBFX+N8kxbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="112862363"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:51:36 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 12 Feb 2025 08:51:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Feb 2025 08:51:36 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 08:51:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HtltsWTJjeub5A+0rnCH9O5K4IbRpaPbimzPNl6uu8hNdHsIGZjCszdGLtZXyAmIiBCzdHzH1PtTdf4IdFIO+H8nGecYfyrenWTTxWWkPd5WM/S3T5MM+GkvVwY6hNtJufrTi1FnlYZSTyE+veQGafANkWOhCrGZUUbyQUFhdIlD/5g9+kno7YvQs2Xhrg0vMXnfCSmj6xrVr5NH15Tzct+YR60H5F+3JkP8oWMQfOJ1ugMMFOTZEWsolGqLyha+aGohGhg5UT2Lv+ZCCcfaZIjqwPQGhaRXHQSVbW36VdNRsMaCDnXgTCdTWYL4RYZaTzOWOqun/4bqaxv9zDyJRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fi/tdogygbgmhMO0Oua4PMs9ctzpCW48XoFsWChuepc=;
 b=gJMaQYmNcstiGcjUncExc7N9nWKUiz9WWbBUZswEe2P2u3P2HPjUZpdvQILULTWn9oqp2b5BIFA/CDvWtoXlzJC/wY9S62uRufMmZzWkpU+wmjRx3Y+/5L+YzNoIWWN7uf1/QvnE2pZu6XOrJUAr07TpLSo30bwqLaw89Va6eEZAivJ4w1w3aG4JLJkjHN+OP8DOimvai0Hr9eYv6Bm8jCMVlpudv3Di/MO2uptHQuhPR54f6mK4KfxWJHlRfVKXZlUeUP7KpFL2w50CFGZc+uGzgO71uQEeOfX/vF9OP3unVoidYVX2xlN48gNoVtkoTJjy0iKMmyURusKH+RP09w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.11; Wed, 12 Feb
 2025 16:51:05 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 16:51:05 +0000
Message-ID: <f66b15a3-1d83-43f9-8af2-071b76b133c0@intel.com>
Date: Wed, 12 Feb 2025 17:46:54 +0100
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>
CC: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Jacob Keller <jacob.e.keller@intel.com>,
 "Wojciech Drewek" <wojciech.drewek@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <kernel-janitors@vger.kernel.org>
References: <14ebc311-6fd6-4b0b-b314-8347c4efd9fc@stanley.mountain>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <14ebc311-6fd6-4b0b-b314-8347c4efd9fc@stanley.mountain>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0011.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:2::20) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DM6PR11MB4531:EE_
X-MS-Office365-Filtering-Correlation-Id: ae67643e-84f9-4577-6c48-08dd4b8570ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M2dadXAzc05mYTlpcUFubnlQM1o3QUZZYTBlZ0lDOGl3b3kxNmYrd3BIVFlR?=
 =?utf-8?B?c2xUcXdtc1JRSGxMUS9VV0pJTXR0ejRnT3IyR1FFcVZ0WExvbTkzTUZnUFo2?=
 =?utf-8?B?MVduZVF0Z1ArZ2VaU2JYSlMwcTd3NkVOWW1SUGs5UEJoM1VUSktlTGdLcUlC?=
 =?utf-8?B?eTh3bCtCamNrTDFScU1RTHFZY2ZsSW1IQk5UdFc5YjRnWHlrNFBiQ0h3RVkr?=
 =?utf-8?B?NExzWHpWUzZub0xBVmFIZUQ3R2p2L2pGdHJ6dFZQRC9OTHpna3FZeFo2dk5R?=
 =?utf-8?B?dCtVQlZZQUJFVDRNRTZqYXQreWJhTVZVajA3TkhJeGlFcURMdVJ3dlM2bnRy?=
 =?utf-8?B?V2c2RzhnaENKTXhUTS8wRmZMa05pN0pjc1BRZndqYXNrUnorSURiTUdNbFNW?=
 =?utf-8?B?OWNLR29WZjlCTXh0WlFIcE1KUitySDNvUU1HWmZKUmFDT0JvNld3UElaRVZL?=
 =?utf-8?B?bWdNVU15Ymg0by9pS1liaUFTbUZEVE8xcG12QWZrZ3hCQlhYZ1c0UUdXS05t?=
 =?utf-8?B?S3BLRHAyTkc4a1hkMXdnTHpMOC84TThjTVZTZVI1anpHcWZxcWtaVndhQm5x?=
 =?utf-8?B?QUlHUzZCeFhaZm13ZWJoVTB3NzBGV0xUWThNOGVEMkNCU3lEQ0dlWU1mV2hk?=
 =?utf-8?B?UEhHcWxLVUIyZXlkbklqSlNncjhENmd0RWgvK3BtU3plVnhWNGlKL2JKdFQ0?=
 =?utf-8?B?R3VuWW9PdGgvVkg3MzVrazk1UDNnOXl2K1UxV09UNnprY1dXTFVmNFBKSmpa?=
 =?utf-8?B?TlZ1b251WTFKNHNjcVdmaU9uc2RVWm9LY1JFNDNISXV4c1NJbndJeU5uRThZ?=
 =?utf-8?B?bHhmRUFENE80NWhRc0ZvZ2pZay8rZzI4SmxlTWdSdnZmNXJrUjNkU3d5VGw1?=
 =?utf-8?B?eUkyWmZtbUtUQ2ZHaDJ4WlZ3TEJjR2xWSjFIVW01Sjh4SW9hL0xYUnM1L0dl?=
 =?utf-8?B?WmZmQjhwck9RaVd5cURMY09rbllDWVA0M1F1cmdGTEZEVkNkc3NINnlteG9u?=
 =?utf-8?B?U0JDYjF6N3FtWEMrK0JnaU1QQ1Q4Ymh4QTJPQ1JvS0ZRSFZiVDQ0bFZQSlJ1?=
 =?utf-8?B?enFLbThIeDVwbVZwTE8vRTh6VkVMRWpnb0JTaHpCQkpHUXRNNk9raDA4YUps?=
 =?utf-8?B?akxselRLcUFBNk5QUDlNekdjemFxbk9RdXRjeEhlbVEvdjJZWVhuamswL1Zp?=
 =?utf-8?B?TGd0SGNSZ25iN3dEc2E3ZFMwMFBaWTBza3pJZi84RXZmbXR5VTBrSmlqRTZX?=
 =?utf-8?B?NEJidGt4VXRRN3F0Tm9Jb3lWa0lMSUVGdTE1U3R2ZW5GOGJ6dXgyVDBiNHdX?=
 =?utf-8?B?M25qQ0FCNEhEZTJNT3k0Z2FzOThyQmxyRHl1b1FxRWk0OEpkQ0JmMEdLT3pK?=
 =?utf-8?B?aWNNV0dDamxJb1BZVkdjd01YOVNzdURaWm5xT1lIV2F3TitMeFVUREN6U1Zs?=
 =?utf-8?B?eUExMTdraXNsSW5hOVVyLzZaYlphcUxIQjF0Vnp2L0VOY3IxcE5WV21pVFpX?=
 =?utf-8?B?L0ViT0R2YUN5UkcxUlJaQ3JBVk9QS2N5dzNQVG4yTmczT3VGVlhnVFg3OXh4?=
 =?utf-8?B?R1lmM1MwTHI3akVkZWxob0VLMEJpejV1eVJOSUVWanhrYUpsQTRxeVdBdWtq?=
 =?utf-8?B?akpnMGJQZldRTXJGMHhvQWhUU3hhRld3cDlOOWZta3pnTk9sZmRNM1R0bE5i?=
 =?utf-8?B?bkM5OVVtSURMWkNhZ09mdnUyYVVKeTVYdm0vbVlVZUtNUnliY1haSHhnV1Nw?=
 =?utf-8?B?bnhGNWhlYnJ3RmdXWTMzYjlhVFR3bEZLTFJkb016TGxiVytveTd5SjVaWXhn?=
 =?utf-8?B?ZWozV0JYNGNJZ2l2S1ZxRThxYW1LUGRNc2d4TWU2OUpYWUVnZU84aUxQWndv?=
 =?utf-8?Q?zUhzktsOKZOoZ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZTAxL3hxOFZyNE53RXZZUkplQ0h2Y0FJMlljUGozT2VYdGUwUXJhRjhMVVZI?=
 =?utf-8?B?emx6RnBZRzE3ZUZQSjJFZWV6dFdZbGJPRms2UmdWZFRmdnRqZ2c1clZMS1Y1?=
 =?utf-8?B?TnpjNHBlYlp4a2RhWTNtaG9oUDNSa3dpWldtNklLMlhLa09nS1BDVC82VWww?=
 =?utf-8?B?dDloaWtIb0doWG12T0R6THZvNXVoOTg0bkxLeWpUR3BxOENPaS9sOWN1RVMv?=
 =?utf-8?B?VDQrL1loRzQ0bUhmNmpXZUNGTVk4M1RnSFZ3RFNvd0huUy83d2VkTU5CRmJY?=
 =?utf-8?B?QW5XZFlzRmhLYUc4YVAyVWZVd2MxS0tnRm1WcE50MmJLYlB4aGxKVjYxNjF3?=
 =?utf-8?B?M3BTa0NnbmluZjdYdGF6NXRrdE9RZ0o2UDVHTElaN3BoQzFycnh3SjJ0VXJQ?=
 =?utf-8?B?a0RySjIxUXZLQVVxZ2VEMUMvcGhDaFpWY3pEdU96MklFTmlHV0ZWYWx2TDRX?=
 =?utf-8?B?N09rR0kxRkY3RE5leitCcDRPWW1QY20rd05iNVN2NWNwWDc0ZG52MkpjSHI2?=
 =?utf-8?B?b2xvTFE2amF3a2Ura2wybFNBcnhMdGxtOUgybnY0Sjdsd0pHT2xIWUVSMWxC?=
 =?utf-8?B?WmpPVzM5TnhWblZHYXgvRnoraU9YTXZRZlk0S1JuK2tmMVRlTmRKWXBGcDJC?=
 =?utf-8?B?dWk3NGQ4Zy9mSzhJdFNoTDV2NTB3SThhWHVhWWpuK0xGNnpsTXp0cGN5MUpW?=
 =?utf-8?B?aitpUXVCb3dJOUw1UlF5OXZsQmJQYThzMHdJUDY3YTl0MG8zWGdXMUR5Uzlw?=
 =?utf-8?B?RG96L1BMQ2JUWkwxMlRVS2lIOU1ONDZYY1ZwVHJ0Qm9ENUdqMkJPYmhqNSs3?=
 =?utf-8?B?SUhKMncyL2dQeTlQYWErOFJReXBJWFN2S3FrL0UvVzhQdVp0ZUpnR3VZZ2Vl?=
 =?utf-8?B?bTg2a1NCZUlvR21JQlhNeks2c0l6WlRIVitlekk3RTBiQUpSVDkrY1JqSUZ2?=
 =?utf-8?B?TnkrTFIrWXBlK2VBeUFVWTY3b1llRm9kaGhIejJQSmtnNE5TbzZJNjkwUDRT?=
 =?utf-8?B?ODJQMXJqYWJ4TTB4UklpZ1dFN01NdE5NKzdCK1NEZXBaQ214ODVYaUZmWWQy?=
 =?utf-8?B?UklNL0xJQ3RqNFYyNUVOR0dBVWJBQ01iLzlEKzdsa0J3UzJ3UXlrV2tFSXhS?=
 =?utf-8?B?VjV1eTN6OElpTFU3d0s5RmRHNHhsMk1nL1JoQjBHQjdhcEk2VDFVZjRvSFhO?=
 =?utf-8?B?c09mVkJZOVl0aER6dEdaNW5IVkFQQUtJK2M5L2VGOUxzS1hBenlXcmFaeTJl?=
 =?utf-8?B?VnVCRklhTkJpdlpXalV6ZHJBTGtWdnYzYjJKVzk2ZnFRNUYwS0k1QVJ6cVpN?=
 =?utf-8?B?c0tIVFZXK2t0NjYybC82d0FLdzV2b01aekFjaFVpOUkvTDEzS0l3TWtwVjkr?=
 =?utf-8?B?RkxsWTA3eWJlR3VoR1lYL2VHTi8yZndZdFljeHF0SGgweEhlVHR1YmhsUkNv?=
 =?utf-8?B?aTc3Y0FNdEtrNVRCN01MRDVsdW1SK0JnM3pEOTVSYjFqaTRFVjkyb2txeTdh?=
 =?utf-8?B?Rnp6SThWTVdEdDVsUGhvUE93LzFhVkFVZ2RyMThGUXR0QjFQeEgzVWx5MUJt?=
 =?utf-8?B?Zi9iTnBObGFRQWNhUXVjYmxHZnpCMWRmTUJYTTQzRzRLVFVlUkJydmFHVE9J?=
 =?utf-8?B?dEoxRjJLaDd6NGhnOW1YZDlMYmZKY2luUG1Pb00zWWdMckFBa0ErQ3ZzNnJw?=
 =?utf-8?B?U1RwWEtvSXFVcUN6SWh5SmZkWVhHdE0zNjVzQXZWZFN6aStPSTk5TmNCei9J?=
 =?utf-8?B?UmFIVTduREtUN2NSWUkwbVJNKzFyMTVKNTZoTURlZWgvQ2UrbEVOcCtkN01P?=
 =?utf-8?B?MnN1WjFPdk00RlNJSStJYWZBdkdkMmE5UFlHRjlMQkIwUE5TZGFOcjF5NUt4?=
 =?utf-8?B?T3ZsTUVweFU4WUlNRnl6SytPb0FwZk8vUEhCeG44bDk3ZW12amRBN3VjMTMz?=
 =?utf-8?B?aWVPSXpudml0a0x3RXdzSE1oVDVCb20wRFpMTSt0UVY4ZzNYeG4rNDdQV3RZ?=
 =?utf-8?B?WGNoL1VQcmlJaFJoMGRUNk1JM3BmTHNySldIMWRUR0ZSeEt5aWgwWTErdGxs?=
 =?utf-8?B?dk84S2lUem5tckF4Um4xdWhOL1V5SEs2M2RaSkpONG1HSm83dVdIOFMxSHov?=
 =?utf-8?B?cGRoc2EwakxrRkhKYUpVV0xOa1c2clhOcFhLTERYM3paVC9ENGRaazYzQVRX?=
 =?utf-8?B?Mnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae67643e-84f9-4577-6c48-08dd4b8570ce
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2025 16:51:05.5046 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i0INzwPCm2nq6JZJHUagxGaBiw/mzF/TmGYTYDo0AlDEFMI6/mzjal3U0Cwjm5C9SgIIFFc3nqJPYP8j/0TML2Cz9bRb8V76FD8diGuMvXg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4531
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739379100; x=1770915100;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z97PGmbRxgVF33CvAdc07k70gr2BowJ4LJCFesizEbY=;
 b=AUCi9dXJrVcCsYhFFPdL2kZ1iVEfgLEM5a1e9ksb+ZkSNs1tcu4YCVJO
 SAbSRCWendKDrP0ITEih0MtZ4VwHA0cATb47GYoJ7pLH/Sn13vBe2kNs0
 GNt5ttktVQvEohuTfWmrKw78DMPHsxWo5kcHs5xA01Fctsu3sZnNRjPoW
 +p4cAZnw8v1bBEkYnm0Q43fx0aVutlD9PK3HDYJD7JleHja7Z/xSImHv7
 fCsLdnZ3dz6FQd0GvV1clE4nYsaFVGTS+o65hN6S9WMEfezg9GFanYz0u
 KxSmmkMPU+32m6yO5cUVDsfoem9qUMhyA/U/wsztIoRbbPPI2eCTuBjLr
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AUCi9dXJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH next] ice: Fix signedness bug in
 ice_init_interrupt_scheme()
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

From: Dan Carpenter <dan.carpenter@linaro.org>
Date: Wed, 12 Feb 2025 18:27:09 +0300

> [PATCH next] ice: Fix signedness bug in ice_init_interrupt_scheme()

I believe it should be "PATCH net" with

> If pci_alloc_irq_vectors() can't allocate the minimum number of vectors
> then it returns -ENOSPC so there is no need to check for that in the
> caller.  In fact, because pf->msix.min is an unsigned int, it means that
> any negative error codes are type promoted to high positive values and
> treated as success.  So here the "return -ENOMEM;" is unreachable code.
> Check for negatives instead.
> 
> Fixes: 79d97b8cf9a8 ("ice: remove splitting MSI-X between features")

a 'Stable:' tag here.

> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
>  drivers/net/ethernet/intel/ice/ice_irq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
> index cbae3d81f0f1..b1fdad154203 100644
> --- a/drivers/net/ethernet/intel/ice/ice_irq.c
> +++ b/drivers/net/ethernet/intel/ice/ice_irq.c
> @@ -149,7 +149,7 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
>  
>  	vectors = pci_alloc_irq_vectors(pf->pdev, pf->msix.min, vectors,
>  					PCI_IRQ_MSIX);
> -	if (vectors < pf->msix.min)
> +	if (vectors < 0)
>  		return -ENOMEM;

This pattern most likely repeats in other Intel drivers >_<

BTW it's a bit weird that we return -ENOMEM here, although we have a
precise errno in case of error. Shouldn't we do `return vectors` here?

(but this is more of an improvement, not a fix, so out of this patch's
 scope)

>  
>  	ice_init_irq_tracker(pf, pf->msix.max, vectors);

Thanks,
Olek
