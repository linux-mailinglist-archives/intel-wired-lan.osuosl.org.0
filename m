Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8080DD25BC0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jan 2026 17:27:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CFCE984394;
	Thu, 15 Jan 2026 16:27:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OA2fv3gYgEXV; Thu, 15 Jan 2026 16:27:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CBF984397
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768494427;
	bh=U5jSZBzgO/pBKpbr8VBLrxa2mMBGXCd3mZkXGQMe+jk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Qxb+9XFLfsqjEh6XnaLUTDgdhktW3s15JV9NYlCr4RWWXYK1VxUk3zc/Vel5JgBBb
	 H0h9Ibk04fll3KvbMdjh47+w+sXiTMVaHzUtlXwMBSh4Rnr8mTaPw/2fWSLr4JqfEc
	 5U31ZG+bqFQGRwZL56oIumu7mYWt530xmJiaQ/AHA+gvEQu1TY682KN1qctBQGDIWe
	 CAhJjOlgABT3BEfITtyH18A8JONnd67I5Lf+DTeecGLvCQ8a/SbFQQz+7ym/BuvqDX
	 cepKiPorw8L7RzNkMr+HUbdApo/44yVlmBULTK3IdFoMV1QUM3/Y2a9qw6eMU2zw23
	 1axbzSOw09+Nw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CBF984397;
	Thu, 15 Jan 2026 16:27:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id AA6CE1C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 16:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A2ECF61144
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 16:27:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id anGwBdI76W2n for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jan 2026 16:27:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7BA8961147
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BA8961147
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7BA8961147
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 16:27:04 +0000 (UTC)
X-CSE-ConnectionGUID: jUuo4FOwQX6wpOK8I6Wt1Q==
X-CSE-MsgGUID: lHfAp2+8Q0unZRijOYdaig==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="81168890"
X-IronPort-AV: E=Sophos;i="6.21,228,1763452800"; d="scan'208";a="81168890"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 08:27:04 -0800
X-CSE-ConnectionGUID: tTuBHlS3TdGq1UdekYWR8g==
X-CSE-MsgGUID: dlmOOw1pRceO8e1X3J0GsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,228,1763452800"; d="scan'208";a="209501348"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 08:27:03 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 08:27:02 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 15 Jan 2026 08:27:02 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.52)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 08:27:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tuMrN4nNC3+OAqzfhpxajG6xa47ZRg3eVsh/oeocgYA1Y7U8Z2eWNnjjozNyD8FPJ1oM6iEqyt4VhEJt+S8ZcMvEa4YNQvlVDs15zv4CftjpzhUIx5wgXpLj9tYJ4eGlnffC5e1W6eipossqFHTXcVnoU0b9jVQWmQT8S/gMXQvzYJntMV/IPYR1AHj8lzF0bgag2gHPMzjpffw1TtuxwiPjOf227jp6/lxyJSC7tpzNmD41rClXlWt3PAfdg65Cio/Vp1BKFhG9cl7roYXNRQwpxESAbRO1ElBxRn9vYkOvBw9fomBMpD2z153FiWFBPG5Aei18UrUiskX2TCUFVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U5jSZBzgO/pBKpbr8VBLrxa2mMBGXCd3mZkXGQMe+jk=;
 b=dglIyVYWTXJGT5DXzbAby1sOd2QTO73cROKwQCCONPxeVqoKmfSQ9IoYf5wNvcBoqnsVfpTnP6q741C6L5r60hd8hBDs9DF6UFSVGY7+G+zR/q8+oYFyToSnz0LzjtRwxTIvVuuNhQfFEb20fRe/dIUt0BFSmpuhxXYdlnG7ng/ZlONH9EKFOZYD6PkBpIZKKaj4eVN4l6egZYdOqCZAfjnCUt+ruAM9MazrhXaulrnXhpnCRNEkpM1RSqHGtgoB/swyZtkfhCFix/omz8hMCTQaEZvSZqoKAdFh/PVqYUL3KPRGVVsF9MldnHcoY9BE9ItVofOUK/qJr89uRmHhzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA1PR11MB9496.namprd11.prod.outlook.com (2603:10b6:208:5b3::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.4; Thu, 15 Jan
 2026 16:26:58 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9520.005; Thu, 15 Jan 2026
 16:26:58 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Haas, Cody" <chaas@riotgames.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Haas, Cody"
 <chaas@riotgames.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 0/1] ice: Fix persistent
 failure in ice_get_rxfh
