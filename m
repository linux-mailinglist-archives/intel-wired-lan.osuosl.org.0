Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MXjBDrDaIWrZPgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Jun 2026 22:06:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0D7643177
	for <lists+intel-wired-lan@lfdr.de>; Thu, 04 Jun 2026 22:06:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=1+R4ejx5;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16F826F8D2;
	Thu,  4 Jun 2026 20:06:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l-ddIQp23uhX; Thu,  4 Jun 2026 20:06:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3FC8B6F8CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780603564;
	bh=2Vipo0cvSJULuw+IIG1ODvEXu0b9O/mMv9UbsgmG0S8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1+R4ejx5YSi+jVyOCNjhRSaKIUvnwHRRRy1NNd1kZGgQNROU+KVROHFkqf3M5DqSo
	 CU8cjiYcfP+L6BKguh86N1HZxhRnUuhZJ1bK6kM/qHiRKx9j8BY8yaaDK6+Z3DN8Oh
	 Xygl7gAwed+PLz5Ch4+fi34iu3E/DKlVL6gTLqqkA1IngAo0EsBT9C1D36mQnmwcif
	 Bfr03WsEW+1raOQmGr1J+qPNmGtJ6FXVliEY/wG0OgHzX4ovV/Gktqw9m0eUe5Jw/N
	 AJ67FIfTGhDmWt5e6TQq4PoRuxkNWhkjER15f1afligEmHBFPIj7igdYn/SpY3n+s8
	 Lb1hMGVWerqNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3FC8B6F8CF;
	Thu,  4 Jun 2026 20:06:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 992E726A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2026 20:06:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7EC19428BF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2026 20:06:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id blsvaofj-VF4 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2026 20:06:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1B5D3426A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B5D3426A3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B5D3426A3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2026 20:06:00 +0000 (UTC)
X-CSE-ConnectionGUID: WVpAlB2lQJGwJsh+CIs3OQ==
X-CSE-MsgGUID: evVs4BLSQNeNvP2biPnhLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="85063210"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="85063210"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 13:06:01 -0700
X-CSE-ConnectionGUID: V+1L50/zRN2ijiSsGyZ8fw==
X-CSE-MsgGUID: ICu+kyHfThqIuVQEzP8gXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="249567469"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 13:05:59 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 13:05:58 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 4 Jun 2026 13:05:58 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.32) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 13:05:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gC7CEWiz5KjMQgR86kRMK/Ho4zFRdZ7UJE1Ba2LbTBqfIkLRz9Sc8ObkeAYy0aEO6XrfgiVU2dqEV28NguIJ3cuEcylTxRA1dh9GRsPQN+xTHazptqsJG4zZY1ljQD5LstB5WdJDstxKkyWLom4pN0/zQTpbAC0hAl67eDLL607uB72aZ57+DSNV2GCBbSB2uAAWG8+OfcrXo5enIsQqZRnSm85wO4NEWNknMZKfEzZi5XF1qUtXL0eoT9W/QX1vfApkvffMD6UccBviN/377uyCC35czXxpbQyKAElyC0rdmr1++PoI+CTABWNtc2hYO37lDltxgQzjYyllEJY9QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Vipo0cvSJULuw+IIG1ODvEXu0b9O/mMv9UbsgmG0S8=;
 b=v/8RZO6CjWlfAVuHtklInakZrODp6F0NkbCmll20mfavIcjLKf+5kwVYf18QVUZx6TEuyvIcwxUBeppkMkXUsxxOYjqBCHSh7G9efNwNzymp1R7ms4iSs3X33kW0EZ4XN7gm9eQ6ejc2nWlqwETQn2LwrGyLVg2KBQc009AfihvkXla59B01I+DNXhp0ucw5829w+0q+APe4Efz9G5eO/ztRdXpyjKOnA1kTaCYOXr+2/Q3k0f1L07PQGFUUjL99tNnQOlEPT2GTqcdhV+Zo7in0Zh99vrmyPaaeZrgsqmISOLnOtRr2vSGCI/XQ/dOi9KFBylTO7DiRsZrt5STxAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by SA1PR11MB6848.namprd11.prod.outlook.com (2603:10b6:806:29c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 20:05:55 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 20:05:54 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH v12 net-next 0/8] dpll/ice: Add generic DPLL type and
 full TX reference clock control for E825
