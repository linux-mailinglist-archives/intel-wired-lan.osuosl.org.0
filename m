Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59492A26D4E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 09:30:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 037584072F;
	Tue,  4 Feb 2025 08:30:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id agYI6hHTubJZ; Tue,  4 Feb 2025 08:30:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD29140731
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738657828;
	bh=2+vrPuyRB38d9/hn6QGkBFSAe8RsFqVyx6MXuMe9vdk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GZfi8degoe+yrp427wzIafFA6oHa+tEBwj1Rhq5u6yHkHg76PzNOIFzQ6P/5zQJAR
	 r8KTwbWM7Bhwm2Oizc+5bh9V9FobP/WaZgosQV3uPaLbcuy2wuUkFCyNkYxgvu1Q9J
	 A71jwAEp2sbyQj5fqVAsuZiXUPayvctn8pTBw6uoW+oAQNP6GGI65biAXKC8TqAk5B
	 +aI1l+kvwUiEoqNZN6sAii3KIpnjLYMNx2aG4xmANdh9rShT38FHn+akUBi2H7Rt8y
	 6VDMz8AMvjGQcu3RR3kV/lPPzBExCPzxioOElHU+z8nj9PKZnEfj+4MQGczdTO4+Wi
	 0vW1v9JlO/gNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD29140731;
	Tue,  4 Feb 2025 08:30:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 92EC012A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 08:30:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 75BE8403D9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 08:30:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A5an16_WNAY0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 08:30:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 45A81401DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45A81401DD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 45A81401DD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 08:30:23 +0000 (UTC)
