Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9C7B0D8F4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 14:07:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEABB6F536;
	Tue, 22 Jul 2025 12:07:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id piXAXm4-yNmO; Tue, 22 Jul 2025 12:07:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37A896F54A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753186023;
	bh=JyUKuo+rgeG7CPLJzQbGuxxTcu51yPoCs5lWjmPRB3I=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uQ5lrgHXCBP47ezA89fH5Z2FuWn/WMnq6C6Wj90c86qeF319gFolxGm+tk/a3RAc3
	 g5YCLeSw0QnC2aS3/K+oWbaiBVgMNa9rwFydfrD2sL1ht9syHjb5TDyfT6Soxy6O0Z
	 lrwgKvEBwuunU+l4DgLAGv6lgqFUUvmNBSgr8D6PMd6HJkYJqpZAknVi9gA7aOI/9y
	 fZArFY+SqDPUtFfBPYrwJjF1cG35r++VK7WSeSPiJ+b/gBrJMNeAOoQPzqtzHKUDSF
	 Dz8653JlD1bCqN2+xcQtzI8Hfr6EJF+lQ09O4oOwuMSY0B28QF/9HPDhwXEn/qE0Nk
	 jgbJ2//Bn2xJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37A896F54A;
	Tue, 22 Jul 2025 12:07:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 410AC127
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 12:07:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 328D04058B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 12:07:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NlHPK9GSILa5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 12:07:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 764A7400AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 764A7400AA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 764A7400AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 12:06:59 +0000 (UTC)
X-CSE-ConnectionGUID: KBbCiQX1TDypbwUsB11Cfw==
X-CSE-MsgGUID: vNqtTQveQtCrDDmjn2AavQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="55581217"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="55581217"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:06:59 -0700
X-CSE-ConnectionGUID: xgcfb6tqTyaKhIGYNek6cA==
X-CSE-MsgGUID: BGKZNfCKRhCOsM97ZnMhrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="159851948"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 05:06:59 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 05:06:58 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 05:06:58 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.71)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 05:06:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P4H6B/n7lolpPaccN3qYY16ofngT3jXgypP/mdGYdiKXHQrBCr72YnuHLVxTmTWZ4YoFFKa+VFqpCC8RAtzRzBid10wxjwe2peHyYb2kbj7ugOxTyeuwFOCYnWR1ZBUBFdyxZ2HSYkVNdvQ5782oRCUMEOzglucmKdfiIYAgAqgApZ+3B67gYbcwvlvm4r/V56DdyMYjr6csld2pJ48uzrN2i9/k8iXt4+P/G/rTRnbtc54vZMlgchzTklgRSzZLIAeWcsq8wXrucIkMEbQKfTRvtsXvQ/GWl6I2a+Q5TIv/gSGoWyMnsSdRyWFciRz/aKEX3ArMP5uyjxC40cr92w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JyUKuo+rgeG7CPLJzQbGuxxTcu51yPoCs5lWjmPRB3I=;
 b=tcBW7uT1U67mv8qf2wnHNupwFl9fmLzfvjmINZCqPoMm1aMF4/+ecHe2TBaJLfjF0peho10UwEMZNega20ZODAbRBGSeMHzGd/PwW5Ta1hJA++r5SLprz3uLmCT3/HMg5dPLQzmnErHhOWRKQe7Oq5Kx+M+ddtLzU/UNBgdTXAj4Es3Ezu+r8owG58iwzBuxdUzF3gH/Trc1igrwb97LfCkJ1F+7CMpH2OikmT5jJAHGilz883MkJhNJCr/ueyusbX17IDM6k4tzf5a72qh8hA4KnT4k6ttUxEHXmmFnBZLgihMLtBEzEsURZedym6NwxsThhGYz1AzLz4mEc/jAdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA1PR11MB7869.namprd11.prod.outlook.com (2603:10b6:208:3f6::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Tue, 22 Jul
 2025 12:06:56 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.037; Tue, 22 Jul 2025
 12:06:55 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "dawid.osuchowski@linux.intel.com"
 <dawid.osuchowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 03/15] ice: drop
 ice_pf_fwlog_update_module()
