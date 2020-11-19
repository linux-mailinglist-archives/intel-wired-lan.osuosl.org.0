Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF632B9B9E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Nov 2020 20:44:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A10D86EA2;
	Thu, 19 Nov 2020 19:44:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tiItGl4XSN03; Thu, 19 Nov 2020 19:44:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6C67D86EAD;
	Thu, 19 Nov 2020 19:44:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 349AC1BF325
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Nov 2020 19:44:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2F01E86EAC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Nov 2020 19:44:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G8HXQLjbJ7j7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Nov 2020 19:44:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E2CD286EA2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Nov 2020 19:44:31 +0000 (UTC)
IronPort-SDR: aGmZez+GPH9QQqY3l23CIf2VMdusp34SMQ9ktyv6SwhsttG6DX0qJOuajJSnhfigURCUlMFYkH
 UD9NR4XCb+Sg==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="159123668"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="159123668"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 11:44:30 -0800
IronPort-SDR: IxBqnq2CH/H5uvNIfZodNtl+zvdPvykryvWC+zFyOl9ldQ4/KTt3zSjXk5tfhpEbDei7WHWZ6U
 WDx6ooTwZHRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="368889554"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Nov 2020 11:44:30 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Nov 2020 11:44:29 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Nov 2020 11:44:29 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 19 Nov 2020 11:44:29 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 19 Nov 2020 11:44:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H3nLI7G0hkW6KGv2/oXI5EuVlmY61QDdVkz3ThbC+tjVzBjZEqSvJpKfpBxLky4RamS+O52mkWu//F87i7Od1S+pAO5duQbwz205g1WVRXJL9QftfUCaQjXF06i+3wZ9DRHwZQ0neD08DXnTb4c3F0PQXCgNYIrE0iCXxaB/jvENx3MYCMNlecFDc/FIpOQ4JkSiGdwjK5REgEIDbxPTlSbyJz1ebiOM3YS2eqxLLfMoVDAg+w1GkgcgydLi7lfd5pqTfkObSER9wfVnt8rH3qMCCy6cAX4SKG1gmPZTjBv8szRGNz32knuWO2KMHpfCg74RXXXye5riZq4AsGGJrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WI88JR0/IiYPJ3edKqichmwkjP8F7wXrMNLeyewAK58=;
 b=nnHh8TCULI5rqVGXdXkcSFqC9DlWGorSQrlh9iD+Dczf+DTf2rEH05loUO4Xw+q1DlpR6a0IOYStnJ+eEphRTlUGP+wyHaMhvucP8E1tfgTLDIUu6pyfqMi62nkG1KbGi00hJvp8oI60JPUsxfY1sc+htuvB4uno/U0G89WpGxU7f1/1dR9Tv8ST40bsp0Eq8suwOhJDCJTJQLMOQBUwVCWOVpSIVYUKWreIkDaN/5+umxCinURK157r285Ke5VkLtG9d2HpZpvHWWKbCCxhkOA8i6FZ20393E+SmPpweFfySL3NMqpMXqwQym47EPwPfB6b/Ti3cHbrGssSJ8QDjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WI88JR0/IiYPJ3edKqichmwkjP8F7wXrMNLeyewAK58=;
 b=V5yt9IrJOMLNjWzVgBu+w6SIiidvnmBNmuKOzpg7xA6V6BuIMs1zE7VDiRDKbhBFCbervqEgdBt4QlIZgnDH4WYOQ3jMCGmbZfz+GRT5AfqEM3/q7eE1k4mcoFhikcAQBdA8FM2Vy2BjqDMOSvhA6ZTUPjj23xvKmR/6SCOqp38=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR11MB1783.namprd11.prod.outlook.com (2603:10b6:903:11d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.22; Thu, 19 Nov
 2020 19:44:27 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::e14b:f557:aed1:9433]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::e14b:f557:aed1:9433%11]) with mapi id 15.20.3589.021; Thu, 19 Nov
 2020 19:44:27 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e-linux: Fix removing driver
 while bare-metal VFs pass traffic
