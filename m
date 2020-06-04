Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 893701EEAF7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jun 2020 21:14:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03FC188293;
	Thu,  4 Jun 2020 19:14:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ILw2DaSGdU7p; Thu,  4 Jun 2020 19:13:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 90B01882B7;
	Thu,  4 Jun 2020 19:13:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F9DE1BF386
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 19:13:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6705924C4F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 19:13:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BcdNOklVGbBr for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2020 19:13:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 0DABA24804
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 19:13:57 +0000 (UTC)
IronPort-SDR: r7JfQYE4978EMVUeuo5YOXwQ+rKnMib4HJ6ZOUA7tgTPadZvN+RYQFLa2FHUJxCZhvlzhc8FYX
 tiWtAZBiZzHA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 12:13:54 -0700
IronPort-SDR: nwsTreDmMrLE+Z1B3l/C75OmxCdLiSUebfoel3tQx6mYCSlNvNRsqs45KMKvy50qRYvVogPQmN
 1LJZf8WPDpvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="378507405"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga001.fm.intel.com with ESMTP; 04 Jun 2020 12:13:56 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 4 Jun 2020 12:13:55 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 4 Jun 2020 12:13:55 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 4 Jun 2020 12:13:55 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 4 Jun 2020 12:13:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=clqM112i5UR1DkUOxfwWu+OLSV71pV8Zx/sIvgzWlxk/30auhL/b7dvjv9bUXTA2p8TE+2i79LuOpUmVwDQP/gzJ32FtJges1xpFpfaz5DRdoeJ4KALSw63HRsdpwvnD7P25fsVAbRsjJ7A9oM1ZNItTNMD4F7P5DrYEGM1dSsChQG5FVMWyye/68dpwFjJu3iuhOoU43tclW7i94qhNqT7G8YjvxFvD1d1A3LzcSu8Q3LSQfGEYtlqQthKhGOoOHVRXdXz/y9n8EjyRnjH3Y7+TwXLDFiSuWklLWa1sIHzOEQv+WsNy0aWmk9gwLeNPYkhXOqZ0YONByWb2olIZfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=irPwMSywRhapzcy7ZyzgTNhosTKBIcVaL3JAbQtAGEA=;
 b=n/xqWv6ihjryXvSsbg7fLhHbj/hBrGmHK77SHtzfRuXiqcSh/9RZpdhW1Aa8OD4cDq1pNFhFwuC1MBB2efNdalspKRZYaRxKbnQXOm86ga6mdIQOgojSyHAAFHK1/cWdgaxEVDaeveRUS4ID4b5sleMjJMyOtMWaywwDIe6WTZeG/oHs/abGdrajtvJcYJNEubxmn0URlyWmvCULgN6dTi6uwESDYNmvODIFWCkHUhewwoGIe/75rT0qR7+mhujRs7kDgN/7IeUZ0RlBWOJI0P49BfxKe8fewumpcW1V5FBmnOY1NeYkVhzPm0UZSLUAq5Ro9cdEG7mo8mXNJEnALA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=irPwMSywRhapzcy7ZyzgTNhosTKBIcVaL3JAbQtAGEA=;
 b=EEksIOVyLaXQbGI+WwsFKpWPt5cxfNITm8LN6BDmArqo6wYOc6eUyjGQjuyEquv0sD+qxPP3VCiRzC5GJ8t1uclFpbsapGsfnXBWcB8oyp9QOtQJZ3TBjArVbW2uTQAmF7fFUsnscv14yFObHSbFv4XlyPej5h1gJ7Hd5ovoCcA=
Received: from MWHPR11MB1663.namprd11.prod.outlook.com (2603:10b6:301:d::15)
 by MWHPR11MB1552.namprd11.prod.outlook.com (2603:10b6:301:e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Thu, 4 Jun
 2020 19:13:30 +0000
Received: from MWHPR11MB1663.namprd11.prod.outlook.com
 ([fe80::fd6d:2fa7:3dcd:30]) by MWHPR11MB1663.namprd11.prod.outlook.com
 ([fe80::fd6d:2fa7:3dcd:30%12]) with mapi id 15.20.3045.024; Thu, 4 Jun 2020
 19:13:30 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v3] i40e: Add a check to see if
 MFS is set
