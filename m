Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BAA3F8143
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Aug 2021 05:47:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 681FF40530;
	Thu, 26 Aug 2021 03:47:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5JM8u6WkFaQJ; Thu, 26 Aug 2021 03:47:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 056F540531;
	Thu, 26 Aug 2021 03:47:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3ABBC1BF97E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 03:46:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 278F34052E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 03:46:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MyQ01l3P4ZWy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Aug 2021 03:46:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 528B540139
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 03:46:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="278669503"
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="278669503"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 20:46:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="508228476"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga001.jf.intel.com with ESMTP; 25 Aug 2021 20:46:54 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 25 Aug 2021 20:46:54 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 25 Aug 2021 20:46:54 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 25 Aug 2021 20:46:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SxrN3vFjb4C7ZE3PZYawKGdZvJjS0jdXFQ/zhNFgQV0mUZHkNTc8Dxaqelg7YqVWu9rvun1wEQhBCXLuYFrxfM6pMudA2SDotvFC4LDRE1IZ4xF+zIcVOtDyTqFhCAzWR3TcZa3nC+n96RH7wjZBpwd9cFzLE2MOgJIyhXKle8kWy6Rxd+mQtl1zYfIfWUEdtDVgNtKoYGlJQP5RRffxPBJk1bZMlXOZfvL5VYvTUke3qPeME5IgwzueI9+rsfLiJoDGREGHvvPQXzlEbO/1WxQtCAOyF3BPIar+H1l8lwB0Oaklb4H1gjReanxnaoXKXeiMa2TBCa4FWNtq7J7vig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lEqCK4Yr+dmvsKvteie2FmAjDe1YiV85Qv4dBcB5WfM=;
 b=PedwTj2ijfxnYdIk7vpMirgUDu/4osgAhyrAObgWsSzKlgq9vZ/owVdqcsHETEZmHBhU9SbcmiSGAofK+YpVAl0Oyq2cENO9l1Pk/t483EIl0b9zpdyYSNPlTHrypG9F2g4rTlfTtzjSn9eoRDU1loAb83rm2z+j0HMvMj64pKNxtStvkw1d0iM4SN4dEJnm24Ip/LqAC8Fcruy1iz49OAIe1Yi1VrLXGSN6FI8hgpCmBhJJlkk+6sIUa5vQ2ZtbJu+xZCqf4R/VV/bW1UEzCBdIRdBRpybkyZ0EjEuNQQ62OD9kZrDMdvbx+s5zRvDfZUBNfpHl8xjcAAyPXvKqqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lEqCK4Yr+dmvsKvteie2FmAjDe1YiV85Qv4dBcB5WfM=;
 b=HOqxZxedFEIJgXnpKqLgMf2yyRpL6hdQqcv3ITygRq0oiTV04FSYxXtiT01Ps66ClneiZWhtbaFvFmmpw0Oe3iZzJQUAwhuSFVDeR7Cm3sajhS6LGaBoFwqhNEq3YOgEKZjl2fa74Z0/mhtywKGu26yVv+p+DWPyoxyRSN0woL8=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3639.namprd11.prod.outlook.com (2603:10b6:a03:f6::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.18; Thu, 26 Aug
 2021 03:46:52 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739%7]) with mapi id 15.20.4436.024; Thu, 26 Aug 2021
 03:46:52 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v4 07/13] ice: use 'int err'
 instead of 'int status'
Thread-Index: AQHXmHrmPLKESP+5UEeJV9lH6Dnpx6uFKNMA
Date: Thu, 26 Aug 2021 03:46:52 +0000
Message-ID: <BYAPR11MB33674E92C6DBAF9C7F831F7EFCC79@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
 <20210824000158.1928482-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20210824000158.1928482-8-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 61d0db66-7dcd-4257-54ce-08d96844241d
