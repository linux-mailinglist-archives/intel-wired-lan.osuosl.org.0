Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A46D8B1755C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Jul 2025 19:02:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D77A84666;
	Thu, 31 Jul 2025 17:02:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uY_UijqHh9M4; Thu, 31 Jul 2025 17:02:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE51984675
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753981369;
	bh=qk/t6+qDKe38xtBLdKWnDTHHL6hcpU4YQ+C8vYNpEz4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2gwiU6V7MMBP+WI/sBC0z870mQuEYICHV2bf+91uNn0O0y/S6J2TRglSRZkQriaKy
	 ARQ+b7bKauSaoj0TJwQy6tUKwzNGersIS7BBpyNnlBum11pUNs2tNIUWlmyscUiXmr
	 nBX8JtAb7GOSX4bgpecQ6N3NPUZVNxADgcGfnCdTLC4i08sDaE6Ds3aO9SV7FW3ypZ
	 htKC9cCw/y08iTYHG+ZAruBa12qeLxShnEoy5K42k+3BjUhAYEq3gi1k/l1jB9tF79
	 qTEupDJ2XhfHQI6rFRM/kmP7o5Vau22RRdigpiJkbeSYqcZgJJewP3xLA6GKalm3uL
	 EGgZDWTeah0+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE51984675;
	Thu, 31 Jul 2025 17:02:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C9D80168
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 17:02:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B007A400E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 17:02:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mV0d8og6bwac for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Jul 2025 17:02:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D39D2400FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D39D2400FE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D39D2400FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 17:02:46 +0000 (UTC)
X-CSE-ConnectionGUID: zWtoRHexS667V8yAn2s6Gg==
X-CSE-MsgGUID: pg6kiibUThmboYkcH8qvxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="55517435"
X-IronPort-AV: E=Sophos;i="6.17,254,1747724400"; 
 d="asc'?scan'208";a="55517435"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 10:02:42 -0700
X-CSE-ConnectionGUID: 3Wqt/gE9R5O5LxDnoMyDtg==
X-CSE-MsgGUID: hPPy1+B7RCyLw66S0w4eIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,254,1747724400"; 
 d="asc'?scan'208";a="168595337"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 10:02:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 10:02:41 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 10:02:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.67)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 10:02:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PuBmKzyZpzBIXYw9BYHoBOjYDjh88unhzR2TmnMr0xH/WzPTnggDm2QtwKK4hyRAjQmC3iuoftdrOU+1V4liGhEC6GevdVsC2Zqz+7IjUN1egVfCD7aGVUpwwps2yiYPj8/m+cS9TsftAtb2gjudhZmvrboyL4JZxurBMazD9p5tHykBTzTxgih22iE6QoWpzHXLJ63Z1wF7qLdzTZME478DRLfEHeVnynEpJsAvLoeeif425ysYAlwiF/v0wyQ0U+xgEEqEo7KSvb3nWAuZpBbjI72u0KA/SyHgGtAEsAQuAbQ0rLiXWPmWqu4mfbY0EVU/iPJW5Oiqu4xq6Bb8VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qk/t6+qDKe38xtBLdKWnDTHHL6hcpU4YQ+C8vYNpEz4=;
 b=LcRVCxqIPJJ2oe5yzs/u5Vz4m2tmOBNQYCEqAeFG4DWC+65ZsHgLgE+BcyqSs6m0VCOr7FEi8hgSjSNvpr8WWdyVP2qHNOyae8DUlewbfiz5+qXD+kXxgLfGsNwr2GFXM0u6NAcfgaebdqVsz6CDn240z3jg00nCPsYnMbuol7LBDAoOc2+hCXvAjcWpDpNMNexo60VOhkdEXKm+ExTEiyzU/vz9FlrHGL1j+LkcoxTU78ab+CTJdMZMp+xlPPUAlZjaLDzHBQupNhpEYMMX0z6qCYeVHLweX535+Y//kKn4RPXS0kRFtpPNizkrauAy7ddC1iB7spmK096IQRAVIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM3PPF9623118BD.namprd11.prod.outlook.com (2603:10b6:f:fc00::f3a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.23; Thu, 31 Jul
 2025 17:02:09 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8989.010; Thu, 31 Jul 2025
 17:02:08 +0000
