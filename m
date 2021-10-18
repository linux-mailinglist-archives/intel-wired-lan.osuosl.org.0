Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB47432375
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Oct 2021 18:04:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 865B6818C2;
	Mon, 18 Oct 2021 16:04:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wn888Eadwzp5; Mon, 18 Oct 2021 16:04:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 782528196E;
	Mon, 18 Oct 2021 16:04:18 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E63621BF3E6
 for <intel-wired-lan@osuosl.org>; Mon, 18 Oct 2021 16:04:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E1C0681765
 for <intel-wired-lan@osuosl.org>; Mon, 18 Oct 2021 16:04:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9EPYKEPfJOFa for <intel-wired-lan@osuosl.org>;
 Mon, 18 Oct 2021 16:04:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4BF9280F0D
 for <intel-wired-lan@osuosl.org>; Mon, 18 Oct 2021 16:04:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="209074146"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="209074146"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 09:04:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="719421308"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga005.fm.intel.com with ESMTP; 18 Oct 2021 09:04:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 18 Oct 2021 09:04:08 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 18 Oct 2021 09:04:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 18 Oct 2021 09:04:08 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 18 Oct 2021 09:04:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EgJmSMYMQZWJDf/Exl82/UccYzZaxSIMTB0LaVz9LAKgoGJN4nMRQG8bNSMP/tNNeGEY9ohV/4KFFGLqgA1/okXpx52JBpO+hXiBP2UhHvgUgCXgLbzHIwh+2TZDYnGYNZ76paZdACkIv1ji1T1lxJcLhmls0Z/YBE0OiX+DPK9hiyMXvOy3taCk2LNb1r5KMf9i6fAvoYkjeSuhEF2HyokzF/PBY2tG4iXWvrReBmXStM4klcn120r+yLQT5z7BNijPm+aUp7Vzp/6JyvavQ7hNOCzCeAlQB+XmbWIxDTxrugS22y+8gbospncPhB2KK0Q0ll5Hz8dquDricSL/uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jupZHEygNSFoXhT7Oq/DKLB1s9IiU/ZdzkZH8y3sTOs=;
 b=jT+FOMiI6z58w0rE5IAFzZwfJaMNjNKvc4rAY9h4OxcnSXZZ81z4IDC7P9q0e0h6sFbMXakAJMFxc94+PlvDufhX3X3BsmBIXxFSSOZ4eJzojLrNAf782L2aR5j1EATk7JqQddm0uafoPGYfigmer9KAW7Dg2KAtiv55mbBH3REs3fTGXtOrCLBC/tzcF//w0lqGfFoRe1SXfOSxy646SNwipGF4ZBu2j55nvNuKPaOrCg+PIUIcnkJlNxjFgbhaLjln8y10PTGgiImpDDxRwQ/MKL5qJdleW/hSl1XMkCKZo227UD80vfHVWfDAeOIpFLy883s07rfWs0MHlxRXGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jupZHEygNSFoXhT7Oq/DKLB1s9IiU/ZdzkZH8y3sTOs=;
 b=UmtmIN6Icn+T31RIz5yOc5PTJo4u7N6SwyE+Scz+Pzl1eG+rzCtYpq2hXejUWNuLGHeL2+zptxYsjbq0XSRp/OFOt6D2iJeGGKVqy14TfsoTHF/zPp0B8blpQVsCBM9S/lP0P7shhW9ckxJe6r4ayCy4rMrwZ6YG2vBX7FBuox4=
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by MN2PR11MB3693.namprd11.prod.outlook.com (2603:10b6:208:f3::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Mon, 18 Oct
 2021 16:04:02 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::90db:66a7:d643:2bb9]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::90db:66a7:d643:2bb9%5]) with mapi id 15.20.4608.018; Mon, 18 Oct 2021
 16:04:02 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/3] ice: enable ndo_setup_tc
 support for mqprio_qdisc
Thread-Index: AQHXvtYXjBmPdrK7VUenBAaaAoOMuavY9Mxw
Date: Mon, 18 Oct 2021 16:04:02 +0000
Message-ID: <MN2PR11MB3614BD3DA1E50DC6F2932B4A8EBC9@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20211011192518.1867431-1-sudheer.mogilappagari@intel.com>
 <20211011192518.1867431-3-sudheer.mogilappagari@intel.com>
In-Reply-To: <20211011192518.1867431-3-sudheer.mogilappagari@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: osuosl.org; dkim=none (message not signed)
 header.d=none;osuosl.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: afad93fc-b20e-44c3-2fdd-08d99250e74e
