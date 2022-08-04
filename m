Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1E75898D7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Aug 2022 09:55:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D424408A5;
	Thu,  4 Aug 2022 07:55:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D424408A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659599748;
	bh=GuWBmAmy9Y4tgN9Qv0RzGNauNlM7JNxkKveYdvyby4Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vvlVRFUEDMUv20VI5/u56DgZ78DcN+JQIxWuqTfuHLlQPJ7bp9FLPwuwPRLwFmuu6
	 T7w3364lcUmScf4yceb5d3pu/BL3x40xYj+NdPdJSWczlwUkacJQQwSI9TcvLRVpP6
	 TsPFnv8wHhdpvqqzbDokLJ2k+Oso4T3kgenG9bchajq+4rkfH9C4WBCry7RXLX7z6M
	 L0lj8YxiLCGiZuWG8C6TEQSzWgTrd/utRJLLditwzexb3riQOViC66vLze9pzHjc3u
	 EZIhkFrmRghDl3WPB03ETYEkZ8wVhLo1Nz9Fw0M3duIHNvxrkI9JbppR1Fn6KbNowf
	 UnRxk32lY5Bww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VlSmVxtgDsXe; Thu,  4 Aug 2022 07:55:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1077A40503;
	Thu,  4 Aug 2022 07:55:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1077A40503
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D9641BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 07:55:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 644EE40905
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 07:55:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 644EE40905
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lL8vYmPzn0Lb for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Aug 2022 07:55:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AB7640912
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4AB7640912
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Aug 2022 07:55:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="291087162"
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="291087162"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 00:55:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="729497396"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 04 Aug 2022 00:55:39 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 00:55:38 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 00:55:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 4 Aug 2022 00:55:38 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 4 Aug 2022 00:55:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kbkvomz3gijoktk0nQMztuTGyqU2o5Bm8iHw+P3IhJP8KbpywIhIMFL7l5v/h1a9uvdyoXF4buMhbad4dVcO0Wr37vsv486wcGhyYmearMwxpGEUlA81NMRx2wEPHZyLKZw1xpLlRyAl1l7NgnFsM46ib2VRRviY+M1LWUnIqiot2xi9+Rl9MkOAkxm0riB3uyU+HgQjmOFejveZQmdFkUPTUrOLi5+OEKVvBBjXLOaObLSfEo0BHJVUuRfkIvF8W6hYtuN7dMOWD5aYDppjXYUN7UoPV0b7YLalGn7HfQSXDmJvYufR4d2p9nJEGB9USzQ12bcdYszLjDILl4Iotg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jDMmmszChUoF7i8vvCt/yewnFwUL6EDm307OfNs5ECQ=;
 b=OE5UflJ0IIFX4Aanm1DoBI1W7Up4oW5gDdx69RKC4g0tMUHgciEsAQd8jkBjdY5ssNNSvYD0OMoDJyEoXkLEH1J1Kn6J1VABNBeCqGDVOSZJQEMb1LHa2veka260CeXvsBFl/PDEA4ai7SPpyPnbIr3ZpnWfuhJu9THnt2GCCyI79fhledVyRZYiA9IgQfDz+TqKB10XZXikiCkEWQ0g6QowFtXScj1VXPEzx9oMsYtq6YgkpNwyAm0Io2w3lHZjOj6D2Y6IZqzUgpIo0uQFPXhT8EdsQoceyDN4bXbpvAChdyZqwYglheHYiFYC147j/QZorcytNhJjfRf7yKXpkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by CH2PR11MB4357.namprd11.prod.outlook.com (2603:10b6:610:3d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Thu, 4 Aug
 2022 07:55:36 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6%12]) with mapi id 15.20.5482.016; Thu, 4 Aug 2022
 07:55:35 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 1/2] iavf: Fix shutdown pci
 callback to match the remove one
Thread-Index: AQHYpmZpsx/Jjq/PXUGlnJWU2d0pUq2eYkrw
Date: Thu, 4 Aug 2022 07:55:35 +0000
Message-ID: <CY4PR11MB1624B39B9E4D46CB1290CBDDE69F9@CY4PR11MB1624.namprd11.prod.outlook.com>
References: <20220802115142.65176-1-mateusz.palczewski@intel.com>
 <20220802115142.65176-2-mateusz.palczewski@intel.com>
