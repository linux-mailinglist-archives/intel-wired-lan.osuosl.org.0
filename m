Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A46801C20D4
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:41:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1FD0389346;
	Fri,  1 May 2020 22:41:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wMIMTGe0Vqdx; Fri,  1 May 2020 22:41:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B60478934B;
	Fri,  1 May 2020 22:41:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1AA2C1BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:41:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 11B4A8718F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:41:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wAwCEh2pGvSY for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:41:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 42B9B8716C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:41:32 +0000 (UTC)
IronPort-SDR: tHnJj8NvQP2iye0C4cSS1+O+b/ufJ7fSf9evB2361vp2eBocHUoMW0DU3UGTwVnDiREFOjwVZ3
 21jhh709RBKg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:41:31 -0700
IronPort-SDR: forxDXUsG5heMSCFwfCNUM5e6sthNlFj7yGsSvd3Tw0ilNiQq4B1uj6FO5MjOEjdYI1eXyEoUF
 5ddYaxHKVdKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="294937793"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga008.jf.intel.com with ESMTP; 01 May 2020 15:41:31 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:41:31 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX153.amr.corp.intel.com (10.22.226.247) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:41:30 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:41:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g9NoFNrjZP1zTBQ0n/DDMN4Wm79vRb6kS7pJowNhnS0+zo3gkq1oBThUovESl6OB69chfih3n5epQ9FMUxz/g7NTvxR3/Tkca9PK1xfu8mdZMKrLS6grBBbiuijhAgoGxRVhfXIKPQd2tqVK1gZS0Ow9dCjY20nAcZi/9+42HkKV26bpfei6oboXy449HlwFVJ4ClvpN0KP7XixSnFm66owN+XYFPpIUqfWQ8aRlJt6t4OVhQJ/RUxwp5c2iogB25rbxTn0TDe8dIvRDsDVOxYGWysbBUoEJeKRPJYCvTCHWRCpJXxyrgYDtfsgJ2ykW94hMNuRArkT4XoKDZUWmlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K7ZXzqeQI7hqjynrcKvVzS1Kub5Pwz2bVeNa9UbyYj0=;
 b=LcCzO3sePggu4eXY0igkIQ3B1+o5gQhHZmJJTB0cbEYhP4r9gf6cbDRRRGBHvRjIi/xiN9Q+QcyWvtZ76KnM7TUa0Oqq9atLWo0F5y97QlylQiq+FPYqLi7DOizmOeRCjTE/McwVvLsxIiUl4eyqqhtSUPRRIY2QZZeDwMX/bFi1WDtK+WwNrGOKN+TtTpteuMt9iCs2dM+ob5QwLW+ymSF+ZQ0YEIZSImZMmgZfvmNG4sZaNjDjYl1fp1kmq8UpLVVTaGZP8V8738CZi3RJkU3yI3BabWyItZRIXDTXMYZypsKCdLV4ScQi/ThdhyskTP2F9CM2nOK0zxn8acS2wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K7ZXzqeQI7hqjynrcKvVzS1Kub5Pwz2bVeNa9UbyYj0=;
 b=DYnBjE2BE3zLMvw1XymDMwt+XuwezPFqIyx5Zw+APAmmUKQN7lE03C+Pv97arHftLAoG1Lf7GwmdJodHD68l5NYIMyfKJtoli7KDKbkdgzwm2kFU1t6y9JK06RMLzT6Mn9qIHa/s2+1geNSvl4DvYMGnBdWb+Ipk643Zsy2naPM=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3241.namprd11.prod.outlook.com (2603:10b6:5:58::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20; Fri, 1 May 2020 22:41:29 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:41:29 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 13/19] igc: Fix NFC rules restoration
