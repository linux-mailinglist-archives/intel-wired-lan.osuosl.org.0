Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGlbGJK1xGn02gQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 05:26:58 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2345C32F049
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 05:26:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A91F360663;
	Thu, 26 Mar 2026 04:26:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CCt0w5pLDJQ2; Thu, 26 Mar 2026 04:26:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18CC56066F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774499212;
	bh=5GkiD1SZ3aAhlFpBHBVTPcOxxU5/E2pIt2O7Fo7mRHI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JIQ570hpI9F4Ms/IpoUR3SpEGUG/9owd8fsmqc0pWjK2sqoJQwOHdC2iSWn35TPTm
	 csAvZ4pWcQsAIFMOmAc/T7QbWz+eja/FRlVb9xwNlaffoA2StPaA0gjpstip43t0s2
	 prYKG25nZ4RFWc3aduolj/OWJei4fF7ihd/zrQCxH2mvWhYx1q9kJMnNfhWcNhLVE4
	 b3FxoBs9P4vP9Z4df0n/lkFssjBy3Ora0PAYOQgaFKWA809J3EFCLo0qy7dNxYJncT
	 /IA3rga+ZiutUmUv9doyce09E5jQwU4Hb4m5MKEWajox21a3KlnHuQI9aqhSDP8FIL
	 Tc01bH5tjCQdQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18CC56066F;
	Thu, 26 Mar 2026 04:26:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 60199353
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 04:26:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 51DA44067D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 04:26:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6nszoTKDeODx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 04:26:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 384CA40654
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 384CA40654
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 384CA40654
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 04:26:48 +0000 (UTC)
X-CSE-ConnectionGUID: iHieRnVzQiaycVIqKbnVaQ==
X-CSE-MsgGUID: seLBjkZZRJyU+vxAeyNIyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75511933"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="75511933"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 21:26:48 -0700
X-CSE-ConnectionGUID: KRAXsA2QQBG3m2L+je7sng==
X-CSE-MsgGUID: gsuQpht/QfCFsJV9uw8tsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="221993852"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 21:26:48 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 21:26:47 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 21:26:47 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.69) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 21:26:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bni7bQF7xclYPXAslIeyS5ECj//bBcro+CG7vtSUc/nyBLyAjak+IK+4cdQhdFVq1GprNUQeeA8rygfrhGFzVScMK15F2dU+kpwu4MuaCzq2TehO6XZOrpcRLXNNQn9glNd4ww65l9iHZUcfPIR9xrqVorNilDw3BhZQo2PVfg4r3Y68KGY0Zd490DKRh6wgCCtCD31JrMF68wgxnPjThi50d12N2ozjMDMM+Sj0D8AKla+LtaPtiJ0k1gosaToW8ag3KuTvjDKaPd/7HxU/HfrOz8CdYltVsnXNlCpzVbnQxZd0EgrB7/37CfKuG8RHDhu/aX0rR4yX2zzpPwR3Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5GkiD1SZ3aAhlFpBHBVTPcOxxU5/E2pIt2O7Fo7mRHI=;
 b=m134xCZ8ZWMtrX+kbby2p7DYDrV3XaoIrz2zkwk99Ml37846BHDgC49Na7tQuSgL0Iuae508dajEdvWru1rsceCrZjbpqS6J3/FhnyYskLzgg585pVp/fKMz+haw0FO4WgV6aORvj9BHYJxgwgdj3/DgeeDWuQKRB3r62UVCJ4ZbykQZhkb84CGhzwf1QrqKboIDlYdvjutuDJxCxKjqn7UcYvdfvOnOwTeghvKFlXDpYWEUd1cj5uaaRsnmpx2hEqUl6ylBnRxKXqsHozcuhph4+d5Fj5+fnBem5UeWlmcAB/fqhTpN7wTDFhDzLFfD6LspkMMFX8qhY2Vu823jAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:99::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.7; Thu, 26 Mar
 2026 04:26:44 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 04:26:43 +0000
