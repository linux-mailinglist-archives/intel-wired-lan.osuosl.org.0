Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A349DB3C406
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 23:02:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BC1A4189B;
	Fri, 29 Aug 2025 21:02:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NWALKPbPKG8e; Fri, 29 Aug 2025 21:02:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAC424188F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756501333;
	bh=n1XH6L+anj81hOardWHdR9wS4EA48+oXYXFEGhm5IxU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CCnHA0Gj25RYGoBdndYF+cjiZKDK39giaQamMAzsyjoAZEyfUwmM+L+zEVx83c7Oz
	 Dg7RwOQvWXlhjxaP3/6Chm/8PEfoas1j+XjNIy4qiqeR8omw7qn6m6l/yZZuCJJgzN
	 vLP9VG4bChvqlCB9IhS7gEjK9EK8A0HWkK/bFtZ66iEnMlxP0dbcuSYbHzD5AZ6rUA
	 1WX4qZwBK1HDrvX/4Ps6reHWMKMxnS1XzhHz136rA39yqTzb1W+l9br19+o4dCPrqo
	 W9HahT5VwWn/DcaY3MvUfqOdoLNRbua5dmMTKPVecqnBIqeQqpr+iRm7Cjb8Tli66n
	 nNUpEK+tgHIgA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAC424188F;
	Fri, 29 Aug 2025 21:02:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C7121D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 21:02:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B8D364175A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 21:02:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I9HR0V_6E14n for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 21:02:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1AB1841759
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AB1841759
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1AB1841759
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 21:02:10 +0000 (UTC)
X-CSE-ConnectionGUID: hO+bv6vkRvK31nD0A1+4zA==
X-CSE-MsgGUID: tMj9Nhy9S2qD08I7woUBnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11537"; a="62613327"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; 
 d="asc'?scan'208";a="62613327"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 14:02:10 -0700
