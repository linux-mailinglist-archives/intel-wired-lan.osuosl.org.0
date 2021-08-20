Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B325B3F33D1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Aug 2021 20:30:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 679AC80D12;
	Fri, 20 Aug 2021 18:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y_alDP42IRAw; Fri, 20 Aug 2021 18:30:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8BCE80D1B;
	Fri, 20 Aug 2021 18:30:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E6D471BF29F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 18:30:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1E6A40820
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 18:30:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aPeEMekH2tjU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Aug 2021 18:30:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ABA47407D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 18:30:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10082"; a="277839660"
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="277839660"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2021 11:30:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="506572565"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 20 Aug 2021 11:30:12 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 20 Aug 2021 11:30:12 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 20 Aug 2021 11:30:12 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 20 Aug 2021 11:30:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bpVcsOpGmQEc95cU7QKqAQQQTrgNTm5V0P5ImvO2+MF/ym4gQBZHLYfMMJ773oKKcmxZ2hYzNzEMrjJXfKNMzJLeg1K7OBMIBjdxEsLgN75x3QPuJSJBaXMz3eYQsLYpl3BkyB63tOJsvy826SxP7jbiXZQeelac8Uwm2O9OWRBasZkxB/1e+cYemKsioOTl4Q4rXkZeJJggF/p7tLFftVhCzDIwA+rYZZoPoNypT09NFYY//5gVEYeGFHEEVmqSuI7/7huxV9CAoaVIO0pmgyJzsizcqVicEBneOyCvSCks3JHuzrPReVuZXr/SKOsrwN2Z29z6R+YcOb8O7Wnjlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wFFRzmNGYnU4EKEKKennrWolPspcnsO32DLZ028oIuA=;
 b=XUMRv++l5YW54euncY6VgCUtwWZLGrc1FDOTVvXb/RKuuDmZ9qVIzZHEL1r28ZquqoMKPh0iHu9hib7AjlA0r31t9vn7kOGtXCx5S4OvVUwUlyTk6jZOmlVtrXVmYqGr95P+oD1TB5Ya5/Lbclx+RwlSpuVtiTGIjlFPz9omPKreuIbs+uyhy8pn69twViCUwMFaD+DgaWbVNSx72AVnGDd3qotD7EzGzEjIDllFjpgdcMUhK+pDqoeunMzde+wjqRT+cnJFTW/favUxeYWBhdGWJPzoFcay0dinCTnORJ+TOAPhxvWQmFxbo6QKhzczozVOYol9yCoLFZhxxdr3nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wFFRzmNGYnU4EKEKKennrWolPspcnsO32DLZ028oIuA=;
 b=I+cSzRT/be4VNuW9n82pLUwtJJgq+/o2HttPyPFLEtJtsJwGGT1F0VPTci8gilDjql163hrNd9Z/8qGFzhSLkncTVZENrQlI21Rc1lvl8OVdBe4Gt3hrfjU92WL808TwIGeoHD4HaHiL2aaiRDg7U0iUWzL+nv1vdTx2DkW59BA=
