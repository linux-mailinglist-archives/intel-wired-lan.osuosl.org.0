Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B2F4AA001
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Feb 2022 20:26:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B3E760E18;
	Fri,  4 Feb 2022 19:26:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KZqCUb9vJTUl; Fri,  4 Feb 2022 19:26:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 558AA60A9F;
	Fri,  4 Feb 2022 19:26:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D71E1BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 19:26:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2AC9C81826
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 19:26:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a54Mr2rWiPq0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Feb 2022 19:26:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E691381831
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 19:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644002766; x=1675538766;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MMMOe/63MxaC2no6KoticF75vO2aIBWLNzd7tP7BBJE=;
 b=IKjKlKTqnToOMw897UzpK4XMFfag/WP7vOlNgmiVADTtgzs5V/RgAU1+
 IgcoZYAlxRU6qkZX0/lblvIusjyA+pVvqAP0Wg6Rd+NooV4M8g8s1C9Kc
 uHb2+6i5CiLFi9eRKnpHBF3Xzn7g2lQcJHlggynld7gLiB0YNbVYaDRR5
 JJyQz9tQ39xbyFBjkjYBCqQc1Zoe2uBU+wv/X3D2zXcN0bAj+w2ClAelD
 2RrIScmB5vOMixna7TSHLsUcdsQHoRs0RJa3tF+rKjvvdoGaMVfwOwOgU
 MzOO0K9QiZhMtl/hmSgnorPVyAEQHQNsA2DqmMWik59zqNVminC2gsmEv A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10248"; a="272931827"
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="272931827"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 11:26:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="566834112"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 04 Feb 2022 11:26:05 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 4 Feb 2022 11:26:05 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 4 Feb 2022 11:26:05 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 4 Feb 2022 11:26:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LwohJNRFzidKDLAf3Qm/YS56760Rn8hkidvXf0d6ILqZI7CUDlF32G6NWgCu3+oqZW6PU+QjqdEGwp/0u2CeVIJDb8KSQm2H6D5oalhFjZBfx0lk0yA7zuXZahieeum1vbI5MZCNvW8nBMP+maX2NXUkEPJKdWIBZbgoNTEkAO5ZjpDyCFQVNculgu5dvmPjO7WkQmTFzWegqWOYzj5jxyH3cIa/Xw2BreLQOjbyKMOiqXtIO4JqNW/rqPTFjWJYGTAdfIkdCAVRJ+aenRyYyqWgR38R3LSwy6mfbtiqZu5N92tOuMtxhn7sKFnhaOuFQ0QCs9qX4IEVih90EDdy4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=65fiwomqM5vnwlbcTT++oYT3YJG8yOmIWamAhrIZTps=;
 b=PvnBrav4aglBHofrvoR4/HCBOVVzRdz7YOs0M0Qnnw9qM04taXhxv1LWle356pJBUJADyizB4EPcpHs7PDaiAfeFVF5nt3EdxkbaLhQtiy/UMkNX+RMypkQi9G6DzY1BbJI8ddK4DEV0sUSg+fIMIpVuRbk5gmremAzo3lDin7MXYu1NfTI6e6WoiJ7nsfngSmvJWO8HhJ9wyDlOLVUvmnlGUY+VfPd6bUhXKEuCKDPTmQSaYmnz3g5mQnBVANFBs2c2EdNzl8bl4QbpyTIs/L5K5w0Eb06fcDt0Hwjjl4OCshvy6toUhvSfzMdGXNdDHY+yI33qUa4kF4hcUe0uYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SN6PR11MB3518.namprd11.prod.outlook.com (2603:10b6:805:da::16)
 by MWHPR11MB2061.namprd11.prod.outlook.com (2603:10b6:300:28::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Fri, 4 Feb
 2022 19:26:03 +0000
Received: from SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::4d44:28a1:355b:71de]) by SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::4d44:28a1:355b:71de%5]) with mapi id 15.20.4951.012; Fri, 4 Feb 2022
 19:26:03 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: Joe Damato <jdamato@fastly.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [net-queue,v2,5/5] i40e: Add a stat for tracking busy rx pages.
Thread-Index: AQHX832XwkADzuAS0kSFRxl8Uou1WqyEEvMQ
Date: Fri, 4 Feb 2022 19:26:03 +0000
Message-ID: <SN6PR11MB35181032FC5D1E9037CEB040EB299@SN6PR11MB3518.namprd11.prod.outlook.com>
References: <1639769719-81285-1-git-send-email-jdamato@fastly.com>
 <1639769719-81285-6-git-send-email-jdamato@fastly.com>
