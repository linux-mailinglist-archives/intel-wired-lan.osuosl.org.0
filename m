Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B124965157
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 23:04:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB32341E64;
	Thu, 29 Aug 2024 21:03:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vxix2FmdVSF3; Thu, 29 Aug 2024 21:03:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 742A141E63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724965436;
	bh=oNKIatz9TktVSHb08yqdOmbgmdIV9SHp45XX4lDNjb0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9hnNQQ9sYSyUQNGKiDCCzDjo24J0HCqJBZAVYErVxtKVrMOByO5DdJ9fv1awlDHHg
	 52VBj9zR5v2Q354r03hz0ElxmF/VB1aRJUNXHCy3Kkf0kXpALbqTRcc38pfLSiTQOe
	 WTPhajyTc7h9JRLyxMZ43tkooiBo3gbp9TgDxUTrd7IAD0TAmBI7JHkdQYxYGgwEZu
	 HHKCMIqDg1SjN3YFNIW6vV2CTZxV86Eu+nONDZvOXZX4guDUt65f9EUTK1f8a1shOU
	 wkqo7kUY8FblDdE6ZRfRCi4wXyeR8bcWxyBv8pdrN1ABTwn0MlQ1jULlIximoNpK6z
	 9IxhSky/mPM9Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 742A141E63;
	Thu, 29 Aug 2024 21:03:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 147F81BF215
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 21:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F30A84011F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 21:03:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A_sH4DeDQdPu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 21:03:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BB83B40245
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB83B40245
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BB83B40245
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 21:03:52 +0000 (UTC)
X-CSE-ConnectionGUID: bUFgy+5zTeG4zo8X3z5TjQ==
X-CSE-MsgGUID: Km2S0UZlT8uFtaTC+BjyxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="34965938"
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="34965938"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 14:03:52 -0700
X-CSE-ConnectionGUID: 26YiXKE7RJiqo4n3fwNufA==
X-CSE-MsgGUID: dUi/hWunQdqRFhEDd4XckQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="67857396"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Aug 2024 14:03:52 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 14:03:51 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 14:03:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 29 Aug 2024 14:03:50 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 29 Aug 2024 14:03:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G7z51SCKPDmOjN5vYFHLSLx9dV9BuzY6mYZkIZxpsanVOaB0kHV96sF/agmeurARAXpNPbFo1QkTaYwFSkmvieFrz99EBvYIwFXXT8/21Ox5nIlKnBiudEAGRYZeERTE7Y3gyE00n4JapyKUB3Q5kby1irvbk4BrSQ0GTlbt0hdMHjen2tmyEaMBafDbMqR2DVdT1+djempUYJr/mcbWMAGSE3muUhGHC6Y+ey8Hk0wv1M2hWweDNyiHuF4ICry3uJYkf4R53bDHqf8pCKPm3YklDgKuXeKShf4DlgEwJS+veylKI6uk+N4GqjxsmtR0Pc7L4/wKzAGxgAbWjG41fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oNKIatz9TktVSHb08yqdOmbgmdIV9SHp45XX4lDNjb0=;
 b=dSnySPeBbkA2W+ioVmDi4169RveeZArAxdZw4EBam/b3IDMucQE7YXQ3F2QOzkRLUsVDPpYCyQstMVSAphCLQ5xJ4ZI2faw5fq5mRE4i+fCmz0N/JPDWv4xyB10CiyerppTyr+PapGLgBKNZRVXzamF6h+53+HBfqc0PebOx4hvrdb/oqGZ/OW79Y6UOhjhiMUZ3lg0KmmmBITshN7GvJVOO8fgiMerAYEoOTB3nRL/AS+Tv1EMb44badRCHEL1aEASZyhsOaSQhCDpcNkJBipL45ct1pmGEQM86ZIYk3qhXygYaBfSynUx0ndUu2pATQeDo2adPTDXUEjvhxajNdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DS0PR11MB7443.namprd11.prod.outlook.com (2603:10b6:8:148::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.20; Thu, 29 Aug
 2024 21:03:47 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%2]) with mapi id 15.20.7918.019; Thu, 29 Aug 2024
 21:03:47 +0000
