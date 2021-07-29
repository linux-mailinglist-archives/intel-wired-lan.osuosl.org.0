Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFAF3DAEB8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jul 2021 00:14:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A360183B40;
	Thu, 29 Jul 2021 22:14:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wtI6_WECT_gb; Thu, 29 Jul 2021 22:14:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CDD183B28;
	Thu, 29 Jul 2021 22:14:20 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B1CE01C115D
 for <intel-wired-lan@osuosl.org>; Thu, 29 Jul 2021 22:14:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9EE4F401BB
 for <intel-wired-lan@osuosl.org>; Thu, 29 Jul 2021 22:14:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XF4LPYf0d3KY for <intel-wired-lan@osuosl.org>;
 Thu, 29 Jul 2021 22:14:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D8F8401B3
 for <intel-wired-lan@osuosl.org>; Thu, 29 Jul 2021 22:14:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="213020140"
X-IronPort-AV: E=Sophos;i="5.84,280,1620716400"; d="scan'208";a="213020140"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 15:14:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,280,1620716400"; d="scan'208";a="476648990"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 29 Jul 2021 15:14:09 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 29 Jul 2021 15:14:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 29 Jul 2021 15:14:08 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 29 Jul 2021 15:13:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oYKZX4LLDaF0ouaS1JP4i1lVFOh8BGTxZ/W4LkeP6cKtgQsZCRZ6Usbx1z+IvWcy445J38SMEDxMlHiQ3iqHc0nX4BfXHTxSnrff3vp/oQQvb46VDVpwlH36JBbIbtV2ux9/J3CM6aLUbL/j5mevFR92lZPxXSEUnMQ1SxYnBnLKVEBvgtX3alidAPpAhXl6q9aqTovzZn9spCt6M5QpE2eyY1byR/u9PQ2q8kYELp+yr7LBv/rnTv9l7fGRKSQI98UioxjclYCtlwiQGRNcm3hRdZ4Xr95uZpti3KeQ+YufX/Oxo8cGFBOjQwx/CmzeaMhBq7hyeQ98T/r5FPBkfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=stnEv6oz13DOVp8oapW+VPQEZNnzka+DG1cW1mgKeDE=;
 b=Gov7kIvXo4Xc4UM0XHW3SMq7b0//ku5LpMVIizLdfFzzYRPsGXVKJI3tetB3QHQ2+nfTy32pAbX2yhouh84ki3eenz29roqr6TGjnfPkKlMlQ9TleZ/+SmssWpfWOp2NM8BgviWnCWZrz/QfIVRQXc+VJsEnM2iloL8uIgy10TPPhWYaj7kCpRA/nOtP+/jUsqBv//UoY+uxx2v+sR0PQ9hpSNDSiATIcjEshiy09Rm1HxW1LS4E7tjiP0WN+ThhP7y69MZR5gpmLi+rNumg8RsXNj1nCnDeaSDxYp9XqiqnCR4e3C7eUd/U+D81C/xjo/zhOmwDKRnefTfJPuPcwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=stnEv6oz13DOVp8oapW+VPQEZNnzka+DG1cW1mgKeDE=;
 b=skp0/nrvWSv6+2PnDxQkBLplKywimcXKtbvQtZ0dFnz0a+YntS0TuqzCSU+Xa8tNXdTvGJgzVjqpYy0mgi0TiiBR26m2oeVSsjYBdUSCMvXRtrX+dE4+t7SvS950a/2qbIJayABBVtSzZuFNGsh7ayYh4NU1hfcPkAITdfl5PJg=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (20.182.138.208) by
 MWHPR11MB1519.namprd11.prod.outlook.com (10.172.54.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.18; Thu, 29 Jul 2021 22:13:34 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd85:7a6a:a04c:af3a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd85:7a6a:a04c:af3a%5]) with mapi id 15.20.4373.020; Thu, 29 Jul 2021
 22:13:34 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "G, GurucharanX" <gurucharanx.g@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Arnd Bergmann <arnd@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: fix build issue if
 CONFIG_1588_PTP_CLOCk=m