Received: from PH0PR11MB4951.namprd11.prod.outlook.com (2603:10b6:510:43::5)
 by PH0PR11MB5189.namprd11.prod.outlook.com (2603:10b6:510:3d::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Fri, 20 Aug
 2021 18:30:03 +0000
Received: from PH0PR11MB4951.namprd11.prod.outlook.com
 ([fe80::58cd:3e24:745c:e221]) by PH0PR11MB4951.namprd11.prod.outlook.com
 ([fe80::58cd:3e24:745c:e221%7]) with mapi id 15.20.4415.019; Fri, 20 Aug 2021
 18:30:03 +0000
From: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [RFC net-next 1/7] ptp: Add interface for acquiring DPLL state
Thread-Index: AQHXkrpDE4/97678+kqD5jc+QEB2qKt2zoSAgACcQzCAAhWPgIAAVWdwgAEkIgCAAAB9kIABl9IAgAAdxFA=
Date: Fri, 20 Aug 2021 18:30:02 +0000
Message-ID: <PH0PR11MB49518ED9AAF8B543FD8324B9EAC19@PH0PR11MB4951.namprd11.prod.outlook.com>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
 <20210816160717.31285-2-arkadiusz.kubalewski@intel.com>
 <20210816235400.GA24680@hoboy.vegasvil.org>
 <PH0PR11MB4951762ECB04D90D634E905DEAFE9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210818170259.GD9992@hoboy.vegasvil.org>
 <PH0PR11MB495162EC9116F197D79589F5EAFF9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210819153414.GC26242@hoboy.vegasvil.org>
 <PH0PR11MB4951F51CBA231DFD65806CDAEAC09@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210820155538.GB9604@hoboy.vegasvil.org>
In-Reply-To: <20210820155538.GB9604@hoboy.vegasvil.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cc869b13-35a9-472f-7376-08d964088694
x-ms-traffictypediagnostic: PH0PR11MB5189:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <PH0PR11MB5189BE7B11F95EEDCCED85CBEAC19@PH0PR11MB5189.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: swPyg/S9siFpBynL4P7OiXEdeFt0wpwQIDYMnILRZnqI3DHXYT5H1EkCTxGKv33tPTKAdOPGAqm73WuLTSn/vqXvSsMi3k29PKKXVJDLRKw3FNIOs4vIkdNCE9gCVj8Rc8xu7Zy+8OXdViCxdIUE3qsvF+dzOZFlE3EhIN8tcvJfixm5JayM3dxjk1nEZB3pgCbY8n75tLOmjvMX9c10prWEj9tDoI6DqoF+rQd+ChzSQ9BVZ/z6usqBFeU6lxOeV7Lqo99xMjlxYHZRQhUgjEaerVQqndZRBo4jzUFMjh3zlHl+66r9RoVhpiF4zr/75KzTfUahvu5MKHhUYHtPpeeXEQfDUvCDI1dwg6Ct1BQyDkelgv69vBJXtE0X5q/BRyoTKmkBHt1DDAdJWt7X7l7vZH6ndp6OjwKikTPDVD5I5vrk4U073y+jsDS4ep6uSq6JekDUEwlL8u/7wiWm7nxHTo5qdRM69AJW3gCZtvw2KhNOpDtEIeZHCL+ZjlY3s0C77oqhyXItln6tbgPwHEyWfBhspYGFtMdEFb/XbS3FnIXtQiJqAv5IiD/m/c2BjnT+IidShaj0QCDPR7EwxXJePjqasdyE8ZxeTfpmZzBpYsfBLF/JF2a0JfP9ApwIbzC+YvD2LRNj73v0Ulf1yhEm8OwEP/Vugnua/M1h382uQW/pwWOp5GVtRRuhaDYo/LwhJuZ7+MxmfDr0oB5UMBS7o+Chp3D8JwnOntVdGyfOec49dUOCQ4rqZLnnd8WHFGsf7Hyd+tKdh0e/O1B4SFXwzxSgQyjfYb2ZotECuR0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(346002)(396003)(366004)(39860400002)(55016002)(76116006)(966005)(9686003)(5660300002)(4326008)(71200400001)(38070700005)(478600001)(186003)(6916009)(33656002)(53546011)(26005)(6506007)(316002)(7416002)(83380400001)(66476007)(2906002)(86362001)(52536014)(64756008)(66946007)(66446008)(7696005)(38100700002)(54906003)(8936002)(8676002)(66556008)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?naps1HmLR9fCk5r1hb4Gtq8UORJ1LDBZ9L19fnXqa4xVOd080jiEMcGTW54/?=
 =?us-ascii?Q?6bgwjz+vO1ePANB3nNAYtGGqw2nzrpe/8x01kRpuim1NaF8T9m7EqLIr8VMI?=
 =?us-ascii?Q?UM2hOiZGBnFVrTLUJlwnHcTAVTVcaMW/XLdSF4hxV9PV16FZaycfAn35A/eS?=
 =?us-ascii?Q?wtZzj7IuAZNYNzmxgsxc3DnA4mNGCvlJFBcOVCXeFuXcPULYNh+OekMJLykg?=
 =?us-ascii?Q?jihJoO+OvGQ25E+BU3M756acAG0wZTQzsBYGoe1YJ/oP+Jyq0cubSJsPL10/?=
 =?us-ascii?Q?DXZkfitVf9l0wSJ9N4snJp+Hbp3aboaIz1AIGdAgDjf6b6EJH1YFWgbxHjP+?=
 =?us-ascii?Q?UbptnncLB+mk1PUgnStAa7d1dfiw31VGOff0OW77kvrEzlEDQeDpHL999sV/?=
 =?us-ascii?Q?u0HdSTZkQ+YzYiWnF4iwozqniV9eM+yC2a8j91P1NI4v3PRJJj5gteY0aR24?=
 =?us-ascii?Q?62ZdZyE3tJ/Azw2jQwKWEvnkGKoeqvSyey6r5SLYAVzhgN98ZTj1A8PZmkHk?=
 =?us-ascii?Q?MIXKk9fW+CCeDzlUqmev2TZ27IXk5mWuMXGOBjA+ggVnAFLR1ByCaSriUuIM?=
 =?us-ascii?Q?7t9j8f/Wj0aM+pjMkd8iyaqKTs9erNKgePxRcIXNsXB69iBfE34UC5smztXi?=
 =?us-ascii?Q?QY2ZNDnD6Q1UGDptQXnvleii70UNp9SW3H59nM4SIw68edgzGFrB9GyfYWKG?=
 =?us-ascii?Q?BXi8B9hEv1Hi6fxfDfxJMcw3LhhUvLGMXBBCOF0ph0UrMS++/sx0hmh3ODDc?=
 =?us-ascii?Q?nYY0jEn3fLc4KU7RsYUna26by7h5XXIVjvwYHx1kg8ZbppQ6QXx3YGS/ecun?=
 =?us-ascii?Q?nBdUAhTYgAiHxE0E7Cp0OCG9PZdoiNXkFE77owPLYe5iJIHdsSdom+OxQfvx?=
 =?us-ascii?Q?9wlAaoOWOR2sFJq1vcIdH9yfhFHbuiVy2bW1kTxM0766zzOwMH9Gq+RQVoWd?=
 =?us-ascii?Q?1+vtHKfoP+lLSDnxs2rg0skhyr5ZkR37HJRA2sM+URQLnbPznJPWLPzCMBty?=
 =?us-ascii?Q?X7rFd1JvASiPpR68SrUOzAFFj2V4iGoeMcmcKR+YgvUIcNYMDIZEq62ydWpo?=
 =?us-ascii?Q?ygOlaVIbWBEEi+g9CXmwk0Qwz9UpWVPat5yOnVqWz4KnctTu1/UD+SP90JKF?=
 =?us-ascii?Q?WSfESH3rXktDStoo2dd+ZdunF2puNi0JFykrAtx2BG7UArnHLyq92WOISQAS?=
 =?us-ascii?Q?3a0AVKzS85oOsbafWHqEpaPvakthFHw+w+B8A+xVEtT9GXgQhZs/XabRwhpo?=
 =?us-ascii?Q?Eq6O5O9C4cwVhKsLjf1HELEJtIsB+D+g6Q1rhD3UiFnNUjgcMMZX/SZL2xHR?=
 =?us-ascii?Q?jVk=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc869b13-35a9-472f-7376-08d964088694
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2021 18:30:02.8942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /nIuuhvvim9Abs+HULaGgxicVI0HZ9hjDpfjtDN2BuZejilLaItq1xtEAmPfW5QTrfAgcBdJy1LEPaGh7KB2aNeaAW7OvWSKH2zSDBox93U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5189
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [RFC net-next 1/7] ptp: Add interface for
 acquiring DPLL state
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
Cc: "cong.wang@bytedance.com" <cong.wang@bytedance.com>, "Stanton,
 Kevin B" <kevin.b.stanton@intel.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "gustavoars@kernel.org" <gustavoars@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Bross,
 Kevin" <kevin.bross@intel.com>,
 "colin.king@canonical.com" <colin.king@canonical.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "nikolay@nvidia.com" <nikolay@nvidia.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "shuah@kernel.org" <shuah@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, Ahmad Byagowi <abyagowi@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Richard Cochran <richardcochran@gmail.com>
> Sent: Friday, August 20, 2021 5:56 PM
> To: Machnikowski, Maciej <maciej.machnikowski@intel.com>
> Cc: Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; linux-
> kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kselftest@vger.kernel.org; Brandeburg,
> Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net; kuba@kernel.org;
> shuah@kernel.org; arnd@arndb.de; nikolay@nvidia.com;
> cong.wang@bytedance.com; colin.king@canonical.com;
> gustavoars@kernel.org; Bross, Kevin <kevin.bross@intel.com>; Stanton,
> Kevin B <kevin.b.stanton@intel.com>; Ahmad Byagowi <abyagowi@fb.com>
> Subject: Re: [RFC net-next 1/7] ptp: Add interface for acquiring DPLL state
> 
> 1. Control bits according to IEEE 802.3 Section 40.5.2 as Ethtool or RTNL.
> 
> 2. User space Ethernet Synchronization Messaging Channel (ESMC)
>    service according to IEEE 802.3ay
> 
> The PHY should be automatically controlled by #1.
> 
> As I said before, none of this belongs in the PHC subsystem.
> 
> Thanks,
> Richard

Sure!

I did a talk at netDev 0x15 covering SyncE - you can refer to the slides for more detailed info, and hopefully the recording will be available soon as well:
https://netdevconf.info/0x15/session.html?Introduction-to-time-synchronization-over-Ethernet

At its core - SyncE requires 2 parts (see slide 22/23)
 - SyncE capable PHY
 - the external DPLL

The SyncE capable PHY is a PHY that can recover the physical clock, at which the data symbols are transferred, (usually) divide it and output it to the external PLL. It can also redirect the recovered and divided clock to more than one pin.
Since the 40.5.2 is not applicable to higher-speed ethernet which don't use auto-negotiation, but rather the link training sequence where the RX side always syncs its clock to the TX side.

The external DPLL tunes the frequency generated by a crystal to the frequency recovered by the PHY, and drives the outputs.

On the other end - the SyncE PHY uses the clock generated by the DPLL to transmit the data to the next element.

So to be able to control SyncE we need 2 interfaces:
- Interface to enable the recovered clock output at the given pin
- interface to monitor the DPLL to see if the clock that we got is valid, or not.

If it comes to ESMC (G.8264) messages, SyncE itself can run in 2 modes (slides 29/30 will give you more details):
- QL-Disabled - with no ESMC messages - it base on the local information from the PLL to make all decisions
- QL-Enabled - that adds ESMC and quality message transfer between the nodes.

Additionally, the SyncE DPLL can be synchronized to the external sources, like a 1PPS or a 10M signal from the GNSS.

That's why the RFC proposes 2 interfaces:
- one for enabling redirected clock on a selected pin of the PHY
- one for the physical frequency lock of the DPLL

The connection with the PTP subsystem is that in most use cases I heard about SyncE is used as a physical frequency syntonization for PTP clocks.
Hence adding a DPLL monitoring there would solve 2 issues at the same time - monitoring of a GNSS-syntonized PTP clock and the SyncE syntonized one and would make a single point to monitor by the upper layer applications.

Let me know if that makes more sense now. We could add a separate SyncE and separate PTP DPLL monitoring interfaces, but in most cases they will point to the same device.

Regards
Maciek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
