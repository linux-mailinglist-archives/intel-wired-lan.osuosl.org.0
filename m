Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A996FAEE86F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 22:42:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2744B41CDE;
	Mon, 30 Jun 2025 20:42:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qvd__VpPJJsM; Mon, 30 Jun 2025 20:42:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18C5241CE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751316152;
	bh=fc9Kib4Byx1ZzXrJhGD3PFWhFTAzohRAPSjRaifHgMk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=T49eoW7VvW/DpkJ7I+q6zZLa0qCekuZD+j9h++OuSPUiW6P87WxsN4enPPZdSKg/h
	 EOfXD5qfFhoeW5d3cbZbBUu0fesKW2+r0cX2vyqhy23QGHPEljYuaPclzYZQ8MEMSP
	 8rNfGaI9VPRlLhPUDk7jjiJDR5pE4cgBl6suVY1fA0PriAsFjdn8SjSPUzluC8Utk1
	 j2zzJrfaQ0TuCurBRDLcLLBxkFuJJm/KUEq005xurf3lDitN99SMu1BRi60cGZuLEd
	 SUsUL929CwEYP/3jsbU/338QG1Q4lZRRiy0wdoD+W3k0bmW671qWMlgK6Ns1RUCP7N
	 Bgso/2C+GQpsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 18C5241CE1;
	Mon, 30 Jun 2025 20:42:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 02B291C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 20:42:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC28341BF6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 20:42:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GuZc5W-SauYs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 20:42:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A417841A63
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A417841A63
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A417841A63
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 20:42:28 +0000 (UTC)
X-CSE-ConnectionGUID: 2LX/fI6XRESb8aUKOtD1sQ==
X-CSE-MsgGUID: POS+O9ZsQQKi33hKdtaLZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="52670071"
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; 
 d="asc'?scan'208";a="52670071"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 13:42:27 -0700
