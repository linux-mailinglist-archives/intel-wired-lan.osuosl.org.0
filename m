Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C9A274ED3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 04:02:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D2473872FE;
	Wed, 23 Sep 2020 02:02:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AMVqHPj4G3Me; Wed, 23 Sep 2020 02:02:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6730387302;
	Wed, 23 Sep 2020 02:02:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B7EA1BF425
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 02:02:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 53CCB872FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 02:02:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2JTdoRjXL54z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 02:02:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7F4CC872ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 02:02:24 +0000 (UTC)
IronPort-SDR: TH6jt8liSJSrW6j1S+CNkW5uAFMjLvHo/gLaiku1hBC0Rxkfqzlwi1PLqNU60vUdgUXZlUYE5G
 9y16oODNXa9Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="158134946"
X-IronPort-AV: E=Sophos;i="5.77,292,1596524400"; d="scan'208";a="158134946"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 19:02:22 -0700
IronPort-SDR: Qz1BUCi0jR09+Qxvoa9SaOSrVRUemrzCcsF2Aqcbml9oG7k2NHjmP+FqS+jvFYVHt97+flpSff
 z39UuMvGupvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,292,1596524400"; d="scan'208";a="305178739"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 22 Sep 2020 19:02:22 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 22 Sep 2020 19:02:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 22 Sep 2020 19:02:21 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 22 Sep 2020 19:02:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iiK5RUD3ub5T/TTO97xyIztJova5Pys9Yt8paC1T56SvBSNZp3KK/sdT3eIUlOklW0KDu9pilJAzwG1YjJFW6Wi/72BETz06NV+TPXo4GuZnOE8ZfkgyhbcSisD1BstefkSRFB/KbMVs3TGuAVvnXRPoFPoTnLgx6BMKJFDbTskfdvLRoDsb9Qiu1jAd319qT1iTu8kmQ6Swku64YCn9f+E+TXApkPt6sAfYYvLNuWDyEmFqXpBJPYZMNl+alMNdsLzHOGBFYXBqWdnQOYPaGUF4SF1D0rVozMhOh5TmYzms6uk75XgWicd/UMTKbkpafJSLhaPRcU989T7CtRSCVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kjI4QAtpAWdXroYmRVm1Xj/6L7gStyEW1DZGakiG1QQ=;
 b=D83YXomXCL4STt6bd3C8jMXkLQw/0uuqWy0bXM2yq+BWyf2uu2I7Uhx6JJsLuYyIeu9nqKi/2+iUvDlJSf3rVxXA5TIP+fG9Qh15LxewqV/RIJaGhe9DtaMlDq1LrO1hPX4Scl0BG5S5p6PznDfY2zXWCtHtZm8q98nbq/YyyzQ5p7Z3O4wTXe07bYG2BMZRF9XpduV539Km+5qTb8+tCDqUQVR5uY3SHbMek52RChZ/BmgABR6JcW1Y3Oh6w/kUQYG9doSxDodiv2MA1qwzxCVVxuAsHZORcteW3S80VsWzwuCHGxivgamcVODCHVnSMWSwi+1fYmgeV8v/e65m9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kjI4QAtpAWdXroYmRVm1Xj/6L7gStyEW1DZGakiG1QQ=;
 b=igltM9ZpUzyaMgLhr78/GYb8k56nIc+KxfJ3QhfQN5t+tvlbAehLq6wpBjB0bkRLsZL8W9FaxqHEVfWcv8GPvYiBoleClvs+F82xkcv1RhDjN6/evJP2Ka0T8lCMKpgYNiH5vgo6xh7uj3YLAzkOoBx/EoHOxL9Z+hfyvFp4Qn4=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB2572.namprd11.prod.outlook.com (2603:10b6:5:c8::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.15; Wed, 23 Sep 2020 02:02:19 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4%7]) with mapi id 15.20.3391.019; Wed, 23 Sep 2020
 02:02:19 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [RFC PATCH net-next v1 02/11] i40e: clean up
 W=1 warnings in i40e
