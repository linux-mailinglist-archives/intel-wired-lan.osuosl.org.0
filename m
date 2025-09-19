Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7378EB885CC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Sep 2025 10:15:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29D0A8100D;
	Fri, 19 Sep 2025 08:15:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZmsjRE5DkOam; Fri, 19 Sep 2025 08:15:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B4AC81011
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758269720;
	bh=My4kX2s7eTIiYzEjQ/kukVm/VRd1N3Izl+8pYl6hX4I=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SPnqxLHpL81LjDMpAHolGe7dV/YpdpLenBIbkytK6p7pnjefncX4+8UFfVHDkaTGI
	 c50ocQ2tsBDyi4K/rl2kGaYlEADLmEpK9oP5yjwOVyJtfvPEAlcyXGG1Mauj63DY1p
	 PlEqdGW3vXEbNVo5mhl4mOUQDVuDnxLc/K1jwpa+4reLEbtd5jpoUJjsyFNrbwu7lm
	 di4b5Bz7owFGkf47cYA1DmGmlcDIGyEqQ6rUT6TFF5Ua8GpHUvOUvHEQD3Qa212QR0
	 iKCLM2uh1+PhJD7L/POaqF3Bnl+YHY5djJLuqEDEyKRAJW8m3LPKrAKofPji8bTIie
	 Jzti36ABrQ6BA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B4AC81011;
	Fri, 19 Sep 2025 08:15:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 39E1D273
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 08:15:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2BB3240DCD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 08:15:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7osWUyoecGg0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Sep 2025 08:15:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 635A640DCB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 635A640DCB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 635A640DCB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 08:15:17 +0000 (UTC)
X-CSE-ConnectionGUID: /GRP9NqQSqeAMnSY5EBMNA==
X-CSE-MsgGUID: AQ1jWvw4RcuonfssMjajmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="59653446"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="59653446"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 01:15:17 -0700
X-CSE-ConnectionGUID: V1jJMH7RSbWq8t1szVwevA==
X-CSE-MsgGUID: QnTjfvEtQD+r60TdDcun6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="180194176"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 01:15:17 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 01:15:16 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 19 Sep 2025 01:15:16 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.17) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 01:15:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w9ORRVPu8qsE8fE5RrmWrLHFBuN1RS0Jyn2VirHxxzFXzfF1YV1gC2BSRhIGXeUKKOzIOlgZFjL8gYJ91ve0R+9iyS1Rs8xvckn87MqN0xouE5yO7l3oD3YfEfbCJNB1ZUZLh351lNnd3kbnoAQyAe71q/LiuDNOC5PZImnIxfMSjpiOMknlGO8OPRt8MlWeGzr/D92Mu/a8IdKDfKB9sqRaru7ID1ytN5pV9ux2YW8QqTi79p8aDGF1+YsLbyrUmeS0yEDFHAaxu/dsbJt294FUJrHvl9MMML+8PvKSY0gRoetkiHnTt+nHkF6f/XwogNiHxAF87KHCZc/AxuIrbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=My4kX2s7eTIiYzEjQ/kukVm/VRd1N3Izl+8pYl6hX4I=;
 b=Jo109qtuLhOEs+Cl+tJZo0IcyAGZHpgfZOf8FTGh6YvR7xZl5Ks9ZJzOimHwCN+S3cMJfml0ohEWyijdFnsWBQ7CSpv57H2zDyHLbyXKsA+eNNPdSXdVvhgIbf23+bGXfeIGTY2XlXUaDy2vqMBX9ycnn8PeMUKaS9f6Z9ED/naJQg3RTcIRT2EUOuW9OWHfPpMvae8GScGkvarYrL+66rZ+TkSwHwZH0sMAC9dDCjYqpPDtzndKa5Tdj96KYYG6J7w1Hr7TH8mhtvsGml7QEWg/ZQljFTp8czbdaW9mQtZzklA2MKLXuDoK0YNTClLiDqi5t3sek1zJA6BbEIkVsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by SA0PR11MB4638.namprd11.prod.outlook.com (2603:10b6:806:73::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Fri, 19 Sep
 2025 08:15:06 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9115.022; Fri, 19 Sep 2025
 08:15:06 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1 1/4] ixgbevf: fix getting
 link speed data for E610 devices
