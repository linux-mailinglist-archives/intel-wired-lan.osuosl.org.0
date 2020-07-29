Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E09B223233C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jul 2020 19:15:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9339623E84;
	Wed, 29 Jul 2020 17:15:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hhOz0LECou2C; Wed, 29 Jul 2020 17:15:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ADBEB2413D;
	Wed, 29 Jul 2020 17:15:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 282551BF346
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jul 2020 17:14:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 22899891C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jul 2020 17:14:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SZ5oMOkYdFXO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jul 2020 17:14:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5AE85891B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jul 2020 17:14:51 +0000 (UTC)
IronPort-SDR: gDnSUQifvLWvhpI19EgJknmsSki4HEVTGCY1iT8Z9/DKXXPRuHgaa5qHU5rZLMb9/GzBca8C7k
 B3XbjVOOKJNw==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="215952902"
X-IronPort-AV: E=Sophos;i="5.75,411,1589266800"; d="scan'208";a="215952902"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 10:14:50 -0700
IronPort-SDR: vk4JJxTmthNU7U2ChfuPrtwKvgKVr44AdNOBml46S8YQHGOtWU6alYkwZrRUC38iL6mX5Z7rhr
 oVZf+0ZAoWmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,411,1589266800"; d="scan'208";a="464932760"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga005.jf.intel.com with ESMTP; 29 Jul 2020 10:14:50 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 29 Jul 2020 10:14:50 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 29 Jul 2020 10:14:50 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 29 Jul 2020 10:14:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EgGYHocqPLKLblJqNACJ66StgCf4sDVMtK6nVUgobb4gnjmdGrbdmv6+gakLlCGHyb1e7gFTtaI0XLmsUwKQ0YaUQr0S7QnOIaYWC9vexiimVcFKGOiABBd4LfSDoBJHjn8oDNjmgI/rvcct5vDbgAbW6XvC8rRYRmPwu5KdDvwEkBfMiFsJz+ydUI8VIWX9XgjLx723UNqDbjGOvx+oW0Ifm7btibPYNkQtYDsVDAYbgWR75JjJOekbm4/wKNthAxFDEhyExG86EhR0TNT4zhOLhmq131p/A6DzF1I/ngfTrSR6wDr9lLaq/EmJ//vHTU4Y861UZ4xw7YxPTpjoYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uCRgq2PxhAaO6pLjLo1j4nDKP+ToNH6vYvQZGnfRfZU=;
 b=CBWBm53sHGsFJ9yDXhOMf46+4+nym4v/QUnyFZU4bzMkapboWokvnHNQ2yCGVM2E+DLyI03uxqWnSC/3mF8o+oxoFdPF3esmaCn7nh5WFiVGRULn8zA4Y6DWWIOO0eEhmgGJYxrrV3cnsSUfaf8GOy8DGwOWl11tiur0/dXa0S5m7ZQde3OGBzwLYIfb1pi9ELE9TREThCqM8DOA/bAvGrxOGHGre2x7RlbaM2Xaj7FCLSLj7KHN631GN2OU9MahnbTv7swXLfOs4JMXm/LaoLkvPV2+JWrHcOQvmWJr5vYDhdzUKesY2KEWlKjdLwSm/DKcWcm8mvLKM0MAbMV4Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uCRgq2PxhAaO6pLjLo1j4nDKP+ToNH6vYvQZGnfRfZU=;
 b=M/aSfUa6ieO0bdgwSvbEvR6UuFzHsHVwUWACeZE7xhVguxsHsH/kbPXebGPI7UAl5AWpIjwHcmY90V8VTRDAMx20GAb8vuc6sYMuZtIn6bOLqCNK+uVCgwxPtHMUHGZKJoEcRqyJE3MqRqdLgoCjKCuSRnlvgAJb7FAW96sIZb8=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB4068.namprd11.prod.outlook.com
 (2603:10b6:405:7c::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Wed, 29 Jul
 2020 17:14:46 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.034; Wed, 29 Jul 2020
 17:14:46 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: mark PM functions as
 __maybe_unused
Thread-Index: AQHWZH76dzfhh6cia0qCgBR/9AhmO6kezj+Q
Date: Wed, 29 Jul 2020 17:14:46 +0000
Message-ID: <BN6PR1101MB2145FF1C418319180C16CA058C700@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200728014153.44834-1-weiyongjun1@huawei.com>
In-Reply-To: <20200728014153.44834-1-weiyongjun1@huawei.com>
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
x-ms-office365-filtering-correlation-id: 7dc95c5a-4a47-478e-2542-08d833e2e499
x-ms-traffictypediagnostic: BN6PR11MB4068:
x-microsoft-antispam-prvs: <BN6PR11MB406887617B4B4E254193A27B8C700@BN6PR11MB4068.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dDl6eZ64qoFhI7qUqSMUq3uZeScSYy0hbJaMWY4aioBvvq/Bx73kZBDMwlBFqN7tT0Hg/T4E9PPo2s6tbFmD+2KgM+bQmEaAcUHFW+39qBMfdADsnzSoSpQx42WYqW5bW2Ay/XwtaJwhJP16JM+jpZX7nRGhjM9LH7WmHQ6G249I1zJWetQt4S7iGItH9XLr/WJGrwMM0UaDVTJk0+OkR6qUMyHFnHeSYl2vLa6Vh7sPKGniSwzhIckpKBjLuB5lCmXO1pd8tXCLzVxG87LpNtdckDjO3+q80FBYZ2JGAncatlc2ND0/And6BiX3nBN1IKYGB12ybtIX/jUcS9NeMQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39860400002)(346002)(136003)(396003)(366004)(52536014)(83380400001)(186003)(71200400001)(478600001)(7696005)(5660300002)(33656002)(26005)(316002)(2906002)(8936002)(110136005)(66476007)(66556008)(53546011)(76116006)(55016002)(86362001)(66946007)(66446008)(64756008)(8676002)(6506007)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 4G/3Ia9trTFVuM5aFay0nu/H/DhAhHo3kHLoF4rEAB4VsQJlwKLlszfNpbWUOdbZoko9amgDw9jQLRtneWwTO1zv9YfdiG0RQu0HEhpsc340/31yWWwOWj5TOntVFbc1XoIrNwDK0vOVY5pIawGIlR9AONE9fshGY3lRMpEP9PA3+ZqQIK0F2luu0lB7NbY6KqJmfzmtTSGtSSMbfSjhWdSJ2jcZEtIMl1yDFbio/7QEnUCc5jBsC2yFaZDSi5/5HYWQ50lA5SykA1TYlXR/WYv/yIsnVMGN9kl7Clr+utV4vG4hOPS85LgiR2AiAI5KyWUpCiF7FcFTm1GENlQm6pr00nehJwilu/xWXJUzE3yd/+WNDgklyzhqPiZOAVZujn/bjnf0b0g382zybGMI3GfjwjOzNdzF7WPWtnBTaXXdKfazaRIzDMtqIdd3FXJGzka6RDu7fa4EeiV+kUnhBEnOgyWyrRtF+5gA5QS47x4=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dc95c5a-4a47-478e-2542-08d833e2e499
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2020 17:14:46.2043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n0letrZ4xPfRqLlFm2ujoL4JbXgqhGrwjCVRfhwn6wPuzvmqz/x0lXisFKsMMsYzZyumAVp9tU7KgFfn2RiuDfKeFx1prexTYtYWIrDEFew=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4068
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: mark PM functions as
 __maybe_unused
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
> Wei Yongjun
> Sent: Monday, July 27, 2020 6:42 PM
> To: Hulk Robot <hulkci@huawei.com>; Kirsher, Jeffrey T
> <jeffrey.t.kirsher@intel.com>; Jakub Kicinski <kuba@kernel.org>; Alexei
> Starovoitov <ast@kernel.org>; Daniel Borkmann <daniel@iogearbox.net>;
> Jesper Dangaard Brouer <hawk@kernel.org>; John Fastabend
> <john.fastabend@gmail.com>; Abodunrin, Akeem G
> <akeem.g.abodunrin@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Wei Yongjun
> <weiyongjun1@huawei.com>; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net-next] ice: mark PM functions as
> __maybe_unused
> 
> In certain configurations without power management support, the following
> warnings happen:
> 
> drivers/net/ethernet/intel/ice/ice_main.c:4214:12: warning:
>  'ice_resume' defined but not used [-Wunused-function]
>  4214 | static int ice_resume(struct device *dev)
>       |            ^~~~~~~~~~
> drivers/net/ethernet/intel/ice/ice_main.c:4150:12: warning:
>  'ice_suspend' defined but not used [-Wunused-function]
>  4150 | static int ice_suspend(struct device *dev)
>       |            ^~~~~~~~~~~
> 
> Mark these functions as __maybe_unused to make it clear to the compiler
> that this is going to happen based on the configuration, which is the standard
> for these types of functions.
> 
> Fixes: 769c500dcc1e ("ice: Add advanced power mgmt for WoL")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