Message-ID: <d21708b2-8f47-b447-cc5c-08951e140cf1@intel.com>
Date: Thu, 29 Aug 2024 14:03:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Paul Greenwalt <paul.greenwalt@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240826173916.1394617-1-paul.greenwalt@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240826173916.1394617-1-paul.greenwalt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0244.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::9) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DS0PR11MB7443:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ded5f22-cce3-41ee-e295-08dcc86e1331
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Vkp0QndTSXVZWCtZSG5naVdDNHVXeDV0cllhQlQ2aGN4elVZMEFac3ZMenNX?=
 =?utf-8?B?b1g4NmVBNUpHTkZFVi9zNS9yY1NFL2w2TURXRlZTM29BTjMvT1VBR3Jid3dD?=
 =?utf-8?B?U2UzYjF5U1orOEFiQUVmcGRCQk9wSDhQdktJRDV0eDFrQWRJN3dpdGVwTURj?=
 =?utf-8?B?Tlh2cC93eFFrME56aGM4NUFyNERWR0pvd1hZcGtTeUwyQ0pOTUV5NEhONnky?=
 =?utf-8?B?OFJ2SC9XYnNiRVdPdkljOTZJMzE1VWVtaW9jU1paWnJ4cnRBcFZTK2QydXUx?=
 =?utf-8?B?ejhwcGo2K29MLzh3YkpKRHprMGVvMUpBTm9iejRZOVZEWE5FYS9KRjRXemxM?=
 =?utf-8?B?VVdTaEJvU0hUMTdPdEVtdHRESzNqSC9hVWtpN3BxMWNPUDEyNUJnbFJJbzZE?=
 =?utf-8?B?eGErTmNpMDM5T24xaTcrZmNnNVN5R2d2Yks1QnBMUVZlWW1wWlhDTVNuWThN?=
 =?utf-8?B?SjQxbGpuaXQ3SG44MjFjK1hRTUN5TlF3U3ljamdScVdFK1RkMjJxSHI4eVpO?=
 =?utf-8?B?ZVNWVGljTzg0dmZ5TjJCcmFaZmJNdU9MZTdiZThFQUdrbkd2U3NpdHdjUDEw?=
 =?utf-8?B?YXhJOFpSQ04xQmt2aW1Ha1dqNXZtVkxlSHVReXJZY0xvajE4UklFbVpzWW52?=
 =?utf-8?B?SnNYNkVUNk9VcmdFMlhxa3JFK0p0SzdMckhNTHUxSjhxelFPUCsyZW1HRDFn?=
 =?utf-8?B?YlpEeStLUEF2cWpIUnVObDlMQlhJaEVaQVFaVlBUNzByZyt2amZ2dGJueEpQ?=
 =?utf-8?B?aGJMVEdQRWJRblBKQ2dnNERDWE9LN3BjRkdnb0NYcGpLc21xQ3N2WXUwUkQ4?=
 =?utf-8?B?cHNyU2RKM1kzOWpZWklLZk8vRml4NzVmTFcyNERKcVNzL0x4UFYvRnVGS1Jn?=
 =?utf-8?B?eGVjNDFZbTVuSy9KeVg2emYvL3FXcXNzMUYrWWZOWUg2V25YeERnRXZUMWFV?=
 =?utf-8?B?cmlKckFmZEk0ZGI3Y3Q1Y3oyNE1kbjBMa0twdVU3U3ZORC9FWDJPdHdlSkFM?=
 =?utf-8?B?K2lVLzdZL2IyUDVZczlnQU9wUWhaMlFYQXlJZmx2Y0JyNXFJZ1E5VFU5cFI3?=
 =?utf-8?B?VjI2MjNuekIvZmNuUFFLS3kvVUU1VUhsV3VnK2ZEUjdEdkE0OWVDNVMxRWsr?=
 =?utf-8?B?aUh3aGczL1BRTHNoNzFOMzBrTUhuREQ2Ymo3ZFNkdVhabnRObzNtSzFlRDZF?=
 =?utf-8?B?c3JsNVI5TzR3QTlkWUsrUUNJZmIya3o5TWRTa3ovcU1HM2JxUjFmZUhQeUFU?=
 =?utf-8?B?S1I5UDExUXh6YW4yRGhLRllWQ1JoaHFuVjhFNlVXakZCNmE1dXJnZWJNV3lF?=
 =?utf-8?B?SHlvSjZVRFpCUmlkZVV1eEh6WGhNejhtWWkyOHRIZmNDdjZkR0FaN1pMVDdz?=
 =?utf-8?B?RldvMUVBMlA0WXNGZmRKRHlaZjdnK1JzMXB1OHJQbjFKUXpIZ0tSSEwzaGpl?=
 =?utf-8?B?WWpJK1pXdG9SRTF1b1ZHc1NwTXVldnBjTURjNThZOUdXMnBMYWsrQ1pNbUdE?=
 =?utf-8?B?MDRpN3RzaWlLMzF1VCtZNkRkR0ZOMGRPWDcvOUVDS2pOQzYyRDBXSktCeWZi?=
 =?utf-8?B?N3pycXlBMHJOS1NxYnNlQUtJYkFGVk5Qd0ZuZHFmUTdDTkkrVm1tNitFazd0?=
 =?utf-8?B?NHdRZGQyVDBtYk90R0NJZ2p1SWhnSU42WnM4K3lDQ2QzUWI1aWk4RU5yVVlM?=
 =?utf-8?B?Ujllb2YxVEswRjVCazFvZTk4Z3VZWXRCM0lxcGV4N3llZUYzd1JXZjlDUVJa?=
 =?utf-8?Q?nkNFfYL6TBihXvHzK0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MlhEaTBpU3N4TkpTQTJ1MGNrdVVUaWJPdkFqb3dRQ3M4aGN4cm5HYjExRDhy?=
 =?utf-8?B?czVwWWxWRCtMK1F4ZVBtWUIxcmpBekxCSHl6UWFvMWNEQ24xamRuM00yR0hz?=
 =?utf-8?B?Y3FCbE9hd1IrRDkxMmlGRXNPUFBsTHMwcnhya2dQd0lpd25jRUZxS25qVzJu?=
 =?utf-8?B?dTYxL3ovWmxNTlJHSHBRVm56YmVqdkpYVmdYNkN0bUM4YXEyenRpK0ZzZldJ?=
 =?utf-8?B?cEd2ckEvZGZ2QUQxY2FGR3U1YWtZR3pWQWhzZzYzbC9zR3ptSFlZZGlYZHBI?=
 =?utf-8?B?N3ViZG0xbG1HNlRUcjNUUXhiMHNuQzQzUzE1WE9mdnBPcmcwcW5TSjJKRjhW?=
 =?utf-8?B?TzE2UDkrR2t0OTcrYnhUQWl2WjAzOUFaQ0FiblhVZEtaSDNlaHltdXRjNm5o?=
 =?utf-8?B?T0NqTFdFQmRzVGhLQ2JQanlhTU1IbStMSWlsbWFxbVFsNVZHcjhUQlJtckJl?=
 =?utf-8?B?VVZ0eXpBaDU1Rm5Dc3dGVlR1SWtuNmQzNHJVR2VRNnR1OWhWSHZJb2s4VDNu?=
 =?utf-8?B?d1BYUU5tV2ljMldzTEovK1pwdnQ3dWxCenoyWWR4RklGOE9GZjNlNTRzQUc3?=
 =?utf-8?B?THorUDFnanU2STNKUnNacm8xa0xkZ1ZNWXpwcldKaGNnUzNjenR6Rkp0QUk3?=
 =?utf-8?B?WDJUaHBkMEJ4Rkx0WlZiSkRpenRRMzltRkI1MUpJaUNEeXhPTTl4RVZrR0dV?=
 =?utf-8?B?U3M5S0lUbEdCODN1MURjZGRtUW5KRGhpaVNnRTVBdnRSTks2NjdVVmpXeVE0?=
 =?utf-8?B?cHY5WDJFVXZaSHZ3TWwvQnRFRWlRMDFQeVIvdHl1M3JUbVlOV2ZLS0pHWWp0?=
 =?utf-8?B?K0xub1ZnWExORThuVGJzbkxBbEh3dGwvd1B4OHBXTDNreWZiYkp5c1l4NjlZ?=
 =?utf-8?B?V3ZuYlZsMjdsVjFWMStYd1FiaUVUdkJQMEp1VnFRVUFJa2EvN1dIUEZIWExZ?=
 =?utf-8?B?T2daRkFwbVdHT25BMyt3QW9uWERiaDF6aHliZ1FHZ090RGJ3OVpHVStjdTJC?=
 =?utf-8?B?RDJ2OU5wemlEUFhjZytpS0Zsb3hDVWZOdEdXa3luYWxEOHNxdWN6V2VmUHZW?=
 =?utf-8?B?M0FsTldYNTNTUTBENGdKRzVxZFdJRS9XTzdPNjltYitGbGlLODJMV245cEpT?=
 =?utf-8?B?TlZOelBKVERKdVZwRTNvb1kxYlRIQm93b0VnWDlLcmYxVUpsSDVsZDNFNy9h?=
 =?utf-8?B?dmxsNnVMNWtXekg1eThaUW94bHRwbDQxNHVjL2ZqWExOUWY5M0ZCL0FiekNz?=
 =?utf-8?B?Q0lOb2N1dWRSZktZUzVla3hSd1g5NHBMcVVJTnhia1pWSzZzSUdzTjNLY1hw?=
 =?utf-8?B?ajB4SVhQUVlpRVRDMlMwV21tTGhXaGUveWs0cFhiYUFmR1pLRmZscUxoSEYw?=
 =?utf-8?B?ZzNVRmJiWkZaTnpVY3ZaRXNHVDlaRlpGS3V3NUx6OW9QL2x6bUpmRUVOSFJm?=
 =?utf-8?B?dENhdXJ4cG9Db0RvUVY2T0o3VVl1SE1ZUWg0U2g3c1diOXk3UDhhRTNrTEZU?=
 =?utf-8?B?L0JvRS9rTUhQaklOTUxLalZqQUk0dnVlYTRseXhLaS9YRTRBRHBYY0xKd1FO?=
 =?utf-8?B?dzBIN3FmNlJWblF1aWZNeHNLemQxWFN3a0VNeFVoTjl3SmcwalAveTI5U2xJ?=
 =?utf-8?B?ZjhLaUMyMGtsZkl6RHVSa2UydDZRMGNNd21xWWZwZUx5TVlIeVE0YXlnamh4?=
 =?utf-8?B?c3JXcXVWMW5EYjlSbCtnZlR2WitieUNwMWVCdFNwYXU2SHN2cHpMT1VKeDZD?=
 =?utf-8?B?WnorSTY2aUtnVWovMnpMUG1qZTh6SXNnUnJMOThLWlAvNUtZM2ZKV0VNYk45?=
 =?utf-8?B?N3llbjdGK0Q0a2ZteTZvOWtqdVg2ajZJM3BUWDlaWXVudDE0UW1HY2ZnKzU2?=
 =?utf-8?B?NWhwb2lZQ1lJb0pkUWpmMUhLenhqem5rQWlOSXU5eWozcTZaYjZqbEdGWldt?=
 =?utf-8?B?VENUT2RRZWxLRGtNVGlYWU1ZR0ludTlhdjhmald0RHpoU01kZXRIaGhvcWhS?=
 =?utf-8?B?TTJMaTdqc2pCajk1UnFTV2lNSmcvZDZzUmUrWkdOVHdSTW94Yy9Qd2hvTjQ4?=
 =?utf-8?B?elRMMm01cm9LWmxocTR0dXRuancycVFXRHRmNENNalk2ZzA1R3lYTE5qUTQ4?=
 =?utf-8?B?V1dJZUNJcktrSGkwUGpGTjU3VmN4WFlpYVFiUHdQTm1zdC9IVjVQb2FwVE91?=
 =?utf-8?B?TUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ded5f22-cce3-41ee-e295-08dcc86e1331
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2024 21:03:47.5470 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G8gPtlJqK+CuhVD5oe+gMuoIgz5MwCc7S9afZxfPVAxOsLHuupbKMkrkJFw7kJ9oHn1Go4DmBKIfZe5UR0GvJIEFzNzP0mg16bW69kk4aLY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7443
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724965433; x=1756501433;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bjzjlg517Dghp3rNgUpJXJljXNdJjR4W0duHltBqlbQ=;
 b=kUan+WDpASkZJO6cZWT3PMQTl4Xr55FkfimIExp3C7qN900zmfnGWUqq
 WS+IfXaG6Hc1Edb8NrWhFQmeh3PBi+drUayDJCUpBaAdmtPKZMatYjkP3
 2xXEkNHGhdFAgrMIZgWuTzJnzpu2RW4OfJEiFc/5tIPn7kjNkPCGZ5Q++
 3dcVcTQatdtNGbUqYRrrlgQec96ZbW/wow31UysxICfbaE71cdbBcX6Oa
 VWZxEketyedpMXDOQOR50wEJVm1V5wV3p2xLI4zZYRrXmG4mUfENAUrvq
 AZ2JNjdoXTqOwG8/l758wycJjbtVdqMVgkDpJNuUH6bCzWQqfiicOZoAT
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kUan+WDp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: Add E830 checksum
 support
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
Cc: Eric Joyner <eric.joyner@intel.com>,
 Alice Michael <alice.michael@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/26/2024 10:39 AM, Paul Greenwalt wrote:
> E830 supports generic receive and HW_CSUM transmit checksumming.
> 
> Generic receive checksum support is provided by hardware calculating the
> checksum over the whole packet and providing it to the driver in the Rx
> flex descriptor. Then the driver assigns the checksum to skb-->csum and
> sets skb->ip_summed to CHECKSUM_COMPLETE.
> 
> E830 HW_CSUM transmit checksum does not support TCP Segmentation Offload
> (TSO) inner packet modification, so TSO and HW_CSUM are mutually exclusive.
> Therefore NETIF_F_HW_CSUM hardware feature support is indicated but is not
> enabled by default. Instead, IP checksum and TSO are the defaults.
> Enforcement of mutual exclusivity of TSO and HW_CSUM is done in
> ice_fix_features(). Mutual exclusivity of IP checksum and HW_CSUM is
> handled by netdev_fix_features().
> 
> When NETIF_F_HW_CSUM is requested the provide skb->csum_start and
> skb->csum_offset are passed to hardware in the Tx context descriptor
> generic checksum (GCS) parameters. Hardware calculates the 1's complement
> from skb->csum_start to the end of the packet, and inserts the result in
> the packet at skb->csum_offset.
> 
> Co-developed-by: Alice Michael <alice.michael@intel.com>
> Signed-off-by: Alice Michael <alice.michael@intel.com>
> Co-developed-by: Eric Joyner <eric.joyner@intel.com>
> Signed-off-by: Eric Joyner <eric.joyner@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h          |  1 +
>   .../net/ethernet/intel/ice/ice_hw_autogen.h   |  1 +
>   .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  8 +++--
>   drivers/net/ethernet/intel/ice/ice_lib.c      |  9 +++++
>   drivers/net/ethernet/intel/ice/ice_main.c     | 30 +++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_txrx.c     | 26 ++++++++++++++-
>   drivers/net/ethernet/intel/ice/ice_txrx.h     |  2 ++
>   drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 33 +++++++++++++++++++
>   8 files changed, 107 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index caaa10157909..70e2cf8825cc 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -205,6 +205,7 @@ enum ice_feature {
>   	ICE_F_SMA_CTRL,
>   	ICE_F_CGU,
>   	ICE_F_GNSS,
> +	ICE_F_GCS,
>   	ICE_F_ROCE_LAG,
>   	ICE_F_SRIOV_LAG,
>   	ICE_F_MAX
> diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> index 91cbae1eec89..3128806e1cc6 100644
> --- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> +++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> @@ -110,6 +110,7 @@
>   #define PRTDCB_TUP2TC				0x001D26C0
>   #define GL_PREEXT_L2_PMASK0(_i)			(0x0020F0FC + ((_i) * 4))
>   #define GL_PREEXT_L2_PMASK1(_i)			(0x0020F108 + ((_i) * 4))
> +#define GL_RDPU_CNTRL				0x00052054
>   #define GLFLXP_RXDID_FLAGS(_i, _j)              (0x0045D000 + ((_i) * 4 + (_j) * 256))
>   #define GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_S       0
>   #define GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_M       ICE_M(0x3F, 0)
> diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
> index 611577ebc29d..759a7c6f72bd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
> +++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
> @@ -229,7 +229,7 @@ struct ice_32b_rx_flex_desc_nic {
>   	__le16 status_error1;
>   	u8 flexi_flags2;
>   	u8 ts_low;
> -	__le16 l2tag2_1st;
> +	__le16 raw_csum;
>   	__le16 l2tag2_2nd;
>   
>   	/* Qword 3 */
> @@ -500,10 +500,14 @@ enum ice_tx_desc_len_fields {
>   struct ice_tx_ctx_desc {
>   	__le32 tunneling_params;
>   	__le16 l2tag2;
> -	__le16 rsvd;
> +	__le16 gcs;
>   	__le64 qw1;
>   };
>   
> +#define ICE_TX_GCS_DESC_START	0	/* 8 BITS */
> +#define ICE_TX_GCS_DESC_OFFSET	8	/* 4 BITS */
> +#define ICE_TX_GCS_DESC_TYPE	12	/* 3 BITS */
> +
>   #define ICE_TXD_CTX_QW1_CMD_S	4
>   #define ICE_TXD_CTX_QW1_CMD_M	(0x7FUL << ICE_TXD_CTX_QW1_CMD_S)
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index f559e60992fa..118ac34f89e9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -1380,6 +1380,9 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
>   			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG2;
>   		else
>   			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG1;
> +
> +		if (ice_is_feature_supported(pf, ICE_F_GCS))
> +			ring->flags |= ICE_TXRX_FLAGS_GCS_ENA;
>   		WRITE_ONCE(vsi->tx_rings[i], ring);
>   	}
>   
> @@ -1399,6 +1402,9 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
>   		ring->dev = dev;
>   		ring->count = vsi->num_rx_desc;
>   		ring->cached_phctime = pf->ptp.cached_phc_time;
> +
> +		if (ice_is_feature_supported(pf, ICE_F_GCS))
> +			ring->flags |= ICE_TXRX_FLAGS_GCS_ENA;
>   		WRITE_ONCE(vsi->rx_rings[i], ring);
>   	}
>   
> @@ -3896,6 +3902,9 @@ void ice_init_feature_support(struct ice_pf *pf)
>   	default:
>   		break;
>   	}
> +
> +	if (pf->hw.mac_type == ICE_MAC_E830)
> +		ice_set_feature_support(pf, ICE_F_GCS);
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 6f97ed471fe9..67e32ac962df 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3678,6 +3678,12 @@ static void ice_set_netdev_features(struct net_device *netdev)
>   	 */
>   	netdev->hw_features |= NETIF_F_RXFCS;
>   
> +	/* Mutual exclusivity for TSO and GCS is enforced by the
> +	 * ice_fix_features() ndo callback.
> +	 */
> +	if (ice_is_feature_supported(pf, ICE_F_GCS))
> +		netdev->hw_features |= NETIF_F_HW_CSUM;
> +
>   	netif_set_tso_max_size(netdev, ICE_MAX_TSO_SIZE);
>   }
>   
> @@ -6237,6 +6243,7 @@ ice_fix_features(struct net_device *netdev, netdev_features_t features)
>   	struct ice_netdev_priv *np = netdev_priv(netdev);
>   	netdev_features_t req_vlan_fltr, cur_vlan_fltr;
>   	bool cur_ctag, cur_stag, req_ctag, req_stag;
> +	netdev_features_t changed;
>   
>   	cur_vlan_fltr = netdev->features & NETIF_VLAN_FILTERING_FEATURES;
>   	cur_ctag = cur_vlan_fltr & NETIF_F_HW_VLAN_CTAG_FILTER;
> @@ -6285,6 +6292,29 @@ ice_fix_features(struct net_device *netdev, netdev_features_t features)
>   		features &= ~NETIF_VLAN_STRIPPING_FEATURES;
>   	}
>   
> +	if (!ice_is_feature_supported(np->vsi->back, ICE_F_GCS) ||
> +	    !(features & NETIF_F_HW_CSUM))
> +		return features;