X-CSE-ConnectionGUID: Y5xJ3xqOTO6TnJ+GFP8tLg==
X-CSE-MsgGUID: LK+mzRrFT8iOYPo2tCoOOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; 
 d="asc'?scan'208";a="170038935"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 14:02:10 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 14:02:09 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 29 Aug 2025 14:02:09 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.56)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 14:02:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=osQ3ye2g64lcfwiHS7x7RhO9WFqx2cpkIhf3+yNUdQikOhdmo3epzmuM92Odf5PyQQc766xQ+JSVMOpQSOyHXFAYm5ooZWpoJIs72LR+n9HvGGTVPzrn/1F19QEK5Y6vXjWRfWBcgWD8kVJbzCIi/NZReh3Hm41FSh9euwavCQEw3mVS+fg8mKV/aO/zOAtn7Ha2LCWVLOKRxLd+SWhc9Hj4K0RJcB6F5+a9j7UrVAW/7coI66GrGwl0QjfKhLGRUNUwrxFl62UkdBpfNSM2hK88Uqy99r+e7JY555xJslY5UDos8+C7dSV0oGqVI6p7CC/rhPueSMTb2TcYdl2JrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n1XH6L+anj81hOardWHdR9wS4EA48+oXYXFEGhm5IxU=;
 b=NFAglom/Bzj0WbW1L1uxoBNmc1OS3Y2hNFiuOe3rCqNcvjyW7jW/DDy7DHztD70G4pU3gr+muVemzZwubzs2mTewV+i+wqwS0lxfGvUHrT0QLxhmHaFGCRtlhA7prcAs2zgyaPn6IP1loRFzO+rMX5nzanXSFIn9h2tmQDpHD8nwiL6yxYW5liO2nrA20ZAwRuRSMUAAUQz6WAOpgAgZCtbiceufYXsWL4FKb7BtaFBlqeQFK+qmV8ybDI8WmjapFMPcHbSSHamFYhUuZKmcujXOsRO135427ARoJKNR+gfU4V7RMRTizFuGWaE2p2oQPDCbhRvsppkZHR4gxpS8RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA4PR11MB9280.namprd11.prod.outlook.com (2603:10b6:208:56f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.19; Fri, 29 Aug
 2025 21:01:58 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9052.019; Fri, 29 Aug 2025
 21:01:58 +0000
Message-ID: <22d92b44-887f-4aca-b281-aa5f813d3c3b@intel.com>
Date: Fri, 29 Aug 2025 14:01:57 -0700
User-Agent: Mozilla Thunderbird
To: Anton Nadezhdin <anton.nadezhdin@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <richardcochran@gmail.com>, Milena Olech <milena.olech@intel.com>, "Aleksandr
 Loktionov" <aleksandr.loktionov@intel.com>
References: <20250829175734.175963-1-anton.nadezhdin@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20250829175734.175963-1-anton.nadezhdin@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------SrA6YsmM42cEIP0o0b1I2gke"
X-ClientProxiedBy: MW4PR03CA0251.namprd03.prod.outlook.com
 (2603:10b6:303:b4::16) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA4PR11MB9280:EE_
X-MS-Office365-Filtering-Correlation-Id: a9fb7869-31cd-4f86-03ad-08dde73f4b0f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YS9BeUlOVWswTTN5cGo0MWtRaThCdTM5ZXBQOWg0UTRUWk5yYzdiazVTdlhD?=
 =?utf-8?B?Q3VuWnhHY3ZCWTZpS2lsTllteVI4N1o3N0xvcHVTT1dzdnVlb2xYTm1OVG9z?=
 =?utf-8?B?d3cwZUNDL1A2KzB6TG1aK0pqN01JN21UTndMK1lQa2xpYTB2SGRuYzRBSFJp?=
 =?utf-8?B?SU8wUkY4K2tYOHhqTzE0dGE5Mm9wK2FqNGFvb2N3STBFSnl5K042bUFpVk9s?=
 =?utf-8?B?eXRDWXhyQUpWWFd1YmR0VkRvOHd6eTNhaktlQmZjaHBBN3ZWaUhUbVg0VWxk?=
 =?utf-8?B?Wks0TUF5TjI0a3VGUmFiWURVWUdEUmFRdlJ3ZXJSdVpoTTV1RHh0UTJPU241?=
 =?utf-8?B?MkJNS2lUaTVqK3Fuc0piRTByU3pqNmlPTU5VVE43VUJ3azd3aEZ1NzNsb2ZF?=
 =?utf-8?B?ZFliRUUxNXl2a0xvY01JMEF6Q3BwNzV6bDVmNG9udnVWMEplM00xRlRBS2tZ?=
 =?utf-8?B?SlNPcXhDazN3RmlDSDArdk1UUytHWDBqNWdoOS8rcEpST3FoYlhMVlc3aWVq?=
 =?utf-8?B?YU1TQmVIQnozTkxIbmlwakx4MmtlOVF1Y2tMZGFZdEpzd3pFV0I4UWw2TTlX?=
 =?utf-8?B?b2tETjVEN3RhY3h3NS95SWRRa3IrbDgrZzBBZkIrczJUVUFJZndsSjNEWCtY?=
 =?utf-8?B?V2JzY09wZEZQTVpQQXFVR3gvYXlzY3phT2Q1c3p4dzNiR3VwNmFCYVMrczJo?=
 =?utf-8?B?eEJPdDNXRVhNUmU5TXUxamZ3andVVVU3QzRUczF0YkttRTJuYk1IQ01vWlhE?=
 =?utf-8?B?bUp3bmhrS1IvMlFLM3VPMFpsV1Fhd29QOWozSWlkajJ6djRJaUVtZEFvQ3VP?=
 =?utf-8?B?UitOUVpvckNVYmxURS9OWDN0bURnb0JmRFR0V0NvWEcvcm91Z0JTRjdBUE1J?=
 =?utf-8?B?Q3laTDY3ZVZWMFNzRTRzMzVJSys5NXdScU5nMVI2aWRxelYzM3QzSnpkTzB1?=
 =?utf-8?B?SE0ydFhjaGIxY3JvQVozVm1USnJwSS9sWDFEbDZkek12OE9pVWkrcm95bm51?=
 =?utf-8?B?b283djBiVGMxMGlYcURQYzYrSUJUR0ZOTzlLMnBjdHBYQUx3bGRZcmlDVkpY?=
 =?utf-8?B?Ui82bVlqalZPVTVSWmdSQzlXcjAySllLTUNEMlo1U0Q4VG9IMW9GUkVLSVF5?=
 =?utf-8?B?VjZQZ0FjRTJvUG9WR05HUUFRVEZDOGRreW9MVTVSQ3U3R3JkRWxNTk9ERGxh?=
 =?utf-8?B?MXdabkJyN0lpY0VQS1lzdkx4dTNUS0RsK3A1SFVUTE5TakVFcVN4WjUzWjBx?=
 =?utf-8?B?elhOVHRhNHpMclNGYVNqMHMzUVM5SEZYS2ZhemtCRm54UVY2emIvdEZCZFJX?=
 =?utf-8?B?V1NKQ3JVMGJ2Si83eTB6Vklmam1ScEF6TmZ5T1ZtUWJoUVJBUWVkQjFqWi9a?=
 =?utf-8?B?Uk9HWFN5dSs1azJaTExjMGhJVVhmTVFHTThvc2hERXowcm1iQVlOck93c1N3?=
 =?utf-8?B?RUhNdlNOY2hzcURUWjZaY3dzU2RFMzhOL3NhSmhVdWtXeG1IM25tTWp6dFB4?=
 =?utf-8?B?dEY2TVZ5RjdOYXVTdXA5T1FCZERxalg2WW5lYkxDYjB0bnBkT3JQYnExcDBi?=
 =?utf-8?B?aE1VQ056TC9uQ25WeTI3Nll2NG01TnRFS2VERGp3dVlMdXJZby9hdnFVVHdS?=
 =?utf-8?B?YTR2T2U3MmtvOFFWZ254YlJwSkFVZ3NZb3Q1ZHcvVXdQZUk1MHJvdTZmTkh2?=
 =?utf-8?B?ZUxOdzNHZmhsT0pEcUNyYlovWTAwRUJYdVRTRjFVQjZKMDEvQm15WHVuNkJ2?=
 =?utf-8?B?WXZ3ay9iSURiZjdsSnVtKzlDRXBVRVRXRHdlUnp1aHNacnhDN21SQ1FVQ0Ft?=
 =?utf-8?B?MXRqR3daazEvK29oYlFGTnkzS1RJYkdDcDF0NEZZOWRnWWYycklEUnZaSk1S?=
 =?utf-8?B?a1ZGWG1jbEwxZlczdDFLVkppaE51b0hWdlN4dDNBZDR2TGc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWRrRGlVRTJTaGpnaTA3SFpwQXJ6SXhEYlBvWGlGWEFGZ0kzOW81WVVFb0xL?=
 =?utf-8?B?cDlnckk3cDlRcjNDbStaY2JVUDhLYkZRbUNERUwzVEtqMnMwK0I4NEJCMW03?=
 =?utf-8?B?dUFhd0xBWEZQQXhzdzJiVFY3aXFMN1lGL3lqb0pkY3M4S3M3c1Y3WDJUb3Zq?=
 =?utf-8?B?NDhJTU1vTWxxazJqTkRzK1pkM0xnVDFTRm1tbE5OdlJNNWVqL0VXdjM3YVor?=
 =?utf-8?B?ayswN0lBeU9aZ0FQaWFhbmkwWFVHaGVGREhVNFZoSzZhUjlpT0wxbzJwbTg3?=
 =?utf-8?B?dlc3VDZ2OTJVa0xpZTdCQ1hhUVF1ZUl4SDVHa05kcHpDSXcvTTB4NEpWQi9H?=
 =?utf-8?B?M2tnRE9IVkV3K0ViaWVkRHJzN0xJZnVqQ3A3R3RubXM3R1VFendxcTZ5a2tG?=
 =?utf-8?B?NkpUWGpKZmplb0dOME9VMzJybjBrSDlzb2ljWVVVTmNUYVROUGRXRTBSazNW?=
 =?utf-8?B?VkNWTHhUTzRxT1B6NXJabE83aW9rWmRZUjlaRkNqdndFblQvNlRTMXVhYUxw?=
 =?utf-8?B?MWxodmlHZzMwN0ZUQnZMMm1sbzF6emVuZWdTWVB3bDRSN3J0aXFTTm1ETE5k?=
 =?utf-8?B?SThaK0ZBOUJwcDdEM3FWdHE4aWN4a3M4U2N6UnR2RG9JTzlWd0NqcENjYWZG?=
 =?utf-8?B?Tzl0THhNdXhVbmdnd2xLVjBMeHJPNFRQcXJJTVJPcWJyYzcyMWxWTmZ1bnFE?=
 =?utf-8?B?VVd5TGF3M2RUWWZvaCs5bUEyS2JqQUlZeXpQcjE3bzlJOFlVajc4eS9FYml3?=
 =?utf-8?B?ZmZHUnJKM05RSU13bUFtRDdMWjAvZS82a09Wci83RXBRV1BHQ0NCeGErZW9I?=
 =?utf-8?B?VEVqY0F0MnBJVFNoTXdFNVVHSlZNZkUzam1oL0pHQ0hGaXhuOVRic0MwMm1Z?=
 =?utf-8?B?cnMwMzQzeVIrWnFBSit1aE9ic21KVHgzV3g5ODRqOElNNEIrRC93MWJ5Q0FZ?=
 =?utf-8?B?MFFrclhOb08rT3J0ZDFyRGZaN2RpOHZ3ZU9aMU1RUkdEazd5MlY1b0hhaW1Z?=
 =?utf-8?B?NTBKMG41MEp6Vkx0Z1l3ZHJoVEVrZVVXRXhESk5NVTJhb2FPRjlBZ2xEbFl1?=
 =?utf-8?B?S1MrYndHUU5FdStyalBPVHZBTkhtRWlwem51MU5hcjdBTUJMbGQxR2RnUEk4?=
 =?utf-8?B?dy9HZ0c2K1RRakJ5UGl0WVlZaDBXR0Jja1ZucDk4Nkp5YVRYeDFwaCtDYkRB?=
 =?utf-8?B?MTQzU2RQV2xHQ0lWT1Vidms1OHlqNExhY2pOMVlVdmJYYW1DSXhYV1lCSjZn?=
 =?utf-8?B?MFVxMlZHbDh3OWVLYjdCQURyY0J3OGU1YkxIRTQxREJoVXlEcWl1ZVJUM2tx?=
 =?utf-8?B?RlpYbG9MK0JGNVdhSlM1bGJmTzFsSzZSMTk1bGR3aGhrbmxEbUdhQ05LTWdF?=
 =?utf-8?B?S2ZWV0dsblpQL1VkaTcrNVlFYTVqWlFsc2JCRmsxK0taVk44YnBYUDlEOTVu?=
 =?utf-8?B?eDllM21PQmxlR01ESlFlSHN5TE9lK3c5Y1ZjT3RsdkxyMUZsdHdINENqNTlZ?=
 =?utf-8?B?TzBKdUFDellQRWREdHRCb3lNYkxuNE94bWUzRkIzOFRXNVltQTd5eGowd0JP?=
 =?utf-8?B?U1BCOEYrNi90TkY0SzZlZEdOMEI1QlBxK244UCtSbXdZTjBQUGpzT0xYamNn?=
 =?utf-8?B?Y2VZL1NmL3YrMkFieUJXUDJjbVVMclc1cldzQlhUdmFLYjliazk3MGJvbmhv?=
 =?utf-8?B?Skl5T1VibWVCaUEySFZZSkJhNElJalZVU3dERkdHUG0yd08vcmZUOTZFdmlo?=
 =?utf-8?B?dmVFRythSGgzNXpqY0tHYkJia0xlREorUTdCak5Ic2QvNjYxQjlTVlZFbjVJ?=
 =?utf-8?B?MmF2bHY0Q2JBY1NoUWYyT20vZTJlSGxSNXZYTEdkcnZJUDE2SFhncFZhQTVW?=
 =?utf-8?B?czJWUU8yWHEyd3hKMVE5R2xFQXNPcWtpZWhoSW9tUzFyYTNDbGtKNFZHeENt?=
 =?utf-8?B?WEJOS0FMTXlLcisva09LU005YzNhQ1NFWWJ5dTY5VTRsZGFpYjQ5Z2Jvdlhq?=
 =?utf-8?B?U0QrWTVzRUNvR2lhamUyaTBhUDRuV05rZHFpVnIwd1hKZ242bWxraTlGbnkr?=
 =?utf-8?B?c05mMEFlTTl5Mks4RHNnbTc4aWRxNGc1R3pRaC83UkVXakFQOXZhbktaR1FK?=
 =?utf-8?B?RGd1UWlMS1FmZ3lYWkxpL0tPZEVEb1N5bk1wcWEwQlZ6UGQyTkxzR3VOdllC?=
 =?utf-8?B?ckE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9fb7869-31cd-4f86-03ad-08dde73f4b0f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2025 21:01:58.6321 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IP5kdIUchQ9kg4XzF9bPTtrllhdRd7vh/WwgLN9OJ65AWdNbHDrj13SINv+SKHHYbxEyLTzaMcpV3HDAamWt24fwUFbFV+MTZOB9iXqufNE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9280
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756501331; x=1788037331;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=zRAiLChTJOmuS21Yz6zVx/a++PDym/Iqs2aFK3lo2f4=;
 b=cgPO0dnlTk1g9ZREgvbmJWU3qyvGONdkIE9Htd4X8rynSl4JZYXXktNw
 qsQ6orn7RQPA6n2l1obd98SMjbQrmofgxQDOq/EBC8cIuMsofQ/RFEgFw
 YABLg25RBpQCF9BBzV5Q350YQxmwbVFIlCVh45k4kVJMgBtQKE9c9g+sd
 OTG74UX/AigorFV2eJbCqPXYwfMP+iyw1v/Hms96lqE/0gI/w/SnQUIkR
 AywlXq4cMbKBY3c6pCiHRmZFVS5kCazYkDrNoE8cc+OwcPax7yA56kg/W
 ae4J3BpVBpeytNsRT3EtoCs+kCYMHzX/OprOwcfUoe5UwrNz54V8SYUf2
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cgPO0dnl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] idpf: add HW timestamping
 statistics
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

