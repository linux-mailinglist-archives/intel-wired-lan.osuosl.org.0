Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B618C32B12
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 19:41:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C015840E24;
	Tue,  4 Nov 2025 18:41:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6uEdImsuE6no; Tue,  4 Nov 2025 18:41:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7175840DEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762281670;
	bh=dh5EQhy35IkiW5y89j8JwCS2KWnMbs3XVwFQHOMEbTA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Wdz8hjYxfggvn1mVS/w9Axhk9E+mBf5eX9rbS/YUxyltS0unrO6CCoyZ7141xJ0k8
	 D3cx9GuHvSl1Zzurzl7yrpuZjUtPrl2bil/wG29pKjDPw6TRh3MlHm2t2BZz2jzyZi
	 UfMUBBivhDOEmiixKqYmTQKD1PELPeLWyDx2GYfxmDDeEW/oy8NyV0a8hI/3/h1FXA
	 LUhFKQsHWenAHDX1/3d/7sQavULlJQXf8xuSJ1uhZH6WZSVlFz5hEuYXJCazX7bYqI
	 6V9gxV+Wg8E2/ZRYeheCaot6Uw9+voSUmTNqbtEAvZtbmrRy1dq07zAN4KXSZFsB0G
	 qFXvRFmd2M3Ww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7175840DEE;
	Tue,  4 Nov 2025 18:41:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E0A1222
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 18:41:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 844B78238E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 18:41:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e4K4GCAPo-0o for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 18:41:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 45DE68238B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45DE68238B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 45DE68238B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 18:41:04 +0000 (UTC)
X-CSE-ConnectionGUID: D+ahHHg2ScumFd9GjiwxFA==
X-CSE-MsgGUID: jhIxWJ5KSgKaOoH8Aw59hA==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64485764"
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; 
 d="asc'?scan'208";a="64485764"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 10:41:04 -0800
