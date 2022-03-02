Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A244C9F0C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 09:20:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F18F18291A;
	Wed,  2 Mar 2022 08:20:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6fmvQJpuybwA; Wed,  2 Mar 2022 08:20:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B86E4827FD;
	Wed,  2 Mar 2022 08:20:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F0E51BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 08:20:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C132827DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 08:20:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VjRR5-J76zAs for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 08:20:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4ED0081463
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 08:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646209243; x=1677745243;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=awVd5wDpxftWqHun/BC4bvxRPPHzJJhj84idhTCcUf4=;
 b=ha4OIp+FenJVvGPrtxigUF91x7Rq/5ujC3/OUG+gFqRL2t2QLuxBaKKh
 TWWEyxYYeZsimJVC1/BcgsJwk/MfATaBeAgi+ba9A9+ebCll6E+W0t8vW
 vl5oT0mWEMeqloF8Mks9E5XEeTf2eS9XWTSg2YyeyKYh/7ASHWDR9wfSw
 iXmZU1SALLzVNiZK7UXTPA2W1O7egkmQ4QXQQzbsO28Tgv5XcW40Hequ/
 kN9NQDRUCajTenkNer9ZWGpBHrs3EXljyrKBOv9/nwr+1hlKNqhhYDUxU
 wDaPYjleo6NdbfYrg3t9AaCT6lEUxO6hRBlQV0z0dHGjs17S+wyE6+OqW g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="250916823"
X-IronPort-AV: E=Sophos;i="5.90,148,1643702400"; d="scan'208";a="250916823"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 00:20:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,148,1643702400"; d="scan'208";a="508118692"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 02 Mar 2022 00:20:40 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 00:20:40 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 00:20:40 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Mar 2022 00:20:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z3OIadTq6GZHYIPT5Aj/PkvfMK0fkBQktiMgsnivVPSd/Jw1UIEg81+6n702mMcaP+CZ+AsZtcgnCths26Pu9OQnc7i8V5Are2SiPgIVUwDUQtETHmtQAV8ZJkAhNxs50n22Nn7lzBnmDVUx9Pr4utW71m2+HNJuNXnFQcwgSTNZGYCQTC6niBFruanXWx5qk+6txHC0xMMAoU7Rqnd22n2B564xY/9jaPrz0oecsVY3THGIJRII1zNmJKPci7/ZoINJi0vv6IwAurrb2pEe8AYuXmYqBsIISpWUA3LjdLEGn6jWOSJ6mGQB/pF6Skn4CXymOm0VCYJXwVdDI3eppg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Ei6+eC7HPQqLPQ8Xno+clBeos6q2BjpcBh0h7iaOKI=;
 b=gLqfSSbolFUw3jsG9QTIl7+KsgBXAi7jdJJxyZQmDVEpic6XuZWwtBrxpKUocWZUDpjKmEKodTuc+fHR5XiC5P22Xwo0r4djFFBj3dFGsWR5WMQEKK4ji4FNY6GLuq4aIvQvqNnMGscSOFxJIf4/e12+RwfHJEsQRTlpotfMEVhNkoe8KQIiu+ynwtjaBtZ540yc/Y1BxW/87h4gRH4nOu2xOqGNXeRhTv/fBabiYVm+KRMmOLzjZQc3hrjpf9dopfzoOISsMu3O17e5hEoXWnzvC/wuP1oZKcZFvVQex37ftez6cRp/iEtbsiys0xPULwy3Z7RJWXM63pe+Ydiv3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MN2PR11MB3901.namprd11.prod.outlook.com (2603:10b6:208:138::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.25; Wed, 2 Mar
 2022 08:20:36 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::a594:7b41:f854:2478]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::a594:7b41:f854:2478%3]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 08:20:36 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 03/25] ice: remove circular
 header dependencies on ice.h
