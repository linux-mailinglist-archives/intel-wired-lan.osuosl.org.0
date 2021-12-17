Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B095B478F81
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 16:24:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C96340BE5;
	Fri, 17 Dec 2021 15:23:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q0u6NJj8A8ay; Fri, 17 Dec 2021 15:23:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 08CE240BCD;
	Fri, 17 Dec 2021 15:23:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 043531BF281
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 15:23:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3A2740BC8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 15:23:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FiN-a2icBKRi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 15:23:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0583C4019A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 15:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639754632; x=1671290632;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oprVmN424rX7euKpbo9q7QvOqcJVV2Z6VqwCdkc/nk4=;
 b=KtJpu19yGx+P3OYsD/Qs6mDIGjxw0vMcwoJMc6t5RFKvq0Yl9WH3Bmzh
 aXll/9oP097MGHDguOJKaZpP1a9xHosrKgsuGTQ7xDPy+arCKYdppFyOw
 hoNwli49ajUc6u+ZC2wL29oqveYttKzpJr94klPne7Q5djPDxnlFdMhF+
 io4Bg7OngkTDijejNhr7FglT2DiS/bHxYueOpsKCa1h7irF3izPg/Ht0b
 AwSUGATh4xznbs2VJNeANLJqwfGbgAxHRnwn8S+sYRNBPU2pYMaXO0P2D
 fQ/ijsdF0GIgNW3uKy8S7XVYyV/zRMfzaRBJBgVcrFwl8NdSoKYDHH9rb A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="220452136"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="220452136"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 07:23:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="605921277"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Dec 2021 07:23:51 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 17 Dec 2021 07:23:50 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 17 Dec 2021 07:23:50 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 17 Dec 2021 07:23:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cfMc/R5HUFPnXVDMvx1VowKhE/yfF1dOAMj+74j15e1A3ZsXhAUo1ktaxRDPwD5Wd7SRYmu0y4GNP0qvXspqIFmUnMIqnoGDDwauecrx9BHA6OKOt8QSDqeDJZM8wkjlYtwGw5mZ4ntNlb10URTU5lct/vGPmirvPSGvc/YSrGurNjSEBdnN5Ysy/u2qRHks1jfa0SQNemD4PRPsFsJannUwNfke3gYb2T3BPOUzoXCk7UazJx9EvHZWKhYWOVV9X2Te13oz0z0DEUrKnkrgYq04PQm8Or6HeZueGJ5rlr3gJOyeJlSmH5ATaGu7IoAJWdK5oDJjiUuE8mKwd6tzQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m3INCZIo31W9zipqy9ULhcvbdOowVfGF5dGysDBnV+E=;
 b=MDtxlIbgH/dVfik+4wLYpRemQ88d83Ru+0H+fpe1xlL/vZiew43t1jhpm4u1tHX3nSniWglbMgDmPDIjZXh3YJmDmcCFXIFG75nV4JtYaTR2Pz9xVeTubopK+ipcIWSZGI6KEkVHTkOkTbQ2nuiKHbY5priwIh+OQEDVAjAvM3Vdp2IpRys2jFGjJc4c/F2gAp2xHm5e0e7TYiPCqMuzZwDIslZZSAyDHGNpTLz7N94Wu+3Fb5B3dNMt5yu4AMkklzN7V682qUkVuGwvyZASBUDDc2lIY3/6WCJX3iLtTLsOaumbb8hn50USdPKwMNsSOuKGaviTAKy6AlBFTCr5nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3292.namprd11.prod.outlook.com (2603:10b6:5:5a::21) by
 DM5PR1101MB2105.namprd11.prod.outlook.com (2603:10b6:4:51::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4778.17; Fri, 17 Dec 2021 15:23:42 +0000
Received: from DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::84b0:d849:dadf:e47f]) by DM6PR11MB3292.namprd11.prod.outlook.com
 ([fe80::84b0:d849:dadf:e47f%3]) with mapi id 15.20.4778.016; Fri, 17 Dec 2021
 15:23:42 +0000
From: "Bhandare, KiranX" <kiranx.bhandare@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 intel-net 6/6] ice: xsk: fix
 cleaned_count setting
Thread-Index: AQHX8DaoFSmU2Jysq0GTzVRElHqMp6w2hFEw
Date: Fri, 17 Dec 2021 15:23:42 +0000
Message-ID: <DM6PR11MB32924BE7BB15755573E2BE80F1789@DM6PR11MB3292.namprd11.prod.outlook.com>
References: <20211213153111.110877-1-maciej.fijalkowski@intel.com>
 <20211213153111.110877-7-maciej.fijalkowski@intel.com>
