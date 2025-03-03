Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A58A4B921
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 09:24:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79A2380FC1;
	Mon,  3 Mar 2025 08:24:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oWZ_JrEEYJjt; Mon,  3 Mar 2025 08:24:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABF0880F9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740990276;
	bh=UpP5ChUjt596ooK353S4XtCTF4rKIPZWwTpNOYYfeDs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nAei9vE72TrX2miy+HseM9tdaQhAFLsIyNEzaUbuQeR5OOyAlsKHgPl2gII3/p3SQ
	 Xn7a0lEkFCVFO5OR8nAYinwxCBgaao2U+hO4eRo4fS6j37xZ4FmRWCAQkPlBlt6ILQ
	 MPuubSkxPeYYFfdqn5E8hPSzWTjZz71O+tMWA1kAok2GEG5geTyQ+0CwUbymXymgoQ
	 /vw1GNnQSJMVcuA1bpY5iqozUWzMPpbF0ItywI00aYGT79Ij9/2e20lFtaLbb7nkT2
	 kEOASIWazl93FuYxJjlE4ySrpxDTdTSqaoJyF3ZY6APu0xbSOqFcQB01HYld5fbtBR
	 o+z+Ezz9fwAtw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ABF0880F9F;
	Mon,  3 Mar 2025 08:24:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 50573B89
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 08:24:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3C0A040918
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 08:24:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4G_TZ4SLArXh for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 08:24:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1199A4051D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1199A4051D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1199A4051D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 08:24:32 +0000 (UTC)
X-CSE-ConnectionGUID: RdskNpBSR0a2ac6he6/CSA==
X-CSE-MsgGUID: tBhzXyg0R56z0Nzc37E3Jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="64305650"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="64305650"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 00:24:32 -0800
X-CSE-ConnectionGUID: C2IUjTq3Qtyhl+0ZDapEqg==
X-CSE-MsgGUID: hNNhshVsRMGBYUuYt1U8qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118848784"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Mar 2025 00:24:32 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Mar 2025 00:24:31 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 3 Mar 2025 00:24:31 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Mar 2025 00:24:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BkuU0614rLWiMIDcOCCNGFFdBHXDgUEe11SJO1iyr8wK9PB8spLmsh8P72/vtpBJHDPlpvpH6S8wvhGOx2vsnzB9pEMgz1yo76j9WHZIz92HPLB3/85wdNG5++IL1Cp2w4OlJnT6euRdx8h5dRumyubu13LsuaH/a7hD2N4Z97EQ6wAWnmy52ybMTTFgStX0SYFlBZNo9WkaTN+oELuhAtbb8cX1yaO2+e361qTFMMCjUnPyX8VN0ZUuL245UpNlCKgXG3FW0Hgrc6WG7ZYwZxDsFB3v7EPTjyF3hhExf59UcO5FNyPFXiVxr4o/2lqYQuoF0aEm8MpnSsdLe+SLtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UpP5ChUjt596ooK353S4XtCTF4rKIPZWwTpNOYYfeDs=;
 b=FTDVH9BOTXb5k2onGy3nffdoVUetBZSHtpYUxd+q3O3St43mKyzFl1B73CPnisL5VmB8MQx12YTX9DDeGr6X0dxAjtIByp55r7mxq9xDh6YLC/Jp/L/6UEa6loEgsTO1C/7whkmE5Vs6+cpbzdN04LFNOkOMLzZUAV0fhuB7VQIAELw8UchGva48pZwMYFvo8LJdHbGbjHnfr+gkot7XIkuU9WF64nLMmxH/5CHq+GtPe/1f2bd0lw+ZnPidrGxSlSxhIc6puDy/rlrk3aKI4wBN/TQAGzxYvFlmk1YHcKX4f+pt9tpp9Jouvy0MWiDY3G0tr4cEIgbn7pN2gXq7bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by LV8PR11MB8700.namprd11.prod.outlook.com (2603:10b6:408:201::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Mon, 3 Mar
 2025 08:24:28 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%4]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 08:24:27 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 03/15] ixgbe: add initial
 devlink support
