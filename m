Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A720A9153D2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2024 18:29:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 584AA408AF;
	Mon, 24 Jun 2024 16:29:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i5NszlLhq3aK; Mon, 24 Jun 2024 16:29:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 678BA407C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719246545;
	bh=ac8+2wrSNo/lBTD5th6uSDms4ciCRwr++1oShy+98pE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2Wx0IzLGTcuXjVm5H2S736gMN+z++M4Bgsn0FR7KW01Vl+owkAITAegPNYgoU06Ru
	 qzLaVYP7SvfcFqwBb0m0nJoKPQaWbMHmKZ0RRDiONaxFEoW9Sbo3D03Xlk9foveYJL
	 qVaMRZ4scnyyRdYXlO1Az6gGH7Qlunry+YCR2Kv+G/cAn/Mz6IV5LymxQKvrtwS/Wy
	 wOtodvyRxaE6x1MdEMCzXRDbrB9gTfcvB2O8pCQRCpXoLBVu/r/AasRxPx2FVpsxpj
	 lzjVlxA73CEQg6Bi9T5pHMvlwLgjrxFTZsps+7TYy3RT8+IPVaFU1c4e88LqPI+drr
	 3nNBH7qY3idKQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 678BA407C3;
	Mon, 24 Jun 2024 16:29:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F22841BF951
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 16:29:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9F9080C31
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 16:29:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N9abqS8QlQkW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2024 16:29:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E640180C30
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E640180C30
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E640180C30
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 16:29:01 +0000 (UTC)
X-CSE-ConnectionGUID: kLElI+bJRT+HkWlQOtnEdg==
X-CSE-MsgGUID: YSEZO9kASM6vP3S5lzoz6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16373233"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16373233"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 09:28:59 -0700
X-CSE-ConnectionGUID: 8ItsT9gSRrWF/B/f3LSPOQ==
X-CSE-MsgGUID: Ij5QOycwRc2cE/TMot39Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="66576578"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jun 2024 09:29:01 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 24 Jun 2024 09:29:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 24 Jun 2024 09:29:00 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 24 Jun 2024 09:29:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ry1iGwNh+ekrS9VesZDGx184WOkVrzJd4IqeBVTkBvZ11MDs+2A+cFrrzZRqzjEHELhvVwvl4RqPz0nUa+ZpA8ezQG9Lnl/4vO6zpHc4iEHi8qJcW7MsOvImO+iVGgCw3votPDP13fNCe7JaM4LOXHU2VMq0OBJyGehuA7fsguitHcNTNn0IMhrF9ISldm7+ewziBZ3P3tYPOXMoEiztYSDegFuzGu/vVs2fr98CF1o5liTlmuLlW90BZzreOwepEz8rAdGYLMdMVx0YtbOrNZxqoHswVD8yZqQ4P/uYpoujB5JKMQI5RjSRAEBQf9d+i3j8k8c5F6KBjDw8YNcG3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ac8+2wrSNo/lBTD5th6uSDms4ciCRwr++1oShy+98pE=;
 b=FGI0GM+v2OCjx9ckCHiKbiPV588ESvP47l4q8gzeVLoXm8ROKQ5tr79Xom9tavh4OQP7YCmzMyWPYOUEjw/d+COhzpJO0oBEXj5+pplMxDa3eUIkDYpxI6RQaDXxcDbxENunxEpH6y75knCeWiZ6oRav8V9hrI77s9KJ14XyC/YECh7bS+3+L3lEHahJp/lJJozg4vsyqZuFWGa8vudZQsS0+UDEniTLkO36sVow3dyGzyhAI5m5C5VrLqYPAVTIPrVhu8MqBrkUbO7EChdO9b9VGo26QzQfqv5VCt6eTmhBIgZQxy+Pm5BZJZixD7lA2Gz7DqlL125zvg3D5zk9Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by IA0PR11MB7791.namprd11.prod.outlook.com (2603:10b6:208:401::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.26; Mon, 24 Jun
 2024 16:28:58 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7698.025; Mon, 24 Jun 2024
 16:28:58 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Samal, Anil" <anil.samal@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: Implement driver
 functionality to dump serdes equalizer values
Thread-Index: AQHarhgj+SieWBKstEiElPgv9riIBLHXSnWw
Date: Mon, 24 Jun 2024 16:28:57 +0000
Message-ID: <CYYPR11MB84299A2501CAC64AF498420FBDD42@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240524135255.3607422-1-anil.samal@intel.com>
 <20240524135255.3607422-4-anil.samal@intel.com>
In-Reply-To: <20240524135255.3607422-4-anil.samal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|IA0PR11MB7791:EE_
x-ms-office365-filtering-correlation-id: a0c515b7-879b-4ef5-fa58-08dc946abf79
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|376011|366013|1800799021|38070700015;
x-microsoft-antispam-message-info: =?us-ascii?Q?4gIha8iCIx8KaPC4wgL01DMTvLixROHIOL+0cVrPxmaHG9soXMNuo8VokQ+b?=
 =?us-ascii?Q?u9Rk3asxboLno0T/4UyGGOAnD//QSiNldWYo2keRyV3dJQ0mnAXxALmWtJ8N?=
 =?us-ascii?Q?S/bOvNEedeApc2nDY0lV9vuQVJqFhYIFaqdQk+CcuixYRuNRzh8unheUxPXL?=
 =?us-ascii?Q?/AwE7UnhP+4deaNrX2IyLuZJlopaPeAKeV/cZdUaGZ8saKRmQeMX7l9G6WO6?=
 =?us-ascii?Q?4o4OjJeF6E/vUc541elDZva+PyEMvrTwaoorko9au3NdxX8STIsbzB23NOR2?=
 =?us-ascii?Q?EOHBwXXDZMrg8DhJclLfa1jSRcVXPJp+SDCb1isfcQbwITnvQxFCG2kQ0bVS?=
 =?us-ascii?Q?ZRaM6JcwY6/oYy5j2pH0GCioc8Dust5am563Zw+GVjCVQ9p6lgKvjxpqyym1?=
 =?us-ascii?Q?CKDVpW5eb+E+yAVuPuuyEvm8myru5XaUZhML5N98tHbZ43gxSFHZaFhUXs1f?=
 =?us-ascii?Q?rSmh/oxCU+tg3rZgNH9JW2IU2l9w1viGRoWaNUsr0FiYwbrpMRsuDeNyaKXK?=
 =?us-ascii?Q?BUV4MfO2tHwJ2NJUoXa/038dFP+ROxgWZDxR2EMXtI7JTmGwFYNi3dxzbXjR?=
 =?us-ascii?Q?/+vjlMuusp5GeoIDcovx776md3cwi9iV8PlwRQbo2/o4QWvNmbDAXIKBjWF1?=
 =?us-ascii?Q?mMmgYgNscPaXY5wHy1L9oI6aneR3impzcTocct9PdcNtLkJNJryAPayLSdtT?=
 =?us-ascii?Q?rLN+Li5Ltlqk9xtYe3WzGPTRfAF70dfvfwqutph/My5kgg4qFDe/9TDyh8se?=
 =?us-ascii?Q?Mmo9pe/JsobgxfL1R83JrPkBkLDkkyNby/+kba8kk5AOXGL3fwCfauveTmMn?=
 =?us-ascii?Q?7tL5t2i4NkySIOn2cObOPvwpnxDaJwprYC29eKS8zyyBIx/viqFoSFyV8VEs?=
 =?us-ascii?Q?3dCzx6FwabHnCVnvGIpZAJfINAlb7Nv2XTHIS6npq6P0lerfhIekU5C486XB?=
 =?us-ascii?Q?bafZPgy0PwewM9B31hn9ovQZWWrfDBC78m7/ZMYkLALvKHhUF1qv4D7rbVab?=
 =?us-ascii?Q?rrSPOzs2UUbptS8qOjZQYmtbUUkEsXnZyAWmSTgrLXJjbxMTejhGGLWXPGVP?=
 =?us-ascii?Q?BEWmOo83YS5JCYDyLzCwIeu1PMmv5Xs9YpbVVD67x7onNbt84OEyCuYDIJdC?=
 =?us-ascii?Q?51XFI5kSAlJPUGmVRpx0dQoGKFsRQMEXAxvPAyuiLLwgDU+xIwCRZpWL9KH5?=
 =?us-ascii?Q?8Jx3LjqFCf1t4o1/u5/0CiY8+/JdgUDEGvZuMKXjtU5nbWn7I8xsylFM/o33?=
 =?us-ascii?Q?p+WdUkU1IGDl+hrtsBujRJp98pdqrgQ+eKc3ywKtPOijtLLm7TIt9g52bRwc?=
 =?us-ascii?Q?tFFLMgeLp3B8tvN5XIVfJ/bnUimXue7YnhY4PCSjxX1OLoYvZemAFG4vcc6w?=
 =?us-ascii?Q?YC5Kx1o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(366013)(1800799021)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lO4zVFmLjWcOqiGr8g5IzKV0//TgabKqMsiPuJyWdy0oBRbYPkr7CariFPQX?=
 =?us-ascii?Q?ejgs+m370Fy4bsFoUhUAgSKUHJDHZUkNpnSCqAqYN+JoE8kx4cvNJd70cdia?=
 =?us-ascii?Q?QsUpQfqYwEH5auGZTAebIGUxFtgW5Gd/hADY9CxcO8LUSbM3EZ62dRRwvHJm?=
 =?us-ascii?Q?+67aMSfoWJ6bNtNZ7Yosw+CB1j8fV5OM9k2MjeSPoiySGFkRab89H1nFfV5q?=
 =?us-ascii?Q?cZaXrtNMpsnO+jkCjkfanV1uHbS1BpdGo8iivTSxMG9NjJ8n8eJMjLUTkKmr?=
 =?us-ascii?Q?SenQvk4lh04ND30B/LjKo+lozDkfVvRmZmTfQGZeXzgWhTlVjBym0feRccXl?=
 =?us-ascii?Q?Yokpz6bc1RqumDRfvjV0iTGeRwexId8w0rNn32DL7NRW4PBEFoaTxghGgmAs?=
 =?us-ascii?Q?HhJ6LOH5jMIkV6AHVel/ZvhNIU4+CD7Qrx7cxBNTiSLnCxV5DSTTlnnjVUNQ?=
 =?us-ascii?Q?PAmy1div7VP8AFHFna5evEKaYLsAh5VM5162mnqJHlOLdiPHwwEWb2mrU3MN?=
 =?us-ascii?Q?0XqJiMJoejLLJ3KeFOdqyWLh5fViH6SummoLa3FcZpO6O4j6oq59zL+W7Yis?=
 =?us-ascii?Q?193VY8dOE4q06Xn9NSzczBhX72e1eIPFQnh8Q6rWb2RjwIuu3z2KyrhfkhyD?=
 =?us-ascii?Q?Lg8zgZhTwPfI37jP7Th2zItMunaAEv3ce0bvKell+GCuwjqrHiaEHkNxVAEv?=
 =?us-ascii?Q?uW7rlsRif7+jJK0WlN0wcu97VeAE5vQP50u0ei3gs4feu+ohkzSD0MSiGfrm?=
 =?us-ascii?Q?XEQdmXD/hqu7cYeCXisZ5k2HqBD144y6bqzQf7lKxNcZen1hUmIbt89VoyPe?=
 =?us-ascii?Q?OxqmbTdDCvyMiSi0R1DiveJZG1xBdUz6enQ0xsoNU/JuljobaMtDoH1Px/js?=
 =?us-ascii?Q?e+LLEAMfNWPg02qNEoPiSVTEPx2gV52Q8zHSmTkG4qdunl9mBAYmZn/iNDDW?=
 =?us-ascii?Q?yY7xAy6jJI3bqJWVvuKAwW4k2+EU1JpasvhGBP6J/udcajQGZY7MvDakdWsA?=
 =?us-ascii?Q?A3KOp4RyYVhTUpWdATnfVFfdfirCIktVmqtdsqWBVlSkDGj4G1im0Yff44tg?=
 =?us-ascii?Q?E5QWhlxPMn19LecuYHweeCmmvmYErLjBR+7ip2J9luQCs5b5hHKDL7Jn2Pl9?=
 =?us-ascii?Q?EDofNRf/7VHsx8NOJhGBOWWgTxYvMtak6V6yM/3q7bvsRHP7F7kJwavef4TQ?=
 =?us-ascii?Q?vGBQUQ/Ps0fUczJRhqV5UgRDKFzUTwg1Bg+8Q2S9dEpRkdX36mXub2iTtBad?=
 =?us-ascii?Q?hnoELVsJZq3wo2YfSg/2FegeGhDU1q1+0eJOwmd+hAZqTGzEWLo1hTVZ1DCX?=
 =?us-ascii?Q?J/qQqmA74RWjHN5QkL/5r4ZnZBRptP+pptDpGDPYz/HRmTioq4EYIn5RPtXa?=
 =?us-ascii?Q?m4XGcXMiRiPHf35mPqtwL4KUzXhWMgy2a5HFtn9EnW78IeFUgiN31E7knTOM?=
 =?us-ascii?Q?R0QoBuWki2MqE8zwxvHA8zQSp7caxasspYug5nC/qZol2WdQ10hR0bZKGcLX?=
 =?us-ascii?Q?0DH0L9M+eDbsukLCrlPiRS/GuONzX3zOrrKSGEcKuXaOjcfbq3GpZUL/Ixao?=
 =?us-ascii?Q?z0pY6usLGY2LUxgUT0Kt5H/coUf15lsZheMzlMDkPLXVhzuQG4p+PwHrgGEX?=
 =?us-ascii?Q?9w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0c515b7-879b-4ef5-fa58-08dc946abf79
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2024 16:28:57.9455 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q04Zt+7clM0kTFTjrvu9ZIqO3L1ly6rJ0ZKGjEk3PPEIy4ZFc0x0G/8vqhIwnycf0EVS1NuRRMQvSKDM40ewMydKaD2fbWeCzOe4hH2dA8dLsODotrlMw86zljCCHhjF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7791
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719246540; x=1750782540;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=86bZ4Pt4d1/3V6SZP4HAbNGKY3ZkKM2dLO9GG3VTmRc=;
 b=NKzqa3Atc6YVre0DQXPPzzLsMSmza99Gk36shmuDdCGac+M1XPtXnExG
 RCaDP1plqPUy06ua4iVt1JpoHh+mL+yy2iFMTY145MjV6Bzpje6p3VFSU
 ct8asWSTcH+sLR24Od0cgKm25vzqIXzRFra13qdlwBEsqAgfVeRNPMN7m
 VQ1XNMf1nxCz5yKg2zHgYhkAlELtDTyP+kHkeWruaMVfUlkXa2pMq5A7m
 PBN0osfJfraogXrH21mrbsY0gU3RCRd7G8/3YC+fzZu6X+UFvsBHRhrYs
 FpQUFhrsnEfbn0W8roqNC6zmFIivriT2Hq8WPnU2SDWnef/XdBkQ+Xz+l
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NKzqa3At
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: Implement driver
 functionality to dump serdes equalizer values
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, "Samal, Anil" <anil.samal@intel.com>,
 "Pepiak, Leszek" <leszek.pepiak@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
nil Samal
> Sent: Friday, May 24, 2024 7:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Czapnik, Lukasz <lukasz.czapnik@intel.com>; S=
amal, Anil <anil.samal@intel.com>; Pepiak, Leszek <leszek.pepiak@intel.com>=
; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kerne=
l.org>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E=
 <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: Implement driver =
functionality to dump serdes equalizer values
>
>     To debug link issues in the field, serdes Tx/Rx equalizer values
>     help to determine the health of serdes lane.
>
>     Extend 'ethtool -d' option to dump serdes Tx/Rx equalizer.
>     The following list of equalizer param is supported
>         a. rx_equalization_pre2
>         b. rx_equalization_pre1
>         c. rx_equalization_post1
>         d. rx_equalization_bflf
>         e. rx_equalization_bfhf
>         f. rx_equalization_drate
>         g. tx_equalization_pre1
>         h. tx_equalization_pre3
>         i. tx_equalization_atten
>         j. tx_equalization_post1
>         k. tx_equalization_pre2
>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Anil Samal <anil.samal@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  51 +++++++
>  drivers/net/ethernet/intel/ice/ice_common.c   |  37 +++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 141 +++++++++++++++++-  =
drivers/net/ethernet/intel/ice/ice_ethtool.h  |  19 +++
>  5 files changed, 248 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

