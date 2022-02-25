Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9D44C4A93
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:23:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2A7B61298;
	Fri, 25 Feb 2022 16:23:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qUTjYvQKMyRy; Fri, 25 Feb 2022 16:23:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E318605E0;
	Fri, 25 Feb 2022 16:23:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A0A041BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:23:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8DC3361298
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:23:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bShMR9JczcJP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:23:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E4D4E605AC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645806197; x=1677342197;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Ehyj+upZ2QA5A1LQe8p+iUacyg7t3Th6aj0oxLhPdGo=;
 b=Rpd67ojsJXaa4sVp3ms9uoW8XdvInR8lNFpfxiT5vyD3tW7IKztXWBQy
 II7DkMsqNYkyt5cW6jNoJtsOlhNFFv76KxStHBKj2d3KlZC6SFe/ZGyKU
 YwOLDavpJnPh+RkhxgZM7hrFlHgeXXTj+q53+WqJj+xOdy9qrGQ9fVikO
 eIfrOMFnkW1YtSanOvTaOhPrCesVvszgyZlHmpfUpb1z34AnwvQwIiKyc
 EJr65jKGl1UWAdEZA2CNnVXL5ahKp04s+QzTtXkQBj/MIYW1A+4nwzR68
 Rq9U4Ryog8PYZXte91DEZgIQO5G1I6ndIecxVyk2GEvtEGW/KAl1dnkd1 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="250106708"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="250106708"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:23:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="707911056"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga005.jf.intel.com with ESMTP; 25 Feb 2022 08:23:17 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:23:16 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:23:16 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:23:16 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:23:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yv+O0ptvDntgbm03aYq83YN7WtsaiVbDNbOOcNh26PkSffcgzP+Y/qJhycVYCBQh/gU2I+uCPl5u+VdA+2tXNwoIu7ef2iSvLyojuko3Sc2VmbjE48mJdtbtC5NbASSVIBX3Qd8qmEWSXAYm1IHpP7A0d9IAvoT8By54jBfgjorYap38Qw5mjl9JM5sSv3UNea9D/xOS7g3nRNrkHbv8g9E1ryLrbWg7dJmeO/DGW1iynp5twEmkHwgyNjwjYZrL2LbrIjcyPz8STq3xy6K27vEnyCM1x1YERp+f9W6fjIRmaI8uAbNGuiQeZca2D3gX+G9DNHAwhLShuCav1cR8cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XKSYU/Q5+luDWTU6LNS2Af3uAuRPf9dZc8xxoYQ6cDE=;
 b=NJKweyQtUmImAAXxQ942MfbwuKTdrA3fPDHIFoJH1gFkbthOqlciamfQ9sD9KrnTmUS/i+JsVTcyrp+h4YquS0jG48yGXq5JRflSzoPrRPJXT27oT8qnRPvt0tW7N058YtPys222li+Fh3I6R5/i6bGQJIgOjpJrXNwcgnMSqJjZIFxvEqhjNekhy1rT3+O5NZGyub/rtsTVbRQbERRrCkQFlCPYRFosK8FlEMzc2W0g0Zo4nVxpOkF7FicEGwUO18nSvoS5ktjD2N2/sztX4YfCXVpa9HhF0caLLOF8EmOo1J54XDW3pyKiZCpJ3LFBOp20L+LzsM1bANHk2M1SZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BL1PR11MB6027.namprd11.prod.outlook.com (2603:10b6:208:392::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Fri, 25 Feb
 2022 16:23:09 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:23:09 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v2 07/11] ice: use
 ice_for_each_vf for iteration during removal
Thread-Index: AQHYI32MjuQZMxw550Ok+pGu9ShCDqykgOFA
Date: Fri, 25 Feb 2022 16:23:08 +0000
Message-ID: <SJ0PR11MB5629964CA5FEE19CB8763985AB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220216213738.3826664-1-jacob.e.keller@intel.com>
 <20220216213738.3826664-8-jacob.e.keller@intel.com>
