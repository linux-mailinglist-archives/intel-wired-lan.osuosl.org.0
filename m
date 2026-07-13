Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 77buEA2IVGrrmwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 08:39:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F35A747976
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 08:39:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=Ru9Gz4Ko;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F823607FA;
	Mon, 13 Jul 2026 06:39:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6QCChqIa8HQ5; Mon, 13 Jul 2026 06:39:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5537960806
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783924746;
	bh=5rWnGTZOck7FfBYBGlWzrM7bC3dWWjUhgoSnZfS3Afo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ru9Gz4KoS+ydw8Dh564iQaBxZ/nHHyNrKPJgzaeIVPOM6sfU9AwFkNXw4yZNgfNbR
	 u37IIdHQByexEdM0c6vriQK0Lh0+pfTwFcYVHUpO/T9maOEN7r4Z099v7hWnanOs3c
	 wOFpHLoaq4ZWrnqGxf4QvoFH+GfjxuEmtKNG8QlVBnAAopT6gW0/ODZbwiwvEVeYCv
	 U92mWyeLnec+Mmg20ccKGk5CH/kaBkpNsxjE8onfeJ9elurpXtUeg2GjcAM55hh1ni
	 MUNe9fc+317kzynzgyJw8xSvSceCeSvdDEyT44lb+LMWHXQ7SOpNej8Ht/V2lYK3t4
	 ttbTsR1v9CkTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5537960806;
	Mon, 13 Jul 2026 06:39:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5110028D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 06:39:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 37733400D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 06:39:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y9B9noCNnZeW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2026 06:39:03 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 879C740079
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 879C740079
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 879C740079
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 06:39:03 +0000 (UTC)
X-CSE-ConnectionGUID: wJVDjqP6ReaZhtL7f+kBtA==
X-CSE-MsgGUID: xZSJKpbTSvqeTSfLkkE45A==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84576945"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="84576945"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2026 23:39:03 -0700
X-CSE-ConnectionGUID: s3J8U3OETOWlNX2UJ+senA==
X-CSE-MsgGUID: JPylYRXiScmVSlwNSosQ2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="279874157"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2026 23:39:03 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Sun, 12 Jul 2026 23:39:02 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Sun, 12 Jul 2026 23:39:02 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.70) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Sun, 12 Jul 2026 23:39:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Iz412hUQRjpNKFWsXtE4q/Negzy614x+tutaI2YXCBS8KdW3el6YSmvs8/GmRI30aV5fjW/RihcD6GvMhXevF27FJC5Zmmulp++noZEKglwsXCvueTh3QdvV6NGPaR86dWO7LKebUqKDdT2EQXFkteQ0ksTDYZZObe30gbCAzwRZYjywDqZ5xauZO2dPXc2jb4Lcqqjz0Lr7ni27slJPaSogLJuDrjLnwEZHIXnPQ8xaIe8mictPFt8/mt1+bTThpSTqG893zdhm+3kSO9sDN5olA7uYjnhAckkWO1YCSwOpl1+1JSwaedi1+j3SdYQ67+90gUXPq//HJertsM/xyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5rWnGTZOck7FfBYBGlWzrM7bC3dWWjUhgoSnZfS3Afo=;
 b=ixYuvhDQ6jkJUkTwi5hW/4iYCK1ibznssCI2P8SMhSviDkxZWxtV2CKX2o4SXxtFWjdaiYJyQV3WlGxHQbFD1iNWQkFv+aqWbrhxSMEHdNmTi1IRNn5RoWPpojKvZypajXn6H7GAdyTVNQL4k0ilDgu51DzlvTQh662UhvKhGuEctyHvoKe2LuQyTG7c/nE8K65OJIMzvm+tv/zrIiF1LNM8h9TPkcZxMSNm9g8RNH67cdO2iluAesu4IFw1cmiBnP06ZJWKk1iFl4haVYBhGdpehEL2ZuoMgFZzFrf3LCm202NlzTYlPfBedHQ/gjXD601eyxhjECbeBJjacb5vHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SA1PR11MB6709.namprd11.prod.outlook.com (2603:10b6:806:259::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Mon, 13 Jul
 2026 06:38:56 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%3]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 06:38:56 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 3/3] ice: Cache struct
 ice_hw pointer for split register reads
Thread-Index: AQHc8afpIYeL1U5kak2TcHrkU1qPBrZrP6rw
Date: Mon, 13 Jul 2026 06:38:56 +0000
Message-ID: <IA1PR11MB624177DCD5CED233C7E69F6C8BFA2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260601091951.3017848-1-sergey.temerkhanov@intel.com>
 <20260601091951.3017848-4-sergey.temerkhanov@intel.com>
