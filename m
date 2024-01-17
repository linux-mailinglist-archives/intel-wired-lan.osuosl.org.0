Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E0F830591
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jan 2024 13:39:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C39BE40144;
	Wed, 17 Jan 2024 12:39:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C39BE40144
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705495170;
	bh=nDXeO+cfd0OyUJQu6UTxY0rPAHnmRRQ/TrWWWRcnaVQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tVwfXTNK8dKYeb+P7kPUKj5n+wvaDDMwgkS2J6n6OzLI2nVCqOufTAiOtr9AVjxV+
	 kGD02y1ls5XSH+l1Sz23kctei5QKf3sshCLolxjnw8bhxC2lNq8ebgFkqv1Q38a6N4
	 yua9xVWdYQlWRiRDSNvubDw8HifqCP1XD6tPs2/jjkhYVYuUqYbR5UZchGLppKtsvx
	 O1g6F2fKei+xP11UbODKCeMwp9vSC2AeUaKl1lM6XyHiNWdGrLgssGN27AJk9WUaAf
	 beAJPNoN5h0VkiQ4Qlc89D/6TkgzqvdD6Xamf1kApGm4638CnZN7sp8U4/0HU7/fFA
	 jxwetG8Fi1SjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A22_MpWabEfZ; Wed, 17 Jan 2024 12:39:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 637B5405CD;
	Wed, 17 Jan 2024 12:39:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 637B5405CD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A2D81BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jan 2024 12:39:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F73640144
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jan 2024 12:39:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F73640144
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aIJYuUWKhdpK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jan 2024 12:39:21 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 17 Jan 2024 12:39:21 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FE0143612
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1FE0143612
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jan 2024 12:39:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="41498"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; 
   d="scan'208";a="41498"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 04:32:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="18828315"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2024 04:32:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Jan 2024 04:32:12 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Jan 2024 04:32:12 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Jan 2024 04:32:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W+18IwZnoNhWB82YU1w3Mx9J8m4x/mljxY2UgkEBoRmPgGbLu+Sm0MTVO+t8GBYI7zNqSFp1ZKYi4HL5FD1yifN7YEmcQeOvjs5oPJzxg7G70+Hv8L5QhRyLEHJ87Cw0nT5glcfqlruBJjppYGs+I60iAEyO8u/80HH16sR4dM74urhrfeFVqVfWhCPll43sSEQHY5CP8a1H+WSSICfIoPrEyNrLlFu3VHuLLIx66FeSHn4/eg015aRtjvYx4OfXeVN4iT+LqC3jiwZyXvdZPUjcBLS0sSm6v96b1uUQ4QcSAcMuth57Nth2YUl4vM92TGaU8nIEP6aYoCljbHmiKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nDXeO+cfd0OyUJQu6UTxY0rPAHnmRRQ/TrWWWRcnaVQ=;
 b=K6cGEiLw+7P7sWditvsjsNHoemlI2e9Cpu5yAQFPR030FpeUydYxlxbycJlZ8Vh5h0F0Q0JzbAWll3EP/JF0LErNYLqnAU8mGKXzYSGqKCFnkMS3Rr+KGW/Odt0AN+vUo44tYgfUwTDbCx4A7n0btv3H+05IfdOD5yb3fIDMkTknwB8AKCBsgTEAMBbw7U1+gqHyHle/vfGHk9GBOYiWQ+WcJ8i2kvlbcGiNfbDUIcsrv/T2ziL4LJe6tN5FYaVd5ae7nL3etO7bYZqj2flthdhehuX60AIIHs6TvD0NuchIL3cmU43pi4h/UKj6wju3AMZx2KJg6JR4Uye7TeO4jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.24; Wed, 17 Jan
 2024 12:32:05 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::1ad4:b061:90b9:61c5]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::1ad4:b061:90b9:61c5%4]) with mapi id 15.20.7202.020; Wed, 17 Jan 2024
 12:32:05 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] i40e: Include types.h to some
 headers
