Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 053DE8C8197
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2024 09:42:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B4B6612B0;
	Fri, 17 May 2024 07:42:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lJ5sJRKSOqRR; Fri, 17 May 2024 07:42:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4E1260726
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715931752;
	bh=xgdvx1ogW/c/jaQYlFEj8hoifLqMK6xfGCvts/U7Ujw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dxX2sfdzs+NsQpQb1DmC8PTRLj8PjVqLiSBjev0UJJW1rKp+YEIHQMpez/DmtOTA5
	 q+8q0pv64b+N4l1hDfyu+de+MREgDTkGtE5+Mg0BHOtKs8wVyiNxrUOxMd8dOHR3vi
	 wC9oz0TnXVIjcQBdaiOlcJX0jOACeeQwOJFpDAFnOQduzVjISHlbDDYS+VJnqQLZNt
	 9cUTT/sZ/8YdMOaep60UXaMysaOXIcVRa+UvC+ifLF454IRFMtRIkrSFZFAWT6j7RU
	 cSM19Mlj70V7nVbhNJ6N2/vy4DZuEb367yG6qnVqmttfssiWQvwrDCgm8bDq+9HwED
	 7yi1lbKt9larA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4E1260726;
	Fri, 17 May 2024 07:42:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF53C1BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:42:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A9837839A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:42:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QICjXXKBL540 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 07:42:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EB5BC833CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB5BC833CB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EB5BC833CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:42:29 +0000 (UTC)
X-CSE-ConnectionGUID: GcjvxSDASgWu+b4uwrR3lg==
X-CSE-MsgGUID: O40Si4v1QkeS7asr9E3ANQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="15918978"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="15918978"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:42:29 -0700
X-CSE-ConnectionGUID: YlFfyI42Q6iXK6qEV83/vw==
X-CSE-MsgGUID: t5j2JSXSSXSRyhyr+PWkAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="31804449"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 May 2024 00:42:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 00:42:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 00:42:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 17 May 2024 00:42:28 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 17 May 2024 00:42:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OcJqpfi3zmSgeggwUjlLn/pqHl87pBzD1Bz+kUF8d4x5yQNg/39B+q6RBZ3VPjSQfclWy636QBhFarNi1GjQKcoHkOs19GCWgoxp9AYfzf0iyRxC4L97qCyuinSdQb/8wRO31pGKIcBQba3/x9/QrLCodF+8BD7Eag9v0ieqWpZ+i2KPE+FA+VfoMeb468rmLv4IXZCdnSEuIhOv8qolTPUa3uStaugFCvyBnCUl8CDJcWvUszFJWcLqDuQIsSP9o7iMLlvuBu2pcFx0zSQlBqlhOuxeQTFeVy7WouxZ24qJDx/+/s92EZa+sOfkW/XCsJ28wXkgf1LvQydBOZK+Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xgdvx1ogW/c/jaQYlFEj8hoifLqMK6xfGCvts/U7Ujw=;
 b=e1xgONnJ2GhNd4tf1lDb8jCLlioGZ7+iv8Fm1dWoXBIkceke3ZlyreUHM9pp/gRGpBYxd7b/1IMJ4urL79Hs+KNMJ92RXiVJTmPB24zPqPYfKWp/gmZGylK+PzGFXVK8dnP61ePB0FNc5bThQtdQAi1bEuN4jYMqVjDSJD3v5U1dm8Xkf+vCqyBM9NGgNdQdISg256d4HUkdCsQExSW+uhvvtFjA21psLILNSTyYttSgjNRItJPW6PNDJcP0J3esXZMBO0ckY6wuzhSPOQoZd3nECXXMW1RdpijqcjgOiZ9C6uDNvlyVLOVJnwjAc08LvFCGWttSwjUatcAY2RIGkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SN7PR11MB6701.namprd11.prod.outlook.com (2603:10b6:806:26b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.30; Fri, 17 May
 2024 07:42:26 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%5]) with mapi id 15.20.7544.052; Fri, 17 May 2024
 07:42:26 +0000
Message-ID: <ea271756-0da9-4484-b5ba-933cc7f85d45@intel.com>
Date: Fri, 17 May 2024 09:42:22 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240516140426.60439-1-wojciech.drewek@intel.com>
 <20240516145627.GB443576@kernel.org>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <20240516145627.GB443576@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR06CA0196.eurprd06.prod.outlook.com
 (2603:10a6:802:2c::17) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|SN7PR11MB6701:EE_
