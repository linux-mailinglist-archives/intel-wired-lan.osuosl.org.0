Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Am4G0N8pWm6CAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 13:02:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0201D8005
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 13:02:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FCBE608DD;
	Mon,  2 Mar 2026 12:02:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gi4zkmRTUfYA; Mon,  2 Mar 2026 12:02:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2BFF60FD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772452928;
	bh=vFZkijgak5kdmv26DvRUsOKUbMst2srfGXai3WxfW50=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3uMt6IAI0rnxigCuMah/tNVgGYAwZlwHLBKhLpFX2TrPfuPFgLTruKUQqbkkaYPfd
	 Gt4QzQjlzzU164aaGxwyMm+o098BsFlRb5PEV5OQpadVuZfTNWByRp4FXeFEqMMrSv
	 vdTWb/ZEt5VEjej844o9bICkgsfoEzwGFNwVDEMA3D2/zOFP8247rgXndvmOKSUwEL
	 CDK9ATZTulFVVkiuYisZZzxFyE9/D12eZ8AdmSllEbl+t9nieGFZLv8JPpxagEgV3m
	 OdWIdxs/Tpah+n7Ot71anm64o7w/VbnnjNSSp/CkMNGhTKn3s4vL8h5wptiH/g3cS7
	 Nk+ckYYiYD9QQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2BFF60FD4;
	Mon,  2 Mar 2026 12:02:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B82E31EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 12:02:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C765810A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 12:02:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e3cjD_0wOus4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 12:02:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9DBE48100C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DBE48100C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9DBE48100C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 12:02:05 +0000 (UTC)
X-CSE-ConnectionGUID: Y2ilKVszSS+Z2Vw7fT8HJA==
X-CSE-MsgGUID: TPTLvlafRRuhsd0uspelVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="84550949"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="84550949"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 04:02:04 -0800
X-CSE-ConnectionGUID: 78iDaIVZQmK7wMEhv+uA5Q==
X-CSE-MsgGUID: C5JiDkA6Qz+tEmlXJyu6yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="222135829"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 04:02:03 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 04:02:01 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 04:02:01 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.24) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 04:02:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L0B9brVap5rN/inQN2leaxHaEYpP2sBbKXxDljDAc+bctZSuzZ3Cjn2l8ZOTUCpJQ2Wg0ikhHyNLrhoRfSY3+6rjlA5W7y8sLWZzSHZ2mtdU30vyA0KED10tJO0yLqOYiwKmJHWssBtGI9A5AhMeiqM5RgYZjTrw9o2ZTyUdulz/jBXEbL9e+qaXU6umjjVcMRyyyIY61NR4MYcXpZ3wEc8XDQIKWiCsBnQ0u5gnUEDRhWHSxGGQ08Z8umY9Mmt5FlBYPsg90ib7NmrFOXOGpIqzJpmNEWOX2a//GlzJUWMDwVLwMb4+BFAmipusxtdSYMLcY1ZnZMtrWQV9Iq04zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vFZkijgak5kdmv26DvRUsOKUbMst2srfGXai3WxfW50=;
 b=yc/eeJZ1iFOSAopObkwN516Px1AUlLzV06YnXYG3XX4OEDhPzRfPLXujSJNyN3RwP1lCEMRaxteFuapZY5dnURe48GXtM5WsgX95/XhsWtno95XlbOzgbdMGSeV6qvsDAUG19XD0gWRDLfvSWnxqnSLN0TZhwYiDE6n3XpUn9QY7BrDv0tilN4RZqnB/car3QUjUeXUfxqcu2ZFydY8TebB6V5ugNiDnV02EPmWy0FZOo0ObDMUDKdnnCbWFt3c9K/SeCD1Qj+azdEVt2HiXJlIi3DaVD9w2VTroCQeMEI4u5IunhcD7NWPH7u1315DjsaBTPHgy/cxOHjYki3Fmvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4904.namprd11.prod.outlook.com (2603:10b6:510:40::10)
 by PH3PPF7A88A980A.namprd11.prod.outlook.com (2603:10b6:518:1::d32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 2 Mar
 2026 12:01:58 +0000
Received: from PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305]) by PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305%5]) with mapi id 15.20.9654.014; Mon, 2 Mar 2026
 12:01:58 +0000
