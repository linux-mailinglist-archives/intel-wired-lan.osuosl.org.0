Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D82F1B1A84E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Aug 2025 19:04:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A63180C99;
	Mon,  4 Aug 2025 17:04:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9FqROggptd-w; Mon,  4 Aug 2025 17:04:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C739E80CEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754327065;
	bh=Q2HjlLu0WtZa+r+PS1dEZma4LYE6fAybjtpnpaFxJzo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u/9C+6oceuyPIxoYCnbpFuR8CQH1nLuY/1yj7oxjTqCx0+s1P+Fm94NIE2jjhiq4T
	 yJorlomMHGaPZ5DgZfb3jNYNUOCTxkq9vlxu2cHnpxXZKPi9AZ2gY6JvKDMgHS5BMB
	 5keeUyN9sBu9QK8zHVG8gTVtSg0pB7MhxjbHkoTTxyEcxtLWK9OGOkCiuanmEFT3tV
	 Nycc/MfUsjo9c11DpSVvIuGgBw5tGvoLU2rlErMJGaoJoHt775FktKm8MoXHaKvhcG
	 7Sc8Qb45mB8AC5hi7SHzCImWxdttrY9ey5kNq+Iv/wOC1+4J+WBvWFKVNw0zX/Qvdn
	 rn9NMl2J6twGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C739E80CEE;
	Mon,  4 Aug 2025 17:04:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 846D21A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Aug 2025 17:04:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6247E80C99
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Aug 2025 17:04:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OVhsvF4WrUlo for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Aug 2025 17:04:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A830780C83
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A830780C83
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A830780C83
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Aug 2025 17:04:22 +0000 (UTC)
X-CSE-ConnectionGUID: 7HMSunADTbyZ+MuBBMykrA==
X-CSE-MsgGUID: 3sOloMwRRl+f9oWpDfUE/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="44195862"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="44195862"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 10:04:19 -0700
X-CSE-ConnectionGUID: epKeMzvLSOSmmkjHC6l+VQ==
X-CSE-MsgGUID: KFIRG/hwTp6mOmFFU5OkkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="164611172"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 10:04:18 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 10:04:17 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 4 Aug 2025 10:04:17 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.70)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 10:04:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N1m06bHf2l6V6NL4b0zsIEghPsfMEzgrdNmq0d8UiWLW9V0lleO2dspRXtOgzebNzXGwdvse/GwOmDgc1RQjOsFYZmKz1EDm7Ed0cAK3ktnPpqdQhVchwMAIKCBL8NuBhZUXoyBZ37Xe35r3XS9A/+8gbNkS3SG4OjEu7oFBXxJz41TLx4vEipvjLWq3//8EOfxI4nZeja1JZr/tjPP0B2jFsGZ/dwVCwnovocJq7fc8Rq8qRncJqaPBEuIzQxdyVJyZHiQUf2LC/13esZ8hYNfdLJ4tDEsep1v0sVImr44XlCcTp/ALa0sD+SeOTLPmo66ZZBtoyE5/wj3qyEul/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q2HjlLu0WtZa+r+PS1dEZma4LYE6fAybjtpnpaFxJzo=;
 b=K30+xXoIoL/vnkk7qGi5uU7P4mbyW3JeIp4ZRrzln8/Vyo63U8ZlF6Ov2EbwtRfWZqBvZW20QBJJCH/9pvWYKucF8A1r/Bn5pRg6U+US1Z/0MB93j1ohrLrpAqfChu5wPPIGnvhOwNqbVx0chKSZMgkSXKvdmQpP3/ppX77NY5lUHvwzQroV3jj9M2xlVivJm6N1RWPtSxIv3/6vhJ+KJcLPtjQhvBvshjhjQdNrlwnkUWijggPXCTMVL45XM2rNwAG0BU/ayIdGsEIBVTlG+HBipTTHag/MtVHlnP17lGQCHUzrl6r8KaeE7ilEO61g3Rj9F6imKFZv3KbrIAmS/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA1PR11MB7809.namprd11.prod.outlook.com (2603:10b6:208:3f2::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Mon, 4 Aug
 2025 17:03:45 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%6]) with mapi id 15.20.8989.018; Mon, 4 Aug 2025
 17:03:45 +0000
