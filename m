Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B22A0391E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jan 2025 08:55:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D692E817F5;
	Tue,  7 Jan 2025 07:55:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aWvlNe6HwJFX; Tue,  7 Jan 2025 07:55:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF83A817C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736236533;
	bh=tzs29KJhgLCgDRCKkh6sl+t84nXywQ9TVu5SXTQ9EYg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7CQctJbf6uHB5c/nXKYdk3eSRXC/+GMp2kOTy34qWIHvWcX1opwqoUXSqUpQmYsQm
	 F3ycYAyKtIVx4Er9X0VJUBlrMS1TeHg665hSRMmSlMMrGMC66wUKHEclYNH5WK2O1d
	 D6Od+MSOORd9A8A3CB9Hu8fiayXRkRPJ/T1TsxQdVdXWUomMvEkR5R0q0uLd3r6Avv
	 nZPdpDj7AaG55nql+wfx/zzU+y2KmY/Bf5mFn6uMoMpZeEH+kvT9JV7/HYGdZWRRvB
	 2zc9HfNC1Lt+8V5oN5OYuXA1ZA4bTjyX6DoAs9O4Grke50yJQp0xEgtIe666SHyrJ9
	 z5T35/DwbaxPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF83A817C0;
	Tue,  7 Jan 2025 07:55:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D5BD97AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 07:55:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C3D80817AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 07:55:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lKbEs2gVYkTL for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2025 07:55:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A34ED817AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A34ED817AF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A34ED817AF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 07:55:27 +0000 (UTC)
X-CSE-ConnectionGUID: Xd3S5hHsTu249rSCCv7qEg==
X-CSE-MsgGUID: 4f7MA0udTneQs6loKVIj/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="47394763"
X-IronPort-AV: E=Sophos;i="6.12,294,1728975600"; d="scan'208";a="47394763"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 23:55:26 -0800
X-CSE-ConnectionGUID: W7OHZiWYRjmzx2nZ47odjw==
X-CSE-MsgGUID: XIFjAgxDQL670QSSTOAZzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107314203"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jan 2025 23:55:27 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 6 Jan 2025 23:55:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 6 Jan 2025 23:55:25 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 6 Jan 2025 23:55:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eGsRGbqzi9E675dmGWIssB5cMDgmGCYOK9vZ8Ze8a72mgJvLIoIJJVMQSlBvJJm31/Vp8ZSVDy/HCljCWiimBghizwv5Xx8wC3LejonoKz75IRz1pwgMb/kAnVGTKBZnM1S460YTo/85nijcPJEoeQ9gUd6JOIWhf7X73JX9j54KBMr1jPCUCUe4oBBuACXS/3afYYwwbh5BS6zX5g1SnWDhX9kl+uiyLeEIH5dEUiTAHP3B7a/PrEht0roaINgmzOBbQL7pQiMAT3G2WhEo1vmfJgqJtt8mDgMtm2GqFE5SFHEsmWEWcX/yS/Y3xpr397eK9SrN70TwTvxJhndjZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tzs29KJhgLCgDRCKkh6sl+t84nXywQ9TVu5SXTQ9EYg=;
 b=SycaLMCpMaLjIIVFTlxpm4rkrDc6QSA2VbCJJo7vUURdkWgNVAjNGGs0kdAjUq+bN/v1mN3lCx1m0CXffuNXmTGUwKmQ/A323GC26gHW9jQqVB+C+J3n3HBpgCSV5Othhvg7jipMXkcCFL+y6Ez0PdilIyJQ5/K/hFWdxrVyrLwJPwBKwLw3XWRvb7tf7pTccSbwjeLqsJfRgTXBynDTNbzmoxvtt3ZYRXdrQH7zf7/27WhUJIk6hBdiMVmwQt5q5mNj7uYnM8GbYKm8lYC7T3dKpnCnFU9+8dgU87vj/fOBdoBsO/lnvp7tR7hQVrJX/OQCMEH2301gj6guvJp3cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:9b::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.18; Tue, 7 Jan
 2025 07:55:19 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.8314.015; Tue, 7 Jan 2025
 07:55:19 +0000
