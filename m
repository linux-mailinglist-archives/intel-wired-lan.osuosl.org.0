Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353EA28C362
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Oct 2020 22:53:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E8ADD87953;
	Mon, 12 Oct 2020 20:53:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i8VaBjb5Vr98; Mon, 12 Oct 2020 20:53:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5595F87956;
	Mon, 12 Oct 2020 20:53:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 055081BF304
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 20:53:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DE8C2203B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 20:53:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lABR+gFm9JsF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Oct 2020 20:53:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id BA69022D0D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 20:53:43 +0000 (UTC)
IronPort-SDR: 1LtDxYyXFvKEnseZE+uep8TjEGQRGNTEkbHwRkXA9rAlY6PXrJU8yHyPdSPf3bvVEKPEgN2lwN
 FFglr/6bCJ/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="229982129"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="229982129"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 13:53:43 -0700
IronPort-SDR: ILwRHcytomHuv0MG53T6wxLYJ6aFoBpuEtwv3Kbqiiq2XcKLLkaMkc2CBWcFnGNWWmm4AJGwR2
 99QpJ+WS2cDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="329878221"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga002.jf.intel.com with ESMTP; 12 Oct 2020 13:53:42 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 13:53:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 12 Oct 2020 13:53:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 12 Oct 2020 13:53:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wfo4lAW/WH7rklaeDp9HlAvnrl7RN2C68fOfxjJFSx7I5gKrdeYeYfk3buFBttg0FHM/4folh80Fnd+g/kM0KwlNw/w4t7SzUIx68sYRUvcH7Q/dzdf6y5IYZKxdUF4xFAErQ5wWtlXg9CbC04NBeS647e/2BKTnRdjBBgS/Z6xhFoexKu8y6DA3Nw02c5tsggJnkZ0XUwxgAEh6HdpUvdYc3UYIxfh1i9Kh1r8EIFqBVWuuhqAh015f9+zMXJ1k/8CRqeL4C5tzkJ+QnD2lEKaTuP0fzczYeo3QcXqiRHw2ka/59+UtPKyrpk+VvipyjpfNx5XFecXWM4+i6JMvXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2f1KcZXgeR+qKprh3OGdNcKj8RFlEsTKIPGF80zv+HM=;
 b=JbjSem0+AlB8KE4xZbaV2mIk6SGVOMxe/U4ch2vAri8KhUV/XioBsPrCv+PkVizfmiyw1ZaF0JTtCWApDb6P3aZgZdda2XGRmOg1rf2mjrz6p53PV66d1SWAl1y1N/haW/3/5jZiPY/pYQt4xsH8lY5tOUIaTZvL9hnTsQB32ZQGHrB8RwkdUd4kZUcH002L4ccmVUoQ22iIDQsezyuLLiC0GrjVkWSQu8ul8iz/SQW4k29995JAkBh7ft4sWUaNn+HBKCmtkz8rcO5nnjFX5vGLgsJeWlwUeiL1W42Q4mAECOZW80YX/u0NBA+Vm1ILUiE62rrcyzhk1sEN9wFJ4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2f1KcZXgeR+qKprh3OGdNcKj8RFlEsTKIPGF80zv+HM=;
 b=GU8NbubeBshjqpd+1u0juG2YS2ZB4etGxik1Fh3mSpoGYJAGXZBczzjKTCOoYNA11GL/GRz73H1kW2ZOxDvqacEjipPnezen3U8+H/j4yAY3dwKUMnSueFzT3k0cljG5N8V1/T4C/xclN/XHXS65is3kToiAmP1h/Vgpzxp0o94=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3244.namprd11.prod.outlook.com (2603:10b6:5:8::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.21; Mon, 12 Oct 2020 20:53:40 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c%5]) with mapi id 15.20.3455.029; Mon, 12 Oct 2020
 20:53:40 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S53 12/15] ice: cleanup misleading
 comment
