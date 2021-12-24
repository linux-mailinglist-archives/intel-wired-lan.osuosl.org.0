Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FC047F09A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Dec 2021 19:37:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74BB260E69;
	Fri, 24 Dec 2021 18:37:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oxr5wXl4tzOL; Fri, 24 Dec 2021 18:37:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62F2460B68;
	Fri, 24 Dec 2021 18:37:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 729A71BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 18:37:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 603DE83E44
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 18:37:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p9HwmZR4IjUD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Dec 2021 18:37:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E9328176F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 18:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640371037; x=1671907037;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EaqyFcY3ExpeL7d6kzdYdNW/C4SQPncKSCRO38S+2EY=;
 b=IunZlSDMW7uO/o/LiGNaJuUUSiIGzqk3UnhASxJucQFHwIrXfWHgSToc
 g6rUoOconHzx5ByYM+AZyuYNYm7XYRSxVUquxT2aFXRiWK5yAAmsmNioU
 rb6WlwwHVDpafeUooJ3HqH0P2y2vaDEGXZ5sDN/wk6nMlp2GLqBzquHuQ
 EffHu4PKua6io5XR7NFNw7br6Xau4Ar/9rB7oN+/2nZcEY41XiygU9ZDs
 kmCaKsvFikQoxlOatx4HdhRnp2/q0+O+/pFiGCcd8xMB39YGL2ZLW2YO8
 7yLK585Pos2rOggDL+52KRgIpEVwqdSr0/nHAMQ8DKxkEfKy1t4ufzmz5 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10208"; a="265214420"
X-IronPort-AV: E=Sophos;i="5.88,233,1635231600"; d="scan'208";a="265214420"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2021 10:37:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,233,1635231600"; d="scan'208";a="685719270"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga005.jf.intel.com with ESMTP; 24 Dec 2021 10:37:16 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 24 Dec 2021 10:37:16 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 24 Dec 2021 10:37:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 24 Dec 2021 10:37:15 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 24 Dec 2021 10:37:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K6+kmmvK8av2jgn+hn3GCePWnVxfPvD/4g2HJ89LTq7VXfX2o0Gff2p5DovqHWiIHBxhbFa+e9LwFlRSYHLQiebdllVMt9Lpkh9H7IRG7TgaR8o8LVqDXhLeBHIVfVIVatR58a2pZivWsJsRkuu2vjyWF2tuvvd5xI+ROdEM/rmItucuASMKdALcBtH8GJc+QOu+BNnHlRQi2e66jWwlzPg5+bL2RkYRHWg0ydLvjosWBioFPOrPqxLp1p+rU55Jjg8wjmGpaA0hQIlOe0IOiiJvbyzSg60aEi76Ey39eRnV00dKj0No7YowbYjy9ROjCBSi7Ufqp1720IjgrUAc8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7hAboP0WOj2DG08zo7AbPna2j264/RmzOYODUQiSVAE=;
 b=LItLW/2whEvcSysCVsVE6iT7Fb98hdximGqbFM8wI0Zmh1IueKRfQ0NODpf8dLSM8xE8gDbPnsJ3kLgHLetK/3kjk4QHis3Vft6C+zYwmHXI1+3M/OkhyNf+2G2gSWCusuOuKQzxxaQ4TH9ACG050rZmAwb3fBLSQK19bM0BYtigM855QWn4w/5xgAIM4s8pBByyikxZgMtElL3ta+0BVmOCcJ5xPjAaqMhvB0yQkcf2R2wPqWTHtOOKTD4TulB+u/cUI3E+4E2JvmZrEPCh3kAqd/pmfmbxjr7bVdAvHCN+lWEpEUe5ybaCHE7qrjmjIBnt/VP4Uvb86/1XMUTg4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB4861.namprd11.prod.outlook.com (2603:10b6:a03:2ac::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.18; Fri, 24 Dec
 2021 18:37:14 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%5]) with mapi id 15.20.4823.021; Fri, 24 Dec 2021
 18:37:14 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 11/14] ice: Support
 configuring the device to Double VLAN Mode
Thread-Index: AQHX55tz9Ado8reWcEuA4l+RZbUxmqxCGwlQ
Date: Fri, 24 Dec 2021 18:37:14 +0000
Message-ID: <BYAPR11MB336753274C578EA058F85F87FC7F9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211202163852.36436-1-anthony.l.nguyen@intel.com>
 <20211202163852.36436-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20211202163852.36436-11-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68cf5296-11a9-4c85-939a-08d9c70c67d7
