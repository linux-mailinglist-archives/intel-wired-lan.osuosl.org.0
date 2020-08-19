Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C52924A545
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Aug 2020 19:53:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0959A84C29;
	Wed, 19 Aug 2020 17:53:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UdysMl85uSMr; Wed, 19 Aug 2020 17:53:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4355884E42;
	Wed, 19 Aug 2020 17:53:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC6291BF33F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 17:53:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E59FD84961
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 17:53:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V75mdPw7rRm4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Aug 2020 17:53:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1082F84647
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 17:53:41 +0000 (UTC)
IronPort-SDR: 8mRAGZ8fGdJUe2gVRtYN0Xeu0mc4cuWv2VhnMkET9U7Tpxa3xio8jrKVs/Z59LTUQIRyNBrejI
 8B/k4byVfkRA==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="152583642"
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="152583642"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 10:53:33 -0700
IronPort-SDR: oDVVujn1b5HnwWmC8+hEDrt4vomFXB5grbzchk45ygUa5GO4kmcj9dEnhKEow7T6isBdJ1n3Rs
 dq4LfMPNkNdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="297300309"
Received: from fmsmsx601-2.cps.intel.com (HELO fmsmsx601.amr.corp.intel.com)
 ([10.18.84.211])
 by orsmga006.jf.intel.com with ESMTP; 19 Aug 2020 10:53:33 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 19 Aug 2020 10:53:32 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 19 Aug 2020 10:53:32 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 19 Aug 2020 10:53:32 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 19 Aug 2020 10:53:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F6DX34R2hKqagIQ/6yMRmepzB6jBN6fL7bw5LThrHRgFcikw3/FsMe0pKHflHbLEl2+/YKr4SbswgqVpCDldvFJDTYR/RaRawkEqefo9CCvz1l0G9nYnCOagHR9Yul/0nUn7aw+QsLQ4Y93RXuYHgPQLgU9Lbs80zrTV4jPSAKlGws70O3myR77OGMswxWO6HGbJ6EvxNGzNbkFXZcN6zpdvPF9Onq8Hd8HGRp9Retf/hWN5bnFO+RLK/3VaoE9wdl1hJ6of0HFLq5R/waoHM8CoBvCUUtymwX7YUlVRxYOLUUYupuq5fVasQonlPiSj8xhrMav6jEyu8EzCGKyVSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zJ9MZ/8HE1MXA0lQJuzFym1EKyV+scY14c0T/yuSgDs=;
 b=DHwLIGwHSHOE2kAS1wwyuwtMHW3spnP31feh/riL1cMb7oiFpotb0qaPA6QhIUn2cqrpyT63Ziyvf6wWQGIiVNdI9W/sJmy0LIzS6wqGLPPv40yKXWLe+4ASYH0dVsd9i80Sk8dSjAbgPoqCgDVZp6QLp7+AmcebMRck9Zc5Ogp93Oe7NVX0Xa0iAh0A/BPT+t5NYTRgJkeCki+qV6fZ5gdfvQJ1SyQtgmcltd51puiCDQ5QtJBH9AH0Cn0EDzjH9e0kT6eidA+u8+yDY3FKZ0MP4CkJwoX9Xjtqz/9nhYYUpMwgP3GQAeB3cdNjd29F7oiU7N6q+N/nRhkZQ490DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zJ9MZ/8HE1MXA0lQJuzFym1EKyV+scY14c0T/yuSgDs=;
 b=YBKnfhXl5YhY2WNIDSHIT1+xy0J+dcSJ+6wVISkZT3xMjtioMB0CwYv9fkHIlYJZyE0x+/ujtsUCHFJ50RstM6cdiNZXQyTNQsH4Sj0J/vvyvWdZzxD1vIzq+BzLLJ8WPu2z6cuBZUbRXydelhrsVUpdtLxU9y1qDc8pTdaFVkM=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3499.namprd11.prod.outlook.com (2603:10b6:5:61::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.24; Wed, 19 Aug 2020 17:53:31 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3283.027; Wed, 19 Aug 2020
 17:53:30 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [linux-firmware] ice: update package file to
 1.3.13.0
Thread-Index: AQHWb3ekpYSg16zyAU+SEXh5sRfK4qk/xDLQ
Date: Wed, 19 Aug 2020 17:53:30 +0000
Message-ID: <DM6PR11MB289014D96DF4D78742380A55BC5D0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200811003209.55207-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200811003209.55207-1-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: cdec28cf-79ba-42d3-7ee3-08d84468c8da
x-ms-traffictypediagnostic: DM6PR11MB3499:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3499449CF8EBB1C974EFBCA6BC5D0@DM6PR11MB3499.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WIhG56Nf2QEQYRZgR97t4JY7BW8wh+EYfqoVvAVFiS30HF9w8Z1IEe+pWeZInYOUFp1WYgqJPg7PZJ943X13QaIJ1hRNPWx93ysMpexOWnl4qjTuO411m0P5TP5PDKinK8ooVHTBihvTKCVPhCpVEMtRBv6x3zSMtC+9i1viB9QLcBUj/ZK2OAw9DWZKSzSNqDV73bvK3SRCMKxMThvYdq2b1pgU41q8DrVCAjdBPC63Yexoega7U2YhcRTvRuGv4Bq5vHMXlBgzRoKmavx2V0hBbyJCX9qfgR/pPxRRYDetgrZNJ+32PJd8zGvDgPHY+f/Hvd7FtJPP0PWyzg6Csw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(39860400002)(136003)(346002)(376002)(9686003)(8936002)(2906002)(53546011)(4744005)(110136005)(6506007)(186003)(55016002)(7696005)(26005)(86362001)(478600001)(66946007)(8676002)(76116006)(66476007)(33656002)(64756008)(66446008)(66556008)(5660300002)(71200400001)(83380400001)(15650500001)(316002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: fC2W1S1EP7Mizrbk64wX73JxCSte6JBDponXUWBpm+hEEnY9+iongwJdRF4rFDWrC3659p4Rt9h3euQo18/wYsI+dyQI8HOWKEFCgqy7gCMso04E/7aQsvDNe/9nZ/3GGBdIUzyqgeV/no4DpIXGTo9RX/8hT5Xz8CjgdQySLTFZoog5m2hZHWFBLwLpFOe7x9cTgK3e8GJCKM6iTLgBFBi0fkDNyz9wxItOk8gDsgeSQXBpKZb9ZShnKGJMY89RfFOm3Iz6McB+VGDdYEwf++RUzYaHyB6rZ7Zu7wQkQjd9uF1yNM5oYn6GC831pB0Q0qI+6Y1HfTOu07+25NVJtrNGJSNQcAy4APPRMgh3CkUjtxWVgc8DzgfV6ccGmt4aUprrC3/EAqzPNuB3zxKiR4yUcF8UWXlQIWsiPxriYraD5SJAVWC1QX3Dj9R+VkqlVTPqQCjfOEnwRqI4gznK/mNl2kuDMxF3H5nKNt4PBd4ogVNqXk9NlllszT6jD7BQ5URP966JOU9PqA0BhIgbs9u+qVMm4cOAex/yG7zeAql4IjNBDZ+/Q8zQbKZhX+Iuf9+PNno5xeeVVr2RCG6PE1SDYE79GnFBj+jZV7c8NSBZzxQrqC4230t8p1TRq2zEqnF9ydJOMVi7X1JS+TeAZQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdec28cf-79ba-42d3-7ee3-08d84468c8da
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2020 17:53:30.8646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3g7CmFsvwbWWBd+tdhNvYncFrmFvv3Q/rgWVmXWlB+V6Kjyn1oC13KXV+2/GduojfzDBKhPD+Mu4yWkT8i2z8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3499
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [linux-firmware] ice: update package file to
 1.3.13.0
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
> Sent: Monday, August 10, 2020 5:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [linux-firmware] ice: update package file to 1.3.13.0
> 
> Update the package file for the ice driver to 1.3.13.0. Also update the
> license file to reflect licensing changes.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  LICENSE.ice                                   |  77 +++++++++---------
>  WHENCE                                        |   4 +-
>  .../ddp/{ice-1.3.4.0.pkg => ice-1.3.13.0.pkg} | Bin 577796 -> 663812 bytes
>  3 files changed, 40 insertions(+), 41 deletions(-)
>  rename intel/ice/ddp/{ice-1.3.4.0.pkg => ice-1.3.13.0.pkg} (52%)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
