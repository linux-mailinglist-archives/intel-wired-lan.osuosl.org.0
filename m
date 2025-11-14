Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FDEC5FA17
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Nov 2025 00:54:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E746161165;
	Fri, 14 Nov 2025 23:54:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GoTvGMPZHouo; Fri, 14 Nov 2025 23:54:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5800D611BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763164472;
	bh=UuYv2RV1CRWvEG7gXSpZMmtS9XPou5urrYvc2r/eb+I=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3+czImuw0+Nn2MkaeM3wDSBpW9LnuN9FJsdE33/XuWezGZwSTYtF99I2q8h8duN2m
	 cjfz97PquaEMz1yu+mY+Vnl8NnfHPTufwmBTiEeO89LFnz099Ug4vUIGI+YV8moEAG
	 DZvPtmw7sfSYrUzGjUT3fNSXW6aHWwpiz9aGJndULncgM86gzaAWZg7l+mTE2ca3F7
	 ZKj/f4J5ttH4azCSljT3jorBzqYpm8vYTSXerJJ81+NtdxN2E81Lftsia7X064TBCT
	 xfzYUQmD4RYr51H2cU0xUpdhxQeTOiaEOHZoBJaC9sS62I8Ic71uCpP1xtlpO1pNfu
	 Bmz/HuaCGWXAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5800D611BD;
	Fri, 14 Nov 2025 23:54:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F5AD158
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 23:54:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF1CF61141
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 23:54:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N1CQ-ZaVEybf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Nov 2025 23:54:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 25119607A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25119607A8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 25119607A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 23:54:29 +0000 (UTC)
X-CSE-ConnectionGUID: dt5FNqF2S/eIciwC+0RjsA==
X-CSE-MsgGUID: mWudDwNRSm2KuZxPOkVDkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="64266886"
X-IronPort-AV: E=Sophos;i="6.19,306,1754982000"; 
 d="asc'?scan'208";a="64266886"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 15:54:29 -0800
