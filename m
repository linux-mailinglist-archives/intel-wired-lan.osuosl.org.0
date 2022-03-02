Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7854A4CAF49
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 21:02:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1AA2A408F1;
	Wed,  2 Mar 2022 20:02:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bVpWeBgRjg8I; Wed,  2 Mar 2022 20:02:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13E504098C;
	Wed,  2 Mar 2022 20:02:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 390971BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:02:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 340A74048D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:02:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kEbgALzSCWZR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 20:02:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CEE4B400C1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646251353; x=1677787353;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=W41rVDze84BRUm35Vp2wY/KYzsY27qNOoPDST2iO+JQ=;
 b=X2Jrvk7gM2uj5MnYq3c09Yz0RptgI9fhVxUMhNJV1NypBa5gSgQAw+wG
 dJyUDfvjWMuIxNeJ+/3VrFYoW5cDswVjXFuSozitoFdzBNiR9IvSpQh40
 3UBIjAl3LlDugJga3au7YimOvILGpMoUnS0he8/ZgC6QJoHgj5kpR1l8/
 lYczT2cITJsDiCN5s6SfRhtu+JhOLpgbfZgvo5mX99dckREfIIMGueB+q
 iQ4oewNKkJdU8vSxhOUU4585nPyIth4/gjl/7JGOJZU61MgBihu9mGw1Q
 sAhbmIxWBuxlxS8ZcKxa920jLk6flfE2/l2C9hfPDOip1m12kCv+HsEBk w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="233461953"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="233461953"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 12:02:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="641829568"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 02 Mar 2022 12:02:22 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 12:02:22 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 12:02:22 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 2 Mar 2022 12:02:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lYtKIn1yEiNN/oJuVYjQ1WPp7a6eyTk6qt8nMSQsqiclO+/znRmOBxEWwf+sH/oI+UjUpDQYjorKabyort2F24oK7T2SiLKOopANNbNBBBNlbSj25yR89/Y7VfhmxlKrAmWFiNQAXFONnAR+ol9CyLWv/zvjXYSwPMvjR7ERvZKbmxnWBaGXtLKFg1zeQrnoeW8yPsFf0k3u8kmMdKGst1dSqPKA3eD6oO8AwWE5WzAXhCnBSlkGYNo9ZzaZr2wc9O2dmV8/R8j8J+1Mx2Ut9Yam9zXaMZKC6alpHfTpbweP4aeISQ1W6w+Oup98/fFJtPmhNuSZjIkG9/pvz4mZCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tTkEQ96l1LUlxf6kRjFeyAyVtU1qQaSnHtnQgdV3bZQ=;
 b=CM/UMuWcOZFAswRoAe6DjJMQqUjf4751ebI9fvdgLLxxrov4xOYKNRQA9l4irEHkSSFfJVVdJ/Zn7PhASo5aYdhYKOd52L7CozhSbzAexwdxbvPSZdmkmXbMzvdu2jXpQ4QWdzxoyTp5IgWFqDBsOvnrB4cak0QsYe3Lw4XGMbRwTWctxSvs/oPAI9OUpWmDqjNx04hwMZN0R3w5/m946w4hddG1oVr46ouuSG1ctS7aYev6BxCm8uCEu00ub9jVBWmIrKug1O+dcXZTxuqctIxMgtWdfAdes36gEx49jfSNbS0GPLHM+BQ2klVwpMPkvoGHDc3ACwxGX2apyUFEow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BYAPR11MB3560.namprd11.prod.outlook.com (2603:10b6:a03:f8::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Wed, 2 Mar
 2022 20:02:20 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 20:02:20 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 08/25] ice: move
 ice_set_vf_port_vlan near other .ndo ops
