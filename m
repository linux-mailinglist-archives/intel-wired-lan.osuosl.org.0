Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D5A1ED6D6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jun 2020 21:24:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6F29722B6D;
	Wed,  3 Jun 2020 19:24:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tnvyIeNNNorB; Wed,  3 Jun 2020 19:24:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 18BDA22D9E;
	Wed,  3 Jun 2020 19:24:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BE6851BF857
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2020 19:24:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B3A9722C44
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2020 19:24:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JonIDQs3FM-z for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jun 2020 19:24:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 7F76A22B6D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2020 19:24:20 +0000 (UTC)
IronPort-SDR: dDjdN7bFVMxnZoWKXy0L9yDIvjt7m5uEwrk+9Ew+Qi+0TUeOJ9ATw/Nq3bsoqobx6JB5K5ga3L
 9enJJ+zno8GQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 12:24:19 -0700
IronPort-SDR: DcCGHyzamxiiF03wGHDje6ALgfaj4a6E9RwMvabFhcEtIBVDoUUuhC2gTzlT5I0L0Vm7KJaqGp
 FPQhUzrPeswA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,469,1583222400"; d="scan'208";a="471177132"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga006.fm.intel.com with ESMTP; 03 Jun 2020 12:24:19 -0700
Received: from fmsmsx162.amr.corp.intel.com (10.18.125.71) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 3 Jun 2020 12:24:19 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx162.amr.corp.intel.com (10.18.125.71) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 3 Jun 2020 12:24:18 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.59) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 3 Jun 2020 12:24:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m7axno5YXS3emNN3v+zJAt5rxvxD5XfnCxABBmH5bkZQApvumMSoqFIi0ksO++/6uVq4y71QXgN3lL3hn6Yu2QpguVGcCw13INvAgdLBNv2yObK0cJK+ZRQe+Xgcl/ekO1csjQkZQ00adD05FeP7BkF+D+naSqlmBgb0RqOKA5ujPfwZvoMnaYF53E8JfzRlqN/Ej1VlNN8KtjWNCmUVSRokNqtzy710NjP2Dc83GEpMxwq+6u/W8yCiQ4tsuN9xUZIG+Kf3u80J2W/yoUBcEbazNFegM6nwf2nuoWMQOx+8yBK5HZ+ZizS93nF4ryCYk3AGHjF+2tGu2jHhQRdSFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YztjaRIxFLvdCi5o0DzWy0pb9FxwZU1vjExp16mEAEI=;
 b=RNGIzclBT3323agwCqaG9aIbSXPaw1GC4YJQ1yLaPQjHNWtU5WlIOWqB7mciiPaxg5UiMb4oS2Na0kp7oXRb2nf07cZKWNHtLugGw8FPS3ipT3yNFjN0AzAq6NKj7pyD1PskeFamYW5STR0elo0sO0oaeXxzHOnNHK3e1ZvpCOBpFhIub4ZV8Y6MvyHz++I0oaiNXHmu9TFFj/2HpMQCX1qGITsCJ7wTBCPmbeZBNnCqAdrvIQYGWlO+4NSSYNncsM2ZkybDHhcp8EwNINPPKOs3KFPuIrZwZnJSfHc61HEK8v5T+LSaYa+0jWY6/racg647Uj8RFzp0JU+BKABFBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YztjaRIxFLvdCi5o0DzWy0pb9FxwZU1vjExp16mEAEI=;
 b=Z+QPyzPHp/2lUXPtFGui5dy6TA4nAiEVkGOZs08Atp2YhOC5YC56omYrRAyQJ4n8sY9PJNdm8eavG3DuGokQ1CQrRd9pb0/ZoUG/3Ty+CRiXay6Lb26qXpweJKae2tkZERJruqbStKwuD+9k58862p5/1Pw75F7Qi04KiulUGS4=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4249.namprd11.prod.outlook.com (2603:10b6:5:1d9::29) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3066.18; Wed, 3 Jun 2020 19:24:16 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.3045.022; Wed, 3 Jun 2020
 19:24:16 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v3] net/intel: remove driver
 versions from Intel drivers