Thread-Index: AQHWGnV+mufQvKZKa0S9KLGIOLr3bKiT3kUQ
Date: Fri, 1 May 2020 22:41:29 +0000
Message-ID: <DM6PR11MB28905AF4268AFDFA1DA8A771BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-14-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-14-andre.guedes@intel.com>
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
x-ms-office365-filtering-correlation-id: a0208f77-6fbe-48b7-e9f7-08d7ee20ca5e
x-ms-traffictypediagnostic: DM6PR11MB3241:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3241854A7E1E5F21E3BA9837BCAB0@DM6PR11MB3241.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0Yd5vB51JSplnhl7i7sgM52wWMNSzwZ+TjEL12aTdyPZ49h1MCTdEgJmnhIXUdcmspjV1RiXX/0goQgZG6zgDxT9NQXvOcmWrDktF7P4GLaS+jWsBBH/7E5sXQiprayNPR1hwT0s6ueaMs/UsrYnDdvCW9yWQZqODlZvbSvgB24ntBhgc8EeLuA+QfCDlWKEIgTIHsVtNmLcMAQck5IPkpvzoTYYEMIR44D6Urpjcdiaz8bp7kWYocR1apROV7pEjaDHolOTmMC1d4QHBQ1exW12QRDlRNlT6hji8f0dibJTP4fxuddIxKeyjjt5bcefsuPWhhgVgvHXgSKsCOtPW9NUoCSqTt+o8r+LOEXakLJx1xzxioV54VP0b5rz3qHkQft3OOQjqmDUKGLp4yYMaBaUvajKP9LJdeHU0ZJSE5yY4lpVGj+4dWKrg0/abCyX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(376002)(346002)(39860400002)(136003)(396003)(66556008)(66476007)(76116006)(6506007)(53546011)(26005)(33656002)(110136005)(316002)(186003)(52536014)(86362001)(8676002)(55016002)(66946007)(66446008)(9686003)(478600001)(71200400001)(64756008)(5660300002)(2906002)(7696005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: sRyatZGm0ShufylB47OILE54LM0bE0+AN6gxFrQRLpQczTYzY4cZJ1AXWE5/DfNswiY692pAGm3qZ/sctFA/i3g0cZ1IIviIYWTCuGhI4b+8UHNJtnmx5GpJG3NbrDpUUj5OQjVixrW5ZeHG5Mu0HCypcsAM6uxxkzKmH1BOXrIJjZ2pTQBbj1+KAPh7SaPM4lxO7yMMRAXbTrsgg0S1dvE9jUqL3NfqJcvngDI5nIilVMOzghg3JOFj3WTVx9pA75S2TUsYBivrzmxGF4T/dZXNinh+kCoscJlRVRiWJzuOimg9/zkmx1fa6akIJ6b8ZDzukddRzyaxodTQDyb81IxjvjdXTz2yCOlNsFhf73FjcYTHZ43OqXMtjG4JnllnChTD1FgevOGtbNroh+JCPiHxtm0BE/5Urvor2/+BCyzcYnXRlwR/2Bjda0ELZGvL1gNQoGqQn7o7D5kxieiLP/fho9VuRg5UQKkePklcCadS4yfrqB0Pc4MATPqx5Q036M/gDSfSFI80hBoH1KAFnnY2dJFffcYvHvjMwkLhjfJkXsQ/X71lggL8PLljxtFf5XjXe4+i9bDULkuxzpqc61KCYiQcG7737XflFOVlq1KNfhBPRjOx4jKEsnfDI8fFZiTYPa0VqYRSiUj9iRvpuwr7T0nL0u+f3bo45/twebzePo6mTbFtr3U/vJuZm/V9x6PaG2i5Bhbv9q3N7Rmygy9P7Wu12nOBLfHNZhdFaqUdav1CJVdmMhJOaWh95JxWvy1csM8XB2GrrJlkj8HWJjOZJVFLtXwXFIo8M00SCyv8mOnb1RcslITwIyTVYjp0
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a0208f77-6fbe-48b7-e9f7-08d7ee20ca5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:41:29.7396 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D71NoewKK+SQNoxNj6gkeKiZBz3avvfW8LaMTK5+XTO6cqBefYYFuQBZUjTjPeu80ACWvklQNwXw81gRyhXMbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3241
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 13/19] igc: Fix NFC rules restoration
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
> Andre Guedes
> Sent: Friday, April 24, 2020 1:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 13/19] igc: Fix NFC rules restoration
> 
> When network interface is brought up, the driver re-enables the NFC
> rules previously configured. However, this is done in reverse order
> the rules were added and hardware filters are configured differently.
> 
> For example, consider the following rules:
> 
> $ ethtool -N eth0 flow-type ether dst 00:00:00:00:00:AA queue 0
> $ ethtool -N eth0 flow-type ether dst 00:00:00:00:00:BB queue 1
> $ ethtool -N eth0 flow-type ether dst 00:00:00:00:00:CC queue 2
> $ ethtool -N eth0 flow-type ether dst 00:00:00:00:00:DD queue 3
> 
> RAL/RAH registers are configure so filter index 1 has address ending
> with AA, filter index 2 has address ending in BB, and so on.
> 
> If we bring the interface down and up again, RAL/RAH registers are
> configured so filter index 1 has address ending in DD, filter index 2
> has CC, and so on. IOW, in reverse order we had before bringing the
> interface down.
> 
> This issue can be fixed by traversing adapter->nfc_rule_list in
> backwards when restoring the rules. Since hlist doesn't support
> backwards traversal, this patch replaces it by list_head and fixes
> igc_restore_nfc_rules() accordingly.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  4 ++--
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 19 ++++++++-----------
>  drivers/net/ethernet/intel/igc/igc_main.c    | 16 +++++++++-------
>  3 files changed, 19 insertions(+), 20 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