Message-ID: <d8a1978b-ca4c-4912-acf8-bcb6c921a7eb@intel.com>
Date: Mon, 4 Aug 2025 19:02:57 +0200
User-Agent: Mozilla Thunderbird
To: Joshua Hay <joshua.a.hay@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Luigi Rizzo
 <lrizzo@google.com>, Brian Vazquez <brianvv@google.com>, Madhu Chittim
 <madhu.chittim@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20250725184223.4084821-1-joshua.a.hay@intel.com>
 <20250725184223.4084821-5-joshua.a.hay@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20250725184223.4084821-5-joshua.a.hay@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0102CA0028.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::41) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA1PR11MB7809:EE_
X-MS-Office365-Filtering-Correlation-Id: ac02ccab-b1bd-4029-1cf6-08ddd378df69
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TlJYQnczMmd6OUdhc1RpUXlIcG9oSDRQQjZZM3J2akJwRDEwWE81RjNURlo0?=
 =?utf-8?B?VmFMSGpDOWhJK2pkQTVRck5QZUZuYWZWYWJ1b0QvZml2T3owUXJDak5FZGx6?=
 =?utf-8?B?YWh3YndVbllBVUplYjJOY1ZrRWkydXVYaGQ0akVQdTJlbCtHcTZNWEd6VTZa?=
 =?utf-8?B?aGpPSVpkTCt0NEgrZ3p4dXdWTDlUOW1ZR1A0WHR1OTZGKzdUNlBsRGdSOEpK?=
 =?utf-8?B?dDJxRVNwTXNZUk1mWmFJR0hHcnZYWlBwejN5RVFiLzhweStIYUJPRTIxemt3?=
 =?utf-8?B?WG5adWlncE83eG1TSGN1ODUyWW12SHBndnN1VUNIVW1SUDJEUWh3SzN2Tjhq?=
 =?utf-8?B?V2RVQmpIay9OUVUxTG0wT0ZQbzJFWHRPbURiZWE3TVcvVUdIcWFJdlRmemRw?=
 =?utf-8?B?S0J2aTBzbDQ3NTlwb3ZMc25yc1FLNEVTV29jTlY2WDdnQVUwQVFmRGE2NXAx?=
 =?utf-8?B?b0ZTc1UrczJ6TWQwdU81QjhSSDhFakFxQ0FsZ25MeEZHRisyR3ZIVS91a3Rz?=
 =?utf-8?B?TWwwcFEzcWY0Nk9ZMnM5cVh2SGV2Mlc2Q05EaHFmV0E2WkxFVmZ6dUZ2UDRv?=
 =?utf-8?B?cVVjNndiOFYrZFhKZzZ4NlNsUnJ5T0lTL2MzSWY5cTQzYU5Ha2RzMU1kNlRP?=
 =?utf-8?B?UVBCRVBXY0xsMlBza25BYzFxSHNZdDRuUkpIb0dTQkRiS1hUU2ZXVmE1NVM3?=
 =?utf-8?B?cHlEYmNObW9BOXBZdzRFKy92c01hOFVqVnhra2pWc2lvREpxNkJmcHMxSkNn?=
 =?utf-8?B?bjBacWd6UXdmWkY2OE5WWWpIZnppMVQ1ZWovZUgyRms2Z0Q5eGMyRllTVTdO?=
 =?utf-8?B?OFlUalhyaVQ1UHhHQ0FTMy9OZ25KTitoWE44UVc2RmlXM3k0a3pLVks4ZVlZ?=
 =?utf-8?B?R3JnWUhQQ3Q0ZWhrcEFIMWJqdTkwMjFzSGNDdEE3K3I5K01VU3VyRTMxeHB4?=
 =?utf-8?B?WVZVcStOMmhvL3h3QmlVUWEzTzhzUXZ5Z1paM3lFVVZMd0dLaGZxTVBMa0Yx?=
 =?utf-8?B?TlR1ZDQ3OXJjTklxYmttS2FZU3RGRmx2cnpDYnpDREJrZzFhc2ZVL1pQcHBJ?=
 =?utf-8?B?TFhuU0tkZTlCSEt2OE5zeGpzYTdCc1lQY0tJWE01SjBpVHhSdm5zQlg4emhy?=
 =?utf-8?B?SkROMjhSRDAwV2xnOXVxNFNXK1JGOE5BdzdTSVZ2R2VFU1RxUnUxeG5kMFVk?=
 =?utf-8?B?YzYvYktPYlZuOEE1NTA0UVAvSzJXQ2ZDb3MvMkJGb2VQc00rWEQ5UmJNUG1o?=
 =?utf-8?B?T2tJR2lTandUMGZxN0oyS1NQOUZlZ0o1Q3ZidFlHelhkNEVvWFBrTmI5ekp5?=
 =?utf-8?B?dXBCb0g4L3VFY2gvdTlGREJRek1TUnNLcGR6WGV1YUJDNlE5eVJoMklsMlMx?=
 =?utf-8?B?RUdONkpqSHJib05pK3pEN1U5eWRHeEVvQnlvK2ZONmNFeVFrNThPb3labnps?=
 =?utf-8?B?Y2w0SDhUb1JSd25PWC83VU5mdUxGOEQ3b2h6UVBKK2JIdW96eUdXUUIvL2h2?=
 =?utf-8?B?VlE2WFkvRFN2R2FMaWI3dG9ZdW11N2lhM1RlNllEdWd1QlJ5NlI1SE9qazRk?=
 =?utf-8?B?MFR6TzNHMDhPazdQWlNRYWhiT2wzWWpVUXdIN0NZVGJoNGg1K0Uwa2NVWGpB?=
 =?utf-8?B?SXRHVmdCeXVKVnZKUHRSUU93ajROSVA3eEtldzJnTTBGMkZXbTBCTFZQR0Z1?=
 =?utf-8?B?ejlzeVhDRyt5cEFkMCsvWmFSZjlaT1lrN1BGT1c4SlFXUUVTMGgxREg4a3BK?=
 =?utf-8?B?NlI2R2NBQTUweGpUUkVGbkVMeFpoTnQyc1VndDdMUjJPZVY5K0cwaXZWNmk5?=
 =?utf-8?B?NkRKMWNlVlVDdzJtcC9ERXJCM2MvYTI4eWp5UzZTdlNSSkMrUjdxeGJqekd3?=
 =?utf-8?B?RU5pVGNFRWRacjFBb2VTcXJkY25tV09LN1VNRkxCQnk0OUE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aXY0MFJibDlWUG9iWVhIaFZCYzVQM1lLMnVpUHJhWDNtaDJXb0tEUmFBODRQ?=
 =?utf-8?B?UGJkMkt4bjF0UDJvMHlsYWpaYVYvRXF6ejgvWDdoczlpQk0wRUdFS2xRRjRt?=
 =?utf-8?B?clBBRzJYcHVGSTluQ1RGakpvOCtMWExscG5CNm1mZ1kxYTBEbUdoNjhvekw2?=
 =?utf-8?B?enBpQzFMenBqRCtuN1NJcnJQc2xIQ0VPaERBRUJ0QzFBZTQ4SGFGUmkveWx2?=
 =?utf-8?B?NDV6M2NWTGlzNGsyTmFlT1QyaHl2bnlLUGduMWtDK281NHRpVzY0UkNBTDgz?=
 =?utf-8?B?RVhHaXRtNU1OaWRiOFl2Q09xbDF4RTBZaVdLUWFEekU3dU9SZXVUcXYrWmY1?=
 =?utf-8?B?SUwzck9IaDNPWHRzaEovRURqK1loQjh3T3N6TFdkZmZnNk9rMlAxN0lKbkpE?=
 =?utf-8?B?eUg3Slk1TGhSVFR3aWY0TForcnUvMnJEL3RhYkxTRXpENVVJSThxNk5WZWRk?=
 =?utf-8?B?MkhOTDZuelhpbFBtUTJuRHBKQUFQQkdNSVNERnRwM3VmWHp2UHVDODNvTm5Z?=
 =?utf-8?B?anR5UEdBenV5WlNwTXQ5Z3R6YytUNWZrVVJ6S2UzSXhDVW5ZYkM4QXdyMUZq?=
 =?utf-8?B?czhRTkJKdG9wLzRxd3QvbUg4eU4wb0tsTWJ5M3J0ejZHTkJSdHd3YVdiOHkr?=
 =?utf-8?B?K3J5Y1QzaVB6ekh0ektlaHZHT1ZyUEJkZ2ltM00ycXVNZWplZjNabktzQm55?=
 =?utf-8?B?YW5zemlPSDk4TmRPTHpwZGNlbVFteC85SGQyclgrazJ3QUU0YVdvQzZVVDMz?=
 =?utf-8?B?MytpUTJMbzJDREtXWkgwRG5jdEN4T1QyK05UM2pLemNOWFI2T0VnYkQ5ZEFV?=
 =?utf-8?B?VUFnMjR6THljbktEQjNiSSs0L2FVU0x0cnNTcGMyRDNFZUNqMGEzbmhtbU1n?=
 =?utf-8?B?eGVFMWtzcHBKc2UxRC8zK2UxNXZDMzBtVnhaSzlYU3JJMlJrV2gwMm1JcVZ3?=
 =?utf-8?B?eUZVenRFMThLRHJLZkUzOGdaajBlQ0gwRlB1WXcrNDBmS2pGRzlpUjNrbW9p?=
 =?utf-8?B?Y0JndTZhREV5KzQ0QzlFbDMzTTlCSWhNYXNLbkc4NlFGWGd3UzZHbC9Jd0tV?=
 =?utf-8?B?bjlmT0IrSWVkeFdQNnpRUXN4MjBtY1pNbzYvWWhYcCthWUFQSXUwWDgycVRw?=
 =?utf-8?B?Z1JWOUd0SmhpdWNkbGxKdGFUdzhKN2FQZW5oSTF6U0g2ME96aWFKY3RDdTNm?=
 =?utf-8?B?VnR4ZjF1aWQ4ek1WZ2lKRFVUQkNYTUFGc3hPSVFSdmdVTFplNzhIWHM1aUFs?=
 =?utf-8?B?aUtMYzdlek9IbUNuU3BBUWJHc1U0NDNrYkJLVFJFcDdjM2R4RVM0WHFkVGJq?=
 =?utf-8?B?TmNZQzJkVmFnNGMrWUNFd2F5ZjA2dzNsUjIxQU4wRms3bzJZNStGYzF2OG4x?=
 =?utf-8?B?SmlEV2RVYjMrN3NIQTdHWEdjeXV6NG5IYk9jYWhxbTlENFkrUzE3VkhyQXpa?=
 =?utf-8?B?WGVWNEhSS1d5eTlxd1FCQ2RDcGZhUXllbjRaTHRFRjk3WTZDYk9vZVljRzlC?=
 =?utf-8?B?eUQ1LzJjcUM1QldZcFZHeTN5OE8yK0k5MDBTKytpYysxM3dMYkkyZWdaS2xL?=
 =?utf-8?B?L1dYaHo2ODZ0MGs2OHg1cy9aMXdNYzM2U0xzRkNZN2QvR2hHTkJxSUIwM1BC?=
 =?utf-8?B?bldIOTJIUmh2YnpLTXBHdGNlTHZzM055NWk2cVNQeUxoSzJaRG1yWHU3TmFH?=
 =?utf-8?B?M3ljWW11VXk2cDZ5Ly9WYzBNTlBkbVlzVSttdWkvNG9Kb3FrV25TOEV1NXJS?=
 =?utf-8?B?ekwwVFRwM3crcTRVK2Rwd3N4YUxGeTdQSEx2S0QxNzV6MlpQUThrYUlXNXZC?=
 =?utf-8?B?bi9hNitEWGVHUzJWclVGbDFPWXJBUjVRWDB2UTRtb0hRQmlRYVhseWR2a3JT?=
 =?utf-8?B?NkFxZlRaVzl5Q1dRcHFJZ3ZFcFQvRFBhdVNuUEFkTytjVEpRbmk3VGNvYkhw?=
 =?utf-8?B?ZlRJRDRiZHZOa0FOT3ovSWhOY2hSR0RJVVVGbmVXNXBqekNETklxZkxjeCtE?=
 =?utf-8?B?NGp0MXJzbkNzOVJvSVRJMFVUZDF2Y3pPd1FpdlptRVNOSXhzQzFvVzRnZHpq?=
 =?utf-8?B?SkF4RjlZaUlTMEZncm9lbk1ub3YwYmp3a2svRWFNT0VDY0J3OWlKL2MrWFF6?=
 =?utf-8?B?d2YxbHYvR3YvRXJCMFJFcnJURDFLd2c4ck5ERERub2JMQmlhdkRnbndnMHpi?=
 =?utf-8?B?eHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ac02ccab-b1bd-4029-1cf6-08ddd378df69
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2025 17:03:45.7887 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z20273YIy8vM7zLdfN78qSjbl8z5sr2FdsSCYSb04nurS5qhpkm8FNUFi5dWXEAkuVNUxQ+WS4NvNs/HEGoYvnyNrWnSDqvoblZSm5RrYhQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7809
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754327064; x=1785863064;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ugPX0MiU/VS+WU8c5z+eSJ5o5JwXrGW6t++3YiCD3aU=;
 b=e+yTbp1pugcuzWFwUXZzfae6e2dCMDJrCiU2qaPM71ewTbR6vP3FG+tb
 uuS0skD2pQms7MR1h1P/15ZrFCp8+ZvL2rWcX/tIvwv/f1ThTn4Dz3m84
 a0TxnMjqzUHwxKGyvtxhciT80CVgBimwqd7UjeITfaSj1MjpTZYvVEO25
 gF5bCQrVJcrHaN2R+pzU0p4DDr9qVsKSazQHgVCdzZM+L8BlWMHyJdT0s
 TQTkDBEoj/g5VDsEXVuzUwP5pzNaFhi86bPMKp/nEi5ClwfGsPapV7Tfo
 rd+YQSHIR1QdbgzwSUXJlqksLeRMbD55FDcj3/NfGwOs8Wb1tY2FgC72h
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e+yTbp1p
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 4/6] idpf: replace flow
 scheduling buffer ring with buffer pool
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

