Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DC2A76BEC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Mar 2025 18:27:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D02CE812C6;
	Mon, 31 Mar 2025 16:27:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KPs0OfR8mXxS; Mon, 31 Mar 2025 16:27:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A9BF81282
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743438469;
	bh=ggDuUJ3Eiy7mY68s+IlKQCUtYwIJU3A1ekH3ED/VhA4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VuHY3nvQgdCNX3RyDmhdPTc/cNrO/aDQ2TxNW5R/OL5QWdTUHh92tnn+T3wqXKeVu
	 KZAocPMgYoYFX27owoGAy3mJxShCsVGKmPvsdeBxwkw5AxXdwoKHhaqe95ZR7x6iTB
	 EX3/OZHDdpJrXRXvczbsm/JPZ0CLzSubeaAxMoTsqZ1FwutrMvpGdDLyDFRwjPD+t9
	 jd8jKKtRazLJdu0tkW+pEI5Oa4SzCMhMCiWEBvOr6zgE5FNx0JgGssI8NPIWAq/iG8
	 QxpcfMONiUzG/zmRa0QHnMnpY06kwCEc7g/+31IQNVO9Hdv8i22O1lTDzttrinupoU
	 owdGJ+oDg/T1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A9BF81282;
	Mon, 31 Mar 2025 16:27:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4AE8F121
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Mar 2025 16:27:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C63540575
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Mar 2025 16:27:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C3oSuNZdFfV7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Mar 2025 16:27:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 29E30405D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29E30405D6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 29E30405D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Mar 2025 16:27:46 +0000 (UTC)
X-CSE-ConnectionGUID: rmpC5dVTRSmdpKfAUJI1sQ==
X-CSE-MsgGUID: d5S0mLaHSZqXkxtK1fQ/qw==
X-IronPort-AV: E=McAfee;i="6700,10204,11390"; a="44890500"
X-IronPort-AV: E=Sophos;i="6.14,291,1736841600"; d="scan'208";a="44890500"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2025 09:27:47 -0700
X-CSE-ConnectionGUID: gAAHszRNTs6VMeQ3409nHA==
X-CSE-MsgGUID: flln9fjTQviGUTJ5dpKb7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,291,1736841600"; d="scan'208";a="126133274"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2025 09:27:46 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 31 Mar 2025 09:27:45 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 31 Mar 2025 09:27:45 -0700
Received: from outbound.mail.protection.outlook.com (104.47.56.172) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 31 Mar 2025 09:27:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TvDISlWhow7MZ7XHVuBBtyrakd8bGRutbBk52ysjfJW8s4CMIXKhsvi6REh2OJfYT7tqbJELNzsFGZiBqIDONOdYY5k1n0A5VnhmkyBPzLn4Wfp59GI5BVWm8Hyn1BL0n7VZ11+ruhGbnLQWwinTgtS5YMlqwSVxrYCDGJhbO5meVhq63Y2QDX4Q3sUtDu0EMJ0tW56hrRNfu0LHYtz8mLuaj/8PX/8W8Nx05SjSXiAFFwjg0ZmZOL2wUWVlQgHOMNieI7t/jLh3+U3DvJak/DakPZbHKlu42bL8vg1Ovx4i/vtedVh3WiMtE3OBTLkA1mCeexifdU5IIjW3JoC3rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ggDuUJ3Eiy7mY68s+IlKQCUtYwIJU3A1ekH3ED/VhA4=;
 b=n2zv8zZKqW1c+KxDUsod4Eo+IRA08vcc05GMhmDSr9YyZyCOb1sMrTu84CSrhyXyRPK+C2COf0ht4MWq3GC68RIrnDNJbEZ3dJb9VTrNHGYQrs74+AIWmgQMTSWflMfozFBpk99mJfNNmtVZK/qolnu0MiKy1014Lhqv2o5oKnEHHLOKk4NrnQaQOGe0TwNR2S0ZD+R4nemOd3TbZbHNr51IOUcXhJCDGsOmJK+PRltFRms+2zDyyb6QZYS8195EGqgPwcR19GWQ8rC5CEplJCHUjnOliggiGReaFCk3/tUHvXzq3Ljs8m/e+iBZjZlvfvTUAfvkehuruCnIc09H6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by PH7PR11MB6546.namprd11.prod.outlook.com (2603:10b6:510:212::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.48; Mon, 31 Mar
 2025 16:27:38 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%4]) with mapi id 15.20.8534.043; Mon, 31 Mar 2025
 16:27:38 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Simon Horman <horms@kernel.org>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>
