Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8ZglODc6Ompa4QcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2026 09:48:07 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 032316B4F81
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2026 09:48:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=PfjU1gWJ;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E61A060677;
	Tue, 23 Jun 2026 07:48:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aA63nipQ34IB; Tue, 23 Jun 2026 07:48:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 60C70606D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782200884;
	bh=zJv6e+1elYSFpGXgEWOieHZRGUxvqduUX1vZ/GKUOeU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PfjU1gWJMQH9EIyrA08i7Dyf7Fa7SuJFqwF+I/Emd05tBoVzysf3Jo5WqjiHQ0wpE
	 PnD+iXOjjFuiG1xWy54HY5Cz44D+A0vptCZJkicLYD4kYaMq03PRrnR4yL22bBxWJx
	 szU6PAFatLFjLVb2JPcayGgwdhTOcuHywr4Dhiq/YjEWCGGGq73CuATpaZ0SAN+dxg
	 T8ENLCiTF3qzlzvKBT8sjg+D+juWppQHR+vKQ/SVrIyJlwLYiusPRAJjKHy/soS3bK
	 I0SfPF34zzppnSVF8M4YjbSmAMLZzF7pwi4v5b0KDiNLy3swvUjj0tXDP18qjvuv4t
	 /rkBRcw7UilAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60C70606D5;
	Tue, 23 Jun 2026 07:48:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4CD31367
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 07:48:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3EB7960677
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 07:48:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VSfp6GQnQmnh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2026 07:48:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 84B3B60675
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84B3B60675
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 84B3B60675
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 07:48:00 +0000 (UTC)
X-CSE-ConnectionGUID: 8CUNVM12QlaN6vwpZjFRoQ==
X-CSE-MsgGUID: mH8YfrRrS9q7QqJm/deF9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="93301544"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="93301544"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 00:48:01 -0700
X-CSE-ConnectionGUID: eNIMusFXQoGYtp0C7RkAfQ==
X-CSE-MsgGUID: 0EPvWCz6RNSxMHY1+JBUZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="249572952"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 00:48:00 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 00:48:00 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 23 Jun 2026 00:48:00 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.60) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 23 Jun 2026 00:47:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JEtxabvArpcuo0xKg8Pd2akhRR48cn5zRDb5lRdU99QX4vmXoaX8xIe8YIHqaNfSrWG7m1ixfuVmdqr6z91ALw4NUk+XKf7sk/O2To6SrPIxcGcY9xCaDwVYU7+aVeyrRdNygql/FGJenuKi6sLBza3yhjmJWfDn1P4BQiW/U2ddY8lUDoMCdYsgiU3VWop6IPPqBHJWdWHPU8WnG/fFwS8iJNIjg1dimtpr9mC6KYjholFR5lDx54ZBxtJOnYirRU4+t2qj9+eGAp+I+XtQs/sSALWNtdmd54DQuOn15LLyLrGwco05m0Bpsl4Q6YvAjyIwWk85dqh8U6ahiDSJgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zJv6e+1elYSFpGXgEWOieHZRGUxvqduUX1vZ/GKUOeU=;
 b=aOnGvmzL9CzfkHRShzsRH8dAI8rXncUkiNWf1zHaIJTuFTW0wS4u0aVTvtZj9DGqQ592Lg9aTFB9L6Lf22RIhAE4DLdqehAhrhIQ12Ar8llL3LvNAuQ+DpghYul6T/Ky1trjOxi2GyA3JpTBoedw+/XV2jeykagIrdctCD0L8YDw3QUD1ZXJSzM6eClFRJVgO+Ohbz/K2SnNmUczV2+67oHwWDPWVqTqVfsr/rZGIGWOUVl8fw6jz96Lxgers5Bj772HsdTjxVmeM57NkOOHJB4cVu5Nqu+FYbdyTyKfxszRvs0iimZQIJdq5NRjHmMKt/wqXMe8Hk/o81Uen0tbQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA1PR11MB8829.namprd11.prod.outlook.com (2603:10b6:208:59b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.18; Tue, 23 Jun
 2026 07:47:55 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 07:47:55 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Knitter, Konrad"
 <konrad.knitter@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/4] ice: fix autoneg disable
 when link partner doesn't support AN
