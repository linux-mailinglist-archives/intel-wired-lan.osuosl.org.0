Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id M85iKComRWph7woAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 16:37:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6C06EED6A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 16:37:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=J3wWZDEK;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35F4B60E35;
	Wed,  1 Jul 2026 14:37:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PXSsW-mA5wGT; Wed,  1 Jul 2026 14:37:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5492260E4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782916647;
	bh=wWnH18jWX1y6cMKAv4MZXqJGsmxdRugUVTxNIuuzVS0=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J3wWZDEKIZ9U3E0ee/dKJh3WyckB1NVA5zR9jpNXJtGc6zyCHVNjHFYlzhdLkixAi
	 0yT5qnRAHUWH1EfvKrNIZ6NrHNIsAJrfqkIU5g7xw45OcYd9/f9iIZ62NuyJFZ5B9Y
	 aJlUYoTPEZ+t1qUI8cSBPGMudKKB4zP4NA2klFIIX5BpGcA+CiFqkF1Ow0CyxUpWlT
	 x6Qg163Dur5inQPstn2eZF+mQ3AZ09kGeh5T6I4aYHQ0lB/rJesBVhGA7MF0n5SDm9
	 955RSFy0M/XjkVt7NL7iHjTtji0PahCV+Zad5Y8YjHYG5IuH4USHNyv2+mUZocpZtG
	 VMZCBalDP6pJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5492260E4F;
	Wed,  1 Jul 2026 14:37:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7BAB92EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 14:37:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 79555821EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 14:37:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jEbcTRwgWKHl for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 14:37:24 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4819F821D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4819F821D5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4819F821D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 14:37:24 +0000 (UTC)
