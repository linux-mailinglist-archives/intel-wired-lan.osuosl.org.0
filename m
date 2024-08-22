Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3215895C0E7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 00:31:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E058B81C56;
	Thu, 22 Aug 2024 22:31:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TNuHjihYpW3m; Thu, 22 Aug 2024 22:31:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A50981C81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724365863;
	bh=uGgKA+UCUo2y+a9DPyu2Dw1gFguSmCbD8BJl6F68OLQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=URqNGRvGj0LGXUjnzp5Hm/G0GhB/BXRfQQ+8RYhGmR/wTM5c082V6dLGDSDM8+hA/
	 PscRrnMOsusrdVstlmtq2snhwgJ2IQA9i/mNjtZJ/D1USYYO2jF1jVYKgPVax8CPK9
	 sUeIz3tSr4YDg9ErVigVQAJZjdAn6m4y/EP9ulBnhmOtpgLA5Zn0Nd+tPPY3VXJuJN
	 /qjdVlahye4PhzazR5l/Zc/KT/wBKYFeOiWNJtjIRO9KeXGRTDg2f0ZpNy3jL2EB+b
	 AwYVXIKKd19u7GnYIRBi4tPEgF+UU8ImCZIiN/uxZlPU5oqIWqU03/00+AgPSPGrX4
	 LNn9BqWt068NQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A50981C81;
	Thu, 22 Aug 2024 22:31:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F8E81BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 22:31:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6765240D3F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 22:31:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dsCe3KB8Nibi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 22:30:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 933CF40CB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 933CF40CB3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 933CF40CB3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 22:30:59 +0000 (UTC)
X-CSE-ConnectionGUID: 9oCK/nBWSwKco3xyCVVbVw==
X-CSE-MsgGUID: lQ6DOOcmQvuXwr5taUJLBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="25710683"
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="25710683"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 15:30:59 -0700
X-CSE-ConnectionGUID: oE0M+dJmSq6lWHonVDxy5A==
X-CSE-MsgGUID: BKWraNcXShWny+wj1u24Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="62317509"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 15:30:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 15:30:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 15:30:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 15:30:57 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 15:30:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pq4x8+FbcRcXI5u6rCDUYuVoiFehb3V8sOX/fY/Oj1lCl62bSwkvdzofWJ7N7r9UjLrN8IAXApug4w0PJkHm3gkiiWJy59PiaKmMzMA7uET37mFnrqaIDen6XuOotMW9KZl0e6Ul9teiwPLXKmgMBPi9JtSB2TW8q0X/SI/B1qY39xLNoLD3J4oiclebyb4PQFYJrkXeAGf+9kWT80q26Um5mUSTGs1lE7BOd/RPU8wyXludV5mk8Asm+4FLFiSTRKjF5G7EOUtqU8bK72o0mVQdh4sK4ARSr82HGt7OmKXDcagikEi8Tan8KR7PFIeJDC+/+n5qFDvodrvcuZH+Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uGgKA+UCUo2y+a9DPyu2Dw1gFguSmCbD8BJl6F68OLQ=;
 b=ig8e9+7s0Gf0gaySLe7MiPWvbei4mC2FWg+VgvAV3VZBKHfLHsTbiEgU4VFP9SPdpcIay+Iw+1sreYwnb/ihrxyaSLG+cG6c9NezKdpDwCOg42Bze5IegV4e2saK4kCCDsehqtmIl9wTOGy0pCXPiomKSL+8XliSHVaOz4pr5dFIHsjKPzXZQD8bhBd5c6If/03a/1uxvbf2+0Vvb+AlPpKX4QprQ+Huk0++hhlUhV+UiDD/KPz8Dwk2s3y5hSbhjmh3dlc9fO9wX9tTVFN2qGAUKyW+Ymggxa6QLlY056NiGKR65PgxBGXvJs0EVSx3Q1NAkXu3mBHfokjAeZOO1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 PH7PR11MB5941.namprd11.prod.outlook.com (2603:10b6:510:13d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Thu, 22 Aug
 2024 22:30:54 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a%4]) with mapi id 15.20.7897.014; Thu, 22 Aug 2024
 22:30:54 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [PATCH net-next v2 2/2] ice: add callbacks for Embedded SYNC
 enablement on dpll pins