Thread-Index: AQHWNYlz3jBYhXyRk0CI19ZONZei2ajHTNvg
Date: Wed, 3 Jun 2020 19:24:16 +0000
Message-ID: <DM6PR11MB2890D68DE3DB647BE51B8C73BC880@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200529071833.633168-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20200529071833.633168-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 84d52ba7-1026-45fa-bccb-08d807f3b4c7
x-ms-traffictypediagnostic: DM6PR11MB4249:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB42495313F5A94AF8E879D562BC880@DM6PR11MB4249.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 04238CD941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZTlqzgL2AhC2HRivyFBF0Y7XfrzMAQ97ONol7EiLhL7v6woI0fEZEXzCIjv5aGDFnybximzMdy51c0YXiGoLMYEz7ck0OzPZ2nHaKi9MkgqiHNIX6cRbJFXyKjjTcs3Ag5YQvYg7taauqFRBQ4yQgY7O93GAKzj/yiMH5nMuMXamEcTRe7idW/rqnADEZsNyXWsYOnfrc71yRMuHc+xpFXijonUxmcni8wh5WHWbGQR297+4VyXQWjFR+/p3jvgCu90HXFuHXXTXfy8776Xuo9B2lvMx0Dccei0XLbO9KkDW7PdcsdajfFGLRHi8X20o
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(346002)(396003)(39860400002)(366004)(136003)(83380400001)(76116006)(64756008)(66446008)(54906003)(8676002)(53546011)(4326008)(2906002)(9686003)(66946007)(66556008)(55016002)(110136005)(8936002)(316002)(478600001)(66476007)(71200400001)(52536014)(107886003)(7696005)(6506007)(86362001)(33656002)(5660300002)(186003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: h02pDxqrvwQDLY7RBh2yInAbbTG4J35fWuJQDvIG6cFyjFLV/Nn9CHiR+F9sjPwSdIEes7IcS0v/UR5aw5T3I6k/gc4/vx0NjZ+2rLfeBe3aOSOrC2ealR50PKT0xU58NFoV3fUIN0NVokROWjASmwmRuTwQI+Mla0aYEBigiLE8bmAXy8mSiUTAr6lkK1ipjTyXZwdfynj4Av++BiO0vE1ZseE6pYx5sG2FZ6ZzcqQ2z1M5avQPlbdr8Y5H4QwSZgq48KEq0NZm9G615kIu9Aim95ujgNeAzqZ0zVlAAIpUHl0MTN9yCwm/3auFeeu/Pi/YB0if2IzRC3sBN/1bIlk5nz1nbmZWT/ztTojoc+kU362nJbabFJqyqNTkCIIzm8p+w+5xZFrhrCyJOD+7xFko71Fc3Er8+wJqkTMKxwkZCjRUMAxwZDXqEhzHuLvlMMeKUPlnw+LGJh8rGleGFXKap91r/6TxlyShqyAYi8Sj2f8KFc1ViKH+NRU+eJMN
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 84d52ba7-1026-45fa-bccb-08d807f3b4c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2020 19:24:16.3991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VkZGNDh1fjfJpK11rFpBiWv1Gr+AkR8PzkwFoe5g3ORCcMFiSYF3akQ7B1KFGKTbdRhT9vY71FchkNDjStdtQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4249
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v3] net/intel: remove driver
 versions from Intel drivers
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Rowden,
 Aaron F" <aaron.f.rowden@intel.com>, "Liedtke,
 Kevin D" <kevin.d.liedtke@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jeff
