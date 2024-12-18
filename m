Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D824A9F666A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 14:05:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC81084E42;
	Wed, 18 Dec 2024 13:05:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IGWgVtWb98-9; Wed, 18 Dec 2024 13:05:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC21D84E56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734527122;
	bh=kCOin/+ncR9n1wW6ETrJKBOWVcRcWZh8Lmvf3GhmnDY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=okdZSY7jiXygLodgbM5Q+qvrS7cNeFWzAZ6yVAgEwv5MqIsE8JpS3NV472kS+Qj+1
	 wr8/qapeJogV5DGr2tmrOYotX7j18jEdJztmexviMTVcFpMBpPJFLXhZ7YwhNjkfun
	 HSAucVlPlFnpLVRoHn8CeHw85dySPLdeYa9pocs4/rGhr+MvQsdvIVcBQHL+fUp0N3
	 ot4THyzhiugC6mciDIjsKI0GGi13QvGjhDBs/Ms2/XPUEg3Hyn0UAfmTDr0OLQv8am
	 Z64uO6q8fMTy1BJENfmskx1IUZKn5nr54tT9oroYJtO896x5I0k5U1tvpJ9B1dz60m
	 OcTwXDz3lgp/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC21D84E56;
	Wed, 18 Dec 2024 13:05:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D8760C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:05:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C5C1F415C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:05:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zlLQniqNH0qi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 13:05:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C7F9141DF5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7F9141DF5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C7F9141DF5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:05:18 +0000 (UTC)
