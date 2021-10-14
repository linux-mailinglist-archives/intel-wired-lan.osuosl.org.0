Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF2A42E40E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Oct 2021 00:17:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2499D83A83;
	Thu, 14 Oct 2021 22:17:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vodt1Xw7yI9a; Thu, 14 Oct 2021 22:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18C1A83A66;
	Thu, 14 Oct 2021 22:17:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2DF281BF37B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 22:17:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B62A40780
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 22:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MXx2CKQllRkV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Oct 2021 22:17:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 132484077D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 22:17:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="214964164"
X-IronPort-AV: E=Sophos;i="5.85,374,1624345200"; d="scan'208";a="214964164"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 15:17:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,374,1624345200"; d="scan'208";a="527768114"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 14 Oct 2021 15:17:10 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 14 Oct 2021 15:17:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 14 Oct 2021 15:17:10 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 14 Oct 2021 15:17:09 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 14 Oct 2021 15:17:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OPCriOZKQU+JCJvsmvrdNkBZsetGFKktzuderUC1knmkhA/msaBBaXeSCL4kqJ/nFgya0Q3kWgz4+NQdwsehEtqU5lDNS4UVNxrP8wgY9fMqeL+FpwqHYvIMm8HrBxzrPrjrAqqmnc8IqkNpGcMSLjLl3FLqNGFoO81lEw2iGInKPhNgUb3zZzYenZTce3YzVeJUGHKaf7Voe4ukCkY+o7k76HcN8pKnnZDnIsNKA6ZicXlp2AyVUzma2Q+X5YUfEH5YT7xlIcHeK4oVzmlfSG84keHm2P8wfcou/qsZZNyOvmEoyOS0ooyOQdVjZjsAZNuRuY5c7/wrazYx3X4UsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QQHqeRT+Wsjq6vqi1dAwPr+LXp9Nm1fLHv5lCZM5Q6I=;
 b=WP/tyeauT1IrbSibYmacoYGxctZrnyQx+HGUZyJ/L2ECW+HwLUw0ZMvf1mzZPYTIYH9g0iLnMlLNlzFOUU5/bnFWhy5Trv+ZAZ88CGV0L0d1jKA2akMuNsXGbjweGtzE+WF9+pRO6lSlab7Gu7T7vCVj4hcN3pwIDq667PM0PiOWsVRzJZ9nYW49gbX01hl3BdfYsa3jaIHrp79yqA/E+jeZ2bNXK9zFGyHKfPw9bCwvnp0YOIko81SL/ze/hrSm2Azs61tkd2YkQjl0QqoxXhIPDTYx0semLiTVm5x+vTUg2jMGOzykOE9AoRsR5r5jgGKYLvY1JaERevbAHQOMIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QQHqeRT+Wsjq6vqi1dAwPr+LXp9Nm1fLHv5lCZM5Q6I=;
 b=u3uo8dV5pLutWQRDeM6UGES5U8wleT6zeuxtzZnSNAqR/6Z+k4oyNk1MoZ5Rhrn/MBVrj/I4MyQ2PZRwxdQtuLcYY1R5PPprnc3iquQB8X2Yrx5fbHxoxAr99jIrZaapIq8fll5v+hU9YgRBmc5kK0nqPlIcUJxY2T4IiwJel3o=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB2551.namprd11.prod.outlook.com (2603:10b6:a02:c5::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Thu, 14 Oct
 2021 22:17:09 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4608.016; Thu, 14 Oct 2021
 22:17:08 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v2 1/4] ice: devlink: add
 shadow-ram region to snapshot Shadow RAM
Thread-Index: AQHXvwIGcmYdvwT0z0+pVWTuQMqA16vTFBRA
Date: Thu, 14 Oct 2021 22:17:08 +0000
Message-ID: <BYAPR11MB3367BCF77AD52F22403E5D47FCB89@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211012004113.1583133-1-jacob.e.keller@intel.com>
 <20211012004113.1583133-2-jacob.e.keller@intel.com>
