Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B59508C99DA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 May 2024 10:33:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDA574050A;
	Mon, 20 May 2024 08:33:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kxPRp_o9pIqt; Mon, 20 May 2024 08:33:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6BD34050E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716193997;
	bh=PKrA/KBDMogMZVR4JBZtrBleBIQ6bgxNqF7N7pqmgQ4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3iCaMlGFrR9JcYAMU7iDzrbIlfl0+Kw3+VW2PNWsJXiP8usTNqQ2TdXJZfC99oE9R
	 NY3c+h/BFQxERv3DOdOU3W3Khh/DUWPfqNXPQ8vCexDkVsDj7adrBmuzCsRnrYGenm
	 3eGN8uK/EMyVObnGxU4ke5KLfeWVweR7e3G++kIu8EYfVx5dTWAvWqiXee6/pGDaho
	 PkIx+x7D6dTbsqUeKSCTAXgAmSJAb9G8NCHGJb4XjBuJaTJQdfQz4PWTOgiDmM95kE
	 HYyojiHNmwdcgfotcNypkvXVzjrJ31mDV6xMNnxc2dy84olwqyhrjCkV1jQSZu+nuK
	 Nro2kp6BT/pFg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6BD34050E;
	Mon, 20 May 2024 08:33:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5FDF91C4646
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 08:33:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B31B6063C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 08:33:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xn8HBv3KIwSw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 May 2024 08:33:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3924B6061A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3924B6061A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3924B6061A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 08:33:13 +0000 (UTC)
X-CSE-ConnectionGUID: VlfgfoXGTfGgFmZTj/oEkg==
X-CSE-MsgGUID: lqIRumtcS/W/cvFKw0YuMA==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="37686031"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="37686031"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 01:33:12 -0700
X-CSE-ConnectionGUID: 4H8RbspOTBuZyuOJvionRw==
X-CSE-MsgGUID: wuXOo6Q5TOKUNDXQEK4UAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="33070668"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 May 2024 01:33:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 20 May 2024 01:33:11 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 20 May 2024 01:33:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 20 May 2024 01:33:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZJ4AbGn2vRjD/tMAfKcJpvTavT3WLx8dLNNhN6tI1nU3y+eotsW0kiun77CLoy4dxuxH0nyNAAIY1tXzCebEn/9CWn75NEAAscoM/9SO1OED2h1OJRodFF1lxChbZLr8fbB51DsOmsOiUikEqmEXJZOMBiI2cj4ucGT+1k5SwnxPTany68DzWU/VOM9h8S46y08CAUXHg1ysveiB1AzdzxQrZyqwgJmMgkdCq3X9eyuu7oUih4/i8ckd9TTVXLwKMfHJImu/koHlulGwWYepXNZ0LLVoKbt1ETtGCGV6N6YuFx1X5dyJnOqhRUE1x/WYDNPkv++WPy6krq2quUw7nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PKrA/KBDMogMZVR4JBZtrBleBIQ6bgxNqF7N7pqmgQ4=;
 b=B4ufxTjXyCQIH1WxpDnwmvw/DqQ8CV3OralKpAjFfzJFYbSkeVVXUfu8bFxxZErVx/7QwSEfsp7k149flVsjELhjJnoW/MIWEMWuAar83cb5ir3PGLd20F6Uh3w14hSHm0I4PB2NNM6h6AcWCh2v0tITRRgzRPCDlptvXbXnhfvQL+iqXfaAaEdkBXyH9BcRoexaLbduJl1gb5/q6UIeqGO5zrQDezwkkYRvENuXYomsJruLlmUoC7Kzlb6GCoZpPZ5cF7d7lvurMPCWD6PCoFiL9jrBfnH8/S402b/stKsJhCNXjqp9W8la/oOdb2oN+bDcLe758lWcQ7T+OADpnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS0PR11MB8115.namprd11.prod.outlook.com (2603:10b6:8:12a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Mon, 20 May
 2024 08:33:09 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::bfb:c63:7490:93eb]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::bfb:c63:7490:93eb%3]) with mapi id 15.20.7587.035; Mon, 20 May 2024
 08:33:09 +0000
