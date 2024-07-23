Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95115939F8D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 13:16:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46B5B4049C;
	Tue, 23 Jul 2024 11:16:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xcqWKvGSlXEu; Tue, 23 Jul 2024 11:16:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48F1440438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721733396;
	bh=Gd3vOGE0sdu6qBkJFh0OP5cWq+ZsH5B+h90NnS+LG20=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wCEsccijN0S11fHUkrzZy+z6XJh8PuFAqWIR8Lsf6rL0kHUf5UTC2VQYBIjoPVprD
	 xibhATLknWe54qaQcD4F7YFHHrRYsO0cW6t9YRR7C+Q85kg0e7J/WrNJgo2zT2GWz/
	 t1bnE2xFlFdlV2en6VtTUt/d1WBlamSub30EnecEH0DyDm2XIGIFq+1A66Yh94Ed/N
	 lhWT8lCsuJT8L/JY+tPTcv9G0yDInohtecyS/pG95RhwH0Qrl4YQRNxuCT8y5YveDt
	 Fcp+u8OST/YOpb7yaa4svmeEeatsCVi4QAk5rJCB5zwwIXEoOSe28R0sn9/AhwiQar
	 rgRrO5ghdF/pA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48F1440438;
	Tue, 23 Jul 2024 11:16:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BDD331BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:16:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB861607E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:16:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qg8Ut138VaG6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 11:16:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D99C6606ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D99C6606ED
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D99C6606ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:16:32 +0000 (UTC)
X-CSE-ConnectionGUID: 4fZOLgqHRj+V3EyZCclQyw==
X-CSE-MsgGUID: +o9r2zCeRfauvjCfoDILQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19051938"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="19051938"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:16:32 -0700
X-CSE-ConnectionGUID: z5zV64PxQI6hNLAnKH4KCg==
X-CSE-MsgGUID: lrvpjLptTdCXN5vyxY8cTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52436609"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 04:16:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:15:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 04:15:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 04:14:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NboRmnnaCoMDAtkuC/n6MJ/SNi79YokgfrNppC47DRrY13R3ZwAP3WKp5l/uxPZzA44D0aPMxU5IMeG5JNMw1ad5C3L1LrnHiTusSC2W9wZSYIgPPo+NSu/Xcrzae8ST6dvOS4AZ6eEosWdL0YtABj/+lRHfBsi6pErBKOmHzBv2hThBvCSyXf+BZFxIy4l6mCd5Cio3ODBEw19vtTf2Bic68rInbcdvl6wfWoU4NsTcr2vOx70UwHsRvGIIV61XlAoyGDesM5nqxi/U07+wrAKyFntNe1ELZo85YchgTUpwj5UPWrgxUn3n0lng4afywzngad+Mo6DDBM/4TPigXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gd3vOGE0sdu6qBkJFh0OP5cWq+ZsH5B+h90NnS+LG20=;
 b=VjVEMy5RLpiLN8Y0HB5O9cdQ6qEdUfZmx8P4P7sqPQJb8uotrk4shopdvJnpBcgAlTFay7DRYQoxihmQaDCuOyJAi9z0YNL5DIqKeX7p0QLNWv69ZinkAVFxjw31pa9luY3eX4vQhfjKD6ENXZ0+DI9cvmppX1ENGTCJl0BC+dM5a8drtnHG63NXl2+x7E0H1QNCj5SOBX6//o81sas6W9vm/TwqrfLUw/3He4HzfzNGvs7oHf3/tSjAd3qsRNF2C8RaEOwT9ipf2mByFeq681yi4XWY3yAOf5KAYM0M9DTDMAhUpUgVmYeUHisHKCTi6GgL2HX/6ABtuvuQ8H36vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DM6PR11MB4611.namprd11.prod.outlook.com (2603:10b6:5:2a5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.15; Tue, 23 Jul
 2024 11:14:39 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 11:14:39 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v5 04/15] ice: treat subfunction VSI
 the same as PF VSI
Thread-Index: AQHauAOpWzqWjg+9XEWo3lgjhTq7BLHblFYAgAAXbwCAKMccAA==
Date: Tue, 23 Jul 2024 11:14:39 +0000
Message-ID: <SJ0PR11MB58653378DA5B1ADF2516488D8FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
 <20240606112503.1939759-5-michal.swiatkowski@linux.intel.com>
 <Zn1H6hmr4Y7ZFvT6@boxer> <Zn1bkhZ1lF1w96AA@mev-dev>
