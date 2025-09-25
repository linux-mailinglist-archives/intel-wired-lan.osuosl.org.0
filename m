Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F4FBA05DA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Sep 2025 17:35:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DEBF083E18;
	Thu, 25 Sep 2025 15:35:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ddyS0Mecs1lJ; Thu, 25 Sep 2025 15:35:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F53A83D52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758814513;
	bh=vztte9Ei/mT/hg864EBnx0PUPPbhL+Wr1pCCTmd0gXw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4RmGGtHxxsnmfVwnDumO17BxR33w2RpzKHgSlW4vj/qB718DPxWZeb1XnK0nlUna3
	 ibVBFM4fjTfkneMpr92jO+1/JqgYqJT6JqWk/KbnJZzPTFsa8Z2xTDaLElrjt3i3+/
	 X5uLUeEzIy2/aoTZi2VUpt1CfzKKJeLKCWtVM6m0HGsU2rNWukIGoGJiTj9dlgCpSG
	 qne+3GA7c43ys0Vu6dwxzAc8c6hhx7C/yiJcM0W4uX+Qi2572YgcJU6zVBYXwLPIY+
	 fFMrg2+9Mny/oU2L4wTGPc7eLpf3+bgDtJCZzvXe3njpA8FyktE5to4CaI2s22Ac4C
	 m0EACJnLNOdUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F53A83D52;
	Thu, 25 Sep 2025 15:35:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8238C12D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 15:35:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 73D944117E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 15:35:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dn-afcS3UZX1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 15:35:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=sreedevi.joshi@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 93AE44117D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93AE44117D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 93AE44117D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 15:35:11 +0000 (UTC)
