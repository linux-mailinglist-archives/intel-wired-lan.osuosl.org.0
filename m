Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB78A6172F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Mar 2025 18:14:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8A5182079;
	Fri, 14 Mar 2025 17:13:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B4LGHXHivFe0; Fri, 14 Mar 2025 17:13:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1D9581F21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741972437;
	bh=pXcXbieCzW2ZLJANIv9aGrXLZVaMkINtBoysdExnT7w=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H2v9PDIAiA4vm8fa/TiAh5XpqaleebQDrLdNKQh7OntNZpSGkF+YLge4DeF3sWS7V
	 hNX8lmlZYK8uLIfZEaVXgVdFhLa6Fg/MoXeKgzbbK0wJoihcip/2tr7w5JVVJPmvOD
	 TpFzHCBxyOCr8IF9/XZH1i3iOzInQjwwn1V3nk2maQ2Jgs+5qORDK6KeTUz/jvbu0D
	 2dABWc1bmualqDqSbwDU0YggNKWSAQeT4Xwux8owehyz5AlpeKGJBbJ9SUKbJU9yhF
	 HkygCafmPQuBU71eZtf8589p1XsgjPCHDs8oUmXZIC/jBgFB2/n1xEXEzA+4Mr8bZF
	 vbzdR9nBxq4Fg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1D9581F21;
	Fri, 14 Mar 2025 17:13:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 869B8C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 17:13:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 70A9B60811
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 17:13:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zrbwztNVTRUf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Mar 2025 17:13:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 587D6605F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 587D6605F1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 587D6605F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 17:13:55 +0000 (UTC)
X-CSE-ConnectionGUID: BG6lYwFrRtee279o67pt6w==
X-CSE-MsgGUID: z/Hq3sV7Rn6gHcuv76V0Xw==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="60676599"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="60676599"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 10:13:55 -0700
X-CSE-ConnectionGUID: cOjTbBsCS4iwb1VULXL/qw==
X-CSE-MsgGUID: rjb490gJTaGE9WMN+Aoi3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="152229534"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 10:13:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 14 Mar 2025 10:13:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 10:13:54 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 10:13:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GG8j+GViJXbcfwwRsyqioiAFGDQWqcPrBBOrruUuDTE3wW59KlhjtNkeCiq3gwjkHg2ZFwfvfqeKus84DlIzwALcWxZiLssSFpC9x5S3l/Cj/Z1FdBz3m/p5xG3YijK1i2i9RwY9kLB2l6FYn6XSQsSpWH/1Qp+4KSPWJ8lf6t0yL1raI2lf0izo0sWWdrcMsFHxLxtySvZbF2q2L2ib5VzNMfRbHb2E941/YK6mH/dZBuQUu9G8bDyHXXjgODCCo9ycpjFgBmwUWyGhaalsMX3V01KQ/Z+5uogKhz9pSH5Puaq0aPN5q6C5u6B8v5Fd3d60NsC73ZkfHeSNwluWSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pXcXbieCzW2ZLJANIv9aGrXLZVaMkINtBoysdExnT7w=;
 b=nyedKEf7wvAAvwVYxdqQ4u6N6yibX7h0ERG5aN6DcZmqwfjYrTpzktySlCW58S0rR/2OePW9u7ygbRO8RbYMWLx+jXf6zrPpuaU7sAj2aNtL+3r4e+J9vvQwi7O57Q1IwmK9v1hgFwzd+aId8Bs1kwZENSOszIXWS/UxVmPI+KGuXg5HMZV4ZcP+l1cw2haBQno5Id/9RRrIC1HFKc2pk86oSJo+MwCaU9ouyV5E7PGGHRqapCN9SBTWP1Ikv1P2NWZHKQjL7KU+aGnc/mf8mZnCbopPxVzLHOAqb2IbhSgNWvpWYI8sFt3CcoAyj2biRJUiGpagGJdAtcuTDVRBgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by DS0PR11MB7441.namprd11.prod.outlook.com (2603:10b6:8:141::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.28; Fri, 14 Mar
 2025 17:13:51 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%4]) with mapi id 15.20.8511.026; Fri, 14 Mar 2025
 17:13:51 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] idpf: assign extracted
 ptype to struct libeth_rqe_info field
