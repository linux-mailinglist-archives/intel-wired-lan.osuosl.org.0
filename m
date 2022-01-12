Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7AC48C261
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jan 2022 11:36:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C37E831AE;
	Wed, 12 Jan 2022 10:36:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GjGqZ4KYRXgh; Wed, 12 Jan 2022 10:36:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57BF281D73;
	Wed, 12 Jan 2022 10:36:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D71F1BF831
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 10:36:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 36F98409D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 10:36:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hhyhHT6TM_d0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jan 2022 10:36:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3BB45409A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 10:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641983780; x=1673519780;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BJwB8w4yGKInsxVUgSiTQCY0SoblPLh+tqHZT5Cbjzg=;
 b=EJRVFLXqdtq1Jk0BNkQJqu88QB2+XM3gs2x7JX2rOV8IvAof+Asg+MG3
 brslmcatWo0qa0by3IY3dzXNwYKvpixVnybifzUA0fZ3kMed8xyyGjS4H
 RQLC98GY4Ub1+3Ensq+TeZFe+Ukrao7eGswtH6mR1FaPM2WlAIvwGAp4v
 4lDcZmmkKmBhIhnnxrY5V3j9nlDt6sPlq9eP0T8B3EO9lvvrAhemGBfY3
 Cd9L3scHpM4EtL++oKOR8RlXifOGXcVcU8fDm9jNNin4VniW5mR5PwdRr
 QQ/wqcX/yx7wk55mb7bY2nKeLA7YCjYTZk2DpJlxwRZgDRRfcWMuobgCZ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="243503573"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="243503573"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 02:36:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="623395067"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga004.jf.intel.com with ESMTP; 12 Jan 2022 02:36:19 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 12 Jan 2022 02:36:19 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 12 Jan 2022 02:36:19 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 12 Jan 2022 02:36:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V94chNm0xL4bqaxMJRgWksmv1++zrMVoGa7Hkicvri6vVWb51pDWYxWeFzyQ6y3u4LPN1cibc/7wIDliOQLvizPinrxIXKJ3z45wK1t0oilrSfCt17K/x1ZFODlHQj1zhbeNPhT6bdFldgmsY6c4jN3v6DTG7bivPh9QNlR9pdpAg69cR4P1skP+hVX66CkRiDuMHPSil/XqQyV70Blzqd3eX8bkJ7wR1stzQ6BhnK7PuOHQr0pohKoRVp9+al+LUlMjynZFIiqSDpYgRyIXobIwhv2R9xizeEgP9XSm/diCL7/aPiP7VH4Txq5gxz+phz68Ulym2UoCmwsfUgGLgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mXUMBowSLrQtxmojs0xKgvx7diGPEyl/+k9YQOgpy5c=;
 b=N6tIpZIHDJYjRfjQHwoeSBq4xxp6zizCfSJku37nufV8Vbky8E1khbPDrhr1z2qbpUkvS3HLrFXC1M5GG3qxp+j0qohk4j6BOgUTQKyE1nRrWkQ7s0gZTo0K6d/NjNuJUeGzn8sV3vIiDW3Wy8f+MMcx57oF2Y7H31VPrFrMISYvMX/++XaOvOfv+jXVCnX1GCTcZAeVGsbkEQcZC8JBIhp6D0DzQpfP6EWqVuxRPMXXWgcN1GViaIH0nhtB/6+2g1G72ho0iYAzPf9ezDmJSOjv9Y0Jkn/Nj64dklkg1CUSp1RZVVo+EplXJ9jStXe5Vskn18NUfuK96ImAhVS7tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5654.namprd11.prod.outlook.com (2603:10b6:8:33::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4867.11; Wed, 12 Jan 2022 10:36:10 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9%5]) with mapi id 15.20.4888.010; Wed, 12 Jan 2022
 10:36:10 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] iavf: Add support for
 50G/100G in AIM algorithm
