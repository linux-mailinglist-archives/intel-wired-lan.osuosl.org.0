Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A105257973E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jul 2022 12:03:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62CC740BC4;
	Tue, 19 Jul 2022 10:03:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62CC740BC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658225027;
	bh=pvtdu4VzoH4aZXpQ8zyGGHRlwf3WbJBKAbcZ7/bsx4U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CKn0MntbQ5HfpRmmDm5iYEKA3BzqSEupl0/ToAksvq48pw6piZBiGEyAtmxfh2Gcv
	 /mjtHDgmQRhE4i73UPrQLp6vOex8Q26dHMYfhg3tFSiJiW6MwEM3ByhRPId2/6WExF
	 /n+bQFiSPxPXgRpM+q2j7K1M6z+5ov33JptaO3QpjBCxyVQvs27okljGttVmDNRXJZ
	 SmXK5GYax7J43UOPBXxU8lwy56qLmfsg2pGWQPCv16TvpC6mYgdW5JbGQzRSrxcL1k
	 he8PFxDjPeF9H7DaMyXkotIm/1Sk1vFAc9d/ZozMQ5tsZuNAAx8rh1YqdpHJLxo0eV
	 YTZbZzg4MCy+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pBe_SD08ZUtH; Tue, 19 Jul 2022 10:03:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96C9F40BC2;
	Tue, 19 Jul 2022 10:03:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96C9F40BC2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 54B5B1BF345
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 10:03:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2904460B45
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 10:03:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2904460B45
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LqpetMAmI_3N for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jul 2022 10:03:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2EE5D60AAE
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2EE5D60AAE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 10:03:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="284014555"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="284014555"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 03:03:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="687063208"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Jul 2022 03:03:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 03:03:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 19 Jul 2022 03:03:21 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 03:03:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fb85h8sHPW3xtBMzSYRsPcoQNhFitd0M4xnvH0Zeck9ezSwAWs1mkT3aEgQOiWRseiDHTqV645lx65De30UoiXqoFrwUAR18UdvTQeppIgXZYsXEfYXQmxL703twws7oRudq6HA3LVcFKCL6fQBF2VWuCdwxTVVpoNAWfOfBq0mDXnrGTEaPF7+gkyfPIm5l1kT37mRgjxrdi51VXiCYVup6zVvN3UrtQ941CCe70/ls1MvW3hNg5YSrw+8qpYP2GAtvQpGCSIv13YdOucGJr7qh054E3vcoLoU9t1auhPwtyIUwW1JO7Klo14o3zJ4Wy2/Wfz754zTmJFLkIxwunA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hJMfpCvWKpT+SaxOLF2ns1wUvv0VXJwy6DGYIR53HCg=;
 b=lXybdw2InEwSGPwUWCgoULOp6tzRLziBJ6DQyfQY3l6yrnhHV2gdGfnz3FC1F1lRuVJr1hpghJddmYKS02l1FuE7iHU/xgixx/sd0DGnnw6fXLNV+6GKqI8TdOWb3ElFiiUvgRelzNBoR1Eya1cEC8exSZzvgT2UVOHzZID/BR0byX1fiKquaehWCk9xsf0hxZ5ZOP8WkoRxpdXo1SMrV/kBlE/tn8QUj7240z1cEMAICQNyy8m1QHTFswUPM4WtQzIVZzgWvI2n2Y0qxGjYCw8fdQc/Xzq8SvF2W2C9gA+wYrl9ScwJjTGC0F0rb/Q3u4d0A7KNgCF//UdEOo2/TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by BL0PR11MB3025.namprd11.prod.outlook.com (2603:10b6:208:79::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.20; Tue, 19 Jul
 2022 10:03:20 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::b8b8:2535:3d39:d4e7]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::b8b8:2535:3d39:d4e7%6]) with mapi id 15.20.5438.023; Tue, 19 Jul 2022
 10:03:20 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: enable tc filter
 configuration only if hw-tc-offload is on
