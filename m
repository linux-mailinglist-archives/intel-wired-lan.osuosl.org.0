Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D459512A2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 04:43:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D4E281371;
	Wed, 14 Aug 2024 02:43:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Iml0eRcVxlo4; Wed, 14 Aug 2024 02:43:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5AF4881373
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723603417;
	bh=80J7SsjCiK1p3JvB0FQG9IalnsGwGo31yE1CjpeTow4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rp2zvVfWQnMrcSs+gfwb8KrF0CrC2XoSIB8/yOTwZ3dpqOqUYt1j5NTJ5KzHFN4gT
	 Kp952bGrp3rKfFOnHdNWJ1Bgwy3wVyNANYlcFYI+nJrnMeCRVE/QlgSB58luK3L1On
	 ltbPXQFPjQkEmN30FochtCVzuWJ6ZNeGy4vE3FvsSjF8rkl4z5yryCqgsJDe1LUO2L
	 lFdK8eT1XiTiXwvZ+DGvBxjuCCqs8TnMPCrm5mokU/r/AUUNEfC9TxRMoLurNtKwDJ
	 OY42E32Ie2Km+9W4w9K1Z1qMDHAtaRxjfjvYxLA6LeyGljl+ghn9TEDBquPecn+CiW
	 D76+NTq3OjSeA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5AF4881373;
	Wed, 14 Aug 2024 02:43:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CAA6E1BF847
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 02:43:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C48D1605ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 02:43:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ArSzqI2-aNpJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 02:43:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F1AEA605A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1AEA605A1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F1AEA605A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 02:43:34 +0000 (UTC)
X-CSE-ConnectionGUID: B2/4y/wLTg6QjbGSdgqaAw==
X-CSE-MsgGUID: ojVu46goRoyIgHygx78reg==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="39248072"
X-IronPort-AV: E=Sophos;i="6.09,287,1716274800"; d="scan'208";a="39248072"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 19:43:33 -0700
X-CSE-ConnectionGUID: R/jkCtPxSQGxyVvjNrXO0w==
X-CSE-MsgGUID: sS123SidQtm4eFcbJQEl6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,287,1716274800"; d="scan'208";a="58554661"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Aug 2024 19:43:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 13 Aug 2024 19:43:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 13 Aug 2024 19:43:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 13 Aug 2024 19:43:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TMeuH1VmdqJbl7bWXI/l3Xf6XUGlm4PVfqjZk5T6gOVCVpjJMXjjoNWPJ6AIQycUcbFl6FP5TFcoM7Z03hE/WvnCK7QbtmsHjXaQ7ZdNa0hTzKU2V8kj4OOdN5UdSVESsMKYdkga/luQk2hVPEARyR3zd7t7qFuvsXb6CEkvZaW3hUuko1q6XpBjKt7EqRVZISBDWHV0dkslWKbYJ53Ej46cPIrPxpmt6+LmiLufFO3EAtvbFQ6EPMWZFFQo8cM9mnqN83tpzExcTvoHUkLHHcDdjKZFa9gy/nO+gGvDtM8VC6j5ILQ2V4k7530w8ZDSmItJtbutP264aj3O3wWFuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=80J7SsjCiK1p3JvB0FQG9IalnsGwGo31yE1CjpeTow4=;
 b=Jtg75ixrFw/hsgA2sihcrZxHZWepBbAwEoou1K7ty8COIKPRwCBBH7pG9klbZlRjp2tARjycTSnWS6R0Qxh/hkqeJCUCLKZ67nfJ9NYxUKEI7AMfssD0fb5OpP0MBLVLjk89vVsVyfTcyQVhhJbdJDtPlACET7dH58plUgvew/ifIBRPtFbUyjqb8iAhqELhd+w18R/NYsl8BGzLcTdzya64q1sRLtvgvbwXIUyQpLwAIXlO5OZx6zE2voTnFmwWBOHSkSTy/V90Mzq38QcGoI4sU9SD/Z6OjCAoTlC1XKq6qOCvIUykvQWb2Nsy7thFJpqt855OEjCT9oKL+XT3eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by MW6PR11MB8438.namprd11.prod.outlook.com (2603:10b6:303:241::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Wed, 14 Aug
 2024 02:43:29 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3%5]) with mapi id 15.20.7828.024; Wed, 14 Aug 2024
 02:43:29 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/3] ice: fix ICE_LAST_OFFSET
 formula