Thread-Index: AQHca8akCZQ186QhgU+jSfnYEtTBbbUetZAAgDMdITA=
Date: Thu, 15 Jan 2026 16:26:58 +0000
Message-ID: <IA1PR11MB62419A01198D7C43522BA2748B8CA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20251213002226.556611-1-chaas@riotgames.com>
 <20251213002226.556611-2-chaas@riotgames.com>
In-Reply-To: <20251213002226.556611-2-chaas@riotgames.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA1PR11MB9496:EE_
x-ms-office365-filtering-correlation-id: 8ec44ac4-1df6-46b1-ab08-08de5452e795
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?MV8TExP/L9IvtpA7QZh5/NsPwr375r/ZeSsis8qvs8yssJKvk9SNdACNmNSc?=
 =?us-ascii?Q?7vcTg7uB49EpQ1V2q/Cn7lRaVsi2COxt61sKhh8/1AJfgLwW6LwL/2z6bsUE?=
 =?us-ascii?Q?YBp4AlgkyHPXZN0kEE2D+7/fWZaXmRPhrgbQGEy62FMzfMCantq//5lsikwO?=
 =?us-ascii?Q?gkoGdWkLYjbldowP3SEK3UrpmOoA7yjb0eCDK6bbpXF1jz+4fvrFgSF5Rc3i?=
 =?us-ascii?Q?VDnWw0tQWIvOgZtRso81jYb24WlldCevW1aC0QJWF890UzeSaQUsUcRUi98X?=
 =?us-ascii?Q?eR6oyabAvrMlzvXLGZUaDLLMu8zBzd9kKuibVu3UGeFXQZMC1a+V9ipHise6?=
 =?us-ascii?Q?VVeaR0gas8wIa/9gWkodJ/E+SQ54L2Pk/8uSgf8eKwg4nbFNIFKFSI1L6b2D?=
 =?us-ascii?Q?EAJvNeN9n1cyegZp/rGnj8yPnZrGNknAhYm6S0V40nraRGezeN7LTD7cyZO0?=
 =?us-ascii?Q?kKktLmw2SXyqNopSHTLyrnokdtE7BwhnGLtXT4xS2vwCa2eGHkGlK+L6At5M?=
 =?us-ascii?Q?dXYW1jL9HXjtXDBWQHrftwcp2fzVXJgiZs+th0SVBiRFtccW+ttAEC9Q6u+s?=
 =?us-ascii?Q?U9VFRYSAVy2RXF3pcvkaJJAln4rKKrJJylkcp+x2TFKeB/drBS40c7YV7hqO?=
 =?us-ascii?Q?nD7+5WQsq1tCqspvxITmVBnmeVpFZ0OA6+nO8WqKagMiHVGxZDOq6mHqyw5f?=
 =?us-ascii?Q?apN9SZrT+BbUx3vFyxbDey7hGzx8+5JN5H33Nk0KstBIGZXABdIdEowkRDEg?=
 =?us-ascii?Q?gJ55B7rRCH80fxSaAcnRK/HUyeM0M4z23Sdu0paGqrmkiCGe7AEGyhUgbf3h?=
 =?us-ascii?Q?Fq+7cchFOSVKrgS+qHp/S/9UfTqudvuQ1I9m5PgNqdJUXCfSygPW6OBS/TcA?=
 =?us-ascii?Q?4RQ++WgrmjHEkf40osnOQf4FLUBIPvrDsE1d3w4w7pv38vVK37LCbdElhCRJ?=
 =?us-ascii?Q?D1vgHl0aZfgYLq7QxcYPURVNlfgxQKjj9/i2fI89FbqM5HcYCUhYsQsD45N9?=
 =?us-ascii?Q?qUf/TYRtgmLaNG/8vHCVvCaNBTfoy+v87iLmeFaczgSZi0YFW1caPkyR0DXv?=
 =?us-ascii?Q?tJw/FhPRcFk1rlaCqcg8I+ARd89/xmPhkeYxf16lhqZ7elqX5tJyU/HmVV4C?=
 =?us-ascii?Q?ThZV0QfZjwxub1z1iI627HtBXuH69FomC95YOpzy4iA+PDT9ikZUf45m0fJS?=
 =?us-ascii?Q?v28UjV9Fdvt58xv9HG2KsxJOpUWEDbfD66DsQZBarX/5eTPNQ6QR6jYifRrt?=
 =?us-ascii?Q?CW3tyVEEEjYWSaHoSmUYfp4signrBWl8P+sX1whpUC8r282wAiGe0QdBj3BJ?=
 =?us-ascii?Q?pUJ8xZ+Pswp17PgoPMJp8H48IB0PyQN2vylU0TQ5LhSin+1MprjEertDOfV9?=
 =?us-ascii?Q?34paYhs4tHnRh4xR//bHMFH8cnURbg5p0AbdPaN/gFYxq4izxwqHsIGR7icO?=
 =?us-ascii?Q?NaPASNnBQCQ697DtJgOfy4r7H3mh1l7OYfOtOM8v65xxlxtwZsm4OsjPpYb9?=
 =?us-ascii?Q?LQAz9BRFuds1+bEdW81tNbHHPtUmFNAx2IIWIetZi5AbPHzXvWhxzmVYlBmi?=
 =?us-ascii?Q?d3ZJJG0J3WfjI/6/P9FQigwl4SQmrHl2EsVBss03+kqZaBnkh9bwkBIfTVI2?=
 =?us-ascii?Q?dwiz9IysMT/R0Kh5kW7LoAw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EFPsdRUgcCTJZGOpKgDtKhgESzYTdQuRNUC1tZ7PkQoD4ERFkuYX/NcHTTvg?=
 =?us-ascii?Q?52gVQkCsUIPtaYgL9fADwwGLRr3RLVj4dq77x51roa/9bSgQIKgb/PPQEZfW?=
 =?us-ascii?Q?1N/jjNi+dqPIMXAACxPKRKyUmR8QT2a1qI6pQKnxQ4UwS03I4yrvhIi4cLnO?=
 =?us-ascii?Q?j6GKD9joD0A+2IytE5p0ChQAXzsHxx4nIQTVIJ8a9HvXPGIYD69RouUCuFx7?=
 =?us-ascii?Q?ruPzK577v2xFMe68DO55w6v93pIDsIeiY00e/xtz4Rgy6oqUKKD55Ry0zhWq?=
 =?us-ascii?Q?Nq/EQlW41DZ1udsfw4kjp6WPl7q7bW1uzMMGBcfp5MCWGPrO1SMnFkLDx6BH?=
 =?us-ascii?Q?OZHxW3PrD3Mg2tOfzQpa0HI2SK6na34fejcw1s5H6XbRKMrsD8R0D19LwyKI?=
 =?us-ascii?Q?bbCJ0rAsCS06MXtekAWiYIoJbCKIMltGENEsJ6kmzs4n5Qh88UxApFTFIqWA?=
 =?us-ascii?Q?2R1ACqCk49vy8yVWNehtKvfDnmr0/WIRebSka4LK+gfI7qmx8u41O8ZL8ue0?=
 =?us-ascii?Q?B3Olg2o5b36cc7y/5diU9PD3kbJLI6b9ule0rFiXnLD+FhcrA/mBY7yaHnCC?=
 =?us-ascii?Q?BESyCoHoyi2Ifqt0/dC3Te4VT56TNcnYYfbEV1N+mTCzuUglLI4NkkLMS3Ih?=
 =?us-ascii?Q?5huL4ObDN208RaehuaOU7N/JjBCZ0S4YEIpvf3hCKfpjrGyyKU/HLOmmCW8D?=
 =?us-ascii?Q?RUAo6hq5ZREaLNjfswEyIwWheYWgjQjihrbd1u2+hssMBjMobr2+rQ6Of5Mr?=
 =?us-ascii?Q?r9n4saeJKhrd6ODvgpgMMR7qgpnWqlM8MbHr0PPOi60xUbs75+78OHrNhRl1?=
 =?us-ascii?Q?LGdf9WUKStX8/B6hy9dcrH05FBn+OHW58I4Uqyg/c7vDD2B/ZPh8Kzy8HglA?=
 =?us-ascii?Q?vXPI5r74LNXhUlzAY/6CZDsReBYuqyOEmhSFtIQwbwkusMe4jS+dOAHLVb38?=
 =?us-ascii?Q?Hpm9tNRW/K7BCY4XGOVdkFzMHmCPSOepUZBFGv+LmKBBxK1DzynFErrCeq1k?=
 =?us-ascii?Q?hkA8+bPGr8p2ckTJ1cRVWgC5fNLxv3uCqtpDpiGKC8s0RMSj2MFxSbNBC1aC?=
 =?us-ascii?Q?yGqh80mY7DMCsvJxPYdAvLWpY6h4bywI+jv473k+0CP4o1KMhNz8EcnJuYnT?=
 =?us-ascii?Q?gTuUXUzg2FA7d817t7j/zVO04FLGN8ObfgH25mG26H/XtBBS64v7wjA8WdAM?=
 =?us-ascii?Q?Aj5Pus4dSZ48LhT/nFjLVerw6Kjw6674lobCOom+XZjnpU0/MfY8rSbNy7r+?=
 =?us-ascii?Q?1UaRL1VKCqunWZhdUWSuk1OHJD6I5KCktbhbzpx8AapiuUwKyFrdO/o0Usz9?=
 =?us-ascii?Q?232QoQCsigvaWjM7VOB3JyUiNQFNfe4GwOizBpoPaDzaBdhPWfIR3Y+zE2yo?=
 =?us-ascii?Q?v/5Lg59kXSQJ876VP9eTc9wsUa0ts9NBwA5YJWQb5doisW79guCvWGTKlm8O?=
 =?us-ascii?Q?8qig+vj5XKH8lQRIQFP+rqXZo7OescvE2xjwt3T5XUsSV28OwlfRm8BaBL32?=
 =?us-ascii?Q?WvgRJvAZ9TUTt6pX2FRBt3MBjEmIFOYBT6o4HrA2dMLXmEmmiPOrC8Q0SyO+?=
 =?us-ascii?Q?JlWNTgIh72D/gGmh+Ez62XwenvbEnt5y1Zb6jde9w1gny/gnUUlM4opR4pBE?=
 =?us-ascii?Q?oARsETyTBPlAxHi733p2+IAy/3GxQKle+2IdaawTZgMtdmZRRMr4H4JDKbGI?=
 =?us-ascii?Q?BJm0ReW9UH1jq78bXP6OC+WsO4aNz6zVXtxuH9XGXHvNSaSp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ec44ac4-1df6-46b1-ab08-08de5452e795
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2026 16:26:58.2326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qtYI2elmYJxlLAJYdWT+6yWpXFdR2hV7RZ0Jf3pYGNowBBD8SGRFyGR8G7itIcaC1zCkxP8iafaUnzBwPEVibw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB9496
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768494425; x=1800030425;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iNsgF3PKJ/g2l5VTK1rX5uhB9fMDmwK9HXuY22Qm4tI=;
 b=Gb7qK0sIjK1pG87wBLUlP51bFjNWYWELy2JgejXBUpDsXNfVKkIOc5Ea
 9iQWeu5BePR/wy6e6H60M1SnEtMHl/4ORha60eL42YIxAGIJC48L257Vf
 IXjJkv57kFbAanRRXxpOVRM2/+Pd0Enq8v/8JPYHLLoRQ0THb+iteVxFR
 Ur6Gwn3770+arf+s7PbJ6GSPaKqNg45fjd6QJXeXDwy3/cbqZcQu3tfTH
 b2rUTDJXxOVlkt7Bv7qDfU3mvycxvEBOUgvbf0OItCtaf+ZFHxhqDZz/b
 p8bbuLnAOSnXDXOI5XU6FG4Lg3snxNBpZf6HPVM+VMzEUcoI03Q6oUs7o
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Gb7qK0sI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 0/1] ice: Fix persistent
 failure in ice_get_rxfh
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of C=
ody Haas
> Sent: 13 December 2025 05:52
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch; davem@davemloft.net; =
kuba@kernel.org; pabeni@redhat.com; netdev@vger.kernel.org; Haas, Cody <cha=
as@riotgames.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/1] ice: Fix persistent fai=
lure in ice_get_rxfh
>
> Several ioctl functions have the ability to call ice_get_rxfh, however al=
l of these ioctl functions do not provide all of the expected information i=
n ethtool_rxfh_param. For example, ethtool_get_rxfh_indir does not provide =
an rss_key. This previously caused ethtool_get_rxfh_indir to always fail wi=
th -EINVAL.
>
> This change draws inspiration from i40e_get_rss to handle this situation,=
 by only calling the appropriate rss helpers when the necessary information=
 has been provided via ethtool_rxfh_param.
>
> Fixes: b66a972abb6b ("ice: Refactor ice_set/get_rss into LUT and key spec=
ific functions")
> Signed-off-by: Cody Haas <chaas@riotgames.com>
> Closes: https://lore.kernel.org/intel-wired-lan/CAH7f-UKkJV8MLY7zCdgCrGE5=
5whRhbGAXvgkDnwgiZ9gUZT7_w@mail.gmail.com/
> ---
> drivers/net/ethernet/intel/ice/ice.h         |  1 +
> drivers/net/ethernet/intel/ice/ice_ethtool.c |  6 +----
> drivers/net/ethernet/intel/ice/ice_main.c    | 28 ++++++++++++++++++++
> 3 files changed, 30 insertions(+), 5 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
