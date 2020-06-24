Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADCA206B9C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 07:18:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EFE228711A;
	Wed, 24 Jun 2020 05:18:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w62Rojr2eOCi; Wed, 24 Jun 2020 05:18:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D8A0C86FD3;
	Wed, 24 Jun 2020 05:18:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EEDCE1BF863
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 05:18:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E74B386F0E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 05:18:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O0toCFMBeBQu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 05:18:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D876A86F04
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 05:18:38 +0000 (UTC)
IronPort-SDR: 2NNP9Y1rVjSupmlKghP6dxn7mW7RmSIuPzb0vWEtW9s66DAZJYonjwRrDluAUy96RvzCJh311t
 lF3ZAycFknBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="124588054"
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="124588054"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 22:18:38 -0700
IronPort-SDR: yOpMexMlwIPMIwGKTwUsKK7ejBeymDkH/18MxUUkkT/6/PdZe3p7LBk9yOU8Hs9X03iso/elH2
 HYrAp7kjHnpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="319347608"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Jun 2020 22:18:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 22:18:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 23 Jun 2020 22:18:37 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 23 Jun 2020 22:18:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 22:18:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EMvckGMoKFviiCfCfQrKYT+wQagrMtJd3SPMtSSY4WOI30wZ+J08JD63fm6n0Ke6Hlk5uXy2PxhA5fxqn6z2+z/4G/tYW0ImQ9Ijxd5Jwq4ooJfY+dzCdvjezoRDHmnrQZp6k6kRJCJHgIW9WfH5eQuIpZfqpK+iLOQ3S4ojhllMbV4NPJiha725NqsSJzyxeRdXFD8oe+u86zqvnKdfKgx5ik9RzbMWgFAvLEhoIFUDKp0LjM7aexLTmT7NvPXY3YaaAP5BlI71mNBMGnr/9aEY/ORdDDlHF9YmF2QSoxv3LihQfw42vehytDwuVqZCcqAww0/Tylz41hBDCaGGJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ods637yZSBFqnu98NCfxateAr5Jhqt7his/mLllh1xk=;
 b=TGT9zUK4Yeg796MJJMYxUoWOB6uyhdKytQ2DFwsV6Coc1H+8jLPUeicgDup1po3m2cq4uGsuOBnI8WsBnlwbEn7978JgOSwetc9GASrxabXbjFt6t8VAXt6JS2h2w8M9lnR03B5izb4vWXhAjDFuHGNI6ZSU4kfeYchMJLYLqrWauL3vYP7ykKDBFp/mjJJhEMkcDnkbQZiF1lgaPP/H5lDRGcfz2gA5an/kCPTuJgB1O36mHL55Glc5fLw+sNjpV4Ksaa+SNbvH8kIKpKbYEOq3SjqK4uGozUyKGAnJH5h6wUjIWYJym8G+rfnK2Nwo9ajvD6pq08jAXKgmW4zyJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ods637yZSBFqnu98NCfxateAr5Jhqt7his/mLllh1xk=;
 b=iW+36i7A+mCPbcF3WIRjgy11rw1ZLzYBxpvk3XrB6DVqdNcpYjGTRXxDnAaIfYk2onSEWQEGCffSsBo1NWXT5wa7rmw6obHt60nl+/iqy+vETQ5M07EbvclgdlL5oJ6NPC3sullZdHbu4+Ygod3cxqI7UBpYW3lo21/jIx8XoLY=
Received: from DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26)
 by DM5PR1101MB2250.namprd11.prod.outlook.com (2603:10b6:4:4d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.23; Wed, 24 Jun
 2020 05:18:36 +0000
Received: from DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e]) by DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e%6]) with mapi id 15.20.3131.020; Wed, 24 Jun 2020
 05:18:36 +0000
