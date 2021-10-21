Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6885435D27
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 10:42:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38D3B407C3;
	Thu, 21 Oct 2021 08:42:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g5db15d7f2jK; Thu, 21 Oct 2021 08:42:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47C61407C2;
	Thu, 21 Oct 2021 08:42:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 68AA61BF40E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:42:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5652460D61
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:42:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KawWITGcfE6k for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 08:42:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BF6A9606BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:42:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="252477495"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="252477495"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 01:42:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="495029822"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 21 Oct 2021 01:42:50 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 01:42:50 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 01:42:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 01:42:50 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 01:42:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iBT6Ni+Yr4RwtGrOcXdvXOm70fecH4HvmDpgSy73t1FuW5ngOUFwhoHlDbGyDo7IxLaSOPIoOArNezloFTx6RLn3beSHu15cgPSqX9DPrMLPU0oBQD60Sw7ej5tuOR5AaMg9LjU5mYem0Va1EPGpdJI/FXEczLzfARU3FSvd2M/WX2xNDa1jxpVPdDEUQLNsvXe9PEObv+e/L7QBXAEjUdkIlhsonyXWy0vC+6wZBR2L6wsF+yIQSs+zflEdOJCJFkb+RRO2LNoOv0whGIGTHnWb3reAX53zznEwnJhNRXqQ1/Mh5L9Hnmxh0iLYcfko4rDlSGSoVLJdYFvoR80h0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S+YHLsf/RNH1S71Kg86OnHrqmzcYOTaDjBnIZhvfjgA=;
 b=d701CzB5TXkwVi82whUTsNT9dOEgmA+xg1SdmYmFREvdoy1CQrqvOvgNGhkjuFaamNzxSwhUckq/CmyCVenMKdz0T7XTyi62IM0hxkw2y6hXwpTGM4oa8Z87Tqm7PvQQTA5puv9UC0RLPWBg7iNbjfqkt5X+rjjF9Ql7gfFdani/48ErRCb3CB8/6xAlbhyc0eaM5FZirHVXx7o8lnOKZ5qgMuV3FJrnMbAV5U3AT0H16xTJzK++vO5SZWPmQTYg2nEkX1sSESSc8YxaIv9rTTgMGXqvwRI7yIkQXtXWMXXQKCRohAhYPQiUrrmlvrpCoexVvagAe6xxq5KDfGsdlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S+YHLsf/RNH1S71Kg86OnHrqmzcYOTaDjBnIZhvfjgA=;
 b=qe8ysVuecCWm7Z7Y34luGX8SJubeCtfsimTJgLvJEMvmvYFhLQn6GeT+5LlXnIQdWHopZADrLj/Jl3N+SlzdTdQ2EVrd390aooM12e4Uv56f74b4lE7MsIDiClzYsN0iEnlheP7d3x5eafEQF1nuyv3HK2/uaqvf8gnb2V7KMK4=
Received: from BL0PR11MB3363.namprd11.prod.outlook.com (2603:10b6:208:6f::20)
 by BL0PR11MB2899.namprd11.prod.outlook.com (2603:10b6:208:7b::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.15; Thu, 21 Oct
 2021 08:42:48 +0000
Received: from BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::713b:5971:b6ca:5e70]) by BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::713b:5971:b6ca:5e70%5]) with mapi id 15.20.4628.016; Thu, 21 Oct 2021
 08:42:48 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v3 6/9] ice: implement basic
 E822 PTP support
Thread-Index: AQHXv7D7s1weYq1bi06Iin00n8UGoavdL2WA
Date: Thu, 21 Oct 2021 08:42:48 +0000
Message-ID: <BL0PR11MB3363668FEF6715D99D9588F5FCBF9@BL0PR11MB3363.namprd11.prod.outlook.com>
References: <20211012213230.2684338-1-jacob.e.keller@intel.com>
 <20211012213230.2684338-7-jacob.e.keller@intel.com>
