Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XlrjBETKK2pEFAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jun 2026 10:58:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FFC67800A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jun 2026 10:58:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=ah9Lv631;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A8C68329E;
	Fri, 12 Jun 2026 08:58:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0qK7dUxxkOhp; Fri, 12 Jun 2026 08:58:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D9405832A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781254718;
	bh=QJSf4heUr8vdSLX1WRr+Q2EadmJ9JSjNVq90jRGF/oM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ah9Lv631SXHyMpQTTHxvAJ61flG51DYQWYx4GfJ4aR+Yis2qoqZvpO2eAHh0tQphe
	 P6HdOrZd5x40xDegQA3FIRgDnSidp1yH/Z4dh9IQeK8AOt0tNTjMv1oE7Ipoto9EC9
	 q7wj9pfRYkNZVmfYloar3en/TwGZrMRlcmh7tEy1wj8kwea+I7wlv3QjOsmD3KXB3g
	 KyXb6ZW7zhuQWu+ZD+f7nmFCjhuM2DuS0s/87h/wT0twIJS9cpiN7Yu3uIecjyVDZq
	 +sIG297cEWuFqkgpExAR0m8cFwOVrI/GZDn3IldHm4Vx/9SycQhlOQ7LMlHaZLNkqT
	 pDapujjI0vxxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D9405832A9;
	Fri, 12 Jun 2026 08:58:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 845EE237
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 08:58:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6A3B082FCB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 08:58:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0H51T29iqlID for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jun 2026 08:58:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A4E9382FC9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4E9382FC9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A4E9382FC9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jun 2026 08:58:35 +0000 (UTC)
X-CSE-ConnectionGUID: A0QeJ1B0Q1u72cEiH0V9nQ==
X-CSE-MsgGUID: I0zf1ZMfRE2nLuk4+wujHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81824453"
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="81824453"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 01:58:35 -0700
X-CSE-ConnectionGUID: okj0hHSsSaqRGtJOo2coQw==
X-CSE-MsgGUID: DZ8M1kM1R0m1NEqMxMO7YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="248652866"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 01:58:31 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 01:58:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 12 Jun 2026 01:58:26 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.10) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 01:58:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FHI6va0IWvTlNDgA/JYLSjtakaIdjYGrK7bMTOosWWn2w05vOkt/rR73HUMN7qz17tlYTV+GdzAShSPua1tNESjCdRsYhRtaOie3VVIPYDps1BxNhTHyX7WNqfLyB2XF0h5PpnSn11d0V+vIrKg8SCeSQBEVd7Ev9AwoccOX7CWHZUW5fcuOVsbelWkGRZ29PlZpflMirBF1nuK9zy4HS+2AzWcrVt2lgGeAtrFG8rmHQ/XZ0AK23Eyv1yfY5X3JJXV8ybEiY7eJU1UjXtwSGbJ6Pks7lt1B3fVC6JBmcutujrcbTyrtjkD9UjWEO1dD9mW1V0EUY1QRshMYu1tp2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QJSf4heUr8vdSLX1WRr+Q2EadmJ9JSjNVq90jRGF/oM=;
 b=lzXKSe0MZ2dXJ/CYLk4VFiKySXg051vhfqLQaa3y1YO0p0c6IjWl9+TAQbaVgEkyIk27pIeUZ86cAQdJr8BE04C5S4BP4HEt1WahMPIyeJ3lU95uZEcL5wzdXs0pKkg+Ts/nfPBaSs6aSG1Im/zbnA1kqsDzzwHG1I7sRQiibXM0XIVp+CATYibGe9alYPsEGsBR45pwYoxMfBbofrsFXKChYvBI2VGvsJqILBtAB9PvqJrtYO3TLnJFAp6BvqkLs58TpYXEY5hYq8G0MtBUyWcj/PfvA8QMe8mZioCZBiDlayIJpfbezuitskmg0OV2cufr98AkuT6eqmZ8EWojuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by CO1PR11MB4786.namprd11.prod.outlook.com (2603:10b6:303:94::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.14; Fri, 12 Jun
 2026 08:58:23 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37%5]) with mapi id 15.21.0113.013; Fri, 12 Jun 2026
 08:58:23 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Rongguang Wei <clementwei90@163.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Rongguang Wei <weirongguang@kylinos.cn>