Thread-Index: AQHc73fbuuwofGiUWEqM+0MeGgr+dbYtpIwAgAEzHgA=
Date: Thu, 4 Jun 2026 20:05:54 +0000
Message-ID: <IA1PR11MB62197FC8E64BE92FBC108E6992102@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260529142628.1678955-1-grzegorz.nitka@intel.com>
 <20260603183036.7c4762d2@kernel.org>
In-Reply-To: <20260603183036.7c4762d2@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|SA1PR11MB6848:EE_
x-ms-office365-filtering-correlation-id: 329ff594-ec8a-4703-6392-08dec274af73
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7416014|38070700021|18002099003|22082099003|56012099006|11063799006|4143699003|5023799004;
x-microsoft-antispam-message-info: LrtCNVMvoWuorRZumVADAlRk0w9XYqOcASV5xMOMBMK2m9uqkhsF/RSpJPhPZybMpphJ45lMzknfYz/of+pRn9Ktu/bDJ8ls3EOkEsHnG5KkF1fVbbYHjFMcZpG+SAv1C4+9bEeGPqJralq36KslSI+Cxon2stx49lfyYP2gPP0ROH3EKvtb9OqH018jKEwDm23vK1PireA4x8WpxFHhhx9+h5RbwiK1xaJORlDu+raoGNvJGeReA3+gDXBQmLrewyMxDydYw/IvMep96MtcO7M3V79EcjynL6DgVv5zFNcg83DEt4WZx1Pl2qHF1d0ATLtJTz/HHDp9YE6TUMGL/KZfAJVv+wtNJcGMXSvEr7o0/ZOn8kBRrRCRxKqgDDP8OIiEfzPZc/8ysoe2W0TZKwiW2HSjCmgNblbzaYJxCDKmOdW9ea1pmM3Ndb+luhwbhNDyI9+GX2Wkq8RGT7TByS1XCIC+QytD6oXQLfSuJHM+++yuvEqBdNW5og5WziOfUnXqjSMYxKMyv9viWH1CJMrzNqXW0zKpt6y3uRgwDlBRKOwl7/NTCtXiJrDIZMg/8cwIN2tW6R3wkG3Q2NvVaxaA5UL5CWT8CdQ1J7tFfoRjnEb1zctUSiNdDPS+cKz4zDu6QfcB5oWT9dSgFdlj+Ez/lSi/H1yBRCeTxpxqTT0gRh4u0VWyIKuDnW3hHIFB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014)(38070700021)(18002099003)(22082099003)(56012099006)(11063799006)(4143699003)(5023799004);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KcLwINz4KOnaP0Tvz6ArOzxbWKCGoNtdK7KyEYNEoUnd0svP33oE66fahYFg?=
 =?us-ascii?Q?m9Q+WhplCTgH1Rn+4coxbCChX5GM7Xc66XBrl012ixPkCuzkE5/IVlPlcn/l?=
 =?us-ascii?Q?+rmgwF7c7GdE6mqk4C4NX+bJgm+YU7meCV9TmFJCNzW/sWxzXdMx+R2a1L06?=
 =?us-ascii?Q?qzrZODq8VDRGjp+73JpfHbqrhJ8YDTEfKZSaQ6X7msKeC819bPLbLxB1bI8k?=
 =?us-ascii?Q?es3sZsYGp4xeLTw7jEoscocgmUmirE1xlDgMsLf/7fN0bDfWm8AHcYPkMPvV?=
 =?us-ascii?Q?dVskYoucyg8H8pVzs33XqAUELGBpsFGH3UVDGu4EmFvwPA9EqOk1w+rYGHeT?=
 =?us-ascii?Q?WdI1cUa6g7yEVZRpUaD949odLG0l70KWff0ubZd207eUHjFZnFwCQwMBPRcJ?=
 =?us-ascii?Q?J1A2xyR+iGMkLOKkbeSefJqyynVfLxskyhJrkE80t/aZFM9HOQ4EwlZEWI5n?=
 =?us-ascii?Q?YLdP44zIIbbO5znuqijRGS3U6W/UkYLuisCAxGmboZ+o1ujmSPy29a4NmU9P?=
 =?us-ascii?Q?OFpN6GDSIK5t68xsBHtTek/b75jtomEITUq+igSj0vjv0vmANnhgW5GICyyF?=
 =?us-ascii?Q?JK3YujdvatmmVCVMWE9mxlMsiBQxgSlITgInSKRhWRVMP5txgLKJx12xC3TT?=
 =?us-ascii?Q?/gnEJ0hZiPU772alv+djm0OSG2ma9nBhsh0cuPn9mzj00TxEvIHZ5eflhdS/?=
 =?us-ascii?Q?HAwuxAfcqObyGOHFZ7q0Wdytj9jfPvx1YqMQbPHmw1Fjn2oYVL6rnG7Mjjwq?=
 =?us-ascii?Q?hwg20dC+J86Nj72zmDranGeF3/2rQrtISmQ/I8eqY0kopXmXE/BYHIe3/Nqe?=
 =?us-ascii?Q?YTa097+qML/PzAcJsRTPYdKAwNAaV5vOWknFbCBkodUBGvA4rsx/JU47xCzZ?=
 =?us-ascii?Q?J947nwwKX180MiRZNNkVhzrhmTMqSVKaJinPGd9NbpeqPfRmrrexyLiuK6GH?=
 =?us-ascii?Q?+ZqkZKSwKdibpd6TRMXdMPrDtKKUi22638wL2VUk6cjT2M1jsqKc+tbY6pCn?=
 =?us-ascii?Q?6z+PteBFSCGikO3RyHloE6qzQqEy8DAHI1eEEtITKaUjaumMm7fWiTwR89DC?=
 =?us-ascii?Q?HmtkdY6gBuX5D3OsL4tvEC2MFGB/v5PbIPklwnXGKM74uKc63dXbEa9K/zmh?=
 =?us-ascii?Q?cDSjgyFbREWgCIQAmHtdOBYgCYR4uZJQogHl07O20Y2DcTHZFzj0AUvRWoyw?=
 =?us-ascii?Q?3V5HrRFYCFrh+e8WSSlo4yq+mw1x/9Ao+rdJIACs+nHIw4PMxmcZ6/fVkCds?=
 =?us-ascii?Q?qFEa7dOBX1T92W9Rd2AVYXkKVIuVHpB0S1nmdXnrrib9koPUH6N8L4jnkT/5?=
 =?us-ascii?Q?wrrWdAysD1oYhraslql5R2T7Qzvd6g1LBt/ZZVmRfe+A0q1N9PZRr9EOEMm3?=
 =?us-ascii?Q?5XDlDyhYw+gaBVjTr1irdPOvFIfSmEFkRR6/iymdbAAfQGEpck9PyS3CZmGi?=
 =?us-ascii?Q?LPbTCwBqRsgYaMJj5tTiUKhZzQaqQwMhcgVekJE1v8O98UIAKfAwigVQgMxx?=
 =?us-ascii?Q?Qwyy3vZEUAaADPHqa10J3l/reyD6xj+k//Dp4+q/kyGRyOSlAegMqC9eR58v?=
 =?us-ascii?Q?Hyfy5MnDD1IQrfkL/1Fwr+ejFcr9KFVNkd1spqVBVHOiUKXKsuSsRqt444iM?=
 =?us-ascii?Q?m47ZLu5scBomaI1SJZSw6VKWhM4QugBdEldYw6IZfyPNzYtvvksZeI+ZnBys?=
 =?us-ascii?Q?Cm68xE8AdYqfSWe74wuGzMJuIRaOrfF6Fi7cWut8j0kjl+ZyCzzKeORAE7Cs?=
 =?us-ascii?Q?or2PC506yQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Ayu/wYPlx6qUFMBvtj+X2MeeWZO3gQzqZLm53+475KbFDKqIhbsJWVtszY2P1B37XaZheXURKPgOfK7wQDkIHcBxEOxMlZJr7rYMzwP/a2iTzlIh6KfLcdNOZZTHzl7Cnf2so/EzB06vSjQ34DsQptBUrObqn7ddcmgEar2qhEIZtxpwzW/iRRDrBPEf7xaEm92p9xKKl7fOB4whhnQnM0tGfxjn9yhTAnm7VVDZPTVDP4Mr/dU9T+OItmXLCE+ssmTJqDqqq+f6sXNO3zSh5gdRpIV6FzZueIfsQTu3O/+cY8ihv28kKYZ86STryAHJI5ffJfTQ+brxM8zC9TU38w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 329ff594-ec8a-4703-6392-08dec274af73
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 20:05:54.8410 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: enESsyxxLXBwd03Lplzy/A26PO+/6vjgIKP6npTEC+OHwWwXtGg1Xg3Ixk/y56TpntrNM0w6lOCbf7kwqOtiArF+Ad21r2w1BmLICOGDFAY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6848
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780603562; x=1812139562;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R49bCwwbYTTjqJYcjjbakBcfc1x/ljrFthOz+fxNJTU=;
 b=HkqHmWotTRnon7iLrE2Sf95JyQukU0MniQZUg7/+8DHBPquAcJcdYMix
 +m+D1rbWQCCQ9uFDJF3d8UXaWHTGf76iC9C55VIHbQ7QpgCIeO3eqCpH7
 AOOGK2GKC/sOxlC+D7JL37X0wVmTswya2ZoyxWLXUSo30WNA8+1Im0nvP
 qCqE/VwtVVvH2J9vgRKdNbwfS4QaC4QDiaDoxy97kbR4iP42DkIFOWlOZ
 qBTZGxQPYUT6K4AOqej0nwBpkEE4PMt38KuzOiuNsMXQ9zX3Apcn/RPhN
 biIa38PhpxoYK6dPQdDLk2KxG0hZe+LkMYv9g9CUZS+et8R86okesE+xO
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HkqHmWot
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v12 net-next 0/8] dpll/ice: Add
 generic DPLL type and full TX reference clock control for E825
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,resnulli.us,google.com,vger.kernel.org,gmail.com,intel.com,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1E0D7643177