Thread-Index: AQHYKEw+OybT3VYsWE+8rK/EZgHAx6yry+VA
Date: Wed, 2 Mar 2022 08:20:36 +0000
Message-ID: <BYAPR11MB336787B9526490959EFE5A6AFC039@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-4-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-4-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9d59f715-6b8b-43bf-0a4c-08d9fc258761
x-ms-traffictypediagnostic: MN2PR11MB3901:EE_
x-microsoft-antispam-prvs: <MN2PR11MB39016E7B75E3B9518275FF31FC039@MN2PR11MB3901.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ymb/C4pVHdRGimvw8ksz7U3HfeTLaRSsubuyLDBkarNBRCqUAc0ew10x6higRePK6eXTkwhdiVnRf9fMbXJpNeyLEVpUnuSw7WfY2Wrpac/5+zB4ZzDYVStOvsxtv8xd6fHd7klHhaApM4vwhPIFGkC9whwo43xcIZFmnETc0zQxtLjvmI9LpQ0r9uz4ym4GTfVJ3Mj18i0DIetNUJZbI47mltYHh3nd55K33orkGzwRx6Kin+OZUaqfmKTHkKV+B0bExzm7bHp1xzl4CoZPB3wnFRUVn0oUFJtg7Ld2Z0YvSkOv5x8iUI2cGbQ03g8FPzWMvHyjxA4QhxeGVA+araItsiLuQL3Dz/F5XqA0DcBa6NqYq23GhWEat6xn3TaTwSSHB+3iiIS19yFkh6wJ88p9eiCnkI9/QvPGPd6LC+6Gh/C2rqHDncqmqGohwBKENdzKrLTuUlqv10joIeOL9hKsWESFBr+UXIORbdjGUpyxQo/LB3B6mr9jCOVQ0sqDK/qtyWantZXwTxXt0sA5ogGU0WBR2gGN3einOODfA8Uq7INJAKPgt+/U21c+Zdvr3RyFNSuRGZUCjEhdvG1UxCbOlVVpFssrdp9qPwSuIJEOQ+K2xn9W0+iXxYa3NHy1LOo+pzP6UbdugASG3nYjcxkUeCL78GDIUt/8X5Dc+bmoRFu0uMeZIEgqc3AmJhhjUB5WT5kvcHbKS5Jy/Wcxww==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(71200400001)(6506007)(7696005)(83380400001)(38070700005)(53546011)(33656002)(2906002)(8936002)(508600001)(82960400001)(55016003)(5660300002)(122000001)(52536014)(8676002)(66556008)(66946007)(64756008)(66476007)(66446008)(76116006)(26005)(9686003)(186003)(38100700002)(110136005)(316002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+Qk5YGVzx2kC8e1xDghekW7RXl4dtBDn59JPQZsd/7QWAFiB+zhp4frBti2/?=
 =?us-ascii?Q?anjaKUSyiEWs2nbKOKvDeh42zomA2dj+PR6XzF5+HdzvzJnsy1tjpcgbCayR?=
 =?us-ascii?Q?pBegzsAJZP81PrOxOOzz+UkTtLIC7mJnHn537KnNCmRMazZk2WpLdP2uLVYF?=
 =?us-ascii?Q?dqBdNgjQNUsGmc+su+zQzrKw6cqoor4New/MXsS9s6opDXMxWtamkgq/3fSy?=
 =?us-ascii?Q?bI9ZCGbbUcppSrwr3Rv4WCIssSHOGujvklmFcVZE+XOdG0YpHWq5v9Jr6JFQ?=
 =?us-ascii?Q?WW8g++WH7PQK5HQfHdshCRGuGfM1pPjS0fw7T5rnxHIbky0e6v/K6l5VaAEX?=
 =?us-ascii?Q?qE4qFmJ7QYUasOYBFDcgq+bE35fW8dnKaeiA0982lwQGjf4ulUG5OG7ueDPV?=
 =?us-ascii?Q?AqpDM7OkcgHYpmKcuv3618+EIV8xlb79DeCz7XbGXO8ML1WhLpgraqRXEwrp?=
 =?us-ascii?Q?wlQ4a7naftx3IlQojWSPHhw4FShJbcP1A1MsncCI06reuA+GLHX69ZeRkwj/?=
 =?us-ascii?Q?fNA4gNuW2K4GYlPxzORtrpQFMkmBuax6kEnF2s5SQ/uprOTgz2uixJ5pM5CK?=
 =?us-ascii?Q?c8U1AArv6xaNwyibTFOtjlRU9pAST7Nh3JDwrnvtN/zidLjYwp98a0z+aupi?=
 =?us-ascii?Q?WATf94iCBOwUiPcarxZQMM+LXeDudlESV89iMDk+SJV15Ed8wZ7hbliIweEL?=
 =?us-ascii?Q?4tghb1mF1xXGeAxKEdpfUos+tVbJr/pKLcmNu86ZYNHwXpQlOnTq5HEK764F?=
 =?us-ascii?Q?3aHkZxk7i0neCeD6nqRXbbnzZpxD+RsWiwg8VIQGtXmfcS071WWWZvCjPrt9?=
 =?us-ascii?Q?T4Ml0PfSGGNQbKaF4K3TNZEUA8nn174UD8ez6ujpONBhJR53SEFeKKdq689U?=
 =?us-ascii?Q?fRaTvTGb4Cgq72SK1Z1LlrjCjOV1gB0GfT77YuJZ/YhsmE6LRhSe1FlIQLpW?=
 =?us-ascii?Q?0gvBzJ9e/Xj3xdtgbWCbQ9P+YEZ5IvdCbUXyVkeJckciKD0Ko0LD2JVAuBey?=
 =?us-ascii?Q?FtFg9vgYGfCYW2M1WCSjD4bD9OFyco0ODha8a34XGJDXn5eGiV0O8NVMm3zJ?=
 =?us-ascii?Q?MtTxS97xFsrm+o7xmB2R6H2JQbodHvgsJib/Z6Ew6nQqjDr5Gvzjs313CzWB?=
 =?us-ascii?Q?flW85BV5aU0s9BGeU42tRHYUA6HGCDFrUPLoSfXtEM7os6SzfrQ7mBMIkYlk?=
 =?us-ascii?Q?YVI4vmSofVGPStnQCpxAYFACOWSp0pZciFLWAew3bsK9y2j8a0In0yC7yeVJ?=
 =?us-ascii?Q?+lvmndnATdq7C0koAHWb14hTolQaEcNm0M3VuG2spAoM/E2mDjSL1lKGgCWS?=
 =?us-ascii?Q?Ry0A8YfTzPLAXno0GzcQ9BDbGrb6IXzSoOW1NRdV/+AOgOkeQu8XKM0KENpD?=
 =?us-ascii?Q?Q5kdTpyDrHjJ9HQ+wHTN7Tq+wnn55C1c95HBDPIG8MgiyOH7Eabmpmojqg8D?=
 =?us-ascii?Q?OfhBwQrQ3gnl9iONwLiUCyFtBjDLtwgo8wTRRrUWL60+m+bqbbdGbKUZngVI?=
 =?us-ascii?Q?L2z13YuJNxCv++gEiEoYk7EXWuvBtf309MIVcXOfDYxATwdEkIfjKJLubNDB?=
 =?us-ascii?Q?R9Q2dhfudlZkn9pLfsFVwm26BM5Qdky4GZQA1N1Yt/tAcVXlBAWwjodweSMA?=
 =?us-ascii?Q?BQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d59f715-6b8b-43bf-0a4c-08d9fc258761
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 08:20:36.3971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Uewx2lls1duTtAGRRDW8wwB1hD8uSzfzBsAlstz+hUX8kOTPuY4VMX3X32+cUtdTcMM0E1ScWVB3bWS0De89TA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3901
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 03/25] ice: remove circular
 header dependencies on ice.h
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
> Sent: Wednesday, February 23, 2022 5:57 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 03/25] ice: remove circular header
> dependencies on ice.h
> 
> Several headers in the ice driver include ice.h even though they are
> themselves included by that header. The most notable of these is
> ice_common.h, but several other headers also do this.
> 
> Such a recursive inclusion is problematic as it forces headers to be included in
> a strict order, otherwise compilation errors can result. The circular inclusions
> do not trigger an endless loop due to standard header inclusion guards,
> however other errors can occur.
> 
> For example, ice_flow.h defines ice_rss_hash_cfg, which is used by
> ice_sriov.h as part of the definition of ice_vf_hash_ip_ctx.
> 
> ice_flow.h includes ice_acl.h, which includes ice_common.h, and which
> finally includes ice.h. Since ice.h itself includes ice_sriov.h, this creates a
> circular dependency.
> 
> The definition in ice_sriov.h requires things from ice_flow.h, but ice_flow.h
> itself will lead to trying to load ice_sriov.h as part of its process for expanding
> ice.h. The current code avoids this issue by having an implicit dependency
> without the include of ice_flow.h.
> 
> If we were to fix that so that ice_sriov.h explicitly depends on ice_flow.h the
> following pattern would occur:
> 
>   ice_flow.h -> ice_acl.h -> ice_common.h -> ice.h -> ice_sriov.h
> 
> At this point, during the expansion of, the header guard for ice_flow.h is
> already set, so when ice_sriov.h attempts to load the ice_flow.h header it is
> skipped. Then, we go on to begin including the rest of ice_sriov.h, including
> structure definitions which depend on ice_rss_hash_cfg. This produces a
> compiler warning because ice_rss_hash_cfg hasn't yet been included.
> Remember, we're just at the start of ice_flow.h!
> 
> If the order of headers is incorrect (ice_flow.h is not implicitly loaded first in
> all files which include ice_sriov.h) then we get the same failure.
> 
> Removing this recursive inclusion requires fixing a few cases where some
> headers depended on the header inclusions from ice.h. In addition, a few
> other changes are also required.
> 
> Most notably, ice_hw_to_dev is implemented as a macro in ice_osdep.h,
> which is the likely reason that ice_common.h includes ice.h at all. This macro
> implementation requires the full definition of ice_pf in order to properly
> compile.
> 
> Fix this by moving it to a function declared in ice_main.c, so that we do not
> require all files to depend on the layout of the ice_pf structure.
> 
> Note that this change only fixes circular dependencies, but it does not fully
> resolve all implicit dependencies where one header may depend on the
> inclusion of another. I tried to fix as many of the implicit dependencies as I
> noticed, but fixing them all requires a somewhat tedious analysis of each
> header and attempting to compile it separately.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h           |  3 ---
>  drivers/net/ethernet/intel/ice/ice_arfs.h      |  3 +++
>  drivers/net/ethernet/intel/ice/ice_common.h    |  4 ++--
>  drivers/net/ethernet/intel/ice/ice_dcb.h       |  1 +
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c |  1 +
>  drivers/net/ethernet/intel/ice/ice_flow.c      |  1 +
>  drivers/net/ethernet/intel/ice/ice_flow.h      |  2 ++
>  drivers/net/ethernet/intel/ice/ice_idc_int.h   |  1 -
>  drivers/net/ethernet/intel/ice/ice_main.c      | 15 +++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_osdep.h     | 11 +++++++++--
>  drivers/net/ethernet/intel/ice/ice_repr.h      |  1 -
>  drivers/net/ethernet/intel/ice/ice_sriov.h     |  1 -
>  drivers/net/ethernet/intel/ice/ice_type.h      |  1 +
>  drivers/net/ethernet/intel/ice/ice_xsk.h       |  1 -
>  14 files changed, 35 insertions(+), 11 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
