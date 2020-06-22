Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B812040B3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 21:55:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E8AD8743E;
	Mon, 22 Jun 2020 19:55:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3UMB5EGKZ2ZM; Mon, 22 Jun 2020 19:55:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 67B0287460;
	Mon, 22 Jun 2020 19:55:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A1F9E1BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 19:55:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9CADE87410
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 19:55:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id miqiYAmImJab for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 19:55:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 863CF873AD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 19:55:05 +0000 (UTC)
IronPort-SDR: bj1P3DeMa5lcVljdGTd/4o1FpF77H4P3BspdKnq2wBVdy1sPtxrbMBQ0VYtilsAPnfSRIUEN76
 wbXi39XDOx6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="209053028"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="209053028"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 12:55:04 -0700
IronPort-SDR: VK7N0kAU3PZ0VEVq6H15vwlgdZiu0O1Jpl5n10KGIyYT0JYJZC8Ik55bfoHQIWdewB4CoByc3G
 Sw7V7ka2dOsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="281803446"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga007.jf.intel.com with ESMTP; 22 Jun 2020 12:55:04 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 12:55:03 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 22 Jun 2020 12:55:02 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 22 Jun 2020 12:55:02 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 22 Jun 2020 12:55:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ALF0ee7ORPvMP9WpoRUwZqYUREydkr9N7yAKc4MQCwwP7Hj2lXEGLPyeYJYHWCPZ32li5/1YDvfwleoGNlXUHNBicsYb7p95zv2mITniP65ZkCMAi9iogM9h0+qU5gw1tPOjfvlK7mlTzQ/ru0ulILTt59ubgQMuw5qhsMsTVfOJ7J8cdleFScZWiVnMwxbHkyw3KwL+4xk80NR7x1uwtW6pEdxwblGrNry2GcXa3U9ExhG1y1/8O0lOcy7bxPvQKQQ8tJ+xHW9GP1P5Qir9ugtPqyR6XIVmHomLjGT6dj7JWpjDRCzUc2iXaDja54hXnzUfxCoCsYqO19Z79v0DXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NDjIzyBQETK7c7f/X+k6MK91fcjJUv5/sOVwAQ968fw=;
 b=IjYMoTCWLx379+utu7epf0DoG4xOHBYNr9OhCkC8lI5gQqGAIec1v6cDa0vV4vII0KVgUwRcCl7FSFQ+NKqMMtSZNid0gACgnlWU40ysFyBUMfyEGLUnpwIMrJ8PH3RoTVyqGs3sopCFIe8BjlsC+ReEOJVRSwI0Ki2CgaLzs8aFb10kf7qBsGamgY9/2e1LvnGt+JZ16MWHNap5DgTJssfoBYDBFHOhbjqOsFyFieIjNZfthdsCzgcP0lAGn02zDpzk8MCIOIbrKWoVwEaIG5Ec+BI/Xu8Pb5NQ3E+PerUY3MhqeAmNFXh6MPdLfEzxp+66ngzU5AVunObdZJjx/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NDjIzyBQETK7c7f/X+k6MK91fcjJUv5/sOVwAQ968fw=;
 b=UDvWvrDe6JTuTGCVw8/F63Im5MJcA204iJo+dAiINK4iO6iDzsA7yyRvkKmX3tqAG8vH85Y+g6LdOmkckT1LNpvXWRjSDTmuXTSMrKgctEmIM2gwxfBq997xnuQaKQiHAlxewkmpF/nmXaW1fGohv3yliWgOQOAXGZDcbcQM99o=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN7PR11MB2562.namprd11.prod.outlook.com
 (2603:10b6:406:b4::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Mon, 22 Jun
 2020 19:55:01 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3109.027; Mon, 22 Jun 2020
 19:55:01 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3] i40e: Add support for a new
 feature: Total Port Shutdown
