Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3872933AD2B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:18:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0E574B56C;
	Mon, 15 Mar 2021 08:18:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wu-B7s2pZhbO; Mon, 15 Mar 2021 08:18:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C5354AD93;
	Mon, 15 Mar 2021 08:18:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E1B21BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:18:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 09F514B158
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:18:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r0Kk6Yzo1NlB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:18:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C3C684AD93
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:18:17 +0000 (UTC)
IronPort-SDR: gkbXKNCZw9+gGPyynmK2clh/UfAY2WvSYMr67ax6mUhMbQahF6FsglHjIqWdHH2I/BV0OFnPoE
 dWLWMzyCggpQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="274094613"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="274094613"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:18:17 -0700
IronPort-SDR: V35ZaC1HjRwFRkw4v8LCZFOfAcANk7Lgpyo5WseifxzOcZu89r/yetxXzH3Ax7OZlEbm2iDDQX
 o4fyfdeCD6Hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="439683384"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Mar 2021 01:18:17 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:18:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:18:16 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:18:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FHfGGyw2kBKCBI6OZCBkw+02+Ke+zrEpzb13Rft5qZZafNMaQ1hh244bz/TWYEnpQ99s3Yl5S8YMTl0CmlBHwWr2otgYUzCcdD00nffBiE0Fsu960M/btt49fhedTZ44n0XjF2d8VwvWo2vi1SzHoLxAlOCHXAEXbttMK5PezUrALo3ub0qt/Z+IebfjCaVPXc2S5TIoxBbsUdBVbLHVPI6J1tXqt0ENL0AfBlJe7TkraTGDuX7nliQ9PUcc3rxjXoKx+CEpRHHdNoGHs7TkZq7xv0MzxIf52VPf4+knptiOPLASeN7qYWCf0XjVZeFxCVqY32xdj4/B3XJt6nWjqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O7kSPRPTULUqcFAOZHBw/QdZsk2W9X/I7FHxh6t9ECw=;
 b=ObGAx9YK2Oxy2hggBdIrnAR66I/vZymi+NN3xQpMs7egxjH9Aebvj9hKht6IaWbdwfjCU5xckbM1z8NdKJtSTYj8IFd7Vz5K/k5KcxgIR4vk2Dux8phLG5ifSvQWYqFQ2E0FAR4+qxFrOjqITVN+sPDpZr36M3UniJ3o6Oey3TtpIPK7Ruw9H0zQHwNZB6xqA/GNmwEx6TiESyBwTGlp00T2jELiu8scmofoINJSKVPnKS0hOloQ9Lxze+OOhJ2/UUMN/4Cc3D8dyTBMzP2fhhf7CF+2inQUCK5MoDLmxkv/4mCJi7TvaDwZEW+e2dds5rw9GmfIOb84AM0F9f+UXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O7kSPRPTULUqcFAOZHBw/QdZsk2W9X/I7FHxh6t9ECw=;
 b=zP8nMI1b7LNBbjSk6Fnsdge3Ez+DCqiSUoqy3utXJI6VgQeOy0mMuJ0G/1BY5px1az+qjlgkpR/OSlJ+7FiTVV1zk44IJUIpCcMfHqDs4FwCeuaDYXg+86QGYjSDLbavj8M16/R+dVLK256F54Sj2zB99+/ClILpo356IQLBrII=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN6PR11MB1297.namprd11.prod.outlook.com (2603:10b6:404:4a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Mon, 15 Mar
 2021 08:18:12 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:18:12 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 06/18] ice: Add support for per VF
 ctrl VSI enabling
