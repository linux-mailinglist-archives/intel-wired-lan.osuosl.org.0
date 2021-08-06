Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 305843E27BF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 11:50:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F53D40432;
	Fri,  6 Aug 2021 09:50:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4QfuMTeLdgLe; Fri,  6 Aug 2021 09:50:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B7A5400CA;
	Fri,  6 Aug 2021 09:50:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5ACC31BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 09:50:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4965C608B4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 09:50:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id McbtGlkmbuiA for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 09:50:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 143C2607B9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 09:50:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="299931001"
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="299931001"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 02:50:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,300,1620716400"; d="scan'208";a="672135231"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga005.fm.intel.com with ESMTP; 06 Aug 2021 02:50:13 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 6 Aug 2021 02:50:12 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 6 Aug 2021 02:50:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 6 Aug 2021 02:50:12 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 6 Aug 2021 02:50:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uvwt2JJTNHBisifJFkrXnqA9MCxI5TczJRnBga1A7FCR/QVTj1la2dGsmkl8wplbbFkeuiMl/mLIYYtRbeCvC2OpGvcw8iWnXlIAKX9YU3W4bvPB9Cd/tuDMCCT1p4IywFf9rO1Kz27bOYjxeBKg90yKLDIxSqUS36Ez7fLeZYl/h+8/8kozeMkJQM1rM/Bx6JJ9c23LEqHOv9PgKFnjaAOOOH6PyVwHUn6pbNL4d2bQKNlGAG7Icxq/Qiasb79OBjMqximJJ6gDiKa/TMWxdLYVyuaRsQilTM/velL53sMxZHZpJUFdtYxvF8wGepYlYvK7p+Cx4nnkXefwyaXLyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BcIE68Dfqlwtw9GCxBi1ajXBm9gKvIlsO1L6S5wVf/g=;
 b=nBZK2wQNOP2gZ/tJq2hvVT0/7KByTnKxZfeCwF4fwPO13q6iUGDY2NSt71bGz6Kr9IXYSaexUopb2STSHkxDfOqxGO1gb2eTJ0eCyXt8KHyHAGgk4e5JH9qMpQ+WDhz2c5VST54eb8aWuozsoLdZfGh2fxkDxckBUCFEORI3PiMLPrqIv4/tferTwbxV3ZTrlLwrpEQ6IyzR25iCuy8zRKUaO1466ggdQf2ORvJq9ebntr9gSCPH4+1KYwq5lSqg48ODWooHLYKebP1eNmCuOFUV4nUNrARl/YI6zLRNDicPoggtdRStqN5/P4/0ySX2wKkOTR6y2eY+B8ZmU6GJjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BcIE68Dfqlwtw9GCxBi1ajXBm9gKvIlsO1L6S5wVf/g=;
 b=e54IbM92QKfjPJdgN+WOMkgohq8GEYCptVNW/t/hLjG15q+c4t0fClq4Uu9blVM/BocwRE4nwf71yD604fa0HG0Pr5/Gw1RSHyGerauRwlLcr8BGH6rWVafL2Y1VoymSLWGMohRMHxX3uGV+Zshnjs68r5XNqOa5laAuszJVQq8=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by CO1PR11MB4771.namprd11.prod.outlook.com (2603:10b6:303:9f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15; Fri, 6 Aug
 2021 09:50:10 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::34d4:c1f3:599a:6b88]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::34d4:c1f3:599a:6b88%8]) with mapi id 15.20.4373.026; Fri, 6 Aug 2021
 09:50:10 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 03/12] ice: introduce VF
 port representor
Thread-Index: AQHXaaua5Qsfr/wQOUGnCtqfxPvDkKtmfUOw
Date: Fri, 6 Aug 2021 09:50:10 +0000
Message-ID: <MW3PR11MB4554064E5EC789BC943080A59CF39@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
 <20210625024501.6126-4-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20210625024501.6126-4-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bd2e895a-618e-487a-3652-08d958bf94a2
