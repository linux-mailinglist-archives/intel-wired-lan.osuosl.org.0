Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7773ACB5773
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 11:12:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FCBF84E2D;
	Thu, 11 Dec 2025 10:12:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OXCDP1uSoBNG; Thu, 11 Dec 2025 10:12:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 428FC84E20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765447945;
	bh=btpcXdQGrnD/LhVTyi1vuaHk/8mSxLVAV527kVoz1+o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PaqUgMHET2N0sKa6Ni8go8dAooUCkGDrx90nXaQ1OHx4PCQ67EWqY4xwxB+ReUrv8
	 IhaIDGsnyyAoZIs2wKJSnL41++bh8dz821opMPK+Z/nQBg+SsYoJO1KYIVmuNCLg6T
	 dSofiwfmX0FpmV0BtR0xQMFAxQBDB9BEZnmq8ddoNMpTThOHAZsD9/2HsJ4G9+rhdC
	 XJTL+7MS7lrcyPJZNjWqFcZbsq1uD85tr68KTpmu14dCX+6PSYKAe2s/wMy9GIvUwF
	 yLJdaxnmYDHEQderwGXeFswHR7jfGXxhoDwSADCnQ/e4kNQ0kR8WimeHd9P8BFYN83
	 wW617YZADFugg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 428FC84E20;
	Thu, 11 Dec 2025 10:12:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 176ABE7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 10:12:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F19E2410A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 10:12:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f6DsB8eyo1sE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 10:12:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D24AB40D48
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D24AB40D48
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D24AB40D48
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 10:12:22 +0000 (UTC)
X-CSE-ConnectionGUID: +Vbz5n6zTLiJuJpb6WIkZg==
X-CSE-MsgGUID: jYOIVXehSjCHSlhUFxBDHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="67598704"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="67598704"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 02:12:22 -0800
X-CSE-ConnectionGUID: 8TBVNnw3SOqZzonxAKvmfA==
X-CSE-MsgGUID: gHy3lyTlSVaPh37dIdB+hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="196533350"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 02:12:23 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 02:12:21 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 02:12:21 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.1) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 02:12:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rOlPJAjqcmpQuMXOLOKAVGFuhTcmoGpt2JG6KVYIyEFY0MWHqA5bO4R+kvkRtLZC21pdqoX6erHHYpICwzqlMo3Ea+rP4PoRtp+oKnTs+iyhDWOEE10Yao/UP4jRZXnjitB6olyXMOe1dVjBY0kf2M707IQP9u5kjsNkQVbL3aKPrJNxBO4EStftyMfAHvaMFtH8Wgm14yAAPqSQsw7txwsTjgptEz99CWpsl1J+evYQ2DY+0BoIkNtyDRb0JYhWPPySZUZbtR61RcmiYeyXktR6W46Q3+9PDiN8PrRSnQzPVQUL8IX2genGjL57VqtGzdMxE40a1izCKufstjj+dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=btpcXdQGrnD/LhVTyi1vuaHk/8mSxLVAV527kVoz1+o=;
 b=nU3PYv4deOknxzGcYhqsLomZ5r2y/Msn128g3ke3yIJCQYJogZbZAeVhm1ANMq00lzIRf4SJZ9cNUojEk8T9y1x1rzloN6wm4aXuAj1EFRmqbIuM60iMPql//F/2dzMqLOZeDX3SN+RRJJpzu4H7ILARqboPdOCPneNGJ2DkwGcKBXcR9/s9gLru2rZUh0ueXivKPbxoM0vTpzfGqgQkxXU8y9X6nSzdxlcUvDLQCbnI8EwAJkhgfRQ60RalF66EvfJr+MD6uQ+XQ0Zisauvm7eV/5F8k9gUE8BpUxmCIR3EY5xg6PivV0kKI7sDkXtq/t72Iu0a+5F6W59EMm/Q3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB6351.namprd11.prod.outlook.com (2603:10b6:8:cc::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.7; Thu, 11 Dec
 2025 10:12:19 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.013; Thu, 11 Dec 2025
 10:12:19 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, "Wegrzyn, Stefan"
 <stefan.wegrzyn@intel.com>, Simon Horman <horms@kernel.org>, "Keller, Jacob
 E" <jacob.e.keller@intel.com>, "kohei@enjuk.org" <kohei@enjuk.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: don't initialize
 aci lock in ixgbe_recovery_probe()