In-Reply-To: <20211213153111.110877-7-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 39617f1b-13cb-4355-fc5c-08d9c1713585
x-ms-traffictypediagnostic: DM5PR1101MB2105:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM5PR1101MB210588AF77EE9F38153AD9ACF1789@DM5PR1101MB2105.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ena/GHXZtPDauS8xqHi328+VY0shLJM/Zy0YWxLHSdCHGvVUN5xxexmAa0PQgKYovSSZJc+zU4vW46oDsQotbtybc6+VJ428h6Z7ghzsT13NLZeG2NDquQo6hY/DFCjHxGh8p5WRGWi+H3Keo4SAZ7CLJguqCjWU7HO52i752vK34OPvN6Pniyi6ynQTbKLLT09cGYwS4WIIGRGqHmYG73BUhCKxTMfbY7jOrjGF/jrc4VhJotZmw4mUjQgr0ghyPAnXiX/RAKkCfhhhIGpo8eEz1T41VefjqQLBujoFcMDObimri1kIzkgtUjrexyKU+0GHp/gBFnZ1tvUkgJ7jykUXlYJcRK3qZrS5ILz/QS920enc8YvyHUnwzovSVF90/5/ELfCkfcrzGKqZmYu2+qu2R/Vr8N4hBXDOjQdcZJldSgq09lWLTPNItolEH99TSl+rK3JTNVWsEBAvNYHUhOfd4fLtE6grbi5sjaABrswA/xBAXbRBa7fcpb2BmliQvg+t5j4KUtdy16RLAQ2tJPRZjvUbhXVLq0x33IzjNYaD107uFpcqu9hFySPuqc4IqEyOKLG9wo52o134zeeolHE3AaSLwv74ty0uHN3bQDGXWdmFzCqzo2yox1RcH34FzGCO3zm8B+2FbumagHaxBBiTJhixghToPJ9fWO6Imlyo22pKg7bqNkZRzBBFkLGpvCSDDe8q6hVbs0L4AG46iQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3292.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(82960400001)(5660300002)(8676002)(8936002)(53546011)(6506007)(71200400001)(54906003)(107886003)(122000001)(52536014)(55016003)(110136005)(316002)(38100700002)(186003)(9686003)(4326008)(2906002)(66446008)(66476007)(64756008)(7696005)(66946007)(508600001)(76116006)(33656002)(38070700005)(83380400001)(86362001)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?D8WvADyqHkkWoBmGqpyzpQ+wcSkaIpfchttSz/kbmjuPIdZYp8ZqtADoji9D?=
 =?us-ascii?Q?rDp67Pip9ncAYVSQfDORVRZpH8klGW/lt7XwFP8Npi3JmAfUlAjn33h9fbm3?=
 =?us-ascii?Q?r9BeW26dmGmIrwDajzuM7emWaZIiwPCZfVs1RT5DDYG59E0gIo+rFC0govmX?=
 =?us-ascii?Q?HnhHTZvItfPi9SARb2kK4GarbLZb6GTTTnBJiw7uxP2xetjNZFaz/gkzuYv6?=
 =?us-ascii?Q?D5Yc/ctEV71Pf0kS5BWJg7JBOxNvwSiOr8H4wPBYKO5YcKq4qprmQzDp7MQ8?=
 =?us-ascii?Q?kYFPcFdNCdoc7YRhpxx7zg0Klhh87nWMrpvglLIp7x0OeKuioy5YtPvCGYev?=
 =?us-ascii?Q?xPw7Pd/EUYBDlf/m2hAiknBYJrv/VsJkcnL+keDdzcv7fqTi9gBcLVg6unO2?=
 =?us-ascii?Q?93xKPfETzn74abRevuQyyPSS2p/0AZGyT29ZJqAyYES2rI5v5A64tUG6H5wx?=
 =?us-ascii?Q?yDAYe1CNcmSdsir2yIw/aWZWCPoLWReIIX3+2f5uIdfWDQOvEWi9xGJTo7ry?=
 =?us-ascii?Q?pWZmx2lxUso/3Q1cTScqaWmLI0eOXumvqM48ueDXmfDSNBDynKV5e4xb+voY?=
 =?us-ascii?Q?V0dVODk45oujGG40AuYUXh2nJHDibApw5vbP4J/n4PwEaSXNgTBZ8ouLczbB?=
 =?us-ascii?Q?9tA21Yum9S8n6/AARtKNL+UPAqEXl4sDf4Vn38JbM3s6mSnG8yZKm+B2wpwQ?=
 =?us-ascii?Q?mu/NsaplijCQU+nzhUu/vGjEH7knOl+hnR3s/EeUJZ40hxNTQb0Q31+PcE45?=
 =?us-ascii?Q?ZKJNsSnEssyy1UKZyk2rYA0Jb6dzNG3FQ8ygh1zAMXLUZ55S8/gNrcJCCPUq?=
 =?us-ascii?Q?rM11Sl49woXraNQJoI1JpVyeJRH/NrdLTRDnb90zwrhm50vpTE5WXgQNUYlQ?=
 =?us-ascii?Q?TdRGBnu6S9XmuRhl5cdEhSA2mv4owW40w/XbD6JNw5frfrVZ+IY9L/dhGLu6?=
 =?us-ascii?Q?Naij9X11oIY0fFfnIJ7gr49xay4JUfyFRnRfrR/LLEitIdZsxkjHOJZ7ir0Y?=
 =?us-ascii?Q?YApAuA45x+HhPqmK688S8W7r2wM2rYVjR6uBBnT8ouXzilLzayEFNH5TJtDk?=
 =?us-ascii?Q?36TDfuTjCBVBrym0vYvGGzNpZsHbCusuZu/3lw3SZhUP0dot0vf2ff3C/WZO?=
 =?us-ascii?Q?FiyNEEFqyTMUosKcY5mf2lNj4ScUVGBCWWf5EhVjtfeUjJAlYSyyFW0stJcD?=
 =?us-ascii?Q?MdVtxW3sEANIDs/AHJMWD2536fB4CcpEoPXEUljHCw/LcMRzNM1axWpwej8S?=
 =?us-ascii?Q?8V9evdZHkNydNkRZOGI39i+lUv1P4aCMTZvAnhRItRh3801X950LFqJ5jIbZ?=
 =?us-ascii?Q?UvQjYh2KiVka/4+1LYwEC91yldjPGPJ4Dc+j5B4mdHqKzz0QC3q3p0PQkqMJ?=
 =?us-ascii?Q?nK9NjQxthfny2qCuOu/th29GP4l5dbpbVGkW/HlmmHZc3eezF3H1x0nyJRcW?=
 =?us-ascii?Q?Foj+kY4iGovsIH9oBXtDGCn94xzyJQGMcK1V9kx3VF78GbcmAOX1p1rcLRME?=
 =?us-ascii?Q?Abg7HVwn4EGUXEKdtrgeppBbU+uyl0sJ9y2mtlP2ax0kSaVhopwcONeaP7nF?=
 =?us-ascii?Q?B8IC3KLlJJPYHBI4DmtadiJ5o8q+4147KM59JayZmqO2nqEr+9sU+AtLtfwO?=
 =?us-ascii?Q?pK3BUpFxf0bKdqoRfk/aB6YUehGcYB6P7DUTtALev8eyh2ad4SOPukZWkgBG?=
 =?us-ascii?Q?Q7p/SA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3292.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39617f1b-13cb-4355-fc5c-08d9c1713585
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2021 15:23:42.1980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2fyhZ4b7HiTzdPCHpUMWf4wIvBEd5WRVsV1ZOjavJNbFNew2on+ZOBmzPdpvjARiNJcOZu0Kb+dyTXoisVHwU4dE04x0Kb/PDmmflNddxls=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2105
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 intel-net 6/6] ice: xsk: fix
 cleaned_count setting
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
Cc: "Mathew, Elza" <elza.mathew@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Maciej Fijalkowski
> Sent: Monday, December 13, 2021 9:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Mathew, Elza <elza.mathew@intel.com>; netdev@vger.kernel.org;
> kuba@kernel.org; bpf@vger.kernel.org; davem@davemloft.net; Karlsson,
> Magnus <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 intel-net 6/6] ice: xsk: fix cleaned_count
> setting
> 
> Currently cleaned_count is initialized to ICE_DESC_UNUSED(rx_ring) and later
> on during the Rx processing it is incremented per each frame that driver
> consumed. This can result in excessive buffers requested from xsk pool
> based on that value.
> 
> To address this, just drop cleaned_count and pass
> ICE_DESC_UNUSED(rx_ring) directly as a function argument to
> ice_alloc_rx_bufs_zc(). Idea is to ask for buffers as many as consumed.
> 
> Let us also call ice_alloc_rx_bufs_zc unconditionally at the end of
> ice_clean_rx_irq_zc. This has been changed in that way for corresponding
> ice_clean_rx_irq, but not here.
> 
> Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.h | 1 -
> drivers/net/ethernet/intel/ice/ice_xsk.c  | 6 +-----
>  2 files changed, 1 insertion(+), 6 deletions(-)
> 

Tested-by: Kiran Bhandare <kiranx.bhandare@intel.com>  A Contingent Worker at Intel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
