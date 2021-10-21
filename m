Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4A9435EFC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 12:24:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACFC082C84;
	Thu, 21 Oct 2021 10:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8JxHPg3-TBRh; Thu, 21 Oct 2021 10:24:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 922ED827C5;
	Thu, 21 Oct 2021 10:24:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 417BD1BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 10:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2BAD960EA6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 10:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VJsrLNkt-woa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 10:24:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E093A60D75
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 10:24:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="209101745"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="209101745"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 03:24:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="552555184"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga004.fm.intel.com with ESMTP; 21 Oct 2021 03:24:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 03:24:28 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 03:24:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 03:24:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 03:24:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hmNE+PVKXPK3YNaHnNR0K9aemKVuKaciHRzAiHB16MCm6iR22pSfArXBArUDIHxnemipJzA3Dtbjyx6nosRWjseICdv4lxLRgIhP+Knm7pV1UqRSgjyms7Itg7ULpe3TnSthY+rwiMXLZQm12whhCouwrqxvj7msPn0He0U4d3C2Uko6rYVI/UYQCFTuSbG8z3mVA2w3z+PfgPsv2oAerzgZISuEY7Wu6JyxF0XYaicZfQaMy51DhT7Joy5+3giUbHJgoeGyfJiYCsSXNJGLegv1YN3N6ngfvLvbsoO3/6caslstg6CFaK9N/S3FBzeoe0B5a1xwjefLGsvbUSOv6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YDPQSHAcb4rEng3O4jz42B/S0SngXRNsObHtSVqucPo=;
 b=mqMD/DvRPCZpEmB8XDreUW/a2wfK/TgCmOOdnriepqdDZyY3gsBHvoS8MKMzkU1gcN2gilDzR7HBwHkFixj2A3cGRb6Qy+l5yrbHKN0Usyl2/zF54dPAWoTH1Yr+UG6v2DgheE7I6govRWuM8fXmFgIET/r/6/zTEfbRl/8QykgFmDljvjjounh6fjQn1sC2M9scF1ehPrQg8Wqm9TgnEzYP6UpaCCGq+PY72S7yJMvYYTdYkQ+SaPODPtSzDeItYCnjdsY2+iPt5M7aY0oH2Vkoipr9HAsgwlIn3mD/oHp750yQT7hxIYkZUM/qJyZOJkbRc1MSRwKeSHKFc3EtOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YDPQSHAcb4rEng3O4jz42B/S0SngXRNsObHtSVqucPo=;
 b=i8qF2jFb2fCXT1BLKp2QQrwpW6nhzsyfzBEilTUs5y7KM9DWG9RHgaUz/lElXc0viwCk/cWuz7LW1TV+nhEZr01liMhq6EjFYA3ApQIakumKgCFt/qELzJsTF7P4erNvs1M4W2KX0AfDv9lvyPgnInZgJWb5adTYxiogyXiQHQs=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5576.namprd11.prod.outlook.com (2603:10b6:8:37::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4628.16; Thu, 21 Oct 2021 10:23:49 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%7]) with mapi id 15.20.4628.018; Thu, 21 Oct 2021
 10:23:49 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] i40e: Fix correct
 max_pkt_size on VF RX queue
