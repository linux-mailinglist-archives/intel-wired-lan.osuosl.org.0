Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEDA1E6DE5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 23:42:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 04FD721543;
	Thu, 28 May 2020 21:42:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9bktKXnVPC6j; Thu, 28 May 2020 21:42:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6083021517;
	Thu, 28 May 2020 21:42:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DDB101BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:42:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D939E89157
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:42:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SaWjHuCYfc12 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 21:42:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1DDE888F8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:42:31 +0000 (UTC)
IronPort-SDR: r97jXo67cOGfBmkomCJDNe3DQuw19bWHGU+EQefTYl8ioXwSXTmMfsgG1w/trDckJ+W4dyYxap
 q6upk2KEgFZw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 14:42:30 -0700
IronPort-SDR: m66ZYz3CXf9JDZIaxodBaKdrHcFcZZui0iBhj+aHNRX3gbUgU5UCMzoLSF/ssXrBOs4s4WKKbE
 z6TZQoVGEGPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="256302618"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga007.jf.intel.com with ESMTP; 28 May 2020 14:42:29 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:42:29 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX153.amr.corp.intel.com (10.22.226.247) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:42:29 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.59) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 28 May 2020 14:42:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pc0uGt6zEdAppbYFTqP8JW85DEyug3OT++q9C1iAFcWBrja+I5cRo8bRKzvv/AxvUQQEZDxXGFtUi2b8gzT3q8LoNXnvaQFroUnu6FbuhHpHgC15BkB44eY6+9dNcymIJ93SxpcBgTmJH15yHKBCBnEqgRgeT55V1PctvZpQjs6uxP5dXP16BI2gegRzexvJTcgeO1m05ZXwX2p6MBHLFSPaSwp7P/m1dA++ooPOHz0/Ntz+w9UbnyH3tZ8xq6xfN9UkNmYFM5HD4UxVEmoP63RXUMnjtR9iLmcuD1m+TAIT1Ot1J+IF7fo5h0+lY8BB3w8Z8eo19xqJu4tcwx4bmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B4tiZGRrEPQcagTRJUMMSnNWItqyfZ4WaAyaTB9E62Q=;
 b=JEXTHlRE3lJgricoGG9M105hwUz9HWympbkKgRQoy7rhwlJnDfaZYjT2utMgFxVJ608MVKTtYOpiGgERsoWdQ/qGuMFzLwQsLGW14eB6Q909UFudMZ6vRhc3NOWpCbYREEj0i+9gxBPWZ+Q9cl0q4Flu+Ex7XnRzsq1YPiq69f24Phd2kH9SDPcHAE+M4gKzAeoQwYhAWSXjJ+Okx9dSacNsdENw03MnUSzEZ2h8aruODj+ErAc/ErmGkBQ/vARTNznhHFV9LJE1xskx55a9wtvv0eXGeG2rThd6E7x2Q0ekjFbaqljz/oq5tD0343aN74ukksbe2t0ZzKkM+b1kag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B4tiZGRrEPQcagTRJUMMSnNWItqyfZ4WaAyaTB9E62Q=;
 b=oLR+Qw7LpgFZMiGc189AiwPfg0hadpFK41n0cNZD7YwHc1+4boeXVZgLrSmaO8OqVJngcjG9evgGBSQ/X72q+C909S5KrPzJVjyGsLe166WqeOxwJNKkOSFCWFmYlGcKKYb6soS9kuLQu2QKrrXWBcp6k3X2BZJPYo7Miy/vrfc=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 21:42:27 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 21:42:27 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S45 09/15] ice: Refactor VF reset
