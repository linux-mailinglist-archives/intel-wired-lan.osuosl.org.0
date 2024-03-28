Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E6C8904A8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 17:11:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71E328238D;
	Thu, 28 Mar 2024 16:11:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P4QHqYOoJvVf; Thu, 28 Mar 2024 16:11:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94DB2823A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711642301;
	bh=acskBvmjEgq3YSyBHkaeADgC20B87LAhA8BqCFQK1hU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JV5kyMaNDZ0WHRZrUWqv4GG+Vu1U4MRF4XswyzXgacgs5UlFVIcaKch11wp46rx8f
	 zecyuo0v1wxsLfsbVhhpNw4kbAblnR+gWOBDWQJroAaGGsZ3KIaDtvNoNy2XvWvJ8G
	 OaLFMK1Fe/Atfkmn2olYIfbltkQmv3vxZ0ApNkb0ImKbSDkrQY1UHfO0wBwPeXqNAz
	 riQ474ooMl1iwJsB0+nYqLRYOHRyk5/2EVHc/BPBpdf8jjONUJmWGVUikBV5DD3FIi
	 d48j462pNYi78nzHVu57cdrbaISVVLAeXSjhPHbFuFXGDHrDUMi7E9tZljtX9PAh09
	 4pB7AHsCTIbqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94DB2823A0;
	Thu, 28 Mar 2024 16:11:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C87EF1BF28B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 16:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B34934168E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 16:11:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xFGkgOfoSGSC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 16:11:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 04D554163E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04D554163E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 04D554163E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 16:11:37 +0000 (UTC)