From: "Lu, Nannan" <nannan.lu@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 0/5] ice: add Intel DCF mode support
Thread-Index: AQHWSc4uK3ya5Zvuu0KOfE3oUqwQGKjnOirw
Date: Wed, 24 Jun 2020 05:18:35 +0000
Message-ID: <DM6PR11MB39007E7041594016AEEC8A93F8950@DM6PR11MB3900.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200624020801.104003-1-haiyue.wang@intel.com>
In-Reply-To: <20200624020801.104003-1-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 896f2897-f0de-4d54-5721-08d817fe0be4
x-ms-traffictypediagnostic: DM5PR1101MB2250:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR1101MB2250003D979618D5F37CBD4CF8950@DM5PR1101MB2250.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Mq1FzrhImbCMXqxgZmlXS7/yfx7jp9vya5BwvM7e31eTrmzCTvx8Ft32kWK+lV6EyAuN0WAL3uGW81I3svAfhz7gVKHosnnvzJPqwKkGzZNJQrM4zVsib/gpvwt3HT/vTfqnxTjIqavMpFNFODMa94fZg2JmFObxFii3EYskz6c9xhN0wQ5+QPODL/BB76IyM+/XgKjsjCCj5EVtO8t4eDh0LFbK1MGOgIdjktIZpYAh6uJuJhS+z5iS2F2S23LeEDyLV9VaCq+n/RbDfxNTR/pcF68OhgLSIMxtxA+29vFyKYRgxXkTInV0ERX8u9G1hn1UeXChiDwMsPXbDMx+eJXxIUa3fYEUq3D3KGLxFuXx++ld9P/3qtZ59uZlGwJDA9oOC9dJwQ8Oll3K3/oGBg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3900.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(39860400002)(396003)(136003)(366004)(66946007)(7696005)(8676002)(66476007)(66446008)(66556008)(64756008)(55016002)(71200400001)(53546011)(966005)(86362001)(83380400001)(9686003)(6506007)(76116006)(26005)(478600001)(33656002)(110136005)(8936002)(2906002)(5660300002)(316002)(52536014)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: JnLGCDhfS1yKOvCmT6sOqO1WVK7osG1+AwjxYKQL9x6I631Z0OqLH45O/Zj3VEBEIYUYqIm/tFez3m5DkT4CwfbqJKCJmijsQjRFTjFGEUpSbrOM4XgtdoMhi715FB/czIl2/i8+6xvOtC/4NHlBiNd/hlTvofGYjKHwdUCv6uVqck9fsi+FQWeQ0igqb7na/iqo7rkpiWEm8/QkHyIxN1uXQQP8lEq6VNQ42UbBhIm4WcCapvbAmaLhXXokpWY4JtJMCVaCTZ/KPJZBB/rx7cZovQZfslhRQYIwV1/SewYxtpImNVdh78RJxlLYlO4bMyfhdLaof9aNiFykL4PHsz9WYNtePNkOowBBwkUMgeTOEfx8aafuiMYHZkWpv6QK2sI18a/von9gPg8LoJ3PAYq6+9PVJR2Uqoow5B8u1r8STziB+aesW1I6obNubJslg3yGuK7PO0lKQWT9nI4Q8L03m/PbjXq5kwDyuSjJkMy7AKppqZy3v+G+9gJ/7EZz
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 896f2897-f0de-4d54-5721-08d817fe0be4
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 05:18:35.9952 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +x0bdoPLzVr29v8GI59X+cjHng/FZKw7IYwyyr4BZ7+mgrUKu+2J6euwfKo/RDqAf5z44yYNlbBgfLJWncDrZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2250
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v3 0/5] ice: add Intel DCF mode support
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

Tested-by: Lu, Nannan <nannan.lu@intel.com>


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Haiyue Wang
> Sent: Wednesday, June 24, 2020 10:08 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v3 0/5] ice: add Intel DCF mode support
> 
> The iproute2 and ethtool are evolving to expose the NIC hardware capability.
> But these available orchestration methods in Linux kernel are limited in their
> capability to exercise advance functionality in the hardware, since different
> vendors may have different data programming method.
> 
> Intel Ethernet Adaptive Virtual Function (AVF) is the common hardware interface
> for SR-IOV, it has the defined message format to talks with the PF.
> 
> To make good use of the advanced functionality like Switch (Binary Classifier),
> The ice PF driver introduces a DCF (Device Config Function) mode to extend the
> AVF feature.
> 
> The DCF (Device Config Function) method wraps an raw flow admin queue
> command in a virthcnl message and sends it to the PF to be executed. This is
> required because it doesn't have the privilege level to issue the admin queue
> commands, so it acts as a proxy PF. So that the user can customize the AVF
> feature, and use their own programming language to translate the flow rule
> management data into ice raw flow, these raw flows then can be executed in
> PF's sandbox.
> 
> And the kernel PF driver fully controls the behavior of DCF for security, like only
> the trusted VF with ID zero can run into DCF mode, and also for being
> compatible with the common AVF feature, the VF needs to advertise and acquire
> DCF capability firstly.
> 
> v3: Remove the unused function, and control the ice_aq_sw_rules scope by
> CONFIG_PCI_IOV.
>     Capitalize all abbreviations.
> 
> v2: fix the macro ICE_DCF_VFID definition style issue.
> 
> Haiyue Wang (5):
>   ice: add the virtchnl handler for AdminQ command
>   ice: add DCF cap negotiation and state machine
>   ice: support to get the VSI mapping
>   ice: enable DDP package info querying
>   ice: add switch rule management for DCF
> 
>  drivers/net/ethernet/intel/ice/Makefile       |   2 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   2 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   6 +
>  drivers/net/ethernet/intel/ice/ice_dcf.c      | 839 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  91 ++
>  drivers/net/ethernet/intel/ice/ice_main.c     |   2 +
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  27 +-
>  drivers/net/ethernet/intel/ice/ice_switch.h   |  37 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   9 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 366 ++++++++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   1 +
>  include/linux/avf/virtchnl.h                  |  63 ++
>  12 files changed, 1411 insertions(+), 34 deletions(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_dcf.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_dcf.h
> 
> --
> 2.27.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
