Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD5D917983
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2024 09:20:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 244E5409F2;
	Wed, 26 Jun 2024 07:20:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tBd5n8xCet6R; Wed, 26 Jun 2024 07:20:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45CFB409EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719386448;
	bh=yVuOIXbMgChegiJttBPo6cuPBd6nkNsxMHb9krT2PNo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vQh2d+1jD/u4AFypMxLR+57LFjJwITdYJ9m3r/OqpFXuo1cIPKR5mOCO/fsg5s+0E
	 QjmVWlfM2OwViQ/wHN+hF1G1OphOpa35W2vqQd9pKGr6QEFBwrdrnb25Jk7gcEOQYX
	 lscNvAIUycgBKxCupRjT3Nbk3h8q7cEKfBSp0um8GrADqgB/jm4RPTAIEp/MY46HDi
	 uSjruJFl5vm1h59eKHcE17pimwpj4ddnn81Qk73jEW1F3AY50ur1379Fv+OpTVqGr3
	 3d7Ng7bommwJS60xGHgztLdVc9TaWJYRq42PIO2TtDUgcfXsEouzzhKPRdd82pQs8A
	 zwKTOAESd+zlA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45CFB409EA;
	Wed, 26 Jun 2024 07:20:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F5441BF400
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 07:20:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7A7F5400D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 07:20:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 16fp2XNfHXsA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2024 07:20:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0D1A2400BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D1A2400BF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0D1A2400BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 07:20:43 +0000 (UTC)
X-CSE-ConnectionGUID: BkNqZE1pQdKo5CQd0MowWA==
X-CSE-MsgGUID: yYvQ3l7ESaS+AYSVizwb7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="20249899"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="20249899"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 00:20:42 -0700
X-CSE-ConnectionGUID: o03tyOu2Qoq4hhsds6Ba3A==
X-CSE-MsgGUID: WnisQtkNRlKJGayB5pIZjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="43985165"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jun 2024 00:20:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 00:20:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 26 Jun 2024 00:20:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 26 Jun 2024 00:20:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OZ4M99Ou3ZyWbjp64Zioa/hNcL70STQrNQKgZ2/4y/DM1BasPKiMW99LohaF9F14kISdnxazARSKhKNvV8TaI+f4VzjcIHOlQW0ZjH/jKGCn3Q8irsB6CsiLXsaC++nXDLqZ2JkRPUQtipNoR3QrxRdFQtyED0Z8ygJlekA/dMM9UovurnnRoI5JNonbTcB0WVqRCJ3C3qbORee8GDTTh9wEiAaiXXVIjKuTbBm+nsR2pYGaT4PtyhgayWskUq0K1SpsdmfZVViUfWRdzFwnNx86lmHJ2i1mB4P1piE5k48rRMuqsOZFt5IREppR9ckMr/YXk7jdXhC1RVvthuKzRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yVuOIXbMgChegiJttBPo6cuPBd6nkNsxMHb9krT2PNo=;
 b=kHzqSTQJhmPs4pjy7E6GJm7uRT41BaAF4DcA1QoHBDGNadTXv20zsBEy4KRDsEsu803rECE77ltLjxmIvCgOeZ39J/Wtt8uVkfMY18RN5FGnEfREpXHKLjpFv6AmwaEmfvd4zIC7yFqO9wbQt3F9rlMPZk23zNgM/wuQnWanINPlbrOf5yZ8xrvyGBpBz6xPO1SRIIUfaYy2FbnyDIxdi7cvSf/AAlU5kK2QRJhZiwc8R2XKhREEFO9TNKV50r7OxmA3alqp2Y/eTyfGiGSZVH940iaFuzNmDNOKv4kxtHFr9ppiOq2DgPPFNC8kE1rjXeb6U+TTbIQHAbiE2oOaLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5798.namprd11.prod.outlook.com (2603:10b6:303:185::22)
 by PH7PR11MB7551.namprd11.prod.outlook.com (2603:10b6:510:27c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Wed, 26 Jun
 2024 07:20:33 +0000
Received: from MW4PR11MB5798.namprd11.prod.outlook.com
 ([fe80::b8b0:d86e:fa9a:5eac]) by MW4PR11MB5798.namprd11.prod.outlook.com
 ([fe80::b8b0:d86e:fa9a:5eac%5]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 07:20:33 +0000
Message-ID: <2c79b2e1-4dbb-4a37-9b29-17f55a9d2cd5@intel.com>
Date: Wed, 26 Jun 2024 10:20:27 +0300
User-Agent: Mozilla Thunderbird
To: Sasha Neftin <sasha.neftin@intel.com>, <intel-wired-lan@lists.osuosl.org>, 
 <vitaly.lifshits@intel.com>
References: <20240613051749.3341996-1-sasha.neftin@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20240613051749.3341996-1-sasha.neftin@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::19) To MW4PR11MB5798.namprd11.prod.outlook.com
 (2603:10b6:303:185::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5798:EE_|PH7PR11MB7551:EE_
X-MS-Office365-Filtering-Correlation-Id: 46e1e106-5474-4b15-03e1-08dc95b07790
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|366014|1800799022|376012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UGFGMDY2MG1nWlZlMXAwdlNUM0MxaExvVVUveDZxUFhzL2JFN3RwOUVwa21r?=
 =?utf-8?B?Z0svQlRNUE9EMnJ1NmxpbzNOaXBJcTZTSDI0bDdRU3VEUFZFZEFkRDJFMmdB?=
 =?utf-8?B?eUo3WDJwMk55Q3JwdC9HeGZHR3c2QmZXWEwxRzBoU01MQ3BTQllCUE9Jd2di?=
 =?utf-8?B?QXJSdjl4anMxdTVUeDhqcmM4dFREME9hc0xSRXhQN3VQMnJaZ0wxV2ZYZWwy?=
 =?utf-8?B?NVBqenFCSkx5SWJvL3lleFdrUVJXSFMxRk1VY3FvQnlaZUpsWEpyNkxEM2RV?=
 =?utf-8?B?U0x4LzBFc3ZtU25xWUpmVUgwMkxGN3FHTDBRZ2lSWlpHRms0OVpwQm1WblZ2?=
 =?utf-8?B?S0MvaHpjSTFQWjcrdFhpaUN6RzZ4RVFVSUJwWDR6Q05EM0ZaZDlyOEgzOGhZ?=
 =?utf-8?B?cC9iQ1MwTTgyRWpqTDNlTkVBMnlsTlMzaWVvc0lNcmp6ZHhjWmQ2VnNxMkdV?=
 =?utf-8?B?ZXZidVZvVUkzWmNvN2hva1p4ekhFeWhHZWRUbkd4S0ZJYVZjTmJ0YVlxQWMz?=
 =?utf-8?B?Z3BJeit2eVg4UXNOUzBCVnJxWHJ5N3B0UWF6MXVwUThjNFV4Qkpxb3daTzJa?=
 =?utf-8?B?cWRmUW5HbXZPb0Yxcms2VW1SNkZRbllybWM2RFhSdHdLbEZIeTN6dHFFQkJW?=
 =?utf-8?B?SmIzalNVSEdyaUJUd0I4V280Ynl2TDhhK1BmTWU5L3hCbDhaT2NyTnU1Smto?=
 =?utf-8?B?YithMU04VUZpZGlsYm5RY2hWcHZuaS82bFJ3WVVybUxxaTd1TTBrVUVVZFhj?=
 =?utf-8?B?ekd3VUEwUmFiekdueXRMTFBZc2hwSkliNkEwdEtra09YckV6Ykg5eWUvbXVB?=
 =?utf-8?B?L0c1T3c5NXd6ckVaSVhCWUlrRkpaa3RyZVhyNHprZWtvZ2dzemdJbThoRWVo?=
 =?utf-8?B?dVpyRVJ5SjBFK00wQ1hFZjlWclJhSG9aRHVsUEhvOENxcTFVa1ozcm1ya0d5?=
 =?utf-8?B?YjZOUnhxbTAreE5IU2NpdEwvUXhhM3d1SlRWclBmbmpFWWNxbDI1ekxRYWp5?=
 =?utf-8?B?ZHE1eWh3UTRvNzJoMTZwRmtoM3J6T2xKcCtMS3NDY0ovZEhTRFhJandveWxH?=
 =?utf-8?B?UDg4Y3FvaEhhTVI5N0ZzVUpONWpTTFR1K09wRWlZZDU0bG54OUJENURSdVZ3?=
 =?utf-8?B?cWt2Q0RKU3pKMWl1d3dYV1UxODhtZDVEeEN2Rkg1RnhuSktYbzYwT0xiMkRC?=
 =?utf-8?B?ZlEvOFNDcFVWT3V0cmFvQTIzdEFGMFhTcy9qU2d1ZEp0R2IyN2VqakkyRzhJ?=
 =?utf-8?B?cUZySEQ0NEdFRTkza3VCV25HRm95MURvT0pOc1lSNnRpVGx6NW1XTnBPeXlz?=
 =?utf-8?B?T29HQkhtVWJ4b2FjMjh4TlRva20vRFIzQWFiZzYzcGZoMmlDNUdtcnNtMWVE?=
 =?utf-8?B?WjJabkMwVUc1c0J6NGZyMVJWOUNqQTJibk5WUFhGODdlNEhLa2Qra0k3Q3dO?=
 =?utf-8?B?MWROdjB1ME40VEhzSUliOGc0b2lucTVIclRheXNtSWJBTHdwU2g5TmZHUUFF?=
 =?utf-8?B?UWtmVkxweGV6bHFVK2trWnhNL0U4VU5PRmdFZEJWZzhaUXlDVjhobGVFR2FK?=
 =?utf-8?B?Y0NBY3FaaDhrcnM0MmVnZFVwWUY1aUZBeXowYUEyT1I3ek5DdGFDUmRRcVJa?=
 =?utf-8?B?NXdTSHFndjBMKzg5cEdYY3BkK3BsVmdweVVmdS8rdmZtTE40K3FSOFhFaFAw?=
 =?utf-8?B?Rnc5cXkxZG9zb1FvUmVWcDZCTFFIR1FnMnB0WFRQVHlKRy8xMjBPWTNpbFdh?=
 =?utf-8?B?V2pwaythUmUyZXkrYkNRRUI1MG5DeG5RSkN2c2pnL1FQc1grb3phMk9hTWVO?=
 =?utf-8?B?STU5SEpPSVBCZ3ZHZjdydz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5798.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(366014)(1800799022)(376012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?blZzWlMyeHAxQW9YR1FYNkxPOVRlVllBa0VRZ1M4OHBZSmxvRVp3U3phdGNR?=
 =?utf-8?B?V2wwaGt3K2YxeHA5dVRreExwbmFZcGRhckk5aHRIWUVmR21ZOVZ3MWh2M25N?=
 =?utf-8?B?NEJrYWE0RGh0MW1HR3V5VlNOYUNoY29MMDVWb1grK0RINXdJRTVvYklabFlv?=
 =?utf-8?B?MHo4Ymd1SEZFSFk2S0dZT3hxb2tnMzZydjRRbm9xdzhIcGhPaGs2YTNNZGNH?=
 =?utf-8?B?SVlObVg3OFQwQmR4bTFFQitBaEN5OURmUlc1MGZ2b1d3dmM3emp1U2k1MGRy?=
 =?utf-8?B?c0JuMUlwclE2SnBxK3ZGQ3I3K0diQWUzcUNuTUZGSmx0ek1ubXo1MnhxNk9o?=
 =?utf-8?B?ZXFkcW51M1BMTTRaWGRSYlhBQTd2UExvK01KMVM4QVQrMnJwVU5Cb1pXVCti?=
 =?utf-8?B?aDZTRmIxUGtxWlpFNVVmWWkrSTUwOC8rVTRXLzZRT29JcWpha2hycEo3dUpV?=
 =?utf-8?B?N2FRbGlXOGtvMzlGLzFOWkNDZi9tVmNmV1F2R2VVblo1SmFMK0ZVbGp2YmRF?=
 =?utf-8?B?bnBYZXYrTm01UlY1UStjZHhRY2NaeVU5bWxkeTBiR2Ztc3h1UVcxOVVJa3RG?=
 =?utf-8?B?NndhS1l0T3JBOVcvazhnSmhCZzdNTDlQM0QwVFFPQWJDUXBGdnp4Rkt0eHAw?=
 =?utf-8?B?cytNTCtnanVoanpvNGlzUFV5ekxKbytRMkhBc21GS3lFOXIyR0xuSitUK3ZX?=
 =?utf-8?B?c3NMdDRJQkxFbEpSWnRlTk9pa01IQzZXU3ZESDlaaEQrZWVVMG42cFJRM2t4?=
 =?utf-8?B?am80cUlQMzFCUmlsTjgzSk8yNU1lRk5icS9SNGo3OVR3Q3g4SUxLbi9QK3Iy?=
 =?utf-8?B?ZnI4cWJyQlJrOGFYZlFZZWh4RUpnbHk1VlZLMXJGR0k2QUVMbmpmMmJsU25r?=
 =?utf-8?B?eHJGNVJWbndKazh0akdSblY0aEluV0J2UmVtL1BxTGk5SEhCUHN5Nk9oSWdX?=
 =?utf-8?B?UlJvVHpRb08wQlE5eTJ5NVplRWNiOGpVd2JFWmlLR0pQbC9meFRuSlQvZGNN?=
 =?utf-8?B?MTh4djZLbHQ2NDdyVllJUG0xVXVJQ2oxdkJHampzUk1sWitVdE1uQ2FqeTZN?=
 =?utf-8?B?N2hSeHI0cFVKUTJ1cXpaTU1IZ2gyRS9aMFBGaWF2azVCR3UzL2k1U1A5enJn?=
 =?utf-8?B?QndDVDlEZzloc1BVSU56TVM5RXNzQVl6S28wY0tROFhzSjlnN0ZVRGJvUkhX?=
 =?utf-8?B?TERVN1V3bEl6VzZFQjdjQy94NUM5VkxUUjhyVG1WUW5rdktNTDBYcFowcmx6?=
 =?utf-8?B?dnVlalRpZ3BsUFBxajkxOGVsOTNxWVRaU1JQbi82bWcwelo4Y0hLNW16TlhU?=
 =?utf-8?B?V2cwV0t5U0ZlTUZFZ2dqV3d1M2ZTYmFqWkJrUk9qaS8rU01sdVZSbTNmODBC?=
 =?utf-8?B?OGloUmkxR2FPTlpGOGhYb1FnOWgrUXhyT2ZOTFFBeUk0MnE4SHNHMUxyZWVi?=
 =?utf-8?B?UEZocFN3N2lXdG1UcWZLVGxjVmc5R1J4RllaU0U5RDhtRXNlVkZ6MEJIQzUv?=
 =?utf-8?B?UGFmU2h0bnR3NjFvVUltL252azBlSHlFcGxabm9aVkl1RmtBcjhqcnowdVNn?=
 =?utf-8?B?TFZDYys5NGNtZUJSd1BzWGVOZHdTUXFteXRtTFkvc0x3N3BxbUxBcEJzazZO?=
 =?utf-8?B?dVV1eEFCblBxRFpTTENBcDdyQThqMllGYk12Ky9LU0lpTHc4dm5VMmMrRHcw?=
 =?utf-8?B?QVRHR2J6b2toOGF2QnU4aDE4ZXRMdnVNSkpmZWE0aFl4WVFQRSsxam4rVytX?=
 =?utf-8?B?NmpjbGoySWI3Q0s2aHVmdGt6Qm83Qm55Vk12NkxURGw3Uzg3d1AwM2REdjE1?=
 =?utf-8?B?SVdEZUdSdko4N2YwYzVpaElmWmQ3SElWbkxvalpBYlNIVXJBZWF5aUhudVdI?=
 =?utf-8?B?RXpxYUpNTTZHL002MXFKVEFDUzNqQjdUOURqcmozQmJTMlJnb3NXMXhmWFhG?=
 =?utf-8?B?N3htQStwVks4Q2JpbkFqanYrelZHejQ4QjR3ajFiWi9UN0pMODBKM2hjMTRF?=
 =?utf-8?B?OFpYeGpJTGRVNTJNbWc0VFBKMTVPR2lwSTJHOEY4Y2M3Nnh4enV1YUtPdm5v?=
 =?utf-8?B?UzZhY3gvYWJBVVUwRlJTYzFsREp3NHFndDVzMnZEeXhUTHpIRVZ6ZXRxV0Ev?=
 =?utf-8?B?S0FGSGo1ajlUcnZaUldzeG5RRXVESW5RT3gwakJOVnZzZEs4NWZMRHpieHlQ?=
 =?utf-8?B?MEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 46e1e106-5474-4b15-03e1-08dc95b07790
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5798.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2024 07:20:33.6371 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9gslvtfJXatN00Mw4uwZ/cSOLg2TPoh3t71oyXmqZPXRqTIRlcJb1+hUSvJHxhDrXSmBCEjlEQckbHOI6ku6VHddhMSEl1N6urqd6qsNmgE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7551
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719386445; x=1750922445;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NlQbDDzMufEnDBE0/th9EXQs0UADXeXHZPxuK2TKB3w=;
 b=NA2KXqNGcFf5yEcCRwMqOnMjeMjttAT41CuWPkPDtK5NilBtA23pvL0E
 BGkl7x1ayG1o0wUnH1mVzZObiNzdF5p87NaX+FMu8MASFdhCBzWJxalQp
 rNM1gXNffcrWStGbcjq75uap2bZa6/snLkNufr5tza3opuvtpWxKixxm5
 TI1mhb5ihiz5toWIAXWF7pgiz44obRPuAYd5aNidR+Bi9izPMM8krc6gj
 FtJYt6xgNFvCB9f9ncUjfCt7aPm0CjULU01M7E5f5FqSHrsGeRCuc3rUz
 jon1bVdT95yn2ZGpXk3k3XcSAZgf6THzqHrzOPSIJopzH2hDjKgoYR0Bi
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NA2KXqNG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v2 1/1] igc: Remove the internal
 'eee_advert' field
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 13/06/2024 8:17, Sasha Neftin wrote:
> Since the kernel's 'ethtool_keee' structure is in use, the internal
> 'eee_advert' field becomes pointless and can be removed.
> 
> This patch comes to clean up this redundant code.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
> v2: Fixed grammar in the commit message
> ---
>   drivers/net/ethernet/intel/igc/igc.h         | 1 -
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 6 ------
>   drivers/net/ethernet/intel/igc/igc_main.c    | 3 ---
>   3 files changed, 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 8b14c029eda1..c38b4d0f00ce 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -202,7 +202,6 @@ struct igc_adapter {
>   	struct net_device *netdev;
>   
>   	struct ethtool_keee eee;
> -	u16 eee_advert;
>   
>   	unsigned long state;
>   	unsigned int flags;
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index a80ac148b402..1e9241103aa9 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1636,10 +1636,6 @@ static int igc_ethtool_get_eee(struct net_device *netdev,
>   	linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
>   			 edata->supported);
>   
> -	if (hw->dev_spec._base.eee_enable)
> -		mii_eee_cap1_mod_linkmode_t(edata->advertised,
> -					    adapter->eee_advert);
> -
>   	eeer = rd32(IGC_EEER);
>   
>   	/* EEE status on negotiated link */
> @@ -1700,8 +1696,6 @@ static int igc_ethtool_set_eee(struct net_device *netdev,
>   		return -EINVAL;
>   	}
>   
> -	adapter->eee_advert = linkmode_to_mii_eee_cap1_t(edata->advertised);
> -
>   	if (hw->dev_spec._base.eee_enable != edata->eee_enabled) {
>   		hw->dev_spec._base.eee_enable = edata->eee_enabled;
>   		adapter->flags |= IGC_FLAG_EEE;
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index c057d0afaf9a..772f425b1a24 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -4976,9 +4976,6 @@ void igc_up(struct igc_adapter *adapter)
>   	/* start the watchdog. */
>   	hw->mac.get_link_status = true;
>   	schedule_work(&adapter->watchdog_task);
> -
> -	adapter->eee_advert = MDIO_EEE_100TX | MDIO_EEE_1000T |
> -			      MDIO_EEE_2_5GT;
>   }
>   
>   /**

Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com> (A Contingent worker 
at Intel)

