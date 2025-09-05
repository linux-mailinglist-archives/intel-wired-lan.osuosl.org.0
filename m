Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BD2B46575
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 23:25:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C06D283544;
	Fri,  5 Sep 2025 21:25:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MDJKnnwP3f7n; Fri,  5 Sep 2025 21:25:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7484083B93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757107532;
	bh=NXBQ4IS36D0qW1lV7Xe6zR5OJl82fURCUCMm6wAJ77s=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kbvhMT8EOj7zdYl3mAg3UgTehMvfteYQvbUXz7TOQSNeab7oZRESmGT72JJhpUqDt
	 j7Cp37dit3VInyMNgU/hIsvmKFPuoYtG5cAjKODRiUxD8QcME39X/xI/zq957NqooZ
	 VCU4W8aBx7zI6oHdajvl2A7W3qOh80DSQay86sYQrwGLrnDiHJ0ZG1+wwZCRyJiG61
	 4pZiePLZD3PaHfFwXJsf4P7f9xIRJTAdII7e40xSN37lbrTlY3NNojc7Vl7HMGENuj
	 yiBrdXpmt8ofEf3XjKtok0FgIFeyKI4tEhoL9y/qgMzh33BcM5xN4J8Ai5vrqEeJsp
	 LcJsfWnjuOwJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7484083B93;
	Fri,  5 Sep 2025 21:25:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 881C1CA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 21:25:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E13861277
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 21:25:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OLiBHcjUuaqr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 21:25:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 94ACC611DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94ACC611DC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 94ACC611DC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 21:25:29 +0000 (UTC)
X-CSE-ConnectionGUID: Rb3AHd7eRAGDF1dz5bv2jQ==
X-CSE-MsgGUID: 4kLhyS+PT/iTpdcH7dZPUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11544"; a="63292208"
X-IronPort-AV: E=Sophos;i="6.18,242,1751266800"; d="scan'208";a="63292208"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 14:25:28 -0700
X-CSE-ConnectionGUID: JxR6i+8IRZK6eUu6Fh5u6A==
X-CSE-MsgGUID: RlOpt1A9QXWzz33wNYQTxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,242,1751266800"; d="scan'208";a="177465055"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 14:25:28 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 14:25:28 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 5 Sep 2025 14:25:28 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.52) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 14:25:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TuxiDN5Nz9eeJEtjySF4x+AhtZXqcQO/hIVXt323xZMXPktxei1D8KgLHIyyWC9Wk+zNbOjZifDSpkNa39mZEiC9JvF8MtqdJ0Ch+WWjuVuHBkK9LewnDa10+dYqx35m9JBFinNjGLm2l9tF3wkuthyoNzhi752aDGznWHlmuj5SLK9KMF8mLTscmqAkLfCkW5jtRY3GJwVLyKr0Pt1x5yICUzLERNI4ZChbqJQC7UMcwS5dlhnzSa4asxhc2gzjkNx0hmeN3hlyfdxGsfkQQELfKYTpg9DDN40CIPTQlMVgowX8lNeOhpOyEj4Q4YoHK6UnLMgxhdadaZK0COR5Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NXBQ4IS36D0qW1lV7Xe6zR5OJl82fURCUCMm6wAJ77s=;
 b=qYm4jiXsRhPo3PZxhcCNxbFTIcLJPh0UGeqFwCoJIkXt6TUAfs6JdYGw9n1za0x4hpePhThq/8U6cWY1q/xSWgtFmKz9mazaSBLr+EGg1rkepRjQn7mL9M2noR86cD9Vj9DyTG558wJLg5DJskJhG5AQrpKe28nXjAzij2OiG4VRgt6CaFj1WuVpmfvIABxHEsv+QnnNokN2BE9nHmWSc63/l5QhUij7APlq/hnLaOK0FLfgb8Ed4/EfKiMe7EZkvByIxg7tnl2uP5GsabRZtmQEotisoIum9ugxAda8Geh7XpbBnGWnYRhqq5F3NoNjkzQdnq96QZVpSPN+s9mFXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by DS0PR11MB7999.namprd11.prod.outlook.com (2603:10b6:8:123::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.18; Fri, 5 Sep
 2025 21:25:25 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9073.026; Fri, 5 Sep 2025
 21:25:25 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Simon Horman <horms@kernel.org>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "decot@google.com" <decot@google.com>, "willemb@google.com"
 <willemb@google.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/2] idpf: convert vport state
 to bitmap
