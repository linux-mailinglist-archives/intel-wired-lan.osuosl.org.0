Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D055231424
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jul 2020 22:45:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5559588557;
	Tue, 28 Jul 2020 20:45:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wtmxK3oRPRtm; Tue, 28 Jul 2020 20:45:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA05B88531;
	Tue, 28 Jul 2020 20:45:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6BBE41BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 20:45:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 63E0B881BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 20:45:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nSYKwKAAip73 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jul 2020 20:45:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5533786937
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 20:45:37 +0000 (UTC)
IronPort-SDR: ETh5b3seyYwTY2Fx/tB1T1KCnXto0A5GTwJ/AsDsFDJvN8Kh2b/tR8IIhVp+BYf2aL3j2J+GuF
 QbHncbD9ZVjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="138838812"
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="138838812"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 13:45:36 -0700
IronPort-SDR: KM/NH6MMj1w3nAmvnndH95N82qhH7J3rcvWCki2y+a4QYvAEh3dDrjdrKQ9sIBmM4McaStT79M
 F/IUEeFncZSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="320525064"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga008.jf.intel.com with ESMTP; 28 Jul 2020 13:45:36 -0700
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Jul 2020 13:45:36 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX116.amr.corp.intel.com (10.22.240.14) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Jul 2020 13:45:36 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.57) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 28 Jul 2020 13:44:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FPjge/4hm4T0a/Ysl+MaxCddHLxt6ZPhPM59Mk0VRYIudxqts6lznDsKt29H8c/wSa7YoARi6TyRRKNOBvXMrQOt+5aUnet9+rDizyu0c/8yl5dY8yySAvmWqmqLP5jLYbYobFkrtKR21OOpOOWHTAUsFBvHL2et1fYFUIOEWZngXUGtTM5Sk4JqM2aPRtnK1JcZcmJN2/eumSIUy9lbFuKZdUGkqWU/lDW/62APnenWjUZD0qi6LsFVVNYuI4lXpC6xaLgHE+1b1zGwSbY5Ldv6NxgIlq5U43HWG4IbNtmsONR80fEvVM7oOtmDwPV7P5HTb+Zc+64ZG/ScXF8a8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JvPxnY47ZSevdJ3bEqzzDSHbUmnRnPsE+HxAgyDufYE=;
 b=TI4bSh3q0QKtoWhkXTCVY5v1+MReUv7j5yZaxmEv24g81tdXYhgJ65OVDOLnV7oNcNFsZTP5mBEjcjfjgGXLW8lDGBFzUlkJo1YGMMAnUlTuyWa88+HunyiqP64fwebZsi2H7z03OGhW12PuPK4Tf0JeUJViL9SuGbITS1/6vxWFpXbXEaZNQ2wXnQBCPVSjPCbH7Mmw75Uhju5rCEfqqBjmuIJjgRQG3Wq44RZHmEpqjlGLBlBvHO2uS9i3WPwuyuyQKCHzP+NkB7CDYMv6BZo3xNBUdEhuR/9tz0GrszKaxaE4kxhq9uknbtu/M4EBK2bx2kjjfun7TV85mFtgNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JvPxnY47ZSevdJ3bEqzzDSHbUmnRnPsE+HxAgyDufYE=;
 b=V3Ql+yHkjeImsU3fWQeH2DSWyHod8gvI5y8mZ/otyMIhIQEIJnySNT/HPFi+JQ5jXer07FnXplm64/PZO5TfLG98qGC5ZqRwhDFHOfL07Z4KCi+a0Ah8kpgzahMRmPcOJN2B9clQES//AkeNOF+6mLf5b4iiAO9G5YDAePxOXqo=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3913.namprd11.prod.outlook.com (2603:10b6:5:193::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3216.25; Tue, 28 Jul 2020 20:43:36 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3216.033; Tue, 28 Jul 2020
 20:43:36 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Suraj Upadhyay <usuraj35@gmail.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "kuba@kernel.org" <kuba@kernel.org>
