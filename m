Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8B0C32B24
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 19:45:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE71C40D13;
	Tue,  4 Nov 2025 18:45:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qyc8pa743g3M; Tue,  4 Nov 2025 18:45:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5047F40D40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762281933;
	bh=fDfNC+T9SwcgqzIVbSjz4eElMq7nFvbBBITCcIahfrU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HSu9dDu0ffYH0VmynNoilYveoLVMDJITgPFeJWaXgk5HCR4zVUVsKbs1UTzhQ2dom
	 FoppCRsPxqK13DrYdv8OQxV9WgO8qnn6JobNQ0WXRp1Yf2bCLzfXlyLwcf1at3b5oa
	 uajLES2NHyWccNzQlFIChQ/rJjmJmB78zopUduw6WiSQQxxqEtSxeoc+j+iEMWX5t/
	 llNLOIQuiqv19l6uP5wGt7pi5+tyzDlTRnAXAfMoReoD/jCRS1RS38Rd/NAGKsvIyB
	 5nBv5rB2GM8qzotmy3ckYAVX/bmwb/IcSJR5qpsAjQ1gH9V/2qlfK59W0oCq8rslpw
	 mD4S5/qFSTk0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5047F40D40;
	Tue,  4 Nov 2025 18:45:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A1BF462
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 18:45:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 80F1640BAF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 18:45:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pdFVKUZunhCz for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 18:45:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BDA6640BA5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDA6640BA5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BDA6640BA5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 18:45:30 +0000 (UTC)
X-CSE-ConnectionGUID: gOJy+hN8SbiuonI0iZOzjw==
X-CSE-MsgGUID: 17Misn8DSlij4mCupQDlNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="74680359"
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; 
 d="asc'?scan'208";a="74680359"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 10:45:30 -0800
