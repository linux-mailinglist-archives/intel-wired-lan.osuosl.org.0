Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A564A7E0B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 03:41:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C793415B3;
	Thu,  3 Feb 2022 02:41:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2TIgfD2Vynmt; Thu,  3 Feb 2022 02:41:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D982E4158A;
	Thu,  3 Feb 2022 02:41:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E16C31BF995
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 02:41:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BE0C2400E9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 02:41:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QoF4me7oHBnz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 02:41:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E2CA7400A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 02:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643856098; x=1675392098;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K+FKPRx9bqTz1CUB2FcU6a2rPphzrNQK6d1yfXz3jiY=;
 b=cKjMelaUWfHE4YMpSNDe1kPoogkPw9+Ib+ksKeDv8BBlMFxarFFSAVnR
 bEjxq/Xw9BVjmdVK1S7L6mS//MmMEVx+gCfxGnqObwMyjOWnYnoK1mm+C
 tzDUNYQIrZE71lPbIWNwz5Vc9u9aXTk11dSiBZAfMPzZ/945tHa5/EgV+
 EyVlFDS4gn6A9qKkhzf/MF3ydBARvw3W0TAlQI26ylT4ESYlZPC8cgLQQ
 CeVZmE2ll3mhGfC9dQmrwP7QKFzkMN3Wc7vihQB+8HosrqC2D2FOI3Fl9
 YBl5lsXuP9xEHY0dZHgWvKfpjrTqbE6lh10/wVauZEOJYdDHewTsYOIk4 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="248017131"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="248017131"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 18:41:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="483090716"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 02 Feb 2022 18:41:30 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 18:41:29 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 18:41:29 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 18:41:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O0AIBe4AdTRAP8uZ6GR5SYQR6x4rNrjZh7FZkCuFsPvUxfOAWGcSgM1wJoGrisWQQ4bip0zuo1ApLGqaJKTawS2uusRqxdlsDov/yeLELUhuqyJYUu+CMSc3zI4BHNtDdj7fjBFiuE77KFgyEZ5+MQ0gBGT95785UXXvYdmoJa8zthGCs69qFtVFg5XjgpyZiIqTCmThYOiUuONijW1PbEvkVeP4a5jXjm/waa39bFjKrr5A6r+SKNy5b5ZlWxz+ne4eujtbvaLjtx1BSyvWmYGsqZYDpvRUJuWYVBz2gKjOc84ZkrDK71KsDycbQxUW1MlS7hHoOLnnRyTRvX5NtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QYvpastAgk39RQvIwrddXIuCq/dUCsnYIpVQ/ELy95o=;
 b=VKLyTTUWcq6neJYyh1dfGqEA96nzjqfsRE2/bCFDtArdcsMdQKWXD201iJ7+r4opzQx6erymbgpxY3eXj+9s33iHKLPZEJVs4lYUCXXYOEmMVXmxd7tFhAZazAdYA3lxmhv7XuH3CGE2VhlXD9jwW+x6hqEmm4vIOi1WHMTwow6rka785DjQFlLugYXR/TLS7f7n7weqm5dBk2a6StLZm0joX+IaRHVQXb3i8zQebYZIRQ/hxPyRdpQvtVJkgBqNlSJDPKEv1HJgZGRoEnm+wniJAnfFilesMRUipnKLPI1az8ErkNv7bS7j9SGhnIqalijgNQC0A//JCv1vTog+9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by SN6PR11MB3149.namprd11.prod.outlook.com (2603:10b6:805:d5::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.21; Thu, 3 Feb
 2022 02:41:26 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 02:41:26 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 16/19] iecm: implement flow
 director
Thread-Index: AQHYE99MuFFNuEH9S0uxlPof4ltKKqx4y+KAgAhTvjA=
Date: Thu, 3 Feb 2022 02:41:26 +0000
Message-ID: <CO1PR11MB518650C6F3DCE7DBAF6CFE5D8F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-17-alan.brady@intel.com>
 <20220128190403.30131-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220128190403.30131-1-alexandr.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c04844d-9ff7-416b-e4ed-08d9e6beac8d
