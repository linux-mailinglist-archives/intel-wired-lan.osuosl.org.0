Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ACABBA5BDDD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 11:27:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DC1E41173;
	Tue, 11 Mar 2025 10:27:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uzLDjgLUfwdY; Tue, 11 Mar 2025 10:27:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 414184117B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741688834;
	bh=Ua3XKPwM/NDINhYJneBxSCENBcaQ+N0/Zp6T5gH3Lwg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kLUm2pYO4HLkSaHOoxZwg+sXLarz3/10FO3Wa+yNY1vDmUWWDVUuPlZ7ScIFlBAi3
	 WueLokb8aEsVomBqbSDelAk9DiyB+raZP9bNEhENHAt6zkDxJRuB6F3M/gOqMW0NfS
	 ijAphc60vyfu3PIIumgwyINCBDyv+VSUGfr6Wcajh1zWX/38DNOlu3Zf4WLaaownrw
	 tgIvHU9UHGdWWjTKT89qY1L66UqWSZhkT8Fxy8z8NdPX69gAv19RvAfpyqs/vhijsM
	 Z5hcU+FzFEUXKB4QF22pYM6KNy80IGVNyCLVISD/xTfW47eCmBHPEY12oj/CBv/vzk
	 5iNIhXqyNoq5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 414184117B;
	Tue, 11 Mar 2025 10:27:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C4AF61C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 10:27:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B437C4116B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 10:27:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aokUOHdLI8VW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 10:27:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B31944115B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B31944115B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B31944115B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 10:27:11 +0000 (UTC)
X-CSE-ConnectionGUID: tFM5bAa9TiCXdpB0PqMC1w==
X-CSE-MsgGUID: 3N3FrC+xQiyMIPQQ3zeJOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="45504628"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="45504628"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 03:27:11 -0700
X-CSE-ConnectionGUID: ftl+bNuQTLe36KboRFRofg==
X-CSE-MsgGUID: rIKzU8DqQH2Z+pNKxa/C9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="120005645"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 03:27:12 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Tue, 11 Mar 2025 03:27:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Mar 2025 03:27:10 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 03:27:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K9F0t2Hp4ZGV+eN+d8ipxwqs32Z73uqIyCbHApWXEXNEPrGa1zeZY9i65hVUaQA1Zpd8iz0U4miCVVimxUzj7/HQd/Gbvxm9CoFa1Qqjb++AZpkq3+tMqc3MJInyi2pMi8I5QQVhC8gg7agdyYTPgg+6seOKFBU559gdpNTDBVACrm+7RRlwujDbtRc2h1EBNKd2TWDHJCTjUtl5mnOXv7dEX+f5j43IrbEr+uRnIqUcxX4yplt+XxKxHgBjaj7OQB2TA9ZraxMyHU4WzEGFHlFMF9PftDw+OptkrafZ7YNC2PRywAXQgMfSExZwwsZFy+4zFQ478sXYNnEOR3eN0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ua3XKPwM/NDINhYJneBxSCENBcaQ+N0/Zp6T5gH3Lwg=;
 b=u9iBmL11ZktZQ8MNMyj6HaZygfyJ3YZ+dhgdMv7XWoP1y5i8UP0nhGmzz3Icv/RuM7ycp8+0ylHYGPhjOiPckT70Dsnpentp+5F19tw0s21LzuE0UuyVbzLpn+yAOxtkG5fNuqfEj7atpH4Rh6l6z5bWvx+ni8PtRXMucPjj+u/f5LksxE5Jpnm30B6nQJh02XOBhkHt2J2QSciDdw6eEsjV0hFYKe6Q/9yzMJgKBPew9R9RyRa5XhWIDCxjiZbvQ5Pj8ihodj6Wg3TfJ1RX0ATNUz/lfuKvU+WaP9Fer9AEM/i4wJ793T3/JdF1vZ9DMskaK48EPAF+nfcKj4vDkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA1PR11MB6807.namprd11.prod.outlook.com (2603:10b6:806:24e::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 10:26:54 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%6]) with mapi id 15.20.8489.025; Tue, 11 Mar 2025
 10:26:54 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Michal
 Swiatkowski" <michal.swiatkowski@linux.intel.com>, "Pacuszka, MateuszX"
 <mateuszx.pacuszka@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 6/6] ice: enable LLDP TX
 for VFs through tc
