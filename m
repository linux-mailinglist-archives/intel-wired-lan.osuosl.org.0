Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 346F743DB6B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Oct 2021 08:44:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 907A2405E1;
	Thu, 28 Oct 2021 06:44:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fZki0WwM1IFk; Thu, 28 Oct 2021 06:44:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7882540555;
	Thu, 28 Oct 2021 06:44:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BECE91BF350
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 06:44:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B99FB60682
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 06:44:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vhydsN86B_qo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Oct 2021 06:44:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F365360676
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 06:44:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="217245642"
X-IronPort-AV: E=Sophos;i="5.87,188,1631602800"; d="scan'208";a="217245642"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 23:44:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="724030112"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 27 Oct 2021 23:44:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 23:44:14 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 23:44:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 23:44:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 23:44:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LyWm0Jbtt9AhSw61/2F3Yz+V/UfvBitoi5DCDeLFBjf5WcswPix6X8w+U4ZbQglfHy6CxOcMsQP79KtNP2u9/TRdubvkIDtrhe78DPau8wiUSeWU6VqYrTUp9n8tUkN/BmdSYCruyrrDZUJ/keH9HMlEU7tE4UdVwJLGMLBBt+wGSHKCmfRPFlvGMTJngBqOB4JY+fDQrskFF6zJNqjdvd/0qmrP5LZ+hwAMx0UORvLCCaBiCHfx3ATUH/DKdx38ve+bg+LV00TjQnAwYlxgtd54UkL8BirATVUxWol7jvaMrVuFmtMNSOegRK19ICQpAg6SwFTjIFm4W9AgvVx/fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mJOrU+KtUsclUzBGZiKy58DLiWhzLDAb42151uy5fQE=;
 b=BAo5ZQ94+/+nRba0J7/SPJpQyRp/RGdssvtknlv4+3gV5kTR3UxG8pIYTkG+JN/D8T+AcWm3FPyaVqM020R7dC0Sa0iQ5uuXNG3MiYegv76Go/+vzotnyquZNqFjqJb+dFzKHQqKcZGKoZjbfSruXb3IXDKtVBgXdIy5ll1rSzovxdthmcLAqrLGfddasZ2SeZs4hKG6MF0fgoREBkou5pnzYp9Ct4jfo2JVSeV5d8ihHXhzdAG0Ibo6MdaZnA5JPYyOdyUbZrAeyxRWaG9bBnTwygchtL2SBx5VcPa4QVz6yPm7KSp5JzBA1i0+YvNjUlWWNZLWx2sNxv+px37oeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mJOrU+KtUsclUzBGZiKy58DLiWhzLDAb42151uy5fQE=;
 b=xrkICu0FCGvvcBH6AFgQ2I27riLQs+X9+n7hJ7ttgHkzAqFjzfZDMgzNDYXcnHOZ7BbI6RMPDVHB6gdCG4AUhtM9f10KAwUbllKgYjnRQiYQL9maAjW6hGyg5KLpuNtQZUw8xEgDz4lUcNNjXMJaroUr1WsHD9i3EC0RTBYljMQ=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM4PR11MB5568.namprd11.prod.outlook.com (2603:10b6:5:39a::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.14; Thu, 28 Oct 2021 06:44:12 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%7]) with mapi id 15.20.4628.020; Thu, 28 Oct 2021
 06:44:12 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] iavf: Fix return of set the new
 channel count
