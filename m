Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF75F962238
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 10:21:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CC65406F1;
	Wed, 28 Aug 2024 08:21:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F4GsagL3KpI3; Wed, 28 Aug 2024 08:20:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71697406D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724833257;
	bh=bQ8HQ8c0+5OVOYv6JAnADfYFjiABWRLxcOxVmXbpXPo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tlwKEP5LGIO5cwLhJvg+n+W5Dt1jbOBT75dTf3ORTwVE9K9SkajYjVR224y/TeKjR
	 saNJ85ttEGJMVmY6sqzBdqoO3/MupC7o5k7rO1GGy2UIvrltFQCXUoOinMFDjQhn3S
	 V6TgpcMiOMA3ELckVKQvu3zTAxliRG7y8uCVx7bG5aiKgQLcFRr6I5WBAIPv524WYj
	 TuePdoH9St0M4SdMFUHcZZ66/2czPL8WceiYgAT+uB8qX3mlwq+25BBUJ6yEVd7haz
	 8MQnTAN8/o5Xnlt9W+tKgNbClJZyodImHAMlBp46GuYuYYO3yfpDP7iBPRsX+ZcAyW
	 1JkRqpeRSxSvg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71697406D7;
	Wed, 28 Aug 2024 08:20:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E92E11BF283
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 08:20:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E0DC240373
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 08:20:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HEtN1FYACDxd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 08:20:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8CD2B400D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8CD2B400D2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8CD2B400D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 08:20:54 +0000 (UTC)
X-CSE-ConnectionGUID: LrCxlQCFRSaQJM4yW0qZgA==
X-CSE-MsgGUID: n4z1GhlkT0+5tPem7zNxgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="27229501"
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="27229501"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 01:20:50 -0700
X-CSE-ConnectionGUID: pCtmj4XTTBaKr/mwNyWAeQ==
X-CSE-MsgGUID: fXnYM5GWQg6BWTaPqlJ7fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="63655443"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 01:20:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 01:20:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 01:20:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 01:20:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SOU6SHZ6fo9k5o5rqpvRbhFLMpo39JA80EPApOtVeSWFRr2/RVJHFnBdkklDM/U1rbSJrwVwDTF/bGDNt1gN7CgHYmkLpEIdiWdjUpslWFoXrQwvVWwjQQlKe+TU3Rc7pHLKOgJwHvY7Ga84tAD9X3n6vHq0HNTWPCgbeofajV1ymqqDMqSeKwa4GjfCZV6xK9DfudM24pUFAoJ62U1p2bQUmcPJ0vCVNL++z+vKB1sJwmen7XNYHOoMshRsyKvZL/icEt0qO1W3FCFbtNFKNdOPxI3ZqTOF0YZHhAXSBYdw4JsbObuxyAXR2eGTkijouhS9Zs8eCcH3fycftgVxcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bQ8HQ8c0+5OVOYv6JAnADfYFjiABWRLxcOxVmXbpXPo=;
 b=aRJIfQSXc8r0DjyJQEkUjo7C8DOqTJTWGB9Js38N3oaqqH1qh+IIOZHln0uQF8l56MIT+zPGGb2nZzR70+fRG80yWl1r85ybg3Wh509LClMu2jZikv6b0SHYU2YnznhvVWOz2WQZJMFoDB8EJkGlDP1zpNF2ortOHoegKSSjJ89w48QcPn77WCrbqsMaEYSNdKAob6hUWt2yLvf722TuV37ubbntOpntBUy02VB5h5zrCJ5d2/1t0utDV/y2gTRGYsWteK8URBXwRkCBQrWIoTJLeDpyCp8kgv66O84d+qgjd7ra6p4jAD833DQ00ZfG2jdMEZ5dQltxmukbY7YfXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB6473.namprd11.prod.outlook.com (2603:10b6:510:1f3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Wed, 28 Aug
 2024 08:20:47 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.7897.021; Wed, 28 Aug 2024
 08:20:47 +0000
Message-ID: <cca70257-b8bf-4d4f-9a0e-b5116536734e@intel.com>
Date: Wed, 28 Aug 2024 10:20:40 +0200
User-Agent: Mozilla Thunderbird
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Thomas Bogendoerfer <tbogendoerfer@suse.de>
References: <20240827071602.66954-1-tbogendoerfer@suse.de>
 <51b220a9-3304-4baf-a2fc-8da8d765aff7@intel.com>
Content-Language: en-US
In-Reply-To: <51b220a9-3304-4baf-a2fc-8da8d765aff7@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: ZR0P278CA0143.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::22) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB6473:EE_
X-MS-Office365-Filtering-Correlation-Id: 19c2ca01-7290-43e8-2695-08dcc73a518c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?endLbXEzZGM3cUR3RS9lM2daNUw2VXpLdjBWL3VnOUtscW5XUnBUR2I0dVd3?=
 =?utf-8?B?S1Z2OW5GZFNYTmFVYzJnZ2toSUp1UUt4cEsrVmk5N0NJUFlCd1BpdmJjcFhl?=
 =?utf-8?B?UCt5Vzg3ZEc1Y0Zkd1NVSnZDaXk4M01JUWg5YnlHaG5ObFVoL1lrTURBZCtk?=
 =?utf-8?B?VnBjeU82TkJ1TUFhN2ZyMk9Qb1B6RUlXeThOQmhLeFF0MHV5L0N4dFg2MTJL?=
 =?utf-8?B?WjIzd0srMWRJNnhsZjFrQU5uVVZpbG9ySEJZRFloYTdpK2QzbGtlcVIwTXNO?=
 =?utf-8?B?UXZDV1BVV3RRblN3c09RdXZxTjRBNURYMWVGNzNLeTRpMUI1cW4wVWhMTUt3?=
 =?utf-8?B?Q0x5em5oamdUNzNnZENMWXZCbjd1cFgvS3k4TWRuV09UVXdJaEhKNGNQSGdi?=
 =?utf-8?B?VnBVTkwzbzcvZkdJNzREK3RFSzBaZ3VUbEhkR29VY2JGZUhQeDVyQi81Rklv?=
 =?utf-8?B?cmxMSzZZbE00ZjZENHgzeEsxZllBQk1tS1lCdW9XT0xqMkRXakRGREZZTzZq?=
 =?utf-8?B?YjNiZzlQeENlSGJGSGNvb3dBc1YxcmxHTGVSckUrZDNIVC9EemIzYkhGUEky?=
 =?utf-8?B?NXBjSFd1Y3FYYlFOdE93cC9nbkxiemdPRUQ1VWVRbHBQVlU2WHZRMmJVTDZp?=
 =?utf-8?B?Q0hWWTRvOE8vWjNTVXhlUEZVNnp3M3h2WS93M3p3VWR1QVpHTFFLdHpmNmRu?=
 =?utf-8?B?a3UzVG9mb3MydmloQk1FNUlUY0ZGMWZDWjJTdU9kWFhaRzFUbmNUOHh3bzJx?=
 =?utf-8?B?U0xqMHNGbGNKQ3FOa29GUk56VjNOQWFQbDZiWXNGWGUrdi82Rnk5K2FJbmVp?=
 =?utf-8?B?RndwejZqZW1MTkJlYW5mbGQxVWRiaVZob3kramcweXhZY3FyNXpuOGsxOThN?=
 =?utf-8?B?amE0ZzFUZmZwQjNUMjdYSnEvMEllMEVhWnk4NzViaUVxektHSGl1dC9EUUdW?=
 =?utf-8?B?ZU5aVzg5R3lGQTdWZWc1Ym92ODR0azRTbDZuODVybFVDUWF2ZEpya1BrMDBk?=
 =?utf-8?B?T25RVEN1TnorYWlBOWhBQ2VhZnM4MzJ4NVljT3p4VlJZejhMNkNqTmdvWEdt?=
 =?utf-8?B?VHZpVmZIb0Q3cUlNQjVFajRsYnBiOWRORElSN1lDeG5PdGs2akJrTHMvWkVW?=
 =?utf-8?B?QTBaL1dURjBJYnM1Tk9WSkdFOG1HZm9OU2JQTm9SOXU5VFY5K1dlV0dXQkNN?=
 =?utf-8?B?UUhKNGpzS1dUTXFNTm1EbTYyS0UreHFIYWpEeER6VE9rWk9TTmpHb1Y3TStp?=
 =?utf-8?B?MThIdEpkNXFUR1BITVdHVnJUQlE0aEhScVYybWI0QnBvcTRQcjdmTC9vY21s?=
 =?utf-8?B?SnBFcHhicEF4RE1oQVhyS2xpaHdCN3JMeG5BNkZKeVpZdzdTOWwzb2tncEQ2?=
 =?utf-8?B?VGpad3phN004Wmh6ZkxtTHE0OVp6L3ZjYVYwdllyeHZTa1FhQi9wTUF0S1NS?=
 =?utf-8?B?VGprVmZiUjQvYmJMaklZSFpvcDI1cUlSeE83MGxWRGdkck9tWTNzR0o5Z205?=
 =?utf-8?B?bTNtcGpkQWgwcW5GOWd1SVdoTzhvWHd5THNKaHpWQ3dCTFdxMWNWVjZwWnk0?=
 =?utf-8?B?SnVhd3N2MC9EakZ5akJpVzdUMEp0TDdyU1lxaGJ1Ty8vbHhLeTdFYVhHUEg0?=
 =?utf-8?B?UHBkKzZVR1JsY05HNCtqTXh5SVg3TE5ReldJbUUrYWVPM3RmUE9Dc3VSQzBB?=
 =?utf-8?B?cVdWdlpXSXN1aE40eDBsWHkrSWZwSlhhT1JzZDFBN3JIcHJGNEJZMm00TTF6?=
 =?utf-8?B?ZDRyWStXWDJtZEUvQ1IwVFVvY094d2s0Z25ySW12M1RINFZnRHRpU25sY29E?=
 =?utf-8?B?VnYrTy81bWEvTGowdFlmQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTdPbFBIWENQOUtiV2wxNlNycElmVFVaZm9oVDhlNDcxM25Ld0JDNTVaWDZG?=
 =?utf-8?B?SEpUZktKZ1c3RG9Pc1VYUXR4M0tleXVGUjVjMmUwTlVnVGY2UlZNTUVDOEVU?=
 =?utf-8?B?MkowekozUzNTLy9RZ29MLytqMkk0ZWJqNm52TUZ5elhnL2I0OTU4NWwzQlh1?=
 =?utf-8?B?SDNtMWkyN0hQSng0MGJwbnpTdjAzUVIwczIvRGFDbVJKSGVEYVM0c2JhdGtP?=
 =?utf-8?B?Uktud0JuZ09FbU1lakNSeGRSVUgvMEVhZTIzZWlHWnQzYkl2T2xCb0FxKzFp?=
 =?utf-8?B?TWFseVNTOVk1QllBaDBBVld0ejVjdDlZU00vOG12QmRGSDNxZUJsYWF1QkZH?=
 =?utf-8?B?UW0zMUhnWEREZVRmbVYxeVBMTVpmQlRHQksrT3Y0WE5xaUZwQXhwZFBzQTVL?=
 =?utf-8?B?eVBuNmozNmd2N3Q1dlYwL1hRWGRxZUh5RzgwaGZxREpkdFluTEI3aXpBR29o?=
 =?utf-8?B?V1JnbUFjd2JxOEVERzVJZUJYKzFlOUM4WGxmMzA4YzFxazZpOENlZmhrYVVT?=
 =?utf-8?B?cUdnam15REFFWFNOcVQvODB1WndGY2tuQS9wZDJ4YTdIMGV2NERHRzFVcjlr?=
 =?utf-8?B?bzhlN052YVM1ckkrMkJJaGFVMzRSU0d6RS90VjA5YUVUT0N4QzdXaW5aOURZ?=
 =?utf-8?B?ODdRZ3NqOGtLeVRZejdnWTkreXJQY1FqK3ZtVEl5OTBOWmRCQzJBQXVSUUVW?=
 =?utf-8?B?aFpQd1gyY2M0NktnVWpQRVBvSGF5OGVCWS9DaFlFbDU4OTBsM3RqYmFBSkNi?=
 =?utf-8?B?U0c1eEcvT1lmSlVrU3BFSmtXWVRjdVlCWlI1T2QybTZZZE1rTXJPUUllUWts?=
 =?utf-8?B?em9pRHl4VSszcStKbEU1cXFxYW8wVmZOc29YVW0yc1QvS1lKcnN1VElKdFEv?=
 =?utf-8?B?TjVoZEpiSnhhNnZkdS80Q3NXMUVvdlIyTEx1VHlJRWFPQ20vWGplaUsrdlF6?=
 =?utf-8?B?dU03ZkRSZ1NOUGdRdVdadlBqcUdyczU4QkJnUnJnUVlWd2hJWnpnSWdDY1pk?=
 =?utf-8?B?Qkl1Vndlbjl3bGhWVGFsRms0S3lHZ1g3cktPcUl3cmpwSlcwZ1BwYkxiQ3lH?=
 =?utf-8?B?aDRZbzd0OHQ2L1REeUlodFpRYkhGdGM2VEJEUHg0ZkE2UTFkcVVDbVRFSHVF?=
 =?utf-8?B?ZktCSjZuNGIrV09mQ3pvV0ZFZmFJM3VXM09VYnZDQy9HSlZGc0hMWm1xUEtW?=
 =?utf-8?B?V0s1a3o5TXNtUDltV01IdU1rYXA4QmVxeXdZNGp6cGtyRGYrVVJMLzVVL0RN?=
 =?utf-8?B?Vis1bnZSYW53a29EQmpxYkVjZXZWSk8vdUtKWnFYN3NvblBKSTgybnJzQXZr?=
 =?utf-8?B?M0hWdERaaG0xamkrRjN2eFJtSjdhTlZITkdDdlJlY2Q4dFRUMzNGQ2IzTVlM?=
 =?utf-8?B?bVhWdlQxNWVEb0hlZ1k4czQ5d0dJOTZybkkwMEEzb2tFSFVPS0VoS0UvRmhO?=
 =?utf-8?B?alcxMGRBbU91QTdLMnRHUUkzL0ptMmpVcVZrWEVmY0tuUE9vSWV4Y2lBSlAz?=
 =?utf-8?B?K3hCY095SHRBUFVzbHAzVjczZ2dJayt5LzdST3NNeHVucXZCY2FHUjh2Y3RS?=
 =?utf-8?B?NkVJZHY5K3RramtmMlZqZ1J0aDY1cGJ1T1M3TXZvSUE0TG12OHhmM29mM2x5?=
 =?utf-8?B?RUNaaWtFQ2ttMDdxVzlRUnFaNUt6TUxoeC81S1kyUVVuOTAwMGVxZ1BsY1ps?=
 =?utf-8?B?a0gvMzdTbnpTUmtydEdHclJUcnI5MVpBSUlLS3BlT1UvdlpZNWtla3Y1cnJ3?=
 =?utf-8?B?RmNETS82ajZ5eXI5U0FFZTZGcVRCYnlDSzEwYUJHTFBVWXh5cDAyYkV3UmZN?=
 =?utf-8?B?N2RvMzBDL3k5WGVFVU84eUU5aHQ4ZVRueUhncFlNQmlHNDc5YmViMmQ1VURn?=
 =?utf-8?B?SmNDY0lGZSs2M1plVVVIMUJIYTdGZjZQUkpZWXNHZGE2aExZZ2h2QmhlQlIx?=
 =?utf-8?B?K3UwMllCTzg0b2ZQK3NlQXpYOVFvUXJBTXUxNkpnRUF6MGtqY1Q5WkcvTzhj?=
 =?utf-8?B?akp5K2tlNndDemxXSUxMZjBmMDI5Njc3a1BNcldSOHdBNXY4SG5OWG1QSHF3?=
 =?utf-8?B?OXpod3FVaGY1a0xGakgxalZQV2FUcVZKOGM5Tmg4QmRrcitvSHdQMnlweHpE?=
 =?utf-8?B?WVRrZnpzSmk0OGhGbW5pd0c2NXE4SUtkUk1VNUZ4U1NwZlZ5Q1pWZGRNZFhj?=
 =?utf-8?Q?a3ZcFMymUY5jexly91Btm1Y=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 19c2ca01-7290-43e8-2695-08dcc73a518c
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 08:20:47.1821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AYhk4cfXZ7KkPyXeymdvoMDHpiiFQ428vQzRoJyKpMFe027VoytGakfBcVpxGrcT+ADYfbmAuW6uU2dP1kSe3X9QVizbSyeJjHMh2SRWJ2s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6473
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724833254; x=1756369254;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9IiuAcGGstkILhpU8LHxJXuTbXTkG7QIuNQPGFdEohg=;
 b=gzBKUZab6jo/Pu/WmGgeugElMslHT2zeblSP+MNYFvX2JLDM8ProWlM6
 SB5zgLDVaiBdbGlCfnDve6PfplWsDyS8RsrEfCID+j2ds3UtpeQLgDzG+
 G6+G9bPbFQfO8VSs91KXRPWCoOT2YZQsRLL9rB6E8wQ87h/p5V84DZx9M
 abituevrbFX/AyhVARX80pG/BuevLt3soMhdSFiYjO+lPryIzNmMiFS7p
 3OUWHioC7r8rQ/w9HOVnNQW0kDG8kaUOCc2spRFQEKz7yvOODiw0lAVmh
 b/eN25F/55YIuTcGYi6M/zvu2oCHbL5Ra85qLa6DjrLOjCi911CYqZ90T
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gzBKUZab
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ice: Fix NULL pointer access,
 if PF doesn't support SRIOV_LAG
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
Cc: Daniel Machon <daniel.machon@microchip.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/27/24 11:52, Przemek Kitszel wrote:
> On 8/27/24 09:16, Thomas Bogendoerfer wrote:
>> For PFs, which don't support SRIOV_LAG, there is no pf->lag struct
>> allocated. So before accessing pf->lag a NULL pointer check is needed.
>>
>> Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for 
>> SRIOV on bonded interface")
>> Signed-off-by: Thomas Bogendoerfer <tbogendoerfer@suse.de>
>> ---
>> v2:
>>   - Added Fixes tag
>> v1: 
>> https://lore.kernel.org/netdev/20240826085830.28136-1-tbogendoerfer@suse.de/
> 
> Please see my reply to v1, unfortunately sent at the same time as your
> v2. The fixes tag should be different. The check that you have
> introduced here repeats the check in the only caller (was not effective
> though).
> 
>>
>>   drivers/net/ethernet/intel/ice/ice_lag.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c 
>> b/drivers/net/ethernet/intel/ice/ice_lag.c
>> index 1ccb572ce285..916a16a379a8 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
>> @@ -704,7 +704,7 @@ void ice_lag_move_new_vf_nodes(struct ice_vf *vf)
>>       lag = pf->lag;
>>       mutex_lock(&pf->lag_mutex);
>> -    if (!lag->bonded)
>> +    if (!lag || !lag->bonded)
>>           goto new_vf_unlock;
>>       pri_port = pf->hw.port_info->lport;
> 
> 

thank you,
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