Thread-Index: AQHWnUKW3qtnMQaGR0KoNIDoIFRdLanQHW1w
Date: Thu, 19 Nov 2020 19:44:27 +0000
Message-ID: <CY4PR11MB15769CE691A619D777045B59ABE00@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20201008071305.23277-1-mateusz.palczewski@intel.com>
In-Reply-To: <20201008071305.23277-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.104.149]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0e1eedf6-356f-4d4b-ff80-08d88cc38664
x-ms-traffictypediagnostic: CY4PR11MB1783:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB1783862070A6AFDC792B8E69ABE00@CY4PR11MB1783.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cpUAQxrBWKyzfvs54FscA8OJKtSalK1d10nbo2aHDiZz8UdOgJpf8h3US/bToYTwJzTAhcE2sqm8QhcKGPX8LJzLlnVrkj29MvGg1OqjYUYZpLhF6pXDhOV0D6KkPphzv7NfDDZMSTwxdh6smICb4JWFGaiSvLkLe5P43kLjBQWsWYc3BgvoEWWfX6iPqkXL2Ecblx01PPaxP8G0gUOjhydMkHMhgG1qORJ6q/yIrN1mP4Hs6OJ6G+dtP6RNyg3M7Dm/FMhfl/u4ZtL+gj+tnB81J1QXocHBjX/oB0fFcB5tC6LzfTsC3y5RpezHMbRXPBc6aTeCPhiumFG8hFuN6Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(366004)(39860400002)(396003)(346002)(66446008)(66946007)(64756008)(76116006)(8676002)(66556008)(66476007)(52536014)(5660300002)(107886003)(54906003)(55016002)(316002)(110136005)(33656002)(8936002)(86362001)(53546011)(4326008)(186003)(26005)(6506007)(83380400001)(71200400001)(66574015)(478600001)(2906002)(9686003)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: TLk0xOZTtOTmDvI7/rV1rTf0TZROP+i9xcgZM15/cNfcd72JuD/1TW3wFE9Y9/XBJ+tMFaleLc/2qrXeG95RRpn6BkbPHjUmMfks3daHMQREpszaqr/xxweHmSaQnqtC9t9Hwt6AJDqHsUhH/nAwaeXLnXmTg7RXyRZjNJ+htEnwj+Xq4rVpEzobm5DCKA8Myj0dHPHLxKU5wjM33Azwh6uhDQ/4Fuo4BfPrBAgQdYLpQAbQcEE0IM1OuqNx8DNAFjqUiDD1LY27YPxBIIOMcgCzO1zL3PG7hPaDOb2lW2Y+F0FNZiJXF33V/iQWnUAHmR6xkCrCZe0LeUUENlxf0t8tr0DgxsOVnxVykMRMVdnqwlZrn2xEirV9Ks4H6yi8IOgQ+4kTuVcs6hR6aF61NIlapyqdGeDIySqSuteax3G4rWSicTVOff2/ttpQ7gVOlgm1ZhF5lHZ8kW8MXFOhv25gthrrmLjoiDeubbIZiS7z5hudPGxWvR3OJl2lxMoPAjhEdWloW2ur6dFVearhzYLPCwpFrsqyCFtsWSWb8+3FV4x/NepNxk5VqB8iqjTKA5EQReWBkkkoASk/6pwQbl6x3HKeU55ZCEM+x5Miv4qSsrLz8tX+0a5Az2M/84FPMQTq+kvOPqgvS5CbbVhPLC7jIbem9z4A0kOwxuFbHKSe4W3yM+39E8PIx70jte/YK9zdCVnrLtefloQRM7U8nm7vyha+VcM2DEGm2149an3kB7S6ZDjUA71zVORHEAV8zLBACQAeQCfNScUDA4GlE16x7FCmG3wqwcMQwCuczjHqPaGAQap1powi+g3zItB+hy/pWfKNntV6jGMEv4AB+h3cv/7ymuOow9Wp9GfuHk45X7R6Qcbk2/CWxH2t0j4JDuaSnxE7ZufluEiWCbOvGQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e1eedf6-356f-4d4b-ff80-08d88cc38664
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2020 19:44:27.3172 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EZz7iBN7DSj36hCzR31CVJFdRG7scVWxT4Qpv1bShBBVsjabBtBoEk2AdMUAG6e8vodQk2xn6uYkG9jaIgoC2AmdJcsa9zhZowIBp1x+u7U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1783
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e-linux: Fix removing
 driver while bare-metal VFs pass traffic
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>, "Creeley,
 Brett" <brett.creeley@intel.com>, "Laba, SlawomirX" <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: czwartek, 8 pa=BCdziernika 2020 09:13
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>; Creeley,
> Brett <brett.creeley@intel.com>; Laba, SlawomirX
> <slawomirx.laba@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e-linux: Fix removing driver
> while bare-metal VFs pass traffic
> =

> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> =

> Prevent VFs from resetting when PF driver is being unloaded:
> - introduce new pf state: __I40E_VF_RESETS_DISABLED;
> - check if pf state has __I40E_VF_RESETS_DISABLED state set,
>   if so, disable any further VFLR event notifications;
> - when i40e_remove (rmmod i40e) is called, disable any resets on
>   the VFs;
> =

> Previously if there were bare-metal VFs passing traffic and PF driver was
> removed, there was a possibility of VFs triggering a Tx timeout right bef=
ore
> iavf_remove. This was causing iavf_close to not be called because there i=
s a
> check in the beginning of  iavf_remove that bails out early if adapter->s=
tate <
> IAVF_DOWN_PENDING. This makes it so some resources do not get cleaned
> up.
> =

> Fixes: 6a9ddb36eeb8 ("i40e: disable IOV before freeing resources")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 22 +++++++++++-----
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 26 +++++++++++--------
>  3 files changed, 31 insertions(+), 18 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> index c517c47..4cfaacc 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -140,6 +140,7 @@ enum i40e_state_t {
>  	__I40E_CLIENT_RESET,
>  	__I40E_VIRTCHNL_OP_PENDING,
>  	__I40E_RECOVERY_MODE,
> +	__I40E_VF_RESETS_DISABLED,	/* disable resets during i40e_remove
> */
>  	/* This must be last as it determines the size of the BITMAP */
>  	__I40E_STATE_SIZE__,
>  };
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 1e6f222..56cc5e2 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -4033,8 +4033,16 @@ static irqreturn_t i40e_intr(int irq, void *data)
>  	}
> =

>  	if (icr0 & I40E_PFINT_ICR0_VFLR_MASK) {
> -		ena_mask &=3D ~I40E_PFINT_ICR0_ENA_VFLR_MASK;
> -		set_bit(__I40E_VFLR_EVENT_PENDING, pf->state);
> +		/* disable any further VFLR event notifications */
> +		if (test_bit(__I40E_VF_RESETS_DISABLED, pf->state)) {
> +			u32 reg =3D rd32(hw, I40E_PFINT_ICR0_ENA);
> +
> +			reg &=3D ~I40E_PFINT_ICR0_VFLR_MASK;
> +			wr32(hw, I40E_PFINT_ICR0_ENA, reg);
> +		} else {
> +			ena_mask &=3D ~I40E_PFINT_ICR0_ENA_VFLR_MASK;
> +			set_bit(__I40E_VFLR_EVENT_PENDING, pf->state);
> +		}
>  	}
> =

>  	if (icr0 & I40E_PFINT_ICR0_GRST_MASK) { @@ -15386,6 +15394,11
> @@ static void i40e_remove(struct pci_dev *pdev)
>  	while (test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state))
>  		usleep_range(1000, 2000);
> =

