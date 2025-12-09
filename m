Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E876CAE983
	for <lists+intel-wired-lan@lfdr.de>; Tue, 09 Dec 2025 02:14:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1C8E60DB2;
	Tue,  9 Dec 2025 01:14:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nDdH6XQp2Jc5; Tue,  9 Dec 2025 01:14:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5002961117
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765242880;
	bh=SjAgbsBsJen/nDRY+DRfOgB90yhzJppOprVBhIBRE5U=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sIPfvN2lrC4jlZ5bfpu4U6cZ+ojvLOW6kqn/JFZ1vnWfBvRbXYT+72MJPavYyly69
	 7sDPQgpGrsBbWsBiGmb49pN3sNl+tQ9xqliaHKhVRkHOOfc8Sq+fXT9PSoT4xUeLdx
	 N9B/Vp4h2vCeHyC8dfCfp1B6B3+5/kQIj72Ugpf5R/pT4V8uvuirDzTZMCkBfQTo+e
	 c335388XOgmjAnXRwyEkFLC1RutiLSjkftz4UHgfW8DX60YV5qlywfi55nc4p9ObHR
	 vkqbzGf6nW780+nJFsjUtJVxOVOizQJqtyfZJh8aYWZOQujfm5291+Xh9m2P+tV/nF
	 jyXaw8INGbSqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5002961117;
	Tue,  9 Dec 2025 01:14:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 879B6E7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 01:14:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 69E8340142
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 01:14:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gH3T157QcBP1 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Dec 2025 01:14:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 32ADD400A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32ADD400A4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32ADD400A4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 01:14:36 +0000 (UTC)
X-CSE-ConnectionGUID: ld/zIpmDTJ6vWW1R/vsa0A==
X-CSE-MsgGUID: PfclbghuRXWiT/CBOA4csA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="77520096"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; 
 d="asc'?scan'208";a="77520096"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 17:14:35 -0800
