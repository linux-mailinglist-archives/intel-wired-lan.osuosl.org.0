Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3A2A9BA4A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Apr 2025 23:59:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64DEA423A6;
	Thu, 24 Apr 2025 21:59:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LxgNLrEXYPaW; Thu, 24 Apr 2025 21:59:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEE8D40651
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745531987;
	bh=tC2jWAtCp34KJitET5NpfXveyHoEwgBWRfUSn4Rk+nY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=c+EDURTahOquEWZCmcLDzdjSvOh9/4lSBq4GfvuEcB2nYzRCY3NFfjAUgFKUHEbWg
	 ZKH63x2m9SBdXYDkHsq+bUKWP/iU0r3KNsTWODUGwui2J6hpg6UHCly+nmdrMFKVD7
	 aVhygjjk/L8XV4pxfp6yGOpQYR/Z5q68ACn60sutF4V6Pu0HY8xAsgXDQNXwW6P3s7
	 TLahHX8i0xGrS/6IRF201kSnhokyrWMEyDc+PS9BR0XiKAV4GGrsF0i2l8lJMqX8c3
	 4u2RuYnhPFdqteFok+dA8MGSZwqXJ54XfOj6dWMhP/uIBXTXSI8TKTJP9UZtlzDD+W
	 lglKgALatJyuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEE8D40651;
	Thu, 24 Apr 2025 21:59:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BF3EE159
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 21:59:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B152B401AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 21:59:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cIJvRiSWdgVQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Apr 2025 21:59:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E3B07400E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3B07400E4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E3B07400E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 21:59:44 +0000 (UTC)
X-CSE-ConnectionGUID: xhSQUhRZTEivBW1vbbFctA==
X-CSE-MsgGUID: WZuA1kGAT42M+1DwLTV8Ww==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="47061595"
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="47061595"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 14:59:44 -0700
X-CSE-ConnectionGUID: YidMUn+6QnGfYsM+/1IpmA==
X-CSE-MsgGUID: rmUfYmlwSi2WwadH9NBVdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="169948242"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 14:59:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 24 Apr 2025 14:59:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 24 Apr 2025 14:59:43 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 24 Apr 2025 14:59:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BfSBsLWFhnM8sVKr7gRhVUhLpCPhjXuPgtdm2A4LascpQhdU7KczoIzDZSbF/dht0FwOjnnDDkT4st9oWprypIcKt2QvTicJs6XsWJO26pg1hHHx3wZv16h9sgtetqVR9DD6jwwV62auLGlEx7oyiew68tuJ8BIOr4ZOIdOzuXKoYqoiw50ReSvWVCbhzlwnagpZK+nJqcI4mGCs7mbLC05GxHM2P6vTc2lkVOr1JKV6InLbCtavKs+mFVtD3oKAR0QJwxDj6wsAYSSgThzasrkAoadxRpdKCd4hF6QKcccTwtGnce5hb6uwXGqnt3wNGStdUuuBAD9gdGTcP9cGcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tC2jWAtCp34KJitET5NpfXveyHoEwgBWRfUSn4Rk+nY=;
 b=S0GQRDb9NDhaBAALJLmZU7XB/N236fsKceXqvKI7u1NfgA/Vn6nXPBFra4VVn4Yjn3o5eHeWNUwiTZRTGIWaP6gyaHs9964G6/UpBb0DtYjklzbeV1ti/inc/uwb+0gIzkOv4zLK7IxUXS9F6L/IjKS3QYeJSygg0UZZjuxosybiZs1HEqRC/JU4yRRIbDdm3H07dWets3DZAh0rrnNNX3OLCKXzdmGyRckB6UIBZLU3KtRe26YGK7bYx9KRtNABbT3hugcHzA22vPt4RW7ab+eQIXC4Z59HBka5X7p99s2c1+DUQDBTpiw+irfTKilQ8ZlvF0hZVAKHqOtBI3H3/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by SN7PR11MB8283.namprd11.prod.outlook.com (2603:10b6:806:26c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.26; Thu, 24 Apr
 2025 21:59:40 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::215b:e85e:1973:8189]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::215b:e85e:1973:8189%3]) with mapi id 15.20.8655.025; Thu, 24 Apr 2025
 21:59:40 +0000
