Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3AD435D15
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 10:41:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 908DC83ABA;
	Thu, 21 Oct 2021 08:41:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KUPzkQ7SNtfH; Thu, 21 Oct 2021 08:41:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E36E83AA5;
	Thu, 21 Oct 2021 08:41:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3369F1BF40E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:41:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1F63B401DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:41:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lZpO11UuU117 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 08:41:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B28ED401D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 08:41:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="292443223"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="292443223"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 01:40:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="444704750"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 21 Oct 2021 01:40:49 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 01:40:49 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 01:40:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 01:40:48 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 01:40:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f43pLk2sGbCYeHCfk9nbCTUUcEjg2G7mn7PBkSOS14oqdP3OmNOgcMSNDmHRULNd32tl1nPIpTyx54gzvV+aMEOrMNlGuFd8u4ue/HfOOPMFiwmhav9HBvr7MZmRl4LK2mFuk1NzxSKSlTmkTRC1UjmN3icSB3E6p7QhpNQTGYZgHzV3KNjIGvr+HCkMSqo101fBhIWS94kNyJgMKDuug+qhoP43DDMtjUZssELbfhCcGmeWxPGM7euRkQLjr9q4zohiS2M0q5wrZkxOXoBknSnx/atkf2uprd1Beg8MlMbugKp7y/Wmthe09FH8GJHuh+XK3lxFl7Aw+gdr4MLD7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O8oodUb3cKpWzYrBs26+WfbUuB8LxCLghVMd2Chl5JE=;
 b=O+CtyQQHa4baW0JnLs6EypO8+ShrXcEaufWdW6m3Dz3oBYdtSMyWfBq/yL5l35dYluCfxZs7Y8c+THeQm8w7VUrJoTn8lwzN7POd2jR0RxTzUAGvusqxkYLy6NCqGv8x0XocwiD0eZ+V1DnQsn9GosXFWetplN6ocUGIfCXHWN3dEkYJQVUcb7kiSblrJNEykSG2By4wUEr8plPHgXC1fsrAnlzTcoTUqShKcu/SeCldi7xunBkwMo8AqlNlftAu04hl+B1eMdAMUnNBhI/YnBuean35XDrSLJt2cFXWi/UVlVz1eGkrylmXyWikMejXlxriiji940oBqgIXDH8xsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O8oodUb3cKpWzYrBs26+WfbUuB8LxCLghVMd2Chl5JE=;
 b=Tj66t4wapRTPb6nlbZVr7tPS6L3PW+NESUOgW7IpuNFlFLKgnQsXBSdAJEMML8uLuizqim1ldqr0KWbBK4zJ5OXueEKptfmRqx8Plgi+DmL945qiceylw5BWbgbozTvn2/kqwvrhkW8kH1F64X6Nu0cPRIq+OSDNjv1mx4MzWVg=
Received: from BL0PR11MB3363.namprd11.prod.outlook.com (2603:10b6:208:6f::20)
 by BL0PR11MB2899.namprd11.prod.outlook.com (2603:10b6:208:7b::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.15; Thu, 21 Oct
 2021 08:40:46 +0000
Received: from BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::713b:5971:b6ca:5e70]) by BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::713b:5971:b6ca:5e70%5]) with mapi id 15.20.4628.016; Thu, 21 Oct 2021
 08:40:46 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v3 4/9] ice: introduce
 ice_ptp_init_phc function
Thread-Index: AQHXv7DaTF3q67oFKE6YwUQOtbl8+qvdLySA
Date: Thu, 21 Oct 2021 08:40:46 +0000
Message-ID: <BL0PR11MB3363BC7426E5858F1958B52BFCBF9@BL0PR11MB3363.namprd11.prod.outlook.com>
References: <20211012213230.2684338-1-jacob.e.keller@intel.com>
 <20211012213230.2684338-5-jacob.e.keller@intel.com>
