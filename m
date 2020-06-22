Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B17F2040D4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 22:06:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4F27727A45;
	Mon, 22 Jun 2020 20:06:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zk+Kz5qBDAIS; Mon, 22 Jun 2020 20:06:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9BE90253E2;
	Mon, 22 Jun 2020 20:06:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B7EE1BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:06:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3DC2D203CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:06:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kZzlz8Wy584G for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 20:05:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id C548A226D0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:05:58 +0000 (UTC)
IronPort-SDR: xUcdHbv8rEiB6Bc3xKjAP+H/OBEoLfRtLMugZ70S9tu8iR3sWkVFz7/ZFVKgFfPI7WAW41rRO4
 FteoPXTmcEyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="205357461"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="205357461"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 13:05:57 -0700
IronPort-SDR: zcOp+6x9O5ySRh1++3E8Sc6vYgBe1QWHHePFk18JAxsl5gU3Lb2Gj5LwCIW8Bm+ixkaw8d/aMQ
 Kyd72JTBeoQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="318876336"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Jun 2020 13:05:56 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 13:05:56 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 22 Jun 2020 13:05:56 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 22 Jun 2020 13:05:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 22 Jun 2020 13:05:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bBIdi0YjbWoztJelM6CwcIXeBQKe6yv92jTRJaIu5YFSaoJ4nfe7n6a7Rqg+IQVRa4EYjXFHE1cCaFoA87Zpto5Mh1WvJQubKSCWqKN9at4sV89eiDW7v2pU0pPUB9hRee23jaEc6O7DWzNOx7fG+XCFtZAr4HX5RSxJRB87G2SsqeofkDDUMkvnnJ8DsCLjxGXijruvHm1UO6XoaPDU4UXelzv+HwUKMP4uVHHdOURBLxR5iOTTwAtd2/PUAtwMi2Ya/H1yKmKMV7evFExTHeSXI8OYsm+stZ0BopkLdN3a5t+gg8VU9LCVA1HuseSOVoH3Pim/puQgQZlnGSaAXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OwEvLR6vOdmEdPZjr3eyDdnECucpoXCzcYDQ2QAog5c=;
 b=WK5LvP07p91xrAYH+F9AeOHsh4vIkY8/YIGrEttLIDTdRkffx6APlmHHCLIXD4qbzVNfzGHyz8B4IZS7VwO6K6KN6g48Z3SK4ZMmONzD86J5ryBwyR7BCKFSuXhfIrxNKVaVKyzT+xXSPXG9qGvVqic30BS27BMRA1sBwjLnP9V/KHRoomBmwy70GrIWuvVR5oSP2M1DkoMjY1LK/NVM6V4yjZb12OaKQa+SBaV3fuMlXb5RCxjpcyfm0G5fbrMEJ6zxBib8nqSxNZBE88Y6uY5+u1NJxCXwM2Ip7qnLAszdt8/Y27UuCYGt6abwXf3XvvdOiEQ89iYW0WIJ9HuZlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OwEvLR6vOdmEdPZjr3eyDdnECucpoXCzcYDQ2QAog5c=;
 b=A6Tjv4RrovBmbQWjXmzjyT+Q4qujil5bRe/ONBRHMXo8qTyzYMmuXCLU90+Nwbsk5Z2PxKvgfnxL4UZ3XRuvuoeEUbi43TEpCPG0HRY03KlV+qDMh63OKSNmNdJRE8OBJUdA96hTmb146nj3ug6bxuDg7cI4v17wL6YTCDWcKiA=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1938.namprd11.prod.outlook.com
 (2603:10b6:404:105::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Mon, 22 Jun
 2020 20:05:54 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3109.027; Mon, 22 Jun 2020
 20:05:54 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 1/5] ice: add the virtchnl handler
 for AdminQ command
Thread-Index: AQHWRl3kekXLy87d+06CYGUgSqF/W6jlFCqw
Date: Mon, 22 Jun 2020 20:05:54 +0000
Message-ID: <BN6PR1101MB2145C8E544A3FAAAAAA9C98A8C970@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200619171022.9539-1-haiyue.wang@intel.com>
 <20200619171022.9539-2-haiyue.wang@intel.com>
