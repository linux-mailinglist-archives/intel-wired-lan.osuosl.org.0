Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1BCBD89EC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Oct 2025 12:00:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C256D416EC;
	Tue, 14 Oct 2025 10:00:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HAQvO8HKGGtb; Tue, 14 Oct 2025 10:00:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2362B416ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760436029;
	bh=+I/ONCLfkSIBXDkCi+DhYJbGnic0zDiQsElNErVHUac=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MALFMiTFvz6n2QK2aVRJ+EiJBPeXFcIQat98zyImNPHxoDZey3/NxlnFJm+Zib2JE
	 M8uwMJojeC6+KGqlFCH6+2vq2jswdID8NnihaKvnMq2iT37jYOP50gJoqxC9UFQSi4
	 p3CnKzTzcQB7jEfnCyrgADkv0YqsJVHdE2NBQtVrlqyBW2W/Ew/VUHLCahxH9UNogf
	 HbzH4VnO7ATzqJu33pVe/srMk91rgczIseaKBlWtcnG/1auAcjTTEaPm4Of3fn2apF
	 IAoQifFbrhRT/4wipF1oyMpt2CA9qVHw9rWLUPOXHWpOL5Y6vl7iE2K7J/oV24cb8Q
	 nVn/x57aCryEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2362B416ED;
	Tue, 14 Oct 2025 10:00:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 10487294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 10:00:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0D350611BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 10:00:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CN6IivYd4FJn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Oct 2025 10:00:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B57B7611B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B57B7611B8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B57B7611B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 10:00:21 +0000 (UTC)
X-CSE-ConnectionGUID: 8Y07hwr4SzudvS1IvEWihw==
X-CSE-MsgGUID: jeAbndHzRN2Ll6WmLJmAwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="72860319"
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="72860319"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 03:00:20 -0700
X-CSE-ConnectionGUID: JYV8t/v2Q8CT5ek5ofNrbg==
X-CSE-MsgGUID: vTkYanGnS0uVTbA3Xk0VZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="205542155"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 03:00:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 03:00:16 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 14 Oct 2025 03:00:16 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.38) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 03:00:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JlGyDXs0NdHgDZuqh1Hpi+Dp/+OhbHSL0YeXbzvOFJqaoFNhh0DokbdgYbHCgnqsaSQN9CzK4PggZM2X8wWsli4sxs9+fbauiR81M9jwX+Jr2hEbU11D6u2wqjNEdIJFxNdhPYUrSXF4TUedSQs/jl9hgpbDzjp0dlmyWBLLExHckoCqJqaUTujZtKXyAi+yDE02d7Qeo4xmn+7UQ/kjG+4BPonqJ3xS9BXx1c6mpogLbv7/Z03n18CvT7pHzWlYY/FtFV/Wh7wHFfGJk63IVGYl0bh2P0HFwr7rK1iYks78IN4QKJE8qg89M7hK7HbaafPgN1yJciQKYVIVsKzxDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+I/ONCLfkSIBXDkCi+DhYJbGnic0zDiQsElNErVHUac=;
 b=lwi6DbNX/frYlp3e9vHkA2AMrNCI6mOG7TnEKmg5/GOYdV+pksxa8aLHzNCygh1Ch/QBRwicJZ63x07PO4bJWxVyblSNSwExArr0khdsYUDSQYy+N6izNEUBGR6aIHKwt5zfhewsl8/PQpwr0sok32X+Knm21OjwhVrkqWv42UVFJqQje3AKFgkLlxfvt0sr27DsanorbmZsVLUW+6fANDrIol18h4QQTpGgguHgh/IjjrIWhNMhxqjWv+Bq30K75yuElvmXllocaibo3v3MOpzObZ7IZYjgIq3r+Q6T6GFsblNRyG+IRWS9UeBsE3V1dZaO0n8t3v9iSqq2acQrPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH7PR11MB7452.namprd11.prod.outlook.com (2603:10b6:510:27d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.13; Tue, 14 Oct
 2025 10:00:13 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9203.009; Tue, 14 Oct 2025
 10:00:13 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>, "Olech, Milena" <milena.olech@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v10 iwl-next] ice: add recovery clock
 and clock 1588 control for E825c