Thread-Index: AQHbfsAq0EuRwhj4Wk+dyTRgaGelVLNQUnsAgB2QLzA=
Date: Tue, 11 Mar 2025 10:26:54 +0000
Message-ID: <SJ0PR11MB58653FC95E8D69FECAF3353E8FD12@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20250214085215.2846063-1-larysa.zaremba@intel.com>
 <20250214085215.2846063-7-larysa.zaremba@intel.com>
 <20250220145908.GD1615191@kernel.org>
In-Reply-To: <20250220145908.GD1615191@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA1PR11MB6807:EE_
x-ms-office365-filtering-correlation-id: b0a140b5-737c-498f-6e60-08dd60873e98
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?IyYPCp1vgodSoBx0D3zVA5733KaSgQlQuygdem82F3Lcs20w2jTcryNkLxja?=
 =?us-ascii?Q?RizEXGSZRUUZdMtYOG7OOhRv8e03YGJb+etylWmMpVAvMickuX8jrXeiB5tf?=
 =?us-ascii?Q?4FPVtrDIufuTCu7SRqNyP/0bKruCDW0ktuMBEf3q8d36g02nNf3jpDCKKMoK?=
 =?us-ascii?Q?L0tv/L6OP1qNXFyi4Au1mESC2dfTpHwyOYTHL0wq4dynqnSMbg6ksLnL6qY+?=
 =?us-ascii?Q?92jltqGiiLHyQGS9b5WLg63EEqBKwhZDuba86Ur6Qilp5jgpi8T6zqNdDZj/?=
 =?us-ascii?Q?xppuRgy01GSipWDGnSncXQ3D24HrM56hSsTgrRrtRtqGRQ8NgUTQ7XwX+Vvq?=
 =?us-ascii?Q?U2BYxS8ZVrGubfat3yR5mjlxueb1o9JgdIk0eeMtCBy3K2qgq8vGnptdCQ/s?=
 =?us-ascii?Q?nEqfwaCwImZF02cm9HcT5uUrLFU+EA1CL4B3sYBFfBm4ZFM2/75s2tOKtz87?=
 =?us-ascii?Q?cxb7O7Hg7kFuanVpopboA5evlj0l4VrPhQVvdvAuf0+82+88aUzxuMerahUz?=
 =?us-ascii?Q?2bgS9QVa46awRA8Dgsgm9t85REVXgVuqcqFE9ddEWGV5764qUP/Zyed0oquO?=
 =?us-ascii?Q?2wRpTKfxPkSDikmJe39RwCKUEo1+cewxfKWkIHU/LojGOUxvP1/FRcSVANI6?=
 =?us-ascii?Q?1vmCOeHHf+R0CpwfA4sQ9Ws7BfQnPaXpZJIXU6PDK0kQsKpwo8LgEuZ9Q7Fo?=
 =?us-ascii?Q?DtFWuDNts0XtuFD9Vqj5sr+aeZ01CSbAbAT8/LNgb+flf6U2PdHfoajmu5gM?=
 =?us-ascii?Q?CapX5r4Awasi52Cf4PjBSYz/9s3xsryTM5bQ1Y8C7/udDWsw382RGz80Kyjl?=
 =?us-ascii?Q?Pe2gRSWqUlNyIW88VUEfx1bVto7yajuo5WZ3ELZCzyvQ1hwLy+0y0b/4yqfN?=
 =?us-ascii?Q?89Z+UJLh5M6EwPrq93+Di4qg2jd5rxIVqSjsO9Tmf7UgTnxHSU1knbU6dpzZ?=
 =?us-ascii?Q?lrFzSB90uSAGqB+T3uepm8LVH3uVD3NLSaKUsIBxGVVxc8ppSKsqbS090xFT?=
 =?us-ascii?Q?Kjk2QWPnspD3ELnwvnG1lxExYiifWMO3f4RWSvp3RDxzti8ZuAWkfKw3DRZy?=
 =?us-ascii?Q?gXribl359tfzTh4Jb3lTGme1MRPlMReTjCEeeIzhTCdhdAiMqhuvZ0e3HR6D?=
 =?us-ascii?Q?f+r0fVJC5H1a1QUCs2aAARHFvsroqgtdidhfpWnvZD/Vw/s4JGvf+hSAdqaz?=
 =?us-ascii?Q?wxtQY2E9ULlkTB97lGFTKF+quDLIN74uCp0xkHdN4m3CJceI2lcumapvNQx8?=
 =?us-ascii?Q?KHrX0L9/ZJj31knbjOdmOfZyL9DlwV/8xooh7oHC6UuS8JYU5IfbYgRpx2kQ?=
 =?us-ascii?Q?HqNdv3pevc/wMVn34gBS/UBxA7JGtQTiiyuNfLmEeCOtLfn6WHojUgFoLaty?=
 =?us-ascii?Q?/iVTpRYMppqLtUNHw8/DyE5ppFy6D6W4Lbz4CIhAXflk4QezD7LW9S6dUrCA?=
 =?us-ascii?Q?6372kM+lmTEF5oOeMq3510rMRk2tCLoU?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iBLpOM2pzm7zYxAj0ah/4fO/iBKgW02YXKVzzQJWSLSec9AcHOAgGXtReMEq?=
 =?us-ascii?Q?49t6mDAC2xy9QohpteLFGIOhOgljEAtTN1mb4r4/XrOSl69X55itGZpU14Nq?=
 =?us-ascii?Q?D/ffTd0YF7rl2ldzIofbc6Q/FZ5uM5TT5A/kkCb4t0KswwqdRJZPoCFLhtIh?=
 =?us-ascii?Q?tJOQp14kOfqsUYc1FY9DU2UV+mfQywMHiwyq7cC3jx6oj5hcnvi6wGujhHIJ?=
 =?us-ascii?Q?ObEk4PiPI71lry9zhif8idvTg9g8QvUi2CcGmxXUczwPk08zy1KPJuBey0X4?=
 =?us-ascii?Q?mppdZalCpN3BdvjZhgkYw6tEumBIJFSMmchAXoz7miNHKb4OzNR5luW6xPlG?=
 =?us-ascii?Q?U4C7s9ixccihONbbTcIlZ+EO4sq1grlenOflQ5uTA0jULmn4/2JvWh4InB42?=
 =?us-ascii?Q?/IKf0q0h/0pQUhMForBXwYch6H7j0hlmeQvh6jeztisBYt73BECCsb4CL5TO?=
 =?us-ascii?Q?3h2wlfVajY1AjJH3HevW2WIMCn1mCtYULitu8NurZeruhQrAv1cxcu/m5tnM?=
 =?us-ascii?Q?z6lPsdMMY4DpN2EHKCDOVUm2n5xsredVx+le6octZlbtE7hrKftKuIrdm7sq?=
 =?us-ascii?Q?JQ6aVPm7+226YXmNi5uxygpJF4xf6pixnAP5HwBB9Nwk5HIQXHrOinchK/vs?=
 =?us-ascii?Q?Pl4KPCF0bg7yayXcKZKsQZMWWcdAq6veq28XyDAa3WG5EwuaDmXVblKHM3/U?=
 =?us-ascii?Q?9ioE6IJYOr816pd8/Jg8nnbJ9KdP4r0TOFkWNoWiJmPOWeWuUjlMDlPCFtdX?=
 =?us-ascii?Q?cCH3ydxr3IigVEcDDgc0JPIMauHn7nqQzE850b6NuBJU4rZmDSY+Q/UNmrw6?=
 =?us-ascii?Q?ehVZjag+XgmogMntuSz+xdxBphCm5XLyRhncJY4JKtPMJg31EyHa2Vv0Aj6w?=
 =?us-ascii?Q?ywr30cp825+bumIZIxYyBpvIFGHGTJL6+QKuhoTMMQ45IkEYMUeDyZPVeEGr?=
 =?us-ascii?Q?6vNtPwL8ql47M4GqAGG6oRdgs9ueSRxrH305yBZvPLyZ1kOqMnH6pm3gkbHA?=
 =?us-ascii?Q?puU7LGd/II0H0tEpGnYgT8D1gEysvlrUBK3FeIWNSB2B16fd65iPRICPmXQQ?=
 =?us-ascii?Q?YvXEVOb6Ko/5uoVPnVNJVz46DmK30G0JCCpN8lQquhhOO4O/T3a1B/X9MD8M?=
 =?us-ascii?Q?8fmTJN+1ChL8lR4RKRGQ+vArk5oEnfS448Ey2qx+ekBLpFTHXlkBZarBt1O0?=
 =?us-ascii?Q?XJ0oFR9/YnJqupqTvYf+yaeDPoQYkWYkLHqKYUg2JCIPCS71KHLSr7k3WSMS?=
 =?us-ascii?Q?ujMl9r1VgMUwBOxMFEE/WemV9xFs0c++MkOjduG30dQPECTtTd62G8gSlOex?=
 =?us-ascii?Q?kiVIs+R/HmbltvrsQCn2mtY4VcjEvqeHgf1FcY0WAXHA7dBiKIMTQ8S62wJK?=
 =?us-ascii?Q?2knZHaL0Adv88iWF4rG3G/6eWFtZo2MrNvzKGezcb2e2ewC7KbX2Q+NhyVlw?=
 =?us-ascii?Q?o+j36BrXrDzlOoNMQdEBNhAGQJHmB34R7Um3xzI7XvpSl/vtNe0mz6nG1Z7c?=
 =?us-ascii?Q?R6qoo2kI/jZgZ3lG6L2mOeJx4FkANxoDHRkVXguQJGd1Cl92/sTb74CQHOnV?=
 =?us-ascii?Q?ug9T6ZGf+Y3aZhYTf7Ge0TB9AHjWAVT+eaSBMh/3QKt/Xo4wX07d4bOk2ey4?=
 =?us-ascii?Q?VA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0a140b5-737c-498f-6e60-08dd60873e98
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2025 10:26:54.3116 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: on4el0/dkWdscuRREymmhE8Zlp6Itt0Ehht8m6kn4SwcVmLRnP/R9HnJv1OVSFcymNHCpFIj853NiPozapl5r2TAheTWEZw0+UWMVuG2tx4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6807
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741688832; x=1773224832;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ua3XKPwM/NDINhYJneBxSCENBcaQ+N0/Zp6T5gH3Lwg=;
 b=HJ57PHSVUhKrFyAzq8Xf4rmyhcnhRn6siobIo3fo+9Sg1LMxF7+2KdPz
 a+36S6/+XE5tVlq3vqa4gfLXFt4eg6zgmZIAIBmO6lBp9c4P8IQmOMXcz
 1tsmNBqji5ZKBSID8tQ84D1m+wB4ECIUQ3cvXQQxdQRHHX3EJriJQyDhg
 CN6cwm1kII5gtXWcAK9CiUdOM2ZMHDYb3ZDnctptc2HfYrPrBrTc+zFL/
 x6GOrSDbrLHmwOu4l/CLOZvWWoCINZr01/KszZaEaXX/9fGfzRAXNf1Bq
 J+aRFxdrV73KIVbrXZddqV29fX0G0apo3kTCaMPYXltN/0Dp8AhyvaPkS
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HJ57PHSV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 6/6] ice: enable LLDP TX
 for VFs through tc
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
> Sent: Thursday, February 20, 2025 3:59 PM
> To: Zaremba, Larysa <larysa.zaremba@intel.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Pacuszka, MateuszX
> <mateuszx.pacuszka@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 6/6] ice: enable LLDP T=
X for
> VFs through tc
>=20
> On Fri, Feb 14, 2025 at 09:50:40AM +0100, Larysa Zaremba wrote:
> > Only a single VSI can be in charge of sending LLDP frames, sometimes
> > it is beneficial to assign this function to a VF, that is possible to
> > do with tc capabilities in the switchdev mode. It requires first
> > blocking the PF from sending the LLDP frames with a following command:
> >
> > tc filter add dev <ifname> egress protocol lldp flower skip_sw action
> > drop
> >
> > Then it becomes possible to configure a forward rule from a VF port
> > representor to uplink instead.
> >
> > tc filter add dev <vf_ifname> ingress protocol lldp flower skip_sw
> > action mirred egress redirect dev <ifname>
> >
> > How LLDP exclusivity was done previously is LLDP traffic was blocked
> > for a whole port by a single rule and PF was bypassing that. Now at
> > least in the switchdev mode, every separate VSI has to have its own
> > drop rule. Another complication is the fact that tc does not respect
> > when the driver refuses to delete a rule, so returning an error
> > results in a HW rule still present with no way to reference it through
> > tc. This is addressed by allowing the PF rule to be deleted at any time=
, but
> making the VF forward rule "dormant"
> > in such case, this means it is deleted from HW but stays in tc and
> > driver's bookkeeping to be restored when drop rule is added back to the=
 PF.
> >
> > Implement tc configuration handling which enables the user to transmit
> > LLDP packets from VF instead of PF.
> >
> > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


