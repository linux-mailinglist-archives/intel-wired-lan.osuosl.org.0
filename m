Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 296F3222A65
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 19:49:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C7A1A26807;
	Thu, 16 Jul 2020 17:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LIieEfH7HAKY; Thu, 16 Jul 2020 17:49:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6F73C262F9;
	Thu, 16 Jul 2020 17:49:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B77E1BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:49:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1214A8806F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:49:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X3bodCzxFF0J for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 17:49:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 64C0687EFB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:49:35 +0000 (UTC)
IronPort-SDR: 1vlUVDgTJPYtGe8tcUO2LNAbcYDm7gd/s/MoO5s68CbXPOgC0LTRfZMQPkGGglq/VsFhp8hrUp
 1EMdLmT0x7WQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="210995972"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="210995972"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:49:34 -0700
IronPort-SDR: SGacw2HoIpdezTI3QH+71y3CWARt1tb2umYdoMMnQ/vq8PSB29457EVt/yIwKSnNQplhdcnlPq
 Eza7WEb6Bm0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="430575590"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga004.jf.intel.com with ESMTP; 16 Jul 2020 10:49:34 -0700
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:49:33 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx115.amr.corp.intel.com (10.18.116.19) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:49:33 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 16 Jul 2020 10:49:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mJOUtbswY/evI3S2bLIJ3wxkC1ehpL77fkKgFOZ7XoXgIuw5IEUJHHFzbb0PTKQ3kkgHIB4ob4+0pmt9OY3ock/DPcLanlbszGm6BOrrDp2/q6qbl32lT1Zj4luxvAFMbFhAQgQl25zQjJJksyRbhBcvPXV+ssO9hDPHkeK8oBWCy+aBTlP0WkGarHIbkMiZjjnKErtqSogPr0EtCdHQNQEXTI0Qo2xnDrUnG8ajboWAPLAE4XRuVFKGf8cGkF3BLmPJ4bepDbbxQa+Up9SmOBPc2hioHhCi72m4MMkLcMHVlwofGCb9Ze+jVHpc/5HEBP8vaMq6S0BbmumpKKKEzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xCt3hL7juxNt+nB5ae3tGoQ0IuT5UVDMCY4FCAZjxdM=;
 b=dL4cB04vu2HkKCLJtzQW6c1HXx1OqRqnDkdJAAD/8ug/5yz6Hy+Sqv/XA2COAV/ExzBpu7F6pOlCPCKJXmBpq5fy42aByPjZQpMjhpD6yv7uQL48QDd3E/vFF9CZCbNpDJTtnSlTe+qJjzxCD0J5fuZNcd9CpQ8Js9128JiuP6Vzgy2Wo7PhtJzp2moD3aC9sg9s7Sugs11bEg7C7o9vYkn3L6hv15Z9J2BcO1ml6sXO7IL7+ssLZRC4u9ildN9D6hrNnVhtIZYCl2fOkWgzwdH5j1dRrJYbFudcqfTrtdhQwJLq5CWXYz25yxabcnSS4q/cNDBAkhl+T0R/D9T6Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xCt3hL7juxNt+nB5ae3tGoQ0IuT5UVDMCY4FCAZjxdM=;
 b=b2Z79zGCLb4qL027iQpFi89Jj+l+8SnuEG27ov85b3gyqdndbtEoxNQGqN6E2MkurjSIHbkgrH3kxNVkh5zAV/G44TkTnBL1WGEeYY5JWBLFzMsfU3yw9rP6BMEPkzCIOIrjdbimRt85QXwcfRhG/1OZKRlDyaQ3NHrgxQ9OV8c=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1332.namprd11.prod.outlook.com
 (2603:10b6:404:48::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.22; Thu, 16 Jul
 2020 17:49:28 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.018; Thu, 16 Jul 2020
 17:49:28 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S50 13/15] ice: reduce scope of variable
Thread-Index: AQHWWVg+aBUBSJLJp0OvP6F20n5QDakKgCVw
Date: Thu, 16 Jul 2020 17:49:28 +0000
Message-ID: <BN6PR1101MB2145FBED2F8C1A0F17918B998C7F0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
 <20200713205318.32425-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20200713205318.32425-13-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 9cd1a1c5-b30d-4302-ff60-08d829b0967c
x-ms-traffictypediagnostic: BN6PR11MB1332:
x-microsoft-antispam-prvs: <BN6PR11MB1332F62C95BC144E6D5B77918C7F0@BN6PR11MB1332.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lZ5C6HaEmeHM0jMXbnrENSE/YCXaepeZv6RY6nS3qKmFA23BS21lED33nMBJkN50HGd1631vS50yNAlhRMK1z4dYmjjTXvOJpN9pwGPInWfp5Zi1VwMi6oimvz3pyW7MRbbNOM4mqnqidzIcY1bkOl2PtQaQCJk4iaE7T0bMZumFIsfOP8q/Yi5bcktqVq/na3X3jc0ybrKMDvDMUHkE0TWnqJ07wkDOsjJAaj3sQbfK4avwmATVIu69EbyL9q+P1Aqpp3ZnPPeYVVs3E578QfqyWovGlbmI1oOYPmRoqzqpowLg9XEoYe0tl4e2rYiZgppWK5kWcghgzi42X3IWTg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(346002)(376002)(396003)(366004)(8676002)(8936002)(66476007)(33656002)(9686003)(5660300002)(26005)(52536014)(66446008)(66556008)(316002)(53546011)(4744005)(55016002)(6506007)(83380400001)(64756008)(186003)(71200400001)(86362001)(6916009)(2906002)(478600001)(66946007)(76116006)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Jf3axV1rKua6xZmtGThQ89t0viRpWpS66YNAXTZ9mPTOhen1N0SWn5DX5Cr8FCj2QDZCbrxfkoTH5j8GuT+wbEDugVz1ME1i0KrCvgY7f6nN0DeQ2E5+YtlfvTC7p9gJXWjDicE37OGV8qklYuIBRDM00IXkEaviQOdiy0DO0yVfuEP8KFucZhvIg9Q+NbyGKXOPPxsm9Jxju65TfXazKYnVfAb7ig3uIVbg00BwDbOhhA7M6Z3/FVeKrpv7+RSqQt3u5/QyLCFK279J71Nxqk90qLINXH3yTuwGpY9geyxIrXEpOYUHhoLIMtXH2+Hczm5k71Lx+aL1D27YQ2IqOytdsltXEV6AIOzeqze28rDxC57jx/eO/fy28LRIkv6NUlScaO5WAOS1XL2k0OhvVZH3D7rTUH1/CzhI+QgjmC2oaHS64/aDSpBAT8XW1k38iEo3aqeFSX/e2WvM126CccUt32TI+4wQiRqgzubvWSg/yqh2tQo05GE/QRbvTi99
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cd1a1c5-b30d-4302-ff60-08d829b0967c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 17:49:28.8072 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 45PCdczkBMG5L/mV1jjpeMyHs64PN2MdtAny/QXAx1WECQkyZSu1eQatkhr0vwW9DDOoJhqaDmaLJXxtp03tzADzgjTMk0I9V0wy+h9aABI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1332
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S50 13/15] ice: reduce scope of
 variable
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
> Subject: [Intel-wired-lan] [PATCH S50 13/15] ice: reduce scope of variable
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> The scope of the macro local variable 'i' can be reduced.  Do so to avoid static
> analysis tools from complaining.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_controlq.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