Thread-Index: AQHcExhm+dQW3SS8bU6VN8rUaGNIDLR2lRYAgA6VpsA=
Date: Fri, 5 Sep 2025 21:25:25 +0000
Message-ID: <SJ1PR11MB629709EC0B466FD314C8E9099B03A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250822035248.22969-1-emil.s.tantilov@intel.com>
 <20250822035248.22969-2-emil.s.tantilov@intel.com>
 <20250827141946.GC5652@horms.kernel.org>
In-Reply-To: <20250827141946.GC5652@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|DS0PR11MB7999:EE_
x-ms-office365-filtering-correlation-id: 8160559d-2757-414a-59d4-08ddecc2ba8b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7416014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vaU4ngvFtnGOYoIRBhw4xrT1Jww/Rj/CwJ88n4usijMCtd27ADTSlSQYPwF0?=
 =?us-ascii?Q?/iuPKlbzvJGIs74ymRcb3IVzotXa/CY8SAV2DUg3pTRew9xoqAr/r3FNBx69?=
 =?us-ascii?Q?zvTpjsqTnKGeNjX0e+h6iTKqJx489u8SbVnp1wB573J+KgZ9c1+1r40CSkUe?=
 =?us-ascii?Q?2vHC5+I64zV3G4tOa02yG27s6C81jZTFjDraJLACfU78AJ/OobVwT1BfyFex?=
 =?us-ascii?Q?BsU+m8uZplT3c9+yc2JD51Jv84ypLcXCsRGTVQpePoiQw+bax+PCDOZ7NpPi?=
 =?us-ascii?Q?iHqwv1n5W8Q2yzgPlhbgaNfWGGi5ju4a3fGI5e4hj87hS8UKnxaQrlmXPRsr?=
 =?us-ascii?Q?QnG7jAlXIpt4YwcPhzSaNAxQ1L7tDUPc+OCp/xfMmE7Dj/IvhK/kdQzGYhKQ?=
 =?us-ascii?Q?wXvvRWW6CCKr7myx3s5d7iJTGs+ebT+HsTkFom91lxymDeGXacWLtnWQ8Fza?=
 =?us-ascii?Q?MCTKwlAzIeFNrYJTO/p1X9NggGxf/z4dVKcTCTZHM4jzsuIs/ocks56MGgbj?=
 =?us-ascii?Q?mjj4QjJ5/ZF8Oql7kvLPXmNxpdfB6hnfU+1+11/BgUe8SFsHlN2xMmVKFdXA?=
 =?us-ascii?Q?LxgAo/H3gxJiOSxvNCMlcVaNaqrD7wb0flO2VyOeMwnScTOM/gwwMl+6Euvg?=
 =?us-ascii?Q?x/p+alNul9b6lr6KlxIy2qJzDzZ02FIJ3V5GTwfe8xdhFsj9IRX8DyrB3Myw?=
 =?us-ascii?Q?lmHaejT/pUe1TXKcaLey51VB+a09pnknSCsY7VFW/vEq+GCM0xLjYckrSf3y?=
 =?us-ascii?Q?b3W+lQTQ7PYmqKLhN6vE+iBt9ZYnMxB5TpoT84H2n7tjCzjirvFWcanGkv0m?=
 =?us-ascii?Q?I+Hi0eN9Y8N6vWJOIAm/WjfbuOWaCLE3Y6EqTURketG/y68PUGePUVu0vYt3?=
 =?us-ascii?Q?I7Xadr2DlPGAwpNxvEztC072DLmhhMhjaXYusN/ZeiYxk8frY2OPrxQLBe0I?=
 =?us-ascii?Q?RPOHgWk4wvisJc9oC8+LKK+9O0Hly95eiwYlJ5seAJQyUOaXCp+V/YSOpGQi?=
 =?us-ascii?Q?frzntmTaUVXlUXxjKRghgDmv8SbrIZp8frJki6r5CQ4LznerIs2SAhlbiw+/?=
 =?us-ascii?Q?DjcSPJkUh3npyNaxiNti4nENnQ+GZwLHFO01lOrRQohLbCETIwR89o9WgZ8M?=
 =?us-ascii?Q?J8dKIZQTSoxDj5TAat6XC/09zV1VZsgGJUqH4/r1Ud3WnErIyqhPjR6jKA0y?=
 =?us-ascii?Q?EK3e1All6GeuYTXMmMZTxMZWqpKGihxnTaJv5ZS9j4AWWni7SAc1/xhy6MQ2?=
 =?us-ascii?Q?0BU1/4rEOCI0vRPEC0NDYAVwTVyI+HtARq8jW+bmVW1Tbmjfp4zqe1A62SiL?=
 =?us-ascii?Q?9nvE5685Ebcvj3bS6b6fMhaodJF1LYaaIX/IW0WTxR81XPk4oFDbMfIBijkF?=
 =?us-ascii?Q?Br46f516YQvCRqMiXmr9jXCeu47oGp4zfvwmAAptUgI0GlAFXs7M63FQArqC?=
 =?us-ascii?Q?mEYfP2CFxLnfXDo+0nRjqfIzh0exeIzibwjNuhbkEdnLs1yBIZzcaw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dnjl/nqmX9Wmww3iJje0nZFOLvdGId3fVCO3I5zlB40r3iQ3cdFBd3XRGAiz?=
 =?us-ascii?Q?BGC3/TSh3qMXOTtyXAMQLKmoVnqOAt/Y1bh9uo6oglSjqzYkHBCU49wM3FD+?=
 =?us-ascii?Q?EOFz6UUHy/1w1BRCkspehT/WVV/9cThZhsNytTklPyR5hsTJYi20PJyrbpA3?=
 =?us-ascii?Q?yt2RuM1nzbrm6zoOUWUOwwXFuIyGRrfcZjqZ1RDB0+AATWRpTPaoPTQ33kKk?=
 =?us-ascii?Q?2UXR2V7z5HE16MfBgID6FZoao6T4eTRAT61W0HexEP1suDroEwmGqq99Qj2l?=
 =?us-ascii?Q?qPAKnx6xTRqVL2sahVW5Zn9rv2TLNcaVFqilZyyHlrPFejfROwZiz+3x/m8f?=
 =?us-ascii?Q?hy91QHc1lQks9q3/D1r2C/b2qU77mjAcWNvavuQGAKVn3hu6E4tyvEPWn06L?=
 =?us-ascii?Q?e1ephaqtHKfkaTPBruGJ/vIFkouckwIuA33n69qaN9q6ZKWQxb7p9usJEzQH?=
 =?us-ascii?Q?1q5sC57Y0K0KjpchaPV8Ndxslr89ZXR65/9LYTC4NADFG83LBQjAtPtZhZ6z?=
 =?us-ascii?Q?WwToEgRKwSr11vxvZwbQkCYs3CJjTxBCeedB3GayNGK8528ITo3PBN9pD4Wu?=
 =?us-ascii?Q?3T6PU96t5H70Fz40xW106Hu1MUvngDX3mLZenl5o8pttbpssG4P2hWVZ+a8i?=
 =?us-ascii?Q?SI4DiDKSzbQil9tOQZpgDUwXErE7G+l6+Xi2MHWKBWBJdWbYRW5EsIqAZvnv?=
 =?us-ascii?Q?EocyQZBLQ0Zb9kCHnvZJMEFnKDqm/JfdEx6vPjY/MzOMPWRIP3b3QabVcUzz?=
 =?us-ascii?Q?DUw98RMSpRvhLpInkHPa2TDL+rubKHDuG73dp9J89PUEcxLP+Hxt/QFlTxcT?=
 =?us-ascii?Q?dWLuHpxdkIB3hcHYnuhFw+uIESYqK/DxsOoDimh3SjezKGLKs67kSr7b7iFx?=
 =?us-ascii?Q?Wfu384m1jqDS/LwJLO2XyVFj8U1uwLU0jcvx1fhqTqYVQN1ucChHF50K1efz?=
 =?us-ascii?Q?ldC/awK80Ulfrw+UKsL0xTkX90ppEmppntqaMsvP+vZmzGdP1VT8y2DbpgsA?=
 =?us-ascii?Q?W9341A5tIWU8DtVZU6FwBIGqLZ6MroYBqqbL68lTX+sleAJ8qAFeVeX75x0s?=
 =?us-ascii?Q?dnN7lFaUcdwHpgbaht/sl1APoCl5GT3FSJIY0O9db9g8zdErdzIyDhFir9Lm?=
 =?us-ascii?Q?ASiMWcJwTI/e/SuLMsB4Tw1BEORkWIT/tBY7rSe/JhTyiXi3Yn8KeB1Lie+O?=
 =?us-ascii?Q?nB7OSbCoIAefU9PYSFYa2VLPMmcir8fyKPB9/hzkpr1CS5q70jwEQRRJU/4c?=
 =?us-ascii?Q?fc6MHlmqlv00zj7+PajLAxwHZV1+V1IKdw2v7TSUY139uop+Ma2RILnnN8jk?=
 =?us-ascii?Q?i56Y8lHgM6bgUfzHxTJhm+roV2sucOyHY4sMtGOSA/+QWEW3KZJBRqHJUdlD?=
 =?us-ascii?Q?QOmjuBTjfYzjleOWessbKC9JLkjQz4dubgC6H73ye+tHoDfr+TpaWLSaoFEk?=
 =?us-ascii?Q?rGlq6VPVNt7/6px9ZluEI/TwHFHwwYtD7qa+lJ5a//7um7LfJuzSwzO88M+X?=
 =?us-ascii?Q?9Dg9fKKg3CiHZjM3YVoFELbmZH5GHXlUhnmBSLf97nQTzHo5lUTFUKoWNB4s?=
 =?us-ascii?Q?aXK4Zl89EZOoJNzrCV8k+rWX919n/XNRvFpoe48S?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8160559d-2757-414a-59d4-08ddecc2ba8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2025 21:25:25.3373 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vc9BGhxbAY9OtrDfuS/aKbnQuLZ3GBpbC/kKszc9qZV7FEVe8amiqgYawDHZs5b2yFmOtcpOjpBd7kd7BYCR4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7999
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757107529; x=1788643529;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NXBQ4IS36D0qW1lV7Xe6zR5OJl82fURCUCMm6wAJ77s=;
 b=hAKBbOtR0fzSfevVAtQDHzetYGNZ2Nwte4KOcLDiZiLuipgT6/y2p6uS
 CkasvjqiIIRHzbH7/6KztTXscJfte21sGmwia8ryoNU5fytv0NV/qFRva
 37nIWwruKE02S/NmuEG6E2DMiyM0u1xkGJ+/ylhyFa8n6xJjzk8xesNHo
 VPNtFL0Fri3raqvgg2HaP6oWT4yhVdrDfKf5077GX1xkGGzgtvELxF9TN
 WHEt8iCa8O/HPb43OuQcXmYQ8ECh2QloqPDfIxjnLPSsDWRc8SiStCEw7
 IGzRrA4F3HlpWOMaAprGyYk4wca8zozBMpQOsYzt+zLbO5R+74OiKXvWS
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hAKBbOtR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] idpf: convert vport state
 to bitmap
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
> Sent: Wednesday, August 27, 2025 7:20 AM
> To: Tantilov, Emil S <emil.s.tantilov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Loktionov,
> Aleksandr <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; decot@google.com; willemb@google.com; Hay, Joshua
> A <joshua.a.hay@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] idpf: convert vport st=
ate to
> bitmap
>=20
> On Thu, Aug 21, 2025 at 08:52:47PM -0700, Emil Tantilov wrote:
> > Convert vport state to a bitmap and remove the DOWN state which is
> > redundant in the existing logic. There are no functional changes aside
> > from the use of bitwise operations when setting and checking the states=
.
> > Removed the double underscore to be consistent with the naming of
> > other bitmaps in the header and renamed current_state to vport_is_up
> > to match the meaning of the new variable.
> >
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Reviewed-by: Chittim Madhu <madhu.chittim@intel.com>
> > Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Samuel Salin <Samuel.salin@intel.com>