x-ms-traffictypediagnostic: SN6PR11MB3149:EE_
x-microsoft-antispam-prvs: <SN6PR11MB314975C627423A5680B1D09A8F289@SN6PR11MB3149.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e4+ndWBrVUqQ7GBgl7fAsdfT7jEUZ3ZaZpk3H/4gaFTGRZ8r0eEsZ5wHzQ7x1VGoHHk7PXcG1GMy09frQItRwXHEoRIS7OfTr7yhQrNVXSxlJIU0KM8jHbVNC3q/Cs+QEZ/8398AjWgLkqLoQc9i206uLh0mnG2qmcFL7OH1vfwnBWnXTPM+HBrGKCVGux0wssrNaGQIAbcFmcPTb8Q+1MQ3tQwtKTzewItX5L64L1RhKUgFi8fTJZfJiFg6TfIIpgIb35sQ6RLEd5/vqqNyMbbpHxOX5c63H7PGTgvOemSEgZatr24HKj418UIfWrVkxoUNb4Gjf2oo7/sENEmqSD7wZv6cclSIBV7pzOSgPdOMzCt6SM517HQWew1ouC5QHMWiIMTyPqa/aTu9j+f/5VajML/66/S69xGeMwz0+g83+8eptAbA2TYCEzUF6VBVriv3sOSWSVoCApJMiUGZ2bgwVsdHaGb+SsPv0pYcmLkAiwbg26t7dgdPoAli5HeG/W4lQfynFM3Gk4NGlEG9xDJ0+TyTLMcGLke704CZRkfmduHZAt9KUf1jMZvIMgCnC1EMbm7ZW99XNZ/l1Wrvf+XDFSB+KiNli2tuO7nJFxPxYwh+HOMreuPFLOOs1r9jP0CBfusaT2/bVf5adRQ89wGHC+zD7A3ymia44kUKLoDKRqaGOWh2+2DtNrygru1gPLpgpldKfZjc4MQpTqxJyw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(83380400001)(316002)(82960400001)(26005)(38100700002)(52536014)(6636002)(54906003)(2906002)(38070700005)(55016003)(30864003)(53546011)(8676002)(4326008)(71200400001)(5660300002)(508600001)(7696005)(9686003)(6862004)(6506007)(33656002)(76116006)(86362001)(64756008)(66556008)(66476007)(8936002)(66446008)(66946007)(122000001)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oZrAhTgL9lX4GovJQbIj2ycL0OGHSXRpBZGVUJJtBq+eJvVT0JlNKO0LiX+W?=
 =?us-ascii?Q?ioCtd/cVw8le4J3F2YASirzKzw6idR+n+qSzvd1ivUp8DYDHqXUhEHy4reVt?=
 =?us-ascii?Q?x81z3wDDKZi1r05t567a8RmBUO9dKllQ01eFkuMY8W7/XKauq9+Yg8FhN/bB?=
 =?us-ascii?Q?9+/mKPqiY1rygkLoUKFyl64yhaKAd3Y96P+Fg+WgguE+eKEmzx46e0NK5ddB?=
 =?us-ascii?Q?E+Lrh7K8RB83RP5dRcogXa5d/KDb5yMhaLMF8EMQF/WzaW1A/Y5U85z5X4g1?=
 =?us-ascii?Q?RodV92f+0E07kBrZo2bMQB/BqDhJZfQmtvBo2gOzH+mTN1isEqkROd7KJpuc?=
 =?us-ascii?Q?7LDU7wVC2DIP5sCUB4JckVaEcdLOoHraAvM3WqyPIQHy8c2LUxxBwoJYYiQu?=
 =?us-ascii?Q?kkkAzSat8CEN0lYEZqOEINULQ5AJO2ifEio5/n6unyRPrdKuPmXykUYco5to?=
 =?us-ascii?Q?BchA6D6JMGTro5CSbZTqnX+CeToR9D+B2pzMVvW4v+ze0HGr1Pbvbv0LZT16?=
 =?us-ascii?Q?Bt0Z6zcYKIUxhtkogaejvDj41JpIB4gtdUZP2juveDNKrykTb/vJyLxef2eT?=
 =?us-ascii?Q?1qLUg6V66B8vzeIl5INXAU5pE9SX/fwpoKoW5hfnC3EDd0VciTwNACl1Cz4C?=
 =?us-ascii?Q?fablnZqvQDKR17OG/qlLaNyXlxVUIgXyWTqg7RhFgycmR4TikiK9bvvuVV0Q?=
 =?us-ascii?Q?mRhbKrLTq+8yF7OCXxxz9rfGAem5ximBBFeJUBVQSZCIvlDWD7vq7g+bbv6v?=
 =?us-ascii?Q?LFGiQZqYzXFNe31wcQSHx4cLJry/A8x2QSyX7xrZVNIm3Ihqd/HI5j02lQIE?=
 =?us-ascii?Q?MShzyH8NM3qY6DZJ4a7AnIvcO/Uukv9qUu/uyseJsjp1RLGgP/zgwn1qgOe9?=
 =?us-ascii?Q?M4BZHJleiSiGZxnaPIpwu7F5NsHp8gSh4kecOeNvonzJk99JMgM4berT9Rgl?=
 =?us-ascii?Q?n5yDkxCODDTTCVgA0eT0Fx1VXm+q80MV7VBUAJOf0SA7gGZuX2lblaFVZEbi?=
 =?us-ascii?Q?28wVfmWlOEqnKQ5ntRDwgyavv7QtDZUnCPFXBES7qeTuLj8bjctD6oqyJCvO?=
 =?us-ascii?Q?nbpdwKkibj4n5feRgqFAsqxZsOJ7J86rg5Z9tFbZxMY7VThCoYdgIbkjZjL4?=
 =?us-ascii?Q?jI/rTyk7FZQmmAQyKyuD93tNg4Ytgyq1gOPt1n8MRvIlsXjBrv6NzoFzKJf1?=
 =?us-ascii?Q?YJo8gB6PiXgM31W2j6ksbUleyqXe4GlC3gRrR6ru8gDZjLeSlcG3089T1GsA?=
 =?us-ascii?Q?CoIcvx0qG3zjigK6GT79hpr34Cqlp9EoTP/cTJ2gZBYE+lxSy7UUvvKo4x89?=
 =?us-ascii?Q?rPaZvsa2EyWosnfpsyp8n39fBAgxcH7GIPICM35RcZXgNYOQjOvQyjj2FvhK?=
 =?us-ascii?Q?Bz2gKjmYDK3c7JyuE0WwBNAdq2h2socRkhqrOM6KwAnZb55Wd4O8Blm5cYPX?=
 =?us-ascii?Q?WxqZk0sPGAsQP+jlngLyWD4GyU8rryxa5W6GQ5zzYtUEiuwsJbYKkq/Afy7o?=
 =?us-ascii?Q?tArYv87h4t4YSt9Lj9FEprU65UVmaux48x3ZbZkH9Dzmzf7wJgWqRbaPPjhb?=
 =?us-ascii?Q?cR5/+/bvIRMsJ/OocVGjtOd6WirH20azMEmV3Y/C8IdDXEBUiLeI5sx+0upq?=
 =?us-ascii?Q?zdlBiJbYEAyoan6ZK3wqngk=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c04844d-9ff7-416b-e4ed-08d9e6beac8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 02:41:26.1540 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LZ2z+kLk08PaCq9NhG9UiXjf5a8E8JhUbEYppp8/yRnZUFi9VxLwbRFxQ+pDgIP2FWaVNVGNYv5kwZ5zNAlg1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3149
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 16/19] iecm: implement flow
 director
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Burra, Phani R" <phani.r.burra@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> Sent: Friday, January 28, 2022 11:04 AM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; Wang, Haiyue
> <haiyue.wang@intel.com>; Burra, Phani R <phani.r.burra@intel.com>;
> Chittim, Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH net-next 16/19] iecm: implement flow
> director
> 
> From: Alan Brady <alan.brady@intel.com>
> Date: Thu, 27 Jan 2022 16:10:06 -0800
> 
> > From: Haiyue Wang <haiyue.wang@intel.com>
> >
> > This adds everthing needed to do flow director commands.
> >
> > Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> > ---
> >  .../net/ethernet/intel/iecm/iecm_ethtool.c    |   17 +-
> >  drivers/net/ethernet/intel/iecm/iecm_lib.c    | 1528
> ++++++++++++++++-
> >  .../net/ethernet/intel/iecm/iecm_virtchnl.c   |  119 ++
> >  drivers/net/ethernet/intel/include/iecm.h     |  112 ++
> >  4 files changed, 1770 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_ethtool.c
> b/drivers/net/ethernet/intel/iecm/iecm_ethtool.c
> > index 32d905fb1bb6..7e252b25e02d 100644
> > --- a/drivers/net/ethernet/intel/iecm/iecm_ethtool.c
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_ethtool.c
> > @@ -15,6 +15,7 @@ static int iecm_get_rxnfc(struct net_device *netdev,
> struct ethtool_rxnfc *cmd,
> >  			  u32 __always_unused *rule_locs)
> >  {
> >  	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> > +	struct iecm_adapter *adapter = vport->adapter;
> >  	int ret = -EOPNOTSUPP;
> >
> >  	switch (cmd->cmd) {
> > @@ -23,14 +24,19 @@ static int iecm_get_rxnfc(struct net_device
> *netdev, struct ethtool_rxnfc *cmd,
> >  		ret = 0;
> >  		break;
> >  	case ETHTOOL_GRXCLSRLCNT:
> > -		/* stub */
> > +		if (!iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> > +				     VIRTCHNL2_CAP_FDIR))
> > +			break;
> > +		cmd->rule_cnt =
> > +			adapter-
> >config_data.fdir_config.num_active_filters;
> > +		cmd->data = IECM_MAX_FDIR_FILTERS;
> >  		ret = 0;
> >  		break;
> >  	case ETHTOOL_GRXCLSRULE:
> > -		/* stub */
> > +		ret = iecm_get_fdir_fltr_entry(vport, cmd);
> >  		break;
> >  	case ETHTOOL_GRXCLSRLALL:
> > -		/* stub */
> > +		ret = iecm_get_fdir_fltr_ids(vport, cmd, (u32 *)rule_locs);
> >  		break;
> >  	case ETHTOOL_GRXFH:
> >  		/* stub */
> > @@ -51,14 +57,15 @@ static int iecm_get_rxnfc(struct net_device
> *netdev, struct ethtool_rxnfc *cmd,
> >   */
> >  static int iecm_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc
> *cmd)
> >  {
> > +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);
> >  	int ret = -EOPNOTSUPP;
> >
> >  	switch (cmd->cmd) {
> >  	case ETHTOOL_SRXCLSRLINS:
> > -		/* stub */
> > +		ret = iecm_add_fdir_fltr(vport, cmd);
> >  		break;
> >  	case ETHTOOL_SRXCLSRLDEL:
> > -		/* stub */
> > +		ret = iecm_del_fdir_fltr(vport, cmd);
> >  		break;
> >  	case ETHTOOL_SRXFH:
> >  		/* stub */
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > index c5900723b018..35c0cbc42ebe 100644
> > --- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > @@ -967,6 +967,56 @@ static void iecm_remove_vlan_filters(struct
> iecm_vport *vport)
> >  	}
> >  }
> >
> > +/**
> > + * iecm_remove_fdir_filters - Remove all Flow Director filters
> > + * @vport: vport structure
> > + */
> > +static void iecm_remove_fdir_filters(struct iecm_vport *vport)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_fdir_fltr_config *fdir_config;
> > +
> > +	if (!iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_FDIR))
> > +		return;
> > +
> > +	fdir_config = &adapter->config_data.fdir_config;
> > +	if (!list_empty(&fdir_config->fdir_fltr_list)) {
> > +		struct iecm_fdir_fltr *fdir;
> > +
> > +		spin_lock_bh(&adapter->fdir_fltr_list_lock);
> > +		list_for_each_entry(fdir, &fdir_config->fdir_fltr_list, list) {
> > +			fdir->remove = true;
> > +		}
> 
> Braces are redundant here.
> 

Will fix

> > +		spin_unlock_bh(&adapter->fdir_fltr_list_lock);
> > +		iecm_send_del_fdir_filter_msg(vport);
> > +	}
> 
> 	if (list_empty())
> 		return;
> 
> 	spin_lock_bh(...
> 
> -1 indent level.
> 

Yeah there's probably a bunch of these.  Will fix.

> > +}
> > +
> > +/**
> > + * iecm_del_all_fdir_filters - delete all Flow Director filters
> > + * @vport: vport structure
> > + *
> > + * This function will loop through the list of Flow Director filters and
> > + * deletes them.
> > + **/
> > +static void iecm_del_all_fdir_filters(struct iecm_vport *vport)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_fdir_fltr_config *fdir_config;
> > +	struct iecm_fdir_fltr *fdir, *fdir_tmp;
> > +
> > +	fdir_config = &adapter->config_data.fdir_config;
> > +
> > +	spin_lock_bh(&adapter->fdir_fltr_list_lock);
> > +	list_for_each_entry_safe(fdir, fdir_tmp, &fdir_config->fdir_fltr_list,
> > +				 list) {
> > +		list_del(&fdir->list);
> > +		kfree(fdir);
> > +	}
> > +	fdir_config->num_active_filters = 0;
> > +	spin_unlock_bh(&adapter->fdir_fltr_list_lock);
> > +}
> > +
> >  /**
> >   * iecm_vport_stop - Disable a vport
> >   * @vport: vport to disable
> > @@ -997,6 +1047,8 @@ static void iecm_vport_stop(struct iecm_vport
> *vport)
> >  	if (!test_bit(__IECM_REL_RES_IN_PROG, adapter->flags))
> >  		iecm_remove_vlan_filters(vport);
> >
> > +	iecm_remove_fdir_filters(vport);
> > +
> >  	adapter->link_up = false;
> >  	iecm_vport_intr_deinit(vport);
> >  	iecm_vport_intr_rel(vport);
> > @@ -1206,6 +1258,28 @@ static void iecm_restore_vlans(struct
> iecm_vport *vport)
> >  		iecm_set_all_vlans(vport);
> >  }
> >
> > +/**
> > + * iecm_restore_fdir_filters - Restore all Flow Director filters
> > + * @vport: vport structure
> > + */
> > +static void iecm_restore_fdir_filters(struct iecm_vport *vport)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_fdir_fltr_config *fdir_config;
> > +
> > +	fdir_config = &adapter->config_data.fdir_config;
> > +	if (!list_empty(&fdir_config->fdir_fltr_list)) {
> > +		struct iecm_fdir_fltr *fdir;
> > +
> > +		spin_lock_bh(&adapter->fdir_fltr_list_lock);
> > +		list_for_each_entry(fdir, &fdir_config->fdir_fltr_list, list) {
> > +			fdir->add = true;
> > +		}
> 
> Braces are redundant for one-liners.
> 
> > +		spin_unlock_bh(&adapter->fdir_fltr_list_lock);
> > +		iecm_send_add_fdir_filter_msg(vport);
> > +	}
> 
> Invert the condition -> -1 indent level.
> 
> > +}
> > +
> >  /**
> >   * iecm_restore_features - Restore feature configs
> >   * @vport: virtual port structure
> > @@ -1227,6 +1301,9 @@ static void iecm_restore_features(struct
> iecm_vport *vport)
> >  		if (iecm_set_promiscuous(adapter))
> >  			dev_info(&adapter->pdev->dev, "Failed to restore
> promiscuous settings\n");
> >  	}
> > +
> > +	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_FDIR))
> > +		iecm_restore_fdir_filters(vport);
> >  }
> >
> >  /**
> > @@ -2014,6 +2091,7 @@ int iecm_probe(struct pci_dev *pdev,
> >  	INIT_LIST_HEAD(&adapter->config_data.mac_filter_list);
> >  	INIT_LIST_HEAD(&adapter->config_data.vlan_filter_list);
> >  	INIT_LIST_HEAD(&adapter->config_data.adv_rss_list);
> > +	INIT_LIST_HEAD(&adapter->config_data.fdir_config.fdir_fltr_list);
> >
> >  	INIT_DELAYED_WORK(&adapter->stats_task, iecm_statistics_task);
> >  	INIT_DELAYED_WORK(&adapter->serv_task, iecm_service_task);
> > @@ -2052,7 +2130,17 @@ EXPORT_SYMBOL(iecm_probe);
> >   */
> >  static void iecm_del_user_cfg_data(struct iecm_adapter *adapter)
> >  {
> > -	/* stub */
> > +	int i;
> > +
> > +	if (!adapter->vports)
> > +		return;
> > +
> > +	for (i = 0; i < adapter->num_alloc_vport; i++) {
> > +		if (!adapter->vports[i])
> > +			continue;
> > +
> > +		iecm_del_all_fdir_filters(adapter->vports[i]);
> > +	}
> >  }
> >
> >  /**
> > @@ -2647,6 +2735,1444 @@ static int iecm_setup_tc(struct net_device
> *netdev, enum tc_setup_type type,
> >  	return err;
> >  }
> >
> > +/**
> > + * iecm_pkt_udp_no_pay_len - the length of UDP packet without
> payload
> > + * @fltr: Flow Director filter data structure
> > + */
> > +static u16 iecm_pkt_udp_no_pay_len(struct iecm_fdir_fltr *fltr)
> > +{
> > +	return sizeof(struct ethhdr) +
> > +		(fltr->ip_ver == 4 ? sizeof(struct iphdr)
> 
> IPv4 hdr may have extensions.
> 

This one I'm not confident on.  Will have to check.

> > +				   : sizeof(struct ipv6hdr)) +
> > +		sizeof(struct udphdr);
> > +}
> > +
> > +/**
> > + * iecm_fill_fdir_gtpu_hdr - fill the GTP-U protocol header
> > + * @fltr: Flow Director filter data structure
> > + * @proto_hdrs: Flow Director protocol headers data structure
> > + *
> > + * Returns 0 if the GTP-U protocol header is set successfully
> > + */
> > +static int
> > +iecm_fill_fdir_gtpu_hdr(struct iecm_fdir_fltr *fltr,
> > +			struct virtchnl_proto_hdrs *proto_hdrs)
> > +{
> > +	struct virtchnl_proto_hdr *uhdr = &proto_hdrs-
> >proto_hdr[proto_hdrs->count - 1];
> > +	struct virtchnl_proto_hdr *ghdr = &proto_hdrs-
> >proto_hdr[proto_hdrs->count++];
> 
> Lines over 79.
> 
> > +	struct virtchnl_proto_hdr *ehdr = NULL;
> > +	u16 adj_offs, hdr_offs;
> > +	int i;
> > +
> > +	VIRTCHNL_SET_PROTO_HDR_TYPE(ghdr, GTPU_IP);
> > +
> > +	adj_offs = iecm_pkt_udp_no_pay_len(fltr);
> > +
> > +	for (i = 0; i < fltr->flex_cnt; i++) {
> > +#define IECM_GTPU_HDR_TEID_OFFS0	4
> > +#define IECM_GTPU_HDR_TEID_OFFS1	6
> > +#define IECM_GTPU_HDR_N_PDU_AND_NEXT_EXTHDR_OFFS	10
> > +#define IECM_GTPU_HDR_NEXT_EXTHDR_TYPE_MASK
> 	0x00FF /* skip N_PDU */
> > +/* PDU Session Container Extension Header (PSC) */
> > +#define IECM_GTPU_PSC_EXTHDR_TYPE			0x85
> > +#define IECM_GTPU_HDR_PSC_PDU_TYPE_AND_QFI_OFFS
> 	13
> > +#define IECM_GTPU_HDR_PSC_PDU_QFI_MASK			0x3F
> /* skip Type */
> > +#define IECM_GTPU_EH_QFI_IDX				1
> 
> It's better to define them outside the function.
> 

I'll take a look.

> > +
> > +		if (fltr->flex_words[i].offset < adj_offs)
> > +			return -EINVAL;
> > +
> > +		hdr_offs = fltr->flex_words[i].offset - adj_offs;
> > +
> > +		switch (hdr_offs) {
> > +		case IECM_GTPU_HDR_TEID_OFFS0:
> > +		case IECM_GTPU_HDR_TEID_OFFS1: {
> > +			__be16 *pay_word = (__force __be16 *)ghdr-
> >buffer;
> 
> I'd declare @pay_word outside of switch-case (which is recommended)
> to remove braces around the body.
> 

Sure will fix.
> > +
> > +			pay_word[hdr_offs >> 1] =
> > +					htons(fltr->flex_words[i].word);
> > +			VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(ghdr,
> GTPU_IP, TEID);
> > +			}
> > +			break;
> > +		case IECM_GTPU_HDR_N_PDU_AND_NEXT_EXTHDR_OFFS:
> > +			if ((fltr->flex_words[i].word &
> > +			     IECM_GTPU_HDR_NEXT_EXTHDR_TYPE_MASK)
> !=
> > +
> 	IECM_GTPU_PSC_EXTHDR_TYPE)
> > +				return -EOPNOTSUPP;
> > +			if (!ehdr)
> > +				ehdr =
> > +				   &proto_hdrs->proto_hdr[proto_hdrs-
> >count++];
> > +			VIRTCHNL_SET_PROTO_HDR_TYPE(ehdr, GTPU_EH);
> > +			break;
> > +		case IECM_GTPU_HDR_PSC_PDU_TYPE_AND_QFI_OFFS:
> > +			if (!ehdr)
> > +				return -EINVAL;
> > +			ehdr->buffer[IECM_GTPU_EH_QFI_IDX] =
> > +					fltr->flex_words[i].word &
> > +
> 	IECM_GTPU_HDR_PSC_PDU_QFI_MASK;
> 
> Inconsistent indentation here, filtr-> and IECM_ should be on the
> same level.
> 
Will fix

> > +			VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(ehdr,
> GTPU_EH, QFI);
> > +			break;
> > +		default:
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> > +	/* The PF ignores the UDP header fields */
> > +	uhdr->field_selector = 0;
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_fill_fdir_pfcp_hdr - fill the PFCP protocol header
> > + * @fltr: Flow Director filter data structure
> > + * @proto_hdrs: Flow Director protocol headers data structure
> > + *
> > + * Returns 0 if the PFCP protocol header is set successfully
> > + */
> > +static int
> > +iecm_fill_fdir_pfcp_hdr(struct iecm_fdir_fltr *fltr,
> > +			struct virtchnl_proto_hdrs *proto_hdrs)
> > +{
> > +	struct virtchnl_proto_hdr *uhdr =
> > +				&proto_hdrs->proto_hdr[proto_hdrs-
> >count - 1];
> > +	struct virtchnl_proto_hdr *hdr =
> > +				&proto_hdrs->proto_hdr[proto_hdrs-
> >count++];
> 
> Both could be declared and assigned separately to avoid line breaks.
> 
> > +	u16 adj_offs, hdr_offs;
> > +	int i;
> > +
> > +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, PFCP);
> > +
> > +	adj_offs = iecm_pkt_udp_no_pay_len(fltr);
> > +
> > +	for (i = 0; i < fltr->flex_cnt; i++) {
> > +#define IECM_PFCP_HDR_SFIELD_AND_MSG_TYPE_OFFS	0
> 
> Better to define outside the function.
> 

Sure

> > +		if (fltr->flex_words[i].offset < adj_offs)
> > +			return -EINVAL;
> > +
> > +		hdr_offs = fltr->flex_words[i].offset - adj_offs;
> > +
> > +		switch (hdr_offs) {
> > +		case IECM_PFCP_HDR_SFIELD_AND_MSG_TYPE_OFFS:
> > +			hdr->buffer[0] = (fltr->flex_words[i].word >> 8) &
> 0xff;
> 
> >> 8 and & 0xff are candidates for FIELD_GET(GENMASK(15, 8)).
> 

Will fix
> > +			VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, PFCP,
> S_FIELD);
> > +			break;
> > +		default:
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> > +	/* The PF ignores the UDP header fields */
> > +	uhdr->field_selector = 0;
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_fill_fdir_nat_t_esp_hdr - fill the NAT-T-ESP protocol header
> > + * @fltr: Flow Director filter data structure
> > + * @proto_hdrs: Flow Director protocol headers data structure
> > + *
> > + * Returns 0 if the NAT-T-ESP protocol header is set successfully
> > + */
> > +static int
> > +iecm_fill_fdir_nat_t_esp_hdr(struct iecm_fdir_fltr *fltr,
> > +			     struct virtchnl_proto_hdrs *proto_hdrs)
> > +{
> > +	struct virtchnl_proto_hdr *uhdr =
> > +				&proto_hdrs->proto_hdr[proto_hdrs-
> >count - 1];
> > +	struct virtchnl_proto_hdr *hdr =
> > +				&proto_hdrs->proto_hdr[proto_hdrs-
> >count++];
> 
> Same here about line wraps.
> 
> > +	u16 adj_offs, hdr_offs;
> > +	u32 spi = 0;
> > +	int i;
> > +
> > +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, ESP);
> > +
> > +	adj_offs = iecm_pkt_udp_no_pay_len(fltr);
> > +
> > +	for (i = 0; i < fltr->flex_cnt; i++) {
> > +#define IECM_NAT_T_ESP_SPI_OFFS0	0
> > +#define IECM_NAT_T_ESP_SPI_OFFS1	2
> 
> Same here about definitions. It would be harder to look for them
> later (not counting grep and Elixir).
> 
> > +		if (fltr->flex_words[i].offset < adj_offs)
> > +			return -EINVAL;
> > +
> > +		hdr_offs = fltr->flex_words[i].offset - adj_offs;
> > +
> > +		switch (hdr_offs) {
> > +		case IECM_NAT_T_ESP_SPI_OFFS0:
> > +			spi |= fltr->flex_words[i].word << 16;
> > +			break;
> > +		case IECM_NAT_T_ESP_SPI_OFFS1:
> > +			spi |= fltr->flex_words[i].word;
> > +			break;
> > +		default:
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> > +	/* Not support IKE Header Format with SPI 0 */
> > +	if (!spi)
> > +		return -EOPNOTSUPP;
> > +
> > +	*(__force __be32 *)hdr->buffer = htonl(spi);
> > +	VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, ESP, SPI);
> > +
> > +	/* The PF ignores the UDP header fields */
> > +	uhdr->field_selector = 0;
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_fill_fdir_udp_flex_pay_hdr - fill the UDP payload header
> > + * @fltr: Flow Director filter data structure
> > + * @proto_hdrs: Flow Director protocol headers data structure
> > + *
> > + * Returns 0 if the UDP payload defined protocol header is set
> successfully
> > + */
> > +static int
> > +iecm_fill_fdir_udp_flex_pay_hdr(struct iecm_fdir_fltr *fltr,
> > +				struct virtchnl_proto_hdrs *proto_hdrs)
> > +{
> > +#define IECM_GTPU_PORT		2152
> > +#define IECM_NAT_T_ESP_PORT	4500
> > +#define IECM_PFCP_PORT		8805
> 
> Same for those, they don't belong here at all.
> 
> > +	int err;
> > +
> > +	switch (ntohs(fltr->ip_data.dst_port)) {
> > +	case IECM_GTPU_PORT:
> > +		err = iecm_fill_fdir_gtpu_hdr(fltr, proto_hdrs);
> > +		break;
> > +	case IECM_NAT_T_ESP_PORT:
> > +		err = iecm_fill_fdir_nat_t_esp_hdr(fltr, proto_hdrs);
> > +		break;
> > +	case IECM_PFCP_PORT:
> > +		err = iecm_fill_fdir_pfcp_hdr(fltr, proto_hdrs);
> > +		break;
> > +	default:
> > +		err = -EOPNOTSUPP;
> > +		break;
> 
> All of those should be converted to just
> 
> 		return iecm_ ...
> 
> directly, rather than assigning it to err just to return err.
> 

Sure will fix.

> > +	}
> > +
> > +	return err;
> > +}
> > +
> > +/**
> > + * iecm_fill_fdir_ip4_hdr - fill the IPv4 protocol header
> > + * @fltr: Flow Director filter data structure
> > + * @proto_hdrs: Flow Director protocol headers data structure
> > + *
> > + * Returns 0 if the IPv4 protocol header is set successfully
> > + */
> > +static int iecm_fill_fdir_ip4_hdr(struct iecm_fdir_fltr *fltr,
> > +				  struct virtchnl_proto_hdrs *proto_hdrs)
> > +{
> > +	struct virtchnl_proto_hdr *hdr =
> > +				&proto_hdrs->proto_hdr[proto_hdrs-
> >count++];
> 
> Same for this about line break.
> 
> > +	struct iphdr *iph = (struct iphdr *)hdr->buffer;
> > +
> > +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, IPV4);
> > +
> > +	if (fltr->ip_mask.tos == U8_MAX) {
> > +		iph->tos = fltr->ip_data.tos;
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV4, DSCP);
> > +	}
> > +
> > +	if (fltr->ip_mask.proto == U8_MAX) {
> > +		iph->protocol = fltr->ip_data.proto;
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV4, PROT);
> > +	}
> > +
> > +	if (fltr->ip_mask.v4_addrs.src_ip == htonl(U32_MAX)) {
> > +		iph->saddr = fltr->ip_data.v4_addrs.src_ip;
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV4, SRC);
> > +	}
> > +
> > +	if (fltr->ip_mask.v4_addrs.dst_ip == htonl(U32_MAX)) {
> > +		iph->daddr = fltr->ip_data.v4_addrs.dst_ip;
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV4, DST);
> > +	}
> > +
> > +	fltr->ip_ver = 4;
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_fill_fdir_ip6_hdr - fill the IPv6 protocol header
> > + * @fltr: Flow Director filter data structure
> > + * @proto_hdrs: Flow Director protocol headers data structure
> > + *
> > + * Returns 0 if the IPv6 protocol header is set successfully
> > + */
> > +static int
> > +iecm_fill_fdir_ip6_hdr(struct iecm_fdir_fltr *fltr,
> > +		       struct virtchnl_proto_hdrs *proto_hdrs)
> > +{
> > +	static const struct in6_addr ipv6_addr_full_mask = {
> > +		.in6_u = {
> > +			.u6_addr8 = {
> > +				0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
> 0xFF,
> > +				0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
> 0xFF,
> 
> Lowercase is generally more preferred for hex constants.
> 

Will fix.

> > +			}
> > +		}
> > +	};
> > +	struct virtchnl_proto_hdr *hdr =
> > +				&proto_hdrs->proto_hdr[proto_hdrs-
> >count++];
> 
> Same.
> 
> > +	struct ipv6hdr *iph = (struct ipv6hdr *)hdr->buffer;
> > +
> > +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, IPV6);
> > +
> > +	if (fltr->ip_mask.tclass == U8_MAX) {
> > +		iph->priority = (fltr->ip_data.tclass >> 4) & 0xF;
> > +		iph->flow_lbl[0] = (fltr->ip_data.tclass << 4) & 0xF0;
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV6, TC);
> > +	}
> > +
> > +	if (fltr->ip_mask.proto == U8_MAX) {
> > +		iph->nexthdr = fltr->ip_data.proto;
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV6, PROT);
> > +	}
> > +
> > +	if (!memcmp(&fltr->ip_mask.v6_addrs.src_ip,
> &ipv6_addr_full_mask,
> > +		    sizeof(struct in6_addr))) {
> > +		memcpy(&iph->saddr, &fltr->ip_data.v6_addrs.src_ip,
> > +		       sizeof(struct in6_addr));
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV6, SRC);
> > +	}
> > +
> > +	if (!memcmp(&fltr->ip_mask.v6_addrs.dst_ip,
> &ipv6_addr_full_mask,
> > +		    sizeof(struct in6_addr))) {
> > +		memcpy(&iph->daddr, &fltr->ip_data.v6_addrs.dst_ip,
> > +		       sizeof(struct in6_addr));
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV6, DST);
> > +	}
> > +
> > +	fltr->ip_ver = 6;
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_fill_fdir_tcp_hdr - fill the TCP protocol header
> > + * @fltr: Flow Director filter data structure
> > + * @proto_hdrs: Flow Director protocol headers data structure
> > + *
> > + * Returns 0 if the TCP protocol header is set successfully
> > + */
> > +static int
> > +iecm_fill_fdir_tcp_hdr(struct iecm_fdir_fltr *fltr,
> > +		       struct virtchnl_proto_hdrs *proto_hdrs)
> > +{
> > +	struct virtchnl_proto_hdr *hdr =
> > +				&proto_hdrs->proto_hdr[proto_hdrs-
> >count++];
> 
> Same.
> 
> > +	struct tcphdr *tcph = (struct tcphdr *)hdr->buffer;
> > +
> > +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, TCP);
> > +
> > +	if (fltr->ip_mask.src_port == htons(U16_MAX)) {
> > +		tcph->source = fltr->ip_data.src_port;
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, TCP,
> SRC_PORT);
> > +	}
> > +
> > +	if (fltr->ip_mask.dst_port == htons(U16_MAX)) {
> > +		tcph->dest = fltr->ip_data.dst_port;
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, TCP,
> DST_PORT);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_fill_fdir_udp_hdr - fill the UDP protocol header
> > + * @fltr: Flow Director filter data structure
> > + * @proto_hdrs: Flow Director protocol headers data structure
> > + *
> > + * Returns 0 if the UDP protocol header is set successfully
> > + */
> > +static int
> > +iecm_fill_fdir_udp_hdr(struct iecm_fdir_fltr *fltr,
> > +		       struct virtchnl_proto_hdrs *proto_hdrs)
> > +{
> > +	struct virtchnl_proto_hdr *hdr =
> > +				&proto_hdrs->proto_hdr[proto_hdrs-
> >count++];
> 
> ...
> 
> > +	struct udphdr *udph = (struct udphdr *)hdr->buffer;
> > +
> > +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, UDP);
> > +
> > +	if (fltr->ip_mask.src_port == htons(U16_MAX)) {
> > +		udph->source = fltr->ip_data.src_port;
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, UDP,
> SRC_PORT);
> > +	}
> > +
> > +	if (fltr->ip_mask.dst_port == htons(U16_MAX)) {
> > +		udph->dest = fltr->ip_data.dst_port;
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, UDP,
> DST_PORT);
> > +	}
> > +
> > +	if (!fltr->flex_cnt)
> > +		return 0;
> > +
> > +	return iecm_fill_fdir_udp_flex_pay_hdr(fltr, proto_hdrs);
> > +}
> > +
> > +/**
> > + * iecm_fill_fdir_sctp_hdr - fill the SCTP protocol header
> > + * @fltr: Flow Director filter data structure
> > + * @proto_hdrs: Flow Director protocol headers data structure
> > + *
> > + * Returns 0 if the SCTP protocol header is set successfully
> > + */
> > +static int
> > +iecm_fill_fdir_sctp_hdr(struct iecm_fdir_fltr *fltr,
> > +			struct virtchnl_proto_hdrs *proto_hdrs)
> > +{
> > +	struct virtchnl_proto_hdr *hdr =
> > +				&proto_hdrs->proto_hdr[proto_hdrs-
> >count++];
> 
> ...
> 
> > +	struct sctphdr *sctph = (struct sctphdr *)hdr->buffer;
> > +
> > +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, SCTP);
> > +
> > +	if (fltr->ip_mask.src_port == htons(U16_MAX)) {
> > +		sctph->source = fltr->ip_data.src_port;
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, SCTP,
> SRC_PORT);
> > +	}
> > +
> > +	if (fltr->ip_mask.dst_port == htons(U16_MAX)) {
> > +		sctph->dest = fltr->ip_data.dst_port;
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, SCTP,
> DST_PORT);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_fill_fdir_ah_hdr - fill the AH protocol header
> > + * @fltr: Flow Director filter data structure
> > + * @proto_hdrs: Flow Director protocol headers data structure
> > + *
> > + * Returns 0 if the AH protocol header is set successfully
> > + */
> > +static int
> > +iecm_fill_fdir_ah_hdr(struct iecm_fdir_fltr *fltr,
> > +		      struct virtchnl_proto_hdrs *proto_hdrs)
> > +{
> > +	struct virtchnl_proto_hdr *hdr =
> > +				&proto_hdrs->proto_hdr[proto_hdrs-
> >count++];
> 
> ...
> 
> > +	struct ip_auth_hdr *ah = (struct ip_auth_hdr *)hdr->buffer;
> > +
> > +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, AH);
> > +
> > +	if (fltr->ip_mask.spi == htonl(U32_MAX)) {
> > +		ah->spi = fltr->ip_data.spi;
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, AH, SPI);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_fill_fdir_esp_hdr - fill the ESP protocol header
> > + * @fltr: Flow Director filter data structure
> > + * @proto_hdrs: Flow Director protocol headers data structure
> > + *
> > + * Returns 0 if the ESP protocol header is set successfully
> > + */
> > +static int
> > +iecm_fill_fdir_esp_hdr(struct iecm_fdir_fltr *fltr,
> > +		       struct virtchnl_proto_hdrs *proto_hdrs)
> > +{
> > +	struct virtchnl_proto_hdr *hdr =
> > +				&proto_hdrs->proto_hdr[proto_hdrs-
> >count++];
> 
> ...
> 
> > +	struct ip_esp_hdr *esph = (struct ip_esp_hdr *)hdr->buffer;
> > +
> > +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, ESP);
> > +
> > +	if (fltr->ip_mask.spi == htonl(U32_MAX)) {
> > +		esph->spi = fltr->ip_data.spi;
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, ESP, SPI);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_fill_fdir_l4_hdr - fill the L4 protocol header
> > + * @fltr: Flow Director filter data structure
> > + * @proto_hdrs: Flow Director protocol headers data structure
> > + *
> > + * Returns 0 if the L4 protocol header is set successfully
> > + */
> > +static int
> > +iecm_fill_fdir_l4_hdr(struct iecm_fdir_fltr *fltr,
> > +		      struct virtchnl_proto_hdrs *proto_hdrs)
> > +{
> > +	struct virtchnl_proto_hdr *hdr;
> > +	__be32 *l4_4_data;
> > +
> > +	if (!fltr->ip_mask.proto) /* IPv4/IPv6 header only */
> > +		return 0;
> > +
> > +	hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
> 
> Here's a good example: assignment occurs separately from the
> declaration and doesn't cause a line wrap.
> 
> > +	l4_4_data = (__force __be32 *)hdr->buffer;
> > +
> > +	/* L2TPv3 over IP with 'Session ID' */
> > +	if (fltr->ip_data.proto == IPPROTO_L2TP &&
> > +	    fltr->ip_mask.l4_header == htonl(U32_MAX)) {
> > +		VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, L2TPV3);
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, L2TPV3,
> SESS_ID);
> > +
> > +		*l4_4_data = fltr->ip_data.l4_header;
> > +	} else {
> > +		return -EOPNOTSUPP;
> > +	}
> 
> 	if (!= || !=)
> 		return -EOPNOTSUPP;
> 
> 	VIRTCHNL_SET_ ...
> 
> -1 level this way.
> 
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_fill_fdir_eth_hdr - fill the Ethernet protocol header
> > + * @fltr: Flow Director filter data structure
> > + * @proto_hdrs: Flow Director protocol headers data structure
> > + *
> > + * Returns 0 if the Ethernet protocol header is set successfully
> > + */
> > +static int
> > +iecm_fill_fdir_eth_hdr(struct iecm_fdir_fltr *fltr,
> > +		       struct virtchnl_proto_hdrs *proto_hdrs)
> > +{
> > +	struct virtchnl_proto_hdr *hdr =
> > +				&proto_hdrs->proto_hdr[proto_hdrs-
> >count++];
> 
> Here's a bad example again.
> 
> > +	struct ethhdr *ehdr = (struct ethhdr *)hdr->buffer;
> > +
> > +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, ETH);
> > +
> > +	if (fltr->eth_mask.etype == htons(U16_MAX)) {
> > +		if (fltr->eth_data.etype == htons(ETH_P_IP) ||
> > +		    fltr->eth_data.etype == htons(ETH_P_IPV6))
> > +			return -EOPNOTSUPP;
> > +
> > +		ehdr->h_proto = fltr->eth_data.etype;
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, ETH,
> ETHERTYPE);
> > +	}
> 
> This can be inverted as well.
> 
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_fill_fdir_add_msg - fill the Flow Director filter into virtchnl
> message
> > + * @vport: vport structure
> > + * @fltr: Flow Director filter data structure
> > + *
> > + * Returns 0 if the add Flow Director virtchnl message is filled
> successfully
> > + */
> > +static int
> > +iecm_fill_fdir_add_msg(struct iecm_vport *vport, struct iecm_fdir_fltr
> *fltr)
> > +{
> > +	struct virtchnl_fdir_add *vc_msg = &fltr->vc_add_msg;
> > +	struct virtchnl_proto_hdrs *proto_hdrs;
> > +	int err;
> > +
> > +	proto_hdrs = &vc_msg->rule_cfg.proto_hdrs;
> 
> And here's good.
> 
> > +
> > +	err = iecm_fill_fdir_eth_hdr(fltr, proto_hdrs); /* L2 always exists */
> > +	if (err)
> > +		return err;
> > +
> > +	switch (fltr->flow_type) {
> > +	case IECM_FDIR_FLOW_IPV4_TCP:
> > +		err = iecm_fill_fdir_ip4_hdr(fltr, proto_hdrs) |
> > +		      iecm_fill_fdir_tcp_hdr(fltr, proto_hdrs);
> > +		break;
> > +	case IECM_FDIR_FLOW_IPV4_UDP:
> > +		err = iecm_fill_fdir_ip4_hdr(fltr, proto_hdrs) |
> > +		      iecm_fill_fdir_udp_hdr(fltr, proto_hdrs);
> > +		break;
> > +	case IECM_FDIR_FLOW_IPV4_SCTP:
> > +		err = iecm_fill_fdir_ip4_hdr(fltr, proto_hdrs) |
> > +		      iecm_fill_fdir_sctp_hdr(fltr, proto_hdrs);
> > +		break;
> > +	case IECM_FDIR_FLOW_IPV4_AH:
> > +		err = iecm_fill_fdir_ip4_hdr(fltr, proto_hdrs) |
> > +		      iecm_fill_fdir_ah_hdr(fltr, proto_hdrs);
> > +		break;
> > +	case IECM_FDIR_FLOW_IPV4_ESP:
> > +		err = iecm_fill_fdir_ip4_hdr(fltr, proto_hdrs) |
> > +		      iecm_fill_fdir_esp_hdr(fltr, proto_hdrs);
> > +		break;
> > +	case IECM_FDIR_FLOW_IPV4_OTHER:
> > +		err = iecm_fill_fdir_ip4_hdr(fltr, proto_hdrs) |
> > +		      iecm_fill_fdir_l4_hdr(fltr, proto_hdrs);
> > +		break;
> > +	case IECM_FDIR_FLOW_IPV6_TCP:
> > +		err = iecm_fill_fdir_ip6_hdr(fltr, proto_hdrs) |
> > +		      iecm_fill_fdir_tcp_hdr(fltr, proto_hdrs);
> > +		break;
> > +	case IECM_FDIR_FLOW_IPV6_UDP:
> > +		err = iecm_fill_fdir_ip6_hdr(fltr, proto_hdrs) |
> > +		      iecm_fill_fdir_udp_hdr(fltr, proto_hdrs);
> > +		break;
> > +	case IECM_FDIR_FLOW_IPV6_SCTP:
> > +		err = iecm_fill_fdir_ip6_hdr(fltr, proto_hdrs) |
> > +		      iecm_fill_fdir_sctp_hdr(fltr, proto_hdrs);
> > +		break;
> > +	case IECM_FDIR_FLOW_IPV6_AH:
> > +		err = iecm_fill_fdir_ip6_hdr(fltr, proto_hdrs) |
> > +		      iecm_fill_fdir_ah_hdr(fltr, proto_hdrs);
> > +		break;
> > +	case IECM_FDIR_FLOW_IPV6_ESP:
> > +		err = iecm_fill_fdir_ip6_hdr(fltr, proto_hdrs) |
> > +		      iecm_fill_fdir_esp_hdr(fltr, proto_hdrs);
> > +		break;
> > +	case IECM_FDIR_FLOW_IPV6_OTHER:
> > +		err = iecm_fill_fdir_ip6_hdr(fltr, proto_hdrs) |
> > +		      iecm_fill_fdir_l4_hdr(fltr, proto_hdrs);
> > +		break;
> > +	case IECM_FDIR_FLOW_NON_IP_L2:
> > +		break;
> > +	default:
> > +		err = -EINVAL;
> > +		break;
> > +	}
> > +
> > +	if (err)
> > +		return err;
> > +
> > +	vc_msg->vsi_id = vport->vport_id;
> > +	vc_msg->rule_cfg.action_set.count = 1;
> > +	vc_msg->rule_cfg.action_set.actions[0].type = fltr->action;
> > +	vc_msg->rule_cfg.action_set.actions[0].act_conf.queue.index =
> > +								fltr->q_index;
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_fdir_flow_proto_name - get the flow protocol name
> > + * @flow_type: Flow Director filter flow type
> > + **/
> > +static const char *
> > +iecm_fdir_flow_proto_name(enum iecm_fdir_flow_type flow_type)
> > +{
> > +	switch (flow_type) {
> > +	case IECM_FDIR_FLOW_IPV4_TCP:
> > +	case IECM_FDIR_FLOW_IPV6_TCP:
> > +		return "TCP";
> > +	case IECM_FDIR_FLOW_IPV4_UDP:
> > +	case IECM_FDIR_FLOW_IPV6_UDP:
> > +		return "UDP";
> > +	case IECM_FDIR_FLOW_IPV4_SCTP:
> > +	case IECM_FDIR_FLOW_IPV6_SCTP:
> > +		return "SCTP";
> > +	case IECM_FDIR_FLOW_IPV4_AH:
> > +	case IECM_FDIR_FLOW_IPV6_AH:
> > +		return "AH";
> > +	case IECM_FDIR_FLOW_IPV4_ESP:
> > +	case IECM_FDIR_FLOW_IPV6_ESP:
> > +		return "ESP";
> > +	case IECM_FDIR_FLOW_IPV4_OTHER:
> > +	case IECM_FDIR_FLOW_IPV6_OTHER:
> > +		return "Other";
> > +	case IECM_FDIR_FLOW_NON_IP_L2:
> > +		return "Ethernet";
> > +	default:
> > +		return NULL;
> > +	}
> > +}
> > +
> > +/**
> > + * iecm_dump_fdir_fltr
> > + * @vport: vport structure
> > + * @fltr: Flow Director filter to print
> > + *
> > + * Print the Flow Director filter
> > + **/
> > +static void
> > +iecm_dump_fdir_fltr(struct iecm_vport *vport, struct iecm_fdir_fltr
> *fltr)
> > +{
> > +	const char *proto = iecm_fdir_flow_proto_name(fltr->flow_type);
> > +	struct device *dev = &vport->adapter->pdev->dev;
> > +
> > +	if (!proto)
> > +		return;
> > +
> > +	switch (fltr->flow_type) {
> > +	case IECM_FDIR_FLOW_IPV4_TCP:
> > +	case IECM_FDIR_FLOW_IPV4_UDP:
> > +	case IECM_FDIR_FLOW_IPV4_SCTP:
> > +		dev_info(dev, "Rule ID: %u dst_ip: %pI4 src_ip %pI4 %s:
> dst_port %hu src_port %hu\n",
> > +			 fltr->loc,
> > +			 &fltr->ip_data.v4_addrs.dst_ip,
> > +			 &fltr->ip_data.v4_addrs.src_ip,
> > +			 proto,
> > +			 ntohs(fltr->ip_data.dst_port),
> > +			 ntohs(fltr->ip_data.src_port));
> 
> Some of those can fit into previous line, there's no need to put
> each argument onto separate one.
> 

It technically can fit on one line, but it's much easier for humans to parse what's going where the way it's written now.

> > +		break;
> > +	case IECM_FDIR_FLOW_IPV4_AH:
> > +	case IECM_FDIR_FLOW_IPV4_ESP:
> > +		dev_info(dev, "Rule ID: %u dst_ip: %pI4 src_ip %pI4 %s: SPI
> %u\n",
> > +			 fltr->loc,
> > +			 &fltr->ip_data.v4_addrs.dst_ip,
> > +			 &fltr->ip_data.v4_addrs.src_ip,
> > +			 proto,
> > +			 ntohl(fltr->ip_data.spi));
> 
> Same here.
> 
> > +		break;
> > +	case IECM_FDIR_FLOW_IPV4_OTHER:
> > +		dev_info(dev, "Rule ID: %u dst_ip: %pI4 src_ip %pI4 proto:
> %u L4_bytes: 0x%x\n",
> > +			 fltr->loc,
> > +			 &fltr->ip_data.v4_addrs.dst_ip,
> > +			 &fltr->ip_data.v4_addrs.src_ip,
> > +			 fltr->ip_data.proto,
> > +			 ntohl(fltr->ip_data.l4_header));
> 
> And here.
> 
> > +		break;
> > +	case IECM_FDIR_FLOW_IPV6_TCP:
> > +	case IECM_FDIR_FLOW_IPV6_UDP:
> > +	case IECM_FDIR_FLOW_IPV6_SCTP:
> > +		dev_info(dev, "Rule ID: %u dst_ip: %pI6 src_ip %pI6 %s:
> dst_port %hu src_port %hu\n",
> > +			 fltr->loc,
> > +			 &fltr->ip_data.v6_addrs.dst_ip,
> > +			 &fltr->ip_data.v6_addrs.src_ip,
> > +			 proto,
> > +			 ntohs(fltr->ip_data.dst_port),
> > +			 ntohs(fltr->ip_data.src_port));
> 
> ...
> 
> > +		break;
> > +	case IECM_FDIR_FLOW_IPV6_AH:
> > +	case IECM_FDIR_FLOW_IPV6_ESP:
> > +		dev_info(dev, "Rule ID: %u dst_ip: %pI6 src_ip %pI6 %s: SPI
> %u\n",
> > +			 fltr->loc,
> > +			 &fltr->ip_data.v6_addrs.dst_ip,
> > +			 &fltr->ip_data.v6_addrs.src_ip,
> > +			 proto,
> > +			 ntohl(fltr->ip_data.spi));
> 
> ...
> 
> > +		break;
> > +	case IECM_FDIR_FLOW_IPV6_OTHER:
> > +		dev_info(dev, "Rule ID: %u dst_ip: %pI6 src_ip %pI6 proto:
> %u L4_bytes: 0x%x\n",
> > +			 fltr->loc,
> > +			 &fltr->ip_data.v6_addrs.dst_ip,
> > +			 &fltr->ip_data.v6_addrs.src_ip,
> > +			 fltr->ip_data.proto,
> > +			 ntohl(fltr->ip_data.l4_header));
> 
> ...
> 
> > +		break;
> > +	case IECM_FDIR_FLOW_NON_IP_L2:
> > +		dev_info(dev, "Rule ID: %u eth_type: 0x%x\n",
> > +			 fltr->loc,
> > +			 ntohs(fltr->eth_data.etype));
> 
> ...
> 

This one probably doesn't need it will fix.

> > +		break;
> > +	default:
> > +		break;
> > +	}
> > +}
> > +
> > +/**
> > + * iecm_fdir_is_dup_fltr - test if filter is already in list
> > + * @adapter: board private structure
> > + * @fltr: Flow Director filter data structure
> > + *
> > + * Returns true if the filter is found in the list
> > + */
> > +static bool
> > +iecm_fdir_is_dup_fltr(struct iecm_adapter *adapter,
> > +		      struct iecm_fdir_fltr *fltr)
> > +{
> > +	struct iecm_fdir_fltr_config *fdir_config;
> > +	struct iecm_fdir_fltr *tmp;
> > +
> > +	fdir_config = &adapter->config_data.fdir_config;
> > +	list_for_each_entry(tmp, &fdir_config->fdir_fltr_list, list) {
> > +		if (tmp->flow_type != fltr->flow_type)
> > +			continue;
> > +
> > +		if (!memcmp(&tmp->eth_data, &fltr->eth_data,
> > +			    sizeof(fltr->eth_data)) &&
> > +		    !memcmp(&tmp->ip_data, &fltr->ip_data,
> > +			    sizeof(fltr->ip_data)) &&
> > +		    !memcmp(&tmp->ext_data, &fltr->ext_data,
> > +			    sizeof(fltr->ext_data)))
> > +			return true;
> > +	}
> > +
> > +	return false;
> > +}
> > +
> > +/**
> > + * iecm_find_fdir_fltr_by_loc - find filter with location
> > + * @adapter: board private structure
> > + * @loc: location to find.
> > + *
> > + * Returns pointer to Flow Director filter if found or null
> > + */
> > +static struct iecm_fdir_fltr *
> > +iecm_find_fdir_fltr_by_loc(struct iecm_adapter *adapter, u32 loc)
> > +{
> > +	struct iecm_fdir_fltr_config *fdir_config;
> > +	struct iecm_fdir_fltr *rule;
> > +
> > +	fdir_config = &adapter->config_data.fdir_config;
> > +	list_for_each_entry(rule, &fdir_config->fdir_fltr_list, list)
> > +		if (rule->loc == loc)
> > +			return rule;
> 
> Here's a good example that a single `if` statement shouldn't be
> placed into a pair of braces.
> 

You're right it does need some braces on the list_for_each, will fix.

> > +
> > +	return NULL;
> > +}
> > +
> > +/**
> > + * iecm_fdir_list_add_fltr - add a new node to the flow director filter list
> > + * @adapter: board private structure
> > + * @fltr: filter node to add to structure
> > + */
> > +static void
> > +iecm_fdir_list_add_fltr(struct iecm_adapter *adapter,
> > +			struct iecm_fdir_fltr *fltr)
> > +{
> > +	struct iecm_fdir_fltr *rule, *parent = NULL;
> > +	struct iecm_fdir_fltr_config *fdir_config;
> > +
> > +	fdir_config = &adapter->config_data.fdir_config;
> > +
> > +	spin_lock_bh(&adapter->fdir_fltr_list_lock);
> > +	list_for_each_entry(rule, &fdir_config->fdir_fltr_list, list) {
> > +		if (rule->loc >= fltr->loc)
> > +			break;
> > +		parent = rule;
> > +	}
> > +
> > +	if (parent)
> > +		list_add(&fltr->list, &parent->list);
> > +	else
> > +		list_add(&fltr->list, &fdir_config->fdir_fltr_list);
> > +	fltr->add = true;
> > +	spin_unlock_bh(&adapter->fdir_fltr_list_lock);
> > +}
> > +
> > +/**
> > + * iecm_fltr_to_ethtool_flow - convert filter type values to ethtool
> > + * flow type values
> > + * @flow: filter type to be converted
> > + *
> > + * Returns the corresponding ethtool flow type.
> > + */
> > +static int iecm_fltr_to_ethtool_flow(enum iecm_fdir_flow_type flow)
> > +{
> > +	switch (flow) {
> > +	case IECM_FDIR_FLOW_IPV4_TCP:
> > +		return TCP_V4_FLOW;
> > +	case IECM_FDIR_FLOW_IPV4_UDP:
> > +		return UDP_V4_FLOW;
> > +	case IECM_FDIR_FLOW_IPV4_SCTP:
> > +		return SCTP_V4_FLOW;
> > +	case IECM_FDIR_FLOW_IPV4_AH:
> > +		return AH_V4_FLOW;
> > +	case IECM_FDIR_FLOW_IPV4_ESP:
> > +		return ESP_V4_FLOW;
> > +	case IECM_FDIR_FLOW_IPV4_OTHER:
> > +		return IPV4_USER_FLOW;
> > +	case IECM_FDIR_FLOW_IPV6_TCP:
> > +		return TCP_V6_FLOW;
> > +	case IECM_FDIR_FLOW_IPV6_UDP:
> > +		return UDP_V6_FLOW;
> > +	case IECM_FDIR_FLOW_IPV6_SCTP:
> > +		return SCTP_V6_FLOW;
> > +	case IECM_FDIR_FLOW_IPV6_AH:
> > +		return AH_V6_FLOW;
> > +	case IECM_FDIR_FLOW_IPV6_ESP:
> > +		return ESP_V6_FLOW;
> > +	case IECM_FDIR_FLOW_IPV6_OTHER:
> > +		return IPV6_USER_FLOW;
> > +	case IECM_FDIR_FLOW_NON_IP_L2:
> > +		return ETHER_FLOW;
> > +	default:
> > +		/* 0 is undefined ethtool flow */
> > +		return 0;
> 
> This switch-case can be converted to an array to reduce code size.
> 

Seems reasonable, will look.

> > +	}
> > +}
> > +
> > +/**
> > + * iecm_ethtool_flow_to_fltr - convert ethtool flow type to filter enum
> > + * @eth: Ethtool flow type to be converted
> > + *
> > + * Returns flow enum
> > + */
> > +static enum iecm_fdir_flow_type iecm_ethtool_flow_to_fltr(int eth)
> > +{
> > +	switch (eth) {
> > +	case TCP_V4_FLOW:
> > +		return IECM_FDIR_FLOW_IPV4_TCP;
> > +	case UDP_V4_FLOW:
> > +		return IECM_FDIR_FLOW_IPV4_UDP;
> > +	case SCTP_V4_FLOW:
> > +		return IECM_FDIR_FLOW_IPV4_SCTP;
> > +	case AH_V4_FLOW:
> > +		return IECM_FDIR_FLOW_IPV4_AH;
> > +	case ESP_V4_FLOW:
> > +		return IECM_FDIR_FLOW_IPV4_ESP;
> > +	case IPV4_USER_FLOW:
> > +		return IECM_FDIR_FLOW_IPV4_OTHER;
> > +	case TCP_V6_FLOW:
> > +		return IECM_FDIR_FLOW_IPV6_TCP;
> > +	case UDP_V6_FLOW:
> > +		return IECM_FDIR_FLOW_IPV6_UDP;
> > +	case SCTP_V6_FLOW:
> > +		return IECM_FDIR_FLOW_IPV6_SCTP;
> > +	case AH_V6_FLOW:
> > +		return IECM_FDIR_FLOW_IPV6_AH;
> > +	case ESP_V6_FLOW:
> > +		return IECM_FDIR_FLOW_IPV6_ESP;
> > +	case IPV6_USER_FLOW:
> > +		return IECM_FDIR_FLOW_IPV6_OTHER;
> > +	case ETHER_FLOW:
> > +		return IECM_FDIR_FLOW_NON_IP_L2;
> > +	default:
> > +		return IECM_FDIR_FLOW_NONE;
> 
> Same here.
> 
> > +	}
> > +}
> > +
> > +/**
> > + * iecm_is_mask_valid - check mask field set
> > + * @mask: full mask to check
> > + * @field: field for which mask should be valid
> > + *
> > + * If the mask is fully set return true. If it is not valid for field return
> > + * false.
> > + */
> > +static bool iecm_is_mask_valid(u64 mask, u64 field)
> > +{
> > +	return (mask & field) == field;
> > +}
> 
> That is something really basic and should at least be placed
> somewhere in the headers and used module-wide.
> 

I'm not convinced it makes sense to do that if it's not actually being used module wide. I'm pretty sure this is only validating user input for flow director filters.

> > +
> > +/**
> > + * iecm_parse_rx_flow_user_data - deconstruct user-defined data
> > + * @fsp: pointer to ethtool Rx flow specification
> > + * @fltr: pointer to Flow Director filter for userdef data storage
> > + *
> > + * Returns 0 on success, negative error value on failure
> > + */
> > +static int
> > +iecm_parse_rx_flow_user_data(struct ethtool_rx_flow_spec *fsp,
> > +			     struct iecm_fdir_fltr *fltr)
> > +{
> > +	struct iecm_flex_word *flex;
> > +	int i, cnt = 0;
> > +
> > +	if (!(fsp->flow_type & FLOW_EXT))
> > +		return 0;
> > +
> > +	for (i = 0; i < IECM_FLEX_WORD_NUM; i++) {
> > +#define IECM_USERDEF_FLEX_WORD_M	GENMASK(15, 0)
> > +#define IECM_USERDEF_FLEX_OFFS_S	16
> > +#define IECM_USERDEF_FLEX_OFFS_M	GENMASK(31,
> IECM_USERDEF_FLEX_OFFS_S)
> > +#define IECM_USERDEF_FLEX_FLTR_M	GENMASK(31, 0)
> 
> 1. Should be placed outside the function.
> 2. Candidates for FIELD_{GET,PREP}().
> 

Sure will fix.

> > +		u32 value = be32_to_cpu(fsp->h_ext.data[i]);
> > +		u32 mask = be32_to_cpu(fsp->m_ext.data[i]);
> > +
> > +		if (!value || !mask)
> > +			continue;
> > +
> > +		if (!iecm_is_mask_valid(mask,
> IECM_USERDEF_FLEX_FLTR_M))
> > +			return -EINVAL;
> > +
> > +		/* 504 is the maximum value for offsets, and offset is
> measured
> > +		 * from the start of the MAC address.
> > +		 */
> > +#define IECM_USERDEF_FLEX_MAX_OFFS_VAL 504
> 
> Same.
> 
> > +		flex = &fltr->flex_words[cnt++];
> > +		flex->word = value & IECM_USERDEF_FLEX_WORD_M;
> > +		flex->offset = (value & IECM_USERDEF_FLEX_OFFS_M) >>
> > +			     IECM_USERDEF_FLEX_OFFS_S;
> > +		if (flex->offset > IECM_USERDEF_FLEX_MAX_OFFS_VAL)
> > +			return -EINVAL;
> > +	}
> > +
> > +	fltr->flex_cnt = cnt;
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_fill_rx_flow_ext_data - fill the additional data
> > + * @fsp: pointer to ethtool Rx flow specification
> > + * @fltr: pointer to Flow Director filter to get additional data
> > + */
> > +static void
> > +iecm_fill_rx_flow_ext_data(struct ethtool_rx_flow_spec *fsp,
> > +			   struct iecm_fdir_fltr *fltr)
> > +{
> > +	if (!fltr->ext_mask.usr_def[0] && !fltr->ext_mask.usr_def[1])
> > +		return;
> > +
> > +	fsp->flow_type |= FLOW_EXT;
> > +
> > +	memcpy(fsp->h_ext.data, fltr->ext_data.usr_def,
> > +	       sizeof(fsp->h_ext.data));
> > +	memcpy(fsp->m_ext.data, fltr->ext_mask.usr_def,
> > +	       sizeof(fsp->m_ext.data));
> > +}
> > +
> > +/**
> > + * iecm_get_fdir_fltr_entry - fill ethtool structure with Flow Director
> > + * filter data
> > + * @vport: vport structure
> > + * @cmd: ethtool command data structure to receive the filter data
> > + *
> > + * Returns 0 as expected for success by ethtool
> > + */
> > +int
> > +iecm_get_fdir_fltr_entry(struct iecm_vport *vport, struct ethtool_rxnfc
> *cmd)
> > +{
> > +	struct ethtool_rx_flow_spec *fsp =
> > +					(struct ethtool_rx_flow_spec
> *)&cmd->fs;
> 
> 	struct ethtool_rx_flow_spec *fsp = (typeof(fsp))&cmd->fs;
> 
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_fdir_fltr *rule;
> > +	int ret = 0;
> > +
> > +	if (adapter->state != __IECM_UP)
> > +		return -EIO;
> > +
> > +	if (!iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_FDIR))
> > +		return -EOPNOTSUPP;
> > +
> > +	spin_lock_bh(&adapter->fdir_fltr_list_lock);
> > +
> > +	rule = iecm_find_fdir_fltr_by_loc(adapter, fsp->location);
> > +	if (!rule) {
> > +		ret = -EINVAL;
> > +		goto release_lock;
> > +	}
> > +
> > +	fsp->flow_type = iecm_fltr_to_ethtool_flow(rule->flow_type);
> > +
> > +	memset(&fsp->m_u, 0, sizeof(fsp->m_u));
> > +	memset(&fsp->m_ext, 0, sizeof(fsp->m_ext));
> > +
> > +	switch (fsp->flow_type) {
> > +	case TCP_V4_FLOW:
> > +	case UDP_V4_FLOW:
> > +	case SCTP_V4_FLOW:
> > +		fsp->h_u.tcp_ip4_spec.ip4src = rule-
> >ip_data.v4_addrs.src_ip;
> > +		fsp->h_u.tcp_ip4_spec.ip4dst = rule-
> >ip_data.v4_addrs.dst_ip;
> > +		fsp->h_u.tcp_ip4_spec.psrc = rule->ip_data.src_port;
> > +		fsp->h_u.tcp_ip4_spec.pdst = rule->ip_data.dst_port;
> > +		fsp->h_u.tcp_ip4_spec.tos = rule->ip_data.tos;
> > +		fsp->m_u.tcp_ip4_spec.ip4src = rule-
> >ip_mask.v4_addrs.src_ip;
> > +		fsp->m_u.tcp_ip4_spec.ip4dst = rule-
> >ip_mask.v4_addrs.dst_ip;
> > +		fsp->m_u.tcp_ip4_spec.psrc = rule->ip_mask.src_port;
> > +		fsp->m_u.tcp_ip4_spec.pdst = rule->ip_mask.dst_port;
> > +		fsp->m_u.tcp_ip4_spec.tos = rule->ip_mask.tos;
> > +		break;
> > +	case AH_V4_FLOW:
> > +	case ESP_V4_FLOW:
> > +		fsp->h_u.ah_ip4_spec.ip4src = rule-
> >ip_data.v4_addrs.src_ip;
> > +		fsp->h_u.ah_ip4_spec.ip4dst = rule-
> >ip_data.v4_addrs.dst_ip;
> > +		fsp->h_u.ah_ip4_spec.spi = rule->ip_data.spi;
> > +		fsp->h_u.ah_ip4_spec.tos = rule->ip_data.tos;
> > +		fsp->m_u.ah_ip4_spec.ip4src = rule-
> >ip_mask.v4_addrs.src_ip;
> > +		fsp->m_u.ah_ip4_spec.ip4dst = rule-
> >ip_mask.v4_addrs.dst_ip;
> > +		fsp->m_u.ah_ip4_spec.spi = rule->ip_mask.spi;
> > +		fsp->m_u.ah_ip4_spec.tos = rule->ip_mask.tos;
> > +		break;
> > +	case IPV4_USER_FLOW:
> > +		fsp->h_u.usr_ip4_spec.ip4src = rule-
> >ip_data.v4_addrs.src_ip;
> > +		fsp->h_u.usr_ip4_spec.ip4dst = rule-
> >ip_data.v4_addrs.dst_ip;
> > +		fsp->h_u.usr_ip4_spec.l4_4_bytes = rule-
> >ip_data.l4_header;
> > +		fsp->h_u.usr_ip4_spec.tos = rule->ip_data.tos;
> > +		fsp->h_u.usr_ip4_spec.ip_ver = ETH_RX_NFC_IP4;
> > +		fsp->h_u.usr_ip4_spec.proto = rule->ip_data.proto;
> > +		fsp->m_u.usr_ip4_spec.ip4src = rule-
> >ip_mask.v4_addrs.src_ip;
> > +		fsp->m_u.usr_ip4_spec.ip4dst = rule-
> >ip_mask.v4_addrs.dst_ip;
> > +		fsp->m_u.usr_ip4_spec.l4_4_bytes = rule-
> >ip_mask.l4_header;
> > +		fsp->m_u.usr_ip4_spec.tos = rule->ip_mask.tos;
> > +		fsp->m_u.usr_ip4_spec.ip_ver = 0xFF;
> > +		fsp->m_u.usr_ip4_spec.proto = rule->ip_mask.proto;
> > +		break;
> > +	case TCP_V6_FLOW:
> > +	case UDP_V6_FLOW:
> > +	case SCTP_V6_FLOW:
> > +		memcpy(fsp->h_u.usr_ip6_spec.ip6src,
> > +		       &rule->ip_data.v6_addrs.src_ip, sizeof(struct
> in6_addr));
> > +		memcpy(fsp->h_u.usr_ip6_spec.ip6dst,
> > +		       &rule->ip_data.v6_addrs.dst_ip, sizeof(struct
> in6_addr));
> > +		fsp->h_u.tcp_ip6_spec.psrc = rule->ip_data.src_port;
> > +		fsp->h_u.tcp_ip6_spec.pdst = rule->ip_data.dst_port;
> > +		fsp->h_u.tcp_ip6_spec.tclass = rule->ip_data.tclass;
> > +		memcpy(fsp->m_u.usr_ip6_spec.ip6src,
> > +		       &rule->ip_mask.v6_addrs.src_ip, sizeof(struct
> in6_addr));
> > +		memcpy(fsp->m_u.usr_ip6_spec.ip6dst,
> > +		       &rule->ip_mask.v6_addrs.dst_ip, sizeof(struct
> in6_addr));
> > +		fsp->m_u.tcp_ip6_spec.psrc = rule->ip_mask.src_port;
> > +		fsp->m_u.tcp_ip6_spec.pdst = rule->ip_mask.dst_port;
> > +		fsp->m_u.tcp_ip6_spec.tclass = rule->ip_mask.tclass;
> > +		break;
> > +	case AH_V6_FLOW:
> > +	case ESP_V6_FLOW:
> > +		memcpy(fsp->h_u.ah_ip6_spec.ip6src,
> > +		       &rule->ip_data.v6_addrs.src_ip, sizeof(struct
> in6_addr));
> > +		memcpy(fsp->h_u.ah_ip6_spec.ip6dst,
> > +		       &rule->ip_data.v6_addrs.dst_ip, sizeof(struct
> in6_addr));
> > +		fsp->h_u.ah_ip6_spec.spi = rule->ip_data.spi;
> > +		fsp->h_u.ah_ip6_spec.tclass = rule->ip_data.tclass;
> > +		memcpy(fsp->m_u.ah_ip6_spec.ip6src,
> > +		       &rule->ip_mask.v6_addrs.src_ip, sizeof(struct
> in6_addr));
> > +		memcpy(fsp->m_u.ah_ip6_spec.ip6dst,
> > +		       &rule->ip_mask.v6_addrs.dst_ip, sizeof(struct
> in6_addr));
> > +		fsp->m_u.ah_ip6_spec.spi = rule->ip_mask.spi;
> > +		fsp->m_u.ah_ip6_spec.tclass = rule->ip_mask.tclass;
> > +		break;
> > +	case IPV6_USER_FLOW:
> > +		memcpy(fsp->h_u.usr_ip6_spec.ip6src,
> > +		       &rule->ip_data.v6_addrs.src_ip, sizeof(struct
> in6_addr));
> > +		memcpy(fsp->h_u.usr_ip6_spec.ip6dst,
> > +		       &rule->ip_data.v6_addrs.dst_ip, sizeof(struct
> in6_addr));
> > +		fsp->h_u.usr_ip6_spec.l4_4_bytes = rule-
> >ip_data.l4_header;
> > +		fsp->h_u.usr_ip6_spec.tclass = rule->ip_data.tclass;
> > +		fsp->h_u.usr_ip6_spec.l4_proto = rule->ip_data.proto;
> > +		memcpy(fsp->m_u.usr_ip6_spec.ip6src,
> > +		       &rule->ip_mask.v6_addrs.src_ip, sizeof(struct
> in6_addr));
> > +		memcpy(fsp->m_u.usr_ip6_spec.ip6dst,
> > +		       &rule->ip_mask.v6_addrs.dst_ip, sizeof(struct
> in6_addr));
> > +		fsp->m_u.usr_ip6_spec.l4_4_bytes = rule-
> >ip_mask.l4_header;
> > +		fsp->m_u.usr_ip6_spec.tclass = rule->ip_mask.tclass;
> > +		fsp->m_u.usr_ip6_spec.l4_proto = rule->ip_mask.proto;
> > +		break;
> > +	case ETHER_FLOW:
> > +		fsp->h_u.ether_spec.h_proto = rule->eth_data.etype;
> > +		fsp->m_u.ether_spec.h_proto = rule->eth_mask.etype;
> > +		break;
> > +	default:
> > +		ret = -EINVAL;
> > +		break;
> > +	}
> > +
> > +	iecm_fill_rx_flow_ext_data(fsp, rule);
> > +
> > +	if (rule->action == VIRTCHNL_ACTION_DROP)
> > +		fsp->ring_cookie = RX_CLS_FLOW_DISC;
> > +	else
> > +		fsp->ring_cookie = rule->q_index;
> > +
> > +release_lock:
> > +	spin_unlock_bh(&adapter->fdir_fltr_list_lock);
> > +	return ret;
> > +}
> > +
> > +/**
> > + * iecm_get_fdir_fltr_ids - fill buffer with filter IDs of active filters
> > + * @vport: vport structure
> > + * @cmd: ethtool command data structure
> > + * @rule_locs: ethtool array passed in from OS to receive filter IDs
> > + *
> > + * Returns 0 as expected for success by ethtool
> > + */
> > +int
> > +iecm_get_fdir_fltr_ids(struct iecm_vport *vport, struct ethtool_rxnfc
> *cmd,
> > +		       u32 *rule_locs)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_fdir_fltr_config *fdir_config;
> > +	struct iecm_fdir_fltr *fltr;
> > +	unsigned int cnt = 0;
> > +	int ret = 0;
> > +
> > +	if (adapter->state != __IECM_UP)
> > +		return -EIO;
> > +
> > +	if (!iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_FDIR))
> > +		return -EOPNOTSUPP;
> > +
> > +	cmd->data = IECM_MAX_FDIR_FILTERS;
> > +
> > +	fdir_config = &adapter->config_data.fdir_config;
> > +
> > +	spin_lock_bh(&adapter->fdir_fltr_list_lock);
> > +
> > +	list_for_each_entry(fltr, &fdir_config->fdir_fltr_list, list) {
> > +		if (cnt == cmd->rule_cnt) {
> > +			ret = -EMSGSIZE;
> > +			goto release_lock;
> > +		}
> > +		rule_locs[cnt] = fltr->loc;
> > +		cnt++;
> > +	}
> > +
> > +release_lock:
> > +	spin_unlock_bh(&adapter->fdir_fltr_list_lock);
> > +	if (!ret)
> > +		cmd->rule_cnt = cnt;
> > +
> > +	return ret;
> > +}
> > +
> > +/**
> > + * iecm_add_fdir_fltr_info - Set the input set for Flow Director filter
> > + * @vport: vport structure
> > + * @fsp: pointer to ethtool Rx flow specification
> > + * @fltr: filter structure
> > + */
> > +static int
> > +iecm_add_fdir_fltr_info(struct iecm_vport *vport,
> > +			struct ethtool_rx_flow_spec *fsp,
> > +			struct iecm_fdir_fltr *fltr)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	u32 flow_type, q_index = 0;
> > +	enum virtchnl_action act;
> > +	int err;
> > +
> > +	if (fsp->ring_cookie == RX_CLS_FLOW_DISC) {
> > +		act = VIRTCHNL_ACTION_DROP;
> > +	} else {
> > +		q_index = fsp->ring_cookie;
> > +		if (q_index >= vport->num_rxq)
> > +			return -EINVAL;
> > +
> > +		act = VIRTCHNL_ACTION_QUEUE;
> > +	}
> > +
> > +	fltr->action = act;
> > +	fltr->loc = fsp->location;
> > +	fltr->q_index = q_index;
> > +
> > +	if (fsp->flow_type & FLOW_EXT) {
> > +		memcpy(fltr->ext_data.usr_def, fsp->h_ext.data,
> > +		       sizeof(fltr->ext_data.usr_def));
> > +		memcpy(fltr->ext_mask.usr_def, fsp->m_ext.data,
> > +		       sizeof(fltr->ext_mask.usr_def));
> > +	}
> > +
> > +	flow_type = fsp->flow_type & ~(FLOW_EXT | FLOW_MAC_EXT |
> FLOW_RSS);
> > +	fltr->flow_type = iecm_ethtool_flow_to_fltr(flow_type);
> > +
> > +	switch (flow_type) {
> > +	case TCP_V4_FLOW:
> > +	case UDP_V4_FLOW:
> > +	case SCTP_V4_FLOW:
> > +		fltr->ip_data.v4_addrs.src_ip = fsp-
> >h_u.tcp_ip4_spec.ip4src;
> > +		fltr->ip_data.v4_addrs.dst_ip = fsp-
> >h_u.tcp_ip4_spec.ip4dst;
> > +		fltr->ip_data.src_port = fsp->h_u.tcp_ip4_spec.psrc;
> > +		fltr->ip_data.dst_port = fsp->h_u.tcp_ip4_spec.pdst;
> > +		fltr->ip_data.tos = fsp->h_u.tcp_ip4_spec.tos;
> > +		fltr->ip_mask.v4_addrs.src_ip = fsp-
> >m_u.tcp_ip4_spec.ip4src;
> > +		fltr->ip_mask.v4_addrs.dst_ip = fsp-
> >m_u.tcp_ip4_spec.ip4dst;
> > +		fltr->ip_mask.src_port = fsp->m_u.tcp_ip4_spec.psrc;
> > +		fltr->ip_mask.dst_port = fsp->m_u.tcp_ip4_spec.pdst;
> > +		fltr->ip_mask.tos = fsp->m_u.tcp_ip4_spec.tos;
> > +		break;
> > +	case AH_V4_FLOW:
> > +	case ESP_V4_FLOW:
> > +		fltr->ip_data.v4_addrs.src_ip = fsp-
> >h_u.ah_ip4_spec.ip4src;
> > +		fltr->ip_data.v4_addrs.dst_ip = fsp-
> >h_u.ah_ip4_spec.ip4dst;
> > +		fltr->ip_data.spi = fsp->h_u.ah_ip4_spec.spi;
> > +		fltr->ip_data.tos = fsp->h_u.ah_ip4_spec.tos;
> > +		fltr->ip_mask.v4_addrs.src_ip = fsp-
> >m_u.ah_ip4_spec.ip4src;
> > +		fltr->ip_mask.v4_addrs.dst_ip = fsp-
> >m_u.ah_ip4_spec.ip4dst;
> > +		fltr->ip_mask.spi = fsp->m_u.ah_ip4_spec.spi;
> > +		fltr->ip_mask.tos = fsp->m_u.ah_ip4_spec.tos;
> > +		break;
> > +	case IPV4_USER_FLOW:
> > +		fltr->ip_data.v4_addrs.src_ip = fsp-
> >h_u.usr_ip4_spec.ip4src;
> > +		fltr->ip_data.v4_addrs.dst_ip = fsp-
> >h_u.usr_ip4_spec.ip4dst;
> > +		fltr->ip_data.l4_header = fsp-
> >h_u.usr_ip4_spec.l4_4_bytes;
> > +		fltr->ip_data.tos = fsp->h_u.usr_ip4_spec.tos;
> > +		fltr->ip_data.proto = fsp->h_u.usr_ip4_spec.proto;
> > +		fltr->ip_mask.v4_addrs.src_ip = fsp-
> >m_u.usr_ip4_spec.ip4src;
> > +		fltr->ip_mask.v4_addrs.dst_ip = fsp-
> >m_u.usr_ip4_spec.ip4dst;
> > +		fltr->ip_mask.l4_header = fsp-
> >m_u.usr_ip4_spec.l4_4_bytes;
> > +		fltr->ip_mask.tos = fsp->m_u.usr_ip4_spec.tos;
> > +		fltr->ip_mask.proto = fsp->m_u.usr_ip4_spec.proto;
> > +		break;
> > +	case TCP_V6_FLOW:
> > +	case UDP_V6_FLOW:
> > +	case SCTP_V6_FLOW:
> > +		memcpy(&fltr->ip_data.v6_addrs.src_ip,
> > +		       fsp->h_u.usr_ip6_spec.ip6src, sizeof(struct in6_addr));
> > +		memcpy(&fltr->ip_data.v6_addrs.dst_ip,
> > +		       fsp->h_u.usr_ip6_spec.ip6dst, sizeof(struct in6_addr));
> > +		fltr->ip_data.src_port = fsp->h_u.tcp_ip6_spec.psrc;
> > +		fltr->ip_data.dst_port = fsp->h_u.tcp_ip6_spec.pdst;
> > +		fltr->ip_data.tclass = fsp->h_u.tcp_ip6_spec.tclass;
> > +		memcpy(&fltr->ip_mask.v6_addrs.src_ip,
> > +		       fsp->m_u.usr_ip6_spec.ip6src, sizeof(struct in6_addr));
> > +		memcpy(&fltr->ip_mask.v6_addrs.dst_ip,
> > +		       fsp->m_u.usr_ip6_spec.ip6dst, sizeof(struct in6_addr));
> > +		fltr->ip_mask.src_port = fsp->m_u.tcp_ip6_spec.psrc;
> > +		fltr->ip_mask.dst_port = fsp->m_u.tcp_ip6_spec.pdst;
> > +		fltr->ip_mask.tclass = fsp->m_u.tcp_ip6_spec.tclass;
> > +		break;
> > +	case AH_V6_FLOW:
> > +	case ESP_V6_FLOW:
> > +		memcpy(&fltr->ip_data.v6_addrs.src_ip,
> > +		       fsp->h_u.ah_ip6_spec.ip6src, sizeof(struct in6_addr));
> > +		memcpy(&fltr->ip_data.v6_addrs.dst_ip,
> > +		       fsp->h_u.ah_ip6_spec.ip6dst, sizeof(struct in6_addr));
> > +		fltr->ip_data.spi = fsp->h_u.ah_ip6_spec.spi;
> > +		fltr->ip_data.tclass = fsp->h_u.ah_ip6_spec.tclass;
> > +		memcpy(&fltr->ip_mask.v6_addrs.src_ip,
> > +		       fsp->m_u.ah_ip6_spec.ip6src, sizeof(struct in6_addr));
> > +		memcpy(&fltr->ip_mask.v6_addrs.dst_ip,
> > +		       fsp->m_u.ah_ip6_spec.ip6dst, sizeof(struct in6_addr));
> > +		fltr->ip_mask.spi = fsp->m_u.ah_ip6_spec.spi;
> > +		fltr->ip_mask.tclass = fsp->m_u.ah_ip6_spec.tclass;
> > +		break;
> > +	case IPV6_USER_FLOW:
> > +		memcpy(&fltr->ip_data.v6_addrs.src_ip,
> > +		       fsp->h_u.usr_ip6_spec.ip6src, sizeof(struct in6_addr));
> > +		memcpy(&fltr->ip_data.v6_addrs.dst_ip,
> > +		       fsp->h_u.usr_ip6_spec.ip6dst, sizeof(struct in6_addr));
> > +		fltr->ip_data.l4_header = fsp-
> >h_u.usr_ip6_spec.l4_4_bytes;
> > +		fltr->ip_data.tclass = fsp->h_u.usr_ip6_spec.tclass;
> > +		fltr->ip_data.proto = fsp->h_u.usr_ip6_spec.l4_proto;
> > +		memcpy(&fltr->ip_mask.v6_addrs.src_ip,
> > +		       fsp->m_u.usr_ip6_spec.ip6src, sizeof(struct in6_addr));
> > +		memcpy(&fltr->ip_mask.v6_addrs.dst_ip,
> > +		       fsp->m_u.usr_ip6_spec.ip6dst, sizeof(struct in6_addr));
> > +		fltr->ip_mask.l4_header = fsp-
> >m_u.usr_ip6_spec.l4_4_bytes;
> > +		fltr->ip_mask.tclass = fsp->m_u.usr_ip6_spec.tclass;
> > +		fltr->ip_mask.proto = fsp->m_u.usr_ip6_spec.l4_proto;
> > +		break;
> > +	case ETHER_FLOW:
> > +		fltr->eth_data.etype = fsp->h_u.ether_spec.h_proto;
> > +		fltr->eth_mask.etype = fsp->m_u.ether_spec.h_proto;
> > +		break;
> > +	default:
> > +		/* not doing un-parsed flow types */
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (iecm_fdir_is_dup_fltr(adapter, fltr))
> > +		return -EEXIST;
> > +
> > +	err = iecm_parse_rx_flow_user_data(fsp, fltr);
> > +	if (err)
> > +		return err;
> > +
> > +	return iecm_fill_fdir_add_msg(vport, fltr);
> > +}
> > +
> > +/**
> > + * iecm_add_fdir_fltr - add Flow Director filter
> > + * @vport: vport structure
> > + * @cmd: command to add Flow Director filter
> > + *
> > + * Returns 0 on success and negative values for failure
> > + */
> > +int iecm_add_fdir_fltr(struct iecm_vport *vport, struct ethtool_rxnfc
> *cmd)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct ethtool_rx_flow_spec *fsp = &cmd->fs;
> > +	struct iecm_fdir_fltr_config *fdir_config;
> > +	struct iecm_fdir_fltr *fltr;
> > +	int err;
> > +
> > +	if (adapter->state != __IECM_UP)
> > +		return -EIO;
> > +
> > +	if (!iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_FDIR))
> > +		return -EOPNOTSUPP;
> > +
> > +	if (fsp->flow_type & FLOW_MAC_EXT)
> > +		return -EINVAL;
> > +
> > +	fdir_config = &adapter->config_data.fdir_config;
> > +	if (fdir_config->num_active_filters >= IECM_MAX_FDIR_FILTERS) {
> > +		dev_err(&adapter->pdev->dev,
> > +			"Unable to add Flow Director filter because vport
> reached the limit of max allowed filters (%u)\n",
> > +			IECM_MAX_FDIR_FILTERS);
> > +		return -ENOSPC;
> > +	}
> > +
> > +	spin_lock_bh(&adapter->fdir_fltr_list_lock);
> > +	fltr = iecm_find_fdir_fltr_by_loc(adapter, fsp->location);
> > +	if (fltr) {
> > +		fltr->remove = false;
> > +		dev_err(&adapter->pdev->dev, "Failed to add Flow Director
> filter, it already exists\n");
> > +		spin_unlock_bh(&adapter->fdir_fltr_list_lock);
> > +		return -EEXIST;
> > +	}
> > +	spin_unlock_bh(&adapter->fdir_fltr_list_lock);
> > +
> > +	fltr = kzalloc(sizeof(*fltr), GFP_KERNEL);
> > +	if (!fltr)
> > +		return -ENOMEM;
> > +
> > +	err = iecm_add_fdir_fltr_info(vport, fsp, fltr);
> > +	if (err)
> > +		goto error;
> > +
> > +	iecm_fdir_list_add_fltr(adapter, fltr);
> > +	err = iecm_send_add_fdir_filter_msg(vport);
> > +	if (!err) {
> > +		fdir_config->num_active_filters++;
> > +	} else {
> > +		spin_lock_bh(&adapter->fdir_fltr_list_lock);
> > +		list_del(&fltr->list);
> > +		spin_unlock_bh(&adapter->fdir_fltr_list_lock);
> > +	}
> > +
> > +error:
> > +	if (!err) {
> > +		dev_info(&adapter->pdev->dev, "Flow Director filter with
> location %u is added\n",
> > +			 fsp->location);
> > +	} else {
> > +		dev_info(&adapter->pdev->dev, "Failed to add Flow Director
> filter\n");
> > +		iecm_dump_fdir_fltr(vport, fltr);
> > +		kfree(fltr);
> > +	}
> > +
> > +	return err;
> > +}
> > +
> > +/**
> > + * iecm_del_fdir_fltr - delete Flow Director filter
> > + * @vport: vport structure
> > + * @cmd: command to delete Flow Director filter
> > + *
> > + * Returns 0 on success and negative values for failure
> > + */
> > +int iecm_del_fdir_fltr(struct iecm_vport *vport, struct ethtool_rxnfc
> *cmd)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct ethtool_rx_flow_spec *fsp = &cmd->fs;
> > +	struct iecm_fdir_fltr_config *fdir_config;
> > +	struct iecm_fdir_fltr *fltr = NULL;
> > +	int err;
> > +
> > +	if (adapter->state != __IECM_UP)
> > +		return -EIO;
> > +
> > +	if (!iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_FDIR))
> > +		return -EOPNOTSUPP;
> > +
> > +	fdir_config = &adapter->config_data.fdir_config;
> > +	spin_lock_bh(&adapter->fdir_fltr_list_lock);
> > +	fltr = iecm_find_fdir_fltr_by_loc(adapter, fsp->location);
> > +	if (fltr) {
> > +		fltr->remove = true;
> > +		fdir_config->num_active_filters--;
> > +	}
> > +	spin_unlock_bh(&adapter->fdir_fltr_list_lock);
> > +
> > +	err = iecm_send_del_fdir_filter_msg(vport);
> > +	if (err)
> > +		dev_err(&adapter->pdev->dev, "Failed to del Flow Director
> filter\n");
> > +
> > +	/* If the above fails, still delete the filter from the list because
> > +	 * either HW thinks it doesn't exist or we have a bad filter somehow
> > +	 * and it doesn't do us any good to continue hanging on to it.
> > +	 */
> > +	spin_lock_bh(&adapter->fdir_fltr_list_lock);
> > +	fltr = iecm_find_fdir_fltr_by_loc(adapter, fsp->location);
> > +	/* It can happen that asynchronously the filter has already been
> > +	 * removed from the list, make sure it's still there under spinlock
> > +	 * before deleting it.
> > +	 */
> > +	if (fltr) {
> > +		list_del(&fltr->list);
> > +		kfree(fltr);
> > +	}
> > +	spin_unlock_bh(&adapter->fdir_fltr_list_lock);
> > +
> > +	return err;
> > +}
> > +
> >  /**
> >   * iecm_set_mac - NDO callback to set port mac address
> >   * @netdev: network interface device structure
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > index f2516343c199..5601846b4674 100644
> > --- a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > @@ -2731,6 +2731,125 @@ static int
> iecm_send_insert_vlan_msg(struct iecm_vport *vport, bool ena)
> >  	return err;
> >  }
> >
> > +/**
> > + * iecm_send_add_fdir_filter_msg: Send add Flow Director filter
> message
> > + * @vport: vport structure
> > + *
> > + * Request the CP/PF to add Flow Director as specified by the user via
> > + * ethtool
> > + *
> > + * Return 0 on success, negative on failure
> > + **/
> > +int iecm_send_add_fdir_filter_msg(struct iecm_vport *vport)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_fdir_fltr_config *fdir_config;
> > +	struct iecm_fdir_fltr *fdir;
> > +	struct virtchnl_fdir_add *f;
> > +	int len, err = 0;
> > +
> > +	fdir_config = &adapter->config_data.fdir_config;
> > +	len = sizeof(struct virtchnl_fdir_add);
> > +	/* kzalloc required because otherwise stack is over 2k */
> > +	f = kzalloc(len, GFP_KERNEL);
> > +	if (!f)
> > +		return -ENOMEM;
> > +
> > +	while (true) {
> > +		bool process_fltr = false;
> > +
> > +		/* Only add a single Flow Director per call */
> > +		spin_lock_bh(&adapter->fdir_fltr_list_lock);
> > +		list_for_each_entry(fdir, &fdir_config->fdir_fltr_list, list) {
> > +			if (fdir->add) {
> > +				fdir->add = false;
> > +				process_fltr = true;
> > +				memcpy(f, &fdir->vc_add_msg, len);
> > +				break;
> > +			}
> > +		}
> 
> 			if (!fdir->add)
> 				continue;
> 
> 			fdir->add = false;
> 			...
> 			break;
> 
> -1 level.
> 
> If you want to keep the condition that way, braces around `if` are
> redundant.
> 

Seems trivial but sure will fix.

> > +		spin_unlock_bh(&adapter->fdir_fltr_list_lock);
> > +
> > +		if (!process_fltr)
> > +			break;
> > +
> > +		err = iecm_send_mb_msg(adapter,
> VIRTCHNL_OP_ADD_FDIR_FILTER,
> > +				       len, (u8 *)f);
> > +		if (err)
> > +			break;
> > +
> > +		err = iecm_wait_for_event(adapter,
> IECM_VC_ADD_FDIR_FILTER,
> > +					  IECM_VC_ADD_FDIR_FILTER_ERR);
> > +		if (err)
> > +			break;
> > +
> > +		memcpy(f, adapter->vc_msg, len);
> > +		if (f->status == VIRTCHNL_FDIR_SUCCESS) {
> > +			fdir->flow_id = f->flow_id;
> > +		} else {
> > +			err = -EIO;
> > +			break;
> > +		}
> > +		clear_bit(__IECM_VC_MSG_PENDING, adapter->flags);
> > +	}
> > +
> > +	clear_bit(__IECM_VC_MSG_PENDING, adapter->flags);
> > +	kfree(f);
> > +	return err;
> > +}
> > +
> > +/**
> > + * iecm_send_del_fdir_filter_msg: Send del Flow Director filter message
> > + * @vport: vport structure
> > + *
> > + * Request the CP/PF to del Flow Director as specified by the user via
> > + * ethtool
> > + *
> > + * Return 0 on success, negative on failure
> > + **/
> > +int iecm_send_del_fdir_filter_msg(struct iecm_vport *vport)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_fdir_fltr_config *fdir_config;
> > +	struct iecm_fdir_fltr *fdir;
> > +	struct virtchnl_fdir_del f;
> > +	int err = 0;
> > +
> > +	fdir_config = &adapter->config_data.fdir_config;
> > +
> > +	while (true) {
> > +		bool process_fltr = false;
> > +
> > +		/* Only del a single Flow Director filter per call */
> > +		spin_lock_bh(&adapter->fdir_fltr_list_lock);
> > +		list_for_each_entry(fdir, &fdir_config->fdir_fltr_list, list) {
> > +			if (fdir->remove) {
> > +				process_fltr = true;
> > +				fdir->remove = false;
> > +				f.vsi_id = fdir->vc_add_msg.vsi_id;
> > +				f.flow_id = fdir->flow_id;
> > +				break;
> > +			}
> > +		}
> 
> Same here.
> 
> > +		spin_unlock_bh(&adapter->fdir_fltr_list_lock);
> > +
> > +		if (!process_fltr)
> > +			break;
> > +
> > +		err = iecm_send_mb_msg(adapter,
> VIRTCHNL_OP_DEL_FDIR_FILTER,
> > +				       sizeof(struct virtchnl_fdir_del), (u8
> *)&f);
> > +		if (err)
> > +			break;
> > +
> > +		err = iecm_wait_for_event(adapter,
> IECM_VC_DEL_FDIR_FILTER,
> > +					  IECM_VC_DEL_FDIR_FILTER_ERR);
> > +		clear_bit(__IECM_VC_MSG_PENDING, adapter->flags);
> > +	}
> > +
> > +	clear_bit(__IECM_VC_MSG_PENDING, adapter->flags);
> > +	return err;
> > +}
> > +
> >  /**
> >   * iecm_send_enable_channels_msg - Send enable channels message
> >   * @vport: vport structure
> > diff --git a/drivers/net/ethernet/intel/include/iecm.h
> b/drivers/net/ethernet/intel/include/iecm.h
> > index d118da1ea8cd..b0785684cc63 100644
> > --- a/drivers/net/ethernet/intel/include/iecm.h
> > +++ b/drivers/net/ethernet/intel/include/iecm.h
> > @@ -12,6 +12,7 @@
> >  #include <linux/netdevice.h>
> >  #include <linux/etherdevice.h>
> >  #include <linux/ethtool.h>
> > +#include <linux/l2tp.h>
> >  #include <net/tcp.h>
> >  #include <net/ip6_checksum.h>
> >  #include <net/ipv6.h>
> > @@ -409,6 +410,108 @@ struct iecm_channel_config {
> >  	u8 num_tc;
> >  };
> >
> > +enum iecm_fdir_flow_type {
> > +	/* NONE - used for undef/error */
> > +	IECM_FDIR_FLOW_NONE = 0,
> 
> Enums always start with 0 unless other value specified, this is a
> bit excessive.
> 