Thread-Index: AdeEki1xGtTNTgPiRdKv4ThQM50ONgANKAnA
Date: Thu, 29 Jul 2021 22:13:34 +0000
Message-ID: <CO1PR11MB5089698E466593B8E7ACE34CD6EB9@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <BYAPR11MB336788636E4860CD17D62CFEFCEB9@BYAPR11MB3367.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB336788636E4860CD17D62CFEFCEB9@BYAPR11MB3367.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ba6aaacc-a765-41a3-3efa-08d952de1b43
x-ms-traffictypediagnostic: MWHPR11MB1519:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1519305A956D68C00D404791D6EB9@MWHPR11MB1519.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gwsIYp2eB8yJeCUUEj70fjDm1JgGVtXmqSRqqT5fdLOd5gJ3HqFyVRCdoE1/Cwmt8wQ0uAosZaoJyCWMJgVsohskcLiZwtMzxYXr43ASQ3kf3o4GMTx6TUIey9FSnarTddBbJl9arX2t8IxQj4RbX4xrYHhxpNX2TiY+mCe1PHdpvFKEd6Pwc7XI6RvonjY2TBsDgm4/zpe0luWInppb+uQV1Z4zrzj3LkPdx66i0I08Zz7gwuHBwQpZXAnVNdxFfvwiaDlkF99Sza8x96ZJXDzv+R2wcSvlJBUcGrx1qMjzLo2AOsjTZVe8WDcB3Qqni1Pog9b5cnuHp74uJb1CrLqURAT1ZfIonUGUuupDy/2m46FpfBD2Ywk2KLJhy08tiTblABpJzv6iIpIZUlF4GYvk8QV6/s/XAz2RNlcPS6Z8D883MnrhOJiTXUF3jcqbOt4qQyV6V2UmcUf5S2rZmZ/sRs0xeUj+NLmV9TogBZ1bkn17UfQSPA14nPWJtJoajhf6gymH47U1uADbsaABeFoYGIZuoqAyS4+UHdqJ3S9LVM4wThZik8HiMaNCOxqX3/gJemp31bZaSM68oPcKwh0SeLRUBIzb+xAYfW1JEFk+oV4+Zc9TnIgvy7Neh/ysXaVk7yZrTbKuPcnp+srwp1MrJtINmqtFDaPtS18GSLEVohvIDI1ylr9bca1VDGFoHg76Fp/55LY7ICayHOTHHA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(346002)(376002)(396003)(39860400002)(83380400001)(122000001)(7696005)(33656002)(186003)(86362001)(26005)(6506007)(38070700005)(478600001)(38100700002)(71200400001)(2906002)(64756008)(53546011)(5660300002)(66476007)(8936002)(52536014)(66556008)(55016002)(66946007)(316002)(66446008)(110136005)(9686003)(76116006)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sYfP/Yc9l6t199oAuawZOwuKHsBEC1IC6ziB1gX7aghsJ61iVM+21Gogu+WB?=
 =?us-ascii?Q?Ap0y6bPCsACSpxW4pkMJwbe7H2lesrbCoHAq1Vwz58w+tvH0U2JvsfdS/NhN?=
 =?us-ascii?Q?1p7XWD+jFOFxMtz1Y21P6yVajxPh0gWEWn7Ks64eOEA1eUgpolY/A72zLmwP?=
 =?us-ascii?Q?CD0goPv1MIE3xvryo71h9W0DnXfr5EaAZPqj8sfSPGnk4wP5Dc9Ce4U96Vri?=
 =?us-ascii?Q?gdQV+K4frNmUtnblsm4CLpMB9RER/lTaPXwsOjXDYGLkm7kCYa9gjifNQCjD?=
 =?us-ascii?Q?m33DKvTFcTqPFFngWiEsIxsMOPzn9fJ/CInzlAXXOYWcxViMYsaDRHJbrwXm?=
 =?us-ascii?Q?xJanbu+ilzk5+joGGtXKVKO2AV1BeFq89gY5kR0ztN/GGsV6vSDLA/v7ttW8?=
 =?us-ascii?Q?YZnBBff+ppib+EV35sz2cOo7rDZY898gm0zVtmVSyRcOcu2UclslXj2e3fZC?=
 =?us-ascii?Q?bCn9/hLvmFNjQr/b945Eahybl9hm1q8/KU/zf4uzI4NaKzUZcbeFgZyk49Va?=
 =?us-ascii?Q?vnacqi5qF0ppefmQFxC0PWdhF3J3Lp62bNLZ95awDAAPBCSjwTtoYlIACYJj?=
 =?us-ascii?Q?Ozordm+MnccaTGLWFNDefsoXlewZTVovGcgMjdi3MsbKhDg5sPH5Fp4fVKWs?=
 =?us-ascii?Q?Z4aeysQA6sW1l+q1K+Ai/0SFa9y1fG3wGJysL83sbfzfo325lCsDysKiXI7i?=
 =?us-ascii?Q?hMm1WL3OKM7tOuN9vYIbFC0fcqAJNUgWb8+j3Lxoty2vnpmdAZc2yjUV4DTQ?=
 =?us-ascii?Q?35FWf1dZYPpnO+UFjCopkxNkRxeIX9M8FQjBSqpL6dEESVupR+rlL2dR7FF0?=
 =?us-ascii?Q?tMjFjnwgpVN7XxJsz1oZBK2a78ARt2zWJbGtFA8NTdD1fDDg9DiUGlugERX2?=
 =?us-ascii?Q?arXfWHcFX4U9hLwq+YXRZZ8448Saro3p5b1jL5pGYZjyqmx8gG17nx9//BGk?=
 =?us-ascii?Q?A4rgA3mZyPd0VJMcsCDC9E7h019jf8IO0O7ahrqFpyPh6ymwd74C+ns3hHQ6?=
 =?us-ascii?Q?lKoE+4schLsOtDaKsRCeOwfC5QOQpo7Rg/tNaX1Rb+7VEom5wE75UrOf7sUy?=
 =?us-ascii?Q?UgPzL0jCoKmgbuyMhIeDc9Sed6G+md+m5/uQy41/0j/YT/bs/ZyynNawTw5X?=
 =?us-ascii?Q?5Kww+SEzJczHGQMI4Hbs0+t1Ly1nKZHjz0WBdUA1CsF3fazhz2+CW4tH6eDY?=
 =?us-ascii?Q?+sZaKT0Ky8ektiU11+U67UXsRMpaAMans0SB5KvAWUkIPofeW0ObENHdb2bv?=
 =?us-ascii?Q?JUpggbbNoGvn5bOYaSL8Ae2XjNv6otpMfh7jIAEoHhOBxpr9/yWeuSffHq3o?=
 =?us-ascii?Q?6mg=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba6aaacc-a765-41a3-3efa-08d952de1b43
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2021 22:13:34.2458 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XTh3hLYDcc5JgftXVTE+eURC9RZHJjvwmxquocQAEIMMvZtkNHl/YMTGnpX+gUOjRsOJo2mYFfP/zI7sZmqawFd/9k0uts2jL+0anWCJ4QI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1519
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ice: fix build issue if
 CONFIG_1588_PTP_CLOCk=m
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
> From: G, GurucharanX <gurucharanx.g@intel.com>
> Sent: Thursday, July 29, 2021 8:57 AM
> To: intel-wired-lan@osuosl.org; intel-wired-lan@lists.osuosl.org; Keller, Jacob E
> <jacob.e.keller@intel.com>
> Subject: RE: [Intel-wired-lan] [PATCH] ice: fix build issue if
> CONFIG_1588_PTP_CLOCk=m
> 
> 
> > -----Original Message-----
> > From: Jacob Keller <jacob.e.keller@intel.com>
> > To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> > Subject: [Intel-wired-lan] [PATCH] ice: fix build issue if
> > 	CONFIG_1588_PTP_CLOCk=m
> > Message-ID: <20210709210726.224848-1-jacob.e.keller@intel.com>
> >
> > If the CONFIG_1588_PTP_CLOCK symbol is set to m, then the driver will
> > not compile ice_ptp.o and ice_ptp_hw.o because it adds them to ice-m
> > instead of ice-y, and nothing includes ice-m into the final kernel
> > objects.
> >
> > Fix this by using the ':m=y' so that we always compile the files and
> > link them to ice.o when CONFIG_1588_PTP_CLOCK is a module or a builtin.
> >
> > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> > ---
> > This fixes the compilation errors that have appeared from lkp on Tony's
> > dev-queue. The lkp complains about other patches, but the root cause is this
> > issue. If we apply this, it should fix all of the lkp issues I've seen so
> > far.
> >
> >  drivers/net/ethernet/intel/ice/Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> 
> Tested-by: Gurucharan  G <Gurucharanx.g@intel.com> (A Contingent Worker at
> Intel)

FWIW, this should probably be superseded with a v2 of Arnd's fix to modify the Kbuild instead.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
