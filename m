Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBS5GvHexGnz4gQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 08:23:29 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 824D0330606
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 08:23:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0AA5E60870;
	Thu, 26 Mar 2026 07:23:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J_FsKjK2kLBb; Thu, 26 Mar 2026 07:23:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7699760853
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774509806;
	bh=oLZchHQzcbPRd6Lav26WKSLFhf9C/T0+DO3W7DCJzCk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bXDPo59v8GOZs2XL/wKMX7oqSKj93wlJXIl756A24Cd+0rvCLuL3idv2RniJWvYOf
	 qNqy45a43soD8sFKjZgZaMrWJavEnfjiaijsU7+tBzjThUKNQ6PuOcs6UecnnC3ZpW
	 +aoRkjjvRm8CW4p9ZLXFMpTdTn4hyhqMc1o6r1jurU1xyUMLrDHYHhPRoUCVE2637H
	 dZMTye65ZukD+qYKMxffUVg4CpPXyuATDM/CGGFeBeVxDerf1fSbYssCUulqnhshAP
	 Tm2YxhWtvFFozAmcfl4L+u5TLx3QQgJLyC1ficxAKVs6DWTro8L2ayf0TL9M16+sHn
	 RXrm4VQNHBN6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7699760853;
	Thu, 26 Mar 2026 07:23:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 68757F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:23:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 59AE060828
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:23:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gEiOqRexlxxO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 07:23:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7C386607AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C386607AC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C386607AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:23:23 +0000 (UTC)
X-CSE-ConnectionGUID: 1J5KyATESVql7h8T95CIuQ==
X-CSE-MsgGUID: Xra2L7p3RGCwiL3J5g859Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="86637700"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="86637700"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 00:23:22 -0700
X-CSE-ConnectionGUID: TGwwyLTxSZmZIdcWN3Bi9g==
X-CSE-MsgGUID: Y+P3IvTaSrqftrDwVRGL8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="220081554"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 00:23:21 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 00:23:20 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Mar 2026 00:23:20 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.0) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 00:23:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mWvoCIUqTji2OBx5dt5xCZtXgSM5z01CnQJIatTZ8olNsYxLS34C0qFjtWp6NHZ36jjJP6DNvwTyHIFytM4RyCO8cAcluadFg/iKk4Sf4/5IW2Tnt9GF4k1jkS1T9ZbQnQi9Yba9/Rbf3PMAk8soG+0N30Cr5j8oNjqBxLjQVQ4uB2xo+6E5+XkAwun+TlBB1dLq6wkclzsxjRSMz/V8s7eRHrT5TFAzcDb9oI9ceQjn+vcyONo/Kt+zJG76s2vFovpBh/hEDq6JEbV2V/xxT8lgFmZirf0GZ9DURVlvE+DHrrhjEBpDB2O0jP9FmeLchvgr95UMxybVRP7DcBrLMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oLZchHQzcbPRd6Lav26WKSLFhf9C/T0+DO3W7DCJzCk=;
 b=CCAMO0feDcDrOuTVlLyDgfG3yBOh96yUMXOHjQk/i8jq0BDUjLRvO3MZ+Qkh3BccE65ydmAKixx33NPPPOv5fuF+V8EXmBCRpHs59QBx3CEfso82chbRNBVW1IEE9qjp+3LlZoIoXQm5O8/4cs738FPHAfDeZnJnU23fmO3K5QOsJ/QWF5C2i2ITujpaB9lfR9ny3hAIFCrAq8AGnsLypCZKJnln6qk5BiyPXIOuj/QjnwZeTJ41tCGcTvdqhJkr/vkjJhoa8yaJeR8y0y+g4vLCXfjyQMzpBI6b5R7vEJXMn6nj1Yf2KyCcrY6Gj+vPtXzp+BNfvt1Gu/lxrLCpVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM3PPF341F90799.namprd11.prod.outlook.com (2603:10b6:f:fc00::f19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Thu, 26 Mar
 2026 07:23:17 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Thu, 26 Mar 2026
 07:23:17 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <kohei@enjuk.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Shannon Nelson
 <sln@onemain.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] i40e: don't advertise
 IFF_SUPP_NOFCS