x-ms-traffictypediagnostic: CO1PR11MB4771:
x-microsoft-antispam-prvs: <CO1PR11MB4771AED5E36C592450C5FAA39CF39@CO1PR11MB4771.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:586;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LmaJ/dRa6pEC6LFKa6nIIguGDMc6qbQ9Aram33ivQ1qPNBOOI7pTuIpOuQgiind0r6/mKxP2DGEmU2LDtvDnE6H8BMPe3qeZK79nkHSuf2RdMjX3SOwwOP1gGPGwQaVde5T8UgEXDAlfY3AiAe1qEdMJfAumKZPQtjNJmOPA0t43wZGhPXRX48FTP6gHVsXG+smhKM63Ja9P+j4hTHNTJe5qQj3L/civdy7wdwjxFTwbUWXmxwjCSO9iomzAlE6jYeLLqvi252P9XDR3+6OEDjSgBOQMHwObid7zzNmxLvVCw4P3SnpJf2JmaIYUkUaWk1omrzgzFbjDJ9mpw40IdCSFCL1TGpkzd9Evs6O4JChZHIESt1MGGDd6+gRB03/xewr78odcocZPqGrFK52nnifpWYBtar7Ri46ZAHvSTj+dubxdJQo0DZHQ6FWcVSkG9B4rDIx2xI6cT0C48m2N/bR+C9/6w1SST78HMS/nLPi4XuPRw9sybkFBDxxO6ODHGszQVF2w6N35fACH99IxbrUvKAGKeFd3HjWX8yllxDoRir0jJVoXrnsZycOCZaDWMf1ldzokK/K4/b3ZPHbXQUS0HyAi3P/xwpGxkA7t1QqMtcxn1+jV8wQg5fw6KuN/v+OenlhhwyqaNA1E+dutXVX9KfwCtIWsvNuQrlPpbONtXrJThNLsnUBF8BZvhNTOf6a+NwRbnj+TKiFFksOm/Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(376002)(346002)(366004)(39860400002)(8676002)(38100700002)(8936002)(2906002)(186003)(52536014)(316002)(7696005)(122000001)(33656002)(5660300002)(110136005)(66556008)(66446008)(55016002)(86362001)(66476007)(64756008)(38070700005)(6506007)(76116006)(66946007)(9686003)(478600001)(71200400001)(26005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+6fiT/gGAtkr3FuHoy8MHtXyaFtPqXg4X19rh3DyObRTaxhFXy7DDWe/8/Uz?=
 =?us-ascii?Q?LhOgggWtuLPRXz+0WP9zklkbDG0a3HAqvVkjb91T26F/PVk7FqgW32/epKSq?=
 =?us-ascii?Q?gbnb3D3SbZW0BsnptKtM4aqryRbUUCAgd7vXUfz0h03ftxnQGUpl0/dDzm/z?=
 =?us-ascii?Q?9uz9jwS0He5o0Y2KDgxB96VM7daVp/9Fv+oglEglvRl7SMrKvGPgA4PAZq0b?=
 =?us-ascii?Q?blMJtc5AeG7GWE3XHaKsFotdbsCEAJjQeCdEwJzBtJsTp1T7OxbMQFNkKrAu?=
 =?us-ascii?Q?4pzC0vsZLpgkcGl3MIeWMXqQOwWB2PiIuakHq6D6t/ho/KhrUVM+3L7AUmol?=
 =?us-ascii?Q?7sOnS62V9XgyAhNtduibllllnRNERXCMGACq2K5GcGpOCKAiTFHzEfBJE5GF?=
 =?us-ascii?Q?lJGuq8Q/QPIrHguMX5MsmjXM6y4jhXUiyIl3b2yc7VAUwLFT3Clg1p1kc11A?=
 =?us-ascii?Q?z2xoxg3qi99iOD2f3HyU09B5cnDKrrEE70/291OjPP1sAq41MYGaic9NF5OI?=
 =?us-ascii?Q?AztZvMJ/xBu4nMBdDZw95tky/Wpwf3p83iEBH/8kWb4fQ7mHiOJ2I5OBau4m?=
 =?us-ascii?Q?DNgob5rvqAaDVpCwvbzRC7tUfwAH7FTaJ7lNZoH7FRomI0BntvcadSdggal5?=
 =?us-ascii?Q?YukLOwLHYAQT6HC9zKMMGrv8GiYUQwdPbuMyYVd9H3AQ/3nFlcEedROwW0NB?=
 =?us-ascii?Q?ZU+s/je+GkLkxVpt6JYS84MRFgypFb8mBFmMHn/npdirzI/Trtbhj0/V2YvL?=
 =?us-ascii?Q?VmZPc+bIaYg8ASKgHb6eI3HZwcKwaAJFyBAle59qGaEibskdR1ZvVxNcHHoI?=
 =?us-ascii?Q?GSnOR6VJjIPeMrs43S4hQSmAErgkBHbwURfpHSMa/eiJmtMIHZCw+WJG41He?=
 =?us-ascii?Q?o9AhXE5qhH/2K4H4vcCsUmyEi0TESpeBqQnas7AUBkyn+agXPt0byGzGKGvy?=
 =?us-ascii?Q?+8K0Fwub0IB38TRr6RA6VUg5IDhId+42oH+ycNnZ1nj61j0KG2wPjB1LWt2e?=
 =?us-ascii?Q?NSbaopk/zC4FwZRT0RqCIYy4O/CxjjPrsKEnacSYQfvzA8Oz9dWx034BLmu2?=
 =?us-ascii?Q?hvNZjtlaLOJiLjUuDCd77B1jMNvGw3cysOK/tZIJD642lzoBW6PZ3IHMTFhq?=
 =?us-ascii?Q?KYiCYKZQ5CJ3rSPCmMfw4xKsCuaYIuDzPIIoV1vgPmNuNnozYd5eRIcji5qk?=
 =?us-ascii?Q?Vxroq4GM7jNs3lItZDAKy5DDuqrsbS9AtEAZSUXaUlcDIxf1wA8qhdZ2nzJy?=
 =?us-ascii?Q?XRHr3Lke7ML41DVGL6iNVNSSzqM0jEFsi4DDg22fsjHZuzbiLP/8ZLID0P4L?=
 =?us-ascii?Q?FVFeyKZYGrvdg+WOZBiimV34?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd2e895a-618e-487a-3652-08d958bf94a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2021 09:50:10.4217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4dK2Pf5lZOP3Dgq8H1LS1CtR1lw+/0eNpCahj18LUanVAWRq3ipVINsiksUaV3/cWgSfircgtJ3YFRw1JNTY1oqOju6vdHfI4OTxMMJegus=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4771
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 03/12] ice: introduce VF
 port representor
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Michal Swiatkowski
>Sent: Friday, June 25, 2021 8:15 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v3 03/12] ice: introduce VF port
>representor
>
>Port representor is used to manage VF from host side. To allow it each created
>representor registers netdevice with random hw address. Also devlink port is
>created for all representors.
>
>Port representor name is created based on switch id or managed by devlink
>core if devlink port was registered with success.
>
>Open and stop ndo ops are implemented to allow managing the VF link state.
>Link state is tracked in VF struct.
>
>Struct ice_netdev_priv is extended by pointer to representor field. This is
>needed to get correct representor from netdev struct mostly used in ndo calls.
>
>Implement helper functions to check if given netdev is netdev of port
>representor (ice_is_port_repr_netdev) and to get representor from netdev
>(ice_netdev_to_repr).
>
>As driver mostly will create or destroy port representors on all VFs instead of
>on single one, write functions to add and remove representor for each VF.
>
>Representor struct contains pointer to source VSI, which is VSI configured on
>VF, backpointer to VF, backpointer to netdev, q_vector pointer and
>metadata_dst which will be used in data path.
>
>Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/Makefile       |   3 +-
> drivers/net/ethernet/intel/ice/ice.h          |   2 +
> drivers/net/ethernet/intel/ice/ice_repr.c     | 254 ++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_repr.h     |  22 ++
> .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   2 +-
> .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   4 +
> 6 files changed, 285 insertions(+), 2 deletions(-)  create mode 100644
>drivers/net/ethernet/intel/ice/ice_repr.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_repr.h
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