Thread-Index: AQHcHndsubICbHmWYkSPxlJPJjrrL7TBoLxg
Date: Tue, 14 Oct 2025 10:00:12 +0000
Message-ID: <IA1PR11MB62410DD80696835C74F231688BEBA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250905150947.871566-1-grzegorz.nitka@intel.com>
In-Reply-To: <20250905150947.871566-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH7PR11MB7452:EE_
x-ms-office365-filtering-correlation-id: c0286742-9b12-491d-747c-08de0b0877bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?jN/TUs6HFn2b3egqdu8DBJ+bPJXbPu8Eu6Q9i87cZhRh7SLWQq2XRCXGd9Bt?=
 =?us-ascii?Q?5FWOOu5anuBysEGRQ6Ucyx8GEGFW66/Z6IUfgigvCzMGA/HFkXL2izqfWT7m?=
 =?us-ascii?Q?fHoq08dL0eEpcL3KWOcR9zK5lbb84nBU0Rk0tT/nHTpJmXb3/uvca5MHd8gF?=
 =?us-ascii?Q?/FvdomGcAEaWP+pBQ+RSZImJJYM1xzGsoBo6NGoqLrUzOuJuRXKp9+DgaxE6?=
 =?us-ascii?Q?YgVOJ5H/E2HcBO4SyMKayigLYg0j93TbNCTbqmAypT4JZP0QLNdcmcARRepM?=
 =?us-ascii?Q?PGRjGJ8zhOghWhvIZvNBmm/3BhELdJCDDjS8kjVbPys2dKcdHSQ2a+UpnR5B?=
 =?us-ascii?Q?q+xpnVT/FcQi3Iea+UuvQzmq4ns3qH+oje6aUHRBpXqYVd6bJjnb4BZboCON?=
 =?us-ascii?Q?WIcOKkhbwxl+U4YfNQEMqYuF23aF9oLcTyrnf7GqgMM07k1ez4KNs0OQPs5U?=
 =?us-ascii?Q?r0Fk4KCoDkY0GYOP/hpHUsVU8ycz7h6aWLLGus70mTY36xuBcK/k2Jb9zFwz?=
 =?us-ascii?Q?rGBL54fBlzgaZ2vNYE82LWn6pXNe57RTWsRz3Q4EUWFbOCUxn7wAE2e+uVpu?=
 =?us-ascii?Q?yN86/gX7dlRQaxpL63M6ScYkI7+dHOE9Kw5XR57HWglJF5s540KwSGvUZInv?=
 =?us-ascii?Q?5zhGYprZ5C81WGMZctKWyAmhbmdJiMDANuRsUHK5j0TpsON5N4GgOGi3d1VP?=
 =?us-ascii?Q?+20rQDifbMolpdLMZoAXRyuf/9XpNuGoF5gDrcDjFp+J6F0JOoU5dxnrzH45?=
 =?us-ascii?Q?+iDY+aT7b/qGes1HjCDWf0kOYuPkZ7x6UMNtF33prlRdHtveNga549mdnI5d?=
 =?us-ascii?Q?/kqtuPH9py2PpjnEUZnpevRO4rI5qlCf87aRY7f6PIxFgJLN/zsXn9wseCnH?=
 =?us-ascii?Q?dgANDkpIJLL5wZy99BS78C/D4EaEDkeGfOzYX6Rd6mrA9v536P7Ti46DNT33?=
 =?us-ascii?Q?QA9CGIpW06rf853+cwmtGhJo79vxoXbjbOwTsPqc5RgFvh2iI2SZVXL6gCU2?=
 =?us-ascii?Q?LOCKqAZ2EhXKI3q0gy1cLIC0/RzlwcM6AL7zilxPG4lXWKY+z9bXQJK7eLih?=
 =?us-ascii?Q?ddkNvSUpZrekoNkE4bDyw5aPtW27tRZ+nl1Ne4OKJeYfMpekBEe+o/qRoK9W?=
 =?us-ascii?Q?CRYKIERoyEpQVlPMaRFWF/BELQom3jjFEjEtqrN7ajeh0YGe09WXJsgsZMhJ?=
 =?us-ascii?Q?92QzHSq0XrJfldIwTTbUHDOZ7mNRXttt7obFGXQL3iGIAZdWPH4QsTMYkto/?=
 =?us-ascii?Q?l+oUxBs2M1HESKoByqAjcFS2OjAvzOI7U0nMX6wbvZudGlozM+RnfN8XuuAO?=
 =?us-ascii?Q?6qhHuOzN7wMpmg3pEmE6HtaNc1DQAeYYbFVrYER2giHLsWZ24AWfoHK85KZH?=
 =?us-ascii?Q?pFWOFwKvmeErtIp7LlfgSZQpjqFIau2ehVYLT+eMwqg9z50BPJqSZFUYzXN1?=
 =?us-ascii?Q?13bWHMxqWvMYLJw1VKrR5owc2mFCXyPDBrjpUTdfOXollvCspc2DLqnMWv16?=
 =?us-ascii?Q?XowuA23VzbDZtecDc3dZO8a3SBz2oiYqXS8I?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lNBh+s9+UHuq6wMzpe/41F34Y8gzPXU6lIcLsMIbVp2vr0SOGO2xKkv7U/ug?=
 =?us-ascii?Q?15gUPaMwWV7gj2BDwymzgLgG9yfIiEHL8Rsrw+zxMGrWKCk4NH9nBMwIQc1U?=
 =?us-ascii?Q?TN1vFU5mNOHClQQTgH/VARam2YUeiJFUfCMfdsm+kmyr22g2A2z2wGGQLMj4?=
 =?us-ascii?Q?P6ywpVhTSQrswMUZ34OvShEmzk8yrK8Yg3r1RS1jQNtEshdsll99UePI/fnU?=
 =?us-ascii?Q?1ypO/T9vuOrleNT6PLrzoJpANfADBF7I7mGuOQHx4Ip5a+o9OtVuyN8vMCMS?=
 =?us-ascii?Q?ZC2oxyz4l4aom+aGJlJyXD4QDL8APUNKDjvpwj/8lX/1sImUgk88lsNLyMfU?=
 =?us-ascii?Q?yMoYMLRYGQRrebTOdWANxdfp2m5srbLBBZm3IT2N2qqBnVq2GoysFFAzhHjn?=
 =?us-ascii?Q?shAZBeHBbMYlr+gdNxXsUFsPk+O5+Jky4p0+COgNRwZZgnpuFyk0XSTNQnQ+?=
 =?us-ascii?Q?QvSz9Wg4AJiR1Lmf+7VXWdbGJGa6mnMalSCVn9frNUbGW6z7wmoFlki0Poet?=
 =?us-ascii?Q?/OlJngJImUjhi/qgfYRXSIovDeRwb4ovLFo9yqDasyXvXHOgBBIVJjD3Ljo+?=
 =?us-ascii?Q?/J2+1bjiVrme6hlC+MPHvrOBqigssFsIcfDlZJ/WMYLtZhqTaf+K2rcQpH68?=
 =?us-ascii?Q?PpkaEJG2bENVkZd2+f1o90WTHVhqAz/qWtQr9C6fnFSp3sVdVCr9AkdU28+5?=
 =?us-ascii?Q?ITnQIgH2CH3C+UrPZ0yKDy4t/lyJGsIb8ec9iC/ESvcdkaHOKAa9dexKAW1L?=
 =?us-ascii?Q?Yl/6rurPV/r7M1Qh1kAgN8m1TnWgHs5G1DE8tXb2u/Ksbjd3QG5tv3cJS/Yl?=
 =?us-ascii?Q?xTSbRZOISat9FeQN3//TJ/BW+cVjs5NnjQr4JrQdGH3yqUyita4AQyTDtBPO?=
 =?us-ascii?Q?SDeNH2Qhvrvy35W3XYmYbnNPqQv1y6dOT7yeQYo5SJH6jkv1cIY/+DyVVYDE?=
 =?us-ascii?Q?9ixdl5BbiHXX1kYrqD0MQDjasT5wx4+F55qbjfLU1grVM93WtogMlALhWo21?=
 =?us-ascii?Q?pLiHNesJf6ohFFWuPA80aoRDbKsP4tUWsQ9vvL8nIfI6aSR6VAaYgWeHmqmz?=
 =?us-ascii?Q?BAqIiZTfNDrpZqLKkOEqzYXHS3HErIg1bYxmHtuQ2YvI6Bmnn+nOh2m8tKkw?=
 =?us-ascii?Q?p6W3vffmF9dC2IHZD9O503dkfaewe4khaWYT+kAIjh/Z9obLapEkozcaF3op?=
 =?us-ascii?Q?7b9hJXuC6xLo/muiEG9V20Kfev8V9//o3/VPIac/DIerd+hU+3PfuCl9skNL?=
 =?us-ascii?Q?L2bI66p+Q4UlqRbY8dO5BvrC0fF6+dUCTQkd0WgKda7hKKHtit6HqJMmjMCJ?=
 =?us-ascii?Q?uYmEKEDovdewQPTAMdmT+BugA/qdiE3JZHoxRzphXXcY7DohCkgetnEw5eIH?=
 =?us-ascii?Q?86Q+oxJ/fnJX81tn+fdTxhLtIn8YKwEIyhY5+hGGFMPPi35pUSpfOXbo1jVx?=
 =?us-ascii?Q?vmLR6gjxQ+Z4OTwbIOtl7bZVftRq/6VJiC0l81eyCyaEAqP9gjOx1myvvDx9?=
 =?us-ascii?Q?hV4kYrxSx2XRAbg/ht09qCr2fDLMY03zNZxO5wk18gwFrDPNWcp27e8AzKpF?=
 =?us-ascii?Q?GwwngBEUtRgN4uZbspRreIB9aTdkZMnMjuFoFmDw?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0286742-9b12-491d-747c-08de0b0877bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2025 10:00:12.8271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +qW1mjEL4lXKImHhvmyctWlLbk0+qYGw9o49f9zj6DDJnkXWziHLoFeOSs4ky5E67ZAdE5x14uIHVzrp8RarsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7452
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760436023; x=1791972023;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PT683y/3F45VKyolQOTdVlRmS6PrR1BW7L4qbwWnSZc=;
 b=fyxwCkyZBbIGXgB8mZ3XB506Pd0f3PvkYZjI3XMaWxlb/PQpAm8mXq9V
 jnc0LMvZJFINj3/oPi74Bt/0dtBCmZMyyIjOv804gvkYwRGD8EBvMCklr
 yUaYfAqRGYr0qkKJrtAp6USMXYBQVivqJAxcVlsh1r0Y3ccqdwlpJSLra
 j1LG7LKzYwHXoA2ws/Jw3buL7QX/U07TXuuQWFutAk+yyf89E/FB3F+xV
 9U/LjmCVejyTHrufe9zDUasy9JHS5OeUq3Sc2vQ70VxQYEwIZHLnQFhwF
 2iBj+JnrRMWuPH30+jmxmySKtfgPsCuZjyfeLQ9grq12X4P3Aaxj9dYou
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fyxwCkyZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next] ice: add recovery clock
 and clock 1588 control for E825c
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: 05 September 2025 20:40
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org; Kubalewski, Arkadiusz =
<arkadiusz.kubalewski@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov=
@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Korba, Przemys=
law <przemyslaw.korba@intel.com>; Olech, Milena <milena.olech@intel.com>
> Subject: [Intel-wired-lan] [PATCH v10 iwl-next] ice: add recovery clock a=
nd clock 1588 control for E825c
>
> From: Przemyslaw Korba <przemyslaw.korba@intel.com>
>
> Add control for E825 input pins: phy clock recovery and clock 1588.
> E825 does not provide control over platform level DPLL but it provides co=
ntrol over PHY clock recovery, and PTP/timestamp driven inputs for platform=
 level DPLL [1].
