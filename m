Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Cz2EVpF1mkFCwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 14:08:58 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 263003BBC76
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 14:08:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D03340F35;
	Wed,  8 Apr 2026 12:08:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v9gaZ14-gilY; Wed,  8 Apr 2026 12:08:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 079F840E21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775650134;
	bh=b8x8QyL13C4KvaH0/2cUWFM6L68ZS4nHx3+0d0BybB0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=umJkK5XdiAUOAbbbEJTPIa3TWo6D86XhrdV1HeCQW1FQ+wxdgwaXVf+U50j4Fix0r
	 mXxyR/1MFnzwD4HeU5x8kPuoMrstvmnzuAz4uuuSzaz02mcegr2JXwIdkmAkrveVm6
	 6xEku7fqWaVor6AuMuwpixJQi4Eh/DF+CgGr9icH11pKu6bwQSawpCLyTWbFsR+pVk
	 sd26tFVqNjK8B0o5g0FHiBDiCH011/QLuI5aW3qsi1igu/c1fWu+gkhzXvExQ9+yJj
	 fd0vGsG41fcDaQZLwig4kJL+hbviSVk/lIKyewoLUMrufdYPp1BCEL1XCvR9h2RyPL
	 IiJFcPjrh2e7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 079F840E21;
	Wed,  8 Apr 2026 12:08:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 02087237
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 12:08:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DB82B40263
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 12:08:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tviswYMxD5lP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 12:08:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CF4F540133
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF4F540133
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF4F540133
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 12:08:50 +0000 (UTC)
X-CSE-ConnectionGUID: c7cCjNuKR/6mdYSbEp9c/A==
X-CSE-MsgGUID: pETaRU4VSVmrsprncDu9TQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="87706947"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="87706947"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:08:51 -0700
X-CSE-ConnectionGUID: 12+DyZnfSb2mFnTRlXLxuA==
X-CSE-MsgGUID: vDEoRfOmQ9CC2RliS+6IOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="223691316"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:08:49 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 05:08:49 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 05:08:49 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.27) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 05:08:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H8jzEq/d6uJqK50XRzSK+t/4KHmrZi30mT/2Hs1uRq5LmLXMUlGNK63Cv0tzFjFeJ5qq5FhIvKELObc+93hx3s8epsF3WMwsEE6GQI/7wQ8LsCmMOC+hMmwBX+3AROTDjSSqeKyMy9Ex7xc+EbW9pg0gKufGeMjFuRfwqGMoHXYN1duYoSjsu7ue5n3FvBoEiFMHRBVunVi5fIzacCKo4u4j96HumeAP5Arq6zc7XEBdZE1LOdLzoXXAH+vehpYyVGowzeDgNT+yVbE15QTRVRPdTkuh25DQ5hwHL2gmrPnCYKSW+y3f5tLzRz4GbvvqVNUiwQ1iCHNQKBeC0pAdbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b8x8QyL13C4KvaH0/2cUWFM6L68ZS4nHx3+0d0BybB0=;
 b=bEiKknOrZhgCGYAJSYibB+XMOGJnw4kZeI3+ASIkZlBIFYoQkCb0btHg7WOd2va/cH3ky5uuIqK8zKPabNU51CVmwnRqOtb1EQIr7IrRGLAAvn1XuQ+NFYTuzrmHeC3o/D2CXsasejH+/niDDRV6bqZDR40TjvQzl7eAtU+e3xDsnrVAHPGgohQawevDmGQmmcbnFoi0gyvf2eSxIMYGEyF+xYLpJ0yPc9RvMcRl/scXB2mUdHyfiOrhDWB3dVdUWk1LzlqTf7xaANO30Er3vE4+PqJfcPqZeNj9MaaQhCa6cjzaawP520Xfjotj4gQjXI06UT2lwKjD7FSQvUcf5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA1PR11MB9495.namprd11.prod.outlook.com (2603:10b6:208:59f::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Wed, 8 Apr
 2026 12:08:41 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Wed, 8 Apr 2026
 12:08:41 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Paolo Abeni <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Alexei Starovoitov <ast@kernel.org>, "Daniel
 Borkmann" <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev
 <sdf@fomichev.me>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/2] i40e: keep track of per
 queue gso counters.