In-Reply-To: <1639769719-81285-6-git-send-email-jdamato@fastly.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e10299aa-f14d-4413-afa3-08d9e8142f3e
x-ms-traffictypediagnostic: MWHPR11MB2061:EE_
x-microsoft-antispam-prvs: <MWHPR11MB20618B4C916FDD85CC6DE151EB299@MWHPR11MB2061.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4sl585wggsOKkC7D+my31Cuoe+WWJWoSTcON08MwXMjnSMtOlAPUO7CJ/W9XVGMFU6naJDCBtWnJs67RqEuQaQbJqieAob7EUyIjq7AMRgIeNpnW6tHs9+R8LKd8M7RI7LHvLDc1z4t0XkEi/CAcOgs16b8mPXqNqlyDCKLF8YG81V4ptLtsN2itAQmhir/69v4TDhH6qMrk8bylPNBOFZXNMcLv8CD9bImx7415/g4f4nF94LCFHOOQ4lR0Gn4j0ntIY6xWUgnPptizmXarYnsfjeogiSV2vjIsi95lcZbjlJta6UpW7WUfoUV/X7BrCN9/ymdi3wqEGN/6vfbu8Ahf3nERb+44piicNTQmhUup0jkJp0MFikoBGk11tWuMNszMhqcB3oZkbPQjkvbY882vhGKjEDnxwV233oG7APi/DpqFglB8dimYvPngmaYLhSe4m4g5yD3DvF9gxianlry7LAbG3VnxAwuQFZ8LXyadkbVNBNyJ0hX0QOV9leQMdTwnXxKkkIcq/lf4QcyITCkgRrsLWCy1wzlh6UozxecR19FE8fT14FGBg/XJiwGjFqnsGshb4xWvoTglRZnmweDgDfj3Cn02f/1GEcZ9FVeh4vUQcsQ4cmYzWULIcOsjVOaXZdBwr340ewONrV+dw8YQXP1rjv7Cz5FL1oSyH4/eQAzE0q7hRbpvphZbOFZOl/KIjAajny2nLzrB8QVcmw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3518.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(26005)(4744005)(107886003)(82960400001)(2906002)(52536014)(5660300002)(7696005)(55016003)(33656002)(508600001)(71200400001)(6506007)(83380400001)(9686003)(66446008)(122000001)(38070700005)(86362001)(38100700002)(110136005)(64756008)(54906003)(8936002)(316002)(4326008)(8676002)(66476007)(66556008)(76116006)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xP+AR6urmFPO8EfwPaNSt61vWR9LV9EETkAtYOh8+sOSop8NR4LgjXlHO9IU?=
 =?us-ascii?Q?n+eg85ZiZGMe0QZhuaz8bkyeyEqLXV6gcAwuJ4oJg8QWuJWKccUw1tEnSpbt?=
 =?us-ascii?Q?q3DKAd15SmnrBtAnzizNjXJerl5vceAu5YvjTvyC5bUu6cjA/53J8frJ1Nkv?=
 =?us-ascii?Q?ezG1+GmLnO2A6gjThg8LThVLs4+HmR5gRiVLTl/4k7cGMIw/6MVBl1M4QK3G?=
 =?us-ascii?Q?8CIkKdzjIIw7irtlr45C2KZJdBwUCvfOeRh3We8eCmSpC72wfEl09ynNC381?=
 =?us-ascii?Q?lmDIbA0okORTv9/7oAXjLrNeRPksWNoMr8/lpVWv+lf21Hla7yRu6ewwDSs9?=
 =?us-ascii?Q?WgGTBe8G0eb/uaXN5pXsHpVjZWJq2ZR0J7dB5ZGyTs8xzcsLDUwnB9afVqEK?=
 =?us-ascii?Q?fmY8I8hvf5lb34iciUHcqQesw2Z8DAXTfWdM2vdQrohsohrck9dOLNa3luj1?=
 =?us-ascii?Q?eOWwvY6WeasM3QxvScsLXQ374XGe1kYGvKQFCSsai7syq0QHtPijU76Pnzyo?=
 =?us-ascii?Q?CobJj1uuU6kzauh3qq8PL/XGon8nT7ohF7jc0E4c44vd8FKGMX2mc5UeVQ5z?=
 =?us-ascii?Q?6JAsJamLTgsoJiESZcrCU2mNJ34VGjrjaPh8WgxLkZjSzdwswz3KD45idk1I?=
 =?us-ascii?Q?6cd5XCqtR0k+dkGgIuzx7U1wTS37IMVm49pTzlYrcoME0QXRIxo1EW/fOdIx?=
 =?us-ascii?Q?CYMngBE7auap+UyA0YrZsdJBZBgM5q6Aih7wxm0MGmXzTwFSRAbNECF6bhcr?=
 =?us-ascii?Q?sKdH0XvaZNz0mOmmUrX67dmQfNczhpLXB0SqDTrzNuBPWyIx98RiJd1ZB6L8?=
 =?us-ascii?Q?nDWvd7QG0x14XCcwcU74PUWS9e3ZAbv8Tb5hwhYTB+vxk6hqX8tJgGr4aWNk?=
 =?us-ascii?Q?K3dDLL5O2UeSCw4EOdIzK4c/ay64Maa256fSGVYITqzyb/ONc1m9AwDrelYy?=
 =?us-ascii?Q?+TH04gsdWfZjrZtSHFIu00qV7VgxXjzHsryM15SC2GH8xMbqR0IVaETH1wdQ?=
 =?us-ascii?Q?+0iJTj6DOimqPkKq1iHrfkMCLf0Q6w8hGF/nA4VFe/6Q7Sy+gNCUG8y1apeI?=
 =?us-ascii?Q?9wXHtq68kwVnyzm2Ee3kCYJf9/ay+Q65dDXaLB22dObXTXDHPZN8SdlU2/BK?=
 =?us-ascii?Q?gI5JSovjTrl8jWUcxpAAP3alI2kSAba9D7vmbtr8k1hm3nkhHY0zGOqlSXkU?=
 =?us-ascii?Q?09ji9Tfh3Itxybmx6a8Xh5kjczzXnVAj+5Dza3jby7AJJ3Pu9ii+rhv624q6?=
 =?us-ascii?Q?HTHK9W6XivNXiAzjqT/cpd9za8SvwrJwb2qhQ1z52+Nj4gES1MZzR6Gjr5ki?=
 =?us-ascii?Q?XMCfhyh0nvf/dqCwqKZmsjCA/byGEjYq3LrNdtE+S8fxs7SVnlcG6wJZN4oL?=
 =?us-ascii?Q?pdzZCgHwM9adcg/vT1ZB+kgoprcBL4Oo1w/tMsje5cc18Vq8pqN/J9j15peF?=
 =?us-ascii?Q?jGzv7QOB60LTmn0f2315TNrM8TUxAFvtQNq2TM8HgjMOcMd+J90d+kygf2MV?=
 =?us-ascii?Q?qG3Ef3Db/FdkgEPj+E6LIbhXFWrdskm2X7PYzSsUIwWTC+cISb4tDSPdZvgm?=
 =?us-ascii?Q?PZWUpzzwBvEPV2kl48hJ0kf87y0fHyLH0J1bfkj6Ewesc2oUiPMFavuvHRXq?=
 =?us-ascii?Q?UA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3518.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e10299aa-f14d-4413-afa3-08d9e8142f3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2022 19:26:03.8013 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3ygxk8qgAFD94Qpxt2QdsMiZ+I0BLFbypvlgQ8D4q897TAmgPBu9qPkpzm9LGAxvMWhumwCTDJGjm8cK1IjbEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB2061
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-queue, v2,
 5/5] i40e: Add a stat for tracking busy rx pages.
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
Cc: "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Joe Damato <jdamato@fastly.com>
>Sent: Friday, December 17, 2021 11:35 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: kuba@kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
>Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Joe Damato
><jdamato@fastly.com>
>Subject: [net-queue,v2,5/5] i40e: Add a stat for tracking busy rx pages.
>
>In some cases, pages cannot be reused by i40e because the page is busy. Add
>a counter for this event.
>
>Busy page count is accessible via ethtool.
>
>Signed-off-by: Joe Damato <jdamato@fastly.com>
>---
> drivers/net/ethernet/intel/i40e/i40e.h         |  1 +
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c |  1 +
> drivers/net/ethernet/intel/i40e/i40e_main.c    |  5 ++++-
> drivers/net/ethernet/intel/i40e/i40e_txrx.c    | 12 ++++++++----
> drivers/net/ethernet/intel/i40e/i40e_txrx.h    |  1 +
> 5 files changed, 15 insertions(+), 5 deletions(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