X-CSE-ConnectionGUID: fa+BaJqjQSeAJQtH8x9ugg==
X-CSE-MsgGUID: n0CW/0C/Soqa1Mk8LVCqcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; 
 d="asc'?scan'208";a="200565083"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 17:14:34 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 17:14:33 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 8 Dec 2025 17:14:33 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.62) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 17:14:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qPCRX0V0KJ4sMafBplQHI6YwTkVWdla5GlpTzB7mjLQOfHdSbLfUnkVNheS8Vby+sl+qGmCuqYmFM2KWyO6eDy+4eSk5CUntXgNv6P0enYQXJTacbPSj3s5a+nU9Oz3Vn8+Og6yEp63MEiT1VXaauX2dGPcWywdRuYYtqZvz8bFhZ0P8zNf7ArtSRMOGD9FKRy2mkieZnj57vIL0SFnUWBICrGndqgsxyuqDt+tooq2RchazjvtAQSFoCDvlh1hriIUPmhDu9Sqnf1tKJ/6OhDFbEuYCJdaw5Iwq1KFwtYj7PcLGPF4zn2CX8YQWLNRjN28WDhxyaNUbU0Ql1pAknw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SjAgbsBsJen/nDRY+DRfOgB90yhzJppOprVBhIBRE5U=;
 b=tjmTO/CzNLsd0ZAIbjJnVTKGDT/aaC5N8PPv6dMkUWpwTxYK84FkeoFPPPOsPg65SuwvXnTzMFpWWojSsUUVdHoVM+z0t3IKqnaKbFTelMZouahq/pwyylaYospn0kiQVg1bZaZgngIuOawtaLwFLR7f/gW+DFi1P1jR7I+J+s4QE9fYCbpWsozbFbVy3TZOoIoOLly81RtYCfzWDMBQjRVqqRxeec+ZoZJR0BJQwkLpf/eBcYg12ZcyRD0z3JetE6SFyOF9kcNYcANEJNzI65NJLGOZ8GESBZ3So2Z4VLVrvqN0q2SS7HKka89ld4WYK4+/lP40Z8kUf1l7/lszVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BL3PR11MB6436.namprd11.prod.outlook.com (2603:10b6:208:3bc::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 01:14:30 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9388.013; Tue, 9 Dec 2025
 01:14:30 +0000
Message-ID: <b5787c94-2ad0-4519-9cdb-5e82acfebe05@intel.com>
Date: Mon, 8 Dec 2025 17:14:28 -0800
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Kohei Enju <enjuk@amazon.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>, Stefan Wegrzyn
 <stefan.wegrzyn@intel.com>, <kohei.enju@gmail.com>
References: <20251206155146.95857-1-enjuk@amazon.com>
 <aTcFhoH-z2btEKT-@horms.kernel.org>
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
In-Reply-To: <aTcFhoH-z2btEKT-@horms.kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qe9JOe52ofXg2Y21VbJg04sj"
X-ClientProxiedBy: MW4PR03CA0338.namprd03.prod.outlook.com
 (2603:10b6:303:dc::13) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|BL3PR11MB6436:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e2f5e1e-8975-46b3-b020-08de36c04db7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Rk8zZUo2ZjJVN1NrWVZJY1lXb2JPbnBCU0ZMcis2c3lhYzg1cXhPN1o5SGgw?=
 =?utf-8?B?ZkpSVUtqWTRnMXhveER2UldFemNNc2ZEazgyMkQ3ODQzd3VML3oyaFFlUXQz?=
 =?utf-8?B?L2dMSWJ6cWo3dkpKa0xzbkY5UDVNRUJKOHJDRTM1VFV3dlFqeTRnNk1nUk5r?=
 =?utf-8?B?N1pwYkpTT1d4bGVJdXluTmRxdTVveDQxanc0aXZMeW1EMHl1SmlnSjBVT2wr?=
 =?utf-8?B?NHF3OS9QL0hsTUZKNlNlLzhocHBNbUJOS2U2YmFCN3N6dzB5QzBHVjFBZjhq?=
 =?utf-8?B?Y3I0cG1uM1NMalBndUMvSFhyZEhEVTBuejdXSE5rQU9haGRMb2xZYlJvbjNC?=
 =?utf-8?B?NmpmQlVyZ1Z5ZlJzbzlsK1VHVW03Q1RGTG1kTjhqR3hORjhQVXRRZno0UXlx?=
 =?utf-8?B?M2RMaHR5dTFaWFlTL1lSL0lVcDd4d2JrdWwzN2xHY2NIQWp3Yy83Ukxoc2x6?=
 =?utf-8?B?enJ2MSt3SkVZalI5alFrTFc1MWMvRHNhWUpacVlycEV6Yy8zYXhGZGlYczhU?=
 =?utf-8?B?T2xSdWVUZWgzd3pmb05WUFliNDdkU2hkQkNlamg4cUhBUy9OMW8zL3NtaDBK?=
 =?utf-8?B?VlUybTZkZXM5MXpsNmJsZXJTKzJXNzRCaGRlc2tnWTZ1NE5heWVvM2RuVGlM?=
 =?utf-8?B?OHl1SlM1VUx6T0NBUzR2MTd0d0VXNGVQRWtnR2Z3MEFvS1FJYkZoOC9BZVJo?=
 =?utf-8?B?ZW9Cb0FuL2RZWjBCNnhaOHNKSFRTSjlzSktWbXlhNGdYVHVENldEdzM3QUxM?=
 =?utf-8?B?SHZISHRyUzhrLzVlTkpvb2ZLRzNPb0RWbDdLL2R1VXk3YnFkeXA2R1I4eml4?=
 =?utf-8?B?WUI2QkNBSFZjZ3duZFRRb25vQnhOeGVoYVlsb0YyNmRRcEwybFdkUGRwMHk4?=
 =?utf-8?B?aVRNaXBpMzVjVitUTzNUSHk1cDZ1Ry9mSWRnVDJSM25kQ3dWV1Z0WDJkd21k?=
 =?utf-8?B?ZCtHdi9lNzlNbnQvd1YyS2RTbGRrV09EMTgyYTl3Qm53SHFMU0xHS3dRUGtR?=
 =?utf-8?B?eTc0OWpsNTlmaDJJU0s4SDhEankrMFVBV3MzMzRpTzd5WXhvTzBEUDRkUWZs?=
 =?utf-8?B?K2JIbTBVRElGZ0JoZTZnK0hUdmlmdWxvRm1wNjY4NHJyYWZvQjdGZFF4OTc0?=
 =?utf-8?B?MXZRM3Z0bHQrNnFYeW5WblJYVXhKeisvYk83MjVBNmtsdFFsNDlMWmFXUFNO?=
 =?utf-8?B?Q2NxUFVscWFlRHJBZ1NyYmNuTVUwbTBBRHFiMjM4TDhNODJaVzVDRDhLVnZ6?=
 =?utf-8?B?VGdTN25NaGp5WnVTSjZyaC9OUnh2bkVFZmV3Y1IrczZNVmFWWnRUMSt2SG9B?=
 =?utf-8?B?U0tQQjZlTjNoVDhyeUdNa28rVS9VUnYzNlhCNGFyRWJDbHFvWlU0YnFrcmlK?=
 =?utf-8?B?UWdTL2RKSnhVSmpmejcvdUErZDFKUkhzRU9Tc0lCa0NaR1BjQUVTNEx4RVM0?=
 =?utf-8?B?ZHEzU0p2ZHUvVkpjTUZ3YnArTUZHSkd1ZjA0VzVXc0s4NnBhNVNlNVdYeW1z?=
 =?utf-8?B?OEZUSnZzYXpLWHJ1dnpJdFBOM2tTcDFsKzdVa3ViMWVqcnV6akhEVm9RdlhW?=
 =?utf-8?B?Y053NkZKcHh4R1RpQnpuOEdIcW9ORStGeGgrcG9PTXp4R1NwVlFXOGRma1lB?=
 =?utf-8?B?a2RlMnAwOTkxUTZrNWN1blp2NEN6czhiMDBlc1ZYZUtGemNWdlVVTUdRQ1Zn?=
 =?utf-8?B?aThMU1lWd2c4UHcyZWI3UDVYTVliMWtwSnVRTU0wUkJlQzd1cjZQOVVJU0Ix?=
 =?utf-8?B?MVZleUNjWnFVdUFCRFpENUpQMG9SVmZGSFhleFNtZ0lwYXIyOUphWTBFNHBt?=
 =?utf-8?B?MWVDMzJmd1FQS2JoRCt3WHJRUE9PcnpwQWQxWkpKdG9nQWpSbmFid0hob0VP?=
 =?utf-8?B?U2I4VnZxblFmaGJ1OHNZdTBlaHhXQVd5b1gxUGxwdnVRWXF5SzNjQW9DNUZJ?=
 =?utf-8?Q?aeot/90vAO8p1z2009EEuxv0aztLf19r?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THlycU9yV29Ja2M0OUQ2L2dOZStWZ3lrSElnU0VraUJrbkJ6cy9aY2E0Zlhx?=
 =?utf-8?B?QWdaSGVuRWE2SU1CZW85OGg2Wm5FYVoxVzBrN3h4eVJWbFpkLzlYcjFYSjBH?=
 =?utf-8?B?dXNLcmZzWTVkYTN5aEpnbDZrbXZQdkZMeklXVzNVZWJiZVUyQWNUWmFKcVVX?=
 =?utf-8?B?VlBXckM4eXo2VUljUUtXYmdMbzhXV0Z0YUl4MVQzelV2cS9scVBqZ2o4MDV0?=
 =?utf-8?B?TFh6cDJjK2hvNWNGQk1rOWN1bFhMNG1EZWxzdGIvQnRQdWp5YVlwMnFqb1BK?=
 =?utf-8?B?ODRsQmJYMFFnb2NJRzJZc2ZmS1ZlVVBQUXNDdGhqMUFUbWxJU0tHbmhqc1VT?=
 =?utf-8?B?c0dHZTZCY1RCYkYwaGgwdHZYeXY5WXBRS3k2WnA0WnBxNWtxRm0vL053c3o4?=
 =?utf-8?B?VWdtN08wOHZCUXl4Nkc4d09HYi82M0o4LzhnaWZ0K0ZnTVB3R3A0Y21pQkhv?=
 =?utf-8?B?T0FFa0FhamI5dW1vVy9jS1h0TkNSc2ZDajUxUGJUSG11VnNRdUxnc0QzZVR6?=
 =?utf-8?B?Y1h6eEdJUWZpVlUwendkZUZyT1dkMnBmanY3UG9lMlNHQU1iZG1oTHhhcDI3?=
 =?utf-8?B?QmNRNmpabWovZFFrSml4djdmSnlBcEJ6YXZ4S2hBQTN5NU1iVWREdVhNM1M2?=
 =?utf-8?B?UlJxZnF1TFJnZXUrTFFoTkJNZzJacWZLWlkyNmRKU2xka1d3cGRlQ0UzS2V3?=
 =?utf-8?B?ZXhxbFhMcFI2bzJDSzErRXRQYVAvYXRqT2NrbEZOU2hCR2J6MlpOWUtGMVhO?=
 =?utf-8?B?WFl1MUVDTGFZUTZzZkU0cE9OWTZJYi9wNGh2NDZrSlZoQXFIYTU1MWdiT0s3?=
 =?utf-8?B?ZUxxUXR1VzhKTUx0dFEwcmVGd1ZhOU81OWUxUWxsVUtweGFQRUI4NEZ6UmxO?=
 =?utf-8?B?a3YyZERIV0tzS29wb3R2ckgxaUVjOEtpSmtRWWJ6emxEalRwcCtuYk9LR1VT?=
 =?utf-8?B?WFdvVHpPaFBjUzU1RW55cllIaGFhcitEYzBZeDBOUGZuVWYrcnNZTDdrbkNX?=
 =?utf-8?B?SDljaFdBSUZVczZrVGxpQjhvZ2RRS2crQWZ6OWc4U013dkx5UGx2NXZUM3BC?=
 =?utf-8?B?ejNDcHlUNCszb3BQYTR1L2dWcnVoVVlMcHUxZlNTMFpVeU81M3o2ZEJSNmhz?=
 =?utf-8?B?bjFtYVRaYzVOT210QzdCaUFOVlpsc2xMOEhmSUxBd2k0WWVUY3M1UnRnZ1Zl?=
 =?utf-8?B?Y0VNVVJzSHYvOFJ0aWlTMjExL1U5aC8wWnZGZ3JKNlhoQlFUUWNOL1B4dldE?=
 =?utf-8?B?QTA5YkdVZytPNGZTUjZxK0JuVCswZlFQVE9TTzB0Q2ZDd21ORFVoejlsN1pH?=
 =?utf-8?B?cVlIZ0ppcm5FQjNDcFFwRjJFcVJYVXBqMjVPbG8zcWlSTjhNb3ZpenNZb3kv?=
 =?utf-8?B?OVNYM3dUdldJcmFJc1AyTkFSalpBSUtuS0VHWUo2RE5TaWw4bE1WT1ltMVMr?=
 =?utf-8?B?Uk5BRnByWExlUG9vdE1TYmdMT1lGcVRhMGljQ01aT0hqdHJ3WEw1aFFjMDcy?=
 =?utf-8?B?aEdDd2VGVlhHcDZUbVRNRVo5ajFlSXpNWkRvbjN3Sm4rVmVhdlh3dmZsQll2?=
 =?utf-8?B?bjhGR1I2eUwwQU80dXBiM2t3aHBGQy9mN0ZTT0FEVm1VVkpQTzdCL0tSQUFE?=
 =?utf-8?B?VUxvVkxlcnJ2UklBNWxzb2xUTWJJR2JMTTFDSnJrVFR2dTZkTkEzWDZDVGhz?=
 =?utf-8?B?c0g2aW8vMGU5eUdQUzhYZHI0L0MxL05NN2xyKzRTYWVnTUFYQUZBM01tRis5?=
 =?utf-8?B?SFYvWmM4TlREa0pPQ2tRbTE4ckQ1U21HWUdXam9yaHpjWHFjdnlnWG5mTkhO?=
 =?utf-8?B?S2tYTUhVTGdvNXI2YkVjNkhBUzdhLzRHUlVHOGYyRlVFYlRHSkZUWDVEbUFy?=
 =?utf-8?B?VklBdWQrZ3pJcXVUcmhGSFBIMlJ4cXR6MmNpcWZXZmlKM05mTC8rUmVBYzBH?=
 =?utf-8?B?U2lEUXpnOU8xdkVlU3BlVTVxeHJabTFrbmZzZVB2c3JLM3k2dHRsZ2xrZ3hu?=
 =?utf-8?B?ZC9sMmN6KzM0V2VvdmdtYVdDUHRJZVlDM0pRQ2hweFZXRjBHZVNzSlg3cCsx?=
 =?utf-8?B?T2JvVkNQcDZNa0p2WnRSQ3lKd2lpRUhKUlRnUUdrSmFRV00rd3Biek9tZStM?=
 =?utf-8?B?NW5LaUl6bFIxemdNZUc4VXlGdVBTNWE0L2dsSytZNG1xTG5lbXBoS0d0MTdT?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e2f5e1e-8975-46b3-b020-08de36c04db7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2025 01:14:29.9895 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UUxbi/PEFCPQ+2wdIDLI8U8RT3Lodl18bHE0ExCJ5Fpx/gngHEnyBo7mxM/nd/ki+wXPt+ITGeMs6blq3wLJWfuqhgeigxTlmhy8YxS31IA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6436
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765242877; x=1796778877;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=JoNtJEKEKrAyB3YuB/pFIOIz1abt+8mnJzfnbSsNzGI=;
 b=msfq77z9zZnlXm3dXKOPX4qHztq3WptRkz9ko7jEUOLiI51d1QjqjS+o
 yKHPUNTLMNhj/SHC2wlIX5mmeY4/48WY6K+LbIzAqPVBD0lgAIWmAB2ri
 j2Pk8d1zuv5WiyNDAyZ068YnivWk2jx1aHModzmCUjTo7/Hfy2pfMuCyI
 s3jvqnv6K8/AK8IlVTAMaDASq1VTij4+ndTfro05ZsnbZZ+U02y+/9ZUQ
 LoReauSuhmLmQlDdqmkAlImLK3g0b9LJWnZr/KJ7UZ8tvCPu7VUTII0Im
 enKULcbBf/M7wD0iN89svQYvuVufvUyV/M1fkrph9NMIqRaY8vA57Vwik
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=msfq77z9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leaks in
 ixgbe_recovery_probe()
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

--------------qe9JOe52ofXg2Y21VbJg04sj
Content-Type: multipart/mixed; boundary="------------VchUlh7T9D4wcndUfY1oG7pG";
 protected-headers="v1"
Message-ID: <b5787c94-2ad0-4519-9cdb-5e82acfebe05@intel.com>
Date: Mon, 8 Dec 2025 17:14:28 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leaks in
 ixgbe_recovery_probe()
To: Simon Horman <horms@kernel.org>, Kohei Enju <enjuk@amazon.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>, kohei.enju@gmail.com
References: <20251206155146.95857-1-enjuk@amazon.com>
 <aTcFhoH-z2btEKT-@horms.kernel.org>
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
In-Reply-To: <aTcFhoH-z2btEKT-@horms.kernel.org>

--------------VchUlh7T9D4wcndUfY1oG7pG
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 12/8/2025 9:06 AM, Simon Horman wrote:
> On Sun, Dec 07, 2025 at 12:51:27AM +0900, Kohei Enju wrote:
>> ixgbe_recovery_probe() does not free the following resources in its
>> error path, unlike ixgbe_probe():
>> - adapter->io_addr
>> - adapter->jump_tables[0]
>> - adapter->mac_table
>> - adapter->rss_key
>> - adapter->af_xdp_zc_qps
>>
>> The leaked MMIO region can be observed in /proc/vmallocinfo, and the
>> remaining leaks are reported by kmemleak.
>>
>> Free these allocations and unmap the MMIO region on failure to avoid t=
he
>> leaks.
>>
>> Fixes: 29cb3b8d95c7 ("ixgbe: add E610 implementation of FW recovery mo=
de")
>> Signed-off-by: Kohei Enju <enjuk@amazon.com>
>=20
> Hi,
>=20
> It seems that ixgbe_recovery_probe()  is only called from ixgbe_probe()=
=2E
> And that ixgbe_probe() already has an unwind ladder for these resources=
=2E
> So I would suggest using that rather than replicating it
> in ixgbe_recovery_probe. That is, have ixgbe_probe() unwind when
> ixgbe_recovery_probe returns an error.

Right. If resources are allocated by ixgbe_probe() they should be freed
in ixgbe_probe() and not in ixgbe_recovery_probe() which is a smaller
function called by ixgbe_probe() to enter recovery mode where only
devlink flash update is enabled.

It looks like most of these resources are allocated by probe and then
ixgbe_recovery_probe() is called, which should instead let regular probe
do cleanup for stuff it didn't setup itself.

>=20
> Also, maybe I'm wrong, but it seems that hw->aci.lock
> is initialised more than once if ixgbe_recovery_probe() is called.
>=20

Its initialized in ixgbe_sw_init, which is called before the
ixgbe_recovery_probe, so yes that does look like a double initialization.=


> ...



--------------VchUlh7T9D4wcndUfY1oG7pG--

--------------qe9JOe52ofXg2Y21VbJg04sj
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaTd39QUDAAAAAAAKCRBqll0+bw8o6Ecq
AP9EFIC/cDc0Ns568xCyUct+BfNE+Yl8ARhweeMA5uyxrwD9E2cL83JPfdV3bZReSdLkTbKz3sTd
bE1HWqcPtM1SiQI=
=pZbU
-----END PGP SIGNATURE-----

--------------qe9JOe52ofXg2Y21VbJg04sj--
