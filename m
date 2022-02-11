Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5014B1F46
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Feb 2022 08:26:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B980408FD;
	Fri, 11 Feb 2022 07:26:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hRJu8yuNGm1r; Fri, 11 Feb 2022 07:26:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1771C404F7;
	Fri, 11 Feb 2022 07:26:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC0541BF35A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 07:26:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A64A181766
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 07:26:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FBdL24hB7hT3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Feb 2022 07:26:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A68E8175F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 07:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644564399; x=1676100399;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fsh0zjNIJ8+WPaG5IrnqO4s/EDDoY+b9/9hBk0dKAxg=;
 b=GVby8Mo+9tZ0I8WuDktKIzk6SM1LqBFgDN/bZohROwfEo2itGZ+wMbgU
 i5EZShlyH5awSAco4fQJtyDDSQqaUEWznr5LU7JDrLg03CdqlbdtXKCmr
 FlYDhjzY4EIL6CVmjVDkWZ3zyK7IlOajyPk04bCzo6QQFcjr9TBFwWZ6I
 NIttuN9J6C2PXr6TJqHCOp62Fwf1T/KYMrHsESoqiL/rJ/QyT4oBrVQkV
 N1qvTPHVIzHeJoNcOhhQgkE/hETewczLCUTWzJS4DuEL4ihlrhiZzWXG1
 CBxnpuwWH6LxIgeSfL+YOYQf7tc4O5F3xAZ3kO9oISN8PDGtUV72Rtuog w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="249887483"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="249887483"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 23:26:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="623137482"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Feb 2022 23:26:38 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 10 Feb 2022 23:26:37 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 10 Feb 2022 23:26:37 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 10 Feb 2022 23:26:37 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 10 Feb 2022 23:26:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fwfABVzHFrQo1mYHOhMwvmqfWY1fYaCrQBEAhGHy3/l32RvNiPxsFban8ux8dHu42Mh+VtHveBkuK8HOnbsaG1Eq1udmVc+/CSDsa9iDWTsTyhbn/zyAQtF7jHdQNjwXNvq/rruRQDAtcXzRh3nTD43Hk4gkCwiBBzXvs5QWiHCcph/c1QBY1Mfy9N/fFcf43K2KEU/v0Lkig3vVnEOcOhaoyMwdQylgwJ5cr2xvRWDuFGVYmc5wiSukOzv6UoKs1jhErsI+8XujYqQCx0WHaRWKl4N/N2et7NA4Cj3jgQLxPwWNou5nmpopsxFQAcX4im3JstHBqVBVSXtDz5owiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=USWaa78DwjMLjj/wek8HyMa0mMM0n3Ki01Xd+eUqFsU=;
 b=B14wJ9jIAmq2eKp39Gzo3c3kogpysGGeT4bhebkmArkzFFsqAVK5z9scf7nIY40mLSQ5sX3Bud0Tnc4n0k0yV2R4SwrfhM07YAC7XZMlC/1yqSySAFMfahleTkijCCkvWenyPgrEu4FE8m5vjzs7pcQ2CI7rpKwvER+zlZc1KOpGesr10sfyCgT8wHXZP6pZyHKWOAgEmtaPaCue63H945a/mYC62U2jsOwGjRtWrc6q4W0YdKdRx6BHisq/DfRzR/x9piYG6577ux097PYTYwJJlVHg012uHQJ3r3oRWkSgqlJMgeugjcD4mBf2Bv//QH4Z0uNALAGjcPRnP0K2rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 BN8PR11MB3652.namprd11.prod.outlook.com (2603:10b6:408:87::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4975.15; Fri, 11 Feb 2022 07:26:35 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9%8]) with mapi id 15.20.4975.014; Fri, 11 Feb 2022
 07:26:35 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 2/2] iavf: Fix incorrect
 use of assigning iavf_status to int
