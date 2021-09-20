Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B52A4410F35
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Sep 2021 07:09:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DCA381BE3;
	Mon, 20 Sep 2021 05:09:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OQ0maccdk3ok; Mon, 20 Sep 2021 05:09:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B5E281BD6;
	Mon, 20 Sep 2021 05:09:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E31D61BF352
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 05:09:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB5B781B17
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 05:09:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ux1rc3mrCQxI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Sep 2021 05:09:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 654E681A30
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Sep 2021 05:09:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10112"; a="210303046"
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="210303046"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2021 22:09:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,307,1624345200"; d="scan'208";a="532047484"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 19 Sep 2021 22:09:18 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 19 Sep 2021 22:09:18 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 19 Sep 2021 22:09:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Sun, 19 Sep 2021 22:09:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Sun, 19 Sep 2021 22:09:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nihYJFUfAr6Df6+Y4k4Qpp4bu085DML8jEmM0D4JML/ZyBEiIhiOX54fcNaMr3971OL/PxTXPsPhzXO8ZI7wjH5uLvP21oiR7FP2S6AQugevmEjf5rBkOXuxsTWwDSbgHYXYp50GDauvzsCBe10nv7JEzvNZLNRu/SwZ97IxCo2qFsnI6jcTGn/Mx2HP5RGNqzjOCzw0IAykYr1J797/Jw61ABI+dvotU+cBMlOKG7kpiYgo6o4A6Q1JzTT5F8mNpx1QSJGgo5NYnZsGdamxGUUBPhWmyZl1CXWpzt2YvRqbwylb2d56myIlUyJuZZ0CxCfSS+7oGl/2gDIYrlDT0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=r0TT0jNVQnqyL8YHPErO83p4QGsmS5UtTAzxcFaoH5o=;
 b=K7KyaT60MTBvrnjUUhehzVEx/ZQRpQtesTsyovbZRP0pQGfd95t8eP40x0Z8b/819BoMa6tfQXD6+GfYKB/ppIVTwI9fkgBdZCp9YrZNpNXXvLr4+K3efz5nMqS5YFiqr/aBTF934FSkdRLICEJk1Q3cxYMtjh9BRRk6KiXVR16S6ralz2VPdZ/W73eMDhD+yLAWWptPqsYQKfMK92DPlqfp/2aOwzJbnvRJ+YCMYriA3A3DoGKEu9n136hxdpYVmCRJgSlMCgD/HDJCqrhAcaZSbJWWdBKhNuCEeKeRGCrrfsvZu0wwiYBQln/rXOXEqgmGS8wJo9N9+Ur0JI/SNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r0TT0jNVQnqyL8YHPErO83p4QGsmS5UtTAzxcFaoH5o=;
 b=maYipSkGhvlMypgBz2+oehuAv0dynEKzMVTKOq4EYQ+AkGXjL5Inq7WFCdH1A+npMSR9lbO4NL1sjg054YNJY/f0N2FNIIQol+VSVxuemGz32HsFl+Syzex+DI0vY/KwuHWuK8MOfltJLwEO2eKLA1c/a86eESXTcN6oXZzBWTw=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3830.namprd11.prod.outlook.com (2603:10b6:a03:fc::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Mon, 20 Sep
 2021 05:09:16 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2%3]) with mapi id 15.20.4523.018; Mon, 20 Sep 2021
 05:09:15 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 1/3] ice: update dim usage
 and moderation
Thread-Index: AQHXmIVW/gqVT7UYSkO923F752WDq6usieQQ
Date: Mon, 20 Sep 2021 05:09:15 +0000
Message-ID: <BYAPR11MB3367A0D5012BA3D5BC37A058FCA09@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210824011259.738307-1-jesse.brandeburg@intel.com>
 <20210824011259.738307-2-jesse.brandeburg@intel.com>