Message-ID: <7af42c1e-8a18-407a-8abb-a43a1362765f@intel.com>
Date: Tue, 7 Jan 2025 09:55:13 +0200
User-Agent: Mozilla Thunderbird
To: Dmitrii Ermakov <demonihin@gmail.com>, <davem@davemloft.net>
CC: <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>, <anthony.l.nguyen@intel.com>,
 <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <linux-kernel@vger.kernel.org>
References: <20250105113822.108706-1-demonihin@gmail.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20250105113822.108706-1-demonihin@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0028.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::10) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|CO1PR11MB5186:EE_
X-MS-Office365-Filtering-Correlation-Id: 225bac9a-740f-4f16-4abc-08dd2ef0a185
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VUJEZFRaQjV2NUQrSGhxWHNpYjI5Ri91THZmYmNNRitqVjhPWWZtS0drZVJv?=
 =?utf-8?B?SDRoczlnWklUcHF4c010Ymk5dklxVnVUQURmeU5xV0Z4ZUF6dEZ5eTNLZzIz?=
 =?utf-8?B?WVgyKzNJaHZ4Q3dVR04yNW5IeXJlTE9QaVRtaXdob0M0ajBEamdRUlFxYTc0?=
 =?utf-8?B?SnFtR1l6SnA4ZXV6eVRKd3Z5Y2NpVGl4RVZxUnlMRnpKblpXQUk4ZUdvUVlN?=
 =?utf-8?B?NmluSjgwd2ljaDBqN0hnTGxYZ3lNZm9FT1U1T2puYUVPZnltc1lNM0RQSXhq?=
 =?utf-8?B?UWVTQWdkOTdLK25zTFN1bUl6R3pmMTJOQ1FYcWFscGgvb0Z4Z3JyYnFSSGVr?=
 =?utf-8?B?YkZ2cU5KMllFTExWRHd6dU1LazVmRTQzMTVOalo2WEdLUEM3SklNaW1PeDZZ?=
 =?utf-8?B?YnQxeEUzQUp2OGVzR0JlRVlweXB0THlOUm0rTWhuVURON3duNG1RcVgxWFNG?=
 =?utf-8?B?ejcyaXBWSngyUHhjVGt4cW1abUhwdG9YMzh1ZnBjOTBmRldhN0U2Q0FEbUkr?=
 =?utf-8?B?UjdEMVZrVlJmdnJlWnlSYWttMlUxK1FteERZeCthckgwZnV3VDZ2M2dNZlkz?=
 =?utf-8?B?NGJKeXNaZk9lcDlRL1FLRDR1TWFPMmhnVXNmaEtxaW1oa25zSUVjbG1EQS95?=
 =?utf-8?B?eU03OXlhbzY4WG5rd2xRc0tORFd2MUFLbGtvaHd4eU9mSkRFdU1DUzZiZlov?=
 =?utf-8?B?QVpLUm1rVkRrWHVPRlUxUkpveHZTanhYbXEvMS8va1pnb2NBRVZERDNzTmdY?=
 =?utf-8?B?OXhneG1pLzBXbGlrT3hNcTl3ODdPeGpIZDIvUjR3S05GNlZMUjdyVzdKOE1P?=
 =?utf-8?B?WGxObmk4V1NMaFZPSGkxaVRWeEhWMEhXdjhUeFIreHZXOWREVFhaSXl1bEZX?=
 =?utf-8?B?eDVzdnpVUlNHbk9Wci96SDh2R1VjN0NtbzVVWStRNE9PRkRXY3l4Sk5MY2lL?=
 =?utf-8?B?L1NqRjZXRm9Kamp0RFlBZUVZM0UxVVM3V09pWXlGNzdSRkZMRTdNc1hqQWVt?=
 =?utf-8?B?RGppSTI4V0pDdW1uV2kxb0FIdUlSSU1nTmNCUzF0bE5GaDhzRFZkNnRUQ2Zy?=
 =?utf-8?B?cXpibklCRjFEYjNmdlZZNTlSenAxQTlsTk1tSktEWUxwYkJUTFc0VituQ0Qw?=
 =?utf-8?B?V3NGYVhwS0lxTTNuVEo4VlV6Yk15bTBZRmZ3N1Nmbm9Vc0NrNE9PMTJ6OS85?=
 =?utf-8?B?Z0tKajdsSGk2bE9zZDkwYm9qVXFRNWFyOGxnZ214TDJaS1hHeVlYWWM4dXFU?=
 =?utf-8?B?UEpvclV3aVpZMHMzMWJFMkdHVGN5TWZjRnJNaURhQVh1MG82MnNDV1FnYzBW?=
 =?utf-8?B?aE5IcTRhZ2VnUmhhV21rWm5rNmlqV2NKYmNHVW1hcE5IMDRtM3hhZHZYM2l5?=
 =?utf-8?B?V00xT21MT3cwZEVsSURORWZrYU1DNHZMZTl3dXowQ0NDU0tTK29QQ1Zmb29h?=
 =?utf-8?B?d0xHRGtsNE5USWdqdTNXc21ZWWJsYWtzTThJai8wT1lnUHRFRDlVVWFqVTlM?=
 =?utf-8?B?Z0h3ajlBVHhISHl0ZnJUSGFQNm04S1ZNTThKUWF5bVgxVUtPbDlSZEEwZlBV?=
 =?utf-8?B?dmZoa3RCVVB6dEVxaW95Vlpzc3RERTRrU2piYllMbUVjMnlibHdrSjVBVmF2?=
 =?utf-8?B?blBUZGhNM2l6ZW5BUDN2dURpZFZuZ1dFazZFOFJ5dDVoM2cya1FFQ1g3VUNH?=
 =?utf-8?B?dHowWE5ZOGVwNzdRQWtxclZNM1hPWExYZmZwdGVOS3psbFMxdXA0Tml0SFpH?=
 =?utf-8?B?aFdiSkREWmFqT0dSVkZ6a1ZHQXpTYmE2OTVPRVFzeGJHRUJBOXRNYXVWY1Qz?=
 =?utf-8?B?eHExQjJQcElUYUhxM1BaM3lzQ0NuZ0FRdnNLWTJtZ1FBZWlJbGxUejJESFRD?=
 =?utf-8?Q?p3EoYSwhEHYCF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UksvYmEwekN3Q1FJNlRGZzJaVkM5Z1pZWXRDT3RoZ2RhOVJhWmkvUUcxaXRL?=
 =?utf-8?B?NGRSemFQRmJZWUdrWWtqbVNrNFVtdDIrOTN2S2FLSThjblVpTllDYnVCby9I?=
 =?utf-8?B?YVk3bG5zMmxublVDVDVnaWtzSHhncUJ5SFBPdUVpaVQ1TmJnKzlzRk5lQjNI?=
 =?utf-8?B?djljU0dwUTlEUEZRQVcwZ0s1amJ6RzliY21Pb0VtdHIxNDJRVkRGN2FiVS9R?=
 =?utf-8?B?N2hNbkVFR2JvQVRPMGkycGQ4cUVsU1FabkJzWUxteWNGWndtMVJNOW5iZU9n?=
 =?utf-8?B?TmZIbXJHTGZyYnhPd1JTUTJjT0dwNHdnZEIrUHd2YzcvazR4QjVMS2N3SmZm?=
 =?utf-8?B?NE8ySS9DSzB4UzBtUDdQajl6UHpLcGdIZ2p3Z1ROdm5XRE5mSHpPSnp0NTZY?=
 =?utf-8?B?WXBYa203WHZDUjhUWlE1bkR6b2FiQnYvcVhtdTJmbDNlQk45MUlITzNvZXR0?=
 =?utf-8?B?cjVSNXFyZkMxcG1jWnhuMUJMejNCbGVyQllod3F5WGF3WUFmNDUyZUtXMlF5?=
 =?utf-8?B?MDFObE5TczVQUy9JWk9WL3paR1pxNDMzNWNYYjVTcFJHS3BtS3k4Z3BJOUh1?=
 =?utf-8?B?MkNJSm1PazRVV3g0Q3NrelpQOWFsMW15bmtDTE05ZlNYUmMzNnRjQUhRQXJ3?=
 =?utf-8?B?NkRTUkpNQ0EwcXRwVjVmVWtoQm9HTVl6TUV1d2QrOUZ3cDNQQjQ0NkpxUXFv?=
 =?utf-8?B?cGcvTUFoYmI2V1VVMjhWYStTVVVRbUtnZlNjVGk2QVExMUpIbUxPYWhUV1Z2?=
 =?utf-8?B?MUNrKyt5U3FiWlJxVktOK3FnQ2xHSXZ5UU4weUlGU1dRUkR0OHRINVNXMHU3?=
 =?utf-8?B?KzZRYkFKRjY5RlhmbTFpSERxVGFVdklRYnBxWFFINjU0S3I3TGE1eUovcS95?=
 =?utf-8?B?MHN0Z2xmaW1yKzdGQnpwREhjOURLcC9YL094ZDFyV1JhZVgvbGw3L3JYK3NB?=
 =?utf-8?B?ZWI1OENjaWZYZU9xd3VZUTAwNUJUaVM1ZXR1dDJyRTh2SzZ4UG41NnNpdHh2?=
 =?utf-8?B?VnJSZmFGSTVmNDdQL0JqaEVNQS94RXJTblI5TmRlSDhuNXptMWV2STdhZ3V5?=
 =?utf-8?B?ZStGcTd3ZEVNN244TFVReWVhS2tRTWo4bTZIMkQ5UURFWVVIYTBpdnV3dmNT?=
 =?utf-8?B?UEZMMkYveDdVYlZOVG5YYkFIeHZteWY4OUxyZnFmTnNNcFBEUFg3MGhRYWNK?=
 =?utf-8?B?eEdBWWhuUzMrbWNhV0lrbjFjMDdyUENhdHBuN25aSVdBRXkxMDR3NkJTS1Vl?=
 =?utf-8?B?dnVtSTVaN1BJaWwyL2ErNzljdTFwTm1jWnhoVU05YUlEcXBySW5XU2EyM2Vm?=
 =?utf-8?B?UTZ2eTVqWnZFMldCaEdydnRzMGVoTzZlQmJtd1h0eU5qU2pvT1FYNUJYV3pI?=
 =?utf-8?B?YzZvSzlkT2pCbUsxcDRIam0vOUlyZnhFMGRIQWVrdTlQSmlBZWFXbVEzckI0?=
 =?utf-8?B?dndocmc0WnlpUmZ4Qnh4VVhmNEZXK2lGTkVzcHloQTJwVGwwd1MrVmNVK1l2?=
 =?utf-8?B?OWhDK1pXRlNiUkI0dGUwUG9BQjlyLytDWFF0Y1dweE02c2laYlFLTDA5bCsz?=
 =?utf-8?B?UVhScjJQaGVHWWFHdm9qai8zV0FsSFFWMjdhakxKTVRrM2FNekR3ODErWWJV?=
 =?utf-8?B?TmxJeDFBVWduNzVqeGtnd1FGQWwvdmd6NWo0Qm9USzlZSnNPK1YzU05ObVVh?=
 =?utf-8?B?eVpTeFRlcDEzcitWTU1Xd0JhWk1IRms5S2JpL254NDVpcHhQUm9KeWhpT1NN?=
 =?utf-8?B?Y3M0cE1maTJOTHBQeitVcjh4ZndwckwyT0lUbzBSZzN5T08zZzBSZm1pQk1F?=
 =?utf-8?B?RVg0cTJWK0pIRkdNOHRRYkdyWFlaVkkwZEtvN2VDZ2Ywb0tLVHViQzdwWkI1?=
 =?utf-8?B?Zk1mcm8vUmN3TmZyZlBERnlqNXRNWW1MM0t3LzdJZ1BRQVR2UUJ0VlAyODFD?=
 =?utf-8?B?T29ldExhQkRrU1NUWldxRjN3SC9nSDRoc3lQWVZsN1BuT2dtNkk0RFY5T25W?=
 =?utf-8?B?NFVlR1JGdURiYmF2QTJuN3hyaG5rOWMyOW80ZzBLb0NQVFdiZWhwc2xJc0R0?=
 =?utf-8?B?QkJvZmhCakN4MkFBTWxDdEZLRm10TzFNM3BLOFpqdmpOSEhyUU9UQWJvTTlD?=
 =?utf-8?B?N3BUOVJqcGxDT0s5Q2hLS2dkVWg1elZ0KzMyeXROc0w4Qi82ZWJDeUpPR2M0?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 225bac9a-740f-4f16-4abc-08dd2ef0a185
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2025 07:55:19.6454 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YRabvRXn/DgeV0PoEXeITh33WRiKfdRRz4qIlhs3PUXlHuLw/yyPO9yRa3S8PK70vbqEaFzqxVX6HNyJV3fKHy4Ki1n6YD/HuY9oWCEh7Jo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5186
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736236527; x=1767772527;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=711BWhM+PFeZL7NBN18hkv7Kggp78mL7KeFBLfeVPkY=;
 b=RTeUoQm9DsIXRM2EBW2M01vikqZiv8LUwP5v/yTPbm87Z0r/Q/9KvN2x
 cWnzYcGftkLmVQ0UnMwmZZPyEHIwj+57geqXipv9K0Suiddc6lsRDnTvi
 UMwUO9ai6h9xB2JEYT8Mc+3QSL7K/cm3/+uSM3Aece8K0qOdPU8B9gD0W
 fJkY0FwDikWFrpGQKtOessPbK2HDvw3XpRBcnQKgGaJx8NWA2429Pj2gW
 2e/9kktDIac3nsfzK3TxDFjkOirfMo3lyUwfs52NLBNY5jYKyyoXmW3x+
 DzupQ5c72UwsVBlkNdnqvoRbxWE9QJHOTbsByt/4qYRCt5XvkoSb4kBWj
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RTeUoQm9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 RESEND net-next] e1000e: makes
 e1000_watchdog_task use queue_delayed_work
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