In-Reply-To: <20260601091951.3017848-4-sergey.temerkhanov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SA1PR11MB6709:EE_
x-ms-office365-filtering-correlation-id: cd2a8b9b-f0bb-468b-f344-08dee0a969cd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|38070700021|18002099003|22082099003|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: ixkQZ1uopqENCaSEBqg9haUTGA8FFnJFvQQSug6AV8RL/GH6G5mXJlJ1SnAgLnyaaPr8wYaAm/QA4qV8FUHsItnHO77qmHQyW1IhBniH2oa45KJEwSTZS1zDtoGLzJCV+P0rcUSEsYbCI1/WnjK75cOn/oOdn4nLAKMmMJWi5zn5cw8xaDxdNM7kPMDAjicKcMiJ/k6fNET0Bquel+EMsrpv8LFV99jiAoCq9+o2Vt38bSIMWD+Kg/xTKTm1CYIK++jBYWM4hB1+ZGOpL8NlfywKBcmr/fjVI2juKjmbJkwSg9aER7cX+rik6jFt/LPaGhNH+Kown+YZEpepLbggt8ymBpV1BEMA7ouxtDdHwzfRXbO4obsEsuoOSH/8bW9XWG1jK5avTtUc2PzF6QHRcD76Cr8B63LcliNtEjB7aUGJ9oD/nyGgXVGsKlpSg5OcOBcpmHZ0i3OP9AvELt2PTdFG0GHBpVVf+6iSmol8k42fPKQw5JktExRCykl2Ndn2hWK1uMvMOZN3gM/FXFptDPLousu/s3bp9cM//qIHsYh8CMwgGlz7eWzb1RagrwAIKFhObSgB1LQiQe6gkDG9UYM73n5QlBO9Oo7s6miY0CcpiMEl8gDYCCAYAi7T/0gKoqt3GMxa7iCVYulNK8wGezkFKuajqvhk1THJkHD1Y/d7m9Vxy/lx+pPAxvv0GsjFo7MPB+feB+3GvsAqLsstJ0D0YT6ijsnJTPC1lcWPOsk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(38070700021)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3HDqTIBWG4cPSwHcgBO4wPxdBNajIMtsYXFNRIy3zRcdnj/aIY3pIzJAtNuQ?=
 =?us-ascii?Q?A23zOQ5JwDJQ0ZcTK9lKqK7BbALUkyns0kGGqjztQqXwP6plWjdXzZrfZfvA?=
 =?us-ascii?Q?tjB+NKmamMWloEGaXh+8xRs7qO1msve0dNMQn+ITT2XLrI1mGWt+bQgvcoLb?=
 =?us-ascii?Q?8hmnXPJDGlHM0HtGNkEZM0ddDcSes6LJPtTMiQoI/oeeklcYNCQpEXQZCoJf?=
 =?us-ascii?Q?8WM1E1EAYoRV6q3pcQ/NErCnky/OSvLcrGv3ipa9DtUQdYjMYJxCqQl4nxnx?=
 =?us-ascii?Q?rGuaoZlq6haZODGEyLn1ITq9GhWQeuGLaMDGRk31hZsdxL9+SxVbPXKv42Hg?=
 =?us-ascii?Q?BeQGVFJ3TG8Uuii/rC2qd7ykLqd+3miA8Ff8GXoTZd86nZUgt0QPaKgiKedB?=
 =?us-ascii?Q?OdwKn3WgUW7xa5qUpXOU+AaztqYwuYc5ChlxkL9Q2CyFPWzwVsen0hbcvwWK?=
 =?us-ascii?Q?p+ftstjVgKSFbXkGKrAzBpWKon6FHyCVWxJ8NEq+FiTVub3nh9HrShMCfjgQ?=
 =?us-ascii?Q?aYKjDH/3Lzth+qU2pA11dR6D2F3NcYGacgxLUkr313koHWyDfkLaaobSWShy?=
 =?us-ascii?Q?1qrcMXVO3meYSGuKDGBHDFHc+CdCEDqeoZm78Hcp/plaO4XO/gU3trg4eobI?=
 =?us-ascii?Q?dVnqwurzsT5eHiC8Lb/0woT0y67rUBqU3ZXsR/iFGtk1pwdglilvzij84bkO?=
 =?us-ascii?Q?u/WqYeoabyP8LG/mJ2ZcwKIcx+hT1lZj8W2SLmEg6t0MGGcMgN5XgNFmVX50?=
 =?us-ascii?Q?Ki/X5r3iU/l49yhSUBUvczW3VTy4RTltfREgPWS4Xr+kZaA6EgeI36FqgJBB?=
 =?us-ascii?Q?7cT/LDfRdriCHof2J7NXmGWUStKmWgCSHMeh2jgR3rqaHbAA3uEIVZytT1O1?=
 =?us-ascii?Q?KMF4mignAa3Z+HmB6yN1+OjQ17TuTv+Ci4Bcz3x8Fh/78O7rimz5B/2tTtke?=
 =?us-ascii?Q?mMHRyK3Ry7qHQGB8OFXltCFoVySaBhX9TpicztwSuLoZm3O85A/JB9o0IjKP?=
 =?us-ascii?Q?kRC2J3JqttrlbzhN7k1c3AA3ACeGknCfvPgl3NlJezMxwCWrJjoXIBeNF+EF?=
 =?us-ascii?Q?AL0f9MWrLa8TzWu6FHHLA9LRXj/esDDyMjU7qwrQZjtLODAkgEyFROMzKDz8?=
 =?us-ascii?Q?12W9GHPSIKZr1uaE9MRiyNso/Ia8YfP/JVf6WkR36qh1MlphhiiuqH25codw?=
 =?us-ascii?Q?WT/QrePTbtEWFo+AjFS64Gl0DOKCnWGGKhzP1FlQl7SfixZQTdCrKIL7pjlI?=
 =?us-ascii?Q?agaMw6gWA+TZYna7kGhAxoloNLE2hndSVf0dthq0aYE5S+E+HN3VvEqQXJDb?=
 =?us-ascii?Q?+znPYkm4oVsmjpmssMR/dH3OJrsYa3gQD+/6+rueQUCU2GcMb6m1Aeh22NTa?=
 =?us-ascii?Q?Av5fS4emZPSyT2JJmong9bG0IpICSlvY5EAzJRAXjRR6vbyn/KsqQC1jyCxN?=
 =?us-ascii?Q?TZ6wt0btWYqI40xyTz2pi3Oqo5hEDcnFDqghiMww2qD3QuVstUGYtHoxO/m0?=
 =?us-ascii?Q?BQQ8dtP4VFyGH1Y8e+IJ3/lWmP5iJUdfiGcgoLv8EcXImMAEJJsxXWp30Yvr?=
 =?us-ascii?Q?eXboBOArwmz3DKfoJiLF/rlnHN3rFe4eVTnlEW9TYrD3QwlZnSYHQbvvkr0f?=
 =?us-ascii?Q?YGvrIFXLuliL/7B+dgAi6Wb5y8u7nXV6q+6IBdl/DmmVUaCFf5W40juW8h/C?=
 =?us-ascii?Q?5P7bI3YX0Qcnc3xBRGE0vjZoBFGMpl4mZRArp+Nk/J8zOIqF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Hkdh+BayqIl22UNiYbjjYo3Lom/M40nE3MZteY2Q3UsOGcNQel6EN3h5dcH34e/c1rBiMIhpZq4kl2QGAmN06P1oIGDxKk1mH50xi5Ib//PPDUxWMm8XD0n1fKjqvW3KaA1LSL23SrOWxfXGORr9Omi8dtq1G2aTBfoDlJ/wPFf8G0JrFocjCrRfg7zSxwQmbi5UB50YVEEG6CCfLgTcVGlsh901HhehYZaUyvP+O5wlEvb3OUHDdX2dVIqB53enhc9GrpWkRiKZULDm1XL2dopUHeiEtQ5HtiDUMIRWSGyQZkDKgBBXY7MtnKdxn94P/QOUOVaz1V+q4IbXXGEBQA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd2a8b9b-f0bb-468b-f344-08dee0a969cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2026 06:38:56.1334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ssPiLXrivM2x3I6c5cPzpsleoHkhxlzpMfaF4amSpmm6OTuix2BLWhSC2DfvZ3RCU31DJXvQzC4MJK0KkyOEQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6709
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783924743; x=1815460743;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5rWnGTZOck7FfBYBGlWzrM7bC3dWWjUhgoSnZfS3Afo=;
 b=lzqaW5zoZ60+qqwFiiyWJ85seyJlwgRjku8FzHpyeP89GRTDdV9J0XTm
 R0yrjDabSvAlcK8buttc68ZrC/FJT8QwDXZJdo+0bdstKftfcY6ozJlEa
 BVG/mi3T/f7gpCw2tb85pgwj/DIjwhpU0DxvTKfOG9++sJrkaV1oBReyT
 5ZFDOqKMouiC6LU44aPRu/b21XNXy/I1euONstliRjSX56KMb7Gsmtbvi
 5AJ363HkjqahaIpnws3DgEALd5O/efaai5JFbo1+fcryKsKx/jqVhsaZC
 9UEuSLv5ExLQDacf7AA2od0p9zxwWcW8FZ6cxOvmL1sYgrTlZ7LSbtL9n
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lzqaW5zo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 3/3] ice: Cache struct
 ice_hw pointer for split register reads
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sergey.temerkhanov@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:email,osuosl.org:dkim,cloudflare.com:email,intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8F35A747976

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
ergey Temerkhanov
> Sent: 01 June 2026 14:50
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v3 3/3] ice: Cache struct ice_h=
w pointer for split register reads
>
> Cache the primary ice_hw pointer to ensure consistency between calls (bot=
h parts of a value will be read from the same NAC).
> ice_get_primary_hw() will never return NULL, but during the ctrl_pf clean=
up there may be a case when one call will return the pointer to the ctrl_pf=
->hw and the subsequent one - to the
> pf->hw which generally are not the same.
> Struct ice_hw is embedded in the struct ice_pf so it is protected by the =
same critical section - no additional synchronization is needed.
>
> Fixes: e2193f9f9ec9 ("ice: enable timesync operation on 2xNAC E825 device=
s")
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Tested-by: Frederick Lawler <fred@cloudflare.com>
> ---
> drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 17 +++++++++++++----
> 1 file changed, 13 insertions(+), 4 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
