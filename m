Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC7FA9F424
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 17:12:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB42640314;
	Mon, 28 Apr 2025 15:12:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4BRskegCa8ax; Mon, 28 Apr 2025 15:12:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9375140321
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745853138;
	bh=3nc9iISA11fW0ksDxFW2+XyDFC0WBO944oRKCJJUGqY=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=48/K7htZJwMgdYaXVT7CJ9KAGqQldVp4PLnARXHisGI9WIvziSXI9MUiSYGUnzIJ1
	 4JzyrrPGJzTGdEwnXXT/Jgu4LV7M9u5jBFRNqTim0t2umGdVtqzjKqp8gVehubAHeU
	 mIZb2RlqpurSVhm5qpaimu65Db2aLRECb3N3aYQz7rvL7QLimOFQPJmkeR3/RY0xYS
	 qTfdWIbcqQA4FIyLZsvntCPHXIKTDh+PgKXn3fZc/rEdOaynH2AmTR/JCGnWOR+fo8
	 GlDXrN5xq7+1YbdFJVvGX8Cp+Q1ZsdvdtbzK2AULsEgd/QdqWt31OkYeVCT1C6rGWu
	 yteg2+pDEjDdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9375140321;
	Mon, 28 Apr 2025 15:12:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B3CCE194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 99C79811E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cXxVXLqXOmmx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 06:03:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=chaitanya.kumar.borah@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1237E811E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1237E811E2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1237E811E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 06:03:28 +0000 (UTC)
