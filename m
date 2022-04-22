Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A1850B656
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Apr 2022 13:44:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBFCC41BE5;
	Fri, 22 Apr 2022 11:44:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W4669XtYaf3j; Fri, 22 Apr 2022 11:44:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C44D41BDF;
	Fri, 22 Apr 2022 11:44:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 774B61BF345
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 11:44:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 557A341BDE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 11:44:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VNVCwgr40-43 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Apr 2022 11:44:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C42E841BDC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 11:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650627866; x=1682163866;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L4NFqVN8cuOsFR4kE/7rlO2l44QPanTGVh2oONuCU5I=;
 b=jneZpnq5HQ72TDCGhWOI0us5UB8Li7eWXSuW3Fnla8PRbJhOdpooROdx
 JRgm9mIJUp6evORVy4jakK8apfcSMMDI9vMKOT6HFdakAhHnvIk5JKbM2
 JzkM2Lsycio32vgJDW6PMZpFDZxB3vTMpl8uW6qtuZ5oiVDih9uWwwVUy
 ENUX8ac54Md/6bcyuxTMcQelMXkFCLYvuZ4PV3w1o5Kc90zNThUyYtII6
 tYjUm6joBwe1ouqpPeLx7COWHFfW9D4NM24nOH9Wkgy1CcYWFq8iIvVV0
 TyHa1itS9PCkTOPtGoa9+cHXlBrjBMXF50o8Gf4WkyCwNwNSvoSUazY5K g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="264823263"
X-IronPort-AV: E=Sophos;i="5.90,281,1643702400"; d="scan'208";a="264823263"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 04:44:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,281,1643702400"; d="scan'208";a="511540020"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 22 Apr 2022 04:44:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 22 Apr 2022 04:44:24 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 22 Apr 2022 04:44:24 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 22 Apr 2022 04:44:24 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 22 Apr 2022 04:44:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a1MNY0mxTG+z1KcKvgrgJt1wy2HmwpIlRePP+JM0W2gnCQVwj2Ezc67fgBPuqhqkXSevgPfcaeqx04l9D/EYPTcmlSi+nZBA6e8b9hufwcilcVpcPlv085U9uoqVp3kZM92Dm08Y+kDN1SoSq1VY0029O9D6gbf4QeO6LS7c8ULpUk4703bcfKmObs24ff/wjKKm+xpKN7oMkWtj58DEsQnaHCosBPQQ9gXDUuTdH3d0Wm4aclXNReQMRYIovmwyn6Nm+JeHHo/0FoZE94t1TNZpWZb6rXeTPZY8ymY26m3agBEn5uDhde7gAcLb8PxH7AlJA6rkDUFYXNz5vIOfnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L4NFqVN8cuOsFR4kE/7rlO2l44QPanTGVh2oONuCU5I=;
 b=UTisBfjjzsNT1B7lVXaGeg/dE8i6BaPKk3+DyJhP5QXFwNF5pwBk8cqIRzgxM711bpLr6VbAX0CBDAkiKy7pWVn1Syj8UemRQAYky44pJ2dSE6x39UwfbSHAp0A/yGHxnuU8gsaGnfqo/BIzvmD1mbRxdMtM208pGccMiAVefoJURPavQL1WptDkBdOqVc62KRPJcFKQM94hp9+rXTI8qyGaWGRcODCpM5IVaPs2PNJyloi+sRjkh0EcWc9PwfY0EPbfJbCTKJmpPFAer1o1Kzt4Z25WNBOx4QNza+bwNRP3hGjuxnTIGJmEEYwHv6f8m7lkBqwFu1kRzvE3mIwcZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 by DM6PR11MB2972.namprd11.prod.outlook.com (2603:10b6:5:63::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.15; Fri, 22 Apr
 2022 11:44:22 +0000
Received: from MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::c6b:9012:d14e:5401]) by MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::c6b:9012:d14e:5401%6]) with mapi id 15.20.5144.022; Fri, 22 Apr 2022
 11:44:22 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH intel-next 1/3] ice: remove u16
 arithmetic in ice_gnss
Thread-Index: AQHYULQGTVyoWM6KFkKNtLKIg7hzKKzw/jwAgArGlCI=
Date: Fri, 22 Apr 2022 11:44:22 +0000
Message-ID: <MW4PR11MB5800880B4C413D8669D436A986F79@MW4PR11MB5800.namprd11.prod.outlook.com>
References: <20220415103139.794790-1-karol.kolacinski@intel.com>
 <730b2502-3aa4-e5b9-be37-cc60e716e318@molgen.mpg.de>