Thread-Index: AQHW/ttHrKHPgUnNu0OPJTMGdoqqaKvpkJmg
Date: Thu, 28 Oct 2021 06:44:12 +0000
Message-ID: <DM8PR11MB56217FB4207F2A9D28D845FEAB869@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210209115938.2266-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210209115938.2266-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3619b650-b5e6-409e-e0c5-08d999de5a3e
x-ms-traffictypediagnostic: DM4PR11MB5568:
x-microsoft-antispam-prvs: <DM4PR11MB5568A64EA4BC170F8B5DBD83AB869@DM4PR11MB5568.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fMOwpHfUb2qxrZe6wodRhKHhbSjtcTEeRmytfZy7ofXUgMm/LXybzAkFtLYTd61Q+g3JSkJ6mY5wnoIahWvLEgy/UXi4YMihmdZB/4TZMEFjQzv/3PXLbHN/2VsaZgByFXcC7ybJWJ8n4pdOpR5OeWrwoPfTnFRsqJDF++27jKmsHA2mWpIev1zQ1TbXqKYUaanZNiezzTgveXLw21WBXkIqfK/XQLAR6lLgVNQ78Suc5T4vMjBqFyNDA0/9QYKVLTvxFZOxbR073f68lw94PopfVlicSO+mV/LyPAP2E0hzVA7N+qpVgOhKmLaZIaA1lfN+1nF+K7iUmc8ERlAASd4DN1/yVOjEIXvv8L3iZUp5pKVRvXy6TMeGLKFDqyYT9liRdVZEbUMHM1YR7dDPEg7pVEWA/sTHYXJJwR+8JNvnGtb7YN4PROpyFIZx9YsEggiXqJ0XX021hOUPx72uWgKLfZWOiiR54tPmCVHzaZAVDwlNiPD8jdPoam/Olz4tlfaOirDffJ6wD4AlYfDH4yHzHOebap/yXRykHSv8ThvwuyIcpVk/GIeJy82iqn4AcakPwOCPz09m+5XDOQsU7fosO00jcI4kWSB3MDm/uDtJBFzOhirxtIZ3nJTx9Ldh4SnIl5npko1+4LvOtcgNeZMTFfc/AC8W9MfeCh3gZ9dv5u53ohkBwiSTskHAiYnup0eSb++TWmbBdvnOOiIpFg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(53546011)(9686003)(122000001)(110136005)(26005)(6506007)(508600001)(186003)(52536014)(66946007)(8936002)(64756008)(66556008)(66446008)(38100700002)(8676002)(66476007)(316002)(5660300002)(76116006)(86362001)(4326008)(107886003)(71200400001)(33656002)(2906002)(82960400001)(7696005)(55016002)(83380400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?i+CXVv/gba/zw0JqOMl2ziT9HeszKpuGiO5ji0sOW6qq9vifg1N+B/lGEIjJ?=
 =?us-ascii?Q?HmxIVXzKqr54/xdaog6nLgF+vxOW6Let0o4dJq+BG+TvavTsK+v7FjVIkSII?=
 =?us-ascii?Q?aHITdZBTn8aJo0M+s/q3K0EJGD+fPpHRZw7GHJFnADBdh33UlPTYEZFp1/xy?=
 =?us-ascii?Q?gzuBFDtKVoUG1VpqPey1H6W+9qz1zTxcX6KgU3d7Wu6eG7V7dfRrgtjYvMHp?=
 =?us-ascii?Q?2v6GtEs0XO7bhrWSVj4tEszLJGf6SOx7+YNceJn+BO2wiwMAFs2qoyde5cLm?=
 =?us-ascii?Q?EIktof/xcdF0hRKADLAXR+98N4rUvK1G/w/8fgcTqFmwyjU+L4VYQzWAyO5J?=
 =?us-ascii?Q?X6LH+efdDM/sFc4LrejTXwQqyMyd9MDTWKEIucGmfQ+BizSe/tKh6yH8C2Wl?=
 =?us-ascii?Q?pX52iKlMD0N9Kj4996BAlwM/zXyWfFKxIIP6xXNGT5zqkGyGepQqj/A4S5Da?=
 =?us-ascii?Q?Ga5pm+OsD1Q1E5ozltM+191V6p8qcj6K9ODslx1NOGk0Lp9otF3ZxSAMwRkR?=
 =?us-ascii?Q?anA1uwOOmVhCvfdwc/4DUHphQQfJJcWAOtkaThQtsReTu1i00DyCpF1K5ln/?=
 =?us-ascii?Q?/f6qHw6Bn3vdw0F/URBmLRPjn2V1fzZS3SUtLHDO1v3Dd4BXHxR2nJuJWYvC?=
 =?us-ascii?Q?2c6WnwjrZjhhY3xnBR/VuqZ5fxvpwBiNIP5eI8KihpECHEXtlpbjpwqAKZVw?=
 =?us-ascii?Q?rKeI7Zm/YgpdBfHHQnedAf3ZAkB1zJ9rzhgrUvYSX66gOycga8OZwd63eOir?=
 =?us-ascii?Q?1WWeezGokRgmWwVkzCzQ1gskhIXYLH9ILKDSvIQhO1Lbp+i7KnF7sD1O2dLB?=
 =?us-ascii?Q?SEQVG707wR/L5urvgP/R9tNTQZfHiJWqmjIQ/ZsNBa1YVNmrCgf3sV+0zUQT?=
 =?us-ascii?Q?0oM2bUUsZMROakuYSIZHMhtwbs8hxhWAIsK53OmlzuUbqvOrOEx4XemgYHzR?=
 =?us-ascii?Q?h2kfUnQaXp8C5/ph/qXPb5A55d5SHs6UOqVuxsj8lBy3XIBvhqbwOGn/2mze?=
 =?us-ascii?Q?egUBfrPViTNl9ytwa9anPc/tRwtTdDZN2nKQBSBoc9ye1z93mNMm9r8NlYIi?=
 =?us-ascii?Q?pKgkKtXFnb/NeVUOQ26chLceL2dlCzVl7tHEesxR38hSuTh70wQ4GSbLLt9W?=
 =?us-ascii?Q?p6hFgvTmVJ2A0YApW/fgLi81/MZX1mcIxyPwAToH56gAJcyWKoD+Yia5fhyb?=
 =?us-ascii?Q?/aR0NiVkuas2l6QU3IQ9wxmWn9YwoiHNA7X31zm6Yl6Ss48w9b3UoIdLd+QF?=
 =?us-ascii?Q?L6RxJ9wDF3N++fQfBzCsoNafSjRR4/jn2degam06u8HDcvLrJLHGypNHEWhX?=
 =?us-ascii?Q?RRLA/MOLRN+O9CQ78dWVYA2sxmKkmFI45jBfqLoSmec/OuMIWky6f6XQwTiV?=
 =?us-ascii?Q?nWXm9oFiGrvR/XjVAsX3KhbgxrFYrHvS+rWcRLk1cxVnAE3ffz878UM5C3Cf?=
 =?us-ascii?Q?pTIlYlti4q8Lg9gM7gzHlIz4ozdH89P/Nuk6ky5nIM2BQ3HifQjhYtC8aD+Z?=
 =?us-ascii?Q?Igor7HkgErg/XAbdXSR8sLNiKxX3JfKqDkS9UXcoW+y6mOnSmH8cBNKG1h1w?=
 =?us-ascii?Q?+M7Tx4z7mK2i13qOA2npKiAG7rPXNLJ//4fYanoX2pMGWBai+qStNuXJDHb8?=
 =?us-ascii?Q?5N0JcQy9oEN7whPMfnaRTdKXkuQ/vLHWQoSUgKllOFN6WJd1hbXH+R4YRVVX?=
 =?us-ascii?Q?20emSQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3619b650-b5e6-409e-e0c5-08d999de5a3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2021 06:44:12.4818 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IwvTFk4/mhl0+MZ/BLbH2lMV/SHyDo8KWyX2cU/OT0k6u/QDSwXPEZZttJ8OWNZ/IX9ANOLH/tZp2xfhXS7S5e0h0IqSwIU9HNW8KJs21fc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5568
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Fix return of set the
 new channel count
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: wtorek, 9 lutego 2021 13:00
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] iavf: Fix return of set the new
> channel count
> 
> Fixed return correct code from set the new channel count.
> Implemented by check if reset is done in appropriate time.
> This solution give a extra time to pf for reset vf in case when user want set
> new channel count for all vfs.
> Without this patch it is possible to return misleading output code to user and
> vf reset not to be correctly performed by pf.
> 
> Fixes: 5520deb15326("iavf: Enable support for up to 16 queues")
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
> v2:
>  - added missing define in iavf.h file
> 
>  drivers/net/ethernet/intel/iavf/iavf.h         |  1 +
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 15 +++++++++++++++
>  2 files changed, 16 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index bda2a90..09e5b9c 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -220,6 +220,7 @@ struct iavf_cloud_filter {
>  	bool add;		/* filter needs to be added */
>  };
> 
> +#define IAVF_RESET_WAIT_COUNT 500
>  #define IAVF_RESET_WAIT_MS 10
>  #define IAVF_RESET_WAIT_DETECTED_COUNT 500  #define
> IAVF_RESET_WAIT_COMPLETE_COUNT 2000 diff --git
> a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 3ebfef7..d9ed4d4 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -1522,6 +1522,7 @@ static int iavf_set_channels(struct net_device
> *netdev,  {
>  	struct iavf_adapter *adapter = netdev_priv(netdev);
>  	u32 num_req = ch->combined_count;
> +	int i;
> 
>  	if ((adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ)
> &&
>  	    adapter->num_tc) {
> @@ -1544,6 +1545,20 @@ static int iavf_set_channels(struct net_device
> *netdev,
>  	adapter->num_req_queues = num_req;
>  	adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
>  	iavf_schedule_reset(adapter);
> +
> +	/* wait for the reset is done */
> +	for (i = 0; i < IAVF_RESET_WAIT_COUNT; i++) {
> +		msleep(IAVF_RESET_WAIT_MS);
> +		if (adapter->flags & IAVF_FLAG_RESET_PENDING)
> +			continue;
> +		break;
> +	}
> +	if (i == IAVF_RESET_WAIT_COUNT) {
> +		adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
> +		adapter->num_active_queues = num_req;
> +		return -EOPNOTSUPP;
> +	}
> +
>  	return 0;
>  }
> 

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
