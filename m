Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FACC3E0E8C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Aug 2021 08:45:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50365403A4;
	Thu,  5 Aug 2021 06:45:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zg7mG5sWF2zV; Thu,  5 Aug 2021 06:45:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 536F64031C;
	Thu,  5 Aug 2021 06:45:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2DE621BF331
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 06:45:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1C0484031C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 06:45:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L7e4sNkJ3SCr for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Aug 2021 06:45:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3379D40315
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 06:45:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10066"; a="214113603"
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="214113603"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2021 23:45:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="480685477"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga008.fm.intel.com with ESMTP; 04 Aug 2021 23:45:34 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 4 Aug 2021 23:45:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 4 Aug 2021 23:45:34 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 4 Aug 2021 23:45:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MCurjQXW+8xihkG2izEbe8tTjxvG+UBlncPSp+OM0H7wDaYhZQw03Hh131M3/v0bITs60XtgGfvJCIrQSj9yUVZOItLGLk+deNUCCpdgDisnZxBxqRC5UZikyt6aNI3MQAVY6EBomAocJ+piVD+zVv7k0VrEB6lU5klrt01nVFP3Ip2EA+lPQ6usSXSPSOvhVsECIKSRahsuEO4g+nPSlAji66BnLD3BcmZLMCKoSTeXYynLhR3L4uBLP53yHTJcK3k/U/yf9iby41bJldxitT0zQ1JD13gFPy6Jg6jaKcAReNYr4yyBNVpkTib8iUe9dBRDcvboARy8/Vsf4AZ2sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CT52zPRM7lBoFjqRKJC8dvdUYYInEooTP4832nHnK38=;
 b=SE47rzhRcatkcAt+OLDtqc5YlGOP8tcJmdJ11kA4Pz/YLaKrsQlEZUsg3fw38xbEe+FrJ1OwT72yGW6OulKNznVagAAokz6B9XJ8EzgQIpYYKz60PJqZ/z7CN4tEN46ODav7YAK/uisSUFvFcJBTFVJjpRA9UcyJk/kV0DV7UyXjuhXki6L9GTVnGHoq0szer/1WE5dWQyZxUGr7Zn36wNNmDQcCyfBWzG+Jm5MiUJqJ/uUvkKEiglEFjkZI4cMT96gJexCHaWeY8x0ouSCHysawswbQkAnBLlPyqaV6DE7dHo/vgzq3H5gJ53f/5mbUkRN5sWcsftf+0MPtj3ZtLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CT52zPRM7lBoFjqRKJC8dvdUYYInEooTP4832nHnK38=;
 b=SA4Bh8u4X89N9ODAKZusZ5IrzRJGEo/epF1+DJVCUbAhAb0DXf3Dv5nPUdUfGMhSLc/yEVtJZaaRttk08gUpbv16+MLI5w8CVHgxObQPyt9XCqe2JP8D6+dsz8l0HNwBKp27LoEBnazoCQBTvyJQ6SYIHnX3y7pxgu5kOSeAumE=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB2887.namprd11.prod.outlook.com (2603:10b6:a03:89::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.22; Thu, 5 Aug
 2021 06:45:33 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::4d0f:77de:b513:595d]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::4d0f:77de:b513:595d%5]) with mapi id 15.20.4394.017; Thu, 5 Aug 2021
 06:45:33 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: don't remove netdev->dev_addr
 from uc sync list
