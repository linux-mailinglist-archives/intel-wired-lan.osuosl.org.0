Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B096A96F1EF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2024 12:52:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6442740BCB;
	Fri,  6 Sep 2024 10:52:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wqmoJz4Lg_xQ; Fri,  6 Sep 2024 10:52:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D736D40BC3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725619965;
	bh=/XHYxzUo9A7DhuaBCcBRz1uihH8VrXd96WM49rbClBA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ehMCPHPw6mK+3iA66/mcmlwLoYA6ohUVxITXuqOzQDPA/x3cQovleXecC/mWUbrQL
	 t2dEd+1bI4Rh/7P1RYqvtleEgyzmRSh3Q+YS5Zbthid7r4374jbcP/hkSmCw/xqws6
	 pkh2YBrA/FxElIA1Gcx3GVzwDDFxedgJa0TiP2jYAEnCPFv7JmXdTF4D2nStHcL9eR
	 ZnHixhlZRTB6+u4ZLhqicOQa/QLhmEmz3++K84vH51qwlylmCxlspz1RPRmMeSAlEQ
	 8i6EL6gSAoQpkUnUdIbu0d352h42NqS7KdTAhhfHaoc+ZQ4oHYdaFYQnfxZ6dNZ656
	 vAOiQ0qnyz5vA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D736D40BC3;
	Fri,  6 Sep 2024 10:52:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C63451BF95D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 10:52:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF8B46082D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 10:52:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VkxtecP09FBn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2024 10:52:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 84D5960670
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84D5960670
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 84D5960670
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 10:52:41 +0000 (UTC)
X-CSE-ConnectionGUID: ITcaBPHuSbK5UuWtHr1sJg==
X-CSE-MsgGUID: C4mMlZKUQnGOGA8vzAE4hA==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="24569424"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="24569424"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 03:52:41 -0700
X-CSE-ConnectionGUID: 387jB6x2Tk+8y1SVce8A1g==
X-CSE-MsgGUID: OEp+AK8sRbGgCgg8IL0sTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="70500588"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2024 03:52:41 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 6 Sep 2024 03:52:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 6 Sep 2024 03:52:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 6 Sep 2024 03:52:40 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 6 Sep 2024 03:52:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=joKzBXRyyVw8zwvPclrwbVme637y7mtPdnV8CMDjarWp3YhOI4sHwPfkz8IufhQHHrwN2uFgK3df1dT9e6sXTuuze3Mr2/MMuf/1BBMaxGJLHWalDdq2K/W2+7Zy9wJ+9clfgxSOLGfL62VQdlFiAcBYqb3EzhFk46kiv3Dwhutdc4FOhsHAoixXi87CG37XQvJYwdDXGqL3syVNpMCK8nskhw8sIZd3cIsr0OPw9WSm1iMIX+kNKR62woK7M3mUjI2xSVERYsZbKYzsU1/+p875S+4qnZzfVnLPYc7vLV2HmmPLSeaTTB017G3fX6cx6OTkH6FLKxG4H29YUqMOlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/XHYxzUo9A7DhuaBCcBRz1uihH8VrXd96WM49rbClBA=;
 b=t/kWNA22VP1iljT8N8urRJXHGC+XvlGteBPoWyXAGkarrVhmQy0KhYh2AwUtJInx8xYqmmMK9Joipb0rhFsk8FvdUaX6YZPtXqw6w/a9nnf3jcBFydlBlNLW1Mt33gSzQcZjDf744dYr2KS1U9ku1jbPBlVEhL8LXT1IdqjIlt9fg1i5DAjRS7GCxvzsCR/8UAXx9kwmQWtzPmNpE8LvCu7/wJeMZCSLjSB6yvSril6VeBmgsBkh6yOlvMNjxWJZp4qB9Zf+yPiOsHLU3wONXPySx7BF6cVglaVNC9iZ0TwzQDutVTEP5bwQYzSCZUElA/xcNxl9tYsaX2TSuy7aFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA1PR11MB8256.namprd11.prod.outlook.com (2603:10b6:806:253::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Fri, 6 Sep
 2024 10:52:37 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7918.024; Fri, 6 Sep 2024
 10:52:37 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: mschmidt <mschmidt@redhat.com>, "Drewek, Wojciech"
 <wojciech.drewek@intel.com>, "Szycik, Marcin" <marcin.szycik@intel.com>,
 "Miskell, Timothy" <timothy.miskell@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 "Eric Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 "Paolo Abeni" <pabeni@redhat.com>, "Ertman, David M"
 <david.m.ertman@intel.com>, Daniel Machon <daniel.machon@microchip.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix VSI lists
 confusion when adding VLANs
Thread-Index: AQHa/q6AzPSE7u25cEWp9NDTDCji6bJKmFog
Date: Fri, 6 Sep 2024 10:52:37 +0000
Message-ID: <SJ0PR11MB58654F137DB3E2F3098A03D38F9E2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240904093924.24368-1-mschmidt@redhat.com>
In-Reply-To: <20240904093924.24368-1-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA1PR11MB8256:EE_
x-ms-office365-filtering-correlation-id: 94b1a2b7-f2b1-429f-ca06-08dcce62054a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700018|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vBqUjggAk+FMfEGEjce8j2jy8SHs6hNLi8TkNRhqGAu7UOFg4wNTZXXWa7IF?=
 =?us-ascii?Q?n6VqMBp9DKl0tx6NzWcGHYD3KzKW/FG3TQoP0MKIr1qgZzz1/avQyGtYAwEa?=
 =?us-ascii?Q?b5U40PiAynvSpL25pTOJxR+YF6hTNqEgvYapaMVboBmXa0AbdNAPx/PqoTFg?=
 =?us-ascii?Q?SNZSRHu4xVDbSA7c9iQtqU5HCZ1xsIHNdJQFlOJijxfC4qne4A+GslH0m3PF?=
 =?us-ascii?Q?e63DDs8Mcc7fu13t+ed/GC0TPRQ+54E9Wv0mKqtRdbYlPWLviGezaqfXxsPo?=
 =?us-ascii?Q?mwWpXHtzRwBxkiqGDPafht4oIWkytqHYnJiyk5iApxyFjOTfDiRFklGFoukY?=
 =?us-ascii?Q?TKBC2z7MBi9GXszkFcDI0TXGM4NRsy8Jpx++/kYKzZLB0mt5bqbAC2CsUofZ?=
 =?us-ascii?Q?cbhtlbPMtw0r+34eY6Su/bnEZrpkM2DCoeOMey0DQhekFpssmTJNU0wuceLT?=
 =?us-ascii?Q?554avMHVXf/Wy6S1AsJ2hZWgxQSIsLFjHSlSR9qxXI0pyL8KxURmMGcNUTu9?=
 =?us-ascii?Q?vKt1mRMs7b4p/UgTo0MZJApuhbbXkUul8o3m80Q29qJY0BvD8hqm6bCcxGO2?=
 =?us-ascii?Q?aHY3nqnoOSO+d0wDpIU5I5TUs4SnvLAA5+K76gLrg5pLMrDL7XP5UR8lG1wM?=
 =?us-ascii?Q?wM7oODKwQ/D4xTb/d9wF7FlZVtpGucrOpXj5UZ6iSkbxuxr/x9Mf89Ay2WZz?=
 =?us-ascii?Q?dXl9PBhapBJ+Zn2tRhNFwZHdt/v/slDAj0n+n0bB6Sv8X77SQu95NTnDDpAP?=
 =?us-ascii?Q?iJOD5xKXvkXFhtQSFy8ZUkVU+ufEtbEkm6O709DJTQtgKfK6H0V4oqofqiQ1?=
 =?us-ascii?Q?TW666r9CtvOQ6rdk28G1CVRBN6O0vIDppIwXLvBvESXNHSh0yy4Iljd6IV6X?=
 =?us-ascii?Q?B5B6ll4TqS7uANhR21EleHPUqHEx3mogWnwxzdOvTGTVr6o3j8Z6d+JVzWca?=
 =?us-ascii?Q?wwRDSC247RAR79meO/yBtSFCZvrVgR9Y12vBwxtfd58zPh0LD//IBKYey4s2?=
 =?us-ascii?Q?5NUSQ65p1i3M5GxCnxM82sWxf6kfg+UZ9yje3YESOJrO48Se8pVkljbcWZuU?=
 =?us-ascii?Q?22XB7Y6nYrDTzduerFO49Nxpap4fEneZ7KbN1ZStfwbMkQvGduBthZeWDu4f?=
 =?us-ascii?Q?v7mpW4jcWDesnqttT6P0Px8GPLiS1o0SuJ6PGfL2hYSinCkSo2PE0fk3+H3d?=
 =?us-ascii?Q?OMBbGf43bdYxlJrPNfxSrgXTyWHbUFFO+sBuEn6rSkeNVZtBylKDQgMZPIxO?=
 =?us-ascii?Q?eCQhIFhciYqU4H7Zh6PqZQQbp0mLsCL6S9h+GDX2+QEbTR3HaMyhta7e/4to?=
 =?us-ascii?Q?R2jANsN0t8xQy4yzDtJ1C8LSNR/CBdAi5arwYX8kSneLXPyFucQHZ2k1Ms15?=
 =?us-ascii?Q?HvU9xTIBw0qdigD1M675gcEscL7CEmUsCjzdW2oIax0N20l6cQtKE8B/RSET?=
 =?us-ascii?Q?w4I6B5KciR8EZCJJfeV0a8HFJ7P292Bo?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700018)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vAqAUUVlr/NKAMt66raX9AYhCfw9wBnJPLvhyrv063//E+Vq6XOV91zdD1lV?=
 =?us-ascii?Q?E+K6ByA6306Nm1fKou9ip3c+dBUWMbN5EQNqh7sLstF41obkvajjhwQHWlUc?=
 =?us-ascii?Q?/UlBqJ/+gNtUxJaOmi2g0L3aPqYAsWTUmn46vrSBKBhSpsNZ4PC12oxPqQ5h?=
 =?us-ascii?Q?ony7Lo1JnwHaLtzEcr2D8z79pJ/z3x0MUq9NF6Vibk62ptWGWKM0eGG431kb?=
 =?us-ascii?Q?YWPK+xml5FWjrCGuRvVmoEZIqBj+PtFujDqWSUtvP6OHPxVH+uTt7Z8GE5U1?=
 =?us-ascii?Q?/w3mYmcxG0NDsz8khPJdZvhELa3Gos53BRgwfyoRnEkX3uqqsyqkfyMPX0B2?=
 =?us-ascii?Q?3e96tr4GUY+CFy1225UASRe6cye6jxcKeAr029WC933vOGJmOAEn/tuDoZmy?=
 =?us-ascii?Q?PR5feU52VhjkCnVElg4cmbgxmUilRaSrePQCw/pAJ6ldBYlT2HBb+lnydKiz?=
 =?us-ascii?Q?GEgkkVSLOon8t5Pg2+2nPm19A4oaZBbgOqHXaOIG6facPmE9+U8n/3tvFkDC?=
 =?us-ascii?Q?YZI4wz52nlvGEBfIY9A6aHeYMJ+FTWB1rWd3kyo6aKUkXIL0/ZqYTV2dH9DX?=
 =?us-ascii?Q?uRaYB3DTPG9gAcNKD93j6xRnMmnJNougMB0dsq/Q2SW7Eop8c45vS5r6zcXI?=
 =?us-ascii?Q?dBLzjE1i08ZPLSPBqA/H7yOjYr+nfypYNmXpvGEhN5xK8LgmVe2Po3qPhjP3?=
 =?us-ascii?Q?XbrXiGmpSGp7+HK05KJmGRf8qNCxdCMXWeXCsHKzXn2UcjRS0j6QqRpmk690?=
 =?us-ascii?Q?DsLl8kj8oCrpG4NB6JG3ClmqVeOYASRbriNvgz/zIuv9nGFU3GSZubPMsvrD?=
 =?us-ascii?Q?6bsVul4j3W1xtH/Iz4hmv84U+kIrg8pOzTtRbGsd7npKB0ckCYX3rA5aH30H?=
 =?us-ascii?Q?B0vVH/T82Y36+RdrnG9VK0Ufy6QT4qwVEmJeLKfvXYineOUIjyRJZYNmQXOl?=
 =?us-ascii?Q?0GttXcBkKZFGFDameUcRuuMb2Oz9TmrikdkNgJBOOVCQnQG8wzJANQPTd04b?=
 =?us-ascii?Q?ly6ZfuMq6PDgclfr5IAdIZekw6yZFpiPnmDop0ca7TKIOV454QrNaa5reOWe?=
 =?us-ascii?Q?UtDqldK0zYn6+koOgBuNS/k3IgQyBTOwdqM+A2Rh9dFV+mA+3+oBwVFbY/5R?=
 =?us-ascii?Q?gOYA8CZz4FEb3kga/G5IpYsFu996zgQsqouUaTtSGF5GPsYY6Wo6Z7hANduI?=
 =?us-ascii?Q?rhM4oT1BqRVqQ8Zjd++lAlfhZZQO5pVHWFDAXLdl7v/W9DbTHkSsZx5VAg9u?=
 =?us-ascii?Q?ObD2JpI2MDVQichlXhs2eYMtdBw0AYA1w2/N19+bQmO+SfbYnE++Mwjyh5X3?=
 =?us-ascii?Q?Unccj19HFLeGpYwF2lLGb8r2OQFoUBK2OO59tLFJ5/3WbNU0IXrX+P63fk/x?=
 =?us-ascii?Q?YUycZygaGxTAHphoeOcUYQfj96rnFeF3H1kw8FOH8AA5UGUJVKmDf9GYjPct?=
 =?us-ascii?Q?+Sicv1B3/gMMNEQLNRli2nCKYegBRf494ZPDszB6eDZpwDp4P4A9T61rOY9m?=
 =?us-ascii?Q?sPNcqQjRVkWW/j7qidpv22lpWBf8UQcLrIxQ+UhtrFQTWMU/sJ620Lwc/ukI?=
 =?us-ascii?Q?uHv0jRKpXHCGWH0HYx9n/ZQ27hkdYPeBGujjf/6jmlpDFrtPkebSnbtgNHYq?=
 =?us-ascii?Q?rQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94b1a2b7-f2b1-429f-ca06-08dcce62054a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2024 10:52:37.0602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vE7muYrevGUPc0iYT/mE7M7dNWHJhHZdy+g82itAZtHV3GO9gC2Bpxu7eQaiJBd86BipSdFPqp31G5cySZbIhC1y6VKRLuijOpt+QYG6+qw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8256
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725619962; x=1757155962;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KnwgWLL3bCSjqj08F7lKKpA6ZaDHEdW/GR6jXqcMl1w=;
 b=MJ/P2G7QoczQibB9IBBkhe7yyNo+cGrxC24pLdP+kzKxE3inM80HeETD
 JdZwvrnyQS0VUWEk4Iun6rFmsSOM4Ia2kZbLgl43vXyisIzu3O9PiEZ82
 4MjWvSVUTaadhPtTHUwmov+0eqgf20TUz8aB8+KcBV1eo5l0jhM724qcT
 MMpKYLQ/Ko6ghn9+p4vNGb2LK27k8xYr+Dgtzt1NGTY4S+0JQMo38j2ig
 gzyOUVA75wW0nTJYRLcVO/I4hGKzEoSw/Y1z/1O4Ho5PA0eucQA7BTySC
 Hku5qYGPZL2ZW1VAfJCXp3MTkG9CWKkNjjlD79YfRu1WKAW0sHlPXAWBI
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MJ/P2G7Q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix VSI lists
 confusion when adding VLANs
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal
> Schmidt
> Sent: Wednesday, September 4, 2024 11:39 AM
> To: Drewek, Wojciech <wojciech.drewek@intel.com>; Szycik, Marcin
> <marcin.szycik@intel.com>; Miskell, Timothy <timothy.miskell@intel.com>;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; David S. Miller <davem@davemloft.net>; Er=
ic
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Ertman, David M <david.m.ertman@intel.com>;
> Daniel Machon <daniel.machon@microchip.com>
> Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; intel-wired-
> lan@lists.osuosl.org; linux-kernel@vger.kernel.org; netdev@vger.kernel.or=
g
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix VSI lists confusio=
n when
> adding VLANs
>=20
> The description of function ice_find_vsi_list_entry says:
>   Search VSI list map with VSI count 1
>=20
> However, since the blamed commit (see Fixes below), the function no longe=
r
> checks vsi_count. This causes a problem in ice_add_vlan_internal, where t=
he
> decision to share VSI lists between filter rules relies on the vsi_count =
of the found
> existing VSI list being 1.
>=20
> The reproducing steps:
> 1. Have a PF and two VFs.
>    There will be a filter rule for VLAN 0, referring to a VSI list
>    containing VSIs: 0 (PF), 2 (VF#0), 3 (VF#1).
> 2. Add VLAN 1234 to VF#0.
>    ice will make the wrong decision to share the VSI list with the new
>    rule. The wrong behavior may not be immediately apparent, but it can
>    be observed with debug prints.
> 3. Add VLAN 1234 to VF#1.
>    ice will unshare the VSI list for the VLAN 1234 rule. Due to the
>    earlier bad decision, the newly created VSI list will contain
>    VSIs 0 (PF) and 3 (VF#1), instead of expected 2 (VF#0) and 3 (VF#1).
> 4. Try pinging a network peer over the VLAN interface on VF#0.
>    This fails.
>=20
> Reproducer script at:
> https://gitlab.com/mschmidt2/repro/-/blob/master/RHEL-46814/test-vlan-vsi=
-
> list-confusion.sh
> Commented debug trace:
> https://gitlab.com/mschmidt2/repro/-/blob/master/RHEL-46814/ice-vlan-vsi-
> lists-debug.txt
> Patch adding the debug prints:
> https://gitlab.com/mschmidt2/linux/-
> /commit/f8a8814623944a45091a77c6094c40bfe726bfdb
> (Unsafe, by the way. Lacks rule_lock when dumping in ice_remove_vlan.)
>=20
> Michal Swiatkowski added to the explanation that the bug is caused by reu=
sing a
> VSI list created for VLAN 0. All created VFs' VSIs are added to VLAN 0 fi=
lter. When
> a non-zero VLAN is created on a VF which is already in VLAN 0 (normal cas=
e), the
> VSI list from VLAN 0 is reused.
> It leads to a problem because all VFs (VSIs to be specific) that are subs=
cribed to
> VLAN 0 will now receive a new VLAN tag traffic. This is one bug, another =
is the
> bug described above. Removing filters from one VF will remove VLAN filter=
 from
> the previous VF. It happens a VF is reset. Example:
> - creation of 3 VFs
> - we have VSI list (used for VLAN 0) [0 (pf), 2 (vf1), 3 (vf2), 4 (vf3)]
> - we are adding VLAN 100 on VF1, we are reusing the previous list
>   because 2 is there
> - VLAN traffic works fine, but VLAN 100 tagged traffic can be received
>   on all VSIs from the list (for example broadcast or unicast)
> - trust is turning on on VF2, VF2 is resetting, all filters from VF2 are
>   removed; the VLAN 100 filter is also removed because 3 is on the list
> - VLAN traffic to VF1 isn't working anymore, there is a need to recreate
>   VLAN interface to readd VLAN filter
>=20
> One thing I'm not certain about is the implications for the LAG feature, =
which is
> another caller of ice_find_vsi_list_entry. I don't have a LAG-capable car=
d at hand
> to test.
>=20
> Fixes: 23ccae5ce15f ("ice: changes to the interface with the HW and FW fo=
r
> SRIOV_VF+LAG")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
> v2: Corrected the Fixes commit ID (the ID in v1 was of a centos-stream-9
>     backport accidentally).
>     Added the extended explanation from Michal Swiatkowski.
>     Fixed some typos.
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c
> b/drivers/net/ethernet/intel/ice/ice_switch.c
> index fe8847184cb1..4e6e7af962bd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -3264,7 +3264,7 @@ ice_find_vsi_list_entry(struct ice_hw *hw, u8 recp_=
id,
> u16 vsi_handle,
>=20
>  	list_head =3D &sw->recp_list[recp_id].filt_rules;
>  	list_for_each_entry(list_itr, list_head, list_entry) {
> -		if (list_itr->vsi_list_info) {
> +		if (list_itr->vsi_count =3D=3D 1 && list_itr->vsi_list_info) {
>  			map_info =3D list_itr->vsi_list_info;
>  			if (test_bit(vsi_handle, map_info->vsi_map)) {
>  				*vsi_list_id =3D map_info->vsi_list_id;
> --
> 2.45.2


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


