Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D22EC1E6DD1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 23:39:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 67EAA87D22;
	Thu, 28 May 2020 21:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 22UW9XsDx-J1; Thu, 28 May 2020 21:38:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 88EE18832E;
	Thu, 28 May 2020 21:38:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AFC701BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:38:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AB22188F7E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:38:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kDg4IJTjd159 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 21:38:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AE80288C67
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:38:55 +0000 (UTC)
IronPort-SDR: 0k3TnLfUro9YBdlJQ7DJxqrKHs3BwpOh1nfiqGWOSLWSAhGM3BEpeAOJV3DbgjiFpbNOt6/8jR
 RYXwGbXvZjLw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 14:38:54 -0700
IronPort-SDR: vm4VNAy1Ku2T9PxRlgiFM5VazYGAYw1VY5oPEXiBmMLcFspYDz33VNawI7Yr6LxLCfyCngcnE2
 c9Yee/ZM09Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="292147245"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga004.fm.intel.com with ESMTP; 28 May 2020 14:38:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:38:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 28 May 2020 14:38:54 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 28 May 2020 14:38:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 28 May 2020 14:38:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SQiFflUOE6OG8dvfIQ0CzgNh9TYrdLX5WnQzesxdTvdV5xXpGXcKEoPGIYoGqSq8ovYbnY3BFbAa6PPI+awJKsEWiZEaCFtOCLJg9k1D3xDohdy1v9LOjaD5GIBw0KP1dUET4Uldl1dM8lQYTsbPxEuHheRdWkiUnAE50cIfjLtZVZVX1hHwLjAjPOHdkye45eLie8iTHEBqX5bQBXp/s05Wx84KU1QZRqW001aBP+po34LBNuFVKvNY83lfxiDe2aopPQqJFvYGQevawk/bbbsehmkp9IPW6q1rlWTU/rw3ykWMGXv9IxfOXnbpVMEH6wfCKJ+bzMXmFHcNOoJasA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mJffVy1xZG3HTF8psHBIeujt82zBnd4z0xDGQ3mUYzE=;
 b=imI6GH/JJ1M7QeLyQDJVJ18JneSIJJXxg2ugJjmni/Vpl3aQR+y4YCxbYXUOsm4ujAE+0q3Fn3rHRRgpHPTcUxW75JsQBbQSIScKbCHXpXl80Axy/Yd0bMbDDIcOSCG2CsbqnvtaMFaChg4e7LavbDvddKxE+O0gINZCEQxhpL7DyvI6KJjMl+wLF8o4+pc6tIxlIg0c0U6TszGSLBsRshHKcJi+lFhwpZmpCkUK+bZpVLUoDhXng8yDZAu9GCqwZZqq8gkZYG9WCx788fjxiDP+bvFO7I7a/k6qzadIRgrsb6DJkjyzivuiAHGSOV94wX4fzeKjypxMHxbKucUYXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mJffVy1xZG3HTF8psHBIeujt82zBnd4z0xDGQ3mUYzE=;
 b=MPN2nJaVBjWjtvHFGCv2trxlXd9tEJMfHgYKcqZIn5yhkrcsBm39vVpraJJ8BUbP5upXyQg8ewpqiG39B26v49eqLBO8xLl5qKoJHed9xFjw2WCk8oxhf5Z5TJSe7yXeDEuvjP0Ag1r+vOLVKbVL7tb2SgE99NzBqnysoA2k76Y=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1801.namprd11.prod.outlook.com (2603:10b6:3:106::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 21:38:52 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 21:38:52 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S45 01/15] ice: Refactor
 ice_ena_vf_mappings to split MSIX and queue mappings
Thread-Index: AQHWKxyUYy3BAUmtDEmdkV4uVyrnFqi+GnTw
Date: Thu, 28 May 2020 21:38:52 +0000
Message-ID: <DM5PR11MB1659FAB6B2C65C6506C8B1848C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 08e79155-9009-4a92-93b9-08d8034f843f
x-ms-traffictypediagnostic: DM5PR11MB1801:
x-microsoft-antispam-prvs: <DM5PR11MB18010235A8B522AE55036FC78C8E0@DM5PR11MB1801.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9oz5x6MPIfgdvBv1GByEaIxpFv8PaIKFYigaZq9YD1gtD/TofRLmBggIOfyR/RVQEluIfbsxtpw/PTGtsHrGuhi1yx4VniaKSXScQRgzFY+N4lp5tsElkplz03feNj9gc4YPYiwvqMiQZjFKja7wgWHzC9Baq+iX9VPGsBLh1ZCibMMPf1QYrJi/9GPlAZeRZKCutqB0XgSODnSrpp2aldXr81rDWlzCc5fKGPt6OjHHtit4uwHksyXA804Xxa5zBGqBMGZxAUgM3M3V9y1UgIkdoEJQ7qMSe6+45AT5NJA0DKd4LqmLjDyFPfsnk2PTTIuF832Vwvd6jfbzsMt9og==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(396003)(39860400002)(366004)(136003)(8936002)(66946007)(76116006)(316002)(26005)(7696005)(6506007)(83380400001)(53546011)(8676002)(52536014)(66446008)(66556008)(55016002)(66476007)(64756008)(2906002)(9686003)(71200400001)(33656002)(86362001)(5660300002)(478600001)(6916009)(186003)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: nasjtD3Oi8D1sszbrkElaDC4erk81HXv5O/jrC0ZLdE2ymOjT6/CjPCID/ILWmum/QYyQJvM8d7EiCPxKh//LnSmH6rgQVM1gqQxRdcpG5NX6rVmGgANWuH/zN49mIRH1g7DqxsgtkVkvvNpckvwT8PY8tbi1MKZkkdfc51AyMwu/Ofi/mLGDSEyeilSojVK7W8StVTEuHgNYD+VvBODAxrzKoH0kwh5eapQL90wiNWh6drwOySANCSaElvTkhBeLRqeb0gAe9r4tandwKPqqIGJLNw+FkWjeKbkk+nf2t34fT/H1y1GzxjOADuKUNU+FcO9GFTroZ65FNqYFSym5zJQVy0YPr3v2dWjcfcXOYGwjMEM10NpoZNyT+OhhHS/Rqx74MXmSP7GZYJL+ecLpZYy7gIrWSZHWRJflGCgDeF/SwX6xtLkxNnKJOivYNyvKRvWR0Z2/HAu/JcRRkxA9vEDHemMeFRdlsUYPIzdIlg=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 08e79155-9009-4a92-93b9-08d8034f843f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 21:38:52.8024 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GfhIX+gFprOnkbWv/IS6S+F6Y6UTNjCwjaAfUTA9QGT8gU3ANHrU+TifwpYIaF+11gtq0b7n/4UIZ3kQ1v6gXZLFW6KxJggimEHo193URIk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1801
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S45 01/15] ice: Refactor
 ice_ena_vf_mappings to split MSIX and queue mappings
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
> Subject: [Intel-wired-lan] [PATCH S45 01/15] ice: Refactor
> ice_ena_vf_mappings to split MSIX and queue mappings
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently ice_ena_vf_mappings() does all of the VF's MSIX and queue
> mapping in one function. This makes it hard to digest. Fix this by creating a
> new function for enabling MSIX mappings and one for enabling queue
> mappings.
> 
> Also, rename some variables in the functions for clarity.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 91 ++++++++++++-------
>  1 file changed, 59 insertions(+), 32 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