This prevents adding any other feature checks below this in the future. 
Seems like we should rework this into the feature being checked so that 
we don't have this restriction.

> +
> +	changed = netdev->features ^ features;

Scope of this could be reduced, but I guess the depends on what the 
re-work looks like.

> +
> +	/* HW checksum feature is supported and set, so enforce mutual
> +	 * exclusivity of TSO and GCS.
> +	 */
> +	if (features & NETIF_F_ALL_TSO) {
> +		if (changed & NETIF_F_HW_CSUM && changed & NETIF_F_ALL_TSO) {
> +			netdev_warn(netdev, "Dropping TSO and HW checksum. TSO and HW checksum are mutually exclusive.\n");
> +			features &= ~NETIF_F_HW_CSUM;
> +			features &= ~((features & changed) & NETIF_F_ALL_TSO);
> +		} else if (changed & NETIF_F_HW_CSUM) {
> +			netdev_warn(netdev, "Dropping HW checksum. TSO and HW checksum are mutually exclusive.\n");
> +			features &= ~NETIF_F_HW_CSUM;
> +		} else {
> +			netdev_warn(netdev, "Dropping TSO. TSO and HW checksum are mutually exclusive.\n");
> +			features &= ~NETIF_F_ALL_TSO;
> +		}
> +	}
> +
>   	return features;
>   }
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 8d25b6981269..bfcce1eab243 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -1792,6 +1792,7 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
>   static
>   int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
>   {
> +	const struct ice_tx_ring *tx_ring = off->tx_ring;
>   	u32 l4_len = 0, l3_len = 0, l2_len = 0;
>   	struct sk_buff *skb = first->skb;
>   	union {
> @@ -1941,6 +1942,29 @@ int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
>   	l3_len = l4.hdr - ip.hdr;
>   	offset |= (l3_len / 4) << ICE_TX_DESC_LEN_IPLEN_S;
>   
> +#define TX_GCS_ENABLED	1

This should probably go with the other GCS defines.

> +	if (tx_ring->netdev->features & NETIF_F_HW_CSUM &&
> +	    tx_ring->flags & ICE_TXRX_FLAGS_GCS_ENA &&
> +	    !(first->tx_flags & ICE_TX_FLAGS_TSO) &&
> +	    !skb_csum_is_sctp(skb)) {
> +		/* Set GCS */
> +		u16 gcs_params = ((skb->csum_start - skb->mac_header) / 2) <<
> +				 ICE_TX_GCS_DESC_START;

Missing newline here.

> +		gcs_params |= (skb->csum_offset / 2) << ICE_TX_GCS_DESC_OFFSET;
> +		/* Type is 1 for 16-bit TCP/UDP checksums w/ pseudo */
> +		gcs_params |= TX_GCS_ENABLED << ICE_TX_GCS_DESC_TYPE
Could we define TX_GCS_ENABLED to have the proper bit set? I don't see 
ICE_TX_GCS_DESC_TYPE used anywhere else so it'd eliminate the need for it.

> +
> +		/* Unlike legacy HW checksums, GCS requires a context
> +		 * descriptor.
> +		 */
> +		off->cd_qw1 |= (u64)(ICE_TX_DESC_DTYPE_CTX);

Are these latter parentheses needed?

> +		off->cd_gcs_params = gcs_params;
> +		/* Fill out CSO info in data descriptors */
> +		off->td_offset |= offset;
> +		off->td_cmd |= cmd;
> +		return 1;
> +	}
> +
>   	/* Enable L4 checksum offloads */
>   	switch (l4_proto) {
>   	case IPPROTO_TCP:
> @@ -2422,7 +2446,7 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
>   		/* setup context descriptor */
>   		cdesc->tunneling_params = cpu_to_le32(offload.cd_tunnel_params);
>   		cdesc->l2tag2 = cpu_to_le16(offload.cd_l2tag2);
> -		cdesc->rsvd = cpu_to_le16(0);
> +		cdesc->gcs = cpu_to_le16(offload.cd_gcs_params);
>   		cdesc->qw1 = cpu_to_le64(offload.cd_qw1);
>   	}
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
> index feba314a3fe4..11b6af7a7414 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
> @@ -193,6 +193,7 @@ struct ice_tx_offload_params {
>   	u32 td_l2tag1;
>   	u32 cd_tunnel_params;
>   	u16 cd_l2tag2;
> +	u16 cd_gcs_params;
>   	u8 header_len;
>   };
>   
> @@ -366,6 +367,7 @@ struct ice_rx_ring {
>   #define ICE_RX_FLAGS_RING_BUILD_SKB	BIT(1)
>   #define ICE_RX_FLAGS_CRC_STRIP_DIS	BIT(2)
>   #define ICE_RX_FLAGS_MULTIDEV		BIT(3)
> +#define ICE_TXRX_FLAGS_GCS_ENA		BIT(4)

The RX flags [1] and TX flags [2] are seperate, please keep them 
seperated and define them individually.

Thanks,
Tony

[1] 
https://elixir.bootlin.com/linux/v6.10.6/source/drivers/net/ethernet/intel/ice/ice_txrx.h#L366
[2] 
https://elixir.bootlin.com/linux/v6.10.6/source/drivers/net/ethernet/intel/ice/ice_txrx.h#L404
