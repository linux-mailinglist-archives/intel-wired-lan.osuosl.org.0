Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 193F24C4A96
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:23:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEC9541626;
	Fri, 25 Feb 2022 16:23:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Yee9-hIKkOE; Fri, 25 Feb 2022 16:23:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0DBF409E6;
	Fri, 25 Feb 2022 16:23:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9CE7A1BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:23:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 983FC605E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:23:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jjt_4XgMKFHo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:23:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E225B605AC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645806227; x=1677342227;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=G1IuPCXHkizWPr4l1DYuQNsEOgrBv9znYvO1Y5xs7yM=;
 b=M9PB3mY4Zd8VvQ33SveGKrZQLPoGUg18ncdcORMYk3SKIVXcYCOwgEGW
 uGPae99NJjI6byIDyOi9fCeneTiJCmu6IXafXVyAju3zt17MbZ6+1YSHM
 JZ1ergzSWyupp6TNZgxdOfpkFhyuPF1Dw8jSiGaXPyY8rInCc6w3Zgnf7
 7iAG/aw45ZfdSS/uZf4fvPmFO593YzLqYe5JK/7k0eJHHTM+OSMDIdXDs
 Pgd1QmxWVRWi5rxmWa4qOPupNYNN/WzeKbyBA34zlZhSLPLWttBmlD+qg
 o7ODpGcgKB4jH1ZPsfNtMVJbrIaPfKR0qUqrXMg6t0FxpUcb1cMg9osvz Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="252447508"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="252447508"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:23:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="592528975"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga008.fm.intel.com with ESMTP; 25 Feb 2022 08:23:44 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:23:43 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:23:43 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:23:43 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:23:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H6G5GSIbDn7Yhy2EmZsqhUQa5llJnI8MeKZCVC3eOcjpBh9xbFSLGHrKUM6UuQBngUPXVdxWbl9ONcBlXS72bXdt6nXs2geeq7sjkmP2cHU/AuS45QLn6f6leJpQGoetyLywDl6mxTrlynyTaZKcOgMaPVvXLtjOKQ0FhwCsn18yJqPYZHQYiJU60AASSRCmiUeWRsnNWW2xT/mATqlIfzdTjDRd8z4LBE859NimOKpvfslvGx13kgb+hrQUnwMIE2+ZPm6h+CmCUbR1Kve+dbxMSkA1gDabqj0jExMG7cAaVbIPEjQ1+IEkNHCxsVHrRoiiK3kU0vpitYQnr+ihOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t/hKvpKDVNsH88Nt8NEdspjfzyldWamZsao7Y4rmMeI=;
 b=g1lFpsXeHXEpnIBzAlYnoGBN6mmqMUxckR/kUIeeeaOHN5489Hz5x2FXNaW4MDOqQiFKU74J6pa1gU9AJv3zb/ScytQvtZvxU3x3qHxif5HNmnZxTtaPylqvbBLjixaRNPxFf7FCA20pQuprcLk6TFFvCSZyPrb6SwyoGINrdx3VRgDHga577YVwSRch3j5uQwhK0DAm2RkEYGSsgJegj0sRBXtHsBeysfqbkV4AT/eU7RceAOF/BNHzCm/KU7WVGdt4vdpuFLV6c+Q3R3WAIUOz9ReKVQ4wP4vfAwfcOuhMmIpJkewirPOju1ob5a22praIyHvLw3KuH9syKtrH3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by SN6PR11MB2910.namprd11.prod.outlook.com (2603:10b6:805:da::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Fri, 25 Feb
 2022 16:23:40 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:23:40 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v2 08/11] ice: convert
 ice_for_each_vf to include VF entry iterator
Thread-Index: AQHYI32QP7nzogaGA06FziHZcCHM7qykgQag
Date: Fri, 25 Feb 2022 16:23:40 +0000
Message-ID: <SJ0PR11MB56293CD88A500326787BB5F4AB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220216213738.3826664-1-jacob.e.keller@intel.com>
 <20220216213738.3826664-9-jacob.e.keller@intel.com>