Message-ID: <1f1c494f-1603-439e-9181-a63f454da1b2@intel.com>
Date: Thu, 26 Mar 2026 05:26:39 +0100
User-Agent: Mozilla Thunderbird
To: Bart Van Assche <bvanassche@acm.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20260320212824.264252-1-bvanassche@acm.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260320212824.264252-1-bvanassche@acm.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU6P191CA0023.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::17) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CO1PR11MB5154:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d0e32ec-0658-43ed-18f6-08de8aefe277
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: r81yuoEvAzvXaRC5SSxK+6uotgu7epS6/Bku+w34+FVf9NgeR3HPBIDC3uU6wEKQJcf7FjmYaz8jxOPMxVGhwwMQBhd8La4EDfuvFK7+df5Rjo66MvQPW1ozYW0XbLZwl4hgMNGOYyonp2YPsyNEME/aYXewgk1d8QPWsQhOEiJKOgilW+mcsVhH6J8phF0cZG61md4WC4sGhRXJlV/966CofjMpTebHpqPdWHBqMqQWIhAtl+bASeVKmqZv4v1FfCWbhU9WZwaik8bXDI/naAeoG0FVh+W/jQH8q8J//a5mS+c8PYTNTpRz/2/qRvQWuNT+WYUbH0M2QbZvYEWwKknK1NXfaDjl1o5KF/J7Y+2TeL4qtJKwgF6gGTbHcp/1RqtCjGM/ryPSa8yCSn/uP3TBsKs8PtyZChrJNOuOxFL3YTgwEj+CMz+zh8bnDR9n8FIQhDey+50wqqd6ub3jAsCkYVr+r2pkp7VNF9zqA4BXlhgfG55MKJWnatAAVgLgqTrGnUVUyJY69o1y2BImLJliZAprjTArtNwQ4xx1BqmbgPIcXNypF70heR80nptIZpmFl06L90wCT/OhfE6/PARcaiTkkT2XPlzj+/qhLC+W0xV/4/WGbU+ii51kX+zYkhrnli2A1T123jgJPRAVah2t0mjsmzntiyo7pQxiK2a0jpQdJlphNFycztCgdTJL3wtiqcw7/zgkF4QViEuTxFpTiLBVp+nQnUqyhfGdlBp+yvNAaGRf/W5jMKDSS5NU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QlNPMXk3Ykw1V2NSekV4c1l4cjF5WW51V1Q0SkNBc2l2U0hSVUVmMGc5ZkxK?=
 =?utf-8?B?VmFrbnB6NmloL0lUZVNkY05WOUlkblJvNWZncUNtU1JzZ25BQXFmakVhZi9D?=
 =?utf-8?B?M3hXbnVwZmZJbkxjd1VFMXltN0ZTQURLZnVqQWZpMHdhb2Fqa3AyRUl4MHlT?=
 =?utf-8?B?TjBYWFB0ZkF2YUxxWitHdFg3RHdsVGwrVUNFQURQSjFSOVA4VjBrTkIrbzhS?=
 =?utf-8?B?TmdmSDdwNXdCZTBlcjJaenJvcldxNnpSYXByeGhsa2pLNnllc3VCcmpsY2cr?=
 =?utf-8?B?cFVOVGVCYVZkY2s3ZGRnYzA2bmMzRll0RWpYZ0RVQ01wNVcrRk14OFVILzg0?=
 =?utf-8?B?ZWthbmlPdVgzVVBKSlgyMVBCS0J4Q3kvME9qb0phM2tsUHNEV3RDRnNUZS9u?=
 =?utf-8?B?SEkvRytuL25aKytuVDFtZWhwSmNwN3IvZFRSbjROMmMyNUFOenNPRFJoaitq?=
 =?utf-8?B?NjdSb1ZZYUF2V1M0eXZBZnVOY09VT2ltR0lRSmhORGZCbHQxbFZFMFE5RnJC?=
 =?utf-8?B?REFLSnY3cmY4RG0wNnAzMjNENUUzTUs0Z2I4Q3JXZ0dsT2ViYVpNTTNCQjdP?=
 =?utf-8?B?Nmsyenl4UEVPUFRiKytQb3UweTZYV2kvejJCWUVCTTFWTUlOY1Uxcjg2ODkw?=
 =?utf-8?B?VENjNDJHd2RQeXhiOFU2TmFhQ055VnY0Ny9hcUlRR1dhNXVUNWthUXdabk9s?=
 =?utf-8?B?bUJxU1ZBb3VhK0N2UUdxVzdFcmNWSXBJaEZnV3hXYmNYNnFyZmx6YU1kL0ZC?=
 =?utf-8?B?eTY2ZVhrcUVRWEVWRHBMYnZWcm5ZeXZ2V1dZL0JnRkZBa2g1WDZmUjBGclp4?=
 =?utf-8?B?Mk12M2lWTldnbWZXTlYyTGlLQkllZTlaVUE4OGlHcHd6cE1lSmxQa3IwYkxt?=
 =?utf-8?B?U3orQytibzVqWlVoVDdrZFBjMXBMUVVwaUhxOEFYKzEzcFBwQ2EyY0tQVTFS?=
 =?utf-8?B?S2JZdzBxRGJUK3lWbC9MTHBISkx5bUZSZ1ZNRkloYkRpWjRLcEtRNDY3cHRj?=
 =?utf-8?B?T1JONStWc0dwZ3AycmEybG13WkZSK1hlbUtOYzVwSldYSTlXZSswWE9ZQm9s?=
 =?utf-8?B?MzdmeERFbGwxcDJYUEpyZm44YzVrKytlejJSYlkzWUZkQ3NhRjUzRUFsQmdD?=
 =?utf-8?B?U2NEbUxnbGdCenRIWkVweXBkc2ZJSmlySU5jU3BuQTVtUnFZQlBiL0c4dklh?=
 =?utf-8?B?ZjVGSDBuclNLR0M3UzlKRi8xUzRuaXV1bjBmVC9ueTdhSUtMVHc3UktPekdS?=
 =?utf-8?B?cTZhaTFlMnFPQVE4aUxlK016ZzExSnJyVHh6NUsyem01ekE1MU1HU255aTlC?=
 =?utf-8?B?VStaRTdRRWRiMldlOSt5OG1RL3UvbHZ1WEhHNnB3NGdpTUhZV3I0Q09LVUVk?=
 =?utf-8?B?T20zdFVqREhqM0tSalk0M0pUSGdqWjVQR0lmRHZlenBSb1pHcTh2RTIzRlly?=
 =?utf-8?B?TklDaTdMY3JYMlpBQWwrcnRnWDI4eWJwZXA1SnBWdGhjbFQwekxpZGlpaXZZ?=
 =?utf-8?B?aXVqWC90WUFvdit4eGNxZVoveXl4SUZrOTFHbzFNWVc2L0xTdTVmamd6WlNF?=
 =?utf-8?B?cFNhNVBMcS91TUZ0bnBrdWRBUkVTYmxGNFFmNlUrV0oxOVpGZDJzbDRVM0d4?=
 =?utf-8?B?TDVsL2lKS1p1MS9oK2p6VmVidWRqeTJZeDJkaUFRbnFXQjRkRzQrQVgzamt1?=
 =?utf-8?B?cVJEakFzL25iRy8ydnlQSHhXRWNrUHJTdyt3S0hLQjNWaWEwSzlmUHczRkZn?=
 =?utf-8?B?WHNWckVjQWdUSG9tQ0ZrZUZDaUhsZ2orM2M1ZGRXSHBjK1FvUEl6WTArNWxB?=
 =?utf-8?B?UTJSdFJob2hYNFpwclVhTEhMYlE1Z3BLVjJLKzFteDJjd1lCQmRDWVBwMXdt?=
 =?utf-8?B?Z3M3eDQyTERqUzhwN2M0aGp2NDRKNWwxSTA1Ym41N2QyUFl2MENqUlNreVpI?=
 =?utf-8?B?Snhid21NYUd6QXlHaDN4YXZ4VEpGZnhYcHMyTmF2ZCtyTEZoU2k1NWYzWnZC?=
 =?utf-8?B?eEFtcTd4ZEhKU1ZZMWR6akRVc21nWXR3UUJ5MmoyQm50WW92K3Z1aTViTG9Q?=
 =?utf-8?B?QnM5aHNKZjVoRURzK3JsYVlNVUZLcGNtREI2SEVNZjcxRzByMTlhcEZVbnM4?=
 =?utf-8?B?WFJxVTFRS1crWEltUGIwQzhpMktQTUJUenZsVTVCNGE1YzBNMTYrMEpiTFY2?=
 =?utf-8?B?RUhkalByTXFaNFMwbmNISWxxUGNQRG0yanFOVUZFRnY3TlFoc2lWMWhFRWRM?=
 =?utf-8?B?RENPcUo5czBxdm43a3dUTlE5YmFYVlVFZ2kvcFdxTWR0ekd4TDJYVXJzbDdT?=
 =?utf-8?B?UjNPbmxXQ1lDdXEydWdmTi80SzEyYmpObytxTEdjSG92bE1CMG4rMFVuRDA0?=
 =?utf-8?Q?8OvK/ruDrCIk0cWo=3D?=