In-Reply-To: <20211012213230.2684338-7-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7c7c051c-641c-48f3-c9cc-08d9946ec2f2
x-ms-traffictypediagnostic: BL0PR11MB2899:
x-microsoft-antispam-prvs: <BL0PR11MB289970AC14DA4B586363CDFAFCBF9@BL0PR11MB2899.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OX2VKVRCxQVMl7ydf6oaUr/8bgQzcSrcbJURYYgMOkwfDVbVa25ZCBivuVL3klmBNMEQimdN72PltzOOJ7xMX73RdasxgzRhneiwNscOUZpe/uHWXyY/mRAU9iMkriauPrfbXIGXIcRcrt0mMy1aukxDKKc/TcRgk2b8ILAG/lY527djL7ztcGKm/Nq9VsiXAiDwX0dZI2s3j+2QAIrIbqoCOB3/6x2vq4y5d0mqIG13gy+b1lUawUWFDANqRPl++phbwWdxXHFwyAGs6y6Idel1b7NrbQuM8k1vDAh+Ni+t0l0I1lEohVdNO5r7YsP8mH6KVf2vwAHZqxMVqdiAGP/eQfFAaKAEATc2Yq2rRvShabBWc6bjO62U5/MCFH7TJRvIwm/1wSN206bN5716r1ATp+iP5+lf9QRDuKyX+sJmBa/OxUEXr3oYBoP3Yh6sd04GYRq8j/VJNXU9nklAxxQOMzZBJDYhdAqxYmmQM38gUT+mWosSyXa0cuiBvMYPa+J8FFFZ0qYnPt5Wmxojx5TrxuKsQE3vo2VSTij33JMDvvDwxOicPMySSbBDfsuUHd0FLBLZXs4wxIHs5tiYE4MaLgkKkLqVuX6w/rV3ue7dOiSC5YrKmfKgouqq1tTmYowSJrShwbf1s91F6O8VF/2swUQcpq8HEI8dr3Y3zuaE4kWoZzl+weKgGJtntfkCwoFf84N6l++fvHsyn0LPBg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3363.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(38100700002)(83380400001)(122000001)(33656002)(66446008)(86362001)(71200400001)(66946007)(66476007)(64756008)(76116006)(66556008)(55016002)(8936002)(52536014)(9686003)(82960400001)(6506007)(7696005)(186003)(53546011)(316002)(26005)(5660300002)(110136005)(38070700005)(508600001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zWJH+hTC6g/g+z/23VlL/Y+ulsDfxD9T7ecurJwypXLjPlDjeC4Bg+qYS7f4?=
 =?us-ascii?Q?8YxU0E+sLjJtr1c1w1aNfE0Gqs8db0UH3eWqaL1wbM7KH02vAqT3H5bRP/cL?=
 =?us-ascii?Q?k+gHdA5lOesfzORarMpUJj5Dh/IbZZH6qv/Fbbv7JLtbn7BlnzCuEPtTg0Dl?=
 =?us-ascii?Q?XXBoneSkSgMy7XrFlAp4P9dv5VzrxGIoEhhnNNDrMYhBHsJ8hbTRc2nwh/fR?=
 =?us-ascii?Q?2zmYNHsoNGPKwUwfDGMl4sShYL0LZpPdWkGyGZ3oP7/YaIRAFLZEBxLw/3qB?=
 =?us-ascii?Q?EJxwEQiLOCGhw4U3XPLyxg/cazJoVoIajG2KaRVxCwy3ws+uWWQsM+rDAij7?=
 =?us-ascii?Q?3gSDZgTOeKUDNLX20RASMZ7EHmmpeOq8MOqBAL+6TdD5A0Yha0WW8w82z+ck?=
 =?us-ascii?Q?pERvUnVjtAxf04jfSyuJVhGcYhab93Bgy1tFa2pJG4ruupR3mMhSPsVZY6+c?=
 =?us-ascii?Q?3ICNLMGlczvggZ9dcl9+HBS7M1IqprJrnH1i/RiJ3OBE1nlaD2MljcG/DbjI?=
 =?us-ascii?Q?9KnMPRq/w8c1UVTbVhJ6VBRLV08rUc/BLLZsvyE7IMN9yRTs+QWCgPea1/t+?=
 =?us-ascii?Q?mepGMBAT6cUKaicBtoj/61l4lkRf/q3+BVV2um7oREZ9sl9rxW7014iWpm7E?=
 =?us-ascii?Q?HHrqh29Qf5RQdxCN3jS57jMDjvK9wwWIAXFzi43LkNdysvot6hsSDkPuqyPm?=
 =?us-ascii?Q?lqrdmygwjY2MALBs879h/cTuOFX5vqaIu4DHKp9SL9EzpwXnHqTNJRTJsTrE?=
 =?us-ascii?Q?Dbv1APCiP8fOWVYpkl/37KEqignye94MdbCLiSe+TNj0eKa7PfQr59wPVe/0?=
 =?us-ascii?Q?G86h2cd3WzWu9PDy/dwOG/k37aIxRvlTxK17k/Et6vxkjAttS7tKHUAyUtbx?=
 =?us-ascii?Q?zBb1ION7BcJV44MxVsKC5r76RZXYJtqCyR1hu8YN5vGWRCKj982voMaLZIoU?=
 =?us-ascii?Q?PWXHiv4KPr5RyHV9kIUto9BhfE06dYWR+BC3svQmu1QpK8fS+mpotqyfg/fJ?=
 =?us-ascii?Q?BsuaYtV5g2fmfiGJvwU8CKeAryyWrX4PsgcxC8tApgAUA4TNjpxE9Vv9rD7/?=
 =?us-ascii?Q?RYQdKgz5WsXr7nMAGkxR6pzhp/5eA/VvN7wGYdPHHUl1/Zb1FtmhhsTPPOEK?=
 =?us-ascii?Q?zzCvoZVKcm+eB1OjFzyyFp7arkuxhFJcpkHGrX/jFtPBs+YFt3VOKrjoLJXG?=
 =?us-ascii?Q?csumFx082Dlritqx65alo0wyTnQbrUMYEUIoX9ISDNA9gUdaD9lLhqYpeyoz?=
 =?us-ascii?Q?OfllvV6HRZjExDxlA/fxcGCqz+b0EBYCe1pCbhwnRv2k2Eqt/8mNfM3uUf5m?=
 =?us-ascii?Q?0Ajf9Xsbx5U5XpdiXZA2WuqB/99W7lTLGn28NR4Z9eQdLD1yaBppYZG/wIdo?=
 =?us-ascii?Q?Us3LJTvOygN4HmgxrHFqyZNwtLGAdKJG99fvn/gHlpwKrtBbH66NYGc6eDfN?=
 =?us-ascii?Q?qv/Gf400IZw=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3363.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c7c051c-641c-48f3-c9cc-08d9946ec2f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 08:42:48.5611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gurucharanx.g@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2899
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v3 6/9] ice: implement basic
 E822 PTP support
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
> Subject: [Intel-wired-lan] [net-next PATCH v3 6/9] ice: implement basic E822
> PTP support
> 
> Implement support for the basic operations needed to enable the PTP
> hardware clock on E822 devices.
> 
> This includes implementations for the various PHY access functions, as
> well as the ability to start and stop the PHY timers. This is different
> from the E810 device because the configuration depends on link speed, so
> we cannot just start the PHYs immediately. We must wait until the link
> is up to get proper values for the speed based initialization.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |    1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |    7 +
>  drivers/net/ethernet/intel/ice/ice_ptp.c      |  266 ++-
>  drivers/net/ethernet/intel/ice/ice_ptp.h      |   26 +-
>  .../net/ethernet/intel/ice/ice_ptp_consts.h   |  300 +++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 1863 ++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  323 +++
>  7 files changed, 2717 insertions(+), 69 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_ptp_consts.h
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
