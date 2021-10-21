Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEC3436476
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 16:37:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 711FF60F06;
	Thu, 21 Oct 2021 14:37:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KVAQD-f70XaW; Thu, 21 Oct 2021 14:37:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CA3E60F05;
	Thu, 21 Oct 2021 14:37:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E81AC1BF30E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 14:37:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D39C4406D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 14:37:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JRUUtWXdbVcf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 14:37:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EEE334022A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 14:37:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="209846619"
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="209846619"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 07:37:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="491806914"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 21 Oct 2021 07:37:35 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 07:37:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 07:37:35 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 07:37:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=enWk+DRo08Oe/9e++GHcWEBzdVPnZM1FhtEmZBz8ce6tV+/2RDwQmanzGc7rwtXyyHBQxLEogrjXCk0X+YS1X4+1abxj/haAk9D4NJ/9n7kcdUMfF1pMRmh5giKmUiQcLSm6wgEkkquWG0jnYaGYWb0hCmVa097IVK09c46PFniq/5yhW2j0QfdZA+3a+crKyJwZjslyxCO5zCEMxRyyW36G0fknBYz70/VZPEDdhTn0RXIb429CO8J68lYAA5/VfmhbqkNkvMruZon98T8cN3I8HmNPnCruRfrxkjdCL+AfnFgAjY/eQhNeEeS7BcZS9BzfEBsmz3b28/xnziJq1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nOIv6Frr5tVPY98rws7+/CjF9HxXfbGdYBCUf0VrDms=;
 b=A02fp4Z3jiIiUw9SroCZRwnQ4Z4Px9xNbL9/s9Lg5nkxcmIKM/ySL+4rSkWLepcpk4C04KPB0ggJshWrPmc3VaDLxMYXNjVYPYEA6cGjJoX1aGYX7/lsr713YvHBeovsWnqRadJXxefgbUUAL9d9/gj9T+uid5yCN2R4oXVOEWokDoeig9RnpaOspaFIyOZlGn1KsG11TqEeakfD64afsnuM48PsVvym5WXa/aGAm328GmhVsmMKLR6m8JnLwz36zdegWL1DLRbtFGyqwq6pHeA2pmwfL39pI3OkzKwNpH/1ijm6wQAhRuu/7g5NYpd//hfwcIgbAc+Ap5ZLctK6WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nOIv6Frr5tVPY98rws7+/CjF9HxXfbGdYBCUf0VrDms=;
 b=UV4semsRhT32R/PV0EQud8uXYThcdTIrPSbFJakYBYAuVjNeaS/5uNhHDUB+pRMENyniNUJlKZCF2hk8+G7ayeRJkkAgfb70DOrNHMD89apJBXKrR6NM+2NUXhDoz8joycjgYky4nvsFW4niapQFUKgqxZ1PCK9U/Oymo8khKqw=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by MN2PR11MB4256.namprd11.prod.outlook.com (2603:10b6:208:17b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Thu, 21 Oct
 2021 14:37:34 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4608.018; Thu, 21 Oct 2021
 14:37:34 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: Caleb Sander <csander@purestorage.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH] i40e: avoid spin loop in i40e_asq_send_command()
Thread-Index: AQHXttwppgQHikVcG06lNlr7K/6YDKvcm3jA
Date: Thu, 21 Oct 2021 14:37:33 +0000
Message-ID: <MN2PR11MB42249C7A95B49DD5D510C2E182BF9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20211001155006.30732-1-csander@purestorage.com>
In-Reply-To: <20211001155006.30732-1-csander@purestorage.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: purestorage.com; dkim=none (message not signed)
 header.d=none;purestorage.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fca0dcc8-04aa-4da7-a14d-08d994a051f5