Thread-Index: AQHczjO1zNpAmPqjAUWwDVjBmzgIwLY5Gj8Q
Date: Tue, 23 Jun 2026 07:47:55 +0000
Message-ID: <IA1PR11MB62412E61E842290428F7AE8A8BEE2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260417062954.1241900-1-aleksandr.loktionov@intel.com>
 <20260417062954.1241900-3-aleksandr.loktionov@intel.com>
In-Reply-To: <20260417062954.1241900-3-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA1PR11MB8829:EE_
x-ms-office365-filtering-correlation-id: 4cac5a1a-e5f3-42bb-ca98-08ded0fbbcc6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|4143699003|56012099006|11063799006|18002099003|22082099003|6133799003|38070700021;
x-microsoft-antispam-message-info: BQgbPUgAjvX7BuW301mlgNCpA8TOK3Hc6EjthD7kEvEGjsKZQ/dBkIJL86hoaEn73a/+ldBuVjYi+sdam8JB/7RxfslWpcJQ0whej1FmH6n/XN5aGyaXrgEErvoO3AUOAG+92x9OCIY7rDQaTltqC9CpEQuNHPullwp/VZhw1jRNCNFZo3QIwLbt77tdItw1AjSgTw5/g/aJrk1P1XLxP/eCDGvQpiTa9ElunR//iZB2Lbypau2tVpJcKSM4rIqgVf+b+HS11nUjMwuPZQKq8qdH64fTaB6d6fwDiu0soQ7i20TcUlcWCodNxnMtTDEcushW9LsYNujldpehJIzXFxMgycEeYbpl5ORjpovlWJ4lrJr9wOVASrttWaSWm66k1XcSE8prQj86Gj8he4m6PMFI1L4p6bZVpDca9DQ+2Hgd/g8Qt+5wsMTM2xuDcOOOM8chr8zWlDdDSIY/d7FvzCWGT4srjNNXtTABUAEu2fQ78ZGPE9VamnnUmi0gA8nkVLcbn5KgEK4YCpL3pXLPSc8ETtU2LqAGTW9Kt+CqwkHtCx62GLmEmtlUmsBaab5oElGGT11DgOIo2T0HP5MxbYk1OUe8qKZ+5NY2jLlzlRE98D3rLft6cOSz9MrPXOiOhJEQLPuwKf2+SLcnW2PBEaoR/XETkfU72DK+Z50Vofz6JS8rXJxabXM/OPg1ArpIJo+I5rLvEbE8ZgxUF2zhCpXWkeJ+vg6QJWjIGG+822g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(4143699003)(56012099006)(11063799006)(18002099003)(22082099003)(6133799003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?X9AADGbnq+yNoAdykbjYHc/V2vmcxS1h7se5V4hAODjBynxZlnYrwT7au+Ok?=
 =?us-ascii?Q?LraWHgMv4ivFbr1PrmrtSDnrhVghpJMz5+08U4yCNCh0CIJpRU/qc/CyIDgO?=
 =?us-ascii?Q?/Vc0ldi61ejlqmJY4OZxiCAEyV5fbdfpMdqBx2G/dJv7RJ8UpxkebZLfb7bk?=
 =?us-ascii?Q?meG2jyKswlAJn/M1Dsj6nZ2lKM+Sw0vxvqRMwc3uvVCDkEMnVGrUqAPrWhHl?=
 =?us-ascii?Q?aeURcnThjGkoZJwi/fHrafUlLb0t3/nG/gQ8qPFgSjm9VTA4kzYAQjoqeagJ?=
 =?us-ascii?Q?hxanmC4la8TgDn3O+djtxC7qeTr8eDMwSdPVohbVtUfSLuFjgJ1+9ZywhVHM?=
 =?us-ascii?Q?iewYnhHn/02OQpNOt1afFtv7VL/gX68vc1nWYc8SGlqFM5oXdEtcV7q9aHOr?=
 =?us-ascii?Q?/cbYv6tCfzpMyR5dYx07beJa1prZNDlTTkSMh2OKpLgIkkjJ891FbKCO5vH6?=
 =?us-ascii?Q?12lCkZ8ny1SN1Kl4F6xwWcFwl83DEGdFYvBdiDwnsPQ/CoKE6Q22YkwhNG++?=
 =?us-ascii?Q?DzrRT/TRiQcz3PpcKSZwUu4LwwnbNHUSURSznA8pC9fsFEoJMcMh4jXz6Ue8?=
 =?us-ascii?Q?b3UfRyrRpItg/l9Rmtp2MlPsCtfgSx07YO2sjVJc0mBHkpbWDz8tCCRpwaZA?=
 =?us-ascii?Q?lsN/mtUEfQpwxYUEBetNL46vvXj5LAJgaB4pi5y08rc4Sl2H73rEjmmi1LkI?=
 =?us-ascii?Q?xvaPCzxvJI5Tc+CtK2wQ7yd2X8bEn10yyl8dUi1SrtN9CYBeTVripJnJHQUe?=
 =?us-ascii?Q?gOCVoDRrTHQrE5AO9ztq9YJzQeKZGTZ3qQdjeWWalfBJBVz8Ov5a9YQQwW1T?=
 =?us-ascii?Q?wKJXnFcaCYGOfDTRzaHcJw8el0QdzmX7/u9MgJtIe8TBSOa+Rgrmv5c+o/2j?=
 =?us-ascii?Q?ZtYqs7xze3Qm0QCLqmwJh8fslaJvli+Ej75yMBVmOsm03PVIVaYAqUpao/GW?=
 =?us-ascii?Q?rujMHXdHMLcopWsjEiOLe45QOoWrV2h3uokfRbcdX1PbbYVXw1iUQP2nxhgE?=
 =?us-ascii?Q?DnklFGMqMm7uBrqMFfy8JFS23eU/guVef7WG98GXxz6ql6Lt6bz+ZwEjKy5R?=
 =?us-ascii?Q?CEfNbp1xXxclWNz55AphzF/brTVHS4oyY23pkuYO8gNsNrQ5izQQ1MCmhRI7?=
 =?us-ascii?Q?SIpVEoXgEiSTXIRFGb2AmZxHimU2KgjGgdjhpP5xlfWwxcv3zLjH5Qy6wwi0?=
 =?us-ascii?Q?T2GwferItyMuwH5KALxtDvMo9QIqWinYoENBDCGkffhsHS2qbZM46zyg3vha?=
 =?us-ascii?Q?fZp4kQcpWHyafaZfqli+3iOEl7u/FIc+bVACUEMu+sbdELC2ayqPkIWMyot+?=
 =?us-ascii?Q?CCB+CvP80NS8e9NZZn4avZZJTn9OzL39U0qQ2QGKp+/Y43Mtap3EwQ9eEs/1?=
 =?us-ascii?Q?Cr2+6MSkilKqaC/miVhZIRzx1x2fW99zV5aWRZeGkDUauqj5+HqVsLVdLcGt?=
 =?us-ascii?Q?317Dt1lYtVd0Kb6Fp6hQgq6mdoYy7UQuZmU09ss+dUddYtCgZBR+Q+/TRct5?=
 =?us-ascii?Q?DFj7+zwktBqd4FtHC60R6IANDKuu4M2SE37uxSuJACYsX57MJb/sW4rD1oYS?=
 =?us-ascii?Q?8sBhCQ05WHltmIKbKmfn413Z2GYGKGDcfIK+/Xv6WgL4JNjluZXTvwh+O81k?=
 =?us-ascii?Q?4yAm3SRSwtAa25h/zkQNkP2XZrb3TGgsk8DOgILCKvuyhSOpAnx16PAomNJd?=
 =?us-ascii?Q?pj8twBToFQIEywUt8Pubmk8hjQWg0WGRdKbqbp/e/SgN0Srt?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: jALdjvROozEFsgTjMkuGrBBtJ+ZW1qzrVB7jN3SoS44ovBvv42sVRFWGC+Hs22uvgbYrR+gzIoo5GwybO5G3O+yed+VJXO3s1Y/YfDtWKZbk/5WrWGCgyA9AVnGhq20UBgmABJaN4oHYTeyfzFJhMFOIRcWSsJFHP0HGa6q4rUSeUN3agDhFsTgAkhCOKvSMC9tv3S+05L0QgdmTmV6761+lRFyCd5DqyNUAT/r77RRzqMbkr5Y0I2h2hNGUyB/4eEakE8Q7KMF5qsQNyzRQclUFOwGIfqkRdu/0bLuWmrBG9Hq8i5oDVrKnGtJrADdmsDgvQO6DJWPr3GWJTrRvJA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cac5a1a-e5f3-42bb-ca98-08ded0fbbcc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 07:47:55.5427 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M9Is1DVWyo0YNJMa3XbBSle6c55dtkzaN0JYTFUPVF9h8cr/QsvqPyIjvt2kPGiOC7beA26fw/sR2YEATKF88w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8829
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782200882; x=1813736882;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zJv6e+1elYSFpGXgEWOieHZRGUxvqduUX1vZ/GKUOeU=;
 b=c2x+z01hXMEozn1zsHZvnDeCSzB3UyE23ub0CGL2vovD5FDRrlYCMOEy
 245WDr7epF+xE7KLhf9ErbA18HmB97YAEnASurkDl1VI7CSyGuzWyPwmt
 vP/gDxzbGLpJtQExcxE+s+njXFweawfzhYaBo2yFZceWyWPHy6g3kdxXP
 qD11PspOhXIqMaU2R7i5ppjBirTEuRvo2wKfbz7y3H2KNb9uxE3XxuEnv
 FjUz5HEU2kc27UbhwO0reseJSrfoKwP9HG0o03NgcVJCIPEG5Xocu6ssp
 gU+HrEuXRgH7lsFb8tuHEBuE0dZOC8hTxor7cAVTHj6ZO8Jo6a2o9xq7N
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c2x+z01h
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/4] ice: fix autoneg disable
 when link partner doesn't support AN
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:konrad.knitter@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,IA1PR11MB6241.namprd11.prod.outlook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 032316B4F81

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: 17 April 2026 12:00
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Knitter, Konrad <konrad.knitter@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 2/4] ice: fix autoneg disable w=
hen link partner doesn't support AN
>
> From: Konrad Knitter <konrad.knitter@intel.com>
>
> Disabling autonegotiation was silently ignored when autoneg had not yet c=
ompleted (ICE_AQ_AN_COMPLETED was not set), leaving the configuration uncha=
nged with no error. This could prevent link from forming if the link partne=
r requires non-autoneg mode.
>
> Extend the condition to also allow disabling autoneg when the link partne=
r reports no AN ability (ICE_AQ_LP_AN_ABILITY clear). Gate the ICE_AQ_LP_AN=
_ABILITY check on the link being up so that stale or zeroed an_info when li=
nk is down does not produce a false positive.
> Introduce the helper ice_autoneg_disable_allowed() to make the check expl=
icit.
>
> Fixes: f1a4a66d2310 ("ice: fix set pause param autoneg check")
> Signed-off-by: Konrad Knitter <konrad.knitter@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 26 ++++++++++++++++++--
> 1 file changed, 24 insertions(+), 2 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