Thread-Index: AQHb+vjO3nBdSJ2qEkmPDFuTaBIHDLQ+DC0A
Date: Tue, 22 Jul 2025 12:06:55 +0000
Message-ID: <IA3PR11MB8986F5ECA39B7F65A44321E2E55CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
 <20250722104600.10141-4-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250722104600.10141-4-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA1PR11MB7869:EE_
x-ms-office365-filtering-correlation-id: 6466144a-4ff4-4a8c-86ad-08ddc91840c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?RDrrLux64bSOhkz9xtNEK71qlGPaeum4S2JjaXgvFoiVG3b4Atci4L4ekeQf?=
 =?us-ascii?Q?1pb/Yfz+x1d1q+iZRk1Arx5DMv+D20n9sVh5qKEYCXRBSorHsiT6sh3lF3Z2?=
 =?us-ascii?Q?7WSPEUXYCo33RXr3ZWuKouwMPiobuQt1VpSscjKeNEine24Qg2R5J3W8BeN4?=
 =?us-ascii?Q?3k6L2mJF+3k+mmfY8VMpSAK2QG9Fov/8vN5IxagZhyvvcBdWaqKQsNp871hG?=
 =?us-ascii?Q?KKior0iypK34y8bFoK35cZhzgE/OtEw0Oa34XtBdRw/LhSpZHHLV5uJOth2J?=
 =?us-ascii?Q?z08DlGyT1zYxpXIoel8FTMtbXm/WUpb+Xnfg3lZgk4bVa7/UNDHKBcE/7oL4?=
 =?us-ascii?Q?TYoDuPL9u2/tppYw4BXsHj23ShU9DsI3d5no/2NZvp6tbYDCG0uPmEeBEUZT?=
 =?us-ascii?Q?ToOoXZ1Ig96qPr0TnEObhZFTV++pC/yvJq96NBoZthEp1g5Yw3BBjpi4GqZx?=
 =?us-ascii?Q?5nXcPdtA46i6F59ngsEhQyrY5oFFBdGG2vLNwrcuD1pPLBa1w2cQMYHppAsW?=
 =?us-ascii?Q?ss6UWqeFH4xxaB13TC3Alw0c8f+vYakdwj7ViTLCb8pC4jSWM7ObvZEdWj+K?=
 =?us-ascii?Q?92kCJhpg28OaFlMSpJJ4NtyuKiltA7uSqhrxppDT61j+FLwB0pK9t0VBYtmY?=
 =?us-ascii?Q?Lf1q9z1XifZnSGQd0C6U9DZSLx3s+h4tRFT6bzEHO335kdEw1om1wZgRmU+X?=
 =?us-ascii?Q?Rb4yxIFcbLbPtIIc2wCwHGIsyV+/TteYYFYxDnt1cAAJqIBrwrVz2rx13XTH?=
 =?us-ascii?Q?3ojkhsQe1XvDUbP6ZnCL/jZlmO7E47p/WsLo9OUEk2Fgqi8HDXytNL8p+7bV?=
 =?us-ascii?Q?5gksxzWbcSiC1eQQFuAFZSrZ6Sa1ho8BB0Pha8sytUv0jwWeS0GnRwRLkinz?=
 =?us-ascii?Q?S+IwwZ6YQzDTbAL74YAnwNcTZVFvoj6lBV6Ow1rtPb5q2EGpWX3FMBPgogd3?=
 =?us-ascii?Q?iBZJy3gIc+tATwOcisYSeAoMkMTp+3oG/V1FK3uSqC/Pmb1kuz5VoB31RqQ8?=
 =?us-ascii?Q?jKm355XQFZhF7+U2umVD3Le8A1lDKWURbjjIPvv3gdl5yZcs5su2pdOjc6wf?=
 =?us-ascii?Q?oM6c2Curby6+5CzaMBUv4uWu4b0I5NGY3+RK5HcqMvJmvCKu2zY9/wu7JV7H?=
 =?us-ascii?Q?METC4Zt7NDrRWD7nJr3XAWnCOanlvq/5qngB7Kc8VwQUdzQJQQgQuHH8Ksjb?=
 =?us-ascii?Q?2+GbX5Dtay2fRtfVH1TMZ8T3GxnJIm+9yUcyy/87il5UMA4d3awHvDaN5gb1?=
 =?us-ascii?Q?pBNJwfeLw9o3GwhMk1BNGGzsYj45lsqVbNcigBOMslHVg2m6LwI/wiz9MOPP?=
 =?us-ascii?Q?9pwoilr1+97VDOmUv6ZBQ2pi/262Gui9qRUWw0OuFQT63XF2gfwwCS47hy6W?=
 =?us-ascii?Q?CmsbNbMOSIec4GvnGoRZ+yV2Uyd++skTlHYYx4V9GLa5wrgv6CqgjWkSTyTX?=
 =?us-ascii?Q?Io99wWJUADk+koZCY/eh4JT6gWOJFUOB+Blap5Ea6GjlEJJdmOB3Fg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XlZ8sMSUqZmyezAKCzgh2fNTTWLELyPmWWpG7wBWsAcUr6i1iZALpxvFkwdK?=
 =?us-ascii?Q?t1cExTxookNVrB5+PZkz6PWSR5lsPgzoWsdq6Uk/2/TtPZU5Eh5TznN4BbUe?=
 =?us-ascii?Q?xaenaaABhPFXpNOzQSKa1v1QN30NOd7a32MTWnAj/1u9rGttLXV1fQ1K5itK?=
 =?us-ascii?Q?X4fMClvcOrbOdNwaDsQ7gPbHEjetm2o9ux2rDrFuNBvcqGEESev+FWAVIqds?=
 =?us-ascii?Q?abaCOywDPkxQkbGm4qb+Pgu9Ej+DVbJD7RgIz4Dune4stHpWs016TVv9vsfO?=
 =?us-ascii?Q?3xgbFBVVv7fYyoZ0DoRzTMCDs9D1Uum0PHif1KaqC3ArW4rRAnZoEZgI/has?=
 =?us-ascii?Q?kB4XV8Si7R+XyZjEmIhMLjB7GkXREUZoVDjtB6zHlaVsRB3XyBtdxrm3WzYZ?=
 =?us-ascii?Q?eD0MFWwmwuijY2AovZY+AgiHTYwZuYFd+8eHYxpRrH3wePINqV5i8sX6O9bY?=
 =?us-ascii?Q?XQZAhsI3Lo82Y3JzGX5KhL7yRDdr8lx1RhFokTFvN4ZfT9l8KzrHuc0UCgIK?=
 =?us-ascii?Q?D+naqt1EL0x4aEvxLXA350E9seB/pooEr2DZWncuxpW1++feZiA/u2bGsUCY?=
 =?us-ascii?Q?ctlfbWWuCHIUUO3Go7v6cc+fBXwIup6JLDLaHRnA0ZItMAzLhqaa1l502UPn?=
 =?us-ascii?Q?luKTn4nLFGxBa6pnhg34BIspYfkVIBav/ed4qlwIqf3z+/7hAYjRcjVtiG66?=
 =?us-ascii?Q?/jPf5f2Tvc9NsKL62BVddGalMqIjPT3xBNyWorht+Gxu9CUr7dOIddTTykbQ?=
 =?us-ascii?Q?+qSX5crbqhRq/yHPz4lWTbNXNnwXckG7YjzUdXrZbei6E4zrD3jNYLhNfmLj?=
 =?us-ascii?Q?7wZQz0qwMZtupVQNwSF3ypWNc2nczEaCsLdFXBSl3i0OZrf+dIthWaaj7UIB?=
 =?us-ascii?Q?MBC6N6IPobQq6GXBT/+O29Smj2KZiM6ujNx4kkUJmgjxPWk2pm1S0y1aYwux?=
 =?us-ascii?Q?yR7L3v/xJEASBaOwR099pHWBIF3zYyzl8r6YoHViu8FRMdMP2J9RPe2rYNeu?=
 =?us-ascii?Q?0FnFOp0uG5/sfsJd6GJCjaPoxf4XyG2kuUDiJkZfqxuiveHwW5tR+GsHU7rA?=
 =?us-ascii?Q?17wIllpr11l3aj0YYUuU62v0CSwYzecvsmuhLL1edmiJjRM0JbVPotKcANU9?=
 =?us-ascii?Q?YOydc5BmwwOXpagj6iv0opwc7wv+GlKBY5+1au0jCcz8MlyFAxGrgUTYgcxX?=
 =?us-ascii?Q?KP43LJR+HsPbCVtlX4tjCAxl/hPy2008QdZyFSYK2MYN4rsrOFjhEswY55KX?=
 =?us-ascii?Q?DNoOhtIr1F3czXzxfE7cO1yDavEfosXA2XADgKy8SWrQa9oR3tU4WIAHQfdR?=
 =?us-ascii?Q?X8iJr5u1PcN3CSLyynDTbnnnTjvdsUXIqF4s+eqa7kWuaqafqjyGzZHJED8I?=
 =?us-ascii?Q?6ZGosfaVGDNHew919nk4TnxNXTM4OcZdEpw28EZUYXWqLNI4S8xsp2y15cQq?=
 =?us-ascii?Q?XnraxE77A5JZzQzpEnma9sfg7V5JDlQQjTI0/SQ5iBl0Ou4T8SQUHwKy1TCD?=
 =?us-ascii?Q?ZG684tTr7Mo2S1PFv7uxCLMdmZcYZNmV4jy5cc4eJzqEQpti234S5xe1t6TS?=
 =?us-ascii?Q?YGsE2FkmvxpbPl1ov+u5gWiXUEdNsgtrwrfZZuP/pNW9hcum3DVtoymdURIj?=
 =?us-ascii?Q?sA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6466144a-4ff4-4a8c-86ad-08ddc91840c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2025 12:06:55.8971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I8bNV4yC7z6iR9K28YS1nNQ4I1PU8ycjU383MJsm4k1cSrVYtC0lS8+4siWjHbyNtE/1oS5ow5sYIHQzjMp0d/xlGx8wkcwJ4Mc6kgjW6J8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7869
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753186021; x=1784722021;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JyUKuo+rgeG7CPLJzQbGuxxTcu51yPoCs5lWjmPRB3I=;
 b=UNBuyfZ83MFycBvgYvw2rwko1HdOwV0cSozcvJvsVJegn0ww69Ad944Y
 jJ4YT8A04hgp1AFul5REmqjdmIcsOcRx5JPYPojockxekd4rixaolZgAz
 eDo2QB/D8BX+qhc9Q12zar3q98VCHXoIZMwovNRuGOYlGCfxjvTsyq/uR
 nrttQ/Jbr4au0cCUbfssgxhIuuw3ByPa1x2ms1QGYWdhpDiLA6a0F3l74
 BB19H50aaWwxIlk1hhp7wkAzNvpaHeu4JYq1yUhdxy/ytn7/SMimVLPp/
 pAaldgvUOU31RD9EOVGSjxCfyb+D++9fBiM15n54WL/iAoHVa3y8HIGXE
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UNBuyfZ8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 03/15] ice: drop
 ice_pf_fwlog_update_module()
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
> Of Michal Swiatkowski
> Sent: Tuesday, July 22, 2025 12:46 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; dawid.osuchowski@linux.intel.com;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Zaremba,
> Larysa <larysa.zaremba@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 03/15] ice: drop
> ice_pf_fwlog_update_module()
>=20
> Any other access to fwlog_cfg isn't done through a function. Follow
> scheme that is used to access other fwlog_cfg elements from debugfs
> and write to the log_level directly.
>=20
> ice_pf_fwlog_update_module() is called only twice (from one function).
> Remove it.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
