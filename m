Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E17B6222A59
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 19:47:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9D6AB89ABF;
	Thu, 16 Jul 2020 17:47:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ia7yQluLBujs; Thu, 16 Jul 2020 17:47:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 69DD78A91D;
	Thu, 16 Jul 2020 17:47:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 545CC1BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:47:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4FE4389ABF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:47:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hwuYb3pVDyJp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 17:47:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 97194894C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:47:35 +0000 (UTC)
IronPort-SDR: n3Xon1fBxp72CRFGWH9B/j2/aSTlTFd8xy3Vm9ABna5m1G7DVHrVU/sMXgMlxFDXx7TYV4ccd0
 cdfFQR01lT+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="147446699"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="147446699"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:47:35 -0700
IronPort-SDR: wkr62/aG+V+FGlzcMd6ElnDfQkh1f0XGWXsA/7P9Pxgqlloq7qRQnkTPQG7a1dGaNqnnxZ9cOs
 xFYUIxgG+InA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="269315822"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 16 Jul 2020 10:47:35 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 16 Jul 2020 10:47:34 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 16 Jul 2020 10:47:34 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:47:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AscciijoHa9s8EUFrEWdnZe64/uxwHP/k4e9QPhdA0fS3bkmIkGKatKZro8jjiB1q93cfvAG7OxR1SNpBZu9BwZqYGsz9ftarLtqqIN+VQv3LNRBicnHeAlR322NxFkXAp6fTCg4wsEKAtFaEuKoVp311vwp1eZ7PEzgjC1MaR+hYQk3dFOdhkBlbTi3xf02K7n+PFRM0JhVZN9RrQ/awju/55mPP9eCrEehxPTMGJSS2bFtpPRVTJU2rDQZUVHbyDKI8wGHbtSeho471izng+jrGU807pbGE5zdyEuottSeNsSh0dgmpQoJZV1Wa8gemUSz3n38udzvM/IXWQwWWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+Z/RBhnzvVW4C261AG8f/7mSwF5XYAJb1mSXP90lUmQ=;
 b=djEhKltaefZpRkuQEuLY+DuKmlutoJIr4WpKjDsdOoE/9Zdq6W2b4+PUaB98aHdruZXQecAEHm6toYlGT3B9hT0kOshcmcecW5fUHma/afEZhM68IytkDKekWVqn5nWrF09qS/ydmfwsD1elY9+CbZItNQ9UYOv9CWmJoqzSlsj/Z4uUjEsOyiR1b7UiG2g7L6NUhEdhbDe1l88J9STrFKUMFkhdOaVl45lFss3E+W5uKB2tHaAzBezfy+WPLvOrRMHczwVOcSJ8m1Ycxpuf7eSgdHpnjintcEE3ol9JsJVAHZ5Ten0sb/Hi6288QKTEdbst0+5imW83lbfgCAkhmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+Z/RBhnzvVW4C261AG8f/7mSwF5XYAJb1mSXP90lUmQ=;
 b=PfwcIf0ysenvn3uM3oN+RNu+Nkwk44H8YVYX9jdyKM1UltSrBjNaXtLnTMlhd7CoGb9HGRExHkeuknlSj4yTU1fjeGM1Gw5RAvVTyVVnU70sVcCbKloqhffIhQoJCLosj1QlZ8h+KiZF58CzskrpxyKbpNsUv27LoD9NYkclkiE=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1268.namprd11.prod.outlook.com
 (2603:10b6:404:47::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Thu, 16 Jul
 2020 17:47:29 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.018; Thu, 16 Jul 2020
 17:47:29 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S50 01/15] ice: Implement LFC workaround