Thread-Index: AQHWNXnlJZt2b6mYkUWVpR9ouU5wWKjI3WTQ
Date: Thu, 4 Jun 2020 19:13:30 +0000
Message-ID: <MWHPR11MB1663918F8118F19CF15E5E8D8C890@MWHPR11MB1663.namprd11.prod.outlook.com>
References: <20200529052712.4214-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20200529052712.4214-1-jeffrey.t.kirsher@intel.com>
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
x-ms-office365-filtering-correlation-id: 15915267-ab62-4018-6a4a-08d808bb5e2c
x-ms-traffictypediagnostic: MWHPR11MB1552:
x-microsoft-antispam-prvs: <MWHPR11MB1552E5AF600B1EE7C778CA778C890@MWHPR11MB1552.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 04244E0DC5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pOPQ6cem60IQb79gecBE40ABhOaMEx3GSkd0QUhfxBIo2dLk3EIGins3iYlIubvmGixloXom5FmmVSybOuBVLKrD4Cryy56KEgKPmYm337ZKRp1QKDzA37bh19uwIpZyevXxVsaZgWiVPFqlznvcuIclSU77qRSc4wLYiyduWSyyD+gp6wpyn+f4E+z0BMrFEGZYPaADglqVrxYo6GJEN7/Udajw9GI53R7pKRtzc6x/JWTGLMvZo1SHdl8znsY58bggLMuJQSH+WrZq2n8XwME/U/3/RYoz06c6nDw1t3YwrajUK2P0s+xnlU9LknaI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1663.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(346002)(396003)(39860400002)(376002)(186003)(316002)(86362001)(33656002)(7696005)(52536014)(8936002)(5660300002)(76116006)(478600001)(55016002)(6916009)(4744005)(53546011)(6506007)(9686003)(8676002)(66446008)(83380400001)(26005)(64756008)(66476007)(66556008)(66946007)(2906002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 5lpeNFzsouJcGWzVltyg8aydGbbn+BUMMabLhdMX6daIkaVsCCiRHqBWhH0DJ6GVplIQcs3j7ybKtq4vHaXRILthYWDkI3FK4tVWexCnOCpg2mdsDkDubFRwyPiAt9jET5/HnD7ps9iv01EWxrPvcewLkHvEgFdcVLh7VguFFj8gH+XBFGqjfl21mmEKTzLG5gUrjsOH7DdydsKWgyHQyP97K/ZwObiY1dcnLyzVDxkrKcF6mquH2pL+FVYtilfMHPqpZJtWvzPfemihG/nLIs23+hpMqfHABh0IiocEhPV+XSrd+kaUErBC0CxI1QveE52aTMJMA9YWKZR5zFRkb2pgMijLuKo22/IHBPMiSbpHh7ZUrU2Emnoci/uowEi6INsf8UVANX09spRuwc05Y+QWwVQBwJiqCM4PBhTCuEnVTz+bYCIf6oghpK3ixuAsh43Qdi5ca+bxyTEKQxQBUBQjNi3im3aB7/l3gZ7HEzs=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 15915267-ab62-4018-6a4a-08d808bb5e2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2020 19:13:30.2571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ScR+xR452wfrqeoyr1FDZKLBtFO7D4eA+ruzLdLdzkg6Z9EkVSOfE9ptnAWuTJ1ERVt2ZBmfiM+OwJ/QPKpyuvhJNG3r+eVXg8+4hXdzFJo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1552
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v3] i40e: Add a check to see if
 MFS is set
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
> Sent: Thursday, May 28, 2020 10:27 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next-queue v3] i40e: Add a check to see if MFS is
> set
> 
> From: Todd Fujinaka <todd.fujinaka@intel.com>
> 
> A customer was chain-booting to provision his systems and one of the steps
> was setting MFS. MFS isn't cleared by normal warm reboots (clearing
> requires a GLOBR) and there was no indication of why Jumbo Frame receives
> were failing.
> 
> Add a warning if MFS is set to anything lower than the default.
> 
> Signed-off-by: Todd Fujinaka <todd.fujinaka@intel.com>
> ---
> v3: removed the unnecessary 'for loop'
> 
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 8 ++++++++
>  1 file changed, 8 insertions(+)


Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