Thread-Index: AQHYE4yf5UcYARGRNkq1zhAelFLs/qyOCitg
Date: Fri, 11 Feb 2022 07:26:34 +0000
Message-ID: <DM8PR11MB562137EC8DE1F1A6030689CFAB309@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220127141640.28398-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220127141640.28398-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c51dc584-7e17-4829-c07b-08d9ed2fd576
x-ms-traffictypediagnostic: BN8PR11MB3652:EE_
x-microsoft-antispam-prvs: <BN8PR11MB365261165F2B0E55C4D417E9AB309@BN8PR11MB3652.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7m9uQwdS686a6mZMPGxKG8Pg7QjzM7+HqzRg492LGNpSZS9kvXRVqVPZhIeV/SOUeoT/4jtkxzMEDmEsP6GHxLNQPi6e8TO0AwmxRNqDpQhwGYD9O2Jd96f70M3T9PEvrBsEl857/O6SbTPfFhas/jsGF3PEgxRK/IweMMdNd7bkOJOwyzOpuBFcF3nDDhES3HiJQmna/wK1bIxL5WE2Ym/xhcKAl3hKTOiJ/YEbTnGi+nHimKPV/Q60l2D5GrGuKNiO9s+iqUGXW/zAEEALEah/p8cjEC75aZ1O4Yu6kHVhjJjNYp1gNvgY+qRDCgAcD6y5A78JIwtxgU+OYKFtcsuyQ9N72opsC98abxzHi3Szqm8h0U1uTSr5dXD1K6XvzsM5gIYdTf+7e+qPd+BARVvVgVrI94keqNd/iVLjJHifbTBpwQtBsvEKS3ukGpv3y2YSoaxg2XjFasoG2yZfHAr1/Ckt3aTHva6iKzunDcYnPtz0kW2yhywEYz+KXdxPn6+nw2kbM6ysw1Sx++2CvoNgzAfJediMOpjzSH/Y3z0FRfoGWez4mndh0LMEkwBAhB+ACJw7X2ql298o+cKoJaT0q/ogpqOcz/JvX2pVxBfG39n0FNTohO2ZOshUK7Rvn7q0nR+m6AOp54wkiqwsmv5FIK8WUdpjGTKg+AlTqkDyTbZbR9UYq1mQitgjcQNATG6dzwIUUDTW0F7l2A/YCQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(76116006)(8936002)(64756008)(8676002)(4326008)(9686003)(316002)(82960400001)(110136005)(66946007)(54906003)(2906002)(52536014)(38070700005)(5660300002)(66556008)(33656002)(66446008)(66476007)(86362001)(55016003)(71200400001)(122000001)(38100700002)(508600001)(83380400001)(6506007)(7696005)(53546011)(26005)(107886003)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oaBxgSVRaXz0XoEYvWZP5C4oMWXxNy/9VtMX2FpMxqQFulleFFyO/8dQWZA1?=
 =?us-ascii?Q?ei9Cor93fzEjKSZNK9y6i6b3I83lcmDIBDrjaHTY4KaWCF0nxVMrvxnzzmSO?=
 =?us-ascii?Q?zdJ47sgPFmBeHFCzGUubSjqu03PygFF8fWA/kSXkuuPP/lC7TXh2B/uBoHrp?=
 =?us-ascii?Q?2GvjgVdPfAmQua8c6XV3f/p946m9CkWEO3BjYzNhMdrg9Oq8DYH3Vak5RmLP?=
 =?us-ascii?Q?8CdMKJgw2ndpAu7vOA1ZOP60qyXDL7VpcZqrBx2rgFf8HUSBoQO7J9lvOCgy?=
 =?us-ascii?Q?YTzEdR8ls2Cfr/UrNPSairSGoUQdEvhLc692jWRINvblqmjrophN+8KDC0Vq?=
 =?us-ascii?Q?8CsmjQTKRbpavAz3dXhQpXl76RZeXCa4Ji7OpE7fKm24fFayssfOLMiVA8PQ?=
 =?us-ascii?Q?oLPM6DJQpwxQxypZPmwwH4jlEAmhv2K+e1MslaYz/Gvjf/Fn70Q4kGAA/oFl?=
 =?us-ascii?Q?Fh2e0r1mwPbqC+Qdr11KyAr2AlnxJO5Z1niIzubr7jdrGDTDF1S6GrMYNCmt?=
 =?us-ascii?Q?udM76aGvfB0cbOumzipjI3oUSaO+sStSY3segf4WZwweUlxd19q3l/pftHNM?=
 =?us-ascii?Q?1UoRDgxcjc3hRqicN+pS2MlOxzEAh1dDBfFOZ4XeEgviZc6TEQdOylxTFUcQ?=
 =?us-ascii?Q?ktSy0GG0PVeBfPQfTG/+US5iz6Oh1ZRgh4ciU9e5+FulqFRL3L1F6GP7QDLp?=
 =?us-ascii?Q?5rnBVNq9tQc0u1QHcQ4KpynBfV0X/oZLACtTo0+AeUC7IXxku/pRUjK77nW1?=
 =?us-ascii?Q?ojfgOVWvgRKkcWH+lzkLzlICMtPueub7UbLE7Q24K6vow/Sdldyv7TvNbsGw?=
 =?us-ascii?Q?EhrQIwae5e49aR2NjJgO3f9MrB/c5BfzuV3P/+xnfwD8lT4KyFhZydfXG/um?=
 =?us-ascii?Q?PBCzHWMdxBmdImv85+VGZgX/aRANzTtX11QhWzOBef+TLclzKa8kNJE873pS?=
 =?us-ascii?Q?0Hr0Uq3Suryqg+tJ/F5tj6lGjyKXa3W+5dwR/3aDQiYGwCON2fzEGlyaBzjZ?=
 =?us-ascii?Q?DDiwMRh3MtwlcfOjlTv8ruwpSn7tPUW4LfNBatn0t5hG00lxc4FO6R4qeSkV?=
 =?us-ascii?Q?YdXyNojlLdNA4axZBl4pvt6Rg8SzAyLVBZ4R4P1cw6cNkmg3iUU4dxW+IgTV?=
 =?us-ascii?Q?QfMoycCNzM3tVijv+Vmv18sk0/EpYaIkyphHdQl6ZSNKGXQjLb6S0J3CEvvB?=
 =?us-ascii?Q?ncYR4J0bjXffZaKhUx9kzDyOXDPdVgmi0cBlZn4AYv0M3uOcxLPilySk5zxo?=
 =?us-ascii?Q?glltq8bnfnz498WRcvuzMnzAWdF8WH8ogxhnpRDCB3WpI+mcmX8joc4Q5/gv?=
 =?us-ascii?Q?nqe8DPEAi2VpIypIO+ufg5NpkDP9eo1IHbxzeQFsPrI+cgCXyLMfDj2CM0Zc?=
 =?us-ascii?Q?8FTwrjFJPox2kDDf32T9Z8ydPcdMYTGy6BM2ZgiDxFdi8+D7kEogfjBFV0dw?=
 =?us-ascii?Q?VzCeBVqs5sb9RFeC1mHpdoAcLvtdXRy3kXK3MVz2OJ7rhNk1XoUiOfVnMdCc?=
 =?us-ascii?Q?sM9bLppachch+k5uz84mCE9J1RBDDO9V/IPyz+dnhJvkITgh9kVIoZuN/hdu?=
 =?us-ascii?Q?1NGuXMeA/bwn7XFy2i4LBPgzTTp5nfOekE4yXzNtV2Cs4ead6XVs8Ov1502u?=
 =?us-ascii?Q?qVHaxzIAmnvdygUdSa9ZQ0chXsd7iArHHinrkNtcRO3UkPcM5ZgLp0Am1TPF?=
 =?us-ascii?Q?bT+0/w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c51dc584-7e17-4829-c07b-08d9ed2fd576
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2022 07:26:34.8961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gbvaL6YD3r1TALO4Ho7trufzojdtVlJCnq6dMIdQK9VHUtodCL0czv0uHas10tv4nzcUJRPgms8JruPSsIe0pTSpbC0P9cQmVkUN4bSzy4k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3652
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] iavf: Fix incorrect
 use of assigning iavf_status to int
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 Brett Creeley <brett.creeley@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Thursday, January 27, 2022 3:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Brett Creeley
> <brett.creeley@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 2/2] iavf: Fix incorrect use of
> assigning iavf_status to int
> 
> Currently there are functions in iavf_virtchnl.c for polling specific virtchnl
> receive events. These are all assigning iavf_status values to int values. Fix this
> and explicitly assign int values if iavf_status is not IAVF_SUCCESS.
> 
> Also, refactor a small amount of duplicated code that can be reused by all of
> the previously mentioned functions.
> 
> Finally, fix some spacing errors for variable assignment and get rid of all the
> goto statements in the refactored functions for clarity.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Submit this with additional patch introducing iavf_status_to_errno
> function
>  v3: Change iavf_poll_virtchnl_msg to int
> ---
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 160 ++++++++----------
>  1 file changed, 68 insertions(+), 92 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 178cc51..9363b10 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