X-CSE-ConnectionGUID: I9Gk0ki+Q+2fsdLmezxBng==
X-CSE-MsgGUID: NmEL381oSyCp7niuZnn9ag==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6694404"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6694404"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 09:11:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="16626150"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 09:11:10 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 09:11:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 09:11:09 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 09:11:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OPBz53/EXkoxucWle9PSB+/zMCBvjnaEwM7B+nAyxBi0SzIKKcNGXGjcnj7Nxio4k+KnYzg+kagFHjXDTDh2T7fZmr053r8YVXU2TZpvRTQlXLwLROmt6MqlhZjEUwuSfsCA4adTDwgHoY7OrltUNf4o6modSG5W/7wKlHoHOpzZEdF5JLV7N+FDjmGAlATziNgTm7yMcbU7kFWu6/1G9sgmc5lL9+xgL8MsQ2tVbXfcVM2oo54BhHYhRvjDiOrIfZlF2T1sqcyzI7i7+yMdKCn+AgS96tvP7SqdFyeN1KseiCkasylbQ5Y4TQCJy4E0mwy3lH7d975GOKdOwoNuKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=acskBvmjEgq3YSyBHkaeADgC20B87LAhA8BqCFQK1hU=;
 b=mTeGA5dmy2Vpt8LCWHt4kLQKz1dATfbKtc1S8gTGhDvJ0FHCufTRAUNWyoXccUzSWNvFvvahIicfBQLvRPl+L+N7xBz4dh0VtvQhl27MaOkS58nZHKS1j4nO9D4IUymKRrhwoj3MoG956kjzXv5nlXrXnDS86bIlZ7yxDnQLSl7Ytk2Q66MVHs76kB13TqXWKiwfx8Sy9s0VQI/ZcrvW0Bb465kzjDbQ/cDYrvKzffxZJ4YozEuPR2NwNH4cvHjLsfTxrtuhB+RAAJsTvVxpEJ3HVu20dOVxXK1paDRpQFIkeH35TMaU8Sgo8VrnJNjNVKh7oCf04sBUQpI64J0atA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5880.namprd11.prod.outlook.com (2603:10b6:510:143::14)
 by DM4PR11MB7373.namprd11.prod.outlook.com (2603:10b6:8:103::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Thu, 28 Mar
 2024 16:10:52 +0000
Received: from PH0PR11MB5880.namprd11.prod.outlook.com
 ([fe80::85:b53f:9a2b:e2a9]) by PH0PR11MB5880.namprd11.prod.outlook.com
 ([fe80::85:b53f:9a2b:e2a9%5]) with mapi id 15.20.7409.028; Thu, 28 Mar 2024
 16:10:52 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Brett Creeley <bcreeley@amd.com>, ivecera <ivecera@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: Fix VF MAC filter removal
Thread-Index: AQHadU5G7azxrMmA7kagb4BZSPCvCbE3ZRoAgBYFKXA=
Date: Thu, 28 Mar 2024 16:10:52 +0000
Message-ID: <PH0PR11MB588019778E6245953E0ADB188F3B2@PH0PR11MB5880.namprd11.prod.outlook.com>
References: <20240313135618.20930-1-ivecera@redhat.com>
 <d66bc516-c5b1-433c-a128-a28d657efea7@amd.com>
In-Reply-To: <d66bc516-c5b1-433c-a128-a28d657efea7@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5880:EE_|DM4PR11MB7373:EE_
x-ms-office365-filtering-correlation-id: 79fcd133-785a-41d0-7428-08dc4f41a407
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dDLtZC/21H3sCGSlp5vjtvX6nZ5xUDcsq/fgAhLgP4SdIoOX8f6G4yjHluDcoR3Yf6zH63Unvjz4NbFzZhdthj2AQSm/h3A3Fyzk4QruhcpUepOgkxlV0w/4OfXDlSoZmO+4pOFCRnpuYzeaf9jUDfIl8L3QlF4w7wUyPOXgIlp99Ykukim0xA+5FdM4fhxwbmUIzTysR3OsnQFiTTtdox+B3RqvRt35XLaU0bGcEDBWEDZN83JLz/d2xZL4J4/aMyTg94xsADoMFX7gFIHWkEVfDwW1iQWEKo9bWicLDBYpXworagyU1+mXe3Jdjvfaik6ZuRfW2eea6urUQRdqZJpPCZiijzwRdxWj5C3dR2vIDMfLbd3bBhTM1UeVQJAMtWNeFoNx5DIIzXqljYTRdEMalcXTjIjofeBi0b1dTF1fnQEnGWL6hFsTDf8NvmjQRTselZyk8n4gFJeKa0HKqIS/HlTgYr3M0VldQxJVdcCaPWQLJ1D8TJS4xEOI7X5ciDCCNehizwqrI56arrSneAM/5gGnfZyvl4jL8X4Elz+wtAVGNRngBtDzxq9ToFQZrrcYg5GtBXnPljgZLNOytXAymjGh5P/ha5tKsix9VfEWMOd+QJ3kSfRF/lxl9jkbucbIbAvRYPoZ0gQ4W2nfwYH6QbaC7z2GPtkQZQK8GICsihWmkrUx6Caslnu1R7kjUGhFtvGDt+TB/l1cxfjOq3hCnt0yRJ0dSGC01u1UT+w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5880.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(7416005)(376005)(38070700009); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q2JzZFZYWGU0N0xxOUlUaHZiWjVxNUFqRzVaMGpGbFlubEI3Z3pKSVk2NTky?=
 =?utf-8?B?TXB0UXA1WXhWMjV3dTZXUEVDdnZuaWdmcWVJcUtYcHBYQzllclh4M3hYT0s3?=
 =?utf-8?B?cFBNZVZmYkhlYml6RGdEWkhvenJ6VXY2NXFoWVdGUmQycmFNa2drYlFuaVdD?=
 =?utf-8?B?bXJFbnBza3ZzbGhJdkt0TUlOM0hZTE1UWDVTUFpsUyt5OUJtclcxN3pwbHJZ?=
 =?utf-8?B?MVhwMVZCNkQ3MTNCeThRa01iWnF5QTJlYkRUc20zaS9ZMWpEV2EvOXBsRko5?=
 =?utf-8?B?eEtjemlFanlGY2FlaFg4WDB6d2djVUZSK2c2c3VCUUtRVFBlL3V5SjJVSGVV?=
 =?utf-8?B?Q2o2Umd3SUxvcE9DdC90VVVOT2RkUUFlejdacHJESzR1dytkakNyUTducXZj?=
 =?utf-8?B?RU1qMlh6K3B1ZVBtS3k1UGMrc204SUllS0ZZaG9EZ1VuZVVYcGEydEF4V0tE?=
 =?utf-8?B?WGx2QVpvT2RPMS9Dem03VERXYTIyTFdIemZudyszNGN4cFVCaGpJZUI3VlJ4?=
 =?utf-8?B?d2xTU3I2am1ZcE96K2JIclR0WWF5RWowbmgvcHlpMEU4RHdiZmF6djJleHJR?=
 =?utf-8?B?Q0ZuR24xMkg5VU1oRUJxV1k4bTFQWmFGWEM3TTFLSlhTK1k5T2FVLzFCTDRZ?=
 =?utf-8?B?MWlZNTlGZEc4V2JEK3lycTNvL2kyUVdzbjZ5SHliRWZzakRpcTRLMHZmalp2?=
 =?utf-8?B?QWJkckgrRUtRVkhsR0Q2VlU3V2JDUXJVRlptVHlFcjdLQXkwQWtrMDBLM3BP?=
 =?utf-8?B?YXBwaitaMlhCQUJTQUQ4UWVQdG1ZUU9EVkxPZ1dNT2EvdkVCMFQzdTdBVlJI?=
 =?utf-8?B?MkhkcVVZdzJpZEpiYnVSQlVlazdqTDYvM3dmTTZxbnc1RnJtZnc4bFdJaE5p?=
 =?utf-8?B?VUFjNzBWczRJK2VJdVpOU3llSzEzb05jVGRlUWR1blBYazBPdURoZ3RvVURp?=
 =?utf-8?B?MXdBNWgyWXI5N1p3bDlnbW42NlpLRHJyS0JkRk8wMlJ4K1RMVW5DMHZjUXhu?=
 =?utf-8?B?dWVLbHBaRUdOejNmaloyMWwxanJ5SDJaRGFqTk0yanhUVkhuYm52VUlyamhE?=
 =?utf-8?B?WXVnelhiSElqUCt2eStVcWFTTzFpMkg1TkVDZ2lzUTlneklJRENMUXh5L3pR?=
 =?utf-8?B?QjJYR3JlNmp1V29UdmZDZWNCOE85QkgvOWg1a1ladXBETDA5eUZkTndWV0cx?=
 =?utf-8?B?MmhRNmhCV0ZvcjVaU3hwM2Y1emZwS0RFZGhuVTVBSXRrQThyTnBXSmw4WGlo?=
 =?utf-8?B?ZXlGRjI0emszMjRQdUpXYVZUSmticW5NMGFxNDVIVUFLNkpqblRuTGpmRXpm?=
 =?utf-8?B?RmFnazFaWUZSWHZITUZUM3djUzVDSnczUTNjR3lqYVBpNUhmL1Zvc0RuVS9R?=
 =?utf-8?B?a3RIckpqNEc4SmdyeWJzN0MxMURpUSs0aWo3eEZtV2htZmNLamU1MHN2TWtr?=
 =?utf-8?B?M2diVlE3dTlqYmgrdnVnTlZacjZaNmhOZVQzVXRNQlFEdHMvWG5MVW45cHBJ?=
 =?utf-8?B?QUFyVzhmRVhEKzFQMi9IMEQyeFhIakIrbU5iV2h5WnpwL3BpYjRtTGtqekYx?=
 =?utf-8?B?R2orRS8wMVU5RnJCNWR2cGlqWnJvVlQ3aGw3S0lEblpJWUFwbWNaSHVIQ3Ro?=
 =?utf-8?B?bFFiL0NPclpvMTRyMThIWnZTbUptTkhGOHppNjZuRmdlZkIxRjE4UXRTcVZG?=
 =?utf-8?B?bi90K2ZtVVFyVU9yNndzQ2oxVi9iY2hveEtlR0o0TXlkcnRlVkl3NU9HNnZz?=
 =?utf-8?B?cUIySlBxR2dVcy9ZcjVuYWdkYm9UcGx4dFJnalAyQUNYNEZjekhoRFRsZkNJ?=
 =?utf-8?B?RUpvUUMvZGFDZXdNK3c1aGkzbkFRbXVrWHZIZGJ0SUVlZ0FEempodHhOQ2N4?=
 =?utf-8?B?cGc3UWRIT3c3TUw3YzEwcFE2VENPTngwM2JWN0l0RmduVkwxQ09rRy9GYkFF?=
 =?utf-8?B?TEFsOE44c05EaW5VSTdsNElRZVhCNEZOeWkvSDRTSVNmSEFCaG5EaXNmR2Mw?=
 =?utf-8?B?eHdOTUhRNDdZcEVTeDIydnduaGVYTVZQREZFemU2Y1MyMStnVXRWb0FMa2lv?=
 =?utf-8?B?SGpzRHVHeDRqN3JmdWY0SENRQmFnWFhpVW01TUcwM0Nydlk1ejFlL1h2c0Fa?=
 =?utf-8?Q?JNTl1IZdMxQph8LBozVcJ4Qvt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5880.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79fcd133-785a-41d0-7428-08dc4f41a407
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 16:10:52.2997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4h8VLKv40Ls/U5BYSRRieg0psbyRpQNQtXJ8wtYZ0Uv4vmkdqAxNicIbTlYv0YiaJNW1ztf3+vTZhQNiIl0kZ6UpvHlRLa04T7RFecwdmFc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7373
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711642299; x=1743178299;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=acskBvmjEgq3YSyBHkaeADgC20B87LAhA8BqCFQK1hU=;
 b=ljGFNMu1NH4yluvyvhMH6KGHzlK5d3l1/lEw75H/rLR86zNeIKt5WjVe
 sLXSPcmuukVfJDx9BvCw18Obc0+1Gl2AJx4mDX/SFB3UbeMrmupOIOhmC
 ogtSz93ZFlvsVZTtZCzHMLclO+O1/ZJCqtulUKfT5/PswkRY7s9Df+omp
 VdUM1oShLW5xw3aeEBoUEy2I8T5v/qIZ8pzGwXMmy+VYAaiIFWCGDBdEl
 YNr4FXxOW2D2CMJN9evBAIVEw4bLB1FGOFIK8Jtr93dt+d9Ss7p8qDTIJ
 MOiuuZPC4aj3XIoajxmYxQenMHt3Q3RmhNdGkK+uTSzwmroTUWY4Mu361
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ljGFNMu1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix VF MAC filter removal
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: open list <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, Eric Dumazet <edumazet@google.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "horms@kernel.org" <horms@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBCcmV0dCBD
cmVlbGV5DQo+IFNlbnQ6IFRodXJzZGF5LCBNYXJjaCAxNCwgMjAyNCA0OjU0IFBNDQo+IFRvOiBp
dmVjZXJhIDxpdmVjZXJhQHJlZGhhdC5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnDQo+IENj
OiBtb2RlcmF0ZWQgbGlzdDpJTlRFTCBFVEhFUk5FVCBEUklWRVJTIDxpbnRlbC13aXJlZC0NCj4g
bGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBvcGVuIGxpc3QgPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5l
bC5vcmc+OyBMb2t0aW9ub3YsDQo+IEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRl
bC5jb20+OyBFcmljIER1bWF6ZXQNCj4gPGVkdW1hemV0QGdvb2dsZS5jb20+OyBOZ3V5ZW4sIEFu
dGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBob3Jtc0BrZXJuZWwub3Jn
OyBKYWt1YiBLaWNpbnNraQ0KPiA8a3ViYUBrZXJuZWwub3JnPjsgUGFvbG8gQWJlbmkgPHBhYmVu
aUByZWRoYXQuY29tPjsgRGF2aWQgUy4gTWlsbGVyDQo+IDxkYXZlbUBkYXZlbWxvZnQubmV0Pg0K
PiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIG5ldF0gaTQwZTogRml4IFZG
IE1BQyBmaWx0ZXIgcmVtb3ZhbA0KPiANCj4gT24gMy8xMy8yMDI0IDY6NTYgQU0sIEl2YW4gVmVj
ZXJhIHdyb3RlOg0KPiA+IENhdXRpb246IFRoaXMgbWVzc2FnZSBvcmlnaW5hdGVkIGZyb20gYW4g
RXh0ZXJuYWwgU291cmNlLiBVc2UgcHJvcGVyDQo+IGNhdXRpb24gd2hlbiBvcGVuaW5nIGF0dGFj
aG1lbnRzLCBjbGlja2luZyBsaW5rcywgb3IgcmVzcG9uZGluZy4NCj4gPg0KPiA+DQo+ID4gQ29t
bWl0IDczZDk2MjllMWM4YyAoImk0MGU6IERvIG5vdCBhbGxvdyB1bnRydXN0ZWQgVkYgdG8gcmVt
b3ZlDQo+ID4gYWRtaW5pc3RyYXRpdmVseSBzZXQgTUFDIikgZml4ZWQgYW4gaXNzdWUgd2hlcmUg
dW50cnVzdGVkIFZGIHdhcw0KPiA+IGFsbG93ZWQgdG8gcmVtb3ZlIGl0cyBvd24gTUFDIGFkZHJl
c3MgYWx0aG91Z2ggdGhpcyB3YXMgYXNzaWduZWQNCj4gPiBhZG1pbmlzdHJhdGl2ZWx5IGZyb20g
UEYuIFVuZm9ydHVuYXRlbHkgdGhlIGludHJvZHVjZWQgY2hlY2sgaXMgd3JvbmcNCj4gPiBiZWNh
dXNlIGl0IGNhdXNlcyB0aGF0IE1BQyBmaWx0ZXJzIGZvciBvdGhlciBNQUMgYWRkcmVzc2VzIGlu
Y2x1ZGluZw0KPiA+IG11bHRpLWNhc3Qgb25lcyBhcmUgbm90IHJlbW92ZWQuDQo+ID4NCj4gPiA8
c25pcD4NCj4gPiAgICAgICAgICBpZiAoZXRoZXJfYWRkcl9lcXVhbChhZGRyLCB2Zi0+ZGVmYXVs
dF9sYW5fYWRkci5hZGRyKSAmJg0KPiA+ICAgICAgICAgICAgICBpNDBlX2Nhbl92Zl9jaGFuZ2Vf
bWFjKHZmKSkNCj4gPiAgICAgICAgICAgICAgICAgIHdhc191bmltYWNfZGVsZXRlZCA9IHRydWU7
DQo+ID4gICAgICAgICAgZWxzZQ0KPiA+ICAgICAgICAgICAgICAgICAgY29udGludWU7DQo+ID4N
Cj4gPiAgICAgICAgICBpZiAoaTQwZV9kZWxfbWFjX2ZpbHRlcih2c2ksIGFsLT5saXN0W2ldLmFk
ZHIpKSB7DQo+ID4gICAgICAgICAgLi4uDQo+ID4gPC9zbmlwPg0KPiA+DQo+ID4gVGhlIGVsc2Ug
cGF0aCB3aXRoIGBjb250aW51ZWAgZWZmZWN0aXZlbHkgc2tpcHMgYW55IE1BQyBmaWx0ZXIgcmVt
b3ZhbA0KPiA+IGV4Y2VwdCBvbmUgZm9yIHByaW1hcnkgTUFDIGFkZHIgd2hlbiBWRiBpcyBhbGxv
d2VkIHRvIGRvIHNvLg0KPiA+IEZpeCB0aGUgY2hlY2sgY29uZGl0aW9uIHNvIHRoZSBgY29udGlu
dWVgIGlzIG9ubHkgZG9uZSBmb3IgcHJpbWFyeSBNQUMNCj4gPiBhZGRyZXNzLg0KPiA+DQo+ID4g
Rml4ZXM6IDczZDk2MjllMWM4YyAoImk0MGU6IERvIG5vdCBhbGxvdyB1bnRydXN0ZWQgVkYgdG8g
cmVtb3ZlDQo+ID4gYWRtaW5pc3RyYXRpdmVseSBzZXQgTUFDIikNCj4gPiBTaWduZWQtb2ZmLWJ5
OiBJdmFuIFZlY2VyYSA8aXZlY2VyYUByZWRoYXQuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3ZpcnRjaG5sX3BmLmMgfCAxMSArKysrKyst
LS0tLQ0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMo
LSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBl
L2k0MGVfdmlydGNobmxfcGYuYw0KPiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX3ZpcnRjaG5sX3BmLmMNCj4gPiBpbmRleCBiMzRjNzE3NzA4ODcuLjEwMjY3YTMwMDc3
MCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVf
dmlydGNobmxfcGYuYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV92aXJ0Y2hubF9wZi5jDQo+ID4gQEAgLTMxNDMsMTEgKzMxNDMsMTIgQEAgc3RhdGljIGlu
dCBpNDBlX3ZjX2RlbF9tYWNfYWRkcl9tc2coc3RydWN0DQo+IGk0MGVfdmYgKnZmLCB1OCAqbXNn
KQ0KPiA+ICAgICAgICAgICAgICAgICAgLyogQWxsb3cgdG8gZGVsZXRlIFZGIHByaW1hcnkgTUFD
IG9ubHkgaWYgaXQgd2FzIG5vdCBzZXQNCj4gPiAgICAgICAgICAgICAgICAgICAqIGFkbWluaXN0
cmF0aXZlbHkgYnkgUEYgb3IgaWYgVkYgaXMgdHJ1c3RlZC4NCj4gPiAgICAgICAgICAgICAgICAg
ICAqLw0KPiA+IC0gICAgICAgICAgICAgICBpZiAoZXRoZXJfYWRkcl9lcXVhbChhZGRyLCB2Zi0+
ZGVmYXVsdF9sYW5fYWRkci5hZGRyKSAmJg0KPiA+IC0gICAgICAgICAgICAgICAgICAgaTQwZV9j
YW5fdmZfY2hhbmdlX21hYyh2ZikpDQo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgd2FzX3Vu
aW1hY19kZWxldGVkID0gdHJ1ZTsNCj4gPiAtICAgICAgICAgICAgICAgZWxzZQ0KPiA+IC0gICAg
ICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOw0KPiA+ICsgICAgICAgICAgICAgICBpZiAoZXRo
ZXJfYWRkcl9lcXVhbChhZGRyLCB2Zi0+ZGVmYXVsdF9sYW5fYWRkci5hZGRyKSkgew0KPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgIGlmIChpNDBlX2Nhbl92Zl9jaGFuZ2VfbWFjKHZmKSkNCj4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHdhc191bmltYWNfZGVsZXRlZCA9IHRy
dWU7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZWxzZQ0KPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgY29udGludWU7DQo+ID4gKyAgICAgICAgICAgICAgIH0NCj4gDQo+
IFNlZW1zIG9rYXkgdG8gbWUuDQo+IA0KPiBSZXZpZXdlZC1ieTogQnJldHQgQ3JlZWxleSA8YnJl
dHQuY3JlZWxleUBhbWQuY29tPg0KPiANCj4gPg0KPiA+ICAgICAgICAgICAgICAgICAgaWYgKGk0
MGVfZGVsX21hY19maWx0ZXIodnNpLCBhbC0+bGlzdFtpXS5hZGRyKSkgew0KPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgICByZXQgPSAtRUlOVkFMOw0KPiA+IC0tDQo+ID4gMi40My4wDQo+ID4N
Cj4gPg0KDQpUZXN0ZWQtYnk6IFJhZmFsIFJvbWFub3dza2kgPHJhZmFsLnJvbWFub3dza2lAaW50
ZWwuY29tPg0KDQo=