X-CSE-ConnectionGUID: +GAO16QHRVS2Q7b+qWiigg==
X-CSE-MsgGUID: 6ot3K6tIREeDaSovTMs3Eg==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="58761119"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="58761119"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:03:28 -0700
X-CSE-ConnectionGUID: mpLEL6evRLW7CLcxP4n3ZA==
X-CSE-MsgGUID: 86J3dlYnSk2Wc3K10MIYfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="133943470"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2025 23:03:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 27 Apr 2025 23:03:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 27 Apr 2025 23:03:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 27 Apr 2025 23:03:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZI2+neI+HJJxdA5wzNnVIMJAOq83L7avMUmt6Y0XMGxLBIYDbN5/0d82byn4ah+hiMJpRVYr5r195pJhd/6Z5lKqfw97JOA0nHmKz1Q8XVDITYeyyiWScPgZ2Vf03q5dyIVI8ya0Sv6auwV/nbRjbhjkNUNnH3p3uYgqP4IrY/LWyaxrXtrmwWEPayzA1Frj6iWIG3VVdMa115aw85kD7oqdQrCjGbJp5iIJ81+DFG9csTXpTjfkLfKqHBLzcW0oQ439H0MuwSUp/jYx/s6I6Ra3vvbJVxcA3Ok9PL8VIdJ63CnmjRR/ohkPd3W+peIouoDp8WK43lDHzFbqcaH0gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3nc9iISA11fW0ksDxFW2+XyDFC0WBO944oRKCJJUGqY=;
 b=U79qtqgJ4f33K38afs49qpeaVGguw1XfJsufXL7nEZyLcTgk9ZaxEMSoVisLX19wcy0aR9G5Se6CIDCTBz2rx5Z0jYVaiJqJwn7oZ5xRx1RCYKja6s2xu5bx1KdUemNljKUAZKGnWOqU7KL8bj35f3p+BEBpfTK/TUUJnhdI8igC6640yx4VgHOMxmLHk2e6zQGWRs3k9BPwD/1p2INVHP7SWOwJ2yt4/2rBf8w29mCwwR3bYoRIg8RYnTQK68+kIRxJZCV0x+ZPVEhStNSomTvabKMpvHSOvv7anZ0rpnnu34IpxVkD7xVHNqnBpbEw8IDcN8HUsuM+R56vVPQdHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH7PR11MB8010.namprd11.prod.outlook.com (2603:10b6:510:249::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.27; Mon, 28 Apr
 2025 06:02:43 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.8678.025; Mon, 28 Apr 2025
 06:02:43 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Hall, Christopher S" <christopher.s.hall@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Keller, 
 Jacob E" <jacob.e.keller@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: Regression on drm-tip
Thread-Index: Adu4ALP69bWLWL9KT+ihsftv/RDZHQ==
Date: Mon, 28 Apr 2025 06:02:43 +0000
Message-ID: <SJ1PR11MB6129BBB9E38F6DB731604E94B9812@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|PH7PR11MB8010:EE_
x-ms-office365-filtering-correlation-id: e6b83bb0-0833-4ccd-654d-08dd861a4ab5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?0DwIhuO1xQgC3zbCHBuixdf1Z2bVuLaeM3hCqkmc9wVDexTKd7W3HMIMbz?=
 =?iso-8859-1?Q?9V9b81HpIyMaA/CDv5UsZYf9UtogyYf/nFwKT+7RGkEsSPhsZ/HWB9/Ul+?=
 =?iso-8859-1?Q?nEM/LRMfOpojfBeRMVd8WHCTDRYZZCTMMgPZ1ieICr1rM77YYmE+F0kt8g?=
 =?iso-8859-1?Q?eSYQe+aOQLc5J7vEfx35vhMcoQ6+VnNJCYZyYn+CSoWP3kPC3YfmnEtp2S?=
 =?iso-8859-1?Q?Tvr7JMBPc+FCe8TwcrjxTAED7Q60tQUAHLsrJ3HeFgQCMCG+5U0pkbBR0a?=
 =?iso-8859-1?Q?Y3a1RkxkK3ShpDS67FXBlvbYjJ2Abiim5YYsytOHghUrhf788N3I3A3We7?=
 =?iso-8859-1?Q?oiEsfEbINRQ04uzTx6eCV38TfREqc0pW+ZSdTpzbvE/Q4TGL4rMSdD6JRp?=
 =?iso-8859-1?Q?lvInTewGLDpp2I238KT7r0x+qvL6BUDL5yHzanOLBPOzXDiMbUrADnJWKL?=
 =?iso-8859-1?Q?dtjwd6Eg76PYbaMqp92ISIZjSZU3o9ix9RNDapodkVDnA4619RUCNJHqLi?=
 =?iso-8859-1?Q?LOn2sDumITkA0u62CL3VjfQledeDQNLKKAy+9ivKVl8N/q959pRzIl98BC?=
 =?iso-8859-1?Q?6/nVL1TZe1FCFwiJ4jHXYccj/O/vXJTaQE+uAsPWAaAuTrkuBHYUW+A2Cp?=
 =?iso-8859-1?Q?EurBL/tCCu40PvIDFIPYKO0VszGuYUVm/coLO5eDDFmb3L7SwaMRDynaUT?=
 =?iso-8859-1?Q?qWVsK1aROJI/0XU07a90ZhG8eGpQ855I8x9ueJ4ymrFCAbxWy1P3xltMtK?=
 =?iso-8859-1?Q?ZzbmqxzKHp7/G7IoJhSUsvhJbLV4c1WOOxazy1xQe4gReNHXMz1wpaJcOW?=
 =?iso-8859-1?Q?UNjMe44+JEflLuO+NcVBtb35ZJAqQTIL+ZUyUcD8Y1DBn3GUIFp9+FHLdq?=
 =?iso-8859-1?Q?3C1Mz16VoudtinBZimcrn8d0Ci9Gagzb+xDQmUnFT5i32lEJRkVjVJGVA8?=
 =?iso-8859-1?Q?wnD+owTJ+f1Q2vf9pt4tt6pRijw65PiuBqdt8yCyxIA1JkwTUQSDnkls3Y?=
 =?iso-8859-1?Q?xt554ClJ5GJm/F2H2LgZGb+aDy86mCMLQxa50vDNeuDDmk5sh4GQ9VvQYS?=
 =?iso-8859-1?Q?FnMTsiGj0cw/Y88zJA/JovLHtim8WHiAMDMXwPHvLvs+SKi0f46g/stHZl?=
 =?iso-8859-1?Q?ZAOVTvpTpseXeQxLlZYGPSzRpDko3ttnwB4g68FPRsdFCzWWRlDd41TjlP?=
 =?iso-8859-1?Q?MoSUWKm1TpUlEERvzdltnF3luZgS24cSQCy+gc7hucUE5ul3LzM4H0W+yp?=
 =?iso-8859-1?Q?fCDoakIgPXthKniC3yKhz9IP1kvvL4kKXLKGIosAIpH3hmzdkeSQRy8XZu?=
 =?iso-8859-1?Q?zss7n8SajhDHyEv3pecEG+1a52n2HOJZuYIZSDwfeG7YLOiTFYt3jeY0D9?=
 =?iso-8859-1?Q?wepeB8UUzWZ8Faq0aGZb9aj81wu9traPd1ypFysnuP/77x0AxPLx/Tjx8p?=
 =?iso-8859-1?Q?29nyANjyBnzwZ7s1DojjneLm5cb80n88RwsuiQVkzBwBdVtMjIQunNgVN5?=
 =?iso-8859-1?Q?M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?9r3MV4sKRVwH+o2IfwoEY2tL8xj44aTvsEuxACMYiYw0p8NixoKpNFlicH?=
 =?iso-8859-1?Q?uA6PJ/iMZvAb72AkNILqUcTEshN5hi6dGuJ58XFiHgtiAnj7ZE8G20k7kj?=
 =?iso-8859-1?Q?Iew4Ez1WdTrQRE8VME1ysVaGkzGMFK+O6igOolHNtv6jAfBIaFXjb51eVt?=
 =?iso-8859-1?Q?fxHIaaBsfkLIxyLHlpncbG9tXrNvRMTKPDmqdtp8qvMzlEBrRke1JE1eGF?=
 =?iso-8859-1?Q?rL76t7tB74Oov2QPlCmv0gAl4a8wtTyHkvZr1ADsDFmYAI9FjrVea+D3Cn?=
 =?iso-8859-1?Q?jqox7KamSA+Gty+SiDo4ywKTFe8dgX4zVPJparu0DlZLJ/1SlIwDs/nKj6?=
 =?iso-8859-1?Q?yWh0Qs3xj86XN1V8FN+tIRYqwSzom1uHc0HYZCks3puA4hXnUCjPld1rWt?=
 =?iso-8859-1?Q?6k3cXP3QvZ3Sib+axtRmVLq2QRwvlX0oD+Fm4onnlgklIVy5t+Ek3sn491?=
 =?iso-8859-1?Q?+6fwOxNX2i668Bto+62MULKFeRK1hNax9RDJWrGcgR0CKDEkqiA0UVBg38?=
 =?iso-8859-1?Q?4/SZ5UsATJZr7zqbEwTlB+XgrFuc02D2VQshpr6zxT77GNl9meDkdvXAyD?=
 =?iso-8859-1?Q?zgXnp2xrwDB+kvS5EVnbJKA/CKdF3cGhDe9+vphwEzmErg7CR/Fin+mQD8?=
 =?iso-8859-1?Q?Jy6/1CjAkUTOLqy61VTwGvaFLEkZV4T6L/LJ2ivBuZlCyiiRfTlkVWucC5?=
 =?iso-8859-1?Q?FZiRFUBnWjJMGu17kKGPqumKBGnACIYyO7FOkvnsrcO9TkqlqpfYIFLvhE?=
 =?iso-8859-1?Q?22uIT2niR+v8lkTruPCbvn3oCjpThw9jVrvdn+ZdvPnlV7rkX3r5fxHPBx?=
 =?iso-8859-1?Q?vapmcB4zdjjEWSbEDZ173v/ZGOYK+2dMW4AIcSGeaCqNgDYrU41edDp/ok?=
 =?iso-8859-1?Q?dDt8j/tB2Jf8ZhxO57dsXNu97JFirLy3X6zP6sbqepsr+1P90e2/IgaYLP?=
 =?iso-8859-1?Q?glTCaYmFQ/mgn2qAu4wWNdxl65Ax/U516qRa3k99cXPogtzKgykHwGFXFd?=
 =?iso-8859-1?Q?E4bEWfV+g1GbMbZqp58p6adz2MzRcClGioW4m8piP0SMrNwFL1afIN75vI?=
 =?iso-8859-1?Q?VVxh4tw7BgGzeAMwoFnDvFpO3xRX6VcaPmRZo/WJnpslDEdGsxt/izpaUS?=
 =?iso-8859-1?Q?n6WlhcyuzqcEzKzuZkSBIBe96nU2CpUQaWUJQAxONVyM9z77NY6Bi8q8es?=
 =?iso-8859-1?Q?uuG3irdsgpZNIq+8PLHKi6kaj3e6RGesoyCixgXNfH4nbNb1bAz+ZEwa9v?=
 =?iso-8859-1?Q?ypINDx8R5j8Qp7V3eG0SdpzCeYiv0itjlzOea3yfHmRfI+QcVPPtB2k/FL?=
 =?iso-8859-1?Q?V85pViGvZ8C0Xuh5qn1wHSB+ZRNJ8labnLOkZvFdotwb2vdMvjFicDKUei?=
 =?iso-8859-1?Q?5WdC4iW1Zq8GSGoJW50/iLfSidfm/F7WE9gfnZ75WKUduzdGBr36SoSSd5?=
 =?iso-8859-1?Q?2IK6P3zH0iIOJ5k+CcEHd+JYOyX56To6izHx/fqkLCCe+76g26K0Mw/Zn/?=
 =?iso-8859-1?Q?dd0HaPASgdO15jETDoTb7sz+f6xXsmTjpPVOLdyo8zoc3obeqsofjCNnUT?=
 =?iso-8859-1?Q?FDdbBza7ThDdT/X1HYaBbKnTCJv0LKczinnZbbCkOGVx+zMa9M0jlX5Ped?=
 =?iso-8859-1?Q?mtVYA+jFNWQ7ndi5XKZ9fevSRmc+u2I/wE0y7BjsFR8mJVHJEU6LGOBw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6b83bb0-0833-4ccd-654d-08dd861a4ab5
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2025 06:02:43.6603 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G6RAtBajF5X3qSgEJx/TWrYwgwN1yfNe7sHEXXOfN9nESQFfgdwjV6ZmXV3oKAbiraIj2tdZmlDEQ5xFbl77Wsi8MLHw7QIwuuGyBngYwQQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8010
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 28 Apr 2025 15:12:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745820209; x=1777356209;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=WNkcQ+atNvqxkvzJO49eb359BfWbAANrf5TA/JfvH/Y=;
 b=ft4XdUEwFU/Hb2dBzDLb1kg7X05rAN1bWpAoNe+Yn/Jzhz1eked/Rjwg
 MpAODhUGzFCaLCGCaTl8iIjoJSJKrV/ZCDQsB6PPfPkieBlSnG4zyVdvF
 E6GZUBbMcbxFxgAff6s9V5ZqlGZsXmtNYc6sFQfMzkkRhfDpU5MCm0HI7
 HCx8hC9pBoaP1frAcN0/K5JFzHI3qN0fTPe0c8YbFIRjLRx81kuUeaBtq
 GgLyjWMLCdfuKcPoTFiFL7Ehm7XHcZ15obuzCozfq3vWI18dVHnXmbfJ5
 tt1ejysdWnIJo7bKBLSSeSUU1zOVsYsNy36BZ43nI/cg3ojb9GENd6lUI
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ft4XdUEw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] Regression on drm-tip
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

