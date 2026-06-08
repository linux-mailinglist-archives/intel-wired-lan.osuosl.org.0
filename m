Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1gnmLwnwJmpjnwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 18:38:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E5B658CAB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 18:38:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=d5ZmkGfu;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD56461388;
	Mon,  8 Jun 2026 16:38:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MIfMRS6JLT6R; Mon,  8 Jun 2026 16:38:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E087161112
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780936709;
	bh=ss1GlqalG2DsGWlU2PJGWQzjAyNjiKHQjmW6MkWWJC4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d5ZmkGfusPnPeJXlYhWEJEkGxqamX9b/kvHiRsphXyExHwdqV7wSd7WsCuVwmmgMl
	 mvgfvBR8I5apmA8S98EVyduxmDIDHhUZEO4tx1RTJ2cSC8nuTp/HX4Fb3tqm+9Xn00
	 CTSOqGpDHLz+piyrxg/gGQq2btx1GIDhqhRbOMfQXgIumfX41+ntSDMy23BDZu7uo8
	 kUSPsgyOpX67HgjQvrJzJqSEGzXD7q5gvdeMIn97ECfS2Z7dHMKtwVd39Cmi8E0DgP
	 M5U8bN5F70ZOYEK/Oiz2uhpjng3zA/ijXvfYAXm5JrikNNVWjZac3GZ0Is1qcp9qSl
	 CxPzjrftozB/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E087161112;
	Mon,  8 Jun 2026 16:38:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A00372C1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 16:38:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 91D6D8464E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 16:38:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nu0txXpfHHJA for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2026 16:38:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DEFE484644
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DEFE484644
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DEFE484644
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 16:38:27 +0000 (UTC)
X-CSE-ConnectionGUID: Ef38yvDiT+CdHKjwlJ1z9w==
X-CSE-MsgGUID: Rs/Pt49XTCSuZa2/aDgwZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="81860760"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="81860760"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 09:38:27 -0700
X-CSE-ConnectionGUID: /1iFz3VNQSefZsy90HOsbg==
X-CSE-MsgGUID: EsSf5Ud9TECcoz17s55TbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="250514280"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 09:38:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 09:38:26 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 09:38:26 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.19) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 09:38:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BwpQ6FpPwmE4TiS9fI0/u57W1i+VmbhxhaXt6W4SEKuPmMNf/hZSkBrWIsEsbJ2WKiyNyjSvWuPEkdlGHUZTh7BLm5UjMhgfHvfYzdQcnS7+jHOthS9f2VdBZOff292q+p/DzF5KWBu4GECxG4mJbnBuct7HkitLNW4c4lZ+pidnRZx5yTbjZwdPBVkm7W9FKPO1RXnSAI/EzdXH2GdwJyp3cltD7yzKs3sIuaJgPlpU6z8JY23T9UW/HTHX+gij3+/ABsA+UAkFCT7C5YH+qBoKoX0sZtIAa38i8g5rMh79h8UEms5hYB6VyimbSpdk6K7wuxOuarCIZCJXxv3p2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ss1GlqalG2DsGWlU2PJGWQzjAyNjiKHQjmW6MkWWJC4=;
 b=KIdjPIsV/11fZbPKsMAXYE4W/qzY8wZVjJGI6iMTS32l/UIi7WsguoVxa3RLxvK+ReDmMSKkjVBVf3hgT2+Vnb/q1uXmlxvPk/lwmtpAOeWZfcheiIVqlNvpwGmPtqUrB5KT+VR5ieB5BoHqp8BFYeWXjfAJid212j8HUtoo+DC6cjy5eH13ysnSqZgUr3HYdoeVhNFHRWInc+/1v47rO+Q7yfM5qE9vZ0cpXWnGV5vfKGFGa1SOTwAKkOsV1drUHPgNZLoMDF7NgQ+crR93V8iiiBLUSWvBjD1KF1k7ATjr2ok21Sy0iU7YK8XC2Tf3XcP+mdQWTbn+hSEstDjMLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5394.namprd11.prod.outlook.com (2603:10b6:610:b9::14)
 by DSVPR11MB972630.namprd11.prod.outlook.com (2603:10b6:8:382::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.11; Mon, 8 Jun 2026
 16:38:23 +0000
Received: from CH0PR11MB5394.namprd11.prod.outlook.com
 ([fe80::fd22:b4:e353:a968]) by CH0PR11MB5394.namprd11.prod.outlook.com
 ([fe80::fd22:b4:e353:a968%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 16:38:23 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH v14 net-next 06/13] dpll: guard sync-pair removal on full
 pin unregister
Thread-Index: AQHc9qx+q/qcjtAlBUuAsLa4ce1Al7Y03F7w
Date: Mon, 8 Jun 2026 16:38:23 +0000
Message-ID: <CH0PR11MB5394761A8B19618A3B0AA8CB9B1C2@CH0PR11MB5394.namprd11.prod.outlook.com>
References: <20260607183045.1213735-1-grzegorz.nitka@intel.com>
 <20260607183045.1213735-7-grzegorz.nitka@intel.com>
In-Reply-To: <20260607183045.1213735-7-grzegorz.nitka@intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5394:EE_|DSVPR11MB972630:EE_
x-ms-office365-filtering-correlation-id: a76361e9-ccfa-44c0-cbb7-08dec57c5ba6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|4143699003|11063799006|56012099006|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: l78jY2ur2EZplG4tl/AkBK2/06Tvh3SobEtXcEQyXsyxVLkRCZDSqwMb0wSY0Jx/2qG7p/Cd+5cQeHcgcJe1w8B+tDbVOvuLY7za8wwcRIQzL529pTaCvU6eA8C2a68lhFTx5CRnm6AzIZzOr4VtRt3uzJkY5Skol1pqWLhHHxBiAz+Kp8Izb7FGZU/zKvc1+yzRxj/ov5wEWcMU+s96Mj+drX99529JfQru6RQM1QZ75MGXEnkmEo95Gp8Zm+Thr6IbwtMUqVptLYnBYPh79vlVaRcCTkmsgPT294i3pK/nxA3KJc8IM7xC0EVjZg26zT4jVd5JTnkcRYYJrkDp7vpozsiGXySMK0Njh90zrvwOUxMN14X+W7eZp1j698Sy1M9Zxdjx1PwrMkj6VwpH4IDCJs1drdl6nopNXvYNVHoXo5Ph1Hrl/e/IowffMCotI72u4qHzjzDr6Q9sOX5kX9YXP6vYgNoBvFa/8E8HQkyRpvxQdmxbFU7JyT/TSQClXmcmhc1WHtL6gO+fVwbd2Zc5/wahEjkoTqp/reglGVB42tjn/a0jahJx7qan32lfsmAltYd+TAYGO4SIvgKwsaKeq032jRjcDCFK5HRTAq7Y83RyT/Fy0VTy32xkN5CHGymJkxRJLJv3JXXNt+lZJTROCczUpBdYn9pWjYvAPfMFQnFKDQWs/JsikcsdYSP6ff5taa6v1AL5c5gfQ0IvupVjr8UM9jT66wjcNOkR+prI0HzB8K6tQKcsHWHaD2Go
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5394.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(4143699003)(11063799006)(56012099006)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?keVkPOZJWoh5JGvhACVDBrVXIEe91ntBUBgTnoQo3WbNUEGmbfadVGECPpRF?=
 =?us-ascii?Q?MbGu/LoggytdUXSwDF9vIi115zq4wH7NjWHeV5bT21qpUvUbetO3IrpfiK0b?=
 =?us-ascii?Q?iiS8iuRD9L1V68e9Wk/2KU//mhLcs6lgUMxFvcA/uTie69sRXSDFPOh8xe4w?=
 =?us-ascii?Q?NcusePZQ9sNsAUuyjhtxi1J4NyMHO/urRsYIShmj6tijqdFMh3muqpUzBRCP?=
 =?us-ascii?Q?w9Cs9fhMDb3vV+Rcoxgk1f3snEz4bAl4wgfdSe64rYOch3mAZ5gaVKsVxU9d?=
 =?us-ascii?Q?+GN6A06VlR/tjwe+hAsNzwMdQ3xzXuHjwyu21d1hMdhwyWc0TkHD9pBzyMDX?=
 =?us-ascii?Q?55/zoPr3+DjfhiqbOdFBFw0lTmzTuNj9CULDMTXriT4hts6grCUu4CdStPAY?=
 =?us-ascii?Q?bYvBT4Eb25ZdTSc89FX6tI8VKT9F2uYM4Cz6OYa/1nzzX1bS37fNLjq0e965?=
 =?us-ascii?Q?EauBAYU1GYxQY25a22MdAK6ThyoCRwG4ByDS0iksugzvSOH9ZXVFVYga7yUy?=
 =?us-ascii?Q?+EKq011wud5+Aqr5U4W46SrkKbhN8BzJdjKdqXz2VGGCoHkkIBaPlyCPsaU8?=
 =?us-ascii?Q?i91jOjpGfxeW8iBW37SmVBGxuj0ebH1fkGe34sSPc4y2F2o/HAf8A8PeKoBM?=
 =?us-ascii?Q?G41p9rkIvNA/JHNcRB/TI0fp0xzI+Dq30a6aNaFWU7o1YCVkjUXP1/EpYT+r?=
 =?us-ascii?Q?jTy27+lJngjWtfd0jYxLAa07UtxUOH7nlvNY2AQoTVxyu6Udwm7zEdEopEZj?=
 =?us-ascii?Q?WotXvHogzn/IFbq6DqwEaZNIn+PPPWzFbSshaBEln937enHAEchq7XpN7Fx2?=
 =?us-ascii?Q?W2wzR222vxZQHUu16NkZcFbmjNMTHx4zMd77jnPIma0jnAAAzAtJXqOQ30cR?=
 =?us-ascii?Q?yMbKw5KNr1F4izY3lIrsISLSuo7FzxWYJUmzou3fOJUmmMIhshjWP0D0oujT?=
 =?us-ascii?Q?IJg/aWZZJeRAKECGEAzeA3QiUz8w+ox5PeG0ad6IGNGn6jb1BLfJ9VScI/VY?=
 =?us-ascii?Q?PJX526b4+akZdIFiRj8aHiMzTQyQnHYmtikHoNrkfjTKpzQjMpMHSy/a5NWA?=
 =?us-ascii?Q?BrnUIvBeA61NTe0Vd5I0mDeVpM+vRsyiORsG6x/ca4bkC3Gp6En1dIkCi0z7?=
 =?us-ascii?Q?2089Q5SaP0NfhPohmACjLRGoaKS+Xk8Cn5rBj+Fk6tj/Uopsb2hZfL+1QIdv?=
 =?us-ascii?Q?14pzv73YO6e8ughFB1/XlBnjCMFsV5TkR2VRI0oO3caLlt1+6zpEXd1mFAbh?=
 =?us-ascii?Q?9A0j/0zvzweb0btpx+ie5k7qoi+7vbmjdw+CnbrQtf+1QS2uSM1Bg5fb4DAr?=
 =?us-ascii?Q?mHMwAg5ZTg+igVSPiKeE8Z7wivfPLe4Imd6jbuBbLfCHiBDBynPYjFM2JJVl?=
 =?us-ascii?Q?QirrzON3uHH9VwbxYnM2bbt8qMrq3D7oliH0RnU/G0Qloeg6ObG5XY1IdjUD?=
 =?us-ascii?Q?3H7i+4KB4Auch6Nv6F7LGDTC2xKD2TAcs+Gbv0lcWKTKuw0phV8ma6ygedl2?=
 =?us-ascii?Q?K6v4Gx1Jy5dRXJbGOuGWzBw9MLqcZ9WBm21aVKi8hODkzPPkyeMDTdynjR+q?=
 =?us-ascii?Q?KWgcUDr6i/CoI9pHg6NGvry3IXu9re0TeCdgyukXVYFHz5V/YAb/Db381yhr?=
 =?us-ascii?Q?dd3J3AhFv6HPuwzdtWj48GiZUenKIiv/Zt3bemaK+oXRoiOLxO3VHGzhUOUn?=
 =?us-ascii?Q?FAAhv0RMWa0DxZ2YaKrQz7gfj4dlpty1WI1BqKGJsRQKSraEUZ6w6ocPno9h?=
 =?us-ascii?Q?n3cKs4ZOF+tNV5L1bBnLOJqLrR627Wg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: NZURDHosJPD5SIwlIYXkbybFBCXggt83WtSfIW4ds6zIRbOlmCP2lYFXbhoSfoz4Nyzr1dFFhaqE6Y/WvA55UHdLPJYl5V1kfCNbJGzwPsgkxrN0WeRhzTgBE56zGzem/WTxLB5V/pc8jtGg2wKrjzZ936FZIc8n20nhtVMyiGSVLGMUHGLK5KwQDhEIOJhPk5GJroF7KkVf6UvWrnTAtI3aUwLughYlpu45izPQzpvb0AZit0LoYaX/+pMqv4sQElUfmkqeQiq9GQthLmKIJqmoV8XiaQHibZdbXMItvxj+F0M8IAWYBJshsyGnd1DGElMgLSsNcsu6ov12KlNQIw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5394.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a76361e9-ccfa-44c0-cbb7-08dec57c5ba6
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 16:38:23.7392 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mAcIgIA80UE9On8B2od9hrwWYe7yYGV7GVAYlk5vcnGYIRiydJ+gA5M4uUKtsqG7lPtxAtW6uW52tIqgpgi0p6OJz59budBL6cbZcCV8CVU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSVPR11MB972630
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780936708; x=1812472708;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NHYZ73THN1Dcu36OSDbgJciK+Hs4DxVTQDwJJrwn7ww=;
 b=KONhWqzz5fkfcZdi1nxtqlgLO/LFyqxmhZYoPO5DdxJUIMx4xtuUvYH8
 VZBq6K3//siQ5KqmHqS1K0/s0huaTgWqOrRnvMGkk7gwGX2ZQwW7dqDio
 QLrB0KLB+qlMUSwiUHAxI0GbUsLjMVcFGgSX8C5Jw1HEtLXsWCQiFPklj
 t4tlreyAu2Gdt/uGzpvW39bvn9ULlrZH9qsPPUUQ4WWInK7SFsgzcchjX
 SRgS6AMM0AEswAImCNVanR0dwMfzUeq108SSSbXcKtOn5pv4KYLSnKyAE
 CFQnA+OP7r9luvYp9ojeDdKrhPXv4OT70P++98GDh50+9uYfd4UEKaJTM
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KONhWqzz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v14 net-next 06/13] dpll: guard
 sync-pair removal on full pin unregister
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
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
X-Rspamd-Queue-Id: 19E5B658CAB

>From: Nitka, Grzegorz <grzegorz.nitka@intel.com>
>Sent: Sunday, June 7, 2026 8:31 PM
>
>__dpll_pin_unregister() wiped the global sync-pair state on every
>(dpll, ops, priv, cookie) tuple removed from a pin. When a pin is
>registered multiple times and only one registration is being torn
>down, this dropped sync-pair pairings still in use by the surviving
>registrations.
>
>Move dpll_pin_ref_sync_pair_del() inside the xa_empty(&pin->dpll_refs)
>branch so it only runs when the last registration is gone, alongside
>clearing the DPLL_REGISTERED mark.
>
>Fixes: 58256a26bfb3 ("dpll: add reference sync get/set")

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>---
> drivers/dpll/dpll_core.c | 5 +++--
> 1 file changed, 3 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
>index 58034be07080..ea45bb41376c 100644
>--- a/drivers/dpll/dpll_core.c
>+++ b/drivers/dpll/dpll_core.c
>@@ -926,11 +926,12 @@ __dpll_pin_unregister(struct dpll_device *dpll,
>struct dpll_pin *pin,
> 		      const struct dpll_pin_ops *ops, void *priv, void
>*cookie)
> {
> 	ASSERT_DPLL_PIN_REGISTERED(pin);
>-	dpll_pin_ref_sync_pair_del(pin->id);
> 	dpll_xa_ref_pin_del(&dpll->pin_refs, pin, ops, priv, cookie);
> 	dpll_xa_ref_dpll_del(&pin->dpll_refs, dpll, ops, priv, cookie);
>-	if (xa_empty(&pin->dpll_refs))
>+	if (xa_empty(&pin->dpll_refs)) {
>+		dpll_pin_ref_sync_pair_del(pin->id);
> 		xa_clear_mark(&dpll_pin_xa, pin->id, DPLL_REGISTERED);
>+	}
> }
>
> /**
>--
>2.39.3

