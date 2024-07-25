Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EA993C763
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2024 18:49:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBD6F409E0;
	Thu, 25 Jul 2024 16:49:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pnB1JBg1CiWG; Thu, 25 Jul 2024 16:49:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E755E409CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721926148;
	bh=LWsEL/+ToUTr1kgMX3Mo1VsiMGVKA7d1nnCj4FiVLmw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PqsQMMCIGHvxUZMy7tQqYKDf6i/4dq/BZEh3xUyzdQYNbv8DwTtOpNicTqd3OOH3C
	 ts35QuDpmh/9f6rDSzaPNop0ozPHpeSNUX9Qo9+lx14+hN8kIia72B0lRDjDcH4WTv
	 e0JLJNStrDQmnip4BzxbceykIBxXDiwA6HZxLYmsMHoxyHjPUgBbJk7hyg/s3IJJsz
	 09/pj1/eSXMjq0K1MWXquN+Z0lmNy+R3sMyzN8J3jmayxkGyQrrGSJMdYA6fer+VCR
	 FemAXzJzgJac9NzxkPb8t5H5ru0O/Y3e5BrSrnNIA6lHpWprCFBBtqGmKz0hbCd9BT
	 kqfFJyE5sVfbA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E755E409CE;
	Thu, 25 Jul 2024 16:49:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD3081BF370
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 16:49:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AE42981E86
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 16:49:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q6wKT7c49dqy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2024 16:49:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4E02281E1F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E02281E1F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E02281E1F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 16:49:03 +0000 (UTC)
X-CSE-ConnectionGUID: v1o3F5tDS0aNs47n8/kV5w==
X-CSE-MsgGUID: 3scTJ/pBTNuytwIFmxjQSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="19867216"
X-IronPort-AV: E=Sophos;i="6.09,236,1716274800"; d="scan'208";a="19867216"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 09:49:04 -0700
X-CSE-ConnectionGUID: FJHGVPWCSsmkoi7+WsJnBA==
X-CSE-MsgGUID: AnA0UwmRTlGb1KO0cZt5+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,236,1716274800"; d="scan'208";a="57278424"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jul 2024 09:49:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 25 Jul 2024 09:49:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 25 Jul 2024 09:49:03 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 25 Jul 2024 09:49:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iaIs6e6ybBZAA9qO/SaDrq87WvTk/X6aooQ0r8oXwJbqWvnoXIYGO7sa9SJYXs058x+0l99fYaTD9+xnJqyaaAADoLvphScVwo77EUioep68YiyycNi6FUySwlQJny3tCf75t+TmFpcPY2Ezt0bMCxSTjHpwW74A8DPGpdpwCjMK7Pw62Q9Xf7mfGGo/7dVx0J748Z46DjNex2dV1kZUlD6Makf3rDZ5K66DEqcQIZWM5aRiPRToVkpXRE9o5OQOk76J5+4k3W6ET2dCqyZTuefXtKyEzEvQV3KBaRb1N3X2Xte7NK9ccLYcgJkwJwk5l42w/WMTYWvgh8Ox04oJ6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LWsEL/+ToUTr1kgMX3Mo1VsiMGVKA7d1nnCj4FiVLmw=;
 b=RnDbmOr1/gKKzOoCJhOorU9kOKbG9zRYyN2JNXx50rtksbKUMkRgIPPvxvXl3I7TZoAjuOgkNfIYbgY+opyJX+BqNalBENHtaotm3nkJiz75EjEyYmbGceK9H9AmkReehP8QWQqcAtf18WAO6bQEclm2fDA+y9QRdOwRTMp6s/NFXw0/4YfrSUIB+Q1C/DzkGNuxMRnG4S5uluqhQ2p7cVDqAgi3dQ36Tc3sZQ0LOHDgeuh+znntOo8wuOghjWgw0gQklu8BJl68CIarTDkURurvUriPDc+Gm+64iweP9zvq80Q1MnF2rZLDovZtyY2JQkkW5/gezlRYdezBRtFw3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by LV8PR11MB8534.namprd11.prod.outlook.com (2603:10b6:408:1f7::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.19; Thu, 25 Jul
 2024 16:48:54 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%2]) with mapi id 15.20.7784.020; Thu, 25 Jul 2024
 16:48:54 +0000
