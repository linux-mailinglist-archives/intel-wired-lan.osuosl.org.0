Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KOsRAAzzJmoKogIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 18:51:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B15658EEA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 18:51:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=gPHGE7tC;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF3BC608FE;
	Mon,  8 Jun 2026 16:51:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RA6KOzPK1Fdv; Mon,  8 Jun 2026 16:51:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 912526073F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780937479;
	bh=qqesxIgPg54e5cePV9v1QcUZX5loCkISWslgkez9Re4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gPHGE7tCEWsbLnDPD5H7qfjMZPgVQ8OhVo2fBPvi2WgXV5X5jMJ4uj7uSkbRfpXW6
	 OUM6vCCcPch9a/uKUd9eYQ2SD3kAsbfWqNyyqc4xyz71SkKA993J2pzVHVu9oAD+Zj
	 uMLtM0VI7RSXYOxVVD0EVDLR0QUsD/+KwzwvmDVHOgb+U3aZGhnaXotbaQqj8+5OOR
	 0IcT6WY+TqPtG8nrhqdo+LrMvSpfSuA+iXYY99mcp7NaBN8nh0N2TANyQw76k6G0Qu
	 6e+Qm7vNpBVimOwRQbxc81HArayhtbI2XR1uTSDKOWrAHBGxp3TIE9IYwlXU2ETvla
	 X3ficnKUAXm/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 912526073F;
	Mon,  8 Jun 2026 16:51:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AD120187
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 16:51:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9ECA740592
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 16:51:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dtyt921TFN4j for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2026 16:51:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D217B4058C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D217B4058C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D217B4058C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 16:51:16 +0000 (UTC)
X-CSE-ConnectionGUID: Zi86mG7FT3WSIdYd9xBfIA==
X-CSE-MsgGUID: 2FjGOid3TAaaBGCCdq1nRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="92004468"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="92004468"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 09:51:16 -0700
X-CSE-ConnectionGUID: 78xzUSrAS2a6evsYYDx24g==
X-CSE-MsgGUID: ef3wyBvHQxSW4UaqN1EA7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="241439632"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 09:51:15 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 09:51:14 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 09:51:14 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 09:51:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AH4Yu5WEY6qVULtR4GKcx/CCrwYB5diT6E5+TwagWNkJO6A7ge7Z1oeGtn/qkdIjMP6Czr0WNsqAydXstewlHOK0RF7Erz41WLMx760aT4Wa1M60RrjxrmyV/adu5pnrllwjxYqDEldEK16v62gB6aaoivVTF9aS9IgT6BC3DHM6k1ofp2TSTcxP7bQ4Pe8WSqALd5WBqNW5Xzn7zYjlQ1ctFRut0rOooS04AL8gAu/zmpz9dcc6tdFp+PyJjf+Rdkva/uCV6HsvdDKYVpzYu2MEm4RdE0Jhqyq/IOA/jJsXGxh29Tt7e6CB+BwINKxp1Um6gFyIVY18E9sbqzbLSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qqesxIgPg54e5cePV9v1QcUZX5loCkISWslgkez9Re4=;
 b=yNJq1/bVw7b1my84DgU15pnHwpocSWqGbVA83gkLj4UkgjCKRALD+1Fw4bTryKwaxq7mqmrCggnMFTxJ0/k6zAk7IMHIinyb0Slu0b7jgjtpFG6OF/6zyGAdDCDU2hIV2yJnr35emoQpfZikwZkSgREs2jqU6XVmxftCkCavyKcng1zCVu6eFbBE8uOpG1B2hbxVG9UTXAfWvfmSMRQwOwp4VIwSxYyjuzzOt31ynwekBb+2lz7fIUOLkzCBFm2pH92kpqHUZw4MR8w3aMkP43heccRJOpThFGwfTZUNUfXbV+WBDcfc3QKijGqRj8d1/GFOJO9tE2kTI5JHyjrT+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5394.namprd11.prod.outlook.com (2603:10b6:610:b9::14)
 by SA2PR11MB5116.namprd11.prod.outlook.com (2603:10b6:806:fa::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Mon, 8 Jun 2026
 16:51:10 +0000
Received: from CH0PR11MB5394.namprd11.prod.outlook.com
 ([fe80::fd22:b4:e353:a968]) by CH0PR11MB5394.namprd11.prod.outlook.com
 ([fe80::fd22:b4:e353:a968%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 16:51:09 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH v14 net-next 03/13] dpll: fix stale iteration in
 dpll_pin_on_pin_unregister()
Thread-Index: AQHc9qxzJyiUW74ByEWsi5MYsLHjP7Y03+yg
Date: Mon, 8 Jun 2026 16:51:09 +0000
Message-ID: <CH0PR11MB5394EFF74E33AAD8C9B014389B1C2@CH0PR11MB5394.namprd11.prod.outlook.com>
References: <20260607183045.1213735-1-grzegorz.nitka@intel.com>
 <20260607183045.1213735-4-grzegorz.nitka@intel.com>
In-Reply-To: <20260607183045.1213735-4-grzegorz.nitka@intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5394:EE_|SA2PR11MB5116:EE_
x-ms-office365-filtering-correlation-id: e3a5871d-876b-42cd-8e53-08dec57e2451
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700021|6133799003|22082099003|18002099003|56012099006|11063799006|4143699003;
x-microsoft-antispam-message-info: C79syeRiuldjzbQKli2+JDJBPMHkL3F9mEYW6AOVXzuXeIc66JMcK68nDqVwiJrjXD/SVd6mOnwaVsqwOsLk94jWGZdshgQkRwwnRJP8sNeTqXhEcpouAVT5Bp/VVsZyicOHyumrAe80TJ58E4iRMxGwML7Ofv3xuE3LrABJMPfs92QfELPTxF4tq8mgVAYyB870WJ7CorviytQgaF3/wLekm6nR+oe7SlOVF9SifpLV6wmOowp7hU/PDqWcX++lfkT0nG+bobYVW9lxce6X3VZ+YSR3W6yKaCRBLwajuqsgfJc4rw+hcsvvGnWv5OlkInnIkekVUXH9qgudb3g15u4mcSI6MYlC3MUp193RyZ9x46yBPkMrPyH0eBpWO3k+9k09cDZD5ZSEA0jEWlzIjkotGXArQIht03yM9JYpGkMbDDLKvy44lTCAGfZF+oLzfyTdor3MoS5Mzk+987nnQbA5/91iiuGY25SCXYYt0BltwQQ2vtjlwJZesfw4jAotmS0osnBW6hsSXUFJGC+XFIc8XA4AK5IzhNVJRnwxjIxqCAV7FYmZxniHQdQ/R1OLYBf1vr+AKLREU6esKlu882acLDlyrErmzOy4Gk+09bwwbLLqz9/ky3BFV/eWKuSgJu3+UhDdqvNcXYfMGYm93I5yopEQRKIOstwVUbHsAydFv6hSvBqMisvnYEEixYk77qcP4DUxl02N2o5rEvo8qPjJAlStCem8Re4NH9NAi7FLkhnkwF+Pe1qhFyp6uGLT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5394.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700021)(6133799003)(22082099003)(18002099003)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Macda3NBOv+eMq7bc8+4UklpgwzFMbNzut9s2mocc0h5qelJIp4Qjl6bOTgU?=
 =?us-ascii?Q?msIwT6xl/X2B5+EhlAExEpN6s3Q5MawnbU2+2uuFwvY7tl1T+ycbh2+/YMwj?=
 =?us-ascii?Q?U2zVcKOg0WSavCPeJh/vkfUKuZBxMDQq+AFysB1EPOSVWuWuXIFomGyfCdmq?=
 =?us-ascii?Q?GWldVdc+vmo5/G9fmt0WgL12gCIeZs+bNgsRaxAdiKInKCncLW+tSjqQaVDU?=
 =?us-ascii?Q?0Kl1Pyj9/uKk7R9WqwVfHimt4Z1f9Fftwvlu/88MRJ0kMZN7Yrc6AIPxGPO9?=
 =?us-ascii?Q?Ok7sbs0NiSF55naQ2R79P/jOS3wzNWbYkEHr9OzMo/1SPh1NrdVmjXLMAO6W?=
 =?us-ascii?Q?i43mzWKI4txUr6VM/pXksONI4CSsb9g/FOf58lAOMPpKXyxbq/cgDtJmnbse?=
 =?us-ascii?Q?sar9uF5ryQjFbae7Dx7sOY8STAU17yiam5kXh7/Tu40Ftne+vCrune/nKvFN?=
 =?us-ascii?Q?yKpWx45NGBjRXAXcisN0ewO07L+7YApdpvlQkhIPaMy71zrpphQB9R7fLxKE?=
 =?us-ascii?Q?zas/Pfs3fV5zX0mesMIVyRDLe+YIDtDXPPUQ7VQoro/bySwK47j9EVpkagsb?=
 =?us-ascii?Q?zs8qioJ3D1N2ki+a/otbQvu7S4T4ZkAmfdQW/MveMS/UFEpPsdvrhsXruJ8k?=
 =?us-ascii?Q?FDkNPe968Mb0v0HvEzhpPO6dVIUlh6vOF4swk1RGzG++57UzaQ44Js0r+nFR?=
 =?us-ascii?Q?eFyASAxbCji9mBJJrWh+5pRFlm73PqfzoQO879abGoZgKr0uY22UtBuWlDqo?=
 =?us-ascii?Q?Yui2uIblY5ll5bCjudxWQfbuzi0nnL/HrB4CVGfsMEr6Theg3NeWYDEzqYif?=
 =?us-ascii?Q?jnjNhocEyWXIkUXjpryoWJPJJWZyj3LffUKd1wOW0+H5zhcgHfmj9TiNPpNw?=
 =?us-ascii?Q?YEKhdEU0Mq13J+YndTrP9ew3K01S5j8LF+1Fx9wfTgfpxl1/1ZjZ9GmHe+8G?=
 =?us-ascii?Q?Lj3xZ/Xeaui+QpUTTspoHPZAqh/0SvTCOgpwUdl8YzkF1eCI5i8IWARjfWqF?=
 =?us-ascii?Q?cDPLY55yQtY7MZjZ2pQm78zNxLFZfYpNsv4S09QPE3uGmU+4hYuazLInow5v?=
 =?us-ascii?Q?gTwPJHauF8YmULpLgbPyWN31RKlqTJM5xWZaqXWIB0n76EjoxmwiD9qf6/4o?=
 =?us-ascii?Q?oVROxco66vBGD28EnvAFe94c3KyT/zHFP2SCyI252iM4BvTDrEdt3ifXKHUA?=
 =?us-ascii?Q?gmRDb3ptfrjX8UmgR+miPSZuxvB+/xRM7Pefxg/5Svd4KFw3gTsCK9EiJL9J?=
 =?us-ascii?Q?P8cfAgvkfl82fSZFyblvwt8lgHVWkRV8ZlmsjQL+AUZos2gFZZfAvMC2LVdn?=
 =?us-ascii?Q?E1HmllnrgrdIbH+eAGZsaJevYptTqpKVEB0bfEU3fA4fB3WMSweb2lmFzo6x?=
 =?us-ascii?Q?I2e0YuJm0P/hT1tQh8eehfYEOAJ8+5s/sUGz0UlUv6bxbVQrKs6GR62A7AVJ?=
 =?us-ascii?Q?GjLBGgrUoWIOolRlFMaHm6Vdf8uYhfIpokLwNyvbNmYNIKl8vLWuGGNub9c8?=
 =?us-ascii?Q?/cVY50Q1RxeUKek6bSZ2DcZdIMzuYtUfB+t0YdrZHV7LckC6WEhXEIaPdCOy?=
 =?us-ascii?Q?FeBobjPgHfK1gblAgZK7S5UGZKuprG8A9QzODVpw9AVqJ26f8nUcG1gaL2LV?=
 =?us-ascii?Q?aCMHpzxVKekW45Yu7gRUuZ6x/uWI54tCyaQibxclmYylVjPyiNiG7BZcmbio?=
 =?us-ascii?Q?jQ7VTyTJFo3Lm+3NBgmxcY5PLopfJE3HpTft8L9xuh8hIQKLhyuZt5+h6MmU?=
 =?us-ascii?Q?uM+/RabmggIq9GGBC7yJc7y/Yyn1ng4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: syCm50eFRheXJ84k7gKfNObXXmP0/54gLyvWchJgON2ADiIKRTcQXIcT/g0WyjLi1SiVP+edHr6JPzxP0ZHL0M6w6+LuClxug3gmtx34vTG8Dqz6n54dCL8Zp4hrFrdxWC0v+2UfkCgoLBKLlEqPXgye1fgan6YMYqlvbHw8WqtVj1DSAjQDGi8Ai0CMSBzMwJl8YL9xvzVETuWoVuU9GHWHV51hzEAB5oJq9hWGhGGcjFyVJHGRou5/GPH7iak4yiRGAAVSRwKWk56F5FaIReLc4bRXWSGiy8so9xE9ZoL6VoU5s1P6KcSziJYGT2d3IYdt1Ff8SQ/PTiz5ibtN0g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5394.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3a5871d-876b-42cd-8e53-08dec57e2451
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 16:51:09.8653 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kb3vHVcgm6c4ngnxgoE7cvPyGShXdJ9pCBwML5CmetJO+5WUQ85OFyFnSkmbe/+8yIAWkF9AxXQ0xvaRC7LXzPjClx03d0s7hsLe4HKJ3A8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5116
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780937477; x=1812473477;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bTz0Xv6Cq9PSSpNL5px4Y54ExvlF/DJAty0sZdwj8eo=;
 b=e6LP3UyELQet3Gj4QeiFYnaonLDa8r5vMqrVUXQB4qYL7xgUQscAm75t
 r4kjsZG4tGxu/ThbCWzPEbFQLQ/Ukg7T2K3W0BhXa1dxCtsY1C6aMKS84
 DksTVfv195yYxudz4d2X5Kqt4euff9gAYHw0rDc//ctITUUIIxlVry8Do
 jf2LnU0aqVmDAciydqvgoFdmteosKXueUVM1nSYiM/vY8K11pLDozAx4G
 Pcnx0pIaFnomBjcyDal1m8b7wzS7+9TFMjqT1MXJYnT8Pztquz0wB2y/1
 GHlNEPe3zYIEF55WuvAdXfrv6qPpJG8nmD9xShVuNm/ogS8pvZjN9esYD
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e6LP3UyE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v14 net-next 03/13] dpll: fix stale
 iteration in dpll_pin_on_pin_unregister()
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
 "kuba@kernel.org" <kuba@kernel.org>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "edumazet@google.com" <edumazet@google.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[CH0PR11MB5394.namprd11.prod.outlook.com:mid,intel.com:from_mime,intel.com:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 47B15658EEA

>From: Nitka, Grzegorz <grzegorz.nitka@intel.com>
>Sent: Sunday, June 7, 2026 8:31 PM
>
>Neither parent->dpll_refs nor pin->dpll_refs on its own is a correct
>iteration target at unregister time:
>
>  - pin->dpll_refs includes DPLLs the child was registered against
>    via a different parent or directly; blind unregister WARNs on
>    the cookie miss in dpll_xa_ref_pin_del().
>  - parent->dpll_refs reflects the parent's current attachments, not
>    those at child-register time. Another driver may have (un)reg'd
>    the parent against additional DPLLs in the meantime, so we miss
>    registrations that exist and visit DPLLs that have none.
>
>Walk pin->dpll_refs and use dpll_pin_registration_find() to filter
>to entries whose cookie is this parent. Symmetric with
>dpll_pin_on_pin_register(), correct under any subsequent change to
>parent->dpll_refs.
>
>Fixes: 9431063ad323 ("dpll: core: Add DPLL framework base functions")
>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>---
> drivers/dpll/dpll_core.c | 7 ++++++-
> 1 file changed, 6 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
>index 6dc7e93ece75..cea7e2be2cbc 100644
>--- a/drivers/dpll/dpll_core.c
>+++ b/drivers/dpll/dpll_core.c
>@@ -1031,14 +1031,19 @@ EXPORT_SYMBOL_GPL(dpll_pin_on_pin_register);
> void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin
>*pin,
> 				const struct dpll_pin_ops *ops, void *priv)
> {
>+	struct dpll_pin_registration *reg;
> 	struct dpll_pin_ref *ref;
> 	unsigned long i;
>
> 	mutex_lock(&dpll_lock);
> 	dpll_pin_delete_ntf(pin);

Hey Grzegorz,

This line is redundant after 7/13?

> 	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
>-	xa_for_each(&pin->dpll_refs, i, ref)
>+	xa_for_each(&pin->dpll_refs, i, ref) {
>+		reg =3D dpll_pin_registration_find(ref, ops, priv, parent);
>+		if (!reg)
>+			continue;
> 		__dpll_pin_unregister(ref->dpll, pin, ops, priv, parent);
>+	}
> 	mutex_unlock(&dpll_lock);
> }
> EXPORT_SYMBOL_GPL(dpll_pin_on_pin_unregister);
>--
>2.39.3