X-CSE-ConnectionGUID: 7N/QJ42sS0e25ZO7n4fvQg==
X-CSE-MsgGUID: 6DZcCSVpQm+mVWAZ/394Dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; 
 d="asc'?scan'208";a="190736149"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 13:42:27 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 13:42:26 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 30 Jun 2025 13:42:26 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.85) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 13:42:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YAG6vy1UqT0k52Igpi1Emd16aarNsxJrXJkG3EHzYXU6p0z+HRYH8CDKYv7/ARDuMtTdqgaySllsZ1NWzoxTeSFJvaZ7MAmuDzak9XB28YixhHwQ4M8ZZNzCEyaJYJfusNpgZEu6R95MBXN+ZdJvZJFQuIPibgW1ufxgUdqMdUCr0hd1gbXF366JJI1MTVY8Ag2iykzNZ1VOOxReyS1e4uh75HSiFwYiJtfLdF4MFdm2oDOaEc+G6hr3+D5WAUccOUftdDVpeVRBCW0pmSw0DEDe/mCPeIncQWvNRrXIWrJL68I0qFvmkPiRJKIz8vVG9twUhwSn48U9pm5cJfWNJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fc9Kib4Byx1ZzXrJhGD3PFWhFTAzohRAPSjRaifHgMk=;
 b=tS0v3YXJDb9vRe776mGz4MH8JHp+S+gMMNOX4C25rhYYBCEncSgCi/+oWTakTzrueaEEmR+0SkZ8IhQsDQ3o29bZ7onyXBzl7L5etWR/0JwaIa/zEUGtZqK9+UQRFNuF3EeVFg6UhU4Jxuf+w33uJSC6B0OZ/Cau43igXaUwGpaBAob7d4+LHxR60vPBR3RLblEi7RdBGWVMfOTbB8XV5e5o5BMHkqDworjMIE93h4E0br1/p56fZ8jnejxOCvMFMbLQH2jQ/TZNn+tFVp739zFj8d+sB72Ps9I81/VA7oA6xk0Q7RhweTuuBT4fI/hefW421nLbc5eg8mbSMdSPXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB5795.namprd11.prod.outlook.com (2603:10b6:510:132::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.25; Mon, 30 Jun
 2025 20:42:23 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.8880.029; Mon, 30 Jun 2025
 20:42:23 +0000
Message-ID: <48324fdb-59f5-4113-87cd-c3e6ad7560ec@intel.com>
Date: Mon, 30 Jun 2025 13:42:20 -0700
User-Agent: Mozilla Thunderbird
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
CC: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Jakub Kicinski
 <kuba@kernel.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Dumazet, Eric" <edumazet@google.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Igor
 Raits" <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, "Zdenek
 Pesek" <zdenek.pesek@gooddata.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <20250416171311.30b76ec1@kernel.org>
 <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
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
In-Reply-To: <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------x9IMy2JKfut50Kbsi3e796qP"
X-ClientProxiedBy: MW4PR03CA0192.namprd03.prod.outlook.com
 (2603:10b6:303:b8::17) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB5795:EE_
X-MS-Office365-Filtering-Correlation-Id: c29d6270-c729-46ac-5aa6-08ddb8169d93
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a0VraDJZdzdJNE9PT2pxbURqTUVxUGtqZWhyTzVLWmlyK3JPZTlmK3pmTFRi?=
 =?utf-8?B?aGJwa2kvK3o0ZDVCYTErczlCMDRLSlhkWW03V2IrdjRYbGp1TG5LYXJ5b3E3?=
 =?utf-8?B?NllzMkx5TDRMbHZ4SWxFT0UvN2RZRCs5MFhUNWhJeFNRSTFjNlJxY04vLzlo?=
 =?utf-8?B?cHdPcFYrV1NHbzVORDhBdjFqTGM4ODBJRnpUZVZrUE0wK1loNHY2SU5qK25z?=
 =?utf-8?B?SzdzRGFLZzZMVHFOZTI0NlgwdUluYTZQODdvd1FuaGc0SE1RQ3lIUjROTGNl?=
 =?utf-8?B?ZXJXMEtCUHJjK2VLTE16RDNUQjZzMVlWTnVsQTVsbnEzZ1V2TWRIRmxtRzFh?=
 =?utf-8?B?Sk14L3A4U1h5c1BlYWF1WnB5RkdZb2tZbDFOWFI1RVNsNjN6L1oyV2pWVkox?=
 =?utf-8?B?OWw1MHBXejFORG9hemMwY1UrYVM3OWRZdkFtZUU5cGFlYkMvNVdpQXM0TGY1?=
 =?utf-8?B?Yit4ZERPNmR1UC95aEZTendibkx0ckxzQkRvelRuRUY5NXRwb3pGQzlqUW9y?=
 =?utf-8?B?bGZadE95Y1NiZFkyUldrLzNNN2k0NlJHQWJhZThpY0tJU2I0SDB3LzY1aFVE?=
 =?utf-8?B?NUdmTzZhR3Mxdmk3QW5xZ2c5ekdmRDJ1OFM5bnlNMHVuZ0wxb284QlpKTzlq?=
 =?utf-8?B?TWJUb2dQSnBVWGN1V3draFFodzg0U3Y0NkVoRDAwZTVnWWZQcVkxNWZ3c0Vx?=
 =?utf-8?B?eEUzaXZ5WkJEYksrNFYwK21nQk1DUm5mZDZ5YWNuMTQ3L3FZQXRPZTVva2ZY?=
 =?utf-8?B?TGxiV3VXZDUyOG1NQTE0N3FFd21VaEcvZnZma0cvOWFQNnZkR0VEbGJYVjFn?=
 =?utf-8?B?aTcvQ04yQWUxZnlwWDRXZTdtRms1TEdPRWozUXYyTW56QXJtaWdLN1U4M0xp?=
 =?utf-8?B?Mk1TOEE2bzhxaUw5ZjFwbk5xc2w4SVNoUUQzWk9jajBGMHdmaFM4Ri9FU0hR?=
 =?utf-8?B?WjY4Z3kwbHVDQXM2Q2RseDdSRlEwTGFxQVlLamh2YTJPd1dQWVIyc202UGhw?=
 =?utf-8?B?NWJ3b3pUOGY1SFBCSlJXRFVKUnE3elRpOVpWbkRVRmo4b2RrT1BsYi9WdlJk?=
 =?utf-8?B?UUpYQ29jeXVMRmFxNkZCL1llMkZvNFZTTFJOMmVQVys2RDJQcXFRQ3kzcGxL?=
 =?utf-8?B?dU1ISGZrMEdhTjVYdFZtVkc0dmlCazNCWTRUOWtWYXJ2M1duWGRvalM3ZXFU?=
 =?utf-8?B?eU4yYmhKT0prUEg3aUVqcjZUMWdaeW1TRFdUUlRtb2dCcmdMeEUyeVZVTXFw?=
 =?utf-8?B?ajJacWl0Mm5iVUtVOVJSNnZSN2RCNnZ1Wldlblg0eU03a3FSeENjVEE0R2xo?=
 =?utf-8?B?Qm5HS3FsNk0yWjJVOHJhRUtRTVhnQ3hUeW1pSS91YTRKQzhjUVVYMHN5Nkdj?=
 =?utf-8?B?T2drSnJlelFSd0s2Z3N1MXMzSmZNSjBGdE5ya1h6bys3K0ZnVW9BQ25nTVhN?=
 =?utf-8?B?VmhvYU4zMmJPUFRNR1FPbXhEWmdFSWUrR2drTkpjN3NFWlVEbDc2bGtYclBG?=
 =?utf-8?B?ZFBSRTlIazZ4K2ErVkUvaDA3dVR5bEJvNHZpK1A0WjdQUE1LTjFPNTVTMjdi?=
 =?utf-8?B?UHdPVHFaRXBXMTh6RzhxYk9GdmxYSDZlcmk4SlcvNGZmbmxORURBRE5wT1Js?=
 =?utf-8?B?S2E3TTdrQmFIaWJBeUVMUEdJSFBEalBJaEF2dmhEUFkxZDdPcGNSYy9DdTd5?=
 =?utf-8?B?c245R1JYbERqMW92d01tQU4yZGRGVjVLNEtlS1cyaEpBNkdjYlhXVEt4YUdL?=
 =?utf-8?B?V2dzOXZid0tnZDFtWXMvQk9rV0g2ZS8yUUlmcEFMWmFYSFh4cFplMEl2ZENU?=
 =?utf-8?B?UUxmeC9KRzFNSXdXV3p6N0loN00vUGhWWm1uWlk0Vm5RTERSc0xqQ2cyTUtU?=
 =?utf-8?B?bG5VYmRMNk5ZZE12SWRBK05lQ1ZVbnZDaXFBeWM0M09rYXp4T1J5YUNmcUNz?=
 =?utf-8?Q?Bs6jW7+DA+0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d3ljdnR4SXA0RlcwRkZlbTd4cDJRMXFqUk1vVnVMM05GYzZ0bzUzeUg2ZmJ1?=
 =?utf-8?B?b2Mwc3B5U2lRSFUzc2swQ1FUN2R1TVUraXowOVpMOVI1K0RpSEQzcjIzRXhm?=
 =?utf-8?B?K1owejFPZFM1bXN6M1dUV1RDZkhGMEc4dVNWUmxnSUgwakZiOWc1Mzlmc1B0?=
 =?utf-8?B?MjBBNjhrK3hRdSttTldPRXVEVzI1ekNnZnJFaHBEbEt3YmFUK1hzeW5SWHdH?=
 =?utf-8?B?NGVsNzlnZnJPZVRTcnhVQU94S1p0TllqVWpSbHNqQ0lzUWRISlh6eDZxaXpy?=
 =?utf-8?B?OTZOOTQ5bE50NFgvcXdrbUhzT1hXTVdMZHJ6bnhVQ3Bob0JBT25QRmNWTlJl?=
 =?utf-8?B?MWh4OXdjS01vdGRGeTcyMHJjQzlNYWI2NnhqcW5lNW0vVmMzb3JSMFNMVGFL?=
 =?utf-8?B?MUhXTXlRVHgzdXIxQWY4cHRtTHAwT3hPc1FaV0pyWkpIdzRtSjhHVHpaamNR?=
 =?utf-8?B?TllaS25QODJhcy9aTmpWcjh2aUszc2RnOUIyZ0I4Ums0YVN2bmxFMWtXYmFk?=
 =?utf-8?B?MDNSREZRc2pjZUlsNzR2eXI0SmNWZmNGSXBTeGhVWWdaaGJsaWxXRUgyQ1BN?=
 =?utf-8?B?R21Td1FWMHZhY1VZbmtVZmU2aEhCQWNvSmdVSW00cWFYQTgxanJGSzIvY0lj?=
 =?utf-8?B?RC81cjFveEhaUmVSbTJ4MGVmeTZWVW84aUtGVG9qbkhKbndWZUlGT1dCc05B?=
 =?utf-8?B?eENYNmhoTC9iM05zaEJyUlFqNEJpMTJrMWxvVHk4Q002V0orZ0JNZS9RMkRu?=
 =?utf-8?B?RVRsanN4dk1hS3NZMDVteGpqVGp0YkxLcnhOYS9oYU95RnB2YURDRG5VdUpz?=
 =?utf-8?B?ckRwVTE0YzhFRTFVNXBLUjM1UVhiOHZZVHJwYWJSbkR6YWppcDNUSnhRbCsr?=
 =?utf-8?B?dWszWDFTSFFicHhpekM2MlVucjVJUFU5ODVVLzdBVGdOa0RKQjAvektqZzBP?=
 =?utf-8?B?aDRla2g3d204YkFJeURtZ1ROVm9rM2hTdjNJTWM5SnlweHVOd3NKSmxoRU9Q?=
 =?utf-8?B?bWxOS01DeHJVdW9FbXYydWthbGJWbk5OYUxOdmRsOU5XSjNQNGFzNmFhUDU1?=
 =?utf-8?B?aU15VFhBTzR5U0xuRWY1M2NCS1RnUm1MYjhmd1JGSitwN1lFMFBGd1Nwb1I0?=
 =?utf-8?B?ZStPQW1jZ0hTekdxTUVKTHdTYk9IaUNxOVZkKzhUaFpDTGgyMFJtcFFrU1Js?=
 =?utf-8?B?NGkyWWV5QTByMEdUaGg2T1lwaU03b3B0bFh6L3hBNG9ESzdLWGlNMnBBVWkx?=
 =?utf-8?B?ckpNWS9nTUVzNTk1SXJvQWRsMkswQXRLVC91RVdGaUlONG45MmFMTURUQ3Rq?=
 =?utf-8?B?NFU1ZGx1YmRjT1A4M2Fxbm00ck96UVVqOXJnQ2pPOFc4d3lGeWFHZy9wUzRa?=
 =?utf-8?B?WFJtMU90VmVRdWFpOE1NSWRvYWt4anhEVkFUMmE5N3FoelgvUFZJQjZ1WGdB?=
 =?utf-8?B?cFBMZEdmTnlDZVViUWFYVTUrQ1pPcStKQXNXSmFiS01yQThqd3RBcGcyb2pa?=
 =?utf-8?B?Nk9LcmZ1VDdsVXYrZXcrWS9TMFU0SUVvYUpUY0oyTDJlYmo2andqWDNPYXBN?=
 =?utf-8?B?ZjNWUndpd3BITlV6dWFhM3lBTEJsaDdZV0JwM3E1VkZnSjZHcWduRnp0WFRP?=
 =?utf-8?B?WHdKd0NlMThHUE5IYTQ0eUJ6Zk9BcUk5YjdsOGVtSDVraWNQNmkwakhJZVhY?=
 =?utf-8?B?dEFzTzhaTFFtR3ZyWnVNeUE0eElaNEErNHdRVTN2VERPN015SnhiWmlHRFVa?=
 =?utf-8?B?TjhrUkxlR29xVWZCNU9ZYUE3L3JzQjNFYVJuYkh0VDR6K3EyUFVwZXVYQ3Jo?=
 =?utf-8?B?ZmJ0NVZCLzdHWlM0TVM3MHpSN3R0QVNOa1dVbWxwU003b2ttYkhLWEdjaUk2?=
 =?utf-8?B?bTE2TitIL24vU085TUVScmRZRWVMN3hVME1tRnhWdzFlSTlrWld3S1hqMVMw?=
 =?utf-8?B?c3Z4YkpZRDd5RUMzZDViOGNteWljYkcza0dEYmdXbGtGbkovZU1SVmk2UkJD?=
 =?utf-8?B?WnBSZzd5RHV6MnFqeWtQTzFkWVk4Qng2RldNWGllbStMNUlpRmNOTXJEbmgv?=
 =?utf-8?B?UzVHcWtJSUlDN1N1RlVpZmc2ZUZnVXdaL1hvSGlTSHZleXFwZ0s0cC9aT3Jz?=
 =?utf-8?B?TlMrYTlEa0VDWHNpTzAxZTFVMW0yZGlueGxVYVNERXN4TlM0SXRpSHBrNVli?=
 =?utf-8?B?bUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c29d6270-c729-46ac-5aa6-08ddb8169d93
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2025 20:42:23.1626 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WVf6/U9w3uUKtp6LER8/4ay4Kf/YRJv6D4VBKDPT4QEgrr+V1eurmliniVyEZM7EZ/hFLAfPfA0aM4aJMZnvKQKLeVVVcMdCV7nV7+IoLKE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5795
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751316149; x=1782852149;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=FcJLcwgoycbawXwM9qC6LzEJxR4NtfvEI/Flux8le7Y=;
 b=dP4mjnLA3FJFS/hsFF5b2Ur3/SVdmjU7OMwROwJoI6mI9Zb0l4x0foVW
 Y242szNEirVkgj1ldtqZdWiRGyRi/yAKeA/DlDq1DJaybHK2lakXDS29H
 zOr3BpkerFZ2vM8Q6JxfWkdXrJYQLxa98w3w1dWwbbEJsSRB4F2WMaNTs
 IoLp5Wf9TdG+7GIlHGcp35Am4Gsdrjij6IwtJoQRZCG5XmucktyTba4kx
 iXw2sJW4Nl2vuXGhujRInaCmuiMPIDbOOuy9JsmQtvQfzGRTFAWIUf1fr
 /moF43A3gbUe33J4HCk1OJZf29ph3lrvXUuzLHpJGO+iCFcVHmA1DXTz+
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dP4mjnLA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

--------------x9IMy2JKfut50Kbsi3e796qP
Content-Type: multipart/mixed; boundary="------------YCKlKH0adKqiZf6KHmFa0Vfa";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 "Dumazet, Eric" <edumazet@google.com>, "Zaki, Ahmed" <ahmed.zaki@intel.com>,
 Martin Karsten <mkarsten@uwaterloo.ca>, Igor Raits <igor@gooddata.com>,
 Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Message-ID: <48324fdb-59f5-4113-87cd-c3e6ad7560ec@intel.com>
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
 <CO1PR11MB5089365F31BCD97E59CCFA83D6BD2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <20250416171311.30b76ec1@kernel.org>
 <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
 <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
In-Reply-To: <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>

--------------YCKlKH0adKqiZf6KHmFa0Vfa
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 6/30/2025 1:01 PM, Jaroslav Pulchart wrote:
>>
>>
>>
>> On 6/30/2025 10:24 AM, Jaroslav Pulchart wrote:
>>>>
>>>>
>>>>
>>>> On 6/30/2025 12:35 AM, Jaroslav Pulchart wrote:
>>>>>>
>>>>>>>
>>>>>>> On Wed, 25 Jun 2025 19:51:08 +0200 Jaroslav Pulchart wrote:
>>>>>>>> Great, please send me a link to the related patch set. I can app=
ly them in
>>>>>>>> our kernel build and try them ASAP!
>>>>>>>
>>>>>>> Sorry if I'm repeating the question - have you tried
>>>>>>> CONFIG_MEM_ALLOC_PROFILING? Reportedly the overhead in recent ker=
nels
>>>>>>> is low enough to use it for production workloads.
>>>>>>
>>>>>> I try it now, the fresh booted server:
>>>>>>
>>>>>> # sort -g /proc/allocinfo| tail -n 15
>>>>>>     45409728   236509 fs/dcache.c:1681 func:__d_alloc
>>>>>>     71041024    17344 mm/percpu-vm.c:95 func:pcpu_alloc_pages
>>>>>>     71524352    11140 kernel/dma/direct.c:141 func:__dma_direct_al=
loc_pages
>>>>>>     85098496     4486 mm/slub.c:2452 func:alloc_slab_page
>>>>>>    115470992   101647 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_=
inode
>>>>>>    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mm=
ap_alloc_page
>>>>>>    141426688    34528 mm/filemap.c:1978 func:__filemap_get_folio
>>>>>>    191594496    46776 mm/memory.c:1056 func:folio_prealloc
>>>>>>    360710144      172 mm/khugepaged.c:1084 func:alloc_charge_folio=

>>>>>>    444076032    33790 mm/slub.c:2450 func:alloc_slab_page
>>>>>>    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
>>>>>>    975175680      465 mm/huge_memory.c:1165 func:vma_alloc_anon_fo=
lio_pmd
>>>>>>   1022427136   249616 mm/memory.c:1054 func:folio_prealloc
>>>>>>   1105125376   139252 drivers/net/ethernet/intel/ice/ice_txrx.c:68=
1
>>>>>> [ice] func:ice_alloc_mapped_page
>>>>>>   1621598208   395848 mm/readahead.c:186 func:ractl_alloc_folio
>>>>>>
>>>>>
>>>>> The "drivers/net/ethernet/intel/ice/ice_txrx.c:681 [ice]
>>>>> func:ice_alloc_mapped_page" is just growing...
>>>>>
>>>>> # uptime ; sort -g /proc/allocinfo| tail -n 15
>>>>>  09:33:58 up 4 days, 6 min,  1 user,  load average: 6.65, 8.18, 9.8=
1
>>>>>
>>>>> # sort -g /proc/allocinfo| tail -n 15
>>>>>     85216896   443838 fs/dcache.c:1681 func:__d_alloc
>>>>>    106156032    25917 mm/shmem.c:1854 func:shmem_alloc_folio
>>>>>    116850096   102861 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_i=
node
>>>>>    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mma=
p_alloc_page
>>>>>    143556608     6894 mm/slub.c:2452 func:alloc_slab_page
>>>>>    186793984    45604 mm/memory.c:1056 func:folio_prealloc
>>>>>    362807296    88576 mm/percpu-vm.c:95 func:pcpu_alloc_pages
>>>>>    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
>>>>>    598237184    51309 mm/slub.c:2450 func:alloc_slab_page
>>>>>    838860800      400 mm/huge_memory.c:1165 func:vma_alloc_anon_fol=
io_pmd
>>>>>    929083392   226827 mm/filemap.c:1978 func:__filemap_get_folio
>>>>>   1034657792   252602 mm/memory.c:1054 func:folio_prealloc
>>>>>   1262485504      602 mm/khugepaged.c:1084 func:alloc_charge_folio
>>>>>   1335377920   325970 mm/readahead.c:186 func:ractl_alloc_folio
>>>>>   2544877568   315003 drivers/net/ethernet/intel/ice/ice_txrx.c:681=

>>>>> [ice] func:ice_alloc_mapped_page
>>>>>
>>>> ice_alloc_mapped_page is the function used to allocate the pages for=
 the
>>>> Rx ring buffers.
>>>>
>>>> There were a number of fixes for the hot path from Maciej which migh=
t be
>>>> related. Although those fixes were primarily for XDP they do impact =
the
>>>> regular hot path as well.
>>>>
>>>> These were fixes on top of work he did which landed in v6.13, so it
>>>> seems plausible they might be related. In particular one which menti=
ons
>>>> a missing buffer put:
>>>>
>>>> 743bbd93cf29 ("ice: put Rx buffers after being done with current fra=
me")
>>>>
>>>> It says the following:
>>>>>     While at it, address an error path of ice_add_xdp_frag() - we w=
ere
>>>>>     missing buffer putting from day 1 there.
>>>>>
>>>>
>>>> It seems to me the issue must be somehow related to the buffer clean=
up
>>>> logic for the Rx ring, since thats the only thing allocated by
>>>> ice_alloc_mapped_page.
>>>>
>>>> It might be something fixed with the work Maciej did.. but it seems =
very
>>>> weird that 492a044508ad ("ice: Add support for persistent NAPI confi=
g")
>>>> would affect that logic at all....
>>>
>>> I believe there were/are at least two separate issues. Regarding
>>> commit 492a044508ad (=E2=80=9Cice: Add support for persistent NAPI co=
nfig=E2=80=9D):
>>> * On 6.13.y and 6.14.y kernels, this change prevented us from lowerin=
g
>>> the driver=E2=80=99s initial, large memory allocation immediately aft=
er server
>>> power-up. A few hours (max few days) later, this inevitably led to an=

>>> out-of-memory condition.
>>> * Reverting the commit in those series only delayed the OOM, it
>>> allowed the queue size (and thus memory footprint) to shrink on boot
>>> just as it did in 6.12.y but didn=E2=80=99t eliminate the underlying =
'leak'.
>>> * In 6.15.y, however, that revert isn=E2=80=99t required (and isn=E2=80=
=99t even
>>> applicable). The after boot allocation can once again be tuned down
>>> without patching. Still, we observe the same increase in memory use
>>> over time, as shown in the 'allocmap' output.
>>> Thus, commit 492a044508ad led us down a false trail, or at the very
>>> least hastened the inevitable OOM.
>>
>> That seems reasonable. I'm still surprised the specific commit leads t=
o
>> any large increase in memory, since it should only be a few bytes per
>> NAPI. But there may be some related driver-specific issues.
>=20
> Actually, the large base allocation has existed for quite some time,
> the mentioned commit didn=E2=80=99t suddenly grow our memory usage, it =
only
> prevented us from shrinking it via "ethtool -L <iface> combined
> <small-number>"
> after boot. In other words, we=E2=80=99re still stuck with the same big=

> allocation, we just can=E2=80=99t tune it down (till reverting the comm=
it)
>=20

Yes. My point is that I still don't understand the mechanism by which
that change *prevents* ethtool -L from working as you describe.

>>
>> Either way, we clearly need to isolate how we're leaking memory in the=

>> hot path. I think it might be related to the fixes from Maciej which a=
re
>> pretty recent so might not be in 6.13 or 6.14
>=20
> I=E2=80=99m fine with the fix for the mainline (now 6.15.y), the 6.13.y=
 and
> 6.14.y are already EOL. Could you please tell me which 6.15.y stable
> release first incorporates that patch? Is it included in current
> 6.15.5, or will it arrive in a later point release?

I'm not certain if this fix actually is resolving your issue, but I will
figure out which stable kernels have it shortly.

--------------YCKlKH0adKqiZf6KHmFa0Vfa--

--------------x9IMy2JKfut50Kbsi3e796qP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGL2rQUDAAAAAAAKCRBqll0+bw8o6I/7
AQDfl1CaNzC7LQrElZEQtwHM0FE4ZGFEUEPMMsr6Zv81IQEAzQXbapKWfqtJYT+03Vp8MiKpQgjo
VhGxsTJWOyWyEgU=
=K3hA
-----END PGP SIGNATURE-----

--------------x9IMy2JKfut50Kbsi3e796qP--
