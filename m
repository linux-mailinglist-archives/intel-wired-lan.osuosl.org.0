Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 049047B6B91
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 16:29:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14DD941EB4;
	Tue,  3 Oct 2023 14:29:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14DD941EB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696343397;
	bh=limO7+OmyaAIEhggAtSyDa6OnE3Bo9pictdWF8KicJU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z6349Yc4sTEGzq73uGx3E2fhfxFYtc11Mw0B2mzJcSDGuuiJOBoxOOxaA++Gw5IF3
	 o9kcBS6OM+9o5C23uEMkYpym/Xq2PkkJXO7sWYukaVRsm9sA4I9N+1539CjEN4P+X1
	 lKrGgczjbstXYoXpIXXNnujFwXzaeOHrl7hjFUm0uxMWwlFogcyjkEHW01ku8+AxbR
	 jpOZjWtQeePk22/ldJEUqhEGLUJgCPkhw/BRdYWEm/zLysUU+ZGzNjHSO7Iz1xC9tL
	 ERn8t6FHbnodOG5xng45hpQ9a/gDQ0tqvixVbfLJCdTV9oHYRSYxey8qLCZMh5m5Iy
	 YHjg3Zv+nledQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ovvKQd_QcQvE; Tue,  3 Oct 2023 14:29:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7438D405AA;
	Tue,  3 Oct 2023 14:29:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7438D405AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4CAC71BF59B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 14:29:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 30FD9400FE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 14:29:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30FD9400FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0PmGSfvaRYC5 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 14:29:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F2357405D9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 14:29:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2357405D9
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="373230472"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="373230472"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 07:29:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="780306376"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="780306376"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2023 07:29:47 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 3 Oct 2023 07:29:47 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 3 Oct 2023 07:29:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 3 Oct 2023 07:29:46 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 3 Oct 2023 07:29:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KXjsbmS316udk+7JUG89GXvktgf/yU8jZSI9JwY1hidxJBVq2v8uohEu3q2kRV+uLKNKUistn7R/IPA8uYQ5fv24k8wvjy04fbuakkxM6St2r88Hu10PvjkLQ6EAnlR25JfF15I2rlF1Z8F2z1TYXLwaW1fvJWGKbdLaUw9HHvQYSdR1OPBNUjML5vIa0BCtRbTzEoJvwJIN6mhIp7UuKM/qOOncBMkVr5EjjmZoheEAz6I2BcpYkYV8qao/BxiTmzXVD82rFoPYv2RFu3CA0LM4pUmJ4ReJwF6y3GzWJj96tOaImTEMTkakfWzvsj4Hcr9+9DdE/nHYq+Qzc+GhHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Koe1dIF4Njta8wIRsG1mCrMnxmr7bdStY896eLxdiIs=;
 b=lL/jiXMGcW/cCXDK/jBjT2FeI98uH+bl/Pct7/VaeMHv+f/evyN79LTXCxsbMerf0jj/HOiyrgaWhvJAJ/CZLlXwMAeTHqa5vCF1cfKWAVaqLGAFcuazG35ix/d9tlHJVISYNqdaZ+u4Y+X8qDUiM2/Iysf3TSM1x3xsVZaHF5neQSkjKci1by9svMYIFw4P5+3JKpZ6O4k1GLI2qrgUNmloCDr1qdEjWNxbT3RqG0rm7jQdGet4f1mqXtAn1vDU8sufQS3E57b5T/HQs8Pp1d3fv7cC0L4C4C7UYwgrCKUxkDN2C5XPCCOqBRx8pGDR9eyvzpDZ1vS/Hcp+LBhrpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 MW4PR11MB6666.namprd11.prod.outlook.com (2603:10b6:303:1eb::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.33; Tue, 3 Oct 2023 14:29:43 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::4c69:ab61:fea5:5a7f]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::4c69:ab61:fea5:5a7f%3]) with mapi id 15.20.6813.035; Tue, 3 Oct 2023
 14:29:43 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [PATCH net-next 3/4] dpll: netlink/core: add support for
 pin-dpll signal phase offset/adjust
Thread-Index: AQHZ8STYBdXle/Bxd0eyxPCX/7DD6LAu+R+AgAebAaCAAA0FgIAAWKYAgACqnwCAAIO7gA==
Date: Tue, 3 Oct 2023 14:29:43 +0000
Message-ID: <DM6PR11MB4657B52BD09700F49799ED8C9BC4A@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230927092435.1565336-1-arkadiusz.kubalewski@intel.com>
 <20230927092435.1565336-4-arkadiusz.kubalewski@intel.com>
 <4018c0b0-b288-ff60-09be-7ded382f4a82@linux.dev>
 <DM6PR11MB4657AA79C0C44F868499A3129BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZRrb87drG7aVrxsT@nanopsycho>
 <DM6PR11MB4657C61104280788DF49F0E59BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZRu1cG2uglhmCdlI@nanopsycho>
