Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D893F435D05
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 10:38:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56E7B4026E;
	Thu, 21 Oct 2021 08:38:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gBNVUguv1_FL; Thu, 21 Oct 2021 08:38:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 439984022A;
	Thu, 21 Oct 2021 08:38:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B5701BF40E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:38:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65A01401DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BfCWWgI5fWLj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 08:38:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7EA4440297
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:38:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="216143970"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="216143970"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 01:38:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="575803887"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 21 Oct 2021 01:38:48 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 01:38:47 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 01:38:47 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 01:38:47 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 01:38:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eDHRpPN18xy0Stv2C8TJ4qx3RVjOlcGig2zaiqQMkMj5OV9TP84/QKLaiwsVJmz2rsbmzki80v/4sWdSaVOsT7Y0+nePuDpXvXCqZO8bpvTOifski7iVUP6UTzEXd0ylqsuUCoW5gSQ5g3UWk+7e14p5B5aoO8sZOjO2DSGsJkg1/x/nd9B+qJXTj4IDtzHplrhw0rwuGTdCI4x+nmN0UrE5If2g+Mz/NoYS5Hf1e3mR2Lu+K5cKiCualG27Qk6jq8vjtqyatk/O06nEZe0KLv5Aw5B0lB1DsBqGxKBbX8TllDqgLnxLe02Ce8NAGlvUTD2s+d4DXEaB4Boonxfc+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lttBth9qJa+ZC151sp1KIa7GKpeqoxBe6hPUYoYE/LA=;
 b=VARTE7GfN8j73dpinqOXvee5uHGCyStwD8TrFEmKYkC5Chey+WLSvoslbxOHbR0twc2Zko8OsqeATDybEeh5WEFgOgt1txdL+1dOZdBp3i5GTQ+/adHbTv3nPGiJeyZfe0YAhQ/08VXdcFdxFTWEREaX0AE/v+jmkpgxAm5176iyxptfYjyC5UTx4T9aa0gByIA7FOF9RNObzdRGeqjvRl44zWbZiOZv4RMhf+YMbtILNqg7Bzrxf3Xj4YWz2JVGxnpYb4pqk9hjMoL5MkjOWmdaoucrD0baeeyX6rTlNpEajmbV5YlGVTeJYfxn1ELGbPL98nR2hxubYPQ0E/ff/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lttBth9qJa+ZC151sp1KIa7GKpeqoxBe6hPUYoYE/LA=;
 b=qtdgFnc6hAEJsDWTeRRU23I3c31LLOUzPzF0ShyoRO52qkjqUH9Xe+elmgDNh76zlTDkRGl3M3LlE6vEEEW9IVRGt/3aMiwPdPJQFOFOz87iCUCZ9/3fgqQfu6w7+/3znWlKlgt+TAJE0eXMxGBTZDfeyoQiJU58ySCxyZApRBI=
Received: from BL0PR11MB3363.namprd11.prod.outlook.com (2603:10b6:208:6f::20)
 by BL1PR11MB5303.namprd11.prod.outlook.com (2603:10b6:208:31b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.15; Thu, 21 Oct
 2021 08:38:46 +0000
Received: from BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::713b:5971:b6ca:5e70]) by BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::713b:5971:b6ca:5e70%5]) with mapi id 15.20.4628.016; Thu, 21 Oct 2021
 08:38:46 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v3 2/9] ice: PTP: move setting
 of tstamp_config
Thread-Index: AQHXv7DQlO9ZR2lfhk6k6d4A8Hp0ravdLpAg
Date: Thu, 21 Oct 2021 08:38:46 +0000
Message-ID: <BL0PR11MB3363D5ECED77F3D3D755EFF0FCBF9@BL0PR11MB3363.namprd11.prod.outlook.com>
References: <20211012213230.2684338-1-jacob.e.keller@intel.com>
 <20211012213230.2684338-3-jacob.e.keller@intel.com>