In-Reply-To: <20211012213230.2684338-5-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 21afa57e-9664-428d-fadc-08d9946e7a1b
x-ms-traffictypediagnostic: BL0PR11MB2899:
x-microsoft-antispam-prvs: <BL0PR11MB28997502DB908AEC586C3D89FCBF9@BL0PR11MB2899.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xv4PeqsQ3v/Au7VPHIZk5ay8bmsH9tgM++gg2F+DrcebBb7GiBiRgu+sh4Z8SyeI1SgwvEKWJmbfSljrc+OOiWhISKyCy5+uFr0yQ3B9uzbejT2IJJjMFPmse07a9KUOZgXR6uHg7Lgm8emX8TWuVlvnEdqy8rope13RHq4Pe4/LoA/WVclMxLW6oET4shAdntZyd6wE9olGpRW4Vn2r2OX/AUMCNoR+xCpVdKh55u+sFypMkTboxGcaKsnKFbDzt5qmV+NzSgeDydIIv7zHgVFhnJbF0+3pJisjZX+F1xFPo7GkTL6hrHlVW22swarDiTKwt9f9t2E67PddE+gO3vbtFFkhHKHk0v3BjppQCt14ZtebSMGG4hrzqDMmD5lZaXvytyqP191CRb75GTurvVy7k2EywRoyVxkE3S5ovUKRww1QmfB7tw9Clbc1JWvvx2LwhonFUIC7SEBkOcnpZovueRGgWe0dppi4meDSlGnWjP7hEFjZ2VOOQNKPBDpONLAzHzDyMPbP3vVund5oF/Un8IoJic29uZgVbUJLIjvuaf1A6OP7itRY8C/LpdM/mf7pzm5c/63llenlEub1r74hJxU/vSFU0bu8//tnlBaGhKOp1u9QQEzcib+8/aorQ+rOfywzb1ZgPf2uFMESUgu4/IdcAC/roPOIPdhI8X0CijWY+AVkiWT+UPcSOsZGF8MLYi+JAyabFVfxCc7HQw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3363.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(38100700002)(83380400001)(122000001)(33656002)(66446008)(86362001)(71200400001)(66946007)(66476007)(64756008)(76116006)(66556008)(55016002)(8936002)(52536014)(4326008)(9686003)(82960400001)(6506007)(7696005)(186003)(53546011)(316002)(26005)(5660300002)(110136005)(38070700005)(508600001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?niYDirSnqXnDPfDpX+oI6rAIu+pOBuJrH6uzfcZAJtn+qwk9WoqvhK1TRfE2?=
 =?us-ascii?Q?yOJtpO91EmIOAosL2X015set2yHutl47wZDUY0vtKfzRC8PGFGvoJbf/48rp?=
 =?us-ascii?Q?yty/qP7Wh6U18dsv95XWYn+D++56MjcLkujsob/KOC9LtAXzT3x56arnUvQu?=
 =?us-ascii?Q?j7bKvNLZSK12DxqxHglLqIdlY+wevg9EhCGWTBB+LTprxrgfAUfVB/T+MsRm?=
 =?us-ascii?Q?MMEOiV7F3/MTS0eNeaiksrG8CEJi8oU1WLheJZDAq/gy+BmsICadcISQVVG6?=
 =?us-ascii?Q?bqRu0IFFsFHuiNzUynEdmLTNZtWwMFlMRTshd2nq9dsvYWXs8HMUv4Z6uP82?=
 =?us-ascii?Q?LYdzrmW1BjZ5CriQscMHWEuaAl3eZSewoDRHw5DCYdFJe9sAu6knuSXSl4RD?=
 =?us-ascii?Q?YRCSHIMa93mGjsQALiIOVNLvNDHeWVfKt66jsqQnaFjttjIUC5BkkVlc6z2/?=
 =?us-ascii?Q?dxYmTMg6Hx7YXAa6mnp2aF2kb5e+FQaQ8RW9+lN30s/ttj4nHPGcVX7FDsFh?=
 =?us-ascii?Q?PcgoVPp8pYju3v+k00uiAki9+e9e83kzdVoUB19CYN1oPORvc9lWSg7OsZbP?=
 =?us-ascii?Q?YmujXXJbTGnPL9DaUyO0i/GauebQkkvEgCjqD5Mu6uNElPWV5gR1UMsC0h/l?=
 =?us-ascii?Q?VCbpnCjT88Dio5dL85GZ8X1sez0exrrDMRC/fn/LI5iYhQMCWxaruaYn9D7x?=
 =?us-ascii?Q?SUYQ86b8AmbCPIX5n/PMvkE+I5V12k1uMh0EbumkZ+Ytekkui34O8bjTe787?=
 =?us-ascii?Q?oZ2c6kqEGfURFw7Yj1+bEZBUAEiCPSyX5Rv05wo6zjtM9Gx/O6nMT5vyHwgp?=
 =?us-ascii?Q?muwCS9OTKdeJRQwysoE2ub6snqMEAqPdXEFRoX+8aMEIbMBuaCsLyIZmrDjW?=
 =?us-ascii?Q?hCnahRm6ziPDug/daMOGkXx0sek8tgZD+5+9M72q9z7Fsxj3r744d7WIIaBM?=
 =?us-ascii?Q?FonGQR4g4kcpin3+XKxBFo6aQOWoXwJ4T1GNqjnEpiAQ+jEL+QVQg32tXf2L?=
 =?us-ascii?Q?59Jsfn+qfOr3RbEr1JuZOOY3J314qjCi9tZ5WJF6y5aPDanGlhFGEELx58eA?=
 =?us-ascii?Q?kHQGvGPeiKuVl87D5D7R+sfouH13UkcalD+mKryOHfPaUDWwU2joatU4FSJ4?=
 =?us-ascii?Q?IBZSdnmMHbnbomIngMGAkTdHDpxiL4Z/3YKJ3fHOThii7qTqngtsHzqJ0P9/?=
 =?us-ascii?Q?rZXueM/AAQN7SXE728sPI1B/0jU+V0/qRT/hYQBlGYxBqG2LAeCSltriKjEF?=
 =?us-ascii?Q?6TFWmatm4yz/RoF3Fce60IRPbaS1piQo19SZ1hYsQSwx3HJIOAPIj1plMC1p?=
 =?us-ascii?Q?VFaR9iXHcNKnir7MfBd3HzbVoir+ZiybP5uobhSgNMZMviOe1C/i6ESkolAR?=
 =?us-ascii?Q?KxqP4+Af6VAgj4w1EQO1Z4YYFZTdTnFMVx7n5mw6QIOBjj86vz1EGQnnWP6A?=
 =?us-ascii?Q?MURnbBtyLnM=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3363.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21afa57e-9664-428d-fadc-08d9946e7a1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 08:40:46.4344 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gurucharanx.g@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB2899
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v3 4/9] ice: introduce
 ice_ptp_init_phc function
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>
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
> Cc: Paul Menzel <pmenzel@molgen.mpg.de>
> Subject: [Intel-wired-lan] [net-next PATCH v3 4/9] ice: introduce
> ice_ptp_init_phc function
> 
> When we enable support for E822 devices, there are some additional steps
> required to initialize the PTP hardware clock. To make this easier to implement
> as device-specific behavior, refactor the register setups in ice_ptp_init_owner
> to a new ice_ptp_init_phc function defined in ice_ptp_hw.c
> 
> This function will have a common section, and an e810 specific sub-
> implementation.
> 
> This will enable easily extending the functionality to cover the E822 specific
> setup required to initialize the hardware clock generation unit. It also makes it
> clear which steps are E810 specific vs which ones are necessary for all ice
> devices.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 38 +++++++++------------
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 34 ++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  1 +
>  3 files changed, 52 insertions(+), 21 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
