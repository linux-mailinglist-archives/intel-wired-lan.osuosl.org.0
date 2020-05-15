Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 227161D5A51
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2020 21:48:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C722689943;
	Fri, 15 May 2020 19:48:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nvhM4tbYJAou; Fri, 15 May 2020 19:48:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8E61289BAF;
	Fri, 15 May 2020 19:48:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 872911BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:48:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8399A89915
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:48:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WgXZByvI615G for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2020 19:48:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DC77F89946
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:48:42 +0000 (UTC)
IronPort-SDR: xYwH11DUya7tyRFQCrdBy1bGlUdel5Oy9A8Yo/Hpyx/FlgNnSXMHFEExqPS+KWH73US9uMeg01
 YKMfiH3ffQhg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:48:42 -0700
IronPort-SDR: HbsaWojFUuT13MYd2hPuj1dm0JBMvNU+SxO3zZ2201FVt+0DmD3KH3YxPWDIsi6LKnN0kqnM6a
 xMuWM82Ox7UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="266708889"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga006.jf.intel.com with ESMTP; 15 May 2020 12:48:42 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:48:42 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX156.amr.corp.intel.com (10.22.240.22) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:48:41 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:48:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IS0kJr7kD7B6wsl6QArksv6zziKK1VKQ+vq5Fa6bndVRiuE0AKpvtDRg9kqbW4VMWCMCziPIGeUpunhci73HIGkUTKEXeKq1sIwW5vYM729rzBSDdnktByjT9hFYvb7MrjZF6aod4btN418RWrMBaS6NebeENCX2tTRDi7YCWvvuWAfPbxZ9qU00XFynz0s3TUYHC6VM01w4c9HEXmLx24llSKnAt5aSGiFb8Hr9FNz3qDdBuVFjbP2cz5I6x4kbjwmCtU8kTJWKbcgbO6x5XgxCGnz939ZfdK1IVhJmXTnxIPpKBy1CFeFvR2cJyVXmtk7yjpAL2HwaaYlmTgnCJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CyCWTVnnZ/0Iipi4tO4vO00zRDzmwQr6QhX7Yz9prFY=;
 b=YD5ifthF6iYWmTr4hl91Kwiwrj38Zis+r5Bzfj7w86ZxK3tFS9sukNNOQYtAUeTVeQfDW2fo1cLW6uEWqjG8Nf2v2ig5+a66aCKj0IHfnMKaxpCG27Owu6Y1I4OW/Y87yWgdFpxb9gXWPbGn5eqv+c7NczdmhHHe5kPVOWFDsVZZObofudJfip/l2xWzCSVRmu0r1tJ4WR0ETMcnM/eM0iJ3ix1kYJiHKr+HpqR3OM/8uinFuJBI+XwOiPLaOGZHkohx08E5u00iZMtPT6J6DJHOI0vqs64VrnLkrHy+WYv127PnCXbjFIMebfT9FYyFOHZnUr/+pPUPRCOkxFVQTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CyCWTVnnZ/0Iipi4tO4vO00zRDzmwQr6QhX7Yz9prFY=;
 b=LKIt7nz6l5gfsIAhwwTDV3QmqI+WqGK8ArnPznAreEBc4hiuNpcDCnDZ5rmXEg92te0aG3FuNcH7hK83TAmfeXWfZKV6kct+6YLyizFRjJ2iMHC32HgHNbuyEEXKgivnDHk8x+oIS1yzm0us9vplSJMSBqLWHSiuNzGfVCd4a3s=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1691.namprd11.prod.outlook.com (2603:10b6:3:b::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.25; Fri, 15 May 2020 19:48:40 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 19:48:40 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S41 15/15] ice: Rename build_ctob to
 ice_build_ctob
Thread-Index: AQHWJNHOLdZbR7afM02k82MboMgY3KipmfOw
Date: Fri, 15 May 2020 19:48:40 +0000
Message-ID: <DM5PR11MB16595BCE1233A739C55C29698CBD0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
 <20200508004113.39725-15-anthony.l.nguyen@intel.com>