x-ms-traffictypediagnostic: MN2PR11MB3693:
x-microsoft-antispam-prvs: <MN2PR11MB36930F3EB717414F0C58EEF48EBC9@MN2PR11MB3693.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:741;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m9k/ikjbmoPKZyDL06qY+DOYq+XmrUUjazVSsWNc8EQcNucQGIc1fLvtD1VkcDthvnoERGaI+5RTKTkYIzY/zU7Mgmf8C2NUgJJ/fVEwLcPQVtWvWGBjYP5BvnYXUcLXlsbFpXNQ3zt0WAR2WFyL7MIqwOU7PQGScFoVeIk2ZDgnsTCFY8mC2IGGazU+mGQDT14JKWWaE/uu3wL2J1o6DuDHmjoDjpIM8VaL8m9s3vgSxPMGMrt44M8Dn9dAO4FSXwMF36coqFXYcVOz09BZT8nW/gTya8w+QRGCYPTG1F7fpv7Ed/L99NMMvIWgWSF1rwcAh1gTSuXnHTXBALKigK3FEnn1lZbB+0JgB8ZXn3JgpIp2EoCTdMas68s2Leye2VUv2CM6SMn0ma6giHhQ2SDXsbPeCo8BB/JYFdF/Bcyp5L4eSJEv4XuWSsJlqTeMGYoEgT3DQ8lDtQPJb3fVZRjVQXDlZGa5wqXGb8jYyKWhSnveLD1jU9CzfG7IbJVNTc/QjHyh0TbQK3GaKJ/bl6CWi5zv1aZgUyBvfjSTWvVwQPc5WWizV5yk3d+vM8pG8VZS1W2csMtZET6SphY3Ac6ElkF5cXHOgwhCqC5E3DMeLmt4A3IcggLTum75ScL2LFqPoPWIf/vrWPOh0NbC0x8k0shXmKi7GWdD5aUNpDATvgS3hAse+yshfqrtzeCf62a40BZejIJ9cwNHh7enug==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(6506007)(82960400001)(66556008)(64756008)(66946007)(8936002)(186003)(33656002)(26005)(9686003)(86362001)(38070700005)(508600001)(83380400001)(52536014)(8676002)(2906002)(55016002)(38100700002)(7696005)(76116006)(71200400001)(316002)(53546011)(6916009)(66476007)(122000001)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2En9iXEFmKl7FI/i3MPQdflEFpUu0FI/rJKSKQKpiny/cF5RwpBaxuT7krD5?=
 =?us-ascii?Q?DtGa2hmRxdjQZd3yeMm8hXrJ2yq0p5/QdF2stUuu7ohNyPKfC1qP5+OZEC1e?=
 =?us-ascii?Q?lQPr71GQFNj3CxP4NII93lC0YrPQJyFSzTEheE7BCmKy3qxZOLD11PYLbJHe?=
 =?us-ascii?Q?9v9OoAdlEV1iCeyCqEAElKHUnVNgEneMX9c6ZHYh8zsw41S8voqSmmKc25Rc?=
 =?us-ascii?Q?L5/X5ecAcMnLZhQVK0okZ4NYP8AWTtJ6GrFJB8Us2uLTO+d0HxFZsXPwrsoe?=
 =?us-ascii?Q?IeJqIEl9MdKIugig8MzadfbeVRFyCfcWGOa0OwF2z5PGxuhZD5osQoTWERPw?=
 =?us-ascii?Q?DZOltAOXWMUIpni0pz0NFBwLWOUKVg0AD7/V+mPBbO5a7Ju+zesXdUnA/lvL?=
 =?us-ascii?Q?W+zcj4UbDImdRPaZ1/Aod2niPWBlKC/+M8Ys78xf+5koTq6itFXqwWN3xq3s?=
 =?us-ascii?Q?iOXZNXOPzjEA8umgDvG5HQg0x4OQHSE48+QLesdquV0UfdavoR3JJOtdLxK6?=
 =?us-ascii?Q?3XLAjeuyKU3OvwDwZ/44RmPRcVjHnCCWzZrEO8crTZJLRv+6eGv/88ICfdz5?=
 =?us-ascii?Q?kTqH3yE+kCFyATjo65yjBPGcK1chnpISIUL09Wd0A8xGY9a+UcYi02Gz8Gvw?=
 =?us-ascii?Q?JcOgj1V37g2A5r12iZSU6e5Yaa6VMlU8l1wNlAwDRd85rSB0iFN6f5P2a7F6?=
 =?us-ascii?Q?lnirGfTJVbjK/BXMTtDovCDouRMoqExHRZDW3ZNZDiSB/LXvE3pMwrnCv2QK?=
 =?us-ascii?Q?mAzou7bPYp+1LG+OcBj131OfCxIthvAyxQEKbp3IDXbzt0dM7ACiYloD6hh3?=
 =?us-ascii?Q?GaDfVdd8mag9Z85YquiBIVhxsTfLmiKvCKFb0vqW7ouignWS/28ivDCu+54p?=
 =?us-ascii?Q?e6Eqiv62uxAPoTK+y/NrIkMLe1/3jSiiyqMp3fHPys7MqVKuGyhUU5H8AyDg?=
 =?us-ascii?Q?0ikFAOxiSud+a/IpkOgaR8ypAfMaRSHF+QYopBpyMs+lzuOQjoBBPLh6ELms?=
 =?us-ascii?Q?9N3DCFYvPCke4LNOUUC5bGBvWi9E+z0xj4+ML9kwS2ZkJr6FqTtm/p9jaLcX?=
 =?us-ascii?Q?ZZo3pC8JHy9fW/ULxRWlnao3sYUr2MYE1JQW0GSS0VR+W1pAxx2boUoj0oLH?=
 =?us-ascii?Q?mIbO/mzBJ29NlmLidR+dI3j3jOtcFomLqSYPOZOCcy79lFfN1wEezJ8pEWvR?=
 =?us-ascii?Q?hZpx1XG6AXF6i8IdloO3MakK18+eT3lSc6xWXujYIZ1nn0vxf+fU8iKyaHq2?=
 =?us-ascii?Q?Xv9w/MFYMI21L8C39loCYaofJGrbAOzBdAjbsNBCS+gg9X4A9QjPEWUCjW2M?=
 =?us-ascii?Q?nJm/6QCypCgLxVAcncgw0Gpj?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afad93fc-b20e-44c3-2fdd-08d99250e74e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2021 16:04:02.4166 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LWP2EoXpUB+MvqLG06aaHfyy/gzryTnrR2sjXrK7vz/pvtk5mLOz+9f4S0pBjnI8pR0dZ0X1wX5q7W+V5okGUpsFkA5w45BCcnc7A7ExjaI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3693
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] ice: enable ndo_setup_tc
 support for mqprio_qdisc
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
> Sent: Tuesday, October 12, 2021 12:55 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 2/3] ice: enable ndo_setup_tc
> support for mqprio_qdisc
> 
> From: Kiran Patil <kiran.patil@intel.com>
> 
> Add support in driver for TC_QDISC_SETUP_MQPRIO. This support enables
> instantiation of channels in HW using existing MQPRIO infrastructure which is
> extended to be offloadable. This provides a mechanism to configure
> dedicated set of queues for each TC.
> 
> Configuring channels using "tc mqprio":
> --------------------------------------
> tc qdisc add dev <ethX> root mqprio num_tc 3 map 0 1 2 \
> 	queues 4@0 4@4 4@8  hw 1 mode channel
> 
> Above command configures 3 TCs having 4 queues each. "hw 1 mode
> channel"
> implies offload of channel configuration to HW. When driver processes
> configuration received via "ndo_setup_tc: QDISC_SETUP_MQPRIO", each TC
> maps to HW VSI with specified queues.
> 
> User can optionally specify bandwidth min and max rate limit per TC (see
> example below). If shaper params like min and/or max bandwidth rate limit
> are specified, driver configures VSI specific rate limiter in HW.
> 
> Configuring channels and bandwidth shaper parameters using "tc mqprio":
> ----------------------------------------------------------------
> tc qdisc add dev <ethX> root mqprio \
> 	num_tc 4 map 0 1 2 3 queues 4@0 4@4 4@8 4@12 hw 1 mode
> channel \
> 	shaper bw_rlimit min_rate 1Gbit 2Gbit 3Gbit 4Gbit \
> 	max_rate 4Gbit 5Gbit 6Gbit 7Gbit
> 
> Command to view configured TCs:
> -----------------------------
> tc qdisc show dev <ethX>
> 
> Deleting TCs:
> ------------
> tc qdisc del dev <ethX> root mqprio
> 
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  21 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  10 +
>  drivers/net/ethernet/intel/ice/ice_lib.c     |   2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.h     |   2 +
>  drivers/net/ethernet/intel/ice/ice_main.c    | 894 ++++++++++++++++++-
>  5 files changed, 919 insertions(+), 10 deletions(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
