Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A37AF445B3A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Nov 2021 21:49:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4515D405C9;
	Thu,  4 Nov 2021 20:49:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iCz9CVixwmLG; Thu,  4 Nov 2021 20:49:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 53C81405B6;
	Thu,  4 Nov 2021 20:49:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7821A1BF335
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 20:49:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 72B85819D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 20:49:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tk8U_0AByFkp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Nov 2021 20:49:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 542FF8195D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 20:49:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="229256030"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="229256030"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 13:49:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="561715375"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga004.fm.intel.com with ESMTP; 04 Nov 2021 13:49:44 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 4 Nov 2021 13:49:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 4 Nov 2021 13:49:43 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 4 Nov 2021 13:49:43 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 4 Nov 2021 13:49:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EcAkgh7fOxADapyHUiRWFC+UJmX9GSnu2dHWEEOGF0+t0FilPK8mTFeNXujE4rgyfYXldSr343mYKhdu+iFZUMrHaBJ7xb4Rfe9IWFUPdq4SIc8PVkg5pPjTiB7/rFkgCwTzNc/f3CIDWkKIn/BwJ2bWxQQyknI+0H6aUcX1NAZie+d4SLM4XWKCkDC3pHEhC5ZGB9buHL60V2K+t9TbHNztw3hRcxZOdQKd1ee5MeVpjhNz22rvw1R2JlH1x3lUXw8OYzxQlNpfBDW9EbzKd8lguIkfus+LtLXjAIMFSjAU7UrUXM0Y/66GQsHpagEc6yahllhGvJeY3P8Ukj6HLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ipo7gVkptdrYT7BXwjEIqr2hs76yz5AKeuzw1Dj7cec=;
 b=Zye0n9Ak1kzBVaFE1cU0WCD0s47izzN4NJXOuUFa4ai8RWMb7sEKuag2CIxBNcyNP9MSYFNZhywhYYubFjgPubDNlPtyk76ynMISamxjGcV7bBbo1oXP79uArOrOcZR3SRPMF8PscAT+MYwNYymJvf7bfQ7p1hY2AH1KBznT/lCjM/HL8FK9YS2ix8kOvVOqTiqZ5xqi+idUaTaWYyFh+UQMzHl6Pn4vAuxFjLcMh/luBSRVv8JNyPcXz4RF3B6/FD8DRPv1CF3nHhRNZzhGUq/kBUh6STj8h0N+YL2dtOqx4SN0PumokZG7O7U3D5+x0KDRZmEeRdVuyvCp6OweHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ipo7gVkptdrYT7BXwjEIqr2hs76yz5AKeuzw1Dj7cec=;
 b=y/51/TvpmW9IWlWDQv5+Vs5WFK0ctiZoenBwIziCB6QPvOtCgVka6imh6U3b7i59zgKI97XIIjrBJFyQXL4c+TFjhJFzSFyGHiUtBJgCDIvpHh6D9oL0BDCSsiRexfsIoymepAueRNI/JQMe5m0CreM7dMzqwoiHJ2gPowjK5v4=
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by PH7PR11MB5818.namprd11.prod.outlook.com (2603:10b6:510:132::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Thu, 4 Nov
 2021 20:49:42 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f%5]) with mapi id 15.20.4669.011; Thu, 4 Nov 2021
 20:49:41 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix RTNL deadlock with
 new flag IAVF_FLAG_REINIT_MSIX_NEEDED
