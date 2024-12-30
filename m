Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C47339FE91E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Dec 2024 17:44:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E07981368;
	Mon, 30 Dec 2024 16:44:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gmJ1zisIZWiF; Mon, 30 Dec 2024 16:44:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 629C081369
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735577057;
	bh=d4+ZH1Yxpe8ALaDYDG+GhSsoQGX29op6NPGv4hTzRH4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1VfpQslYIEd6XeOoOlUJTabhZ5xmjf+XKaAf6/kNNf1Y8wTekxSyA5GkjqZHyWn8a
	 Iq86F5YwAp0N5KGR373ea9Cj4XJI3hfQH+RDqtw8vSGXIUzSY4zIUmJovhqYZ/bfBe
	 mtlxqt7dxfBt8ayCjW0IaT38z56WyfhycOGEHm9Ipr1pBMZd0tbi9t+OA9FaQf3cQ3
	 BuvhGwFMZfeG5Qn6mVtQXswMgp1F4GwHws1oSIBMoQo6x3Qe1B6LjwiIOlnKQNDSyS
	 DP5+gxf4QTf3QHkTiHN0ZPLIMKs7u88YszANjrzr+vydseQ/Tpt47xVYEz40DapC5w
	 ntcFuzinqXxXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 629C081369;
	Mon, 30 Dec 2024 16:44:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D6A96968
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Dec 2024 16:44:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B8522409B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Dec 2024 16:44:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fcNjEzroO-tN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Dec 2024 16:44:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8C17C40459
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C17C40459
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C17C40459
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Dec 2024 16:44:14 +0000 (UTC)
X-CSE-ConnectionGUID: gIV5125XTH696xjgMeYKwQ==
X-CSE-MsgGUID: ZTucK6RoQlOVCSljxg5SkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="47286971"
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="47286971"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 08:44:11 -0800
X-CSE-ConnectionGUID: K6vLUK4qQweOIl2KdJ0+/g==
X-CSE-MsgGUID: fPSjPut0Rfub1R9gpifKBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="105902184"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Dec 2024 08:44:11 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 30 Dec 2024 08:44:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 30 Dec 2024 08:44:10 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 30 Dec 2024 08:44:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ojY77uLcG0QSB7JNBZMfJEal6pOMFluAmi3PGtW8RPjlxSAV1MIYiQZj1SBmRCfHw7c2XHxpj+hRuz2XaPsIvWt7SeKlB3XGNUnQ2WHaHfxHBtNDCFL0y67q7Pg7BCmPNSnwlQwzdk37/rqp5WfSBzp6DY4MQXNmi8XhtorAio/5gHeIfKK4LB0UBCqiO25tixdwN24dy4tuRu6GS5KfVlxCfv5IPm77XKIYdtzAkgFm/r1RrS2qJiaJdHHURaD1/ROhiBj3qyhCg74JszkA2wRyShhMNcYG42+IDD86OrqNJzAlwYw3cU/1Ks6pIoLfVQ4StvQ6r7W2NQLGYy+r+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d4+ZH1Yxpe8ALaDYDG+GhSsoQGX29op6NPGv4hTzRH4=;
 b=dv/xILs9uWiiqXjhLi5W80wmNoWvnPKrCuDD7BRC60lPDv7TK83N2aYo221n/7QNwd2yeUBbVI0C1CM5BImQOwLQ8ezulQTSbpCEtNvxPJ4vJNlxQZ1kW5bS4W6b2QOo89o5k7X9PddpvFoGgjrTalM4lhjdmo7MntyR71W5IY+31F7I9uQqduNo16YvK+Fqsfp3saRhx7Pfplf9OBXCj+sIQeMGdP9aZBaBBRLMO9w4UiPN1l9HF5ryWZgZk6Zg0SH/50LViIE1lI4QN5s/eYoI9asoOh87zjQIfCyE1f6y3Xe7lADo2cZi2p79ycDxhhlqDHm0hXMYq5LiG8a/6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8)
 by IA0PR11MB7953.namprd11.prod.outlook.com (2603:10b6:208:40d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.19; Mon, 30 Dec
 2024 16:44:04 +0000
Received: from PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::68cd:b021:a654:e42f]) by PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::68cd:b021:a654:e42f%5]) with mapi id 15.20.8293.000; Mon, 30 Dec 2024
 16:44:04 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: Simon Horman <horms@kernel.org>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v3 iwl-next] ice: Add in/out PTP pin
 delays
