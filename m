Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A64124CB14C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 22:28:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E2514018B;
	Wed,  2 Mar 2022 21:28:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xpInXYr61OZR; Wed,  2 Mar 2022 21:28:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1516C401A6;
	Wed,  2 Mar 2022 21:28:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F5521BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 21:28:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F095160B42
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 21:28:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XZSq0TRpAdo8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 21:28:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4567460AF2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 21:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646256481; x=1677792481;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dN5ETUqsK7fnaE4jzexUnwWHPkRQxaEuZA7HRPUk3Lc=;
 b=b4i8nUE/mObdqnXsyA0dlysbMZWM9AQ/u8nz+rSLnmL8d8gnlMj6Z2VY
 PATgFW2o3bA4UlmDu8033JrOr3g4OWKbmk8sbkpmPspV5s8EYbGafjq9l
 jupnZojMvqp0hGF+D7As+V2K95oh0HiwsACfhEGqPMPP+YpeIuFIBi4WC
 UZtBnJTDsTwMq38B6HuRsKvHZbP8KMjhwX34S6QNiEY+ytwZiWRSw2M3n
 ABHGA4IBuZm3wrDvhQDsZXKYFQtYWWl9RBoS5WBNTUt5D+zTKN/Q6WklP
 RfXWb83Jo/MNOicMwDrxldDAMo550lN3CjVkgQMJpCLjkq6zIszbX4ybT w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="233475963"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="233475963"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 13:28:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="551443871"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 02 Mar 2022 13:28:00 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 13:27:59 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 13:27:59 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Mar 2022 13:27:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l1lI1gILZmn0d5USZiulJsodiS/zAFZbe9YMzOdPf/EvTCjb6uzfUQgpdGVCBoflXcbrRIlFifQsXcXIfEJXB/8fPj0u8U0caTdhhRwwx31MU1eSUDBIjcBwQ+xALZFLcFspmiETpYjErpBaWVpoduOVei2IHkRl6+fnNvEsz9+UeSQaI9PIcmL4vxSznOESQWUP/AEzefrjAtTyqOf3hL05DTmYMk7r1Se1LVa4hQS99RbyanjX2JtuzQJ5cjeyT+7z+ByCla+Zzzr/TKcLFLxjqnH9Cz0067S6MATJ7Zcir9PExEcM/f8UaeI3nQ5GO+9BbIpaXR+T865t5iZbng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C0duq02+fpyZsRGjlV0bfvAYiXnw+sN/7cL7t44lMwg=;
 b=Yv7euwXQQzkM2XQf18prfnNJwAQl1zm3CVZtaQZsd/fRZrCDDUS6WCAE02cD5A7xhdwUbb/65/zlUP+ZEoNmGAhuJ/EAhUOeZhmHB70ldXjmG+OOQWjUCLnxnKZudJF/okaugomiph9OEL1OAQc5YxAQXuGLdLtL+/+Rb9M9gFy04rIdojpvIgNyoghKeShbm9SNiMrCbFfNpcPPgg/8oIu2scxr7isp9/94wgq5mShJmzsRgRn9g7ZmhRQhIhg3aaKZfjaQx0ad6dv9UXESjs93yf2M2BUOxmlRLBEKkBGeCV4PQZ++8LpjdTTOQVgi9PpAcMifQmxTMQ6EhwE5vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BN6PR11MB4017.namprd11.prod.outlook.com (2603:10b6:405:79::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.23; Wed, 2 Mar
 2022 21:27:58 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 21:27:57 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net PATCH 1/2] i40e: stop disabling VFs due
 to PF error responses
Thread-Index: AQHYI5ijJTeh0GgfEUyNY03kpd3VKayssWxw
Date: Wed, 2 Mar 2022 21:27:57 +0000
Message-ID: <SJ0PR11MB5629034DA1BA9EF8F1FD99B5AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220217005136.75627-1-jacob.e.keller@intel.com>
 <20220217005136.75627-2-jacob.e.keller@intel.com>