In-Reply-To: <20210824011259.738307-2-jesse.brandeburg@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 96b844f3-db3a-4ad0-a4c1-08d97bf4cb1a
x-ms-traffictypediagnostic: BYAPR11MB3830:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB383038565B0AA03AACAD1B53FCA09@BYAPR11MB3830.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 90Ye3TwX3Z3o5Vyt6Wq7vhWT3iKBJ7PvLiMcMa7LXwkDxtoIqGGL8AUEZ9uLZWHKR5Iubw+QBmxnFPvRg9YbwGq+8FHGgw2xlNpu1By05IQAGGrx3f2Wl5qsQ0WIVMZ4/+piAaozJGJIg7qPf3QOxI5iP3rNsHKaS3KU0tHJupbfXqpNpvXlTQua8tgY2+vzcXSx+RIHaMShI2YwkArJgaC5cK0Mj0D5Z7fpelW71WdBrm6kjoM8IbgQmZ668MYPKwebV5tqNWVsiWFmBKuS0RW2ZbfwTDuNMZPIdWi8o0rDJ7k0kGk4Ec0woqbKTXi4V6LfZZ1nPLSoJA5fFgR3Pj6R/M8Fmf0VR8YFpZbH/aQOMJlSkKRJseibpkOBvP5M5p+17Jwkn8mSH5PE7haSd+PN/1CcM/SfmMXvyGH1TbO2yRrO9tir1ichpKtY5QmZSCY0F8GCuuScYLChtZJy3UkC4Wzn5g4QzIqIDlk3xOmBX1luCIBv/csSMPwmVAZf4dugVm8OcHvDfrDRvITWE+rA9wtxSq0Hda7UTF+pLjAym87IzAEcZ6DLfg8j7bs/2znbno7e+IsKev/33UAMS7WKq/gz9wyFtsiE+Tw1LWk6CVwUUDQaXlNpQEohCJYA3r8MG4x3ra0QgG7IQnWrJelzng0LvkH4fU9ZgKLUWPVTRVD/zv6WVA2/XndCrutmFjsw6EAQVs2fXxxYj+/m8g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(55236004)(9686003)(6506007)(2906002)(55016002)(66446008)(5660300002)(33656002)(508600001)(86362001)(15650500001)(66556008)(186003)(71200400001)(53546011)(122000001)(52536014)(8936002)(7696005)(64756008)(38070700005)(316002)(66946007)(76116006)(26005)(38100700002)(83380400001)(110136005)(8676002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ySFuhgVJN6MQE9kEqEMWvPtUuDbYA9TqOxiX4LppI6bmL+88Ng7sRP942ax9?=
 =?us-ascii?Q?F67rtyO6ycjXnIruOK+LpL7QZZc8zP1Eui6nDj8mGhVtm8viaN1CaHU+YNR0?=
 =?us-ascii?Q?86WruINL4hzBs06A0PyDWLlW+cq6OwaCKuRuZQW3RIBogEHjQ3AtDaSPKB8S?=
 =?us-ascii?Q?rsoulz+pbVZLA7Buh17thZw6RQcFjVAGrXarK5kI2v5MVvkxU22G61N4p1ah?=
 =?us-ascii?Q?2BSghzBy0VW4NmPiQ1JZks/vHO0FxlsEd4V2V2H2LhyXyrBLXqjVlkIuVW0s?=
 =?us-ascii?Q?y7NJuiXl3dChcD/2fZytLGOCmbRKFL2nYLf8MXwg3ahw3ms0F9Oxnxvp65Py?=
 =?us-ascii?Q?0C2gurdyYbIsW6wPkmxt3oF7zGR9zt8qR3ZrD+tTCnxY0/uSe6whTPvBIwu1?=
 =?us-ascii?Q?mjFTUtHY4kE87IPecLJyq6S7S6HB/xoaKMtjbOzV+ic8ffRL+Tmj6spiUz61?=
 =?us-ascii?Q?zwePGrq9+cQGu1C+cYy8+cIfFhH+BsooE7jbBEg1g3IsX8WfpIHIgfFtDZBV?=
 =?us-ascii?Q?TFO84fwl+hHTEOQ/9Gi1uVmxzpuvT59XtpBMnVxrmo7/Qk3F+ojX8VqWKgeg?=
 =?us-ascii?Q?xlzc+KH6jwMZzVo5HXR9eQy7DD59OlnwafhsAHaZkp08/csbg2KLT41GVsIB?=
 =?us-ascii?Q?2gUsj7DcbsVI8Ks3oMtecarDIyHikoEzg6yWnCFz8bXfnXaE0G7hHGLObeYa?=
 =?us-ascii?Q?CMn+DPb81oywyOWq9C1X4fwJUZBP+489zFwctLOfvehEoxnbeEIfwTiCijSh?=
 =?us-ascii?Q?KKXD9e48o0naKwous5lU2VIxyKSBYv8JX2U8trTuIG/J3yIbN9Dq8o3czIMn?=
 =?us-ascii?Q?jPTF5eJIR45V5rWTSq8EJ/VIt2wuP1M9mX7EmelxVcN6NDkjV+D3WBZbcRs9?=
 =?us-ascii?Q?tDRKZgL8HAUCisEsxVbkCaMhVTGm9acouWib3GvRoTGKEWHQ8SR5lLgHYeY6?=
 =?us-ascii?Q?XXpDe/N14UtYu4TSOVdRieZ0/rasfbWK10a/JuHT3GXLs2fiIAZvpnVXgF8R?=
 =?us-ascii?Q?Xqvoing97Mt7s8AcvoxKZFn6cW3dr6gA6GgpP5T5VaVzsX6DMqEoHE0toy6k?=
 =?us-ascii?Q?z8DqTt93FStg+sdrH31CPfgWGLW/Yv6eFiWp/Ow/2BCONyfUj2GB/rAenZpR?=
 =?us-ascii?Q?6fh71YSXp9kX9hPirOu3npGe5s0QfMnC2KIvR+wr+wAjBp0txzLqE1d5UJ+1?=
 =?us-ascii?Q?qcYHsP74yCR1CfdcSTKG5mzL64H5IOYkqURf1oqEN3hrhy4gZoH5zb+6YLqB?=
 =?us-ascii?Q?XE5Nd8t9bbNhuu/NWp1rEfHwOZ7XfsQePytU8F4xeHPdLvCAXb7gcAESGWYE?=
 =?us-ascii?Q?2hY=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96b844f3-db3a-4ad0-a4c1-08d97bf4cb1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2021 05:09:15.8464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cJIpoV9MBo1GDXoHmoT1tlUrsBT2x6PNDpcLhxHvboD/u7a0LULGJHhRcqoWtYZNVX4VCV6fyckCGTk3mfWpCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3830
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/3] ice: update dim usage
 and moderation
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jesse Brandeburg
> Sent: Tuesday, August 24, 2021 6:43 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 1/3] ice: update dim usage and
> moderation
> 
> The driver was having trouble with unreliable latency when doing single
> threaded ping-pong tests. This was root caused to the DIM algorithm landing
> on a too slow interrupt value, which caused high latency, and it was especially
> present when queues were being switched frequently by the scheduler as
> happens on default setups today.
> 
> In attempting to improve this, we allow the upper rate limit for interrupts to
> move to rate limit of 4 microseconds as a max, which means that no vector
> can generate more than 250,000 interrupts per second. The old config was up
> to 100,000. The driver previously tried to program the rate limit too
> frequently and if the receive and transmit side were both active on the same
> vector, the INTRL would be set incorrectly, and this change fixes that issue as
> a side effect of the redesign.
> 
> This driver will operate from now on with a slightly changed DIM table with
> more emphasis towards latency sensitivity by having more table entries with
> lower latency than with high latency (high being >= 64 microseconds).
> 
> The driver also resets the DIM algorithm state with a new stats set when
> there is no work done and the data becomes stale (older than 1 second), for
> the respective receive or transmit portion of the interrupt.
> 
> Add a new helper for setting rate limit, which will be used more in a followup
> patch.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> ---
> v3: merged on top of tx_ring/rx_ring split patch series
> v2: original version
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  |  25 +++++
>  drivers/net/ethernet/intel/ice/ice_lib.h  |   1 +
>  drivers/net/ethernet/intel/ice/ice_main.c | 118 ++++++++++++----------
> drivers/net/ethernet/intel/ice/ice_txrx.c |  84 ++++++++-------
>  4 files changed, 141 insertions(+), 87 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