In-Reply-To: <20220802115142.65176-2-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f3af205-a849-4eef-93ed-08da75eeb6db
x-ms-traffictypediagnostic: CH2PR11MB4357:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i9Xa6o1dJ75WM7WSXPKCN7J0oj/LVYLgzANJZnEnMpH05UXk6VlJTlqRm0dmgunXzToRz8DJjIQYt4wp5yd4qSCFG0b++/7HT/vP/QYMK+P1rBB4l1Tt7OgnVds7qSSqRq96F7ungh7ktOX8U9jI2UU/fH3t4HEI/o7jeKg32gm7bopPi/yPhDa43pQ4IMh+eUMZXmCeb3kKq0kvqL5Fb0x0uXFucUwI1TZdGJU+/iTIC8c5P/j5SKdnDj2l/zpHpsukG5rpwvB32Ip8tjqOM+KhLVNPcXCjVXpdmItBxGNQc225d0/sbd2j5XbJQIYH4c6q9I+pZpGo6NORSrHSfaRLtnMc21fIO36b34Y1HlrZ34ZW1BmRQmO+pPk7UlZzOqhSEojQWXT0jO7Tn7rtUrEmjU3NwA4BF/jM9eQbQaQxeyRL5n6BuHU7tCLfMpn0Ns418fTQK6bUeWJZGkz/LCob3muD241H29aaunQV59xuAvDJa1CMogQBgJAf/lAlxmDn20tBiCMefpMlmbGh3ymV/Yyp1bmVhG4h0W0v7S8ZhhSUL6EXZ0IOSp7bHCpxdCDLNxzyzcuv1/iZtQzpZ2C0jEpTpgQ+m/CdiWRtTYcWAnKM6+ASpiE6HUxjAqvldznXhi7jHH8Fw3tDSkliwUUTWyrIvf3Do1wZJR0eIK3YnnKGL3YKvLeMNqYcWJ+4NjmUQJImAo0m7GrCwpAKc5huMu4lUpJ3M5fRJuF8nPS7faRKlAnFX+qKICPBoZ7vU7PnMA6ADUwNb9ZPkA1VGf1SgAEcd24+aOJf03hjqXw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(39860400002)(346002)(376002)(136003)(38100700002)(33656002)(186003)(86362001)(7696005)(107886003)(26005)(71200400001)(6506007)(9686003)(41300700001)(53546011)(122000001)(316002)(55016003)(83380400001)(110136005)(66476007)(64756008)(66556008)(66446008)(66946007)(2906002)(4326008)(76116006)(8676002)(5660300002)(478600001)(52536014)(8936002)(82960400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bxtCYQkRTXO5h1S2zENwARFOrGjtAtzuM41+QB/FNTGXlT20jDlRVkTm0OWg?=
 =?us-ascii?Q?H9TJLgFheY+zDrfVQayzGFQ8+Dm27VkajbIHdqKGlyGBIJ8KXsZEBJ6TeRgO?=
 =?us-ascii?Q?IHaBo1timcD06HjpDK7ytNqQvXHEq1uQum+QSArHWAD+MVr8Ar/dSz9aAW55?=
 =?us-ascii?Q?/LI6eiCzI7V3aYHf3HwJ3VO37in52rvF6gz/fNiW051aWmSEvBIB5bvdSgoO?=
 =?us-ascii?Q?noydkn6nkU5jc2+GduMzK1ZSB1/e6Rc3musxKIpynhBgVN7EHGqho8fjNDM8?=
 =?us-ascii?Q?dfBZbwfNnEFzA1OetXU2Dj0kuxzJ+XH+0hbZ1DWD0bhSw6iaYW/CQQpkX6GB?=
 =?us-ascii?Q?UgTxb1LyElMBVVs1S9baLCiQXH51bTKuGLLWscwy08f9iajKKeiBDjGS8EjK?=
 =?us-ascii?Q?RWym29nG7uGNym02IxchQXZBoK+TXld1+6QgZMOLdAwYDG5ykx3YVGOszNgK?=
 =?us-ascii?Q?G6KmMXcUw358K2KLX4z7IiGO8GyMpYAc78gc+r1jSDEGEq0CchffLGwRbtsL?=
 =?us-ascii?Q?AgkyOL8nciGWobw0SJu4eY+N3gKKhgQoaQdXxBYi7am7/RL6HArLRESSf+ft?=
 =?us-ascii?Q?fSXoiYviG+ma1TmqXCYkfl5jZT3Lro4prxTaX1XLQH5B2hzLN9cWluFzfS2Z?=
 =?us-ascii?Q?y94V4+l3Zait7oa13OTrhvxcbW0mRfim7dpuHheHLjl2Zgg6fr+DBa2v/ugM?=
 =?us-ascii?Q?rOuAO2NrYysnpgYx+UZfQmPLTeUxU7V0BhnKnn2bPVuwAqemSWDpSzJAG9xG?=
 =?us-ascii?Q?M42kxCBuUoi4FVCvbU1uiBIjriYjknraznkIam+DOEFTCRQWjNastB0icBcd?=
 =?us-ascii?Q?TxydAVch/bcA7vTQA4aFfpabTG6T3PAUqu4lYvFp9vXmo5cm4smhKIzz/zuK?=
 =?us-ascii?Q?YyaKmjd9ZxZJvR42oMPTaR4Z3xswW3r3odIvMtoRAw58m44aO5fPhnS1pID6?=
 =?us-ascii?Q?76QsGC882t0LWNL0c2Bgwi7oZL+EOB3O9/VxLxz7MxB33gd1CG78urYo95bI?=
 =?us-ascii?Q?j3RgMg1ygjl8wT7qSzgkxHs0QW7kkEMXzezSu2l2Vg19U2XsLYa7iVH1FUDf?=
 =?us-ascii?Q?4ewIWWnYme2gI7IaHYnWesvfNZVtQ/HUQirWZULYGj7Ep4slNV9b/9UIEDP8?=
 =?us-ascii?Q?cfCFQHGT1yilh8e+Drr2t6mSZjE7hnsO6f1qpd36P/70kJZZBvVVhQTV3rQr?=
 =?us-ascii?Q?cDSFnRX6AktCi+bDxx1BK0COvwZjHgobywEGE9Zxa2A51Ym7txnNI3MnfzPM?=
 =?us-ascii?Q?JoUL8pl8clBmoZlihncq+dtrVAkD8D6bnUz4E/AUCWKR6h/YQq2GewofZJTq?=
 =?us-ascii?Q?9+tpvmDhoCdvcyTHwTV0MMAmOrP1Oib179MNDRok75snwsgiK2ORIoGZpWRU?=
 =?us-ascii?Q?XBszmj3X8qn+uyUOYqRh5tGuB6rEgbtfV5HkW4o6mwVySzEH6c+XsY+QmW//?=
 =?us-ascii?Q?hxIZjiViF3Tc6dh9X5m6b1A8ysXkwqeXBweLs3ItnxoCYL7bZjlc0QJ/ieS7?=
 =?us-ascii?Q?TvHQL3s8FEF23WwyAJDg/3hi1ttEfhrRowIA3dlgXI/LwElocwSyPlbHXjH8?=
 =?us-ascii?Q?uuWT3duAqNzUy4VOF7kIvvyogTu4UnlX5UFAYQIt?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f3af205-a849-4eef-93ed-08da75eeb6db
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2022 07:55:35.6387 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zFx2QHOzIbEWdrfBaQ8JJS4dUmW2+s5Vf4sDd0VXXoyhtt+KvPsc9Jt+jaCF6K+hTnudp7VwllvryTNBDT86/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4357
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659599740; x=1691135740;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Aiynydy0uP2WhfXjtidEWM+X6x9JqRGWYDtNjjPq+w0=;
 b=HwMMWnsCHYx1pl/K23dqvGoBitOCYVL9IhlDjuZB2RPpnfUAttkTf6Vo
 GfxM/9hUJAKDjjrtW+cUvvuxIX3Xzb4HznfSfm3+wSlnndt5idt+iOdNA
 0RBSkrUoOj3efxk7XbO+Xl+LoWrRcxC0XSeYggivpogJT2DrOS2PyF7Ph
 PWhRh0n0A3I+XXAF3QO+wUdus/r8CW3Xg8aaOp17pec/0WCCgXvzNKqAw
 xPL13vyyCv203kq5PlfV9tQMHLnFpZiTKMP+PhQZ/oGnMQrZwSOP/T+mu
 pvgAlj65hXaSUxB70L/afTbAIcF/Cll0rfyKKeTIujSiviNYgrPhtk/RQ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HwMMWnsC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/2] iavf: Fix shutdown pci
 callback to match the remove one
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: wtorek, 2 sierpnia 2022 13:52
> To: intel-wired-lan@lists.osuosl.org
> Cc: Laba, SlawomirX <slawomirx.laba@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2 1/2] iavf: Fix shutdown pci callback
> to match the remove one
> 
> From: Slawomir Laba <slawomirx.laba@intel.com>
> 
> Make the flow for pci shutdown be the same to the pci remove.
> 
> iavf_shutdown was implementing an incomplete version of iavf_remove. It
> misses several calls  to the kernel like iavf_free_misc_irq,
> iavf_reset_interrupt_capability, iounmap that might break the system on
> reboot or hibernation.
> 
> Implement the call of iavf_remove directly in iavf_shutdown to close this gap.
> 
> Fixes: 5eae00c57f5e ("i40evf: main driver core")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Fixed author
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 40 +++++++--------------
>  1 file changed, 12 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 04fb9fc0de19..6357dea93b99 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