Thread-Index: AQHWKxyV5y3xJ9wMkkGX5SxkEaBxvai+G2zg
Date: Thu, 28 May 2020 21:42:27 +0000
Message-ID: <DM5PR11MB1659ABC7CC3973AE2C65CC3E8C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
 <20200516005121.4963-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005121.4963-9-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4b2af23a-942d-43cf-2e7d-08d80350045f
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-microsoft-antispam-prvs: <DM5PR11MB204379045A5262511867A53B8C8E0@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oyDV80nIx7zo6munPeiGv7RHHEO+v5Hiyf0YeRJByqayqStxYRicCgZonJ8VqSv/DxnnP+ZskcnFkm83Vj+HgvHXLR2KbN8HRhc/5/+HgNM1oCAzZdPBM5XncmNvEKQOPk9LWu39XiFzLgrYX77ia4fsDtehGTTUyGt5R0Fuuri/eifYQjKRnoH0WREBsrC4ZZpMRshiMQuurHLjA/vF5I5/Eal80eCA5WAgEgiGQVjiwTq646bYGxlZfg6NILvwmxBJlBPTO8bVCbf1Nhz2cajeG3dn5L+QDpoNDdfnWb4H/E0rbnuZnMNztvlMTdXp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(366004)(346002)(136003)(396003)(66946007)(66556008)(64756008)(66446008)(71200400001)(66476007)(2906002)(33656002)(316002)(86362001)(52536014)(6916009)(83380400001)(55016002)(9686003)(76116006)(26005)(186003)(8936002)(7696005)(8676002)(6506007)(5660300002)(53546011)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 6XdlbUBLPODr8obJ3WMhrqzRJmdRwyAlr53KrMz6giZbFOLtbLpbo9JjTIJUWmDF8rUutJiPx6tEG2w9nA75UycbbxoKa373hfs0GQWoq3macOaWPBpjmnQFw9FJZVNDLT5JspAt1NjN/r/v3NU6rnOJruhZX1TeTHh8y6NZrZzDH8wpwmuKnaeQYJCXA5srpM2C+ZOj5saUak+5Mr1WavP7uWNyVusOfAB11wLFLkdJhdsrXLNMIxcboVfUTMGqtmFHO8js9XoGhvBck0anQkSA3eAADI7V7mJoIeVs8rZyu/rvmLIcZ9H016qWyfmRlNzGfPrY3O5dnEHvwo4O31/xXzVmA0aa1zETi0ftPieiXIJ7aCBWiLYNiboTpkdeItiCao/6gCZMOBlc+zasF8rtSJEcU0khqLPZ8M4VbLbA3eTuWmCS7jbCabCYGfSIHnAl/GJC195LaZdy6p4/xFog41oSb8G9p9ZbC1C9iPk=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b2af23a-942d-43cf-2e7d-08d80350045f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 21:42:27.7009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YkSFVntKsS9hrgw3VfKtw24AI/ZAwr3BT2moXP1zZjZSqxZi2n5mFFnaYwutWVM+7AHc+4hdVMXddgrg7oVQEOQ+VK8Ol3D5zT4hifBYIpE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S45 09/15] ice: Refactor VF reset
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
> Tony Nguyen
> Sent: Friday, May 15, 2020 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S45 09/15] ice: Refactor VF reset
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently VF VSI are being reset twice during a PFR or greater. This is causing
> reset, specifically resetting all VFs, to take too long. This is causing various
> issues with VF drivers not being able to gracefully handle the VF reset
> timeout. Fix this by refactoring how VF reset is handled for the case
> mentioned previously and for the VFR/VFLR case.
> 
> The refactor was done by doing the following:
> 
> 1. Removing the call to ice_vsi_rebuild_by_type for
>    ICE_VSI_VF VSI, which was causing the initial VSI rebuild.
> 
> 2. Adding functions for pre/post VSI rebuild functions that can be called
>    in both the reset all VFs case and reset individual VF case.
> 
> 3. Adding VSI rebuild functions that are specific for the reset all VFs
>    case and adding functions that are specific for the reset individual
>    VF case.
> 
> 4. Calling the pre-rebuild function, then the specific VSI rebuild
>    function based on the reset type, and then calling the post-rebuild
>    function to handle VF resets.
> 
> This patch series makes some assumptions about how VSI are handling by
> FW during reset:
> 
> 1. During a PFR or greater all VSI in FW will be cleared.
> 2. During a VFR/VFLR the VSI rebuild responsibility is in the hands of
>    the PF software.
> 3. There is code in the ice_reset_all_vfs() case to amortize operations
>    if possible. This was left intact.
> 4. PF software should not be replaying VSI based filters that were added
>    other than host configured, PF software configured, or the VF's
>    default/LAA MAC. This is the VF drivers job after it has been reset.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c     |  12 +-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 304 +++++++-----------
>  2 files changed, 130 insertions(+), 186 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