Thread-Index: AQHWWVg7YKSHttg6ZkSZ8WFwlFVcIKkKf5Pw
Date: Thu, 16 Jul 2020 17:47:29 +0000
Message-ID: <BN6PR1101MB2145160B8685DDC2C20408488C7F0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: e8b4e496-13cb-418c-77b3-08d829b04f41
x-ms-traffictypediagnostic: BN6PR11MB1268:
x-microsoft-antispam-prvs: <BN6PR11MB1268B13446A51DF2C34AFC678C7F0@BN6PR11MB1268.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a7oI2MBgGwB1prXVIPtYZsKoUlTnOPRZkC9YKmiyRIsjZIoY3On6NsK9kyh6GXpjVLZUwFCQ0QSSQqtNlvpYZyAFcaFSxQaRsm9ddo+FwJlz7tW+czS+4JBHSBzPa1EPs80aIvKA2VqHaCAWOekvxKGxWonb5Ds33zp/5flFL0VDHIB01QPgliqSd3T2GxnPILKz7vSDocJC4LqMdMslCbb7tSupFoOEj7UuEWofc5IiG6j9X/CR542zJ0ammKjzIY2eJpk5jMKDBgEmNEeUKMKP+6eC7pZzCh8TBmeNbdHowl4fsDY8vP6hH0RpzrJQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(376002)(396003)(136003)(346002)(6916009)(2906002)(9686003)(55016002)(478600001)(7696005)(186003)(64756008)(8936002)(316002)(66946007)(66556008)(66476007)(83380400001)(71200400001)(76116006)(26005)(5660300002)(53546011)(33656002)(52536014)(86362001)(8676002)(66446008)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: BvRAPsrBV4ifhcZm3szd5BBYp6xbPszdUIFuLAnvi/NwEqG6i1BbdHRqKrfanVWEDghGfuX6O3l0QWLA9MyprvpYIF2EsOLoMA5kZELDQ+sEQczy1hvxshhix+RM8h+R4lWOKGn75uDD6SzlAMMhIY2N/zX2g0DscYgTnE+cf9yQa7ZN4kftzV9FmpqyFt/R5+A3o7NH19ny5tk8ihrA/m2TAFas9poYPiEEuNW0oQfy156s4IY++2Y37JRJH9+q8VC+yVUQzve2cx1qKhh+w8U04WGsNTzNz0DBfg0Mli/JGtnxfCl8o487m/luFrMhsfUaLckmZ3V0kFy/Evke+f9FxXHaZf8e6DoitHr1USKN6qKQsISG3bjcnO1pjGEdfkF62wZcyGLnkN/PDXshsM5dg85rnICmSRgG79QiU0aiypVNL69Tr5AiHy+Ju5BWJKUpDZH6PuKlXNfpeGj6b7pAciwZdcXo6jQHptWvX0s=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8b4e496-13cb-418c-77b3-08d829b04f41
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 17:47:29.3078 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XMCKm+nbo6wKlZw6XxmyyakGeO8AZrAPAjoEFCHqrODZlrFm/G3aaTXkSz1R36U9DPLBXdzB7Vj1EqSpzu1H5zS9t8MSEH2sbCvFM3BA7jU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1268
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S50 01/15] ice: Implement LFC
 workaround
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
> Sent: Monday, July 13, 2020 1:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S50 01/15] ice: Implement LFC workaround
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> There is a bug where the LFC settings are not being preserved through a link
> event.  The registers in question are the ones that are touched (and
> restored) when a set_local_mib AQ command is performed.
> 
> On a link-up event, make sure that a set_local_mib is being performed.
> 
> Move the function ice_aq_set_lldp_mib() from the DCB specific ice_dcb.c to
> ice_common.c so that the driver always has access to this AQ command.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c  |  33 ++++++
>  drivers/net/ethernet/intel/ice/ice_common.h  |   3 +
>  drivers/net/ethernet/intel/ice/ice_dcb.c     |  33 ------
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c |   4 -
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.h |  11 ++
>  drivers/net/ethernet/intel/ice/ice_main.c    | 102 ++++++++++++++++++-
>  6 files changed, 148 insertions(+), 38 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