Message-ID: <2da2aa2d-5d65-4250-b39f-6b09eb07239d@intel.com>
Date: Mon, 20 May 2024 10:33:05 +0200
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
References: <20240517-iwl-net-2024-05-16-fix-nvm-tlv-issue-v3-1-f46c53cfb67f@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240517-iwl-net-2024-05-16-fix-nvm-tlv-issue-v3-1-f46c53cfb67f@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0177.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::11) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS0PR11MB8115:EE_
X-MS-Office365-Filtering-Correlation-Id: a60e4ea9-e939-465e-ab75-08dc78a77acb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SnVIQ0FUV3BQQWdGL2RFSmZTNWZBRk4xL3ZuSHVjTXZuZEY2YlEvd00wTlM2?=
 =?utf-8?B?ZVhyVFQ1YVpBb0xGdllHUVFTRktZOEh5UFd5N1dEcnFLYmJDSGZ6YjBWeCtF?=
 =?utf-8?B?K3Z5UlNZeHVhV28vUEVWNW5vdEJLT244R2dtenl5SG5YOHFKRVZNcE1meTg0?=
 =?utf-8?B?b2d0VytJUlFRWkJiOEs1Tkx1eXk2STZRdTRpVXJzZVB4VHZKenNCdlpMYVdF?=
 =?utf-8?B?cExqZ21OaFpKODc2eTdLYy9EdGxQaVRMNlpqUHdQdTVrcTBoM05lWWYvRG9n?=
 =?utf-8?B?T013Y0QwQk9mdG5keUUyYTJ3OExWa1AzdXpjUVR6VlZRS0szdTFabnJqYnhz?=
 =?utf-8?B?Y1BIVUVueVFvRGVZRGZDeDB3bW9wcG9PaGJncElKSGRDWTI5ZHl5QllpdDBY?=
 =?utf-8?B?TUY4S1dtNUpGZ09yR3JEMGdnK2hLaTJUUis2VDJNbnVsaUM5dVI1cGlkcm9J?=
 =?utf-8?B?aHR3U1dYYUsyMFN2NTIxYzFkdnUyVjJ6cGtxbEVrSjB2YnVhRU5UN3pYV0M1?=
 =?utf-8?B?RU1IbTd5d3Q5aHFyTGM1TGRUbzk1eGJPUnpkRUx6ZVBlVHdmS3lzcmVUc0dx?=
 =?utf-8?B?Tkh0Q3pjNkMycUhBcUZoOTJRT0pqVHNGSXF5aTlnKzRHam80dWpIQ2hXZFB4?=
 =?utf-8?B?c2xoSURlVmxLaUR4RTNhRkJ3TTBhQ1BaTm5NZyswMEZ0TGxxSFNvQkthVnli?=
 =?utf-8?B?YUJ2QWUxamVveEo1YjQzNVlRN2JLcVlBU2UyRTRDL0Jjb1hrTzBjcEc2MjNY?=
 =?utf-8?B?TS9teVhxR2NPWEFCeXIrZWxEN3VzRWNaclBmbjQ1bGRTQlFNWmhNNnhCcUhk?=
 =?utf-8?B?aWkyYXk4UGlmOXl4VHhmdXlFMnpGSmpjN0l2TWJnalRYZlFma3NkRGIrK0U1?=
 =?utf-8?B?eVhtMU1vd3phMlJ2clJSb0lpSnBYRHBWZlJMN01nMXpDUnpidkdVWVJxWFlL?=
 =?utf-8?B?bzFkVU9oSUYxSExTR3lsc1JXYkdHUVpLdlQ2K2tHSXM5VTMrVnN4UjZ6VjU3?=
 =?utf-8?B?aTN3WGt4OC9abGs4b0ZJNDNRK3lyU1J1ckI5dENId0R6a2NqVGtoeHBZTXMz?=
 =?utf-8?B?TThPbWgzZGhWOUQ4OXgwYmVDMTRBb3BNa2IzcXhkT0tnSm5lOUkxci90WDlK?=
 =?utf-8?B?MjhRd25CQ293Y1Nuam1FeXhlMFhXV0pwSDRxbkN0UE90WTYwZENpalQyYTR1?=
 =?utf-8?B?VDA4aEk1UEcyb3dxeWhzbWgvYmtOSVZ1dDhqMlFHeHEyYWNiaTUrWmdPV1BV?=
 =?utf-8?B?NTJtTWI1ZUJqclhWVUdSQmorTXArZERlL2h0K3NPRzExUzVhV1lFOFZGUGtu?=
 =?utf-8?B?TmEvL2hBUUs5aGpRbTFPNlZSZG5NTElRVGFLSzFteGdGejlGMGRWTTZKRm1t?=
 =?utf-8?B?bVJ0R2M4RDFyb25nS1JZdmIxem9sUEpON3dQSXpRSmRzSjdQQXhVRWZFUzEr?=
 =?utf-8?B?QjRiUGVyV1NTUFZKWDdTUVFpOWlvajg5OFM0WURXZ0VNd1hlbnpvTy8zUUZn?=
 =?utf-8?B?WFh1QVJJVGVDOTZGSjcyUFRoUzlRWG9XS2pXR2RpNiswQ091cUpWaEhIOUU2?=
 =?utf-8?B?am1pcmFNM2szV0ZXb3RtM2ZQWFVZWlJjcFdacW1LUTJIYWoxQ0FTWGhESStF?=
 =?utf-8?Q?SYDEUgaqVeo+hUMlDngFOOSqgkESce/AAK81CClCxRyE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WDI1bXRFenpEME0zbHAzZEt3WkFvWk8xdGpjL2VpTDh5bGoxZjFtRGhrZzkx?=
 =?utf-8?B?UDdxOXRRd05zZXJBdWpaYmVLWVZOSDl1ZXFTb3BZR1RlMHpoOUNuZ3ZhMXlS?=
 =?utf-8?B?VXl3RWt2YmI1Tk5wcE5lbjQxOXhtbk1ZM29oLzgwOTQySjJSZTFMVEcxY0NF?=
 =?utf-8?B?Y0s0M09jRTBzbWRnZmlJV05UMWF6NWJRWVAwMDRqVnkrbUJmWTE0cVc0WktX?=
 =?utf-8?B?amN5SGxsa3ZVOWxZZXF2MitwLzFXRkMrR0lpTloraEcxeUZmQjQvOFVlYjZu?=
 =?utf-8?B?ZzZvS2ZKVEVjdnZacTRybzRuTmFZcDJuL3c0dWw5c2ovWXdOYmFmYkEvbVZm?=
 =?utf-8?B?ZFVEUUlDaE9NMThOTFdjY0NqaVMwT3c1Z0pBUDZwQm5mREMxelQwTU9VSU9T?=
 =?utf-8?B?L3lJNnNoQ3h1RTdraG1pQ1c3OVFacEJhdGpyRnY0TzJTcWRqcGVSYjJJRVla?=
 =?utf-8?B?eWVOQ2ozZUh1RXc0ekErckdXOVdPRklKcWFQdXQ3NCt3YTFWcDlDK3lZOFU2?=
 =?utf-8?B?Rkl0ejRCU0pobERNd2NOS0g3WlhzVUVDTDFpZDZ2U0NPU05UalUzNmNNdjgw?=
 =?utf-8?B?cXoycnZ2QzUzbTJ4T3Z5USs1QzdVQVRsbW94RDR2eCt4ZEZWMFR3Y3prVmFI?=
 =?utf-8?B?My9SVDhDTkJRV0JXaktsQVpKQUtvbXJ1MzhTU0IrVU1wVWZkalorS0YybW9h?=
 =?utf-8?B?bEFvNC83RnNQSDlUM1lhM0pqSGVqY2Y2dWJsMWRXc0JtWHhUN1B6VUZVT0Z6?=
 =?utf-8?B?aExCaFBFNnNreDJIUlUyaStTOW44NlZLNXdsUVRCZEFiZlRGR0pPZGVsalEv?=
 =?utf-8?B?OGxDUXArU2FDR3RsSGoxMUs3NHY0R1Rjc211S1pJQkVrQVlTRFkzYzRWMTBT?=
 =?utf-8?B?a29CTllvWkJSajN3c0VLdXZsNk53OERnWE42ZmhKdFhtQTJPSm01clJjVHpI?=
 =?utf-8?B?L0pNTWhoLzl2OGErYTVsZzZmMWlwOVp4SUpiTldadWVRVlV1aXloNlVWeUt2?=
 =?utf-8?B?MGVzYnR0RlQwMGUxVmtueUZmNzB3b2RKajVFNFJySHhyZ0FxN2IrVXl0M0VJ?=
 =?utf-8?B?dDlQVlJaL0dXNjVhRVFvOG9jZlREMVNLQkNsYzFXRU9qUGxIVGRucnNrdG1M?=
 =?utf-8?B?Nk9SSmpLUklsQ3djZlVmbW1LbDA1RTMrYzA5MlpjRzlqM0Fhb1NQY0R2UUl1?=
 =?utf-8?B?SG90MU1PdUErOHFwVGtMWXFLQVEwRUE3aXo4YktsZTJwdjZzcExlcHJyZVkr?=
 =?utf-8?B?S3RsQjhJTEpaK3JUZnNaaXRoSlkrM2E1S2ZKVmNKTDZ4dEhqeHhZbDJtZDBv?=
 =?utf-8?B?VXlKdG9aN2N1VGFHbHVkaHRKZVZwZE5RRzlBTStTYkpnZ2VyWEpvWjArUVFi?=
 =?utf-8?B?K2hyc0lDT1V3VGUvVmRtZ2xkT3BBU0pGVWNWbDlhb2xZY3MyRktuYVFlWWI3?=
 =?utf-8?B?YThIdHg3bUNyNzlYVmluYktIK1ZsaGFEVEovM0IwaW1zcXRSeUE4aERVZ2dx?=
 =?utf-8?B?WDdFaEV1UnBnRE1PYWxiOThXaXV6MGFReHlVQVdVUFpvNXl2Y0huVFQ1b09a?=
 =?utf-8?B?Zmc2ek82YXgva0traGV1T09oL2Q0c2R2cVY5d2Z1RG5nbFltWktZVGZmVkVp?=
 =?utf-8?B?WW15VDVUUnpMZ0hoZDFnMzNweFpPei81VUtjQ3FzT0g2T3NxWFQzd0FVcStF?=
 =?utf-8?B?Vk9kMDFhWkJYV1dKZVZ0Ri9iallsL210OGNJZzQ0RWlqNVI4cU9HWEo2ZzVS?=
 =?utf-8?B?MTV2TlIzRHp3bUZ0MFp1NlhMMkFiQVhhcnc0MFVyNVk0dm4xdi8yTmh6VDQ1?=
 =?utf-8?B?Z3F0bC9Ma0ZQbmxiMkJsTUc1dHkrM3d0NXRzOHV5OUtIb2szTC96cisweFlq?=
 =?utf-8?B?VjFGL1hsQ1ExUUVQb1RENFlJWVFrTzZBVnBXbko3aVk0WUtNMEVHb1RzYnF4?=
 =?utf-8?B?MjZPODh5UHdUb24rV3ZsZjc4Z1RTcmFvNm9kSWRoamtSZHNVU2pXS21TREJr?=
 =?utf-8?B?SFY1bWxlRVJsd01WUXJaUHJ6a2loUGE0d0ZGTU1QKytsWXVtVE1Pcnk3Wmox?=
 =?utf-8?B?cHhqc1Q0c0pEcnhFZmRleGxJaU14VmJmbXJ5L0lybFdPcDJxRE45Q1lDTUZS?=
 =?utf-8?B?L1dJcHZ6VU5Tb2VwS1NyODZhU3BzUW9zODlCQnpHdVFWZTF1U2F0bzIwNS9r?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a60e4ea9-e939-465e-ab75-08dc78a77acb
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2024 08:33:09.5618 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5p9Q1VwBno0JqoG9V1hvMJYY1PGJSnot2u7KdAr/5FrlahQSH10kRL1jB+Quwmd08QzL9CFg4uWOV5G93ap3oaS03PU2Lr+9WxW1C98Lx38=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8115
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716193993; x=1747729993;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HgFLa6rlJomuR7MDzyHacJmRHYrYEEQK08zbhGJOJPw=;
 b=OrC42W/lOOWaClm8391uowQ4ADY0Ki/ED4BvG8bsQnckF26H2CY2XyJo
 IljtWH0aZMu2wooxeHngtxHnzj2Voq5e8OvfgVbI4Y2a1RCcJvYe0qx5w
 594NLVRwIkhxT1pbV4uVUBgeOC+J8Hh+dScZxmo+hUf1mt9AP2di9l0sU
 PqR9r+EA+n63NQDiSrwZ1Y/CkLBs8V2BhvlpPcjbfhxstMUWjhPcvV907
 Q3Z3czqpUc4FoF64w9mTbyJgomEy0MxowvXzQgWW7Bc/vZe3dJh139DHC
 gGZ8hlsBV7Z2+MORwGIJj7shBWKHXTIyPytsjKb1sOOsopHmRGAhc/c3z
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OrC42W/l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: avoid infinite loop
 if NVM has invalid TLV length
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
Cc: Paul Greenwalt <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/18/24 01:22, Jacob Keller wrote:
> The ice_get_pfa_module_tlv() function iterates over the TLVs in the
> Preserved Fields Area (PFA) of the NVM. This is used to access data such as
> the Part Board Assembly identifier.
> 
> Some NVMs in the wild have been found with incorrect TLV lengths including
> at least one which reports a TLV length of 0xFFFF. When trying to read the
> PBA from such an NVM, the driver will compute a new offset for the next_tlv
> which is lower, due to overflowing the 16-bit next_tlv variable.
> 
> In the best case, the driver will incorrectly interpret values until it
> finds one which has an offset greater than the PFA area without
> overflowing. In the worst case, the values in the NVM result in an infinite
> loop as the misinterpreted lengths result in checking offsets which are
> valid within the PFA, and which ultimately point in an infinite loop.
> 
> Fix this by using check_add_overflow when calculating the NVM offsets, and
> bailing if we ever overflow. Additionally, use check_add_overflow when
> calculating the initial maximum PFA size.
> 
> This ensures that we bail immediately on encountering any TLV who's length
> would have caused the naive addition to overflow, rather than entering an
> infinite loop or otherwise misinterpreting NVM values.
> 
> Fixes: e961b679fb0b ("ice: add board identifier info to devlink .info_get")
> Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes in v3:
> - Fix missing {
> - Fix missing pfa_ptr variable to dev_warn()
> - Add Fixes tag
> - Link to v2: https://lore.kernel.org/r/20240517-iwl-net-2024-05-16-fix-nvm-tlv-issue-v2-1-fdee184ece86@intel.com
> 
> Changes in v2:
> - Use check_add_overflow instead of increasing the variables to u32
> - Upgrade log messages to dev_warn()
> - Link to v1: https://lore.kernel.org/r/20240516-iwl-net-2024-05-16-fix-nvm-tlv-issue-v1-1-ecbb6a75961e@intel.com
> ---
>   drivers/net/ethernet/intel/ice/ice_nvm.c | 19 +++++++++++++++----
>   1 file changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
> index 84eab92dc03c..be731b83d667 100644
> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
> @@ -440,8 +440,7 @@ int
>   ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
>   		       u16 module_type)
>   {
> -	u16 pfa_len, pfa_ptr;
> -	u16 next_tlv;
> +	u16 pfa_len, pfa_ptr, next_tlv, max_pfa;
>   	int status;
>   
>   	status = ice_read_sr_word(hw, ICE_SR_PFA_PTR, &pfa_ptr);
> @@ -454,11 +453,18 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
>   		ice_debug(hw, ICE_DBG_INIT, "Failed to read PFA length.\n");
>   		return status;
>   	}
> +
> +	if (check_add_overflow(pfa_ptr, pfa_len, &max_pfa)) {
> +		dev_warn(ice_hw_to_dev(hw), "PFA starts at offset %u. PFA length of %u causes 16-bit arithmetic overflow.\n",
> +			 pfa_ptr, pfa_len);
> +		return -EINVAL;
> +	}
> +
>   	/* Starting with first TLV after PFA length, iterate through the list
>   	 * of TLVs to find the requested one.
>   	 */
>   	next_tlv = pfa_ptr + 1;
> -	while (next_tlv < pfa_ptr + pfa_len) {
> +	while (next_tlv < max_pfa) {
>   		u16 tlv_sub_module_type;
>   		u16 tlv_len;
>   
> @@ -485,7 +491,12 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
>   		/* Check next TLV, i.e. current TLV pointer + length + 2 words
>   		 * (for current TLV's type and length)
>   		 */
> -		next_tlv = next_tlv + tlv_len + 2;
> +		if (check_add_overflow(next_tlv, 2, &next_tlv) ||
> +		    check_add_overflow(next_tlv, tlv_len, &next_tlv)) {
> +			dev_warn(ice_hw_to_dev(hw), "Failed to locate PFA TLV module of type %u due to arithmetic overflow. The PFA length is %u. The last TLV has length of %u\n",
> +				 module_type, pfa_len, tlv_len);
> +			return -EINVAL;
> +		}
>   	}
>   	/* Module does not exist */
>   	return -ENOENT;
> 
> ---
> base-commit: 83e93942796db58652288f0391ac00072401816f
> change-id: 20240516-iwl-net-2024-05-16-fix-nvm-tlv-issue-99ebb2c55c52
> 
> Best regards,

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