X-CSE-ConnectionGUID: hbcGplibS0mQXfyURSOWyw==
X-CSE-MsgGUID: J5M0/OqRScqSwt7BHdNK2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,306,1754982000"; 
 d="asc'?scan'208";a="220542572"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 15:54:29 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 15:54:28 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 14 Nov 2025 15:54:28 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.56) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 15:54:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r9bzQVe1UGaiNUCNR1wyJCkqy7BXQ7RamB1As06pIYGC3KTnMaQL0suoFjpnAabLUENd30ShwKz6M04Jz2W+R7P/Wl8QF9lJhenAAHDz7mDF8YLhT8o/Sw9W1uiuf1jrTzZxUzjQalz0egAKYBcY9H6+wfb+RXv3MJbc9ommDQTb91fCb9CgfCMjP1hBG5f4xJFPmMhEkRKqtdD07hOaDexy1bRjNJN9UJ2MyQTEDDO5PzthRA80dUM1pRTL7vncciw3uicERE1VWv82KiVTCSX955XVyJG0LM/wWAiUsG9uSChRyroRFBGABI+/smp9pzwyWAGZErC48lVaBCa5QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UuYv2RV1CRWvEG7gXSpZMmtS9XPou5urrYvc2r/eb+I=;
 b=veaX/c8W5fz9kVDNy3XZrji5yrk2STHbYzQ33PW4JECh6Do4/eeUyNGJHf+IHylGsIPjB0uucBmjwYddQPBs1UREqPwj5sQYyf44iWZh89qyaUsoViLET48iNgfZ+IMvps+dgD0gydL01COzZfUGNBdZaRbKEer64OveO293AgEuYQMSKAZBqqqrOiDLsGgjbj+Uz+sQxheDjAuID3R5+6FyjL9Y3tXR28y3Ti4ERFjpdikrKseyKKf4K/U/PAAavQWSyEL0BrCgOmjmt4GZqklwhdU+qPG9KwgCse91RzTN+kh8NfNuoKotmZVXYnbKPkoeV8lazO58zQYBjuzMwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MN2PR11MB4741.namprd11.prod.outlook.com (2603:10b6:208:26a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.18; Fri, 14 Nov
 2025 23:54:21 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9320.018; Fri, 14 Nov 2025
 23:54:21 +0000
Message-ID: <c1d1b328-2a2d-4b74-86b7-df4584b0eb22@intel.com>
Date: Fri, 14 Nov 2025 15:54:11 -0800
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Simon Horman <horms@kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20251107-jk-refactor-queue-stats-v3-0-771ae1414b2e@intel.com>
 <20251107-jk-refactor-queue-stats-v3-2-771ae1414b2e@intel.com>
 <828b75f2-6717-4f30-a62a-4992b03ef74f@intel.com>
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
In-Reply-To: <828b75f2-6717-4f30-a62a-4992b03ef74f@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------02iLKxzNOEiSBa000f400RHU"
X-ClientProxiedBy: SI2P153CA0011.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:140::14) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MN2PR11MB4741:EE_
X-MS-Office365-Filtering-Correlation-Id: 035f3b68-3f3d-46c8-b4bc-08de23d92137
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aW05QVlVU3hSNldFdlNaMm52V3JURzZ0TFZ1dzV1V0dQMU9jWkpoak04bmZx?=
 =?utf-8?B?N1oxZTRJT3hEaTQ1WVdueE5YTitTZ3JOR3EvbzJmZ05kK1JuRnE4eUpJZjZj?=
 =?utf-8?B?ZHlKREZma3RmY3RIOGxGTkF3Q3JLZnhrNGN0ZWp1WDVpa3QvKzZBVEN0SzJa?=
 =?utf-8?B?VUx5T3dCQWdzWktyVWNoK2RmSHZBdXl1ZVp2QldSRnpTLzB1YXo0UlFZMk90?=
 =?utf-8?B?TndvL1pKSjlaM1lDdzlWTUFsdjh4R0pkelNjZ3Rra1FDNXNudURsWmxtaEpj?=
 =?utf-8?B?RTJ0Y3BleTlWVGQ4dFU1UzMxQ1IwSXVMU01jZmMzeXpsVE9SaXQ0UkZSUEo5?=
 =?utf-8?B?TWpTaWd2VDJVbnRZMUVPVmxOSDNGM2F4VWdJTVFLMnJmQXcxc3ZqYXpCTDZU?=
 =?utf-8?B?a3g3TEdtdzFLcTM5aVJydFdFZ0pzVFgzQXQwQ0E4NmV0TmtSdFFSY3VId0tX?=
 =?utf-8?B?NVFjSEpycmZPWGI0anJVUk5wRzVvb2NCLzVnUXFNNXBRd2d6cUV1RnRrVkFE?=
 =?utf-8?B?dXFlVFVzSjlpNnkxbmNoeWM4MC95MjZLWnpXN2I3SldWYUVMTzh2WjJhOW9p?=
 =?utf-8?B?SmxTSUNRcDBIZzVIOWZVM2JkaDZnZnJGbVQrVzFzNlgvdDhqRzhGMnZZTWlB?=
 =?utf-8?B?ZVZEYkVDckcyTVB6QkNYUnhNTU9wQ3lwdU1ySnBJRXVyZWk0RVRDbXhINzkv?=
 =?utf-8?B?djRzUXBHazB5OXg0SGpSQmdRb0tMcENFUkMxSHBna0xoZ05Nd2t4ZTlGMlRR?=
 =?utf-8?B?V2E1VmN5WXZRYkpOaGZjdlpOMzlNNHNZYk03SEZoL21FQW5ZaTJNeVdIb3FZ?=
 =?utf-8?B?eGljSXAxM0N5MVE5OTdSQWg3dUs2ZUdITUx2TGVTSXpQZmxiQWFlWXpkYUhE?=
 =?utf-8?B?SjZqTmFXUXFnNWhyMlRBR00rd09DVXowQVMzbEZXR2VXbHlaTVpYNGhJYmxI?=
 =?utf-8?B?RWR2WHJnODhCakZmcjN2UWFMd2pvTGRFbm44TTBLNW95ZjhsdG44U3M4Rkh5?=
 =?utf-8?B?K2ZnVVFqSjZIR3dURkE0M3ZlR2VpNTBzdEh4WlNmUjc5UHRhK3gzL2R0V0tp?=
 =?utf-8?B?dmJjSFJPZHFIa0Q3ZzcvY2hhVlpSQndPTURoYUpadmVQMEk4MGNUblJXSGs4?=
 =?utf-8?B?TXlvS0lvMU8waFBBa3FPdHA3Q1AwRFg2L0tudTJBMVpVYzY5ZnJVRkVCZURa?=
 =?utf-8?B?VjBkVS9kbHRZaGlVSGRPTE9TMnQvbkVnM0hxY29ySlRwdGxBUGhqK09Gd3hX?=
 =?utf-8?B?V0llaWFzNnFsbFk0OHp0anNNRVMzU2pJWFZTYWFxQk5MMDJ0NlBQZjlyYWxz?=
 =?utf-8?B?UEo1TWYwdGl4NlZqc0lYS1ljWmJXL2lnV0J1elp6ZzduV0loV1FQMkRsd3lX?=
 =?utf-8?B?MGFtTjZNdEVSd3RGd3FRdUFJb05uTDJLbzBjUlNoTCtFSHR3ZlRqTWtnek1w?=
 =?utf-8?B?N0Q1VFpIdUNqL0pKNkl6aHBBZW5jWkZkZzBBMFVaRlRFbmYvZXBYOVJhVG01?=
 =?utf-8?B?cmVtK2Q4QWc3TlVQMHJkL2dGREtEUGsydHp1T1ZQcHZSZ3ovOHlwMUxEaUhl?=
 =?utf-8?B?MFMxODV0eiszQ0ZUTituZGlxZVNSaWQwWXpQY0tHWkNMbGxGYnFxaGJueUNw?=
 =?utf-8?B?dFRBMFRiNjU0cklxak1IMXFtQ01jZG5BSWJVa05WSkdhUmNtQVBVL3ZtZWx6?=
 =?utf-8?B?R1Y0NjFzbExLbzU4T1JuWU5odTYzMEpIcDJlc0ZFQndRdXZINjkxTjM4RGVl?=
 =?utf-8?B?VFA5emo5RkV2VFhNU0hJNFh4anJiZ0FiOURnaERVTDdzQXlRQ1pQdVpwOVh2?=
 =?utf-8?B?Qk8xcGFyN203VlJqOG5UU1lIeHl2RXdLdFRLbG5ZTWdUTGl6TEVjQmFIYjBm?=
 =?utf-8?B?bWJhakdLbERjckc2eW1WcjIvcDZ4TFNhbHQrMGVUK0pkMUEwS1cxenNxMWdC?=
 =?utf-8?Q?YhV/m+KmeCDyYId54oAnPi995IuZNvc6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?elY5Ymo4clZERSsrSzJyTHg4bklkWTgxR01HRU16Y0lsYTRJcTlLdW13b0Ro?=
 =?utf-8?B?NlVzcExmVmtnL0d2Z21kT2NQREVhcFA5U0xFaEREZ3JlS0tpTHVEL3YyWC9P?=
 =?utf-8?B?OExUQzBYZmpNbEU4dGQrVmJ6MjNEZFU1blZBZjF5N0toU2Z2ZExMSDFUOGtv?=
 =?utf-8?B?L25vbHBQdlB3Yk9NZ0NROUx3WUR1VHg4VXg1OWZVRmdPQzh6ZEZWT2R6ZHRG?=
 =?utf-8?B?ZGxsRElNaHBBemQwZkh1S1ZYUlQ3QUowT203THZhTkRmaVVHSDhsakRDOVF3?=
 =?utf-8?B?ejEwbXlBUVV2em91UkRKaGdocDcvRFkydWJ4OTVaa2NrdXdHQU1hQVF3MTdV?=
 =?utf-8?B?QnppaEduTDRMTEhSakUrN29pZkVyMmc1VXdjQ21LSXFRaEk2dU5UaWhDaG9B?=
 =?utf-8?B?QU9LNWtuV1lSS3NuNlg0TTdJWEl2UGZZMzcrNzBpdVJtN1d6eDFYemY2TkJT?=
 =?utf-8?B?V0Zocmc3SjdoVUFlUFZvb0IxYnA4aVZiaHJtUkNuejNsakFKcTYwQ0lhOWhk?=
 =?utf-8?B?QnN1YklTNzdPZWJjem5vaWpzTWFlM05FU3kyQlVGMmhMaTJYc3UrYWh4Smpl?=
 =?utf-8?B?WE1IeGpNK0ZrVkRrZ2FFYzdIWng3SnNnU2FaZXBTNmNMSVkva0JuajRHUiti?=
 =?utf-8?B?THVxL01Jd3RudXBrSVdlZjd3d1Q2aUhaeHVITU9QZWxXMkJmSjlxVWVoMDNL?=
 =?utf-8?B?a1F0U1dJRXdnVUNkQlM2YXU4Z0U0eXB6NDN5ZXRMaTZ0amtHeXZKRVdXelBY?=
 =?utf-8?B?Y0MzZTVmaFdnbEJXd3FvZjhHckNUQ0t1ZnlxcHVGN2dUMTltRjA3VDg3eUla?=
 =?utf-8?B?YkNuYzRseWlieDVsUkM1dHQwbWh1aU1LenBNbDJ5ZzVpN0IvUFF5Rk4yNHlG?=
 =?utf-8?B?by83czJTUVg1aE9VYjhKaVhuTlZRTURtZFZzSmxpWmtPV0NGOUFEK0ZwYlBR?=
 =?utf-8?B?dWhUOWt1Y2tiNUpDbExvQ0dpNTJsNDV0eEVUV1VWY2wycllMZldnWkV3SFdD?=
 =?utf-8?B?bXppeklORlJISjFUeHFiRUExOEJkc1V3VzN4ZGl3L0JxTlpRV2xaWHJqWTJk?=
 =?utf-8?B?SDBPN09kaEJ4b2ZmMEdqOFVybTE1RjBNUEVaQVhNZkNBMjRDRjgvaWhWQU95?=
 =?utf-8?B?OU11dnlUT01ITjdpM0NKMDBMQnlseEtoZ1VtNmlyVllxMlcvblZNa3pJWG9T?=
 =?utf-8?B?dDE0K3NER1FQbFlxbExDSFU1Y0V3dC84VlBGY3lhZjRQaW83WFRrc0RVYU00?=
 =?utf-8?B?QVMveHh0V2pONENyY0NHRkY0Y2dUN1V2L1JVNDBCTGVEU1AvWVZDOUhxcHl6?=
 =?utf-8?B?RWhqTXNBRy91dnFkaVNpNjJ0V2dPNisrNHlDaWZJcVdJc29GT0JNNVNVZnZH?=
 =?utf-8?B?Q1JkZkZnZTJNUGF4ZXFvMks0WTZaNjFuY2hIQmpvV1p6YmlzbnJGcWdIeGw0?=
 =?utf-8?B?RVcwUGthQ3BwOXQ1djlTRGZ0WXNMNGhkVHg3Rm5hTlBBY0RtaGZNOFVRRHdh?=
 =?utf-8?B?V3h1c1JuVmJzcXRFTkNJd3pQa2lvQ2RwZ1QrSlI2MkZ1WmduQTVPQjJiallR?=
 =?utf-8?B?ZmRQOFBBK2RqOTE3MjNzMGpnK3hDZXBxZjJNWnZPUjBkQVBnSzVyMnNFVGpn?=
 =?utf-8?B?UFFCQUJyKzUwNlZhM2Z6UHZMVTlBNGl0Z1JqeWZPUklRaGNoa3RxUzFJbDBV?=
 =?utf-8?B?UmxwT05FZ1pOd2RlMEtDdzVpek9ndVl6cWtoVEZYaTUzbFNBTHJLZ2ZQWU5o?=
 =?utf-8?B?bUcvU0VKdXhRbnFjS2NKTGRHdklmZjJnRmpzcXpUZUZGSXphd3FRckZFU0xu?=
 =?utf-8?B?UEtxM2hFbXI0REFFZEFBajBGQ0dGcVpwQ0dnMWRzY1EySWlwVEVGbFd2dHFP?=
 =?utf-8?B?MWh4OS9xbHNyOTdMYm50UmVSQmQyQ3cyV3AxcHRsYzBLd3k0N0pNTHBmbTIr?=
 =?utf-8?B?cHB6aDBLT2tVRWowRnJ1YjlrczFLZjFDSndwcEJlekVUQXlvNHNja2NmWENH?=
 =?utf-8?B?dWFmS1lRbjlzRllTWVVYQWZLOUpQNUdOcEZFYjJEaDAzL3U5dFpIZDd3bzJD?=
 =?utf-8?B?SUM3VVdQZHd5TDE1a0VzZi9LYjQyVDdmcUQwTFlWY0VoTWJzT05IMTlsbXgy?=
 =?utf-8?B?YXVTdFhJTGZiWXFSSFZKZjc4K3BsNytoUFUyMmkzdGtIUFFkQ21scjQzdHJ3?=
 =?utf-8?B?Mmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 035f3b68-3f3d-46c8-b4bc-08de23d92137
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 23:54:20.8942 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h2hutH2nEllSBUcaBMUW50a5n0Y1ZlO5VPSTjzlPfhuI3z6tJT/SxmXvPieOonLaxbLgetLQTvaI/OzqetX0ITFEO3bhjcDnvyIP89r0xEc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4741
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763164470; x=1794700470;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=Za1WXQv4zY5qRFI5AL+XTFegVxQeW27gCv5cdAE91rg=;
 b=MMS7f57IQLLIAPI63Vifk27E3sIYD75qcPAty0IYoNc6pZE+yogJ6Ve3
 qCyar+LXWVdNJaq4+ZQDql6cyeMCTL24ULeYkl8PVa9whiQi+frPYEpRl
 UpHW25WohFVlTEKlWRkJEpvIjIVe+3roNlT1sPtvwaBKERaUaQ26dJzFv
 Pydd8Qwn1x2souzp14LSnZyVdsVWyDYNyyN31ZKYP1DTs/Y/2bhW04F40
 i45t3KlWrUhCdU1Mg4YjdLusm72clReEmVw/aFv/QQTsN78QMIlVkYZA1
 AVmTg4Yx5R0mravChwuQ+/4ucr5vVmPnv05iWnLDnVdfv0UfL+0SSswoq
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MMS7f57I
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/9] ice: use cacheline
 groups for ice_rx_ring structure
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