Thread-Index: AQHYhZ6h3oq2g6vvyEGm16JfC5/hc62FoS6w
Date: Tue, 19 Jul 2022 10:03:19 +0000
Message-ID: <MN2PR11MB3614CFD8A83ECF761A5269308E8F9@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20220621183844.2293757-1-xuejun.zhang@intel.com>
In-Reply-To: <20220621183844.2293757-1-xuejun.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ec58cd42-8dc4-4362-8bc0-08da696de887
x-ms-traffictypediagnostic: BL0PR11MB3025:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TQHeIoXiXlaML7NCAf+pyNtNN7hEVopLhIdhwTWfFo67aQtzaG8QIgz2gP+CSlo8ld7svX5mDjNVVC44qXO5RcMQRtRZQ0mU4xswu883HsPI67HCYQqFtl+Ib4w+IkVpUpCxDIu/f/pvMviXzDyv6etOBsr6xTbxfU3naAsikMaye1TBTc8/+TFUV9KQqLfISCeHn+qWdDsyot7UnXrYaHN6eIwp2nJbX4NLe39WuxOiOMg1KLz71TmIzGuvIv15Ujy0YxXFauxWm3cbU1RlXfHjndDopEyd4pMLENwo03fA6OevFi1Op1BxOblZWNNho/W71Inc9AMQVwbK/K3f34tLDh6hLZzy5ydtvhVcQxbQlLAtE7X5aSNd0d2iiyVz0Z1KzYE3pShk+v9pNzjldJ3jzCKlkZYPWgFwDNFSc83jp7FYZxNZYV2andJ0taMDecZrY8tw3uo3aRVCVKRWmyjbPMl0MUYy9o0YxlK9gmHA+xf4OrW15agcMvH1INYebJi7ZJxJ2h1nxXoBThMbD7aq61SWRe4j09Wz+cv7tmh3n386wgenSY8U+rgSZ1PxmuvBC8WKOpXxGGZL0dCgtb0yjMMrKbo8H7oB76UjLaWRiQa6bUk/SaHYGeQDBOoZHsRWuLDDusLD7f49kHUpcOwmlQ4jF7hG1E1M1wrsN7+SCmtPv5VmI4mNK+2CJbqB5piIO/+jFNOI35T7cS8mB9TeWOASLZJU7f0eTYgaMtDK9UR8wSKyP3wDNK7sRXEJ4mYma0ZmjNgFoqoK/U0kyeybxz33QlQndqzIZjlcZC9aLpzDst+LmhLfuqmG45us
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(376002)(366004)(39860400002)(396003)(41300700001)(7696005)(53546011)(9686003)(186003)(26005)(4744005)(2906002)(55016003)(6506007)(83380400001)(478600001)(66476007)(66446008)(76116006)(66556008)(66946007)(52536014)(64756008)(8676002)(71200400001)(8936002)(316002)(5660300002)(86362001)(38070700005)(82960400001)(122000001)(6916009)(38100700002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EdgdNC7+MTVD2w5X7fi1+Tv/rV17qMsPLubRsUTSibJpG6z6eD41XHQaaYJj?=
 =?us-ascii?Q?5ctEuDihn9fETGGjvck4vjd2RsXq5EA7U+bCTT0+VvN3YGEGl/KIB6MIYC+c?=
 =?us-ascii?Q?5kUFSd6N847CsYa68LJ0IFkOjOOdX/Vlc5+yXykYk4mORZSHAMhRPPAOfF0p?=
 =?us-ascii?Q?m389Lj4Cq4tHjusBfv2X4JvQmzRy7Rt11NaEUQj6/52gqbE2DmGnvCVQIvBY?=
 =?us-ascii?Q?mxddMRNKbMMg1BFn5KF0HIaavkMJ3YDw8eSn0N/ty3FvByeE5CXnIKwsXQxh?=
 =?us-ascii?Q?xffAvH1fEwCVvBsLbK9z2d4SJUSeOOhNYI/1rJag5PDmjxeqUc+4YK7BXdAT?=
 =?us-ascii?Q?uJX/WaDRsJl0mZAD9RQV54RsA8uTdFgXnGoyek18Co7PwSp+rBbVj3XC1njW?=
 =?us-ascii?Q?FNUZc6xw139V0J0DZODeirhAV6CKJEZUoPtzfwabLIM6KZutBxIsoQvRGMPK?=
 =?us-ascii?Q?1aY+Sl4BfIXo7wQukW2VOUsLa3JvSbAoMc6QEN+NhzwpQf6/2EGvY6gxyMR0?=
 =?us-ascii?Q?/GZIgyja1E0Kr9bca4QA11mUWoNcB/4/x0IM7DY1A/rFGiqF1Mm6kC9v3WDM?=
 =?us-ascii?Q?jCRBDgTiF6eki8u0GlV9+e5NIKinTDXL7mMrOLWeWGmGkul9lR4l4CPGZJVG?=
 =?us-ascii?Q?8fBZ8Uw29ig3ER63ulJTWZRZit5y0k4RqbS2DywV25LgaX+U5uUsfAvwnnAM?=
 =?us-ascii?Q?dfJ6Ka3AHZPpxoh0OfvvJxLhCQOg8jtXw9fH4DuF03ZKNObIcmtz+LMGBeq9?=
 =?us-ascii?Q?KfhJA1TZxiW8kKirk1jEXsyCnboiiN9tV+mWFP5VzLdVndToZGKhb9XV9zrJ?=
 =?us-ascii?Q?FgGp9pF+I1r9di/xksGeiZ0UwgJ7a2KY+FrLHnv9SZGJ+XM84nF7dixnLi+t?=
 =?us-ascii?Q?Yu0chvoD03DRgzu6GoLZ0br2gzn/VDEFSsN+XaFXGCmHj8L0FofCkgznZ74w?=
 =?us-ascii?Q?3FmbqSXQXDjZg92YRhyXosFEpqR2fov9249rQn7cvyB8Tp7qNyyKeWKFRgwn?=
 =?us-ascii?Q?r27n1X9JJWZRe+Y2x4DEQ4npFZb0vaLdnj7vZlYD3Q0q9q910SfPwzYIhYaV?=
 =?us-ascii?Q?sL8ha51cngnBb5Bu1fYLLlLs2hy0LjQ0QnbTlD1LZMSFqeMBft5cPXsP31k6?=
 =?us-ascii?Q?f26/ngfmBy7h2BELtJdYc7KJZznMR6fLcywYR1GiolGIcqjRqySnQ9RzU490?=
 =?us-ascii?Q?ErA4gFjt7LMTlwyvnK/nKsH+uPA0BGeLspdKQzmcpeEJUhvAWsVJEvHnYs6H?=
 =?us-ascii?Q?ds8GZUKrnMOMVDjrqiWOEbrf7FWcUGcyeAA0lL4yTW5WswGu8CBRrScoI6or?=
 =?us-ascii?Q?HjFw7kynDyYGmnN9Nd5hrFBAE+SaOC8lrg2ANsD4nU2s5h8hlbg7zHyRniPp?=
 =?us-ascii?Q?13g7oiwj59cvwi/S/YxxESAsltLuLIAlQMW1CcMut1NRaGTVxA9UY3/qqysW?=
 =?us-ascii?Q?Aju56D1lkaaZyai2Rl4l/bUk1OO/mm5ujU6LuNX7npl1pAWkzPw8JalU5K5U?=
 =?us-ascii?Q?kRwtj9ArDz864mDpmyMISJU2EJDmRsfcecOFNX5EH8eEh2gwj7PtPt/CqzFM?=
 =?us-ascii?Q?VGQR+vPJdSMwSnmdMSDTKxPKR7uM0pkX+9SpC1cDULreGFNsz/rIRN77xlTI?=
 =?us-ascii?Q?zg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec58cd42-8dc4-4362-8bc0-08da696de887
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2022 10:03:19.9739 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MQVcwMz8K5sofBuEblXh9XxW+Ah3qCQnSjE2GLpRPf4xLqH0uRl/nIOnIA2jbwEhy5ng6mY56qHNUtt7jgWkRn+ghZ4jziHC0Nl9wWbthhw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3025
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658225019; x=1689761019;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LsxV/MvNroaABXUNOpVRmiEGhKo6wTY4S72CLZ9yuKY=;
 b=k0c+oqRVHmBk5LlpytwnaYjfGkNeYnhiaakHd57Wqi6cs6Lx7SkfGgQ9
 oKhlqC0JPW618yL2Ngkvj+kRDcGdcCkaCfBFVBqNe4dIxrcUkXcramCzB
 3QdTzYEAdDYapB2mhQjzZCJ55RBvCPDhbt+X1BQoTfM3/AWR+7DI7W4pL
 WY/kH9ttjOww6Ie+974OG9gP47eKYmekg/xcn5mvtyxYMQ4royrpaIdpo
 7MYk1d3wq7urab60afKTu4Ml5RcZIgKLLDXW9wYr0m1UPQ1zDjLGtqi/z
 RAu3zoTA8aqVDuQpRc9pzC+ojVk9GOpcNtmlMw8jcK7KZr9QaCb7lI9QP
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k0c+oqRV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: enable tc filter
 configuration only if hw-tc-offload is on
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jun
> Zhang
> Sent: Wednesday, June 22, 2022 12:09 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v1] iavf: enable tc filter configuration only
> if hw-tc-offload is on
> 
> From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> 
> Allow configuration of tc filter only if NETIF_F_HW_TC is set for the device.
> 
> Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