AFAIK this is the normal thing to do in Linux kernel.  In cases where the value actually matters, as is here, it's better to be explicit even though yes you're right it should be getting the default value of zero.

E.g. in kernel/sched/sched.h you can find:

/* The regions in numa_faults array from task_struct */
enum numa_faults_stats {
        NUMA_MEM = 0,
        NUMA_CPU,
        NUMA_MEMBUF,
        NUMA_CPUBUF
};

and probably many more.

> > +	IECM_FDIR_FLOW_IPV4_TCP,
> > +	IECM_FDIR_FLOW_IPV4_UDP,
> > +	IECM_FDIR_FLOW_IPV4_SCTP,
> > +	IECM_FDIR_FLOW_IPV4_AH,
> > +	IECM_FDIR_FLOW_IPV4_ESP,
> > +	IECM_FDIR_FLOW_IPV4_OTHER,
> > +	IECM_FDIR_FLOW_IPV6_TCP,
> > +	IECM_FDIR_FLOW_IPV6_UDP,
> > +	IECM_FDIR_FLOW_IPV6_SCTP,
> > +	IECM_FDIR_FLOW_IPV6_AH,
> > +	IECM_FDIR_FLOW_IPV6_ESP,
> > +	IECM_FDIR_FLOW_IPV6_OTHER,
> > +	IECM_FDIR_FLOW_NON_IP_L2,
> > +	/* MAX - this must be last and add anything new just above it */
> > +	IECM_FDIR_FLOW_PTYPE_MAX,
> > +};
> > +
> > +/* Must not exceed the array element number of '__be32 data[2]' in the
> ethtool
> > + * 'struct ethtool_rx_flow_spec.m_ext.data[2]' to express the flex-byte
> (word).
> > + */
> > +#define IECM_FLEX_WORD_NUM	2
> > +
> > +struct iecm_flex_word {
> > +	u16 offset;
> > +	u16 word;
> > +};
> > +
> > +struct iecm_ipv4_addrs {
> > +	__be32 src_ip;
> > +	__be32 dst_ip;
> > +};
> > +
> > +struct iecm_ipv6_addrs {
> > +	struct in6_addr src_ip;
> > +	struct in6_addr dst_ip;
> > +};
> > +
> > +struct iecm_fdir_eth {
> > +	__be16 etype;
> > +};
> > +
> > +struct iecm_fdir_ip {
> > +	union {
> > +		struct iecm_ipv4_addrs v4_addrs;
> > +		struct iecm_ipv6_addrs v6_addrs;
> > +	};
> > +	__be16 src_port;
> > +	__be16 dst_port;
> > +	__be32 l4_header;	/* first 4 bytes of the layer 4 header */
> > +	__be32 spi;		/* security parameter index for AH/ESP */
> > +	union {
> > +		u8 tos;
> > +		u8 tclass;
> > +	};
> > +	u8 proto;
> > +};
> > +
> > +struct iecm_fdir_extra {
> > +	u32 usr_def[IECM_FLEX_WORD_NUM];
> > +};
> > +
> > +/* bookkeeping of Flow Director filters */
> > +struct iecm_fdir_fltr {
> > +	struct list_head list;
> > +
> > +	enum iecm_fdir_flow_type flow_type;
> > +
> > +	struct iecm_fdir_eth eth_data;
> > +	struct iecm_fdir_eth eth_mask;
> > +
> > +	struct iecm_fdir_ip ip_data;
> > +	struct iecm_fdir_ip ip_mask;
> > +
> > +	struct iecm_fdir_extra ext_data;
> > +	struct iecm_fdir_extra ext_mask;
> > +
> > +	enum virtchnl_action action;
> > +
> > +	/* flex byte filter data */
> > +	u8 ip_ver; /* used to adjust the flex offset, 4 : IPv4, 6 : IPv6 */
> > +	u8 flex_cnt;
> > +	struct iecm_flex_word flex_words[IECM_FLEX_WORD_NUM];
> > +
> > +	u32 flow_id;
> > +
> > +	u32 loc;	/* Rule location inside the flow table */
> > +	u32 q_index;
> > +
> > +	struct virtchnl_fdir_add vc_add_msg;
> > +	bool remove;	/* Flow Director filter needs to be deleted */
> > +	bool add;	/* Flow Director filter needs to be added */
> 
> 	u8 remove:1;
> 	u8 add:1;
> 
> Booleans are discouraged to use in structs.
> 

Will fix.

> > +};
> > +
> > +struct iecm_fdir_fltr_config {
> > +	struct list_head fdir_fltr_list;
> > +#define IECM_MAX_FDIR_FILTERS	128	/* max allowed Flow Director
> filters */
> 
> Please place outside function definition.
> 

Sure

> > +	u16 num_active_filters;
> > +};
> > +
> >  #define IECM_GET_PTYPE_SIZE(p) \
> >  	(sizeof(struct virtchnl2_ptype) + \
> >  	(((p)->proto_id_count ? ((p)->proto_id_count - 1) : 0) * sizeof(u16)))
> > @@ -446,6 +549,7 @@ struct iecm_user_config_data {
> >  	struct list_head mac_filter_list;
> >  	struct list_head vlan_filter_list;
> >  	struct list_head adv_rss_list;
> > +	struct iecm_fdir_fltr_config fdir_config;
> >  	struct iecm_channel_config ch_config;
> >  };
> >
> > @@ -749,6 +853,14 @@ void iecm_set_ethtool_ops(struct net_device
> *netdev);
> >  void iecm_vport_set_hsplit(struct iecm_vport *vport, bool ena);
> >  void iecm_add_del_ether_addrs(struct iecm_vport *vport, bool add,
> bool async);
> >  int iecm_set_promiscuous(struct iecm_adapter *adapter);
> > +int iecm_send_add_fdir_filter_msg(struct iecm_vport *vport);
> > +int iecm_send_del_fdir_filter_msg(struct iecm_vport *vport);
> > +int iecm_get_fdir_fltr_entry(struct iecm_vport *vport,
> > +			     struct ethtool_rxnfc *cmd);
> > +int iecm_get_fdir_fltr_ids(struct iecm_vport *vport, struct ethtool_rxnfc
> *cmd,
> > +			   u32 *rule_locs);
> > +int iecm_add_fdir_fltr(struct iecm_vport *vport, struct ethtool_rxnfc
> *cmd);
> > +int iecm_del_fdir_fltr(struct iecm_vport *vport, struct ethtool_rxnfc
> *cmd);
> >  int iecm_send_enable_channels_msg(struct iecm_vport *vport);
> >  int iecm_send_disable_channels_msg(struct iecm_vport *vport);
> >  bool iecm_is_feature_ena(struct iecm_vport *vport, netdev_features_t
> feature);
> > --
> > 2.33.0
> 
> Thanks,
> Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
