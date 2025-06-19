Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 750F1AE0575
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 14:21:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C8D1816DE;
	Thu, 19 Jun 2025 12:21:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XFb_kkGVEtj6; Thu, 19 Jun 2025 12:21:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29B23816FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750335661;
	bh=e71mVzlvGYewF+T1SoRXLurZAZHWXDR0okizAH7Kgdc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qip0OB8yNH5reJ70ZC0m9KK+I3T4UFQTpCruZUVOv2hsClso6k3ZDQHJ4KkMeiswO
	 TmUkNUcswu4YmLhhbqx0jR1Y7TOFh7iIUKIfoFL3g+q8IMLIXHqDBLjgh1+L5GoGJC
	 rrZCVSSicjUD+SnO+AOHhCm7Wuv+ys8IT5QQTeufNbzPkDLUY/VBR4Ji50nTyCV+GM
	 lSrBUVEBUlKAdyqYB72Bi6/2nOHUbeQ+oow8t8nUsAHpgOohZ5oFNlB2hRuIaD+w7t
	 xPZoSQIIDALloKqipbi0KPKo0MarfG0SK2JBuzMjoBjvRyIV+urp3Rp8NKc9Am9X5R
	 /swPaqj8N4EUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29B23816FC;
	Thu, 19 Jun 2025 12:21:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C64D7181
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 12:20:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C355B60BC9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 12:20:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tb5SOLW-kHH0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jun 2025 12:20:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C38AF60741
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C38AF60741
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C38AF60741
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 12:20:57 +0000 (UTC)
X-CSE-ConnectionGUID: JRkU2yggQ926xWhb+A2pLQ==
X-CSE-MsgGUID: Ng1q5IWqSPCui8J3iEUHhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="63190848"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="63190848"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 05:20:57 -0700
X-CSE-ConnectionGUID: qr3DPXlwSPmmdIgEgm48yg==
X-CSE-MsgGUID: MbtttEb/QSqcl2xvXjb4WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="150136988"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 05:20:57 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 05:20:56 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 19 Jun 2025 05:20:56 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.62) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 05:20:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wneWMObSZSfEVqyHdx00PmQXQ7muM8cCqB8US4+x3oa3uNzoK2gOblUPvi+u85Jw4+ObY4OQ59Hi0BMM8e3rUf2gN10NWo8oyeNtuqh+TKkN1O3lubwbOlI5ems9NsNC9pydZa9ZFP/weEeOQVZRm7ZSjbO+Qy8A7ua6ySIIkp60/DFCQaAVmEZbmdNSM1RzJXtXrl3jYxSdHbjSKfBpmFPaVhDEunrBoC41Rq9dL1Z7YovNH9jqpi+H2pwqqBfA3WO5qdavvhsjLzy3oBtmNCUqVfqo6ItheGGyKIqBXsJXJReHWejSc1J5/zQC3axV/z5AcRQUjI/gRtCQJcVMlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e71mVzlvGYewF+T1SoRXLurZAZHWXDR0okizAH7Kgdc=;
 b=eXhhPxOyjvM1L9qPXgViUBYwdWUwTI9jpCZCjIqecNy9S0RYbqGAVGG/1s/45lSlUn3wvVBb/ZdY+CtVGeL3JtmhsE2uz+M5abJZRnMWQTpImwnTi5lH9k1VxI0JP1C5gz3ZvfDeZ28Lp9tLV75F+NsAO3Cs4yIA0nXAqBsKD/W27yvuPYQzk3mdXO4J6BqA0tCqGXoNq1PPSHhgXbNUGDyF9iC0aOxsDMQ1pEptX016iwJFIhzEs+628r15zYPjtHMz7GPGQhY1BV+wMN6daDLXMyMA/M3wU5LeSaBqRPtEnWz7oGnfoqNsreltUERdH8NMH6emBJFWry1otruXEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9013.namprd11.prod.outlook.com (2603:10b6:208:57c::9)
 by LV2PR11MB6023.namprd11.prod.outlook.com (2603:10b6:408:17b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.26; Thu, 19 Jun
 2025 12:20:40 +0000
Received: from IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563]) by IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563%4]) with mapi id 15.20.8857.022; Thu, 19 Jun 2025
 12:20:40 +0000