In-Reply-To: <730b2502-3aa4-e5b9-be37-cc60e716e318@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 49d9b1e7-6639-930d-b941-a9cede3209a1
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 36890b94-e86e-4364-2888-08da245571b0
x-ms-traffictypediagnostic: DM6PR11MB2972:EE_
x-microsoft-antispam-prvs: <DM6PR11MB29725D65EC2CBE94E7F703AF86F79@DM6PR11MB2972.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZGq/Q/I0p0AMVcLv/CXqTWVPMmilEfNYl1uV63n3/xQ/wV+EkD2jmdLZkbyWEgAuRRfzMLub4ZyKTrF7Pn03I+2642VSfKGDZm56cI8NlnNsYfpcFREcx8AUqqk+SBX0//EjzAtX9QnSUbKry+vuOX4EYfXAm9CzbmHBY62GG8uQMkDSrsn4OeMwvgJj0fuVqMa1BJwGf9tdyYVVe/nUH6RC3zbAgYPQj6LT0pbwAvb8molfaIpbt8z6/ts+N+aTa6aua4OqQZ7tS8AnklimvaLB6HBKOVfkPdc/ngF6azjG8/GJKUh2dzBAf7/uMpproWOhAHk/Uw0Q7wY7YahOmkcbAo+ohF6VuNj3AvdK+AD7X9QUCQoZjCSSHEUkr5uzqcpoFf22c2P/F+8WC1KuXDeqQOVWGKNaqFFcWxqp5sVj/ESDmNMkp9yAmNxHbg1W21uQcY5teeLWfp4+WaXzon9PQ/fsTDcPdiiyJaPYE04cPtst/HW2dmSE2EwNDJjk+f4bgzb6e0fYbhserjasIqAwWa5F0fmdeoRupT4rKGogirRiTQjrJUo0r+jsvHQC0U1T8EssHkKyJCELnNFiOhwdyDbfPZxlxdXI+M0GdzdbI6FEoZT9i3yPQGQX5RJ5Mhs6MhT+fDuWpL/st18ujjiNAupdVj/PaILztwZw4pUv98TOuZaTWI9uDvkRECtNkOuuxVBQ9/TutrhsmqutEA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5800.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(55016003)(2906002)(76116006)(91956017)(38070700005)(86362001)(82960400001)(9686003)(5660300002)(8676002)(52536014)(4326008)(66446008)(64756008)(38100700002)(66946007)(66556008)(66476007)(8936002)(6506007)(7696005)(122000001)(53546011)(83380400001)(6916009)(316002)(71200400001)(26005)(186003)(508600001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?YQqImz1P8Nhyb8w7aS9d4iQnjoTl5jhPmnuOAh2njJJEMeIUzcWQBb9zAq?=
 =?iso-8859-2?Q?8yKzqJCZ/xhRrdcnvf2f80ux/Nfg1EW0jubqCmrQ7QjIVOOtswNTwGRdbP?=
 =?iso-8859-2?Q?cd1f+eITG1s4a5Fdxj2daQ3vQ0DtMFjG4mZxe3LYVVyHGLrYR7hxKaVwiJ?=
 =?iso-8859-2?Q?hM35W7fXzbxAnQcoQ5pY6gcZLkwnGVwkk9YGVtagw+jyWrfAX5pQDBgAC+?=
 =?iso-8859-2?Q?wVI0DsBXN6e3gKjbwKUhliFT0maYx0UyTWV3IfZP5jvKRnspdrI/RcDk1f?=
 =?iso-8859-2?Q?xFtQM4cfpCs6J+6o4+0GKwkjhTb7rg5CE9TSPMtGnA6oqx1U2IGetIoQJX?=
 =?iso-8859-2?Q?N0C9tRdIV8YJzqchFD09dT6GOyVHRRoYeEhgQAs4HpUZgvOSodCsynQ4ls?=
 =?iso-8859-2?Q?GXrXncbozZH1J8wr2yJM9Iq3V925ajrMwLC7cbeiQuCLjNSD1xAj4sSERr?=
 =?iso-8859-2?Q?FYaCqwUb88qBNt47sKAEbKqkgORJZVe6yDSqevTZ3cEahWFWhgf+ezcyVg?=
 =?iso-8859-2?Q?P3C/w6MKcjo7GAdCAcgl7J+xzg57sWFciktRMj1qAW5D6IvlGDpC0ypx2Z?=
 =?iso-8859-2?Q?BJGiIBszTVut47aIqhc6f0HudfEy79GIctmn/dtxOyJIIhwncX9EDvMxGF?=
 =?iso-8859-2?Q?aJXTeVIPh//hdenP56V4ciRgDWX4uhnEA5sfZiVK6paZ5wilFpPUGtrs0y?=
 =?iso-8859-2?Q?m/4MNtAJxdVroXe7foeCNqcVMe+Gm6AoDN0wWqBbcjECJ0E7dOmrvJ+3BE?=
 =?iso-8859-2?Q?hKtRAW61a9r9YNoge8uN0SAx3jAZDLMad/j5VpN4QYQyjtJyfYmyygoE+V?=
 =?iso-8859-2?Q?CWKTb7ys8ZeqJ8rKasmIWP4ZMaNmS42ZRtDlTbsAhoYjpk81x82lZf+0jV?=
 =?iso-8859-2?Q?hJJdy5gZIx9YHOXsuv30sLKHdE5kswMQ1jnMeEO0+BsZjTYhWplxRbjCH2?=
 =?iso-8859-2?Q?i73t9kgo7CUWeC6w54GZkI9nucb/Gw2bgXfc1PJ7pLH+kK5EGxIr1+TlIo?=
 =?iso-8859-2?Q?Qf0CWZwPu+rIrckcxVk0Rpf2/KWcJ3mIzeXk6Z5meja5gx1LHGV3rsEG/j?=
 =?iso-8859-2?Q?jxeTxAmuhNGLyt0nQ4mt7pou8+Tf42osuYJU/uuhR7sTLjp/1NeaWtSkbA?=
 =?iso-8859-2?Q?ILSCVB0NcmMrmYIPd1C3tJzxP5SxR7ZmiDVC/L1zC4Nm9VOHpmYM4V4dIo?=
 =?iso-8859-2?Q?FxGP/gU9/leH8C9/BL9UM9SFGs+oXsF+ZdWjPy+Hmcj0HdVJov3M7fsF9r?=
 =?iso-8859-2?Q?N8TnMW3WXK+d3DWKglNYim1xEoWcPUo50L01LYXG0v0zKSTe1HjkJqby37?=
 =?iso-8859-2?Q?e9g5YCVOTeSdt/PfuihjrEJh1V5NwBtSus6cOgwtbeAvl08o4XpJM7+PYw?=
 =?iso-8859-2?Q?YzC5IpKECkC5R8NVY3hlZg7wFXchYv3sKJ7bda9uxTLxnapQR3p6m9nqWR?=
 =?iso-8859-2?Q?EF/0sYKynKkvqrswz3U5rrB0dF22KxxPpYx6fNnob1Un8orHHABZSwc+7n?=
 =?iso-8859-2?Q?3C/x3E12X+yOD4n12K4kR5RifXZFIHIcB0qxYgaRqdmBPSKk0aUjEiVFD3?=
 =?iso-8859-2?Q?uIrGQ+7pXgakkaRZF5mKnyFWL/E1YrEcyuJ0ZFkOaekHRNDVVtx7FJKfOS?=
 =?iso-8859-2?Q?UusuKl2v6i/sZIGYUtJ6aduiOYNQS/CHbinaG8uk26AOHkg8RBAaJrtuxq?=
 =?iso-8859-2?Q?F5fZCKRphQqwpSrG3n+3p2h3tYeHs1YkzSbIGnKn2L70OQ9eREEXMz5pJK?=
 =?iso-8859-2?Q?28bSGfjZVql5lDkfvFujvl9a9xgrS6NOjdVQPUJozKNtF684f/dof70IZe?=
 =?iso-8859-2?Q?bnDAjEPZd8X0abx4OR86njurf1+dTcM=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5800.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36890b94-e86e-4364-2888-08da245571b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2022 11:44:22.4068 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hDbnntIwXc62p+kHMXirCzBzU1nSd5m9AErXin2u6byUZWl/kugiYE+NRlG0OdP47QqLULMIPgfKv3NGCKTkFZWqeBwqPGSG/iEn9HjDCa8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2972
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-next 1/3] ice: remove u16
 arithmetic in ice_gnss
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Paul,

