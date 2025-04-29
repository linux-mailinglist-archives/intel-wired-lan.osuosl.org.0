Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF96AA053C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Apr 2025 10:14:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2DEB40DC0;
	Tue, 29 Apr 2025 08:14:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P8XFV8aoq65O; Tue, 29 Apr 2025 08:14:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C83A408D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745914467;
	bh=AHDiy6x0jztAkKwbPAQ8SF7FZna01r1jl27if0lOylA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OhqR7mQITg/Yr/2MQSVGxo/CdH6w70KDepkv8b58Jq3Udx/8sMh8R3nqLzsqkbkCB
	 6qOsL9qpB8l5EbNFXvTShyzkYmNX7u2gU9lcvRMgP6Auazk5cFt4n8z5e2xoCTfCdb
	 JAzE4wEVaRfq+Cy9PveUahDgYPBc22ENbbmIpRUAr67ftekcsDiHFDm6NDSLmIOUBj
	 sntETZl+8CqaHb67V8f8+h+JA2ZthUucjjDyZVIPPoUJE3UahPlC7H9i7ydnbV0Lu5
	 bYErdEqCJl/nDMxC8z54Pybaj3WTFU1c1iJdDfwKFn6brQqwyIzRKDFBiHr8VoXPji
	 QHOCFe7WFgm3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C83A408D8;
	Tue, 29 Apr 2025 08:14:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4ADCF1E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 08:14:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3148A401A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 08:14:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xt9KXZ7XDCik for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Apr 2025 08:14:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3F9E54011C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F9E54011C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F9E54011C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 08:14:23 +0000 (UTC)
X-CSE-ConnectionGUID: fBc4qv3PTem7KhpOP0QlmA==
X-CSE-MsgGUID: yNiHv6y/R/i8fB2BKhGPgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="47538329"
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="47538329"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 01:14:22 -0700
X-CSE-ConnectionGUID: BW19rc3vQ5u0cIgzaA15DQ==
X-CSE-MsgGUID: KUCLPzGORp2QEa1JF0vLzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="156981036"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 01:14:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 29 Apr 2025 01:14:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 29 Apr 2025 01:14:20 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 29 Apr 2025 01:14:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qn6JWP4LX4pLUeKPwQBlKJuQWOdcAew6WiwOHXarBkGTTfeRGctX8T1QtZ4wBlsMdA0R3baqNYCTtBb8rYmEhqs1o0JGdOhrM0Lyowi3OsQYP4oZqL3U39GKcuxBV+1mc51OD1FN7ihZIGfePO9ZhrJI0b8Ue/Q1Qbb0SRcS7aakyTDFBTPBAMYm6K5mQB7WmoYMSO/Ry+jiX5aECUfJQumOrjC63hu7M01A2O/Z7Xe91lXoWLo5IL6BuNMyI+rRKGQmnz1ZXvFM2qa1WBh/N9qjq7+u9taGBaUQAQUuoZZp0GkR9XC1Ja3CXiLr94NtwAnyPs5ld8Bg78qXnq4KpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AHDiy6x0jztAkKwbPAQ8SF7FZna01r1jl27if0lOylA=;
 b=Hm6FbGHr/s255twkEY7qmj6pkUu3/wO4HOthaSIrvwCjgMUkP9jRut448KrLPbojPMS4RpDT+4ypegb+X+F/O4WdlIVQfEmQXKoCjvQ4p1VvL365CW5+TXzSW94/teraOVd8rzC55titp5srlkwZSnw3HcRrYKChFlBBYGyrdfpf0DJ+5xG+xZFsP8zktrJ+6xNSwvB24XOsBojdIoJDtQE8/Ua30mtZ+Gc/StFTAiC2YQBpvhKvWbfScUxcMtx+uC97cGz08f61f3tT7Q4uXWectYDNoOTFi4xlP7IUlWH8f4xewZ3crQ13TIXPPl46fmODdiZ3BQi0GdcUmtcDDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8678.34; Tue, 29 Apr 2025 08:13:34 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%7]) with mapi id 15.20.8678.028; Tue, 29 Apr 2025
 08:13:34 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Mrozowicz, SlawomirX"
 <slawomirx.mrozowicz@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: devlink: add
 devlink region support for E610
