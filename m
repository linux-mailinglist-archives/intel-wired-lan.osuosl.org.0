Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6614C4CAF43
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 21:00:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 830688136C;
	Wed,  2 Mar 2022 20:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nxnMwuproMEJ; Wed,  2 Mar 2022 20:00:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F8D18135C;
	Wed,  2 Mar 2022 20:00:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7FAB61BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:00:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6CB218135C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:00:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yPyoAsXZRi1f for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 20:00:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B01E6812F1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646251250; x=1677787250;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nOiVjkDp7RozQL1MQ8RM+W1r8S4fR+AJraJzHSrYnk8=;
 b=bP0Pwc2lBqQ+kyoTAsg/rnitFa9n32bTSSXp62GCtp1SE9ia7ocGn3fQ
 HcDml/KoMKZVrB64OiVi/Z2b7w5LkQNxeKBoaXrrMqCWT0RA08aDblmjz
 Y418l5n0YuxfbXFPdrtHocnUoIcQgrNjg7X37kBPConAMftxufazrIGhH
 gXiOtIgalY+oWrpDMaIeepn1CiZpj1+LLgOXtn4P4bCALO5FervYbdIFD
 Q5HL3Bkz2TH12/b1CbiEpABqmTSSQZcLHx7U1LSUECO8UqcZqaE78FJcD
 cM75vLj77hQump4JLjUMb/kcX1jFAEruF6uAOqc/NuvRpSSD5UnAYPFf+ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="234110791"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="234110791"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 12:00:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="508323180"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 02 Mar 2022 12:00:49 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 12:00:49 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 12:00:48 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 12:00:48 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 2 Mar 2022 12:00:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gEBfBul8c5V6Tpnx0i3Y4N5lP0ASkl187tVqgju6vRkspvEQoCc+QWcj7fKqTsgMZCRau4JdSWWIa8WSodC9fM75nBkJqLFGMJGbZ7kK+4gXod5TwhI6GDWxROOMV8DTmZEfioIkeDGXiucMNcrsNjNyhLjXw4Bx6sAwHv9+KcSHO64kr+MMkhe59XVHlhxtddjyKwdqSCakMoN2WfzdtF3rEr8kJSU8pxRFu9KFcl9mDJbRCZoX7ISftnzGGysbcx+87Oe1XYAnb/2Ebrgu1toivjYeGP3H/wj4yaLFQISSnLPZa09ydZf9C3NeYJXdcd4o8iKTwnTuwQXtTDxJXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rSlQj7l0knP6knxdgkiE9jdUPuhl7Zi8o8HItOM439A=;
 b=BUCrnZXglbAxo7PVk9XaO18YtAgg0f+vXlA6GZ7pHNsimtfj+XjUneLudkQbPWqOTAIIRQ5pfL7dofCZVPbmmVcdKw2OiRQV9OFrI2kROCZVKiweJ97+G8WID56oavwHrouXjaO2IZU0D1l6CXMr41s+kNufRygh7r2wFf+Tuld9o91gIlQWps14SF8FixuQyES+ibQ/LbpoGwU+OSP+hohId6DF8UuP+FE8ZapgglpawjJ+57HLcyBtxAG5KyYC55pecLutjhP5doA7xGFbo477jZjJ7FRbC+fpQJe6m52Ao7thVrKb5Ff/RWgRMTZpyeuxnDUtKXMWjxIK2nb6Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BN8PR11MB3763.namprd11.prod.outlook.com (2603:10b6:408:8e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 20:00:46 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 20:00:46 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 12/25] ice: introduce
 ice_vf_lib.c, ice_vf_lib.h, and ice_vf_lib_private.h