Thread-Index: AQHcan8KQYUKbTC38EGfdIyFUpScwbUcN7hA
Date: Thu, 11 Dec 2025 10:12:19 +0000
Message-ID: <IA3PR11MB89864C5819FCA7B7E8A06DEFE5A1A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251211091636.57722-1-enjuk@amazon.com>
 <20251211091636.57722-3-enjuk@amazon.com>
In-Reply-To: <20251211091636.57722-3-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB6351:EE_
x-ms-office365-filtering-correlation-id: 317dccb4-60b5-4272-71e3-08de389dc4cb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?BSRV8MX1w+fk+YxPohULANjQgCbOby3WZO0U0htaEWnQE62uegPjxc4uowIo?=
 =?us-ascii?Q?0L0Cw6SwzbIZYQH+uGKWS711sSz6lhRQcqZGG52qPce7hcKs4k04OuouGJp+?=
 =?us-ascii?Q?aTE6vIiTjAaiZTACWnrCXz8o/FW+yhPX4v55FT8RzWKyjIT7G4todE3eNhvq?=
 =?us-ascii?Q?J24xZ8ukFt9AHxJzBWXsDt/7nsYUKPUKcMPRUNkxqAyzyR+AM1aIMzs8iuKW?=
 =?us-ascii?Q?hjd5W3CjjZCmuCZsJqOf8B5b0CX7B11thfMUtqIca8JE2MhhRd0BlCxNp7RY?=
 =?us-ascii?Q?/qck2Rmi5ERZhOZHnrlz65SrYkOOgMYHF1OPUbUkgQes/I5TFPef2cMx7C/4?=
 =?us-ascii?Q?4f+7kPo2MT1YVRm8gEFap9GPB7KULnxeQda2cMdUlkm1WwhQmijoKKKEP1s2?=
 =?us-ascii?Q?bLevPqeAjg89nVFIcEyfVX0UzvbQNyjxA2DqiX0SJTDMRX6hfXXt8+GANNzh?=
 =?us-ascii?Q?i+3nYeN+RFxixTIlbicz8acQH3VjsVLHI6kPXk7mI5wRcCtd226aGUkJsWez?=
 =?us-ascii?Q?G68n8WTnoqbOXKD0GxdaDKBYw0LTfBUO7ZalTslK6LmOws+fhG5DmRMZkf4I?=
 =?us-ascii?Q?Mah6ugox8su8r5yJGtzt3EDfY79rUDEezoxEMGko0DATGBaaCMFRDX3bZ07X?=
 =?us-ascii?Q?JLMvEw3rfgIi3LtJsbU23B9VMcUIQ9WD6NT8TXE/0pFxEU3p0TZZ1+20J7+2?=
 =?us-ascii?Q?5oaaQywDrxOxx8KfajTrGsPzI6f+8WRZur5ZlOfS55GIq3qXY4lQGEaA3jwI?=
 =?us-ascii?Q?ME7kmjrOLAy1GouM3QRq/R1Rq8SQ32fbaSvHR6V0V7ooWBSAPs5dDrWWMujC?=
 =?us-ascii?Q?6/z4NARdUL+EFUHbjEFPkOXAzq1m752tijoPaiMKtfBohOFKvxxYHL+KFN0A?=
 =?us-ascii?Q?fpJcJ43J+KVLG9CWZWvGqy+Fs28oBZdn0rJaI3/MqpdP8c62UQO1Y/iC3uOZ?=
 =?us-ascii?Q?VvOWTB1FeeCX10E9+AitNuV7VDQMPvFsLyVuOV1y8n2nps6KSCDRho/NZUG+?=
 =?us-ascii?Q?mksBwck81b1+nezR1uJVvYNSYLq7dotgH8jN+7MufwjaAZoynzymVnhpQdKM?=
 =?us-ascii?Q?bPlN2TNHcBcjM92MUi4EU3bLd796SY6umaFMWDzCakFSbMT2K27eXYkaMWzd?=
 =?us-ascii?Q?qITdOGcacwJCcALdiqD6rqwOfseAuibVTyaq6owCofU3voF5bjIxGo1lPqNF?=
 =?us-ascii?Q?PdmlfWQjp6FNH662/ExQyziPoS92nWkko3KsOwO7Om/RmrxvTY5101+Dp01H?=
 =?us-ascii?Q?cIXV74+3NJiFcNzj96XPkxrAU7Be4Zx7XZXuX0WDSsM5zFAeCj3B7Av0o7rU?=
 =?us-ascii?Q?ScL7b0+PgA9rd8tLejQhyPLA+796h4Nl8lWoS/XI6u4Ec+oFOxRm6UeKQ55q?=
 =?us-ascii?Q?39ThwMZMY9t1/44XmbwQjOEeueuFtwaZXQ4fV+UpCgjlnkq62+4TC9uG9ioM?=
 =?us-ascii?Q?vnfAplQifFkVLO5joZw5UnYVjoLWbX4h1MCMShqBkEYJm0IL2DlWH301jvzf?=
 =?us-ascii?Q?Prffjl4KjcTUSim5gR2QoiNAV77MkZTprym8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?riMa3ku5nAqQsH8XsNn//JlUDjNYACCVhSPGpqdq1beztRtUTUcqq1kvXOe+?=
 =?us-ascii?Q?eWlHBC7tphlPiaNq+keIVhObiul51Uuyku1iD6kuU/1RyfBmoYB8sPvFviip?=
 =?us-ascii?Q?FPkv7L21ynndgA4u0MPufX7pe75nMIYkjT3GgM9oUpVumAJxUEd4laxlvfA8?=
 =?us-ascii?Q?SY6nBTKMyDwo9Fhi5q6HnMIFrDeX6CKOW7eQc4v6pZjPEmneY6BOwVbBjzXd?=
 =?us-ascii?Q?EjnJXK7dLvY17zIPwVFHtCicmoFKMxchN+w2lykMwcFDShslmaKgO9aeDqXg?=
 =?us-ascii?Q?q5qs0qx5LA8n5OIokuVx28drEVxVhL78iiHBKNWD6gL2h8t+nu5NqbacDS0V?=
 =?us-ascii?Q?YcNVTKBQ33VOmIkgALeIDT9aAjN87OJs2L4kXvxMQ71lnG35s6KA7O6ViddW?=
 =?us-ascii?Q?11eMdLohWvqvOLBLMT+gTydFt5VMWoa3reddD7b1o3KWB7ZY/O10quMFFx7u?=
 =?us-ascii?Q?Ecftkll+fU5tkn5LjPNoIVQ0G450oVumt8zmQ/jfI7P1GNi+C945KzDAiEbn?=
 =?us-ascii?Q?dK+X72tyNoomgvqKLRoTYsg5sCnTyy+ezACVdsBy1tIaYI2yhQzBaQ255NAU?=
 =?us-ascii?Q?EsftgJFFM61gAG0O902XM8csubSyrl3R7kJRISw1iWPvVwJxmh2N2vogSoLu?=
 =?us-ascii?Q?kOQR03ggxslb7dv9knyeG4K++kKuESGVZko/l8XMMGsmSXdTWnMQYz3lVJsc?=
 =?us-ascii?Q?MhL0Gfnrxy7utJ/bVeEzexMWccGzM710wAowTNb0fHv13Tz127BKlsDfjLQ7?=
 =?us-ascii?Q?FLms6L6J3/KQlGIOBc1IaqJ5JlCYRsaQr7Rm9/v5Ky0s7T69yK2U9CFZ1Tfj?=
 =?us-ascii?Q?F6BOapkTFWPza+IemlTnh1QYyk9ngyLAP6SrnkjHcdC4cfniN6xEVVam3CNk?=
 =?us-ascii?Q?likhRNvYVkr1EAGRf5X56QO0Wrdi0jlr6Rt1CCI9Th5eNigzmBLipgDFuI4w?=
 =?us-ascii?Q?Q9VDgWkV4MPtR9PLluV9uIBR6CMwyC0FIiEbSD0HL01TzVkr8zO5NAMn4ymU?=
 =?us-ascii?Q?E+XcvAaYgAAOFcY3F0Jv/MEwsqhz+7kRsi7SbfVyl409/kPrRGb68btS2xGZ?=
 =?us-ascii?Q?U7daS5kHNJCJr7D0zjUn1O3+SIMiqBMz6jS2K7BqPZkd2cC7Det3UoiMDjFO?=
 =?us-ascii?Q?zjb19ZBvQWznnjNvGIpehxwM+Q93FKmV2oiI0+1CTGDrPPaFEP5GK8iLQzLi?=
 =?us-ascii?Q?GV/x2+KKA5Ro9Ga0lrnwQLRDQC2JT+K7Mdcm2zdcc9DuCvYwX4cU0FYbEArz?=
 =?us-ascii?Q?rLZsoVShoVKCLhxLYPbNUsCWHVsn41fmLN2NASqj3gntw7TP+65FIUGSIj3d?=
 =?us-ascii?Q?AYYn6ZJoi9l7/WE69ztrulhNadX6jt6JulqHQN7/uKUoqcXx6Ac+UC3TEL1p?=
 =?us-ascii?Q?dPAJsDNnifC+3rw9Xyx9QEtVB/1ePf+QEyC9Hnx0dDEnADidyLm45ZNgdPxX?=
 =?us-ascii?Q?jduQeeKxMPooyXHBIRbqWm1SHd5Gg10/PTq6rbpUqspPuQ6UTOLsjSoyKdjM?=
 =?us-ascii?Q?UhOlnD3iJheiLx6RRgfW5VlhvaxaYY4N5EhbiOtFFF2xEQIKvyw+0XHX8TGL?=
 =?us-ascii?Q?JsINKek3hC9pMOfZavbrZbPweRglFCsWfHgQT4truTmXw+oaG1rKuwj1CHCk?=
 =?us-ascii?Q?4w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 317dccb4-60b5-4272-71e3-08de389dc4cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2025 10:12:19.5682 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bWkMfpnZT+inaDo9HGAqhgZhbkznQyObwkDvCPxx8NKIWWQJO2liZ94NinfoOSLMm8VvawUQQHWRriiN8+NFtLNHhGihGVbRmsv6FzQXJKA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6351
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765447943; x=1796983943;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hbdt8GETWyJWosZCqslWSerEFmStYm58eaY4NoDWBN8=;
 b=UZXH7pI+6tcDM4g35cQ7qDVUS1OBk1npmC4wF5CAMeczVd2VzNHPEHJC
 07cBefsse8NeK8cR7Ukuqn+MvbtKriGH5anwgUFm2AXH75kiF6oIjga+D
 6XAnoqZZLoWFb+6J/tqIznyFOfC4bfJwKY8ads1u5HlYsyx73GgltJPKx
 MGOX5/5wAjoeXzgRBNVk+ZOfuRpygp0iyC+AYB/5RkPKWp+gz4jxuN0+v
 4xOsWJCfwKbC/AxoZNQDpQDibPvMXjIXhiX3Oku9hNJWvZHuamJUJywHB
 +wSqpNlcx7WsElZ6h6QM9Yh/anGUlvKs+cA2Lk/rNNw4jEshZ6dg2yjuq
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UZXH7pI+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: don't
 initialize aci lock in ixgbe_recovery_probe()
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kohei Enju
> Sent: Thursday, December 11, 2025 10:16 AM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>; Wegrzyn, Stefan
> <stefan.wegrzyn@intel.com>; Simon Horman <horms@kernel.org>; Keller,
> Jacob E <jacob.e.keller@intel.com>; kohei@enjuk.org; Kohei Enju
> <enjuk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: don't
> initialize aci lock in ixgbe_recovery_probe()
>=20
> hw->aci.lock is already initialized in ixgbe_sw_init(), so
> ixgbe_recovery_probe() doesn't need to initialize the lock. This
You claim that ixgbe_sw_init() initializes hw->aci.lock but don't provide e=
vidence(s).
Can you?


