Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D771D9CF4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 18:37:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFFB787834;
	Tue, 19 May 2020 16:37:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JEcuW5lTknHp; Tue, 19 May 2020 16:37:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE978878BC;
	Tue, 19 May 2020 16:37:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 18D9D1BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:37:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 135CA2262E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:37:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TwfP1j69XoUx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 16:37:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 6EBE622902
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:37:06 +0000 (UTC)
IronPort-SDR: 1YNuFRa/yy3wCv1XBmUrNU/2ywZTX8ywnv0Dm02NSjI7PJbFvBDt4cd7NYTa5Kn7VVHta0Q3Wl
 pOgPaw9VksPw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 09:37:05 -0700
IronPort-SDR: ZMx+23Tdb+EHHLvHL4SL/r3f4V7v3vJ3zszDRD6wigg3KZexFRLDJppUKFYcS9JGv8fBXoIlAn
 lWKrySCmXWOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="282377290"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga002.jf.intel.com with ESMTP; 19 May 2020 09:37:05 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 09:36:57 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX156.amr.corp.intel.com (10.22.240.22) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 09:36:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 19 May 2020 09:36:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=leDo3yXqxyt0ZeUE5dPyoR8XWyOJ94pKN9zKp3/9fXzRb27QYqQUH0fBQCiPmN1DmxbO+U1rQW8tNR+J8gxqs8Uf5ojZp2dj6HAQLMTZgq+eataDs/8pQizKAGkHQ8FTEsqMvLQY14k46SmjBAVqQTeDeYvVJQrDI599eCyFzi7q6sGoNfYxgy8qlD+Rl+bGDwIHxKjwFhsWABc3MZm2v8TO851Oh9bXx9GE5KQEsxKUgqij9r/4v7zPlT9xB5vcUaktwX+IeQoQZNXIMqvL7mFidiLQy3NHEkueJ72zddfuP7g93QPgDqIZ8OWl7TXC9XWCSAUD9bzoPTIZwQCX5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eqNSgsg6lrZxDAdpZv39iN8VzUgSu39QXHYWSVJ3LEw=;
 b=bgr2FjULKaDn5XCUybUrFVefEo6RwnlikUNOJSRuPh67fKBnOeOlYkH45PglnBdCiapIlir789ptX0S92SSuLgEUA04UCbly0ML1LvajMtsRFBl8Z5tn9vMFzrShi/YiqEs3AcbQ5FTQuK92dpgDkTnFzHDtY6KLVIE6mF+s8UgA+h5KIpUJ53VQLNd+6XFnrOE0gdtxMD9ExxSp9KUGh1Zzne8Gzcxvy7bOEn9qR/8G4dUaX/5vFJFNoDsXJ3ZpyUu2cF7vsk4WWrlRmQ99H18KQ57MYTRxX/Rx1MZ8tUdlFD28EVeC+m6y5KPTzNDnHz3kbJRp/eVwaWE6lcdUDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eqNSgsg6lrZxDAdpZv39iN8VzUgSu39QXHYWSVJ3LEw=;
 b=TWtFYyPxvGQxxrbiV8Sz7+5GmGziYolIjt3tFFrfTIxrKHwF7rQUl5zIzO6Pd7obuBpeNRV6g1VJTKkEMWI6eGDVCtKVC2GKb+S4Yp/n4EgoXyB/xjRegIxGrtEYXQy2aFYHaoIkRuoWzmYsWoxJGR3ejwksMr6iByKYLcjLWvA=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1642.namprd11.prod.outlook.com (2603:10b6:4:9::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.26; Tue, 19 May 2020 16:36:52 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 16:36:52 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S42 4/7] ice: Support IPv6 Flow
 Director filters
Thread-Index: AQHWJ/lk4TANpsiy10mrFBFOjpx686ivp1Ng
Date: Tue, 19 May 2020 16:36:52 +0000
Message-ID: <DM5PR11MB1659AC2810CACDDF5AB872178CB90@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200512010146.41303-1-anthony.l.nguyen@intel.com>
 <20200512010146.41303-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20200512010146.41303-4-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e761c930-cb99-4cd1-47ba-08d7fc12d5de