X-CSE-ConnectionGUID: R8bxA9f2TUeWgnic2FJXhQ==
X-CSE-MsgGUID: sOp/k3PxRx6utCsNqMI/Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; 
 d="asc'?scan'208";a="187965881"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 10:45:30 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 10:45:29 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 10:45:29 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.49) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 10:45:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R0pSD+VpvHEnKjNL7wlbomS+l7OYdhGX5QfFIEq+CiMe8eIQJj/etwBjfL7Gap9/r9Rjd6AVnLPLatYsT/zzm/foFCnS/v8u9RhnSv/GcbT9WsZPNEviLNFMXzArLvD6S4o3XwyBNmM0RCo3V1vNA/fMfQ9LNoicj3q/BU5YJnv10joXOhVA/I4wQhdUJ6245qAcXiSS9e+ROjaiLMLOvHSR961W3ozKWHX7d3db2ZMMM6VIpJShgAGxT+6PYE2JF4RZE4uBAp6Ke5qgJlAKnQS0MeizJYrItx4TJezJ3Lx3wJfqLOXZXR2LdIHwO3xOwsU9F+E6XtOvNKO1i0tnow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fDfNC+T9SwcgqzIVbSjz4eElMq7nFvbBBITCcIahfrU=;
 b=CYFNShd2AEaAH31/9jC2XASt3qWLyqMnT4RJ0eBYofsHy+Rrqakzx3Yux48m+bhRhwF2xuusUjd5uZEZyHz9i/WN4KPYNfh+LSuzEDUakZv47Sn+xmdTfd7zZu6Ne3RWqdrxHfvtUkqcYba0ww6XlCN8YjREKwu25Hjw3ZhPVD0ya5zh7/YPrMYVMQ32xP9p11SfCf5tAf2NxuuHoNHNKie04icXXel4DGQpINBCPtD0Mh+A9LzDw+pZME+VYVUbX51H50V9JD1Ab8owxRo0fXZ39isYH+CS/scOCoBWBYkO8wsYzLAX+VuYsmYbL3x4uvtFThj/WzHyDgLooE3NGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA0PR11MB4766.namprd11.prod.outlook.com (2603:10b6:806:92::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Tue, 4 Nov
 2025 18:45:27 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 18:45:26 +0000
Message-ID: <763ebb90-7c92-499a-b0ac-b16d88f67e75@intel.com>
Date: Tue, 4 Nov 2025 10:45:23 -0800
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
 <IA3PR11MB8986AB2DBE26AD6A7E3362A2E5C4A@IA3PR11MB8986.namprd11.prod.outlook.com>
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
In-Reply-To: <IA3PR11MB8986AB2DBE26AD6A7E3362A2E5C4A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------GQcocUOOI0edgBFpubRSIS6g"
X-ClientProxiedBy: MW4PR04CA0071.namprd04.prod.outlook.com
 (2603:10b6:303:6b::16) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA0PR11MB4766:EE_
X-MS-Office365-Filtering-Correlation-Id: c783a522-825d-498a-fa41-08de1bd251ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eEErVlNZa1dObFNEM1JEYWF4RjBxc1FyOFFiQ09Vazhpc3dibmU0dERtb0M4?=
 =?utf-8?B?Y1JsTDdBcWFmQjBmQmJJUDQwcE5zaUZtRmNRQjRkUzVpMHZTWjMyMXFNRFE1?=
 =?utf-8?B?YXMzd2I1bDFsNmdONFZRRXJ3UUhBakcwTFc4SUJKNlVBTFRlbVFNdkx5K21h?=
 =?utf-8?B?ZFY2Uk5ENkZPRmpabFp4U0xVa2cvemdycFdkMjI2TnJKVVNiSGFndFI3VlpD?=
 =?utf-8?B?QlZ5TUNkZEF0QTFVUERuMTVROUFKYUQ4OHN3L3BjaEgvd2VvVnNMZ1BxL2dq?=
 =?utf-8?B?TkQ4Q05DRUpzLzZFR0lib082Z1MwRk5IK0EvUmhRV3RpQ1czbnFCa3I2SWVJ?=
 =?utf-8?B?amR2Y1ZheDA5SGNkR3dRVE9nSkwyVFRwOWhmSVZUYmhWNGRHQWROZkRSL2pU?=
 =?utf-8?B?clVnQldCcTZXRWRPcTVHRzFuZ0JQY2E0SnNrdW5FV29HZ0xuVlhqazNTNmdr?=
 =?utf-8?B?QWNlLzNBRW5xdDczOW5MNlNIblIwTUU4djRjdmhmR2VIKytWUldqNTFHaENl?=
 =?utf-8?B?NmdrU1hCemxjZkhXS2hkTlBPTlJISiszRkpOakNIQ3lkVjBNVGlJVFhGdzFQ?=
 =?utf-8?B?WEFBNGNuUmJGQ0lkK3k1b0FDc25KR0lZV2lTYnBBOGNnV0lNdSt0SytVSHJr?=
 =?utf-8?B?QWxnMEZ6a3QrSXEwVndCSnBSSlFCeDFkZUxwUldicDlFYWNud2dlNFNCOEwv?=
 =?utf-8?B?ZGlhS3VoQ245MGtodGdEeWNLRlZvNkQ2RVdNR3FPdjUvdXZDdHlLdytUaERG?=
 =?utf-8?B?cmt6UWI5WEhadlRBY1dwZkRMaTNmN3VaRFJnZGNXbnNUS09UMkViWCtaekY5?=
 =?utf-8?B?U083UWhBdGVFcFdGTlMzanBTYTVyZGxtbnpoRzgzZCtVV3QxSEkrd3RZZFd5?=
 =?utf-8?B?eGx0KzNLKzlXMnNVQW1EdmVUUForKzc0Mm1VV09rb1ZQQmVvTnpLUURQYTdT?=
 =?utf-8?B?YWpkSEFtVnBRSXNuUFZwdTZvREFMbTlJV0tMZE8vbzBsMmhDallvYzd3bS9w?=
 =?utf-8?B?ZDZVNGZGQitMR2YrM0E1SVhnUWJ0Q2pCUFF4eXNsTWduK3NmdE54R2hubEFW?=
 =?utf-8?B?N0hBVjRyWVJvYWNlVDN6RC9ucVJSUWI3d1hmMWVtRmZaYVg3VUhOQkJFcmlj?=
 =?utf-8?B?UWVXb1BybndWcDA5ajBmZGRONkdRNEJ6RUVVV3ZrMGg5YityV0g3cjhJYWEr?=
 =?utf-8?B?MTluUnZweEczald5dWhsbEIzaHd6R1lSNWVOaks1Um1XK0o0Yk9RdjZWRWhv?=
 =?utf-8?B?S1NkeGM0Wllud0twTVhXcWFFV1I3czJwekY4WVlFZUQ5eGpTV29jMzNPbmo0?=
 =?utf-8?B?MkRyT3lzSjA5S1lCUEd6eWtyZTdJVng4dzIvUEthSVJyU3dXYmpwcXM1VjFw?=
 =?utf-8?B?RHdXcTA2UHpNNUVweUJ5cXZiVjVXYjc1VFNmVFJhZ2s4T1Nvb01JUmlNbThK?=
 =?utf-8?B?anFQdzFvL1p0RlRoejVjT1ZkRUdnTENTYUZ0SlR2eFBtRExDdllDQWVyM1h0?=
 =?utf-8?B?aUIrc2xCN2pVUWh5MHROdCtuRDhEUDdjVVhDVGFmQ0JOZGl1YzFDSnQ3QVF3?=
 =?utf-8?B?WnhLa0NSSFE3MitNLzUwM2FmUmI2NGtoUjdrMkd2N05GUEh1KzF3TVhZWHFh?=
 =?utf-8?B?WTFSdkIyc0VsbVZuV2ZIREZNYzhxMVEyck9SbXcxdlJ5TGt4MEhlYXppWFZ4?=
 =?utf-8?B?MjhkSUlWOWFlMkhRTSt3aTdGOThGU0RaS1ZzU3FieWZBaGI5MmM5OFNlTXdn?=
 =?utf-8?B?UnNIUEhNUHM2WTZEV0YwUDZxQjRodWRENk9tRmhIMW5RY2kxY0ppMzVMWlEy?=
 =?utf-8?B?Q1JyUzdNLzE4d3ZJNWNpdFc4N0oxWUNiLzFPaytqTXNRbjZTdFQ5Y1hrZkRq?=
 =?utf-8?B?dCsrQ3JGc2FVRTYwQkh4d1Z4ajBQaVVXSjlTM3ZEVlBaNHVpTVJZa29scjht?=
 =?utf-8?Q?fGKNzqzICLg757n7yI0NeGExuWy6c8Uv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2lNVkZjT1I3RmFBMGRVcEhmeEZmN3F0QzUzYUQrdjJoOGVpT2p2Q2NWLzZU?=
 =?utf-8?B?VmM2SDNLTk80VDhZTktCN0F1ZlBBR0J1K3k2SmMyWTc4MHhPS01kV0htS3Vk?=
 =?utf-8?B?TTN4bVo1RzZuMm5TRVkzMEVldTRoVlFBR0VnaU9yZi9sZFZCV0l3NnJBUkhO?=
 =?utf-8?B?bWc1endIWjJMUHJ4MHhBS0hXWUJ3U0prY0cwT2VSd2E1MXRCUlZiK2xJR3ZG?=
 =?utf-8?B?ZDNiaXZaYUZ6Y1dnOGh0M2pRd2Z0VStEOXlaR1prelJwL1FDY21jb3F2K2FT?=
 =?utf-8?B?K01VMGdlRVF2eW90c0RCSGt2RVNuMEFhb0RFY1U5MWdCM05Vd0JNL3FMSkM5?=
 =?utf-8?B?SDRRVk1URmQ3UEcwalQ2K0JFTVR2THVmTi84TzdJU2hLVjhLc01UYU5LVy9P?=
 =?utf-8?B?UVVobGJDOUVWbUl1bEFueHhVZHlCUklKWDdNdzlWOEFTRk1mcmx3RHBRVWxR?=
 =?utf-8?B?NXc4QWNKTU1pRk9xZnVMQUR5S0lYakluTU5XOWZEbjIwR0xkRmF0VmR4U3RP?=
 =?utf-8?B?Tk1vM3V0TFBQVUozMnY3cHBLRjZqMzM2QW9QV3FmdDg1YTVESVphSjVMUU1U?=
 =?utf-8?B?WGdZeUx2UGxjNzVSU2txWU1OVVNBQU5wTWV5MGcxdFdRSElqbUZTNENEZVZr?=
 =?utf-8?B?UFNicklrSmUyTnVIalhqYndVOS94bmpDM3pLT2VPVXpSS1FScTRid24rcG8x?=
 =?utf-8?B?emRSdWdvUXdlZUNwMnRKdmNYQnNya3ZzeENtVnB4SEZwbHFjM1RyUUlGaCts?=
 =?utf-8?B?WGdTd013V2h0WklBRWtJOXEvOHROVXhsMi9wUUF0ckhZSklvTVNLUUtZK2NK?=
 =?utf-8?B?MW5XSnBnNndaVi9iNXNhTXB1c0w2RFN0NHZ3QVB4cTk0a1JWd0RnQXNnalBM?=
 =?utf-8?B?cjZjQ0k1SmI4VHYrNWZQelRmRjVYNmJXWWJnNFFUNVYvSTgvREw2Mkp6Z0Fx?=
 =?utf-8?B?d251ZXc4Sk5KYTdrSkNXamdoQkJJRUR4dllOdGZJRHg1SnMrVU1RclVyMW1B?=
 =?utf-8?B?SFJCbUVMelRSTW0vNzZOS0YrMnZ5VWNhTU9wVk5zKzAxa0ZCN2xxcEJ1dWFC?=
 =?utf-8?B?QVVJSVZOOE1ZZE9LK0JRR013c2grNS8rUVA0UEEwb1diQ0RKcHR1dkozYkpB?=
 =?utf-8?B?NVZrZG54SzdQVHRQSFNrSWErS3pWQUpNV2Y3RnNnMDRZZERyWXNCU3ZXRGJm?=
 =?utf-8?B?eGg0RnJBakVrUThDMDY5bFFCa09WWTJYWllSb3NtbGZqOE03T09TZTI4RUNO?=
 =?utf-8?B?ZWp5YXdYclZHcjBkb0RVcG1aMHF1cmtINGRTZUhldEZWVjFiV21kMUd1NkJJ?=
 =?utf-8?B?MGRudVByUEZmUVZNQTNqcmVBUXZGclZrRFo3V0FUVGpGcldRZU9tQlZxMStB?=
 =?utf-8?B?RW9QWnhOQ2IxRzJmVG8xSlU4d0Jtc3hobzYvaGpvUmY0Wk5nV2MyaFl1Qnhw?=
 =?utf-8?B?LzVNZXpGVlpoV3p2OEdhK3h5UlMyN1Eyb2s1aStrTXFvSjlJbnN2WTgvTmZk?=
 =?utf-8?B?RUQvSUtyQURHa3NOeHQwN1FXczZvVkgxdStlZ1hMQ0dpUVRPbWlidFBRSXVa?=
 =?utf-8?B?bzBWL2I2WFJZWmpNM1pkWUpoWGZmaHYxeUhMcHBQNVIyYkt6bHF1emRJTTlH?=
 =?utf-8?B?cWlVR0ZLZ2ZHVjV1TDM2RCtwMDd1Y1IzenFYSjhNV1F0VGpDSWFaejIwdXZF?=
 =?utf-8?B?MXMvcjVIM2RZWlRwUmxQbFF4M3dyb0MreVRtZmthQU5wUVJVTjN2QnJrSkZQ?=
 =?utf-8?B?TGgzNHVvS1JQbDNsc0ptenVOUnRFRExCTnVQTkpraVZqMGxIazU0QXJHZWF4?=
 =?utf-8?B?TE52akwwK0ZXVk5VYndHNmREb3BVMmdXUUt4SjZPWUxSdVdVbUxzNXdOdDg3?=
 =?utf-8?B?eDBNdXRzYW5PSDUwK21qVkN0d2dyWjNFbGNucStXVnh4Wm5wMlFmcGJ4ZFdp?=
 =?utf-8?B?Zkx6NGhKdmhlNHFWRm9NdFFvSmEvT3VyR2hweHNNdUpJZ2dDa09odDZBWG0v?=
 =?utf-8?B?RGU2QTJFRDA0cjdWTk1uZW5RSWx1THNsd3EyelJZUGQrSVI1RThRZm5IeEtr?=
 =?utf-8?B?MDQ1ak1YaElRZytCYXdiSCt2TzhJbHlSZzBWdCtmTGdLUFFuWDBVR2dPK2RJ?=
 =?utf-8?B?Mnl2T0o1VTNLR0tXdktzTHFtS3hTTW9VNzRtdE9TWmJYdE1weS9oc1hwNVp2?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c783a522-825d-498a-fa41-08de1bd251ff
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2025 18:45:26.7822 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HGGwdhE28YtawhZ4bKnTA+XwupWFRV+oCeXwygLYWdxJrIbItZuJ3/y3Z8ahMqfCMUDSrHoKwdQ+vEybg5CBnADeoR74N4HOegtkyoYsbWQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4766
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762281930; x=1793817930;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=wa6atqnlMH7egWcjc20vq8+rSaXot9T+1jZfQK4dvmg=;
 b=gVtHrvIAIkq/ga3cbxRcspHSR+Cy4C7HurZxrs5jFSg0Snlmx+TtIE4O
 Tn1WWtKUvYnwKVdyF7NxAwrC+4d87NgOeh/LZpOp9L09DOpEA4+LR9+r5
 bjAXMD+m10Dnl0tdeBs3T9160N3rww8vFcV3Wb+d3mh+fhww6Izku6jdI
 emKeLDRwYgdOQn9YjPbj6L5GMNpNsFb3I8ytXtRhjjm1tz5fd+ppUAmDN
 56wD4vh3cbgIdWDfrkiZ1G+9gW0G26LL9xVoL+t7s7SAk7YQ6ZGirKSMo
 VIQg8W8LxSF5780yMuM2ihoDT1aeGepvxSE9msGn7NDsTh20PuM4fchmX
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gVtHrvIA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/9] ice: properly use
 u64_stats API for all ring stats
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