--------------02iLKxzNOEiSBa000f400RHU
Content-Type: multipart/mixed; boundary="------------Rvfgs30om46cYZatTZxGYcEr";
 protected-headers="v1"
Message-ID: <c1d1b328-2a2d-4b74-86b7-df4584b0eb22@intel.com>
Date: Fri, 14 Nov 2025 15:54:11 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH iwl-next v3 2/9] ice: use cacheline groups for ice_rx_ring
 structure
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
References: <20251107-jk-refactor-queue-stats-v3-0-771ae1414b2e@intel.com>
 <20251107-jk-refactor-queue-stats-v3-2-771ae1414b2e@intel.com>
 <828b75f2-6717-4f30-a62a-4992b03ef74f@intel.com>
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
In-Reply-To: <828b75f2-6717-4f30-a62a-4992b03ef74f@intel.com>

--------------Rvfgs30om46cYZatTZxGYcEr
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 11/14/2025 7:36 AM, Alexander Lobakin wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> Date: Fri, 7 Nov 2025 15:31:46 -0800
>=20
>> The ice ring structure was reorganized back by commit 65124bbf980c ("i=
ce:
>> Reorganize tx_buf and ring structs"), and later split into a separate
>> ice_rx_ring structure by commit e72bba21355d ("ice: split ice_ring ont=
o
>> Tx/Rx separate structs")
>>
>> The ice_rx_ring structure has comments left over from this prior
>> reorganization indicating which fields belong to which cachelines.
>> Unfortunately, these comments are not all accurate. The intended layou=
t is
>> for x86_64 systems with a 64-byte cache.
>>
>>  * Cacheline 1 spans from the start of the struct to the end of the rx=
_fqes
>>    and xdp_buf union. The comments correctly match this.
>>
>>  * Cacheline 2 spans from hdr_fqes to the end of hdr_truesize, but the=

>>    comment indicates it should end xdp and xsk union.
>>
>>  * Cacheline 3 spans from the truesize field to the xsk_pool, but the
>>    comment wants this to be from the pkt_ctx down to the rcu head fiel=
d.
>>
>>  * Cacheline 4 spans from the rx_hdr_len down to the flags field, but =
the
>>    comment indicates that it starts back at the ice_channel structure
>>    pointer.
>>
>>  * Cacheline 5 is indicated to cover the xdp_rxq. Because this field i=
s
>>    aligned to 64 bytes, this is actually true. However, there is a lar=
ge 45
>>    byte gap at the end of cacheline 4.
>=20
> Sorry for reviewing this so late, but these comments really are outdate=
d
> as hell and don't really reflect what we'd like to achieve.
>=20
> I would like to work together with you on rearranging and packing both
> structures in an optimal way, the same what I did quite a bit ago for i=
dpf.
>=20
> Maybe we could drop the series from the next-queue for now?
>=20

Sounds good. I can probably also respin the other parts to avoid needing
to rely on this change, and we can work together to fix this properly.

Thanks,
Jake

--------------Rvfgs30om46cYZatTZxGYcEr--

--------------02iLKxzNOEiSBa000f400RHU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaRfBJAUDAAAAAAAKCRBqll0+bw8o6BLG
AP9KHxDB9nqLS11MaIlqGGF1//atATKcPTASjbz5Bw7NkwEAphqBugPWyXA57MQ/PxxxfIwLUcmW
Fw72YSKWDP8urAM=
=HeBg
-----END PGP SIGNATURE-----

--------------02iLKxzNOEiSBa000f400RHU--