> +	if (pf->flags & I40E_FLAG_SRIOV_ENABLED) {
> +		set_bit(__I40E_VF_RESETS_DISABLED, pf->state);
> +		i40e_free_vfs(pf);
> +		pf->flags &=3D ~I40E_FLAG_SRIOV_ENABLED;
> +	}
>  	/* no more scheduling of any task */
>  	set_bit(__I40E_SUSPENDED, pf->state);
>  	set_bit(__I40E_DOWN, pf->state);
> @@ -15412,11 +15425,6 @@ static void i40e_remove(struct pci_dev *pdev)
>  	 */
>  	i40e_notify_client_of_netdev_close(pf->vsi[pf->lan_vsi], false);
> =

> -	if (pf->flags & I40E_FLAG_SRIOV_ENABLED) {
> -		i40e_free_vfs(pf);
> -		pf->flags &=3D ~I40E_FLAG_SRIOV_ENABLED;
> -	}
> -
>  	i40e_fdir_teardown(pf);
> =

>  	/* If there is a switch structure or any orphans, remove them.
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index b70706d..210d4f9 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1403,7 +1403,8 @@ static void i40e_cleanup_reset_vf(struct i40e_vf
> *vf)
>   * @vf: pointer to the VF structure
>   * @flr: VFLR was issued or not
>   *
> - * Returns true if the VF is reset, false otherwise.
> + * Returns true if the VF is in reset, resets successfully, or resets
> + * are disabled and false otherwise.
>   **/
>  bool i40e_reset_vf(struct i40e_vf *vf, bool flr)  { @@ -1413,11 +1414,14=
 @@
> bool i40e_reset_vf(struct i40e_vf *vf, bool flr)
>  	u32 reg;
>  	int i;
> =

> +	if (test_bit(__I40E_VF_RESETS_DISABLED, pf->state))
> +		return true;
> +
>  	/* If the VFs have been disabled, this means something else is
>  	 * resetting the VF, so we shouldn't continue.
>  	 */
>  	if (test_and_set_bit(__I40E_VF_DISABLE, pf->state))
> -		return false;
> +		return true;
> =

>  	i40e_trigger_vf_reset(vf, flr);
> =

> @@ -1581,6 +1585,15 @@ void i40e_free_vfs(struct i40e_pf *pf)
> =

>  	i40e_notify_client_of_vf_enable(pf, 0);
> =

> +	/* Disable IOV before freeing resources. This lets any VF drivers
> +	 * running in the host get themselves cleaned up before we yank
> +	 * the carpet out from underneath their feet.
> +	 */
> +	if (!pci_vfs_assigned(pf->pdev))
> +		pci_disable_sriov(pf->pdev);
> +	else
> +		dev_warn(&pf->pdev->dev, "VFs are assigned - not disabling
> +SR-IOV\n");
> +
>  	/* Amortize wait time by stopping all VFs at the same time */
>  	for (i =3D 0; i < pf->num_alloc_vfs; i++) {
>  		if (test_bit(I40E_VF_STATE_INIT, &pf->vf[i].vf_states)) @@ -
> 1596,15 +1609,6 @@ void i40e_free_vfs(struct i40e_pf *pf)
>  		i40e_vsi_wait_queues_disabled(pf->vsi[pf-
> >vf[i].lan_vsi_idx]);
>  	}
> =

> -	/* Disable IOV before freeing resources. This lets any VF drivers
> -	 * running in the host get themselves cleaned up before we yank
> -	 * the carpet out from underneath their feet.
> -	 */
> -	if (!pci_vfs_assigned(pf->pdev))
> -		pci_disable_sriov(pf->pdev);
> -	else
> -		dev_warn(&pf->pdev->dev, "VFs are assigned - not disabling
> SR-IOV\n");
> -
>  	/* free up VF resources */
>  	tmp =3D pf->num_alloc_vfs;
>  	pf->num_alloc_vfs =3D 0;
> --
> 2.17.1
> =

Tested-by:Konrad Jankowski <konrad0.jankowski@intel.com>
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
