Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CC5B0AAD5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jul 2025 21:56:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CAB2681E5B;
	Fri, 18 Jul 2025 19:56:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2h7KPKxFsTNp; Fri, 18 Jul 2025 19:56:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B24D8820F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752868598;
	bh=qSiX1kZly8PaOVCGKbac/xlkhBED/uCEko1Wuz1aDe0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y4qvMZAHX11lz/r/1EPBuynIbpBLIJ5HgPFTTnqjx67cCzjXZr3h0RtgBOdfPjK9q
	 Lis3couaZv55edoTMuQWFgqArdN7oe9wjwhL/ykhzNeI4bXuIw42cFlUxDfJppeybw
	 nKg55Uo4j86Qc16fH9m85+3ya3qICTPGCQpkxTJzHuC2M5IUBxqgvDOM+uhk1QZnGY
	 wBSpafBGLqUBvkPYRif+p3XvxfLDG126NkRVd/JIEC6sjUMAs5Sv1oW5hUPjkCjUeQ
	 KXmaC5n2+a3Gl15CXdHz0M5v3udf61MPrhAmTy484oATwxoFAalBWYeJZtKyQwwEAa
	 HxWhkQ9Cqjo5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B24D8820F0;
	Fri, 18 Jul 2025 19:56:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2ACE9DA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 19:56:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 10D6E61129
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 19:56:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TOWqxCd_A7Es for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jul 2025 19:56:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4AD476111E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AD476111E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4AD476111E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 19:56:34 +0000 (UTC)
X-CSE-ConnectionGUID: eqKq7uWySpaeiZo4RjYKlw==
X-CSE-MsgGUID: rsGcsFKRS5+haVyz3UwcgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11496"; a="55109499"
X-IronPort-AV: E=Sophos;i="6.16,322,1744095600"; 
 d="asc'?scan'208";a="55109499"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 12:56:34 -0700
