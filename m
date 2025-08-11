Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45346B2018B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Aug 2025 10:17:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB693830C2;
	Mon, 11 Aug 2025 08:17:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7WA95gLSQ3Of; Mon, 11 Aug 2025 08:17:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 366FE83449
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754900224;
	bh=I7Kl2eVoq6NxmuZxNX3jKXNEPN5OxdKtguxdyzVg644=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2ZQ8k8iE+ccH8lwSXAgCEX6JbVyP7k87fpgMydjgZ4ObzeYN8bf430ABYZ5duwXdc
	 R9Ad851oaN8eVX8xNTYnSCG9XSiENJpzIt9i7ttxtEcnRt5K37eINu9obj29bv58oo
	 yvVS2UzAqdZqYWCy8WdgaHFzUNryM2MEtgdJ7cwXCR0svHVnkf/GmszBEHkVOZpSz2
	 f+QelJybuZNWmXU4YRNx6iSBMaCm2hCuWiuaI6gAWnOE4R10ytBVa0yfGkeXY+RZ5f
	 zeLe86UELzkXMG4HBa+nTtA9uSvLrmPP8ZzcHaMKB7MtSUNlbFPipp2rJSe1/5OABE
	 j0744uQxQYfZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 366FE83449;
	Mon, 11 Aug 2025 08:17:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 38FEB1C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 08:17:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1AC8B40E75
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 08:17:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 81zXkUIPsir1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 08:17:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E774640DFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E774640DFA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E774640DFA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 08:16:58 +0000 (UTC)
X-CSE-ConnectionGUID: u25wOO/RROOpqW3q9kqNNA==
X-CSE-MsgGUID: UV7q6/O/RvaoeaBQVs4kng==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="60776535"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="60776535"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 01:16:58 -0700
X-CSE-ConnectionGUID: 4EcEOWSlR3OJPA1NhJ1eAg==
X-CSE-MsgGUID: NdyyXmhzRCiBWE0BCOLX9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="170065304"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 01:16:54 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 01:16:51 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 01:16:51 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.52)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 01:16:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sfT7aR+KJj5ulxFUcPkY8Mek1LKqE+LCvgm4HE/bDTkO0o/1PyzxA05xkqmSXPnm6U/DxnB2gQmrHbTNf2RF0Ct+8TIJnkKqfQ0bLkpYfno6TnD9g8Q2fRhpwKkFE0XzLkOivgtdvcxd7W5LP6GLcmJ6TsM40ShduSqcaNyYS2ZFiZFu+f3YEUQkU1jfXA0PgZbI1/Ry5fDzNZOLprw44qz/+HHUKJZI25MEAof1wOru2D9qBmJxJNmfB3ZP0qRguvvWJ4vqt4naLm0eNqwEvD8alYXxlu+kDEOBhm8ZHTN06GZAv7e0Kb95/nD/RF605uBYfxAXslqVROaWe/fpcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I7Kl2eVoq6NxmuZxNX3jKXNEPN5OxdKtguxdyzVg644=;
 b=uNIdppyx85bVROKzK7aN+6VliOvLRGHVVgJWn1bwocYcYEM1okXMiCqAq4cIp0PnhKSIqPyABCQlBaF1sHa9TRRA2ZU4/FyCpnbalz96AzuZPU3+jw8D9/WAdClPVvbRfEwcd6+jiPF0XTLm9YtddBaK+TzlECKSOLVxcuoFVRXyDfWgIrDcS8jXwXjGRl1YImtDQ7wrrpaBI+Wt8YVdjGt39gx4eWsdhpIHxjczYYm29Sr7XjwB3GwUEqxiSuwPAmAFg7gpQMVQyJ9DV52Cqy16KAo/mwtuaguggwhqJG3wifGZ8MtPBe4cWWD+HfP5wWEzkbnQDDJgBMEqQKiFQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ5PPF6E320AF71.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::833) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.20; Mon, 11 Aug
 2025 08:16:45 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 08:16:45 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kubiak, Michal" <michal.kubiak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kubiak, Michal" <michal.kubiak@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect counter for
 buffer allocation failures