In-Reply-To: <Zn1bkhZ1lF1w96AA@mev-dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DM6PR11MB4611:EE_
x-ms-office365-filtering-correlation-id: 784077e8-4156-4218-5d43-08dcab08a518
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?6/+v8WDMPZca5HP+Rx4yJLKa7MCP0WfXfLpMnosEqDO4ygmzUkdUZdrIJn2U?=
 =?us-ascii?Q?3KMe7emiMGT2kK1/UPkwbTp4wuHSpvF9C8oSwzpBEcBmOe/gyVLPVpYB9KmN?=
 =?us-ascii?Q?zA3cu+sm7HuUYet1qpdArTorssdnydvPfW8cDEBUDsVj0AmwnGZLlWV2j2Y2?=
 =?us-ascii?Q?haIc/2xPm3jktfVysYgGMnQOKhs/3PJVafOzevy1yb+AKlZkt+7Zh+l6m1Kq?=
 =?us-ascii?Q?DtZgRgl5FjpcyBLQz95NEQ6+FScLfEHnkGWW4xVWsBC4li9ftdiuL8hua+Y0?=
 =?us-ascii?Q?bFZkmk5rsYCTO/l+4Lzg0Y6tujbWA/XJ34Hatu2IsfWRPPMcO7ijlkPDC9XQ?=
 =?us-ascii?Q?6N8Fj6CaujHc/QL0VH7MrtBRuL6nbxNyNqNCiv++aVnFTjphNxn2e95fvMOf?=
 =?us-ascii?Q?iIPADXwzhx9qs9rAdhe+O2zFt19pwByc/dseZMVFLh7Dt3gcQbA1bhME5Gu0?=
 =?us-ascii?Q?nMALBPN6NYzE6P33LIKiiV9085plzUEbLZlAhFUCtxZCVS1F4WrWkRr3G4/p?=
 =?us-ascii?Q?fQziOYa5EhDCMv4mr7WpctKm4sbJpmF0T+uh1ExqPEBx1JeuiAbFARGSY2Cx?=
 =?us-ascii?Q?qCh1e/6BVmIsw4ion3fbNvKb9y+39dyS7JUL0H0onadj0IiDgR0J/EHGyPSv?=
 =?us-ascii?Q?mF/Ekp8c5PqBvmZzXUy1nElCMiQfvXtlJpAlHXG6HWlmR78u1w9AKMfudLF+?=
 =?us-ascii?Q?BCtbCB3iBqerO0kp7gx+sDphDMaSHpxWlQYzmIpt8S/ZvABByTgXYwawV2bC?=
 =?us-ascii?Q?oJSxyyiKieUnT9TYyUmoR4adNBAo4N/O3vrcUYNLtfvLXlTk+FRpX/M5U657?=
 =?us-ascii?Q?ISmglVyiZbayMDUaRtwimpsiFFe/H/Icx1G5KB0jH5Ci175aL+IYR5AAWA/E?=
 =?us-ascii?Q?J7SDqtPP2+p7FbzMOZjtYGDjbrshGQYWPIqfTR460gtBlZfCNpLAj7wrJXuC?=
 =?us-ascii?Q?BJDlhxHu1gOQM8H7RoqU4iBIUcdc1IJLwlvz4MEdgqGXfmS5eWwVPEuHcvYj?=
 =?us-ascii?Q?BLGZZZSenbziINPTnQx9KD7VfOXt2VpLQyTWWd3AWpJ5Yg5eTtOGZDa36dQ3?=
 =?us-ascii?Q?yy1Rv71S7zLl8EJrvMGhUDL1Dhq4k8gh06S+wj3CMOXLr1izDrhPSC8s00ek?=
 =?us-ascii?Q?HKGfQam3LiLvl+Trvqt0kT5ko9+c1CxMDHfWt11Blg3g78StHtVi9qTIDxwC?=
 =?us-ascii?Q?OhC0FvxjRcdVDfZma1Mapj0J1KvQhNSs3jWH9pYnqeKGUk5djkL/aL00BqrU?=
 =?us-ascii?Q?5DGBLhbpG643vyKNX4WAymhgwpWutpk0KGBV7uUN+1d0DbAPa4qPYPzHckQ9?=
 =?us-ascii?Q?eMEvMWf8UmYQ3nJMaNShSOoC4NA6glydxvqDANi3zatHEU/HDf0PExZdY0wg?=
 =?us-ascii?Q?8gXWGcb0mkdsIkYSAUzRsa/Cs9ekRqYu3HUT+BQOeLRWOEaCNg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/Z4N+sqmb4WRKU278JhJ+CQ4LmOjXTPFzzn5z2oLhC4stiRP8qo2abYWKItB?=
 =?us-ascii?Q?kEYb/lQIhU3KNLmDyD2cg+BwmBoax4Jk15W02aUJWJVvOP0zbRnLJM+FOtoD?=
 =?us-ascii?Q?SJkj6XL+eBiVuVYR4/kQ1EH2C7zvGCR8bQ2ldAJBhfIftfN5zazNJz7JsHnb?=
 =?us-ascii?Q?0Adz0q5yiyOnuBVW5txg3iJMsHgzm+G0hRBTpNut1btyGLQKx4oqbD9i2cIs?=
 =?us-ascii?Q?+ghmVoV4QF5gDk+5b0tXXqwNcbswQiNMR34Qk5Bl+etuG8oJE1n6JYteAVJF?=
 =?us-ascii?Q?8Iua9sgZBunB129Wpr8YPL00670mWoaCV5HY4lHMXZJWAozwuSqOGeQ7En5b?=
 =?us-ascii?Q?F31EFnWC0w5/vpcIK4U/Nr7fA+cQeyUTLmV3frUtMI/cbWJYWNCkC6acOGiv?=
 =?us-ascii?Q?xemCF2hgVVhzSZqdgwbSPruNVzSn+VqbRnzqVYXtyoJtrfAX+s9rIZ0IFiG8?=
 =?us-ascii?Q?oXy7zAiItnE3kZxLg9jFyYusAOUoqm7J0jv35sfil5BxNY3VmW66PW5uw9nf?=
 =?us-ascii?Q?33zxSjAVFzbNPhmG+9uD0hLTcqjtzoyz8jZUs4Y/79kehrV85kOKM5qbnbMS?=
 =?us-ascii?Q?CSJNl7nU8a9r2FBRtStpy6UrxHpJ//6YtkKbKicGkLFHMmgpipiNLqXG4st3?=
 =?us-ascii?Q?oZyIEvHjTZD9a92U5OjIO1myl9CHvcn1VuWCKVPYJg902UD6XhjPhRNv79Ss?=
 =?us-ascii?Q?lY/rH4Q1mcwmYMG2/GSbz+ima3IydBTv33NkqQzLiUEAvgczT5YyJyZknTYG?=
 =?us-ascii?Q?TyauMcBj9PEO0xvcvd/EFJFfnEO7BxiyFan8ctAiGFXUKGBlhz5qMQfEksOi?=
 =?us-ascii?Q?1Jul9rczOcUTaMcQd5SQlO/AQuaoT9vsMvXwG0DxzzmsP5fIRo4d6iiJUEci?=
 =?us-ascii?Q?WIsCVB0iAdiiQ7/jJKtXuFM45BWKyCoqtc/aB4Q5VnADmtYZ6u8HnGUayP6y?=
 =?us-ascii?Q?m9aw7ejFSDgrBgpvDFiKJYgAby6907afSWnfGZxPcPuKPeGMB1PfHjqMnbw7?=
 =?us-ascii?Q?n6UOyB1y9gv7LDL8Z3HS1dAwUak+I8MUBZQO9W4n3GF4TFIUJQCAw3SE3k0m?=
 =?us-ascii?Q?FUukS0vB2I60OldlQuBlxjvCJe+tp6RdUIUAc6p4hq4J8AbHTSvQbVnCwaid?=
 =?us-ascii?Q?3ozIIQzLhgvgeMGaXvc0chtfsnX6HK2TDfXz17hNlK6bn7RrNjrTCsf6A6gX?=
 =?us-ascii?Q?82fGM6L0w4zHlZNxqsMH8mrcDDGmwzT2mnJmzrJRKFSAma8BYJqUjwY4qiNO?=
 =?us-ascii?Q?Av2Q/MAhFHz+ZO0j6mPvj/GVhME4zmJoCCXDMCrjYjYxpDK3Wa0C01LXM4Wf?=
 =?us-ascii?Q?Jph0CmqSZxbMX49+daJBsCK8u9iIHAF76DBKSgC2wZ+OJxmu8dgJIlWOeL4x?=
 =?us-ascii?Q?Q7wj8qwp6xGvg+FPDsT1uE8b9qfi4V8/fA/i/DKIFHtbO0nmEzpBAqS+jjDw?=
 =?us-ascii?Q?rIhlRbVCb4pl5ropMriM97epvPujAfKJNe7XfVLoZR8JKJtzUERYfTg4uR+g?=
 =?us-ascii?Q?JyR53WUIIgJqRfYsYOOLatCKhj+T4vRM9eibe25kipPTomxPF4qPTULpKcCv?=
 =?us-ascii?Q?6du8TpHgjSVRFbXXXTfcLLCIqntBWb5+IjxnNLnR5gqiA6OQTk8ibihCdAzm?=
 =?us-ascii?Q?ag=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 784077e8-4156-4218-5d43-08dcab08a518
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 11:14:39.7257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v/CTnGPP1yfC1Bjd6xtd43OZQ1/QiCdPZ/s9D7v3Fx4RkO2EIJegd/yU/LQYhkTWSGeg0o8x7g3pxzgSyDQSkRGMgrPGVYV1tw6RSYpppdU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4611
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721733392; x=1753269392;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2VY4ZZQlLtDCTJWQ0uTItlz0ZDEzqi6gJfaemDFScOI=;
 b=dAGkTHG60nxdSNyGtP/KPY0DF1a9ZZj50YftEZjCJlI/HcAdCrESk+6b
 3JQ7x99kd6GMPu2E+kcgZEyK07fhIW3EFVTIl8B83yDidmETIbiAgB5n0
 qzqztlzi1mv8yo1M4XF56jOKyEfg24hCdP8FIA14JxU0mIvEVh0lojoSQ
 0kEPBmIpEFudwNBgo46TIigvQ5uaqggroxuC5uM6xzXW+kEJqzYMPKoB1
 m/MIEvXiA+QDcUij2u206QP8hGlUp3MKTau9LYjar2lFoHuKCsSOWPfcP
 Qq7hv9nPdmrMhfws/dCp0UMneK8kT2Moaky72MfuuVLYHT8FHMWkzFblm
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dAGkTHG6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v5 04/15] ice: treat subfunction
 VSI the same as PF VSI
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>,
 "kalesh-anakkur.purayil@broadcom.com" <kalesh-anakkur.purayil@broadcom.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "shayd@nvidia.com" <shayd@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal
> Swiatkowski
> Sent: Thursday, June 27, 2024 2:31 PM
> To: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Cc: shayd@nvidia.com; Drewek, Wojciech <wojciech.drewek@intel.com>;
> horms@kernel.org; Samudrala, Sridhar <sridhar.samudrala@intel.com>;
> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; netdev@vger.kernel.or=
g;
> jiri@nvidia.com; kalesh-anakkur.purayil@broadcom.com; Kubiak, Michal
> <michal.kubiak@intel.com>; intel-wired-lan@lists.osuosl.org;
> pio.raczynski@gmail.com; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.co=
m>;
> Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: Re: [Intel-wired-lan] [iwl-next v5 04/15] ice: treat subfunction=
 VSI the
> same as PF VSI
>=20
> On Thu, Jun 27, 2024 at 01:07:22PM +0200, Maciej Fijalkowski wrote:
> > On Thu, Jun 06, 2024 at 01:24:52PM +0200, Michal Swiatkowski wrote:
> > > When subfunction VSI is open the same code as for PF VSI should be
> > > executed. Also when up is complete. Reflect that in code by adding
> > > subfunction VSI to consideration.
> > >
> > > In case of stopping, PF doesn't have additional tasks, so the same
> > > is with subfunction VSI.
> > >
> > > Reviewed-by: Simon Horman <horms@kernel.org>
> > > Signed-off-by: Michal Swiatkowski
> > > <michal.swiatkowski@linux.intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/ice/ice_main.c | 5 +++--
> > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> > > b/drivers/net/ethernet/intel/ice/ice_main.c
> > > index e76e19036593..ddc348371841 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > > @@ -6726,7 +6726,8 @@ static int ice_up_complete(struct ice_vsi


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


