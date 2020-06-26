Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DDE20B532
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2020 17:48:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D568686135;
	Fri, 26 Jun 2020 15:48:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3MHYHuIcZjhn; Fri, 26 Jun 2020 15:48:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 78E9F86CF6;
	Fri, 26 Jun 2020 15:48:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBBE01BF295
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 15:48:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AC0EA204B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 15:48:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iV6w2KRAYeFM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2020 15:48:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id BFDAF20354
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2020 15:48:26 +0000 (UTC)
IronPort-SDR: Lf7dKyUDvO9hCeSgd7DL8TO0Udc5RqFbhRsDa3tqGfCj7onNGwkorAnya0I7uXd0Itvkg5jIOD
 bdf2gm/uWErg==
X-IronPort-AV: E=McAfee;i="6000,8403,9664"; a="210443003"
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="210443003"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 08:48:25 -0700
IronPort-SDR: S0xvYxcwMa8oaWKrnQ4LC8X9lF4tqeM7SVGOqyEakhx31h/z9ND1XlYA0HP5q2TEblBpxGrPRr
 0f0kYA3NFtKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="385802852"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2020 08:48:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jun 2020 08:48:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 26 Jun 2020 08:48:24 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 26 Jun 2020 08:48:24 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.53) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 26 Jun 2020 08:48:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WZS3RGjpziT5QNDyoBQ4YgehMYRBhxfnC9dkpN22rNGam6E96zQtY6jqTAkJRxXu9zSc3M7pbxYostp9ThQPP8lR4xSeUtBS6ZNph/oqlsdEife4kD7F82MlCXqo0p8ILf3/oMoAj+vJO16x852GgLUklmnw+JMps51/JKUAHi+VAJTRN4RSgEJlj21UArQfXDpn7mHoZrnms2v8CPfvL/GmQHtAca+r6vVGe7hj3/p3qyoXkPy8LxaKopXvh5AUEgXB2g3xwTlDTolWGp+dVYGWsr/NBU9QubQvsh37bB+uC7H3fAllvMVKs4bvFkGj/oIOLhjBeHJJLP6l2xsKyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m9Lpe6c++1GJhO7kIsdcPq9V2pE03A41vQrcdfk2PKo=;
 b=FioTBY0fpqwtdB9efZ16NTXSbS7Q3cYJEyClFaIGi2u9y7F5RXi5Noy6FIq3a0Gg+dGlMp5IQRcFGTRhGlGaRARdhAsrn6SrG3jlmWLKBStCAurbtly7Dr4y+jveFX6aG3GFhxB/p3bAlac8aNe0Ds1pgwnAomgo149hT0YRvgBRfa0o9bsqHX4qmgAlfbbIHtd6eHCT3zerCCHzl6IshQk2Atvaeow6ngH8lYsnc04mpWMpR2MsoNrtw7jwu+Nq4uHSzMrMTi3b9uyMh7OhbsozpAKFaAdepY1XmpH/Mvt+WO4vFzaWMSR5nFrC9+uIoiOF7TjaL+Gm7iyalA/org==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m9Lpe6c++1GJhO7kIsdcPq9V2pE03A41vQrcdfk2PKo=;
 b=culhrW8h+6a+15tR+Kn0e1CuKWTycF+SQ7MmFageB4jvEP0fZq/wZbzlfmoKWfGBGc4HaVSHIV2/F/YpIL6XOtBDBuAzJOccCzSZW4NhfpIjq4Ja2vJ9DubsQ6oZZvhH+HOZ6eG4wvuD0Nw9stwAYoGNrVICjR0AXGSqa13pP+o=
Received: from DM5PR1101MB2154.namprd11.prod.outlook.com (2603:10b6:4:4e::20)
 by DM5PR11MB1945.namprd11.prod.outlook.com (2603:10b6:3:10b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.23; Fri, 26 Jun
 2020 15:48:22 +0000
Received: from DM5PR1101MB2154.namprd11.prod.outlook.com
 ([fe80::f1a8:9702:fdc9:9fa6]) by DM5PR1101MB2154.namprd11.prod.outlook.com
 ([fe80::f1a8:9702:fdc9:9fa6%2]) with mapi id 15.20.3131.021; Fri, 26 Jun 2020
 15:48:22 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue] ixgbe: Cleanup unneeded delay in
 ethtool test
