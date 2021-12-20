Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4138447A8E0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Dec 2021 12:40:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56483415B4;
	Mon, 20 Dec 2021 11:40:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8j91wcYVxf-i; Mon, 20 Dec 2021 11:40:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 533C1415AA;
	Mon, 20 Dec 2021 11:40:45 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C40E11BF2F9
 for <intel-wired-lan@osuosl.org>; Mon, 20 Dec 2021 11:40:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B174160C1D
 for <intel-wired-lan@osuosl.org>; Mon, 20 Dec 2021 11:40:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wzSLDcbYCBw4 for <intel-wired-lan@osuosl.org>;
 Mon, 20 Dec 2021 11:40:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 99C6860B8A
 for <intel-wired-lan@osuosl.org>; Mon, 20 Dec 2021 11:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640000438; x=1671536438;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xHD8hKrhgdTm84BM+7gKU814h0Ku6yxCBfz77HXK1RU=;
 b=LNTWOxELfZRx3ZgecVXfKqdXnlv+f5HwXf9JgkqqDIiZ19g1IUF05A/S
 b5U8pTf54pG+piP4FoCe6OiyGryk8YWymOdIxTFULBi9Hct0g0fdaM+cv
 y1aBOcfkhmCQpRFpE5qpHvxPcu2vQm6DLTOA0iMlNyFlGuyKn5qb7ozKy
 NhP9pmyhMgYP3+TfNcx8lcvDFNNgegJfoQYWFzSGM520t/480MjbX17pO
 lCgCAiS8k+yI2GfQVB/KWwevV72mTKjk9ixA8IeD5UbcVSjy45Sf0vJ2n
 rJpQFDQvisQm6W85WCHobqyh9UXYTTpBYcF/umm6PdRVeS7rfdEgcc0ZW A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10203"; a="227437963"
X-IronPort-AV: E=Sophos;i="5.88,220,1635231600"; d="scan'208";a="227437963"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2021 03:40:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,220,1635231600"; d="scan'208";a="684237611"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 20 Dec 2021 03:40:37 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 20 Dec 2021 03:40:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 20 Dec 2021 03:40:36 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 20 Dec 2021 03:40:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n4lpN319PCwLkAPRSu6e2gw0Z26xGdujN3c8SeCPmgSlbMXH7KVQzAvNJHwD2hj8hIeC6bZgVZO9qYD8CFXRBVEJPmebtgrXSauASa2zh3GRBiDalGp+IO+7/VaeV9sU5pxdJjaOftpQ4gYx1zHoxu0nH+Xb841Jo/N2+2x3lBmttwh8dTOckJmtxBiAcfMzQmPiZ00RA3xAwoA2hMp1TE3NXRT9wSrshQSjXM9NuQPYmJXYxui58SlYvtCltoGw+RazKqOyhaKKLTm/kMBzJOM2OPinjojfZA6wZI4r5HUL/YshrAchBlDgD1C57d1KzY6SXKQhFJFDRZASsHj/mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q6/CDa0Nk3VuIhtzgzL58I9RNfybPxR+hv6i4UM4wzE=;
 b=h2IqcJ6kWeuUnx3fDBDNeiWyCQH708vkajt5h6KuFtWe4pz03u2r954+e3JskxyARTFfggpi4OKch6rtcecKGt7Qt3msJJE5hzDaRXr8SA/05TNqG/NkAFCAmSs3+MV9nhlS0fKQIDCrKDvPfGHzE3h845GLLXFku0dXioxqaorPRe5lJI8xxyV3cp4rnAhtPqgGzvCcWqF7bKh22gWPwq4VqrI2VDdSpT948hakNOyyui8bflzzADjsAoY82l9DeRZjqPmyKrzH3fsTlT0VFkRrOkPlWdY/gkBMuJqJFSM9RXYsko3VlVtqaHVausHI81bCuRHnw33bXHf73u5fSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by MN2PR11MB4014.namprd11.prod.outlook.com (2603:10b6:208:137::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.17; Mon, 20 Dec
 2021 11:40:34 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::bdb4:24b6:5834:525a]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::bdb4:24b6:5834:525a%4]) with mapi id 15.20.4801.020; Mon, 20 Dec 2021
 11:40:34 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] ice: Add flow director
 support for channel mode