From: Joshua Hay <joshua.a.hay@intel.com>
Date: Fri, 25 Jul 2025 11:42:21 -0700

> Replace the TxQ buffer ring with one large pool/array of buffers (only
> for flow scheduling). This eliminates the tag generation and makes it
> impossible for a tag to be associated with more than one packet.

[...]

> -static bool idpf_tx_clean_buf_ring(struct idpf_tx_queue *txq, u16 compl_tag,
> -				   struct libeth_sq_napi_stats *cleaned,
> -				   int budget)
> +static bool idpf_tx_clean_bufs(struct idpf_tx_queue *txq, u32 buf_id,
> +			       struct libeth_sq_napi_stats *cleaned,
> +			       int budget)
>  {
> -	u16 idx = compl_tag & txq->compl_tag_bufid_m;
>  	struct idpf_tx_buf *tx_buf = NULL;
>  	struct libeth_cq_pp cp = {
>  		.dev	= txq->dev,
>  		.ss	= cleaned,
>  		.napi	= budget,
>  	};
> -	u16 ntc, orig_idx = idx;
> -
> -	tx_buf = &txq->tx_buf[idx];
> -
> -	if (unlikely(tx_buf->type <= LIBETH_SQE_CTX ||
> -		     idpf_tx_buf_compl_tag(tx_buf) != compl_tag))
> -		return false;
>  
> +	tx_buf = &txq->tx_buf[buf_id];
>  	if (tx_buf->type == LIBETH_SQE_SKB) {
>  		if (skb_shinfo(tx_buf->skb)->tx_flags & SKBTX_IN_PROGRESS)
>  			idpf_tx_read_tstamp(txq, tx_buf->skb);
>  
>  		libeth_tx_complete(tx_buf, &cp);
> +		idpf_post_buf_refill(txq->refillq, buf_id);
>  	}
>  
> -	idpf_tx_clean_buf_ring_bump_ntc(txq, idx, tx_buf);
> +	while (idpf_tx_buf_next(tx_buf) != IDPF_TXBUF_NULL) {
> +		u16 buf_id = idpf_tx_buf_next(tx_buf);

This line adds a new -Wshadow warning. This function has an argument
named 'buf_id' and here you declare a variable with the same name.
While -Wshadow gets enabled only with W=2, it would be nice if you don't
introduce it anyway.
If I understand the code correctly, you can just remove that `u16` since
you don't use the former buf_id at this point anyway.

>  
> -	while (idpf_tx_buf_compl_tag(tx_buf) == compl_tag) {
> +		tx_buf = &txq->tx_buf[buf_id];
>  		libeth_tx_complete(tx_buf, &cp);
> -		idpf_tx_clean_buf_ring_bump_ntc(txq, idx, tx_buf);
> +		idpf_post_buf_refill(txq->refillq, buf_id);
>  	}

Thanks,
Olek