On 1/5/2025 1:38 PM, Dmitrii Ermakov wrote:
> Replaces watchdog timer with delayed_work as advised
> in the driver's TODO comment.
> 
> Signed-off-by: Dmitrii Ermakov <demonihin@gmail.com>
> ---
> V1 -> V2: Removed redundant line wraps, renamed e1000_watchdog to e1000_watchdog_work
> 
>   drivers/net/ethernet/intel/e1000e/e1000.h  |  4 +--
>   drivers/net/ethernet/intel/e1000e/netdev.c | 42 ++++++++--------------
>   2 files changed, 16 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
> index ba9c19e6994c..5a60372d2158 100644
> --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> @@ -189,12 +189,12 @@ struct e1000_phy_regs {
>   
>   /* board specific private data structure */
>   struct e1000_adapter {
> -	struct timer_list watchdog_timer;
>   	struct timer_list phy_info_timer;
>   	struct timer_list blink_timer;
>   
> +	struct delayed_work watchdog_work;
> +
>   	struct work_struct reset_task;
> -	struct work_struct watchdog_task;
>   
>   	const struct e1000_info *ei;
>   
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 286155efcedf..cb68662cdc3a 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -1778,7 +1778,7 @@ static irqreturn_t e1000_intr_msi(int __always_unused irq, void *data)
>   		}
>   		/* guard against interrupt when we're going down */
>   		if (!test_bit(__E1000_DOWN, &adapter->state))
> -			mod_timer(&adapter->watchdog_timer, jiffies + 1);
> +			queue_delayed_work(system_wq, &adapter->watchdog_work, 1);
>   	}
>   
>   	/* Reset on uncorrectable ECC error */
> @@ -1857,7 +1857,7 @@ static irqreturn_t e1000_intr(int __always_unused irq, void *data)
>   		}
>   		/* guard against interrupt when we're going down */
>   		if (!test_bit(__E1000_DOWN, &adapter->state))
> -			mod_timer(&adapter->watchdog_timer, jiffies + 1);
> +			queue_delayed_work(system_wq, &adapter->watchdog_work, 1);
>   	}
>   
>   	/* Reset on uncorrectable ECC error */
> @@ -1901,7 +1901,7 @@ static irqreturn_t e1000_msix_other(int __always_unused irq, void *data)
>   		hw->mac.get_link_status = true;
>   		/* guard against interrupt when we're going down */
>   		if (!test_bit(__E1000_DOWN, &adapter->state))
> -			mod_timer(&adapter->watchdog_timer, jiffies + 1);
> +			queue_delayed_work(system_wq, &adapter->watchdog_work, 1);
>   	}
>   
>   	if (!test_bit(__E1000_DOWN, &adapter->state))
> @@ -4287,7 +4287,8 @@ void e1000e_down(struct e1000_adapter *adapter, bool reset)
>   
>   	napi_synchronize(&adapter->napi);
>   
> -	del_timer_sync(&adapter->watchdog_timer);
> +	cancel_delayed_work_sync(&adapter->watchdog_work);
> +
>   	del_timer_sync(&adapter->phy_info_timer);
>   
>   	spin_lock(&adapter->stats64_lock);
> @@ -5169,25 +5170,12 @@ static void e1000e_check_82574_phy_workaround(struct e1000_adapter *adapter)
>   	}
>   }
>   
> -/**
> - * e1000_watchdog - Timer Call-back
> - * @t: pointer to timer_list containing private info adapter
> - **/
> -static void e1000_watchdog(struct timer_list *t)
> +static void e1000_watchdog_work(struct work_struct *work)
>   {
> -	struct e1000_adapter *adapter = from_timer(adapter, t, watchdog_timer);
> -
> -	/* Do the rest outside of interrupt context */
> -	schedule_work(&adapter->watchdog_task);
> -
> -	/* TODO: make this use queue_delayed_work() */
> -}
> -
> -static void e1000_watchdog_task(struct work_struct *work)
> -{
> -	struct e1000_adapter *adapter = container_of(work,
> -						     struct e1000_adapter,
> -						     watchdog_task);
> +	struct delayed_work *dwork =
> +		container_of(work, struct delayed_work, work);
> +	struct e1000_adapter *adapter =
> +		container_of(dwork, struct e1000_adapter, watchdog_work);
>   	struct net_device *netdev = adapter->netdev;
>   	struct e1000_mac_info *mac = &adapter->hw.mac;
>   	struct e1000_phy_info *phy = &adapter->hw.phy;
> @@ -5416,8 +5404,8 @@ static void e1000_watchdog_task(struct work_struct *work)
>   
>   	/* Reset the timer */
>   	if (!test_bit(__E1000_DOWN, &adapter->state))
> -		mod_timer(&adapter->watchdog_timer,
> -			  round_jiffies(jiffies + 2 * HZ));
> +		queue_delayed_work(system_wq, &adapter->watchdog_work,
> +				   round_jiffies(2 * HZ));
>   }
>   
>   #define E1000_TX_FLAGS_CSUM		0x00000001
> @@ -7596,11 +7584,10 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   		goto err_eeprom;
>   	}
>   
> -	timer_setup(&adapter->watchdog_timer, e1000_watchdog, 0);
>   	timer_setup(&adapter->phy_info_timer, e1000_update_phy_info, 0);
> +	INIT_DELAYED_WORK(&adapter->watchdog_work, e1000_watchdog_work);
>   
>   	INIT_WORK(&adapter->reset_task, e1000_reset_task);
> -	INIT_WORK(&adapter->watchdog_task, e1000_watchdog_task);
>   	INIT_WORK(&adapter->downshift_task, e1000e_downshift_workaround);
>   	INIT_WORK(&adapter->update_phy_task, e1000e_update_phy_task);
>   	INIT_WORK(&adapter->print_hang_task, e1000_print_hw_hang);
> @@ -7741,11 +7728,10 @@ static void e1000_remove(struct pci_dev *pdev)
>   	 * from being rescheduled.
>   	 */
>   	set_bit(__E1000_DOWN, &adapter->state);
> -	del_timer_sync(&adapter->watchdog_timer);
> +	cancel_delayed_work_sync(&adapter->watchdog_work);
>   	del_timer_sync(&adapter->phy_info_timer);
>   
>   	cancel_work_sync(&adapter->reset_task);
> -	cancel_work_sync(&adapter->watchdog_task);
>   	cancel_work_sync(&adapter->downshift_task);
>   	cancel_work_sync(&adapter->update_phy_task);
>   	cancel_work_sync(&adapter->print_hang_task);

Hi Dmitrii,

I have found that in the past someone has already tried to change 
delayed work instead of watchdog task (59653e6497d1: e1000e: Make 
watchdog use delayed work). This resulted in driver crashes and 
connections to be reset unexpectedly (d5ad7a6a7f3c8: e1000e: Revert 
"e1000e: Make watchdog use delayed work").

Because of that, and unless there is a clear benefit to using 
delayed_work, I recommend to reject this patch, as the risk of 
regression is high.