Thank you for your review.

On 4/15/22 3:51 PM, Paul Menzel wrote:
>> Change u16 to u32 where arithmetic occured.
>
>occur*r*e*s*
>
>Why does 16-bit width not work?

In the previous GNSS patch review, David Laight wrote that I should not do
arithmetic on anything smaller than 'int'.

>
>> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
>> ---
>>=A0=A0 drivers/net/ethernet/intel/ice/ice_gnss.c | 6 +++---
>>=A0=A0 1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/eth=
ernet/intel/ice/ice_gnss.c
>> index 57586a2e6dec..f0b2091c3b5f 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_gnss.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
>> @@ -23,7 +23,7 @@ static void ice_gnss_read(struct kthread_work *work)
>>=A0=A0=A0=A0=A0=A0=A0 struct ice_hw *hw;
>>=A0=A0=A0=A0=A0=A0=A0 __be16 data_len_b;
>>=A0=A0=A0=A0=A0=A0=A0 char *buf =3D NULL;
>> -=A0=A0=A0=A0 u16 i, data_len;
>> +=A0=A0=A0=A0 u32 i, data_len;
>
>Why does the length need to be specified at all, and no native types can
>be used?

I changed it to use native type. Length of the buffer is read from the devi=
ce
and then used in a read loop.

Kind regards,
Karol

---------------------------------------------------------------------

Intel Technology Poland sp. z o.o.
ul. Slowackiego 173, 80-298 Gdansk
KRS 101882
NIP 957-07-52-316
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