X-Exchange-RoutingPolicyChecked: VF0U2ynBAtsUWlq+UReNP/OIfvNphIeEPHJ+JrDbu28s6vI0WRvlZwo2TVGI4nZxrDRnEGv+hENbNpd97GDVS6kL/pXT4+n+29FHaHBfeEA13qB9zSAUB83t77Be2Nf5Uhi2isRDshq5ZMRStbQY4sPCPtR+NcJoPho0oTZSvMZkppV23BPnpH1qKSoEioh4BuAyHq9Dc6vwZw7jdYTvngdF6L+TzGspapv8y+Ioox1k82JdGHaK6rs97ASD2oiig9qN/WGmTwZC52grTRLqJCMyR5K/ZB6MbgV+6IJ50O76DY0Fj6PKAjW39fDSG7ZKSAB7CKi4LyqMDHERMv49Fg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d0e32ec-0658-43ed-18f6-08de8aefe277
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2026 04:26:43.7325 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FiQ6eXfFrn8yrAw2uH/KPR/6HBGkXKLH3wnBrPUp3c+NnvpluhVyIN2Eq18YD/nviWZ/3SWCRiu1zlqX+W28WVKYAQuBGI/esrDgLfGGo3c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5154
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774499209; x=1806035209;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y4OyCNUsuTula5GSYX9L7BSceHG7Iaa0k1RVzXCfwjw=;
 b=BKQs5Uv5NSs6MfxgNyS5odGT1zrN6y2KsWWbCaZ17/bCqTMNC2rIjZH0
 17IBXefT9vpBV+vWTJWhLX7flXw1a0OEcGVkEUQ1pzjfce2vW/RJoh/ob
 bz0GZmneEYR8x0Q+veYjILdG1rJqqUc5k2cC62Vyg/RXlRYJwLE3jBuBx
 C9g0rqBBJ627WCpj4ue0BsSqqmFYNRuOTN+GGzUQxGpAoKiV+45zvbpmc
 cw1TlSwoGxrU/spjMpBy6Tsm2R/iMKBx1tdWHW1eEjLcFJ6Hh1lmDE/+F
 ADprq4EDEVHPY8N7S5NbYV5913mFFnbI9FZyNY5so21dXl3DzAYJG4nwk
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BKQs5Uv5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix locking in
 ice_dcb_rebuild()
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bvanassche@acm.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,osuosl.org:email]
X-Rspamd-Queue-Id: 2345C32F049
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/20/26 22:28, Bart Van Assche wrote:
> Move the mutex_lock() call up to prevent that DCB settings change after
> the first ice_query_port_ets() call. The second ice_query_port_ets()
> call in ice_dcb_rebuild() is already protected by pf->tc_mutex.
> 
> This also fixes a bug in an error path, as before taking the first
> "goto dcb_error" in the function jumped over mutex_lock() to
> mutex_unlock().
> 
> This bug has been detected by the clang thread-safety analyzer.
> 
> Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Fixes: 242b5e068b25 ("ice: Fix DCB rebuild after reset")
> Signed-off-by: Bart Van Assche <bvanassche@acm.org>
> ---