Thread-Index: AQHYBjPch82GJ9wrlkSKGFmb7gVnVKxfM9sA
Date: Wed, 12 Jan 2022 10:36:10 +0000
Message-ID: <DM8PR11MB562177A23CBA00A4A7545745AB529@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220110150638.24305-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220110150638.24305-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 58c2802d-832b-41a9-54d6-08d9d5b7599b
x-ms-traffictypediagnostic: DM8PR11MB5654:EE_
x-microsoft-antispam-prvs: <DM8PR11MB5654A18CD8D9C04E09A9F9B2AB529@DM8PR11MB5654.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qHSh20I6DgbGR7izdvxNBKOuv1w/PYxnFfEzfBV5Xc6kUaT2NfLehPY/ObKbKFXNWhtN9hSmwjGBWDbh0IsJJdWJpifGgYB3tvQNBUUwae79IFRHt6QUg+L2sn6AnDrPZAgtaczoIwpW1pqWMA7eYyCEhWZpqLLbzGAkcr+IEvrIc0i3cG80XRor28Nt0aAgzub5Wz/rXr3X2vU0dParaf10Rb80pblhxnOy7rF8PKT0aO3GfkYLZTYla3U5sUoa4Tzk4UtpY6tyj3GWOI+wiYfsT/rolhqUMnS8oQj1rDcQaF3G6vJIIkyDqQcrqruvJCRYht6SXvv1sQ40zFTlM1SPCLGgy0PJZ5efe+wrW1DVU/yNhgtn9gqMTBGqp9DO6fvWzCUbQIhbvic0IleHSm2htVmYiJlUG9+PxEUWq2bs/AzcFajQDD0yoONKePHXGw+VNpd7oLrr6s8AMVVFDlUGqAwaWrc3sn1gNCMSorixmsOa+5uRrha76KqrUkqXs0/fTLdX6d6q8H7G6InMrUKGsUQEBMzN+nhgg8jLP9vnqD9uZ4C3GsXwuL/B9Ag6AwV1f/IhPhW8F3s9IIFRwFx4xSeBp+OTqIxbBd951/oYefn5Qp29zlBHBi2bjCO24iqwohJecV5FVfhuhT5VmiMj1B1k/QhNyHcVx35g5WJkJd3UiPuzDlQlz5zfkoYDRTpw4rt0sX4zs8m+oyTXRw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(53546011)(82960400001)(8936002)(76116006)(4326008)(6506007)(71200400001)(86362001)(66476007)(66556008)(5660300002)(9686003)(66446008)(54906003)(8676002)(66574015)(64756008)(38070700005)(55016003)(66946007)(38100700002)(33656002)(316002)(122000001)(83380400001)(110136005)(107886003)(186003)(7696005)(2906002)(52536014)(26005)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?82e5bdMeNAN8DdQ4SLupQMrm7thfSlsbR35QINH6UyRJdXnnnoGs1wSg6N?=
 =?iso-8859-2?Q?UpoTjPx/VbUEXQ2A08caGBhr73b0EbaP0JgtXUkOw/WF/QVshPXtPaP/FN?=
 =?iso-8859-2?Q?umgOEsoYfv7wyXebkJo0Hhw4C6kQVi/C1wiQ1us1ElUfxdTbnR40NPYWhF?=
 =?iso-8859-2?Q?Qdc74Lz+yDWkwhVEITDn7PaOGrYqlrM4oSwyXOM+8fAbpLgdtYZMelNuvB?=
 =?iso-8859-2?Q?jVKPqrjFEqS+xhX5cx+A1XoiRcf6bhxE8KRtnBbPJ7hLpAikgawYcpG14D?=
 =?iso-8859-2?Q?yX5rWSDuEopGMWKhpc8IZ3nHvIRsEhTtd13JSCu5PnGrrOPXMJJUXfWykG?=
 =?iso-8859-2?Q?gORC53icUn9DgFnhPLcJhEuvBov23sM1KFctBmauhxCrwTLza4FrxdVnXu?=
 =?iso-8859-2?Q?KR01QUwTtY0RvGa2mriSCvZUyDC6v7lRjBBUA13DxR8EOsG9BJnSf1JQqH?=
 =?iso-8859-2?Q?Wkht4KckMGli5tF16DdVdsjUhydd8JfIM4aMAYZmnkFZqCddYNgSAMr3jF?=
 =?iso-8859-2?Q?EWhZiTCnwoplP/VVc4utnAPf0W2VsTdn5DZ4mz2xvzEpgsJ+SuP9jwbBid?=
 =?iso-8859-2?Q?EcChXWGom20IOsy5JKTZU+Zeie8qXSzAwa7ZzxjqjCNl4853SKc1Udjq/r?=
 =?iso-8859-2?Q?/QTYqJGk0kJeXwNnl09/qMLLR+mYN/84BeteTEkIFEQ82K/UT4LpB92CnJ?=
 =?iso-8859-2?Q?5AVQf3R4yiWJ8UBSfWt+PXnx5Qq4V/3cS6Ki8obxKGQczJKGRE60MV7+3s?=
 =?iso-8859-2?Q?ig/Er4TY1HN7I9ZEiM2aFivk2F4WYKztfzWzOjnp8ZuD6ovncutAY9FQAC?=
 =?iso-8859-2?Q?YuDj0vrT0E2vPwEYcmzJDmSF0e2t3A01iC99+56Jz0CmNSvFwYw2Zao7F2?=
 =?iso-8859-2?Q?C3P57xUklCyKUpt93TVfan+HHSdMso3iVqV7W3EQE3Snev0mNLTd3+NrFV?=
 =?iso-8859-2?Q?lUq+3AmYg48tNVdKGKNvXSNalYr7i2fIp9mv2u8b849LrQrUktHR+vsTRO?=
 =?iso-8859-2?Q?4iOIYlN4qc1VMDqd5LgP6cGwVFXg/q5vuMmnjkaKdsFF4k90V817KtNH87?=
 =?iso-8859-2?Q?YiMH8Tynj6lFL12EM+7SoTT6iHUR6uJfUoVaklnIbIJwfHoZLOq2NFJO5R?=
 =?iso-8859-2?Q?vNALkQoR+nrSpeJVSzjf1fYNOm9d9SKV5Hk2+4QBOAPEa3BFw5KR+m1hft?=
 =?iso-8859-2?Q?zmK3PsfULYJdi7A6Wkr/fD0AzdniGoAVYx5Su3s7J4OBvrc/qOaa8tpW8r?=
 =?iso-8859-2?Q?aMxw8miYjNYlPKFs6nb+3veTt3YNPds9ihPgxQvZCRzobLDE6QWfqcIFwd?=
 =?iso-8859-2?Q?Z0eGhkbbKNGXteoRaAqtLOR8/eg11AO/tjbR6w0Jj9qC08QlMHRX98tIL5?=
 =?iso-8859-2?Q?/PMqMgp4OZ1S02I9Mm+3oEWqkejJsOhSHnPGU9KsIhuVaBtVmSeOfG953x?=
 =?iso-8859-2?Q?RCDun4mCITcYCYw85ksLgdMEpiTcD40RMVXyiqGS1V7BmbyNZKBV28pL/d?=
 =?iso-8859-2?Q?PtDy4J3kqOn/EMKl92XoCPpBHbOfko0zBjfD4FxlWOGoipM5QB1ndeoewr?=
 =?iso-8859-2?Q?82aWQZ+MGwZYUJYwAhgbyYZ384Fnqasp94ctlZA1oQ+UgV9QxSDtJFmqqj?=
 =?iso-8859-2?Q?oI4xC40jfPUDDSvCga1wfhoorbmPyrBSBLg+Z7gw+3mvKdGv8/yxYK4lcH?=
 =?iso-8859-2?Q?GggoR1wFKUii/bTNCFx/S/TNq5ZMhTb905sB9myd1yUHhQ7SVosuQ3Y2qU?=
 =?iso-8859-2?Q?vmsA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58c2802d-832b-41a9-54d6-08d9d5b7599b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2022 10:36:10.8094 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +cOjhuc2tBrIfEzNCIOFPUitAbLzM7PMEVEbO2SbqE/6NHK5XfzJIg7dU5N9K6CBOfEIxlccllhu7MTCWIBdQay4X6T6uuKj3Eo8XcG67YI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5654
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] iavf: Add support for
 50G/100G in AIM algorithm
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 Brett Creeley <brett.creeley@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: poniedzia=B3ek, 10 stycznia 2022 16:07
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Brett Creeley
> <brett.creeley@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3] iavf: Add support for
> 50G/100G in AIM algorithm
> =

> Advanced link speed support was added long back, but adding AIM support
> was missed. This patch adds AIM support for advanced link speed support,
> which allows the algorithm to take into account 50G/100G link speeds. Als=
o,
> other previous speeds are taken into consideration when advanced link
> speeds are supported.
> =

> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> ---
>  v3: Fixed checkpatch errors
>  v2: Removed build issues
> ---
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c | 62 ++++++++++++++++-----
>  1 file changed, 47 insertions(+), 15 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index 8cbe7ad..978f651 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> @@ -374,29 +374,60 @@ static inline bool iavf_container_is_rx(struct
> iavf_q_vector *q_vector,

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
