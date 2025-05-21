Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA7FABEC54
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 May 2025 08:48:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F0BC40DD7;
	Wed, 21 May 2025 06:47:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tJoR70K38PNG; Wed, 21 May 2025 06:47:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4FEF40D6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747810077;
	bh=ejzYp4GYq+oEMlCZ//uu0vu6SsHoT/7fdn9m83JRvuA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B0Hpbh5i1BCCq2U5hX2koQAUEIC5XtNz6Y5whwcB0gfZQK2CP6t4HlPIcC5zEHNel
	 VdvzRCcWtlhQoGQI/H+6kfuhMtncbm7uIrMzNtJWvFrNpcmnaZRVyrZCgqmesvlJKY
	 x785Rb9Iv7S7BrqdDWiBWtgJoCLTIgw/knK4y9k18Iwlf0iFOzaKZIr+ZbH9N7BSm5
	 xH0zQGx2xIjXuaRFH0YUq2omesuDaC38VhKM2HZdvGMmxpe3bbNAx1+Oy5oVdu2i0k
	 g+GwnoNJwDg8nBvmhD8rs/KrWagTdBz9bvfe6m5w4xJ/+EXe3ZWPWHaV1Pk2yqiNLi
	 JDnbyjQC5tYTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4FEF40D6C;
	Wed, 21 May 2025 06:47:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5242711B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 06:47:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4F29F81F24
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 06:47:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mQjv-10GYXvB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 06:47:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8DF2780C9D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DF2780C9D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8DF2780C9D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 06:47:55 +0000 (UTC)
X-CSE-ConnectionGUID: KWYTwDWHRpOhDP78UMVIoA==
X-CSE-MsgGUID: IJY1uo4mS6SGoFzrOAcwJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="49908154"
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="49908154"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 23:47:55 -0700
X-CSE-ConnectionGUID: 4xKtzHvmThqlg2jAc8Ph7g==
X-CSE-MsgGUID: vJro6HhpTf6TSh8cgdLApA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="139777964"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 23:47:55 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 23:47:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 23:47:53 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 23:47:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EEX/P4ACYtNXFzg3GS5t7PesVXnET90bnwFLm/upAwcfZ6+tSFkzt55AyL+RgXtLjiqMENydWRW5xJRFZcQcG1nuPHebTqNtTxjSrEKJvylzUcEP/i35h2Bd0PORmfD2Qjf2M4YHKqxVG3aSlHZDgcHnqICetNxlsJ3PE1hqfjN2V+smPJBPOQyzhtwIViwU5BV8ZGfPyZDq3sEIFQeCZGi73azl8N7mUYJS7zELge9DHWFoq2a6tebmC1Mw/KOYX3bSp9WOjMFR6zN753zgphBhNwW2FiLXvXREPkBRDGoYKuu02jt+IrjiDh7Zzm+8Cwi63fHHNvpnwErn5IUl8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ejzYp4GYq+oEMlCZ//uu0vu6SsHoT/7fdn9m83JRvuA=;
 b=FX3N9GIOMlZfWO5ksqF332mB38xvhVfkqc0+EO2ufT9/s8WI+qNztBxNdhlNDw+vMkrbbRQF4+nfgo5siG4BFMYBjPn+yPkJPnw0hD7Ba2UnFQ5kUEv2In8l/q6ciYbNGeKyR0yvb6d5tfEr4Wip+H7GpHsfDUfZpRbNsvxgeKk+repAwMEV2FJ3M9Gb10c0+odLyrifUkmf9P9IQRqMoRPDIJXrJYbVuWidg4weJv/2MXhl2E7u/U8CLcIBUoLmsI2rglNo0xKPr6bpexh5BVOfunnJuVXVsf6mKCr30jZMP3qh9z7KuU+FbBQMZACG9/zVbKuYOjgQa8mTK6AzCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM6PR11MB4529.namprd11.prod.outlook.com (2603:10b6:5:2ae::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.31; Wed, 21 May
 2025 06:47:39 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Wed, 21 May 2025
 06:47:39 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v3 8/8] i40e: use libie_aq_str