> Kirsher
> Sent: Friday, May 29, 2020 12:19 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Liedtke, Kevin D
> <kevin.d.liedtke@intel.com>; Rowden, Aaron F <aaron.f.rowden@intel.com>
> Subject: [Intel-wired-lan] [next-queue v3] net/intel: remove driver versions from
> Intel drivers
> 
> As with other networking drivers, remove the unnecessary driver version
> from the Intel drivers. The ethtool driver information and module version
> will then report the kernel version instead.
> 
> For ixgbe, i40e and ice drivers, the driver passes the driver version to
> the firmware to confirm that we are up and running.  So we now pass the
> value of UTS_RELEASE to the firmware.  This adminq call is required per
> the HAS document.  The Device then sends an indication to the BMC that the
> PF driver is present. This is done using Host NC Driver Status Indication
> in NC-SI Get Link command or via the Host Network Controller Driver Status
> Change AEN.
> 
> What the BMC may do with this information is implementation-dependent, but
> this is a standard NC-SI 1.1 command we honor per the HAS.
> 
> CC: Bruce Allan <bruce.w.allan@intel.com>
> CC: Jesse Brandeburg <jesse.brandeburg@intel.com>
> CC: Alek Loktionov <aleksandr.loktionov@intel.com>
> CC: Kevin Liedtke <kevin.d.liedtke@intel.com>
> CC: Aaron Rowden <aaron.f.rowden@intel.com>
> Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> v2: fixed Co-developed-by: tag
> 
> v3: Addressed Bruce Allan's concerns in the patch description with all
>     the information that the firmware team was able to share
>     Did not address Shannon Nelson's suggestion to remove all print
>     statements in the drivers initialization functions... I plan to take
>     my chances with the Linux community
> 
>  drivers/net/ethernet/intel/e100.c             |  6 +----
>  drivers/net/ethernet/intel/e1000/e1000.h      |  1 -
>  .../net/ethernet/intel/e1000/e1000_ethtool.c  |  2 --
>  drivers/net/ethernet/intel/e1000/e1000_main.c |  5 +----
>  drivers/net/ethernet/intel/e1000e/e1000.h     |  1 -
>  drivers/net/ethernet/intel/e1000e/ethtool.c   |  2 --
>  drivers/net/ethernet/intel/e1000e/netdev.c    |  8 +------
>  drivers/net/ethernet/intel/fm10k/fm10k.h      |  1 -
>  .../net/ethernet/intel/fm10k/fm10k_ethtool.c  |  2 --
>  drivers/net/ethernet/intel/fm10k/fm10k_main.c |  5 +----
>  drivers/net/ethernet/intel/i40e/i40e.h        |  1 -
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |  2 --
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 22 +++++--------------
>  drivers/net/ethernet/intel/iavf/iavf.h        |  1 -
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    |  1 -
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 14 +-----------
>  drivers/net/ethernet/intel/iavf/iavf_type.h   |  8 -------
>  drivers/net/ethernet/intel/ice/ice.h          |  1 -
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  1 -
>  drivers/net/ethernet/intel/ice/ice_main.c     | 22 ++++++-------------
>  drivers/net/ethernet/intel/igb/igb.h          |  1 -
>  drivers/net/ethernet/intel/igb/igb_ethtool.c  |  1 -
>  drivers/net/ethernet/intel/igb/igb_main.c     | 11 +---------
>  drivers/net/ethernet/intel/igbvf/ethtool.c    |  2 --
>  drivers/net/ethernet/intel/igbvf/igbvf.h      |  1 -
>  drivers/net/ethernet/intel/igbvf/netdev.c     |  5 +----
>  drivers/net/ethernet/intel/igc/igc.h          |  1 -
>  drivers/net/ethernet/intel/igc/igc_ethtool.c  |  1 -
>  drivers/net/ethernet/intel/igc/igc_main.c     |  7 +-----
>  drivers/net/ethernet/intel/ixgb/ixgb.h        |  1 -
>  .../net/ethernet/intel/ixgb/ixgb_ethtool.c    |  2 --
>  drivers/net/ethernet/intel/ixgb/ixgb_main.c   |  6 +----
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  1 -
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  2 --
>  drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c |  3 ++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 10 ++++-----
>  drivers/net/ethernet/intel/ixgbevf/ethtool.c  |  2 --
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf.h  |  1 -
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  7 +-----
>  39 files changed, 29 insertions(+), 142 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