Thread-Index: AQHXnxHwyN2ew6D11k+hN90SgEMxUqv0OCtQ
Date: Thu, 4 Nov 2021 20:49:41 +0000
Message-ID: <PH0PR11MB514401A2C465CE6009234A1BE28D9@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <20210901091503.77708-1-karen.sornek@intel.com>
In-Reply-To: <20210901091503.77708-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eabb2ab7-2fb8-49a1-e318-08d99fd4a038
x-ms-traffictypediagnostic: PH7PR11MB5818:
x-microsoft-antispam-prvs: <PH7PR11MB58187711034022C921E357B0E28D9@PH7PR11MB5818.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FZvQB2TkbJ1hZkFy5pW+sEHWAObijTeLD7AMNJkRL8CQxHGb9XolC8Z/Z2UBpuqq7uoyh5FMrChfkueJyQ4Noj4PhNH+rM0slzLNJHMKbDMxw7KFkztbQUhcuyPE5vBui0pqzPITukFequKbZeoCCM88kEb6ytVsH3x59NSVG1edHbxjfXJT4wU7rXHFjzrc34xNnOdjvVtPNUBkn13U6UfbrjbGl8bwRp2hWcet6cAY1Wi05nJSWgAu1Gv2cflb1ao0FCefaU/hpUwWrh4r1rhqmrFTxLLv//qiVG5UkUwDqAQpNDrNbDBSaKN5I0MjSpTtgdLBUnQ5NUZ3RG29NVJkInvya4hkiofuMeqTy3j6AQk74JRU67MjeO0dGSCAJvtgesdzDKs9nFva1TFOeoF31gywq1IInF1blhmAraZEXyRZCUBV6kQM0XhiiZF5/kotYFker2tEylM8HK53FAo830r5jne60bkA8LTxbd17N+J6gwTKhYalCkdhkH3aRLRyBOJ/Pg+D15W9zttB/z1Ow7miUfhIOLaoxyk3UrzDY7qAkjcEC+DuORe9OQgZjhXfKdu2yarv84JeZiflbdI9Hch3iL7ZQ6dvISAHCz4Z9aLT9tY7rHcDkoID1lzeMqB+TIf1ncJ+SRNg0Q1Btax4+38EHP4BNpI6shmTl+InFRgOl/nUf7dvOSNNROVbeCl+i4qWHVfxE+/SYlVNIQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(316002)(76116006)(8936002)(86362001)(110136005)(64756008)(66446008)(66556008)(54906003)(82960400001)(4326008)(186003)(83380400001)(52536014)(38070700005)(5660300002)(122000001)(66946007)(71200400001)(66476007)(2906002)(53546011)(33656002)(6506007)(8676002)(7696005)(508600001)(26005)(9686003)(55016002)(38100700002)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OGA+lXE1VJR72ohnwjxcIY1YP7Z+sI1LtLmMlZEUZihj3p3SIG/h3yw7k4wh?=
 =?us-ascii?Q?4+JZ3iEkxkSfu6oRcRBo+QfFGTRGKrTqultFezUvOSeinyg9X8pyaqlrlBkk?=
 =?us-ascii?Q?kBMtt6DAKTyfCAhSR6jHu7RpjKynsAQFS/CemmcCH873GMzEIHj+U+OMWp1V?=
 =?us-ascii?Q?PFsAEVb3Y2wyanqMVp9WoPCYpI6Z8FtcrEW+4Kv9MxfQDbdlh53e0oiZ76qW?=
 =?us-ascii?Q?TI3WEydsRTs1+HRA51rHsM8O5ne/AZPvh9e0XvFHwHcUiVNPakgrYQZ3Slri?=
 =?us-ascii?Q?FBZbBBQNLO/r/WFblJk1GPvPTYkjY7nWAnmo3m2isl8EAj9+FZazh3d5PEIN?=
 =?us-ascii?Q?Ik+E1gzfI5wVUNFZmcVDvuBjubjbQBHtgY9gHmL9cYKLRS19kMms0zUa2IXk?=
 =?us-ascii?Q?hFHHFKD4FsNOeIorFUDAh44PhSdfN5zddEB3CecwUcmv3dSEu/UiV0Zl19hn?=
 =?us-ascii?Q?+yKttgB/z0wQUa+o9slq0zh3Hd25W1SWW0Cbv/CyRKWQJmCJ3/GGZu0NvOZd?=
 =?us-ascii?Q?THorUYZXLv0tUbKRjecxoZgUl26sS/Q09xsr2gr4lTVzPfs2XTNiv4c8Utvm?=
 =?us-ascii?Q?bEaJAnkQKHO3DJbPbSGaLX4gRdtu+agQj2YXAMEe41R0l3U3W/DUoGavNYOS?=
 =?us-ascii?Q?SsuCoBucq3a2CO5nG+y2bcbIN0aC3JdBVYRCIzvLdLK4zLXum1cb6DiAj96P?=
 =?us-ascii?Q?eB+vQ2NLpwWC3j1vN386YXFRoAVebhSb0z00dMXIq4OwrV3bX1RttUGyMK4C?=
 =?us-ascii?Q?zkiohOMvI6EECkWXsEVnNrrVRBCHJ0vvth0LXtfcEeS3/tef5FvGQOItoCRM?=
 =?us-ascii?Q?T+sfyPYxm2t2rqMuDX46YO3ZpbubTpM/KFiYKu0Hw0Jgt5CgzObfjkiGDXot?=
 =?us-ascii?Q?CLBpBFiRB4h5ZTMvhmmk7PR1VmU86Ua06BUHT3GdOnmfzcMAAPEYO/XiH0aG?=
 =?us-ascii?Q?lU+wHujJLvU+NNiNm5eWGp5AuClVC2ZmYFfZ538+xptRO5OuqpPMxt4uCHvh?=
 =?us-ascii?Q?Z7boEw+JwrHL1DZP1pZzPmTeqI8gIALU/H9jnOnSG1+Z5oWbNrCPR2s8ezNT?=
 =?us-ascii?Q?avjhjYR12y7bKllrGF9sE9Zwc3ZQRze3R0AiPWa6sQRe/VfW+294i+S+XR0o?=
 =?us-ascii?Q?xA2uH6Mu93uPkBng4Fu25KUvzyWfFsFzasRPdPQ8EUlyDyA+p9BUPvUzbgKH?=
 =?us-ascii?Q?0fKt3eLcoXtTxybWemQLBH8aYFK0QXgkPIu+P8yZx/Lcdx2M5mRBmtc4tab3?=
 =?us-ascii?Q?1NXIZf0bg9y2qO67nYGIcIeOY4TdwIdc4g2ateocvkg9P6PAx81cGIBQN5pt?=
 =?us-ascii?Q?FczVTGJNiYnKUjO17pZ2lUQuAM/h+YKW+o0055SjjAZ0ils2JSmyNZoEW5yF?=
 =?us-ascii?Q?IZAGnabsSt+npoMzXhcF60h7yncbypsc/Khr4833qb5U7e/G+UDwWPGwVyYx?=
 =?us-ascii?Q?vIsTqAD3Mtn+SHFg38IOaVUmJyqbLCowqFy0KoEoXP85dkhwe86DRXQ3vO9Q?=
 =?us-ascii?Q?DZFlZoBpxziywI1YtL0eBEOlNP2CB1LTSGyUvFaeuSVCbvxvkQoz7Xpjm4dV?=
 =?us-ascii?Q?y2RVNs+Nx8o2LDDBPsR+bbAkhQ7TFuPvmwuYw7NhyFgyLFthwK6YW9lBT4Xg?=
 =?us-ascii?Q?JPmZYXZHv28efThKu86+KummOWz7L7Yi+7IDFSAqSOngvJ1Ix8Qfvfkc9FSC?=
 =?us-ascii?Q?odQFQg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eabb2ab7-2fb8-49a1-e318-08d99fd4a038
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2021 20:49:41.4016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z5MhF5ZVi+wLBMjJXMaam9PsUEjAV2LMteqn4ECq0q5e7rYefF/iFfuvKYc5Z24qnS3EodoFoBlghmpLDHJliXaPdgIBg4N1BaFxMl0wfmk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5818
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix RTNL deadlock with
 new flag IAVF_FLAG_REINIT_MSIX_NEEDED
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
Cc: "Williams, Mitch A" <mitch.a.williams@intel.com>, "Sornek,
 Karen" <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Karen
> Sornek
> Sent: Wednesday, September 1, 2021 2:15 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Williams, Mitch A <mitch.a.williams@intel.com>; Sornek, Karen
> <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix RTNL deadlock with new flag
> IAVF_FLAG_REINIT_MSIX_NEEDED
> 
> The IAVF_FLAG_REINIT_ITR_NEEDED flag was being used for two different
> purposes. As originally written, it indicates to the ITR mechanism to update the
> interrupt registers to a new setting. Sometime later, it was overloaded to indicate
> that interrupts need to be completely reinitialized during reset. This causes
> problems when ethtool -C is used while a reset is in progress, and can lead to
> RTNL deadlocks.
> 
> To fix this, add a new flag IAVF_FLAG_REINIT_MSIX_NEEDED and use that to
> trigger MSI-X reinit.
> 
> Fixes: 129cf89e5856 ("iavf: rename functions and structs to new name")
> Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h      | 1 +
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