In-Reply-To: <20200508004113.39725-15-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 90cf92ab-6f7a-44b4-4f25-08d7f908f7d0
x-ms-traffictypediagnostic: DM5PR11MB1691:
x-microsoft-antispam-prvs: <DM5PR11MB169162657C4E928667D600408CBD0@DM5PR11MB1691.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /kzUXCM7qy0DMxJ2o3AX5HhNBxiLJ0R/kfg5UPxvwwGO37P9FWd4J/x+PqCrR1vYAZoXxUvbkoBLgHVoOWPCPo/7ZlGHoD+H5gVsV7wh5qSENq5qLxfjbJFzL7K/lQGbm+heHF7ZldpbbbsfNpV5n+UqWudSK1INq1G965L9VjseI71iZ33JdaJn+tiF+X7wDSvh1GbRbcW5nLxNkl8Ub9BQ5oc6gfNvb2BEUGsfXJR94bJDNSNgB7nNT359A60+81RzK/RiKqawkGeFSq73SXB+t6/h/Wp54fMEqpAoCUO+pAQvkn+3dglCDIiKs0vgV6tPJhAFSRGUX4dcC1sKqfjk5GfD4xs3/+3CAA5Dw0BL2hO5tPZwExduyKooT4Hd1Sa+IDRFq/9LpF09CBj/Ak0iXZZZyUcXYfOgll0oITvuaYGPPfzNm/oS4ySP2yAY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(346002)(366004)(396003)(136003)(86362001)(55016002)(33656002)(9686003)(2906002)(71200400001)(52536014)(316002)(8936002)(6506007)(8676002)(478600001)(5660300002)(66556008)(66446008)(53546011)(26005)(66476007)(7696005)(66946007)(64756008)(76116006)(6916009)(4744005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: F8xjwny5PF60oAyY8HtlLSWxOaCRKvoxc1O1+Xv0d9y1R+rJ3o2xzebH02QS0hAX488ijdUlQWW2d/K5Plv/hhzw0QTIZ0Lh/Uvt/t02Bev1MKt/CRRjy9pyXtpIH2CURMF+FHkCvxQT9Fa3FUSAGBrwnBH3YcojjtTxdBuAicE82Se3FItZ22dKZWx+qtbLowO/8KKcxNIk29r3/pEt1JTdjdhp4/B6wiWjvazbPPOVwxR1hecP3FG646yfk81EDbd7mxVMqLoyR1rzx52z/6/GH7dK+6vAFQ1o8hkdQ1+l3XQ/TB0ZqG61xvSnYtHNiRB0CGc5NIGz8nfakXbKL0fyBPM5ILnVS53DEmyv9l5FdVEGmbHe3GG8zfkArXjuMMZuzlOCWhne15aHwogthkHzFi/rxlkwkSTzg47xi9S06IcHhCB1AZrkON1FC5UMGer23989sjLabnO/JiP7jLYh5MgmiHS8hF/qRpT2FXXg4Zzbwr/zUKRftE4VOids
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 90cf92ab-6f7a-44b4-4f25-08d7f908f7d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 19:48:40.7303 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0AjnbGYMSX2umhuSHsWqKvQwa+eWYxldNqVTYrLvogvCZ63dOg4zdeHOyVvynmvf2UidTk31Pf2rxk1svAApDynmq0sGQYVt+8cWy7Qydrg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1691
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S41 15/15] ice: Rename build_ctob to
 ice_build_ctob
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
> Sent: Thursday, May 7, 2020 5:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S41 15/15] ice: Rename build_ctob to
> ice_build_ctob
> 
> To make the function easier to identify as being part of the ice driver,
> prepend ice to the function name.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 11 ++++++-----
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  4 ++--
> drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  2 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c      |  4 ++--
>  4 files changed, 11 insertions(+), 10 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
