Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76089234BDA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jul 2020 22:00:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2AA0B887FE;
	Fri, 31 Jul 2020 20:00:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JcTtiexCtu7x; Fri, 31 Jul 2020 20:00:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7095088828;
	Fri, 31 Jul 2020 20:00:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD63A1BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 20:00:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 497FF203D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 20:00:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Om46SGamThmW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jul 2020 20:00:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 82326203A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 20:00:02 +0000 (UTC)
IronPort-SDR: ki1/Pv0pVOOum2UrG5Me4sEleBt3HVLdw1u6rbLZHK7A8c4uankBzy/9IQk4Xm0AlqVctnBvUA
 5sYObwdZjAkg==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="153080891"
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="153080891"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 13:00:01 -0700
IronPort-SDR: RHJgaBDeJwAEZUhMT1j3yexqMCR7zipOywZE5ohYzLPWpnoqCL6H7PiOSTF7BUoiMNvm4ccUk+
 9QwL4+2eTVQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="491107692"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 31 Jul 2020 13:00:01 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jul 2020 13:00:00 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 31 Jul 2020 13:00:00 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX111.amr.corp.intel.com (10.22.240.12) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jul 2020 13:00:00 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jul 2020 13:00:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MMwSMpfUiideLPbslTfA4lcsaVIZgKiUtIOAI/ppPuuOaiIRsCXipRAi00OrbxyfVYLe7TMN4OphOp0cus5aYnBOGepBytV3Xf+dWa+sXtU5U0KevxXq71iPuDcqWpryY+nzDDknDZ7EL+XEx2bpZxHD7xs5Cs9jC6hKiewteHpDHun3CmjFSt9Jouvni3PByL326RWJyzztyfWh1r2CO6Hj5JQnj51rCNCNChGoT8U5+43bh9uAbYMk5n9/McBeRJ3SF9nohHTEiuQ56t+O23Xz7zLvbRRG3l4bijqBHMAu5HmygSPQp7TTGbbXt/CDhNU2+9MpLHiuTVPSNHPAeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l2abIqzBXyF8BbeWjzU79JgBFkxDn/ZXcU4AApixZHw=;
 b=l/uuaSiQRpGAX6aPo//azK0lvly8Yj8Byz71L8Jt7uPWbfwWqtQNLgjyBW2F7kOWSjE6uLgROPrZZJZYzgP7b87O4xu6hSb23oBtLl4jLnukdJoctFwQzS6hM6ewi1rI5Q+O6dhATdHMK1yBbfYn3paeWrB0mudU7+NGkMr3AHRKH8u7ekaHzPe5wZVO1sLsTbYiVTbQnHtVyTVJPGJQAYOY5M+Vg7H6qewwRJz4nVYUviyElsCXwJbdpPIDpUagiGo78SAgpDn2OWKK6QrE6ASyPbKaPl0QFNHoayZhvKcgFxDEN6dRk6SXUhB1d2n6LmXHtDFNWcxvGzC1125tSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l2abIqzBXyF8BbeWjzU79JgBFkxDn/ZXcU4AApixZHw=;
 b=F00X55USwDMRIxmYMznfj2C6NVYoD7YEiQaKvKi0Uo148ihKjrK2ZiTOg/A+zgm9rACGqwRkC+lYNVeCDUhmYXPG0aFYQeM3jY/T4pIShI7tqrSQ47xLD5VfrYAnySGpjZTVz2+B+LTbUxDDgLfSl3tYP2c7eBAnR/01J9kb1Ro=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3763.namprd11.prod.outlook.com
 (2603:10b6:408:8e::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.21; Fri, 31 Jul
 2020 19:59:58 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.034; Fri, 31 Jul 2020
 19:59:58 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S51 05/13] ice: add useful statistics
Thread-Index: AQHWZge+WTmjuadPe0CVtWjvK90OrKkiHjOg
Date: Fri, 31 Jul 2020 19:59:58 +0000
Message-ID: <BN6PR1101MB21450A76B5015A018A5A148A8C4E0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
 <20200730001922.52568-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20200730001922.52568-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe667607-be04-42bc-fb23-08d8358c4dad