Thread-Topic: [PATCH 1/4] e1000/e1000_ethtool.c: Remove unnecessary usages of
 memset
Thread-Index: AQHWWhbEk0DPjDT8REuZZOiBC0xNLakdi1kA
Date: Tue, 28 Jul 2020 20:43:36 +0000
Message-ID: <DM6PR11MB2890145ABAA1BA9FEA288F8BBC730@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200714194035.GA21382@blackclown>
In-Reply-To: <20200714194035.GA21382@blackclown>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.173.209]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8ee957ad-8751-46ad-868b-08d83336e6f8
x-ms-traffictypediagnostic: DM6PR11MB3913:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3913AF8375FEF68B176AEC44BC730@DM6PR11MB3913.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:439;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8yGK0gvde7Rqh1fHkjWFn5O/AmcJajHz8BGow23L8vUexIo1p7Ze9VrG84JaftVkLUSn3/eTNS0ph4bFdXy/SqnQSvywdnBwN4qFepIpfpV/FtfP4TiiiLYxykY5u+hu9aNvTKXxjrcDsr1ciN7CTxz5afaFAxUrkJJHd7MDSorMF6GqDFS1xGmyH6F5Fpwo/1QspeG6VBqWBtZF00/nAJqqzGb4RiJ1LqPOEiTjnX1uYYIcsrN6Cw4dPgiiqG5qS+cPVsd9dshlFA4iWQq5Ia/LaIC/akRJApbIuEQGXZQ8dDZ98ZCF/N/mfKhniA+6PZ5uvq3HlBj2DlqPaLb0XQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(478600001)(66946007)(54906003)(71200400001)(316002)(64756008)(66556008)(66446008)(76116006)(4326008)(86362001)(110136005)(4744005)(2906002)(66476007)(52536014)(186003)(55016002)(6506007)(53546011)(26005)(9686003)(83380400001)(7696005)(8936002)(8676002)(5660300002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: sutXMh1ppgq5xBPZOTCzoiAsCadtLSQ8QXbhL3b4StmBLy6KeVzti9u1zdrGO0iTGwnZ5t8rNlW0keTOi7gNv0xb/cAB2OVVSbgvL7q47bgcd2uQuwsEcvpOGtYXmkdCBdH+kXl85M4hlLk39zaz4WhsPkUlXYzbXhEIOXF3IPDuUxKTmt2JKE2f7Ks9gbrTEPwuaPlIUrm98faNOQlFCN+b3qq61oKN6FhXwYZ/Kr3RlDWX9X2yOse3QEjHi294CtuxdQzgsukk4fLsdqkOjhV0tapp8AkI99cgJ5mjgYcW2wtSW3VfNzrzvYYRW6KOsYlfVcSdRviJlP51cT8iv8PbbO0IIMwAUcW+dtXmdv5ePzl8d82OIPiPRBRrTbh7wymyNp0K4hwyDxZoKR2NUlWmHdbAE0QXEM3s9xGJuGtrdpANYTrJcX2o76I2w4OxNpJuTBZMztN0K4AhUv639RuV4vlpe2XgWz78E56z3oLKmN6xdHin6kMjsEkBzehT
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ee957ad-8751-46ad-868b-08d83336e6f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2020 20:43:36.7713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: owZNXsaKlBd+oG9Z++nH391X1L5rErGJ7d0SkJdrJLS7fI9GrRF83NGRgVgChWYYQDoFJHgmvr6alWTfpTQ0Xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3913
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 1/4] e1000/e1000_ethtool.c: Remove
 unnecessary usages of memset
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Suraj Upadhyay <usuraj35@gmail.com>
> Sent: Tuesday, July 14, 2020 12:41 PM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; davem@davemloft.net;
> kuba@kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; kernel-janitors@vger.kernel.org
> Subject: [PATCH 1/4] e1000/e1000_ethtool.c: Remove unnecessary usages of
> memset
> 
> Replace memsets of 1 byte with simple assignments.
> Issue reported by checkpatch.pl.
> 
> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> ---
>  drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