X-CSE-ConnectionGUID: MY5qYqQ9Q8+Nde5GYKzfrg==
X-CSE-MsgGUID: UA2wAJuXSRWqNKYjlzmyOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="50165788"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="50165788"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 00:30:19 -0800
X-CSE-ConnectionGUID: 44pw0bG2RPme2o3L5iXAvQ==
X-CSE-MsgGUID: VdH8zt7IRy+jwP0HYSRVPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111380353"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2025 00:30:18 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Feb 2025 00:30:16 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Feb 2025 00:30:16 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Feb 2025 00:30:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZtdDXQ6TrnEA0eeVMBbv8XfXH49iOhwbChd1X2ZJKvVKR9E6ZInqZLgdEoWhsYs13JAttTG8fhzZe5pbM/+n/AnPXGDHUU8iYpid2trd65TV4oo9kVxm28zoqP18tbJx2pgZiZ2SvW8Ty8/lklpfLrMnZLxZJpn1kJNPoSsabqrT3wFFTgBj6smeXC+vuFNlSe+posZHDQs1gW1iUVo/wMEMlNv17uk209yP7x3m+BOVYVIrMomdOHFW3RAqmCamKRhPKzHAEEUK0JeDOwKuIbdxWUpzx8U23TklTw8t2wW1xc5MHRfc9TkDCOKqmH63HaBdk9XrsOR4LA8pV6iVzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2+vrPuyRB38d9/hn6QGkBFSAe8RsFqVyx6MXuMe9vdk=;
 b=uqch5MWpO84PZbbDdFyZ7+bWaOQ4jNHhS78X+qCaWFL2WSZGz/oVK/V0++TR1JR/6mNZ7lJGYKWv1zazowd57At5a5XNFnzppZBBxwgBrv+ifAS88XVdIab32uskWQqBzzwaeMISzFERffevY6qCDhs4MCwJaSTm6P8uym9rOthuTix6HnOOsinQejA//HNVkSOJrRsWpaOLwAD6j3hHVz9jO2zGpcGtTrZY5TENhwyp6MtbsJDofsVb5ZGWdnEPAyAmSUNdBA4ZiQv8Mvc2JQeQxwMdyDGkJ0hVgGgbgIyQOWM092rJ5vIqVq31kgWuqBN///U9FFPe+6/3R/tc7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6682.namprd11.prod.outlook.com (2603:10b6:510:1c5::7)
 by LV2PR11MB6072.namprd11.prod.outlook.com (2603:10b6:408:176::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Tue, 4 Feb
 2025 08:30:15 +0000
Received: from PH8PR11MB6682.namprd11.prod.outlook.com
 ([fe80::cfa7:43ed:66:fd51]) by PH8PR11MB6682.namprd11.prod.outlook.com
 ([fe80::cfa7:43ed:66:fd51%3]) with mapi id 15.20.8398.021; Tue, 4 Feb 2025
 08:30:14 +0000
Message-ID: <fc56c1bc-b0d6-467d-8b3d-7635a2a424f3@intel.com>
Date: Tue, 4 Feb 2025 09:30:08 +0100
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>,
 <pmenzel@molgen.mpg.de>, Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20250204071700.8028-1-jedrzej.jagielski@intel.com>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <20250204071700.8028-1-jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR07CA0308.eurprd07.prod.outlook.com
 (2603:10a6:800:130::36) To PH8PR11MB6682.namprd11.prod.outlook.com
 (2603:10b6:510:1c5::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6682:EE_|LV2PR11MB6072:EE_
X-MS-Office365-Filtering-Correlation-Id: 5cca08c8-b579-49a7-1ea6-08dd44f625ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Yk9Ed1lwV0hVSnR3eDlsN2haM0MyZjRyWnFoak1JTmlXODdWcDd1VVFuV2tL?=
 =?utf-8?B?SUtUemdjczhZVEgvNmpNWTRjM3hJZHhGK092VFczWm9sSFBPYVROVnFZUHFY?=
 =?utf-8?B?QnpIWnhIbHhoVUlOVDVOekZvTGVXRUh1c3c2S2lDUWlGZVFad3dabndpenJz?=
 =?utf-8?B?S1NvcGM5S2NYSWRNSmlsRlhYeEFrMUpQNFVwL1U2eHNhcjlWUysrT2llMkxP?=
 =?utf-8?B?enp6RjlOOC9UZ2ErR2I1Z1NSbkFBaVJuUlorYXNGMVJBZmFxb2dKdVpEbFNO?=
 =?utf-8?B?YmhyMW9XZGtSYzJaUjI5SFhOWEFwbjFWZ1p0a3ZSb3JERllqVFF4NDhIdW5B?=
 =?utf-8?B?SUxjMXAzVWdUcVY5WFI1TnRPQXZvLzE2d0dQUm9jT0tMNU5taHVEdDZMSWJE?=
 =?utf-8?B?RmRRNkc1VE1kbGdoWkUwNDA2bDdGdnhtN2FJdTFIUjhMOElRMzJ4YWgyK3Zm?=
 =?utf-8?B?aFYyRTFnT2h2K1JIcEY3OW0zeldyaWNBdVJoaGo5K0pBbTZsRkJ3dUlmeGtl?=
 =?utf-8?B?VUkwZ28weVZwZXFQL0drNzdpS2MzNFRWZGtDTzBsNER3SitGb0tTUG1pNEQ5?=
 =?utf-8?B?WGRtN0RIUWNmUk02UHB4UDUrZVJla3ZnOWNDNlJpU0NYcUVsMG80V3VuWU11?=
 =?utf-8?B?Y3FIYUNWL21nSTFYVkFBemJNSVM4bEJPcTJaNTA3amlldEFpU3dTQnNtUGk4?=
 =?utf-8?B?Z2lDZE1MaEZGdE53aGpVNlNiNXBzY2xoSzVZdXdoWFRTMDJrcEdHWk9YMERs?=
 =?utf-8?B?U0lDVExlV0F6ck1BV1pIWTVTMGN0Rlp2OE5sdWpHaU1IbzMzZGlTY011Y0Zt?=
 =?utf-8?B?cWpPSE1TZmR4MmN6Q0E0eGwzQ3lUcG9qTTl5S0JaVCtvc0d2Y09jc3EzODRa?=
 =?utf-8?B?ZzM4UThKeDRzdEtsN3ZKYWswclhjQUZLcDNQL0hadXFXRmxWWTdITEVaZlNS?=
 =?utf-8?B?K3A4RkN2OWMwbE1FZERoeVpkTzVPczNCR0F2V1dzbS9kei9JRTFVYlJIZE5D?=
 =?utf-8?B?RjdlVjExdGloWmhHbjE5cldDKy9XbkNUaGVicXNNY0prOVZqVkZRNyt6TTNM?=
 =?utf-8?B?WUNuV2JLbGNsenF6dDRNeUo2Q0ZpZGJKUEViY3k5VXI1YnpUM1pRdmhlUkxj?=
 =?utf-8?B?K3FQeEppOUlKSUpFeWhHSUJBcDhYSzhQamJQbWZLM3FuajVCY1IzaTZmak5F?=
 =?utf-8?B?aHhZSGdPbUxlbEg5UHJjeE1rM0VkY3QrUjFjVTYrRW5hbjhnbWdjSGpXQU11?=
 =?utf-8?B?RC92T2hiMS9UazJwT25rQy9yYW5WclZjNEF3d0NDdlBhVnU1Nlp4MlY0bUx5?=
 =?utf-8?B?YUdJQkF3THJWWDZRb3FVREwxcVh4cmRGZjkzM2RiVUlQTC9xc2M5a2xBNTYz?=
 =?utf-8?B?eDFMNHBtYnUwVjg4Qk51RGx0TEo4UkR4cGRuMngxMnh3SFZCTW1lUTNkLzhX?=
 =?utf-8?B?Z3hQZWhtdDVZM1R4Vy9mRDhBTVpuZXJwcjF6RjBmS3JIZFhvTzNSSGQ1aGNW?=
 =?utf-8?B?NWlya0wxTy8zUWY0TFZ5SjJRRjBUUjBmeGpIMEpFR1A2am40d2VpNEhSRTVH?=
 =?utf-8?B?enFQdCtCQ0FEcitUd1FPNmhWbktuNFBUODg2NW9PWjltRmtEeTFGa25nNFd1?=
 =?utf-8?B?aXgwUWY0bjFpSUhrc1BzQlBLaWhlN2NKYTduV013d0xxK1RkMWpHTUZsL0Jm?=
 =?utf-8?B?N0grOFlCbkdka3dMNERTMGdHTEVaUFpnZk0wc3ZlckdhVTRIbGZob1dkU2ZJ?=
 =?utf-8?B?MnZTNXFVc2c4U2N5ZWU1SzJMSVNMbXVzYnRBSWlwUDV0Yk5NNEVhSGxnWWdB?=
 =?utf-8?B?ck1SN3JIb2ZPWWF3dkdYelNJVjdMUmhGTnNzQ3N2K29ZbTBuQk9GZk9JWSt5?=
 =?utf-8?Q?eV+oxF+fVz/sg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6682.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWZ0dkVteFhmSU56NnhVNnJrdk9idVU0ZnM1UG5LdFp2eUlvQnRQdk9VR0h5?=
 =?utf-8?B?SG03bkU0UGJ2bGlORW9FamkwenowL3JJUWhyemtoOHptNm1vWFIyNkVOZS9G?=
 =?utf-8?B?NTNpVlZqY3ZQWGk3Y3J3NDEvbTYxZmZOanJzU1NXWlIzTDVaRWtTSGptdjBh?=
 =?utf-8?B?ODdOeVpWcjJYaFNCK2R0bGx4ZlR1UEkwa3JxNUtlYmdWUGZ2UVpiOE5qT0Ry?=
 =?utf-8?B?RWNJRTdNZ0RTUEtVbE9MVHpQYmV4cE04eXRtcmZZK29Bd2lad0RBQk92MXoz?=
 =?utf-8?B?SFpYaThlSHBXWEszRUJ1dlB4ZXpmMyt0MGlUUGhGd3lxamxGTUJLZ2xVOGda?=
 =?utf-8?B?aHRaOHNwR3RSeW1qdEdOb1ZjYUJnOEpXK3JIdkY3YTUyNzJvNW1Sa2FwKzQv?=
 =?utf-8?B?MEFSenVvTTJVVGdmZDdkZDFvSE1nY2xBWE5yd2JERWY2UG1UTExXaVZzTkgv?=
 =?utf-8?B?Q3NoUHhxbHRlNkF2bkNnVG8ramsrTzkvbGNQSENOcU1lVjRjMXRUMy9OQmxi?=
 =?utf-8?B?NmIxMnVMemU2aE9uR3h1YU9xUWh1eDByaUVvSDArNVVWdXhKdUFpK0VsSUt2?=
 =?utf-8?B?aXRVMWd0aWFRYnlpN1B0RURwWldsOFR5MmE2cTQyU0lCWVNHSzRVK3VURlRw?=
 =?utf-8?B?THo0YVhrK2N5TnVoZDJWOTAwdkxIUFNOeTRveGljN2RRYUFrU0tTODY3Z2Zp?=
 =?utf-8?B?Z0RHQmd2NXA4RE45bVJuSlNObnI5V1lYQU1ldGVWakNlVjc2TTFxV2NLaHZ3?=
 =?utf-8?B?SGQ0SlJkUjhWZU13R3p1cUxzK2VEck9VMDg3akY3UkUwejlodU9WWVJQK0pD?=
 =?utf-8?B?bVBsb0llYklPRGNFZGkwYW50S2N1dXJtdURVQXVtUkJoM013ODVhNmhaWGIr?=
 =?utf-8?B?R2tMOTFSYU5McVNxV3QxT0lTR2dnNGU4WXpsU3JCQWRTcWcxeDU5QzBoMWg0?=
 =?utf-8?B?RzdxOWh4RnZ6a1NmTTE1MzJSc1hFRnhvWHB6TnFsWWIrVi8xY0JrbmhwaXhQ?=
 =?utf-8?B?ZHpHTlZiRW51UVNoUXVzQ21Eamorc3R3VCs1UFJVdXRSVEN4aFJiQ3B0VFF5?=
 =?utf-8?B?a2ZvNEJpUktLNjN2RHdFc0Z0anhDOWdRN012b3c3dmhHK1MxckFsSFBYTk9X?=
 =?utf-8?B?VTFQYWUrZ3lMeTVQbmZxbDFZY3Q0T3BqQVRWTXJEblJOS2wzemFNMnprVjc0?=
 =?utf-8?B?ODFLdEJLdzBCU1c5bzJyL0ZpNWtQT1VtcGxIbWVXY1dCc3pxNEtFN3BnbWFp?=
 =?utf-8?B?cWZ2czF6TjN3MVFxaTY2ekE1Nnp0Nm96K1dJdHRYSXo1RFdlYWNCeWcyNm53?=
 =?utf-8?B?T0ZlbC9HNVdFL2NUUFZEcC96VDRBVmhrV2VQOTA4Vm5jUi82Sis4bFBuOEU5?=
 =?utf-8?B?V1E4NVZpQ2wzSHJQRGlwTEwyN0ZLaXQ2UTBpYnhSQTdSdXE0WXhmYjlzcUU3?=
 =?utf-8?B?WExOcGtPTk5BYk5XeGNaaEZCUzZPWVBJY05tYzlKaGRIQU9QSjhMMmM1YjlV?=
 =?utf-8?B?V2VmaGN3V0dGWnNuNVZjSVYyMHlmaVJsYzA5UE5QUlp3ZHZET1BTbWFWMmpS?=
 =?utf-8?B?N3ZRM3NMMDNhNE1EUUdrVGFvYjhXZmJ4b1h5WXc3Zjk4UkxmbUJXNWpPWVJo?=
 =?utf-8?B?bUlnQyttNmRRWDRLY0hQMVFxemd4aENQUFBNQkZEOXBzRkdFRVpwMmFBMDZa?=
 =?utf-8?B?aDBoejZqUlI1RTR1emRkdUxJR0JrOG0waEdSYXdTMDltTVhwSUJnTE1RZ2lw?=
 =?utf-8?B?Y3VER1JudjhyTTRiTkxWanhuRUYxb0M2MkY4Nmo5cnJFVGV1UmxkdTNlZUEr?=
 =?utf-8?B?SnF3UDcrOGVBWEVMSjh0MVR0RlI3b3lvblUxWDE2OUpnZEdkZmJqK1NIWXcw?=
 =?utf-8?B?YTdYdHNlcjJJQVBSa0hwc3VnRThwTGJOQWZJMDBPbThUczVaS0ZXc2t1Y2J1?=
 =?utf-8?B?aitGY0cyUTdIb2NvMDZxOEUvSUdzMHhUQWRlUVBDOUdDMzlCUURqaXpPYjdX?=
 =?utf-8?B?Nm5jK0wxMllOcldvNnBrWUFiN3FodW4xcDBDakVQVGV2a1F6NHk1bjdwdTZO?=
 =?utf-8?B?MmM2NVFWVDhMV0lIekZVcWFId25rY1poQVpXZ1piYU9taDdGcVV3WnVISE9F?=
 =?utf-8?B?OWVpRUl1dmFQTHh2djNKZFZoamR5RUxCWnRmbG5MQXMrRDhhcXdyT2hFSy9I?=
 =?utf-8?B?YkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cca08c8-b579-49a7-1ea6-08dd44f625ea
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6682.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2025 08:30:14.7972 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9lobC2dD7AlCwOsvZDpjiv0zjqOlSQn1g0kmuxHHlbwxkBaJomnT/vwB6GJhcliqjydZI2t1jR08S23IyAhqEHrngMDw49oRL6FDaLed6eY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6072
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738657825; x=1770193825;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k9O/MYc1+gYHP7rMzaIIzS9sWvx2OvMpACJgwPt2dYw=;
 b=ZVah4vD9gKgY19DbbSg+MPf0Av32NbKqjWc3QsaiBDCTBp6O5RLXBlGC
 CW8tN1ia1iRRqbDc/fEGJWENsBVUXZ+zg5FcUhaHhzAs2YFUHyV6CMmJm
 x981dYV9C1NxyrkIH6tOV1kuVxViF/lwf62hH7j8Bgb8pYnJtgkUl226f
 kCXHq072S1viD1hLRXNpZzVshqDyGCger5lY0pcMqao0Gtlzerydw80zF
 HZlyxcp4Q5rUDTRKoKg2Uhqk+J5gD3ZljO+iK+V11OuygiKu5u7SF+wTJ
 YWyVty9S0EWO6Tbo5vdlaoYeRJwgyLZGg8sn9yFBPI4mQ1cfK1s15t7lr
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZVah4vD9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: add support for
 thermal sensor event reception
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



On 2/4/2025 8:17 AM, Jedrzej Jagielski wrote:
> E610 NICs unlike the previous devices utilising ixgbe driver
> are notified in the case of overheatning by the FW ACI event.
> 
> In event of overheat when treshold is exceeded, FW suspends all
> traffic and sends overtemp event to the driver. Then driver
> logs appropriate message and closes the adapter instance.
> The card remains in that state until the platform is rebooted.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: commit msg tweaks
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c      | 5 +++++
>   drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h | 3 +++
>   2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 7236f20c9a30..5c804948dd1f 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -3165,6 +3165,7 @@ static void ixgbe_aci_event_cleanup(struct ixgbe_aci_event *event)
>   static void ixgbe_handle_fw_event(struct ixgbe_adapter *adapter)
>   {
>   	struct ixgbe_aci_event event __cleanup(ixgbe_aci_event_cleanup);
> +	struct net_device *netdev = adapter->netdev;
>   	struct ixgbe_hw *hw = &adapter->hw;
>   	bool pending = false;
>   	int err;
> @@ -3185,6 +3186,10 @@ static void ixgbe_handle_fw_event(struct ixgbe_adapter *adapter)
>   		case ixgbe_aci_opc_get_link_status:
>   			ixgbe_handle_link_status_event(adapter, &event);
>   			break;
> +		case ixgbe_aci_opc_temp_tca_event:
> +			e_crit(drv, "%s\n", ixgbe_overheat_msg);
> +			ixgbe_close(netdev);
> +			break;
>   		default:
>   			e_warn(hw, "unknown FW async event captured\n");
>   			break;
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> index 8d06ade3c7cd..617e07878e4f 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> @@ -171,6 +171,9 @@ enum ixgbe_aci_opc {
>   	ixgbe_aci_opc_done_alt_write			= 0x0904,
>   	ixgbe_aci_opc_clear_port_alt_write		= 0x0906,
>   
> +	/* TCA Events */
> +	ixgbe_aci_opc_temp_tca_event                    = 0x0C94,
> +
>   	/* debug commands */
>   	ixgbe_aci_opc_debug_dump_internals		= 0xFF08,
>   

Thanks for this change Jedrzej

Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