x-ms-traffictypediagnostic: DM5PR11MB1642:
x-microsoft-antispam-prvs: <DM5PR11MB1642C261EA49EAA34D4BEAD08CB90@DM5PR11MB1642.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vR912/TV3loTO0+vKiYjXYLHS6+DIelw771KNfCwLExWr9I9tuBEKc9UsVFr/deIoI8e7dG0gK+2iehFfju+qgRb+y7OEou4smys82QHDvH62VPhXtot8C7klX+WfDSthp94oHnvaJriS/ZXX9E+KYb+Y130XalgFWLxRhcjTYdJ3jyh0lnpXuUXeHluJEDY1eBk6Y4LeK8jkNVX1ldm1W+WZ064in4/i/djyl5Eh5e4e/atqQr8J1NyJ8RpDeDc+0MKeb+H7JWsDa2AhThBTsctczPnv2Ck6Kkr3CzfOAruh36aCudoWqh4uvhOvSwDoCEey4CincbfcgRbAd8An/8OioGwJePkm4lGmDt/yvcAQDZwe64ueUojTHN6N0/ioOi670PgrSu1k6opH8zqhNEidwqlaTfCAvnIvRZzDCCU7yVVyUD9XYxJovL/z9Gg
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(366004)(39850400004)(376002)(346002)(6916009)(7696005)(66476007)(66946007)(76116006)(64756008)(66446008)(66556008)(5660300002)(8936002)(6506007)(8676002)(478600001)(316002)(186003)(71200400001)(9686003)(86362001)(52536014)(53546011)(55016002)(2906002)(33656002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: ljK+xhmIoSqBkV1ErM6tFJfxtdohsaGcB8zJpHo07PtYhu5cwQS+xAemU0HmBfCCwUY+x6nHiL8v3bxxu/yMxXqRAraomsaS3gkqbLA0GnvVGENYvrIZpZFd1B7CBranSJazGdFXvDcwx5crswdKXIwUUNRdkP6kfVJVG05gPSY/k3sDdwZjE1L6VYEXU2sKQRiVdDejumNy0eBqAwjlJurnxFIFmBOghejdanfcPaqGGmZ+8/BYaxnpCQDVA2v1SsDpr9rPbWbeBg02yXwasXL1FHB4Ezsfy14zQcrGu2+tljlW+eBBpKGe/bQ5c5kjFFDLxnE8FeW9kjgl9jLW5oGyTtV01lmGospM8OyaJH5Ev7rbGotbCUCak/89f1Frt+lZuGga1WE/uI6biY9nt8zlGV3BA/Qt57EHHTPSKILhp9Lg+AGZ/PmN/9De5FBMwfu11UxYjfeUM76c56iXxp5uKBbI/gCAHJ18jyy97gA=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e761c930-cb99-4cd1-47ba-08d7fc12d5de
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 16:36:52.2715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lxd0/x227uuLg0u8b7qwhspZkGlKRT09DYhOqRG7NoVO/KxEtWkJYGqJQ5VbOKZlDxGfodN+BQy4w38ACl42h0Wigrz6/6I4QkceXIhHTVA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1642
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S42 4/7] ice: Support IPv6 Flow
 Director filters
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
> Sent: Monday, May 11, 2020 6:02 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S42 4/7] ice: Support IPv6 Flow Director
> filters
> 
> From: Henry Tieman <henry.w.tieman@intel.com>
> 
> Extend supported filters to allow for IPv6 filters.
> 
> Supported fields are: src-ip, dst-ip, src-port, and dst-port Supported flow-
> types are: tcp6, udp6, sctp6, ip6
> 
> Example usage:
> 
> ethtool -N eth0 flow-type tcp6 src-port 12 dst-port 13 \ src-ip fce0::1:34 dst-ip
> fce0::1:35 action 32
> 
> Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 391 +++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_fdir.c     | 303 ++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_fdir.h     |  19 +-
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    |   6 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
>  5 files changed, 642 insertions(+), 81 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
