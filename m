Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 010FF2DADC5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Dec 2020 14:10:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 371E386C32;
	Tue, 15 Dec 2020 13:10:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XP4POw0b5dpS; Tue, 15 Dec 2020 13:10:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99E0986C89;
	Tue, 15 Dec 2020 13:10:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 442C81BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 13:10:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3C81486D56
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 13:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YfIZlJRiiLhu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Dec 2020 13:10:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6B1DA86D33
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 13:10:51 +0000 (UTC)
IronPort-SDR: PdXju1yVyEaS9Qs09ESAqkiSRGyNaq/WcO/rmDqqFW0Jyi1KvWwPB0R0oym3F8TiO8qXCQ+k9f
 6zCkpZVSiOhQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="174982533"
X-IronPort-AV: E=Sophos;i="5.78,421,1599548400"; d="scan'208";a="174982533"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 05:10:42 -0800
IronPort-SDR: PQvC4sPObYl+AYg509C0/3blYz+o+LQ42g+IbU0BprRJTxR+Uhz9AFdF4Pk3M+6Z5w8USBBudZ
 S+OTKT7FHGNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,421,1599548400"; d="scan'208";a="390630125"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Dec 2020 05:10:42 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Dec 2020 05:10:41 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 15 Dec 2020 05:10:41 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 15 Dec 2020 05:10:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eYRkaKngsxUAuZPK0EJbpokrdu3bT/x2yPOu5G1wS1m2xLZhGsKeIEStXJzJ2skDRpt6QfAe2j/uO6ReaCLIK6zw1CKP0fFsPBrjGxNhIBohHDg3UIqF58VpuXkYqDXDyqwUIQEiafl5HJEPr8fSAyo1+FRFJaFAEh1pbRX6Doea7UQ/nOV3rJ36WHEJqLeXdU9GHzFudLvBYH+yICB0zYLFoGJiNs6Itt3wdmr7Ni4M+6Kpue54isHJ/a8hfTVDtU9Q1n9+RpWJDBTVKsKGLjsvmj+uhEQGsdM/4+/ksMcqqm4VVmw8cPK0ED/9l2LmwyPX7/N9ysCiaG0cUkuVww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8HcnZP5VU1Et6YzagXQIiNj0fofMeSqHKEDwclUc+Ac=;
 b=DkmeGBuJQnJUK4xgV7K1sDw5J8CDanScvdO905Vx22Pd1Be7NZOQOFDCHrxgd+pNUeZg0D8SC8vi80wNXFrtRNeCGHuR3YX6lpttBzcbcAgkOvvw6KZKTlt1j07N7t0Vvpgmp2rluCYZZEAJ+4Aun2NqYIirVG5vlffncLakFtOfRditot8N2T8FhUMIDSRXDtbqIqNSfXsl22SVuI8b4hy0U0QiGaBl93ILfmbJwq/rYMYbWmENaZkAol3b2eyEhGOMC+giAVyC442le7gyJQSqCCNOyEmWjwn8p+TFwnRkK9l3zFD7xbeRbIQfh+FU2FUY1LNDGSphLTlWYvJP1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8HcnZP5VU1Et6YzagXQIiNj0fofMeSqHKEDwclUc+Ac=;
 b=oGKs/ATVW30/W9H7POa96ewTqnPTHipU/s6mcXSYTJymLNh4xFYRZCMJ/THFENsUramYxJkQWBxTzTlN9eZQOM4S53zCNP/Z9xqkCZhNS8VVhn/CR0boRx4EvZ0vHtqITY7Q0DUekNJxDTixu+3BvgsuU0DlEC/YqajEH+M3apU=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR11MB0039.namprd11.prod.outlook.com (2603:10b6:910:76::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.15; Tue, 15 Dec
 2020 13:10:41 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::e832:8392:8dea:28d7]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::e832:8392:8dea:28d7%7]) with mapi id 15.20.3654.025; Tue, 15 Dec 2020
 13:10:41 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix Error
 I40E_AQ_RC_EINVAL when removing VFs