Thread-Index: AQHbquSwjiLODcUmb0mUaNp3GTgfa7O6Zv7Q
Date: Tue, 29 Apr 2025 08:13:33 +0000
Message-ID: <PH8PR11MB79653A235586EFFB5655F6F4F7802@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250411130626.535291-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20250411130626.535291-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|DS0PR11MB7785:EE_
x-ms-office365-filtering-correlation-id: 31511406-7e7e-4001-ecc1-08dd86f5bc3a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?cc6x9lheItHmvk3KmR647LUD2t62fwZPMeebyORqUdORQNPGE+c62O3nCaCI?=
 =?us-ascii?Q?vAWvU3loMpo801F8hnA8nd5jelaP+sQ6frP6t1RWPp8Er7utHycTrepddTei?=
 =?us-ascii?Q?bzZhnelFZO3VOFnr+XSvU3eFV3Z9ojPcwB52MpazEUvBiUrkiz0DvEkJKRFR?=
 =?us-ascii?Q?sR2DcpzL8Pn8TtKw0g3uuZJ9d/elAyZ8nBxwlCby8zWs+yR9fS+nvfPywBjS?=
 =?us-ascii?Q?r5nRSqQrEFjXwtwcQBYbgke2wEvY9Lpc0ZyoCjsiolYrbvfRSbd+t73q4JHH?=
 =?us-ascii?Q?HoWpB2T/yE1uMbFvdeGOH9w1PatczNfh+mN/t/rXoktnKWXor7GBc5Nfj9/d?=
 =?us-ascii?Q?/NM5zMIxci3VpxINUOL1ggJFOca6odmlVhZJXnqoVi32W3R7FvDuu0yTvZAm?=
 =?us-ascii?Q?jsDWXEaGhfNd4662qK2Y1BU5iSa0qdINKUL+5f+vYt8ckS2uuQ+jyuDXJ3Af?=
 =?us-ascii?Q?V173tPDhwGYbneQMGEKbAB02hMSpQrqx1AcGdA5WIsRDaRYo0VsgymgUpoDx?=
 =?us-ascii?Q?wjTZhgJZ//mPIF+y5wywOrHUCrVUu90ml5RnQKahrMWZ7Vrw59fXHsJuqPgd?=
 =?us-ascii?Q?15RZz/uBqIPtSMOM8TRdTta2aXr7hTTzRHsjzorUwvDS4hImHSR2v3j51BsB?=
 =?us-ascii?Q?dlD/OFsaZ/5Fi0LE5oc+SpbjQqTffD9tMuT8F4G0Lowi7ERF1Wl+UT69WFht?=
 =?us-ascii?Q?HIlZ6IxUDxGOT/dKqIMsKwFLsn946eqjhAoQeJgADpkbHp2hon93WsnEtq8j?=
 =?us-ascii?Q?oWQCmmy0Vv0VSNxL0pqemN+yH6tQiW1YA5Epk5xcjESp5gBj7SQszrpR3tDs?=
 =?us-ascii?Q?Wlpb8e/UaV2Z2R5+jTg8aRHaz1oqz/GV6q3evi8Shbtj64FEv/Uq4Yr3mupJ?=
 =?us-ascii?Q?Qyn/Nfjv8wVS7Q3TCcr5r4uUY8hVySm+ph014BILI4fj4C3enP+1342KfIcN?=
 =?us-ascii?Q?AFSXNYOsOO+bBdRbZSAKjoB5mJrJg3DRcdWXZ2OqYUIoYl5+InxKRBo1aeJv?=
 =?us-ascii?Q?iCRJgqxv94IxWENNNYiJpbEl24+uwh7sQia8cRyzIv/iDOjrqf03pmalj1r/?=
 =?us-ascii?Q?RMq1wV2mzJpeA26ydh0w48N4r8Kh33Cu5KMy9/qYu0cnNMcaTgQ/yuDG0LnX?=
 =?us-ascii?Q?SuyFdycI9YXCN6urRf0DQp6NXkQhvLeCta01CcGQFf3cFri6Bj4/8hyvjDDy?=
 =?us-ascii?Q?ovN/U1M4LbDU0URwlXhQrM4io+PHXJPIWph6WC2LfmjuTtnwXlScCVHsK5GX?=
 =?us-ascii?Q?vAmbHhN1DD3KRD2fyh9QileftVz81+Palz7+xeI6oqpdPnY948DVVqLJP4eJ?=
 =?us-ascii?Q?OoJZuVHLbalSfRgfUQqBWtxyg9Fm1OfFzhDWqyrnkZv8Lsmvn93Kd7UtiidB?=
 =?us-ascii?Q?acNybQdCXkSPeUeWVaqqes7JlrEDryY0omYLQ1eS/bvfSarwEHlh24EaZGL2?=
 =?us-ascii?Q?9gIOz8/lqYPyXIthBJTY25TKui8+f8hC8ERq1ynhf5WTX8zZS737LJfrfMCn?=
 =?us-ascii?Q?R6j4wN9UGv2uGMI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pJ0F4HYLZT7qhLCKLTvb5G8C0xF2KKslCPRjQi1CCEfBmp1HvzE+o1GBluj0?=
 =?us-ascii?Q?rZbE74afiXUqlSvbxoYfklQA+y49p5DZUd9QXLuueUHizHJT/oSa58+R7BH9?=
 =?us-ascii?Q?dUzbX5BDi5e6T/MUQyNrMUTCd7ZDGzz3XxevNTArjvu7PXQ99Jwc0oinm5KX?=
 =?us-ascii?Q?ftFJyDt9U9WeJath66bgK5utPk+/CbJQLWDDmTqUTBzDZe80Gzm992HO7fSc?=
 =?us-ascii?Q?5xhv1Cm9VzCY9z9UGE+RAHbjwXNMHPQBJ0K/leTBRTUM0wW5mK4qKkiXs8jr?=
 =?us-ascii?Q?RH+7S0hk81I/SpUN0hjgktlgTKakFT4UmW4ljvqhRfpxXyXa19Qg5UVmZOZa?=
 =?us-ascii?Q?R/zzxnXy0RO0ENSV7qV9bLICa72Nk99LY5TK+1KzohlfWXSSNHPclHGE9gu6?=
 =?us-ascii?Q?qvhxfb8mPQbgNrsUjOPz2auhS75PlaK0va+MVdAocwQNdq4EWYgX2N6AtcRy?=
 =?us-ascii?Q?YXtRZvdOBEPWFZXjaXr0KZBjVX8MEBTCifKxcoO8An6DRTWbV7E9/djoPjac?=
 =?us-ascii?Q?jBrmz+mrMUy4wGPa4eiBJOOt/okNmpWRpXTvrcZzN2bqePKoVqNjZhaUeaDD?=
 =?us-ascii?Q?Y4QsA19prin1UUSDFLfneFzCmaLUGZu9dHt/vztWPyEYzvoRO/mVp1doi29A?=
 =?us-ascii?Q?2WgsXRqQX0oB5y/wC6t7sPfG4w0QUG8fSxWAPk+oFRaHnA2OODiO3pJA1BwA?=
 =?us-ascii?Q?5PqJvmRusP1KSf0NP0pyHq1WYyRkCGqnFsGm5LRYgnvIEZwewGUOXa/5BPVq?=
 =?us-ascii?Q?d/M/0vR5RYMdoXCK1TDzAQABF3hmS49lmPyLqPXAHtUXMAlIcbZkPLv3FX9o?=
 =?us-ascii?Q?3M9d9EyDAJSGUPTkcGs7EQewXv0wZ0OX8YHj1ZaVe3ONQPl96ZF6NA1OChmi?=
 =?us-ascii?Q?vLdLSdjRxj0hmLOcNdp/6DAcQlwoqrGnv+voBFGM/MmzxeIv44x1hB7Nr5aQ?=
 =?us-ascii?Q?VMKQPZcay6jUIi1DrLt6ckznNhEnhnsKr58JbbCFpVfS7el4y/QFj16l9oaN?=
 =?us-ascii?Q?niVP+AVtpvIFwmbaklpkI5Lpt7d3MpTlBPsn3KsLiYq736TO8nFauwUcxr5D?=
 =?us-ascii?Q?Cz3Q4AiDd+FhOZckuKgw74zD5HfIu19Z/A+OobDSO3BniebN1D7YtSrIykid?=
 =?us-ascii?Q?18866iRIpgYb+LI5KB0ZiNtORQx71Rv4JJ4+cFHWg4xuOQan6V5LsF4kFqpJ?=
 =?us-ascii?Q?q8tKDLuuZyFxwrtvFAeSSTZIjFHIfDIYFgBuq/H/C1JBIFq5d1L/zJ648jyT?=
 =?us-ascii?Q?LBdW/QdvOeqAW661FLZXl7a37wyF9W/GliNE66hikT0O46BbSAot4nLYXoqq?=
 =?us-ascii?Q?WBb/NhGMvN9wFkkzpWAwTVFbYQcux85dZGElRmMaVfkUuNRipjIJK/PZzlk6?=
 =?us-ascii?Q?eCiXOdoFbvW0f4m3s4L+RL9/g0ccYIo1DvA9ocHugPpi0MGXufzBDVJTBdmn?=
 =?us-ascii?Q?datjei3VAguSOU3r+OGWU08g9VV4318Ekp3/BlWdRxMIfsKK7PVf8pLryQG3?=
 =?us-ascii?Q?r4tJhv93sxRUNP/J6BxZ9p1N6AKjchYEo5cHKRZQCbV+qsJeDy1aQa7deowo?=
 =?us-ascii?Q?wGQZZdaROnkTUbD4beZUcU6gvYzLgD9x26O+8sP9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31511406-7e7e-4001-ecc1-08dd86f5bc3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2025 08:13:33.9455 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jPZY+9St4NQ8COV7BZ3kyrcr+ZYogDbfOTg0OgrxZD2X4dZDl/ajQ2aRLoAYwjvQWqUxJMfFtgV1sTPGqnjAwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7785
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745914464; x=1777450464;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VfTB8JrAGiyr6dQ9GSyEq53UUw/DFwi/YqklN5X0tDc=;
 b=P4Tsce/2qDSSYnodEL4ITHn3EA0V3L+OMk2VSjSv+4OUR24Fcf6MaDEJ
 THJ+3RHVKP1hHchr0d7FT+dt8s+WNmpJERNp5O/DD4oat5u9GAqXfvu/6
 moo0J80NBSRvW3OQXc715RpNlNKfmGJxqCBG7B02R/uhLFG0GFMyq9uAH
 WKrn3UREUCCq5B/ETn8DIguQuACA3gpQhzmanFaeaXa095nvjFnrJtKKj
 e5pQ5vJRVCEPLvur8x8bGtT5aCeNucni2DbM77F5hgcwch46u2h2nkzO9
 35oGMgzyW0RXLkKQ71SPHKX4A2IcCXzNTtL6Ni7wMj7toAt64pZPmvdrp
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P4Tsce/2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: devlink: add
 devlink region support for E610
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
> Sent: Friday, April 11, 2025 6:36 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; Mrozowicz, SlawomirX
> <slawomirx.mrozowicz@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: devlink: add devlin=
k
> region support for E610
>=20
> From: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
>=20
> Provide support for the following devlink cmds:
>  -DEVLINK_CMD_REGION_GET
>  -DEVLINK_CMD_REGION_NEW
>  -DEVLINK_CMD_REGION_DEL
>  -DEVLINK_CMD_REGION_READ
>=20
> ixgbe devlink region implementation, similarly to the ice one, lets user =
to create
> snapshots of content of Non Volatile Memory, content of Shadow RAM, and
> capabilities of the device.
>=20
> For both NVM and SRAM regions provide .read() handler to let user read th=
eir
> contents without the need to create full snapshots.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  Documentation/networking/devlink/ixgbe.rst    |  49 +++
>  drivers/net/ethernet/intel/ixgbe/Makefile     |   3 +-
>  .../ethernet/intel/ixgbe/devlink/devlink.h    |   2 +
>  .../net/ethernet/intel/ixgbe/devlink/region.c | 290 ++++++++++++++++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   3 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   3 +
>  6 files changed, 349 insertions(+), 1 deletion(-)  create mode 100644
>=20

Tested-by: Bharath R <bharath.r@intel.com>

