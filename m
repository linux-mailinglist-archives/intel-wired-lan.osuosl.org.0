Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8988267A1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jan 2024 05:50:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECB60416B1;
	Mon,  8 Jan 2024 04:50:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECB60416B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704689421;
	bh=auYaVFDePLgWJ/HgJcZcydAFk3qhfCmXB8EjFaDj+XA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uXH+cI0K5fHtMFX+9dtxKR3YFkTKQlclM2RM8qe2SXHl7f5gkjIl4UQfIJWErw0OH
	 OhwhlM2bUZH2wOFLgT+lhmowXAUYOOugaa41FfOiv/2v2aCLRP+69a1heD6HuaUcFq
	 pNimiZCp5yDnNi9p+1sZ5246Vg42N3hdjQZBbkZ0AO5SAI5SVWLZXow6aPz+GT8Y40
	 QzxnSXqporPsFuuVqZ+pdT0ueuaWDyPpdUs3sEZA6LOGLpKfHQeZx1kp9U5sI2efWq
	 IbZnZmFzskfT5gxkZv14CKh2awZx0DUuQCn0yv/2PJmr5ZWRM5eBX3YkciIcCaWJ4z
	 /yx74Xjm4Ljhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1hciL3o54Vua; Mon,  8 Jan 2024 04:50:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2B66416A4;
	Mon,  8 Jan 2024 04:50:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2B66416A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 22E501BF870
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 04:50:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E099940223
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 04:50:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E099940223
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LFJ8G2hLEvlX for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jan 2024 04:50:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A815D400F1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jan 2024 04:50:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A815D400F1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="388250252"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="388250252"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2024 20:50:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="924748382"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="924748382"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2024 20:50:11 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Jan 2024 20:50:10 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Jan 2024 20:50:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 7 Jan 2024 20:50:10 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 7 Jan 2024 20:50:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LW0QLYbePqynUPpPt3cR2OjBM8zZY+vHfI66sFKEqRThqvqjGIIXkkChvOcHpu1yCJze0UYDwx4uc/kINS65CRrQDeJgMWlO0U6LcbApyO0TLJkDYUBE7zGtFqz2Y+doEcFYlokcxJZmqTojNnMiK1VYDsNuFM+VE4oHuAu14j/9rh79dsYpWqjqEyyrYqpA441t6Y7NaDvZDuyAOimyGCP2Ej1ATl+0LSHhPrqch0FnnH7ZGHcCa4L4L726E5THVGoWaL3t+lEujItB/2XlTUxLchw/qXAsf8ZxDl9uvdMWU7rqZIR3zLWug1qK6WFTMXfxPzcSGgM5rWySSTJc+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=auYaVFDePLgWJ/HgJcZcydAFk3qhfCmXB8EjFaDj+XA=;
 b=LypJO8OUm4XFQ8GsSumSDi2MTua3OZoPLIyI40pr+ZcuoWjVdlKrkEEOMHCQIzl+JWMM0FR9Sy3I0nP5kkw3zodiyg5BcPKv3/ky1moNMvS9raWB0VyH6ZETwDLsxMVnzI/3Z0MmcT/nY9/dP8p0OpzRU3aeik1tx6l+sKnRKIAXb/OlldhqCUPGNxxtWqt60wUFiEdbUd0ou8qAqhHdrh19VnIKMmBCyrlwbRqqCHoLqzQpvtoT2LH63rPsIbF+143SC33BMkm74coO+SK2solbz4zRjtERglSBS/AjdX/hkAo7J78NLOyaPX75zBcJzGSz8vZe31AutlvdOwLpKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH8PR11MB6925.namprd11.prod.outlook.com (2603:10b6:510:227::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Mon, 8 Jan
 2024 04:50:03 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::159c:7c99:e99e:a3b0]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::159c:7c99:e99e:a3b0%7]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 04:50:02 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 1/3] ice: introduce new
 E825C devices family
Thread-Index: AQHaKHuizoQAF04BBEidRJAaN57XJrDPisqg
Date: Mon, 8 Jan 2024 04:50:02 +0000
Message-ID: <CYYPR11MB8429852A5A5C5E07470AF8FBBD6B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20231206192919.3826128-1-grzegorz.nitka@intel.com>
 <20231206192919.3826128-2-grzegorz.nitka@intel.com>