In-Reply-To: <20220217005136.75627-2-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ccdf172e-5176-4c0a-88d7-08d9fc938577
x-ms-traffictypediagnostic: BN6PR11MB4017:EE_
x-microsoft-antispam-prvs: <BN6PR11MB4017468DE9DA26893FD4AAA1AB039@BN6PR11MB4017.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sWw5Pd5zh634didHo2BFghEb+HRC1dffqIF81TLWfN99SCrFWhFTA1F59dEs0xpEFKjE3qWxCsaCv+I1uaDJGTLk6oBeFqdJV6TSFTH8LYnETAz0CfcciwLvPpctt562CIJFW739X1loLZ25ug7qZ1SDYIt8UzhDnJOAk79j3bGUARVq2ANTmG87seNEHOP0bxjHodQINQ9coKidcQW0tbrpiXGiQNBDeMTBYYptZhIrXHR/1cSwRE8joADq03EzErSpeKPUeJohq3xb6dI4AAxBzC1oSA9FDjpremWdk1zT2gyrUciOog0FNBaN5gjF3FCZ4TlwtG7twh539DG81zqhXvz0br/zrA7oavQdr3sVva72QR3s4UOAxKLXfF6FwRE1X5eaa74zrOuqjyTk0KxVW6utkYTzACkQYAlUxiUCY/kNDprxhwRAZx6OebRcpMjgyj0LLniRT7DboTGfv8bOK6pz/D5j5ftIn21+Siv1KrBuo2BIOKJvukeo412QnN5YZYi/WWyHUPjynwkjpq5sOKPuNih6aYJH0OYcK2DZwXMDnTfOTfMbQkdjlljdozt5KWjxLLQpzvQSqb0qMQJTFIC6RC7nFwR4K63TGJpOMDUbtvuPlZ38AM7/VfA6SJmc+PNjFMVuOg68Tc4JLwFzCgpn8nh5DzNdRxPiD8XFma7Z+Zzt5w+q+fQlRfTRh/JveDmP0nw56+qc/TWLyQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(38070700005)(71200400001)(86362001)(83380400001)(26005)(5660300002)(8936002)(52536014)(110136005)(316002)(66946007)(76116006)(66556008)(64756008)(66446008)(66476007)(8676002)(2906002)(9686003)(6506007)(7696005)(508600001)(53546011)(55016003)(82960400001)(38100700002)(122000001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?C0NZg5V+O37NCkQeKo52RXbPG8Hbx92qCLk7vGF5rw66phlNaJz942rGL/RG?=
 =?us-ascii?Q?d3+ulAeJoHseSIEfpjshUF3KDKvOqRwqXpHcigvptguIefZ3GXsfWdwJr0IS?=
 =?us-ascii?Q?x3GtQqV8wYs4d/1eb20/K80GKQ3kX0+/ndB27TFxVEtljvzLNf36nmzzJPRF?=
 =?us-ascii?Q?C/Y7fM2GsRIQU61/SrVM/Mf44KUB/QJveMBUnWotf/xvwvUhjt8UDidccrD9?=
 =?us-ascii?Q?QiqeKPFEs4vTtW37u3FAvCp8e2CiTv+2JHUv62HURzqIIhr1g8Iliy0KoOef?=
 =?us-ascii?Q?PxGYpS4Ojt5glzueiPuXM9mcIe/RZwC3GynvU/0kBCSm+HjxvNAkl1bYnWYF?=
 =?us-ascii?Q?R5ttmxf89fQG3AlL3qECUGPLJjm3rY1uzGoCHBjVvYP+OnrlUpIJYhsxeNE3?=
 =?us-ascii?Q?fB1jyzdHjDlealCdOXl2MqPoK66D13Foyb4PFNAFSx8B2ODpdIU/H5aY5bNy?=
 =?us-ascii?Q?9iOe4OcUGB6G/j2elXYSp53GIviIk2J13ZgZq5MjjRih5xZdzTmQg4rb/Lwr?=
 =?us-ascii?Q?ekddaVREPwVV4mE4AWwcHmi6OZh2esGwFyUzGeoxiDzN8BEbMdKQJGBUrbdQ?=
 =?us-ascii?Q?Sn9ksEPi4hbJTJcOxiWSVHNHOfWqDACISgCt7vc9Q39LpdVMlXwIvp/VZzZr?=
 =?us-ascii?Q?sQVaJ82cmWJGfcmrb2NL64LJgETE36ObJcTzIOYn8bm6q07SNTrfN++dXFHc?=
 =?us-ascii?Q?nypTjhu+ekwbDkPyBIf15Lo0ME4CHrNTFu6tRxjW7DCWEXr1QGC9gTPd1vDY?=
 =?us-ascii?Q?Vy18nY64dEUQonhSPuU0/JYlmPjciuPaAHdeWu16A2QcjlBxpHlUJr8BA6Nu?=
 =?us-ascii?Q?cR3xxidNjHofVo9Xg1hkewidXN9q+6jox4XCiCLy39Ail43xTAuX1zPSqVGB?=
 =?us-ascii?Q?TZwrJD38k87UbARMGRADO9W5uCmGe1SAKRM4xQxezV2jVC6j8/SXoInL8El/?=
 =?us-ascii?Q?kPFw6jZzoKu+apqVa8b9Mhvla1rb3rVTKdJCJT4vvgPsFIUK7dpv/k7vbeDG?=
 =?us-ascii?Q?/oyerT+ZTQVudsrv28+z32wOfSUBaSKrVfxJrCU0GjAWJYIsa0LBRDNTMBx7?=
 =?us-ascii?Q?g4BEUDvNan4oZ7hOWvIxmY5r/sxTi2om+cFOMCfXkUTZqgnA7RBNPyXushab?=
 =?us-ascii?Q?a6Y7Bc22LI30pIXuw7ukjxok3vf0YxcU5t8Rtk5I7cvD3klkv4zzd9S3b+Ao?=
 =?us-ascii?Q?1/enbp8KEWMnTJSdiFd6FP4726FOCf1ZrYh589EEiWKAbeO/9NuDfsXJr9yA?=
 =?us-ascii?Q?XBTu5Lwf082puzJLjZloKIRMQWeC1D/6mau1ePtKCDgKg/sF+dD2leIKoUux?=
 =?us-ascii?Q?ilo+N4M6FfIsZz7j0BLjSfG8j+rEXy0HVEGhYW9Lymb81uyOyuM/yjt8wUHK?=
 =?us-ascii?Q?42FBoMPzBvOsFJ/ZVV8ozgPfzbnt9G8NBPsSL3FlOG0ECAykrxqKKcc32ULK?=
 =?us-ascii?Q?FUnc9ee9ETsYsJDrCwV3J47Ec7XfnW+Jil781Sn8UWk9WJLwfk6pktZapEO6?=
 =?us-ascii?Q?HeF9biaJOD2KbmCLeJ2XkRP64tWYdWkNHxeRT6c4Ykgy736gJadyUBSWROdB?=
 =?us-ascii?Q?O41/9uHd5iurOzVJoH4sM+z1/QY5oO7EvKw67Uhcrs8vglrcdvsEzvVWsEw+?=
 =?us-ascii?Q?XuWN+4r0S5hG7f2gaGRggGlBXx6nQfIDT7RdqIAYZMdIc1COxkd5AifSapsa?=
 =?us-ascii?Q?kW4KrQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ccdf172e-5176-4c0a-88d7-08d9fc938577
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 21:27:57.8294 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UoLuZRGC4Awny2As3E4rLiS6aAdr97aoxLakeeftGAa70kSR9o8+R4vdVc67TdXG0O8UbYhS/Rufh6Km2cAhVHeN+7z6RTyKeI7VRoAAwbs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4017
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net PATCH 1/2] i40e: stop disabling VFs due
 to PF error responses
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
> Jacob Keller
> Sent: Thursday, February 17, 2022 1:52 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net PATCH 1/2] i40e: stop disabling VFs due to PF
> error responses
> 
> The i40e_vc_send_msg_to_vf_ex (and its wrapper
> i40e_vc_send_msg_to_vf) function has logic to detect "failure" responses
> sent to the VF. If a VF is sent more than
> I40E_DEFAULT_NUM_INVALID_MSGS_ALLOWED, then the VF is marked as
> disabled. In either case, a dev_info message is printed stating that a VF
> opcode failed.
> 
> This logic originates from the early implementation of VF support in commit
> 5c3c48ac6bf5 ("i40e: implement virtual device interface").
> 
> That commit did not go far enough. The "logic" for this behavior seems to be
> that error responses somehow indicate a malicious VF. This is not really true.
> The PF might be sending an error for any number of reasons such as lacking
> resources, an unsupported operation, etc. This does not indicate a malicious
> VF. We already have a separate robust malicious VF detection which relies on
> hardware logic to detect and prevent a variety of behaviors.
> 
> There is no justification for this behavior in the original implementation. In
> fact, a later commit 18b7af57d9c1 ("i40e: Lower some message levels")
> reduced the opcode failure message from a dev_err to a dev_info. In
> addition, recent commit 01cbf50877e6 ("i40e: Fix to not show opcode msg on
> unsuccessful VF MAC change") changed the logic to allow quieting it for
> expected failures.
> 
> That commit prevented this logic from kicking in for specific circumstances.
> This change did not go far enough. The behavior is not documented nor is it
> part of any requirement for our products. Other operating systems such as
> the FreeBSD implementation of our driver do not include this logic.
> 
> It is clear this check does not make sense, and causes problems which led to
> ugly workarounds.
> 
> Fix this by just removing the entire logic and the need for the
> i40e_vc_send_msg_to_vf_ex function.
> 
> Fixes: 01cbf50877e6 ("i40e: Fix to not show opcode msg on unsuccessful VF
> MAC change")
> Fixes: 5c3c48ac6bf5 ("i40e: implement virtual device interface")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    |  6 +-
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 57 +++----------------
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  5 --
>  3 files changed, 9 insertions(+), 59 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> index 1e57cc8c47d7..9db5001297c7 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> @@ -742,10 +742,8 @@ static void i40e_dbg_dump_vf(struct i40e_pf *pf, int
> vf_id)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