Message-ID: <6e375979-45e2-1dbf-1857-a3565f9f67ca@intel.com>
Date: Thu, 25 Jul 2024 09:48:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Michal Schmidt <mschmidt@redhat.com>, Dawid Osuchowski
 <dawid.osuchowski@linux.intel.com>
References: <20240722122839.51342-1-dawid.osuchowski@linux.intel.com>
 <CADEbmW2ANTgihP6rjS9Wmu6+7TYii37K+NH-opw=8eCLqnPH5A@mail.gmail.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <CADEbmW2ANTgihP6rjS9Wmu6+7TYii37K+NH-opw=8eCLqnPH5A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0306.namprd03.prod.outlook.com
 (2603:10b6:303:dd::11) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|LV8PR11MB8534:EE_
X-MS-Office365-Filtering-Correlation-Id: 2fcc4181-52f3-4bac-a20a-08dcacc9ab80
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MFRxOFdyMDIrZnBHcWdCb1AyL0N3R2p3R1dwaVljd3RWSTA2Ly9YY3ZQSy91?=
 =?utf-8?B?QmFDbGw5dWJ0RXcveGZaNDF1ZUw3bGgrdmZxaE5tRzFzWlBMZVQrNmJEeE80?=
 =?utf-8?B?QmFSQzFTcFllTFNwR0JKVmEvZWtXVlYybmswcXhHS1RHSXJRRElETklNRGg2?=
 =?utf-8?B?OEsxdjJRdjE1UzVDcTMydDU3SXowT2todWVWeDgxNWFOekNSZFdMUVZWUFps?=
 =?utf-8?B?dDg3QkZ5ZnhyM1dvd2VEM0k5OHNEakJEV25rSi9kSU1DWkliUGs4ZUdjNGFL?=
 =?utf-8?B?MjJBREo1UUkxdzNvRzExb0pMWUNGRGs1a0RXSnZGdXBVaGNrNSt6ZlhPNzZu?=
 =?utf-8?B?bkhCL0VRNS9BNlZNaE1NNERRekE2QnpkNGtWdWtMckVjeW9yUmx2Z2xkdEhI?=
 =?utf-8?B?WjQ2bjQxWnhhKy9jamNiVHlIVlB6c3hmanh6TmhyamtIUG1XWDJlak0wUk45?=
 =?utf-8?B?eHdqRDRMMHRHQ0UvTVFNdlIrTTRyYUd0MGIwSGVuTUsxbzY0MS9kVm41NDhm?=
 =?utf-8?B?UVNVNGpaNkFyb2FjTUJubithUElmVUFnOEZNNlBxdFBhQjJLdXJVZHF2eTN6?=
 =?utf-8?B?RmFyMUN6YTNSbENGenZ6V2UvU2Uvd1pNbWNpMUZqV2dvNGdIYmFZZnl0LzRI?=
 =?utf-8?B?c1BEcjRBQ0ZhOTJGOFJOKzRPYmpVVU50NFdKVFo2SkIrOUpPdXh0dzE1bkM4?=
 =?utf-8?B?bE1aK1F2QVM3MDRLQTZBL3MydW9RUDNnM1kzdTZaTkVLZE5KYmdXOG1DRGEx?=
 =?utf-8?B?VFRJbXdYVlNuMHpYS3cxZ2ttN0pUeDF6amVQKzdVTHY1elBlR2p0cjZKcTl4?=
 =?utf-8?B?R1BuU1VMeTV3bmdJcmo4K0lvWmM1dkFjSFlBcDIvV3R3ejlVWDNybTdycW9k?=
 =?utf-8?B?dTJ5QVlqNkFUWVhqc2htUDg5RUVROWpEZU5MQWpmamswNEJIbXVHV1FjYmww?=
 =?utf-8?B?a2JFSnp3cm1EZGgvcnhRN1c1bkFIT1VvbU1KbkhGRy9FZkNtOWZ2bGFaZWNt?=
 =?utf-8?B?S1VuMHcxYWNQWmVBTG1CTXhiVEdEbVlzQ1VqeDYwTEIxWUZxRnl4RU9nRTYr?=
 =?utf-8?B?aFdzS283L1BsYTJkbDdjRXg1SnR6YTMrWWt1eC9VTnJXd2Y3Q0x2OGNxZGhR?=
 =?utf-8?B?emVVbVFZdDFFWFFlcGx4ZTRubjJSS3VPTm4yaWZLbEJ2SzhuWEhMZFdSYWd4?=
 =?utf-8?B?c2l0aEQ2Yi83QStkTS8wUzIwN0oxK2dScDlkaU5OMGxBTlVvWGN0SkI3UE1O?=
 =?utf-8?B?dksrdGF5SVpKTkcxN3JBYjlHRm9mSUpyRHNCMzh4Z2JOVEM1YWN0MHdNalZh?=
 =?utf-8?B?dHNOODNENlVNbDNKb1JGMlVVbCtPcUFERit1dUdtZEJIVFdhZWhFTjNwT0Fn?=
 =?utf-8?B?YjU3VUZYT3ZTZlNDbHhoSDlSM3FVTjVvUExBQ2IyQ2JRTFUzTy9kYUFHWTlR?=
 =?utf-8?B?VERmNW5OSHZjaFJGVlZDLytOWUpTMGpMUjMySVlURXd1Skd6L2J1V251QmtL?=
 =?utf-8?B?WFdUQjFxd3BKeHplOEg3ZXBRRjJNVmtHSmlDblo0V2FLZmdxZmEvL3I1V05t?=
 =?utf-8?B?dHNGcVVJZTJlZGkxdHdydW1iQVNhbE5iTzcrY2diMHNXNGtxczNmemRCa3RK?=
 =?utf-8?B?dEt2OEF3bWZINkdSV1JoTlllOEZqSkRQaE1sMzUyb01RYmJUTWxaQ2tNMDBS?=
 =?utf-8?B?WUl6amsycEJEU0dkYThIb1p1c09hVjIvMTJRTDdyZlB3N2RFTXVmbUttdWFi?=
 =?utf-8?B?eENBNjZhQ2szYmtmQ09MSkRFbjRrcW1JY3dQelA1NE1KVFo0MkRjVHkyVVBr?=
 =?utf-8?B?aGVpMUs0eHQ2RTl1SjRjUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUFQc01KOEVoY1FXMEp1aEN3YUs0bHYxUXRIYmJpOXlxNjJnd1k0NmtGSzZL?=
 =?utf-8?B?TnpFSUpCNnp2dldoektuMTEwZVpzVnBHMmRCdCs1dks1NFRzMDJIRU1QMUph?=
 =?utf-8?B?WnZWd1VOQ1QvSEVGUTU2OTc2Z09mMExVZG1YbWZsYy9ISzAxczVlZm1RSXl3?=
 =?utf-8?B?Y3pmeUpBVVVBbEdjenhqWnN6bFltcHNNVSt4MmpOS25yZUlLdFRpMjBwZFhL?=
 =?utf-8?B?SnJ1dWNEQjF2aEVqUXFxY0JlQ3IwWWNFWERSbXo3MHluYmZuRXdoVGkwTDJL?=
 =?utf-8?B?SVUvclJDM0lGYWc3WVMxWFYwMUhMa1R3eEhEVGVZRjJBb1hONzBoeTU2eWJ4?=
 =?utf-8?B?RndOUERTTWhRVWE3YzVvYW5ZSTNEYzdBdlFGVjM2VUJ6L0RUYXZvQ2FRZG9l?=
 =?utf-8?B?SnMrbG9wbVMwRXRCVDFJQWJUTDl1eE1RdFNOSkNMOGxWOVpPSTBCVEJzMzQ1?=
 =?utf-8?B?aE5mNUtPU25hMzlqUzUza1JjT05qbEJGWTNicjdIKytyTVRPM0ZyYkVhdm5T?=
 =?utf-8?B?d2tjMVcwRXp0alFSbitvVlJ2YlBaaEQwZmJoLzEyQTBTaklDT2YzM1NJczV5?=
 =?utf-8?B?TmRkOUdsQ2N4VzJCVWpnaC8vOXhiaU5RSmFObmJSdFhDb3NiY1NvVjRFZSsv?=
 =?utf-8?B?THJaKy9ZS1F1TlJHVmtwWit1TzF6bWkxSlpPTVR1Q0l1bmtGNjhLOEFqU2Nm?=
 =?utf-8?B?ZUZKbXc4UGRtRkhNRXJMaksrZ3RuKy9YWVllSXArc2l1L1piMUlkdUdGaVpH?=
 =?utf-8?B?WnZzOCtWbktKT1BrR1Yvcmk5ZzhMbGJNcmRQMUhXMjVGd0dZZTZDWkpWZnF1?=
 =?utf-8?B?ZEt4ODR6OVEwUDUvNzlZNG9sdGZ2Y3dURkdUWlBET2NPV0YrRVM0STE1eDF5?=
 =?utf-8?B?TU1NT0M2L0xzSXpJMFdmck1kNDJ3dEh5VU5FdHFCeUsweDlONTl2dkVvYTk5?=
 =?utf-8?B?V09ZeWdsWjQrWjA0eVdjV3NGU2VWRU9XQU9XT3BLaHFlTnpaRUc2ZXZnWkt2?=
 =?utf-8?B?YkREcXNEdjMvSkluSVZPajFlbm9rS09ZZkNCanRpSnpseXVkK2hoK2x1RGNV?=
 =?utf-8?B?ZXU0aWQ3QnJSMDhEM0VGcmduYjdQZmFYMmtMK0h1QmlwRG0rSGtIQ092dXAy?=
 =?utf-8?B?c0gxTXZlbnpHZlZwcHlvOFpOdXdxcEFOblh1ZUI5YnpDNWZSWUtlVEFlWmky?=
 =?utf-8?B?RGVtQ3pDZXNJTDE2bi96U2t2Yk1PRHdkUzFBRytVN25UYWtJcWlZcWZ1Rmsz?=
 =?utf-8?B?bXVvS2hzMWZnZEhBYWg5S2g1ZmNDZ1lYTXh0ZDN1akFLRnhBY2UzQU9iNjF6?=
 =?utf-8?B?SHdoVzBaQ2t4OXdEL3ZZS1oxa1d5a3hmTU9PdTA1QVFsUTVGTHdvaXJQcTFI?=
 =?utf-8?B?OUQ1L1V5N3lNb2VEcWNTd0FScy9Iakxhc0w0clN6clRpWjVnN1J1amxIZkJO?=
 =?utf-8?B?RzVmck1aSFJXVWN1czNRVHd2OGhBOFNqaXZ5WmkwNzJzY2szOUhnOGczdlVG?=
 =?utf-8?B?NHlZTmdqVXN0SFFKWjZoemZhTmFhODVkYytsS1hFQkFBN0ZFUU1PVW1Gam5t?=
 =?utf-8?B?UXRPWmNZOXN2QVVBNXM5bDNIYXM5VWlEWnp4L3FLSkh6eUdwbDdHdUtEalJY?=
 =?utf-8?B?N2tkOUlUaWN2TENrMEdyYkE0cE15dVBKRFFhZHVvTmJyQnV1citvOHVZRjdZ?=
 =?utf-8?B?RFU0dU44akRtMng4ZU1XandNMy9xZlllbDVTYk5NTTUremIySStIZFZXM2pl?=
 =?utf-8?B?MmpJVTJiRjJ6RXRLb2ZGc1pvT1JJeDlHN3ZodndhMllSaUpyT0I4b0Ivdnk2?=
 =?utf-8?B?d3JLZ0V1am4vSTVETGlSRDJDR2pQM3RWbWJsT0IyVkpHVmwvc1huRjNZK2lx?=
 =?utf-8?B?Z1l6U0o5NFlmZnZpVVhLMjFmVlRmN3JsUTUrWjBkMGRHREFTcHdOT2V3Y3VW?=
 =?utf-8?B?ZGJFcjhYWTd5SXFBdGQwOWorUS9uZTVWRU5oMFdMRHpVYWdSRUZ2SnA4ZmNM?=
 =?utf-8?B?VmtaRXg4azJQWld1NkpEMXJsbmxOVDU1ZE9CV1QrajI4SUREVVg5MUp1Qnl1?=
 =?utf-8?B?SG8yVTJQWXdjOElNc2s2UjExaWNteHlMTlNDRzFlRlJEWERBZzkyd1pwTE5k?=
 =?utf-8?B?QnljbmxkQmNNTTFxVEdhcnQvb2x6THFRQjJHclJRR2JOV3RpMVJMeHRzUDZ6?=
 =?utf-8?B?RWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fcc4181-52f3-4bac-a20a-08dcacc9ab80
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2024 16:48:54.6797 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XF2p8WOJ+/mv/Rw9398uT6vSDKGQ+Ag1KViMol8qpiypV93+hh3qp9jaaTCCtnFPcGAKkok0KwLbrGssoaf2x6I0EQkL2u39VRVKblbfTT4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8534
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721926144; x=1753462144;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FpecZYGtY5V9DTsnKi2xuuRC1Mv3dF9gDU7LLyqXZhE=;
 b=EqSmmo+IU0DUCPgh1TRmRXvR4vL69rrvodXUO+qcfywJ9uMhBl03B0XV
 mf+MKyPiygFru+IDUaN+PBpDRBmOwt4gtBEzSDMtdI0SxyCPSOT3YyGNX
 AT//LnpJEB2sbn5phDOH8xoizkggYvUO9ep0m/qo/JsWtfLwY/DmiNdFB
 nbpWWRAD4eLo56ScxlIpQrnph8ujKqGZ+q7ndEzxT8Q9b+xJ4Q0qjOZs+
 ddd5t6NOx/DfVCQpoMbbwHUOQNpseyPV+Lok5myG+pYgsjsaF6Ukxwtm3
 6hZjuXyb/2ImmpKszEDFeMVye29K//HuGPT9rZG6D0ib1BzfgFTb9OTJh
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EqSmmo+I
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Introduce
 netif_device_attach/detach into reset flow
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
Cc: netdev@vger.kernel.org, pmenzel@molgen.mpg.de,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>, Alexander
 Lobakin <aleksander.lobakin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/25/2024 3:30 AM, Michal Schmidt wrote:
> On Mon, Jul 22, 2024 at 2:30 PM Dawid Osuchowski
> <dawid.osuchowski@linux.intel.com> wrote:
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>> index ec636be4d17d..eb199fd3c989 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -6744,6 +6744,7 @@ static int ice_up_complete(struct ice_vsi *vsi)
>>              (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
>>              vsi->netdev && vsi->type == ICE_VSI_PF) {
>>                  ice_print_link_msg(vsi, true);
>> +               netif_device_attach(vsi->netdev);
>>                  netif_tx_start_all_queues(vsi->netdev);
>>                  netif_carrier_on(vsi->netdev);
>>                  ice_ptp_link_change(pf, pf->hw.pf_id, true);
>> @@ -7220,6 +7221,7 @@ int ice_down(struct ice_vsi *vsi)
>>                  ice_ptp_link_change(vsi->back, vsi->back->hw.pf_id, false);
>>                  netif_carrier_off(vsi->netdev);
>>                  netif_tx_disable(vsi->netdev);
>> +               netif_device_detach(vsi->netdev);
>>          }
>>
>>          ice_vsi_dis_irq(vsi);
> 
> This is broken. ice_down leaves the device in the detached state and
> you can't bring it up anymore (over netif_device_present check
> in__dev_open).
> 
> This is with tnguy/net-queue.git:dev-queue from today (commit 80ede7622969):
> [root@cnb-04 ~]# modprobe ice
> [root@cnb-04 ~]# ip link set enp65s0f0np0 up
> [root@cnb-04 ~]# ip link set enp65s0f0np0 down
> [root@cnb-04 ~]# ip link set enp65s0f0np0 up
> RTNETLINK answers: No such device
> 
> Tony,
> the patch is both net-queue and next-queue. Please drop it from both.

Thanks for testing Michal. I'll get this dropped this from the trees.

Thanks,
Tony