thank you!
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

> 
> v4 (this patch): Changed "[PATCH] iwl-net:" into "[PATCH iwl-net]".
> 
> v3 (2026-03-20): Modified patch description. See also
>    https://lore.kernel.org/all/20260223220102.2158611-20-bart.vanassche@linux.dev/#t

this is a link to version from Feb, I would expect to see "v3" link
here, not need to repost to fix that ofc

> 
> v2 (2026-02-23): Combined the two patches into one patch and
>    increased the amount of code covered by tc_mutex. See also
>    https://lore.kernel.org/all/20260223220102.2158611-20-bart.vanassche@linux.dev/
> 
> v1 (2025-02-06): Two patches. See also
>    https://lore.kernel.org/all/20250206175114.1974171-16-bvanassche@acm.org/
> 
>   drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> index bd77f1c001ee..78ded6876581 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> @@ -537,14 +537,14 @@ void ice_dcb_rebuild(struct ice_pf *pf)
>   	struct ice_dcbx_cfg *err_cfg;
>   	int ret;
>   
> +	mutex_lock(&pf->tc_mutex);
> +
>   	ret = ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf), NULL);
>   	if (ret) {
>   		dev_err(dev, "Query Port ETS failed\n");
>   		goto dcb_error;
>   	}
>   
> -	mutex_lock(&pf->tc_mutex);
> -
>   	if (!pf->hw.port_info->qos_cfg.is_sw_lldp)
>   		ice_cfg_etsrec_defaults(pf->hw.port_info);
>   