x-ms-traffictypediagnostic: SJ0PR11MB4861:EE_
x-microsoft-antispam-prvs: <SJ0PR11MB4861E119616480F57553B096FC7F9@SJ0PR11MB4861.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TnrRvhaKoha8VWFXeYjqTWnG00TA69k6UPZBQMKU143Y+BDZvAlBh5Mn3LNeupeQ4aoxKGYRGvugE2B5QXRuurjhkFeJcBBRZEfme5P4ilHTaGgIKL44b1RUbP07yv5WWieF9zYT6p81OLY3SIAojBRSLvBfaS7t/FIJGk/LUpWaff8tzw0dmIQX4Oe1A+mRGHAa7V98z7yQ8Gn6c0lTxXyxWvefcduJNiwa33JEfupbsLmlWmhne5Six8YeHYWTT24faQZ8p9e/waWXktNjZtTON4Y70CmOyrzRbqqFUztQ+JNRTVcpPSDAb3Wi7zFpCoqp1xgrsSpJRXkTtWdqzW/JdDHmHhp0FQblJYmoT2qE1WVIA2s1Wz1X1kThoG8XaazDx3SYi3+abB1vAE9jB/3Sv4Fv+byXOjAzswh7WcEK4DEMf9whyRcubkvBrlt+TBzHMecNY1utCXhcUfqLCGMuifU52RnUuO7g1MpDCB6tbAPO7XAW0WAbL51nO7N0UKfvTj28tmkj3vqeQUdP6buljepz8xssnrMEHDu9sGBhS8XnlaBXKnAACBkKU0X6PdKGa5Tsn7mD6aT9qHoJvWSTvPGrQBiq4NQjWEbNJTPuTYW0kmpDt83D38UbE0qtqxwno3BPAJo0GugTrm05cJJYKCA1jNi9EpyAP9q2JU8jk8a7OjQbmIrjAn1WMqXEwVwxNnPTqmjcY68RMcMg/A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(52536014)(66946007)(71200400001)(9686003)(66556008)(64756008)(66446008)(66476007)(6506007)(5660300002)(186003)(76116006)(26005)(53546011)(7696005)(83380400001)(8936002)(508600001)(8676002)(110136005)(82960400001)(122000001)(38070700005)(33656002)(316002)(86362001)(2906002)(55016003)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?moYqwwiwSLouFt1G5i8zSf1iqKvnLESF+/vgsd4R7H25xOCbZ900Cj0YTIfD?=
 =?us-ascii?Q?VNKTopQi+EQDVwRkTtrvvyj20Gd3vjM5L9lduWz+Oh1M/cAtfJkC6AG+Qf0g?=
 =?us-ascii?Q?Z8jZhXnOnqTABByO8KU47sIartmZ3Cesi/OExwXCxZpTqsm5xAV21Xf+oCb+?=
 =?us-ascii?Q?9m2dTeMVmxo/od1IQwhJpdYquC6kAOipU7ZxOrP7kYv0eOhLTQYdfJg42ne8?=
 =?us-ascii?Q?B+Ocb5vSJIG4u3ryjs/WicBnQSfyz+d9cQ8F+ZoIog7PPFqG5FaYZupnwp4k?=
 =?us-ascii?Q?AO/BbKsuhL+GOT97My3oL4ylAY0iEqD51BGzRR/b8rL6qDeSKxH5kg1iDF+f?=
 =?us-ascii?Q?nFCBt4PG1p4cfg1j8l91Qery4l5Kqs2cr9o1FcQ5fjaybHRrEubzVys1O/8s?=
 =?us-ascii?Q?sC3BN8gv+3KeOAfkDn82+aXgYHISN9j0xy+wysHpwCy81KPgiz/WMbLPoCHU?=
 =?us-ascii?Q?krfONlTOKf08BnF4CQny+7VQvlW60bMeLV8bro3ukp2O+cYbwlOtN5bOzrLI?=
 =?us-ascii?Q?OsFH3gDfH/QYE0V3lIoQMgeJjJLdXOTvA5Lr5+nCPGcGAVVzqU0ItHqehM4o?=
 =?us-ascii?Q?dkt/LPEmRa0QNgjJ+NjuCfOwH0srPIOr73vLLnuylx/p6YvTnOc24c/TpAeh?=
 =?us-ascii?Q?ZssZjDNMdx+ymPK+PgvkjMH2nUMUzZo7a0DkXxH0GH0xYMwyIrixxXKpIyWP?=
 =?us-ascii?Q?z9NgSNPpH1AnGZK82ZcIT50Yiw+JCQeAnOedLjA1KSH/XBmIjPRXfPAXr24A?=
 =?us-ascii?Q?GjMx/Pw20ZP7U5JBmyXo79+oEBJU9E7g0PO0woxIXRAIyKFOUrp1N3Ql2eUv?=
 =?us-ascii?Q?j+HBE2fOHmE6wWJzBBoXz0Bk7vkfLEKWYsI1CEyH7P7UBBrCoEo2zuPTpFzr?=
 =?us-ascii?Q?ImKH0BIMoo86LrWqCBaYQDC0Ywcu/BjE2GKvKVUAQqQKIKU49A/WuEMd9E6g?=
 =?us-ascii?Q?ozdsjFRlSvrQ5jAu2kxaytIMmWN+SrQFbpqUyuWsY13U91nL8PSiN/0k1bJx?=
 =?us-ascii?Q?NHTWxfMMaZ5hc/FBFuOLpwH85MsTKbTjZi7bKFH0mp8flkVIW4N9c3UsXQRL?=
 =?us-ascii?Q?QbPaOEiP4spKsBrSDx14Z9atxfet+0PR/KAwjZ0Hs+lG/LrIGly3KK9q/Lwe?=
 =?us-ascii?Q?HMnU7q/XLmROOxW1STu7LYXiXugF4mYv3H+lS1cJ6QKpQy6RVsG8laMCRSdz?=
 =?us-ascii?Q?71ZNG593yl2URJS2zahNKvwGTtAVtLLBt8seY7n/ylq2Qmt8kskdN/gWY+X+?=
 =?us-ascii?Q?aeozv5AKznq9j7HqIvKogsXzvq0TWbv/eys5FnNyEWU40Z+7IlKyWPesRdHb?=
 =?us-ascii?Q?JbzMQXAn7J2BQ6K6yV9ON22W58EKXRz6t9/zHl/zPEYv8NIupilFLb6ds6mC?=
 =?us-ascii?Q?aCxBD0ZVO849FX+mIDUFmOZWpImBsPBNLFQytSLpWtdR1VOqYZPg5+LB7MJa?=
 =?us-ascii?Q?a+LJHT0Yk6rIIVp1zgljYwk0hwbSJ6D6CAjqrcu92V4tF+ssyIO/gsQEI6pf?=
 =?us-ascii?Q?qNZ5+ycg8Fzq2VrirUVa+oZPN1Z1AyCSEM6i8XR6BBFtvU16vrhfXGUV2+0H?=
 =?us-ascii?Q?NjaoDD6ADas8I8a24w/dp839GTWR63XKWg29NRXRW89zhO4FUjnrasZKXj10?=
 =?us-ascii?Q?OA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68cf5296-11a9-4c85-939a-08d9c70c67d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Dec 2021 18:37:14.4570 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LW33Pkts4DsgFL4XB2ywEMPynXVNYoUMePNW64WS3n0AIvEzoxYqbnTOSvayNJFAhncg0WCke0WpfBgVPiY1vQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4861
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 11/14] ice: Support
 configuring the device to Double VLAN Mode
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Thursday, December 2, 2021 10:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 11/14] ice: Support configuring
> the device to Double VLAN Mode
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> In order to support configuring the device in Double VLAN Mode (DVM),
> the DDP and FW have to support DVM. If both support DVM, the PF that
> downloads the package needs to update the default recipes, set the
> VLAN mode, and update boost TCAM entries.
> 
> To support updating the default recipes in DVM, add support for
> updating an existing switch recipe's lkup_idx and mask. This is done
> by first calling the get recipe AQ (0x0292) with the desired recipe
> ID. Then, if that is successful update one of the lookup indices
> (lkup_idx) and its associated mask if the mask is valid otherwise
> the already existing mask will be used.
> 
> The VLAN mode of the device has to be configured while the global
> configuration lock is held while downloading the DDP, specifically after
> the DDP has been downloaded. If supported, the device will default to
> DVM.
> 
> Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v3: Add ICE_DBQ_AQ define
> 
>  drivers/net/ethernet/intel/ice/Makefile       |   1 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  64 ++-
>  drivers/net/ethernet/intel/ice/ice_common.c   |  49 +-
>  drivers/net/ethernet/intel/ice/ice_common.h   |   3 +
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 290 ++++++++++--
>  .../net/ethernet/intel/ice/ice_flex_pipe.h    |  13 +
>  .../net/ethernet/intel/ice/ice_flex_type.h    |  40 ++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  12 +
>  .../ethernet/intel/ice/ice_pf_vsi_vlan_ops.c  |   1 +
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  75 +++
>  drivers/net/ethernet/intel/ice/ice_switch.h   |  13 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |  10 +
>  .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c  |   1 +
>  .../net/ethernet/intel/ice/ice_vlan_mode.c    | 439 ++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_vlan_mode.h    |  13 +
>  .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c |  25 +-
>  .../net/ethernet/intel/ice/ice_vsi_vlan_ops.h |   5 -
>  17 files changed, 995 insertions(+), 59 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_vlan_mode.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_vlan_mode.h
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