Thread-Index: AQHcCHy8bdBCi1HN8k220V4e1Z54+LRdH2vA
Date: Mon, 11 Aug 2025 08:16:45 +0000
Message-ID: <IA3PR11MB8986A93931BC654D32B80085E528A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250808155310.1053477-1-michal.kubiak@intel.com>
In-Reply-To: <20250808155310.1053477-1-michal.kubiak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ5PPF6E320AF71:EE_
x-ms-office365-filtering-correlation-id: 0a663519-7162-42be-607f-08ddd8af691b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?RBW93gDHZrVYnhe4kQ52dOyxc3zmodeYUZ/1YTx3CWQAhAH7jkSK02n69C74?=
 =?us-ascii?Q?xurKowTd9HKlYtcuqkeCBMzCjkTuHEMjBJmvdrF0kvpc5cKSbTwjVyF7eECq?=
 =?us-ascii?Q?s8Ac6x9N2sK3592MK5epdE83f/ehotCMB8tPTRazkAg8xebSFgxyPqZLgIh/?=
 =?us-ascii?Q?xm+lpTuw5oN3NKwu/lVVklTRm1xQP4uXajEgMpNXuU70QnvbGU4FIkNKNE6d?=
 =?us-ascii?Q?ynwSP0ScKleTyJSDSJw8eqTRH4MPCoh84VN3a4u/Nd5EQVhsnkolORK0yjPw?=
 =?us-ascii?Q?muxvS6pbIwuTKUqB4i7ep8TV0tPFT9joqoCKCmvT8x2v/ANA0nLS1I1cj4C2?=
 =?us-ascii?Q?eS1aDSDaW9GlC0Lb8eALBCTIwJdpfvhxFLbHsC6IIZFvCsweD6im7tFwigwq?=
 =?us-ascii?Q?AkIR1kcSz0HRSIzr7qofJCxzuj86jJPPI/uyoWy4hpWZWqw0+QJw4quS8aEz?=
 =?us-ascii?Q?rZfwyoB5GMbK6acxYt3MJJ68fKrtmzHpfh+C6qeFyx5E/9zJt4/M0pDFOglg?=
 =?us-ascii?Q?QjXMtccSyniFzOwl9P+IovjKK+Us8ADLj1FGzx+5rIw/jnHwTAy8NlV3he3a?=
 =?us-ascii?Q?WqD1RQZUvR3LfKxKJHzjTkz4vAQpzq7fPo08XuKiGUM9s6f43PyJbKaXF+Dp?=
 =?us-ascii?Q?mVDOOW0MTeiUNfwJPTAd65pYMWiPerUhVpW9avLnEpA74rLYqvyfvh/2y8w+?=
 =?us-ascii?Q?Df3eetmlYiorn3QKgqhsYCHcdxwrLeHjIqEpv9swhV4i+XxWTbMuYJpdxiEU?=
 =?us-ascii?Q?eyGFdbHbhkmO0h9qLXSA+2QJBWcp0PGAmh9eaz5Oq0HsBnjHZnIJA6uGl9Im?=
 =?us-ascii?Q?VluIkK37QFuSJc9bl96lekmDQSke/vtu7mTekphFEfXj747CQLMcmFtD9wH0?=
 =?us-ascii?Q?P34ksts+kHewmyaQ3/3FI3NjZDQ77unNvPTUktz4Ym2+R1VNpTzZOj/k/lQ0?=
 =?us-ascii?Q?VA3CfVCfGvPuG9WabwZhQHIjzPFnaFwsU24wWKaIUom2xLStyS+ELDthiFhS?=
 =?us-ascii?Q?+zkxfl5fO7i9AQwV1GvN8n/hhf+eoRWan3QiKALQZFIrknWbflu8xXLqc3iw?=
 =?us-ascii?Q?UyfCp8THsYwIUF4KWfnH+oqW/EcPT56DiiLlN/1uKw4ThIpiVHkk9fv1rEaO?=
 =?us-ascii?Q?3fQkw5QNriITK2fV16vXqqkQIDCmKgA2CgRLo70ExXxw96mJ9efqyKSMLpp+?=
 =?us-ascii?Q?Kl9tQI7nvSTFyc+op0Atqvg5I17HxG8g92t9HrN9PnZWwCGVQNvmhknbREHK?=
 =?us-ascii?Q?/ipeMBEqFv+JUDas6eai6g1srGLSPcsdi0PuoQQM+IToK8YXwLpeM/tycmED?=
 =?us-ascii?Q?Nzo1nFw0Y40sdK21EsqFJziDY12n3FJiqyDRe1GTZ4UEStteJ3udrzH/NlPB?=
 =?us-ascii?Q?WuuQVJe0Afw+4tQbbwKyjduM7h2dnn1AjlROetfoKzHCg8wri2nJutxtJqXg?=
 =?us-ascii?Q?oQjXNMXmKeJdjjF7fTYhUElE8TyG56BVC2R6Yf5yNViV2gBUJ9237PTw+31O?=
 =?us-ascii?Q?S0cJ0a3lfcwRq9o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1D8MeCxNWYzgkIxaYPN1PxOZFY82umQyfzXHVLA2+PQV9g4qgoRc7+KQjQks?=
 =?us-ascii?Q?//Ko2CspetK5+XOT5gsGutC9/jOEf22hQE9cVvO+603nm6En4g82XlTIMK5l?=
 =?us-ascii?Q?WAxx1x2lcOjR548iqXeQUcxprdrqNcnpEtMig+nVUaVKIy0bxXogobALiQ3g?=
 =?us-ascii?Q?IxdJaHoqWdHThKelFkJonf/NkUUuaxANSR5/sEEz4ngVCikW6KUVT/B0cS1r?=
 =?us-ascii?Q?TrspXmbHRBTCgxUEs1CgvDomTkilzDms3rpUm+IJ11uy5AW7veitiv6JZ4ba?=
 =?us-ascii?Q?YpQVDpH7GiAbIma3XmtLyqRNvs8FxKZFC0OdPwgYWMipls5uaD0JuinvkixQ?=
 =?us-ascii?Q?FNKayeBd6QRFVyHl7zbVps7X/CHISTXgmbSJOqe4yz0k97zfoqtOnAgg9SNr?=
 =?us-ascii?Q?MmGGLMwMaH/tvW4VtdIkq+2Q6b1tyH80pNe2TxVDHfyPbeiV5jGcD5saN8wv?=
 =?us-ascii?Q?dXdeKCdox2UCC2+lrjHlnlCDrwbnojq9gF4KX0dcdhVs7exyOc7CoHcMEZ/V?=
 =?us-ascii?Q?Su1Kh4rtHgH/DKXsOItQKoz0JaE08QR5R4zxSmAvFolvN5PrNFpC99gFOPwV?=
 =?us-ascii?Q?u0y0JFHQ3Zs+GUDDOg63kUYSCpBNwLiUwCnlJApYZ0e9mU1E9L8ExEGOkV+a?=
 =?us-ascii?Q?N6oeifA1MH84UqV6CVgh3+WvgKHR6Wzy36Jo8v0GxMRM5RHxNual9OQfKy9E?=
 =?us-ascii?Q?ifLQ66j8W94L7pIP63SFXc/ieAYtzgDJAySGT8T2qA58/LzKrARvVmBaW93o?=
 =?us-ascii?Q?7D8E+oNp0ML0f9LnhxMPXjydh9+f0Gdtm3+ZLtqRlx5KjOShPbDIPgf3PH0W?=
 =?us-ascii?Q?FkrmTEWkmQncwR+FEf0TIHUg94PxeSnVT4tpzY1XLs5sdVni/Nk37dMrg9JT?=
 =?us-ascii?Q?BEYWhOf2r2Zaghk/ahmZvqoXD6hUmoJqy39veGRFzlpCPZB7buYm+MMbd9WH?=
 =?us-ascii?Q?uOuicUC0EYv+e27uX1EIUgPgIQRsQjb/mB3vBvHkcjfke2apSA5UedSIQDqR?=
 =?us-ascii?Q?5aYiFPwy/8vMls75Cw8ENPBbAsIIoNHblNcMkVCuS2EAYApS6gMlpTtBgYvR?=
 =?us-ascii?Q?6d+TTMYF0vBW4K8kkjWGi+hnWreHvSwoa7VwszZEgZvj9sXd1O0JtnwDt0Wm?=
 =?us-ascii?Q?5zH1JeQkr1dWo+oo5KuD3FZZM5iG+1CiL0LBJG5wzTPAdoWHIiYsd8wOd1G1?=
 =?us-ascii?Q?mTLBeMfo/PmZIcXd/o5ATNaChGUzKyptjBSyGgHikjRj7zWILXhMvL/wNJpR?=
 =?us-ascii?Q?+Ty1xocBnCc+6XAaKLCOkJcwUGAT5lCnG+uhV1/89Ur45vOJdgHwHmGTHTj9?=
 =?us-ascii?Q?D+yJ7yytAZVtmh7BpyRl+VIEv91TWGnCzwfJQ/FJ891LOw70HGo+eymK33I9?=
 =?us-ascii?Q?TGUFbyar8qaZpg6+7PtblQfddZ0/oKsCFjsGi/D/hegkdweRy3TXte4/0Vll?=
 =?us-ascii?Q?1TxVjY4cBcAK1l33e224LrbrghoE1nVjkCxXpYWo7+Br+zsrqjWZOzgB44x4?=
 =?us-ascii?Q?h2nOEBUMwVnGH9yrJxFT4ZTZXe3AlURKDHatoHLFR7syootn+AY0qGDBw92z?=
 =?us-ascii?Q?x2xlqCL0fGWk8HCHzqf2759wMi0MGmfVM/4Ve+tuzdO7I+tm2oIm3dD5INV/?=
 =?us-ascii?Q?YQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a663519-7162-42be-607f-08ddd8af691b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2025 08:16:45.0168 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ptuuvr1GuQFt8bTOEZpFzDEipOsFYveW5eqQFKhDaDES58ldTKSKu4guC85AeCUOrCq87G8wkJyKgZEG4FAFuqRL2AdDKiNv2uODKgCjXSg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF6E320AF71
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754900222; x=1786436222;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YLiFxTgGLaD1VsMUKkZaKLQ2fDLVZE+ObQr9uGfKIZo=;
 b=TeW5SBKopvylpAcGjY9zumZq8xYs9YLaFxZPP4+a7ImZnB7dO+czg84J
 mlbJMlPDs/SN/4oNwtAW49OP1pyEKOoAjzlMoGwoP4cbYdZu1Qez+fxEz
 OE6sKfM1ysBbOpx20l11jbgu396/QmJfKS7bI0dur7TJ8NzMQdAQkbHkT
 0CCWCfrGX/ykaKVzTD3MWd3FuuGLJzQclHVEkK7alBSjRMqZKUhG8kLF2
 FvfYN2kYohPVrmAi0l8lPoQ+2Znn60Y4BDtLrViNngVQnbUwlYsN+6b7A
 aXaYjSfVlcjNfapbcT4+EpCAX5y/oiCHX0bsK0Rlj5UvmFV5AkRskaYr6
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TeW5SBKo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect counter
 for buffer allocation failures
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Michal Kubiak
> Sent: Friday, August 8, 2025 5:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kubiak, Michal
> <michal.kubiak@intel.com>; Paul Menzel <pmenzel@molgen.mpg.de>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect counter
> for buffer allocation failures
>=20
> Currently, the driver increments `alloc_page_failed` when buffer
> allocation fails
> in `ice_clean_rx_irq()`. However, this counter is intended for page
> allocation
> failures, not buffer allocation issues.
>=20
> This patch corrects the counter by incrementing `alloc_buf_failed`
> instead,
> ensuring accurate statistics reporting for buffer allocation failures.
>=20
> Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx
> side")
> Reported-by: Jacob Keller <jacob.e.keller@intel.com>
> Suggested-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c
> b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 93907ab2eac7..1b1ebfd347ef 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -1337,7 +1337,7 @@ static int ice_clean_rx_irq(struct ice_rx_ring
> *rx_ring, int budget)
>  			skb =3D ice_construct_skb(rx_ring, xdp);
>  		/* exit if we failed to retrieve a buffer */
>  		if (!skb) {
> -			rx_ring->ring_stats-
> >rx_stats.alloc_page_failed++;
> +			rx_ring->ring_stats->rx_stats.alloc_buf_failed++;
>  			xdp_verdict =3D ICE_XDP_CONSUMED;
>  		}
>  		ice_put_rx_mbuf(rx_ring, xdp, ntc, xdp_verdict);
> --
> 2.45.2

