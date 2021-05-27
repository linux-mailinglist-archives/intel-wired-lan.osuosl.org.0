Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EC03934B9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 May 2021 19:26:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8185B83DF9;
	Thu, 27 May 2021 17:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TRexkU29kTH3; Thu, 27 May 2021 17:26:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89BE283DF6;
	Thu, 27 May 2021 17:26:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB7341BF341
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:26:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D978B402CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:26:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nfxRW7Qnv5vb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 May 2021 17:26:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3271B4019A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:26:12 +0000 (UTC)
IronPort-SDR: NwFTAgbz7kG/3YlOxU9mTCabeEwapHc51qdf6KCyQGPLPZ7xXzN9AwQkS5RgOSUmYZq7da5YCO
 k54aeisnAVuA==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="288382705"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="288382705"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 10:26:09 -0700
IronPort-SDR: i9gm4axafOr7wg6GubzywJInkWad39sX/m6u6h8xewDihEOGXXInntRvzFkE86rc8Qp/PLF7yf
 K68G6a5I+LAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="465463522"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga004.fm.intel.com with ESMTP; 27 May 2021 10:26:07 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 27 May 2021 10:26:07 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 27 May 2021 10:26:07 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 27 May 2021 10:26:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aZwC9ys7pQEH6Okf7zxgs7xCCD9yZ7tzdL1MBre/fq/vDvnboTAPuH+2NDfo4o9cSCB96ttKHQVcEmhp+kGzWC7ksGHDgci+HN4tjovfi+muVnTR/K54i//1cGXpuWwRaX9U9G7mc8gk25kiSNf4uJqxGiHbXWpqVKRQhdoYONi4VrdahoIme3wx22mFDQIken6FycqYTf5UGo58WHjSqJLuoH24nFFXXjMdhWYKG+GhxvNB0g9u7GmzXy2oBQ6HovTPYhHTnaBRpIAGrP3ayfD7XT3OK3/lWgNNHjBwg9huiKAAYDwt+FiQF2NPPxwLa1a9rDjUzPkiieBgF4qIDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IxnQJ1H7Y28+zdbSRf6hOpQvHx7zyxYVNvgSGuNPZDo=;
 b=WDopxD4Dtek8UL1THSUaHZmHkIXZZFNt9I/JpevoRKEy5NMRjtRubUhWZ2HFg1SRyG9a0X2L5ZkCR6S/ODEs0x5Y+4pNCSAADDpRsLNa6X+jKdUQObkOlYrAePbQQrrq3e5IH5T5/TF8bdkEmvAqF8pMxFaF1UmydaoycSjYyPh4u8mle0j4J/rb63H/99qqAMbd8Q6lPunbRj77ibfaIrkSFSNltsj4IMp7lhdGH2zTpjg3mQowfC3xpHjEV+R9VT29tgA4A18a/MQUBIHDZl9p3N/ZvUyrU4kGEBZNw7Ivz5BGlllFiC2BCM0vxwonKDMb55jK3nyuaO+rG0XPJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IxnQJ1H7Y28+zdbSRf6hOpQvHx7zyxYVNvgSGuNPZDo=;
 b=uZvH6j94XbenVeDYZ1xoavt537A6swFlhSsLLJP9ya0tkW7fPqLL7f+UwkgBG6yYlrHhXnOF/75Dufd9Sb6OynnN8JVMmZwDfRJ+ulrk7K+sAUYtntOU4eyXePNQzd/KI+79LzMXobqPQ3MUZe4BlZoGq1rRYfc390XiKl+6LeI=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1805.namprd11.prod.outlook.com (2603:10b6:300:114::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.22; Thu, 27 May
 2021 17:26:04 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4173.020; Thu, 27 May 2021
 17:26:04 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 6/8] ice: report the PTP clock index in
 ethtool .get_ts_info
Thread-Index: AQHXTZgsOLDTz95iKkeWOU5XX8g9Gqr3n3fg
Date: Thu, 27 May 2021 17:26:04 +0000
Message-ID: <CO1PR11MB510508131296CE9BE64F4665FA239@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210520164850.1884656-1-jacob.e.keller@intel.com>
 <20210520164850.1884656-7-jacob.e.keller@intel.com>