Thread-Index: AQHWRDvs7/2MRxKvp0uyIoISvoDQH6jlFMXw
Date: Mon, 22 Jun 2020 19:55:00 +0000
Message-ID: <BN6PR1101MB2145E225DA6CAA7EF0BCB5DA8C970@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200617000555.15985-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20200617000555.15985-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5c135572-a965-4caf-6026-08d816e62635
x-ms-traffictypediagnostic: BN7PR11MB2562:
x-microsoft-antispam-prvs: <BN7PR11MB2562097927804854B28537B58C970@BN7PR11MB2562.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:469;
x-forefront-prvs: 0442E569BC
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WJa5AM3sBkR94NcWNYbFTiZuCFuwdoF/iDgpier7PWZ0Q8JXKIlSxGCGgC2gOBryMc73vcM/J4ftHBrm+XxOuYoVqGlW5oz5TsqaElV0mxIQ+Uq0PJHiIRZMYszdYOGQiBR/8bF72FI0n477ryCk1DmAgeKbiJPWsd28zSDbqeC2XIxSwaH0tb10ynLTKH8wPF5pQvVBk8iPEVC96QWrF4woyItKzxuQgLNdpJgDkXn7LLwSekXBl4yj91Hn/Ey6odldoX7CTU9sChBAOqg5elXKXwk9UzMn9YXmFVKHAZ85o9aJym71Yv/SorXPpjwabJ/UbBfe7RvVieD+xVJacA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(376002)(136003)(396003)(346002)(366004)(8936002)(186003)(8676002)(55016002)(478600001)(6916009)(83380400001)(33656002)(9686003)(71200400001)(86362001)(5660300002)(66946007)(64756008)(66446008)(66556008)(66476007)(2906002)(7696005)(53546011)(6506007)(316002)(76116006)(52536014)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: pzdyd37rnxTcmyoYy16BOKcmUO3FbByLRjL6ZPiMN1zLAHEKL2KzCKu74n/iRbkqZXBqETGT1BTk0X5ieTve5H39DD7eXSfhWBnkHI8W9itNDl/kOxq/wFB4fKAUgrvcPou4uq3bhvu5QyAV9wXTchhq64A4KCHdo41StvLm2FN6EvlRVBqlVgVbpvlc7FR+8yj6vAB8DclvB/louHSz92G62mGA7/5HukuX8i8AV6sVJ5JDdTrzNy4lUmNrXTKa4ApQYYSD8JO3QL1+oiZl2Kh7Gbj4si+F8kKhpnQ8souXn5Je2iBZGNPaqVCAD3tD+X/ZE6lyRCS0DuR6f8anhQDikYlAUE/9cPunZW7MnK869aY7xyneGUMgswSAPKpFnj3xeOCvlmpYSerDEFrNvIi8KAdGrRrquVy873H0lzQeKkqrwHHg8Bo0EnUoUihBDMQQ5DWsZ5CoDs9tJRMkgOk1LcneSmxY3USaA/GAbcw=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c135572-a965-4caf-6026-08d816e62635
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2020 19:55:00.9947 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hNqfc9R/k9eJo1k7kW1z/E/4TSy1yCIFgzFHVb4Kt2l+4fi3GZGIxxuERSNh+BHxUd5j69ERxXaXkclkNijTa1qW/XxfSju/IvQD2+DabkU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2562
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v3] i40e: Add support for a new
 feature: Total Port Shutdown
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
> Arkadiusz Kubalewski
> Sent: Tuesday, June 16, 2020 5:06 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH v3] i40e: Add support for a new feature:
> Total Port Shutdown
> 
> After OS requests to down a link on a physical network port, the traffic is no
> longer being processed but the physical link with a link partner is still
> established.
> 
> Currently there is a feature (Link down on close) which allows to physically
> bring the link down (after OS request).
> 
> With this patch new feature with similar capability is introduced:
> TOTAL_PORT_SHUTDOWN
> Allows to physically disable the link on the NIC's port.
> If enabled, (after link down request from the OS) no link, traffic or led activity
> is possible on that port.
> 
> If I40E_FLAG_TOTAL_PORT_SHUTDOWN is enabled, the
> I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED must be explicitly forced to
> true and cannot be disabled at that time.
> The functionalities are exclusive in terms of configuration, but they also have
> similar behavior (allowing to disable physical link of the port), with following
> differences:
> - LINK_DOWN_ON_CLOSE_ENABLED is configurable at host OS run-time
>   and is supported by whole family of 7xx Intel Ethernet Controllers
> - TOTAL_PORT_SHUTDOWN may be enabled only before OS loads (in BIOS)
>   only if motherboard's BIOS and NIC's FW has support of it
> - when LINK_DOWN_ON_CLOSE_ENABLED is used, the link is being brought
>   down by sending phy_type=0 to NIC's FW
> - when TOTAL_PORT_SHUTDOWN is used, phy_type is not altered, instead
>   the link is being brought down by clearing bit
>   (I40E_AQ_PHY_ENABLE_LINK) in abilities field of
>   i40e_aq_set_phy_config structure
> 
> Introduced changes:
> - new private flag I40E_FLAG_TOTAL_PORT_SHUTDOWN for handling the
>   feature
> - probe of NVM if the feature was enabled at driver's port
>   initialization
> - special handling on link-down procedure to let FW physically
>   shutdown the port if the feature was enabled
> 
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v3:
> - error messages changed
> - '_ENABLED' suffix in a new private flag name
> - new comment for documentation of a new private flag
> - rewrite commit message
> 
> --- Cut off before submitting to external review --- Testing Hints (required if
> no HSD):
> Link up/down, link-down-on-close
> 
> Change-Id: I5427227c31b5e2d30f1149ad8d27d475caa27241
> Title: i40e: Add support for a new feature: Total Port Shutdown
> Change-type: FeatureImplementation
> HSDES-Number: 2209979406
> HSDES-Tenant: server_platf_lan.bug
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  22 ++++
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |   9 ++
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 124 +++++++++++++++---
>  3 files changed, 134 insertions(+), 21 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