Thread-Index: AQHcx00aHc9Mj73NP0egkgwGrAFagbXVEg5Q
Date: Wed, 8 Apr 2026 12:08:40 +0000
Message-ID: <IA3PR11MB8986E422CFBF81E11D5C13F1E55BA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1775648513.git.pabeni@redhat.com>
 <c70f2e9d8cbc4af419356ed022bc60a8c9cfc7d2.1775648513.git.pabeni@redhat.com>
In-Reply-To: <c70f2e9d8cbc4af419356ed022bc60a8c9cfc7d2.1775648513.git.pabeni@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA1PR11MB9495:EE_
x-ms-office365-filtering-correlation-id: 316543a8-3b4b-41de-a036-08de956792d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: z1ppkFPC8veHAEc6YxY9dcePl2O6JktpL7KIWxtWP3ZU9gMCAwq7m4swhho/BVibnUHs78D8+AkUKoijRgI8Jdr7Y43XcHS0er3S1t+u4vbBvAb5cW85tZ2T/Gr8qFomvBMWNXafAlXaFd4wSYtuZz9KcObj1cI4ussD6RuTRe4QpgMagMinykwj65/HqDtsc3xYwcIaUCra2GDsVpnKuoScqWrkevGSIgtU2wiseaObZi+3WPkwUcBPBOSFS7xwaU7Zapxh39U0SUgaUu0yxNsExoSEzSRLa7A4UHCbFcdLu0dYHJmORthmtcUTmWjY6Oif3WQXnBT9bS1yE4k0tyXfvC+QCe9T46h16IYSVTTIxytYf32JF0tUzC0oH/jmiXf4lfjwa3n2ThPU5SjO9R9Mq/8Y0rn6vINeus8j5ogOAI5trd5OqC20tr3JrYFnSmOZxFsKFIdzlmc15raJXPxtejQnsaHLZ2WbbehSBtGFCeiEPio6t3jHrp/l2pq3wURlE6jKfs9zOv6+ILFgIHnX0p7OD8CjULi+gVTml0iQNH6bklzpxH9hg49WmU9Ua8wJQufbHoEniJ5nyAx+0AjgRS5LFoBB9Jc029/97RwZlc7D0G2A47fDcSre4ofcgFaf0gN+nnaJr6RA8RdnfdlDo15mGaE2RueAltiQ1PNGmvGvP3N6NLoMDP7wZv534rVQw3V4AAwAD51ut2RPaAMAG9/sqmQFaEEHj5Jq7MZhHOZkDSUN044sKzJx24LtUwZ2Prd1Hi09jLvrzeW0PbGUdoz2pG7DtVxMm5io8Rk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VrYb0SZDIKoKF/3UOnJ+o/K2xo/v4eoTjdfSp3vi7Bixh0ny3+2E8dNk09W4?=
 =?us-ascii?Q?E0OT22PvMCsOzNRpop7P2QSKcjjhpfJpXeHWFGWx9nxZovH2GPrMaiOruak0?=
 =?us-ascii?Q?mDhZ8Ul8TZQVxRhWvj7lsHCA7Fzx742uom4ZA38wBTYvdUGNKKIsA6jHxDVQ?=
 =?us-ascii?Q?HQRpX/X3q59ZGcf2VANh2MzTgD5bfUIe4SsSHglDldVLmXtDTzO0+l+uO8ZY?=
 =?us-ascii?Q?bLzu1dK6fPSlgrfRrJfyL9FPpFBWEsRXeQI45uTzdGDF1pe0YOJrOPUUAtLa?=
 =?us-ascii?Q?3HHUpSdYCiG6pB5NrZIIXbuIUC1ODrbWgKoP12NRg34u6fUl92vTYB+IsLQ/?=
 =?us-ascii?Q?UH6n8a2lyuukwbPUHHnQ+P2ZVEatMRmz9OqOzKqNqARAJysnA0DE1ucfM1Ad?=
 =?us-ascii?Q?e+igdN89LKPl91G1ATO8188PcWPJzQqTRT9Ug6yJhBnOGsTyj0moHKGVca6U?=
 =?us-ascii?Q?P07hpMZkg1YDGc2S+ZgDLzAtaRTIsZs+Ivv3L5Ju39DQVY2mMmZfRNikU/+d?=
 =?us-ascii?Q?zMom+w5liC75IoGC0YgMiriMZthqeMWL5MKmwdR9uCDo1li9ZqXZ8A+Mg7yU?=
 =?us-ascii?Q?Z+Y54N+Z+fKqF4lkvDEgc63rGJJumNPH7xyWHIIsuWSEs6XjE1gGxSy1mkLk?=
 =?us-ascii?Q?lj5LImQ93nmfysPZVKQcqMBKVkSAKpHVg3QZ6dSZzuRzTGWVkrHAHaaSaas5?=
 =?us-ascii?Q?gNCLrKsu1Z98tWPCJ5S78KRdQ08PCOWXcXEWszVE/RAGsP9KTvedMRa5+7Wb?=
 =?us-ascii?Q?FIB/fchLQ1wVMw8qZr5Dix+0kSepdWLkmrJCyBiQPZT8rvSwZZAYmCkuhZkY?=
 =?us-ascii?Q?Q1UDfYPFxl2E1PXbOEDDKUPTtbkMr7RyGKJIghaYr8ATYgw2UllAEYLjpgPE?=
 =?us-ascii?Q?OCGdgZW1wiviNGNzh3mTrxfhN2EA6MuVmJjeWx4joDM+3yjCPbf0WEney5fn?=
 =?us-ascii?Q?DmNm/NKODLXYzqRhu7MFJ4DA7M5mZcJc/gxU5CivXzHIzj7TntUmVZgsF+f+?=
 =?us-ascii?Q?QRQr69WjyjxGtTp9ig0Mvq0FRXYiqVyjwq1DCM0lPB7/XQMF+HUay00Po2+E?=
 =?us-ascii?Q?Q8Ya9sXgGDp9o9VuTa2YB+2FKuBX8J+6I5fF+fP0UPb0bpV6VM5HdcgzdCAB?=
 =?us-ascii?Q?UrFT2Xx+OdCHmG6wMcMYgv20fbDw+TrxyRssJxGjge47C73QXm8XZ7f9R7fO?=
 =?us-ascii?Q?uU1Y6nHWOD3IaXiOM0+RkxaZztbhiO366dlmSh/uwzVIfk8hzIcrYXzZkqjI?=
 =?us-ascii?Q?JVTZpfH81mqCaoVB1K5VV30AjcL++NOQOV3ClxGzNM+jV1tXm52op/7iRJZC?=
 =?us-ascii?Q?YH/C7ZZd76shB8KIFfa/7JhlCEgjlbbIwbkpPKw1TqFX6Z+st8eAvArnOH1w?=
 =?us-ascii?Q?iG2pyg45gsLv8NNd26IxDtRzN1hjKe73FQMsvAdBFFlr2xSfwNppR9/wZQ1D?=
 =?us-ascii?Q?eddsWy3KotjdmQFERv6BmM2qz57cRIZ8SFtC/2bvKf3MxFiv+qEPINoUG9+t?=
 =?us-ascii?Q?YYSwl4GCrlgqLbSag05HUb55aqtsPtFb2ELpB7S5Fp3rRSjxYpAToNMZ1d9H?=
 =?us-ascii?Q?05B65WUErTn2ZOALdeFH0ezRN004xaPLC2uov5typC6u9jDJKbxgIDztzyKX?=
 =?us-ascii?Q?zxfy/+M8UfrBO7Bs/4DHQYSqwodO0UNw3hmAVrxcgUiG0BG9AEZlvvtroTBH?=
 =?us-ascii?Q?afMTjXTnM4J5j5zeVcuHD667/d36kxevhbKBZDAftlKr/tOmLxJX5HWbCqA9?=
 =?us-ascii?Q?3+L9MUnjA57w/lztI9e6/eSLV2CjqCI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: f831+K2Umy4w0OWDJu8yoezOnqzNfI38/muiZLvtSGcAq2CMpYw/6sxoiCzHmy4QRCnAwKg9Jux3X9mtEK+xjQ6qKYSKfhQFjNZFH0HMpWIGalKD9YL6O3GepWLkHQmZ7TBod8ob1opd764zP99vwr6i/SvEf/tbTChKtM0fO6OPYUgxslBmEGB1s091osbn3g5YEDx60uuhzUjhiGxmD/6JKSnr9F2LPFsEcu/qFWAZWfImIgNb1PXTXwZMfweY8VSPhifWrexb7q4XLYfE8gT9Czfn+i2hIyyVQUKOsZrhkYaNjdK6x2UHLWIZWlRQZnwN/GHBxme+t1Lc28WrfQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 316543a8-3b4b-41de-a036-08de956792d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 12:08:40.8984 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qejtckuQwe/Z8sQcpEumU/BBJ/wxWO+GbnM40OL6i9ZNWEOL5tU4zcrW87psLW+EQ2K2b+ef7i9ZSUwspg6yJU2OGW/AT2LMq0lPjVCa9zY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB9495
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775650131; x=1807186131;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2dHsIpAzBXQkTLxhz3uv5C+bLFPzpBiDcir7Abkq66I=;
 b=jd+VNDnZmSu16Sa3Iwn+jjV9ZVdbpAz5b295aNYo/sv3jhOSfcTVIyyt
 ekz0HzqF3y4YLE94LIsQuN5rQjyRuaRQ64m78XyWJmTeggBKvfAy/Xi7d
 1mxv5F0e332fo3fjrJRjQL5jiDMiL+Pn6dn2n43HK5yK1japcXFziQOJw
 LQSI6tPgJu3176y8ty+KxvLqHdd0XTfGzM837Lgc7EMNAFQQQdTP8WWrZ
 f+Kf71yRj3J8nwn6nAtuWw2fQZrMqoDi2/EIjDAWwEXREY400LQN1z4Fd
 SlV9gbegVp9cV8i/zF7A1eErj70hDKJ1300sEo7QkTvH9yTekEsUMDzwt
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jd+VNDnZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/2] i40e: keep track of per
 queue gso counters.
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 263003BBC76
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Paolo Abeni
> Sent: Wednesday, April 8, 2026 1:44 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
> Alexei Starovoitov <ast@kernel.org>; Daniel Borkmann
> <daniel@iogearbox.net>; Jesper Dangaard Brouer <hawk@kernel.org>; John
> Fastabend <john.fastabend@gmail.com>; Stanislav Fomichev
> <sdf@fomichev.me>; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] i40e: keep track of
> per queue gso counters.
>=20
Please remove trailing '.'

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> Track the number of GSO and wire packets transmitted and expose the
> counters via the queue stats.
>=20
> Signed-off-by: Paolo Abeni <pabeni@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h             |  2 ++
>  drivers/net/ethernet/intel/i40e/i40e_main.c        | 13 ++++++++++++-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c        |  8 +++++++-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.h        |  2 ++
>  drivers/net/ethernet/intel/i40e/i40e_txrx_common.h |  6 +++++-
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c         |  2 +-
>  6 files changed, 29 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> index fe642c464e9c..4a88c7d69f61 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -845,6 +845,8 @@ struct i40e_vsi {
>  	u64 tx_stopped_base;
>  	u64 tx_bytes;
>  	u64 tx_packets;

...

>=20
>  	return nb_pkts < budget;
>  }
> --
> 2.53.0