x-ms-traffictypediagnostic: MN2PR11MB4256:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB42562DD2C1DDD34DD9299D3082BF9@MN2PR11MB4256.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oA1XVo3js6DPnABBzvEP/dWIIeCeoQsCRLddCxlhiO1XRK9WFwCoBKxMK2gMU9bKLM3oTAV3KF3pTjtrEtmeVDJYSAmArP1nXT5MYJluhRXghsSOfjULxKzq9NhOfsbudDEHwsg0DIjTc0fVZEIpCt0StFIHoEJms26hMBQ/cAAzY63ldIGjSU4MGHvaeL9Koj27v42qNiTB3uVson8s7dAJYb642z+W59Jg9G0d7vUmflL65zZTzazOPKfmAn0/hSWqiQPUf3xPmqjN/lDyXvyjrK+tRtJAL/tc1fLZ9mIUtdCKnSKTaz5r55dt3ulyTOLSWJj0nsuBhSFcOUgf/vvl8axjYnaE0yqxtuj14BgpBEYqSDa2BypQRsANuUYioffUMPSTEnDVsudKZojfHsixM+qiHmC2A3xVHXWlNohzN0NJL3N9ln2Rwiwb1S2zMdWZJjIPmtBGTS/Pxt/uJF0ALLzm1oCc1h1OGh1t44ibS3If+JCSWOi3++S0szYQcWvwxKH7SHYS0ESNrvGt0oVFCU+6w7XvZLkiJmh2GdeMzQJgtRM2JjzsnSracM0QKsT1TWY+hDr9eQS5eQEXsRO9tsLX1DtFipv9Qb/EvtuHy9++uePUFwCPIQOY1l4/L31JiwjrTyNBrzQfx9qpXvUpWB9Gnsz2GXgxlKNY8sZC3KRnL3JavyzDQhI/IaGUomCLkwfPlR5hJXUzskhVHA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(86362001)(2906002)(8936002)(186003)(66446008)(9686003)(7696005)(508600001)(110136005)(54906003)(316002)(66946007)(8676002)(26005)(33656002)(122000001)(107886003)(4326008)(5660300002)(6506007)(71200400001)(53546011)(38100700002)(66476007)(66556008)(76116006)(52536014)(64756008)(82960400001)(38070700005)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1RG99Rt6gMXJALdNCM7qkG1Mtgk3pV5g8MkVhFBx1wnIFvo70yRdHMLOE3vk?=
 =?us-ascii?Q?NVNVRGErk1VL7tf5jM/ccPIJeFHc+gETPQHqbRZKDT5rhPFwoX6mmGLbgGuH?=
 =?us-ascii?Q?pJdxuB95ae6iLyX1N6wBEYwR/MXDNwHAz/9WVcO1eqsj78XIs40xg1SQKAxC?=
 =?us-ascii?Q?mm3BXVowMjlKvkiJJYE5sQ92drOdB21kRGE84dMSa1f8p9fJhARmYbuIf2jd?=
 =?us-ascii?Q?8Bxv7DKoI97lbSHlYKIxk06NCvAEBQICTb34L15xp1TxmBHA59e9MGM5NlXJ?=
 =?us-ascii?Q?fsLnab99lLFprjRlstGh0GjbJh5imfMkaJ/NN+zeelzNgMNWrsemjyF7oQj0?=
 =?us-ascii?Q?4TR7Az/FEClSI87/6ESZcSpX4yTADs/TSOyUGrmorkYHYqGK86bhfMyftIIb?=
 =?us-ascii?Q?aEzIW9QbkSpjbJaJWFnnGmKAJfNvVuwD98wYorbbJmCnqJKd/7aRgCNzXuWl?=
 =?us-ascii?Q?rYY6AscojqH9QYskIIJ24ORHIgScDANdshipypYHXUsdN/A9BEQH4Ym9QSU7?=
 =?us-ascii?Q?zP79Wo9VTEUMbmgl3AePmVV5tfh1X+aV+4vdOPzfReHskR4QJb/kvYtN2AJG?=
 =?us-ascii?Q?oKLGaEIgm7YeIYiRJd8JQzJRLzfG+Ys8YYn1sNpwAUvCre3gfKe/ThPPqxIj?=
 =?us-ascii?Q?lh7plz2ikocPyfGSnk9C7H0OFRMfvkcMal0i9rixIAxzTGl2LPDxzC6W+nLv?=
 =?us-ascii?Q?rMiLZHVq2+iuJqWqYF13Qti6CCKdlhNAbpx9++3uxTPPrC59TpomQxUMhXyb?=
 =?us-ascii?Q?oXeajlNi6201xVrcpS1m/ED3QU+IAubqfG0mjf9nWWtLCF4D1vPJqmwAR22u?=
 =?us-ascii?Q?XZSp0UvRUN5aiSjCHq427cLEOldl6cX5l371DpIavzsPaIQoIskXmwZCGc2V?=
 =?us-ascii?Q?s/wdEpNiryCDbM8P/day6HJpYbId/VHQptTxQ4IudRedF0gxNbNNXkpwJp72?=
 =?us-ascii?Q?o2Xoiel5iD6z6I6NjxG2Fr+IYlZQDhPmOw4vIwSmq9y5jlecXCjsH1+F4TMQ?=
 =?us-ascii?Q?uR59179ZTtoGxDM1UNd80ty9wozKgahJMe3V9qbvtSU3wTv6lzgVHBzZqafZ?=
 =?us-ascii?Q?zeQsUxn4UHJio7+mvn8b9Xb6Fvct5hSWuuuJ5nHq7N0Prtt7IOrY8agrWtkD?=
 =?us-ascii?Q?Sh72ZqXIITPTvMVz+oVxbLPgO6BwPwA1RqT37XcfSFOau6+4ilEyClPg/TD7?=
 =?us-ascii?Q?W2Peq+wogh3IvV5W1CMXKA9aWuc8WxQbvPEkkVaqZOxTuzN/EkvQZ69DUGzv?=
 =?us-ascii?Q?Ma2bYjJ0TzZ4xYwE/S+4qX33uK9TF43ohxteeddZU1KxYz67H83Y19Cm5ETE?=
 =?us-ascii?Q?ZT1clLi/Qhwdq9DUq5al5Spm?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fca0dcc8-04aa-4da7-a14d-08d994a051f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 14:37:33.8956 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tony.brelinski@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4256
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: avoid spin loop in
 i40e_asq_send_command()
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

> From: Caleb Sander <csander@purestorage.com>
> Sent: Friday, October 1, 2021 8:50 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Caleb Sander <csander@purestorage.com>
> Subject: [PATCH] i40e: avoid spin loop in i40e_asq_send_command()
> 
> Previously, the kernel could spend up to 250 ms waiting for a command to be
> submitted to an admin queue. This function is also called in a loop, e.g., in
> i40e_get_module_eeprom() (through i40e_aq_get_phy_register()), so the
> time spent in the kernel may be even higher. We observed scheduling delays
> of over 2 seconds in production, with stacktraces pointing to this code as the
> culprit.
> 
> Add a call to cond_resched() so the loop can yield the CPU.
> Also compute the total time using the jiffies counter instead of assuming
> udelay() waits the precise time interval requested.
> 
> Signed-off-by: Caleb Sander <csander@purestorage.com>
> Reviewed-by: Joern Engel <joern@purestorage.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_adminq.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