Thread-Topic: [PATCH net-next v1] e1000: Initialize phy_data to avoid
 unexpected values
Thread-Index: AQHc+kNTsJs0vVnLPUiXdLkSk0iCpLY6nM0A
Date: Fri, 12 Jun 2026 08:58:23 +0000
Message-ID: <PH0PR11MB590263784927AAB47EE558BAF0182@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20260612080331.120096-1-clementwei90@163.com>
In-Reply-To: <20260612080331.120096-1-clementwei90@163.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|CO1PR11MB4786:EE_
x-ms-office365-filtering-correlation-id: cc31f91f-be5c-4fb3-9eb8-08dec860c228
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|38070700021|22082099003|18002099003|56012099006|11063799006;
x-microsoft-antispam-message-info: vqYA+1usrvx1u++iEQG4n20N8yApXXbMfMTZSz65r3iHI65c/TLJLuYhBkssUkdlHw2URN1iAfRomNvtvj3+OweQwRoGECGDov1UZ0npqT/urwP4YojvpjMaZsqj9N6pAWKdGUoisdN8VZLmbHZdit/Em3daD2QnM2qi4yvIVZYYLtQcLnl60mRo8SQ0q8nZnFPpq7cG7DBjZMKvwid1dG9c/XGNXLnXAO5fTxhIiyzA1MV5pzg9yOE9aVR9tep01Np9p9FvL2ROpES/nCKWFit+kID/oegcIIuHtP1E9gisK+VJmqLnqgamJQ+oSvpjOoDzxCLqbiITKGLy6aFjBssdLZA5bS7KwvYpnDiVof6EBVf93JuXYMKWvA94rCbvpNC0yrreMpkXMZ6HgyN1ZuiEMGp49w70BsNYdeEQct+hK15evoBRtY4cS5Y6PKjSqfCpDOPeefiSTbdtZX0kABV02c2IYWbEn0sWBX8JW6oindnVoLWuwKbGL1bw/Q0U2/AhrKX9Bw3qHd+fjj/ADvhbl41R37xecfF0i4BCerEPHZ4Kh8U8xesLQRUIasIp91fIT/WXxA1X75nrGXNWl/WcJn/VR1c8Jka0odnvIFPrdnIv6L/LuQEFJc6PPzZsdv7bqMguGG39EdZ1XuJOVW3pyAbbFU4eM2RnOCyvS0sPbasQIovsaGqmUHZ4a02dptmSz0Jc+K/vVXjZiPoVJKrZWrkMOKsWkY257xiUCBvm4GQEr4XhCPMNwgn0nww5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(38070700021)(22082099003)(18002099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6PAmmS/LI7KNovqJg2IdZSJJAf+7go4sJi9LMTWZuSIQiUTlGCNDhlFidnqK?=
 =?us-ascii?Q?IQWh+IVJzAlqN1FdquDa5ZTozB2pf/KP0L4Bmzqq9RBO4cnYH5q5hVFTIwO3?=
 =?us-ascii?Q?SdbzhXia8FDHSsFk2WWP6pD8HUf7N4KSnMZ+iNpDMG36yKdNzjzq0EbcnM9p?=
 =?us-ascii?Q?YnYkVJP4Qh40PGhHrddUO7SQF0Oa5ClyyGID3NvMdJmMozFQ4+T6cGAoKO0y?=
 =?us-ascii?Q?n5F4UUVAqNZnnG45RjZwaMhGlflvUV+dnf4uwRnHP4Rs4nLHxjuTSzqpGvKz?=
 =?us-ascii?Q?jWUYBmjW/C17pYW08yQ0tm7cFH8u4qHHJZxkcw6X4r5FxhxfQ3AFo2xx1viF?=
 =?us-ascii?Q?gzb+1SGUGhalhCvItkRP9+YsEdgmVfWYEOInoMewBCXFzLN/kd/zzLuygFom?=
 =?us-ascii?Q?z22heo7a7RjjBBnNG1bAdNBnk9Ncf32YXx2jFKEaQd7+5VqIaqw467k1lFYn?=
 =?us-ascii?Q?5Ys4AmKge/V9tZyhY/5w9fs8yxZ2nFJR2TStDBytZV/YRohzL7z8b8YBV4bb?=
 =?us-ascii?Q?nCYCOuV9MmO7FenvpXc7x+BqA4zNSAwYipIZVO4Q8q4nPnEQxLYOrP13eBt8?=
 =?us-ascii?Q?IHl/IstFe4XBEGANnSDHzwnNjwhCcmu8v3vODzqSkemJeYKZtswQxEXNEdxR?=
 =?us-ascii?Q?n6WHp9TKTpkElbPOXwZhDr9zLu2LxdokOq2ljE5IDnFhm/3GEz+KhHcToMDX?=
 =?us-ascii?Q?WDdacro0ZbtIRhwMS4txZM0ch7RAIyoNjkqhkw9Ro30ZBZwRCYgoEYqBis1c?=
 =?us-ascii?Q?4ZDB3+DTalxa5N8IJG8wwkmWbF1H/QWlijiW9W/T4gI40PTRn2GQEN3ojwgy?=
 =?us-ascii?Q?OpA2fRw78Q+D9NTnNx+ggnZiXMNrN5xNAI0tN3lnGV90tCfwukYJ9D/oLgE7?=
 =?us-ascii?Q?MaX4e4AEijV3LZ4up4hf92S81AbhP07dcPEAwGzAulmFWkVXNf6S7pKwEvFS?=
 =?us-ascii?Q?wip5BE4sCqKrR4C+4GswS+lyBxwlGKc7JeFzEWxPRZFPE/sHlZn8hCTFVz3k?=
 =?us-ascii?Q?pZ7i28avnvodC/9p1z8MEcoVkjmwevicCNUNldnaK+Gf81wz+JAJO/DmGNAv?=
 =?us-ascii?Q?ZSC2yXhpupqP9u3r4iNKcmBZ0yyurEy9K3WDv5HYnJMTk+ysbB6Pw8Cck54x?=
 =?us-ascii?Q?488FWGSGss+h11b2Z35Pgg8L41FVWDWsE1eLW0xOr4fmeV1BIEnelR+cef+H?=
 =?us-ascii?Q?ZNT5XQaWEC0XP3lM0JfsaJe13sZIZGopQtO0ZLXCYDAOlPzmxdAxdRgQR0+L?=
 =?us-ascii?Q?qPP2UIm7V7QJtWc2Y/ndzrHXgBjWtEQn9+YX+sEEoXg0MJd5OUOQ85GXzlvq?=
 =?us-ascii?Q?0gcdgyVdOaHG8zKPkPDrPGtLuCRUN0lLJVqSWIb0T4BmcR5IqFCpqPbkBMG6?=
 =?us-ascii?Q?1intdcVVhgLnzKCcpzbu1o8tolDgIl/IOrVaEgfq1biBtV3wwWFs6KahntL4?=
 =?us-ascii?Q?ehCqb9DnTf2OhRoqt+jhrWXMZgViy4BFlyJ3HdjdXdi0/7r2d0pYfqF+kNnf?=
 =?us-ascii?Q?QueyEymASwJdSFnYxKTW034PpUApX8NyKOi41Mo8vuTuFmLvZ4arCOij31Mo?=
 =?us-ascii?Q?LBQbHyc5sLnCDWns2sNg+YTBWytMPG6HRCWTs5917c8dTJM5Ic+WnpvqR/LM?=
 =?us-ascii?Q?ASwQK7B5Xu5qnIS/aMsnKEuIxZyLScjuYhl9Qn/yjZJTgL/80xJF72sUYdGw?=
 =?us-ascii?Q?ZdS56jfap843tSzzbnULRJWtIWZPepEQMSqd9cTi7Tl5oPXZxud7yVr7/8DC?=
 =?us-ascii?Q?F3uHF06Nfg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: q2y2W7+rM2/k0QnRswYd0x3w6tCOMMfBMWzB6EdfrH89vz2V5sBECTjb+djgKUGpIwAMzpdFR3YxeSqWsTQ7iL9plHpu9MWXmIYhySCuNTKoIQ/8YHYVie1bp0Yss+COVwPUszgKHP/iG4LG0G2BYzhkCHBR9RZtwP329HuTUWLG1Tn5oeQmD3qLVQ9pnh0aofv7ARugEFVAjh+UqkmaT9DSGSELUSTLfvtBauRV10yp63mNp2tanMu8JRr4sPtMmWbQn1Ta7LY5BUVJLEh72498f6zJF+HuLKXvDyTBCxGvSfRgUWOIOYf0AivVY8U5F8m0gwu/qccWmk3V+s65tQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc31f91f-be5c-4fb3-9eb8-08dec860c228
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2026 08:58:23.2837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eX7eDhFAw5Lr3/ThaO8iCEVAEvmL6l/rJ7Da2J4X792hdx004a4wG6VvSttHNsaFgdszC4lL1ZrhtQD+LaTHp0bgcWDe7TL6UTvP8G0OtEU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4786
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781254717; x=1812790717;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+NCIO16Ac4C8N2lqdCLtxVWEo1qaci10fQGs6JSEkWk=;
 b=fJpYkuffe9hq4RZrnvahx1a7P/qTp2QeiHOD8sEyWWbznQXhSkAK7uIQ
 7+IUq+UVcq0HYndzsaJULQL904xPJw86QY9Z5GbVLU/4EpUjEfkSjzFHz
 fHHe0Sq2RFF/4QqCDubgRhPB2SNSVp6qGiGcBb2r1BNDzq6TkuXGFc7I1
 lguOoQzujLxFyVyQFlk7c0vsSU4wiEEA3YxxwkYFmr7EW6D322Bzq5ZwQ
 6dOtmZZmgllUBkgvfdy11JWBk81s/YkFH8TDeVi51CGIMccHY+mE5itKh
 qyKLWXcExd1kn6a1jGGO/MsLcYezvytubMRq3uZzoFb6COTfrGhJ+uQ0z
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fJpYkuff
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] e1000: Initialize
 phy_data to avoid unexpected values
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:clementwei90@163.com,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:weirongguang@kylinos.cn,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[163.com,intel.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 50FFC67800A

From: Rongguang Wei <clementwei90@163.com>=20
Sent: Friday, June 12, 2026 10:04 AM

>From: Rongguang Wei <weirongguang@kylinos.cn>
>
>The phy_data variable is not initialized. If e1000_read_phy_reg
>returns an error, phy_data will not point to a valid value from
>the PHY register, which may cause the regs_buff array to be populated
>with unexpected values.

Hi,

Sounds like a fix, but i believe we would like to have any real
scenario when the issue occurs and how it can be reproduced.
If such is provided please target the patch against net tree and
add fixes tag.

>
>Signed-off-by: Rongguang Wei <weirongguang@kylinos.cn>
>Change-Id: I46071b3b21a566f8da650168d38d6968251b077d


i doubt this is a correct kernel commit tag

>---
> drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/ne=
t/ethernet/intel/e1000/e1000_ethtool.c
>index 4dcbeabb3ad2..f068108c5004 100644
>--- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
>+++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
>@@ -327,7 +327,7 @@ static void e1000_get_regs(struct net_device *netdev, =
struct ethtool_regs *regs,
> 	struct e1000_adapter *adapter =3D netdev_priv(netdev);
> 	struct e1000_hw *hw =3D &adapter->hw;
> 	u32 *regs_buff =3D p;
>-	u16 phy_data;
>+	u16 phy_data =3D 0;
>=20
> 	memset(p, 0, E1000_REGS_LEN * sizeof(u32));
>=20
>--=20
>2.25.1