Thread-Index: AQHbhFjrNydzz0hpkEikYXDteFJBY7NhIkDQ
Date: Mon, 3 Mar 2025 08:24:27 +0000
Message-ID: <PH8PR11MB79651A1786534078B8AAFD75F7C92@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250221115116.169158-1-jedrzej.jagielski@intel.com>
 <20250221115116.169158-4-jedrzej.jagielski@intel.com>
In-Reply-To: <20250221115116.169158-4-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|LV8PR11MB8700:EE_
x-ms-office365-filtering-correlation-id: f7c03a83-d679-4562-2d8d-08dd5a2cd067
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?zKtxjxZN4iUYQreIubKkCKUYQ08QYiMnvufDBqzgXUpF7T5m2mJfAPC9nD9s?=
 =?us-ascii?Q?0dt32C3+JZ8n5GfcOCmJJ8jQl2iQuX2hkog9SsAA42dMfV6hjXFadLn/P4R+?=
 =?us-ascii?Q?aJ9u6GwjfZfY2q5BuqLqqJ2geolcl7j1+91XduMM7a0rOzFT3JrDrZaQITL/?=
 =?us-ascii?Q?/lGQAyE1eZ3uf6/BKv5QggBvWh+JRNNgSrOrEp1yBiBI2sJz+krlhtVe7Dl6?=
 =?us-ascii?Q?ZGCV5m0hSj/Px4hqJOrKUHavS/O1C2WOn4bU10klkhbaX84LpT/dEvvRUZHG?=
 =?us-ascii?Q?Zm6h2ze33u1Kf4Q1RzE/WaAVCQYNVHSUCXyiMHO6pR6Q2d84QMV00MBrxRVw?=
 =?us-ascii?Q?Duf4Itx7KtgiBCuvI59X+to6gC2fXuy0NdIWqJX4ekSj7A2lHcgXLx7hK6Bd?=
 =?us-ascii?Q?l/ca4BMoHffzKblRMayFGfC2FmIsKY+OjFhPc7EXnz2KpflHQwLU97wiiNVe?=
 =?us-ascii?Q?wqVL99RQkCYSohE9VyPgTtfSPF4apHLA+SclnEbY7bvdLf7rbjsmiQBFDQjT?=
 =?us-ascii?Q?5FvxHb38SNg+D0ZvlglF16O33k33iL4qZGfe1GR1YLLfqY4Too4hJlazrNAy?=
 =?us-ascii?Q?qLKBwf7P/UxOMHTKaYVTTng+x/LhdtRWMV6WuJmNffhKYcOZGvgb1l+unaUk?=
 =?us-ascii?Q?YhkuAfNOOffNxezkBroLn+pQpLxpt2/r1oKYGQNjjEGgr6mp31Hhj4n/Ll2l?=
 =?us-ascii?Q?4tpiB+R2fgyX5s/XTII5Xe7w5yYMuuzFZFaNAfahFEo+0vJXBWArBFeRgQJe?=
 =?us-ascii?Q?yqm76Nw0fBmHmM39Eb0Q106hQZrMmKykOR5Qj2qq1gfEUQm6FBGnAeTqSCv/?=
 =?us-ascii?Q?zEvWaZMFF9cQRulSOsuMUx6EOVO/0Nae2QpJb8QP7wJdDxwdzuhrLnysrqOy?=
 =?us-ascii?Q?8UdX2ZRu1WpEsZS+XYN5zeZd64V54BvlWesaRjNuZaP7Q+iLgS5RyW2TnB8u?=
 =?us-ascii?Q?NrVvHS6yFbt6CpxgWco7ItFXjsM5BS37kl65EagV85YvLSXqSpI8LOWXkgPT?=
 =?us-ascii?Q?PyvnF78BefVpXoVxWOVl91m1TjrIQDyPfdh7mMnY5+Shq+wovHZ6eBm5AYtV?=
 =?us-ascii?Q?RJTJBFAjamg8ksaT+uCfUUpwD3couNHf3M6ipBTwV51nY01q5n6qCcKJQxjd?=
 =?us-ascii?Q?6yNXjiHFjMy1IRZM/m9MoMVQ6EYrayP6Rom1hCvP88QFAYUT8eADckTfhXAK?=
 =?us-ascii?Q?qTbgCDVgzu0tvpO+/c/JjmGTCp4Rg/DAg7vzgnwDYsWyYbok1knsbKrs9ofU?=
 =?us-ascii?Q?qatZMDu1EybNs+HUOvu7DupFz0gvd1S7iV4fBjRm8lSYbu+gwddVzouk/IS5?=
 =?us-ascii?Q?l6FsD+RJsn4EINnJ7AU+Qf7hizQPntQQJYYE1W0MWKgCZvmfQBalN0El45WF?=
 =?us-ascii?Q?tbFPnLrYb/Q9ZgwcmAJcxg3PubbzQ2kIbdhMsjxzbvFKroO0ARQnZWS9nWur?=
 =?us-ascii?Q?HjxhscTFpdkycykOnfR3wcAJx5tI/Y17?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?w70YRTs2c9NYiCi/GohOUx7GsVKohXiVpoG22ed5YYypVQGBAguittUwFTZb?=
 =?us-ascii?Q?ZC062xgADaz9ijN74tJeokL0k3arRnFxsG5DK2G8I/rb9sBNI7IMyVEgziET?=
 =?us-ascii?Q?aF0vyRyVz2pJYpnOv2RWEafU7JNQ540Cf5wz5QViXG6f9pRqXKLAKTP1BQKm?=
 =?us-ascii?Q?QqBGvBjnx2tsTmpOa3ZwPt+wYvibDSxt7oVB/VSiYn6s+ittqDggUaf77rHW?=
 =?us-ascii?Q?lEN5VmNSM5ND/fABOEMAZVQdPkhE1TqbMB0p1ioHuohorcyn7g6LvIEtpMoI?=
 =?us-ascii?Q?Up4QnXrnTFq9uVeDRjNmwIp/v7kMkPzBHqsDlvQvcn4MBaFjXf5GEiLx/zaR?=
 =?us-ascii?Q?jOaAoP3VAS1vgzqrGvoMLZaaWgymIxgodDSLlKA4GX+Ho92JmBkPgGw6YJ9T?=
 =?us-ascii?Q?w/hBmzW9U8NaAPKEsVIx09t43OxVsNm0lG/xRXs3wtHonegM272zUAwmB5Vl?=
 =?us-ascii?Q?uBZdDITKlg4+L7Itc+6n+gyfmD32EmYjdPh/Al7cnm7+1NraLkFEiVb7pLCt?=
 =?us-ascii?Q?f6uUC0nDpzBidQpww93LBA8ASGAnOi614dmCGcoDHmEoJ8vCxclH3Zse9xKh?=
 =?us-ascii?Q?eZJGAOJSXvEIsxgkFphWTdk0r5YklZvfAAq7ZCHoUbbjABCzI0guT8N5p8dl?=
 =?us-ascii?Q?87lCRtQbaRR8oKdGokIZndltjrCY7/zAmr/0y/3Tl8yJsh9HaQh1lAA9dU4f?=
 =?us-ascii?Q?jnR8QcIK0HQxaWQSlqcXm32g/B7Gu3ckrOwcFq1c6oABki6+YAheKn2x+aug?=
 =?us-ascii?Q?YD8GZWYGSqTxHRJYlORy2XXPP6zuCzFDqkTDQqefGSe40FMqYCsBJOx/+lvf?=
 =?us-ascii?Q?ISd9DHpZiUWTchSBpQWHiqcDa12c9wJ8gXmM105OMZsjmCFGrF4naGDJeEUa?=
 =?us-ascii?Q?LTciVdjNoicii7WSZ2vpT1KUSrNx/an511PjiL2fZknH5JCNTcntg+kLE30W?=
 =?us-ascii?Q?wYD+coeyU9aAaWHyQUGakAOVAQrU7KIj5LjNRid9ko+8eOTZlbv0l24anN53?=
 =?us-ascii?Q?1m1ZWMzGcg0KWOANOQacZ0iJMBZHvc4vtR+RawBfpJo4NutwlAn52CieH9tb?=
 =?us-ascii?Q?Ky/cJEdc6OJe7A0J0YS7oKu+21r+rbHrJb5JtD11kRQMymgIIO+GgmsAwRb8?=
 =?us-ascii?Q?CtEukj1jOs6BekUZnUmCfYnI/p8NjJZjlHmkBNDXcwr+AlHYtJ5bo72XLp48?=
 =?us-ascii?Q?fOIN+c58S3dKHaTg3Y7uHOld1BT5xP3X85XIHuhyK+A2Xpqa9E8F9AI/2dwL?=
 =?us-ascii?Q?uHkMS706plFE6qu6abcDxlzueGthABiLFH8XrG7wy1nFPjhgScnPUEfpHX7J?=
 =?us-ascii?Q?scm5qTkyQNe1IJabGnz9xFtS0r4Xff5pfDK+PLLL3kdloY+hCq00gQ9OkOXn?=
 =?us-ascii?Q?oKFvFDs/FspWcWnXdFTk+ai3Ky+niHPXeuEioY1jhoPlnyLxerV7n8gY09nu?=
 =?us-ascii?Q?xGRKTya7EbQafE8PczB8Fnj/jDHbE546ocPVCkxibF2oztm+ah1S6ZofZiU+?=
 =?us-ascii?Q?mvDUnwGILhyeI0auH8BtcSaMIx7M3zClUZ6/+pUnite9ETMk0QwhPSAym0Jz?=
 =?us-ascii?Q?PSpCVZSZFDA+NF/T0zwouxpYuoqHgcD6K++mauSM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7c03a83-d679-4562-2d8d-08dd5a2cd067
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2025 08:24:27.7517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L+d9X5tPIg+cu7tAFoMlCFEYyJPlnjPKBkOWW+fyJRfBqWUbADRq9tmjYfVpaE4q5TqMb9AcSl5v4bJFhEqi5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8700
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740990273; x=1772526273;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+UMLnQh4LrAI53bUlPVHPcgDDtHna7pu/33kO7rMCHQ=;
 b=aQQaua5zFrfjeREgkGX6oMTot7Pd2wQiD/PN/ZWceaGcOorKixDeNsOY
 F4E10mC3Q4TzN3KTRz87NNoJr7cq646PptdLUIxdyBYmXTOquUYk4p7yV
 ScjTg8DwYdlkNX37yzqcpR3N31RGRcC1B3IEKhjEjgOwpvEzvgok9s+iu
 q5tQdbz3gc3BAjHuf0OfnoJZ7Hvm1+jP/Fhq96cBFldEtut8V4eoVallE
 AaNZqFVQUWgAb6WnIZXrOvpJMMiQuKgqjXG81O9A2oW+3LlFhTGZL6v8z
 6TCP2mnJhxE0+gNPA0PSJr8f6jOpMj8Ca3prJ1JJTSLInZz6gpdwRBKrF
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aQQaua5z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 03/15] ixgbe: add initial
 devlink support
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: Friday, February 21, 2025 5:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; horms@kernel.org; jiri@nvidia.com; Jagielski, Jed=
rzej
> <jedrzej.jagielski@intel.com>; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 03/15] ixgbe: add initial d=
evlink
> support
>=20
> Add an initial support for devlink interface to ixgbe driver.
>=20
> Similarly to i40e driver the implementation doesn't enable devlink to man=
age
> device-wide configuration. Devlink instance is created for each physical
> function of PCIe device.
>=20
> Create separate directory for devlink related ixgbe files and use naming =
scheme
> similar to the one used in the ice driver.
>=20
> Add a stub for Documentation, to be extended by further patches.
>=20
> Change struct ixgbe_adapter allocation to be done by devlink (Przemek), a=
s
> suggested by Jiri.
>=20
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Co-developed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: fix error patch in probe; minor tweaks
> v4: alloc ixgbe_adapter by devlink
> ---
>  Documentation/networking/devlink/index.rst    |  1 +
>  Documentation/networking/devlink/ixgbe.rst    |  8 ++
>  drivers/net/ethernet/intel/Kconfig            |  1 +
>  drivers/net/ethernet/intel/ixgbe/Makefile     |  3 +-
>  .../ethernet/intel/ixgbe/devlink/devlink.c    | 77 +++++++++++++++++++
>  .../ethernet/intel/ixgbe/devlink/devlink.h    | 10 +++
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      | 12 ++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 30 +++++++-
>  8 files changed, 138 insertions(+), 4 deletions(-)  create mode 100644
>=20

Tested-by: Bharath R <bharath.r@intel.com>