Thread-Index: AQHWh9o/YRUf0QJV1UCBuq4GRvZtOal1iZPg
Date: Wed, 23 Sep 2020 02:02:19 +0000
Message-ID: <DM6PR11MB2890C90E8CBF2EE17ECAF95ABC380@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-3-jesse.brandeburg@intel.com>
In-Reply-To: <20200911012337.14015-3-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.208.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d59c9513-6b71-4206-290f-08d85f64b3e8
x-ms-traffictypediagnostic: DM6PR11MB2572:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB2572F943AB358C19FA0973E8BC380@DM6PR11MB2572.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sLrWSmj/uNnF0EIk+XJ5WeTKoMMrGYqEeeQuKVrAI6oW3zP0SnwxdC02QPUc3Ip6W5iQea23Kt4hYkwdLDs78w/xk7hQ/0oz+DJU81/P91uTQifbfQ4btvuUmWuMtRY6YFo5Ox6zAvF2OcE8qAi0Bygy79cZ0ZLLeD4ar6VofhJOsgbjKmV/9pMFTIjyP7NQBLHjtEpazet/ALRwA2ksChlWo1oY6nvkdb85qu7TXHkROvfE2LoVFB7A+EXE7i386LYFQJ5p7Ltyuq7lv4p5HUEvXPlV6Wh4BeS9urftZZaT5kbKlYfRU4iQCTPS3aYV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(136003)(366004)(376002)(346002)(9686003)(66946007)(186003)(66446008)(4744005)(55016002)(26005)(86362001)(76116006)(33656002)(71200400001)(64756008)(7696005)(8676002)(66476007)(66556008)(5660300002)(52536014)(478600001)(53546011)(6506007)(8936002)(4326008)(110136005)(2906002)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: AZtbehg6ERYfNwIkejku+p8T1FdBz6LqsJixEBXkcme9/lLTflC7CXKdTqJ5X1N0dniANx63xC+eRs6Cp6qADu7yqHlE9N9JRaYhd42neovru9wRuBh7s3/i0hbKKYb4mQdX/KKPdz6+0xc57EBYyf9NWg/eUVD7JikYQKPz8pC+5SF84noYKawgLpFXXVqx0FGRq5x1J7SMJrQc5cscnRAnlXmiHG6u3eQ9X4muCFAcGj5jZDaFWPzY4/AferrDnmxwftS9c7lSJXxFm2agXeleXkQC8opMf0gcLbdGGGum03n1gcB1YtugfNVNQ5MAszDzB9GK1K9fkj6x2vTTYpZLZhtBkYra7qjxRzRz/pywC51ezi0C94kBpxdMORDeKB+rZ7v4w+kNQBhWQbH/SnJ5MUvJOz98eNkHzNd6aFYd/pM/irTF86y/hpUx8LOwF/GkvIK08mHiI/cqYSfdCyDGAEK2FSu1VqkFArfDBXPBZu5gwD4dMGpp/QIJbOi1RIbYrYVw29Dw2SMA+yn3t6cPXfWtTrflfB/hh7N7AlwEp1pWG0xYt6cpEqVwQhpYlCNnPU9oLwEBs7W3agRs16Zhi7bkRH+3K4ap7u1xVQwCufTiRN2GSfl7yYx3aDE9cGE6JPMRVGu3eo1O0Jcfrw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d59c9513-6b71-4206-290f-08d85f64b3e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2020 02:02:19.1900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8kbJTLylz2SvP1t+QvgtC1fPcH6erCx4p24CXB2CVS6LzqTVce2AUmgYVyIQ28Co3UgtFBnhk9DvIpD6KxlmAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2572
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 02/11] i40e: clean up
 W=1 warnings in i40e
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jesse Brandeburg
> Sent: Thursday, September 10, 2020 6:23 PM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [RFC PATCH net-next v1 02/11] i40e: clean up W=1
> warnings in i40e
> 
> Inspired by Lee Jones, this eliminates the remaining W=1 warnings in i40e.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_client.c   |  2 --
>  drivers/net/ethernet/intel/i40e/i40e_common.c   |  4 ++--
>  drivers/net/ethernet/intel/i40e/i40e_main.c     | 17 ++++++++++-------
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c      |  1 -
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c     |  7 ++++---
>  .../net/ethernet/intel/i40e/i40e_virtchnl_pf.c  |  9 +++++----
>  6 files changed, 21 insertions(+), 19 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
Not sure if this is intended to be the final form, but it's in the tree I'm testing with and seems to work...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