Thread-Index: AQHWqF/MInFgbuwUAUyt8EYRWiINUKn4dmyA
Date: Tue, 15 Dec 2020 13:10:41 +0000
Message-ID: <CY4PR11MB157694B1D4911821E01B0682ABC60@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20201022103936.1586-1-mateusz.palczewski@intel.com>
In-Reply-To: <20201022103936.1586-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.103.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 77198360-7c32-4c5d-7e9d-08d8a0fad2cd
x-ms-traffictypediagnostic: CY4PR11MB0039:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB00397B73706260E73AD11A40ABC60@CY4PR11MB0039.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bH1n26M6boBW3Lhr7ygZp9k69xz8h9o5w2hTFurPHPMANnp+0UhGYfNPSmXaUHnQzjAaHZJPk0WFgj3/DPTHagV+J+KqVW3R3RLP5ds5Rc8UgzowfFlJZSRAOGt6oldhoIp8t5mrfGi+f6n8/kaIgJYXSZ19uSGJ+pI4I3vLTPtApBtnBC57HCcPkhEFfR6ojIrqiJdbT7bbC7X1yuNfd4HP3ORzP6nb0UUjxMgbCoVagW0UbT3WiPXQlIZTpGCoHdss3+0YT3BRuJEUYvSswt+ISx59pCuhfafk+Ji5bwcXzqvhA4f2d6N+hG6aFiKWG93qgFonp9Xk75dabTaxhg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(136003)(376002)(83380400001)(86362001)(66574015)(26005)(186003)(9686003)(107886003)(55016002)(64756008)(2906002)(76116006)(6506007)(66446008)(66556008)(52536014)(8676002)(53546011)(66476007)(5660300002)(8936002)(54906003)(7696005)(110136005)(66946007)(71200400001)(508600001)(4326008)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-2?Q?gl/0ixpJOBl67rBnzJ5ZMKzXzj0oORGb3sBdrznM+4BwEz0LuihHggNA4w?=
 =?iso-8859-2?Q?upUFKNjQcNubuZv7ZkNliRtta2YQoqzSvrxs4A3Fz1J3mBIrAAwwVaIAFc?=
 =?iso-8859-2?Q?pIWoo5ZD2lasN8ZK8HR05wcKbRFeqyKTX2U3IhsVz2Aun+Jgq/EZT10gxR?=
 =?iso-8859-2?Q?po8LtMnBrZXGLNLBT+gpk7r/hozgIzUoXdvKRngdfD0fFrF09+T9Tab+3f?=
 =?iso-8859-2?Q?38sGYu2GsK5rQDE43ClmP3ERVTqlV3ehrGZSftPv+DAN/gcEhTOGUViDqN?=
 =?iso-8859-2?Q?uD2yf35iGXkuf72YGq01qAtErYpJJffiT7BKdRmBpVC3ht5XHU2CyTwjNx?=
 =?iso-8859-2?Q?Fx4qC1ONcX12uMm1ExQ2ybF51Nmq4xbVkRV+TDN805NSeBY19b+Ljw/ROd?=
 =?iso-8859-2?Q?OBoCNAOXQ+awojcQAg+4aZ65LObhDBxKwrM4P0YDHKRXfsijR0JCWHx2ZZ?=
 =?iso-8859-2?Q?odiZSfokAKbg+y/oWpmkRC0a7JeiaBmffMPy83nX9tmCy2J7UOHXgLeBcE?=
 =?iso-8859-2?Q?4vOmzAtAaAM6YdM3kf4DaIiwjsaVQGa21oiHbhNsRMkal7MbpGgJ0PjZOX?=
 =?iso-8859-2?Q?+X9zFaeW92YSkgkqRf/B9E2gGqm9bUBX1TL6YkArgWG+lC3IVBpdyDn9v1?=
 =?iso-8859-2?Q?Ejj/R462UgKCZ6zNwujh2xeAQQZ5fmPu8X/sXcTLUNonGcgYdzAuSAx8Hd?=
 =?iso-8859-2?Q?IbRrkk9UzrDdt3HDGU14cp2lbenJCxOwHK5wsbkNiFQVh72fiebMXO17Yr?=
 =?iso-8859-2?Q?u98YOEvvIgrq9XPJF05G8HYOIh/Vt9oWor/L3X4u7Eho8AWAqbaMTEB+8Q?=
 =?iso-8859-2?Q?dwwDvWp4AUfu5H4JpM1Ny/2ibUf6H5Za6rVw2YjfmaHsAWxJM5ztdh+LVW?=
 =?iso-8859-2?Q?1ThVNhkdKeaD4DJOROVNyQ69SsNjDz8tk2j8Fto1pArGe2ZnFmZCI7fWpE?=
 =?iso-8859-2?Q?4wi28d/t9FhCirB8tusjxDzwRbPuDh45jmcX9ndbA4eOxu7vbjg3COqZDi?=
 =?iso-8859-2?Q?PRYq2ZwcLiHFqRl/I=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77198360-7c32-4c5d-7e9d-08d8a0fad2cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2020 13:10:41.0876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V+PaxCoNkDYQN3bAFo1YqWoYD0F0GMYj60vzpY4kir0dLfaxAcfjPgz3YyvQgDQgwhYmCuNx/IXtjM7evqnLdHUXKyqZC3btIH99q1xhOlI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB0039
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix Error
 I40E_AQ_RC_EINVAL when removing VFs
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>, "Dziedziuch,
 SylwesterX" <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: czwartek, 22 pa=BCdziernika 2020 12:40
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Dziedziuch,
> SylwesterX <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix Error I40E_AQ_RC_EINV=
AL
> when removing VFs
> =