X-CSE-ConnectionGUID: oksEisCZTB22XHWm1m0FTg==
X-CSE-MsgGUID: wcS4yUWwRoCkzN+A3gh+Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; 
 d="asc'?scan'208";a="187681789"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 10:41:04 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 10:41:04 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 10:41:04 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.56) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 10:41:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wpDlWSns8tgMQTgmudPOUYoU0BjXYUXZqkaXi495gJvPJZZynSQXBn5Xol1+ND8Q7gLe/X6umwSvnfpvYR96SnoM2lvBBpdAAD9eF4Rf5UCuy8bGHXLOTH4CxzK7ymMCJoSzAkpCe5nWvqd5VBdeBFtgEEa6xo3I6mhFVLFEESDs47qmSEl1v1CgaJMowvAl1GBWyCFBNYkMrcQgLrU68q+w/Gckr3qcKGOrhSd/EXkXzr3RyWgf7PYrIitkuUFLmXqHtGVMKeEyfVYNYoebkkKgX7lZnVKdvyP0wqIXEzXKPhBGt++8ISKoIGXvynwZytvLSgr9fEx4+TIyBhxHUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dh5EQhy35IkiW5y89j8JwCS2KWnMbs3XVwFQHOMEbTA=;
 b=UAQ6QpJgeuolsuufBC0j/Dy8AH/mWkfGGdBV9/FEfBEhSzICPoamkKu+IzrpI4WqvFsUX4yZ8MdjJQIjlm1ArtEw07j91uGnREKKdKHcn+qsPXPBgUpsoCy6MBuVOd++BhQpWOo51Ayi+FajAVCCqLaIDPfkmwI7WUbmoA6af8WnMhL49+0nQzJ7ZX+sQn5vRoo0hu73N5q4x26E/BLEYFEjK6f2+Ufj+FuoUU9QTwk7ko+yppBeJwy38vmt7p14hwOWtELehKr8U+q4hsLoY+4okA/8NfdNvGGg4sLnGnnCqyPMfDcNDcTDBmWJuKCmOOQNorIChGToLs2zYGeGCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA3PR11MB7556.namprd11.prod.outlook.com (2603:10b6:806:31f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Tue, 4 Nov
 2025 18:41:00 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 18:41:00 +0000
Message-ID: <95cca968-63da-4ad6-a225-42e399ca8abf@intel.com>
Date: Tue, 4 Nov 2025 10:40:57 -0800
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
 <20251103-jk-refactor-queue-stats-v1-3-164d2ed859b6@intel.com>
 <IA3PR11MB8986010B12E23F70DF598C65E5C4A@IA3PR11MB8986.namprd11.prod.outlook.com>
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
In-Reply-To: <IA3PR11MB8986010B12E23F70DF598C65E5C4A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mwRJbjjtb09EpJkw0BVDFAdr"
X-ClientProxiedBy: MW4PR04CA0086.namprd04.prod.outlook.com
 (2603:10b6:303:6b::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA3PR11MB7556:EE_
X-MS-Office365-Filtering-Correlation-Id: 69927daa-ab1b-4291-072e-08de1bd1b335
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OTJXbk9zU0ZmaDlDZ09NU09EeDhjNGMzNHFaYlFLdTBWdUNQRWVzUFNmQlpJ?=
 =?utf-8?B?aVlyU0xhYXN0VWN3bHVQTnlsOFR1aStOSFRHZ2Qrb2locmcvNmFGNHg1NVBt?=
 =?utf-8?B?NTgzdTl5eXJIcXRrb0w0dDdoVTBMUkV0bFpWUVFTU1kzNGdwck5kWXNiZEZi?=
 =?utf-8?B?R09nZFB3NElmUFJTSGtKZVhiS2N1emZ3UVYybGlwRnFUcnR0VnExZGEwb0s1?=
 =?utf-8?B?am5KNWZJc0p6RVVLcTJ0bUV5SllpQzFUVVdpakdIUVpyd09OSVhmUVRMb0E3?=
 =?utf-8?B?QmQyZFovVzJkZ2RXNlNzTEs5RG1DOFduRHgwL3FuN1pyR2lWOTQ5NlV5Wksz?=
 =?utf-8?B?R2tlTFVpM2NKa3FrOXViL1dkY2JUYU5Lc25PNjRkM3RRSEJBVzhnM0FQdW81?=
 =?utf-8?B?Mk9MaTlnR3NZZTJ5NVVxR0lHWVp5WnVHKytqOTdjbnA4OTZHQTRZZGg5dXE2?=
 =?utf-8?B?UWplNzh4aHA0Z0x0RFRvS1JKU1RRR2p6aUd0OXNCNnQycFUxeUw4MDJydGky?=
 =?utf-8?B?elY5WTJIYnd4NWE5L1I0aC9wSkswdjI5bUJvOTAzcGNFYjNzZkRaT1JXL0Jh?=
 =?utf-8?B?cHRsZ0UvUUs5THpGSTVYZnk3SnRxdjdQbVRDUEhEWGFkUnZ4L0J2ZGNCa2Fu?=
 =?utf-8?B?M1dFd2wxRjBnK3ZadUdMaU54UzJYYW5wanZZbWlBZVUzZ3RoYjBlbXM5azAr?=
 =?utf-8?B?OGhTNEY2WW1xbDE4RDJPM0owNlFhL1UybmR2ajdMMG05eHNjTXpxbEw3b1dp?=
 =?utf-8?B?UERxS3VPbDRGU3pkUTlTN3BEREpWQkFlY1RtRDJIelVua2FxK1VyYUZya0RU?=
 =?utf-8?B?VUxPUjhXNWVOcDV5bS8ydld4amVLTnJVSnV6ZkdwRXB3UDZVbktHUDJnTnU2?=
 =?utf-8?B?NzVxQ1hkVmkwSDJnSndmZ254ZnpjODVKN0hrWDZNeDQ1dUxGZkh2endrOGhi?=
 =?utf-8?B?YUhyNkpzME5yTWx0YnQzVnlyY05yVTNpbXNkWndFc3BHTG0zRXljNjJWZytT?=
 =?utf-8?B?WlZFSkxCbndFcExnZmhxYWwvWitmeEk0dU5xM0phMWh5bmsvd2N1VWFXS3Ax?=
 =?utf-8?B?VldaL0FQSWkrQlNBdThOOTN1WDZWdVY5ZnFHNlRHYVZjK0JPVTNMYkVad09F?=
 =?utf-8?B?bWovQmFYTWhQVTl4bkJRd2VmeDd2N2FYSy9aZVRYYzZhMEp3Mm5OUllFVzh3?=
 =?utf-8?B?K2RMUVJ3VDZCWURPYW5LU1JGeXNDVmY3bEpndDFhNVp5T3FUUVppMUxsMS9K?=
 =?utf-8?B?NW5qb3N1R0luN3c4Q1JpVVlxK3d1NE5idm9ORzlwaitzYlJQbS8yOVZqdFNm?=
 =?utf-8?B?T2pJaUs2UFVTQ1hnT0RwMFRrUXJnN25IaWtGSVVsYlNzS05WK2JjcHlqQjJr?=
 =?utf-8?B?VDFzM1JJRzhsUC9kRnpwQXBhTVZBc2l0dThkcTFiclUrM2FIUFR5bFpOM3U2?=
 =?utf-8?B?WTBWbkJuZnRMZTdFbUtDSkRjS01hNFEyNCtVWjJpM1JWcGNDcXRXbmZ5THcy?=
 =?utf-8?B?Yyt3SWdITEUwZDAxMWd1K0kzbzk1OXVMNTdFMmp5elk1Q1dFeFdlVEt1Mkhi?=
 =?utf-8?B?Y3JraExSbmtRdUZlU2xmN2xFUjdsN085endCQ0xmUUNTM1NzZ2VGVEEwWEJN?=
 =?utf-8?B?UHgwM0tUWGJ5R3ZpTTVLcVlub2psMHNJeDYzWVM2cy9wdTd3dHFtYitWRysy?=
 =?utf-8?B?M3FJUDJ4Qkw3SDI2S2o1SExiUGphTW9BMklXRFU3MlpJYkRLbU5iSjZtRW1E?=
 =?utf-8?B?bzIxeHFmay9jN2pNdFhMTjFsYTZJQkQrUUdzRUs4ZHB0WDZGOTJ2dlQ3aUZS?=
 =?utf-8?B?NDlYa2VFdFhlWW5iQ01VRFNqTS81SHdzQ0VKTTdNYjEzMFg1NEZBOXJiY3d0?=
 =?utf-8?B?UUlOWUpjejkvdnkxRFBnNzZRVW5jUUtrclRiVXQ3ZVJEY2JOL2JuUW15QmxT?=
 =?utf-8?Q?odwiMMMcPR+5kGGC8peGDzyj4q1hvCgp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bG43NXNUOWhDZ1UzMGZGRElxS296UVVMbDdZN2dGb0w5dW9BcDIrR1VLNllT?=
 =?utf-8?B?d2VrOFNsVEpZVXpUSFRaaHpLQnJzc0RpQzlDSnpkelhONXlUNGl6MkFGRlNL?=
 =?utf-8?B?QmdCSEFQY3ZXQmZCUnIxbE5UdG0vd2VWbXRqdlA4Y0tOVTg0WXRoNlQya2dT?=
 =?utf-8?B?dWZMcHJ2RExYSUNXTjJ5ZEFKM3pIUFdvVzYzbXRER2dwTHNWN0JrRXJhcnFp?=
 =?utf-8?B?eTlQcFJZZTViaEMrRjVlL1ByUUhOcUUrNE9IUUs1ajEwQ2podVlPVzVCTzEx?=
 =?utf-8?B?dHJaejFvMzNMR24ySkZseG05Tmk0dXkwQnRqTlBDdDB3bUgwUEp0aEhZSjJG?=
 =?utf-8?B?V0tiajN4elRuSTZzNUpPdTh4R3RoeVVZZ01GcWdnNTJ5MWV1SExVbFNQTTFB?=
 =?utf-8?B?TzRlNU1EZ2FUai9MNEluMDAzd1VXcVJZUDVQSHFjZUpHYVZ6UER4cXd3SmtP?=
 =?utf-8?B?L1lDL3JTVW5kc3hXaHVYMjZaT3c4bWN3ZGFyMTFvWU5TMWFwUm84WVdYdGlY?=
 =?utf-8?B?UXVOZEhDcncwLzJOaEtEb3lpVU1RTXI3VC9md1BlUkh5VzlKUzBIYUtTdU9T?=
 =?utf-8?B?MFdtU3dZR1ZYWE9WQmY5MzNQeGZnMnYvaE50MmNyOEVvTkN6UGV4MW5aK1E1?=
 =?utf-8?B?NUdTb3MzQ0ZwS1BjaXhYOFZHUnN4aTRZZXZSMVZLaGJGSmZlTTJrQUFDTm5X?=
 =?utf-8?B?R0NPN3NsbWQrMTV0V3Jjb2xjVlRmSVVDTEZKTGd1Yy9oeWkzR2wreDJid0tI?=
 =?utf-8?B?NjVSQ3ppdnhPNzdKaUhnaUt4M2pIOEtEaTd3cUxCSXRrNVFMRit6MjluaVdK?=
 =?utf-8?B?U0dlZCtXNVN3dEJGZ2RNSHExdStMYzZFMGtxWTRtVEkwa2JEUWliTm5RYW1r?=
 =?utf-8?B?VTVpMjFzV1VyZkNtSEl1MzkzM0ZFWklKb2ZKb1dxVGYwL0Vwck1YRjJaNWlJ?=
 =?utf-8?B?ZFp1cTlwTjJvNkVEOVg4dkMrVDM1STY1bkM3YVRGR1FxRkZpSVJPeTllaE51?=
 =?utf-8?B?WTJYQ2wvV3VpV3ZKaHoyVXh3U28xY1FNL0dWY01mWXRibDl3N2JqdW9oUmJX?=
 =?utf-8?B?ZWR1MjJESUk0d0ZqYk0xVGNiSW1IeXlFVFJGWnhQQzFhMEM2MXRCcUlWa3By?=
 =?utf-8?B?YjFKcDFEVmJuSU5JYTRUbzAyUjFVTWpLTDFOTFkwT2VwSzdGOGVTUG5ZMWps?=
 =?utf-8?B?bXh4ZnlIamllVCt5ak8vSHZkL1F6RG0rK1F2aDhWOUZzclFMdTRrUTlXQUUy?=
 =?utf-8?B?NVJEYVpwczF6QzZiaE9hUTlMZUV5OFVKenJBSGttQXZ0aTJxN2VXMFpXbXFU?=
 =?utf-8?B?UGFzcFo2cCtIMHNKUzhhdHRWWWVTWE1XeEh0NTVDQW5FbjlrbVNjYkx3SCtz?=
 =?utf-8?B?TXBaUzN6QVNWRzFtdURsZloxZ09BMzBlZFFROTBIbTJ4Q0lVRXRmUjRkT3A1?=
 =?utf-8?B?UkRFTjJDb3FPeEpZcU9oMFBsRHNyU0VzNmVGQ1BHOFNZQlY0TU9md0pGOWpM?=
 =?utf-8?B?NGVCc1BEbjhqVFBIaFBPbExNc0Q2Q3ZPYWFEbzNnUzAxbWFwdy82WnBsMEFv?=
 =?utf-8?B?UWhHRnRGV2drUldEcEh0WFdRVG92blZxcU1QcTBEZ3FLMU1xUnh4SDlYaG43?=
 =?utf-8?B?Nzc3eVMxQXdPUE0rM2V6bm5rR0hzTjBZSHdNdzRkWWM1c09OZ215TElqRW5S?=
 =?utf-8?B?RTdGaWprc2dyVkN1Slh1OUJtYjRhb3V5YWxUZDhFYWtZNTNFK3Z6V3lrbmQ0?=
 =?utf-8?B?UnJpdGlaUk9xTU5ZTko2SFV3SmtMVDY4elgzN3lGSnBDS3prY2I0T3hiQ2NG?=
 =?utf-8?B?LzVPaG9pRi83UFgvYjRmWGNPbHZWb0Zkc2NSdHo5cHlFdmI1R3orTktYelBk?=
 =?utf-8?B?ckZJYmtDVmowRXlONUJOQ2hxeEV1Rm0zVW8zTVNpOUdEaDRDOW5iSmg5eFJx?=
 =?utf-8?B?UDZQUFVvQTA3dXI4WUprVytPS1FYakxhV2F5N3NTV2QvTWFDZ05tTzY4Y3Bx?=
 =?utf-8?B?VFNCTitYZFJCS1l4RnEwdTJ3KzBHMTI5d1Rjb3BSMEFIYjRmcG5ya2RIUlV5?=
 =?utf-8?B?eS9taW5YSytHUUNkUFRqOU1nUGVGTkFtRXVTTGFDRW5NV2RobmsvVUU3bHVt?=
 =?utf-8?B?ZzkwMDRLNnVDamFaVnhzMDVQUnVVVFV3WlhvZUt5NlgzaXpuL0dRemhxcFhG?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 69927daa-ab1b-4291-072e-08de1bd1b335
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2025 18:41:00.5257 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yOy6SEEVlQRBJBMj3sjYcffMossNj2TkmLZPBrPjL/f3GhgzcenmCdLW6ok43Z5YMFitkwTDFdeeVwHvglTnG6cV5+GcVTSQ6hTBwNy5GCM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7556
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762281665; x=1793817665;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=dh5EQhy35IkiW5y89j8JwCS2KWnMbs3XVwFQHOMEbTA=;
 b=IreLWCgIs6EIri8GiHZtirF1Nhic6E9UYAU24PRCVMGgxDx4Vm0uQN65
 xAGnjUBLI0obODqv14zIHwowhuJcGPAvUW1K5E/tEqCVBc8bHLUCPtJb5
 Z7IpchJHLUSrGMaNtErAh3sJ6R5si+oWNHfsFQM/n3Tstsc5ZmHhZIvt6
 BW6mKEhnJul5hSEeyVS4oGEg3sRRKK2ZQAqA0bVZvpj/qnmx57E5He0wl
 9cs4Eawp+OxeVALqx/SRVo4o59egcjOPrVgxjr+zo6Ln8QmZLplkIvp8A
 5vxYYwkyxYaI6pWiCuaZI1lz83l+Fwpriw/2IDk6E8tYMNQo33ZID76bM
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IreLWCgI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/9] ice: use cacheline
 groups for ice_tx_ring structure
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

--------------mwRJbjjtb09EpJkw0BVDFAdr
Content-Type: multipart/mixed; boundary="------------86nsSa2qx09LBvizCYANFjVG";
 protected-headers="v1"
Message-ID: <95cca968-63da-4ad6-a225-42e399ca8abf@intel.com>
Date: Tue, 4 Nov 2025 10:40:57 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH iwl-next 3/9] ice: use cacheline groups for ice_tx_ring
 structure
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
 <20251103-jk-refactor-queue-stats-v1-3-164d2ed859b6@intel.com>
 <IA3PR11MB8986010B12E23F70DF598C65E5C4A@IA3PR11MB8986.namprd11.prod.outlook.com>
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
In-Reply-To: <IA3PR11MB8986010B12E23F70DF598C65E5C4A@IA3PR11MB8986.namprd11.prod.outlook.com>