x-ms-traffictypediagnostic: BN8PR11MB3763:
x-microsoft-antispam-prvs: <BN8PR11MB3763A416FB982026D5F4E6398C4E0@BN8PR11MB3763.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: otFwA6ixKYC3lGiRcABQ5IMA3AZgpH0hdCEN8+svEt3cnQE2Zb0n+uleCjbSxcjARvb9z+ic9y5q+aUN9t3GmQq+QXKTAFzj1nk5M8u0ykUgOdvFdtOnl6sLSQs+G+rHtJArQNeRhDu+IEmNgyqmZceDt/niNc5mQtKbEq9eZCa29I/9fWOlY0QtVCxvvwFaiHQaNbpLWLXrTZ1uIJVISfRf8wg9MGIhqVMj4uZi349dFZiMRu0+Dai+XrSYtM+eirB0S6S/qwlV4zTelsL3zGmoGzjpgQACHIrxfbob0zkek/+wibF5QNTD5ay/rYMj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(346002)(396003)(39860400002)(136003)(376002)(52536014)(8936002)(26005)(71200400001)(66946007)(86362001)(316002)(8676002)(7696005)(55016002)(5660300002)(76116006)(9686003)(66446008)(64756008)(66556008)(66476007)(478600001)(33656002)(83380400001)(53546011)(6506007)(2906002)(6916009)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 8RqBWEKefPoRCYZFMTbOmazPdjBuBWM/2cy1Zaf1j/shzlTA+y+wgUG9jJEvQnefInDe+zEH25PvTABFyjBz6BTy8Vbkli8Sfq/ATcVSWrZRy4me7uU1dOP1KusRsNjPPKDkMh1fXQgj73ic/9oNy4l4IcH402tFOt2oYx70TrwXfuvEktJZwfkbhDQB7Ns5adX1meJUot8WV8EjYgHTy2kdmjs7OsQqfyx/jRm7tmaxCdqmVC2SJLnV7zCqpwpCSVHjDvH/5bx1+LSpiw52jrZVg+YVphiDSBXmLwpZ8WYQBPrB0RwH6KcP97DDxVuL5KEWIS3aEYJVsKsCgVjjzzi/9yfLO4JMcImHu7ZZmHkWjcKJ7CcGyd3ZxYEEbIs9EDqciyeCBoxL8dDcQHPGgk4kYDgnHmR74JW9xSGhiervmArNbs3NGGZRIgXK/I4TeQdWuIJy9xpYEyaqPY2CoVEA6uvfDg9uUiEmdlrAMg1uCLeV3LOSDF6vGEE+Q/u/
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe667607-be04-42bc-fb23-08d8358c4dad
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2020 19:59:58.5397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n7cp9fqbkME9yMfktf7v7ds+ueDejKl+6UAGCKR+PMujO7z66nj/VKmqMNAHurGFouVq0ItMSE+gksitNSq0mJrL1qQAhoX88qlPlTFLOGE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3763
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S51 05/13] ice: add useful statistics
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
> Sent: Wednesday, July 29, 2020 5:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S51 05/13] ice: add useful statistics
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> Display and count some useful hot-path statistics. The usefulness is as
> follows:
> 
> - tx_restart: use to determine if the transmit ring size is too small or
>   if the transmit interrupt rate is too low.
> - rx_gro_dropped: use to count drops from GRO layer, which previously
> were
>   completely uncounted when occurring.
> - tx_busy: use to determine when the driver is miscounting number of
>   descriptors needed for an skb.
> - tx_timeout: as our other drivers, count the number of times we've reset
>   due to timeout because the kernel only prints a warning once per netdev.
> 
> Several of these were already counted but not displayed.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          | 1 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 4 ++++
>  drivers/net/ethernet/intel/ice/ice_main.c     | 4 +++-
>  drivers/net/ethernet/intel/ice/ice_txrx.h     | 1 +
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 7 ++++++-
>  5 files changed, 15 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