--------------GQcocUOOI0edgBFpubRSIS6g
Content-Type: multipart/mixed; boundary="------------ZeTEW0pcydZZ41ouQfK19Q0y";
 protected-headers="v1"
Message-ID: <763ebb90-7c92-499a-b0ac-b16d88f67e75@intel.com>
Date: Tue, 4 Nov 2025 10:45:23 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH iwl-next 0/9] ice: properly use u64_stats API for all ring
 stats
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
 <IA3PR11MB8986AB2DBE26AD6A7E3362A2E5C4A@IA3PR11MB8986.namprd11.prod.outlook.com>
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
In-Reply-To: <IA3PR11MB8986AB2DBE26AD6A7E3362A2E5C4A@IA3PR11MB8986.namprd11.prod.outlook.com>

--------------ZeTEW0pcydZZ41ouQfK19Q0y
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 11/3/2025 11:27 PM, Loktionov, Aleksandr wrote:
>=20
>=20
>> -----Original Message-----
>> From: Keller, Jacob E <jacob.e.keller@intel.com>
>> Sent: Tuesday, November 4, 2025 2:07 AM
>> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Lobakin,
>> Aleksander <aleksander.lobakin@intel.com>; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>
>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Keller,
>> Jacob E <jacob.e.keller@intel.com>
>> Subject: [PATCH iwl-next 0/9] ice: properly use u64_stats API for all
>> ring stats
>>
>> The ice driver has multiple u64 values stored in the ring structures
>> for each queue used for statistics. These are accumulated in
>> ice_update_vsi_stats(). The packet and byte values are read using the
>> u64_stats API from <linux/u64_stats_sync.h>.
>>
>> Several non-standard counters are also accumulated in the same
>> function, but do not use the u64_stats API. This could result in
>> load/store tears on 32-bit architectures. Further, since commit
>> 316580b69d0a ("u64_stats:
>> provide u64_stats_t type"), the u64 stats API has had u64_stats_t and
>> access functions which convert to local64_t on 64-bit architectures.
>>
>> The ice driver doesn't use u64_stats_t and these access functions.
>> Thus even on 64-bit architectures it could read inconsistent values.
>> This series refactors the ice driver to use the updated API. Along the=

>> way I noticed several other issues and inconsistencies which I have
>> cleaned up, summarized below.
>>
>> *) The driver never called u64_stats_init, leaving the syncp
>> improperly
>>    initialized. Since the field is part of a kzalloc block, this only
>>    impacts 32-bit systens with CONFIG_LOCKDEP enabled.
>>
> =E2=80=9Csystens=E2=80=9D =E2=86=92 =E2=80=9Csystems=E2=80=9D
>=20
> Best regards, Alex
>=20

Fixed this and the other mistakes you spotted. Thanks for the careful
review!

Regards,
Jake

> ...
>=20
>> --
>> Jacob Keller <jacob.e.keller@intel.com>
>=20


--------------ZeTEW0pcydZZ41ouQfK19Q0y--

--------------GQcocUOOI0edgBFpubRSIS6g
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaQpJwwUDAAAAAAAKCRBqll0+bw8o6PAf
AQDN3XHWGop+i1tYAWIpvhjhgkxJ+fYShpm624MdjIl3cAEAxR8cee0xC3EIvSM74ITh3DEqL0Cv
sb68w43YCb6DGQk=
=BEtj
-----END PGP SIGNATURE-----

--------------GQcocUOOI0edgBFpubRSIS6g--