Thread-Index: AQHYKExKs92q4Vd25UWLhYaSFrI/BqyskC5A
Date: Wed, 2 Mar 2022 20:02:20 +0000
Message-ID: <SJ0PR11MB5629923F216DDA675D97B003AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-9-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-9-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: 848b2c88-f29c-43d5-191f-08d9fc878f45
x-ms-traffictypediagnostic: BYAPR11MB3560:EE_
x-microsoft-antispam-prvs: <BYAPR11MB35605E0612AB05F9FE8B4D8EAB039@BYAPR11MB3560.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0AEJeiHKEnXTeW+Kf6nLEDjeqa29UmRylkxZy5DHZuNpIS4XQYa/BlnVN/mDv2q9GE6EqNg3pjjZzdT4L7d4tkAOjwsQP2uqTnS3ldV2qre1bpSZKs91Qo+IKg/p6lJWxuYmw89HSunjhPqaz3x6TykVD2HlkT8ESUlDjMbD2I/OVt4WM/t8jCYIYSIeNXjsDa8FgcLbigw6SrU7v8m/VbbBUur4HlVux2QgustycD2ILqX6hcSd8AApT2vCiz/bz+Rd3NXYjBJaQbfO5+ryHuLKFjjjP+lI9AI16FyCLRyEACMGpJSeIMa1LQkwMhBKbcClntfHdibAFY87J2dSNe/9/dNK9oVOmy6zjb6F9iyvQyKd/A5U4sJ/xUfOT4dUZg4CEX14mp4LqtLx4IuFopnEUli0UlVPoo3YlaFNa6aUeF+BLXHbwRDdzY+Yh4fDotX5HGDxFSRw9aDMQqzmaq8jwkoARFLVmmQ9LWgisl7iApE9aSm9HKQmQNLyke9tWSgQSq0XA3S80a2fGHFKT5VqTH5q6rU4pjTsIcatoOZYw0E++9VxNipTVywN413jZYlV723HCu5tyFwAUYcpoeUiwuy6VbEPsT7YPR7yPnYaG5T4yYhCqqeg+TOvo16idbDPI/YX5dPaXrrBOrGvKQ8SA/VrHy+qXhbu/tLECHX4djdkNKOEVg0M78WUx67CFWlllAQ91Bpg4FZRJvXb6ZIvEZUxWWrTYk8kB3ou7ZvwuMLZT+ew258rO1sfN0T5kPHzSEMH05dW14jHnqIrkiP7/KHiLOh/VXk3cGkkgyU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(122000001)(55016003)(2906002)(9686003)(4744005)(186003)(26005)(86362001)(110136005)(7696005)(6506007)(38100700002)(53546011)(5660300002)(508600001)(66446008)(71200400001)(33656002)(8676002)(316002)(64756008)(66946007)(76116006)(38070700005)(66556008)(66476007)(52536014)(8936002)(83380400001)(142923001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IFuMBuPhB++ZWdMojc3DUVRl+VjctdRwiB1RQtSysN3Q2YGrAHPsB/S9ejiJ?=
 =?us-ascii?Q?kT1NypQqMERJSK09dgt64rDnwTVrdeGw7VlO8Ja/0lMBvc/9CNdzQ9f2eQ0R?=
 =?us-ascii?Q?BzhADEfCqwQ0fX1R83BZ8aC0Kxo9nWMnb0NAwD7VlZxwM5g29C+/tHDo/Lxf?=
 =?us-ascii?Q?I7cMrVSgXHenLYaoUwC3Qws0c25BX/82T4cIquUHsJyX/EpvBAhJtiXT6HcA?=
 =?us-ascii?Q?9MDAFpxowvunIldjC+bc+hBxrDjz3XXIBWUt4M561PqKz+qCb3aDTBgMIlBA?=
 =?us-ascii?Q?D+1KAAnatjp/X53J8KRRrVWZ+IuyNDdDAXxwH6ReCDn3oyjEuFoWg/XB7Zqc?=
 =?us-ascii?Q?jf6C3YEYQtGu8OUiQHsjOxtKVIakeZTLHDoWmf2lUX+8gxfGjZrYfju04joi?=
 =?us-ascii?Q?bCBoFdpENZYhAJfeHDDY3hJG/YXeavyoMSbOxLjlmd5pzZqFmLZ2JlvtWMtH?=
 =?us-ascii?Q?J0hQNYqpzbd6MnSvMomYsGZIdrYr6a+NxqXDluVykeXobJXbPCpjR1ZwF+kO?=
 =?us-ascii?Q?Sp6XRunT+dfHq664vVWtmQ670XqbpVtktda69/dX96hsN796kBWjMwLbSpR+?=
 =?us-ascii?Q?1ii0EVww6FhstP6ZeHR9C8eQN243631apJpOKEuSM0Poh9Bba4S4HVqGa4cu?=
 =?us-ascii?Q?5uMUsJqLZWGmKZL33kQTbB9VbBzVH4XUyetxSz1CVZ8DVyb+nM5xxYSkFLda?=
 =?us-ascii?Q?G0iaSbecN0+rkQnXpzf3Wcj4lJVrCg/4NutUGI0bDIZl9VBb7y4hlznHYESX?=
 =?us-ascii?Q?Cuj9c6SGif8zXfsrRxIVX7xqCSuEFM/35d9dIEKrcGETG1oQUzNyu5k8lOT0?=
 =?us-ascii?Q?Ixq0oIZZQF1yJosDW9nyekxA//1oLGVLj9x2aCJJcSh5xN8RlMTqfc/atCEt?=
 =?us-ascii?Q?35NN7hUyQsEYEVuzV+pa1vfH4RpvjT3eTUfgaXWDL3khlhsuKe7H3nqtFR3m?=
 =?us-ascii?Q?OMRHc18gsO/o940w8bh6Gb7O8r7+gvF4wXnlDMuUsYqWhxLLtCSP4EyVudLL?=
 =?us-ascii?Q?iOU6ecjZzbzZnXpKDk2h1PNZoNN3zn7JD+St4Shiht4nYSWw1NUnC++wDho2?=
 =?us-ascii?Q?T733fH1w5/dvtAW2T7sRuUy2+idl3Ho9E3ZsbBtkhdjYPPA4qEuqYrPcIiyd?=
 =?us-ascii?Q?Hm1eYn0BIW3J7bNofpX8C4z04XAdtxnKj71mzYC17uODun/Istl6aUHC0x4F?=
 =?us-ascii?Q?+v2zpJs1UENDFMVmjiVaqo1js+WGpOH95lpj/uImoYSPWC0S/n5OEB4nPrD9?=
 =?us-ascii?Q?Z6QYWyYxyTnUosmflZxUEpdw+mj9KWmwNBEEjT8TK26F8RtC9iTVQ+2ZaZ13?=
 =?us-ascii?Q?a4HtDr4EF05NW1BOg1t9ojdRr3viCqy1DJcrsz/T3KPb/hDlFjxUjbx13ZZA?=
 =?us-ascii?Q?MI0UfxgJad6G+wUaiPIo9uRcLscgJSauW990//pKRoVVqwjzVi5a/xKTQrQH?=
 =?us-ascii?Q?KiyghIN0MHKMHFcYb+YEHBisesFSA2JWSRzwLs0pL3c/FDXef4dTtUlc28Lj?=
 =?us-ascii?Q?6QVftLNL4W/70HhTLzD5afnEvg6aP+BAi0ABTkEAJZYj/mTjf0MwZOZEv11P?=
 =?us-ascii?Q?G01slZJapBu8CjScYwsGNkS0hbtVeKH9nDG+3+DjRKGrT3+mrayz4amkoV8w?=
 =?us-ascii?Q?mb3D0/aql4/dszA3Y8uV+YyjEuVMeWighXAtOLSzDmyVuayipOjmberlvOsx?=
 =?us-ascii?Q?DbqJgw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 848b2c88-f29c-43d5-191f-08d9fc878f45
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 20:02:20.3153 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s3zjke8B4fmZXdRI6WZc9ZMUk4ba67VEc8dHEPXL0uOf7q7AGSh+6023UzimjFekWFYpUpER1PE5/16e5I+ke5zFReU5uxFgWfojMu+OMQs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3560
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 08/25] ice: move
 ice_set_vf_port_vlan near other .ndo ops
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
> Subject: [Intel-wired-lan] [net-next PATCH 08/25] ice: move
> ice_set_vf_port_vlan near other .ndo ops
> 
> The ice_set_vf_port_vlan function is located in ice_sriov.c very far away from
> the other .ndo operations that it is similar to. Move this so that its located
> near the other .ndo operation definitions.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 192 ++++++++++-----------
>  1 file changed, 96 insertions(+), 96 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 8d22b5d94706..eebff1824be2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -4249,102 +4249,6 @@ static int ice_vc_request_qs_msg(struct ice_vf

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