X-CSE-ConnectionGUID: 5gDCeVq/TvSc0Xuo24PUMA==
X-CSE-MsgGUID: kMa5PiklRySEIdFGXCbRRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="82768276"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="82768276"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 07:37:23 -0700
X-CSE-ConnectionGUID: sLXDb57PQQm9Eyy6dNl5Kw==
X-CSE-MsgGUID: XgOZr2GWRTGyDsUpfDatoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="249215264"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 07:37:23 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 07:37:22 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 07:37:22 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.12) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 07:37:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A0jrn4zb4o7pclF/iKB3eBbUPbkKt9SGYX0C9iiROB9Vwwue6RopXCA2YRARk2nUUPV1ULLUCqzSO2YqkP5ueUx5CSsqEsxa7KD4nb+KPMn83C/kEpugX65vnh4f6dTTLBV0TV4d9iK6Pf82btmubqgtX5H1jO6pyhncTej82F8NbSqUcOcMqMnZGqrwtSdMZHuBt4tk6SxGRIzBLyqEj4U6fnCUo9EtAGrB4U3E6xuwzWHZ5+o4AT1r22CicHn/UUhHd8j+xG5qlu/KtK8SvCAO5gF4nQ37YKC+IHsD7XBaSr3X/PnkhxDl0auXUFfgEqKMYSBXPmO1EyKQCj3ALg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wWnH18jWX1y6cMKAv4MZXqJGsmxdRugUVTxNIuuzVS0=;
 b=sZxMBC0lxdIRmQrEgHOAI3UTRCsWQh90caldkwzWLmg2kAwGtCqyMGUIyyvXeFiXqHtZl0CKuu6dC4V+edTWE7iHsLjny1M8GUb6/0TRoT43gMSy1RJx0lYvjgUhzfqBq+X1eNjHNCDkCiLb1ZW5B1D9r/Z5bJaLK79YMal3+YNMwh5qHBQiwLBDETjpV5x1ZxbOx3JC5aU8I+jxJ2MYgdUsZV+spAPE7dXtfVuZl7vuJdWYeiSAN0Nujal2/4MybmluT5SnOGOupbB0ZJzzivPljDBk+RoERvBPIKhVFCgWj+XgInCuM2KhoP10ZDVsFM8r9jhDkAIbQkEXeY8NDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4SPRMB0045.namprd11.prod.outlook.com (2603:10b6:8:6e::21) by
 DM4PR11MB7279.namprd11.prod.outlook.com (2603:10b6:8:109::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.159.16; Wed, 1 Jul 2026 14:37:20 +0000
Received: from DM4SPRMB0045.namprd11.prod.outlook.com
 ([fe80::b630:ca9c:20e1:f485]) by DM4SPRMB0045.namprd11.prod.outlook.com
 ([fe80::b630:ca9c:20e1:f485%6]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 14:37:20 +0000
Date: Wed, 1 Jul 2026 16:37:10 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Rongguang Wei <clementwei90@163.com>
CC: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <aleksandr.loktionov@intel.com>, <przemyslaw.kitszel@intel.com>,
 <anthony.l.nguyen@intel.com>, <andrew+netdev@lunn.ch>, Rongguang Wei
 <weirongguang@kylinos.cn>
Message-ID: <akUmFsLra3VpRNPg@boxer>
References: <20260701013618.29934-1-clementwei90@163.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260701013618.29934-1-clementwei90@163.com>
X-ClientProxiedBy: WA1P291CA0024.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::18) To DM4SPRMB0045.namprd11.prod.outlook.com
 (2603:10b6:8:6e::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4SPRMB0045:EE_|DM4PR11MB7279:EE_
X-MS-Office365-Filtering-Correlation-Id: 78da2777-3c07-4753-b8dd-08ded77e419d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|22082099003|18002099003|6133799003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: oB95/lxxDXhZrYgtnhNR4oIDpzFQ/grhUYmGTxI0vo3SiNHk3QwfyNW1Zipj/c7EbHydBE0XUhZyhpVWbugJLOcj7YOAK51sUgbai4DwkVfj99OvoDEtwTuLQL0pzCVyk5IoDmN1MVJNrEG2MkT8PUaH6pZnCkcA2Dpmag1eAM5xqpS7pf/Ld184Xn8W/tE/OGKfWVzGV8Rt3o+F/DKvZXeP9B3h3GJ5WiE3/ImJB2ls2/6F92GZPuFuZR9gE3f3u5E0W+nMeS7zB735QcVbsat74j2aLPpLjbMYHgll0u+2xo1ZyycLkGvazFL58WAgip2D5Q5DM6UcGPjjHUjiWGhSKrla5563lYWKurblLjs1voLu1g21Dr74D0butMmoZu7TI4S+awWdDKthougtmd8zUDBJ8ohrKr/y6wJ744cF21jhFW8loPx+na5eMAc2S+CKU6O2PBdPyOj8S9RbmigPMWFAXrr6PJP9I9hkNHNC3UZgzvgtOvGEd/j9gO0h5uRnLq8JNBSbntXZTpBIzS8TpOY+EDegDOHnJxM+uFPKuigb25Cm+DOWK7DNj7AT4YdK8pr0zSW9wSRCWq/0bS2/mWBEPbtjKzMahtZl/WY23sqSXMBz0YoBimsKxPGk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4SPRMB0045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(22082099003)(18002099003)(6133799003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5/qwFCAQFhrM6G3LKyeEfpzFnJJcpNmipUjR7n14jja7hx+5TbKJ8/GpdXSY?=
 =?us-ascii?Q?qXgjr3SlscuHymHZRAf7d48P56+FVerJFUTX+diL+nGVKwHI+EiAA72mnpES?=
 =?us-ascii?Q?iBOwhquafFd5oloD5+Xh3LtGNHaU27qrdZEAwpMSmKSKinZUR3H7bk/meNjp?=
 =?us-ascii?Q?clycFxXWkd1Dk0ZMa/xcgZrVCSsFkrcwYXXtuXA1IglMF/CqHAR60yDT8ih0?=
 =?us-ascii?Q?8+zlE7e63siu9Z0SOpsXliKqX7hiAoYIAav8nLGDfNApK45PsvUrO49pXr3r?=
 =?us-ascii?Q?hBmZQdbCuGxJ7B4PPQ+bvJVtPrPNLNMjqF+97WdfqDWFbvWpFN/hQqaEYYEq?=
 =?us-ascii?Q?aX+b5rXT4FBp3aW/krGGG6Ncd79sfbgmYzKE395WWyGVYaSHxSGYd5dJv3HX?=
 =?us-ascii?Q?izXCT7aVZk/5TCqthk98J1rgGFCa5M6D7hSTUP5kjCnHE+ivWspfQeSQA9SY?=
 =?us-ascii?Q?reOcQLaqf4uA0aPPH6uNZ5uY9PRvWYj/ZJFeqwz5S1ypYHjtCD8RlRe5nreN?=
 =?us-ascii?Q?AWlOgIWfAvCCfTVsufOSNE6ZF6T4AsguK+U3rs1H4OnkiBXHtFSaI3mXkTct?=
 =?us-ascii?Q?dKjpxPiBPRYu7IBYnEfMVD9dnRKs+VHYjFC8htcQXlVFVi0YN2qc45i0tkIJ?=
 =?us-ascii?Q?QD26/VNFi+yf1R3Yavq1e8zCWL576K6yVJwg2XUA19idklTBSsHnAlGHp7Ss?=
 =?us-ascii?Q?f87tahPhWdSDEaVCd0YOsNbLd2fkX1yW+XyKT30OKHSfv+p7rPiepXGSK5nb?=
 =?us-ascii?Q?Gp88cBiKvv611mUVc6kJJNIDIn6OEHpW5g/eZDKyae2yuN+GX7CHJm84amKG?=
 =?us-ascii?Q?3lpYSp0UbhcwEGY/I/5Xt4XkUuu0fXMqbNLngOHfMd+rhzQnoOD0Ldbp6qk+?=
 =?us-ascii?Q?SD2N7zXB1rMWNG8C8yuVPkeJTO5+SooZMCqUnSI0hcIu4TVjmNQbptc8exBQ?=
 =?us-ascii?Q?17kPNJnjhOjdCtF9lic8JTs827J05z/7rH9q/9wWun7FSr6iNspVyyps3q9B?=
 =?us-ascii?Q?LYtEhABuGSle/pfliB+5JF1M7mHdzVdY48zp6LHxIw7RP6Wa7FX+ZDFv2D/U?=
 =?us-ascii?Q?xKvSND5fj1gbaCR/f64nSgn03zvxLo1Xfy7ywVOUDcUb67bfm7rnBL8QLbpx?=
 =?us-ascii?Q?hsdGPl09Am/R3NSxNFxee+YSQsodsybqT2MlCwycusiZaFxcr8ePz8lMy5PZ?=
 =?us-ascii?Q?04QX2mEG66vuWMZGrE+i3GO0N9yGA2gHBBoIM/9CaWzErh3Cq/7qBJ3kfi5+?=
 =?us-ascii?Q?Hpp4+4K1rKi7hZUigMgeMgkUZJ0Xt2vwyEgCF6OKEZprJFXZWPRGt9kIywdU?=
 =?us-ascii?Q?irgHXwKcaUFYpZXR4cY40Iyv/aEUdTVraeXzIbqRHMfEprSSYCgZWb2tu9Go?=
 =?us-ascii?Q?Wco4ET6TBTBG0owATPorXaE6RmUsKTMpmgNW/5MWI5/meKiBOXkh/G+4L4bJ?=
 =?us-ascii?Q?/F6FYXPFttLCMKUY3POZEINZQv6nU27ejzUSzpQ5Mkf5lv5Sk+RlOYxnhA0Q?=
 =?us-ascii?Q?YJbkgGhOWlWeeVh38CNyM0Sv27RL90EjDm0MnAdWATNlIseBpegBKqAztzY9?=
 =?us-ascii?Q?fpRqEnT23NVO5CrgHzZwQoZMQ/ZAaTYu+qjc+bAheBwhsaRjuQ6skYDyOYU7?=
 =?us-ascii?Q?pQ9ysrB0sTPsPNPcZFzb7VwtNQd3Fd6NjSHZoiVENYTVo5Be7bDhuTF/VMD4?=
 =?us-ascii?Q?Ij2PNHjatpxGPSUkmnJDfW4uqfbFqJzItt6vdhpz4Mel9EpLktID3YSaGhhs?=
 =?us-ascii?Q?mmseSW3K92pzpL9mAV+1XYzsghr26SU=3D?=
X-Exchange-RoutingPolicyChecked: Q1d/vxSSEIecFDSaEcnpzc2HZ1MtGsFIOG9ZYCKITzD6dWueKezLQ/MHehC+KsPKy/WY4N1WpYieLnq70bf/L+2c1NCOMuzpVs6g650wD2m4u8VyqYmOsPAil4AeA1uNzFdBPHM55rTaNRx5hV27egFJU99lZmInkagQprBglr4UBGlOID1qOJy/GYRiJ9CEGpCh2t2TY+cS8hmBS42WQaVvw+ynxfUHcpG3yrN60I7f952zVA1+Et6fFPVPfUDKTgzeZ8uqkQ6D9YqVOWZVZZ3X51Kk0o3E4S+7992LhUMG5lVagggT1HvZrBXUx4BRUzKPu0s7atKXYIPc4qkdOg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 78da2777-3c07-4753-b8dd-08ded77e419d
X-MS-Exchange-CrossTenant-AuthSource: DM4SPRMB0045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 14:37:20.0869 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jCgyb2yDkU7pNoAxuDt6PgBZPMNw9hMl0j6FYjpZv+4e0r+Zdwmi5//Tl//1mH2g4bTHl0tnPmSPU8qlM6J/eWFgd/paP2ts2Lk+mmNXq0E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7279
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782916644; x=1814452644;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Nco4C4lLNSgMMXNaPmwh+2+1iwZ2uNmCyEdy28tmHZY=;
 b=CtBP4tK5q+Pxljk0QiKbZ8lyESM9F0C+tKPYY3pnScQrKmaAUnFdYh+P
 UDuknlnktd50csadhJuGbZu1x4qTXUQos5wDRV27epR3b//BPvImX1iFJ
 3AnAJ6Trv8d7WrY+v8pKgRaxVixulEBJnsYEA442HIx6XSIiad//6bIGU
 6EGMnhH1d2C9dZbfFnfsvsMgwMNyaVway43L1q7xOvaqstLogyE79MTp/
 XEYTGnX0LlPjFDstPTwDcvv+syNOd5ZmxeS9hY6TO8ZzJcYJb8RlD62Y1
 eMdZ/SM50x35aLqE/gDioR2h7lu4Pi3jhaXDK6+GT315nSwO/QaolJNA4
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CtBP4tK5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: use dev_err_probe()
 in ice_probe()
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[163.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:clementwei90@163.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:weirongguang@kylinos.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,boxer:mid,kylinos.cn:email,osuosl.org:dkim,osuosl.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8A6C06EED6A

On Wed, Jul 01, 2026 at 09:36:18AM +0800, Rongguang Wei wrote:
> From: Rongguang Wei <weirongguang@kylinos.cn>
> 
> dev_err_probe() logs the error and returns the supplied error code, which
> allows probe error paths to be written more compactly.
> 
> Use dev_err_probe() in ice_probe() for error paths that currently print an
> error message and immediately return the same error code. This keeps the
> existing error handling semantics while reducing open-coded logging and
> return sequences.
> 
> Signed-off-by: Rongguang Wei <weirongguang@kylinos.cn>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v2:
>   - Fix commit message per Aleksandr Loktionov's recommendation.
> v1: https://lore.kernel.org/netdev/20260630032537.42605-1-clementwei90@163.com/T/#t
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 24 ++++++++---------------
>  1 file changed, 8 insertions(+), 16 deletions(-)

Could we also address rest of sites within driver at this very same
commit?

drivers/net/ethernet/intel/ice/ice_dcb_lib.c-873-       dev_err(dev, "DCB init failed\n");
drivers/net/ethernet/intel/ice/ice_dcb_lib.c:874:       return err;
--
drivers/net/ethernet/intel/ice/ice_main.c-4482-         dev_warn(dev, "Failed to initialize hardware after applying Tx scheduling configuration.\n");
drivers/net/ethernet/intel/ice/ice_main.c:4483:         return err;
--
drivers/net/ethernet/intel/ice/ice_main.c-4543-         dev_err(dev, "Fail during requesting FW: %d\n", err);
drivers/net/ethernet/intel/ice/ice_main.c:4544:         return err;
--
drivers/net/ethernet/intel/ice/ice_main.c-4961-         dev_err(dev, "ice_init_pf failed: %d\n", err);
drivers/net/ethernet/intel/ice/ice_main.c:4962:         return err;
--
drivers/net/ethernet/intel/ice/ice_main.c-5192-         dev_err(dev, "BAR0 I/O map error %d\n", err);
drivers/net/ethernet/intel/ice/ice_main.c:5193:         return err;
--
drivers/net/ethernet/intel/ice/ice_main.c-5206-         dev_err(dev, "DMA configuration failed: 0x%x\n", err);
drivers/net/ethernet/intel/ice/ice_main.c:5207:         return err;
--
drivers/net/ethernet/intel/ice/ice_main.c-5244-         dev_err(dev, "ice_init_hw failed: %d\n", err);
drivers/net/ethernet/intel/ice/ice_main.c:5245:         return err;
--
drivers/net/ethernet/intel/ice/ice_main.c-9627-         netdev_err(netdev, "Failed to get link info, error %d\n", err);
drivers/net/ethernet/intel/ice/ice_main.c:9628:         return err;
--
drivers/net/ethernet/intel/ice/devlink/devlink.c-1244-          dev_err(dev, "ice_init_hw failed: %d\n", err);
drivers/net/ethernet/intel/ice/devlink/devlink.c:1245:          return err;
--
drivers/net/ethernet/intel/ice/ice_ptp.c-1935-          dev_err(ice_pf_to_dev(pf), "PTP failed to set time %d\n", err);
drivers/net/ethernet/intel/ice/ice_ptp.c:1936:          return err;
--
drivers/net/ethernet/intel/ice/ice_ptp.c-2000-          dev_err(dev, "PTP failed to adjust time, err %d\n", err);
drivers/net/ethernet/intel/ice/ice_ptp.c:2001:          return err;
--
drivers/net/ethernet/intel/ice/ice_sriov.c-829-         dev_err(dev, "Failed to enable SR-IOV: %d\n", err);
drivers/net/ethernet/intel/ice/ice_sriov.c:830:         return err;
--
drivers/net/ethernet/intel/ice/ice_eswitch_br.c-314-            dev_info(dev, "Bridge port lookup failed (vsi=%u)\n", vsi_idx);
drivers/net/ethernet/intel/ice/ice_eswitch_br.c:315:            return ERR_PTR(-EINVAL);

> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index e2fd2dab03e3..31aa42f8e6d3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5161,10 +5161,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>  	struct ice_hw *hw;
>  	int err;
>  
> -	if (pdev->is_virtfn) {
> -		dev_err(dev, "can't probe a virtual function\n");
> -		return -EINVAL;
> -	}
> +	if (pdev->is_virtfn)
> +		return dev_err_probe(dev, -EINVAL, "can't probe a virtual function\n");
>  
>  	/* when under a kdump kernel initiate a reset before enabling the
>  	 * device in order to clear out any pending DMA transactions. These
> @@ -5188,10 +5186,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>  		return err;
>  
>  	err = pcim_iomap_regions(pdev, BIT(ICE_BAR0), dev_driver_string(dev));
> -	if (err) {
> -		dev_err(dev, "BAR0 I/O map error %d\n", err);
> -		return err;
> -	}
> +	if (err)
> +		return dev_err_probe(dev, err, "BAR0 I/O map error %d\n", err);
>  
>  	pf = ice_allocate_pf(dev);
>  	if (!pf)
> @@ -5202,10 +5198,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>  
>  	/* set up for high or low DMA */
>  	err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
> -	if (err) {
> -		dev_err(dev, "DMA configuration failed: 0x%x\n", err);
> -		return err;
> -	}
> +	if (err)
> +		return dev_err_probe(dev, err, "DMA configuration failed: 0x%x\n", err);
>  
>  	pci_set_master(pdev);
>  	pf->pdev = pdev;
> @@ -5240,10 +5234,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>  		return ice_probe_recovery_mode(pf);
>  
>  	err = ice_init_hw(hw);
> -	if (err) {
> -		dev_err(dev, "ice_init_hw failed: %d\n", err);
> -		return err;
> -	}
> +	if (err)
> +		return dev_err_probe(dev, err, "ice_init_hw failed: %d\n", err);
>  
>  	ice_init_dev_hw(pf);
>  
> -- 
> 2.25.1
> 
> 