x-ms-traffictypediagnostic: BYAPR11MB3639:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB363941792FD2596F64E67BFAFCC79@BYAPR11MB3639.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1rlKurc2IOe1EMe0hf9LdZ7lpdoVdeYlhLBcKTuE417Wlxcbitm564I5chrvhFLZm0qFoPC8WfYggwgMboTzzE5uoNnaQihsPLwto6dikYcoxBF2VSbVp7gf46NFHImmfyZyaYYbqwJ8XuR7CrExAshEXTqMfEc0iNaRvnq8o7MM4BbbpHvi3UpxGEPqrSCQWdbQPPToQp9SGtGVPguQEIhsICmgyTIbT2vqODOy/RPprarl0M8CsOwvU6jXoBHOHJfbuSo7p4ipNZNNONh9PRrg0pKCSzVx8jmrT0Kbdqa17s2J1mr8ylJi06Lwa3hfgeQokhSAL95KizZ1ACWQ3Kbytdh8+jqUaPbOlDWHUuIkNwNaM8MFVJNkXq5lUzYNN0pcB5Fh9Ysj7tz1mCPrkFVqPXf66tiCwlsUfLuL0fYtY5F7znIZYPpFF5rpc1euzQVqarOaDxdqGcVX6n/aE16v32vA0yX6yWheZR2Txanr3osKfY2DjmLAMGe5+QREGJ/rdSysf/TnDzJycNLEnMoOzuR0dhZL2o4UW8l14TFJm5P0kXwltnp/1J02rWWdKE1cFLWWRRS2TcF4c76BXsWBXuQe62usSzHRY8cfUH8LJST/WVBwWOdjVkGhFr2uKrzVH4b3BgDIh3BnLBi1NxQxEdFHiZ7xy8RyV0LPxT3xN5826VoAGaa8ZINoR4XDyuXL1uwPOYXAOhn3lKEK7w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(366004)(346002)(376002)(136003)(316002)(33656002)(8676002)(2906002)(71200400001)(110136005)(7696005)(478600001)(52536014)(38070700005)(122000001)(38100700002)(66446008)(66556008)(53546011)(6506007)(66946007)(86362001)(76116006)(9686003)(55016002)(5660300002)(8936002)(26005)(83380400001)(64756008)(66476007)(186003)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FVeU/gDd84guKQ2bLA/+BT1NZ7+Pg0+NuArXv1XbgcjYbnbfvFJPvWtZG5bF?=
 =?us-ascii?Q?Ntc5MeNkspfnHAy9aZENEeosIwAZziLA3hibtj+rKHu58er8bLHYvP+CQ22W?=
 =?us-ascii?Q?Hv1XwaHM5YAkni7TbGKhk4WaosDNgZyg/J41YLqU53W7NsAV/COJHXr2duQW?=
 =?us-ascii?Q?enamHhhldBFnBRwUQ7pvXD8UwYuBCy/ix1WU9qCUGYW1Vmbd4IR3c6jzzUKJ?=
 =?us-ascii?Q?CnvFLeJX/B6FwKbgb4AP8I1eM7aanSsgcc/LPlPXcMYnK6/gZXgdkP4WPUt/?=
 =?us-ascii?Q?pUwKzJf11rd6OJJI5b2ap6joD0mOd0y5LDsDj8CjvPAx3yKU0CEeTO+SGdh5?=
 =?us-ascii?Q?CFfYQ6x5g2hx1bdFmyKs/WkSt0e8+rNi6/nVP/HvXfNgMdUJeTVvmDatx22T?=
 =?us-ascii?Q?5wvhCX4QA8Hq0ZFE5oHPkobt6YgqxYH/FRZCz7QRvt0JDB3rP/Z9KGMqGRZb?=
 =?us-ascii?Q?nMCSycygP7Fl3E6djz9UAVHobvmi9ToCT443wGvYEoKcR6ePJowcAlqF0qjF?=
 =?us-ascii?Q?O2KC8tr/J+FNryO9mTizrl4yQdLe4pW7lwMI/YS1WHDoz79J+6GGO1tHJbLi?=
 =?us-ascii?Q?IAxsfOKjAfSVLGA2J/7f0urijN4Xx+827lVK3AJYrf09sOmhfSzKorOdzWLC?=
 =?us-ascii?Q?t0v/tLDXZzTV6vAtdDZzZmp9HkNIJ+8i4ryHsozzL1QtNJLY+Nu3Ti41Tz6D?=
 =?us-ascii?Q?5Qqs5lKecEgq5pRDYwAjjc8GIqhXopQRK34BUZ9Z+DT+Ccho1STy9vsmjWJC?=
 =?us-ascii?Q?gQzOOrMMRYK/wL1yhGU0P+Q6SdtWOWrBbfOpMfF4lau+nmXsV8eSzn9dWXxH?=
 =?us-ascii?Q?jGyCFJMWnIb4i4sktzYaVi4LQhb02C1VYI/1fWNSL0gfYlN0VKYLfiII+tc4?=
 =?us-ascii?Q?LFmdwTUjtxGG1aKZdk/ie9tfN6KfJzzvfzCMmND0gHC0kGEPMDstx3OodfMq?=
 =?us-ascii?Q?jVsdVr1QYgg2iuwcUUHNgSs2g3nO68qOme59a7iJG6i09UNHZxXRnDu99Eij?=
 =?us-ascii?Q?QBpOFUnZ1IMNr2H7S0pzlPe0OwPfaeCt7eNTdCjStR9xZrbzQyGeNEYn91Cw?=
 =?us-ascii?Q?ufpwD9r2EfApWQOI0NUiJZyszWCiHUEXSW4JF0BlUyz4D7+TYKMyEL3CVuxM?=
 =?us-ascii?Q?00RIo8YF//Ql9X4kiQq+0E+plXtjrq+wYtVfVxqdzO4Knea6Q/RpmufrvSUC?=
 =?us-ascii?Q?BpXj9eVUXXfPw38YxytsOrGiXtodbEN4UUSHVZcyvHDc4eT8mFhUKS3Z8AsT?=
 =?us-ascii?Q?5FV08fWK+4NwsDPZCkMR7C5GCiA1BFZpFw//1ZZAs5YkZ9mQiUVE++ur0I2Y?=
 =?us-ascii?Q?OXPX1EEzChH9S2xU6grFXn8M?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61d0db66-7dcd-4257-54ce-08d96844241d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2021 03:46:52.1773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LN8Dg6DsRQejMoEzSfYO/iXCbEBE+9NRS3tJQahyhucHySnaPQy8v13KE8GDITw0YYpWY3wsWEWYS46zkyg1dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3639
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v4 07/13] ice: use 'int err'
 instead of 'int status'
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
> Sent: Tuesday, August 24, 2021 5:32 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [next-queue v4 07/13] ice: use 'int err' instead of
> 'int status'
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice_ptp_hw.c file introduced a bunch of uses of "int status" instead of
> the more traditional "int err" or "int ret". These are actually traditional Linux
> error codes (as opposed to the ice_status enumeration values), so lets
> convert them all now to use "int err" for clarity. This is likely an artifact of
> refactoring this code to minimize the use of ice_status enumeration in
> preparation for removing it. We want to avoid adding any new usages of the
> status enum.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 206 ++++++++++----------
>  1 file changed, 103 insertions(+), 103 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