Message-ID: <904f2004-147c-4037-a6dd-20264bc79dc6@intel.com>
Date: Thu, 31 Jul 2025 10:02:04 -0700
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>, "Aleksandr
 Loktionov" <aleksandr.loktionov@intel.com>
References: <20250731125025.1683557-1-jedrzej.jagielski@intel.com>
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
In-Reply-To: <20250731125025.1683557-1-jedrzej.jagielski@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------h5JCCe5KOV4cNPNBvnzKwXm6"
X-ClientProxiedBy: MW4PR03CA0121.namprd03.prod.outlook.com
 (2603:10b6:303:8c::6) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM3PPF9623118BD:EE_
X-MS-Office365-Filtering-Correlation-Id: f9477e64-aacd-48da-8ed5-08ddd053fa78
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Zmo0aFNhb1RBUmNNYUsyT0w0WTlnZXFzK28zS2hWTVJtUFQ4SkJnRjhIbWl2?=
 =?utf-8?B?STFoRzhzQkd6T1JqV0ROS1N1bnNjM1ZYeU95TS9VcDNZRUdlNEZ4UWhQK3dW?=
 =?utf-8?B?QW9NWEFBcVUyRFhnaFBYcUJKSVl2dFhZMjFHUTBERWdicmZMbWFZazN3djNm?=
 =?utf-8?B?VHFrYTVFeng2VHRlUHg0TXpzUnZOdk9nYm1RNEJCZ3ZaTnFBNEZidEtBWGdl?=
 =?utf-8?B?SEI3TFhNREZGOVZCMnNOaWZWcmVYRkhjUFZyY3k3Qm9rZEZZV2p4Yk1ScExv?=
 =?utf-8?B?dFlFNjRqUGszb0dkZURGQWFwOEdJU1FPMjJlcGw0d3pHNmNmQmJBMm1RTUdD?=
 =?utf-8?B?alp5QUd6MzJRYktaamx3ekwybUdnMUF4MHF1ZDA2YUl1Yy9EWGNlRm80ZVNH?=
 =?utf-8?B?YzhZUFlJN2FjMk43ZWg4UFNXZ2RmM0hpY1hQbzJrNUJyaUZpVHdGM25BbGZP?=
 =?utf-8?B?TjcxN2Zjd1Y5eS9oOXBLV2xTZmVKY0k5L0NPZmh0UGg0S0EvMVpYcUFNKzhs?=
 =?utf-8?B?YVRVakJnendmelQ1L2k2WmlobFRSckF0V1h2VHV4bjc2QU9ZMm1EeXZQdWh1?=
 =?utf-8?B?dGJBQTVMd01RTWJnUjJZWlZEb3VCS0E3ZUhqaGtJblhDTldYS1RSQUpyMzRM?=
 =?utf-8?B?OGxtWlVzWFovc25qQUg4SVRaWEJ4cm9ZOGNCblVCaXFWQWNOaUhxajBsUzBm?=
 =?utf-8?B?ckYvUlFPbEJFTnhpRzV1aVdqZnRjTjM2Y1g5dWRmZ3RBbDVjREdiSmNTZURO?=
 =?utf-8?B?NG1NdEp2ZmpqNUh1VWlzQkdBZUQ4ZnBVNWtxeTFiWHE5d1p4Z0ZzYWxHaXJB?=
 =?utf-8?B?MnNNSFFEOXZlZGVyUnJUd0MxdVU4TFV4N2YzYXM0UXpuWE56V21rcTNqTGx5?=
 =?utf-8?B?MTFkajB0NWJOZE16UzR6YTdZUHU3NVA1L2lTWEVndFd6L1cwbDBucVFjVnhU?=
 =?utf-8?B?YTdubjhBeEpocUNOTnh6UElGdWR5SitDcVM0YVZvLytWVUhSUU8zNkhMS1Jo?=
 =?utf-8?B?WUYyZ2pOQlpqWW9LSDdzMkVFUnNtSGxPc2YvdnFCRUJ4N3ZJNFVWcEFBdHVU?=
 =?utf-8?B?dkJLSkxxMEY0UHd2dzdNdjYzVlU2TFJIc0pjSCtTaCszS1dxaVdvVy9TaEZG?=
 =?utf-8?B?Y2VCekE3VFcxbW5GWkMrR2QxaDk1cHBydCt5TVNmenpuSURhS0V6cEZJbEEw?=
 =?utf-8?B?ZDgzYXgzckJVMkNZNFVaMTIxem5NWE9DT2NqNUtGQjNXUTZ3bkxRRTZGaU0w?=
 =?utf-8?B?UHhwTHZrQ0Rvd2ZkQTdaNGp0UEtmdXlsc0pLMVFHaTZNcDZUUm92WVRac2pj?=
 =?utf-8?B?RnduY2lVMmcwZ2d3cGJSS2ErNzBWck5uYkcrWnMwTnZXU2F2SStyWEJCOHZm?=
 =?utf-8?B?a1JydUUyNXpVc3MrUS9od1pXT3EvdVZQdWxxcnNVRUhsbVo0WjN0SGx1UXlE?=
 =?utf-8?B?TjNtYUozNTFUQmZCT1F4NmlkS3Zzck9HRnVhNm1ybVVyZ0dRalpjTlZTa3hL?=
 =?utf-8?B?eUpBQ2tOUC9oN0YrZHNocnBLZk5SZUt2V044ZENtTmJ3OVI0K3dIU3R3L01N?=
 =?utf-8?B?blllSkRkS28zM1BkQXFjSDhibGZFelBpb3FINWE3OFZ4SWFXQUVJQTh2bGwy?=
 =?utf-8?B?NzRjZVBMUTJ1K3lEMUlrUm5lT09JaElZYi9wSTA4eGV3SzMvMm5jZFI4bkVx?=
 =?utf-8?B?MGJ2bElUcWNDYnFBMGRkUG1qZU84b2ZKUEhQWDZ2VVVpaTlic1Rvd0tpTFpZ?=
 =?utf-8?B?NmRpTW1FQXZDTmg1eVFKLzcyWmFvNzNsVmFlMDRzRDUydFEyYW1UVmhWdnlZ?=
 =?utf-8?B?ZWZMZ3hmTVJWRGc1TFJpMVg4Q1JYRXpIRmNVS2NNcWVsSy9pdm8rUnk5b042?=
 =?utf-8?B?U2NxKzR0bWdta1FYelJwUEpmSEQyTmJyblFWZTFXcnk2ZUVFNkRNT1YvZTJk?=
 =?utf-8?Q?4+BoVgA0xDw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkk1NXh0dGRyOWhVUDhjbmFOVEd6K1RQcURTR01YcGlLUzRUQlpWSit5dGV0?=
 =?utf-8?B?aW1hYURIbUlNZm5mZzhUTklsRVpQUG1YYnF5V0xUZ0V1aU1pYW5INVNjSGNx?=
 =?utf-8?B?eUUvcWVncnd6YkYxcTl1akt6UmtGeUx1UDFXNWdkU0tnUkxnb2t1RU5Dd1Rt?=
 =?utf-8?B?Z3k5RXZESzNERHVMUFZIeDg2alNidVZNWVNUR2xJbTA2b1FBN2R2WWZaakNI?=
 =?utf-8?B?TVI0aG91cnhtNlBScFJCOWhCSFZ5ZmxFa1REOHRJVVNOajJpbXJUaXN6MGJi?=
 =?utf-8?B?MHJ5RXlOY05pTkthUVRrdHFtQUtIZ2txYnpLSk43VVNuUDlMY1JtY3YxbXRY?=
 =?utf-8?B?YmZkR2tpV21pem01QS9uZVYxTnFoR1hIR2F6ck5ERkxyTDBlNEdkcVBQY3BM?=
 =?utf-8?B?dnM0NVVnbkU4OFp1MmwvWTZMeDJDOHl4S3NNVG1nZGI5MHRFWHQ1bTVoaHVN?=
 =?utf-8?B?U1BCVkh1SnNKK1ZSOTZDVHRsNld1b2ZPZkZzQ05WUUdjcURXaDdpWWVlRVdu?=
 =?utf-8?B?TnJHN1pUT0NHMzRHamR6K0xKencxRDdCYWQveTEvU0taRW1kMlFTWHMxTzJM?=
 =?utf-8?B?c3FxU3NyUW01N0hsWjBNa1d2dlVuSHVVMzZYck5YMkZxaENmQWV0bWpSWTAx?=
 =?utf-8?B?SDRLQXVsa1ZscysreEkxdEJFclRCdVYwbDIraUJUelFKdmYrNUZIanIrak9o?=
 =?utf-8?B?VGRwQ1oyQ1dkVjdYNW05Yk5sZVdjWGM1dStvbDdrRXRlTDFHZmlYQkt0aWVr?=
 =?utf-8?B?VUo4TE5ISVhaNHgyQXlyZGc2VWpwTU03bGpMUm9lNVlUT0pWdDRCQ2FmRzdo?=
 =?utf-8?B?RWg0ak1aaDFyREtjMEN1elpNMEpVV28vOEJuem94YjdoR2ZvcWZiOWxrUEZx?=
 =?utf-8?B?OEVlUFVxZGgza2VtWk5HY1N4V3pVUmNKcHZsd1FuOTJPUXFvdG9KWlMzd3Bp?=
 =?utf-8?B?eFA1YTBpeWsrVWZCdnZlMGhyUklrNmZOWktWd3VRdkV6VXRQVU5laUkzREkr?=
 =?utf-8?B?Q080NlQ3QXk5ZFNuVHYyT29zOGl2blFmaXdOSG1qS1BsOEVWeVk4TFluc1l2?=
 =?utf-8?B?TkpkR2pLQ29TK3ZPNnRCLy9tbkdXUE1FZHBBRkZ4aVloS1dNZmZ5R3IyVjBo?=
 =?utf-8?B?cmRNWU5naE9BallEd0JLUUlSS2dKMWo1K2U2a0FMNm9pam1uZkd3dHM3TCtE?=
 =?utf-8?B?NmVMZ3lXSEJVaWFZMjBsWjc4NGpOVWp4UURTYjJWVWNXNDdDRE5uU2xVSmlh?=
 =?utf-8?B?SHNCQmNYN3FnamlILzhxaHBTYXZrM2JZMmdLUTY3M1J5eVg5ZXpPclhKU25v?=
 =?utf-8?B?U3RGV1oxY054ZWt2d0NjVzlWQ2dwdGNjdjIrR3Z2TlllY0NFMTViN3dVZkNN?=
 =?utf-8?B?bFdXa1kyQUZ2NWFIV004N1l0bzZyZ01OeXRadG43QVFZNno1WTRIaGVNVTdx?=
 =?utf-8?B?NWVjcFNGOUh5ZTdNelp2bUo4WlFPRi9hTFFiZHhRTmplWVpmSGN3MTlaMUh1?=
 =?utf-8?B?N0dndis5UFBYczJCV3psekUxek04dnZLdlQ3VnZQZTl5azZxeFlsL2tiYmIz?=
 =?utf-8?B?YWFnbDFyekozKysyMEhEYit6OEFPcUhlR3BtNzVxd0ZINFg3bDhlR2FCdzcr?=
 =?utf-8?B?Ym5mV3k0a2cxRDlGWUpraFN5Q1d4amd3bktQZGFzd3RFUUJreG0vbFhrbVZy?=
 =?utf-8?B?U09FdUg4WlZZTXFaTEd3QlMyMHZ0YndQaXJHUHROeTZhdzM5ZWVlclByWHBx?=
 =?utf-8?B?bDRyQnlYN0NXemt0dVZkS04vWXNjQmR6emlwcE8wZFoxa2ROTld3WituQXc2?=
 =?utf-8?B?WDJQT1FiNDRyMkxRcW5OeHVDdnJIOTF2eDZGVmYxVE1nRGVtWTBTTGZscTd6?=
 =?utf-8?B?cVdLS0FObCtHQWhya2JPOUxxcXUzSGVnc0pTMFh3MWtNb3YrclozQzB3YzVZ?=
 =?utf-8?B?ck5ZN0orclNJaW9lMjBFUWdDWWtiNnJSak93S0w2MWpnLzlLcVBMMWdiS3dG?=
 =?utf-8?B?YVhuRUNZTXEvVkJuZXpmTE10UDdmeW9lQzNOaGNjNVlaS2U0eFZkWGNTbktK?=
 =?utf-8?B?QjBmWEdFdjAyczVMNy9sbU9lMXJtbVQ5Y2dtTS9jT1pQTnFqSVR0R2h3MTlR?=
 =?utf-8?B?ZW5sM3dTZ2ZhZGN5ZXo5dFo2THZzMWhLbU50dTdsd3FMWExPME9zemVYY2dy?=
 =?utf-8?B?ZWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f9477e64-aacd-48da-8ed5-08ddd053fa78
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2025 17:02:08.9474 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A1PFg1FA3kqUJH8qE6+CEfVji74qwr4mKp+6rZYNx6OfMOR+NNOee8UJrh7dJkXIBIWVvkvbBnvNNjs9eN0FsG8oXmFcxGUuLgqT3hOc/8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF9623118BD
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753981367; x=1785517367;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=9A+EwDjJ5p6oM0ODmP4mxTZMIL2aGCidOg6B+tOP3aY=;
 b=hBmaKU78utEK8ZvsXLkXI/Y8MGP0te0Hv6CHabwzFdG/SSPafBi+5/iL
 awjJ6CamljLvi8at86surEcz+9PCPKIc6VnVJDb6GLia6aSwm9W8MAl1h
 c9u2dcUAtyT0CYVM+qmFCSVip4EGt8EqKiKDoC8/PCpejnXAdyBIg1Nra
 wofcCDnX67lRLn4fbC0C4nLExJsT5Sqsun5sx73EFKHQ9dvwRWq2o5rvF
 azSDDH+YxrCZq7bxIW7S8Un4NIpFeX51d9tWhQvcsyMRvGb2i9g1dQtCD
 5rQZAQIGSalY9JsvGzozbgPVGqm7aecUV4KUd/LpdcLAzbLJy93wcAL1P
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hBmaKU78
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: reduce number of
 reads when getting OROM data
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