In-Reply-To: <20210520164850.1884656-7-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 22dc3cb3-0605-4f26-6094-08d9213481bc
x-ms-traffictypediagnostic: MWHPR11MB1805:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1805CFE9FA0D9AAA7B9B02BEFA239@MWHPR11MB1805.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qGcLmB39+whzT5xT53tWFxbyZ7FeWnVM6lXOcC4Cqa9lMtLNPITBYrXHhywptdsQlFN6NwR37CGLeiWtGRhl1CP6/k45uUdcpfS5ML5R6ct/ffgFDXtZVdhXXeQjjvdIhSHrenxr8YwgivS935+Xs1PWoq/WQE3IicJptW+lJgmbie1UGGnIGw7G8jjTEvcVw2Odn5ltvsFb/l1jO27dfG78b8GWDShX+Z8b1k5t+JukgO6v4+0bZp6G4lYPda0c2pX2AjWWXqrtcn4MAK+izQ9DjtNLm4yfOZqxu88TEQ9P9WI2YH+IxzV063Ysn0O7EkyrEkx8rIeMTDiC+YTVAh99ymaZnAYM3d3HK9KK+XfNVGjDWJ5vb5bIVopOBfmbeThUk50WebHX8cbC8Tnvc5F9IhcM2ymBJ3cLgPKrYuyBXrEY6tBVUoOoxcE6j5HvS8Xe5GwIMpYOVXRYP9I2ik9hTEaSoc8ph9FWHyAVre0sZ1JNs69/pA4IpcxFdPn+whBT49R0l/fgserZP5++QKwlnelcKn+hM2906oghrzYFp8F6VQ3WN2Zsxxo9ee0P0x2u6RFY757bFD0GR+GCymwtJm1nXXfLzVYIs4vYFcJo2dMczbtRpoDzaC9YxMGr6r6sqoKKweMcbKu2tX64LQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(346002)(396003)(39860400002)(136003)(5660300002)(2906002)(71200400001)(66556008)(4326008)(64756008)(107886003)(52536014)(66446008)(86362001)(9686003)(8676002)(33656002)(8936002)(186003)(122000001)(53546011)(7696005)(6506007)(83380400001)(110136005)(55016002)(26005)(66476007)(76116006)(66946007)(478600001)(38100700002)(316002)(142923001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?t+ZBaqzju2K1NLMXCDyQcF3Ab574/odYzzMQkw4Ud7Pn0mwpUwp5YFhlV+hF?=
 =?us-ascii?Q?KI4kNIdk4f7KNl3M0Iz9sViXl2r0PdqXSPc0HCGmlGZNKfhUsHLdSK1bUT9O?=
 =?us-ascii?Q?rIU4BLUchNOk7/m8no+u4Wb180YWxCqcrzud5gTXh+0rQqbmv1QeZlSFFxv0?=
 =?us-ascii?Q?lRiYPXmWgK3fFSZ7e7VNgYMHhWZrSk3SxeRadIhO3yR1npal+7bLF9AhXobM?=
 =?us-ascii?Q?ptuJqDAYAGiNEwR8yhqE8MWy7KAEFpkvNMXpp7G5u1jFky0/zD/UFtwtzkin?=
 =?us-ascii?Q?sT7lW1d8jprHKMyHJ/AhNlA/wGv2s9G8baRbM5Czujg0bvbndlHgdxnvhGhd?=
 =?us-ascii?Q?lQGT0W4RlwfASPOdkhsYgtwpzTcXiZ3+608xc0/TNe0Q9z5gilDq3YdLn4eO?=
 =?us-ascii?Q?pYVET06jzR12WLSy+nz+mE0nuupi5OiRuLwHvkKlkqM3WdwdSU84jV0m5tOz?=
 =?us-ascii?Q?zL56OMkXHx7ym5znvaM8begla7OiEz7IBZBBUZSIPOyFdC+Mkr0yRWzNtCla?=
 =?us-ascii?Q?Aw6+caukKLsG3EDJr1pCkdck1jD0pHyD5om7JOx4z4LomUu7kU7MIhSrnkgX?=
 =?us-ascii?Q?HfBTGVLi5TLb2NR4esP2n8aJlzXRBZTpdE+lIUhEi/Z220XqXEcEYDjH4e1x?=
 =?us-ascii?Q?XM6v4AAgGsMV6OC3c2bB6z/l7Xag2oPQ6V7UNJXPgYyGgXGoo7knNKizYBAB?=
 =?us-ascii?Q?mR79D66lO/+280O3LZSfqiimnNKE2X9CTwkCIisJ18pzPCKwlQb993euxGoi?=
 =?us-ascii?Q?WOlHkAaJgzq4+TYunYeFmG2gwEVLZEas2rV/24jEPN8a6FsobLmCH+kh9Jtp?=
 =?us-ascii?Q?ox6Vr+c2N83Er7Gm/X4MZlX5X3uG7K+ZyUbyYMcmnzZN7A3EdIpzVanekGbe?=
 =?us-ascii?Q?9cb2VzAJ6B/cbc3iOkHEoY2HD1x/a+CbhwYKD+eaXGILNR4X6VxEHFFI8NOL?=
 =?us-ascii?Q?15HiwILWZpEWL/I5MIPGADAqDYpS8hUJbnx+zjHeeNOe2uevxz5j9Ga53F9D?=
 =?us-ascii?Q?vDch+sdyskZbvChpvNmtdINsDrxUgY+G9scZj2xRjsoFraOfPZieQew6Ox93?=
 =?us-ascii?Q?UT+7hd+nMAKpTa5WBKo1n8q4gy5zG3j8y/flOT3wiUfgCJRohdlPPxDktN6G?=
 =?us-ascii?Q?UwIzWQHd8U+4hijISadgS/tdoGPI54cbj9fesIO0WWhNyg9NWyykMbNgpxMP?=
 =?us-ascii?Q?LydXlkPpfF5ntDwPYFUMMl4TNwxMQwQqA5n1jGHUlV2mScBDAxfmtyYUZjSF?=
 =?us-ascii?Q?rHWokAnthwB2LWceZvIJyxgFMyWS9uBwwCGvEtTtW9Q5PwxlAKV3UAH9jjbt?=
 =?us-ascii?Q?JAQ4M0cy7V5uifi0uR21Rkna?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22dc3cb3-0605-4f26-6094-08d9213481bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2021 17:26:04.6774 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6+FvGnapk+4eKwM4Ia7dgwu2zV7yeRqWFkG1W4to1oC/xiFxcnqhMw9w6+mdOs3yX1XoJwDwpMx5LnCI6hv4pE1AeWEU+tQM33PAPPNuYv4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1805
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 6/8] ice: report the PTP clock index
 in ethtool .get_ts_info
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
Cc: "Lion, Sean" <sean.lion@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Thursday, May 20, 2021 9:49 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Lion, Sean <sean.lion@intel.com>
> Subject: [Intel-wired-lan] [PATCH 6/8] ice: report the PTP clock index in
> ethtool .get_ts_info
> 
> Now that the driver registers a PTP clock device that represents the clock
> hardware, it is important that the clock index is reported via the ethtool
> .get_ts_info callback.
> 
> The underlying hardware resource is shared between multiple PF functions.
> Only one function owns the hardware resources associated with a timer, but
> multiple functions may be associated with it for the purposes of
> timestamping.
> 
> To support this, the owning PF will store the clock index into the driver
> shared parameters buffer in firmware. Other PFs will look up the clock index
> by reading the driver shared parameter on demand when requested via the
> .get_ts_info ethtool function.
> 
> In this way, all functions which are tied to the same timer are able to report
> the clock index. Userspace software such as ptp4l performs a look up on the
> netdev to determine the associated clock, and all commands to control or
> configure the clock will be handled through the controlling PF.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  22 +++-
>  drivers/net/ethernet/intel/ice/ice_ptp.c     | 132 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp.h     |   5 +
>  3 files changed, 158 insertions(+), 1 deletion(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