Thread-Index: AQHW8AE7Rk2iHKczeEKV+RDTRg1yCKve60OQ
Date: Thu, 21 Oct 2021 10:23:49 +0000
Message-ID: <DM8PR11MB562106086E6B5A018CDE5458ABBF9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210121161722.1875-1-eryk.roch.rybak@intel.com>
In-Reply-To: <20210121161722.1875-1-eryk.roch.rybak@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7a96c6a7-2891-4d8d-81ca-08d9947cdf5f
x-ms-traffictypediagnostic: DM8PR11MB5576:
x-microsoft-antispam-prvs: <DM8PR11MB557632F4C3D589AD01AA12EDABBF9@DM8PR11MB5576.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DKxT/LdNRDWDgow6z13gSlNk2FgnVT5JY4/2If060PkXQ/QhEwuyw1mv06isimYdBLrmJ1PXRm/PWM1r4/oN/5TvcJsmjKUjycecZv3B6oCamjyYx/iBTMVWhXpey3DjvPMQofGAEGuwANoSZX/yu8cpxrnFezVGZSeMRN/I95AVsZelZIE7PUhrkseHJb2FMilI48rQKz3NGDy3YePMIy1F/j3FoMceP4cfYL26kgLxRrq4MPhGV71kJBh8jLJv/nJh4riboLunXzo/YVE25ZEwO/V9JF/rSyNC1HgylPiLNRCvXADb1Mcs72l24REmHFh3e6ZFu6Oe9y6azsdimysZxYNzrL0olCgbZRwE9vWtSG7dJ8GL5HirJV7EqbyLJ05T10ddiOiDj0lScCob9Sdl4y/PNTWJZQYdwCk8M7PjaqkgWndis7ZJkfr2YpeZhuVyeI6IDycUMs3CdAwjnrrdfTdHHcvKBS0uGw0J/4pliGGPKpbS7jFvBq4xpiAY3n/80uI6sNMs4Q1Kqi8eOSkH2LaNTo4dsR2eKk303y1o8HkCDPhD2GiUkTNXLH3FutFbrUeTip+LBxjcgPII5E/QNzL540LVpwJrGhsq0rH40lDotwvOa7hPcHDEKoX0qJqTIpB2q0+kUThNbO7BjKM1qUWntYfScU6mhKcy+zMHmIIasuhZinAls3GvETQ26S9NbMu2MbI2S2WOceMWEQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8676002)(107886003)(4326008)(71200400001)(110136005)(38100700002)(122000001)(64756008)(66556008)(316002)(52536014)(66446008)(9686003)(54906003)(38070700005)(508600001)(8936002)(33656002)(55016002)(66946007)(66476007)(2906002)(6506007)(186003)(26005)(53546011)(7696005)(83380400001)(82960400001)(76116006)(86362001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sJMlYxpHsLXS00GOVipddF1WcBIYwRwDHb4tMM2FMh1nfAGmSAa7KXZq6Mby?=
 =?us-ascii?Q?OYaGEeyCQ3ct7BClY1LQHJgU1sBPddpNKHWHq4TtoFGNR5cxLBTYzuszGiLM?=
 =?us-ascii?Q?2LDjmib2Vs9x03LCASvH5hTDo8msEMgmao4ZJ8XddnmO28CsaXpSEdmIhwGR?=
 =?us-ascii?Q?2H7p1krmcWQXV71KaalQyQsvo/VA8n0EAMOTiUiU0hwhtv6JRsd0ku+81AIT?=
 =?us-ascii?Q?hYoOQD1hGWq5pIV7Bxf0dLQdWMKkBkV8pvj6ZqM6N5UnFlZopZxhuyBLlCL3?=
 =?us-ascii?Q?/b2HN4BU3XL2aWS1HjUY3djy1wqjCqJBbrLjNF0LPgylNhCeNYaVHfRAfHt5?=
 =?us-ascii?Q?RLderulThEgXMMGMp2r2cFudXSdSP7VkTeJgYwvLURtf7EQJZv0k9vaiI+bn?=
 =?us-ascii?Q?rU59AHTuf6H5bNe/9Gsio9Q5irGeU4mI8jb5oQ14jVm/q1V0BR+qVjDsIAkF?=
 =?us-ascii?Q?lRC9DRsdvUUy+HY5ylns45r1F5Re1bqp6fYsGWRZYzfXjhmllu2zksNjYGSr?=
 =?us-ascii?Q?cxlAUrO+HE/XI0JSHqSO35oHRrmvTXI9MryQkAXi1izvXxgZFV1/9nvndIOA?=
 =?us-ascii?Q?PbaHBLIEcWEi+Eu+dzKWKpNiW4Shy9/Zn8IUwF3d9juVVAX/VKQuUOttNkRp?=
 =?us-ascii?Q?t0lh4qToOPNl8iOIybhYt/amY/VZ4IK1PcZ6gXEEQSpeYijfQdykxslab3Qb?=
 =?us-ascii?Q?Rjn2mmCGswX0cZ+KO2buM9e5Jd8ceoSWMP5WMazUma1wcAiZVwfK9XLnd+LT?=
 =?us-ascii?Q?vk3DBN4bWwU+apus848WQ8OiMcdevkbfc3T0qZwQnETgdd30IuQdMfAYYd9I?=
 =?us-ascii?Q?p5vjdSxMHKqLxW1p6xp7qAvUIoPFEaYDT6UJ8xQmO7xXyeFFpxzyVaUn7atE?=
 =?us-ascii?Q?UbJ+Vu+kqaQRhq34hx97hGm6VaH+C9bE+gIN90O0uSm/eMmCQX2ofQouvMUD?=
 =?us-ascii?Q?09gZNyUEI9Q1U5Ll9J/IViqTJ2lYuozcBtmFcngCYC5g5JUEUBdOyvNbcEY/?=
 =?us-ascii?Q?uBZVG+Q6M6opjf10DUoFuDzXXD61aVVZ9fSihGDJ7k7vvTWkosYICQgFCExm?=
 =?us-ascii?Q?4z8FAK6qXVeMRL6iss6mdVNpUJGZRIvrHYwpuigsWtv2egHYqW+8/JXtkGB8?=
 =?us-ascii?Q?t093yp8YT51J8eDxbmzo6PCkzbuhpVl3gOCJR62Ut0l4FqKNBz5vzuJCWjT/?=
 =?us-ascii?Q?dSkCHK2x3qOTqpCTrCH4THjF3xnoPlUKxb4C/83/hIxcB8TsHsIH6UOw8PMX?=
 =?us-ascii?Q?q3gEcovQDBrf/JwGcGDKvb0DjOHA+NBB5yq3ZejTRt1Uhss8F90W7ZBObk53?=
 =?us-ascii?Q?/17SUjWPxtHdFzYVdB7UQ5HhcMosCYUGIuvQsTlomJackmh0grfDb/6Jryni?=
 =?us-ascii?Q?6faRaED6y04K+BWzF9Hy3OWiLA7crOFmkgQzgS4A2a0ZGJrRCPw8LtNq8bdy?=
 =?us-ascii?Q?L9DQRDO5NRxIeLUJcXidMg3vA8zSaCUa?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a96c6a7-2891-4d8d-81ca-08d9947cdf5f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 10:23:49.2426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: konrad0.jankowski@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5576
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: Fix correct
 max_pkt_size on VF RX queue
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
Cc: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>, "Dziedziuch,
 SylwesterX" <sylwesterx.dziedziuch@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Eryk Rybak
> Sent: czwartek, 21 stycznia 2021 17:17
> To: intel-wired-lan@lists.osuosl.org
> Cc: Rybak, Eryk Roch <eryk.roch.rybak@intel.com>; Dziedziuch, SylwesterX
> <sylwesterx.dziedziuch@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next] i40e: Fix correct max_pkt_size on
> VF RX queue
> 
> Setting VLAN port increasing RX queue max_pkt_size by 4 bytes to take
> VLAN tag into account.
> Trigger the VF reset when setting port VLAN for VF to renegotiate its
> capabilities and reinitialize.
> 
> Fixes: ba4e003d29c1("i40e: don't hold spinlock while resetting VF")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 53 ++++---------------
>  1 file changed, 9 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 7efc61a..4a4be04 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -621,14 +621,13 @@ static int i40e_config_vsi_rx_queue(struct i40e_vf
> *vf, u16 vsi_id,
>  				    u16 vsi_queue_id,
>  				    struct virtchnl_rxq_info *info)  {
> +	u16 pf_queue_id = i40e_vc_get_pf_queue_id(vf, vsi_id,
> vsi_queue_id);
>  	struct i40e_pf *pf = vf->pf;
>  	struct i40e_hw *hw = &pf->hw;
> +	struct i40e_vsi *vsi = pf->vsi[vf->lan_vsi_idx];
>  	struct i40e_hmc_obj_rxq rx_ctx;
> -	u16 pf_queue_id;
>  	int ret = 0;
> 
> -	pf_queue_id = i40e_vc_get_pf_queue_id(vf, vsi_id, vsi_queue_id);
> -
>  	/* clear the context structure first */
>  	memset(&rx_ctx, 0, sizeof(struct i40e_hmc_obj_rxq));
> 
> @@ -666,6 +665,10 @@ static int i40e_config_vsi_rx_queue(struct i40e_vf
> *vf, u16 vsi_id,
>  	}
>  	rx_ctx.rxmax = info->max_pkt_size;
> 
> +	/* if port VLAN is configured increase the max packet size */
> +	if (vsi->info.pvid)
> +		rx_ctx.rxmax += VLAN_HLEN;
> +
>  	/* enable 32bytes desc always */
>  	rx_ctx.dsize = 1;
> 
> @@ -4118,34 +4121,6 @@ int i40e_ndo_set_vf_mac(struct net_device
> *netdev, int vf_id, u8 *mac)
>  	return ret;
>  }
> 
> -/**
> - * i40e_vsi_has_vlans - True if VSI has configured VLANs
> - * @vsi: pointer to the vsi
> - *
> - * Check if a VSI has configured any VLANs. False if we have a port VLAN or if
> - * we have no configured VLANs. Do not call while holding the
> - * mac_filter_hash_lock.
> - */
> -static bool i40e_vsi_has_vlans(struct i40e_vsi *vsi) -{
> -	bool have_vlans;
> -
> -	/* If we have a port VLAN, then the VSI cannot have any VLANs
> -	 * configured, as all MAC/VLAN filters will be assigned to the PVID.
> -	 */
> -	if (vsi->info.pvid)
> -		return false;
> -
> -	/* Since we don't have a PVID, we know that if the device is in VLAN
> -	 * mode it must be because of a VLAN filter configured on this VSI.
> -	 */
> -	spin_lock_bh(&vsi->mac_filter_hash_lock);
> -	have_vlans = i40e_is_vsi_in_vlan(vsi);
> -	spin_unlock_bh(&vsi->mac_filter_hash_lock);
> -
> -	return have_vlans;
> -}
> -
>  /**
>   * i40e_ndo_set_vf_port_vlan
>   * @netdev: network interface device structure @@ -4202,19 +4177,9 @@
> int i40e_ndo_set_vf_port_vlan(struct net_device *netdev, int vf_id,
>  		/* duplicate request, so just return success */
>  		goto error_pvid;
> 
> -	if (i40e_vsi_has_vlans(vsi)) {
> -		dev_err(&pf->pdev->dev,
> -			"VF %d has already configured VLAN filters and the
> administrator is requesting a port VLAN override.\nPlease unload and reload
> the VF driver for this change to take effect.\n",
> -			vf_id);
> -		/* Administrator Error - knock the VF offline until he does
> -		 * the right thing by reconfiguring his network correctly
> -		 * and then reloading the VF driver.
> -		 */
> -		i40e_vc_disable_vf(vf);
> -		/* During reset the VF got a new VSI, so refresh the pointer.
> */
> -		vsi = pf->vsi[vf->lan_vsi_idx];
> -	}
> -
> +	i40e_vc_disable_vf(vf);
> +	/* During reset the VF got a new VSI, so refresh a pointer. */
> +	vsi = pf->vsi[vf->lan_vsi_idx];
>  	/* Locked once because multiple functions below iterate list */
>  	spin_lock_bh(&vsi->mac_filter_hash_lock);
> 
> 

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