X-CSE-ConnectionGUID: oUwq2TlkTta54fOJJLl+hw==
X-CSE-MsgGUID: VLDY2nYdQv2axcOek5sTug==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="38936446"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="38936446"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 05:05:15 -0800
X-CSE-ConnectionGUID: 8Vtrh2S5Qau8aRq+QEf91Q==
X-CSE-MsgGUID: NFXY4TiESSuQ9dim8RGong==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="128833700"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 05:04:25 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 05:04:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 05:04:24 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 05:04:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nA69iB5vC/AbhAiQcqC/h76eA3zyGQ0oxAfGhSvsgPoGPTpJh3CRbiP9d4eldybbOU2jN+ykmom2UHzrnC04j62JfjS5fVYzByHk/xBbU60A01RWw+MgUX0h1UrZbPPl1lOWMcUBdJkdlS8XkQSezqIzLb7fivlJUo2aNOR1X4MxVVqq9x8Xl8dRnK+sHVDMSnASXaKFVEMXDOxkxGAiFUTdANPbBfY21Of0x5fH9uyzq+nnuBKjFUlTwiuBXh6+jLpefa0GU+5I+fJoYsV4YmEOIn8F30hNYe1UiZVAqEzTppnetZ8BaCaLzYR6hvH5uEy8R6HWqb3Old1btE3V2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kCOin/+ncR9n1wW6ETrJKBOWVcRcWZh8Lmvf3GhmnDY=;
 b=kO+Kdmn9SVAb/nMN6vs4E1TxYOt20itOr1zG+Bkb99FIho5HUwFvFZnpSxeQbEW/IGuMU77CqQoUmik/3+F4dgKqHLEDBqmxvCVZV/6dTIAmn1oIRushC/hLSOdgEEmw7ksaDFKIXeC0ArG1JSvJJxlKMg1lRdnQe1tPJceXiFrDPJCparRTXWXb7DRtdHAhwK3UJM8tvWS9zt10cNoyiwzTxa+exnh8FfKr9RyrPE4cNcMBmEbvyuBL9Sd6BgXRvx60gDELftWwTmgPG3ATrVfCJGCTy5HxPcUDh2nPx43EJQr4meZUBrWsV3fesbNWMubrJXzyC1WRwZgH7X8ruQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB8380.namprd11.prod.outlook.com (2603:10b6:208:485::21)
 by MW4PR11MB6665.namprd11.prod.outlook.com (2603:10b6:303:1ec::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Wed, 18 Dec
 2024 13:04:06 +0000
Received: from IA0PR11MB8380.namprd11.prod.outlook.com
 ([fe80::8227:fa7e:8d8d:df1f]) by IA0PR11MB8380.namprd11.prod.outlook.com
 ([fe80::8227:fa7e:8d8d:df1f%3]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 13:04:06 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: "Schmidt, Michal" <mschmidt@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH iwl-next 1/3] ice: downgrade warning about
 gnss_insert_raw to debug level
Thread-Index: AQHbTKtsU3uX6KBfIEW0p5SHHwuT6rLsAHLz
Date: Wed, 18 Dec 2024 13:04:06 +0000
Message-ID: <IA0PR11MB83800468F31D58564DDCCEC386052@IA0PR11MB8380.namprd11.prod.outlook.com>
References: <20241212153417.165919-1-mschmidt@redhat.com>
 <20241212153417.165919-2-mschmidt@redhat.com>
In-Reply-To: <20241212153417.165919-2-mschmidt@redhat.com>
Accept-Language: en-GB, pl-PL, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB8380:EE_|MW4PR11MB6665:EE_
x-ms-office365-filtering-correlation-id: 2ec8b094-089e-4e37-11df-08dd1f647483
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?2wzGO4ER3redA3FkaLaHXRaOqY7XfD6URdBsmqHGLZ0bpZAyMtSJW9eSn9?=
 =?iso-8859-1?Q?aQYx+pTCUP3RKJIEMoOmYX7OgdFZlNeowcOFtL6FfRgwBhizLwz8R3+x3m?=
 =?iso-8859-1?Q?ENeGtadO8SLI3RvbL3JtAdbF0C+q44DNcYMOiIF5aNkH9857NzvPN1vXGC?=
 =?iso-8859-1?Q?5NUk9M+zCfzoWl3FgRItl5k6Q1mCeUlUV58kFcHReJnME6gBlK9ndk3HRt?=
 =?iso-8859-1?Q?3F69h9hPhXzIMK1r5AU1fnwO+HsTjg/30GaiI8l42KZuvDj9SnwMicMe+O?=
 =?iso-8859-1?Q?EkVPCsl9UEtFgLfceN4IROddyFQqAgNvmBe5oLoUZfz962ZWwFF8kdPTJ0?=
 =?iso-8859-1?Q?2dry8c5E7u3lvALZxwHnva6zAJc5SMMLPp6A23UGH70h+Xi0IftREahVPi?=
 =?iso-8859-1?Q?UEodnaQbBbcCV+eSgnm1/appz0SW5A9zvYZvh6AvO52iZBnNC+imIKSSfF?=
 =?iso-8859-1?Q?lWLOADWfSoyL7Kef1G67XOGgwfCNAMp13kcSfTVA9hK9OpJEnL5KD+4d6k?=
 =?iso-8859-1?Q?ABVrvt6/MXooWSTu8cARNzhqbkry+7EA/6PVlB9XzOrayN6/RQT9byfoyY?=
 =?iso-8859-1?Q?BDaUmxsB5Cr1sWmJAJByXacOPxuwW0uasJCATM7abczCnWWHdcIpRyJu8K?=
 =?iso-8859-1?Q?C/FX1cU5rynxO7JXnquXiKLNkpx2A67oC61GfRzfQqHxZQoNy6pZUOxozG?=
 =?iso-8859-1?Q?mVi4B7elWJyaa94/4U/wUXpd0atlmKPQfapVPLSy5fBOk8GPdsf+QK28P+?=
 =?iso-8859-1?Q?Bvbrl7XIXk0F2L1KTRpbTAysl9fkzQmQC36YADcFgWhgUwBiIeCjgsMBST?=
 =?iso-8859-1?Q?MNCwHAAuT2iDEZs71Q65FmUwGGZT0wK2acr3As/5/YGLNOsYYbKXbxMMFp?=
 =?iso-8859-1?Q?DOv1/u16mBZvyCfpJy4iq4qnnAFYkX6z2xZ3kpYn3H9qj1T8p6DcJrMKBP?=
 =?iso-8859-1?Q?M4B45C29Ph/2/fTqKQlWZ/mqhUXF730iSKz9do1APEIIHnMvZWVOPxaNbC?=
 =?iso-8859-1?Q?h/rgj1eiwNtZstmY9FJ2kFmXdEJdPab2LOj9CQZYzCKOus28t/fCXrAlV3?=
 =?iso-8859-1?Q?cDbybT8Yly2Ksl4cRi/+C9vYkuVXIr6f0RuvxKElGeHBr1EWxL0JubAPNK?=
 =?iso-8859-1?Q?AOQG/WfrNulIzPUfFHUnwP9PI8sqpKKmG0TzQoBgVb4ePitVPmxsmIm2Ou?=
 =?iso-8859-1?Q?gNPf7S9hQm63azhaGDtziKql5UWRpgcKvXL7ZJHwxssqPTQp1aH8LWhOoy?=
 =?iso-8859-1?Q?0dbYhSSX3cylWjkhJeO7HMoceDEMxp/rdT9Ly5DFAiuzvxUwDt++0nRkOk?=
 =?iso-8859-1?Q?rs2uYQMr8pPle9Url3kJOD/nj+9QZFbPW6a9BSygYMd4mN04Ox4Hwi60rq?=
 =?iso-8859-1?Q?ZFmQ1fNazpFAaC3sBcsKqBXSIhATR5NP+iL3QtaVJoOgmVYX1y/W5rr9Hk?=
 =?iso-8859-1?Q?yQI2Bkud5rVPfFT3uxPbLuDYLHkFKfKOvMx+lZUldDNzD3ut+EE0U3xAvU?=
 =?iso-8859-1?Q?oY4LkxcBi4wKMn3dsibWko?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB8380.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?8yWWdQBF73d3pRP3gXg8BYZmiOjg3EyZ9nGMjHe3xFTlchF1+PRoUAUTAK?=
 =?iso-8859-1?Q?S9g7Nj3uQyhSr+x4BesNc9Ol9enEsip79/vD5mDa+BpQ+988tfsg1CnTxT?=
 =?iso-8859-1?Q?hMgasylE+JMqe5Dgftmhgcmd4uORlf6TikYaOyLiwO5TZ6moBO1rhBDaMO?=
 =?iso-8859-1?Q?YFpYJj1cxJl+aTFnD/tGPTZv+g9euVDcTyYVjYm966SHHvWx/Z+RQZwlRw?=
 =?iso-8859-1?Q?NhAoss4vqZb52vvvVdh8wmgOnAgVeVc8FIfm2Uv83x2+Sk5Q11JCbbcGS2?=
 =?iso-8859-1?Q?9phmAvaKAc0bjZAX+Yhbongh48aNtnplS/pc6n9E7W+/te/A2+U5w9Rtz6?=
 =?iso-8859-1?Q?Das+zkQyi1+mw2RQtJRCNxfsmltVkvJXKd3HewIktAYp4r8vEGIRbQA+fa?=
 =?iso-8859-1?Q?gLLfS44mMyu6QchEuBQL4zZIzkhsl1t684grims4o4KeOIC9XrKeJjFXEx?=
 =?iso-8859-1?Q?LPwymo5ZyqjJF/EJkfPVqIxgqUowcPW0lcbXX4xD8BBivJTtN7l8m6WD6Y?=
 =?iso-8859-1?Q?4zlvnUf3ndcc1lokbLuQzflQbaASPkOLed47wwgRkFACkvYFX8OhQhsTlZ?=
 =?iso-8859-1?Q?NSeqjw1j1Y+Nlq3GplHNaFhouqxWUFC3iwDdqhqy3WleghsmJ3yl5kM5da?=
 =?iso-8859-1?Q?n6r6eBsZycghOrOVvj6EdmagOLDp9EC2h+6mwMq/SvKJ+aXf3ZBABoaafR?=
 =?iso-8859-1?Q?N6ajNjRXDHMFoFOwzT+cR/P9SSGiECSGiRcOOLaUTmqEM8G8kCDjeelDWU?=
 =?iso-8859-1?Q?McMNW7xElc7BH/Q3wo02pUBgu+uKZs7iTXL6VDyyJPGeaI+ckwbhyoWSKB?=
 =?iso-8859-1?Q?3TuutThZQ9GGPMVKuXEXvNopNI+ZLqEqwX2lw1QvHS+NyCenFd4pWOhczc?=
 =?iso-8859-1?Q?kwxU04M9xAl5UL/nWA3uMf/8pZk6ziiImJpMORUNs4AZAGKHkyHQqQnsaM?=
 =?iso-8859-1?Q?4W8TtHjDGhn3fCnZBHKw8Ur3iGoP/w8a1ZOkHzoLNzoOAYh5tnyDx79uyB?=
 =?iso-8859-1?Q?9BMD5EICURaRSVrXDCF85ZiPi+HV8cHPapy0LuRHtZfCkO2TkLCUL3ZtEe?=
 =?iso-8859-1?Q?a5zDmsbTBrtByrB+F3mpjKf+7Ooz23TrYDUYSRR10MxpeZ51EnOI2R3AiI?=
 =?iso-8859-1?Q?OKiC9JU9jz1BxiQ1uI/HUSRe3AuCLmjzR1bc0AS4+RR2QiF/AKo8Qika8Z?=
 =?iso-8859-1?Q?cjgDVjG/BlGnftqDgH0HUgA3NWVTgnvS9EYxKssdyGr8lcTLFJ+QctB2JF?=
 =?iso-8859-1?Q?03MGyOiC2xotQ+mw/4YrwDNHQFehKqCrdTKCguCddkI/Y0cOE4a1nBVsVy?=
 =?iso-8859-1?Q?KzCssjJkKa8ZW9fgrVogXbkyORMsYCNzwPygKWXbWSTYY3UDeWBetY0njm?=
 =?iso-8859-1?Q?Qq5bRhWYQ9gASCXjWAEkJMWhVRnNAvDcvoNXZCIrCfSLWQEROpmrNZiCA3?=
 =?iso-8859-1?Q?u7jMBTzrzulroKnMxLLY/y+XIYhOy4uqbIYVRUuuDHD8FUhtuEkYZc7Cnb?=
 =?iso-8859-1?Q?vFhAH5bJogrL9byQKrB3eb+V9UOgW8QUv0vmalGWdpo46ixOA5t1nrZOzU?=
 =?iso-8859-1?Q?Z7dKUp10DVZGRUwFUZ9N9LwKmh4viijHuCPMCHyR1sxOllf2IInk5kQ1kn?=
 =?iso-8859-1?Q?gTLHFAv6rkBMI+ptHG6YIwjavRtks5SswD?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB8380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ec8b094-089e-4e37-11df-08dd1f647483
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 13:04:06.7921 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LUuLXRh8u5jJ1sgy74hxuW2AoKvtZ7ETu0eAoyOfNZekxzSVUDwD/WmEaVaELUOoJ9v9EvuXFUKF6KlU/kSCiXWJw0kMiyQ6vE9ZyotSKJ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6665
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734527119; x=1766063119;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Rm2XDcX13XW6CvS9t6edKxY+BvgHJGBz3tdQMfILu0c=;
 b=keMwjI33rXL7kiFyBn9qwoR5MD1pLrRmVW63MC3sKPlaOtL/iqxaac92
 XQMDo8UmN+GRqZcS8YRME2GtJSx+mSgOZ7tP9zgyK/hROMu+F8/Zfw3m8
 5A/V4Bmb4A66M3gnwcZnwuy5U+6ox+JD4wqhVrVYynf96UajNbyAHqBMb
 d+zqCfXYh8ico8Anl0Px0ulkojLk5FG8iJ9Dem2/morqLbL3/iLTIzIWG
 JwU/Tu+eWo2RuRrKKS+UViJgzMO3Eq1DWYi5IlvRQE+uzsT9rHSIhe8sf
 jucHY0kzZ6WZglnxaPJ3qFIAMhQTOMraD3j6E/EY2bFk1cHRHqOtY/gnJ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=keMwjI33
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/3] ice: downgrade warning
 about gnss_insert_raw to debug level
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

On 12.12.2024 16:34 CET=A0Michal Schmidt wrote:=0A=
> gnss_insert_raw() will reject the GNSS data the ice driver produces=0A=
> whenever userspace has the gnss device open, but is not reading it fast=
=0A=
> enough for whatever reason.=0A=
>=0A=
> Do not spam kernel logs just because userspace misbehaves.=0A=
>=0A=
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>=0A=
> ---=0A=
>  drivers/net/ethernet/intel/ice/ice_gnss.c | 6 +++---=0A=
> =A01 file changed, 3 insertions(+), 3 deletions(-)=0A=
=0A=
Reviewed-by: Karol Kolacinski <karol.kolacinski@intel.com>=