Thread-Index: AQHXFJQJvDF5VjtDOkqn/eOBwrgM4qqEvjHw
Date: Mon, 15 Mar 2021 08:18:11 +0000
Message-ID: <BN8PR11MB379511C9ACA9E6FDA41D0597F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-7-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-7-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.46.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 48e40bc3-f519-4138-8e36-08d8e78ae008
x-ms-traffictypediagnostic: BN6PR11MB1297:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB12975075F1BDBA6B86E3548DF76C9@BN6PR11MB1297.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M1RFxdw+6fC/cBsFsmVorf2fia/qDayHKLJLynvdkG3OkFAF8cfnC9KYZ5q2LHuvO0mrMxmiAMrYIxKyDX6hLbQ1QxeA5sQy2FaC1p4+jPmnzvdIjhBQKgH28H0odEyjMZhYDS4ro1/+cez6Zz+k7gmgAd2L4/a5JOePPEfx/R7gXV2QciP4CEtI2GP5l2ggJC7PmWxIMM4I7qYfg+kGF3VBAcx5u5f/KXsqsRzfCiVxK6e2IUD9+Kk5DLI0PbNZwMSguaLMYctXVicUEb52RgSWogVoz62AYcENUcT5auRxyuoFIQ9Y+NCg70hdHJXzHp6X1jgV8pZprB6IxWWMXRZn8ZiXJWp1QJJUzONELiP6r0AGoYSNszcX7cCMlYb2vrTCi4yrGrs3xlRxBlJxLDTsGhDkFFFTE9s/RXcVpMtxwktwAv7zk9wtE0Ot+cMQpN8cncjSrHs1PDm7fgbU6FsHUL0PFeEBP/nuHI/uuAM0OCLF74HIIXFYQNuXLtIfZ5Uj6XLmKSkF1d4lxx5MAC1dRbh/rjlxJ3qA17RJJaSXyp1rWxFh9n49HtecYA8cg+pPkFKZSUHMEyndDyrIz7eTBvLv9MSIE/xWphG4IYjBxx5OL1EDM/mXxIXu7o/RdshAFf1Pm8fDUol5wXL4Jw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(376002)(396003)(346002)(366004)(136003)(86362001)(33656002)(83380400001)(52536014)(64756008)(66946007)(66556008)(76116006)(6916009)(71200400001)(8936002)(66446008)(7696005)(9686003)(316002)(54906003)(5660300002)(107886003)(53546011)(4326008)(478600001)(186003)(2906002)(8676002)(55016002)(6506007)(26005)(966005)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?cWnlj4nY9ITLIBnWc8yjjprote6VU1PF6bnAw6ZGx5IUc9bRR2uRaD7k2Ccl?=
 =?us-ascii?Q?Zb615Dm8zAA1DEw2E1bn7Msky9fnLYLLIIDjmakphCD/4/m1E1dCk4eYCQy8?=
 =?us-ascii?Q?0ZLqY2NwDl/h3Sq8UxTrzqhOrivb5j6i3cbZ+Xtf8Rdwypw+jNec6fucEror?=
 =?us-ascii?Q?KUkMkIGrgYg0A3z7ZDHiLTTe+yid6lhG2lfPeyD2pAUT8fyQEuGbY+MC2tkJ?=
 =?us-ascii?Q?Dyba9Zr7E89Yv6s7on1PGD9G8gvXEoJXlr52/VX9LsmtIiIb1/mkT3EABY6N?=
 =?us-ascii?Q?lZhr7z8VRQWfzw0QSusryq1BXL9nuPbC+hqfs8DhhrbGZyjzI2v2hycJ8Kl5?=
 =?us-ascii?Q?mJyU7H0MLOVUgIBaS9yE69Jj09ExpUg5ylSCCufrtXc0Vq4kL7ZPeUS1ohyG?=
 =?us-ascii?Q?wGBrzSZ1QWuBXH1SvyaFpzoBT/VGlAqz1xookP8u1lMkkdPOyXJddWE8DWqw?=
 =?us-ascii?Q?KlQDtq6ChbhORU55IvzqIWr5q2eWWC590Rpx0XtRiKDw9kRq5Axn8LWQafIi?=
 =?us-ascii?Q?HboY86WJAljFNFTTt2YDkrDr49B3WvALMysYxqtqsiNSiqrGno6HA0OdoRLN?=
 =?us-ascii?Q?r8iHTVI4NsQfh7ua/H6NattSF+UF8YRV8lDF1cDBEon6BsZLlFh4No3ABTjw?=
 =?us-ascii?Q?ci/h/aZvKNbaLH5+ugtmb6xh/FTbj34WV9h34R6DHv8PsoKSIjdOLGdXkYQD?=
 =?us-ascii?Q?38yq+qAgJMHzZeFqny/v8sft5KHVzY3TDPuQKk42UqSngEeDPtJpjwNnnXM3?=
 =?us-ascii?Q?x+18kiwSWLQqXDMVSA07DiqlMK5MDjvXvQTRvCwsgJo2h6METNKgaZ1qpg42?=
 =?us-ascii?Q?F90ocq+VA80BxxK+eTNN9BVbvuAHZ7d5MKEYgMtdLUsI1WGajzWC41KdV3Hi?=
 =?us-ascii?Q?ooQGhjxMxXeJuCtW6Q+f5n3holH4T8PIdma92AlvOPmgRoMkyvvt6BBWxaJb?=
 =?us-ascii?Q?oIAxiY4Yr2a8vTIShw2SFCmM5aDndosEp0K5zP1t6HaEvAMl7Vdas2PH5Ice?=
 =?us-ascii?Q?ipbtut5n/NkfzFrTMmmXU+S271glgZctmGyc8IsM5ZIraLw1sxoTSmdJTaNm?=
 =?us-ascii?Q?X7Z89nAZfpGCoiXF5TPwp9RZODAojK/1e0PUQZm6riqFxc3G3zzTPWoxN9RU?=
 =?us-ascii?Q?0jNdSOLlOVoC6t7kyCqV6mGOxruZFs+BBr5q4+xf2qCoy9+sdBem8vSkU3/h?=
 =?us-ascii?Q?IqsppfVjTapv3wtsP3hBe+biceJWo+p4Lp7yYC0xy7udo11W1Ls7d+ERRBjX?=
 =?us-ascii?Q?RT2xma07gj/Sq64UuweKSrNcUoHmDW9KKa0yj01sMKPacTx64QFjsl+7KNBH?=
 =?us-ascii?Q?Ajn+UHopQ7NZ5sfXKNg/zwGG?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48e40bc3-f519-4138-8e36-08d8e78ae008
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:18:11.4530 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3z8wVlKnYw2Vz3/oPJp5RgrP3dGpTVEbF6vjPcQwP42oRRN8TIGW0Gp9wU3b//s2mugdAqMZMwLs/zeQ/0YaBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1297
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 06/18] ice: Add support for per VF
 ctrl VSI enabling
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Li,
 Xiaoyun" <xiaoyun.li@intel.com>, "Cao, Yahui" <yahui.cao@intel.com>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Haiyue Wang
> Sent: Tuesday, March 9, 2021 11:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Li, Xiaoyun <xiaoyun.li@intel.com>; Cao, Yahui
> <yahui.cao@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [Patch v5 06/18] ice: Add support for per VF ctrl VSI enabling
> 
> From: Qi Zhang <qi.z.zhang@intel.com>
> 
> We are going to enable FDIR configure for AVF through virtual channel.
> The first step is to add helper functions to support control VSI setup.
> A control VSI will be allocated for a VF when AVF creates its
> first FDIR rule through ice_vf_ctrl_vsi_setup().
> The patch will also allocate FDIR rule space for VF's control VSI.
> If a VF asks for flow director rules, then those should come entirely
> from the best effort pool and not from the guaranteed pool. The patch
> allow a VF VSI to have only space in the best effort rules.
> 
> Signed-off-by: Xiaoyun Li <xiaoyun.li@intel.com>
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  4 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 64 ++++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_main.c     |  9 ++-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 62 ++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  2 +
>  5 files changed, 130 insertions(+), 11 deletions(-)
> 

Re-send to Bo, as a new member.

> --
> 2.30.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