Thread-Index: AQHbRjG0Eb3vxhsuiEGlIVPheBVtQrLZNcKAgCXxVEA=
Date: Mon, 30 Dec 2024 16:44:04 +0000
Message-ID: <PH0PR11MB7522A217BE98A9611AF8E77FA0092@PH0PR11MB7522.namprd11.prod.outlook.com>
References: <20241204094816.337884-2-karol.kolacinski@intel.com>
 <20241206131635.GP2581@kernel.org>
In-Reply-To: <20241206131635.GP2581@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB7522:EE_|IA0PR11MB7953:EE_
x-ms-office365-filtering-correlation-id: e9348152-04e0-4872-3e7b-08dd28f12bca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?jP4D0AMB51qRRLN2FTIUsTk+ODFmP4mNzCOHKsY35zJhgWSo54IWPZYsNADk?=
 =?us-ascii?Q?dE2x+kRsHWL3dPvBD4wY7IIG2NeYP6rE4zFuMrPfif9pve/F8ZecL3nOhfCP?=
 =?us-ascii?Q?ewnSPo1dusfVA++Ur1epTysBryXW8Ql863X8A22kRv+l4fgVQOU3GN3xni0r?=
 =?us-ascii?Q?Mn9fjPa7SSeJ2MzTwhQQAr6j+gMRMLfyKsPTjyALUFZDz4KO50hbJmfcPmUi?=
 =?us-ascii?Q?GlxLyM8uCLGQiIVDx8XXqKIb6gF0aZQIDRSCIAp1PODQWeDvTiatam55lyZP?=
 =?us-ascii?Q?DDbZhpm7vSMsZBWQCFu8luQA7jr8ybZUoh1JWHg4hnINMaMQngijv9Z+5fwx?=
 =?us-ascii?Q?/9z5VjvfJDgkhpy2gJDVdRLfIANIZt5DGtY68wSs1LWZF2kBEf1j2fKNmCHh?=
 =?us-ascii?Q?Vh5qUsXHVwrU+mebV/nOsBkf4ZIcc3fX2nWzrPNSslcAy0erfT8RNZNk4msM?=
 =?us-ascii?Q?CYCy21smGNdUcZwf+tpQPjv6jzYvyquHvn4pNdianSHlcunBSIbV0sw+7/TR?=
 =?us-ascii?Q?v41te6R8cSN3ZCceVnndP2sazGNJBLLjlkESpMMPOCwaGHJL6o8oRvcL+u3W?=
 =?us-ascii?Q?2Ap+SdghTaVSkSwsh73WWLfeRCm+76N4pRQGDDHCxz0FZP7MiHXLFS59ZX6w?=
 =?us-ascii?Q?q11u8KYukmBisrUVlv7/gCJAOJGgnAqeGEERIWtQXibDT0v1B36YNqfWqbPv?=
 =?us-ascii?Q?gQKN/6nfnsZUmC0t3JnZ/jFcXdJAyVU/OqN0N5/IAFsx8koDLJZwG/FCqp9O?=
 =?us-ascii?Q?vbTxxD7MoDkNizyjDd6kZrqGG/I+sH2ie1fSF2a6vtfZHPvdWgmTe8ekep7Y?=
 =?us-ascii?Q?+eeo+Dy8Oy9EixMxvHdLsdVpH5uTHo3zPSBR+FPKCJmvMTMX9J4GgdZLq+OF?=
 =?us-ascii?Q?mQAnsC+ZO+IjBTHrHr6ysZKwKQHaWLyti+W1T3cUJsZCEstQULkAZHKCNG8v?=
 =?us-ascii?Q?9CrX2NOqDpTFqXnZz/GAVVWCpQn8R2yt4Vca9MfiUsnkTgw7WvU40v0K8TBB?=
 =?us-ascii?Q?RkEv6+Rl0yJE/XjM9sytU+8Pa+qjShFdT04zGJA58Te8K29+fJTNDCG+Sk+4?=
 =?us-ascii?Q?et5IUcRslRlnTbq31W5hG2rlkbv3w8Vk/66SYxxYbQFXp+r7rw2wqECMEtJd?=
 =?us-ascii?Q?Cu6deW7Wlp8KszNMLgXMSMioEuRWxt+s/maWctGpUTQ9pDrO5Nc2B5soOxx7?=
 =?us-ascii?Q?Zjz504+1pllRf0DgHaziVGOXQBU+XtjzqG7hBDReCv7msT0/rMF7R1ufI3dw?=
 =?us-ascii?Q?82mTk72BhDSGtQKkHJ9JC9zJpHb6mcgCTw8lsi1w+vAXWZY3QaAvlD2e/a5z?=
 =?us-ascii?Q?B8R5hU2f45fKFjg/dcE9US9T6f9o0rgPdWVcY1vOaAhe+t+5Gchm7BXnIq85?=
 =?us-ascii?Q?LV8O7Z89A/axS8qEqtvBNXaU0uIlplsaAsvnWS1hy+BFqkWf1+SQqq/fl4Q/?=
 =?us-ascii?Q?b2he0LPr72G198eZQtK2yrdTUYlIT/lk?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qNfd/KMasU1OFE/ONQKVqOAbR+EbZF/avF9Tb5Uvy13bxaD1bH7x4/vHBGnm?=
 =?us-ascii?Q?uc1fR1ZSsdYWqYCe8LSVpU3j66Uo5jczSqg7qYcO2cxF4bvFYmOgNkapXyOY?=
 =?us-ascii?Q?pRK8O7wCeYsvH6y5xVEbNaoMigs6wRnkS1tESoqaRR3y1VBUTYr1D+ikMWM7?=
 =?us-ascii?Q?dmWPrubWGSYRx1JV9AAaB4PV1w2sTUKCnjumuRRdVCCfnTHzmzVhXnSNVRyP?=
 =?us-ascii?Q?pmgWz4su076dHnGLGy1I29lktCZMK6jjpa94BJ1q95vTE5ssCXDIaFWOVVzO?=
 =?us-ascii?Q?Da0b/CtVR17cIpP9OsamoMD0QMdS33JQg1F83untpfekDDMa89lCU9iYrQPf?=
 =?us-ascii?Q?2gVbkfb2Saf+aurBlvwesD8HdbPW35Hzp4gLzbZQUVtdnci1zB0/2oEeoR86?=
 =?us-ascii?Q?wpjW5kcYlep+sLLOvp9FV0bNhZMt6T3ehzb2IYaOVZ2+Cc7VxP3Tf5sIUxGO?=
 =?us-ascii?Q?t7HWV23IAflpYli4j6Ik1ul5HJxesMgSw88m5O2lkede1d5vCPOYy9Z5/x4D?=
 =?us-ascii?Q?SiLsFik1R0jS54Kd8L4G7AR6+nIJMIfCxqq0bhGg2zr99kCvNAZZuonAvzqW?=
 =?us-ascii?Q?spO/1IW9wBuOAlsS0/mV9gm1fFP3Rty1L1mw8cwY1GDwK/ekYsdFg/ZPiql2?=
 =?us-ascii?Q?BYKaolgx7ipf8eKiuAye6GnxtW0PCHEC8YRKnHIUZ8JiK8/bZg4xZdL1Dv++?=
 =?us-ascii?Q?4YYplys41WAN2oyj+uqeVPOsdiKzAsgdg/G1990Bk/jh5FS+05ozQnutwxmz?=
 =?us-ascii?Q?S5VmuyEtaXfoSOe6A66YxruR+vqkQUWHN+KBu5S9EfHbDMCW5n4mxBg5kS9p?=
 =?us-ascii?Q?+VesUWDy5USVUzlzRSQGguuAvDK7yvfue56QwvsUQmfgrBtk7fhbGT6VwiGK?=
 =?us-ascii?Q?2DMsBtC3O2JqHyvfA13UIztuEm0MVyWGJ1qBjWp5cLdY27fjX/cr7ILiDy+K?=
 =?us-ascii?Q?o2YvZLCac0/1FMcM7Psl+M9qNiMFWgLMnVhRD2/KGYmLJWh+IiZHjqC16Z53?=
 =?us-ascii?Q?QjTTyuViAatjESYmP5F++0KBRluZKRWYpRwCZM12ldHvfMjRyqXSS5I73Mys?=
 =?us-ascii?Q?SR3Rq9RX+eY4fCtOAgjiENg16wR01pbL59g6B29QffsDNs3m25Ig/S7PhEOl?=
 =?us-ascii?Q?dI7cbzaTskYEqE1Gb8/cCZHrDhYoMOFs+AW6KUThKx2MmWQDVqkhL/j2pqVj?=
 =?us-ascii?Q?FEstgZRCGs2JPxFszYfcSgY5KglIuNP/ktWm8mjL2v/xaaeJqyj9kxaLNyfv?=
 =?us-ascii?Q?ciNx0B46+C6cQWOqrM/mdXDA6+Dz2fwiaDKDK1CyWkOCU6SVda6qg+iNj8ls?=
 =?us-ascii?Q?N0e7/rIF3KIaI15ML8BYM4WXD2ZowKmXWuO2hKccBMgF1Q9itsYmdOtSuJBE?=
 =?us-ascii?Q?Bwm+jqChz2sKTagCW82jz3NG8jhAia5Bec4WPXPFJkkNGb5hEQeUYjVyAFVw?=
 =?us-ascii?Q?JfmItQuzATqM3ePfuzg/KKMX+/3NokqZ04z+iuEoaqlqOR/1zpsK3k6KewAZ?=
 =?us-ascii?Q?O0ST5S4xDHHEHMOnYlPaQJKvMV+/2PCRSlx6mrmFkgb1aOEh1oiyQadfze8V?=
 =?us-ascii?Q?TOhJ5YzQbToL5LRYD4Hq4swChWbB1LRSFlnc19tLFOahrdboXDQg8pf/xR7j?=
 =?us-ascii?Q?zQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9348152-04e0-4872-3e7b-08dd28f12bca
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2024 16:44:04.2755 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2QdP5J9gi1VPQ2NmqfIKTI2pCL67gR/I8QcdQZ9XF42EUkmZiPxFZaq/48kMOlHfqUS+2ZwyKQmBV5CC0pxwOVQRIdViFWieFZhcGrBRZUg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7953
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735577055; x=1767113055;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NXd5A/U5YsnZoQe032CYIxj+6PF/gqjWKms1GNTaCnI=;
 b=VpHyp863L7PVx7fE/isBHcKZ7qne76M2exPO2gDcvLAUO82Lo/d4SGez
 XYAQD0IseZfs97JGq7Dk8fzRpGJTaWm6IZVg/lrccaMquNmo3creHVydz
 /JWpMDjJa3P6O+aFCE6vZoEpJr8MWHU/AQEGhUe0irWGrrt2+o14YSu1x
 rz2klcY4RGaFWiW1A7KVgTgukSJn4SJ9ecONHeG93s8rMQW1eNT9Zfb8D
 p0OYlFeREiNZNqgt0D5hq05GRGLeX24aSmOtgeftdMsbWZGoMuxCRGZPf
 HMNq+/cNxWoujBtZ3K5Ylr0E7kKBqGFMsgA8pcxJ5f0gYesHIhFmmAjvc
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VpHyp863
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next] ice: Add in/out PTP pin
 delays
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon Horman
> Sent: Friday, December 6, 2024 5:17 AM
> To: Kolacinski, Karol <karol.kolacinski@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen, Ant=
hony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitsze=
l@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next] ice: Add in/out PTP pi=
n delays
>
> On Wed, Dec 04, 2024 at 10:46:11AM +0100, Karol Kolacinski wrote:
>>  HW can have different input/output delays for each of the pins.
>> =20
>>  Currently, only E82X adapters have delay compensation based on TSPLL
>>  config and E810 adapters have constant 1 ms compensation, both cases
>>  only for output delays and the same one for all pins.
>> =20
>>  E825 adapters have different delays for SDP and other pins. Those
>>  delays are also based on direction and input delays are different than
>>  output ones. This is the main reason for moving delays to pin
>>  description structure.
>> =20
>>  Add a field in ice_ptp_pin_desc structure to reflect that. Delay values
>>  are based on approximate calculations of HW delays based on HW spec.
>> =20
>>  Implement external timestamp (input) delay compensation.
>> =20
>>  Remove existing definitions and wrappers for periodic output propagatio=
n
>>  delays.
>> =20
>>  Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>  Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
>>  ---
>>  V2 -> V3: rebased, renamed prop_delay to prop_delay_ns, reworded commit
>>            message to be more descriptive
>>  V1 -> V2: removed duplicate gpio_pin variable and restored missing
>>            ICE_E810_E830_SYNC_DELAY
>
> Reviewed-by: Simon Horman <horms@kernel.org>
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worke=
r at Intel)