Thread-Index: AQHaRCawDIeiaLOCokGmzEUqlur5tbDd+Dyw
Date: Wed, 17 Jan 2024 12:32:05 +0000
Message-ID: <BN9PR11MB535445495CBA35161775FD3080722@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20240111003927.2362752-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20240111003927.2362752-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|PH8PR11MB8257:EE_
x-ms-office365-filtering-correlation-id: 803fc405-8dbf-4a3f-adb2-08dc17585053
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gptKRiYm8o8hvb/qTluniGOGl54TD93g3qXsvM+9NvkQfSJte9/AM9w9X4Dj4DiU7w6mWkoj0pJtRurV+spvvgUWVJ9Cw7o7vF/K1W7jQfIiAEDtBZ64sPBYSW91kI2TYsJp+xRTQaTSxMFk0Ss/ujHs4hC2Jh2m+KhX48Gooo6s1FqAxQKYd+UrZksuJ+IyOOyL9E0tlcERAnGP/9nwkTQw0vOuxgRWjPAvOFTNyvoo/1UdGIcLJBsYQVteqmukrelYn7r4RfuYVkIycrWbCuU2BkJduVo848VpL979UuHPXsuzabW2tOV3bDU4YwmC8vW3f1a+gFe9VshXPdeFFsysIulQXCpM9Vx/xxjcYnT6iuQHnseXyRDmSExCtH1WOXI7ZC3rc+1nv1bZcezutRaSmEEJxtqFjTcIlIU2FjHfHkktTy3gug0kjFqdOw6dTs1kSm/K+kIDO5S2Y5CD53VjQk2WmXl5zhqlKfATMbIdbKhXov7BvSRVUx7e1xFs1js6HYXhzPKPsxxiuIjtG09+OpEq6uDQQFcEFEZSG+zaXjJHwpKRup+gTMe0fSab9S2TRcqIb4GhWDXNSfM3kBdZ/JyY36HzYjwQYU977/s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(136003)(346002)(396003)(39860400002)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(107886003)(7696005)(71200400001)(6506007)(9686003)(53546011)(122000001)(83380400001)(5660300002)(52536014)(4326008)(2906002)(8936002)(41300700001)(966005)(478600001)(316002)(76116006)(110136005)(66946007)(54906003)(64756008)(66446008)(66476007)(66556008)(8676002)(33656002)(82960400001)(86362001)(38100700002)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XicN9Q0lR5MqbisxqDRUXoa8Q9MVmQo8QVspZhd89ZPRG6evV+x5Ql9tDiOj?=
 =?us-ascii?Q?JT7G2m+EbsBdSZUBHn/Sn8KEB1ECQLS68cEBMf7A+lSoWRoZk7zRjq2X4zCe?=
 =?us-ascii?Q?mPIjg4y9wD5BMrxXRO9BbVmFc0aZhMCFmpr9jzj2B2xmi74qTLLXCqrQ7EV+?=
 =?us-ascii?Q?CFuScLiCfCuspbkyrahcbpz+VdBTNAd1tWRrjhIVLQMWKc/jGsrSTKjsjmAS?=
 =?us-ascii?Q?KcJATiBVEpUwY7WSfKR2ta62/DnHKNQ0gOMQinUIhAEv35BFcrlKtJOqHsGM?=
 =?us-ascii?Q?8IJxWPDIp5qyBNsZZMs6KIf/oSoOUnMoKTaX5C6qEbuNeMzYErzhmc6dG9oQ?=
 =?us-ascii?Q?/MKFoTuKAQShcAt8/CnVuwdZb7Yt1iBGPHnzJntL23bEtd9XPnz7gEXFd5g3?=
 =?us-ascii?Q?UrCisLf17y3pNwqw+xPw0WvIj7fccbDZfY8eNoWnvLTSdeSFHYB6aQ+t6aOV?=
 =?us-ascii?Q?gNEuBYpnvdE8uJ8XYHA2ZflMzy1T31x5ziZnzqsPqSk5x7BLUiIhV5uoU+yh?=
 =?us-ascii?Q?tKBc6o0ivHCJ5X8DmvoTROFOJSwEg4oLTN+y0GWu/vWX3oW0+mB6m0UL60ex?=
 =?us-ascii?Q?fFM+RChjnvKyW/LsI7vzvHCU1nNdQ6D3edMTrwOyyst0GL+HEbpPJzBFJo5L?=
 =?us-ascii?Q?b6zLCbEYdQilfwTCMTa0lKCINsbxv+fme9YhFcysg7OwwdOrtIEvbVOdQu2f?=
 =?us-ascii?Q?MVYrOUipAzAZkz+Dm9hA/ZYHWEpnhKAHyU8i0nRe+jvTSuOVZta4upNdlz1n?=
 =?us-ascii?Q?pig1E+S3jk3ZOGryEVqAY9E6lyJo4MjbzJdHj6GwE0KpNXWiVKy5in/FKpXi?=
 =?us-ascii?Q?+dZq7oMbbh/q4h8oNA2+hIioaqIYIXLJQruaoSVInfEQQk0Mw8oatUZ8FMLj?=
 =?us-ascii?Q?AINMp4MkQgNMWBFOCkqWjrFQomIEAN09G6Z/ToZhbvoLUArYUVRzr5+0bNoS?=
 =?us-ascii?Q?0yLWGKsucp09LAF2F1nG9Ivt/iIzQSAhtqYQzf8CQ+x+BSxA7A1H5DhcOvQv?=
 =?us-ascii?Q?cgxkK/nmWvcfQMaQpRZJeWS6alVobEPxmTDYUu8iZGmNanYMifOINuURH2o8?=
 =?us-ascii?Q?lFpaUmWiTNY8XKbkO5LvKyxAcwTI6y2MRwuRO86Mf/WSl4050OupqimdMzMY?=
 =?us-ascii?Q?jVFPWL3F44ld6x/ekkxoz8MLzmS5iLSYXn1HiRpyWOQYOdBpMJPzowlEQ3BD?=
 =?us-ascii?Q?LslWngVs2Z3H/rYkFSkO6aUGHhdZlsfTcJT7olA0aj5IARCYRlk0i1XaOP6Y?=
 =?us-ascii?Q?oj3yn7tGgMgwEc4wvVi+Jf1XkKvW+REpCQbXgEJncW+g9TOYSGNPAuaDtHhl?=
 =?us-ascii?Q?LiJ31ctsRx4PP4JfTMDFKPRKZnCpm63I7hNfGG0p9dkvN9/Jb0jqxNslkIi/?=
 =?us-ascii?Q?twx1TVhF2/d82y61CXtrgIjs3sdO+hcjwiKORlEx/fEEZRBbJEXQUPBbMGqD?=
 =?us-ascii?Q?YJGfj10GXGlGKI3DHeCS3YBq+jVwFvunTDeZBmOJAmmDQchD8KBuBGz2EW1e?=
 =?us-ascii?Q?YcGD7jHRXRxeLdSpfMdOJr57jMDd7C972v9Tz9xBDlGHt4qFUxzcO7/QJXva?=
 =?us-ascii?Q?gbK+3FL6VJixOZofdcM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 803fc405-8dbf-4a3f-adb2-08dc17585053
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2024 12:32:05.1864 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NxxxlIye+dJD7XeSCGUC8B+SNDHfDnGX7dxxdzCzoShKnajbc3cO6Bzo0Ht1SRLQbSzRz58IOsdPGwRwlnIj/f7q7DsvWGSUENwU//9h9/E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705495161; x=1737031161;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KbC7DrEmed5GvMZPqv9Z2kZjz1OIM7XGA/bDdI3obPg=;
 b=RnhHHiESaGewQdRJGQrwuwdrIjtEO6cobTEDcq5bJD8pj4DMduzNdlsz
 62EggN6PMVQNQuArLlcY06RuXPImYfLuakklqJMwXa+RP63XksU9SuKoE
 1ShTaqDvvMI5jMhQ+u1RvteiaI4Jo1vdFMzNfh7EFu33fMzjNA0DENhVY
 3q4wXlpBOK4nwxEqoOQOPI9BTqOADscAk/y3LJpfBxoLgjFiC92tVwgq3
 kYT0jbgD1+AvV4tKt0AkGEkx+ALBQPnwfBuJ7oQ5IkE5z6QpMSxDGrtU/
 bGoZixFItt+WrV+HWPanuS00eOmrcgVJuxPMRevZFotuzZwIICXJQgvtD
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RnhHHiES
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Include types.h to some
 headers
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
Cc: ivecera <ivecera@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Martin Zaharinov <micron10@gmail.com>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of T=
ony Nguyen
> Sent: Thursday, January 11, 2024 6:09 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: ivecera <ivecera@redhat.com>; netdev@vger.kernel.org; Nguyen, Anthony=
 L <anthony.l.nguyen@intel.com>; Martin Zaharinov <micron10@gmail.com>; Bra=
ndeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] i40e: Include types.h to some =
headers
>
> Commit 56df345917c0 ("i40e: Remove circular header dependencies and fix
headers") redistributed a number of includes from one large header file to =
the locations they were needed. In some environments, types.h is not includ=
ed and causing compile issues. The driver should not rely on implicit inclu=
sion from other locations; explicitly include it to these files.
>
> Snippet of issue. Entire log can be seen through the Closes: link.
>
> In file included from drivers/net/ethernet/intel/i40e/i40e_diag.h:7,
>                  from drivers/net/ethernet/intel/i40e/i40e_diag.c:4:
> drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:33:9: error: unknown ty=
pe name '__le16'
>    33 |         __le16 flags;
>       |         ^~~~~~
> drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:34:9: error: unknown ty=
pe name '__le16'
>    34 |         __le16 opcode;
>       |         ^~~~~~
> ...
> drivers/net/ethernet/intel/i40e/i40e_diag.h:22:9: error: unknown type nam=
e 'u32'
>    22 |         u32 elements;   /* number of elements if array */
>       |         ^~~
> drivers/net/ethernet/intel/i40e/i40e_diag.h:23:9: error: unknown type nam=
e 'u32'
>    23 |         u32 stride;     /* bytes between each element */
>
> Reported-by: Martin Zaharinov <micron10@gmail.com>
> Closes: https://lore.kernel.org/netdev/21BBD62A-F874-4E42-B347-93087EEA81=
26@gmail.com/
> Fixes: 56df345917c0 ("i40e: Remove circular header dependencies and fix h=
eaders")
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h | 1 +
>  drivers/net/ethernet/intel/i40e/i40e_diag.h       | 1 +
>  2 files changed, 2 insertions(+)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at=
 Intel)