Thread-Index: AQHWS3m7tjfCxySWxU60G594TLkeE6jrC1Ig
Date: Fri, 26 Jun 2020 15:48:22 +0000
Message-ID: <DM5PR1101MB2154A1E21C3A9BB19E9495E68C930@DM5PR1101MB2154.namprd11.prod.outlook.com>
References: <20200626052141.1310945-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20200626052141.1310945-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 600835a8-fffc-4baa-56dc-08d819e85b24
x-ms-traffictypediagnostic: DM5PR11MB1945:
x-microsoft-antispam-prvs: <DM5PR11MB1945C31286C41F9293C65F7E8C930@DM5PR11MB1945.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 0446F0FCE1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CEdn3CGKmwRpijGDOE+IzIgcDHIpejmgeeLaiTPA6kel2SX4VSJjA7J1Accj6v7ZsfhBxJz5n7yZhmJtG1iqYuiCjwWaF8KBZ2b1KHaiy3x6DUmbG9WgUlgXJAYv6xE744KqnO7rAlySl7Oee02rp+MTAY1wv2x+gJe9tu2rk7jCeWHXgCViKwdcrp90Xn/+6iHKpbRTWjOkfKA9mSAtWkcZsV3KFKb5SB4fNct3R2C14daMx7YL21ldue8eeKXumUu5oinV1y4vZaSaaJepYCj2KLT21051oafQ9lHvn/7YUgWR2SuqerEfqnUQvszF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1101MB2154.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(366004)(39860400002)(136003)(66946007)(71200400001)(26005)(2906002)(66446008)(66476007)(66556008)(64756008)(33656002)(316002)(186003)(6506007)(7696005)(53546011)(83380400001)(86362001)(55016002)(76116006)(9686003)(8936002)(8676002)(5660300002)(52536014)(478600001)(6916009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: ysJQfwt5C4CiukKM03PavaDo8yqVt8KZkuYF5L/qSxfoWu0I5wQaov+AF5fhzNjFBLNEQpU/d/cCk4UDi2XuTUUjza0/ZDB2JLyW5d6sAmPFZdSM1AWjSnk0k+LjtcKEHF5oSJjTocdakX6X3sMmDll13xzdRmdtshdC2xqIEhmtRMIxFEqT8AtFcfUHsVFQtWo6nYg/KCwGY1SiCsxHbnzlSzKqtbKAuibH/ok6P/wnh4F2I0/1T5Skp18/qQnqmwhIXQPXYJxnPsVWgWV9K3mXzB0+Sft8EOZt4aF4taSm+2aNxKbn+2ym0dsMBwuVFKyc8zfNWbgLkCVdWFDnung4qv1r6FGYJnYXj3klzNgmRT5IlHnHwU/F/kuSkPlp/nUiAf5AJbBU5Ty9EWDb/TJXR/OAauaEtrR5Yif6aIgwysWGEVLkNfGhZ7sp/SVE3Fg6ZmldlI/x5FE4WUznd4iZNkMXJ288/AwAbjDot6sKghQx/egxX/oOMHOQMS18
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2154.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 600835a8-fffc-4baa-56dc-08d819e85b24
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2020 15:48:22.4290 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AgAUz44Ai/CAjQAXryvylJxEidVhUE61oWOYHurJhzLjy0nKSP4L5DH/qU1/dm2yRN2cJODP9e/fTMzTIhsRz7gITYU2SdSeuO/YhLOJzf4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1945
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue] ixgbe: Cleanup unneeded delay in
 ethtool test
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
> Jeff Kirsher
> Sent: Thursday, June 25, 2020 10:22 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Jack Vogel
> <jack.vogel@oracle.com>; Venkat Venkatsubra
> <venkat.x.venkatsubra@oracle.com>
> Subject: [Intel-wired-lan] [next-queue] ixgbe: Cleanup unneeded delay in
> ethtool test
> 
> There is a 4 seconds delay in ixgbe_diag_test() that is holding up other ioctls
> such as SIOCGIFCONF that Oracle database applications use.
> One of Oracle's product runs "ethtool -t ethX online" periodically for system
> monitoring and that is impacting database applications that use SIOCGIFCONF
> at that same time.
> 
> This 4 second delay was needed in out early 1GbE parts to give the PHY time
> to recover from a reset.  This code was carried forward to the 10 GbE driver
> even it was not needed for the supported PHYs in the ixgbe driver.
> 
> CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> CC: Jack Vogel <jack.vogel@oracle.com>
> Reported-by: Venkat Venkatsubra <venkat.x.venkatsubra@oracle.com>
> Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