Thread-Index: AQHbiuZBNA9UxxQ20EGbplAXGvCFvLNy8i+Q
Date: Fri, 14 Mar 2025 17:13:51 +0000
Message-ID: <SJ1PR11MB6297DD4EE685C85E77762C229BD22@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250301190423.613493-1-mateusz.polchlopek@intel.com>
In-Reply-To: <20250301190423.613493-1-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|DS0PR11MB7441:EE_
x-ms-office365-filtering-correlation-id: 49ba3d4c-8605-4d9d-256f-08dd631b9771
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?LEzsAXoWO8aErfVVFT3xwLY4yLohfn0FTEDOwy3Nvj//t+AxF+SNyV1zW8Y5?=
 =?us-ascii?Q?M28SsrgHvTqbr2yQ5WA3FiYqAYA2aFIHYlt7/M7AlmFrXX6LIBPnW9IeTXsI?=
 =?us-ascii?Q?xcNDEmYikUpOyxtRO+9pa9vcZtjZm/e6AgmUgy0qw58fXdkwoFIlwdSWWeN7?=
 =?us-ascii?Q?jyalaRUZvVu8CsiPudSWZ72ZmKvb3VvY1Me3GHehEkoTO869spxkOj6+8FGK?=
 =?us-ascii?Q?+ZnXV0xRo8jnkbxINzK8kaHDMEdcDzt4QgSn/0q+HgRi/7cXByculgLBaFdY?=
 =?us-ascii?Q?X/1Sn9pOUmTEo0vDdanJ32tYshha5zGVTEq3ke2HyBrlR0SrtPHyTkOsTwyI?=
 =?us-ascii?Q?MBgQ1vxYn5gWQue99TTHSnoCabJYGtRYHeRFrG1XiLRp4Ej2bzgd0RC5LO9j?=
 =?us-ascii?Q?juu/tta1kjhUG/gcuf7DsOq3RTH6vFYM8FGDn0/6UAwD2aKTlupF8KHUTD7P?=
 =?us-ascii?Q?Zhw2fJqhXCYtBFz7ISzg0nhkQAYZOcL9bTUnYE65Avcc9SBCbHZWVofXH4RA?=
 =?us-ascii?Q?9ix9QDM5DlbxqJjbSR8krJMIfWE5HQUejlHEv57iqECNUYqSvSbxqusmNhP9?=
 =?us-ascii?Q?rSyO0dqx6GgzMGasiPMaidSJcKWUUD5HvdTLrSMxCwYUFnBZ98TEnH3pa9KF?=
 =?us-ascii?Q?/7UN0Z893khlTB2PlF+TZ0riRIshXCEkIoIAqkADdfNBZZeXYlkR+wRZHAgg?=
 =?us-ascii?Q?uXVdCG6CLkL0qKp4OJay3cv1K7WtRWb2Ie7fE0nyd+8zwqepuTkLcrJrvCsC?=
 =?us-ascii?Q?chtmuqfEep3cHs00LXJcgLpyZVf/8Z7XUkGIPIwdAzaR+J8m9tBOYPc/pevb?=
 =?us-ascii?Q?fAKVvlmTXpFphqgGmldfjfqXGZoYvlqXVJ+vfIkTIfgfwbn8xHkHuZUCQTP4?=
 =?us-ascii?Q?WCL/U70FfZnBURj9PbM5NHnu6Qr6PdyO56cH8eN6kmvYhG9rMI9WaPtdUMqv?=
 =?us-ascii?Q?hWFsdKZyhRrhnK9/NYmTTHrJqA7lK3zJ/58gBsdMKL7FFKypxIiQeybzid15?=
 =?us-ascii?Q?JOm00GiwF32xb9Vm0QGzEViqFK3eQ6P+36CwVY5kMdpsFIw8DIjo/YkPc4eu?=
 =?us-ascii?Q?WGl9TYbVqGyf8evrs7vDrexsuZaGqNYJMbn63He/fx3Szo+HlAk228UayV2r?=
 =?us-ascii?Q?oufpt6rSCmgC9zDf9u14Lwj3vTq6u4UoOJltFzviw4iWww+MLEMwUazZ+89Y?=
 =?us-ascii?Q?NUVWPMJ/nTfuz2ZNC4qjonm1FEC0le+H8MtO8Qi4NRFjvht+Lkl+THZSkosj?=
 =?us-ascii?Q?F9mYJ46c+qgHNDkrcmcRSw3A7dn3KHRCEm2ufrd1ukwVEiQIAt9/WOuBsmHV?=
 =?us-ascii?Q?GWmx1sM06JpOBrB4cq9OGVk2PwY1X/ptyWAzpbAMMqlkw4Q5YLuwWk4oRmpM?=
 =?us-ascii?Q?JWUIwF90AOjezjg/hTmnSPTQw1sbZKGbGBeeiN/N7KrSBt0pDgpy8aPuHy2D?=
 =?us-ascii?Q?pHDksvL0zaMeuDI+vBOV7fFSaXLLKl5F?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Kgl61u9u5EXMEqmgpLFFOIuAJKc9ISL8Kx8P6M7pF4UZdfFnBVq6ihf7o1l6?=
 =?us-ascii?Q?TYyOZkKK8bSH1jzB9cekc2vS7qc/YNjaVIQjpdN818ivsIieT0NQXYqCz30p?=
 =?us-ascii?Q?q4sAZ4hAoViwBx38/Wr97JBkr0GipFMb4V+1ZEpLvD1Nu4c7Kjtl8QGnRlOR?=
 =?us-ascii?Q?5opHa0MwaPfICtds+plvmpNsHlr5XSrZenXBtRAAcP4j3jvPrZwVPf8yJce5?=
 =?us-ascii?Q?QJgPRhe1XB2/cmseNpBQEWJhkw9+TWIK4ANC4LJ5SJUdMWys9Wdorx9Io5dn?=
 =?us-ascii?Q?CQybf1nB+YpWUQTXLXD2gLoKTed4fRqRzTbpr7NgtdFuRuqA2BmiAqp2wut5?=
 =?us-ascii?Q?EKjcM/LWjZSDMh8wv2WmTKq9catpluYCpHm4dg/7kF4+XvU5NFYYhJzF+h5O?=
 =?us-ascii?Q?iej5MO0M7VA7fpYrK51HIiuciA1fUvXsWjS1lo+Pa8rIknaRaxrhVt7BiXMM?=
 =?us-ascii?Q?xoAba+4BRa7jvmKcYaeTvGc+C/6q5udSnF58ODE7q63bd5fstzg7BG3loGlz?=
 =?us-ascii?Q?31Z2m9//r5q2vJo96/wp9CmlRyzvSdt/Ds//N2eK9DTh/hhF4qAc3TRF5nJy?=
 =?us-ascii?Q?ZNUyCqlbGXn/ZdRP4nn6AmE5SrDnOSZu56KBjy/0ILlX/lDdnlR/mOR+9rTI?=
 =?us-ascii?Q?8+Xg2EhqxeCI9Gk8QXcJYXxyLlXyE5yE5g1WVM0D87ZGqce6lun/7BFDWvmX?=
 =?us-ascii?Q?GT8AEq6/TKl79SXnm7X7ngrcBf7V3XX0jBzdJC8m83U4RBt5PaY2dv1bP2LI?=
 =?us-ascii?Q?WsGecTmD9DYlwX5Mlp5uDLSp+PVI7RcDJuRXh5u2jbifl0Wvyfsrc8j6mkqe?=
 =?us-ascii?Q?JKjDPER2UtzpiJ4xe5vogf6mkrPbEdcne6V6x5l13PRHbdxY0u4ZdXL9tSCR?=
 =?us-ascii?Q?hTSkiTCdX7Wygyqo2/1QTdFYiL7Bnf740smm936kT434zo83WmAH4Esc3Zh8?=
 =?us-ascii?Q?fBZxnWUtPW+yGbaxJmMsQISK2+Ez+UXaWLIac9uUClhQetfQBvOYDNAMVCEy?=
 =?us-ascii?Q?tgGEp5NnQbXx/yrTl0VY3fiJaDPyFl/fjklNLwLi2rYlv3SZVLK8tDRA6SNN?=
 =?us-ascii?Q?H/K4LzQ6tapDhxw6zkT4yX2NPtBoWeYlrBAhzBhsx0ik4pHgeimEraasjBT+?=
 =?us-ascii?Q?wVqOrOx+q1ArqpoE5vb7ctkI2gxu07DRrpUQxCMRTKdyKJdlrNfXlNdQG2Iv?=
 =?us-ascii?Q?gchZQTBTxtZacQpj7m/QMCTTMpMAJt5mwjWlnYGU4k83ypbPIFn1Nur8AzHl?=
 =?us-ascii?Q?0jJdrQOy8Qvwbei8xX2GaHrKENg0tmFOv9Uigt9jmUfSh7jghe0gNiEMqvtA?=
 =?us-ascii?Q?kFN4XFGkYsnuMeLTgJNPjx4AYue9mNmCtwv9qSwOhrJE7zquLRJBSh4oKFTk?=
 =?us-ascii?Q?ya4IIgQbgkhoyPD5dqt/7jqTceO3r8plARvTpDBEwlN5aq1VU/zttPRrXTzi?=
 =?us-ascii?Q?KzezyTxtWK8CeH6k0+bysyS54isPjgrM5y0SIrvVujJUp0X5Cd1kcTvT7n8I?=
 =?us-ascii?Q?62Vm3d65Y50usW43NDDjR0nCnXEGhB9FS2vD5uXRqJfheRulWTiVHtMgZhL8?=
 =?us-ascii?Q?W7BAJMz6SJ7jTTQ4GYJESKMYAtG/4pffRkALpHMF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49ba3d4c-8605-4d9d-256f-08dd631b9771
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2025 17:13:51.2165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DuwIQ0E/gnHlOpMU+f4hP6nu7x7h57P8K6EfKHZurWgnwdoLcx/iZwvoRFYRhdLte314BTpqmKCcdgM6DdVmBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7441
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741972436; x=1773508436;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pXcXbieCzW2ZLJANIv9aGrXLZVaMkINtBoysdExnT7w=;
 b=a/8rpJphUaCdaZV95irRbK3F2vvYMi0+uw7wW8qoFVrvCJih216E8PwU
 knd2Q23XVJHoduO8VR3jfFyU+BHBH7kYQoIedMmsiWli4PoNwZblBnher
 piFbweolWwbH0PN9ayDjXw7GZ+oaZuuPRl67f9mKz4XwVNOipTTG2NXLi
 1UAdUhreN9rUvtjmNXqlw6V/9PwCvNqbG5Qd1A886ScveNM/QA2b7rQjC
 cUFfOOxLDtqe3A6izAbhIKkXDLn6jGp1AxiZaf78keCIHRbWznAtjivz7
 37+3wvunE0DbUgQLHxc1elbnEI9eNJbGoIioYi0/QByopro7ZpZ5uXEY6
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a/8rpJph
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] idpf: assign extracted
 ptype to struct libeth_rqe_info field
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Polchlopek
> Sent: Saturday, March 1, 2025 11:03 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] idpf: assign extracted pty=
pe to
> struct libeth_rqe_info field
>=20
> Assign the ptype extracted from qword to the ptype field of struct
> libeth_rqe_info.
> Remove the now excess ptype param of idpf_rx_singleq_extract_fields(),
> idpf_rx_singleq_extract_base_fields() and
> idpf_rx_singleq_extract_flex_fields().
>=20
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
> v2: removed excess function parameter 'ptype' description in
> idpf_rx_singleq_extract_fields() - reported by kernel bot. No code or
> functional changes.
>=20
> v1: initial patch
> https://lore.kernel.org/netdev/20250227123837.547053-1-
> mateusz.polchlopek@intel.com/
> ---

Tested-by: Samuel Salin <Samuel.salin@intel.com>
