Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEBF43F8D0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 10:27:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E86560637;
	Fri, 29 Oct 2021 08:27:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q2LVCkg_Xjiw; Fri, 29 Oct 2021 08:27:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 570DB6062B;
	Fri, 29 Oct 2021 08:27:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1132D1BF28A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 08:27:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F183A4024A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 08:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cwOldYUyBfQa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 08:27:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D5963400A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 08:27:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="230571799"
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="230571799"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 01:27:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="448301090"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 29 Oct 2021 01:27:51 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 01:27:50 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 01:27:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 29 Oct 2021 01:27:50 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 29 Oct 2021 01:27:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xhp1sOu7OSypDpnuC57TXDB7yZYiuGdMMngbVjs+VKFEezO4mWJZWkyfBcGMO0vr8gYMOztqO7em5GnxK9TtsvsXC6fRzAMicxxY4TkI3j6Ura93u8yrCesPr1vv3VI62Pa3qgxG1CKkiv0xV5mbyPldgVwkZSrfg2GiS2M0aqGRY/aewSR2Lw1VClUYnTGA7C/fgbk/i1VgG6sbwBiqG8lTaRcu3+zpeXfbtmn11RNRLQvzXyL/XjND+/K/eJ4res9CHhkMf2XKnXRmE9qXX42FVikQfYLbjWicr5k0CjEctVwrkQiFJgFw8E0lomHLYGZ6r5YoE9wSgYKgmftjhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5CjUc0vFzRV7hOGENcMsFa3Vvl74XWOOQngR1lSB7vo=;
 b=iY2NUIK/KNwrZ+yX2MBOJ9iEloqLwucwkhzS1cRy4ut5zTC90e5jwM+nsqAMvO5lekmMBIqNLKQZ6ifG7lakwRYZTLoSfynLupIJFM7DXSFhWsuU8YdBvMqqFJx5BTYPEiD7Koa4w8otxqeU/0oGt7UEJCihbcx1ezQmz3YOQ7mW6Vl2ZZuuaV8oeIloesIMQTX47ENlMWhNzNMYuE/74zdPx5J4wnlumi+8DX6J1bCJOVbHTocMJ1b9zchfsLWepINrzB8UA+K/+UOzhgDG/Z5tvnWKl3dA7r33JaBuzSUCNliNq67AtRAxbZt9cvqTn932JQTNlLyYrE0MIUUiNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5CjUc0vFzRV7hOGENcMsFa3Vvl74XWOOQngR1lSB7vo=;
 b=aJiW6RcyxHQlsdnXZ1iGh08fGQ+f7P4FQ2NG1FRUU0btvj1AjnQXSEJrcLx9JZjln6fW3HDI2utjDk9oAqqcGgBOsHFbrXVBv5jGN0nMjG2yxsOSo7QHkux2owpUmPz3UxZWKQbCcc5Fvc7TTUnhWTvVM3aVJ2JME0wGxDHEbic=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB4053.namprd11.prod.outlook.com (2603:10b6:a03:183::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Fri, 29 Oct
 2021 08:27:48 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4649.015; Fri, 29 Oct 2021
 08:27:48 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 3/7] ice: Use int for
 ice_status
Thread-Index: AQHXu8kzOP5RLG3vz0eqVJdSS508eqvpxQog
Date: Fri, 29 Oct 2021 08:27:47 +0000
Message-ID: <BYAPR11MB3367909B8B92EC2CC060DE6EFC879@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
 <20211007220127.70514-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20211007220127.70514-4-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9061ce34-e5e8-43ff-1225-08d99ab5fd64