X-CSE-ConnectionGUID: NmZgaCt7TbSVbw9tZasCxA==
X-CSE-MsgGUID: Hcq7X77tQum+CLTGCoMYjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61190949"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61190949"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 08:28:05 -0700
X-CSE-ConnectionGUID: 1DKvp+GmS9SgCdRnED1+xQ==
X-CSE-MsgGUID: 1Ts1GRxUTXuduI/CtHVoHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="177757768"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 08:28:05 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 08:28:03 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 25 Sep 2025 08:28:03 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.59) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 08:28:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZfAB0tx/TvU0DyUSk40at+SDMetf1HPfyRkjqjZA+i0hYblf7UfrIOi6zv9W36XZU9A6Dm2IxwurMqEFX8IWuuzGhfzDPMEl/5f8TUVoZLhZzW6W6Z/+gDNzGy1jRC7TSMDdtjKGJz6tFP52zu+YYzBE+LSLyYuuRafO4O6Ozv3T1N3kLPGMBgaxLs2SEOHu5/TDfIoz9j8TXy1FOEYM2o53A9N2zlM9YhRgFRIumw/7bYwVe7wCD2dknQ5cwlWqHq4ZuJBzjQnHh+OXxRGNUJGxpc6RUeyLumIX34spPn9uHy5MyfFCi2Gnkj1NCqUsbpNiSkC30yZUW6hWQ/iwLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vztte9Ei/mT/hg864EBnx0PUPPbhL+Wr1pCCTmd0gXw=;
 b=cYZW4X9As3xUGcLCtVbtgxnSbU/VowyDlFIDniIpxCvAO2yF/o6KPksQkyTbf08gejIhcOqT4hiHShkvDlBNkFWwrmVro2nMZHBVwh3ctZ/ya0qe3+2m4lYVrLijxiH5WaU8ozsj1D95edO4tOXiNFjGs5kCG40YhOCuy68pmkeM9wZeNgacwr460LedXq+IKbFL4/r5SVUo76TGFooXi1ml/jFdxsVi6yRDOd684OiYvr5LHvaDho+DYIXWGD+3puXe5cDekwXtNSxLwEvjhAfZfr8DzfgMBW5n9P/F6Gh4qoIfmbY/mjeiGUI2kJUGRK7k89JZDov7Xoqz8GDJIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6289.namprd11.prod.outlook.com (2603:10b6:208:3e7::9)
 by DM4PR11MB6504.namprd11.prod.outlook.com (2603:10b6:8:8d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9160.10; Thu, 25 Sep 2025 15:27:56 +0000
Received: from IA1PR11MB6289.namprd11.prod.outlook.com
 ([fe80::bd8a:8f94:f384:bf93]) by IA1PR11MB6289.namprd11.prod.outlook.com
 ([fe80::bd8a:8f94:f384:bf93%5]) with mapi id 15.20.9160.008; Thu, 25 Sep 2025
 15:27:56 +0000
From: "Joshi, Sreedevi" <sreedevi.joshi@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Carrillo, Erik G"
 <erik.g.carrillo@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [PATCH] idpf: fix issue with ethtool -n command display
Thread-Index: AQHcLjCOEs/Hw1m3IEm/5zticWjoirSkBWCA
Date: Thu, 25 Sep 2025 15:27:56 +0000
Message-ID: <IA1PR11MB62894D06A44CBAB7C7F87169891FA@IA1PR11MB6289.namprd11.prod.outlook.com>
References: <20250925152440.142107-1-sreedevi.joshi@intel.com>
In-Reply-To: <20250925152440.142107-1-sreedevi.joshi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6289:EE_|DM4PR11MB6504:EE_
x-ms-office365-filtering-correlation-id: eb5bd937-5650-4945-6fcd-08ddfc481a37
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?WHTGp+nixIpp+pFrSREsIqhqgMU7Nul0ZJwIXamZqrpWNow3eOqylXLpvx6a?=
 =?us-ascii?Q?zLc+6hoBXwyu8T+M+ScrGT0nAiEKFHKGXNGuYnaD5oNcsPXxoP3B3pRxELfD?=
 =?us-ascii?Q?ihRbxFYFv7jKHVIUkDUyKWyD6wRlXG1PZmwu6ju7QEcD5VkB6IXNHTnYHwkq?=
 =?us-ascii?Q?fXLFn7xH1b+p81YfCJycYjQ7HcARYJbNu1/fnqU7kFooV9068jXWI2ex7NgS?=
 =?us-ascii?Q?4tNCGH+iuqH0+Upng2rZvu3tWkArC/aYvyNWCLV08H9emAgJqx1NGqQlm/b4?=
 =?us-ascii?Q?X8HEfl9ZaznQaAcpRWICza+TT5hp9KxmemNSWWDyWPep+l3Hk7s3au6uA29G?=
 =?us-ascii?Q?E0uxzsSEoAajfbVfPO2uzkSHadQnbMNVgPaCaEK4/D+HwBEz88QPQlnB/qm3?=
 =?us-ascii?Q?cI5zFpIYByRcbqYK5RZrCjKzkLKwDTDZ4nCp95kUOx2LSCSx08V79VacHn8C?=
 =?us-ascii?Q?uTgQbosL+LOt4aM1gFAAu636lUyDO/3xBN88inU9UbkTac0MoPsO5pwh8Ag3?=
 =?us-ascii?Q?+eRGYVqv/h3sJBwfnCiPN1PKAzIU5DA3QEKYJYslKdFFBjeYpMhY7juRQmY9?=
 =?us-ascii?Q?wEUD64SNe/TX0N5ZEFLlZ4k4qOHR04BJXzQCQzQIFF/OnDWUqsWD42Dp2Ek8?=
 =?us-ascii?Q?fYslu9dUkRHj5+63hLMoEsxOVxOzrlV2/ey5r5TBshqwQDZsfYc1Fn+YumUn?=
 =?us-ascii?Q?XCbwsU42YX4AGjuBgxGx2VhV65VT3liCD8VmOIgPa3thTYVDR6FYGOhupotf?=
 =?us-ascii?Q?E5CQvAfzAohl24/mMX+6TiYPvfr46Nm7ajtZNn7vTBCXAbcuEZHy9vFGCwxN?=
 =?us-ascii?Q?T2AUdEmzjAjSm49f5XllahMHCk/Cw5ghaVMmr9x8xKDPFr1DAZikkT7jIwyq?=
 =?us-ascii?Q?+kRX2ggi16Vr1hj29osYQ7nAHsdue8s6W/s3iOWoG5clrrsni8FoMwd8KQoE?=
 =?us-ascii?Q?bDazXbmbNJ+dDup0Uz/bKGxivyt3qwO8Q26sFLDQfh1Wj4tR38WG8+DB84KL?=
 =?us-ascii?Q?OxPzDetG+LuNM0pbnlnl4bCeUWDCvlItCg5F6rvXpTZ42XodjOKrY1hCkMqY?=
 =?us-ascii?Q?O2g+1y9tjhZ6nhNTlqDqeEMQFfPvdpZv3Z+drNhoF7Yv8fkXL6RsoBvz1s7R?=
 =?us-ascii?Q?GR6CasQXB/miu2YOKXYZMm0IQ8w1RONCUveoPXjdBItkWDUF4QdDFRWqpp9E?=
 =?us-ascii?Q?voqJv8mtez2pQ+hsaHYo0RSE8S9pnVN3iISs0ay4svufyAqeiZ7Q+ylBWFGw?=
 =?us-ascii?Q?368emhvaWtR2JsUaC3Sq4VicdHPT6tKuX1o93MR4hh9osE1udQ+mD+LbqWmq?=
 =?us-ascii?Q?GjMjCHZiJreMkDNApNnZacrKcZhsSKsycXK+nkWo9CUY1Y7NTamDb88HlLhA?=
 =?us-ascii?Q?we4DV/geY5iyiutICnNc8b1xmLKJvld5iGm4OKuRUV4UORCmdG1Ghvn6IhUG?=
 =?us-ascii?Q?NPRXOpYCYg1/U7OR8w3bBJCPeY5cJJaJsCEcEFTxeHhFp75WT0DEMVIWCo82?=
 =?us-ascii?Q?zNrOJL7DeeBMFLY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6289.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?34dMS7HIL68Kw+1LDoAd1gph6DU5W3eBZVvuQGKkzyNaV6iKk3Yc+tzQZOrE?=
 =?us-ascii?Q?4ktfO5Z+jJD2LsHTLEGK4Z6BbIR0K27XZOW3GJDbNEV81tZ1ujn7SA0MoBwj?=
 =?us-ascii?Q?ddcuo5pi38F+MCKXRyOmp3gsLmQxV+aX6ejNnpGvzvpUybg7o8BoYcyxsGTb?=
 =?us-ascii?Q?QUFpZ0T0bUy6kRPG0PvTYQP7NjZ4xDDVUcynujaKOFz3g6j+k01pHIY+xFm+?=
 =?us-ascii?Q?zL+EdM/XBZpBT4hGTjpXiH2l5/Ec/OUwHbf6INyBc7Spc2DR+Y0AJ9mAlP2V?=
 =?us-ascii?Q?/6e2+xJ4uV9exHdRfUmCv47wEp8eO5O5jVRwOkEEneNt7Zxp+DAh+GGe5W+E?=
 =?us-ascii?Q?MqjD6hbpNKw6cBkn0LEb/4FEHPN2t99FTyW4hmn6EnxIyeA9Fe+J+fuRDdO3?=
 =?us-ascii?Q?YDaI8EBoZNre0tljpt3CpK6k0ZJniLUASJ9ptHc9rmocbN8n6AOIPoGnBxn7?=
 =?us-ascii?Q?Zj/J1XOtCzAwDxq3Xk594gfOwptQYXDIQiQbe8NQnAaCAXkAb0rTXq64wB0L?=
 =?us-ascii?Q?kDDgqw1SUOOTcfTB20kphwk2nhmaDtN9/SPCad+EPV1VVSNRZeLe6sLeH87V?=
 =?us-ascii?Q?aHDfwgIXOWSmhtjAdFFJAshY19QgFACur3iQkDCofqWVpy13JFf0WA6at6RC?=
 =?us-ascii?Q?XLgLZ1vnWfwMqFN7JijrTjD3mb8lDrSQTvW5CtNZKRHB2HnqUW9rcLdU74da?=
 =?us-ascii?Q?0bhdLyKUaWrdD4eK72+P3qqFUOqt0LrEEJj8/qqXJHt8BTi2cdDDJngwUAl1?=
 =?us-ascii?Q?WrWk2dMQL3l+BHDSMtu7o4DFrr9hUB12H9krGEzRNtwrN2wW8rwZkr/BP6HQ?=
 =?us-ascii?Q?AXu6SvT6TcCey+DkXM0fYPsGy7DcDCinPpxuo9Av2YwrHQuwmnAgsNqGvDiy?=
 =?us-ascii?Q?kK29hHYolXo+5GhhfFO4sSVGqIHoSxwfLYeiuR5cNflyM9NF9hF6vdMvseCD?=
 =?us-ascii?Q?wMzrlN+Z6indRVs0cK4XFLG6ju6LV4n+DgFNCFytUur9JC8OEtIr/ThAnOgh?=
 =?us-ascii?Q?AUx8674cGTuwdUhvevi3I1hjMvM2rhe0Muu4McENH8oy0DE4T92gD/CfAhTY?=
 =?us-ascii?Q?rLSdCPzEbaT6TF9vMGB/gknUoSjVBUHxoNdCchKdIHtosw6s+n/9ndzXuSe1?=
 =?us-ascii?Q?4IdHh/KPenqaVkJpwZmSFwPcqjakt065k5Y0YifeBpDUAyvKBdLUKnS8KxXA?=
 =?us-ascii?Q?reoGecKBoSkEqBzdCqsB5f0HZzzjdVOeLzFaMFdzNd8Bp//EkBPb8Or5GroX?=
 =?us-ascii?Q?UGuJkhUQjLHejUbeIiaSZ9sBbOXmYj9CRP57XRhVOgDCGxFrJ93pfBsyXkq9?=
 =?us-ascii?Q?zsU8yPWmkfzm/3PoGo7ZjWL1V0qr7M8NcE8WhoVztJ/CQ3BIlHwMLjpT/mxr?=
 =?us-ascii?Q?7OiyVDca/0H5u4rX2qn8ZHV+D4QAzdSXcQrqZNAHtVx16h/R5EEPkbILldfs?=
 =?us-ascii?Q?SqNHeOzgMj0CtWB6dJ5CTA2341FpnzYLjVuUNah2+b36Pmp3c8t4LaAxGrxH?=
 =?us-ascii?Q?vbFsRDgvaJxGNRv3edcKzzH8zgfCSElcrY6fwxRsHzcvvl3TOhyBjmNDFi+j?=
 =?us-ascii?Q?jSUbzXFnBcwi7Ka929GxzZ461dEmH2P3HF2G2UbS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6289.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb5bd937-5650-4945-6fcd-08ddfc481a37
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2025 15:27:56.3954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0naeSbmIySMOPxFD+V9neUkOhijXtDKN4UXsaMVoJk1T+uD34BVLiXmN9i+agijsnPDuBbeaBfb0Yc4Vs4wNYSNlSN/+dqNOtvG16JXmcRM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6504
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758814512; x=1790350512;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RQw/aG9gSlVg/wpg0rkWSGLH517BCFRNTQsnoXMEcu4=;
 b=UrltixcfuJuUDrEf7dq+GLKrVxUrpgDhify6y1MhOUyh/BrS96/axrfP
 J6QDAQNUFO8FQ0+zIlFDvoDlp47mgEIPDY4vR7YYAInr/jW/J40Oa54xZ
 DwNd807ncyx+XdHWmeNn4DPe97fk7wR0iL+4XmGyK2nggT9F1VGfJke6f
 ggsLz+rY+6ri0Lw1XC8K5yUTRjANbP01lVwBF0NqGG2ARg+e7CH3oRvBQ
 gpjuMKF2SaDKjTf4qUC3WRDaGdvid3/VKauZStEk1VPDNetiN9YQzXlgS
 nc3gZRHlwpdfmqqujnhih4Xe0kjzyBU/dEEt9JFmIyHMVaFOOhy/AqpqA
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Urltixcf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] idpf: fix issue with ethtool -n
 command display
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
> From: Joshi, Sreedevi <sreedevi.joshi@intel.com>
> Sent: Thursday, September 25, 2025 11:25 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Carrillo, Erik G <erik.g.carrillo@intel.com>;=
 Joshi, Sreedevi <sreedevi.joshi@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov=