Thread-Index: AQHYKExYCQXCp74YI0uRIdxInQNig6ysj7PA
Date: Wed, 2 Mar 2022 20:00:46 +0000
Message-ID: <SJ0PR11MB56296D3834F9947501A9AB08AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-13-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-13-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: 7706814a-1b59-43d8-d72f-08d9fc875736
x-ms-traffictypediagnostic: BN8PR11MB3763:EE_
x-microsoft-antispam-prvs: <BN8PR11MB3763DC6D030AAA1C7A19B410AB039@BN8PR11MB3763.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YMpNJIDXwW/MZ3zvgMvPPTzCtgVxTTtSHpxPTsPQ42lfHLIK2r9G4ihnvQBYv1v8VhkhcoGBp0CI90cLSlOKnj9Q7ZrU+Dk6WPDp7jKTpQKrDwmmy7dousaaylQIcylPDWNdCvkHYsTkBNAIb/BnLGqZcJrg1iallswfv+a4aYlPA4ErSI1aDSr72hGTHay0/jUTWrJOsZaU/QHIY79TCwiNYpvWcLjokBOJZXxdyDkLM/r70j3Nu5lNEfNegLT9bUVl0y/LOT33vOM/mgYa9QKQRmRTD9lUPg9Q1/J0vt7ep06aFZ0TuJNpWqxpFtRZPVdEqrUeJKJKGhST6nlO+y0ZiemNEhk541ZYuekKkWf4r6NSrCaXwAb52/ythu2Y71dI+HGSLe4MsGL6ZCKcJIbnnVjRe+ufFteFyNCwKRwH7QyjtzaLfUvbT2EqIbROyDPFXyrLpTIxJ3XVSrgi6RNpzMKOQlsD0efX0D/cRlFPeK9ftukdQF9hw2SA4Xn/u+YXfKWRr1WzZkzWDWuJrQ+6gUJMoQvMtdi89qirzpNEx7aax6TaJW2m58ERQqB0fyU6HZv/A6CaoDjsYoW07BpQmypQCNGZBhblZ+KVJMrfIDlYxSLSm7CeX4/x4avAUpXGGUA5AfGLXRkynFS6P1UOnwmZj0WVOaWNtERiCRGxSoSTLo/7MC4WF+YW4/aoasHY+GxwRYXCozODtRbdqA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(8676002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(508600001)(122000001)(110136005)(86362001)(316002)(82960400001)(5660300002)(52536014)(8936002)(9686003)(55016003)(186003)(26005)(71200400001)(83380400001)(2906002)(38070700005)(6506007)(7696005)(33656002)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?k+aQsTaklQ07/ve91jSSCEslmaZFpRuPd1yPZq+s8qNDT7dE5pfYLOWnl8Ar?=
 =?us-ascii?Q?AIPttXCYbkKUMGAnXqQmagpo8kfISefPHvVcV7R8Qhn6B4JCA8jk6MzZj84z?=
 =?us-ascii?Q?fdBw5Y7eYRovJnfMJWRN6fbYSt9pV8Y825kVdw7vlq39eCs3pn8y5tmlFhMz?=
 =?us-ascii?Q?FmRQnuQEpm3NitVBblgVSvEabMDVzn19TUoo2tF4mFPGew8iqfzhlYn/mJA+?=
 =?us-ascii?Q?wQLbSoybQzgYKJeYYqqDM4Gn63ld3Ne+6kpNx3u7enNy9ZA+cSVhqeodC+68?=
 =?us-ascii?Q?n0ZBx/40zXEpbm+QNlj/OWoEXf9p3Y7uGq93xOMv4Mww4qUqf5yz/2BdLEkd?=
 =?us-ascii?Q?II8VWra6qZIKStVf5hPaSwFngsbyFN+4KPE6v5odRaf5zq7EoPE75kzTSY3R?=
 =?us-ascii?Q?Eln5JfYSSmvRCwXgV0ijXTvS/BI+arJqEPfpSvEcb3mTLeYJAE9+EKUxTuyU?=
 =?us-ascii?Q?OBMZDGXJWXU43ItD+lRYgrep1qlRh+tsR/mCnh4TwZtvd43uWUdgbFrxcpg9?=
 =?us-ascii?Q?G8ez0aJEU41cUbXEovbZkcRt7Cicz5dkLKt/5DKlVOCvecpXS47Wk6XqaZHP?=
 =?us-ascii?Q?sFXczng2ANEnQyC0Z8nbunzAoGXSz2cb6lm/15CXHxghrO5q+GkMsiw+dSlF?=
 =?us-ascii?Q?PKEua8AEfHWFh2KO38hnsLVD25CTpew8Xz3VDxjbQ43zOMmBVpAd8K8PkoO0?=
 =?us-ascii?Q?xXIICaOOGU+F1JHeP1/3IyHS/fhsH4G0KKpqMZQpCRuxu98v91ajCWd4sVrB?=
 =?us-ascii?Q?nCf7i3f0XofJYCwfDpPAio8wGPYM15bwelvl511oHHAC9YwbchdwMrB6/Y5+?=
 =?us-ascii?Q?qitUmTha46Yrk2Da/QbvP81FA8G4h6najj1HEIEH3nyxPD+ZuyFB1GNmnK7B?=
 =?us-ascii?Q?QrlE44yX3j7pGz1YYBxHHPe7qaya5ui474Boh9K3/sHermkmUVz1L72/kU5F?=
 =?us-ascii?Q?jKeHj7OtgpBmuYSApp1YQYWUGaibPvYqggMd+vfhtcHg8RYNyjQASLmsk6QM?=
 =?us-ascii?Q?xwGraeO3ekuW8e/s0bVbd9dSENFSNeTB+wyn5JbAP8j8NFz/mF3D1qVidSUn?=
 =?us-ascii?Q?21ja0Yq/JFsaW21ht5N9vbehb3M/VAu3eYYgp4XpWYHlsPn2ZCroL3PNhdrH?=
 =?us-ascii?Q?46KoPbDw7NQH0KPafearl3K2y5JM9Fh4RZT2yIK/P1YZ7beFIegI9jRNdhL5?=
 =?us-ascii?Q?jAh+Sfn4yBBlgboS9zmPnvw9cZA8qUurB2x4m/mlbzoRL4zkKO7mgZm+fslt?=
 =?us-ascii?Q?n1LflMOMe+gBBwrW7z0Z+TTYUcR/bmI2cbOp0+hq0sIlX+jr8r+KyWmRWDbe?=
 =?us-ascii?Q?KpP2N3egPjPsV0FYEVdKDf/1fnFlbv8ejIu+VmlzNEdhxcggpFbJZjA+JhOc?=
 =?us-ascii?Q?dwGU732WEKbtYDH3gw6DnF8pSFwfkstCEpQe34wQ1dWxQBzJtlPWehy/B88P?=
 =?us-ascii?Q?42YdgOkhXTDWhGhNNqZWZ003vRob9uCUQP0le/0P+vWfzzz5juB3J9qsLqwC?=
 =?us-ascii?Q?EVhaHFue29YfnxFfFuiEdpwwSoRTap2W0kVksLOCh5v9XudufxZ7jLL1lDm9?=
 =?us-ascii?Q?7CgUl9sBy2MIM72ZgfrX22+yjfQrXTosbC2rCxgHIjjttNz2Fpt1bNtqTXJ8?=
 =?us-ascii?Q?mq298rsNZx6ygHuUcfZ+N5pU6bpJXZskjawfcYNl03Le2AshFz0o9qo7uaQ0?=
 =?us-ascii?Q?Q8hfyQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7706814a-1b59-43d8-d72f-08d9fc875736
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 20:00:46.2851 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xGG/K8o3KMMwJNgoS4eG2iuA0xE8KqGme42uyVQb65Jsx42MCrNncY6krRNX+SF13Hw2QQw5/6TNGa56kc9JKZIROG0yODDGiV1W+iKf90s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3763
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 12/25] ice: introduce
 ice_vf_lib.c, ice_vf_lib.h, and ice_vf_lib_private.h
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
> Sent: Wednesday, February 23, 2022 1:27 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 12/25] ice: introduce ice_vf_lib.c,
> ice_vf_lib.h, and ice_vf_lib_private.h
> 
> Introduce the ice_vf_lib.c file along with the ice_vf_lib.h and
> ice_vf_lib_private.h header files.
> 
> These files will house the generic VF structures and access functions.
> Move struct ice_vf and its dependent definitions into this new header
> file.
> 
> The ice_vf_lib.c is compiled conditionally on CONFIG_PCI_IOV. Some of
> its functionality is required by all driver files. However, some of its
> functionality will only be required by other files also conditionally
> compiled based on CONFIG_PCI_IOV.
> 
> Declaring these functions used only in CONFIG_PCI_IOV files in
> ice_vf_lib.h is verbose. This is because we must provide a fallback
> implementation for each function in this header since it is included in
> files which may not be compiled with CONFIG_PCI_IOV.
> 
> Instead, introduce a new ice_vf_lib_private.h header which verifies that
> CONFIG_PCI_IOV is enabled. This header is intended to be directly
> included in .c files which are CONFIG_PCI_IOV only. Add a #error
> indication that will complain if the file ever gets included by another
> C file on a kernel with CONFIG_PCI_IOV disabled. Add a comment
> indicating the nature of the file and why it is useful.
> 
> This makes it so that we can easily define functions exposed from
> ice_vf_lib.c into other virtualization files without needing to add
> fallback implementations for every single function.
> 
> This begins the path to separate out generic code which will be reused
> by other virtualization implementations from ice_sriov.h and ice_sriov.c
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   3 +-
>  drivers/net/ethernet/intel/ice/ice_sriov.c    | 509 +----------------
>  drivers/net/ethernet/intel/ice/ice_sriov.h    | 203 +------
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 519 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h   | 259 +++++++++
>  .../ethernet/intel/ice/ice_vf_lib_private.h   |  39 ++
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   1 +
>  .../ethernet/intel/ice/ice_virtchnl_fdir.h    |   1 +
>  8 files changed, 823 insertions(+), 711 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_vf_lib.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_vf_lib.h
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
> 
> diff --git a/drivers/net/ethernet/intel/ice/Makefile
> b/drivers/net/ethernet/intel/ice/Makefile
> index 816e81832b7f..c21a0aa897a5 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -34,11 +34,12 @@ ice-y := ice_main.o	\

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