--------------h5JCCe5KOV4cNPNBvnzKwXm6
Content-Type: multipart/mixed; boundary="------------DbDk9OyyUuYlIb2sAeVhI0va";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <904f2004-147c-4037-a6dd-20264bc79dc6@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: reduce number of
 reads when getting OROM data
References: <20250731125025.1683557-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20250731125025.1683557-1-jedrzej.jagielski@intel.com>

--------------DbDk9OyyUuYlIb2sAeVhI0va
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/31/2025 5:50 AM, Jedrzej Jagielski wrote:
> Currently, during locating the CIVD section, the ixgbe driver loops
> over the OROM area and at each iteration reads only OROM-datastruct-siz=
e
> amount of data. This results in many small reads and is inefficient.
>=20
> Optimize this by reading the entire OROM bank into memory once before
> entering the loop. This significantly reduces the probing time.
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---

Nice. I recall doing something similar in ice.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 58 +++++++++++++------=

>  1 file changed, 39 insertions(+), 19 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/ne=
t/ethernet/intel/ixgbe/ixgbe_e610.c
> index 87b03c1992a8..048b2aae155a 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -3006,50 +3006,70 @@ static int ixgbe_get_nvm_srev(struct ixgbe_hw *=
hw,
>   * Searches through the Option ROM flash contents to locate the CIVD d=
ata for
>   * the image.
>   *
> - * Return: the exit code of the operation.
> + * Return: -ENOMEM when cannot allocate memory, -EDOM for checksum vio=
lation,
> + *	   -ENODATA when cannot find proper data, -EIO for faulty read or
> + *	   0 on success.
> + *
> + *	   On success @civd stores collected data.
>   */
>  static int
>  ixgbe_get_orom_civd_data(struct ixgbe_hw *hw, enum ixgbe_bank_select b=
ank,
>  			 struct ixgbe_orom_civd_info *civd)
>  {
> -	struct ixgbe_orom_civd_info tmp;
> +	u32 orom_size =3D hw->flash.banks.orom_size;
> +	u8 *orom_data;
>  	u32 offset;
>  	int err;
> =20
> +	orom_data =3D kzalloc(orom_size, GFP_KERNEL);
> +	if (!orom_data)
> +		return -ENOMEM;
> +
> +	err =3D ixgbe_read_flash_module(hw, bank,
> +				      IXGBE_E610_SR_1ST_OROM_BANK_PTR, 0,
> +				      orom_data, orom_size);
> +	if (err) {
> +		err =3D -EIO;
> +		goto cleanup;
> +	}
> +
>  	/* The CIVD section is located in the Option ROM aligned to 512 bytes=
=2E
>  	 * The first 4 bytes must contain the ASCII characters "$CIV".
>  	 * A simple modulo 256 sum of all of the bytes of the structure must
>  	 * equal 0.
>  	 */
> -	for (offset =3D 0; (offset + SZ_512) <=3D hw->flash.banks.orom_size;
> -	     offset +=3D SZ_512) {
> +	for (offset =3D 0; (offset + SZ_512) <=3D orom_size; offset +=3D SZ_5=
12) {
> +		struct ixgbe_orom_civd_info *tmp;
>  		u8 sum =3D 0;
>  		u32 i;
> =20
> -		err =3D ixgbe_read_flash_module(hw, bank,
> -					      IXGBE_E610_SR_1ST_OROM_BANK_PTR,
> -					      offset,
> -					      (u8 *)&tmp, sizeof(tmp));
> -		if (err)
> -			return err;
> +		BUILD_BUG_ON(sizeof(*tmp) > SZ_512);
> +
> +		tmp =3D (struct ixgbe_orom_civd_info *)&orom_data[offset];
> =20
>  		/* Skip forward until we find a matching signature */
> -		if (memcmp(IXGBE_OROM_CIV_SIGNATURE, tmp.signature,
> -			   sizeof(tmp.signature)))
> +		if (memcmp(IXGBE_OROM_CIV_SIGNATURE, tmp->signature,
> +			   sizeof(tmp->signature)))
>  			continue;
> =20
>  		/* Verify that the simple checksum is zero */
> -		for (i =3D 0; i < sizeof(tmp); i++)
> -			sum +=3D ((u8 *)&tmp)[i];
> +		for (i =3D 0; i < sizeof(*tmp); i++)
> +			sum +=3D ((u8 *)tmp)[i];
> =20
> -		if (sum)
> -			return -EDOM;
> +		if (sum) {
> +			err =3D -EDOM;
> +			goto cleanup;
> +		}
> =20
> -		*civd =3D tmp;
> -		return 0;
> +		*civd =3D *tmp;
> +		err =3D 0;
> +		goto cleanup;
>  	}
> =20
> -	return -ENODATA;
> +	err =3D -ENODATA;
> +cleanup:
> +	kfree(orom_data);
> +	return err;
>  }
> =20
>  /**


--------------DbDk9OyyUuYlIb2sAeVhI0va--

--------------h5JCCe5KOV4cNPNBvnzKwXm6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaIuhjQUDAAAAAAAKCRBqll0+bw8o6D6y
AP947UlbadRqtNPBsQDNktsi21X/+J5hmPD5DffLF4nTYAEAnOU/1eWGIBoBinjCV6F83PJbxUhj
/MgFT4LsBL7PSgQ=
=aaDm
-----END PGP SIGNATURE-----

--------------h5JCCe5KOV4cNPNBvnzKwXm6--