Thread-Index: AQHX8Ea2UYyADB81nkqpH3v7EAsHlKw7S6CQ
Date: Mon, 20 Dec 2021 11:40:34 +0000
Message-ID: <MN2PR11MB36146F67D5192545677223C08E7B9@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20211213172511.1083932-1-sudheer.mogilappagari@intel.com>
In-Reply-To: <20211213172511.1083932-1-sudheer.mogilappagari@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2b220494-23cf-4d28-a3d2-08d9c3ad88ef
x-ms-traffictypediagnostic: MN2PR11MB4014:EE_
x-microsoft-antispam-prvs: <MN2PR11MB401414D4F1D10978A4338CCE8E7B9@MN2PR11MB4014.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +EfFVa+IzSRi8iCn9EfJ3oIRtJN0WoLFrHIX+a0vNnSaPBy2rvw4ZHNzxzUVsbaEBr0SGUZhPRFsfqJEftsef+aUYQq1Or0gu1XexsUVsyRoDehjw44VnDmMhxmApJXhKmC40UUoTscizzrfEVUKFUJ5kleIoQgEaVkGNMeKPS/1LRRIgyUI84pUG0Zdy0n593TF18t3iFgbqkMSZktz8+J3a4gq0Pqy5HpxoL37WxnSo9L+Bqw1UTckUkAiuVVmuc1+NvpPXyoMlFIbB/Ep7YR94+uKZk+AZ+2FCHuT3R27lIyql1avEw/DbHa72MPuinhqHl9h4K0F/f5IhYH9lcx0x+MWBR56RgjYG8VYFd3kQvwj1s2bXPvMvouTRiKmfe27WBU57hAtOMF+C1KWnaB0R9xb994v8of2pweaj8pmc0Thu/al0fpRYRnCoiNTdgzFaxEz3ssrr+uLTHTcU3A1Uvc407oXVqOPYJEDXCAbaFnPNpXoYUYEePzKnmpmaBueboleVXAhkRR9OK8mEFbEWZzGq79V15ay58rO1LHTwECaUvs5I1kDh4MvOmDIgFfY1WM7Y4+WXK73gnk4l8owljlFyKECCbJt0ZLArbmM4Qf+NzQ6Er4v2aQdli1oJCJFaK6SryU4AMxwdbT0DPfZ+8vR7CtLKhjJFC+C+bdUdsxllZ17PYH4sLHrwe7yWCnlaPSXOaR/DoiOkRQE8Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(7696005)(26005)(186003)(52536014)(55016003)(66946007)(66556008)(66446008)(8936002)(53546011)(8676002)(6506007)(38070700005)(82960400001)(83380400001)(122000001)(38100700002)(66476007)(64756008)(5660300002)(508600001)(6916009)(86362001)(33656002)(9686003)(316002)(76116006)(2906002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yxGBoCX2mLo254TTubjfHRmT8B4Ml/yJXKaPywdGMHxBCbNrtly8dc/tKZ0a?=
 =?us-ascii?Q?GUK/xQKrfv1XaTSyo8McYXuGHkWBXUa+a/XNKqUPt4FylVOEcL6YeF05jbXl?=
 =?us-ascii?Q?B8b6yXbvBMiln3fBz1ZtRmQSzZnsDqEsWUyS8mhQJdlkSBsyd0KuAe8fdVEr?=
 =?us-ascii?Q?06WT8BUQNhIsscIVBzEPdg0/mwX5SoSVmrotP5hwtAIKjru2ZkYVQbAu1rWi?=
 =?us-ascii?Q?3ArBa7J5eD7YvTdPQ50qNOuUgsW6HhhgNkzLBqU4295FNLJfbxzIREk9uzPe?=
 =?us-ascii?Q?MQfDLA0CCjz8l6zo9bA+ZMC/40aKGeXTYTvPa56V079XPwPVqhP2zKfyC786?=
 =?us-ascii?Q?PimDNP2n4ut73g/ghgFAxCfdIcVD0h/Zw5PE94kf+WkF+ORpfETiWpu4rFyM?=
 =?us-ascii?Q?QV6f9vVSiRcIliGCJEvUPBlHfRHVEVGBCm9yFvh7/HswsaeQcWLyN+Kz0uHz?=
 =?us-ascii?Q?e2oYX0o249CpaG33NMC/zgzuc8/BJITaVYK9hNsB9XtMXC+37+VdRYd9c547?=
 =?us-ascii?Q?ZqRc9xXPYctupLT/8/degGXbIA3TcdboyMQvPHKzNqp9HIw+HJTxYK/Fle9O?=
 =?us-ascii?Q?DgDGwnlhtRaW97zu++FMMSeFYxDCik9QeGfAKbBq6P9H7C1ojirA2FbNmbsZ?=
 =?us-ascii?Q?ozMi4miRroGgE2r6KsawNHLWTYda+LXNmn0/9QkhW2+O1xcSPN3wdtQjYm5f?=
 =?us-ascii?Q?A9PSuZqoTL1qfoczWLTHbYOu0CJ4umI66Fh+NkrDkjqxbj4E6ZobjdPltEjY?=
 =?us-ascii?Q?j//nex+H1261BnzrflA9vSOHOENpA17rBCi5VB00pdMffQiq8+h+v31ICFXH?=
 =?us-ascii?Q?xYx2YRIMTLpeqVRB856TwLm4DNSts+G7BkUhz0E98sF8Sr5MPYI1A1wyjSXJ?=
 =?us-ascii?Q?CFFAQ0D9ps96D4qT2sqZQ8r2I78Ru7zlEycIqAgKnRMnbUQwQYCSV0MeAeXv?=
 =?us-ascii?Q?ieABH7uJfRxJJn8/0dDMdESlSf+xZdRLkvGDL5osJ+IUGV2Y3JVx7mps3xGr?=
 =?us-ascii?Q?cBhbWFVqm91IncJ4EP3vyB291jClhj3hWBl4+dmSti4UHaKNzIZ7ilguM7sC?=
 =?us-ascii?Q?sVDKcYSCiWezs3OgyDCZ9ouXV0oM8hHsV0pKoqsDFjYMwp+Wf7A2ZfT7Y5FH?=
 =?us-ascii?Q?nS3ex2bL5QFacGYP0WBN4T5F89WN90Dk5A6/obFlFS6FzSLRxvQnMy66FYKF?=
 =?us-ascii?Q?iAhvRZvg7ORzZ7UG8kvB3XhB2hpzbePDmB6MWeE0A8Q5IikOidn/uSN+MCqE?=
 =?us-ascii?Q?vhgqx8FYsMgjyeV7au83XRsLgftyKIc18pyT8IAW0KMrW8mAUb5PVF+qaqwY?=
 =?us-ascii?Q?6KoW9Gvv9lR2YQbujtLnDjcX2dwImYqznP09km3xFIMCcpWgdg6a0h6WiFdi?=
 =?us-ascii?Q?AUAS+3ZpU8ij5zceJAyd3RYa9DKvPs/sDaGkXCigCixMqPuFn9xCOJkWqmrQ?=
 =?us-ascii?Q?xOwh9MzzZzSE+xzezkycHqOYS4o6/sbNPC552OTEhp9pQGgLzgK9g1Hwa9P9?=
 =?us-ascii?Q?rXpdhMGWkqCB3Eu4XWiS7eP8yP9UxNFtLH0/Idiyp7qTrJGpVBa5DaBnFA2R?=
 =?us-ascii?Q?p39pLHFgBO3kSdOjdbVbyEeQe8CelOx3IvbZ6CvpH9uy/6zLTkUEtlEi02R5?=
 =?us-ascii?Q?DNSHdXHN5D3GbicujenMvT62mMOVDkyjkTph1Cshme70xz54lKQ4B6iWrd1C?=
 =?us-ascii?Q?Je72Hg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b220494-23cf-4d28-a3d2-08d9c3ad88ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2021 11:40:34.3019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vAxE4MH/+xuGRNFtGXDQ86zk6UdCWW0YWyoT0kPs2UiIyU7TGEIOZLHwQleIkE1zOiMyrzNhMXjV/mOZlJFS1NX0F+meDqtLxVG8eGOS4E8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4014
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Add flow director
 support for channel mode
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
> sudheer.mogilappagari@intel.com
> Sent: Monday, December 13, 2021 10:55 PM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Add flow director support for
> channel mode
> 
> From: Kiran Patil <kiran.patil@intel.com>
> 
> Add support to enable flow-director filter when multiple TCs are configured.
> Flow director filter can be configured using ethtool (--config-ntuple option).
> When multiple TCs are configured, each TC is mapped to an unique HW VSI. So
> VSI corresponding to queue used in filter is identified and flow director context is
> updated with correct VSI while configuring ntuple filter in HW.
> 
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   7 +-
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 260 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_fdir.h     |   1 +
>  drivers/net/ethernet/intel/ice/ice_flow.c     |  51 ++++
>  drivers/net/ethernet/intel/ice/ice_flow.h     |   1 +
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  69 ++++-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  75 +++++
>  drivers/net/ethernet/intel/ice/ice_type.h     |   5 +-
>  8 files changed, 444 insertions(+), 25 deletions(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