Thread-Index: AQHcGATe1qX06oP4XUeUlZfA7LMv4rSaStwg
Date: Fri, 19 Sep 2025 08:15:06 +0000
Message-ID: <IA3PR11MB8985D1684444D046266572DE8F11A@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250828095227.1857066-1-jedrzej.jagielski@intel.com>
 <20250828095227.1857066-2-jedrzej.jagielski@intel.com>
In-Reply-To: <20250828095227.1857066-2-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|SA0PR11MB4638:EE_
x-ms-office365-filtering-correlation-id: ad2c8b1d-9cfe-4f56-99a4-08ddf754a49a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?PhB7vwFOYRVPzQzk3WmsRsljCWA+zSnU0Qsygi36UxVsHg4Q0QwjjrScuza1?=
 =?us-ascii?Q?Dr4T41lePKyuwWzF4nSbBPN/hUCrX2IBlwmrAz41UxVIIHD9VWf6OKfYbg0G?=
 =?us-ascii?Q?5voW6kzEETM/i4rt72MPytd7/klJF90EpB3Xnxq1h6ARkoL1hnYE0J3E3ne9?=
 =?us-ascii?Q?B4m7MImrgaAXXHSE5/yIDdZgt+JTCZCpe6hqdSzWICa/uO07Jby/QlPNzsiZ?=
 =?us-ascii?Q?BFu1CWqDhxckOz0N3zYvQeUluK6++jNj3Ux4Lob6+6u4/w8mhtznFHfcdDsP?=
 =?us-ascii?Q?Ioth9766xc/Pf881leJikqicerZFnjMxDIBxa2q70LFzy00Tvrd1zAyOHl+r?=
 =?us-ascii?Q?Xx7Ry1XIrM2wCWYdfdriS29sFWF0LbuXxphDECCQmdcbnQAkZt4G8Tsiq0sd?=
 =?us-ascii?Q?JFBmx+REQ+upDGQRpwdcBiSjOFZaxfj4ufJucfMH5AWLgU78YEoZxcuSQn2T?=
 =?us-ascii?Q?V/eah9ixu9Z4TS+J+eYW9ynPOWs1gHsLbOkrxmiBhIIJOA4ObCHpGVVAKk4k?=
 =?us-ascii?Q?bdi8vqU+gDfZgXa7FRu6yhQq4w6wZjzPhLKgZdufT3GkOQjAhYc/uW3INTiA?=
 =?us-ascii?Q?Ps3rqm1ejbNh7evk/mT5tJ/G8T0ugqjLQutv6HG0rghi8l8QiXflNzJfPbLX?=
 =?us-ascii?Q?N5aXTO15+Ygap/83itufe3LS4KoSzV/947Kma4yzgzY084Zpn47VNjYz4lao?=
 =?us-ascii?Q?8/3x9ySIlP9rfORX8OY2kXi2xF2bMzRsxGSaKWKSXL5+n/du4fL3tDDQOinG?=
 =?us-ascii?Q?AWmErK5e8TgK5IQCeO13uGOGpwuwB/khYjbZF4jLKjVIcVojE6wIiBBlmqMe?=
 =?us-ascii?Q?kqNpNzMz0Cz9EHrr5TIRXMNH77wTY0nMGe/Ez0ytSZDNTBiWiO4RdikI/SQq?=
 =?us-ascii?Q?2DssnikIrLAo5cR1AcIHq2AFEsvHn+IHCm0kAtpSYd6cnoqDKtLpfd6Sj+xn?=
 =?us-ascii?Q?p4ZFQTiJK5OoNpQW27FuEIYWoxHuWAcuWf37tTl5un+2PlTog43VOiDgvJlU?=
 =?us-ascii?Q?keC0oqLt7RqX8qXSLHDdq9RwNltwtWKyKR8CcexWosmtS73wvh+1Yhx6DFfV?=
 =?us-ascii?Q?HHGJHIVwLrtOJEH/BUBY5vgscXczaGEVLzPJq7o7TINf1v0Ac+3X1TgtTqgH?=
 =?us-ascii?Q?ZBObK7K89YjUgL190CY5g41MGrpskGGcOobIVsa8EKCy1ERItXl/SryKIx+i?=
 =?us-ascii?Q?bhvamxlfFMHodIuU/rNJ42jCbi+sinSO9O2X+ildDLkBbeDqAsDd4qzix8qt?=
 =?us-ascii?Q?vsUJBjXlKXF8V9psmNZ1n9g2NtKgVqvG40TzutcOA00jMERvJfQOQpO085Tq?=
 =?us-ascii?Q?943xyLyD68JY2RecxIm2QQz2lzgl91NwYpXgXij0++efv1rLSN1gNohj7a63?=
 =?us-ascii?Q?sTOl9/xZ8eClIQ8nZg3dfc8UgIhv4zeIzucxS051+AHLwSGxRz1zhyB39DRM?=
 =?us-ascii?Q?nzTFeuLGDtf1qk/yL6GaIys9fmUyPpohykWLTEbWSwSYvglSOeshdw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GZvPHZKIDkUlLBgYk0Ekfai+L4SdiYsRtczPXToQt9eds/FiomVNjogS3qZg?=
 =?us-ascii?Q?dmpUc0DtK9IYWa9SMixNLR3IvFh7Q5UN8shfxMTR3A+sjUT4TOajlMuHCFsK?=
 =?us-ascii?Q?AxVfx9/5W4PvnTzHkuk7xWS3Ur2VoAHQKUdm7H14qGf2LGF3Z0TKOylq22vF?=
 =?us-ascii?Q?qsEpBUjS//wFeHm8/c9ELZ6XQfAtrYGLMhcxcVnrfkNcngHuWyzwbghpV2t6?=
 =?us-ascii?Q?stQ6AD1Q8XSpsEySp/aqMrjmKAs3GATcWaQiq+fCuyvuhNheakssP37ELkyd?=
 =?us-ascii?Q?TrKcDlumrJuvNwwRYiOXpRKUimi+DBIcJDvuLN0l7P57fCrtiMiyIOe9QD8O?=
 =?us-ascii?Q?4t7oaPyKT6CgLMX/hxnVmM391NxQIIiTfgbesxW9vaum8+dkFtswxgDRkHgS?=
 =?us-ascii?Q?q5Bx1a0LUk6TJdtOkERbqHDzULKyNXERaKcrf4tSAXxq2rl+aUjk24rOAMgm?=
 =?us-ascii?Q?UYiMgQJ/Qbdc2sUeEVZ7DGyjZIBySFbfkvvTf67FIR6JOzy8vyNBob4Oj1kK?=
 =?us-ascii?Q?bxFCXRqDG74uGwYMiQ7C9V7Qw1/FXDDEauO/boneU58RsML44CfrQlu0V6gm?=
 =?us-ascii?Q?gEmD0AuKeK6DVp4NGcRaUL8vFJK+xCQekfsTJGej7WNXdufwDnFlHMfD70xm?=
 =?us-ascii?Q?fEz0Mw8aASbSv+QVI0DFrnmEHbvt4JB6R2l3cPYNN8/E7nfxiP1l/YRTJBdH?=
 =?us-ascii?Q?i84mnXI3hhq+0oK0Kqgbi4mAn3KZjWSefi3ZO1g4iOB4QwbrxSXrTHXtW23C?=
 =?us-ascii?Q?w/SL72geXFua9/LEMmbtIqmknNBdK8nSc/IHjK2DSvP1dmypS9k5SV7uathP?=
 =?us-ascii?Q?xn/CHl4Z2QadJ5+scaci5hIOSXpFh7I+FNfoJKcyKwyT/gkv5+Sh+8x5FmP0?=
 =?us-ascii?Q?/gx8J5Heq87r2ayyhvEHEEQ0Fq9S957B/YQA4tPzgZDRCLiEA3EsSl6yUGmO?=
 =?us-ascii?Q?EHEiODkORg66P/thWvX3CJC8QS3kQiquKF25N0DVRDDQ6j7okp+U1BH+72tO?=
 =?us-ascii?Q?/fyvEY2ypjqIISzluMOfq4/INx/+7lWcJXCVlEBmtdUzlyvGfahLgiug3OUv?=
 =?us-ascii?Q?zbjsLCeXdxy1YWCzAf4hV4pkPe0aGbaG+rO5sF6IfSbZOFJVDfKylhlRltdJ?=
 =?us-ascii?Q?nAfHEWzdXiWyDN6TXerBEWGTKhoNpN/UtF2AGPyMmkxFMhjGt/G1hqWyer9f?=
 =?us-ascii?Q?jOj+qIO0ti9Z0DiPgxU4Nh0uUQlvh+o3DDYtejb/k3n77y+HiqA3nmA5ZEF4?=
 =?us-ascii?Q?LpQwTinne1GrYBdvrkDlq/KZzv3gIk2q4XkRvZYP2BupPOhZBl3PwK3mezx0?=
 =?us-ascii?Q?Q3lPYG7NobAcWYhxdjzeSSKolckEpBy1IzRTEpk6aimSmSLO0V11q551OU1K?=
 =?us-ascii?Q?dzqXh+VMWndEgqwSBDdQuSYDSbbufKEbLo1+sIU78A/gLaR4dJaAGBXgY+3O?=
 =?us-ascii?Q?OA5rw6yioHmUB8PeUXDersYUIKCJ9f7I1/+AhAl1KHQglWmBFA4p1j0WOcFJ?=
 =?us-ascii?Q?/FSkdlhN8pM0Ni+QedyT8kChfoNUnraGGRnFQvLOwdsEZFkLOhZ3PO1GPjc+?=
 =?us-ascii?Q?RSRUApKcDWGX1STTYq+8U8wcC3ZdeSIJTyB3wu/5HUuSEsnLqrWvAnZcYoHx?=
 =?us-ascii?Q?vA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad2c8b1d-9cfe-4f56-99a4-08ddf754a49a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2025 08:15:06.6876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MjxRqfczkMu9f36PXv8npBz06vuhx2x2C97WpxOgMQoZlapcAc9LRpvQ+UII1KW3POSVFiS1KAfxiS60laULrFQHSGgwytq3Mz9dBTMo8v8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4638
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758269717; x=1789805717;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CBeQJ8Zgg51ndVdJThmFwMQh6oTy8yIFjZWGRaNACwo=;
 b=BQxDAsQix6yescCPAePNgTC/TNzklUArHPYpasNd1cCvw2swa438zxDf
 bIM3NROWjpkTSzwyk60WZT5R2HO86phGIXmQnhn94pVA2y/ri0hgGtaBG
 nXl0tDLCj5hdg7sgBHTuUxH5K/a78xGHZELbcnDro5rCjZHN4E4Sb7dm3
 gQngChCILUInXC7U5S4+85y7PqkQJ44WEhLXKtYINFWWsWqaeTcQxqAMb
 PwkAztb/QBAjuZXh9LNvH/jS6594Pi0WS9KSH57NYPcSkOReOJ6gmCKvt
 m70eqf9AjTuN0HSHnOSefsgMOdyd8J2KHJZHMvxGK3/503IqXPakRHVMZ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BQxDAsQi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/4] ixgbevf: fix getting
 link speed data for E610 devices
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
> Sent: Thursday, August 28, 2025 11:52 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; stable@vger.kernel.org; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/4] ixgbevf: fix getting li=
nk speed
> data for E610 devices
>=20
> E610 adapters no longer use the VFLINKS register to read PF's link speed =
and
> linkup state. As a result VF driver cannot get actual link state and it i=
ncorrectly
> reports 10G which is the default option.
> It leads to a situation where even 1G adapters print 10G as actual link s=
peed.
> The same happens when PF driver set speed different than 10G.
>=20
> Add new mailbox operation to let the VF driver request a PF driver to pro=
vide
> actual link data. Update the mailbox api to v1.6.
>=20
> Incorporate both ways of getting link status within the legacy
> ixgbe_check_mac_link_vf() function.
>=20
> Fixes: 4c44b450c69b ("ixgbevf: Add support for Intel(R) E610 device")
> Co-developed-by: Andrzej Wilczynski <andrzejx.wilczynski@intel.com>
> Signed-off-by: Andrzej Wilczynski <andrzejx.wilczynski@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbevf/defines.h  |   1 +
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |   6 +-
>  drivers/net/ethernet/intel/ixgbevf/mbx.h      |   4 +
>  drivers/net/ethernet/intel/ixgbevf/vf.c       | 137 ++++++++++++++----
>  4 files changed, 116 insertions(+), 32 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbevf/defines.h
> b/drivers/net/ethernet/intel/ixgbevf/defines.h
> index a9bc96f6399d..e177d1d58696 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/defines.h
> +++ b/drivers/net/ethernet/intel/ixgbevf/defines.h
> @@ -28,6 +28,7 @@


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