In-Reply-To: <20220216213738.3826664-8-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: ffb5e628-27af-4838-7226-08d9f87b1c60
x-ms-traffictypediagnostic: BL1PR11MB6027:EE_
x-microsoft-antispam-prvs: <BL1PR11MB602740ACCAC5BDA9B1A94E60AB3E9@BL1PR11MB6027.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YLn3paH9upohGNHqxyXWMVAI22M+IUDxSeYMKf7wtHpOUsAa+QCyL7Dvn23mQGS23mnAFc6vuieNVNAvAE4rnXlzdSkgHDYjd3G7ZLIbURU3OrLwR+IHwdLzR51GNL9d8uFxTJGnNOdSF4YbXc870j513ZK9HqkWYG9BNPFIfKK4jdS1avcv1UUMOKuP+4b3uUMTcAFYRIF14h/IiMjRjKGDFO2SYEEBZ7xCzwmc6+hoH/kGzWIr5+z1Wz2Ay8yX/B2gZGsGV90j+kcKoTzrmjetYfXmdZ/1qLeYF3Srb6k/gt02w1D2wtCgAJWAnCEECUaNTgdBS26wOdbz5ck6YpH4CeJYkZ3kcVaEnoVmOC1zgDP2/ebQMpRoxkm1FAJ/EVXIvsLfhYtQZ/4DixnhzCww8opDjJvYzx2n3COmZYyCOUbAPid3UVjEwmMledI3TSFV0kvNMLpwk2gv2x/OynGoMig+GLi4pbkkyBf9F/Td1c4tIeNe6PFVMt15Xf/JiTTxjLcafXMth3x8RrMGjjErvzhAfv1N2AyiMONvmYJdwZKkr4SKBNUFUDx71hdB196Z5DVLfQBdeXCUhmCbnN/OGz3uCdgJQfUowQe74Sjbxvrj6kNUZ8dBfQ5bljpTwa0Blocenf9pwyyqCW9FybCSyfxb8PJwRtOTvHaG4yBjDhun2HEOqvwlchp5jJhZg57My/jS7DZpPXVowxaTeQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(5660300002)(86362001)(9686003)(122000001)(82960400001)(38070700005)(71200400001)(66476007)(7696005)(6506007)(110136005)(316002)(33656002)(8676002)(8936002)(83380400001)(66946007)(55016003)(66556008)(76116006)(52536014)(186003)(66446008)(64756008)(26005)(2906002)(53546011)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cgClPnLl/HD40A0phYkdD2AdN9nSZA3os0Qc0lyvkqoZcxBsMP+HdZ31X0cW?=
 =?us-ascii?Q?9OhQHbX2oyMpvAANjkV46X/a4S8u4Ce1mnUVLSA3W4UnsiflKX+llZVBm+Tu?=
 =?us-ascii?Q?7JR6gnxwnCmOvhPbIrvXc4tE0zvC5EY+1nUmMj2hwxn8PKmr+jJK+43ZA6d5?=
 =?us-ascii?Q?xIUG9aCWbFvbmAB27gmLjS25yA/WPftM3dlw/Ae9C8kjCWrNgkWbnpzvLxUm?=
 =?us-ascii?Q?vXFP9Co564Ht/whTgJOqQnlz62YN9ljsCcCzpYAP+qnkTpT/NVW1Ga46w268?=
 =?us-ascii?Q?Js+7He6YVfEwwgubjO8ehZyj/tdIsOMmbQfp1vc/mRSWmBgbNI8PDFvhDunz?=
 =?us-ascii?Q?YEENsyt1EKt/ygfn38PvaK6rdmNnFYxdoshYchwXDZunWwbNxOCdIOg08C4Y?=
 =?us-ascii?Q?SJy6F8ich9yCSrUhgExq9Ji+Q/8VPu7/R1VqPTLRsH6PhQYMvWtJFtaXVswV?=
 =?us-ascii?Q?2BC6Iw44p6o4kV3BaJTbGWoKLC84ZJv4LWk8b/nIK8kXG3sz5ijRTsZje6V3?=
 =?us-ascii?Q?duYLcjAeu/LHo31XeZKwmHGqzxC+jiUdXRB6APhmAM9Z9+UEcXSgP+wSzq7I?=
 =?us-ascii?Q?EHU0Vw9wuaYVrxLOtlEA5wGojs4wUQx+Em04FlGPmto3FTmDVT+GU4knaDiW?=
 =?us-ascii?Q?W/1sWC8bRmitUlvzRR6qjU0NCCAEyOuBcPHA+fRItNlUDsDiLxOWgYQ2fMCB?=
 =?us-ascii?Q?nWVgdnPukQKqIcagnQnlT3lS0h8og8QN9UfCOiwZ5l04ksJYS4bdsAx2c6Yf?=
 =?us-ascii?Q?EI1rXK6R3BICt5Y6H0uJfZQEmY/1K0YG4NZJZQGZKTbhGc45dVBwnDb6ge0Q?=
 =?us-ascii?Q?flaiezxRSkGrrhFm8U+xRPfvZjNW1SUazj4wodvTSKA9PWompUItxNsMt/V9?=
 =?us-ascii?Q?78KRM3sk/2JtbuxbWlZNss6U0EQiuqJ3ut5ZzMjC8YCDIqs1zhWHdzJ1OflO?=
 =?us-ascii?Q?qKFIgz3hiVl4rSom0SznFEO5JvQPZBiJVeDGK3Mf2EGOIYVjjkI9rdRLHo9m?=
 =?us-ascii?Q?XxOIhIQbQqsyRjZAgwVexdRdFJRztXEsfzpGb0ZpSUsBIvr5gY0CstZCYzz9?=
 =?us-ascii?Q?ucuvSU0xtkgYx1Brt/isT2I3K8v/UEErEXJwI1v3iwVUBx5fjiEFKkMSNfrl?=
 =?us-ascii?Q?FTZB7EeQ7sCQvth3g/xOkPuT8JXyb16VN2FIJb4FoGyfdRaMZyRBgIICP3Cj?=
 =?us-ascii?Q?chcBVDcxck8CtV/FdFxwJmbmEylzQnUZXCNn6a703zRf1/B/mibfcpKes75U?=
 =?us-ascii?Q?O8QFLvfFOhAJomNWE6K7hTJlPeBRj+xj2nhvAB+/i+qCcarj3NEFzf99Gfi/?=
 =?us-ascii?Q?JuCEei1JefvQBNWxtTWTdQu0iLtF470w3jIUfH86ZQWzA3VIlP3giTrDZsLP?=
 =?us-ascii?Q?S26Ajk0bTg7iIuwgZxL/47W8q2ODYJGlJsBDTnu7Q+Aqcbg7YbsfVPZVaY2c?=
 =?us-ascii?Q?GeQeclILS2U8ynatfRlE2GpL00d540BQFBh9j8ysRxWaAZiNRrdJE66PRfrl?=
 =?us-ascii?Q?oKvozM114wsRH76C4BtglyR82Wvo6FLKzYZ4DMFLaOyigKdY4kdvtM8eBd1r?=
 =?us-ascii?Q?zyiZT7kumobid07uZKvsTUKp1LhSe60DvDYZBCVYinzVDXf4YPJyZlVll40G?=
 =?us-ascii?Q?ll1IJb+NGE7X8byXt9AV3jXSBZG5/ikWsnDUH1c8l2oDrrSdf0bCLJSBUOZQ?=
 =?us-ascii?Q?vA/+hw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffb5e628-27af-4838-7226-08d9f87b1c60
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:23:08.9447 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BpmRYHDfyjQy19cfta5aGw279teMyZEcefH39xPBzC3WX1aRfN70B0Mm1OWb8tHpG3jxUDXNZ5HEZRav9qEdapI/umZAhIIjoV3wtCeYhlo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6027
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 07/11] ice: use
 ice_for_each_vf for iteration during removal
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
> Subject: [Intel-wired-lan] [net-next PATCH v2 07/11] ice: use
> ice_for_each_vf for iteration during removal
> 
> When removing VFs, the driver takes a weird approach of assigning
> pf->num_alloc_vfs to 0 before iterating over the VFs using a temporary
> variable.
> 
> This logic has been in the driver for a long time, and seems to have been
> carried forward from i40e.
> 
> We want to refactor the way VFs are stored, and iterating over the data
> structure without the ice_for_each_vf interface impedes this work.
> 
> The logic relies on implicitly using the num_alloc_vfs as a sort of "safe guard"
> for accessing VF data.
> 
> While this sort of guard makes sense for Single Root IOV where all VFs are
> added at once, the data structures don't work for VFs which can be added
> and removed dynamically. We also have a separate state flag,
> ICE_VF_DEINIT_IN_PROGRESS which is a stronger protection against
> concurrent removal and access.
> 
> Avoid the custom tmp iteration and replace it with the standard
> ice_for_each_vf iterator. Delay the assignment of num_alloc_vfs until after
> this loop finishes.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index 6351af58f74e..3e2357460f34 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -500,7 +500,7 @@ void ice_free_vfs(struct ice_pf *pf)  {

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