In-Reply-To: <20200619171022.9539-2-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c5b5ea1d-7b5d-49b9-b4d3-08d816e7abc2
x-ms-traffictypediagnostic: BN6PR11MB1938:
x-microsoft-antispam-prvs: <BN6PR11MB1938CE4565C78844D6118B398C970@BN6PR11MB1938.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0442E569BC
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KhBJlpguV3p/Rz+Dfdftwrht9nAzoyyPeOkwZkRUi/Z5ino7JIwi4FskS82a2WX7bKrJAHZxLCppHqPhs+cKP9BtsgCjctThV9hZFsr/Sq3Aqoywm+oU67gyx+tb+UlEzWD0ItaB9iUyjo9pXYIoJ0dJdvK1S76a4dy9yu9lkW86oTgEC3sLxj2iTCAMhuykn9gvQKaA9eMCcBQL/W8sAH84pIYDo+ngXHyyi6cS2qUgcn2PiBiAYtDynZ5lNZKq5SShRqNVnu4BgpzveorgsQafyAKh3n4Zo6sYYstVsFFLeB4Fl6+weB4aIKwfEY7P
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(136003)(396003)(39860400002)(366004)(83380400001)(26005)(8676002)(7696005)(53546011)(316002)(55016002)(2906002)(186003)(9686003)(52536014)(478600001)(5660300002)(71200400001)(66946007)(6506007)(76116006)(66556008)(64756008)(8936002)(33656002)(6916009)(86362001)(66446008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: cPgc+8XV0b74tyQJJnHEEcHxqWjD6FPneoVBx5T1JoSogpCx6w8A+mgGWdBbuWkdZzsFFgitYSI8g53u44mnwcz6Ji2ASTzswRde/CBJdeyO7sM3jLyrEHM67Ibloaev5gepmHWZD/rTpjYh5qIz6/As44dR0rrtOySfVfPRKZSua5JRiye9EXlt0acO54+aqfmozjantYRuf+TzfD57XTnR9tGF73OXgIOw8O2ohJ8KHxi9OB/ItYxqvYXYXzzL/c2ARUqOxJ21ore7JICqq/2TOediT/xNEagGOFl9yM4xQ8YgTZvM2iERoAJMi5uC4QOINqR6E+718cDp+rFxtfZ0GGWYRNvoFcdaSEW538uT/7XBgZbbzo0QdM/eS28y0od/smApmSLorTjqGFr3mcChR3bGNflCffS8tizkEst4YW/4K/hkPDqifmpRZhqqhh05iqQfk6uVpX2W2Jjy4+tVsby8AsxtvzdYo1KXCLw=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c5b5ea1d-7b5d-49b9-b4d3-08d816e7abc2
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2020 20:05:54.6296 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kUUwyVXrEWoeYR3qs9JJrPHEN0b1AS5d5r/wLwMzjskvTUPVPs5YV2vlEjqq3vgwo2S0BRCvVjaxINIM0DplcfOjQGmINsPVaTPvD+FA6j0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1938
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 1/5] ice: add the virtchnl handler
 for AdminQ command
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
> Haiyue Wang
> Sent: Friday, June 19, 2020 10:10 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2 1/5] ice: add the virtchnl handler for
> AdminQ command
> 
> The DCF (Device Config Function) is a named trust VF (alway with ID 0, single
> entity per PF port) that can act as a sole controlling entity to exercise advance
> functionality such as adding switch rules for the rest of VFs.
> 
> To achieve this approach, this VF is permitted to send some basic AdminQ
> commands to the PF through virtual channel (mailbox), then the PF driver
> sends these commands to the firmware, and returns the response to the VF
> again through virtual channel.
> 
> The AdminQ command from DCF is split into two parts: one is the AdminQ
> descriptor, the other is the buffer (the descriptor has BUF flag set).
> These two parts should be sent in order, so that the PF can handle them
> correctly.
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   2 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   2 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   6 +
>  drivers/net/ethernet/intel/ice/ice_dcf.c      |  49 +++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  20 +++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 130 ++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   1 +
>  include/linux/avf/virtchnl.h                  |  10 ++
>  8 files changed, 219 insertions(+), 1 deletion(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_dcf.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_dcf.h


Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