Thread-Index: AQHcvJk66RGiez+zKUixZnygSTb52bXAaYRg
Date: Thu, 26 Mar 2026 07:23:17 +0000
Message-ID: <IA3PR11MB898686D49226320C5A0C2913E556A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260325205054.109822-1-kohei@enjuk.jp>
In-Reply-To: <20260325205054.109822-1-kohei@enjuk.jp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM3PPF341F90799:EE_
x-ms-office365-filtering-correlation-id: e3a697f4-64f1-49f7-a548-08de8b088cec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|56012099003|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: RYTtjedKkm27okvSiuTc9lorCIR/MzsGpkvm6c7X/CSMn2evOz/itQISzPGCkP8vBt4X5tkQBT4NvJfgun0rOPpvxjEkZ1s8KTfGBSVmL8O6mjmSyB/kynVb6rKvB0yanUcONYL/kf+8flctJAw+Qe51RIHgz+iz0Q8U3gs10rYQvBP5HWDL0IA16Osg2+8cnbc5gZFAbKBferDE9mKzy4o+LGjI6RejahGN7/JNwEAn21N0zCfjHMdgj9UlLT+OOn2vZ0u5CzLbzeh4BB1y7TMZfT/uyKLk2B+rt6knB0xsivz5XFfUzFBieWpyQn6ldRYXWk1id6WaXlJ+07qp3ljCEYeXtYoXzNkSBN7NpvnkefilK4JdnC/GgefCInAmFzv3oQXKjHVVA1CajRauDfQxzsjvh6WAc4j17/ph7d0u/T6+pFuLYWCKh9fF9nxxerBNpLQmgMhdt4jeHNZ/tMMmHHhk/teb9ihJIQywwtYT9Brt6hzJC28aKJr1nedIddZViVpxBZJNS6rVQC55yCUFxJ9gdXuov5TUg6gBO+LX/a/ncfvg9b96SJx5AVt/Duth7nFYqb/v8vOwtn7BqnXxbCmHpxLfYFXlwvgZx3J9Y6zKO4SkSANwK1MLTuntRiS/U2jOi75iibIMGK1QxiUBrxhQnFqqjrUPoQexy/TkzKxoh9jbcvS0HLGhHRuVamiTSbSKP78pG8U7XzU1cW/WkSJ7ttOdzNMii2VdKe/ZYprBDzn4nBiUUj2LSjHhjo62NrX6yJ5/c+skwZiuECGKASPdzPtQ1q0Sxmg3Dq4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(56012099003)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gKv+Fx/Zigcr89de08cE5CCNBdcWb4PSCmhGmoif5fkD9TcQ4oR+w9hMWMSf?=
 =?us-ascii?Q?HCDxRZgbOXIx2W/GuwvSOhG3KwMOviJ2bL85am4FgtkzzJ0bmne8gjhrsKs6?=
 =?us-ascii?Q?vV82CYGqRdqq0G2GXP1Gyv4/NxaHk/YmDFnJKjPE2IzDqYKB0nLMHMENAXYa?=
 =?us-ascii?Q?/SaHcNExxcLvRgkDCuxtIIUl2O04vvVoa1fbugZ2FId3OWDvVGtPMvYIDnbq?=
 =?us-ascii?Q?jVjEA7qjl1QL7X9E4XISg/23x/a3WuTJujie8i21ZgcKACht2ph6JjgfLKzE?=
 =?us-ascii?Q?0yANMsDR7zdKYguil/6VDef+X5269FTJHbIPlQ1haBWMsM8r6DRsvF/Ifcsl?=
 =?us-ascii?Q?hjOHCY8MzU1Qnq2q7PBjh/FrwKM3K620T9SBNg/IlRCMweNGfs93seH0ESav?=
 =?us-ascii?Q?ikRjIDh08r33IYE+1VsOZqqylkXqOb7jAG2xleGl2T9ymGwMX234RvVEMXUV?=
 =?us-ascii?Q?qCJFzUsJrROAJ7s0OHrM2xmpXjRevCWA9hQ4WQKmH6VBRDb+9J/bpjv3XioS?=
 =?us-ascii?Q?LJQju1KXlf8kSvOhk7PQeMc6MyNAuZ/b6NOeXLejW8IF716h+F5PZGHXKHpD?=
 =?us-ascii?Q?JyTTe4p/7SKcIihmi+hkpWS40xaC9yTNjgZROPhqISP618uJddAC8YkA505P?=
 =?us-ascii?Q?xqUmkj3KT0F7IdzjidsNKCeaI2Wvm31nw0VstxOXxeEsngRWb0RcPKM84rZp?=
 =?us-ascii?Q?FoCk54/lfyd9Yn1ppg7N/WNPaZmB66/WcCUiIDoZ/Jjh2HghtItrHajKkt0o?=
 =?us-ascii?Q?EM5ToLhLB2FGrO+qHXPNINYGmCnWT2zYSdNSS45jG8AHe+JMN9FSWa/NljXH?=
 =?us-ascii?Q?Qj7VWBWP6FteItx+3Fp/ZLsJHXi/LEP1KXbMSa73uoKZuqy1kuDNCKS7cKAx?=
 =?us-ascii?Q?ML+gYexpQWy3QhCauuYD1WxKAycUj5EaZgpDhHmne5y3a1aA8Y75+1h4MQ4G?=
 =?us-ascii?Q?zFZ4CC+vT7Ecd/XexTpNniWTgoJLV3OgItyLrPOakwaKbFEJCRg7sq+e+/BQ?=
 =?us-ascii?Q?1CJq+QbJVJsd3mxKILOY0B8jEA5Nl6iYHOfb5acGjSk1iQ+rAMmfZFREQdGI?=
 =?us-ascii?Q?oqV/g+MlUhN396GCv/vTLWO4piRyQjuWVjKcSPxBBv/ji7oIPP8PoC9tpe+x?=
 =?us-ascii?Q?tXw/5kJakIuRkAoNHUocNSbNQ52GTE1DG+mfyAb7/NT3GcGtxQSvS0sC3o9P?=
 =?us-ascii?Q?fXYXJDSUTZEDBAiqCIeKZlMjzgiHGTM1/tY5wn56zmpztPwkPieFX5i/l/hh?=
 =?us-ascii?Q?b+VU3icNk8+0zqZCzSSh3zeF+OSt4j7sUwtqxCLxBmYvdgdNrW6ARABbRGm2?=
 =?us-ascii?Q?1560zjUyicre+SG0zcYte4fAcZqWIJGbCkq0c7D3B/a0hwutzfblz0BZJgQQ?=
 =?us-ascii?Q?GpNT36GgEIG21IZBAx+SaEmif86qGp34E/2V0SMBmgPfL07c0LS6f8LRrPLy?=
 =?us-ascii?Q?aDZ0XtXYYDswrP/NiBNVxn58SiPRZ2wlCebNrImgUuKb7CI+6izlNRVdUp8N?=
 =?us-ascii?Q?2y4SOLnppffX6y7tbreZowWV1FGYQVdPPEwtuwbwx+6Ky1EltnidacG/PPJJ?=
 =?us-ascii?Q?7YPwdzxbpWW3aD70YhWH3R/wB8chOG3Zu0aiF2Cf31S/mQwAYGOcPzI3O2bQ?=
 =?us-ascii?Q?whiNj1r1RhkigqDpFPAGxMW0ioJr/a5odZMtmGLqWNm8q3D5FY6/QiXB8HZc?=
 =?us-ascii?Q?wzdc5Ldt+ng6ia88+oqA0N6Fz4sDBTx9o8PpRHQTeRu1bP1U4lxFHyMCf6LC?=
 =?us-ascii?Q?d6YQNTDYwsbWAXZ9PHw/RJRaRvE/T9Y=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: mxFbiflVgyFCVR5isyK2tnTslquWV88n96pMrEqoRSkUZhjFYsOj4eDeKDVHbZmIM/AV46wM/3kCv03EUbkYRIosqv9K4DUdhJp+OmoouPSEo9XBVDneEa75xhFuWipdTMX04efixAyM7rjMQp1MYcUA95vhxIhvJqPaRR/HOD0bky/feNJJw4eM0nx/0K977Yj7khjBwZqhYPOEEuAgC4Buw/B5E8MGP9J8fsJVxtRv12NR55W/haQfGaJSbbZZi+/jnkIOSz4++/MfIig1aiVRnaJS+Mhus1Z04X/2pzp/FyacspYAqyRE4Aw+WqzLet5nmImVO8JgIHkLuFR9kg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3a697f4-64f1-49f7-a548-08de8b088cec
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 07:23:17.3027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S2p8+xIecrXVpeP0VrieSy8ZpRTbQ6i4gGDe3I5uV4XPO1qPP1dYXkzFOmEFjWSfBlFNov0wF6QsqmRPowrOSW24+urfbdrTytK/JBtR3QQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF341F90799
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774509803; x=1806045803;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EFFUfzyeskG2Jl2TqmkIjj+xct54G/YIvRRlpqE3pbw=;
 b=Q80YLur8w0hT58PcOX3UzYhiS0+fAYQr2Qt/Kzb4tUn79BmJ3YjAIaf+
 UAn0D7UknE0iMreAjukDtbZ1/4l54SgonwLwsE1o5vsIT5UfGPhn/Zylz
 g40whE86faFLsM9BvzI5TyFDxltYIMW4pCic+LiNyYNKyTd6iwZ9G5ySw
 sPFPlTB/em+rCABNeIbfthU3nItOnmj7760/CivCMOeC0KTTtyoTyj9vV
 0hGuXwm/dzIOmdQdF3uvgaNka84gq8REtwzxIV9ljYEag/+K7JYCYdSO/
 o8kfwUx6oeNit2LCgVEzBNRdOd02XA5as4Aop34mzXUgbA0hLe4m64kfZ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Q80YLur8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: don't advertise
 IFF_SUPP_NOFCS
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:sln@onemain.com,m:jesse.brandeburg@intel.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,onemain.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 824D0330606
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kohei Enju
> Sent: Wednesday, March 25, 2026 9:50 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Shannon Nelson <sln@onemain.com>; Jesse
> Brandeburg <jesse.brandeburg@intel.com>; kohei.enju@gmail.com; Kohei
> Enju <kohei@enjuk.jp>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] i40e: don't advertise
> IFF_SUPP_NOFCS
>=20
> i40e advertises IFF_SUPP_NOFCS, allowing users to use the SO_NOFCS
> socket option. However, this option is silently ignored, as the driver
> does not check skb->no_fcs, and always enables FCS insertion offload.
>=20
> Fix this by removing the advertisement of IFF_SUPP_NOFCS.
>=20
> This behavior can be reproduced with a simple AF_PACKET socket:
>=20
>   import socket
>   s =3D socket.socket(socket.AF_PACKET, socket.SOCK_RAW)
>   s.setsockopt(socket.SOL_SOCKET, 43, 1) # SO_NOFCS
>   s.bind(("eth0", 0))
>   s.send(b'\xff' * 64)
>=20
> Previously, send() succeeds but the driver ignores SO_NOFCS.
> With this change, send() fails with -EPROTONOSUPPORT, as expected.
>=20
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 3749f32ef95a..a3c52aa6255b 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -13831,7 +13831,6 @@ static int i40e_config_netdev(struct i40e_vsi
> *vsi)
>  	netdev->neigh_priv_len =3D sizeof(u32) * 4;
>=20
>  	netdev->priv_flags |=3D IFF_UNICAST_FLT;
> -	netdev->priv_flags |=3D IFF_SUPP_NOFCS;
>  	/* Setup netdev TC information */
>  	i40e_vsi_config_netdev_tc(vsi, vsi->tc_config.enabled_tc);
>=20
> --
> 2.51.0

I'd recommend to add Cc: stable@vger.kernel.org

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
