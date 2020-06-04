Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 355421EEAFB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jun 2020 21:15:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A77FF24ED5;
	Thu,  4 Jun 2020 19:15:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0p6Yi8bV4ctl; Thu,  4 Jun 2020 19:15:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2F7D124F0C;
	Thu,  4 Jun 2020 19:15:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18CC61BF386
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 19:15:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 147C8883B2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 19:15:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9KnqqRdyADZY for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2020 19:15:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 82FF38836A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 19:15:26 +0000 (UTC)
IronPort-SDR: FGawbTAYQVUElnVfxTym+QMx05NKp2U/KRwMkh7wRjAbPSU5xJMO6TRE3SkAVm/ElOVGZPqv22
 YNzXRHBbvM1Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 12:15:25 -0700
IronPort-SDR: Vv3s2t3k3RR7GewCkZZXRexbMlfjsTISnkpl+DJvyzf1fEaNcJoqT3UqfwEfT/83uGCwB6cERl
 nDZgTQoqqdzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="294438339"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga004.fm.intel.com with ESMTP; 04 Jun 2020 12:15:25 -0700
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 4 Jun 2020 12:15:25 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX153.amr.corp.intel.com (10.18.125.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 4 Jun 2020 12:15:24 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 4 Jun 2020 12:15:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fWbkFOS81tGfB3tk1HWq6Z7kJ0uYpWODMwSTB9Ql7GXqNw/fjgQFCJL1XoihrkL4dYMP6svqD2BYi2ps9Jxg/Es8EVcnUUrNrQ23HLV/bxokZO/zXvdB0T0N9CJm+PfuSAUCtoKP3gSSUJPytP5FmQdN/PoIp0MnTYIrc2wcIGKDYhzMYLud/tn8axAZxgEnH1NZHUPY9RIJ6Tqzha3ek2C02GKmrC2Ge41vokSUawQh4BrrZabOa9IzQpbzgb9NTEW6aNzGDIv0EzFIgUGXQAzYDUrrGRDJhqrlXsTog/HKd8pbYHVDHkiLQKu4PR2MFHLSMbMDU+T49e3us0HdZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AW5VaQWqoDXsVa+70Gt+xGy4fQQPnmVulqwsOk2gB6M=;
 b=YtKkb/gLz8qpcIVzLSQ1F/kO5x86kq1XJxdn2ENhIrE/PVX54WC1gOTY2jEiOi2yCEnWTj8TNak3yS+hkrl7Id+mM0J/5fw/ok/Qm3Z16Rz07Us3lcZ9dfXfn2Li0Oxo64kvFb1V/fLgp1oPodgzCeWaEHMy1HYwijwFUJPwqkd6mXEWNmP4tvDJg5v+qnNwJWtOjFnmGxwvAva/MvWuyqPh4qaWqBhVdFQb7I6r775xM/UoxUp0rihaLXHFvfUvzO9iN50oIXu8VTDlDbloKj7pmdZXEs3FNFFC4vo0slvlZ6tabd1SxvPm6Nj1wWioLrEgj1Bo4/KNXb6mIWsO+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AW5VaQWqoDXsVa+70Gt+xGy4fQQPnmVulqwsOk2gB6M=;
 b=A2WQnAtbnxRM7J0d4CBcgUbGTkBCWAuqGj21m4Z0Ow5BPR4fjgwhn4raNKSPiTxUz5zzu768arKVK5FOmxNf0bMnk/ZMk8eog1B6nD5hO+4/ttOlFcZeQ7hftbJex8CwpEPm4cydUX7wnBhWlcWE5baJWkZwXatC+lMc+1em9JI=
Received: from MWHPR11MB1663.namprd11.prod.outlook.com (2603:10b6:301:d::15)
 by MWHPR11MB1552.namprd11.prod.outlook.com (2603:10b6:301:e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Thu, 4 Jun
 2020 19:15:03 +0000
Received: from MWHPR11MB1663.namprd11.prod.outlook.com
 ([fe80::fd6d:2fa7:3dcd:30]) by MWHPR11MB1663.namprd11.prod.outlook.com
 ([fe80::fd6d:2fa7:3dcd:30%12]) with mapi id 15.20.3045.024; Thu, 4 Jun 2020
 19:15:03 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v2] i40e: Remove scheduling while
 atomic possibility
Thread-Index: AQHWNf3BFORw6W6920K88KLxU8khc6jI3Mhg
Date: Thu, 4 Jun 2020 19:15:03 +0000
Message-ID: <MWHPR11MB1663A1999980991234AC66128C890@MWHPR11MB1663.namprd11.prod.outlook.com>
References: <20200529211039.1673605-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20200529211039.1673605-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e6f73b2-f7f3-48a7-7637-08d808bb9585
x-ms-traffictypediagnostic: MWHPR11MB1552:
x-microsoft-antispam-prvs: <MWHPR11MB155265EED76535D96DCEEC2B8C890@MWHPR11MB1552.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1091;
x-forefront-prvs: 04244E0DC5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3BKPWveYnhXr0uUOjW3roCPRUXOq3kKsrxAAeei6huZPPikBSQOknmLdm7Sl3yUSAn0Kizpv0w2l9Zp0P5dJ38tDZO6z9e+KvPsfBfgWysHJShEJVkK8n6eY/aDzY8JzJ141NgaITZCtr9jVTwBWYNDd707qYMSXBqRAlu1FspqjNUSRRY6J0beqAR7ttw0bawficoPABM2AkFELwogNnFuIM3aPN3jdyZx6Kh7e2BOYGHV7wRa/rTkQkTmrVXX83mM7kUIXGC2LrNGaOVNi6DK6XOdU5R8TEXQCnfar/I1noIBVri/P4XzyXILQpFWeX6HcIjvJ7NL+1C16CHn4ng==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1663.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(39860400002)(396003)(346002)(136003)(366004)(6506007)(9686003)(6916009)(478600001)(55016002)(53546011)(4744005)(71200400001)(66946007)(2906002)(66446008)(83380400001)(26005)(64756008)(8676002)(66476007)(66556008)(316002)(86362001)(33656002)(7696005)(52536014)(186003)(76116006)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: eEp3gjXSIHbKhtnmMzD91rdpSEgcpH4D7lg4cJfovnlts7hmpaCoyI5PI1KvQHc4M4k/1bcSs3X5L9qexX9hRACHCTcns+Usnx5Z2w2VetQ/VgSZU+iFkPT0E3zWOA25nXKVSG97+kivPaX9W20XN0cXfOxyktQKYjHAu0uNuGKHqECBxbPwBaA8NDqQkxdRRR/OuyBQ7UFmRmljX4YnDQWXA36ZnxGX6xaT3J+HZHLkzx53sALccEg8jBHRfFqvi+MLC3h+90H16okfvaT3bKLxZuJ/sak9joQFf6yA0kUnO7f5FBBnwcKgcliPNVPopRbGxD/ARRwhoyOna36b57wtrEhGvOsVlx4ags0du/Q+Xiqo/9jWCiR/vhkIUnCNVn8xTGE/mygv6hRg6jGlMWPaJxB+UQt1f9LOKNlBdB4zAc6396aNSYGXudTQbyWivG7CzqZMy+2ff1wR5NtC5FrwijpbM8m2poh0ndymG5Q=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e6f73b2-f7f3-48a7-7637-08d808bb9585
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2020 19:15:03.0934 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vk0lRS7QeFIv7TWZpLXnhYN2Pc65SIcc1QUQi/bY4+fD1cnfkmo+a+B8oZa/2EpJtwqukBV6UWrhnMEGiB7OTw3S14vhkA5O0AhLEXZLhCk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1552
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v2] i40e: Remove scheduling while
 atomic possibility
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
> Sent: Friday, May 29, 2020 2:11 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [next-queue v2] i40e: Remove scheduling while
> atomic possibility
> 
> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> In some occasions task held spinlock, while being rescheduled due to
> mutex_lock.  Moved function call outside of atomic context.  Without this
> patch there is a race condition, which might result in scheduling while atomic.
> 
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v2: fixed trailing whitespace
> 
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 222 +++++++++++-------
>  1 file changed, 135 insertions(+), 87 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
