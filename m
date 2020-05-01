Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9ABE1C1FFA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 May 2020 23:47:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9891E259C9;
	Fri,  1 May 2020 21:47:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MtdXRvOddmQJ; Fri,  1 May 2020 21:47:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9436825A0F;
	Fri,  1 May 2020 21:47:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 576691BF59D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 21:47:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 52CF7873DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 21:47:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IxO2cEoI9l8n for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 21:47:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 894BF873A8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 21:47:54 +0000 (UTC)
IronPort-SDR: Wva272CqRiCvR1OKvVKdVxbLmAiCMsx3h/QpdJxZ/Q8HkbHPgBs4iED3ZUp7ec8KufDPs+G6MC
 IrZO+voWbH8Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 14:47:53 -0700
IronPort-SDR: T/ahohgvBK+UuE/xVMkQqZe4D1cH0Tvewhz7AAupRSmvOwLhUa7UCDTrw6FEdEs+H35lb3XQ4Z
 KotLw7l1MIvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="433437440"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga005.jf.intel.com with ESMTP; 01 May 2020 14:47:53 -0700
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 14:47:53 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX116.amr.corp.intel.com (10.22.240.14) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 14:47:53 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 14:47:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cOoCblajpRB9OkaNSNX+yYZxIx1tDEe1FchKvC9LPBqLWcu0A+m+t1xqOff+hQcDqf6doUdv0JWasX4pYsEJVJbZEQ06rkO4KBHxXcHWhgPKVkf74Dc7oykEe3Hx4s461jOOpufvY0+M5XFWsiGB5xkKxrwhOqlKLlAST8HRe0yyt1Vg4IAlBFFEGKk7xMi0/KqFNL0UKAef8vjRGzxwrmAPqkP3Nl1JSKsdOkXDKk2ty7o32bJkrHdL4gXdGaBOKHJygjwPcry3vyr8/umaJl4awUnQfz7cR9rZpc0ZJbUBChrQZW7Z+oG1lgwzmBRsv/bagbL7qC9SShe2z9fUhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UBqO3p24tAjnvKz28xL2qrjslAuv5o7xUFrjN8utEkQ=;
 b=J5swSWJgAn6mypB5HuVPTutUQPEV//qEO61CDEhE8EHqXtFd0MpaiTAPAU7DVCUoSo90HMDPmKqDZ12SrJjIUwgoWlBSNc+ia63haL/2OEcrIWblM95fLbA0K3ZE5XwK6yAkvvJUG69lsFfFhmlRXIPc6GnKZo7cX85sz7N0bPwJAIfJ15qD29pNVnZlVOr0YGQNFOR4Dpc+eGSqKeJr6OAZFAO4HZ5YiACjupYL1MWDNBAxCMlD6jpxVjUMmPMT7d3a01zyVEjy2RwmHtOe8b1tZtXxq+iw+6ASJY2IMX4mcvLgc2bsofbveAjD2kae8w7XuQCExinI94BaKjLQYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UBqO3p24tAjnvKz28xL2qrjslAuv5o7xUFrjN8utEkQ=;
 b=LPvwo/lNahl0y6p6IAahmN45gkOAZ2cqdSRpiCIJIf01+wOy0HOOswmLKo8odZtzHKtMQSPhmPCjGX7J88daQkL1kp8ms2Ucfp9Cf1axDS5RQergAIvqHnniXdRI2BGu3N1ViDDVehpFTfqK3/ZiPckGv0yDmKYwTMz/WVKISAo=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3820.namprd11.prod.outlook.com (2603:10b6:5:140::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20; Fri, 1 May 2020 21:47:51 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 21:47:51 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
Thread-Topic: [PATCH v2 4/4] igc: Refactor VLAN priority filtering code
Thread-Index: AQHWGdV69l2VmG7ZykGkLNgLZW6HJqiT0ISw
Date: Fri, 1 May 2020 21:47:51 +0000
Message-ID: <DM6PR11MB2890E517D65797E6E2CFC206BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200403181743.23447-5-andre.guedes@intel.com>
 <20200424011119.98746-1-andre.guedes@intel.com>
In-Reply-To: <20200424011119.98746-1-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ec05a937-0ab3-4513-d76a-08d7ee194c3b
x-ms-traffictypediagnostic: DM6PR11MB3820:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB38205C61BAE082C252BF06B6BCAB0@DM6PR11MB3820.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ap7yALScz1VA5LVFWPxLok3kEJrkzh2MYnq/CSh0eUldud0Ul3I/wgXO5VhY5/S7+MzVu4+rLixXlNZNEmEqlUvXddnL0/aLRt27hk/MZJM6vSnMoP9RJ0GoMkWcaxTU5pSsuuEt1PFPA5L78BMHipIlEPuU7GlotgwkmSDSzr/V6bAPeyDNO5LUqIn43CAwlHtHhtlu/qHYUZEDNZX6+zMBvMO3x5Mw+BjCt7CM8L2uqzy3JAp272CW/WN65MJO/GiA99bCI20tlQFmpsy853wB+qfnYb4zUdIVrYu4XlnIiItJxKtFXB0JX2CHYFmkcSbLXQtrQzJvFrpiCoC5rZQ7MqrIkJHpj4Ajy4tNhtQBHed+DOctysuwzAZM4EPtPtzum0ID+rzqDhVysx1ECIEj/aS3pW3liPlNcw5R60IlDmzD47apWp6GTd3JOtGq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(346002)(39860400002)(136003)(366004)(396003)(5660300002)(4744005)(9686003)(26005)(6636002)(52536014)(55016002)(53546011)(86362001)(6506007)(7696005)(2906002)(71200400001)(33656002)(8676002)(110136005)(64756008)(66556008)(478600001)(186003)(66446008)(316002)(8936002)(66946007)(76116006)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: PYkcZXtXB60qOgVcKyVkQ/zKVFuGn4d6/obAEnWIcvfYHu1pvu0wU9L0qtM94zPpQSaKJtmAM+BR0rKrPTNsWbZer5wNvtNP9WSJ0kQ17MMfviiKOT4U7kBs/H2mJrEEaVCORGXktf8Wqxw2iHE1VpbEu/qCnBMr4czu/Uedx5KL2WEi69ogRZRRB5pHCNNRUKm6FKjt/GgECytV+LrZvPKVUV6kQ8mtUgNhmPQnYarAvLeBXu4QpQ29kKX114kqB4vgTFrczQuA502pkcNnajXvJmEMAWqUIHVlzO3cpDdFIHQ7mB7FQVYLX4PgfkyPWud6BU1FxtH0Y+VYwCvu465NVtljGcfGdXKkgdv1FDpG6IuZYOJAJdWLLTn4moo2w8v/fxaCd+Rc7allF5fAMBTencDI0ck8mYRgNG01QOWHuBDLZnG6SecdjemE6GTaV4HITy2tDo3knQTO3e0abw5m0aI3q/MC0L0Q7FF4D6EAXy3xiiLGDa+ko/+Z5jwAQ++/ZOWKzRUF16M5+2I6dQQ7E3vKzzZTm+wegJoXG2T4l9v7lyTZOjzZRFitceb1i/wM2BLM5zTWDwdOQCJ58nLoceKYQFAzvkPKauyVc4q1y/8/EETi0h84z96WBjPFxfBhOhwQuWFCXAqcdH5X48y5NpwTQ8L9uM2BemcVK96OBe//H/HwT5Qx5h3TwLp3CsL1tuAwU67IxHvmICINo+ru1yeiDdS/QuYRkaFFiSX7UhZZ3nl52BtGkRqEgn9RcT11bWpoQvjtsNKeTro+q1YiWBfi39yhAzHSxk7UG6Q5ZqgEhK2yTTM6VUfjGWFi
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ec05a937-0ab3-4513-d76a-08d7ee194c3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 21:47:51.4848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0hnSGmuIU3pcn+aMHJC/bZrA8pnDQqQBIC7TPu0GYVrgf6F2Wr7Pjdip6ydBgQ+yibiyp166vCq2wSN88lIhPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3820
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 4/4] igc: Refactor VLAN priority
 filtering code
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

> From: Guedes, Andre <andre.guedes@intel.com>
> Sent: Thursday, April 23, 2020 6:11 PM
> To: intel-wired-lan@lists.osuosl.org; Brown, Aaron F
> <aaron.f.brown@intel.com>; Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> Subject: [PATCH v2 4/4] igc: Refactor VLAN priority filtering code
> 
> The whole VLAN priority filtering code is implemented in igc_ethtool.c
> and mixes logic from ethtool and core parts. This patch refactors it so
> core logic is moved to igc_main.c, aligning the VLAN priority filtering
> code organization with the MAC address filtering code.
> 
> This patch also takes the opportunity to add some log messages to ease
> debugging.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
> v2: Previous version had a bug when clearing IGC_VLANPQF_QSEL bits in
>     igc_del_vlan_prio_filter().
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  3 +
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 64 ++++----------------
>  drivers/net/ethernet/intel/igc/igc_main.c    | 52 ++++++++++++++++
>  3 files changed, 68 insertions(+), 51 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
