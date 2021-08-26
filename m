Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 433E83F8142
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Aug 2021 05:45:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67C6C613DB;
	Thu, 26 Aug 2021 03:45:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tzPfChXdIp5A; Thu, 26 Aug 2021 03:45:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10366613E4;
	Thu, 26 Aug 2021 03:45:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1CAF91BF97E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 03:45:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 095D24052E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 03:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dzEwWAvFsmDU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Aug 2021 03:45:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 28F5540139
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 03:45:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="204794535"
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="204794535"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 20:45:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="598338925"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga001.fm.intel.com with ESMTP; 25 Aug 2021 20:45:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 25 Aug 2021 20:45:32 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 25 Aug 2021 20:45:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 25 Aug 2021 20:45:32 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 25 Aug 2021 20:45:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gos1+Cv9pzmgfzz3NHVZ44l7AeHn7WLh/iSqOOPiQTbFzLrd4S2eNq4l9WXlKWo4ROYD2TYbOkNpKGbsWjcLRY1rok36qd9Pvu54c64Y2j+Lo9TpY0p9Ag9mqoLuIa1RR518jJMaD8+pjKQrtiCy7OY+t02g7wUCZIL2/MQOYdKiwr7V819bYuVI1Zia++PhCxBRBaaS5gUevMiE4LU1zCrLAG+6nNTC/ckx1RJgOtOggEzcs7g1NHKxR+jchCGyxNb0obdoI+OyWRTKuNvlu8XL9QM8CuF6+/3cZSEJB4HFvZl6S+50h0LuKAImLBiC0AtLmfylEdkGsT5q0rVT0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cuo6zJSPcx3myz3avk58fZVDa1AKsEQ+EBeKyNFfIJs=;
 b=R0S7vytmiaq/wmxA/pgeeCQRxUIlJkW9FWHwJlQqcxT3Af/HTD4kk3FREkdzJ+Yn1vEYMQB7CBMq1GkpspEyyKG+TVWvZ0OAMsErEl6+y5U2hifr/yZq/EKxDIbXNVGq2aajrkcM/xpX3L7NoeVYa3XGijPyzRau4tCuSakpZc5+kW6BswHy4SitbFD6QLMmUNDwSf2vuHckKTnCfFJK+TzhezIZBwb69MrvVUwiayrB/MRiQC79OvSX7AAPRjTvFLKnBD5se5L2uWPHzBx74+yDYKmf9MqJuBdIgX7jC1z/ERRLkmTRaUuRif1PyRGGVB1ZS23tfWyf1soD9ro+JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cuo6zJSPcx3myz3avk58fZVDa1AKsEQ+EBeKyNFfIJs=;
 b=wf5Nx/eNz/SI5tcAsrvy67sY1FdL0NK4e8RjqgzKZU0HRoBXVuukVBWLlJkdAHw+JjzHljW2BSIqDp0O9ObDTtJdvIVWiHtBRO7/m2kG81vITVKgtrwzwgyTZd+7ugX4VbsEnbl0D26+dPtZSZwRAuvDZ4p5S6whUJMMPRCkxks=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3639.namprd11.prod.outlook.com (2603:10b6:a03:f6::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.18; Thu, 26 Aug
 2021 03:45:29 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::472:1876:61ac:f739%7]) with mapi id 15.20.4436.024; Thu, 26 Aug 2021
 03:45:29 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v4 02/13] ice: remove dead code
 for allocating pin_config
Thread-Index: AQHXmHrdW+kE9s5RrU2rZkoAxkpv/6uFKGUA
Date: Thu, 26 Aug 2021 03:45:28 +0000
Message-ID: <BYAPR11MB33676C75D3E3BDDF80ABB35EFCC79@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210824000158.1928482-1-anthony.l.nguyen@intel.com>
 <20210824000158.1928482-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20210824000158.1928482-3-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 8fa39951-2fe7-4ae0-ed6b-08d96843f287