CC: "willemb@google.com" <willemb@google.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "yuma@redhat.com" <yuma@redhat.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Dumazet, Eric" <edumazet@google.com>,
 "Chittim, Madhu" <madhu.chittim@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "decot@google.com" <decot@google.com>, "davem@davemloft.net"
 <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] idpf: fix adapter NULL
 pointer dereference on reboot
Thread-Index: AQHbl8jf1hqPgo+6ckGLM/BcMhd6ArN8UOkAgBEylEA=
Date: Mon, 31 Mar 2025 16:27:38 +0000
Message-ID: <SJ1PR11MB62976BE2BA7DB866359BD31A9BAD2@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250318054202.17405-1-emil.s.tantilov@intel.com>
 <20250320174808.GG892515@horms.kernel.org>
In-Reply-To: <20250320174808.GG892515@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|PH7PR11MB6546:EE_
x-ms-office365-filtering-correlation-id: 37a245ef-33b9-467d-26ce-08dd7070f3bb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?kuaSW3J/Dmn0WDDwMn5yPP6dYo/P4x+Dt3IlSy4HaPJLTBZjzl0DU+zqwvQm?=
 =?us-ascii?Q?3HQXkNJ5Jmns/00H9+tOpyi6GYs7n0Detk5VtIfJL/Xd6b3A06syES5mZw7z?=
 =?us-ascii?Q?cXPi5Hn/ynRq9vbAP89l1WxHVxph/g1uo8ZHQMi1Zg2GNp6bh2YyAXCJ1FOR?=
 =?us-ascii?Q?hkL1JadRVQb6Iyo0gg8C9+Hf2Q36DMi4TIvoGZfXy4uJYut6gWNOtu2MUPeN?=
 =?us-ascii?Q?XlEvj/JJIMhWi2FqLA3WllBfNb0uA4UQRFuwH+O0FvYH8cpZsPNVQh57m3hm?=
 =?us-ascii?Q?9K6IKR8ZKuSaPP1TGVvouq9pXb/JJrlFyUsflJR5Y/2TpHTthcnnmNzcnL2L?=
 =?us-ascii?Q?GTgyKRO/NQ5vNf/Vu9lXOQlUb1UwQLV5uFm4P782jguDMwnnUg4IiaaIoVBX?=
 =?us-ascii?Q?C0JmxdIo2LVXNUXLVwmjLC+XpDlANtD92kYpFTctR2nHGw1B81hpSUSiZUVi?=
 =?us-ascii?Q?4yYBoCZmNOaE1JwIPIYxSY74kNjJst1QGef7rFyCBpfYFXjI31TNQM/LBznH?=
 =?us-ascii?Q?9jbaSwTLUes1/poO48XM0xD7D/aI+l/L4+iLCaGBHi3N8ovjDkUBcCe+VQIt?=
 =?us-ascii?Q?I7CF4uqKUpeexRBqAIXTlbHlhUj8ME+Ik5VBxJfK+7r/ICCbuPh4RObaLSip?=
 =?us-ascii?Q?P6wAbwNK3yyyqam2dZdsOaLjcz//uuBg5dCGttkHTAS18bqH0sIXBgcpdEzO?=
 =?us-ascii?Q?JtDOA7i1fqdbnwHsmjZMMwX+PYsg1VY0qYEI6k3vdiYoxDctSZR2YGEGGwZZ?=
 =?us-ascii?Q?8tb2iLCgOhqV4OrwbeExk+uh6lPIDG2WtJ0mLcj3LaknC3IdNPNOVILDYyYB?=
 =?us-ascii?Q?RA+VYMQeonTQOvT084FB2kQp9GEpfUpxrOoUQD48cPBNtRHAzhyotW67A69r?=
 =?us-ascii?Q?NydB+gD2eVL5HWc2dONsyBS14lApCckIKRL1dKq036/+Mihi2MoImYDKGWW0?=
 =?us-ascii?Q?5s+LvvUnfLETnY0l5xgpjwljyuDEwmRUiIFcDTFPMx4WVsMfGaFpWlSzJphm?=
 =?us-ascii?Q?yOggSwrJwZS5UCGmxGDbDbJv1nKO4yGnbdKDgNYYmJSI0I/7a3XPW9SeosuV?=
 =?us-ascii?Q?V/ICwCnElvMBkCa0KEtz2DyEgkVWWse4lq8GEaJQUGhDEfMaYU0eH7Itn+Sk?=
 =?us-ascii?Q?TL7tJr+x9XGEp8SORhPK13zsgTbUfTOzBuas5B44Y9qfvK2cs9CWZkJfgBaF?=
 =?us-ascii?Q?48KE20XbBbE6BjHWfynjFJ+DvGFhLX1N4D7fGpHvRUjFsT6qFyfioisKKqQR?=
 =?us-ascii?Q?6YE0WE5NLdgIbeaqB8TuovG0c+NW6JTDXr32W5epWNYxuzXL6z5lmcCVQG2I?=
 =?us-ascii?Q?LeBr0Xb/zcRB8l2h0p2IcZOeAmkM5xC62J27A2iwCYsaYyDKanxrMrpQMqQE?=
 =?us-ascii?Q?dg7Hv+BjOXjnAzyKKLBPKrwU+gW1v/gKEQB1sx/E4882HZuBz/m79O4R7KPo?=
 =?us-ascii?Q?nlVSya125s1OrDVhLBy2pRPINYDZjGPG?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3eupYSi+s91R2AnabzR2iLAFYtTm8iq62B4ogCrAxI15aN1lPHeRJrDymazi?=
 =?us-ascii?Q?gilsJwFiT8KHdEG5uag8e/6TgK4JFBixKhTFEY0iynXlanwsurodk9RQxNxG?=
 =?us-ascii?Q?faxg7s0MwGiOmMZkLqsZRQEhvgKdLbVnNOhKif4n+R26uhDnkkhLEWGgd0BD?=
 =?us-ascii?Q?xAWpjhgu5LgsQZYEAenSUIFYSc/Pb7b051rCrlPuZ9jIruVZVq5K/EF8vWZC?=
 =?us-ascii?Q?kUzKwxs477776MVKOr2/lfVj8SNX5d75qGyhOqXjes1JeKIz0erb5i+MBZNC?=
 =?us-ascii?Q?Rk06FC7YlErXhJDAGXUcK7zG0fszmAHlDTENk3rDDwLm06fZ0e2EIl8Rl6RE?=
 =?us-ascii?Q?ybRVTm4icWs7hrs5nl+w26gIqnwZ4/hmFP4L4fx5adrYUpQEdiw/Hqez3Nzh?=
 =?us-ascii?Q?V5R7kiRpNxKQmLQynb2Va2hKTacc20DpC6mFBVp/rYIN4z0niyNhWDXO3JQv?=
 =?us-ascii?Q?PvI8cWspRCOlW8WUscxrdI5E/e5DEXBA5lC3ry+j6S+JW+ORLczgXc89b5Ku?=
 =?us-ascii?Q?up4seaxNS1C/yuz/F/Pg+dVjLo4NSiDz+KcGEkTF1Sdt4uf4GSHtMYmaqkJx?=
 =?us-ascii?Q?V2u3vVK2LHhbhmGSrRPX55MUGsYzICGjh9QBAuL4UmvLVa9himJ9wGGmujih?=
 =?us-ascii?Q?1U6c5a6RDI5MyJX5FNDM6cT8z+Ld2r2msVtVl1o1W2UNMfq/LHurSkpztFnr?=
 =?us-ascii?Q?aEfKE3n2MT+9lGx0TlE80uhplau5VqhZ/eyDIJAOqdKUZ7NppBiFMfWrL3nR?=
 =?us-ascii?Q?+jGGyytI4fFJjCa0YO1Lh8hXEtMESkvf6XCXwXu3a6UJpam3SASS+GHmUDJk?=
 =?us-ascii?Q?wRvJ/yVLsb6jOL5ObuWFtXqUe3j0qyWxdaVoiUYOpXpn6rJQSblbkS05vJtW?=
 =?us-ascii?Q?Wdz/9mcmJp0nNUqr3QqGChJbtMTTHpQ9Tj5CljrM1kBXWvk/Jgz57divsqMr?=
 =?us-ascii?Q?5YomQBnfOWrPWD4T4iQ775h0B63dtgoWrw7oEbqP8UsNX7y/SJMxLDKEPuST?=
 =?us-ascii?Q?5mAQhmGE7SNOM2vVeFlyn27keGKphOvXms1ct2penUdGo6RJhoXd/Dd8SRaA?=
 =?us-ascii?Q?liBVawkctkxSk/AWS1klumjXlhn0ctuIswQjVJEcsPIsYShgwnjWnrDTeJX7?=
 =?us-ascii?Q?fcVaxez0nLi+WXLRlgI6NzX+vdgjXywmRdF7S+kxH1XjW6uP91J/zn7TZCMr?=
 =?us-ascii?Q?ZUNkIPu/QGgiO26FD7XsQ7GGk89bxhCUenWfrXn31MPVspkylmr6w2TkzmxI?=
 =?us-ascii?Q?xRF3i4Ifm5WjbwLUAo/AnLqAa0Wud9hzOrpxXBFV/CYCTNv88Wd8fDE7JR3b?=
 =?us-ascii?Q?PEDhc9ZxXAVh7Yyucn0wrRHkj1uWwFx6LbRIKezs/3K3O1EzwqFSiuSI2Lqc?=
 =?us-ascii?Q?qCCMz1om+plFEd5NoN0Hwx5hUeJuWLnK7TCpO7z+IDTwWRPMdT6mMx3ABcB8?=
 =?us-ascii?Q?e3nLlFAn8oi9q89Wej0if4BsR7bzxp5tijJ8+S1nvEWaToK4VB1pb65dpH0w?=
 =?us-ascii?Q?z/dClayFr0LR3iHmI65zCNuG2I2gMbBnBcgz7GKtA48UsICLB0/jDMdrkkbg?=
 =?us-ascii?Q?ONt+5e3p52QUOalUpR5VUWxS360Cck+SX8xuwzJM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37a245ef-33b9-467d-26ce-08dd7070f3bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2025 16:27:38.4172 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WYRmQc0+V62xy2656n4CmS5HsnQ7x+3PLvaZUpLV7eU+cy98yToS7dvkL/EEQDpeV3L0HkYyYav8bhO30n4nKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6546
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743438468; x=1774974468;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j33BaSiT0u9caHFMxHFAGuhS29wEMjyq+mBo2p0uzdw=;
 b=KcJIlPj+fSGRxJyRyCGdsDC1MOIZMlQtEeuPaNWkWO/PrE1+59eMxpeb
 jX7M09q63reWFZoiGv4zoS/Y2+HQvq5DSB7x6i2TOTKWCP/UW+11sNM+b
 2K8C0C5we8455+O1AQyzGDUYQ77IqUUnrqVYMRli1UouALTAL6smQQTxm
 elitru/TzA/biIympQZCgI/vaUAres4FPqrUNW0N0uDZQVae4/92WblPH
 ojRo0o0LCGZEfebeqPg4H3olBs6oTlke8nWvY1Z+8DEkFgSW7oZLchn3K
 juO7l4RtoAbdDHrQyDPgJWW7F2mywAsjrPSgliMn6afg6kQ7VEb56RYrI
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KcJIlPj+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: fix adapter NULL
 pointer dereference on reboot
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
> Simon Horman
> Sent: Thursday, March 20, 2025 10:48 AM
> To: Tantilov, Emil S <emil.s.tantilov@intel.com>
> Cc: willemb@google.com; pabeni@redhat.com; netdev@vger.kernel.org;
> yuma@redhat.com; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>;
> Dumazet, Eric <edumazet@google.com>; Chittim, Madhu
> <madhu.chittim@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; kuba@kernel.org;
> michal.swiatkowski@linux.intel.com; intel-wired-lan@lists.osuosl.org;
> decot@google.com; davem@davemloft.net
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: fix adapter NULL =
pointer
> dereference on reboot
>=20
> On Mon, Mar 17, 2025 at 10:42:02PM -0700, Emil Tantilov wrote:
> > With SRIOV enabled, idpf ends up calling into idpf_remove() twice.
> > First via idpf_shutdown() and then again when idpf_remove() calls into
> > sriov_disable(), because the VF devices use the idpf driver, hence the
> > same remove routine. When that happens, it is possible for the adapter
> > to be NULL from the first call to idpf_remove(), leading to a NULL
> > pointer dereference.
> >
> > echo 1 > /sys/class/net/<netif>/device/sriov_numvfs
> > reboot
> >
> > BUG: kernel NULL pointer dereference, address: 0000000000000020 ...
> > RIP: 0010:idpf_remove+0x22/0x1f0 [idpf] ...
> > ? idpf_remove+0x22/0x1f0 [idpf]
> > ? idpf_remove+0x1e4/0x1f0 [idpf]
> > pci_device_remove+0x3f/0xb0
> > device_release_driver_internal+0x19f/0x200
> > pci_stop_bus_device+0x6d/0x90
> > pci_stop_and_remove_bus_device+0x12/0x20
> > pci_iov_remove_virtfn+0xbe/0x120
> > sriov_disable+0x34/0xe0
> > idpf_sriov_configure+0x58/0x140 [idpf]
> > idpf_remove+0x1b9/0x1f0 [idpf]
> > idpf_shutdown+0x12/0x30 [idpf]
> > pci_device_shutdown+0x35/0x60
> > device_shutdown+0x156/0x200
> > ...
> >
> > Replace the direct idpf_remove() call in idpf_shutdown() with
> > idpf_vc_core_deinit() and idpf_deinit_dflt_mbx(), which perform the
> > bulk of the cleanup, such as stopping the init task, freeing IRQs,
> > destroying the vports and freeing the mailbox. This avoids the calls
> > to
> > sriov_disable() in addition to a small netdev cleanup, and destroying
> > workqueues, which don't seem to be required on shutdown.
> >
> > Reported-by: Yuying Ma <yuma@redhat.com>
> > Fixes: e850efed5e15 ("idpf: add module register and probe
> > functionality")
> > Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> > Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> > ---
> > Changelog:
> > v2:
> > - Updated the description to clarify the path leading up to the crash,
> >   and the difference in the logic between remove and shutdown as result
> >   of this change.
> >
> > v1:
> > https://lore.kernel.org/intel-wired-lan/20250307003956.22018-1-emil.s.
> > tantilov@intel.com/
>=20
> Thanks for the update.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
>=20
>=20

Tested-by: Samuel Salin <Samuel.salin@intel.com>