> -----Original Message-----
> From: Jakub Kicinski <kuba@kernel.org>
> Sent: Thursday, June 4, 2026 3:31 AM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; Oros, Petr <poros@redhat.com>;
> richardcochran@gmail.com; andrew+netdev@lunn.ch; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Prathosh.Satish@microchip.com; Vecera,
> Ivan <ivecera@redhat.com>; jiri@resnulli.us; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; vadim.fedorenko@linux.dev;
> donald.hunter@gmail.com; horms@kernel.org; pabeni@redhat.com;
> davem@davemloft.net; edumazet@google.com
> Subject: Re: [PATCH v12 net-next 0/8] dpll/ice: Add generic DPLL type and=
 full
> TX reference clock control for E825
>=20
> On Fri, 29 May 2026 16:26:20 +0200 Grzegorz Nitka wrote:
> > NOTE: This series is intentionally submitted on net-next (not
> > intel-wired-lan) as early feedback of DPLL subsystem changes is
> > welcomed. In the past possible approaches were discussed in [1].
>=20
> I dug into 3 of the issues reported by Claude here and I think all
> are really preexisting. But I don't see why we wouldn't fix those
> first, and have a clean AI scan. Please send the fixes ASAP if you
> have them, if they are trivial they may make it for tomorrow's PR.

Thanks for your feedback.
I'm not sure if I can identify exact 3 issues you mentioned above.
I see couple pre-existing issues reported in
https://sashiko.dev/#/patchset/20260529142628.1678955-1-grzegorz.nitka%40in=
tel.com
  - 3 issues reported in [PATCH v12 net-next 3/8] dpll: extend pin notifier=
 with notification source ID
  - 2 issues reported in [PATCH v12 net-next 5/8] ice: introduce TXC DPLL d=
evice and TX ref clock pin framework for E825
    The first one is false positive in my opinion.

Did you mean those from patch 3/8?
It should be rather simple ones. Shall I submit it as a part of this series=
?
Or a new patch/patchset? (against next or net?)

Regards

Grzegorz

> --
> pw-bot: cr