> When removing VFs for PF added to bridge there was an error
> I40E_AQ_RC_EINVAL. It was caused by not properly resetting and
> reinitializing PF when adding/removing VFs.
> Changed how reset is performed when adding/removing VFs to properly
> reinitialize PFs VSI.
> =

> Fixes: fc60861e9b00 ("i40e: start up in VEPA mode by default")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Reported-by: kernel test robot <lkp@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h             |  3 +++
>  drivers/net/ethernet/intel/i40e/i40e_main.c        | 10 ++++++++++
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c |  4 ++--
>  3 files changed, 15 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> index c517c47..f1f0fe2 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -120,6 +120,7 @@ enum i40e_state_t {
>  	__I40E_RESET_INTR_RECEIVED,
>  	__I40E_REINIT_REQUESTED,
>  	__I40E_PF_RESET_REQUESTED,
> +	__I40E_PF_RESET_AND_REBUILD_REQUESTED,
>  	__I40E_CORE_RESET_REQUESTED,
>  	__I40E_GLOBAL_RESET_REQUESTED,
>  	__I40E_EMP_RESET_INTR_RECEIVED,
> @@ -145,6 +146,8 @@ enum i40e_state_t {
>  };
> =

>  #define I40E_PF_RESET_FLAG	BIT_ULL(__I40E_PF_RESET_REQUESTED)
> +#define I40E_PF_RESET_AND_REBUILD_FLAG	\
> +	BIT_ULL(__I40E_PF_RESET_AND_REBUILD_REQUESTED)
> =

>  /* VSI state flags */
>  enum i40e_vsi_state_t {
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 672dc2c..5fef34f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -36,6 +36,8 @@ static int i40e_setup_misc_vector(struct i40e_pf *pf);
> static void i40e_determine_queue_usage(struct i40e_pf *pf);  static int
> i40e_setup_pf_filter_control(struct i40e_pf *pf);  static void
> i40e_prep_for_reset(struct i40e_pf *pf, bool lock_acquired);
> +static void i40e_reset_and_rebuild(struct i40e_pf *pf, bool reinit,
> +				   bool lock_acquired);
>  static int i40e_reset(struct i40e_pf *pf);  static void i40e_rebuild(str=
uct
> i40e_pf *pf, bool reinit, bool lock_acquired);  static int
> i40e_setup_misc_vector_for_recovery_mode(struct i40e_pf *pf); @@ -
> 8581,6 +8583,14 @@ void i40e_do_reset(struct i40e_pf *pf, u32 reset_flags,
> bool lock_acquired)
>  			 "FW LLDP is disabled\n" :
>  			 "FW LLDP is enabled\n");
> =

> +	} else if (reset_flags & I40E_PF_RESET_AND_REBUILD_FLAG) {
> +		/* Request a PF Reset
> +		 *
> +		 * Resets PF and reinitializes PFs VSI.
> +		 */
> +		i40e_prep_for_reset(pf, lock_acquired);
> +		i40e_reset_and_rebuild(pf, true, lock_acquired);
> +
>  	} else if (reset_flags & BIT_ULL(__I40E_REINIT_REQUESTED)) {
>  		int v;
> =

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 8951740..8987295 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1776,7 +1776,7 @@ int i40e_pci_sriov_configure(struct pci_dev *pdev,
> int num_vfs)
>  	if (num_vfs) {
>  		if (!(pf->flags & I40E_FLAG_VEB_MODE_ENABLED)) {
>  			pf->flags |=3D I40E_FLAG_VEB_MODE_ENABLED;
> -			i40e_do_reset_safe(pf, I40E_PF_RESET_FLAG);
> +			i40e_do_reset_safe(pf,
> I40E_PF_RESET_AND_REBUILD_FLAG);
>  		}
>  		ret =3D i40e_pci_sriov_enable(pdev, num_vfs);
>  		goto sriov_configure_out;
> @@ -1785,7 +1785,7 @@ int i40e_pci_sriov_configure(struct pci_dev *pdev,
> int num_vfs)
>  	if (!pci_vfs_assigned(pf->pdev)) {
>  		i40e_free_vfs(pf);
>  		pf->flags &=3D ~I40E_FLAG_VEB_MODE_ENABLED;
> -		i40e_do_reset_safe(pf, I40E_PF_RESET_FLAG);
> +		i40e_do_reset_safe(pf,
> I40E_PF_RESET_AND_REBUILD_FLAG);
>  	} else {
>  		dev_warn(&pdev->dev, "Unable to free VFs because some
> are assigned to VMs.\n");
>  		ret =3D -EINVAL;
> --
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gos=
podarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapi=
ta zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i mo=
e zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci=
, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek prz=
egldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). If you are not the intended recipient=
, please contact the sender and delete all copies; any review or distributi=
on by others is strictly prohibited.
 =


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