X-MS-Office365-Filtering-Correlation-Id: 856a4b17-1eeb-4047-ee09-08dc7644e5a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RlhHOFQ1a0poNCsrdDFicXBDQitDaFZMdmxWQ0dxekR4NlpHck0xS3hLL2lq?=
 =?utf-8?B?VURES2JwV1VQdDd3UzlFVFg5YTU1VjJsbW5WemVZTjRHbXpVNFFrOUR6Nmkz?=
 =?utf-8?B?MUxpMDhCTnlNQW1pVmszUmNTckdKdkVKTU96UUxObGxjODlZQUNzY1JadFY1?=
 =?utf-8?B?OWtOVE1LVVZhRmhSS0YwSDgrQXhMZ05jelJFZ21IaWQyTno5cnlvSmo3TlBB?=
 =?utf-8?B?cGdid3NhNlR1VkpnRC9oWlJvbDZEQkxRWEltZmJMbi92MFNpdCs5aWJRck01?=
 =?utf-8?B?aFBCSzB1aThQblBLUmV1UWRLSmw5NSsrc0h6SDN0aWE0Y2hpVTlrSnl2eGZT?=
 =?utf-8?B?cnhOL05vMFRINVJsMFUxZXdJVE00M1R4cllHMW0razJxMytKSk15YnJQVlhm?=
 =?utf-8?B?R1RyNG85UzA5bktlbmh5SzRnY2tpSjEzNzVwcWV2azR0UjlWS0I5SW5CYlUz?=
 =?utf-8?B?SGltSXpwTUVoZjZzZ3RTbzB0YVJ1YThTRTZ3YWtPT3lPbUtXeHhkWHBRQUgx?=
 =?utf-8?B?Tkk5aHF1WjNSRVNBNkJsZjhjRXg1Z3pkRjNIMmFwYjg1MGk3QldQR1ZJOE5E?=
 =?utf-8?B?OGtUNDg1TU1HeVdvbmhqaFdQeGNEdFZhbkx2QklUVnkxQTBlMzRjUjlaWDAr?=
 =?utf-8?B?d3lLSVpXbVFOeUZXYXpMTEt0azRsWm1WK1BJY3NSdTdNRjdKd2V0ek91c0lB?=
 =?utf-8?B?Z1FSUDc5V0NYb1hXVkFmRDRxbWI4elpkRitYN0xucUowWklIOUszODhja2Fv?=
 =?utf-8?B?bjAwWitwZlNjZE1rdW01VWx1V0R2TUk3S05ORk1vQk4yMEJ0bmxMRzhaQWtH?=
 =?utf-8?B?WDY0Mjk0U1dUOUIzL21KamZESE84MTFtc01FRS92NmtQTlQzdXlDL1hhVHcz?=
 =?utf-8?B?aktjMXFLU240ZEFnTlMydDk1V1Z1dUFkYkhoMGYxZHkvaUt4ZlhHTUp2Q3Bz?=
 =?utf-8?B?NXlzQVFWNGFjQnJOaElGRy90Vmdjdmdtb0JSTVRBYTJYTFVRdjdkN3FkQ042?=
 =?utf-8?B?ZGdyMXk0N3JJSlFIbi8rTE5Fam94b1graEtZaDM0REVzUUx0Q3FQeW9SaHBl?=
 =?utf-8?B?Uy9rQ0xUbXpjTVBNdi94cWNZdEd4d2tmaDhYb2Q2clIzTlJKQmpuT2xJaElu?=
 =?utf-8?B?eTQyZFkzTVNJdUFQMG8rU0d4TUJUUWlOWEMzeE9lUUZJNTN2dDRoVGZCeUd3?=
 =?utf-8?B?Vm1uMWVCdlBUTTRJQWpCTERDWmQyV1M3WUxhOFFYQ0pXc1gzT3Y4Qm1CYlk2?=
 =?utf-8?B?QlRRc3FRaFFpcWgrNWVvZ1VSTjJ2QTRyVjJoZWlLUXhrQUZ4em4vNzY3S09K?=
 =?utf-8?B?Vm1ubWt3Mk85TzgzWVdPb2hXTjAyUUFUVkVEUzJEZElwemFtdmIvejFJc0ZB?=
 =?utf-8?B?SG1vL2dhR0VFM1ZtTmNzMGlBVGVTdUk0VzdaVEhrRTFrRjBVNk03WXNrWERJ?=
 =?utf-8?B?RWlKVTM5bXNWSnYxRUhzZXFseGlnY3hWMnZiS3NkVWxiL0ZYblNVWXhyNHV0?=
 =?utf-8?B?S3RvT1A1QTR3QlVLNXgrOXFmcSttU2s3N2Q5dVJhVk56R3JOY1AxUExneFRh?=
 =?utf-8?B?WElxZ0JHTDNCczZxdFF3eWFrbTllTFltN1o3VmNlWDE5aWtQNGhEaE0zWFM1?=
 =?utf-8?B?ME4zWVBoYjlGbG5HSWgxNzJZSkdEbFdhT3liY1JOZno5ZDRlalFIYm02emRp?=
 =?utf-8?B?c2dSc3EyMk50eTk4TGxSU251S0tLemhGcUtzSmZid0tEY0NUZWhIYW5nPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZG4ycHJHM3Q0MWdCeUhib09kdWl6Qk5LRXVaU0l0cGJzS0w0MW16VFZCS0U2?=
 =?utf-8?B?K1l1b1hMVDhCODdXL0tMM3cwbU9IdGNhK3JjdE9oSFFtNVpWS2I3eGxmb2FO?=
 =?utf-8?B?ZnZ4UTFyVm05R29yUGpLaVZVUlkyeUl2SVBadHV6d1FmcHMrMmdaUTZTaWtz?=
 =?utf-8?B?cEpsV0tuVkdDTElzclpLazJzcy9aT2hjWXVTakRMNGRYd3cwazNzT2p1aHZO?=
 =?utf-8?B?Wnd5TTdrR0lxRG0zT0tsMStEZUtVRy94Z3VnYlNYSEd6a25yQzJUQlh3TGc2?=
 =?utf-8?B?d3NUMG5HZ3NwVnRCY3FLaUdmOTFxVy9iZHRCbXR6RG43R3dlQm1XVk84djZF?=
 =?utf-8?B?T2NWUFpXc2wrSGNsWmNOalUyajRFVXZoWGZFeklWYVJtQ2lxMXVzOVVVUmZP?=
 =?utf-8?B?dWxsMjlhOTEwZ3EzR3ZDbDdxdjd6SlZlV1FUZkdKZVZIVGNjakp0N2ovNzBv?=
 =?utf-8?B?bFBPdWcwd3B2L1VOSDdTSXY5d0hVRlc3VVZSYWxGTXptSWRIc1lacXNzQm42?=
 =?utf-8?B?elRRVEwya1ZzNTYwRkdNSlE2VmVLNWk4OXR1NW5WNXNnT2U2TnQ0anF0TVkv?=
 =?utf-8?B?Rmo0VDdWRTRWVlBscnBNMTUwVlRuWlpoVklPNm1TV0Y5WHFtV3FHWVczN1Nx?=
 =?utf-8?B?RkVycHFzZ3l5MzhLN0Y1eVkvVDNBbXNTY1dXOU5pM0N6VnVXQnpZSmJzTEZ6?=
 =?utf-8?B?aU5HazNPa0w0bG8rMFA3ME9UWWFieUo1ZUNmeE9TMTExbEZOWXVLUDl5NDc5?=
 =?utf-8?B?WjV1NWRVMFlvTnlTSkUxNU1FcDNuM0FLcXVWMzQxcVlFNDFtS2R6bGVZdEtR?=
 =?utf-8?B?MGRKOGpnOHZnaEFaYklKWUpRQkJRZDN1Z2w2OHJHVTVFSTVrdTc3eXA5UVVL?=
 =?utf-8?B?cnVJL2lsT3dwdWkzRnk4S1J0NElhanhPMmhGVkYrREZkcngrdG9uaE94Y0Qw?=
 =?utf-8?B?VlhaNzIzNzJSemFEKzM4clBYcE9sUGd0Uk1Rb0JYK2dPNmJqU3FYeXIxODFJ?=
 =?utf-8?B?R0tlMTFaMjNiOVVSN1hsc1drekJCWVBGQ2Niemt4TVBCRnpxOUNrV1JOd25t?=
 =?utf-8?B?Q3R2eHBrZTRocEN2OUFSS21jaVJQdW1VSkV1ZU1hYlcyVWFIRFkvMU1YcDJl?=
 =?utf-8?B?VE92cnQ4MVl4T0tEc0pOWXd3R2FqQ21ON0VxZzVWQ0ZjR21zKy9SQkNXcUt2?=
 =?utf-8?B?aGFoMVBYb1JROWFPZWF6bDRTenhTUjJvblA3ZnlyamFaNTJZUFhiQ2dDR1Jx?=
 =?utf-8?B?R2M5aXFzMzRSZ1NHNy9BUWVGRmlBcnhoWW5lZTNJUERHaW1OMjh0d1NHNHAw?=
 =?utf-8?B?WGQ3TEc4ZXMvZnRUQ0JaWGdpUlB4b3luVmRLeTlsN25qdVZCMkc1elpDVnZT?=
 =?utf-8?B?TVQraEx5NGpzbWdzT1p2bk93dTlvemRZbElZNlVtRktJak9LRjZGSmJVQ1BU?=
 =?utf-8?B?Nk9QWGc1cncrUVo0Q0VhcDhXZ3liSUNwWFY0THJNQ3JST2JWazl2MnNneG8r?=
 =?utf-8?B?TnVSS3JFS0N1OUdWT2RhRHBhdGpSamVpMGNMaDdwSCtqd3RrUUFqV2syVjFu?=
 =?utf-8?B?d2h5VzhzeUp4VDlNVDA3NkV1aG9JU1QydzJqYmoyTDhGTk12dFNCdXdZcURP?=
 =?utf-8?B?ZG1xTFRIUnZybnM5TXd5WmtHNVprYy9OaFlCZHlEaHFGcUdoWjRLSitIcWZO?=
 =?utf-8?B?YU1PeEQ4aGYwTEZNRDRZSWM2UHZrMmFZalliYnJoa29xYmFaREZmbzlPd2NR?=
 =?utf-8?B?UnEzZ2NocGk1S0dtWjlvK3pEbWh0UDJLQURuU2ZHNTF3MCtsbkY5WE1tdlZ1?=
 =?utf-8?B?d2ZoZG0yNGphOXlBeTI2UkVKTEFVYy9vMkduUzU3UlphU1J4V0VoWW9qRzdF?=
 =?utf-8?B?TXdEVE1yYUxWSlIwdWZRWHRLUGVWZGtwQWJuVXI3TDdDQW0vb3VkODFUa0w5?=
 =?utf-8?B?U1VnVnpnNEw1OGZJc3hhYmpOT3k1SUFuMDRyK1FYaEJ6TDhJMFIxRDdHNW1r?=
 =?utf-8?B?N21oNGNWdlhqYkhQbDIzNWFtbEE0aTZsaUIwYnRpTTYvaGZSR0dDRy9QWUFj?=
 =?utf-8?B?YWJLczhHMWp1TjVhTyswUGN4QkRrSi9uV0JrOVhKOEpycEpMVGdKbHJYQ2ZM?=
 =?utf-8?B?R1NreUdpWks5bHJiODUvNnVzeitDUEVvM2ptMG5abHp2a0d0L0NVNitoa2lB?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 856a4b17-1eeb-4047-ee09-08dc7644e5a5
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2024 07:42:26.5437 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CTaoxN1y9W8CV5fRhkF3RXbhBJAlt2Vt6eEdO1IKfet7f4/uqil7rtXc3SLMwIRBpPaJjzFJM89BIc1xmsngBRIyhvnPorwdPpUDTklVaWQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6701
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715931750; x=1747467750;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=feMIB8pZNJLhXIUhuFPAbeDvB9NxJsQpXhDPgUhiN7s=;
 b=GiqCFzTMIomwGatW+MC/LdeNp9GU3RW6SwAuSz1fJQo4nCxW9qgkwNtb
 xgD1wnFFwQpAlfAKpesiX2HYrcIX6ROVw1wIwgoHnR1mEm9nMluc7hLcN
 QCxGM4ehxexlZJXJ86GRIw84gNgJ0egTHMKoSsDQy2LubuAtf/1g3HH92
 ulHyzkyqkBfr6aNwjFsoLskm5Sg852V4acI9dYU9Bq68pz4ivt6eFjylz
 kca6rB/bAkIb2E5+v7xl/MixI1kRpzvDK6/qzS+CijFUPQtkj56YQT9e6
 oR4eCCgSo6f260c+23Uv9OkjOago5wk0XDNMYSPvX1EcOllBo68KCUmNq
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GiqCFzTM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: implement AQ download
 pkg retry
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 16.05.2024 16:56, Simon Horman wrote:
> On Thu, May 16, 2024 at 04:04:26PM +0200, Wojciech Drewek wrote:
>> ice_aqc_opc_download_pkg (0x0C40) AQ sporadically returns error due
>> to FW issue. Fix this by retrying five times before moving to
>> Safe Mode.
> 
> Hi Wojciech,
> 
> As this is for iwl-net, and therefore net, please consider supplying a
> Fixes tag.

Sure thing.

> 
> Otherwise this looks good to me.
> 
>> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> ...