X-CSE-ConnectionGUID: cXs6Sdf+TfCisWz81dsyrw==
X-CSE-MsgGUID: m8f1w5NJTniM/d8lHoT3mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,322,1744095600"; 
 d="asc'?scan'208";a="157806146"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 12:56:34 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 12:56:33 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 12:56:33 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.59)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 12:56:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MCRn3uo8KHA+gyEN4BWe19zc1V6yVuUYb8kZ1kQD80ydx/8Ms6ht9XdVN/MWlPNDe6CUrd3PV9IfZ7aZqN92ab5JkhBhQur2ur6tX0cZGA2Xrg+4yqPDQkjb543S1+wOclCQAPgVLSXyzCtacbT9ZwDbXSsre2oI3gLM6UGqGcHaAYf6s6M1qYgNSe5v4kU7+ZjOo8hhKaLUuYCVR6Pw3+17gUNKJtHrxNLWNXch1JAb5zhM8Bo8NObzO7NBoSELeq+MkEV2jQaSA86h3N3v/33kyEkGGkFniVaVF4wG8mKN0XvvOCOXCsOblJd1vpyy416rSwAsjQ3smuDMSo174w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qSiX1kZly8PaOVCGKbac/xlkhBED/uCEko1Wuz1aDe0=;
 b=SNGIN6/t+NFsXo1doLi+I2Efp42xAZbEw41YgQhBdq9mG/fPxDcFS4g+c0tqYt6h+TRVTGWMcrYBzQkDh8PGqkP2gK/qvWzTSgZtDDO3Ue3MoC1DV6UUmAVVlP6mSvP5iwvdM9I9rBAzA4BNMLsPpKMxZkUsWt/Bl5kjtoT2UakNE4aZcYOz0lBl6Slje7HjhPWTK3UNtWOnvkKDyesb05pSp+nMyi027bE9WcWRJ22x4n0x6u4HiosJjE+VbwF+oes4Y92Cnc/etqlpEROA6Iasg/qPAn4+5hc2qGkcpWixLKUbRtCukKyqqsAFuEOuzK8raJDeFaGSh3NNkysnjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY8PR11MB7082.namprd11.prod.outlook.com (2603:10b6:930:52::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Fri, 18 Jul
 2025 19:56:31 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8922.037; Fri, 18 Jul 2025
 19:56:31 +0000
Message-ID: <95ddc646-d348-45e3-b1f8-b0f114163b11@intel.com>
Date: Fri, 18 Jul 2025 12:56:29 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: Anthony Nguyen <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, <vgrinber@redhat.com>,
 <netdev@vger.kernel.org>
References: <20250717-jk-ddp-safe-mode-issue-v1-0-e113b2baed79@intel.com>
 <20250717-jk-ddp-safe-mode-issue-v1-2-e113b2baed79@intel.com>
 <20250718165024.GI2459@horms.kernel.org>
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
In-Reply-To: <20250718165024.GI2459@horms.kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ieoV1hlm2A1XIF7WQz2J0jUY"
X-ClientProxiedBy: MW4PR04CA0260.namprd04.prod.outlook.com
 (2603:10b6:303:88::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY8PR11MB7082:EE_
X-MS-Office365-Filtering-Correlation-Id: a4deb297-02f2-42dd-758b-08ddc63530a1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MWRSRDcvSlRFMEtOQWhuczhSV1NwWmtzQko5WWJERmE5RFp5RjVvSFU3Q05r?=
 =?utf-8?B?WFdNVjBqWDhGMGswazlEYVAxazQ1L3ZRL2VsaEV6WWZFVmZ5TmY1eDBrODJo?=
 =?utf-8?B?NllwcFNjV1p0WmJHN1NySldpdHBzYTlKdS9jbmNManV2eVZHNG13RU1YUHgw?=
 =?utf-8?B?ZE9mQVlkdmoxaERnTGVHNGxoVVBmQnV6SExiMHlYLzNZZHJ4SkpDajFLQXFm?=
 =?utf-8?B?ek1CclR2YlRQamFsaGtBb3VUbU1ZOXJBcjJZZkdQZWtmMTJhMGtHcWNZQnVj?=
 =?utf-8?B?NWZwQ3lOdFRMTlExa01xL3AyUnZqVWEvb1o4QkdoM1hZcGRLZCtlWUxQVDhD?=
 =?utf-8?B?aVZETU1ZV3d1N1JhTWlZeHFBY3lYZUdwNWZGVjFPZUtkY3BnSkNxVnBHZ3pK?=
 =?utf-8?B?cVNhcEVUU1gyZ0piWVBDa3Z1N2MzOXBwMi9yRVJlZGgyYktVS0tVOCtoU1Bm?=
 =?utf-8?B?MVBPbmM4Tlg3VzFXTHBXNnhmVkRNcXk2RGs3d0NjeXZyNC91dnRZZnpscXFD?=
 =?utf-8?B?Wm5HNlJPZ1Z3a3RDVFVIL0xJUm1pMHFqaFVZaXJKNjdzVHo5ektlc3F4RVBJ?=
 =?utf-8?B?aDdPdThicXN4ZiswTlgraFloWGV1czJIWjV6RDUrRlIwZXZOSzdTVjFNVlRt?=
 =?utf-8?B?bFgvRGtZdU1VTkkrWnpXc25adzVTZGdlSSsxME1DaDNHSTV3a2g5UndhMHlM?=
 =?utf-8?B?OXhmdmtrUmpiUC8rMXgrQ01PQUlTUlVlR1VNRkFOaTZDTmhNOGpCQjZ6dm1P?=
 =?utf-8?B?MlN3NDZqbStQUllBYjZGU1F2SkNNWlJyNzFYMGhhRHNrYzdaeUh6VEJYOHVn?=
 =?utf-8?B?dTRHeTM0djQ0cFc4Q2cxK05XbUFSanYyNUVKSnVYalN0Z1ZIYS9jc2txMmR0?=
 =?utf-8?B?YUhDZGVSdnpsY3VxY1hKQ2VDVEZtTHhZMnpQdk1OYWRJYTlDbGVVUUt0Ykd1?=
 =?utf-8?B?U2RIL0NKRXlCY3VoaUt0NXhRZGk2dUdBeTlwV1E4bEt0TkZzT2xWUkpJTUl5?=
 =?utf-8?B?cGt3TmhXenI3U29TbE8xQnA4Zk0yVjVUQjF2RkRmb05sR2ZnQ1RYTHc5SzlE?=
 =?utf-8?B?WHREdGYvK2g1TGNOMDNoeGJ4RDhnWHgwRTVudVJTaGdvVk5VWXhkdmJoazda?=
 =?utf-8?B?WjNUenhNR2Q1K3hnTFo2MzFVQzFkU2F6cXAxNndIYjBoRGFKdWl4ODJIZEYz?=
 =?utf-8?B?Mmt4VXNNc0dDUXRVT0dVSG02cnY5eXBMTVphbHFRSmcvTGI1cFNpa0hOenV5?=
 =?utf-8?B?RlFWYVlKTnc5RlZCSkY5eUJldzZOZGNYWVpHRFQ4dkVVdzJGUDNQNjY3V2dT?=
 =?utf-8?B?RDZTd1l6NFRDSS81bFMyc3NVMnF0UThNQzdBeW1BaXdDR09RSDZ0SndLbE9J?=
 =?utf-8?B?dERaSnZsUjNiY1ZvVVBRMlF4Qk81MmxCZTFvcHR3ZFJaeWNMbDh4NWlkZ1Az?=
 =?utf-8?B?aGRPdDQwVlVVSCt3d2lvcWJBbS8xM2dEYjFzRFNqZG14M09oQ1FVL0owN3hv?=
 =?utf-8?B?aFhmUUptc3JIelNtUG1jQ0JPNWxmT0oyWDAySVh6UFhQeVl0RnZKSVJBaDVD?=
 =?utf-8?B?K3FUaTZRL2w5L05WYzBXRTN4TWdmcE9ZMXlQMmZXT3FPYVVpelZYaU4xKzBJ?=
 =?utf-8?B?VDdQMjF5Q1JTNkh3SnB4QTVNY2FNK00yT0h4dTVJdFQrNFdTUVQ1dktlTlRT?=
 =?utf-8?B?NzJFL3hCMWhQVTFXZkl6TjhuY3UvZEI3YTl1WXRzV2ZxRnVNbDJuS3R3OHox?=
 =?utf-8?B?d2dOMEZZcnRzZm5PUncyK2ljN2laRldvWG1sZ1NCQVMwOU9OWmlMckRFSDV2?=
 =?utf-8?B?MXNnTDNEQnUrNHp5RTZaT2gwTVFId0t1N3QwMHlTMEY4czFQNjJrdHI5TnVP?=
 =?utf-8?B?YUIwbGlUa2RUOENjeG1iTHdlbDBNU3NBS3l2QVdFQ1dxN2hBKzk3bUwvU1cw?=
 =?utf-8?Q?2KTQAs9ABIs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ykl0NkpQNmpBQ3dIZCtka2N4eUVoM0JYUk5MSU9RdGFydWQxSVY1cmIrdFJT?=
 =?utf-8?B?V1N3WlZDdUg2WE5KSFVqdlhZTllCL1EzclhIWkpxVmlSU0VEc3R3Q3g5WUhX?=
 =?utf-8?B?SlRQUGhMQ2l4SkkrMTB5N3AxM0VlaW9HTkthWWxPL040dlZmZ3p1TjU3Njgy?=
 =?utf-8?B?NE10NkYvK1UrNVJqR3ExUGUvUzB6bXZ4ZEhIZkFzNHMwNURLK2xoaEVwYjJ0?=
 =?utf-8?B?MlY2MjRRUEg0bjNxTkNYMGFOaFB5ZnhuR054bFJSM203K0ZKUEducDV4SWdB?=
 =?utf-8?B?T1lNRDNWY3JORm83M0VLREtxRExZcEpLa2w0NFlpei9EWHhCZEdSWGlHWE4r?=
 =?utf-8?B?bDA5NkRkZFRQb091TmNNb2xYSjdKQWFSellLdS9KOENNbVdjaXVHaEdTN21Q?=
 =?utf-8?B?aHFTLy85aVNuRjRsYTV0OTkxMHhhbWd5eVppbytOL2ZMdERURzl0eGwramZV?=
 =?utf-8?B?VGNCVkptWlNMc1U4Qkh3ZnNMOXVNcWJVT2tESUdsK3hvUkZHM3FhNnQ1UFo0?=
 =?utf-8?B?c3BqV0ZFNkQ5anJ1am9pQUxXMWFxQlIyVUZITE5RbGZCZ3FHUnI1RVFGQTZl?=
 =?utf-8?B?bHFVSkQzeVFoeUswR3ova3FkSTFwSTJBQ0cxU0pZT3FDaTJsOU5hdTEwbDk2?=
 =?utf-8?B?djZWcFZYSHloSmt3UjU0V3dEdUs2ZmFQOVArZTR2T0JYLzJsUjVWa0tyMWZF?=
 =?utf-8?B?d0dqMFd1RnZLL2xHTjNxTHdTT1N5NWxPUHB4OGtEOUNTL0ZxS21raDZ6M2lk?=
 =?utf-8?B?TlF5cWdqL0psZmorTm0vSnhobmxvQWM5Q1pmRTdNdkN1WXdXUHdBMktWRUpK?=
 =?utf-8?B?OFByV05seFNDZ1lhWDFuUjJENHU3YTNnUnBoQ2liSlVrWHpMRkVrbE1ocllm?=
 =?utf-8?B?b25VSmpucG85SmZjS2NmMURZZC80bVFXTnFQU3U5dml3dFZXUk9uRW5UQU0x?=
 =?utf-8?B?SVIrN281VTdITHhEZ3RtMFhocGdmaWpPT3Z5T29lTjdXZVVXOUJDUy9UMGNx?=
 =?utf-8?B?L0pRa095R2xYRzdGNUZQNWh5ZHhENE85VFJ5cmx4RUZYNEprejV5OWphN0JY?=
 =?utf-8?B?MGt1d1hSN0Z3ZC8xdUpocFBZblB2Qk9KYitFV1oxdVNOMFNJVWtwSEZSK2Y4?=
 =?utf-8?B?bzN2TTZURXNwN0IvU1YzYjZIL1RKdmRjWG1nT1JGTGw0S0NIU1E2V0dnSWw0?=
 =?utf-8?B?U0NuZTFQVkQ0T2ZmY2tuTWxBREtaL1lvVUZLVnV2aXNqUzVXQ2pyUDNDcDJ0?=
 =?utf-8?B?SGxFS2h1Q0ZhbTFGQWFuNVRhT04yWVZLM0VVdmYwTkpSNVpFVVJ3NFVHSHlt?=
 =?utf-8?B?UmFqYlBZK1o0Y1hyWkN3MEVFTFQwYllGMDVCSEkwczdxWTVlYnhMRHBTTDE2?=
 =?utf-8?B?YVo4cjVXc3JUR3Npd0l1dG5DTXBCSFNtbGl6NVVRWXZzajBSdWswazY1NktT?=
 =?utf-8?B?SFpyWUJVVlhhKzNzVmVyN3JvTWNaZXRSVm95RXJFUm5NU3FkNXBrbTRkdWRn?=
 =?utf-8?B?OHNKUUdnSFdDTXY4bXpoTnVEL0ZrVW1sWjBKR09vcDFCTTJKaGp6K281YlB4?=
 =?utf-8?B?WXcvWHoxNDg1bWhmSzdlNjFlakRkb3VtaGtsQ2Vpa05Fcnh0Qm1TRVhJRkcx?=
 =?utf-8?B?UHRWN28xMDd3L1FlbEVZOGRtZVB5VEg2alg3bU0wOUhQbHZ5aFd6S0xza1p5?=
 =?utf-8?B?NDZKaFdKYWlpcXp3VXpta3dOY1VHdm1YNFpUbzI1NnppNm9WbXdnOWtLWWhw?=
 =?utf-8?B?VGNNV2s2Wlg4QTRpRnVEby9pcE5QbUtOREFLbWNRUkxPWHluK2kzcEVuUkU2?=
 =?utf-8?B?cjd3U1FMdEx0M2FEbE1ib0d0dEdraE9jQ21vc1VhNXhyZHRYRDJUWTlrUHFp?=
 =?utf-8?B?cWx5cjFjclM1Mmkzc2FkcnBvNXVyeFk2OGdES3RwbkFqZUpMVWw5eUxiem9H?=
 =?utf-8?B?dkJaTEIrVDlHQ1h4bWc0YjhtVG9VdVc1YWdSYmUxeTVFL0FzZHBPNDNZMC81?=
 =?utf-8?B?ZGJzczROMWw5RlFaaEJ0K3ZLc3VMa1NmU0duVXJDQmtHUU0yVkJzZ043NGo1?=
 =?utf-8?B?NitZSXg0SC9RdnMrcG1jY05ydnZocm5jRTF2T3NMOFZ6TU5FOGhjdmhycU1y?=
 =?utf-8?B?Q0ZtejNWK1NiRDBlSEw2a1FwMkkreDZJSlgzZkp2b3ZXenZacG44SmQvQ09n?=
 =?utf-8?B?Y1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4deb297-02f2-42dd-758b-08ddc63530a1
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 19:56:31.0036 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8umzzQJtvcuZmDt6vG27gXbldolrqT+eOxszLHTOGNCq0idelw3UHWKiUueznBfiz5MTrZRPQJYQlepSr7l+FusXQBTbe1Xrcz012rxu8nM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7082
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752868595; x=1784404595;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=GUI7q2jPRse1AS0PndF58vMX0+zvqTR4/HTkvSAa/+U=;
 b=CUC4OoRll4ryYD21jTsnv56LcIpHgWNwO6c5dWL/xuhKiBhKM/sr/i79
 kUuRac4/9I2Ju5vdGFHNv2HCL7FpiA4b5htfWQTBucCsRC0iD+vNwV/Z6
 83Q/3Pj+eQEH6RUFYOQPjSPz3s/unqblSpIWQiNYK2GZPvfHEfykAPBHo
 Fp9ezemtH2LMt1rK8J8sfI48hYOdLmsBqw2U1QZCM6LxEpL7/o1FnYVZY
 QObYlJEnHkLa7+o+GSsx2FmbkRNpX2KlO8JU41z04hxGhpqDso2T16EW3
 dxOGZqt+RBYSeDHIZshE5bwModrPiqSDyZqf/xnt7F00niIBz0P8/yv/t
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CUC4OoRl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: don't leave device
 non-functional if Tx scheduler config fails
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

--------------ieoV1hlm2A1XIF7WQz2J0jUY
Content-Type: multipart/mixed; boundary="------------2oARW8dHUxyD60tz1u3r0xjq";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Simon Horman <horms@kernel.org>
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, vgrinber@redhat.com,
 netdev@vger.kernel.org
Message-ID: <95ddc646-d348-45e3-b1f8-b0f114163b11@intel.com>
Subject: Re: [PATCH iwl-net 2/2] ice: don't leave device non-functional if Tx
 scheduler config fails
References: <20250717-jk-ddp-safe-mode-issue-v1-0-e113b2baed79@intel.com>
 <20250717-jk-ddp-safe-mode-issue-v1-2-e113b2baed79@intel.com>
 <20250718165024.GI2459@horms.kernel.org>
In-Reply-To: <20250718165024.GI2459@horms.kernel.org>

--------------2oARW8dHUxyD60tz1u3r0xjq
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/18/2025 9:50 AM, Simon Horman wrote:
> On Thu, Jul 17, 2025 at 09:57:09AM -0700, Jacob Keller wrote:
>>
>> Fixes: 91427e6d9030 ("ice: Support 5 layer topology")
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>=20
> Thanks for the extensive explanation.
>=20

Thanks. This took me forever to track down exactly what went wrong,
enough that I had to have the customer send me the card back because we
thought the firmware was unrecoverable and bricked.

> I have a minor nit below, but that notwithstanding this looks good to m=
e.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
>=20
>=20
>> ---
>>  drivers/net/ethernet/intel/ice/ice_ddp.c  | 44 ++++++++++++++++++++++=
---------
>>  drivers/net/ethernet/intel/ice/ice_main.c | 14 ++++++----
>>  2 files changed, 41 insertions(+), 17 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/et=
hernet/intel/ice/ice_ddp.c
>> index 59323c019544..bc525de019de 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
>> @@ -2374,7 +2374,13 @@ ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf,=
 u16 buf_size,
>>   * The function will apply the new Tx topology from the package buffe=
r
>>   * if available.
>>   *
>> - * Return: zero when update was successful, negative values otherwise=
=2E
>> + * Return:
>> + * * 0 - Successfully applied topology configuration.
>> + * * -EBUSY - Failed to acquire global configuration lock.
>> + * * -EEXIST - Topology configuration has already been applied.
>> + * * -EIO - Unable to apply topology configuration.
>> + * * -ENODEV - Failed to re-initialize device after applying configur=
ation.
>> + * * Other negative error codes indicate unexpected failures.
>>   */
>>  int ice_cfg_tx_topo(struct ice_hw *hw, const void *buf, u32 len)
>>  {
>> @@ -2407,7 +2413,7 @@ int ice_cfg_tx_topo(struct ice_hw *hw, const voi=
d *buf, u32 len)
>> =20
>>  	if (status) {
>>  		ice_debug(hw, ICE_DBG_INIT, "Get current topology is failed\n");
>> -		return status;
>> +		return -EIO;
>>  	}
>> =20
>>  	/* Is default topology already applied ? */
>> @@ -2494,31 +2500,45 @@ int ice_cfg_tx_topo(struct ice_hw *hw, const v=
oid *buf, u32 len)
>>  				 ICE_GLOBAL_CFG_LOCK_TIMEOUT);
>>  	if (status) {
>>  		ice_debug(hw, ICE_DBG_INIT, "Failed to acquire global lock\n");
>> -		return status;
>> +		return -EBUSY;
>>  	}
>> =20
>>  	/* Check if reset was triggered already. */
>>  	reg =3D rd32(hw, GLGEN_RSTAT);
>>  	if (reg & GLGEN_RSTAT_DEVSTATE_M) {
>> -		/* Reset is in progress, re-init the HW again */
>>  		ice_debug(hw, ICE_DBG_INIT, "Reset is in progress. Layer topology m=
ight be applied already\n");
>>  		ice_check_reset(hw);
>> -		return 0;
>> +		/* Reset is in progress, re-init the HW again */
>> +		goto reinit_hw;
>>  	}
>> =20
>>  	/* Set new topology */
>>  	status =3D ice_get_set_tx_topo(hw, new_topo, size, NULL, NULL, true)=
;
>>  	if (status) {
>> -		ice_debug(hw, ICE_DBG_INIT, "Failed setting Tx topology\n");
>> -		return status;
>> +		ice_debug(hw, ICE_DBG_INIT, "Failed to set Tx topology, status %pe\=
n",
>> +			  ERR_PTR(status));
>> +		/* only report -EIO here as the caller checks the error value
>> +		 * and reports an informational error message informing that
>> +		 * the driver failed to program Tx topology.
>> +		 */
>> +		status =3D -EIO;
>>  	}
>> =20
>> -	/* New topology is updated, delay 1 second before issuing the CORER =
*/
>> +	/* Even if Tx topology config failed, we need to CORE reset here to
>> +	 * clear the global configuration lock. Delay 1 second to allow
>> +	 * hardware to settle then issue a CORER
>> +	 */
>>  	msleep(1000);
>>  	ice_reset(hw, ICE_RESET_CORER);
>> -	/* CORER will clear the global lock, so no explicit call
>> -	 * required for release.
>> -	 */
>> +	ice_check_reset(hw);
>> =20
>> -	return 0;
>> +reinit_hw:
>=20
> nit: I think you can move this label above ice_check_reset().
>      As the only place that jumps to this label calls ice_check_reset()=

>      immediately before doing so. If so, renaming the label might
>      also be appropriate (up to you on all fronts:)
>=20

You're right thats probably slightly better. I'm not sure its worth a
re-roll vs getting this fix out since its a pretty minor difference.

>> +	/* Since we triggered a CORER, re-initialize hardware */
>> +	ice_deinit_hw(hw);
>> +	if (ice_init_hw(hw)) {
>> +		ice_debug(hw, ICE_DBG_INIT, "Failed to re-init hardware after setti=
ng Tx topology\n");
>> +		return -ENODEV;
>> +	}
>> +
>> +	return status;
>>  }
>=20
> ...


--------------2oARW8dHUxyD60tz1u3r0xjq--

--------------ieoV1hlm2A1XIF7WQz2J0jUY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaHqm7QUDAAAAAAAKCRBqll0+bw8o6LQj
AQCZLffL3FIEZ2JWRROfo4PCvTg4N0ChqoSkuO3hCD0WcwEAmzrESMrM1pbswESPzzIpyKPNwb7q
Hhdyt3BFyHcvBAA=
=2CXR
-----END PGP SIGNATURE-----

--------------ieoV1hlm2A1XIF7WQz2J0jUY--
