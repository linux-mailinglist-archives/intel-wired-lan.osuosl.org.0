Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDNEAsg/82kGywEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 13:40:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4522A4A2465
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 13:40:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86065429A5;
	Thu, 30 Apr 2026 11:40:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nEeDWnSE_m_v; Thu, 30 Apr 2026 11:40:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD04342871
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777549251;
	bh=UAVl18ybeh/jDhWFAU6xXpTGzQF5YXf+tvJr3PUvZbQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bXj7pU0Kv354bYnA5TDEht+XeiIUvonyCsFnSKmtYjFYfpScYOIXTXrfiFO73u8r1
	 0CgPhoDtIOqpC8LXYpxqvwyk6R+craCDINB0/r/nfMEAJtwHVuvOj8uyKu66azHP0c
	 tqqj9EqwRa5YhqbC7r3CtpWg5xGkFkfDMPSg/oEJxmNtuGiDd1nq4uX+TSnTABIn2f
	 kBqrMeSCfC9e7dhxx7x37l74YM/Y2Oj0BOIiu+wgEhINDAmCEhGojovyLe5hahgvFi
	 r7asAKcvFZl8wR9Hj1/Xu5Q1US9GS5I7+EMwb+JCZMQwsEupBv+SrSb8lKhRQzh0H2
	 cpg3tKvAdfq1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD04342871;
	Thu, 30 Apr 2026 11:40:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A43E18F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:40:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F3CF961BEB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:40:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mq7km30vS9tk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 11:40:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E468661B68
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E468661B68
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E468661B68
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:40:48 +0000 (UTC)
X-CSE-ConnectionGUID: ed7O2PhRSgmfnx+B0ZLRCQ==
X-CSE-MsgGUID: /shlp6X7TIWHhX6/QLpZAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78418569"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="78418569"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:40:49 -0700
X-CSE-ConnectionGUID: Ie7a5BojR8WKASBG+0Y24Q==
X-CSE-MsgGUID: sfXL1CXRRT6SNbYtuwLsvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="236341040"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:40:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:40:47 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 04:40:47 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.68)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:40:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b2g7zHkFVvwsFpUdXUieYBRnWMrx/xhG6ibtMEh/Am/7y19L2+Pb+Zmnk4Niu+yntpReNRNLOrv2Rvt8JV0+HdcB15e+veXd8eEVeKWDuzQc8gC+h5BTejEG1CWRwDLOr4WbQjBs5+tnZoYh0D2i1RHLg72cw76FLpUORPzsoKpao38RRsyUdm5wuirmLvyb8+9+N1u8Jg3HwCzEqkn7J06qzWK57jMCutGcneFCBuWbhlkzvDDusy0bl1Yzw5oY6iHgFOtwlBL5KTtaQ/2/IC/wTTpXVimLczf3lQ1MA+7lY53WMrd/DWiwAog1hVtOYjZh5Ze7aRXpZJ4GHJ0Svg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UAVl18ybeh/jDhWFAU6xXpTGzQF5YXf+tvJr3PUvZbQ=;
 b=aHMJwtaEHQIohFzWH2kkCsZ4P6nP/ElSxiMLsEGWIt47PJ5nq1RtiC6U+RJPQ6bj4OiNIkLTVsdgi+9Rv8wsIGYkQcsM9bUX2xx1sRpRNe65Jz/dwK2SsgwUww18qmA2hlK+s4vy5JvfZ2GVUuMrXZmjqD9O1mXvGTDjX4e1f8biI7yGHZI8Pld5Rs+QElIMy5Xm6o3lfa1cKi8/snXG5kbd/5rQKDlKnMVXVIt0+uo3zbTssPqlJ70+ccnjojM6Rpd5RLNvlRVen5XKdt6Ec/iwNFxczK2reDbBXlpweY1IJ63Ezo0ebG+EPif7U/D7RJM86XSV3YAvrUbgkVB27g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB8009.namprd11.prod.outlook.com (2603:10b6:510:248::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Thu, 30 Apr
 2026 11:40:42 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.020; Thu, 30 Apr 2026
 11:40:42 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v6 net-next 6/8] ice: implement CPI
 support for E825C
