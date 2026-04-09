Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OabMqTY12n4TggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 18:49:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EC43CDC9C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 18:49:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F59940CAD;
	Thu,  9 Apr 2026 16:49:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gU_8xsK0iwlI; Thu,  9 Apr 2026 16:49:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC41A40C75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775753374;
	bh=awxQvKcHWmADKxNAfP+gXUI3m1E8Rm4erYuH6kRp0E8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E9AElJyg27+wAC/fcjFel6swYZrZRn0+6eqD47Xx+o2JBXa6/7vYCAl5fufyFyM6r
	 h8dfpxhr/Ei2/pPlDM6amFogIC0kA6KZt4PJqIpWCTSkGWlMoqNX61/r1MDpG8C2Z5
	 KV5dd43j1kOc9eAqlPVTFYxvE3xRG99HOTFmsBDDX3D0aYGbadTxwwZzdZqk29Tr7B
	 oENmhIeenwQadHFfRyn6cQA1dtC8Ab2zSorFbYBGMesA7pWoADl9h9UaHH0ujOpLI+
	 C8l3tqLxyo8zFf03qGjKgDkwn1yVlfGOxhFC8mofe1k3tCgrlxpeU15YWnKImGOnQm
	 iwYjxBZjLcsHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC41A40C75;
	Thu,  9 Apr 2026 16:49:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 94232237
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 16:49:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 79EAA40412
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 16:49:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XT7FpRGr6Z0X for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 16:49:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AAC4740392
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAC4740392
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AAC4740392
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 16:49:31 +0000 (UTC)
X-CSE-ConnectionGUID: Qe8ZRtOyRU2vNJOP9NsL0Q==
X-CSE-MsgGUID: dOSHs6P1QriamXuzP9f40A==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="88149938"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="88149938"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 09:49:23 -0700
X-CSE-ConnectionGUID: CWhiHa9WTcKmBnM4ekhppA==
X-CSE-MsgGUID: QvYpypPSTOG5J2uwhYFbRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="228749498"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 09:49:21 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 09:49:20 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 09:49:20 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.31) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 09:49:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bQie3EV5VpO4H0fXlywS/yDJdd6kzZqgcYez/V/vYgDusdOxxnF0064vsLUtBHZrtU6iOcQ/VlqD02tPvrnOEmsGy2k5dATZJN4IQsMnnggotjsQ+OgagroDb2C793ppwVwFPmh4ujXficiVir7ikj/XC6QbFLH3Jz7+OL5oTN5SB5YXhWGOCJULHFVmpFlMoKv0EqqoZQpUrl7lrLRlP8w/KFTjNeQIL78TU9I+4LTc1UFTjLD1NZWVpu58Zit3aUNNsekzz3phuu6ltf3QHtSIMC8157tUzm3uSj3YAJNzlsEBWIbIWUjFuRBDMPvUoFDCcEYc5uYUFDztm40sZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=awxQvKcHWmADKxNAfP+gXUI3m1E8Rm4erYuH6kRp0E8=;
 b=lQx62ZoZgvDJgpJi55zI3OC2cqLZYLcn89Gid+PK5t+43Qbwp4DnikLQyqWIk/mI16LFEucVRBQrZmRwfuc0Rkrwu18pDEqqkE7MZTXVRuP4xo1xXA4oLSXjXzoYt/BsBO63+2ptAdVaEBdRN5u5+F13ZUYF8aXwn9ZUcTmjzerIBEXO7CgIxg/fWUxNaAti78ACt/Ao57N7XxclleYo+2MdiP/XrxC1TJMcbs1y/XAjXpSQ/sJLMiw/TIfExNvXdKBYFff4pjGVYHPZN+BgaEUeey/nU0jnrWaqBZGz+F1gTKjwNWUtTJDbHNw8i3Jj+Y3+nCCoR170i+B2K++13A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA1PR11MB7318.namprd11.prod.outlook.com (2603:10b6:208:426::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Thu, 9 Apr
 2026 16:49:17 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9769.016; Thu, 9 Apr 2026
 16:49:17 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Keita Morisaki <kmta1236@gmail.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S
 . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: Alice Michael <alice.michael@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Greenwalt, Paul" <paul.greenwalt@intel.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 RESEND] ice: fix race condition
 in TX timestamp ring cleanup
Thread-Index: AQHcpVD0SglIeSnto0evBJB46tQ6O7XWiszw
Date: Thu, 9 Apr 2026 16:49:17 +0000
Message-ID: <IA1PR11MB6241C5F786C07B83E6852A958B582@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260224054533.3372943-1-kmta1236@gmail.com>
In-Reply-To: <20260224054533.3372943-1-kmta1236@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA1PR11MB7318:EE_
x-ms-office365-filtering-correlation-id: 992ad8eb-e68c-4d53-5ff3-08de9657f063
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|921020|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: PwPo7BcpDtb+f09t7d8X7DghNNwOHo0b38REkVkiKig95Ys2GIL312LIdhCioQPZn9Xbfdgzok2i5dCpl8B3x/vAdWteB0zZiLBGt39bGZfLE8qihX89B+ij/Y9cq0V3XFIqHfSaIilamdhV6Vsv72gaum/9emJx3cafw7Y0LaIcY52dARQnfYvJHV9NcsDzoBn8hRRrCSIbFylzWv7R7YBJo6AdCWgdbZvvotf5jkOxAQht8Gln85UTSH+3sV7k18K4rltZWWMVhYXuJU62xH1L7ZCwALor/IinfVsAcIwYrWjhTcbd3aQIAg5/XKNHAmfMQg0CrUEQb3P9YdYzNInKud2ibNQKeLR5H4fOTwbBh8hulp0bGBqDy8/Im6jMtL397x7o1kl8GFgfyaMGWBZyvmu4ZyqOBN3kbb5a7A9RebzrcE0MjcqNAF0ln/LEn9h11UCqHwTjeemQycjb081Pout8nNjzHfS884rqXnjBfJ5ytDGmD/KQe9sALhVqbm7yMAxM+SQyc1ImArK4SMar2hMHuYIs5ir53uOoMX0cLyIzf63mGUX3cGTCO+lKbcfm7Rqsigtr6bJuehnH8e+4tVSPBw2nKNnF667PYrAG5ZEuxuvy8PiOZ3+w4gbI+RaCUDUZGatUu/5wYnx2xUvs8Q/FhhY5PPtDKBqa5QpjzX1K0y8mX3SFJp3yCCUtWYARhnzAFLmjlUly+JzpkjVuqM5vGfNozxdJYZwhDKVbbGwjV/BWIrdii4Dz6LyIWrVJMjHma+mm4uM4XsBcF/4KFrkTLVQ3pogIj71eZYmqMmKQNPlhkQmkg2rBmdjR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(921020)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IOqF5oaxj8HO4cSNStqa5AbzD8bjZVLHdO/EcTu7U7v7zyoXp7qwKSwKQ5Ez?=
 =?us-ascii?Q?MsXu698oCgknBNEMzcZ+Ee/3xmNK8FUNa2Iiiqyaow3c2RJBfYhr2DRZR/t7?=
 =?us-ascii?Q?15ojt2A3+bNBWRcaH5x6eh2sjZEnmQHPBiLsXg0SCh3ZMdWDZhX/HQGkvApZ?=
 =?us-ascii?Q?/c5kHVakisLyNsrFAztq2qt1u8eRkRklSOGKWme+s8Z7PNCLROeUlMRk7woJ?=
 =?us-ascii?Q?i0fEEL/KXaCDlGgJfhCA8wY1BgArka/aX9wY67i3XagVG0LalUV9BmM9BVyV?=
 =?us-ascii?Q?iUnfF9OkGBD/RxwvDh7rP4xLtWF2HL3W2jM6siIuCpJtXJa9pqIuzpQu/Vk4?=
 =?us-ascii?Q?yXoTepzZ0Zn4KMfOZ02jOqxy26lA1mvuF9qADtP3+rslj3WTrAhdu4+AG3Jy?=
 =?us-ascii?Q?LBUMDYJVc3l1fmHsyFhWBM9ttLH/4uv7GX4eOJekrNfhG8Ttzt5J6DbP+qbw?=
 =?us-ascii?Q?O7MrNwCA3GT5AMVGcFDeFBUrW/DAEyYBksKSPKsQFtbtZQ8IKwf4eRkwUwZq?=
 =?us-ascii?Q?Te0s/Wgqd/Yx3/QWbccwQy6SkeBmjx8vL4j+PcIAED9AYAyFPibVmQBpwxL9?=
 =?us-ascii?Q?gAdgvAWbblSXOumw1SjtSTjMVD6Bvgjjc2kwlTuNkWJJ5AJFtYG5JgnY7jaC?=
 =?us-ascii?Q?tIbpDW3SScEqIzQnwA9HToOg/RR7fCo2pB9iDKriefiTpE28/gmAsPcW9UaG?=
 =?us-ascii?Q?M1Pw+UEnB3xBDOt/uq4kzd9Fo3tiGL3C2HyZ0WPUYtqL1KegY4QDxj2QzKYI?=
 =?us-ascii?Q?WujVBtoZp+/o/oxW80TK4dQrI5jRjKXv/h1IVW9lXHvDPGQ/DqZiQyrCURRR?=
 =?us-ascii?Q?Pb4gG0Gz9VMO9lfyCnoBcmgpn0dtsaf+j03NjI+hvxaOFf+PTz4WA0et7MvM?=
 =?us-ascii?Q?CBoH81VFmb9HS1Mr2pCb41ER48Qy98Able+/M2nLSJGkLWY+h5qsvHUqJ54N?=
 =?us-ascii?Q?VuPNz5FWkf0us/7eZB8z3L9wNJW+M+bW9xtL0aBwStwILw1ygaFTiLKWAM3c?=
 =?us-ascii?Q?5qJoDlgS7w9+jyhiyGwBcAwc4PSJKuojFi/Q7OR+0wDhb7GcSdYAP7gBtudz?=
 =?us-ascii?Q?W8oLX/Vtks5A2vdIt4J/h3pDaXl3920TNJIJtLOyzExt2g6Fkz/T6e3PdIKn?=
 =?us-ascii?Q?z2emR/itaeB1vowKaRW59FqdDc7i5hZ88Gjn87BkUKMILuMGo6UtUSJBA7dy?=
 =?us-ascii?Q?Sf8D60cK2cdbqGRo25SDGfAi2DEx7uHpcYkQaLAa6yYUIIpwETeNZFX1atE3?=
 =?us-ascii?Q?DtlUONvzxhltQvPp8BS1jKR9m2GDd1v28EZhmM1YDzKQNA16pTuKmEt55XaL?=
 =?us-ascii?Q?Ih8qSfjrZfNE98XEQhuTe+b5N2Od58XarnqRwsGn/N0etQcf2LyUEJGp8INK?=
 =?us-ascii?Q?b+PBF+HTi1VpLDsE/Ca1MFVHiO76CMkj3pkvaNLVL4xoI9RfxdbRSYEyBhGx?=
 =?us-ascii?Q?IEJUrOhAj//2QsUiS+yX1sfOV4nUMaZRpKEZVVgwR6EAKGgQKxacnGk/9wkn?=
 =?us-ascii?Q?Zz3aERcgAj4dIChy+/ZRZdEoCzL74rZuRFu2wMEssGoXEIvghFHdX5hSreBC?=
 =?us-ascii?Q?qFdQiaxQafsU47Xd9skWEBtvAO1nz4DEOnMI9NQRlQbu6fxfGu7+NMQaebAl?=
 =?us-ascii?Q?qiYNyP2woT/hJKHZBUH5HvTustnVeyDrhjfYsROa6WA+Htiyn7C6nK+6C+UP?=
 =?us-ascii?Q?oZQxQxlcY6fHOCHEqqJNjSf0DZburrDq32xb8QFxmGDjtf5d?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: FzSy7MTjaUuJoego4/EsqnxiU3NBT6n4QVX5E2/tYiDJwq4z5dY5w61SLxNpBF99vz7NZ2mhR9lOznbxnYNsB6dAMbANVyOlrLibFvL7prOyi9gQLjNciwH4pY/GxACUE/8sC1wrc4WFPYXI0HLoQFaTEiwLlxNT0yCi7sBwheQGKt7uR0dColqkYINBzCOLYdaUgyD88A1eMu9Gyat6HjZZXKQ8FHYmqBHhGG5gNfCX0WiVFWSXXLuI0YY9OLc52d6jd2l663rb2yVv2Y/9rdLdGPpdzJFSxBqEohhuNJgsVfVnaXYwzD01zRCzIBIk/Bnu58Sv5NEEMSmO66Ma5A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 992ad8eb-e68c-4d53-5ff3-08de9657f063
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2026 16:49:17.2349 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5JcStliH4CoXkXeSvo9jnqoZGK45LrzN93TfPKug8khY3jMN/F1QIjeXwy+lfXxQmczYhPwBh6ww9wCPWOHzBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7318
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775753372; x=1807289372;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zduMe9ZMxJqB+y2JjOp/DCYke0nA4dqch3WvLP//lDs=;
 b=cYODWGaLvOcBpDm0k3+e2HX/fdqKaAMQI1F4tG01N4S1YR5J5azC4tbU
 gx79H3z8zhtAOxmH/kCp0xkvJ/PtC8AEhIUO1VqHy0QUS7p94MhPeKe0T
 TL3FGqXdefscbtqlFrwvOUCpa0A3o/6uDPUXgldmKx0h+a2puKNGq+hUO
 wpyjeYhkLP4n4bcpPEE4t8qwU3X6u8aBt8v79GhxeyFjaiOiN3Feixxt5
 baPS6/HNtU8Z0UeYE1VouQZ1LqYe2ZkgUW7sYiTr2js5J+4XKHaS89iBb
 90jAJ0dEGj1+Et3um8OgNQzeeUyw8MoNjPD/t58f//u5qyNzi79GD7kf4
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cYODWGaL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 RESEND] ice: fix race condition
 in TX timestamp ring cleanup
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:kmta1236@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:alice.michael@intel.com,m:aleksandr.loktionov@intel.com,m:maciej.fijalkowski@intel.com,m:paul.greenwalt@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 87EC43CDC9C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
eita Morisaki
> Sent: 24 February 2026 11:16
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; David S=
 . Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub =
Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>
> Cc: Alice Michael <alice.michael@intel.com>; Loktionov, Aleksandr <aleksa=
ndr.loktionov@intel.com>; Fijalkowski, Maciej <maciej.fijalkowski@intel.com=
>; Greenwalt, Paul <paul.greenwalt@intel.com>; intel-wired-lan@lists.osuosl=
.org; netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Keita Morisaki =
<kmta1236@gmail.com>
> Subject: [Intel-wired-lan] [PATCH net v2 RESEND] ice: fix race condition =
in TX timestamp ring cleanup
>
> Fix a race condition between ice_free_tx_tstamp_ring() and ice_tx_map() t=
hat can cause a NULL pointer dereference.
>
> ice_free_tx_tstamp_ring currently clears the ICE_TX_FLAGS_TXTIME flag aft=
er NULLing the tstamp_ring. This could allow a concurrent ice_tx_map call o=
n another CPU to dereference the tstamp_ring, which could lead to a NULL po=
inter dereference.
>
> CPU A:ice_free_tx_tstamp_ring() | CPU B:ice_tx_map()
>  --------------------------------|---------------------------------
>  tx_ring->tstamp_ring =3D NULL     |
>                                  | ice_is_txtime_cfg() -> true
>                                  | tstamp_ring =3D tx_ring->tstamp_ring
>                                  | tstamp_ring->count  // NULL deref!
>  flags &=3D ~ICE_TX_FLAGS_TXTIME   |
>
> Fix by:
> 1. Reordering ice_free_tx_tstamp_ring() to clear the flag before
>  NULLing the pointer, with smp_wmb() to ensure proper ordering.
> 2. Adding smp_rmb() in ice_tx_map() after the flag check to order the
>   flag read before the pointer read, using READ_ONCE() for the
>   pointer, and adding a NULL check as a safety net.
> 3. Converting tx_ring->flags from u8 to DECLARE_BITMAP() and using
>   atomic bitops (set_bit(), clear_bit(), test_bit()) for all flag
>   operations throughout the driver:
>   - ICE_TX_RING_FLAGS_XDP
>   - ICE_TX_RING_FLAGS_VLAN_L2TAG1
>   - ICE_TX_RING_FLAGS_VLAN_L2TAG2
>   - ICE_TX_RING_FLAGS_TXTIME
>
> Fixes: ccde82e909467 ("ice: add E830 Earliest TxTime First Offload suppor=
t")
> Signed-off-by: Keita Morisaki <kmta1236@gmail.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> Changes in v2:
> - Convert tx_ring->flags from u8 to DECLARE_BITMAP() and use atomic
>  bitops (set_bit(), clear_bit(), test_bit()) for all flag operations
>  instead of WRITE_ONCE() for flag updates
> - Rename flags from ICE_TX_FLAGS_RING_* to ICE_TX_RING_FLAGS_* to
>  distinguish from per-packet flags (ICE_TX_FLAGS_*)
>
> drivers/net/ethernet/intel/ice/ice.h         |  4 ++--
> drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  2 +-
> drivers/net/ethernet/intel/ice/ice_lib.c     |  4 ++--
> drivers/net/ethernet/intel/ice/ice_txrx.c    | 23 ++++++++++++++------
> drivers/net/ethernet/intel/ice/ice_txrx.h    | 16 +++++++++-----
> 5 files changed, 31 insertions(+), 18 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