> function is also not responsible for destroying the lock on failures.
>=20
> Additionally, change the name of label in accordance with this change.
>=20
> Fixes: 29cb3b8d95c7 ("ixgbe: add E610 implementation of FW recovery
> mode")
> Reported-by: Simon Horman <horms@kernel.org>
> Closes: https://lore.kernel.org/intel-wired-lan/aTcFhoH-z2btEKT-
> @horms.kernel.org/
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 85023bb4e5a5..b5de8a218424 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -11476,10 +11476,9 @@ static int ixgbe_recovery_probe(struct
> ixgbe_adapter *adapter)
>  		return err;
>=20
>  	ixgbe_get_hw_control(adapter);
> -	mutex_init(&hw->aci.lock);
>  	err =3D ixgbe_get_flash_data(&adapter->hw);
>  	if (err)
> -		goto shutdown_aci;
> +		goto err_release_hw_control;
>=20
>  	timer_setup(&adapter->service_timer, ixgbe_service_timer, 0);
>  	INIT_WORK(&adapter->service_task, ixgbe_recovery_service_task);
> @@ -11502,8 +11501,7 @@ static int ixgbe_recovery_probe(struct
> ixgbe_adapter *adapter)
>  	devl_unlock(adapter->devlink);
>=20
>  	return 0;
> -shutdown_aci:
> -	mutex_destroy(&adapter->hw.aci.lock);
> +err_release_hw_control:
>  	ixgbe_release_hw_control(adapter);
>  	return err;
>  }
> --
> 2.52.0

