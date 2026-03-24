Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPbSFEphwmmecAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 11:02:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D61AC3061F8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 11:02:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D62440A95;
	Tue, 24 Mar 2026 10:02:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MhOE-M_UNFEv; Tue, 24 Mar 2026 10:02:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF55240AB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774346564;
	bh=3EYXemL9tqIeGAk7SbtFn3Z5dR9DmqhXMsIA2hYbPqE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=moo8YtbJ/gGYaHhdOLLnBTe7wVqb5czg12c/n5CzthaKF7cuL1eJIbFNKaUTNXmvB
	 SyZZmso3uKaLlLEEfKQ9AZp8eZeA4Ks36trRFtheh8ZVlcjAWctTZq/DUiFfmTzS9a
	 TJA3Ltx2+AqLV60jh4rUhDFRM71orRAIlKdo3byEQM1KOCaLFogSgUWU/pHhh8Upe6
	 H+FjUJlPZCi+nFCfMMHz9NOKHVirahkQFuqoQkIZcD7xjLuIZAGk4chKvfmx3I2JW0
	 8lSmSz8qpA4URT1tg5Q/GSh6uVWYOMcVzdJeT4NYOwAOStSJTKELN/r61j7fTU+BaS
	 G6+ch77pV29jQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF55240AB5;
	Tue, 24 Mar 2026 10:02:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 28030353
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 10:02:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1947540A92
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 10:02:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id agTNeBYl0Daz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 10:02:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6053840A8F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6053840A8F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6053840A8F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 10:02:39 +0000 (UTC)
X-CSE-ConnectionGUID: EFC/DgU+TmSO3D5bROO42w==
X-CSE-MsgGUID: 84UlLhpnSBuDpP/J6ej6LQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="75071053"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="75071053"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 03:02:39 -0700
X-CSE-ConnectionGUID: q8YJLdJpR1q7Yj+F1XMLNQ==
X-CSE-MsgGUID: 77ZzVOVgRfqeKJf2/0Khkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="219873173"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 03:02:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 03:02:38 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 03:02:38 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.56) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 03:02:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lDEUzudsAOcGlTZrnEvJpvXU/NfmQieEzBnPJTbU5H27VirM4bmIIvZ1vlTCkWgcj+IXrFjw9o5Cm0OvHqbgEDFMEoEAfVduNeSq6Hoe0uRVnLbz0JXGu16xeuZ1YqKE+62H5AsKnHiPMFQ1u1TbeAYauVLmVv3Ba7kTtmKjCRdwK0tqUUTr/cOldsKhkt1o2CYVYQ8/fpW7kDjsLYdeTjz/cYzDQtVUnvWhta1LWDVh8gKDK83+AcOcQ1IXpCESic/jnFOqwEMuXiJD2sQy/XsXk9NQzYYk+QH26t72WePOH6VyyQa4ETHd2jytVojGFqf55DlViel6Tv5Y7/KAvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3EYXemL9tqIeGAk7SbtFn3Z5dR9DmqhXMsIA2hYbPqE=;
 b=d6km2xGuSW1sxH5418+7QW/d3+PTfwejLKttDZlifqP6FLsdbk5wD6h6s+tsmiR00I7blIEBG63bqzlij6/s0JGSHPPOToXp9MGdoo0W1zSbyaiIfg8BqAliBjK7g6Dx0CFKVziMmQvaWEkch9ge2EO6uFGTOkt9ioWaGlOYP/CIe9bJQ7XdEMyipTmQ7yEDDJ0Jy8IIwhjKqrs+lTKOsxPGD+odSAz4NxU3fWO2bPvd+vDYtlRJZIyWSQDpac2F8SM3E1vEPGwZR10eaBeiN1OwFUJIBI5arIZhVYl33sRgCuBeCSs3k4jN81TjlBM9pKPZLbqHqlw+0l/8tGULYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by MN2PR11MB4632.namprd11.prod.outlook.com (2603:10b6:208:24f::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Tue, 24 Mar
 2026 10:02:34 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9745.019; Tue, 24 Mar 2026
 10:02:34 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: set max queues in
 alloc_etherdev_mqs()
Thread-Index: AQHcpMfxlptbsEK260mT9aHnOCvMdbW9nPLA
Date: Tue, 24 Mar 2026 10:02:34 +0000
Message-ID: <IA1PR11MB624127E7CE0AE47C88796BDD8B48A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260223125157.819135-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20260223125157.819135-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|MN2PR11MB4632:EE_
x-ms-office365-filtering-correlation-id: 21601ac9-80c0-4534-7128-08de898c789c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003|38070700021;
x-microsoft-antispam-message-info: sd9jUMflJmkG7PMzgciNLsNkjvJkVOKRl9YXiS9t2a2Wi4U/KX89FZ+/MgtWnD8TH2nBAhc1VURo7EJlcFutoN59AjkV/E4vyRDC06eTXlwRgOGBWLVXXJ2VqKeJ9kxufu8H/xeXw4yiC98iEa80dOnl8uc8qiL1qxPDwPoAZtxIXQljZakeFXn+Ij1Nu/7LpCtoe9taeKKxbfCdS22cEVD0nWiJofVESJE3efxHRMrlRdrbtfZSjaZZKD9zXrSuOdenbmEsPKGzauBJ/m6eR9ydn2ZLebGowra9s+e3/kiNCccu5DHqD+aR5k1V4Hp5Yt9cnxUanoyCmrM3eEV8Itge9HmkQQL3QjFy5KRVu/JXtU+o/7By5mbEHLce+3ZvFVFBcfAtkNWb8v8HuETXSnawFSaKSzU8tUpdcLohgSckVCWaonJ6dLJvzvDKFKmLfJJ6+bOYDDJkAga31NjOAsvTU8vyfaQ0r16FIVPh7VSadr0oC01VwSrXvuQMCzwaOOg7maZi5e4FAqGHD/BkKPvAr/xKFhxTwcSqsOwdoB8eCR6onbEG8KzUsut7x97kbAkeRx7W/npg4O5D+vNLg93KYFMXfw8shDy785ylXRk0VCDPlDAu0gIAyR5wUp+asMHgypgwL9LZYGTPCyfuKLDkZ6jGfKN7GtmFpRS4mLmiwJ7DWGTNn+GILDPRlTSF+yI10vPtztuaP7S5FdxcEjIcHRpgZRgOlTkJAtYsVUv7fEj8cU2VO5LBSzATgoDBMwUqdJGlJSdAU1RDhWSNprNjZXSjGEMWSehMYhPIwDc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sbwusjjMNE51aA2mvICn8zzMUB63eqNDAHJlbPdv6cXsuA/5wovoxtNU3lK5?=
 =?us-ascii?Q?4I7QQuxdew0++mztkzvUv71dK/CwR0S7sYJCjsczrQ2KK0QMsMb2FTcHUs6W?=
 =?us-ascii?Q?UUzGvXTWj6vduKNonbGh7CEnv6VKBotjRW+ToeeaCgSnkWQGHtWkDLNsJPMz?=
 =?us-ascii?Q?kzmzbCO2Uh9b2dOiebO/poB4Ce9j6pk1sV6QGB49O/VFsZXVb9YHcFxs8iXc?=
 =?us-ascii?Q?reUtRLDxyTyOSzI/AukQeFK2oZFNcI8ZfuEh8556vTU4g8QHE0HnP0fugQuE?=
 =?us-ascii?Q?MwFSY89dsTEYQmp1htDPUd+QPLEhztt10NpngbFvXidHHeO7bnPvgSoeChPM?=
 =?us-ascii?Q?FJ401InRYu7j2W5GYOL3cTXxJPdwXYHcL4QU0qSoxPrHO4tC5HQB+Z9i3Eyo?=
 =?us-ascii?Q?JNwvoMHKhpf43g0kHdxhEHC1Eqc9fNn24GE4mXAmCkIUJLLFFuRGg7pWIggc?=
 =?us-ascii?Q?WAuifvhZKtYqKgf310Ide857xJGdlc6mp1Q5N38Eipa/H11dy6GfYFXwCgLJ?=
 =?us-ascii?Q?XqeSCGOsyKqiFFcLNzQDmc8Sw5+vGqXV6324zlyuiIu6ds1Fwdli+rG/EDL7?=
 =?us-ascii?Q?Vn1bY4BcB6Z/DzTCr9O/SdrJ6leqPs02VIzTAOBHbl32U6E83uPWZLxskVgr?=
 =?us-ascii?Q?UMqGMJwZYY5ZX+aHrTmUT1Cd3IjKn8LED16pv/a90Qb6bZir24ZcQqkIpau7?=
 =?us-ascii?Q?hszgzueMTje/IDzRzFe7vPbZqOcg7x7CzcDpt3TztD+VZ3uASxIKnx20fvxk?=
 =?us-ascii?Q?1kjuDt1cwCKCdPRA0KK9xxYAs9zFG1WuHtOA9axMiGPN22QYrgDX/lIzDJC9?=
 =?us-ascii?Q?Q5Qf2Rt2rSFJUiBDIlgFYzG/xupBRbXmueuKFxgfXRpDqYuDBf21TM6Xl8bn?=
 =?us-ascii?Q?HEeF/OQWtY80GIxzeWKdu1ffgB0ilhGwL+uhDMjKyFxsVOMtCW7GQWkxknLU?=
 =?us-ascii?Q?A2lRPYIS5WSKwUM3jP5HY6yiAxU2epkZYlYXWNxgNtodxYIOQrq83d+oOw0e?=
 =?us-ascii?Q?SU9fU6PcYOvsIDqGNl3raa9p0bM9/z81lRHI61uoM/six8pibcMueoAqGivB?=
 =?us-ascii?Q?Jxn2eEIFnO/457otbqACLAeXA4ZVpmS3xSe6lf2OplxVatpooeM4Wc0pbUbH?=
 =?us-ascii?Q?6TYiVR7fcX3/JRoqxYIPBMu6F2ZRRKQXWA12gjiALVHfaV0bPakurnKZTB4q?=
 =?us-ascii?Q?pBHBOBWWTGYZimxIYO9kBZEOtkeCnksaZvuEYHT9s/MbHyY+3X0zz6XqTmmT?=
 =?us-ascii?Q?YayDxg+rgPm+s3fvroOd4USQkVZylDv9jpKDFz06gnAr++sW9owF6spbo8CT?=
 =?us-ascii?Q?gxaSyKzdVV6JZynSuXoW0HA0z9/pg/Q3tKM9noDFci2pu58HxxXxJIqK7vXW?=
 =?us-ascii?Q?zwTUP7J7vs1aDnEmNRjn+3GlZoSiPOUtd9/2j6jJ3AveRvv/WYItN3qg7OAe?=
 =?us-ascii?Q?qAhncwPWgROVAp29tJ26RwzFX8WjVVYSVDtyaf8lKHnVH9EUsHCHJpNSz/5q?=
 =?us-ascii?Q?eIqslRTS0WjHGd4XHw5Edh3eF5TAf26uWrakDYVBokOk/oYYuzE+RcKXz+ip?=
 =?us-ascii?Q?nhn5b/CrGFTNTa7/FPLH5K1WBp3saSFXedO2FYb93CouchRAqhOMFJUOfR3Y?=
 =?us-ascii?Q?IB7pWgl/OAot8kOB6BVG3wKrh3GfY2TYQm7h4O5giaNWX5+5jytPSQ99PzkP?=
 =?us-ascii?Q?gw87iuGtl0pUL/LS8qSjsR5HxGg55QKGruBXB+5W2t9imyfL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: CA6oIdN2b0IQGHo19OAeTLdkw9ZHTmjX9SauXStaKcvyc4p2ezNlUFqxB08YVUxL415JEuXSVyZpxfjwuBQ0cPxcZrqpSpTJ8ngR2jllFul9FrMQ5adsdseOOnq4/g/7vsSs3zNr0Lz8qtfkA6vKgsi6sZNpCLuxAWe/oRJCf964gFgjgsSeYZojCQvIuffK8jLrV7eMaTU4XZZskr6OoFJOCkCjokppnc4MK0CiIxzzArDWnlH346B7HXjvBrfSgjgAGAFJEgqelj5+h8fZhefXUsJoYmABJ3koYN4HScmBeC9fpogrbspfaOODHrFTPhjn2nzag4sZQVYacO6oFQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21601ac9-80c0-4534-7128-08de898c789c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 10:02:34.5014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dZMrdEvUcejiQSUCN6TGjMaduoyEbzSZoWT4W9viCq+sWWKtn5OrBrQymTv5iRsnk/cmciedsv1V7YfsQ/14bQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4632
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774346561; x=1805882561;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5Ov0OLHcfrEPHyW3fiKKsPFpYOfkqbeqUxPWUlTBOeE=;
 b=laOn+31FfsEOkT/LnGwa+t11aNRZqcVVNuXkzSOOJ1bgyyD8/DUTM4GJ
 Iq9dM5Sy56W94PDnaE9UlWF1PoH6MiEqz/Wrk3GaHJOu3zLj8KUyFDrvx
 /8T18SlV0tshVYN7ctPGmVmvEx2Zx9B69ZqJcuOUu/Opra4zphrnNibi1
 WHqET+x71OSvtNlf1ESfW0CzCDNEic2TBL7JcSJjfI2a4XHA8Gg/rAOQt
 B6wg/qGfWtlfkUW54dCFUYZ6AUAwC5w4TNX1WZZc4dh8edN99UxyjWpeC
 ez92ANOeDZnb6GyThaFaZ+aX4LPqzOlfgP2yKxYOAjtezz+mikBal58lc
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=laOn+31F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: set max queues in
 alloc_etherdev_mqs()
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,IA1PR11MB6241.namprd11.prod.outlook.com:mid,osuosl.org:dkim,osuosl.org:email]
X-Rspamd-Queue-Id: D61AC3061F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: 23 February 2026 18:22
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Michal Swiatkowski <michal.swiatkowski@linux.=
intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: set max queues in allo=
c_etherdev_mqs()
>
> When allocating netdevice using alloc_etherdev_mqs() the maximum supporte=
d queues number should be passed. The vsi->alloc_txq/rxq is storing current=
 number of queues, not the maximum ones.