--------------SrA6YsmM42cEIP0o0b1I2gke
Content-Type: multipart/mixed; boundary="------------yjTHFhvj3G70A6ulWFFACFWy";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anton Nadezhdin <anton.nadezhdin@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 richardcochran@gmail.com, Milena Olech <milena.olech@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <22d92b44-887f-4aca-b281-aa5f813d3c3b@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] idpf: add HW timestamping
 statistics
References: <20250829175734.175963-1-anton.nadezhdin@intel.com>
In-Reply-To: <20250829175734.175963-1-anton.nadezhdin@intel.com>

--------------yjTHFhvj3G70A6ulWFFACFWy
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/29/2025 10:57 AM, Anton Nadezhdin wrote:
> From: Milena Olech <milena.olech@intel.com>
>=20
> Add HW timestamping statistics support - through implementing get_ts_st=
ats.
> Timestamp statistics include correctly timestamped packets, discarded,
> skipped and flushed during PTP release.
>=20
> Most of the stats are collected per vport, only requests skipped due to=

> lack of free latch index are collected per Tx queue.
>=20
> Statistics can be obtained using kernel ethtool since version 6.10
> with:
> ethtool -I -T <interface>
>=20
> The output will include:
> Statistics:
>   tx_pkts: 15
>   tx_lost: 0
>   tx_err: 0
>=20
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Co-developed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

--------------yjTHFhvj3G70A6ulWFFACFWy--

--------------SrA6YsmM42cEIP0o0b1I2gke
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaLIVRQUDAAAAAAAKCRBqll0+bw8o6Hy8
AQCOFroUVzLcohbA4zbJZSQyu48DNd5Mk0hThj2UXCjKkAD/TBj91lxJ8DSXNw5XgkcNaH9GWC8H
7vp5Rd5n4JsdPwk=
=7R8N
-----END PGP SIGNATURE-----

--------------SrA6YsmM42cEIP0o0b1I2gke--
