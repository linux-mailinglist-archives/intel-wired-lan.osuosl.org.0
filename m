Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E1725398C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Aug 2020 23:12:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06FC386BBB;
	Wed, 26 Aug 2020 21:12:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yagSvE6lc5Ni; Wed, 26 Aug 2020 21:12:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6329C86BBD;
	Wed, 26 Aug 2020 21:12:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C70BB1BF37E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 21:12:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BF67F86BB1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 21:12:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UjRjDB_QO125 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Aug 2020 21:12:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8653C86BA7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 21:12:46 +0000 (UTC)
IronPort-SDR: T7dSmkkLta61Ng8UGjQi5QAIgYuuDc7Qgnrqggfd+H4duezWBj+bNQaN7zcwjiPCjiBO3KJi9Y
 +t/Voz48NUpA==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="153951517"
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="153951517"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 14:12:45 -0700
IronPort-SDR: We/FIOv6TG2yCuS+LV+XOgLNTCj+SCGFJT4Ye2GlAZXHDwGdwViyDp6Nir99j/hu53Mc1vLLee
 M35GtDUP90gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="299611288"
Received: from orsmsx606-2.jf.intel.com (HELO ORSMSX606.amr.corp.intel.com)
 ([10.22.229.86])
 by orsmga006.jf.intel.com with ESMTP; 26 Aug 2020 14:12:45 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Aug 2020 14:12:45 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 26 Aug 2020 14:12:45 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX112.amr.corp.intel.com (10.22.240.13) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Aug 2020 14:12:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Aug 2020 14:12:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kRTiiWT7fBvurdFVlP2fBPGp8TLUdYaVrY7tDOaUBIw7TYcRppdY8MfWXOMV2CMbcNX0lhh1AsDekL0nz2c/wb8boPojaZ0PGKwrktEIQZ9GOfsxw1eDsKb4fPGcjBvXMYOPYgV5CYfF2wNHsTt4+YiwqwyUU9JAfWa0FISAQ40kskOXAKGOo8rupEmy+wFT5UnVWFBTzUAVjLiEvoSX7FAteC4K7LgzH6DHmf4Ej516JOVlL5mafgMzKDGuJSE6VFlYLVI9YU7AcMfEbtfpTphjh4JAShRwSIu43nghKhAYo+LCgrw0cHFGVzNnLue3lelZ/0abF/QgmH5e5LvIcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XgUiZxys5cAZKoLDT2QKvkzN3n0/EXYxndN26VNfR3c=;
 b=KhFZq8wMoaWm+UwaL+69oTIWYtvl1DTKMH0u7dUOuuQ1bNs4rIPbL0Ub8MnoQB4Id1hvrFy/3kfTDUqaTUT5hP5k2rqfjlSHPGKGGo5WXgWoyFP32CyCiPCtjvQ2tJL7zELj+76IYoDWOe2sYdKwPFKRPORRTkgU5p7I1NTU5R4vmGTHNsRj+Onh6xveNDfZSoH+CI7GnD5c7iD5zysP1rMPEGoizS2PgDI4MkmIOndHJYK5eCoN/ZhjrDpKmOId7YJ3t2uCZLqNXJNDP2N3ibxQq9mRwn5Oak5piLv3eQaTf6YjaOHpH72nRCruO1xUPN+NyA4vuMzNNzNphTObvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XgUiZxys5cAZKoLDT2QKvkzN3n0/EXYxndN26VNfR3c=;
 b=e1PTbqzGIQw4XTbODkUhp6eoZSr5Y1cfKI3aKoMejX3O91moOuVYBod/+W2vZZ2lwpJ1Gc2E/o/4Dow0TDycbjVKiXxHBQ6TBMY9YXgJ6Tfw0EuhoUet5FxE7PKfh5B3E7xw+S/2VDfTwXCLQuDKHZlG6tdLfIlyAAAVCjbL0+0=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3546.namprd11.prod.outlook.com (2603:10b6:5:13e::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3326.19; Wed, 26 Aug 2020 21:12:43 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3305.031; Wed, 26 Aug 2020
 21:12:42 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Add support for Meteor
 Lake
Thread-Index: AQHWcUyXAjlbsxTbNEWdovfaVJs8HKlK+HJw
Date: Wed, 26 Aug 2020 21:12:42 +0000
Message-ID: <DM6PR11MB2890D41D6A89686B74BA574ABC540@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200813083406.2857904-1-sasha.neftin@intel.com>
In-Reply-To: <20200813083406.2857904-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.215.99]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 522f0915-4bc6-461a-84df-08d84a04c5b1
x-ms-traffictypediagnostic: DM6PR11MB3546:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB354648FFABBF0BC5F88ABAFEBC540@DM6PR11MB3546.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kvxJSn+SQOOz6QsJYcbZUobl2vZEgG1UJBgwo1Rx0si+l/dc+G9qkv8mBOjWhNXJ4zqh5FIFzFNh+q2FuVzxFIw3w10mPqOtT6IJ6KSZubUF3tR3bQdCye77SpYtDVrULyt5VxxD5wSgpyRTKWt6FHKTbi94Mjhm+fjB0qwIQoathhrWAY2q+9VshPjaIB6XZ3wsKdGkdCglGhE8BEDy7RqeSK0+xcHoqSJ9MBYZ4plt7GpD4P3wtXKjmgEx+aPNGvbdjdm3yULbLcd5UcJnWPB1Pph1Xe1gHxQImDGoPVwyhHo4lAnGa5iTArpboL0M
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(136003)(396003)(39860400002)(376002)(6506007)(9686003)(33656002)(55016002)(86362001)(8936002)(4744005)(8676002)(7696005)(5660300002)(110136005)(2906002)(26005)(52536014)(53546011)(316002)(186003)(64756008)(66946007)(76116006)(71200400001)(66556008)(66446008)(478600001)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: CHOroomn+wuL5fnBFUp28QzGx1j1ADB7rUal5REJYQMTA7g8bubM5f3Tyczp/Q8YB14CrOQ5AhP2iNhVMc20A3zgrhXapHWYMI4hyqBX4HMTh2PRsUrNdOvk6YYSSiRzNmxLeehSQ5f9Y/pREx98Mgw27Ft5PIKAK+iMMzl8b77dFN/oEoq5gBhVD9mJ6hUZIWHTDPckstawHTRosmlQf+hNWzWMtLUX/U8SKLJWz1dMKXuQ3lyFZ8PvjCS3yP7X7lTbzOyC8umY27xCE5dLmdG9DMS4EKevtYBZKGFQfQlhigxEjVE/VizE51uL4K2yPIyuZ2HD5yyYK1sBNwOz0kYK+7xtszzoMAIp88MCaLRmJ9u1Qu3xCaiQYITdG3xpYJ3ZobSQlO39ZtmVVNZMYCQL5muIYnBZ65F98QE2Qc2tR7Is593297L4nZcouHkesNz7dWi6Hgyj3sShU+13x/QQvAFVXlVMCUkKTSEyvHihG3v216rUnMhmYdsxoNu3Y77nrGDVmx78bbbGciz0tRaYN+kxmqQ7ZuPZciuMvD5UjmMFZyU9f6snH1gFWzH7lmVx8xxnQ1mnfhL55SzBtDqTiVff+tA0utSZrZcIGsIy+4L70PVT9ZPLk0udPCwH/+zhdIEK+J+RNXaZZsvKCA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 522f0915-4bc6-461a-84df-08d84a04c5b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2020 21:12:42.8805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9gRSm7d2GqMLfxwftDDd3BDpD8BEuuyuij4WoDmGzmPhRpcvbrVhFstiAkcOYj4gFxIsR9OXiwclzq6aCaLUwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3546
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Add support for Meteor
 Lake
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Sasha
> Neftin
> Sent: Thursday, August 13, 2020 1:34 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Add support for Meteor Lake
> 
> Add devices ID's for the next LOM generations that will be
> available on the next Intel Client platform (Meteor Lake)
> This patch provides the initial support for these devices
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 2 ++
>  drivers/net/ethernet/intel/e1000e/hw.h      | 5 +++++
>  drivers/net/ethernet/intel/e1000e/ich8lan.c | 7 +++++++
>  drivers/net/ethernet/intel/e1000e/netdev.c  | 6 ++++++
>  drivers/net/ethernet/intel/e1000e/ptp.c     | 1 +
>  5 files changed, 21 insertions(+)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