>
> Introduce a software controlled layer of abstraction to:
> - create a DPLL of type EEC for E825c,
> - create recovered clock pin for each PF, and control them through writin=
g to registers,
> - create pin to control clock 1588 for PF0, and control it through writin=
g to registers.
>
> Usage example:
> - to get EEC PLL info
> $ ynl --family dpll --dump device-get
> [{'clock-id': 0,
> 'id': 6,
>  'lock-status': 'locked',
>  'mode': 'manual',
>  'mode-supported': ['manual'],
>  'module-name': 'ice',
>  'type': 'eec'},
> ...
>  ]
>
> - to get 1588 and rclk pins info
> (note: in the output below, pin id=3D31 is a representor for 1588 input, =
while pins 32..35 corresponds to PHY clock inputs to SyncE  module) $ ynl -=
-family dpll --dump pin-get
> [{'board-label': 'CLK_IN_0',
>  'capabilities': set(),
>  'clock-id': 0,
>  'id': 27,
>  'module-name': 'ice',
>  'parent-device': [{'direction': 'input',
>                     'parent-id': 6,
>                     'state': 'connected'}],
>  'phase-adjust-max': 0,
>  'phase-adjust-min': 0,
>  'type': 'mux'},
> {'board-label': 'CLK_IN_1',
>  'capabilities': set(),
>  'clock-id': 0,
>  'id': 28,
>  'module-name': 'ice',
>  'parent-device': [{'direction': 'input',
>                     'parent-id': 6,
>                     'state': 'connected'}],
>  'phase-adjust-max': 0,
>  'phase-adjust-min': 0,
>  'type': 'mux'},
> {'board-label': 'pin_1588',
>  'capabilities': {'state-can-change'},
>  'clock-id': 0,
>  'id': 31,
>  'module-name': 'ice',
>  'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
>                 {'parent-id': 28, 'state': 'disconnected'}],
>  'phase-adjust-max': 0,
>  'phase-adjust-min': 0,
>  'type': 'synce-eth-port'},
> {'capabilities': {'state-can-change'},
>  'clock-id': 0,
>  'id': 32,
>  'module-name': 'ice',
>  'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
>                 {'parent-id': 28, 'state': 'disconnected'}],
>  'phase-adjust-max': 0,
>  'phase-adjust-min': 0,
>  'type': 'synce-eth-port'},
> {'capabilities': {'state-can-change'},
>  'clock-id': 0,
>  'id': 33,
>  'module-name': 'ice',
>  'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
>                 {'parent-id': 28, 'state': 'disconnected'}],
>  'phase-adjust-max': 0,
>  'phase-adjust-min': 0,
>  'type': 'synce-eth-port'},
> {'capabilities': {'state-can-change'},
>  'clock-id': 0,
>  'id': 34,
>  'module-name': 'ice',
>  'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
>                 {'parent-id': 28, 'state': 'disconnected'}],
>  'phase-adjust-max': 0,
>  'phase-adjust-min': 0,
>  'type': 'synce-eth-port'},
> {'capabilities': {'state-can-change'},
>  'clock-id': 0,
>  'id': 35,
>  'module-name': 'ice',
>  'parent-pin': [{'parent-id': 27, 'state': 'disconnected'},
>                 {'parent-id': 28, 'state': 'disconnected'}],
>  'phase-adjust-max': 0,
>  'phase-adjust-min': 0,
>  'type': 'synce-eth-port'}]
>
> - to set PHY0 clock as SyncE module input $ ynl --family dpll --do pin-se=
t --json '{"id":32,"parent-pin":\
>    {"parent-id":27, "state":"connected"}}'
>
> - to set 1588 Main Timer as source into SyncE module $ ynl --family dpll =
--do pin-set --json '{"id":31,"parent-pin":\
>    {"parent-id":27, "state":"connected"}}'
>
> [1] Granite Rapids D SAS - Timesync and	SyncE
>
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
> v9->v10:
> - replaced SET_PIN_STATE with inline function
> - fixed wrong conflict resolution in ice_dpll_deinit_dpll()
> v8->v9:
> - rebased
> - moved ice_dpll_cfg_bypass_mux_e825c, ice_dpll_cfg_synce_ethdiv_e825c,
>  ice_dpll_get_div_e825c to ice_tspll.c module
> - re-applying ts_pll settings on ptp status change (added
>  ice_tspll_bypass_mux_active_e825c function)
> - improved doc strings
> - removed unrealted changes
> - renamed dpll to DPLL in doc strings where applicable
> v7->v8:
> - rebased
> - removed unrelated changes
> - change pin_1588 type to DPLL_PIN_TYPE_EXT
> - use ICE_SYNCE_CLK_NUM to determine the number of rclk pins
> ---
> drivers/net/ethernet/intel/ice/ice_dpll.c   | 675 ++++++++++++++++++--
> drivers/net/ethernet/intel/ice/ice_dpll.h   |  20 +
> drivers/net/ethernet/intel/ice/ice_lib.c    |   3 +
> drivers/net/ethernet/intel/ice/ice_ptp.c    |  29 +
> drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  34 +-
> drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   1 +
> drivers/net/ethernet/intel/ice/ice_tspll.c  | 223 +++++++  drivers/net/et=
hernet/intel/ice/ice_tspll.h  |  14 +-
> drivers/net/ethernet/intel/ice/ice_type.h   |   6 +
> 9 files changed, 945 insertions(+), 60 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