In-Reply-To: <20220216213738.3826664-9-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: b90fd220-697f-4da6-91c1-08d9f87b2f29
x-ms-traffictypediagnostic: SN6PR11MB2910:EE_
x-microsoft-antispam-prvs: <SN6PR11MB2910EC905A14FD23AAB6CE63AB3E9@SN6PR11MB2910.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /P/eAZp6zUnIzbCo4UUgvb1xnt9ZjuorpgI5+4OY9iYtap0eMupbyG2mbT8OfDjgwuyBU+OETIn77q4gqhosgTxLZPvnG7VGpNu6fh/PksEzYKL1KViCNiV9Kx97ttO5I+G7VludiWK9/jdpUtYBc3vPg4N5bkqRol1xxWqQkpdi414cItMxjr/rETvI8ItqYVVEX08PrA1asN7pUIDLgVTa7qvuzy+F/HIUtGmdjpE/ilvS4aqDLUn9cdnUZg93wJclfXMSNfAW5fxC6+Lw+s3h26Nec67vlMH6Hyzma81igk4gopn4VPO1svAMabNFaHPTs/WvYdfusVBkEb0dwGABSNXnBqJvkeK9vbn8dD0ipMC2HCrA2oA0ovlMoEB8QmJXLvwVds2AphRDAyIdHprVgt91QoYC4BWO2tlBlnB9o9EpNLZL9hrWMIn3uPjxjPInKaPQ9rk5Xnbid8xoP2Gk2TppbqPvIdzNjJLHrIyDgXccKu4dFO2BpogQy0nAwoMNu1GWHvA6waGH7dmihO7rQ74agkfyhfbsYV2f7XWfSW/+vQYVWaCs4PAkOAhzNRaYcF9M6dXxBMO0xTM5SEge/9oJI+3M89/7YAb4F60OcL3D1uThny1k62JoOPHN4CM31Cd/LCeSOHfCh6CscTSIsLVKw0zwfK38LMfbGszRl4kDvTE7CHtDejZVP2pwcD1gBWnzPo0+yTPslUGXwg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(316002)(110136005)(38070700005)(2906002)(5660300002)(82960400001)(52536014)(38100700002)(86362001)(122000001)(8936002)(8676002)(55016003)(66946007)(66556008)(76116006)(66476007)(53546011)(83380400001)(71200400001)(508600001)(64756008)(66446008)(6506007)(186003)(7696005)(26005)(33656002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gNLAIRO3HFYWDwrsG8RWcbkWC58Nlp1P73sN7Gj4CCWrc3VIbkB1C2jTAJ0s?=
 =?us-ascii?Q?HekERNdeZT7dqYgVKV3uSW7b05GXyEyWuW+mT9B36a0fCLJKLcrf767iCARW?=
 =?us-ascii?Q?MAktaPiRgt9W875qjKSgxVsWKd+pwdmV120J4h4nJFRbF/6h8xaDl9PBkhfL?=
 =?us-ascii?Q?6kSCG/67PSzEnSbP6gdazwvaPXzpmw7lnu+gUH8tcJXqFxonB1EUioBLnpWD?=
 =?us-ascii?Q?AgenJvy3m1B3qq10k+seY7h/D11nsOFHz2OB/VJ9bfZmNmzY2C94DzRIRuHD?=
 =?us-ascii?Q?FKtTgNLre6MWLwnXmKVhf3ReumGmnZsZSzp6d2LgXI+IBCSfocjN84TSaqhO?=
 =?us-ascii?Q?Va/GB7pWwN3/Q6jZ3UfvFjRjZFwzvVEkVooKW913Ml3WkThNiAwPyOf3EJ3e?=
 =?us-ascii?Q?cleHyO4JCJarCByb1DOhQBLaNGx5MTGyAFeg+n7SSZ5WyJTgi5+mJbt5w4XD?=
 =?us-ascii?Q?dJUaxNSuzCYdGR+ZdD3BJcjiZ9v6BzOh83Iuwmr20WuyLqUKGGf0Wurg7maA?=
 =?us-ascii?Q?uuhHDSf9o0qPtfNfUB4RrPVQHu4nRVx8Ey3SMMAooDx5VByKLJpvlHcUU7kw?=
 =?us-ascii?Q?lH/obr0NdjhgfqqoF8cd/gUd5efSwBS1GLs9Gd1DOQftpAYl2oR/FNetKO6F?=
 =?us-ascii?Q?I/jwVWYEmnhyV0xG5zvS5DQpZzCUM9kDVP22V8+tfdNqAxPee+w+Y06EqQzY?=
 =?us-ascii?Q?dB14okpP9eaxoajWVx/4Rq7qojS/thNspDAVd4Sb1rq/9pqthts/XVx8wWag?=
 =?us-ascii?Q?L/XUEoD5FSQp199YahsWNgUmpZQ9uLVANW1WY47DYx1PcpQE17worDiF6ATV?=
 =?us-ascii?Q?k0puNaeULXMRDjMWqlvapanFv0LbsbiP8KdNTKk90ZQYR3n0K+jBr71q9xMg?=
 =?us-ascii?Q?4JkqsXRTU3Y5iuy0QmZFJtCDrXqTKlPgjRycuggjnP2VieEGNg/QqB349Q6E?=
 =?us-ascii?Q?fitO4s6SgxHx+xJbq2a6d6Faz3phStZ92hoJdD8wZdkQSjh6HlDK/vKSizii?=
 =?us-ascii?Q?2n9u6jFYipjKFOE6bw8yrWRQEWQueZ68AmP+j8laDJy3EY+C7hlZj8sib43Z?=
 =?us-ascii?Q?YWM+VTifiWP0cVElQ7186a5VEiP0EDbksed677rF5CJpcgzhaMaoe005vzG0?=
 =?us-ascii?Q?h78lzwYShxw0rYmIxKRHHU33tW37YuiOffBPpy78xWkTIBpUT/JHo9X4Fiqt?=
 =?us-ascii?Q?/KBVISlXQw026kSgtfpBtVnLsv9cIkVeYMmkh4hDpZd0D+U5FljMRMsOhWs6?=
 =?us-ascii?Q?ojCyABg2DInjCdk4iDYRGY4FbKGdloLeqZzUa3E8h6itqrhCm1L3gb+wxwrt?=
 =?us-ascii?Q?ezzbTyvtJB0nprW1WP3oBFYETIdD0c5DY5NUPMd2GfNVu5RFrAS/CJGGMR1X?=
 =?us-ascii?Q?45T0acttksHNJspkQYTifJd9vEh8doLW46wf4/lX/u0u02i1XCCa53ra+AnN?=
 =?us-ascii?Q?PpOq223w2/je0vey/rHpsveFUc5GBThOXoHcwLgW1mhf6pWz3RHFo+X7TUG3?=
 =?us-ascii?Q?fBNdVb36WHQ518owDBqwGmOXAtYfjfsvyaLKJ92rHOUnOgsriOtYWd9bnV4G?=
 =?us-ascii?Q?lEy/qfwHT2AdqUZmD6eTCtOmiUjZB2F+MWLegEf7TgPkrTAvzQyOHkJy4BNI?=
 =?us-ascii?Q?Rb1r6WgR+KuWdIGlomsfi9No6YeKsyS+FXi+IigCXx3Ghyay5ymBpp6u0x/Q?=
 =?us-ascii?Q?URCaAg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b90fd220-697f-4da6-91c1-08d9f87b2f29
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:23:40.4461 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PH3jdFGBdIWjjZ9tWydhBiejRGJrl65J77W8XyjIiuQk2Btxv0rGtLrwnZHJm2eaKXzHAwaGJLpAubQwzutZ6r8YqAdM0NIfQQZuFslv4K4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2910
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 08/11] ice: convert
 ice_for_each_vf to include VF entry iterator
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
> Sent: Wednesday, February 16, 2022 10:38 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v2 08/11] ice: convert
> ice_for_each_vf to include VF entry iterator
> 
> The ice_for_each_vf macro is intended to be used to loop over all VFs.
> The current implementation relies on an iterator that is the index into the VF
> array in the PF structure. This forces all users to perform a look up
> themselves.
> 
> This abstraction forces a lot of duplicate work on callers and leaks the
> interface implementation to the caller. Replace this with an implementation
> that includes the VF pointer the primary iterator. This version simplifies
> callers which just want to iterate over every VF, as they no longer need to
> perform their own lookup.
> 
> The "i" iterator value is replaced with a new unsigned int "bkt"
> parameter, as this will match the necessary interface for replacing the VF
> array with a hash table. For now, the bkt is the VF ID, but in the future it will
> simply be the hash bucket index. Document that it should not be treated as a
> VF ID.
> 
> This change aims to simplify switching from the array to a hash table. I
> considered alternative implementations such as an xarray but decided that
> the hash table was the simplest and most suitable implementation. I also
> looked at methods to hide the bkt iterator entirely, but I couldn't come up
> with a feasible solution that worked for hash table iterators.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  |  63 ++++----
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |   7 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  21 ++-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  44 +++---
>  drivers/net/ethernet/intel/ice/ice_repr.c     |  15 +-
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   6 +-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 141 +++++++++---------
> .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  16 +-
>  8 files changed, 162 insertions(+), 151 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> index e47331e363ea..aa16ea15c5ca 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> @@ -210,11 +210,11 @@ static void

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