In-Reply-To: <20211012004113.1583133-2-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ec481fef-41c4-4649-1510-08d98f605cf9
x-ms-traffictypediagnostic: BYAPR11MB2551:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB25510F88429E83433E4FB2DAFCB89@BYAPR11MB2551.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VFhUhuw/Kj96C2BiADLw8UijgvsvOdZSjZOX8jEDV/nXTCzqAWhVSm7MWJKV2Tktnr6SpsALb7p5Yi4FB877RYA3MBJcVlDI5wCE6WTz+i0z+fO7EyuZ8c6UgitfJG416CMOp8iqwCQFSnEVNu4fsdiJXbF5RLjebi2tLw70+ALbcSj5o5Sb+2CKNR/3yLDQ/ww7LjGxp8lDkyMTCnK7WZF/s0nL7Z0HuPCQ5vBlS7i7FomnOqJ31aThSYZ5zlKc9L5WPVr1EjhqMrsxDoOupZSLVWVBVUAFp3hKXuOXRjLOI9s57GSgmtaEEzmVFKPxcbwwPpnghrY+GUKN3sMPVDKKfeY//XOie3x6Od1aNQGPYAKP34oaJzfVqDtWsKUvqtlKB+QRycfas2H62VhERSn7WxbAtJKvCy9N/VXaa/ZN8r+TxCQKBsjHCu524KZ+e9K+FEEon06ZC/ZlFnIS0tJL7yKoP6Iz/I/MPLDCOe+voBa5QtPTIZyJHowJ7TsEA9HJM4kYteJ9mEerRENALKw0sIOOlUzqW7MzsTIq58D7jGo2xYzOs3vnQbYaq80yjRnuFY7/B5sPhqesIxVUBW4YT0lsQN+PBALSJEpeWn485U4TiErljTce4XbA/Lj1c9XzfjLDLaI64z4kQwdgxVD1IhTAtK6rH+E3ME0a1WhVKidMkCie480hUfk8iMFjyYuTXXVfnwU7KC9CXsiu1w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(122000001)(6506007)(52536014)(9686003)(86362001)(186003)(55016002)(82960400001)(33656002)(83380400001)(5660300002)(8936002)(38070700005)(53546011)(2906002)(66556008)(316002)(64756008)(508600001)(66446008)(66476007)(110136005)(66946007)(71200400001)(7696005)(38100700002)(8676002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/zw+eeb5IdpMPwqQ1Tnyy/4vghMBomvFL8krdIML2tIrqC4dI5Y2AnRDfeZF?=
 =?us-ascii?Q?uUCseekG2j294WiiQxwZXwu4U1K0uyKt/enaCLNlXcCSMMgoBs9X3zvsuYMF?=
 =?us-ascii?Q?yX0t/zILSZjVJZ87ICxGxBaVyLHLMlMhipRUsYaVbNQR9Z/l/XdrrtVijNoE?=
 =?us-ascii?Q?W6wJ10GxgUZTjZTb56B6KjoQKU/x34xJX/K0dqQwZv9BceCUzmMZyS9kLFr3?=
 =?us-ascii?Q?q8tSdKZd7lF3bbzzFXHGb8YDHNrCB+jSP7aWfw0T4eTQ70Q/oC9EmBHcGY1n?=
 =?us-ascii?Q?mNk41uj0dBAVwOPkUirIuPZ+KQyLSwGEDP1NcfHxn+aOnnC2ZVbaCZyym2/e?=
 =?us-ascii?Q?Vbv0CWquVJrLGlBP5xEKjxr++dCs6C9G8mFE3Ip7PigwgUHidR/7sXHq6nJt?=
 =?us-ascii?Q?8gJUzQxXfSVYfVWGex9wKSWLdfwoxdGI/8+NZ2VYoVsob8AKFjRafhfLl1JO?=
 =?us-ascii?Q?213B3sTFj0WyF/5YATlnbVbKmVAqdFYkE5joBc1szVVFps+eeK3zsznQArW0?=
 =?us-ascii?Q?8QhesQVOp7CuhjAgz9W+YuYXSkOnWq2TkDc3IniuTPOl3uSqzf+ht78+RVvr?=
 =?us-ascii?Q?PEJTubGk6+G6TfX0jdbjWtCPGNAAULOSNeknABmrF6ppEn3qRrYI0p3CggNt?=
 =?us-ascii?Q?DFnBHj3A8zaR/t0/f/XUsOAlfdF9Y4wOZ82RvVO+tlnK7OhGLSAiqgMLCfKM?=
 =?us-ascii?Q?Jll9pWMgY4GhfUtHwNyqWb6OjV9ONzQj9j8iNql2796HKw5LqJQz66h//t1o?=
 =?us-ascii?Q?P5VPouxE5/kKOvhzsYTwBI7UlzaI2VbEz1wXIKWb4R+x5Mic02aSNys8rzTQ?=
 =?us-ascii?Q?+H47Rl/yPjVTt6mHU6OKfMyeqCgYXRiA0SYEtBFu47oNnen5DvGIc0q6j8Yu?=
 =?us-ascii?Q?RCR4tiKRjJVfKPleZpgV0NdLP8rsNxugMAJENYEim8LsivKRU0IDkd9/e8As?=
 =?us-ascii?Q?gUhDua28+O0N0/lJ2BGZZFyc+jrSwwotJlUdn/ztAN7YoyUNldJvs2AykdPj?=
 =?us-ascii?Q?2OSHAxE8Uu2pRgifHNBM4q/8i7TOkQvvQhu+LxL+JvmXerKnvnXEnXOxglbg?=
 =?us-ascii?Q?v+ZAEPOG842dPiZ/wPyDqq39BHLdpC42WcOnc1TUNrK37cOLzS2xm3lbnvml?=
 =?us-ascii?Q?jihPb/4BMz28YMF444yrCNIet0vjQAxNMOM3SQML9h2kO+/HzUYzIfXZB9vF?=
 =?us-ascii?Q?rmfJb4diY47iISD3dJBJMpQQ/0GkgiVragvmnUCWGukuLdwZ/+x2s7dFJqfQ?=
 =?us-ascii?Q?cHSK5LBa/Ujm1sw0HYO1OjN0hk9zw3P9cF2VQfrb2gzSTtrOA6xkTmTjpK3l?=
 =?us-ascii?Q?UyDU2+srjD+KZuAzsVz9DkCM?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec481fef-41c4-4649-1510-08d98f605cf9
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2021 22:17:08.8036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nLs0/15vdr/5xhbCwc654JW4uvV3CGcxZtHq1/u96xYuo68ikFdOgfNA3zUkBEDV8MJUf4HfmOXX1xwx5yNWyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2551
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 1/4] ice: devlink: add
 shadow-ram region to snapshot Shadow RAM
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
> Jacob Keller
> Sent: Tuesday, October 12, 2021 6:11 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN <intel-
> wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v2 1/4] ice: devlink: add shadow-ram
> region to snapshot Shadow RAM
> 
> We have a region for reading the contents of the NVM flash as a snapshot. This
> region does not allow reading the Shadow RAM, as it always passes the
> FLASH_ONLY bit to the low level firmware interface.
> 
> Add a separate shadow-ram region which will allow snapshot of the current
> contents of the Shadow RAM. This data is built from the NVM contents but is
> distinct as the device builds up the Shadow RAM during initialization, so being
> able to snapshot its contents can be useful when attempting to debug flash
> related issues.
> 
> Fix the comment description of the nvm-flash region which incorrectly stated
> that it filled the shadow-ram region, and add a comment explaining that the
> nvm-flash region does not actually read the Shadow RAM.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  1 +
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 93 ++++++++++++++++++--
>  2 files changed, 89 insertions(+), 5 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