Thread-Index: AQHa9BJC5rP2SH/uLEOqMdAGmvOY6rIzFAgAgADHAuA=
Date: Thu, 22 Aug 2024 22:30:54 +0000
Message-ID: <DM6PR11MB4657B554D7E31C6157E60D5A9B8F2@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20240821213218.232900-1-arkadiusz.kubalewski@intel.com>
 <20240821213218.232900-3-arkadiusz.kubalewski@intel.com>
 <ZscS5jL_Uk0cqiga@nanopsycho.orion>
In-Reply-To: <ZscS5jL_Uk0cqiga@nanopsycho.orion>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|PH7PR11MB5941:EE_
x-ms-office365-filtering-correlation-id: 7fab9e62-85a6-468c-5dbe-08dcc2fa15c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?h+ir6d9k8jQ1zZ0fzWPQlYpNcE2xnI4tVWA5CTJWy3+6a7rWMjVw8BBrhnvQ?=
 =?us-ascii?Q?LjQpZkDD578DsAX1P0PKsMUSjvrVscixt3ZGaLN5mGTioI5DV4KGBPdqDscK?=
 =?us-ascii?Q?zUxm5VOEHNJRxjTqap+My6PZmPUy8Mp64VrzCkcbD7v2sMLl7TXn58FF+qAG?=
 =?us-ascii?Q?EUjxZc32IkilH3THldvJhUOOy0uEU7/wvVSEVledeKzFxCs6t1ZvNhj/erzC?=
 =?us-ascii?Q?CJ+IE39h41Y8nW0bJZNsOj03s+7i8dBAIxMQ7QqEEBUcfzF1ZsA6/AEWxEgm?=
 =?us-ascii?Q?iUSF5QiuOS3bSvwIiW9rovsdr0XBGj7DGhKCRcMrIiY3KTt8iJl/ORRc4ezt?=
 =?us-ascii?Q?Q8zW1+Aje+rBviMsf2JP70ArGQseMmw7MCFaQwREDXAGIx6uk/k7je3SgJJ3?=
 =?us-ascii?Q?kDwg0rpgKpB3n+ChZfpx365Tf/tV9/x2BAtpZFdyZxeAwfVBmon2WkUGo51d?=
 =?us-ascii?Q?a7rSSSAWZyVvVuFkb/f1ApyF4HPh2lCArTnEitRjMTeOqfH1DuPjGCGvwP5Y?=
 =?us-ascii?Q?hC31ilvLyS+N9CaSGyGKAmpykk3uEDNGVQSlNEoPqwJ7LwkiNe0eXcM+2XHD?=
 =?us-ascii?Q?RMS830nyiS9vDKzYoGPlx5E470T2liVobyv4q4vDP9g5YjZLdI67rBbpixlX?=
 =?us-ascii?Q?ynVyMj84Jo6dJgDftj7tFKH34zXg2LxwdmsA6b1PN/QLd4fLi+1R21am/u1K?=
 =?us-ascii?Q?PNjRwtXEOWQUOMyxc30y82Uj1vxQocDGOwE6L2jR734v5XK9htbTW7U5h7Ud?=
 =?us-ascii?Q?h+kWMap81K62iqWYHEGIziIfEr3YNEFVaCNkCVS9w3PdCcvn12Mb6q0y3F/2?=
 =?us-ascii?Q?F6qpteQL69wExxluyZOe4ChEK8oKzQ5i0wsjm6ARh2KyNgflsnhNhbNKz7P6?=
 =?us-ascii?Q?dHDgdW0YFVcQ+QTBvHex1ojjIgqIHtqhtn6mnMqF/6Y9rlC7Htu/IG7RXFL4?=
 =?us-ascii?Q?OQ6w/kTHWbmdGkKKGeqlP2pz3nCYU8EvVhY/hR+KGDXv+v48zfWEQrHWjXZa?=
 =?us-ascii?Q?GdJ+vmJlLB4wM+QdQ+M4GKUkiI0U83SXVoX04Behjv8x5KZF1goo7goAe98o?=
 =?us-ascii?Q?9jYp6cZIL6sIWsupnwIsPd/le4yrdUjFEzLJ9avymsdU4cyE2Oq8eQ8WiyWy?=
 =?us-ascii?Q?erq94AXzfVaKjKnYkCLzl8ZGtCkxaW7bqwJ8lT01/aKzJpaaudHooyluyo7/?=
 =?us-ascii?Q?Eh9o9INfPU0JG7Ow1ewz6G/uOfsnfkCz+JhL3ZIZXjfX3jWOaV6K14OeFOSY?=
 =?us-ascii?Q?9II5aueeMbD1HG88vMi+4zZ3Y3DBu0nkf7+WISm7au9XWM2xeggRO+5SuImb?=
 =?us-ascii?Q?Ns5wbvvtdel9uxERfXdAu+E16Zx748eKcupojvXzQ1YCCTnsb7j/5L2Q0ZeQ?=
 =?us-ascii?Q?E3cgJwNB1iO417Ngo9z2kip7AclCq3Hse4V3kcglczFvYD3CTg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TrfYNMA/w2Jsnw4XOuSbdjYd8kOj2AZZya7ElgRqEcKLsNKxlgk/hYV1rr68?=
 =?us-ascii?Q?p0XyPIDtAzw4qgVpWUilDLqCtsfA6nZCckTuJ8Te9Ak8SguEy6xOlxqqOqGq?=
 =?us-ascii?Q?J7DgvH1mR/Hf7udpNk4u9PRBiz48Q8wnaR2S700SiE27B6XDL48oE8toZuZ1?=
 =?us-ascii?Q?Qtqiffx/T0fPjQOM3HDU2RaaVMUC5HkUltU/Ta7SasxTreW2Nl0yzzCb85Kw?=
 =?us-ascii?Q?A4WNEaSvjkbdHW3Gv31lBvomCYqYXBmpcexgsheB5dKGjMjKrhQfPknhRu2i?=
 =?us-ascii?Q?EgSavZSg9AezIwX08Vi37SG0jKDn2LbcpdJ3WYcmiSh9+nnsdpF6J+7Nfr81?=
 =?us-ascii?Q?xH8W/XPww+zov+hKU3MeF1y8WPbXXgK1dnEt/IRzIuQ9n8UwRiQFJMbk4NfI?=
 =?us-ascii?Q?80YvLO4H3Uz9rlpq5/uedILx9BusZJZzB+nd1uA8tPD0HFqXRvNvMNYpPSa2?=
 =?us-ascii?Q?28ELzy3SrQ7rI1fpzBJFK+01Z4UgugodEqHm4zOV6rAfugwpqbqamUQgzgG8?=
 =?us-ascii?Q?gt8dI2eZkvUPCuNkzXubJCCzX2VI3aHTIjeoAAa0EcculJ39z15bpeMuQnw5?=
 =?us-ascii?Q?q7gdldZpYfYCeXskUsau5B8ccvQoghoUiTQML+C4D7RgSPyWgUkwLYLN/K1k?=
 =?us-ascii?Q?/5DkB3KcXfXdESoSn/xuV+rOOGkByI1l5CNQzwH4rmW65gCgTNGLY4t3W0Py?=
 =?us-ascii?Q?02fv2vP8F1WKelUmt+ElT1K6W42iwnH+rQLhr9MDZuMGPWGXwidJMwQqk8qx?=
 =?us-ascii?Q?vH6/0J1jmYTdMaqynXw0CNLA2LjHZuI18q/w5oh7mMyb5IZdt1HzMALNH/XX?=
 =?us-ascii?Q?lmH9DrjqMZHMtirnRQ/Mr9u3QsWUAblUlS/uNfd7JrDDtWPhUUfuqBaCpcnf?=
 =?us-ascii?Q?SKaVjrka0CiGp0YBRyNHEheDM0YBCwBL+zYmoIHRLcOKZ6jRBoGgQrOd4MdD?=
 =?us-ascii?Q?wCiQZ3o1FzVoDo/IL27QBfXQytNX0hEdXSJHMDQRDsSYqG56zsB0nxngXMfJ?=
 =?us-ascii?Q?CMH+VrvnKNa5Xd2nDsd78pH1zSVLs1wFDkxWqJS8gEFK10AtRN2ehPFjayeM?=
 =?us-ascii?Q?RQ/5yBnBq1939dnKYjTixzG4qW0xeDxA+BhTNsPJw0A4l7MnLyO4JRbjd29z?=
 =?us-ascii?Q?Lvk294gqlVBdohfGjU/fX6BIj843xcrIkZtvJisFdBkPfUTXJK2aHmikF25v?=
 =?us-ascii?Q?/HTOOIp4JUjHKaAlI8MpK4bLwTx6a8PgbntTLzKtY88oCkiuqsRKFUfme8oa?=
 =?us-ascii?Q?psn8IY9pdhuHi8UGfcpTpohNiV0Z0vR4HVZvndgP7fA2GmiaE8GZ71KBsZAz?=
 =?us-ascii?Q?TXrKebytGbBbKPzJGAK1WkgankCC5FVvPdMKSNevGKlWepdbon5WdZE3xZuW?=
 =?us-ascii?Q?JmhXGhoV4XrySu9S6TgcdpoFnDl61jh0OmbqgDYArQOyjoNjnqLAze8R0Ogh?=
 =?us-ascii?Q?Hfd2Wmdw0+nXp0eimfatV7PXPoA9j1M+zZMkJikKIeqbC8VxSlYwQQ/zxtPq?=
 =?us-ascii?Q?x3M6unfIU1FfRRhK65xiqJkoQASvCM7WWNENw9n4j446DLuhXGPOWUB6UJtS?=
 =?us-ascii?Q?piMgbBFHmDAA08JMk7EyASblVV0Qp5Cg20RGFfGucC57vcbLXd4RPeaPDQ98?=
 =?us-ascii?Q?dw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fab9e62-85a6-468c-5dbe-08dcc2fa15c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2024 22:30:54.1881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NXFBVOKl1n3p54Hq/oqdxK8dOHl1RIAuoM+3RRjVk9+bxshM7nuZZn1IEwcbbZdesVBVOYiOVgeMfEUrwjby7zCxezPmhitI1r/kXh2O2Ck=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5941
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724365860; x=1755901860;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3wCKymxcekqM9f9bL0pYzx6+mcPlz/EtVWGvToJP9gU=;
 b=bWBel+PM+e0tBz4OviDEeOlwxSmPBWNFUm1ZL1qKcdET8MhmB6ndN0ms
 cH7aJP1Q+4uceTVZBmSc3/RSvXn4tJGP9424TCtCJOZtkxZv6Y36FH1+8
 5dv+R5CK61NuUfSFMekrEHNjN4DsBEQiBPC+8q8LBsfhfA9df1jjPZPUU
 B8MrtKQE5NywyObJt4I+iq12xJG62GkK2/MhEyIxbOKeExQUvJIfXUC0H
 yICzIj44mCsMdYN2Xazu4SUJhpOMsDODuwJ1otEaFXiiiGOoyVfY5+/gp
 yBTIEvvbQjwdsp/2t+34SieGyHutxydnB1o2mK1iK4aShtPbgnGlolvyF
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bWBel+PM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/2] ice: add callbacks
 for Embedded SYNC enablement on dpll pins
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
Cc: "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Thursday, August 22, 2024 12:29 PM
>
>Wed, Aug 21, 2024 at 11:32:18PM CEST, arkadiusz.kubalewski@intel.com wrote=
:
>>Allow the user to get and set configuration of Embedded SYNC feature
>>on the ice driver dpll pins.
>>
>>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>---
>>v2:
>>- align to v2 changes of "dpll: add Embedded SYNC feature for a pin"
>>
>> drivers/net/ethernet/intel/ice/ice_dpll.c | 230 +++++++++++++++++++++-
>> drivers/net/ethernet/intel/ice/ice_dpll.h |   1 +
>> 2 files changed, 228 insertions(+), 3 deletions(-)
>
>Looks ok, couple of nitpicks below:
>
>
>
>>
>>diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
>>b/drivers/net/ethernet/intel/ice/ice_dpll.c
>>index e92be6f130a3..aa6b87281ea6 100644
>>--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
>>+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
>>@@ -9,6 +9,7 @@
>> #define ICE_CGU_STATE_ACQ_ERR_THRESHOLD		50
>> #define ICE_DPLL_PIN_IDX_INVALID		0xff
>> #define ICE_DPLL_RCLK_NUM_PER_PF		1
>>+#define ICE_DPLL_PIN_ESYNC_PULSE_HIGH_PERCENT	25
>>
>> /**
>>  * enum ice_dpll_pin_type - enumerate ice pin types:
>>@@ -30,6 +31,10 @@ static const char * const pin_type_name[] =3D {
>> 	[ICE_DPLL_PIN_TYPE_RCLK_INPUT] =3D "rclk-input",
>> };
>>
>>+static const struct dpll_pin_frequency ice_esync_range[] =3D {
>>+	DPLL_PIN_FREQUENCY_RANGE(0, DPLL_PIN_FREQUENCY_1_HZ),
>>+};
>>+
>> /**
>>  * ice_dpll_is_reset - check if reset is in progress
>>  * @pf: private board structure
>>@@ -394,8 +399,8 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct
>>ice_dpll_pin *pin,
>>
>> 	switch (pin_type) {
>> 	case ICE_DPLL_PIN_TYPE_INPUT:
>>-		ret =3D ice_aq_get_input_pin_cfg(&pf->hw, pin->idx, NULL, NULL,
>>-					       NULL, &pin->flags[0],
>>+		ret =3D ice_aq_get_input_pin_cfg(&pf->hw, pin->idx, &pin->status,
>>+					       NULL, NULL, &pin->flags[0],
>> 					       &pin->freq, &pin->phase_adjust);
>> 		if (ret)
>> 			goto err;
>>@@ -430,7 +435,7 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct
>>ice_dpll_pin *pin,
>> 			goto err;
>>
>> 		parent &=3D ICE_AQC_GET_CGU_OUT_CFG_DPLL_SRC_SEL;
>>-		if (ICE_AQC_SET_CGU_OUT_CFG_OUT_EN & pin->flags[0]) {
>>+		if (ICE_AQC_GET_CGU_OUT_CFG_OUT_EN & pin->flags[0]) {
>> 			pin->state[pf->dplls.eec.dpll_idx] =3D
>> 				parent =3D=3D pf->dplls.eec.dpll_idx ?
>> 				DPLL_PIN_STATE_CONNECTED :
>>@@ -1098,6 +1103,221 @@ ice_dpll_phase_offset_get(const struct dpll_pin *=
pin,
>>void *pin_priv,
>> 	return 0;
>> }
>>
>>+/**
>>+ * ice_dpll_output_esync_set - callback for setting embedded sync
>>+ * @pin: pointer to a pin
>>+ * @pin_priv: private data pointer passed on pin registration
>>+ * @dpll: registered dpll pointer
>>+ * @dpll_priv: private data pointer passed on dpll registration
>>+ * @esync_freq: requested embedded sync frequency
>>+ * @extack: error reporting
>>+ *
>>+ * Dpll subsystem callback. Handler for setting embedded sync frequency
>>value
>>+ * on output pin.
>>+ *
>>+ * Context: Acquires pf->dplls.lock
>>+ * Return:
>>+ * * 0 - success
>>+ * * negative - error
>>+ */
>>+static int
>>+ice_dpll_output_esync_set(const struct dpll_pin *pin, void *pin_priv,
>>+			  const struct dpll_device *dpll, void *dpll_priv,
>>+			  u64 esync_freq, struct netlink_ext_ack *extack)
>
>s/esync_freq/freq/
>