Thread-Index: AQHXg/CDUUs0oZjitUe/q6ql3EaYG6tkgb8A
Date: Thu, 5 Aug 2021 06:45:32 +0000
Message-ID: <BYAPR11MB3367123D052CB0235EDB8B4FFCF29@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210728203457.325482-1-brett.creeley@intel.com>
In-Reply-To: <20210728203457.325482-1-brett.creeley@intel.com>
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
x-ms-office365-filtering-correlation-id: 7ae7f32a-4b51-4ffb-be6c-08d957dc9f8b
x-ms-traffictypediagnostic: BYAPR11MB2887:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB28870852FD441E0963976D9BFCF29@BYAPR11MB2887.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ATxp/ba48T7GukO977CeH/0O1T8UkJoiBzWT+C6KlXllquXJCeWF00yWi4X8HIszbxlt7oj+wMZcemX5rToufYYxaEgkUcTimX3p0ekCgqlOilAYs9hyqmBFILhji8iq2jP1W8nIWpvjhUgic4s+YJgueURvj11XVi2mq4mvSPCkRGdHDDSmrDR/SiJ9JVD6KeFaAbjItg4Squh/U+wkWlFH+CjEkhqqDbicNYN9t40/Ghu0qYRJmYQCVWTFAOMmf2ZOR+1iYyoqwMPxYKAhNszqISZJnsxOGmRA/2nzcWg6gLrSp+Rw4W675Nh41VjM6cEQQYsYHjjwdnnPWW4ptyiR4B04/1AHUZZf14xsu2e+/YhaHYfnnvdx8DU6I3melRbcvdpQo2SBKRu7+p9g/0cV3SXPOnRGdvg/pSaU6YnGkSEkzoqKIxDg2gyMnx3z0wzeOhyqUcYqfLHCEE4/P9Br5cGylceD+HI5QDdpA0kPo0qKD3Hj0k999mMNCTtnjQ6CsFQPGQnj9toeMgv2J6ADMtgUF5hHGCUZ34KSbHFQiAurIfZHDOMYRJ2qXLyIdwq9RMsV7GNjNvicEb5rY4jVjGs12ucY/09CaWu1ylCJ6bRQaPwdwCVKsh0IGjcv+bm2xtgCKsJTCrRqaQFcgiLW0CylcVI+e7pmy9887OXx5Y3C4GoqUZAF4csQ3CjS8pJF8N38msm4N4sRonhQiQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(366004)(136003)(39860400002)(396003)(9686003)(2906002)(66476007)(316002)(66446008)(186003)(4326008)(86362001)(66556008)(478600001)(66946007)(26005)(5660300002)(76116006)(38070700005)(110136005)(122000001)(8936002)(53546011)(6506007)(64756008)(38100700002)(55016002)(33656002)(52536014)(8676002)(71200400001)(7696005)(83380400001)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ChJPwrkXVFyaXGdTouE5XsF9hnNNOZf4KQVlaMcm1RqCmE7S6IVsAKxz5ck/?=
 =?us-ascii?Q?ehbJw1bQy94aP4QQI5CQfHT4m/TctV9z4JDvpvvl5cRwD9YHSiDoA+X+q715?=
 =?us-ascii?Q?PhwBgo5vNPZfepsxk+B3gXnZx9t6ix1Gfu9ca+anvHlj3N994/BC6qNZTGrp?=
 =?us-ascii?Q?1yRgVGIXYaBKIMUWmz9G+BjFzsaM/bvCPjCkoksBwWAusRCyquNg8KAlLLRe?=
 =?us-ascii?Q?H4ics2iFkGkgqVfA7VE37BpcbaV7+nBTOedJKXELeJ0x3YWXPw04daiUYyn1?=
 =?us-ascii?Q?A+J+jZKq/z38rZdlQE0WEQl4DJHWHsPyUGEFgch9dRCZvtTKc0nuGzgma7aV?=
 =?us-ascii?Q?zvm6O2yg7kmQXzUv3bdf+0RrXgc+IC3XskCOWh6XCzSfQ6Pe+2yeydttpbD8?=
 =?us-ascii?Q?/vSEV1hI57k3k8ciNPVajfijDegyW1eT4mNd3AiuXEfjlUhbTSYe1ovlyj8e?=
 =?us-ascii?Q?qLkQTlOTKyJQnMJqtwPJh3sBMXMmF08o5hKbSylAsJBdhQIElNm0O+6WSr0c?=
 =?us-ascii?Q?e4JbNn56AiPTDEsDd2XZShPkFSF2DEjI8/iOC+tZeJZO5P30f6Br6UONv5g/?=
 =?us-ascii?Q?7kP5+xZIwZb89r1lvv9oDjG3h4ereA18iEd7ixPwGsoxetDm6245t8eu0ce/?=
 =?us-ascii?Q?55c40xodnZCylrU9MSb6N3Smv/Yui5igkjeiSknKDLc/e+FjNo2oYvnA+U2c?=
 =?us-ascii?Q?ngx/s5IulDoYJ82eR9xK4Rg1MUzgLiinsmINjbCtunV5xdU01dLv0z124cip?=
 =?us-ascii?Q?AYLBUnQltlSjaJzvj1wQBml07PcZk4TaeEfxSfhYVDNMJmgqSaNoF/i7OfTk?=
 =?us-ascii?Q?COYK5vioQ8B0VNOct3An4Jaj/UsiJzidAkRYc6xjL+29p8AsqEfil4K3Fptf?=
 =?us-ascii?Q?xNzl7vtqekHdSn6cgQmoEMdfJ+W/TbwFqaKsE10dW6Jj6T+KLpLZJmw0AoBT?=
 =?us-ascii?Q?C9fU2b6pv8NcCSgLgOSlKZldg8QmkNfZljAh66OSgjcxaoiAjS3/uBiAgwj/?=
 =?us-ascii?Q?y8F1btURjQZWWPYfm4Mj0lDFJEd97WtAfGXylpe52sXgpfD3aUyXYHxKnFLi?=
 =?us-ascii?Q?ddfoe0aRpcCjbw9Obv7Vqhh6hTN417eeiRQFzp2awodFDJSA9uVoWx7tQHIg?=
 =?us-ascii?Q?R3XtWVlbqcKC/Gy4rbb6d6bdMOSeH6C8xPUc/g8HyKtP10LAzbtZGxBoSqwE?=
 =?us-ascii?Q?vOdMDaoc7OX8vWZmZaeAjVcr+0tQJR8MJHT7S5yytuQCqcZ2Sp4advUqOLBN?=
 =?us-ascii?Q?WP1mJjrMgI/77rUmynLG1/b265AyaBNtktYVVX2Ue+CDeGMTaN0pS4+w/wGg?=
 =?us-ascii?Q?QhI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ae7f32a-4b51-4ffb-be6c-08d957dc9f8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 06:45:32.6885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sQxn6VPiEtwJYf3irWcnW45J2DNaCqnb6kKStzw/SFbYNbIKyzVKGXYnex4TvNrggGsMmIxxFiNZQd8fmjNGow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2887
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: don't remove
 netdev->dev_addr from uc sync list
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
> Brett Creeley
> Sent: Thursday, July 29, 2021 2:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net] ice: don't remove netdev->dev_addr
> from uc sync list
> 
> In some circumstances, such as with bridging, it's possible that the stack will
> add the device's own MAC address to its unicast address list.
> 
> If, later, the stack deletes this address, the driver will receive a request to
> remove this address.
> 
> The driver stores its current MAC address as part of the VSI MAC filter list
> instead of separately. So, this causes a problem when the device's MAC
> address is deleted unexpectedly, which results in traffic failure in some
> cases.
> 
> Fix this by making sure to not delete the netdev->dev_addr during MAC
> address sync.
> 
> There is a possibility of a race condition between .set_mac and
> .set_rx_mode. Fix this by calling netif_addr_lock_bh() and
> netif_addr_unlock_bh() on the device's netdev when the netdev->dev_addr
> is going to be updated in .set_mac.
> 
> Also, change the netdev_warn() to netdev_dbg() when the device is already
> using the requested mac in .set_mac. The dev_warn() was causing a lot of
> unnecessary noise when configuring/unconfiguring bridging and provides no
> benefit.
> 
> Lastly, instead of using memcpy() to save the netdev->dev_addr, use
> ether_addr_copy() in .set_mac.
> 
> Fixes: e94d44786693 ("ice: Implement filter sync, NDO operations and bump
> version")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 25 +++++++++++++++--------
>  1 file changed, 16 insertions(+), 9 deletions(-)
> 

Tested-by: Gurucharan  G <Gurucharanx.g@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