Message-ID: <8236bef5-d1e3-42ab-ba1f-b1d89f305d0a@intel.com>
Date: Thu, 24 Apr 2025 14:59:38 -0700
User-Agent: Mozilla Thunderbird
To: Lennart Sorensen <lsorense@csclub.uwaterloo.ca>,
 <intel-wired-lan@lists.osuosl.org>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, LKML <linux-kernel@vger.kernel.org>, Netdev
 <netdev@vger.kernel.org>
References: <aAkflkxbvC8MB8PG@csclub.uwaterloo.ca>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <aAkflkxbvC8MB8PG@csclub.uwaterloo.ca>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P222CA0008.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::13) To PH0PR11MB5095.namprd11.prod.outlook.com
 (2603:10b6:510:3b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5095:EE_|SN7PR11MB8283:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c3e144e-85b2-4fae-3602-08dd837b5003
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SElTbGJnb2pmb0NmSk80YzF1b1ZYeWc5Rk5VRng5L3VaM3AzeUZLdVNsc01n?=
 =?utf-8?B?UTNiK3ZWV3hPT0xrbWdlek0yLzNvY1oxQ2hUMThSYlJQSTlQMlI0Ynd6MjFH?=
 =?utf-8?B?dnlyMTk5V3ZGR1JUNGhLdTFsanFUVVRFTDdNQXR3WFQ2ZGVkUVVDZjFYSGF4?=
 =?utf-8?B?QUlrbGVkSm93OGlaRks0OTdwT1NIUytmbGQ5cFlpWUtRRTBJM0NhYVA4aUJP?=
 =?utf-8?B?aXBWWklVYmMyRVk1bzdld2FsNUhEeExXSVplSWNNSkQ5WkpHaStCM2JVQjNy?=
 =?utf-8?B?UWVUMnBnR0dHaEIySVlIdExOUkk0MnlOcUlQSlIvdlhMQkoyN2hsR0VPNGtn?=
 =?utf-8?B?VENESkVjSDZVMDhMdWpabGx2Z0xhdFk5cmYxN2RndTVOZmlDTzRLdHM3VkVJ?=
 =?utf-8?B?OGFUbDJJbGcvR2RJL2ZLYUlUdjNzK1c5SlJUV3J2ZVNGRmZ2TnNVV2pzR08x?=
 =?utf-8?B?aVhTeDVvMDZ1S3ZiYlcrNkJMNzE4b082TjVYOXVRS2g4YmY3MFRCcHc4Q3pm?=
 =?utf-8?B?d0YzY2VXSjlpYmlFQ0p2Z3pVSzNiZTNzQnV1OEpVVGMxMnFvYkJ4RmVZMWx0?=
 =?utf-8?B?SjFSRnZJei9xN0grRVJhS0lZM2RpeFhYRzdjS1podm5LTENNK25uTjFBbk51?=
 =?utf-8?B?UGpsd0UxOERjbTMrM1lZSVdOZkpFNmkrcFNESEpkejd1NHZQZlpRU0JPUUUr?=
 =?utf-8?B?eXl4bVlHV2F5M0tKOUo2VUkzWUVnTzM2YTZIWStRMHphNlNoMHJoTjF1am4y?=
 =?utf-8?B?Z29rY3pBaTdDNW0yNWlmZEhhWmk3SjA0TVIyR2JIRXBna05HcUZUa2hRL0VY?=
 =?utf-8?B?b09FSk1JVi93SlN0VndOMjJIMGpXNjVmT1ZGc3FqKzlVS0U4VGdVbnFFbXRT?=
 =?utf-8?B?Q0VqUTg3emh3cFpaM0JtMkZ2WEVYSStNMFhxN1lJbkFkMmhLZm5Kb1hxaCtV?=
 =?utf-8?B?clhud3pld1lrL21rNnBxZU4vRXdGZXB1Q2thQzBpQmU1MGt0Q0NGK1lmUU1z?=
 =?utf-8?B?b3JRZGpnbVczWVlkd1RUWXl5UmplNitPdFVlbmVVdlhDNEcxOUdoaDE2SXI4?=
 =?utf-8?B?MmhHYjZhTmlaaldmMEV6YVYyR0g1cXdvdUJ4SXJlWVpKSFBwVm9JMmlWNTFD?=
 =?utf-8?B?dDhqQ25qZzlnczZtek9wQldwQmxaZ2E3ZWdUaHR4cXpNdlU4T3h2ZmdtNHJN?=
 =?utf-8?B?R2tZNWF5YkZORDNDZ2FQTW1nRzh0Q201dVB2TFFHVGhZb3hEOUluWXlycVUw?=
 =?utf-8?B?V1lsVGxNZytlZFc3cDkyaUR5azlpZFpndGFOWXJEbWdBQy8yVHppbGxUVkZY?=
 =?utf-8?B?dnRLZkorWk9PVUhiVjhtb1FSWnJoeHE1YmV5UmZMcHFCTjZiTWdncW1RQzA2?=
 =?utf-8?B?NDc1dmw1OXZZWG9GdUc3WW9sTGUydmVGQ2o2RUlJNlhjV3RFNm9qYlU4b05j?=
 =?utf-8?B?MWNkcklnYVgxQzk3bFdiOU56TlBDc2dyRVN5emdSUkJjc2lyTHJNckVMeUNF?=
 =?utf-8?B?ZmNGdnVhSiszaHl5VGtGTHVDRExGeEtqdDVLVjBlZEZraldsWXFFUmlyUzJt?=
 =?utf-8?B?ZExSMjFIWHkxR0x2b3RCRjAvYkRiN3gvTVVxb3BTZjJ6MEg0QnhVRVJ3ZEZt?=
 =?utf-8?B?WUgyU3F1QitXcm15dXhCZ05UYmplVTFQRlFpaEFMQTNQMXVXKzdOTTkvSmpt?=
 =?utf-8?B?OHZPVHlxeDFDeWNkbnprMStHNU1UdGVhU01ZV0hoajZsZm16YWwzZGpyZnBi?=
 =?utf-8?B?STRKUG9XQ095M2pYYXpRK1FoV1FweTl0RkU4L3VEZjN1ZUlEQUNOZFpqSXhp?=
 =?utf-8?B?M080QllKNzRiUzdodGp2UW1Dd2xqWUVGeHlIeVI0NUxmK0pZaGtaeG1EWGtD?=
 =?utf-8?B?ajVVVjcrK2I5ZDEyV3pzTXJYMzJZS0dIdElXTldNSE1OM3U5WUNZNThVeW1m?=
 =?utf-8?Q?5fRalv0cltQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZTdhZC95L3FLMlVnendPZlJCeXZuK1JsSkJuTmo1ZkJycVFERERxVWVUUHE0?=
 =?utf-8?B?SWszdnpseDlBU01BRUJleWpROUpWV1NBOGlHWFhWRDBFT2o4eE1rWWVrQTBS?=
 =?utf-8?B?QXBBb2lxUFAyclNTQjJKQ1pxc0U5U0dQVVJiSWltWUJ4WEVnd0VxYkIwSEpl?=
 =?utf-8?B?Q0pKVVQ2aEs0RjVoU2FGUDZjTUlCOGdTWlBFVDRuamRqM2VoRy9yUUFLdXlI?=
 =?utf-8?B?dTBsMVlJK2tmTGl6OWVFN0tyaUtwZVRvVGJQa3VCT0hkYUdWbGZEemZrSXNX?=
 =?utf-8?B?NXliSG84bVcydHlJS0QwNDZwYjZVK0g0RnRYVEczY2RNa1RERFRBdUVGMU1X?=
 =?utf-8?B?VHVQMUlLSmxMcW5XekxGd0tFdS9xbk5ybTZMYzFLcndDR2FzN0w1UG5FYjNn?=
 =?utf-8?B?U3QwSUVRZFlVT3pMeG1qVS9ETk5nZ0o2NW9XcE1DYU80RkZtUFBXbzlOOWh5?=
 =?utf-8?B?OEEyS0JMOXVUSG5lU0QwUVhEV2hiMlJqRUpFZHBJUS85d2Y4b09jSTRFT2tO?=
 =?utf-8?B?N3plaDV0S2ZjbjlXU2JlQ2RYQWpzTVUxamdPNExZRTFOWGJvNXdTR3ZUZ0h1?=
 =?utf-8?B?WTJZUmUwalcyMksvWVFTMUFIZWFCYm4ySGp0NzdZMUxZOGVkOFJuNktLT3pW?=
 =?utf-8?B?NUQrZHZqSnBvRGxEY1I0cVdLQm1HWG9ja2ozVkZQWnl2alRFYzgrcjFjbHhq?=
 =?utf-8?B?N2RhR0N5UmtnSDViSDNMU0QvODRNSG1jT2grLzBqNWw4bTRKOWhOblpuUkVD?=
 =?utf-8?B?dERZZURaWHQvNlI1bm9BK3RYYUIxU0hhUGgxWGVIWkorL0grYW02dWZ1Y3lT?=
 =?utf-8?B?TjIrMmJQQ2o3TlBhVklIOCtsZ0RMS0JPWjZNeVF6Q21mUXdUVTJZYVo2OXEv?=
 =?utf-8?B?Y1hxM0owVmtuR1BOY0lnZHJGK3RZdndIaXMzNW5KeVdOL2hZeW8rSi9ka2pq?=
 =?utf-8?B?a25uWkp0S2Q2anlwTm8wODdrQmJIQkJYbFdycndTWWltNkNrR1oyZThqTTdK?=
 =?utf-8?B?alFmTCt3OUM3OXpHNHp1S2UvOUhhaW5oQ0VTUGQ1Vnl0Tm1kWlhyUW9kM2ZX?=
 =?utf-8?B?RHRxaDNFUXFFa1lKVldTUTltdVNLcmJOSWxRd3BEMEdyb29xYkNZSmk2YUhP?=
 =?utf-8?B?eXVBZ29wRXh2K0NrWlVCQVplbWFEWkRnVTNSVGhzckZmZy9mSTVVVkRTNUtZ?=
 =?utf-8?B?UkkxTGdIREU0Uis5MVk3b3o3OGRGRmF0NUd2V1NpeVdYU1BvdVhOQ0p4cWNX?=
 =?utf-8?B?ZWN1d3V2YVNjNW9MdEUrSi9RL0Z0MTFIWjBnNWY0OHlJVFB0aXFRSks2RUo5?=
 =?utf-8?B?K2tuc3hVektlNkFvT2N5SFFWYm5TK080RWhOM3NZT1VNdjJhcVNRR0lQS0lN?=
 =?utf-8?B?Rlp0c1Ewa1hGWnpUS2t0dVo0MUNoeUZtQktjZGY2MmdmYkptSVlLVXE1Nm9i?=
 =?utf-8?B?ZTJJck0wQ3ljdllwcnZWTDZuMThzRFJ5UmlvbHk4SSs3QUlyQ0FPTUV0ekVV?=
 =?utf-8?B?bFp2eGNBY1B4MTlFaGNtRVlkU1dCdW05WmJJZExCNlBYL0V2d1ZRQnhJUnR6?=
 =?utf-8?B?UkYxa3RwbEN6ZkhNaUF6b2cyd1JkeUdUVVorRUpWVW1KSmlxcnFabDFzN3Yz?=
 =?utf-8?B?MjJ1M1QzaXBFc1Z6aEl2bmNDaTIvREl2emEwQ3cwQldQVTNjOXFTZmxrYkEw?=
 =?utf-8?B?RDRNclJlcDR4Nmo3Mm82K3RETE1oMmxsTWQ3UUdzY3UzZTh3NHJxQVpqS1Vi?=
 =?utf-8?B?S0xWZ2ZEa2IxSVl1a3VDZStTeVdTVDdzTDZBMzZXMzV3QU90a3JRcGxnQnNv?=
 =?utf-8?B?Qm5Vc1NQZkYyUEVrTm1KZ2xWTWVyN3NqbU1tMnpNNlR2NGJRWk1OaExrSkc0?=
 =?utf-8?B?Sk1GcDlFb2tRcG5WVkVZY0ljM3l0Q3IycThBeXVxTTlKTWhvdmVyb2dwL3Z2?=
 =?utf-8?B?ell6MHhYV25tck1wTHc1ZHRpV2dzWkdtSUVEUkczcHN5TU1Ycm8zVmhTd3A0?=
 =?utf-8?B?bS9YQ0hrL25haWVFbVYveFZLcWMxV3FwRTJ3SDJwVCtURkpSbmFod0ppVkpr?=
 =?utf-8?B?bGhhQ2RTR3FNeGVEVitHWFRHZStlM1NOMjJEeW84MjF2c3BQQmVZaXJ2OWdj?=
 =?utf-8?B?Q1c3NFQwL3ErWmUwekFZTDN4Z0F1RVNPSVVpVmZyZXZVdVJISDlwbVpITGNo?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c3e144e-85b2-4fae-3602-08dd837b5003
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2025 21:59:40.4876 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZrpLDAQHGpeYJAMkCWs42b0mj5xxUXpPXb2wofl84bGDRlkRhc9ekgq9fUvqLw4h3G9tmkq8+Na7Ntgw7YyYFUMVeRMndhftRHD90AGBVfE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8283
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745531984; x=1777067984;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fI5JY2RVw+eBEqZgrzesr9PT5Lqi9vVnpKZtnjMK+Ss=;
 b=n4KYIrNklTCSUN/aVyrHi5T+DnHDMGVDpRWoG7UvGrJvIo09AWXmiPfr
 tUJf3uO5A8o3hyFfnXx99HtrpSnO2my8siGzD/XZoHlBYeldrbOGnz1kA
 czmwVzHzP2fO8nfao/d9I740lNWrvhzUmGYdExXzudzrri7GTUbwy2cr3
 88ILOXEEzG/2ACYK6yTTjdtwGkzk0uOhaHGmYcYXU3I72vvZavjBe/F+J
 9vnpXytbQ2R5MShrsp5jylffuA7NBK3LC86HW2prtZXZeauZgDR4S27rp
 2Wq4b9cpilR1moVZGeeru3IKi/m9ntzClK4AD3fL51AWDXBzD2EoBIEOY
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n4KYIrNk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Fix promiscous and multicast mode on iavf
 after reset
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



On 4/23/2025 10:12 AM, Lennart Sorensen wrote:
> I discovered that anything that causes a reset in iavf makes breaks
> promiscous mode and multicast.  This is because the host side ice
> driver clears the VF from filters when it is reset.  iavf then correctly
> calls iavf_configure, but since the current_netdev_promisc_flags already
> match the netdev promisc settings, nothing is done, so the promisc and
> multicast settings are not sent to the ice host driver after the reset.
> As a result the iavf side shows promisc enabled but it isn't working.
> Disabling and re-enabling promisc on the iavf side fixes it of course.
> Simple test case to show this is to enable promisc, check that packets
> are being seen, then change the mtu size (which does a reset) and check
> packets received again, and promisc is no longer active.  Disabling
> promisc and enabling it again restores receiving the packets.
> 
> The following seems to work for me, but I am not sure it is the correct
> place to clear the saved flags.
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 6d7ba4d67a19..4018a08d63c1 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3233,6 +3233,14 @@ static void iavf_reset_task(struct work_struct *work)
>  		iavf_shutdown_adminq(hw);
>  		iavf_init_adminq(hw);
>  		iavf_request_reset(adapter);
> +
> +		/* Clear remembered promisc and multicast flags since
> +		 * reset clears them on the host so they will get force
> +		 * applied again through iavf_configure() down below.
> +		 */
> +		spin_lock_bh(&adapter->current_netdev_promisc_flags_lock);
> +		adapter->current_netdev_promisc_flags &= ~(IFF_PROMISC | IFF_ALLMULTI);
> +		spin_unlock_bh(&adapter->current_netdev_promisc_flags_lock);
>  	}
>  	adapter->flags |= IAVF_FLAG_RESET_PENDING;
>  
> 

We probably need to do something similar in the flow where we get an
unexpected reset (such as if PF resets us by changing trusted flag or
other state).

I don't think there's a better solution. Arguably the PF shouldn't be
losing data, but I think its a bit late to go that route at this point..
Its pretty baked into the virtchnl API :(