>
> Use the same function for getting max Tx and Rx queues which is used duri=
ng ethtool -l call to set maximum number of queues during netdev allocation=
.
>
> Reproduction steps:
> $ethtool -l $pf # says current 16, max 64 $ethtool -S $pf # fine $ethtool=
 -L $pf combined 40 # crash
>
> [491187.472594] Call Trace:
> [491187.472829]  <TASK>
> [491187.473067]  netif_set_xps_queue+0x26/0x40 [491187.473305]  ice_vsi_c=
fg_txq+0x265/0x3d0 [ice] [491187.473619]  ice_vsi_cfg_lan_txqs+0x68/0xa0 [i=
ce] [491187.473918]  ice_vsi_cfg_lan+0x2b/0xa0 [ice] [491187.474202]  ice_v=
si_open+0x71/0x170 [ice] [491187.474484]  ice_vsi_recfg_qs+0x17f/0x230 [ice=
] [491187.474759]  > ? dev_get_min_mp_channel_count+0xab/0xd0
> [491187.474987]  ice_set_channels+0x185/0x3d0 [ice] [491187.475278]  ethn=
l_set_channels+0x26f/0x340
>
> Fixes: ee13aa1a2c5a ("ice: use netif_get_num_default_rss_queues()")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice.h         | 22 ++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 18 ----------------
> drivers/net/ethernet/intel/ice/ice_main.c    |  4 ++--
> 3 files changed, 24 insertions(+), 20 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