In-Reply-To: <ZRu1cG2uglhmCdlI@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|MW4PR11MB6666:EE_
x-ms-office365-filtering-correlation-id: afcf311b-4886-4502-7be1-08dbc41d2fb2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Mf6j7AmCdAKSPc2DdCUZ7hWegMvwcJRX1aWvUwlKiEpCArL+Rpru/PKB1NT7blyOxcivAHk9B6i+n4OwMaT3m6LgthTJi3p59wCrggurRz5LR+7mZBJsW/dWhIH4LpmV7L/n5NVq7yBetWSWiTrY9c4RvHsEmMYP1Z4FcLK3IpMgfyFSBoUDteImU8iIuqPiNdt5HggS26q8hOF2SFcfBPr9RDIUASg1dKgnJAG0i42nX2TRSxnjlsH0rRgkEomJLCq/cvhOHdBO6GIilX4i48QbZxqjd6Ej/K/YtmSuIx8l9It+uVB0fPOULSnSs1kX8RBvtHExxB+TwDbSClxQkqD7VoXO1Q+kjrbiLJpGr3LabH09rCzOIV7NT76siTQUib4H+aAva2gPvrDZ0DcGC7R4z7h9ImmzLB6o6UZuzuoXe7CssTmDXRfKfO34SAptwuru2HdKHGngGHSqdvy1H/6vpN7ap5661L1t9gaHogs4WlVula1gd2OvHVbsZGfQa1+LKczVkrJazUGVlzbAeRafgUVQHT/4P2nOZZhaeUgcO9D97mJiwjHDrHokaptSgc/8le6eLClyyioCiGIbHrDIiVcDiNx8JnASV07AqslpcabglZ9ULYGYsxusiCgv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(136003)(346002)(376002)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(2906002)(83380400001)(66899024)(86362001)(33656002)(122000001)(38070700005)(38100700002)(82960400001)(55016003)(316002)(6916009)(76116006)(66476007)(66946007)(54906003)(66446008)(66556008)(64756008)(9686003)(7696005)(6506007)(41300700001)(71200400001)(478600001)(52536014)(4326008)(8676002)(5660300002)(26005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8w3TjGBtJmaBiAWaC5L8PVr68LDXGdBwmmCZ51dDrxoIEOgkVlmlWnYgYlq+?=
 =?us-ascii?Q?gMKBILwF8JfEfJGOafWv/XrkOmVU8FC1IKuD17/aKku96/gXA3r2u91vPtd4?=
 =?us-ascii?Q?yN12Iz3ZjMVBb8FAT9+paBczaIi12da1A+r/H8bakZeV1hiYbbrZ3d0m/V+j?=
 =?us-ascii?Q?Z5FrdXD3FulZRSz87+px1DqIkM3wT4BVqgglD8ML8z1yDB6jewmfzXFv0/ms?=
 =?us-ascii?Q?Nuv5MH3sTSWulnm4i6KLtYO/fvhngoLv/OUXP6g+r2JPBsitjVo1nb1LKt7C?=
 =?us-ascii?Q?sugRvadqFVaCpcLlETBsNQ8lwN1jCaMcOdFwc92W+PjALMmGoPRgaLBiqexd?=
 =?us-ascii?Q?DNLKp4wMmkOYFH2Rp6lNQ8of5acr8gGiTfNWbBi/aTC/4uGCEyu78kpG0WFF?=
 =?us-ascii?Q?z2pI1dUXZdW/lK207zn14MywQU97IoiajH9/e4uw/NkcpK6VXeiruACO07yP?=
 =?us-ascii?Q?PWByrVpWE4pI0jjW/x0wSSyi72au9Hm1Sv/VmxiUd0k8ZmzRJbhJzwIp+LDp?=
 =?us-ascii?Q?PzLNB0kK5/YT5YVGp20QVYFAuPkraqgoQ1vaPb9kuMytf/EPIMSTh7MPJ2+n?=
 =?us-ascii?Q?MYYEDmbH3RTa7ZU2yatbKLSgQq7twICItzNfW8TUG8zwLO+HAvBS7eFZc6Xc?=
 =?us-ascii?Q?qbRh/WnF9lKBDZ/R2Nr1jeX6YGUILgsHzRSXKYfPy1fsYX9N6fWpXiteekT6?=
 =?us-ascii?Q?5lPn4ETQ4TXH/p23NupdMnn02wQH2I8rbgcnVn+7BK8G4h8btLfWj+7FmY62?=
 =?us-ascii?Q?ViKmWyIOt9RWGKK6vEFu0IffTbtUlaxfBxCeft+vMaTIleoM6s9WOgGgBbDl?=
 =?us-ascii?Q?IKXqyDeECDG8gxdXQ8XMr3XpMmPWMUrDaG8HAUvOI/Gy8Y71AR3Z9o0h8Slo?=
 =?us-ascii?Q?6rACPh3cUUU/f78fQnP7bLOC+3193xrNAaTmNtce7/SHFNU2T+UVjCnjHd7c?=
 =?us-ascii?Q?SOf/eSsLCluQR3UrZkcDxH550DbBan2BSrD8GOVXRDnHL7+Sw2YtiAhBG+gj?=
 =?us-ascii?Q?Wtjq+IKOXlb8LN2j7DDSuSDT7V84hcyHt+bFml1s/iFlau6J+2ITYAnjsqQ5?=
 =?us-ascii?Q?UKsVNXCPbkLRsmwnLcMUqPVlrRotCdTm26GziCK7AAXLR/WSlaZS4sJsExwc?=
 =?us-ascii?Q?CbkhkwYxEUPozvT+7Mj2jiM+mE2ba3qP1BR6BNGuPATvrdYJY4JQlnmggeNl?=
 =?us-ascii?Q?rP/QkZCqFRN4TPbo6/OnF8rKb6MPWK+89ceGmHs9O2DDz7unaF0rTKdw1Zvj?=
 =?us-ascii?Q?qYO8hCsyuGguXEI7f8R7uq6a1leIR7kalkfUjz2F0PUnasWJMuSI4HAZmM5a?=
 =?us-ascii?Q?cFqo/3S7XZ8HzjDtwBiIlkPY5NSmYz8XaPYmJNhVe7qbNVfPjAJdtCElSzP8?=
 =?us-ascii?Q?eXetyFqDq0eFr3cKlApX2z97MFlcdeadM1evFD7XXPePfxzJvT7OMRZwxdv+?=
 =?us-ascii?Q?rOOJzstnvRU1fRd2LA3tcuBasupdKoQS3XVmUreRoaDVI+uPLxzjf9fZ5uqZ?=
 =?us-ascii?Q?9Ojo0V5Pn9AIMVgzRPc1SQwjAttLIsd5sRYtvLjQcpW1Y2sgd+lechROy+ST?=
 =?us-ascii?Q?Sjw/DA6Fb66PHMkawjoA9eFnz2msPa2xprdrZJfFtPMpHmBBpmhHQ2kajdVB?=
 =?us-ascii?Q?oA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afcf311b-4886-4502-7be1-08dbc41d2fb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2023 14:29:43.6135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uJy1aKzqudQ0IrOr0/Ob3METNnVe7YghJt6xouHFYGOQ8cfxZr2FuLFs7+G4g/JBVVfUvPnXuBxo5FprZinjSeZ/Tq9dUeFB8mdkfbYULt4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6666
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696343389; x=1727879389;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cKhiHZw4HQHAZoVhe5O0cJi4L9RDANYt57adLh47nVA=;
 b=WUIsCOxpHrJFXXNX4bu7R7sujeUZfqQsZnIvveCdbakBqO04F2p+jJ29
 Irs5WFe9TDbbe/QbK++Xj10ZUopr5TE/Ckuj7xfIJpaw8JazoBsRmLnEz
 xfdmUgq7qWiWuJ0BmD173tQto30DZdMotHf7wPRYO6sUd10axn+VXV7qX
 +4RGlT9ihXDWe9DRC3xHhq3dZeFPD0omngM3IcCZtL5bKirZJ60E/wpGo
 HNtK1XRs3L+8NmPyw/Mj+e0u3AmvVp/QkP1NHag6sMtB7VdbLfuwt2QZi
 wgZSFpG7G6Q5poq6DO3ywr+IIj15FjQOpfh1iqq+dDl5cj/5t2s2tZp2o
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WUIsCOxp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/4] dpll: netlink/core: add
 support for pin-dpll signal phase offset/adjust
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg, 
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Tuesday, October 3, 2023 8:32 AM
>
>Tue, Oct 03, 2023 at 01:03:00AM CEST, arkadiusz.kubalewski@intel.com wrote:
>>>From: Jiri Pirko <jiri@resnulli.us>
>>>Sent: Monday, October 2, 2023 5:04 PM
>>>
>>>Mon, Oct 02, 2023 at 04:32:30PM CEST, arkadiusz.kubalewski@intel.com
>>>wrote:
>>>>>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>>>>Sent: Wednesday, September 27, 2023 8:09 PM
>>>>>
>>>>>On 27/09/2023 10:24, Arkadiusz Kubalewski wrote:
>>>>>> Add callback op (get) for pin-dpll phase-offset measurment.
>>>>>> Add callback ops (get/set) for pin signal phase adjustment.
>>>>>> Add min and max phase adjustment values to pin proprties.
>>>>>> Invoke get callbacks when filling up the pin details to provide user
>>>>>> with phase related attribute values.
>>>>>> Invoke phase-adjust set callback when phase-adjust value is provided
>>>>>> for
>>>>>> pin-set request.
>>>>>>
>>>>>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>>>>
>>>>>[...]
>>>>>
>>>>>> +static int
>>>>>> +dpll_pin_phase_adj_set(struct dpll_pin *pin, struct nlattr
>>>>>> *phase_adj_attr,
>>>>>> +		       struct netlink_ext_ack *extack)
>>>>>> +{
>>>>>> +	struct dpll_pin_ref *ref;
>>>>>> +	unsigned long i;
>>>>>> +	s32 phase_adj;
>>>>>> +	int ret;
>>>>>> +
>>>>>> +	phase_adj = nla_get_s32(phase_adj_attr);
>>>>>> +	if (phase_adj > pin->prop->phase_range.max ||
>>>>>> +	    phase_adj < pin->prop->phase_range.min) {
>>>>>> +		NL_SET_ERR_MSG(extack, "phase adjust value not
>>>>>> supported");
>>>>>> +		return -EINVAL;
>>>>>> +	}
>>>>>> +	xa_for_each(&pin->dpll_refs, i, ref) {
>>>>>> +		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>>>>>> +		struct dpll_device *dpll = ref->dpll;
>>>>>> +
>>>>>> +		if (!ops->phase_adjust_set)
>>>>>> +			return -EOPNOTSUPP;
>>>>>
>>>>>I'm thinking about this part. We can potentially have dpll devices with
>>>>>different expectations on phase adjustments, right? And if one of them
>>>>>won't be able to adjust phase (or will fail in the next line), then
>>>>>netlink will return EOPNOTSUPP while _some_ of the devices will be
>>>>>adjusted. Doesn't look great. Can we think about different way to apply
>>>>>the change?
>>>>>
>>>>
>>>>Well makes sense to me.
>>>>
>>>>Does following makes sense as a fix?
>>>>We would call op for all devices which has been provided with the op.
>>>>If device has no op -> add extack error, continue
>>>
>>>Is it real to expect some of the device support this and others don't?
>>>Is it true for ice?
>>>If not, I would got for all-or-nothing here.
>>>
>>
>>Let's step back a bit.
>>The op itself is introduced as per pin-dpll tuple.. did this
>>intentionally,
>>to inform each dpll that the offset has been changed - in case dplls are
>>controlled by separated driver/firmware instances but still sharing the
>>pin.
>>Same way a pin frequency is being set, from user perspective on a pin, but
>>callback is called for each dpll the pin was registered with.
>>Whatever we do here, it shall be probably done for frequency_set()
>>callback as
>>well.
>>
>>The answers:
>>So far I don't know the device that might do it this way, it rather
>>supports
>>phase_adjust or not. In theory we allow such behavior to be implemented,
>>i.e.
>>pin is registered with 2 dplls, one has the callback, second not.
>
>If there is only theoretical device like that now, implement
>all-or-nothing. If such theoretical device appears in real, this could
>be changed. The UAPI would not change, no problem.
>

I can live with it :)

>
>>Current hardware of ice sets phase offset for a pin no matter on which
>>dpll
>>device callback was invoked.
>>"all-or-nothing" - do you mean to check all callback returns and then
>>decide
>>if it was successful?
>
>Check if all dplls have ops and only perform the action in such case. In
>case one of the dplls does not have the op filled, return -EOPNOTSUPP.
>
>
>Regarding the successful/failed op, I think you can just return. In
>these cases, when user performs multiaction cmd, he should be prepared
>to deal with consequences if part of this cmd fails. We don't have
>rollback for any other multiaction cmd in dpll, I don't see why this
>should be treated differently.
>

We don't have it because no one have spotted it on review,
as mentioned the frequency_set behaves the same way,
we need one approach for all of those cases.
I am opting for having the rollback as suggested on the other thread.

Thank you!
Arkadiusz

>
>>
>>Thank you!
>>Arkadiusz
>>
>>>
>>>>If device fails to set -> add extack error, continue
>>>>Function always returns 0.
>>>>
>>>>Thank you!
>>>>Arkadiusz
>>>>
>>>>>
>>>>>> +		ret = ops->phase_adjust_set(pin,
>>>>>> +					    dpll_pin_on_dpll_priv(dpll, pin),
>>>>>> +					    dpll, dpll_priv(dpll), phase_adj,
>>>>>> +					    extack);
>>>>>> +		if (ret)
>>>>>> +			return ret;
>>>>>> +	}
>>>>>> +	__dpll_pin_change_ntf(pin);
>>>>>> +
>>>>>> +	return 0;
>>>>>> +}
>>>>>> +
>>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
