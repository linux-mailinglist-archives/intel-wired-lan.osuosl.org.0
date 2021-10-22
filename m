Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 564C743807B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Oct 2021 01:13:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB1EB60684;
	Fri, 22 Oct 2021 23:13:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OmShDqQ0ZHlf; Fri, 22 Oct 2021 23:13:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA2F260682;
	Fri, 22 Oct 2021 23:13:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0DE721BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Oct 2021 23:13:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E7FA460682
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Oct 2021 23:13:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cb-VmPgJumNg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Oct 2021 23:13:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CEBD760638
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Oct 2021 23:13:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10145"; a="216574656"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="216574656"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 16:13:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="720444788"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 22 Oct 2021 16:13:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 22 Oct 2021 16:13:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 22 Oct 2021 16:13:37 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 22 Oct 2021 16:13:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bDtioYYcUQE/x9YBAFizTeGtjeIjrnnUM0/6NzntFI0nMOPJzGGdRyPUoJi2jMyfQVADiCkbtsegWA/HgW25Hs6b+ipksYV18Kyeb2KRmgRP0hOPnhvK7m4xi8GNkoHDi5+1pGRj/qUxGQj9lIlBR3zmDr7mUh+yNtUCMuFXNNBeKWQb5E/JQqTc02hS6ysJMlkghVtA4Urfxzk8KRgSrI1fKcO9tOm9YQ/lYc/NKTnlC1x2cqa3Tovs5/1h2aXKl4nqAnLXxB9MxV3Knql/YuMAwFJokWmQlJ+xSIzyBAeJHWKHwmRGSKOIG2T84wHjCmfI0RUA72oaTTxe2sP8Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EpGClias7c5vLga856/Tb6KT1PbNw+aXekyNNrXAgbI=;
 b=dzHUFRkKBBk8gX4/FovGwurFwM1r4yMSb905UjZwIv8gXv+rxua/N/frwrnnIhoFKr/8ezNCS3A1Z9brypuBaP9pNOnwKeJ7j+1XcSeL9t5eoiHB+f40kszimYohSNnD7Z/K/lyFPDsF/KNmmNS/wrMS41/Eiizh2UKtGf+/Dp3aFZ+Ww47i7oVOdtFSo9KQKRxE9qcguWiB7XVTWFshncjelKk29PyWqnzXCX0YhKjlBu+AO7zaBGrbF7BYPLHvJQMzWy1DdtGan6lEf2heA4HRl1DJ5G1P6H63BzVv3LyACeB3q+uZPlB1BodrCr4HCZBzvRaX2Mw6bFQZVQE3yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EpGClias7c5vLga856/Tb6KT1PbNw+aXekyNNrXAgbI=;
 b=b90j5T8xYYMcq1GuauJxmrWUp0/1WQL5xzbCLMASk32aSZrLiBIsX35PD0Lg4+EXiNlpiiklpdDxISZ2cacJJDjz/mnY4+KHk9p78w7RICn0PpbLicZRxl+L3H+PW+hXcP6aihpfhZPFCR+uaOzvmM0e3hBs8lUw5hq6k42YeOE=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by MN2PR11MB4368.namprd11.prod.outlook.com (2603:10b6:208:17b::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Fri, 22 Oct
 2021 23:13:35 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4628.018; Fri, 22 Oct 2021
 23:13:35 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/7] ice: Refactor status flow
 for DDP load
Thread-Index: AQHXu8kxjfBLVsn5hkuO4smMFZ5B4KvfvQpQ
Date: Fri, 22 Oct 2021 23:13:35 +0000
Message-ID: <MN2PR11MB4224FF328B881D1F56A2CF2182809@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
 <20211007220127.70514-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20211007220127.70514-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fafff272-e84e-4b41-6904-08d995b19318