From: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: dpll: Fix compilation
 warning
Thread-Index: AQHcpNETliauqVK5pUasiQUqHVW/U7WRjXcAgAmhkRA=
Date: Mon, 2 Mar 2026 12:01:58 +0000
Message-ID: <PH0PR11MB490409B75FE15DA1C2FD6F45947EA@PH0PR11MB4904.namprd11.prod.outlook.com>
References: <20260223143214.241797-1-przemyslaw.korba@intel.com>
 <9e9c69b6-643b-40c4-afe5-fdbcb185755d@intel.com>
In-Reply-To: <9e9c69b6-643b-40c4-afe5-fdbcb185755d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4904:EE_|PH3PPF7A88A980A:EE_
x-ms-office365-filtering-correlation-id: 396a48ae-badb-41bb-b480-08de785381d7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: atnzqXjF4J9XkwpGAdj1XbJx2hhP8R1r4PNbhyq2fPl7Y2L3uPvEDgGV8Mf9g7m3OhDXi0h9d3HP6xbn2f268N5ihjZg0YFxvTL1Jx/47oudgSWBUatmwZNyN7zSio4MBAnOqQPSJIIiTiNcxA2LtQgLR0AdLVv5hWf5/WC1I2g9nmHlk2aS+hJERdbuPau4DxKc6rX+xmozgpoX0NjkEAOvl3jpqY/KfPdzD0GhCRI698nmLdVeJiEgGVegk6u9CdU0VybH4zlQtUShx+/7efVHnuZ7TnhGbzpNTuwqEPrPsXldKyILkFWUYrRgAC1HLVtYw1Bh6dkWEVdHTe5wEO0Jm1A2LIj0awll1gi5FRuvKId8EU6e7SML7hUNO+vgtKDf6YF96mkmNAPaYjAQ7TPoiP7JW6fimYI7KvgQXhlgZqAiux+eP5NpXBBlOu1GUl05dE1CTUUgOWXA5OkIXQ+yTx+gE8ieNsOoXtyotUN7vXQcu/oZe0s/LuIsgsUftKLLvcbv1R/HYGBgFGzdJKwurixCa8msVmq/NCr/VBTjOpfMaSglX8W9rPgBerlNFQBcqusYIdGaCQ/z/+dzz+TYGwlG503SlqJU0baiIeJgDkKenvT844ytEUP77XNe+zgUjg8PAx1KTblx68FcDOkteyD1ablFpXdaxNYiD2KBg9EuV9ggG/ZAEw4pUYoR6J6GaDnOxK907GROhFo1RXLKlp8gUeIBCD7k8MGLPCSEcfPU9aZQWvc+/P/uXkX0VagiM9HecKwrBRI14JFU5SY4TDKOqJutOxA6nr7qzWY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4904.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aWkyOEx4MjBrSUIvTEIrMGxiVCtTT2M1WEJKNVdkNzBhMHYrMXhKZWpEVytx?=
 =?utf-8?B?NVAwU3E0S01EbDVBLy9nUkZ1YXd3anhHVHFwajkvTGVYdXdKUklxbHk4Wmh1?=
 =?utf-8?B?UFlqeFZzcmpJdkw1T3l1MWR3Wng1ejZkbklEMW43S2Vzbko3UURZQzlwOHBh?=
 =?utf-8?B?RHhIM0NoWFdUeDRBSWZYZ0lIVzRNd0lya3dOQnA1b3Bvd1dQellpSyt1bnZq?=
 =?utf-8?B?RGVzOWplQ1Zralh1VU1JZ1p4eE8yU1Z2STRpN2dJK1d0cnJQWWtxTUMxL2Jw?=
 =?utf-8?B?NU9WcGQ1STNYWnRxWVBmVTJBSE15cjZWYmZUd2llQjVVbzVoZGR2T2V1OFB2?=
 =?utf-8?B?Y1JoZU9POFBkaXBySVMvakJBZDFQVTRtd1IrTzBqZWt6SkRZaHBHdW5uai9a?=
 =?utf-8?B?MzJweWJTdEhEYWtPOXpxdURvbjFMbXRweHM2aithWlpVUEh4UkNraWZ5Z3lT?=
 =?utf-8?B?N3hPblV5VU9oa1dvUFBhMmxFbkQzYWtxSDV5WHhhOVBaTEx6M0QvVVcvYTcv?=
 =?utf-8?B?VXZhT1RKRU42dFRKZnJ5R1Q3V0pnclllaGtvNFB3UjE2THpWb1dsVkpBY3JG?=
 =?utf-8?B?bXdXTm1mbWpMMGhiSFZYQlp1aitxRFFTUFJ5NldUK1JhSDUvSHZSVlQrT1Az?=
 =?utf-8?B?QjRXMEpIQlFDbXc1OVZsZG9nL0dCWklDbjFrS2o0RjRxbElSdHM3ZmtUdkhM?=
 =?utf-8?B?RFc5MXNybG1pVzI1OE1rdGNQZEhQWUlad1ozZEpYaDVGY3o5TWcyNWJURDl0?=
 =?utf-8?B?KzIxc1p1YzY1L2E1dmJpME9FYnpEUlhmZTBNUU84K2RHM3hQejJMcVErcjZC?=
 =?utf-8?B?OXFIS01tMWZiYXZkQnNCSUpFWmJKUG5lQ1dnRjdhYVNVbENjNjVKV0t4M21k?=
 =?utf-8?B?MG1MdWRrUEd5ZFovNkZ1eFN2VlVTSUNGNkwrRkZEWjBYUFZiVXFHUW5YYlgv?=
 =?utf-8?B?bjIvZlUzalZUelYzalVMZ0czeDdyQUxNT2x1Z01jRnF1dGNFOUVZT3YvZFJr?=
 =?utf-8?B?cE5VUHJzeWxXYUdjMjJQaExLbjBCNk8wdTNPdlNlekpsSG5NanlCUnIwQVpX?=
 =?utf-8?B?MXJtcStpLyt1VklqeER4VWZxTTZSbGtqKzd4VnpPSFErUXBIVlFvVFYvWGxO?=
 =?utf-8?B?NFFLUERnQ1E2TUNnaEpra3RiMmh5L0hBSXhnWmNjbmVmTnJLb3Z1VGk2Vm1P?=
 =?utf-8?B?TjhOY0lzdnNuMWx5SW0zTndLS3BrR3RpYWdwSHBaVHJGRk82SUZBU093d21K?=
 =?utf-8?B?M0paTG0wMjJna0x1dFhwbEUxL3BOL2RzeHZvak9PWCtRelIzL2twcEY4Q3Ju?=
 =?utf-8?B?MVhqTXJUbVpTTnRIb2Zlc0psNUVDSUZVSnNsS3RDelpmREc4RkZQK3hVeFla?=
 =?utf-8?B?VFBpeFlMMkZtY0wwTlRWVWJkWlNMZUZrdUUrcit4WHlySXNQV0NadFhBTmRo?=
 =?utf-8?B?dFh2S0UzV0loYzNFbWx3ZkxvZng1WXhZaTZtK3BJczFmZVV4NUxIWENXRCtZ?=
 =?utf-8?B?VjUzM1dkVTk2VStGWS9CZGEzRjJnbkhmZlNlcDZEWTFlejF4aWZ0bFcvQmp5?=
 =?utf-8?B?OUxseWhncis2QkVPZ0NmcEF5ZUJjMGFsd2Uvd3ZxUlNOSHI4ZFY4eDdYLzN3?=
 =?utf-8?B?aWY0RXFCdThVdHdRNUtmT3BpaE9EN3VjV0dnYS82N0F2Mnp1ZmROaHl6U3NY?=
 =?utf-8?B?SUlsMlRJTWdOVFZ5T2gyK0xGY0ZNOGRHWEo5Mk5pTklVOXJHU1BOY2JUR1dt?=
 =?utf-8?B?bFUyQXB2YWgzK0RESW1kQnNwSnlVN29MZyt4YUZTRnEzZW9URDU5MnZ0c0ZC?=
 =?utf-8?B?aDgvaHdMQUxPV2lkall0aWJGakJSKy9qN2lUQnNGc2FZNU10WnppOVBWUVZ4?=
 =?utf-8?B?TEdDa3pzZThnbitsWXVIVTVpa2NneWxFelN1RDFlVzJIbXJqazF5cnRQMGp2?=
 =?utf-8?B?Y2psNU4wL1hEb09rMHVPaFRld3V6WUNHNmcrNjh2SDRFRDhiUzNjWHpKb2Vw?=
 =?utf-8?B?N3dVdXIyQ1lhRXNKdXJ0WVBSMjlxYWsxYkRPZGtJZGNGZEZiVjgzNmYwSVFz?=
 =?utf-8?B?MkFMVnVadVFhZGthYmdMb01kSUNQVkc3V2R0RmgrdjNhQXk3UFlYZXREQWNn?=
 =?utf-8?B?TDBBamtybE5FYldzSStqeXNKZ0hHSSt1RU5ERzFEQ1JqYXlMWERTVHZLejM0?=
 =?utf-8?B?QUFLUXJUQ1FyeXJwSVVGa1BlWFlEZFRMQUlzaCtQbXVnN0l6YzE4MEZnR0xo?=
 =?utf-8?B?T3N6bmpUUjdpUmtBdTdQd2M4UVdxVzVpMiszYm4xUWwxRHVpa3VWUTJPZVkr?=
 =?utf-8?B?cDFGOWpVMHlMa0dPL2ZhOEJTN1VNTnB5aEttYnZsVkwvdDZreXJHQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4904.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 396a48ae-badb-41bb-b480-08de785381d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 12:01:58.8767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HQYn0TXf+yqLjaiM1P6xzgefkIoLBfIjXEhn+p+0gooT8DA56ELGXoAHV37RFyM3RLoctPsKJWkxgu42AiWVf39d2PKUFXZZg1N2qZvQw68=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF7A88A980A
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772452926; x=1803988926;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vFZkijgak5kdmv26DvRUsOKUbMst2srfGXai3WxfW50=;
 b=ZtT1jEFIwPc+ZxvDjHLgZkchbJ/M9v8G6VPfz+q6+kk0atYoZ3WlQeXd
 7gF08YeFZZNgMiFoZvsPLwHVhhRnq8YBGT7Zp2pzNmSOkREr9iYV7KKfU
 T7o4lSYj3JrjFSnvUZpdX6PBWfWPKqOgmRZLTmDAeYAs+IW3e7pd+gYrY
 dGjqVlFsPS09QASWNJGHHzQQTlaE6G/Oi0+1J9FTT3wPE2Qpg7AXDVyEJ
 8Cl1Tnc7g+z/GVodwg9zYsco5l+Lzwp8dI9Omwew+9G1BGeI/PSoxgXSN
 pH+bo4iXkvoWH/1GWjQf3oWQz5kBl+6tcix9EOSmDPiTCotJkVyhddLwn
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZtT1jEFI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: dpll: Fix compilation
 warning
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[PH0PR11MB4904.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: BD0201D8005
X-Rspamd-Action: no action

PiBGcm9tOiBLaXRzemVsLCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29t
Pg0KPiBTZW50OiBUdWVzZGF5LCBGZWJydWFyeSAyNCwgMjAyNiA5OjU3IEFNDQo+IFRvOiBLb3Ji
YSwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5rb3JiYUBpbnRlbC5jb20+DQo+IENjOiBuZXRkZXZA
dmdlci5rZXJuZWwub3JnOyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRl
bC5jb20+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBTdWJqZWN0OiBSZTog
W0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXQgdjJdIGljZTogZHBsbDogRml4IGNvbXBp
bGF0aW9uIHdhcm5pbmcNCj4gDQo+IE9uIDIvMjMvMjYgMTU6MzEsIFByemVteXNsYXcgS29yYmEg
d3JvdGU6DQo+ID4gaWNlX2RwbGwuYzogSW4gZnVuY3Rpb24g4oCYaWNlX2RwbGxfaW5pdOKAmToN
Cj4gPiBpY2VfZHBsbC5jOjM1ODg6NTk6IGVycm9yOiDigJgldeKAmSBkaXJlY3RpdmUgb3V0cHV0
IG1heSBiZSB0cnVuY2F0ZWQNCj4gPiB3cml0aW5nIGJldHdlZW4gMSBhbmQgMTAgYnl0ZXMgaW50
byBhIHJlZ2lvbiBvZiBzaXplIDQNCj4gPiBbLVdlcnJvcj1mb3JtYXQtdHJ1bmNhdGlvbj1dIHNu
cHJpbnRmKHBpbl9uYW1lLCBzaXplb2YocGluX25hbWUpLA0KPiA+ICJyY2xrJXUiLCBpKTsNCj4g
Pg0KPiA+IEZpeGVzOiBhZDFkZjRmMmQ1OTEgKCJpY2U6IGRwbGw6IFN1cHBvcnQgRTgyNS1DIFN5
bmNFIGFuZCBkeW5hbWljIHBpbiBkaXNjb3ZlcnkiKQ0KPiANCj4gdGhhbmsgeW91IGZvciB0aGUg
Zml4DQo+IHRoaXMgaXMgYSBjb3JyZWN0IHRhZywgYW5kIGEgY29ycmVjdCB0YXJnZXQNCj4gDQo+
ID4gU2lnbmVkLW9mZi1ieTogUHJ6ZW15c2xhdyBLb3JiYSA8cHJ6ZW15c2xhdy5rb3JiYUBpbnRl
bC5jb20+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2RwbGwuYyB8IDIgKy0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfZHBsbC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9k
cGxsLmMNCj4gPiBpbmRleCA3M2E0ZTI4ZWQ3NWYuLmYxMDFmZGIzZTljZiAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RwbGwuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZHBsbC5jDQo+ID4gQEAgLTM1MzIs
NyArMzUzMiw3IEBAIHN0YXRpYyBpbnQNCj4gPiAgIGljZV9kcGxsX2luaXRfZndub2RlX3BpbnMo
c3RydWN0IGljZV9wZiAqcGYsIHN0cnVjdCBpY2VfZHBsbF9waW4gKnBpbnMsDQo+ID4gICAJCQkg
IGludCBzdGFydF9pZHgpDQo+ID4gICB7DQo+ID4gLQljaGFyIHBpbl9uYW1lWzhdOw0KPiA+ICsJ
Y2hhciBwaW5fbmFtZVsxNl07DQo+ID4gICAJaW50IGksIHJldDsNCj4gPg0KPiA+ICAgCXBmLT5k
cGxscy53cSA9IGNyZWF0ZV9zaW5nbGV0aHJlYWRfd29ya3F1ZXVlKCJpY2VfZHBsbF93cSIpOw0K
PiANCj4gMzUzN+KUgiAgICAgICAgIGZvciAoaSA9IDA7IGkgPCBwZi0+ZHBsbHMucmNsay5udW1f
cGFyZW50czsgaSsrKSB7DQo+IA0KPiB1cHBlciBib3VuZCBvZiB0aGUgbG9vcCBpcyB1OCAob2sp
LCBidXQgd2UgYXNzaWduIGl0IGFzIGFuIGludCAoZ29vZCkNCj4gDQo+IDM1MzjilIIgICAgICAg
ICAgICAgICAgIHBpbnNbc3RhcnRfaWR4ICsgaV0ucGYgPSBwZjsNCj4gMzUzOeKUgiAgICAgICAg
ICAgICAgICAgc25wcmludGYocGluX25hbWUsIHNpemVvZihwaW5fbmFtZSksICJyY2xrJXUiLCBp
KTsNCj4gDQo+IGNvbXBpbGVyIHRyaWVzIHRvIGJlIHRvbyBzbWFydCBoZXJlDQo+IA0KPiANCj4g
YW55d2F5LCBpdCdzIGJldHRlciB0byBoYXZlIHRoYXQgd2FybmluZyBnb25lIGluc3RlYWQgb2Yg
d2FpdGluZyBmb3INCj4gYSBmaXggaW4gdGhlIGNvbXBpbGVyDQo+IA0KPiBSZXZpZXdlZC1ieTog
UHJ6ZW1layBLaXRzemVsIDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KDQpUaGFuayB5
b3UgdmVyeSBtdWNoIGZvciB0aGUgcmV2aWV3IPCfmIoNCg==