Hello Christopher,

This mail is regarding a regression we are seeing in our CI runs[1] on drm-=
tip[2] repository.

```````````````````````````````````````````````````````````````````````````=
``````
<4>[    7.891028] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<4>[    7.891293] [ BUG: Invalid wait context ]
<4>[    7.891526] 6.15.0-rc3-CI_DRM_16443-gdc80d6a10c1c+ #1 Tainted: G     =
   W         =20
<4>[    7.891792] -----------------------------
<4>[    7.892070] (udev-worker)/286 is trying to lock:
<4>[    7.892349] ffff88811671bcc8 (&adapter->ptm_lock){....}-{3:3}, at: ig=
c_ptp_reset+0x155/0x320 [igc]
<4>[    7.892660] other info that might help us debug this:
<4>[    7.892943] context-{4:4}
<4>[    7.893226] 2 locks held by (udev-worker)/286:
<4>[    7.893515]  #0: ffff888103bd41b0 (&dev->mutex){....}-{3:3}, at: __dr=
iver_attach+0x104/0x220
<4>[    7.893823]  #1: ffff88811671bb70 (&adapter->tmreg_lock){....}-{2:2},=
 at: igc_ptp_reset+0x53/0x320 [igc]
<4>[    7.894134] stack backtrace:
<4>[    7.894439] CPU: 2 UID: 0 PID: 286 Comm: (udev-worker) Tainted: G    =
    W           6.15.0-rc3-CI_DRM_16443-gdc80d6a10c1c+ #1 PREEMPT(voluntary=
)=20
<4>[    7.894442] Tainted: [W]=3DWARN
<4>[    7.894443] Hardware name: Intel(R) Client Systems NUC11TNHi3/NUC11TN=
Bi3, BIOS TNTGL357.0067.2022.0718.1742 07/18/2022
```````````````````````````````````````````````````````````````````````````=
``````
Detailed log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first "ba=
d"
commit

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
commit 1a931c4f5e6862e61a4b130cb76b422e1415f644
Author: Christopher S M Hall mailto:christopher.s.hall@intel.com
Date:=A0=A0 Tue Apr 1 16:35:34 2025 -0700

=A0=A0=A0 igc: add lock preventing multiple simultaneous PTM transactions
```````````````````````````````````````````````````````````````````````````=
``````````````````````````````

We also verified that if we revert the patch the issue is not seen.

Could you please check why the patch causes this regression and provide a f=
ix if necessary?

Thank you.

Regards

Chaitanya

[1] https://intel-gfx-ci.01.org/tree/drm-tip/shard-tglu.html
[2] https://cgit.freedesktop.org/drm-tip/tree/
[3] https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16443/fi-tgl-1115g4/boo=
t0.txt
[4] https://cgit.freedesktop.org/drm-tip/commit/?id=3D1a931c4f5e6862e61a4b1=
30cb76b422e1415f644