x-ms-traffictypediagnostic: BY5PR11MB4053:
x-microsoft-antispam-prvs: <BY5PR11MB40537423B606570C66283B30FC879@BY5PR11MB4053.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dYC64TKVd1ylV3LDnmqAyd+9YkcCibvQP6InLeREVKe+dic5LxGo0Oz+cKQkFQCStAM/AnQausocUaTTjIgqgRI0VVj5Xdxl2CufdNSTwLpIDmF9ixyIPgri0dYRW3uWWY4PP8Cz6zlcYfmuoZvGDB3GmSq+KtF9b2qs7IB7QBsG38iZcfu2An5J2kGDDJbXgL0nDyrJcuRK09WhA5iEPcOlvjuFf6DIl+1PRuiybHW0KdUyoZf4woJNj0Z5cYYVYFuQPkvVsECqTMGGE20ODEptEFIU6U/VV9gOtWaa3RU94f9wdDWUSmanaPDpP0iCthN2htI1VNWchOu7RX9FXjiawg+110WION4yyGdqVy5hPpZ/AqdmhkHizlK9mz8pHVIkagiFVHR03fK8UHnYjVbJqy16iDqMX3Asi1K9z2qjhnUU22kn4oQXyfBHC8M5KMZ4XTepbnfNwFQY1mkwK4SYuR/GV7i0exdo3SKKIy6yntR6iurs+SeJw8WwYhSdOcVtCpJrNYcP09pjdQXDy9ECbO2J+6utm6onzaFJ50MKgDhoiPBkKAkOlzp09qk5jq0agJ07cUm/7XV/v0XZyYqKOQ+8nnpz/XVlpgo6CiIr76CFrYFxoBr5WaVyo+JRGakNVYQr7zpic+KOZ5uf7ylqD+qCAd3bNTm8IH1dePxHxjnDbqFp3izBeeQ1oZ3dh/TTO8CYhEWTgmT2QwkEqQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(52536014)(33656002)(71200400001)(186003)(55016002)(122000001)(26005)(6506007)(53546011)(9686003)(38070700005)(2906002)(82960400001)(508600001)(8936002)(8676002)(83380400001)(64756008)(66446008)(66476007)(66556008)(86362001)(66946007)(76116006)(110136005)(316002)(5660300002)(7696005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hHk97mxSJ9iZ4oTI3J5GRCaSEZf3nMgxsT+NFec7TI6hzZqcMd43JIldI3FT?=
 =?us-ascii?Q?XWaj2J2R7KxLkTEDRDCeG91ZwSuQYKCZWYzb5S12AAr7FROFEX3UCbqs+vcE?=
 =?us-ascii?Q?e4Vfw5C/nLnvKQLW67lGyl7xJj/Y0nsa579ILXYbvTMemm8QkEw0zZV808Qj?=
 =?us-ascii?Q?6ZXZEux6RnJeWGdCEHYQCdYTY0tQLppkE4/Z+6dwAgYSSSZ/2bETu8pYN+Gs?=
 =?us-ascii?Q?YnG1leAqvDXytgU5xUbVwWxQnlS5qPy9+vaDMyocBAfFh9M0RaZSSnR7ZEcQ?=
 =?us-ascii?Q?TxBuTiuAs42QM2iY3UsIcE4OCL5KCNDvrul8RQEwSzvIgVpE+zRePFlrFc6E?=
 =?us-ascii?Q?V58LHFLMSmpyn0UbNVcHz44eOMwnL/OXqeWbgSd2p7lqcK1QdNFe4BiiFxb2?=
 =?us-ascii?Q?9Ro28347NaEw0CnNerlaG5zdkO4Haa7Y62JCjrnIySmOf4EV0I+126exeKj+?=
 =?us-ascii?Q?jwRB0dDJwYTrz1O9QOf4Uy4ZhHn7sf7ov/6CbwNujb7GiZPsZH4kHS8Mgbn4?=
 =?us-ascii?Q?8T0gwl+m5Z+aqe+i3/IvUeHFKWo8cuFLqcyN++V0XW74o4TV0o2CYB+vT/vc?=
 =?us-ascii?Q?dSoiRQjJgBlRagAO5a68yUnVBx8ind/nniAq9cDOM1XgoyAgIqxgfKEkiT4V?=
 =?us-ascii?Q?H0v762OhL04YhRsT6rxSeVWz94dgzgXb4QBCmkPuM6Dmdy9Frka0wyfUDyw0?=
 =?us-ascii?Q?Ycdw3I9QLlnT8c6BEia1ojbviGHLS7ofORNDEtYlgN88FHVNrL6xVEXcSGKm?=
 =?us-ascii?Q?cyjW397j0GVqJfgm2ppjngGQLcr0Wf40P/TfMEgqurIEzamGmpNRZyH7AEKj?=
 =?us-ascii?Q?ELmG1lJ0/14AHw1++3Q21qHZAi6X/xABjUqWNo40300tGyzvbI8B4r+1N0HQ?=
 =?us-ascii?Q?3LDijm4WpHZBSEfOkQCPkOPfuGefqgIvxB77r31QSBPhhN/eEc5iJhUC5Zup?=
 =?us-ascii?Q?z8+pCkfwC2zhthWTNP/w2bZu7q0XC1MXu6cDsnFmGT4+fP1Y7pJjO/8tOkdV?=
 =?us-ascii?Q?CySgsvULayI9IcBe0MFJpatUxNowG74WVeyYYsiTjh7ml2Ts5m5hcG9js5RN?=
 =?us-ascii?Q?MluRyc/yygOMBq+ltkLL8vH85AoybWtGRD4ZHHriCAVZrPFu3lzYfXNW7FM+?=
 =?us-ascii?Q?2uLpil5XGGUjMj8QPnzUJ/80OQqKEW2BAxMhdBpeVNmjHMTnWFCEfk8PgKNg?=
 =?us-ascii?Q?1QmYzUMMPdqGn3Su+2yRANJ2Y+lfrHFPIWYGdvRZptjt56Aip4UOOLIG51Re?=
 =?us-ascii?Q?tPHtmmdB3qqEGJ2HJLd3DaGBS2rIHk290Tu0pVSVEIPoDbvG9p3JLhkBJC7V?=
 =?us-ascii?Q?pwQBdTyzMEUzceQLpnhq9xuJ3WnMz0p7fEVBxINH20O71mhzskVoYZzHSoyD?=
 =?us-ascii?Q?Ek+lHTbnP16GBhbogXKadzqPesWfyaIuvAhhCGSXnKRLUe4/5RZAzZG1n3rn?=
 =?us-ascii?Q?RB0S7AS6CGL6K7+5+rA01c2F7i+Wpfhuc56S2v7LbiacFCtlLxq9saA8Jou2?=
 =?us-ascii?Q?znKgI231mqtdAhXGh9BWJclZV/dXRgaDYvA61GglRB6IqBnZH8o6+F+gvC/c?=
 =?us-ascii?Q?zK4AI2l3Hw3wZLbnr+OPbdSztl7f3tBZVIexbik8nJHxrW3u5TiSxyUPTNQE?=
 =?us-ascii?Q?zA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9061ce34-e5e8-43ff-1225-08d99ab5fd64
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2021 08:27:47.9488 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f2YvJaL8DeAE7J8LtEfjI0o3YN2UINnbK8qkkKmDkVhVcmri8FcCqZxR+Lk3DYvLTo0ge7eoYzVM3hQ27H/jUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4053
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/7] ice: Use int for
 ice_status
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
> Sent: Friday, October 8, 2021 3:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 3/7] ice: Use int for ice_status
> 
> To prepare for removal of ice_status, change the variables from
> ice_status to int. This eases the transition when values are changed to
> return standard int error codes over enum ice_status.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c     |   4 +-
>  drivers/net/ethernet/intel/ice/ice_common.c   | 209 +++++++++--------
>  drivers/net/ethernet/intel/ice/ice_common.h   | 102 ++++----
>  drivers/net/ethernet/intel/ice/ice_controlq.c |  54 ++---
>  drivers/net/ethernet/intel/ice/ice_dcb.c      |  58 ++---
>  drivers/net/ethernet/intel/ice/ice_dcb.h      |  26 +--
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   2 +-
>  drivers/net/ethernet/intel/ice/ice_devlink.c  |  12 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  24 +-
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c |   4 +-
>  drivers/net/ethernet/intel/ice/ice_fdir.c     |  10 +-
>  drivers/net/ethernet/intel/ice/ice_fdir.h     |  10 +-
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 194 +++++++--------
>  .../net/ethernet/intel/ice/ice_flex_pipe.h    |  16 +-
>  drivers/net/ethernet/intel/ice/ice_flow.c     |  84 +++----
>  drivers/net/ethernet/intel/ice/ice_flow.h     |  18 +-
>  drivers/net/ethernet/intel/ice/ice_fltr.c     |  79 +++----
>  drivers/net/ethernet/intel/ice/ice_fltr.h     |  34 +--
>  .../net/ethernet/intel/ice/ice_fw_update.c    |  14 +-
>  drivers/net/ethernet/intel/ice/ice_gnss.c     |   6 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  38 +--
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  50 ++--
>  drivers/net/ethernet/intel/ice/ice_nvm.c      |  98 ++++----
>  drivers/net/ethernet/intel/ice/ice_nvm.h      |  32 +--
>  drivers/net/ethernet/intel/ice/ice_ptp.c      |   4 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |   2 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   2 +-
>  drivers/net/ethernet/intel/ice/ice_sched.c    | 220 +++++++++---------
>  drivers/net/ethernet/intel/ice/ice_sched.h    |  36 +--
>  drivers/net/ethernet/intel/ice/ice_sriov.c    |  14 +-
>  drivers/net/ethernet/intel/ice/ice_sriov.h    |  12 +-
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 208 ++++++++---------
>  drivers/net/ethernet/intel/ice/ice_switch.h   |  48 ++--
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c   |   2 +-
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    |   4 +-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  28 +--
>  37 files changed, 882 insertions(+), 878 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