In-Reply-To: <20211012213230.2684338-3-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2a7640d2-7d6a-462c-6908-08d9946e327e
x-ms-traffictypediagnostic: BL1PR11MB5303:
x-microsoft-antispam-prvs: <BL1PR11MB5303A387A83C9FF668F01CBDFCBF9@BL1PR11MB5303.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oRLj8aDgiuJ82hwe7JSr8wKZkISey46ALJxIlP/gb0A46RIa0WwhA5WHk8ud9FaOAjYrDoYsmeIsMnbRhAC8xQF010zzw5LHJh/dMGg6JwHwM0VULmx726dy9omLCv2DlGmresqalEYQZYJfclQuikp6GVqxRl+UegaVpklLNxPyNn0hRkCw1JQrMJ7jv52z2lL9MVwREUh7C6dYXAhUlMOo91WVprr2X6lelJGMG17xRZnsMBxxWVNa6TXeQ7hcJJtP6HfarYQmqTjwXsjzT3bMI5ePnK1yinsP90q+Ho4ZiB7s/if/IDinDCufpKOZ9VDo0qpv/32fl0vkTFlWS7psdJqJSlOPFhyrV4rQUNujDGYev2+aYi3dl//h/0ydvSL+r9qeuFL7yihObAtwk7Dh2zcw2m+C0w51NXnoreoZFVZGXqS4SAizOI+dTyLmkmXbxnqYcB17PrdBV2+HpuJBrMlN++lPTQ7k1JDSbdUNuHg1PAS2qkELhyxuG/LMZyqDqrmujTRAixz8rGdKAUjiUIb4g2MWsnC9j1n4hQBbdxpDdru0l+n/q/81R9/qWewYHc9AyYjO4I0SZOIJAx/1xMDwtGSmHJ3I8sfdxC5DHsfkjEoMbODeKo+wXXKuCL1ZLCg5QU2W0Pg2h1syc7q0sjn8f/QhGssI05r9XHRFBWkTFc5HJW2VLwiAfbt3E4IOH4inCCtx83fk288rdQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3363.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(33656002)(110136005)(86362001)(52536014)(66946007)(76116006)(82960400001)(508600001)(71200400001)(66476007)(66446008)(64756008)(316002)(38070700005)(5660300002)(6506007)(2906002)(66556008)(186003)(26005)(38100700002)(8936002)(53546011)(7696005)(122000001)(8676002)(9686003)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AFjWVGA6m4dkRIAZIGjLCKkkFBEQfMdn8t+uHRXKemguz9KEJYAQjS7KtG8h?=
 =?us-ascii?Q?KcK2dUlQNhGdoPXOMocbBb/H6ybdIsaOCjHkKLlYk5iQBIg2HrwD5AlDlLNf?=
 =?us-ascii?Q?L8mesDTJHFH7x9krotQIYJQC5v4xCQjmieDSNxf9khEWIRz3bbo9jc6niYUs?=
 =?us-ascii?Q?KT3D0tQ89qTdAU3ijoOsQRXEF6vTnJKNv+qvMgBj0qAmmMtQ68o2/2nGic87?=
 =?us-ascii?Q?pEYO++V7y2YSR1gPSjYrVmvWfjYCTjt86i+dmZRuva/cX1qW+/3D6dE1sRIn?=
 =?us-ascii?Q?eIyDAtJ+MaVjaxdgLrXRG+RqcniZQhwSG3OO2fQpzr5Gg+720CLWvqZ3m5qQ?=
 =?us-ascii?Q?wHiWZSMm1QeWZscClKzbkdAoe5d3LNaGf6JwX76RensfUJjGt1g9fVvKmSF4?=
 =?us-ascii?Q?OWArYro6zFqWPxLHmX05EkVmgnJipU6Jz9YBAUZvIaCgw5WHlaNakYw69wEM?=
 =?us-ascii?Q?kFgXNSHdFCWs5GcXp1f61FSEj8jvpi7vR0sw9tw7AAV9zRmL6yHgMrVhmVk5?=
 =?us-ascii?Q?08b4y45XVPfUGc2UC0IMNQuBrVZ39LchecB9rb9AMpBhHX6hzgWzWJQqvYOM?=
 =?us-ascii?Q?yPcA65FcSgPy0IFkwEgIixLx5Bh3O0BXWbsntq418yy1WkQcFzXVMNFXRE50?=
 =?us-ascii?Q?8JOwS6Kp8XE8UEcaQ5alQPBUjLt7ExIQBvPy1OWq0QQSEEfxkd18NOomwenx?=
 =?us-ascii?Q?49at3hIkFE7Ae4NvkVJiikYn83b+xNBUGBRRUU1fsfeq3DkEwU2Qj7o1SZ8z?=
 =?us-ascii?Q?YrTcxPIwip3+vgLSts1EuNV7A7nk9qiMH3638M0ZESEZXfPw/KIyHlku4sAe?=
 =?us-ascii?Q?wAY2Byz4IJQeU8JZK30H8LtROwH6yLvw3uI+FdNmGamkPmKaA2QqRMObgKY9?=
 =?us-ascii?Q?b9Rgupjhyig/syfTsdRrlxkbDDpP3RJcmlQXDKPt3O/Gf4TR2VDUkhZ+7BcC?=
 =?us-ascii?Q?XaRPl9jOAaxAvz/pQOTQjwgTIYhxDmxayoeIkx2f1cyV9lLnFGTEhKYFxuUd?=
 =?us-ascii?Q?h0Y0izOYHAbsbnQkr74wJJbOHazF4rMtK+5pcpCB/uvvP3ocz7qwRSf7Ls6o?=
 =?us-ascii?Q?eAHCazy3HPYK/1wOiezKvliqSVitJu7a9N77EHLAEkHjcaDjSj5DeRPR4RL4?=
 =?us-ascii?Q?4CBf9HU6T93WtDgY6Nk4+cLDBKEogJSNF6Z8HCF+FbXfp0mb51ff/Vg9UtGP?=
 =?us-ascii?Q?zihkC7G5LL1+H2SVZ/5AmHh0y91dRhzH78htVA+QNW4ZHZgMzTNO8I8lIteA?=
 =?us-ascii?Q?IssdBXsNFCO0kMdErsBqXSqD5qBFeyatFzdAeWVCFlKUZ5CeiklzzhUEftAi?=
 =?us-ascii?Q?6YNnQnLQw4Mv8DTVU9w2bKDPHMNGJpB/Any4RkarwiJhJZt3F4a66L3dNbwt?=
 =?us-ascii?Q?DsguawQhNTxEw/v43btL8UTVCHndcOP8NmcS+SA6HUlIKlZFzZjKHFJMcr9M?=
 =?us-ascii?Q?edxFgtAnb3U=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3363.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a7640d2-7d6a-462c-6908-08d9946e327e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 08:38:46.2485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gurucharanx.g@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5303
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v3 2/9] ice: PTP: move
 setting of tstamp_config
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
> Sent: Wednesday, October 13, 2021 3:02 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN <intel-
> wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v3 2/9] ice: PTP: move setting of
> tstamp_config
> 
> The tstamp_config structure is being set inside of ice_ptp_cfg_timestamp,
> which is the function used to set Tx and Rx timestamping during initialization.
> 
> This function is also used in order to set the PHY port timestamping status.
> However, it makes sense to always set the tstamp_config directly whenever the
> ice_set_tx_tstamp or ice_set_rx_tstamp functions are called.
> 
> Move assignment of tstamp_config into the related functions and out of
> ice_ptp_cfg_timestamp.
> 
> Now that we assign the timestamp mode in the relevant functions, we no
> longer modify the config value in ice_set_timestamp_mode. In turn, we no
> longer want to copy that config value into the PF cached structure.
> Instead, this is now the source of truth for actual configuration. On success of
> ice_set_timestamp_mode, copy the real configured mode back to report it out
> to userspace.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 18 +++++++-----------
>  1 file changed, 7 insertions(+), 11 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