--------------86nsSa2qx09LBvizCYANFjVG
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 11/3/2025 11:30 PM, Loktionov, Aleksandr wrote:
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
>> Subject: [PATCH iwl-next 3/9] ice: use cacheline groups for
>> ice_tx_ring structure
>>
>> The ice ring structure was reorganized by commit 65124bbf980c ("ice:
>> Reorganize tx_buf and ring structs"), and later split into a separate
>> ice_tx_ring structure by commit e72bba21355d ("ice: split ice_ring
>> onto Tx/Rx separate structs").o
>>
> I think ).o is redundant, right?
>=20

Yea, not quite sure how this typo slipped in but thats what it is.

Thanks,
Jake

> ...
>=20
>> --
>> 2.51.0.rc1.197.g6d975e95c9d7
>=20


--------------86nsSa2qx09LBvizCYANFjVG--

--------------mwRJbjjtb09EpJkw0BVDFAdr
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaQpIugUDAAAAAAAKCRBqll0+bw8o6Hp4
AP9H0CE235lwAnoFewvKzDfQQdP1lxVS8S/vB0tce4BU1gEAnOKAB4+KxOa+4RlUoEAgtPmxQA/c
o9wgsxOJ/Ao0DQY=
=77Jh
-----END PGP SIGNATURE-----

--------------mwRJbjjtb09EpJkw0BVDFAdr--