Fixed in v3.

>
>>+{
>>+	struct ice_dpll_pin *p =3D pin_priv;
>>+	struct ice_dpll *d =3D dpll_priv;
>>+	struct ice_pf *pf =3D d->pf;
>>+	u8 flags =3D 0;
>>+	int ret;
>>+
>>+	if (ice_dpll_is_reset(pf, extack))
>>+		return -EBUSY;
>>+	mutex_lock(&pf->dplls.lock);
>>+	if (p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_OUT_EN)
>>+		flags =3D ICE_AQC_SET_CGU_OUT_CFG_OUT_EN;
>>+	if (esync_freq =3D=3D DPLL_PIN_FREQUENCY_1_HZ) {
>>+		if (p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_ESYNC_EN) {
>>+			ret =3D 0;
>>+		} else {
>>+			flags |=3D ICE_AQC_SET_CGU_OUT_CFG_ESYNC_EN;
>>+			ret =3D ice_aq_set_output_pin_cfg(&pf->hw, p->idx, flags,
>>+							0, 0, 0);
>>+		}
>>+	} else {
>>+		if (!(p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_ESYNC_EN)) {
>>+			ret =3D 0;
>>+		} else {
>>+			flags &=3D ~ICE_AQC_SET_CGU_OUT_CFG_ESYNC_EN;
>>+			ret =3D ice_aq_set_output_pin_cfg(&pf->hw, p->idx, flags,
>>+							0, 0, 0);
>>+		}
>>+	}
>>+	mutex_unlock(&pf->dplls.lock);
>>+	if (ret)
>>+		NL_SET_ERR_MSG_FMT(extack,
>>+				   "err:%d %s failed to set e-sync freq\n",
>>+				   ret,
>>+				   ice_aq_str(pf->hw.adminq.sq_last_status));
>
>
>See my comment to ice_dpll_input_esync_set(), same applies here.
>

OK.

>
>>+	return ret;
>>+}
>>+
>>+/**
>>+ * ice_dpll_output_esync_get - callback for getting embedded sync config
>>+ * @pin: pointer to a pin
>>+ * @pin_priv: private data pointer passed on pin registration
>>+ * @dpll: registered dpll pointer
>>+ * @dpll_priv: private data pointer passed on dpll registration
>>+ * @esync: on success holds embedded sync pin properties
>>+ * @extack: error reporting
>>+ *
>>+ * Dpll subsystem callback. Handler for getting embedded sync frequency
>>value
>>+ * and capabilities on output pin.
>>+ *
>>+ * Context: Acquires pf->dplls.lock
>>+ * Return:
>>+ * * 0 - success
>>+ * * negative - error
>>+ */
>>+static int
>>+ice_dpll_output_esync_get(const struct dpll_pin *pin, void *pin_priv,
>>+			  const struct dpll_device *dpll, void *dpll_priv,
>>+			  struct dpll_pin_esync *esync,
>>+			  struct netlink_ext_ack *extack)
>>+{
>>+	struct ice_dpll_pin *p =3D pin_priv;
>>+	struct ice_dpll *d =3D dpll_priv;
>>+	struct ice_pf *pf =3D d->pf;
>>+
>>+	if (ice_dpll_is_reset(pf, extack))
>>+		return -EBUSY;
>>+	mutex_lock(&pf->dplls.lock);
>>+	if (!(p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_ESYNC_ABILITY) ||
>>+	    p->freq !=3D DPLL_PIN_FREQUENCY_10_MHZ) {
>>+		mutex_unlock(&pf->dplls.lock);
>>+		return -EOPNOTSUPP;
>>+	}
>>+	esync->range =3D ice_esync_range;
>>+	esync->range_num =3D ARRAY_SIZE(ice_esync_range);
>>+	if (p->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_ESYNC_EN) {
>>+		esync->freq =3D DPLL_PIN_FREQUENCY_1_HZ;
>>+		esync->pulse =3D ICE_DPLL_PIN_ESYNC_PULSE_HIGH_PERCENT;
>>+	} else {
>>+		esync->freq =3D 0;
>>+		esync->pulse =3D 0;
>>+	}
>>+	mutex_unlock(&pf->dplls.lock);
>>+	return 0;
>>+}
>>+
>>+/**
>>+ * ice_dpll_input_esync_set - callback for setting embedded sync
>>+ * @pin: pointer to a pin
>>+ * @pin_priv: private data pointer passed on pin registration
>>+ * @dpll: registered dpll pointer
>>+ * @dpll_priv: private data pointer passed on dpll registration
>>+ * @esync_freq: requested embedded sync frequency
>>+ * @extack: error reporting
>>+ *
>>+ * Dpll subsystem callback. Handler for setting embedded sync frequency
>>value
>>+ * on input pin.
>>+ *
>>+ * Context: Acquires pf->dplls.lock
>>+ * Return:
>>+ * * 0 - success
>>+ * * negative - error
>>+ */
>>+static int
>>+ice_dpll_input_esync_set(const struct dpll_pin *pin, void *pin_priv,
>>+			 const struct dpll_device *dpll, void *dpll_priv,
>>+			 u64 esync_freq, struct netlink_ext_ack *extack)
>>+{
>>+	struct ice_dpll_pin *p =3D pin_priv;
>>+	struct ice_dpll *d =3D dpll_priv;
>>+	struct ice_pf *pf =3D d->pf;
>>+	u8 flags_en =3D 0;
>>+	int ret;
>>+
>>+	if (ice_dpll_is_reset(pf, extack))
>>+		return -EBUSY;
>>+	mutex_lock(&pf->dplls.lock);
>>+	if (p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_INPUT_EN)
>>+		flags_en =3D ICE_AQC_SET_CGU_IN_CFG_FLG2_INPUT_EN;
>>+	if (esync_freq =3D=3D DPLL_PIN_FREQUENCY_1_HZ) {
>>+		if (p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_ESYNC_EN) {
>>+			ret =3D 0;
>>+		} else {
>>+			flags_en |=3D ICE_AQC_SET_CGU_IN_CFG_FLG2_ESYNC_EN;
>>+			ret =3D ice_aq_set_input_pin_cfg(&pf->hw, p->idx, 0,
>>+						       flags_en, 0, 0);
>>+		}
>>+	} else {
>>+		if (!(p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_ESYNC_EN)) {
>>+			ret =3D 0;
>>+		} else {
>>+			flags_en &=3D ~ICE_AQC_SET_CGU_IN_CFG_FLG2_ESYNC_EN;
>>+			ret =3D ice_aq_set_input_pin_cfg(&pf->hw, p->idx, 0,
>>+						       flags_en, 0, 0);
>>+		}
>>+	}
>>+	mutex_unlock(&pf->dplls.lock);
>>+	if (ret)
>>+		NL_SET_ERR_MSG_FMT(extack,
>>+				   "err:%d %s failed to set e-sync freq\n",
>
>Not sure how you do that in ice, but there should be a space after ":".
>But, in this case, print ret value in the message is redundant as you
>return ret value to the user. Remove.
>
>Moreover, this extack message has no value, as you basically say, that
>the command user executed failed, which he already knows by non-0 return
>value :) Either provide some useful details or avoid the extack message
>completely.
>

OK, makes sense to me, removed in v3.

Thank you!
Arkadiusz

>
>>+				   ret,
>>+				   ice_aq_str(pf->hw.adminq.sq_last_status));
>>+
>>+	return ret;
>>+}
>>+
>>+/**
>>+ * ice_dpll_input_esync_get - callback for getting embedded sync config
>>+ * @pin: pointer to a pin
>>+ * @pin_priv: private data pointer passed on pin registration
>>+ * @dpll: registered dpll pointer
>>+ * @dpll_priv: private data pointer passed on dpll registration
>>+ * @esync: on success holds embedded sync pin properties
>>+ * @extack: error reporting
>>+ *
>>+ * Dpll subsystem callback. Handler for getting embedded sync frequency
>>value
>>+ * and capabilities on input pin.
>>+ *
>>+ * Context: Acquires pf->dplls.lock
>>+ * Return:
>>+ * * 0 - success
>>+ * * negative - error
>>+ */
>>+static int
>>+ice_dpll_input_esync_get(const struct dpll_pin *pin, void *pin_priv,
>>+			 const struct dpll_device *dpll, void *dpll_priv,
>>+			 struct dpll_pin_esync *esync,
>>+			 struct netlink_ext_ack *extack)
>>+{
>>+	struct ice_dpll_pin *p =3D pin_priv;
>>+	struct ice_dpll *d =3D dpll_priv;
>>+	struct ice_pf *pf =3D d->pf;
>>+
>>+	if (ice_dpll_is_reset(pf, extack))
>>+		return -EBUSY;
>>+	mutex_lock(&pf->dplls.lock);
>>+	if (!(p->status & ICE_AQC_GET_CGU_IN_CFG_STATUS_ESYNC_CAP) ||
>>+	    p->freq !=3D DPLL_PIN_FREQUENCY_10_MHZ) {
>>+		mutex_unlock(&pf->dplls.lock);
>>+		return -EOPNOTSUPP;
>>+	}
>>+	esync->range =3D ice_esync_range;
>>+	esync->range_num =3D ARRAY_SIZE(ice_esync_range);
>>+	if (p->flags[0] & ICE_AQC_GET_CGU_IN_CFG_FLG2_ESYNC_EN) {
>>+		esync->freq =3D DPLL_PIN_FREQUENCY_1_HZ;
>>+		esync->pulse =3D ICE_DPLL_PIN_ESYNC_PULSE_HIGH_PERCENT;
>>+	} else {
>>+		esync->freq =3D 0;
>>+		esync->pulse =3D 0;
>>+	}
>>+	mutex_unlock(&pf->dplls.lock);
>>+	return 0;
>>+}
>>+
>> /**
>>  * ice_dpll_rclk_state_on_pin_set - set a state on rclk pin
>>  * @pin: pointer to a pin
>>@@ -1222,6 +1442,8 @@ static const struct dpll_pin_ops ice_dpll_input_ops=
 =3D {
>> 	.phase_adjust_get =3D ice_dpll_pin_phase_adjust_get,
>> 	.phase_adjust_set =3D ice_dpll_input_phase_adjust_set,
>> 	.phase_offset_get =3D ice_dpll_phase_offset_get,
>>+	.esync_set =3D ice_dpll_input_esync_set,
>>+	.esync_get =3D ice_dpll_input_esync_get,
>> };
>>
>> static const struct dpll_pin_ops ice_dpll_output_ops =3D {
>>@@ -1232,6 +1454,8 @@ static const struct dpll_pin_ops ice_dpll_output_op=
s =3D
>>{
>> 	.direction_get =3D ice_dpll_output_direction,
>> 	.phase_adjust_get =3D ice_dpll_pin_phase_adjust_get,
>> 	.phase_adjust_set =3D ice_dpll_output_phase_adjust_set,
>>+	.esync_set =3D ice_dpll_output_esync_set,
>>+	.esync_get =3D ice_dpll_output_esync_get,
>> };
>>
>> static const struct dpll_device_ops ice_dpll_ops =3D {
>>diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h
>>b/drivers/net/ethernet/intel/ice/ice_dpll.h
>>index 93172e93995b..c320f1bf7d6d 100644
>>--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
>>+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
>>@@ -31,6 +31,7 @@ struct ice_dpll_pin {
>> 	struct dpll_pin_properties prop;
>> 	u32 freq;
>> 	s32 phase_adjust;
>>+	u8 status;
>> };
>>
>> /** ice_dpll - store info required for DPLL control
>>--
>>2.38.1
>>