Thread-Index: AQHbtaiO/crDyVtqOUOVDJzFRSxBurPcys3Q
Date: Wed, 21 May 2025 06:47:39 +0000
Message-ID: <IA1PR11MB62419EC5E7D8A3A1938FB2388B9EA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250425060809.3966772-1-michal.swiatkowski@linux.intel.com>
 <20250425060809.3966772-9-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250425060809.3966772-9-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM6PR11MB4529:EE_
x-ms-office365-filtering-correlation-id: ca141ab8-397d-45bb-c25c-08dd983360c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?hdKotChTF4iqb3VeKQMNYpRlsWUJZbhB4t827ksDI5NyRDpmGkPD9TeLuEcm?=
 =?us-ascii?Q?PXXSxBTA3WJO/eYoP40xe3nCV4ujwhmWmOe3u7VB4rjI08z3BdClCAta0YnK?=
 =?us-ascii?Q?5whUqpgvCm5vw2oTRoUeXxPpprO702cVNOU0lX3uDsJogoeomBbsoBa3D7kW?=
 =?us-ascii?Q?7b6Li0R/m/wPmrniL74DJNmlfjjt1vlkBDDxeBfNhdPVd70MRllDEs8Auqzu?=
 =?us-ascii?Q?woIos5JLXmFoGlpuk26Cj397cBYBX1U+uUry4uA1ELOI12YU7bik6VOKZLlo?=
 =?us-ascii?Q?UWJXGq2dO2nakALNsW24YX2RtrmsaG0+Cfn2GO6qZOQ5QVs6poFH3SExLHj7?=
 =?us-ascii?Q?jaaxsvqMR5cyUnIh+C0acbkYTseiNDmE7slB3q+2+FUzOsfnkyigGH8zmhPT?=
 =?us-ascii?Q?pDvsmaIsqYZDA/4cEsu63VZmyz29Op0tcMk2hbn5mrs4VfBRVuld2iQumvgd?=
 =?us-ascii?Q?dm5S0Wb9G/g8hI8FX9YFcuRL2f2H4bgJl10tjwVBUV7/tiNK/eSM5RV/SMq6?=
 =?us-ascii?Q?mDPCDi4mY7jop2+D4JHcpUV4+koYLqqUpWKcKnQNQpnMCN+X8sjx5zmBas1C?=
 =?us-ascii?Q?Guo/0ohe2PBP9MsGJb3XQ3Rae/E6n1Aiyg4kdxRBp4q83umfqo9+hEo240pR?=
 =?us-ascii?Q?p+jeZ4HGbj90VQNB3aJ2wgFqI87Xm0hKylWyth8xgzm6hDZl/KCBMpdyOkQW?=
 =?us-ascii?Q?ngZjN1Y5GO6rqtJVT7Gi2AYAFThZii9HVPVK/T74hbAdX+8VhqCsFWBCauA6?=
 =?us-ascii?Q?ibEDgel4165D6Jvqep3GFtgJCZbc4FzPo0yOFj1uKpOW531YZq25KrZJHz4O?=
 =?us-ascii?Q?DwyvG6cM/HCu2SwuaffxcAibB3BVCInXv/C6u36v6EIY1xaI8/Nf0K19WK5S?=
 =?us-ascii?Q?re/MXDfX2vJP2JNz94OIzqIhOl7tfPl2XBZWby959Pk0tB7tR/Pimm57Lekk?=
 =?us-ascii?Q?65paZR5xu+xHteFidnWllSdCIzy5ItuEz5HyKjMPhJWomZiRIlTXIoBuIX1m?=
 =?us-ascii?Q?TPa1X19iMmOyKEmUNhPTu2dA96DOe8YUCiCM1wRJNZoA/SepJ6JmznFSgGfz?=
 =?us-ascii?Q?oZ86hQYclHxWyUNyXMET9HuOGziiFlSj/LrkNa1t9EniVU+b7a3bsOSMbkKb?=
 =?us-ascii?Q?HoUGL1DJglocmz/1HpBh6kjs7tmnOA1ZXzaViHCYqdcYvPWRc2IGWxWI0tsu?=
 =?us-ascii?Q?WMRxqYKFUg2kkr4KEKl7/6zQPeITtbMVQQDNF4mVQ8CdWzh/NDdkGPFVCoGQ?=
 =?us-ascii?Q?8QsPAs60Ej63dF6p/rKofM5Hce5DR5mWWzvFdlU3QtFigX/V3/OL6etJZuCF?=
 =?us-ascii?Q?a8Mcd5lamStKmmyf9NmEhtdyioaJEVUdVMUna9DBGN7ZZajlCfT7KJIzbbai?=
 =?us-ascii?Q?8phOA1KicDDS8ewhOBj/OuLbt7aL/erWwtlK4/FiM+ZCqCVo9Qo7KOjXV4QG?=
 =?us-ascii?Q?lCBIncH3fPQ1BV5rbCH1MmRjQwuU+532ckzDR4Es+cSB/fhcf4iPDPGMsna+?=
 =?us-ascii?Q?dDUVTJ7DLyGzoYQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Y5HtWLBl+hV4R+n23PKa+UevJZ5Wn0xbH0Xt5ltzmDj6x6SiIi8turizEF3z?=
 =?us-ascii?Q?ezQxa8GNhCgygBALiQschv99oxe0ORy2BfT0Yf8igvRiaegfcrEuXbZCrRgf?=
 =?us-ascii?Q?iBqfVg4P9OeloT6+UjV58uz86BlkL5a9gbW6rWUMYqkjJAXVbU4/Gt9Gp+ax?=
 =?us-ascii?Q?P1B17uF7G1cz4jd1DVBvGPdpEe0DTX7m5lYrZlhc67hT/cYykRad6HD6LKjE?=
 =?us-ascii?Q?rX/ie+YKukJuCitQKcUE/nANMSpWtetLEDhinyEyfiTaqV1kkdC7ye3kd/FO?=
 =?us-ascii?Q?Lb/iBN3BJOJqFIoN5XBsGrJizUM/bGtUOCighq0AD1L7+OQAefaLN+5XvAXU?=
 =?us-ascii?Q?yXf0gMa66E4HQcad8ntmZs+70T00Vj3E9B04S/j2JECs+qUE7XiKVqFHQPN6?=
 =?us-ascii?Q?WGblOaROsZiAKiD/67x3K3MmOLJ6XJoXOJ3qnKpEf04IPFvfHGXkP2OsdpQl?=
 =?us-ascii?Q?ztzkGM/Sw/V8tVvc6kUreiRcE46dGxmdMRNlS4J73700g0yISACt2h+NMAQm?=
 =?us-ascii?Q?OF3MbE6hqgHtdEDzWIoR38xp35ACLVMCozDRu2xsNd2VN1mwX3AnDXBFvjjI?=
 =?us-ascii?Q?zb4LHsvEINrUFoVRIxH5g1IDHanUDvs4FnBysgj+8ZvMxtEfjIYVY4z+FeAe?=
 =?us-ascii?Q?UKQaz9462Bzo5fDztilgNISIqD3T94kGo3iZ8benWtEtDPeeunA9CpCXa/P8?=
 =?us-ascii?Q?lTEEJCuMm2KsO26lq5I/Y+xBMnQBiuR3jdkcfd8TjU6A4H0QsmWredxKKtJY?=
 =?us-ascii?Q?yvDxIYkHUt5ub4xWg0q8hLP6KOymIh1t47QGY4xe01lOEn1o7/ZhX/0M0yrS?=
 =?us-ascii?Q?CSWQ+o8biWXIeHgjv8RZX6BuP2I1CSnKrGDgyKJI9xeFIQW/LJZP8x+f+9q0?=
 =?us-ascii?Q?btojLEfHHpWyW2ma1Ls2eHVVsj//QWwxJGrbczkkRyfPNQXccEQlTKWVfaj4?=
 =?us-ascii?Q?So/35Ekhxj32PyjUGCBGuh6BgJJ3ObyNR/AlejBDFGjktfUhKZ2DZA11GSet?=
 =?us-ascii?Q?wOx348C51xxvzL3PnX5UrM0+6TN+ovpERenPcPYDtVal5lrS4K//ydLi+o6h?=
 =?us-ascii?Q?hiXmdNL2Ge68dICn1L5nlR2FgRoqCQIrtYOpFukMK512OSkZrNKK9FKuWoEo?=
 =?us-ascii?Q?q+0sYySofItSahqcsHgA5kMbf899Fbe8m6GRee9a9a4NiKuH7+INwcdxNMlk?=
 =?us-ascii?Q?PSFRpO5ISQDdS4gzPieJIKxnFh+EnlO0PlZH6qUwiPz5jiBdjtgW70Ex3yFo?=
 =?us-ascii?Q?pu9pkpLz9b0exOYelTCHqgNuY+PjpBfh6OV8hqHNspBZjkDiPfW8qW/5exwx?=
 =?us-ascii?Q?wZ5wV4Dw/H0qMwCPOINgebBN5c7mFcaOeectkkO3UTGu5XbOJkcWTVQd3ZLG?=
 =?us-ascii?Q?C0b7cuAsY5gm5+KjiSMBZYu/6uyTZ+FkvlCn3VjF0c7iw6Sl0N25CNGXXXYM?=
 =?us-ascii?Q?PthVJq9DXJ5U04jlKpjqP4nDw0il9rEG8OlDUJPJFBPQZ5EVQjxddPyV8z52?=
 =?us-ascii?Q?iTkII0Kdj2b/6VrPgtrFzOf7UkkDSFtowtacu8bwLcQxrj01/w2dtKehFwSB?=
 =?us-ascii?Q?2icHBNqenpKGl37mbVJBu9nWulJPu/BKiACf5AQn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca141ab8-397d-45bb-c25c-08dd983360c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2025 06:47:39.0594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FAzaHgiTjMdiF39qDLyblwc5wRC/ROU9pU0E2Fyv4H3rOiDRb3a0t+a3i+nIqVoaB+QjCvmpaYtFNB+cXHp2Mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4529
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747810075; x=1779346075;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W9F5Z4iPE5e6ex1eyuGTq+zHcSh9Pixb8Z4NCrFRWbM=;
 b=CiHAQucZIgwNe4zv5NaKGDa8It25NP8PY5hFzvmSr2oda+g2baVGwo9q
 a+2rfas2IX6oWKFyyPv5V/r+p97ERYXTy/k75Z+nu7UtpuOSOIVsJkptR
 usLCCOD37bPi8gzMdsRwUjvdhSPqlwQ5g+w2WLpA50jVUwfnRL0z3C/pA
 VgPu2fhb7QgQ8lqqd0NmHYWjty5D58zhABqp/iziPldwvBsfMnvye1YEl
 CzYm83IjSaWAaydzpNb3QkgpXonroTARpjleLJVMgtIi/a+KZYQjNPTRg
 H3bikYCEplpLPe7VfoqRqjP9NVlkTq8naA2KGi/Cb6sH6c52mYac3Pays
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CiHAQucZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v3 8/8] i40e: use libie_aq_str
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: 25 April 2025 11:38
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Lobakin, Aleksander <aleksander.lobakin@intel=
.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Kwapulinski, Pio=
tr <piotr.kwapulinski@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov=
@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Zaremba, Lar=
ysa <larysa.zaremba@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.c=
om>
> Subject: [Intel-wired-lan] [iwl-next v3 8/8] i40e: use libie_aq_str
>
> There is no need to store the err string in hw->err_str. Simplify it and =
use common helper. hw->err_str is still used for other purpouse.
>
> It should be marked that previously for unknown error the numeric value w=
as passed as a string. Now the "LIBIE_AQ_RC_UNKNOWN" is used for such cases=
.
>
> Add libie_aminq module in i40e Kconfig.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> drivers/net/ethernet/intel/Kconfig            |   1 +
> .../net/ethernet/intel/i40e/i40e_prototype.h  |   1 -
> drivers/net/ethernet/intel/i40e/i40e_client.c |   7 +-
> drivers/net/ethernet/intel/i40e/i40e_common.c |  52 -----
> drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |   8 +-
> .../net/ethernet/intel/i40e/i40e_ethtool.c    |  22 +-
> drivers/net/ethernet/intel/i40e/i40e_main.c   | 209 +++++++-----------
> drivers/net/ethernet/intel/i40e/i40e_nvm.c    |   2 +-
> .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  27 +--
> 9 files changed, 105 insertions(+), 224 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