x-ms-traffictypediagnostic: MN2PR11MB4368:
x-microsoft-antispam-prvs: <MN2PR11MB43681DDC3B9D425574E07B5D82809@MN2PR11MB4368.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KDd+AV5cTtyk0AlLX5ENcCk98oOXXHhAwObW6mpsjWLajBFHh8SOgK4mJg88pOhPQATWFBGgfbMjwORPIZOXHy1Oezr5hH3I3Z3vwMMdWjM7CPMEAJE1fZ6k1KzgpSJMHPlPEx0XpIf4YXZf2KE+Yet0Kmb9f5b+Y0uFod52Kn8vbhHIRDNxlMCGfTd0SjXdX7VkZ+OLcRt0Tm1t3nj4h+v+kFmdJ2F0zlgLGp6oArbtmrtqoFSPVn15jcspmS7Ekp3hcTs+g+dzNMDKg3u1skxSCIPSAUeuC7yg3OkbKjMHm+Uv+7u7rCmiSMEx7evP8QhcrJIUhrdoA30deHs30kFia8l/1wiVTJbbISQqy3InlGO0rsgeqJhoaIlXob7Ct7sFED2Vkw4kHnGQO/lcuKR4clAQPERxobn3k0cdDdSgeU2Wze+UouIbi5MnxV9Wvy2EMT0XwAy5rf1LFw6pOIkDrYCHzQ2wPBLA8Fi9hWLaFVev5yS5eXakigLuH44SegKkeOKKeYZrDG9lTthgvXtqxcMroyDdVJtryyfpljXVvB3Aqp8WcWiswYbMUG73J5hMwmORi6YPtVefcg9/mwgVUEAaaG+DkCP8VT9wBzgyRnsct5oo5QhLriHWjwr50dG2CZCUdPF/ux8Q2jNixh1P/161bjW8LiMHk9erP9w4yD1712zNIp/7RlDpmdxl789ebqMz+YaAtLw9G0LBVQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(82960400001)(122000001)(86362001)(508600001)(83380400001)(38100700002)(52536014)(55016002)(8936002)(38070700005)(66946007)(7696005)(33656002)(66476007)(64756008)(66556008)(76116006)(2906002)(8676002)(66446008)(9686003)(71200400001)(53546011)(6506007)(110136005)(5660300002)(26005)(186003)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mSIEGukUJ83ibCbEc2fDQ030eqfidPfHwrWkopX0rb6p2WUbUwOPHB3fGuDJ?=
 =?us-ascii?Q?DVSTnk+WOk77uDsJjl8ugqHnBLdJ2UoO+tL9mr1ZrGujg5K66p3/LSoE5c1X?=
 =?us-ascii?Q?4bDHYW7XsSIOOlo+wn4wyffCvcI3QO1eFeejXh2TU1wUqsw86m5Kyhft2Neu?=
 =?us-ascii?Q?VAEQye2PJOPXvt3lFbFSVnHUmgQvBiFRnBWnRG/FoZ10RLyDLCk3j6GRaFQT?=
 =?us-ascii?Q?AqD55t1aPPiYQh/6gcXlmxLNfBYijsLBcKjHN98FLxgF0XD0iMEYElIoRmnK?=
 =?us-ascii?Q?FPxQvw/aBinn7ZbAfavXkVf/GWi37xhclYdw0ERtjeauK/b8C5zAsDObOmWL?=
 =?us-ascii?Q?4h82VALZI0ILfHnesNsl+6MkoaqTQJT4P0Bn4w4a+i0Kly+xDdKy/yASKKAB?=
 =?us-ascii?Q?6SUK6maF/CrNjKiE6bbYxfoedbu+RK4NudYNxQ20N+Cp2EvsoPyV9ID9eqXL?=
 =?us-ascii?Q?vTM7BacwRGh7FXlmv8nqcJbO2z3Ux9CEyRP6FUdZG6jfl1qVldfuMEef6eaw?=
 =?us-ascii?Q?QOob6mmkwWa1x45SgTnilyMjL7wdiuio88T5MSNr43kiuXiIZ6JHMRUiOZj3?=
 =?us-ascii?Q?S2uqFxU58eER/i2q5XqBVy/n9NOBb2x2xoA3lZSVoNvyT2gXwdoY0vJVjD5O?=
 =?us-ascii?Q?AGM377WcaAsYU657pgcU0e30FixGwfefpYvZOrMaAoc3LfpBtef4aryFx0OB?=
 =?us-ascii?Q?JnqTd2yX5MC2BKuRZhDPI0hAHB6I1MiZ76ME0H/P0NWkmUoYZPAeUDsqnBLM?=
 =?us-ascii?Q?mscBo3gcMnX2hg7Bu0Zz7/ukoku2T7DzMSEZaZD4ORlsfkwDTQ/8IQRJkdQY?=
 =?us-ascii?Q?HaaJjDX17gPf+9dpf2Ss/2F3hDN8rwHyxH/GIughiNmynkZEr8tYnSTgfnxB?=
 =?us-ascii?Q?8LWWt/uaz75AmBeG3NHB85rgWEvHwZjubCHtkCSFA+b23vnoM4ZjQb0fOIkW?=
 =?us-ascii?Q?EglmMUawqYQ3rRZvs80gVLJNuczXaLm+Yhrp8Dba5Y6Gos8NCIyKPwwHmKEF?=
 =?us-ascii?Q?0CuoYtXnPfjhy08wxLFjEHBOA1iI27k7vHjZsrrrpPaSLdSHl++dci9BorIm?=
 =?us-ascii?Q?NlrcLji7/YtoUfJdmhbQGKwD8xzSdbCi0aE4M0+n2aumeBLWfz5N8h1/CsTG?=
 =?us-ascii?Q?MMzSV7G6PAnjZ+3Cnwj7DxZy3BEePYZwUcn+2IJHUkl4UwI5w3Ltqy0OABAv?=
 =?us-ascii?Q?f+wPqW/9gAkMpNpqBFiA2JJRbI8O9/PwplcMZ+kg0ltmbByo8ZKL1txgz22h?=
 =?us-ascii?Q?mhOXVgh99ZMYsigwPkTrLnnMuvLxCKGuH+revYjZqe3AgoxYoPmKKf014IZJ?=
 =?us-ascii?Q?inAafRWjmhCT7MWmuFpLl9zdmg0c+lnadHRFR9nbjp9XlJu3ElefJbHERrf+?=
 =?us-ascii?Q?HASrENjZ0JmNa9Tv1czYc1iAConrDc/NrxeJ3QN4F5F/8O362AQgeNd4zT/f?=
 =?us-ascii?Q?r3ypYdoTmE0wA6JUWq9ad1l68HXjgZZ2?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fafff272-e84e-4b41-6904-08d995b19318
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2021 23:13:35.8646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tony.brelinski@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4368
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/7] ice: Refactor status
 flow for DDP load
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
> Nguyen, Anthony L
> Sent: Thursday, October 7, 2021 3:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 1/7] ice: Refactor status flow for
> DDP load
> 
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> Before this change, final state of the DDP pkg load process was dependent
> on many variables such as: ice_status, pkg version, ice_aq_err. The last one
> had be stored in hw->pkg_dwnld_status.
> It was impossible to conclude this state just from ice_status, that's why
> logging process of DDP pkg load in the caller was a little bit complicated.
> 
> With this patch new status enum is introduced - ice_ddp_state.
> It covers all the possible final states of the loading process.
> What's tricky for ice_ddp_state is that not only
> ICE_DDP_PKG_SUCCESS(=0) means that load was successful. Actually three
> states mean that:
>  - ICE_DDP_PKG_SUCCESS
>  - ICE_DDP_PKG_SAME_VERSION_ALREADY_LOADED
>  - ICE_DDP_PKG_COMPATIBLE_ALREADY_LOADED
> ice_is_init_pkg_successful can tell that information.
> 
> One ddp_state should not be used outside of ice_init_pkg which is
> ICE_DDP_PKG_ALREADY_LOADED. It is more generic, it is used in
> ice_dwnld_cfg_bufs to see if pkg is already loaded. At this point we can't use
> one of the specific one (SAME_VERSION, COMPATIBLE,
> NOT_SUPPORTED) because we don't have information on the package
> currently loaded in HW (we are before calling ice_get_pkg_info).
> 
> We can get rid of hw->pkg_dwnld_status because we are immediately
> mapping aq errors to ice_ddp_state in ice_dwnld_cfg_bufs.
> 
> Other errors like ICE_ERR_NO_MEMORY, ICE_ERR_PARAM are mapped the
> generic ICE_DDP_PKG_ERR.
> 
> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 225 +++++++++++-------
>  .../net/ethernet/intel/ice/ice_flex_pipe.h    |  62 ++++-
>  drivers/net/ethernet/intel/ice/ice_main.c     | 165 ++++++-------
>  drivers/net/ethernet/intel/ice/ice_type.h     |   2 -
>  4 files changed, 274 insertions(+), 180 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