@intel.com>
> Subject: [PATCH] idpf: fix issue with ethtool -n command display
>=20
> From: Erik Gabriel Carrillo <erik.g.carrillo@intel.com>
>=20
> When ethtool -n is executed on an interface to display the flow steering
> rules, "rxclass: Unknown flow type" error is generated.
>=20
> The flow steering list maintained in the driver currently stores only the
> location and q_index but other fields of the ethtool_rx_flow_spec are not
> stored. This may be enough for the virtchnl command to delete the entry.
> However, when the ethtool -n command is used to query the flow steering
> rules, the ethtool_rx_flow_spec returned is not complete causing the
> error below.
>=20
> Resolve this by storing the flow spec (fsp) when rules are added and
> returning the complete flow spec when rules are queried.
>=20
> Also, change the return value from EINVAL to ENOENT when flow steering
> entry is not found during query by location or when deleting an entry.
>=20
> Add logic to detect and reject duplicate filter entries at the same
> location.
>=20
> Example:
> Before the fix:
> ethtool -n eth1
> 2 RX rings available
> Total 2 rules
>=20
> rxclass: Unknown flow type
> rxclass: Unknown flow type
>=20
> After the fix:
> ethtool -n eth1
> 2 RX rings available
> Total 2 rules
>=20
> Filter: 0
>         Rule Type: TCP over IPv4
>         Src IP addr: 10.0.0.1 mask: 0.0.0.0
>         Dest IP addr: 0.0.0.0 mask: 255.255.255.255
>         TOS: 0x0 mask: 0xff
>         Src port: 0 mask: 0xffff
>         Dest port: 0 mask: 0xffff
>         Action: Direct to queue 0
>=20
> Filter: 1
>         Rule Type: UDP over IPv4
>         Src IP addr: 10.0.0.1 mask: 0.0.0.0
>         Dest IP addr: 0.0.0.0 mask: 255.255.255.255
>         TOS: 0x0 mask: 0xff
>         Src port: 0 mask: 0xffff
>         Dest port: 0 mask: 0xffff
>         Action: Direct to queue 0
>=20
> Fixes: ada3e24b84a0 ("idpf: add flow steering support")
> Signed-off-by: Erik Gabriel Carrillo <erik.g.carrillo@intel.com>
> Co-developed-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h        |  3 +-
>  .../net/ethernet/intel/idpf/idpf_ethtool.c    | 57 ++++++++++++-------
>  2 files changed, 38 insertions(+), 22 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/etherne=
t/intel/idpf/idpf.h
> index 4f4cf21e3c46..ec759bc5b3ce 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -269,8 +269,7 @@ struct idpf_port_stats {
>=20
>  struct idpf_fsteer_fltr {
>  	struct list_head list;
> -	u32 loc;
> -	u32 q_index;
> +	struct ethtool_rx_flow_spec fs;
>  };
>=20
>  /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net=
/ethernet/intel/idpf/idpf_ethtool.c
> index 1352f18b60b0..6a39cc1feeb5 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> @@ -38,11 +38,13 @@ static int idpf_get_rxnfc(struct net_device *netdev, =
struct ethtool_rxnfc *cmd,
>  		cmd->data =3D idpf_fsteer_max_rules(vport);
>  		break;
>  	case ETHTOOL_GRXCLSRULE:
> -		err =3D -EINVAL;
> +		err =3D -ENOENT;
>  		spin_lock_bh(&vport_config->flow_steer_list_lock);
>  		list_for_each_entry(f, &user_config->flow_steer_list, list)
> -			if (f->loc =3D=3D cmd->fs.location) {
> -				cmd->fs.ring_cookie =3D f->q_index;
> +			if (f->fs.location =3D=3D cmd->fs.location) {
> +				/* Avoid infoleak from padding: zero first, then assign fields */
> +				memset(&cmd->fs, 0, sizeof(cmd->fs));
> +				cmd->fs =3D f->fs;
>  				err =3D 0;
>  				break;
>  			}
> @@ -56,7 +58,7 @@ static int idpf_get_rxnfc(struct net_device *netdev, st=
ruct ethtool_rxnfc *cmd,
>  				err =3D -EMSGSIZE;
>  				break;
>  			}
> -			rule_locs[cnt] =3D f->loc;
> +			rule_locs[cnt] =3D f->fs.location;
>  			cnt++;
>  		}
>  		if (!err)
> @@ -158,7 +160,7 @@ static int idpf_add_flow_steer(struct net_device *net=
dev,
>  	struct idpf_vport *vport;
>  	u32 flow_type, q_index;
>  	u16 num_rxq;
> -	int err;
> +	int err =3D 0;
>=20
>  	vport =3D idpf_netdev_to_vport(netdev);
>  	vport_config =3D vport->adapter->vport_config[np->vport_idx];
> @@ -184,6 +186,29 @@ static int idpf_add_flow_steer(struct net_device *ne=
tdev,
>  	if (!rule)
>  		return -ENOMEM;
>=20
> +	fltr =3D kzalloc(sizeof(*fltr), GFP_KERNEL);
> +	if (!fltr) {
> +		err =3D -ENOMEM;
> +		goto out_free_rule;
> +	}
> +
> +	/* detect duplicate entry and reject before adding rules */
> +	spin_lock_bh(&vport_config->flow_steer_list_lock);
> +	list_for_each_entry(f, &user_config->flow_steer_list, list) {
> +		if (f->fs.location =3D=3D fsp->location) {
> +			err =3D -EEXIST;
> +			break;
> +		}
> +
> +		if (f->fs.location > fsp->location)
> +			break;
> +		parent =3D f;
> +	}
> +	spin_unlock_bh(&vport_config->flow_steer_list_lock);
> +
> +	if (err)
> +		goto out;
> +
>  	rule->vport_id =3D cpu_to_le32(vport->vport_id);
>  	rule->count =3D cpu_to_le32(1);
>  	info =3D &rule->rule_info[0];
> @@ -222,28 +247,20 @@ static int idpf_add_flow_steer(struct net_device *n=
etdev,
>  		goto out;
>  	}
>=20
> -	fltr =3D kzalloc(sizeof(*fltr), GFP_KERNEL);
> -	if (!fltr) {
> -		err =3D -ENOMEM;
> -		goto out;
> -	}
> +	/* Save a copy of the user's flow spec so ethtool can later retrieve it=
 */
> +	fltr->fs =3D *fsp;
>=20
> -	fltr->loc =3D fsp->location;
> -	fltr->q_index =3D q_index;
>  	spin_lock_bh(&vport_config->flow_steer_list_lock);
> -	list_for_each_entry(f, &user_config->flow_steer_list, list) {
> -		if (f->loc >=3D fltr->loc)
> -			break;
> -		parent =3D f;
> -	}
> -
>  	parent ? list_add(&fltr->list, &parent->list) :
>  		 list_add(&fltr->list, &user_config->flow_steer_list);
>=20
>  	user_config->num_fsteer_fltrs++;
>  	spin_unlock_bh(&vport_config->flow_steer_list_lock);
> +	goto out_free_rule;
>=20
>  out:
> +	kfree(fltr);
> +out_free_rule:
>  	kfree(rule);
>  	return err;
>  }
> @@ -297,14 +314,14 @@ static int idpf_del_flow_steer(struct net_device *n=
etdev,
>  	spin_lock_bh(&vport_config->flow_steer_list_lock);
>  	list_for_each_entry_safe(f, iter,
>  				 &user_config->flow_steer_list, list) {
> -		if (f->loc =3D=3D fsp->location) {
> +		if (f->fs.location =3D=3D fsp->location) {
>  			list_del(&f->list);
>  			kfree(f);
>  			user_config->num_fsteer_fltrs--;
>  			goto out_unlock;
>  		}
>  	}
> -	err =3D -EINVAL;
> +	err =3D -ENOENT;
>=20
>  out_unlock:
>  	spin_unlock_bh(&vport_config->flow_steer_list_lock);
> --
> 2.25.1
Please disregard this. Will resubmit the whole series.
Thanks
Sreedevi