x-ms-traffictypediagnostic: BYAPR11MB3639:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB36394947FB603195C0551157FCC79@BYAPR11MB3639.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gS7C8cCWX8s1LrpnyunmsELRlWgNjfxu+eNpZJW7AoTKH5BZEfn3Xfmh4tIuqXYHB43H8it5HrUj5ECDNd5kbkZTiHyHpvnWaXaeiwtiCqEo1PW4SVit+wg3Bh6fVSS7UWXyech+nTp7Sq7kz0eWMvC2/2gdZVE6Giw5O/OwGVtZ407Q3nRbSZf4DgvE8anGW+hem2Mk52HfMFH0kO/mpk/1w+phJU509TXqDnSB2vOcbJp4Wm+a8M4jtTManNCN2N43VV04wsR4aaxJ2uRYOBG5nxQA9gmpx9nU5yzzkGoLAAeiDeX3eJ09HGnW7VvqXx06lIrL8ccEATi2zHFeFECmh2nf8kQ7il3Xtv+852u3/Ba2ov1j9AQy07MvnjlPLGGNCgqwDMaDpRx2CPOMhCNV6CyC1lcNr9q5jZsqD7gJ2jbJs7JXE8MgGUayErQ5xyaeHNA0xrKLov6NdDfJ678EcxtvKk8/sj1ubR4Swk5njF47aC/z7BA2Eg4rOOldlt7u0Tno2+AYK7iTkssBnEwXZxXYq3QXiRCONgWfhZkl3OrPiLuXHD07f+rOoHYyRpgvvtX/pib2lgTkKcE6IMWR7sVrTvd2PVgUp3aJmc3lqHWi1EQFAvvnrYi0vJ24FePphcvBxji2S8OJYXyFIGMTIaSM4RT1wt/ulNaamnvekQmkettMTDARAiQfISdzs/QGMaveJ4K9G6NQr8g5Kg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(366004)(346002)(376002)(136003)(316002)(33656002)(8676002)(2906002)(71200400001)(110136005)(7696005)(478600001)(52536014)(38070700005)(122000001)(38100700002)(66446008)(66556008)(53546011)(6506007)(66946007)(86362001)(76116006)(9686003)(55016002)(5660300002)(8936002)(26005)(83380400001)(64756008)(66476007)(186003)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mXW6XPD+dEEbu4jRMs25qk3Z6PFO+oTwQGWRemzh/N5z/Yzif4GQ1JQokjLH?=
 =?us-ascii?Q?wbUc6lezVeu1wriHH0Gns4AI+lg4zyaVKmyAhZ93873TYRrTpuU9LWKfh2HU?=
 =?us-ascii?Q?/SUFjPie/1ArLk4R7eBYVax3JIDWDJQpM2YhvSzKW8Lc1JENOoo2OngmN7Cv?=
 =?us-ascii?Q?Bg1RxZBX7KOtvTDpR/FbgyBetsh2Z9bXHLCHH0swQUUKY4lmL9ShMJGdAJPa?=
 =?us-ascii?Q?8xZ1Qkfb/ni6qPsbHp6x33IE9spJWvwD4sCYjOlT4DFyn+gt6udUm/RCGa2p?=
 =?us-ascii?Q?2aRPqFkomaqwSeHpNKZiJj+XBS6AxEA/RXRZ5btqxCqmtH/vLHS6b1X5Pgd9?=
 =?us-ascii?Q?+TBzTvzUrVPa30BxNICp8XsDJCSTl4oF5UJVqkUxk3CKmGS6bgL3nMr8GSHF?=
 =?us-ascii?Q?VtZzbGU85gtFWWCkq63JBms8xhpo4aV4A0zrDl5+ZRokR6d7WZ1Sn7Igg5+Z?=
 =?us-ascii?Q?g/gXNRpJuPsxPmODANPhA4747qS8s6iJvOW7o2Ieu9yfPvldWdQtNGqb+bDJ?=
 =?us-ascii?Q?/6qwV7rnf78lP2QdYWGp3QIYJMp6KlIP32hQRWYCwBHxivUsKFlAtAywP3gQ?=
 =?us-ascii?Q?OwM5PmwZgeJFsQTLn//oFHZT31MHCovDfwPivppha1AoX3LsY5MHN7aupWac?=
 =?us-ascii?Q?bImByNL28VV6CuRIBEHq6h2YixWrQfWGHWHeSRnOw7qzvF+b0U0Pld4YxqgQ?=
 =?us-ascii?Q?B4cwv6C1WOTpEnOnkvLe/wuiWTy7cxf1kXSdeKJ0xLO00FOyLi3Q6z5Z/sZ6?=
 =?us-ascii?Q?9MilgfmntMWhXe+8YOiBwTxzSiQxKllDD7yWP9AKXls+54Btn7I01YQ13hGL?=
 =?us-ascii?Q?HpA7+6GLNDloAHmU48unSIJGJU9MgH3Wi9+Q1jK+cQrZ0Ox2GHjyZ2PTcu4u?=
 =?us-ascii?Q?9sdjN1oqlsASG/XKC4E1XMw/vbgfsKu2GRFSnaMO6p3Cins+JOg2AcG4Uc3F?=
 =?us-ascii?Q?exDCO3fgvjHFIJJSa8Fjd3CudyX5aOH2XfxpZ9sXrX+VWFNfSkeXiqDLldR8?=
 =?us-ascii?Q?l7+SNkJpMFvuWM/wCnuNBY0XnChJ2C2zufGnG7R3ek7CZ189Nu/tnlp9xRBe?=
 =?us-ascii?Q?tAg1QHrhVZjfPubbrzP05Sxsy21WY/LKdfhh/2cD/kurAXN5wWYHzcPzZxx/?=
 =?us-ascii?Q?npq9ErevBmzZtpdCwOiJ95gJSfwhbwO/HPIl8X1CNlS8hbbQ9Ivjy6fQrr2i?=
 =?us-ascii?Q?2CAGWjHmB8QhIEKbVRH/crY5IpMH48JEHWJ1SKTcrPbTboLqx9SaviSjK4sM?=
 =?us-ascii?Q?k+Oio7PfTkI6x98h2lKA5MDovMQtOhJ8Z9EENQ36cgoGIpOdQ32bbkXGG54W?=
 =?us-ascii?Q?bDAKRWx/TLJxbF5R7wwlgKG9?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fa39951-2fe7-4ae0-ed6b-08d96843f287
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2021 03:45:28.9238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wUFPc97fhEKfiT/dbQ1U9DXKa3IYCmUxSzA4igCSq3S1xOkZ9+0WUfZwHClGk9O7OtsYsES9IJzjqnyiSV5Zqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3639
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v4 02/13] ice: remove dead code
 for allocating pin_config
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
> Subject: [Intel-wired-lan] [next-queue v4 02/13] ice: remove dead code for
> allocating pin_config
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> We have code in the ice driver which allocates the pin_config structure if
> n_pins is > 0, but we never set n_pins to be greater than zero.
> There's no reason to keep this code until we actually have pin_config
> support. Remove this. We can re-add it properly when we implement
> support for pin_config for E810-T devices.
> 
> Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 11 -----------
>  1 file changed, 11 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