Thread-Index: AQHa6LhfmUFI4cCOc0+zaNX7C6h5K7ImFeMg
Date: Wed, 14 Aug 2024 02:43:29 +0000
Message-ID: <CH3PR11MB8313EF2066E0122A9561AF4FEA872@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20240807105326.86665-1-maciej.fijalkowski@intel.com>
 <20240807105326.86665-3-maciej.fijalkowski@intel.com>
In-Reply-To: <20240807105326.86665-3-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|MW6PR11MB8438:EE_
x-ms-office365-filtering-correlation-id: d7e99abb-be73-44a2-4667-08dcbc0ae169
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Z9EsqTdWhZKaBV3UqdRQOBX87Yo7hxJDr3Y1s9ikm05iM8Hy4R8LudQn+aDO?=
 =?us-ascii?Q?dERedIaPoJJE2w7MANVsuuQ70TkajY8CqOsyLibjMjdcFejFexWOfHrVDU7l?=
 =?us-ascii?Q?VQ49gYLyUuHQgpZ3HhJpQb1qwwn8KpF3aTGI8qjcVUI3sKgpY8UoT5+ABc8Y?=
 =?us-ascii?Q?1PlxmPWIdfdbHN6pN2BaNEI9bZ7fy8d7sBo6ksRkGLjw2b9FSfcDIBPPNNwQ?=
 =?us-ascii?Q?FnAxJ2y0eC9YuX9i1DTxWdqk6wUHDUO2ftDESyHVylN+46xwHvpHcl/HOalj?=
 =?us-ascii?Q?Na/4KQSnK4fx1hSOjhjDfJux9Rnk32csq1vyacBgLy/E5F2VJfkD9ezkc6ql?=
 =?us-ascii?Q?WpSBZOGq2zirorscaaIg7f/o/Csx82U8tScGrXmz6nHddNtGpffPJZtkOQPZ?=
 =?us-ascii?Q?QAqIvyZ8UijQMOgL2w2zj5LT4l4WrQZl4Mw5KCdHw3P4/Rb+gtssNR8e8wFX?=
 =?us-ascii?Q?Oajyip77JXz5vj+z5g0w19fIAVPrFeDuYMf//6hNYxEv3Un3YHxc/Q+Y3dOq?=
 =?us-ascii?Q?meDUn/ujqHhblPJ2IozXARGTr6bM7UIG3325IGu2xWSXQj8iacMiGI3ez/qR?=
 =?us-ascii?Q?QcLau3b9CU5vm6dAoc0ahZTfnkUj9va+Bh2h8/ni0i3MSPnfmlEELx95/1Lj?=
 =?us-ascii?Q?VsxkNzj6pkD3YHlG3JvsvGk2wSgG1x4iaQ6yneQEST21vuNzYzlNwUzSi2La?=
 =?us-ascii?Q?MtNBQT2MX/NM4YHGxV0LP5rCElhDmpySZNRq1/Y/PygGS81/fiiJQs9YgDGf?=
 =?us-ascii?Q?MhCCdE+JVNfjT56y2rDF+SkOMqrU0sU7zZUToZiwBHipEOAnlkgz7dMD/42o?=
 =?us-ascii?Q?OLRXC6yyb01rnEXluHP27uJsHkOMgXTemIjaFBbC2VBxwGkcy9KerCIkMhMM?=
 =?us-ascii?Q?ZMCkWaQKZFBl/Wu5guWtTJtOjQbt4h7RAUINOJTsibwLIZI/gAhx6ulfX12W?=
 =?us-ascii?Q?20jMMcrqO2T6LG44yHhANp5jF/pRd28PUFvq936GgDc2ZumZ+Qn6zTOu88Hl?=
 =?us-ascii?Q?MaNoX1v7X5rr1gqxmFEWOMpacY7es0+1E1u+ZEAfd7OrqOi3YXLaWLgSt392?=
 =?us-ascii?Q?PjNSmWeO1JZc9gCEk7TSsSdej0CyDavYsTfY24BOboKWik6gnawyt5B57U58?=
 =?us-ascii?Q?agG1waYjzyxLKiC/gSK8c91j9efgCiEwj5IQ+0vc0/9y/4FNPFr9PKBgkBm8?=
 =?us-ascii?Q?wfCno3d3SOv1DIS5mO8XQ0O58UIfhxgln08bQhDEVFlJt5fJqIZLgAwwaB08?=
 =?us-ascii?Q?RGL9D/cth0n35R0Uk8W/XnRzCZTlL7H7/VIpCJo/sqT8Ea1zTrL65Q53DhCH?=
 =?us-ascii?Q?XDFFb5LXvTdW/Vn+XjaYgK4wdcTT7P2SqxgRohWUMrRShdU74Mx3hIa2+u8q?=
 =?us-ascii?Q?klYru7MC8jXp3pq0wg1n+qhGPRR43LWvWkO6PtQ1yBtcNv/RKw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2Jw87DxY9wdTb0NKdG3plRxLHjQKWznfRZbhbg6p2FiyD+KAZympHYu3Y7s9?=
 =?us-ascii?Q?hUPVOCOuefGhRQHlv2KQzHn+Tjm4hhyB4yIqu9LLYRaEuVDyrqFAdYJ/BaLS?=
 =?us-ascii?Q?VnYoL3ZXQYGgEQCsnsy6H31BXb3WnvfjfWgXZm/sTJayBUOEDjdRSBZY4mMg?=
 =?us-ascii?Q?TFtpgWfyQAZJsxZfDkdIYgPfRrGRHSg7BQU8XCnX5edLpxaK03gmVNk4rtnD?=
 =?us-ascii?Q?7XHRK8ziao9ZGAUilhQGEpJKzLtBAfiKEpHWNxa6lmlfIdyGBi/IU6e1L5yQ?=
 =?us-ascii?Q?f2l9i4pO9UQGlj6/2fI9vKmKaYZ9Cj88adjaw0hN57K+5x9Ec2Tu8Z46zwcu?=
 =?us-ascii?Q?sznf+qcG45I4Hgxe+p4SGGkfswzcoSv78Rlzrh+Mt7mDeY2JvFFrLEgc45e+?=
 =?us-ascii?Q?OfhhAMDxswbKBolhWEUgWskUghcAu/zKtLlfcHHQPbfsrQ1aovxiKdu0hhx/?=
 =?us-ascii?Q?6vDfYtfV8/xBCMo9CUmFQ0lhNGV/FsvZVq5xjtiymLK0gb0VKaGzugzgsvj3?=
 =?us-ascii?Q?ZnGCliFbl2Jv/c9nHG60gWpyXQV1iDltU00x8H4k7nzTEHbvwvm1wLkqfGFK?=
 =?us-ascii?Q?oLwn383ytWXwxHF7/qcLIITUeVrWCk4PetRx2SUe8ZOj9IaFF5kuIcViBKy4?=
 =?us-ascii?Q?RFoTA8E2TZMOkC56Lv1dtgpOkj2bYL/vhB8ylScbBCUXDOBVAUe52rfR/hiQ?=
 =?us-ascii?Q?Myqqjj96v8xpa/UHr1GW1jm8BeAD1oQXRbxmTP4QPvI7PKWzI1MQm8mRw7H2?=
 =?us-ascii?Q?1UahDdtY8RJsfitJsABlAz+FYtC9qWS8JWbgSC6iyVwJu2tZtuYGGsmUZeY5?=
 =?us-ascii?Q?+jCz32SufSqbPCvPqg4PbnQ18Qa9J3q+t+iyJ4gFwTiL3vCKcq5PokKIefAg?=
 =?us-ascii?Q?ZEnfEZwlbp0j1c9syNxtze0X24pZ56UXFX5/SsIX34rIw/ARa9RCK6cEEVs3?=
 =?us-ascii?Q?q3lSiu6x3BMmLCQg/LAWB+IBMAitDJRKHG7acRDr6J8N9UacsFcZJLSFu+oY?=
 =?us-ascii?Q?bqM0ufoT0RftcfCioAS2GBx90cTmISgQbSFkJxJayYs6yxBgIq2Ubo6kaDyG?=
 =?us-ascii?Q?8Ls2WSr6tY3zLVZZDIu8Knc+lOi0idh3yyIB+PIgiX99/lj5JcoMRsvHU6wP?=
 =?us-ascii?Q?TbOsT2SSTC/7mcwp+lmv/jlItS/Pg1OdAD93/xKPwkDFGB5yqUHOxbOyYkTT?=
 =?us-ascii?Q?G85qyLr6adwUKUlxsyw6rUQPYp+7K+R9yfPDzyvbGH5jD5Ab9EXealg3b49g?=
 =?us-ascii?Q?ueRLeUIDHBa41ld6MFU2e9pHa/ueebaoL9oJDRiGK3KcQcPMd9w33Yu2aWNr?=
 =?us-ascii?Q?v+k7ds2wCfUImoBcQT9S+AYUZyZmd724HlC4VXxWGmuhsLSokJGdJ2MIA06E?=
 =?us-ascii?Q?FVvFBcNrafR9c5SR0/Hh0W9GLiRYHkGI4R3vYCRoVViDTv6ySbVZ/RZU9ttX?=
 =?us-ascii?Q?qQASDxfze/7dE2LrrCMC00xpb+8sVxUbK0bt21wu3Dm1IKhcBb07QdbL5rjp?=
 =?us-ascii?Q?8XSHqshw3s8TIfDJrIJk3Gn433Hc9EbhvZmiAfIcOkjPOSfbVZgqvq9fVNsm?=
 =?us-ascii?Q?S2GYG+waujKpn1q/ym7kWgK0eR/msmGpi8bZaUjT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7e99abb-be73-44a2-4667-08dcbc0ae169
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2024 02:43:29.7054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tf4xGxnsOSBMk8rJnQS2vtSG2hqc6zKryWqWbcMKM1gePC9y2FiUO4U/x7AlXKTPSczgWwqqqRZpB9EfYlkbMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8438
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723603415; x=1755139415;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=80J7SsjCiK1p3JvB0FQG9IalnsGwGo31yE1CjpeTow4=;
 b=fuU8bUk8X/CMQfqhKMnFo7DShYOVuQ5o1PDD/2QBHc74giOlCJAAeJzj
 lRinGJP24mG0VVHPecP+aRI4yDnav2ogdMVSFMZMHQ1ECivmt2CESRJ31
 wxtPBaRfKwCo6q2+izA5+wprOh8rv6CdseN37D/RRk/cV7PWAvaoxbc1m
 vm8CrDN/qzfhtmKHd8eZr8acByry+fgSTiYuM8Bcdxjgpecu1/fN8Tdsz
 4ilwI4gvEN+Kc8LoUIur08xvFzCzyF/eqNDHYeLDa1PEq4k0G6QBzND6K
 rdCIbd9TxJC6lLB0KXdi88OzmqVqbkGeWkuLEJcRNjj6NXWB5eatwYbp4
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fuU8bUk8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/3] ice: fix ICE_LAST_OFFSET
 formula
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, "bjorn@kernel.org" <bjorn@kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, "luizcap@redhat.com" <luizcap@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Wednesday, August 7, 2024 4:23 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
>netdev@vger.kernel.org; bjorn@kernel.org; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Karlsson, Magnus
><magnus.karlsson@intel.com>; luizcap@redhat.com
>Subject: [Intel-wired-lan] [PATCH iwl-net 2/3] ice: fix ICE_LAST_OFFSET fo=
rmula
>
>For bigger PAGE_SIZE archs, ice driver works on 3k Rx buffers.
>Therefore, ICE_LAST_OFFSET should take into account ICE_RXBUF_3072, not
>ICE_RXBUF_2048.
>
>Fixes: 7237f5b0dba4 ("ice: introduce legacy Rx flag")
>Suggested-by: Luiz Capitulino <luizcap@redhat.com>
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