Thread-Index: AQHcyHxwq7Il9nBW40ae/ddcz8zm0LX3mstg
Date: Thu, 30 Apr 2026 11:40:42 +0000
Message-ID: <IA3PR11MB8986366656E30B7B46FE51ACE5352@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260409235122.436749-1-grzegorz.nitka@intel.com>
 <20260409235122.436749-7-grzegorz.nitka@intel.com>
In-Reply-To: <20260409235122.436749-7-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB8009:EE_
x-ms-office365-filtering-correlation-id: 1e93e187-09fd-4b31-4fad-08dea6ad4f50
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: 5uh6QHlx6SdqjlARmXiOILzJPjSzQookG/RKyU8vr8R2IILjtzAkrJTmihRLI2yXBfL6cnuYvHPykgyqhReAPih6IO8syb/bzg83CLpdT75EqfZjYSlrd+83K7LAEkWFCI97ne7cb9GAlnHRuMmdXLEkL04jKs9Y2do0wXk822lrrQ75kfDvu4VjSkv0KsbWt7e7bV8zRIbOof+MYWW0OS3b1Ai8Y1jvlLDIO1oBiaB3KOrPaXo81JGVHCA2K3u9K3fgirgSwf+EHcW7C91As3x2Vw1C2UEKExC7dC/MYEJ70wc6jPb/U3vQNzOR6myqMkNU5u+wlIBfVXo8QRafeNpmSM2SPyYOjkbaXpk3hjlTPXEC3kjPqDIgc3BRzMsGdHKWkbUTkBE9q9yr+SV342ZefOE7NyPMbQk5EDIEDuJRYAAqXVLkOImbnHD4AIqyRu/UjncpzutczoTY1Dffn9UaqOJEAtTxt5omTlnxV1DC4Jjb1jBIGVbFgi2PDjcmsvQmRVManHkpLHCDEw99psAoT6YMO3WBmJaVcWD7SHKJkskeWUDVpduDHgkBInIpyDaRSx1Y9Ymx53JUcQij8GLkFnu8HvcTFBWBCoU8hMs/xc1kcM6WFZIwgUFl0de3YfeIpsb8pWuizUQSkDTRqte3xlb9kFMkrVNTPA9f7wr8r+jcaNI4GCUcbX/DVNSCXt9IDIMj61fqGyU8tocP42vdAdxUWMKheGTsxqZ8Tx9I2jZSu5p3xjeXMuXZ5CdqHM2FXrRMz+sPhPYjNlJSDUqEpcSacPYB7Hr5Gi+AIxM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PZ5kIMxgGiAOxFDOSWQjuq+yGN22UhvDWBpYvr2G3HnJacfE5uXko2UNLjbC?=
 =?us-ascii?Q?2F1yOI0tPIyLoDPKWlXXUPhJFvHbH/RM2A+qFaMAJR+3lc7TvfvWGiP3NCmY?=
 =?us-ascii?Q?3l80PR9arNL/uXmZAg++e2EqvN8nuTyewIILmevsHQaA2XeUU9Lp3qE80m4R?=
 =?us-ascii?Q?Qq1yUiGf8pFczAWhTRHxGidCf0/1YojiVDdns/MROJZMPqBNXdzYKrMVykyY?=
 =?us-ascii?Q?1R6f5QLpy4FRIHBoyRc2qjaNzZOnj883rdaBo3l4FOnwu4Lgm+8NaZYmpPEp?=
 =?us-ascii?Q?+RdUplBPeYrmPe943I0t/f9/Wnhx8Pynk1oMCYSrp0fiL6JEU4FTGFTEX2MD?=
 =?us-ascii?Q?JJyJ/Ljy0jeAwAElFqr8hH7Ew7C66AHT3b6UZzKxbhKL541ua2C3Xf1ggfvO?=
 =?us-ascii?Q?G63f46k9aMOghJ9sHcYoL9CD20cZLtFzlzVhmFMeZta9l0bRjOI4nhXmSiMH?=
 =?us-ascii?Q?zowiNDpjpv0lK0RIaTGGGF4WMUKDliqxYvyNIkFVptSe5gHtl0fgsw4mTd85?=
 =?us-ascii?Q?y/EGnL6CGlZTbrEWegwvoRh/EZX9TY1ChjpJxTmc7wZYfCqCl8KpA9HsnQAj?=
 =?us-ascii?Q?0DNkAr/K6GO6KF6huL7b/0RfzqcF38yn/KBPK/0rqB7QANKZyay8ayyE9jQK?=
 =?us-ascii?Q?fiwMHzvY/pXz7tk0pvbS0RZpgU36Kew/ZJNwg+QwWiaLupgkdWFlYhdGVkvl?=
 =?us-ascii?Q?mHJ/BeIqb1ZGwC/yd+UePkO+ZdwSJH2nf60AKVLG8WoNJalcrqiIfBjLFiUQ?=
 =?us-ascii?Q?dbkPF6pXE23Ssjjw0VmEE7AGb+sBajiMmQoZO9rbtFQ2QVmx1S7aLuwnm5KD?=
 =?us-ascii?Q?KwusaX2b5X9UooU/7IqVIR6YF09aWxo45+2C1qD+ycOcD6wvVtYQ5i4+igAN?=
 =?us-ascii?Q?rKICJqhjZrKAZQE9kPlFxdDsaQcEEVl69kOwXeWJFJIXo12ZueRdFkZSfcXb?=
 =?us-ascii?Q?xgm6MLiS1QP+kLybAwImrO5KZgTMubqO6KyrLREKOtZWqR8543BcuEqEzJVM?=
 =?us-ascii?Q?IMIl0l4uEr/mkegora8lE88i2FS2VBEcchxWbTXq0LNmGzNE/Hz73sE3AIa8?=
 =?us-ascii?Q?qQqFNEPhGYQExGgE79O6PAFh1cVLHtJYM6cKmSLRCIuqn8kaX/ybGdBkGrS+?=
 =?us-ascii?Q?s6+qyoWEmbRPOnGbg7aaxheCwHkBo5qHCzez13AStoyMHuXErUWFIlgd9Exp?=
 =?us-ascii?Q?CNZFxa68KDnowF69pujrFQoQkR1KRb1NnBzdux0nB0v+gnlzfcCO+tQ5kziC?=
 =?us-ascii?Q?tOxIli5LrYgXWKf2GMBtZFCjz+Kji52CIJ6OTjANABySf9Kz+zg8txF+Y/aV?=
 =?us-ascii?Q?tQLwDwwZBdoHE/HUiqNyF77pnVrMj0yYEK7zCISQdREEV0Ws2KYu+goPlAA3?=
 =?us-ascii?Q?Ac2Qg5iQfTVLesGuz6mmtPPrEFRfh2Ebv1A8ACXurw9CONi0BScV8vFcyJrZ?=
 =?us-ascii?Q?4YXS4RzG54ZBqKjYPBR6bAzMn57HJTiyhRG+l8NxIPH5nO6zXOVNbloeMA6l?=
 =?us-ascii?Q?RkEz4dz1V+DJ91HPwZ6qT0zc2N7rWwiIii3jLC8aq8+CRmPkCyOI6qy/AU72?=
 =?us-ascii?Q?3jeM9cIuNVoB1RoyPvbMhVsZEb3EUsAsq9uQ0uH6Ctjwjz672HiV91BmQ/lY?=
 =?us-ascii?Q?AhnUmCd5wKmkl6b9VY4i3UMxYQP8C+KYSfOni7s6RQPbCk45XemDPVksgDQd?=
 =?us-ascii?Q?L3ni8EaVsFARHeCCHexZKkDCZGvjtfaBDYoS451eOiMiEUruYS1nDPcX331B?=
 =?us-ascii?Q?0GAPGCvDJKHeKxA4zVheBCn7HX/sX/Q=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: R/xrIWc4wNfaRRu5/EIfiVT2nvZdHv8NxWHAQBu6cAPdvKLTw5FE7dpn6qs1Kl5AvUQ7EDQAkCUFnYYjivLP4XjfksYgaUqIathkHPPXfk5n1czdYm+opHIPV6pFSVEH/rbo+Nk5qj3lNyAA7ZbHSamgqwZO+bXKQzZWsqf8ZffpGInsWukMG1AEiqZTN3zewtxI6vYcisDizQ9rfDKNsYrSWZRfq03cy3q8op++KnuGZKf7p8QBkvl91xPX4SwAcMndj0GwAf5c64NjwXEjDtlNM2C71c3JvFcZr+yxqGp+YnDUGbZfJ4g9UD7A8NxezU05JRlAjRh1A7Str1bvHg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e93e187-09fd-4b31-4fad-08dea6ad4f50
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2026 11:40:42.3158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xaSMO12JU+oA64k0ou3y1C5LUCqQRezwCfoGLqFIGcHZGRld1Uy6qjLfVgtNN0ROuAFjoF06vPzgOyR/KFGHs2wPRHYx++/fA3N3YzG48+E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8009
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777549250; x=1809085250;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZGIGhMTmM3GBfwK7O+gT99wbFoBKAHRNadqUBSk7DbQ=;
 b=kn9lHMFNjTGSxlKUeCVQ3+JcnOCPWwad/4sP2vEkJ+X/u3iwkFndgXJN
 rK90G/JffBOiJ0O9q2GkRvNauVqBIBks8eSXyD172bB59az04pOiRLvhq
 ZiezEflaVhMgdO10Z82Su6M4xhcPhTbUDUHGxAsZXQFh1LiLV02AiZAwv
 ZyTPGCP0GVq8KMz5YynkHmB9icyCEaASprbSGT1ae1HSkld3dvmo1gZ2E
 pyrUEeX5YpgUZ8F6H0vrQSGikxr5RPTXy2IHitSteYDtrn2Y23612SsIT
 6Wp6sJ+ougZlFBv7mv/9iP81I59zIoSMjFIUZxMqMHrAiAHTKBCZoKIQe
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kn9lHMFN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v6 net-next 6/8] ice: implement CPI
 support for E825C
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
X-Rspamd-Queue-Id: 4522A4A2465
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Friday, April 10, 2026 1:51 AM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH v6 net-next 6/8] ice: implement CPI
> support for E825C
>=20
> Add full CPI (Converged PHY Interface) command handling required for
> E825C devices. The CPI interface allows the driver to interact with
> PHY-side control logic through the LM/PHY command registers, including
> enabling/disabling/selection of PHY reference clock.
>=20
> This patch introduces:
>  - a new CPI subsystem (ice_cpi.c / ice_cpi.h) implementing the CPI
>    request/acknowledge state machine, including REQ/ACK protocol,
>    command execution, and response handling
>  - helper functions for reading/writing PHY registers over Sideband
>    Queue
>  - CPI command execution API (ice_cpi_exec) and a helper for enabling
> or
>    disabling Tx reference clocks (CPI 0xF1 opcode 'Config PHY
> clocking')
>  - assurance of CPI transaction serialization into the CPI core.
>    CPI REQ/ACK is a multi-step handshake    and must be executed
>    atomically per PHY. Centralize the lock in ice_cpi_exec() and
>    use adapter-scoped per-PHY mutexes, which match the hardware
> sharing
>    model across PFs.
>  - addition of the non-posted write opcode (wr_np) to SBQ
>  - Makefile integration to build CPI support together with the PTP
> stack
>=20
> This provides the infrastructure necessary to support PHY-side
> configuration flows on E825C and is required for advanced link control
> and Tx reference clock management.
>=20
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile      |   2 +-
>  drivers/net/ethernet/intel/ice/ice_adapter.c |   4 +
>  drivers/net/ethernet/intel/ice/ice_adapter.h |   7 +
>  drivers/net/ethernet/intel/ice/ice_cpi.c     | 364
> +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_cpi.h     |  61 ++++
>  drivers/net/ethernet/intel/ice/ice_sbq_cmd.h |   5 +-
>  drivers/net/ethernet/intel/ice/ice_type.h    |   2 +
>  7 files changed, 442 insertions(+), 3 deletions(-)  create mode
> 100644 drivers/net/ethernet/intel/ice/ice_cpi.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_cpi.h
>=20
> diff --git a/drivers/net/ethernet/intel/ice/Makefile
> b/drivers/net/ethernet/intel/ice/Makefile
> index 5b2c666496e7..38db476ab2ec 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -54,7 +54,7 @@ ice-$(CONFIG_PCI_IOV) +=3D	\
>  	ice_vf_mbx.o		\
>  	ice_vf_vsi_vlan_ops.o	\
>  	ice_vf_lib.o

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_cpi.h
> b/drivers/net/ethernet/intel/ice/ice_cpi.h
> new file mode 100644
> index 000000000000..932fe0c0824a
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_cpi.h
> @@ -0,0 +1,61 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* Copyright (C) 2018-2025 Intel Corporation */
Shouldn't the 2025 year be updated to 2026?=20

> +
> +#ifndef _ICE_CPI_H_
> +#define _ICE_CPI_H_
> +
> +#define CPI0_PHY1_CMD_DATA	0x7FD028
> +#define CPI0_LM1_CMD_DATA	0x7FD024
> +#define CPI_RETRIES_COUNT	10
> +#define CPI_RETRIES_CADENCE_MS	100
> +
> +/* CPI PHY CMD DATA register (CPI0_PHY1_CMD_DATA) */
> +#define CPI_PHY_CMD_DATA_M	GENMASK(15, 0)
> +#define CPI_PHY_CMD_OPCODE_M	GENMASK(23, 16)
> +#define CPI_PHY_CMD_PORTLANE_M	GENMASK(26, 24)
> +#define CPI_PHY_CMD_RSVD_M	GENMASK(29, 27)
> +#define CPI_PHY_CMD_ERROR_M	BIT(30)
> +#define CPI_PHY_CMD_ACK_M	BIT(31)
> +
> +/* CPI LM CMD DATA register (CPI0_LM1_CMD_DATA) */
> +#define CPI_LM_CMD_DATA_M	GENMASK(15, 0)
> +#define CPI_LM_CMD_OPCODE_M	GENMASK(23, 16)
> +#define CPI_LM_CMD_PORTLANE_M	GENMASK(26, 24)
> +#define CPI_LM_CMD_RSVD_M	GENMASK(28, 27)
> +#define CPI_LM_CMD_GET_SET_M	BIT(29)
> +#define CPI_LM_CMD_RESET_M	BIT(30)
> +#define CPI_LM_CMD_REQ_M        BIT(31)
> +
> +#define CPI_OPCODE_PHY_CLK			0xF1
> +#define CPI_OPCODE_PHY_CLK_PHY_SEL_M		GENMASK(9, 6)
> +#define CPI_OPCODE_PHY_CLK_REF_CTRL_M		GENMASK(5, 4)
> +#define CPI_OPCODE_PHY_CLK_PORT_SEL		0
> +#define CPI_OPCODE_PHY_CLK_DISABLE		1
> +#define CPI_OPCODE_PHY_CLK_ENABLE		2
> +#define CPI_OPCODE_PHY_CLK_REF_SEL_M		GENMASK(3, 0)
> +
> +#define CPI_OPCODE_PHY_PCS_RESET		0xF0
> +#define CPI_OPCODE_PHY_PCS_ONPI_RESET_VAL	0x3F
> +
> +#define CPI_LM_CMD_REQ		1
> +#define CPI_LM_CMD_SET		1
CPI_LM_CMD_SET is defined but not used in the patches

> +

...

>  /* Port hardware description */
>  struct ice_hw {
>  	u8 __iomem *hw_addr;
> --
> 2.39.3