Thread-Index: AQHWjS/feyAB+afpzUu0896+0JHSLKmUmP6Q
Date: Mon, 12 Oct 2020 20:53:40 +0000
Message-ID: <DM6PR11MB28908C36FEFAC998517653A3BC070@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
 <20200917201347.81570-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20200917201347.81570-12-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.179.168]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 32337a53-0f21-4516-884a-08d86ef0e665
x-ms-traffictypediagnostic: DM6PR11MB3244:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3244570E9CC9335CAD79ACF2BC070@DM6PR11MB3244.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DYAVD5jmqhJDKTH2nNc0bA+r/Evgf9LfBOBo7XHEPJDlmapvJPWsfjkYt/sPkkIn1PG5jCxaQmK2uATirUVJ6OcLmOo4LGJpOXUMWzHfKiICkugnj2cCnc2tZtb9/X2i/iXztY9xaE7B39o96uUrJ+U55drrK6P4LDB1gzUFdi+xmqyGOKtT7c6BkD+RJwL7qjesXKLvkc5LTiM/xQKXyz48UrHcrMbExjKZvwUCZ5pa+xb3HvnqLu5Z2D1QWhSO/L3emlx6g1lAZ/+0eC4b3rD/xfdq4zfECQa7I0m0/2nIeegXmiISgUvkGOOvD3mveeI5T/yO/nceIiVLGGpbtA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(366004)(39860400002)(136003)(396003)(478600001)(4744005)(7696005)(83380400001)(110136005)(33656002)(316002)(66946007)(76116006)(66556008)(64756008)(66446008)(9686003)(53546011)(6506007)(71200400001)(86362001)(8936002)(186003)(52536014)(55016002)(5660300002)(2906002)(26005)(66476007)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 8rKksVTjBAggmeLVhHzwf8IVRFzmFP4gIHsSXpiKQWNcCY0TwoKMAdEZk3+F7kZiF6K17baLSTgjISKx1EYuOS2mm0GD/gaXl1GHuFe+j8e1dbklqGIco47EiboSMKBH1qkq3mMN6GvbMPdcux1dZNYFe3uBWIKhy8jPKNKzxXP32MNvwGeFP+7pNfCwso5LufS8gco9Yj3fETPtDFL1qygsdbCMhNyErO+RF7DoI6hY5vULnCMJ8XZUwVldN5IpMo+zJdfStrZfZIZz4VBP+UQh7LlBvGDs0vJR6JSe72N2nNEx3Fkm0CWhifFuEY2F6QNSNxn5+d7iX5JKOvWpbd87qDVgBMtNHh50U0XQuBdmz5uGPOSBiFe0ByiMrisga+MtBZZhbWf3ucOxXE80gmksyU7UdqEjuwubaOgVEGw1kYRCd2vndzpZO2Mqs0vOXCSimKBLFaeOKg7dC+NVXaSqwOrrYd8je/zD/PgqwXHvYMru0oVzhPkTbVHqkF0A66OgFFFT2RxwNljkkqh+06U+zES0w8gH+E9rVXHFZViSxMwNvtAPCknFiQs2CZNP2lJy+J3YnRO4KDfMfP3YFwTTGqh3OL9OOg/ZizdK9u2AdiOfMOIj/ENRUP9IMrtHPT/n5/woOkbN73OFnVPuaA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32337a53-0f21-4516-884a-08d86ef0e665
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2020 20:53:40.8276 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5CiZyLIfZO1c08fQU37y9dE/qt6lSNai4JLyN7zF5/khj1H8BqhePFO0uSfO5Amd8+pH1wj9jIJcR64KaXRDuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3244
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S53 12/15] ice: cleanup misleading
 comment
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Thursday, September 17, 2020 1:14 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S53 12/15] ice: cleanup misleading
> comment
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> The maximum Admin Queue buffer size and NVM shadow RAM sector size
> are both
> 4 Kilobytes. Some comments refer to those as 4Kb which can be confused
> with
> 4 Kilobits. Update the comments to use the commonly used KB symbol
> instead.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_nvm.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