Message-ID: <9fb5f018-7333-421b-8e2d-1f6eb98cffaa@intel.com>
Date: Thu, 19 Jun 2025 15:20:35 +0300
User-Agent: Mozilla Thunderbird
To: Christian Heusel <christian@heusel.eu>,
 =?UTF-8?Q?Marek_Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
CC: Paul Menzel <pmenzel@molgen.mpg.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <regressions@lists.linux.dev>, <stable@vger.kernel.org>, Sasha Levin
 <sashal@kernel.org>
References: <Z_-l2q9ZhszFxiqA@mail-itl>
 <d37a7c9e-7b3f-afc2-b010-e9785f39a785@intel.com> <aAZF0JUKCF0UvfF6@mail-itl>
 <aAZH7fpaGf7hvX6T@mail-itl> <e0034a96-e285-98c8-b526-fb167747aedc@intel.com>
 <aB0zLQawNrImVqPE@mail-itl>
 <c918d4f5-ee53-4f64-b152-cea0f6d99c4f@molgen.mpg.de>
 <aB0-JLSDT03fosST@mail-itl> <aB1JnJG_CH5vxAsw@mail-itl>
 <aFK_ExmGqmi-oQby@mail-itl> <87584d6f-5a31-47aa-bba3-1aadfc18fbe6@heusel.eu>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <87584d6f-5a31-47aa-bba3-1aadfc18fbe6@heusel.eu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::13) To IA3PR11MB9013.namprd11.prod.outlook.com
 (2603:10b6:208:57c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9013:EE_|LV2PR11MB6023:EE_
X-MS-Office365-Filtering-Correlation-Id: 1019e605-dbef-4309-ea49-08ddaf2bb480
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NTFqTDgyY3RuQ3cxeWJEZzNPcHVmb1FzL1dzYUhOanBtR1NEZG1FdWtqSjJW?=
 =?utf-8?B?QTl5TkxSanhjaWI5cjFkdWJYdlR5cVJqdXlyc1k0UTF4b3VLYk1JbHNFNXBH?=
 =?utf-8?B?a1dLVUdHRGhyR2lEbjVIc2RiaTN5ZFBmTjlxZDBWUXMrWHB3K2xEOWlqbGpl?=
 =?utf-8?B?TmwzMFRlNUtIRDFVTVcwYTBlNnpZaUY0Z08za1ZhbVJMcDRSdENNZ2hmdUVD?=
 =?utf-8?B?Q04xRVdaNHNwNk9HQ2kyUFoyY0pvZTRXZlRFRkt3Y1RXVGlsN1BsOVE4dDQx?=
 =?utf-8?B?dGhOVTVCMExBSHh4a1MxcUFtSHNnNm9GWDBabldRVFpRR0U4TmNXYjdRQzdL?=
 =?utf-8?B?UFFBeG0wNy9XM2xpUkhlWVBlYkl6ZWJLVnJmbTVERzRWcSt5M3dVbEd6aWtm?=
 =?utf-8?B?VmFxU3ZLOURVdVp3QUthYi9PRFgyTXFLQ2JuWjFWT0ptUWpETTdWa1JwRDdB?=
 =?utf-8?B?bFozT2NwTGhlVTRXSmJBaVZQY2pWQUU2RUpKcENKaGxqSmtqWEVkOU9lOFhl?=
 =?utf-8?B?OUhueEt4ZTlxaGNhZjVaS0NHd1dTYWVhcUd6WU9rcWZEcDdYT2dsUEpXOWZ6?=
 =?utf-8?B?VDR3cE0xRlo4VG5xS1gzTUM4SkV5VVhwMEFWb3lpdUQwVVVyNm5pUDNaYk00?=
 =?utf-8?B?NW1XQjVlNWpzdWRZdkJQOVlvSzlkZ2pQN2xtWDFrYjdSUmhTZUlwdWJ1TWt6?=
 =?utf-8?B?VnQ2WlU1YXRoa1hSSExXaUM2cXlPNmUxaTRjMXRRNEhHQ09lekM4enVMbFZ0?=
 =?utf-8?B?MzIxZkV1em9nNUc3Z0RlVEtuSDFIdFM3VU5VS0lvRVVkRGVHZFNlZmtVZUtG?=
 =?utf-8?B?TmIxc2hUaUFzTFNTbklmUWhLbHd6alVqZnZNRTZodDNzWTdmK2tGeDRJWllT?=
 =?utf-8?B?RVE2akZQMzBBUVVsbXFxNkdjcmNiWEVPME5jR0NneXlhY2JvRUhJMis2UnlD?=
 =?utf-8?B?Q0k3K3luekFSSnBJRUNNRE82Y1BTR0xEMENKYkRVRTRVTTNEVFNESXkrU1dN?=
 =?utf-8?B?Nkc2eSt0Vk9QbHBTTXg0SkMvOXFxYUV1UWF5aUFrM1o2d251Rm5FOHdPenJr?=
 =?utf-8?B?UE1uRkh5SUI5bnZTenkyN3lzTDd6eEM4SnNrYS9ENjRndDdGOVJPand1Mjhi?=
 =?utf-8?B?T1UyOUxwbWJVL2podDc5UGJrOE80TlA2K3NwVitNRnRHd0J1andNZ1JPYzRl?=
 =?utf-8?B?U0pRbUhKMXBWL0Z2dXQzV2hCRFJ0WkZjLzVYb05qSXkzd3libGJrRzFtM1Uz?=
 =?utf-8?B?RndidVpzbUg2TmRjaWx1T0VRL3lwdWZCd3M3Q29iNUZtZ1NiU2FtaDM2RXR4?=
 =?utf-8?B?Y0p0eURaVGxPT01zclNyLzQzaE5kVUtBMWpkQUMzNDByZGhHbk9pRTBTQ3NS?=
 =?utf-8?B?aWtyb0xMT3I1WWxGYnc5YXVQb1NBb24xMURWWnRUem5uYnd6VWtEaXBLRHM3?=
 =?utf-8?B?SWlMZGZXYTV4R0F0RHdHbGVQU1pVMTVIQWJLUXBoZWZpWUJrTm9Ea0VWUkRl?=
 =?utf-8?B?ZUVhYjJRb0ZhTS9ZNWMrRGg5cTJrZENaMnNQVVkwR2llNFVpbFdMRVVtQTZn?=
 =?utf-8?B?Ky9ERUZTTW1DREN2am5LREFFenY1VmRjeEpuendJWkdWS0NKNFBHUW0rOWdP?=
 =?utf-8?B?M2xuUVdxTEltR0g3N0RmeEJETXpSQXBoTFAzWGpUclVXUnZxSGVISTRVUDd4?=
 =?utf-8?B?dzNsQzh1eG5PdnFZQklJcWQyb2N3TWoxSmhMWjVTRkcrWjFtT2x3S0N3R25B?=
 =?utf-8?B?OHBRcW1WWVF5dEFDaU8raU9YRDErdTd1bnhCZldSeThqeXFkOXZ0RDVPZllY?=
 =?utf-8?B?M09TR1d1bmFkaU9td0djWU5DOHRSN0VJbTFwWDZNSS9YbndQbTVma2FtTCtX?=
 =?utf-8?Q?nrABFhpKEK7vu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGR6S2N2VkdQeVRLUWw4RUVkSWFlTWllWkhUYklxVlVtWlBDTS9yTENiei92?=
 =?utf-8?B?OVMwWnJpU0Y2d0lqNCtkTE9wWndGZ0J2Nkx5djB3Z3hMcFNGSFA4Rm14SURW?=
 =?utf-8?B?Ky9vZk1OMzdsa2tEdWxwdWptL1A5Tkp3d0ZLRmM2blhDWGU3NGpmZ0VMbndU?=
 =?utf-8?B?TFpySVQydUk1SXBmQ3N4REg0eDRzTmxGcnNkY3NLQ2xKTUFzbFRsUGJEYlY1?=
 =?utf-8?B?UWJtQVZWT1VUQzlRYXp6eGxlYnNpbmFnTmlaTFl1NHgxUnhPNGRLQ0IvbTZx?=
 =?utf-8?B?dS9nYUhDRVpIYmZtaW5ML1dEUTVxMGNqS09SQ1R5R2x2QWlRQzlyS3ZpWXhH?=
 =?utf-8?B?Ris1WXFjSWJiQkhieGFWM1BQbkZWbjN5dUhUc2VVR0R6UEdsL0o0dnlNZVo3?=
 =?utf-8?B?b1BzUnRscmdRQkp4OVlNbkx3elBRWTArTDZ5TWF0SU54R0N2RTZBRjJITG4v?=
 =?utf-8?B?T1RBdkZwcllVTUVQMmloeG80WmJabzA0RjFNZkdvbmNsTndpOVdYYXp2dzB5?=
 =?utf-8?B?dGIwTTFob3FFRURON0NXUEZZTmN2YW5CVnR4VmVpOEtFM1B3NDUrakdRczc4?=
 =?utf-8?B?d2xDMGoxbisrMTdiUmJBOHhVN0RsWmNOUldDdWg5aW00RWFZRnJyTmxMY0Yz?=
 =?utf-8?B?MSt2djhEVlBkaFJJUzgvcEx6alZra2dLQTlMbXI0RlJxaFRRWXJrU3AySm1P?=
 =?utf-8?B?cG5takJ5U2E1R0pRbnFtY1dlMnhHNHV3Q2tpYWJOZnZHdVJPNlpHSElmaFRI?=
 =?utf-8?B?a1FmZlJGcTdWMUlHYmVSOXFHQ0hlRDRSVnptUll6empJcERYUjltWS8rcC9k?=
 =?utf-8?B?N3Ntbzh3cW54bXJYVmdQQXlMTUpYcXh2K0h4NzJzb2dUMk1Wb21UMmRZUVcv?=
 =?utf-8?B?RExoK3dzNVlrMGRSUFpSNWpRRkxKSUhTeU43aHR5d1lpUnl4QTB4UkVPRkY1?=
 =?utf-8?B?Z1lYMThXQldocnVhcng0QUdNQThmaGpVZ293UmZSR1pVeHNUUDAvaEd5M25C?=
 =?utf-8?B?emZrbnVaczVlaklZdlpNVzJiaWtNemZHZmJsNzlDOEZueUZ3NWdaYzBBeEFq?=
 =?utf-8?B?WE5MNGgrYjF2d01zVEZPTzRWb0J3RVloM25hL1ozZWRhYjZtLzl3aklzdFFN?=
 =?utf-8?B?eFpEdDZhSTRBQm9Qc0p0UitacTY5SU12dUJod0hCYzRJd2NlNHhDVlpGNThS?=
 =?utf-8?B?TTJrOVUvUzFHajFoZUE2ei9mcWd1SXcraXhIa1BKM1diemNINXB0b014RUQr?=
 =?utf-8?B?TEp0MHFqNy85TE42RDlETFhmSHhYRWlCRThBTFlXcDZHTlVNL05ZQVZXbnBF?=
 =?utf-8?B?NUNnbGhmME1RUk1FdWZtcFpoVCtqdlhUZ2l2NXRRMXNNTmtrZkxFS0xCM0RS?=
 =?utf-8?B?TmF2cXEzY3BrbDdBUExkRVpGVjU4TTVBWUVTWWRzdk41dGJac0NYckxHY2RO?=
 =?utf-8?B?OHliclE1S0tHMDJVRDdYdWdYc3RTWUVKOVhBK1d4dGloUzhGVUNOUHB6d3BL?=
 =?utf-8?B?NDArTEV2RlRha3JoRWd3UnBJeWdiNDhPbW1QVWxLTXQrT0J6UDhET1MxTmpR?=
 =?utf-8?B?N2R5cnBaVkNnSVl3UzEyTDE5ZDBjVDY0RXU5SGFrZHBFU3poLzJzY1ExVHQz?=
 =?utf-8?B?TloxUDZnejBQSUk0dnJlVGlDNUl5d1dJZ1d2WXZTUlV2L1l4U0lyM25uMlZ2?=
 =?utf-8?B?K0ZrUUhYYWY5VjZZNlFHTnZZMGxYblR0dU1CMU0vdFlZSGVjNm5LWTBRYjNN?=
 =?utf-8?B?VUNKTzByeWF5UHhuOWVPdVRlUXdYQ0dpUi9kb2VDYm0rcTdhQXQ0MzJQWGp6?=
 =?utf-8?B?UXBuR3ZUc2d1ZU5RcVBjc1B6dUNadHdVVkc0SklTT2YzZWNKMUpZSllPYTZH?=
 =?utf-8?B?QVlnc2RGZWNXcVFsN0pNMXdGSXU4aVFBUFdyWU5KcC94ZkFsNHZ1YmxIaElR?=
 =?utf-8?B?MEg5ZEM0S0Q2TXJGWjBERXpIRTFjUDZoZ25vbkM2MU4zcXJDbW1HVGxLaTF4?=
 =?utf-8?B?TWhDbzF4WHAyeTdzVGh2UjJMYlovK2dTeVBRdzdIZUNrRGIwbFlxYUhzYTV3?=
 =?utf-8?B?cnUxQmF6elJMbEIzdHR4MmtlU0xaVHJOY0lBcHVLZWQvaS9ORzgwVHFyTzB6?=
 =?utf-8?B?U3d2N04zY3pGV3NDR0NIQlJBVXhxS2dvK1V1eU82TVY0R3kwT3N6N1hVa240?=
 =?utf-8?B?M2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1019e605-dbef-4309-ea49-08ddaf2bb480
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2025 12:20:40.5884 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zA+cbeSVVOSXV8Ws5cmlr/nI8QhhaR892cbw9Ybsbs9vBjEVVgYJUNcSysfCAts1Yx24pnHoulCtdHvHz/B1ZT9fNT9rjZlCg9xow4ypXmA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6023
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750335657; x=1781871657;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hm1eilQjWD5uR6udef3kiO+yhyPrLmOttbRWQLeLybg=;
 b=PedG8n3ztEUcl75TV0fzAJ5MP1q1Hj2YDcZa22X4jl60MjwvSEy/CgDH
 aRU+mrbXY251pm5JN1v4dWXrcZIZkH2tT/+LRinFVxu38zue2mwCOiW5P
 XR8OsBxtwHfV+5W9uB2p0QDoM0JeEX7d+f4r81PWlIQVk2O+VkJYYZTfh
 uWRylIPGQMrAyRb87lQeEQwibaiWgRsO1rMQTncwp8azeBBZFpmjtraE6
 KAvqY/QP39zLc7p5CfTNw8eMB5qWwuwYh0ZNGzBnIB7Liy7wGDrd0P49f
 NGrnkg4jbLncZSdb8Lbb2hN+fEys520dj+cOC8qogH7KVeti2BxUXZOdh
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PedG8n3z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e heavy packet loss on
 Meteor Lake - 6.14.2
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



On 6/18/2025 4:41 PM, Christian Heusel wrote:
> On 25/06/18 03:28PM, Marek Marczykowski-Górecki wrote:
>> On Fri, May 09, 2025 at 02:17:32AM +0200, Marek Marczykowski-Górecki wrote:
>>> On Fri, May 09, 2025 at 01:28:36AM +0200, Marek Marczykowski-Górecki wrote:
>>>> On Fri, May 09, 2025 at 01:13:28AM +0200, Paul Menzel wrote:
>>>>> Dear Marek, dear Vitaly,
>>>>>
>>>>>
>>>>> Am 09.05.25 um 00:41 schrieb Marek Marczykowski-Górecki:
>>>>>> On Thu, May 08, 2025 at 09:26:18AM +0300, Lifshits, Vitaly
>>>>>>> On 4/21/2025 4:28 PM, Marek Marczykowski-Górecki wrote:
>>>>>>>> On Mon, Apr 21, 2025 at 03:19:12PM +0200, Marek Marczykowski-Górecki wrote:
>>>>>>>>> On Mon, Apr 21, 2025 at 03:44:02PM +0300, Lifshits, Vitaly wrote:
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> On 4/16/2025 3:43 PM, Marek Marczykowski-Górecki wrote:
>>>>>>>>>>> On Wed, Apr 16, 2025 at 03:09:39PM +0300, Lifshits, Vitaly wrote:
>>>>>>>>>>>> Can you please also share the output of ethtool -i? I would like to know the
>>>>>>>>>>>> NVM version that you have on your device.
>>>>>>>>>>>
>>>>>>>>>>> driver: e1000e
>>>>>>>>>>> version: 6.14.1+
>>>>>>>>>>> firmware-version: 1.1-4
>>>>>>>>>>> expansion-rom-version:
>>>>>>>>>>> bus-info: 0000:00:1f.6
>>>>>>>>>>> supports-statistics: yes
>>>>>>>>>>> supports-test: yes
>>>>>>>>>>> supports-eeprom-access: yes
>>>>>>>>>>> supports-register-dump: yes
>>>>>>>>>>> supports-priv-flags: yes
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> Your firmware version is not the latest, can you check with the board
>>>>>>>>>> manufacturer if there is a BIOS update to your system?
>>>>>>>>>
>>>>>>>>> I can check, but still, it's a regression in the Linux driver - old
>>>>>>>>> kernel did work perfectly well on this hw. Maybe new driver tries to use
>>>>>>>>> some feature that is missing (or broken) in the old firmware?
>>>>>>>>
>>>>>>>> A little bit of context: I'm maintaining the kernel package for a Qubes
>>>>>>>> OS distribution. While I can try to update firmware on my test system, I
>>>>>>>> have no influence on what hardware users will use this kernel, and
>>>>>>>> which firmware version they will use (and whether all the vendors
>>>>>>>> provide newer firmware at all). I cannot ship a kernel that is known
>>>>>>>> to break network on some devices.
>>>>>>>>
>>>>>>>>>> Also, you mentioned that on another system this issue doesn't reproduce, do
>>>>>>>>>> they have the same firmware version?
>>>>>>>>>
>>>>>>>>> The other one has also 1.1-4 firmware. And I re-checked, e1000e from
>>>>>>>>> 6.14.2 works fine there.
>>>>>
>>>>>>> Thank you for your detailed feedback and for providing the requested
>>>>>>> information.
>>>>>>>
>>>>>>> We have conducted extensive testing of this patch across multiple systems
>>>>>>> and have not observed any packet loss issues. Upon comparing the mentioned
>>>>>>> setups, we noted that while the LAN controller is similar, the CPU differs.
>>>>>>> We believe that the issue may be related to transitions in the CPU's low
>>>>>>> power states.
>>>>>>>
>>>>>>> Consequently, we kindly request that you disable the CPU low power state
>>>>>>> transitions in the S0 system state and verify if the issue persists. You can
>>>>>>> disable this in the kernel parameters on the command line with idle=poll.
>>>>>>> Please note that this command is intended for debugging purposes only, as it
>>>>>>> may result in higher power consumption.
>>>>>>
>>>>>> I tried with idle=poll, and it didn't help, I still see a lot of packet
>>>>>> losses. But I can also confirm that idle=poll makes the system use
>>>>>> significantly more power (previously at 25-30W, with this option stays
>>>>>> at about 42W).
>>>>>>
>>>>>> Is there any other info I can provide, enable some debug features or
>>>>>> something?
>>>>>>
>>>>>> I see the problem is with receiving packets - in my simple ping test,
>>>>>> the ping target sees all the echo requests (and respond to them), but
>>>>>> the responses aren't reaching ping back (and are not visible on tcpdump
>>>>>> on the problematic system either).
>>>>>
>>>>> As the cause is still unclear, can the commit please be reverted in the
>>>>> master branch due adhere to Linux’ no-regression policy, so that it can be
>>>>> reverted from the stable series?
>>>>>
>>>>> Marek, did you also test 6.15 release candidates?
>>>>
>>>> The last test I did was on 6.15-rc3. I can re-test on -rc5.
>>>
>>> Same with 6.15-rc5.
>>
>> And the same issue still applies to 6.16-rc2. FWIW Qubes OS kernel has
>> this buggy patch revered and nobody complained (contrary to the version
>> with the patch included). Should I submit the revert patch?

It is not a good idea to revert this patch as most of the systems will 
encounter the original issues (PHY access and packet loss). The reason I 
first introduced this patch was because big vendors reported the packet 
loss issue. You can refer to the following sightings:
https://answers.launchpad.net/ubuntu/+question/816003
https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2066064
https://bugzilla.kernel.org/show_bug.cgi?id=218869

As an intermediate solution we can either use a privileged flag to make 
it configurable. I will share with you a patch that might fix the issue
on your system that I would like you to try.

FYI, we are currently investigating a similar issue that seems to be due 
to a misconfiguration of the system firmware.

> 
> Just submit a revert then 👍 I have no authority here, but had good
> experience with just sending a revert patch in the past 🤗
> 
> Cheers,
> Chris