In-Reply-To: <20231206192919.3826128-2-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH8PR11MB6925:EE_
x-ms-office365-filtering-correlation-id: a26dca01-27fa-4844-18eb-08dc100546a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hlbMlTuHzHgvp83jNDkCrKye+UYo4Yth4fEVv6O/Y81WydTQiTXjJkJKya/Aata9Pi40JeOWWfi1863OT1jW1eHxsExIGQ+k85tGcW9zGmAmfG7dsmdBv12Oj/quWb+KNW2o4zgxLOG6Up4md0vzzZU8SJnGZVWxe1aNQP1Kmq4Og7EOMuQekS1LhP1AxIFvp+KbN/MZ5unxYWLXzggMHiwqeajYVn3l2e/08dRxeUJIdo8T4zuTDXF3Gqiv0ub29GHWuuoyAOslZLV4pPR6IIU9jp7OnG2FGq3eqPJpQJXU99JHpcZg19hov07TAsger+wKIyaH14WDTpJXTaI/fvzhQ8NIY2iZoJzG9TYy4SRfoxVJABC7RMHdEiyBd2W+iiG+QPsFzNH/ZdGqm5grBKmDpK7Co2r71WEhZRAnMLphyFoEvzLH5uEVzGcTJkX4jCJ63VBq+edoP8beTpm+BcmKD+JpiRBo2x78FpweYn4LarqjBz1GiNQCaUqNQaTyV0EfvCpSQb88kOmRIqzvQk2bTvfPmzvMmpZaRH2MB9lSD4zpIY3GmIIadP0V3iHj82PrqMjdGKOIdptJhE+bTrf4S1UKcpAFleaXSANXE1U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(366004)(396003)(39860400002)(136003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(38100700002)(122000001)(478600001)(82960400001)(83380400001)(7696005)(71200400001)(33656002)(41300700001)(6506007)(53546011)(9686003)(55236004)(4326008)(38070700009)(2906002)(52536014)(5660300002)(66556008)(110136005)(86362001)(64756008)(76116006)(66476007)(66446008)(66946007)(316002)(107886003)(55016003)(54906003)(26005)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xJwrrNGAq4MlP5y8UeFf+CxIJBl+yUqwRiQBlt2jhVIDwqUMDT7/xPjL2/MS?=
 =?us-ascii?Q?oj0XzHYHaJ1YAlgJiRWOJ9enQho+/BQrTifQ5lRKsEERwUraASPyJwpjn7wM?=
 =?us-ascii?Q?l3y71smA1Ey9XxFPiaDKygiH7nLqUTW49lHGfJ/WtLVyoEkhoopIUip4bz/7?=
 =?us-ascii?Q?8SAba4DA9zADzqc5lCUVpVZ+7TD8MfBXU6idgmVYpUtYvaGzrElUC0RWA5UI?=
 =?us-ascii?Q?dQdIGl8LlS3b2CliFW9NNq3L7rLNzUGCIlITGI8PuSYOEhmcBUWvOuzefyGY?=
 =?us-ascii?Q?gWL/lNo8faRKaGrE+KkNA+f4b1O5DBA32AxI/9t8banCTqEnLe8ufXWI76dd?=
 =?us-ascii?Q?iDppVgv2IE0aeX7b1VEtE5goWDA6fiz1dpt+TZHKz0IKFbkJ/s/r5SPtH8zz?=
 =?us-ascii?Q?wsWzS6Dg9+ZcDxIkSHwkTYabOw0d1/DHdZ0yjkINwGnAcELgsnv65iERY7QN?=
 =?us-ascii?Q?j5XCbDWkScrX46TPV2BzzhEwymqUINT7bh5cZMMe5gVXza9BA1YMZeMpH6Oo?=
 =?us-ascii?Q?YAbwle8trwCvxYCABE6q3H9ceYA5RE6RILlwk8XoFVfc0K/WdJ0JDtTZCg1a?=
 =?us-ascii?Q?y3fU5P45mYuTR1S+41lolDwb0CeSt4ZX+Yv2c3p82Zg/0BDZR47FyMvPAJmr?=
 =?us-ascii?Q?yPBeOIXi5rWxV1YPOBh64H+gyQhMWd3oThQAdujiauwXoYhhUCerCTpjZobV?=
 =?us-ascii?Q?kGLqx0ggWRIsbj3rpOxdK+4oISaAUPdYcQVx6zkQppO8tSVjEYFYrx2FTHnC?=
 =?us-ascii?Q?d74UonnKo+OUDHP39/66eZcWNIIuo3UxzH/VQ1gxiqlz1Pnl81id6GVNe4X8?=
 =?us-ascii?Q?JnHJLrSBfpDaX+xZFXqGIchG3IQJRO/1gulilNipK1/hjcWwk3/6LK2k2gBh?=
 =?us-ascii?Q?1on3ee8DCX/RwztUvGvVcJwWd4XwiS3FNrTO4/dgnlG9dz9TYMs0xQQen4rV?=
 =?us-ascii?Q?hX5bKua6bukKblkRFgxJIyW4o7+Csy2CTFOH3Q232I8kr5+C6NYorttruGUm?=
 =?us-ascii?Q?XK/6LkCpq+B3t6t3ZPGLwr0I1v5tZ4u+xTBTJU5/2PPW5O+dXHwadUTYcszp?=
 =?us-ascii?Q?4f6bl+e2iVvTKaugcU3qXWJHpp9lOTxhuVGzqMM62vF+Va/waNYA2v3Uts6g?=
 =?us-ascii?Q?8WW6cYKSZVodi9NqFsW6F5H8AOH6CrnKPHBA6rt3B/Aiao6AsByhpoFe37A3?=
 =?us-ascii?Q?HyHsTMC0D1oRnsrctfU1J0gtZ5L2mAJNf5dBG7hfbMtkoCHmf22MTNnaEEPc?=
 =?us-ascii?Q?7irIiayj7Oh4ZY5Hac8B0rE7wbyPUN5tVPIXlP6kQz2Tut1vu80ecBnBCPLN?=
 =?us-ascii?Q?MAtBbQUONMCoLxhvre9V62VyVtUs17mNFiWhXRjcVAcdVQD+7wWXBQKGxgIT?=
 =?us-ascii?Q?Ue58N0irvYpaXm1pzZSQcRJeImlg6QdyNatEJ13t2C4c4Dcgoz/v67gGjlIJ?=
 =?us-ascii?Q?zMO1Jre6+nPlbGhR70THqpZmu+Jxj+9uJb+zSVhcfdIA1Qq+DHcIDV29LCGr?=
 =?us-ascii?Q?rVewezF1DsJfwjdsBTIsPODRh0jhTwqruDhgq8ecdRtc3ezUWWpIpkzEXvX+?=
 =?us-ascii?Q?kS733dsDPSbQv4biWRRH/g8dABFemzBinV48WG2h1yVI+8pbZZmFdgdaid+Q?=
 =?us-ascii?Q?sg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a26dca01-27fa-4844-18eb-08dc100546a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2024 04:50:02.5356 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1UlP2IgOni9kI4yszCD8H6Gbyg2jRGnCWG9I5OHobU+0SmD9td3hjjwLfyPfahV+a0kqkMKbLqG7+b/A3MuPUeKxtD5K77oZkCO6sfTJoc4RnjTy6docNhiFf6Tut2fw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6925
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704689412; x=1736225412;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2PB/kkwV4ZOOTRgSHI3rBmRf1JS67+wY60M/S+3sKWU=;
 b=ajQgCw+4HAnYK9vyBpZ9TOjucdn2UrbIJ3Tzkv32YoxZMxBdTKg5h/P1
 PAs06Dfqcdg/qbSISq5UxyX6gn8iHem7uW2o/YLViEYWwbOGYJJlwSLar
 cN+yNj7VIeasW4HH+bfS4Fu9vmfLSBGxvMKJNe6Kf3dabAmSwoZCBml5C
 GcI24ZGHkI49jHat86k5+eXAdOob9wpYHXzxFCLBb5/FrCGrb0rT/F3MA
 25ZvbYv2BPDiZbZyVN1Cv6jdHKsHqYA084KD39Ljcj804Ke4lxUKfAajW
 uCSN0wiggT/NwrgV7Oc3TFKwnh2M4/G/kPUDeD0SjahvJG8dFr/EdWQf4
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ajQgCw+4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/3] ice: introduce new
 E825C devices family
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Glaza,
 Jan" <jan.glaza@intel.com>, "Michalik, Michal" <michal.michalik@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: Thursday, December 7, 2023 12:59 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Michalik, Michal <michal.michalik@intel.com>;=
 Glaza, Jan <jan.glaza@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/3] ice: introduce new E82=
5C devices family
>
> Introduce new Intel Ethernet E825C family devices.
> Add new PCI device IDs which are going to be supported by the
> driver:
> - 579C: Intel(R) Ethernet Connection E825-C for backplane
> - 579D: Intel(R) Ethernet Connection E825-C for QSFP
> - 579E: Intel(R) Ethernet Connection E825-C for SFP
> - 579F: Intel(R) Ethernet Connection E825-C for SGMII
>
> Add helper function ice_is_e825c() to verify if the running device
> belongs to E825C family.
>
> Co-developed-by: Jan Glaza <jan.glaza@intel.com>
> Signed-off-by: Jan Glaza <jan.glaza@intel.com>
> Co-developed-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 19 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h |  1 +
>  drivers/net/ethernet/intel/ice/ice_devids.h |  8 ++++++++
>  drivers/net/ethernet/intel/ice/ice_main.c   |  4 ++++
>  4 files changed, 32 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

