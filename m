Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5654364A74
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Apr 2021 21:21:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E219607BE;
	Mon, 19 Apr 2021 19:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wyrx1g7vTogR; Mon, 19 Apr 2021 19:21:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DCC160606;
	Mon, 19 Apr 2021 19:21:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D038C1BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Apr 2021 19:21:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BEF8C837DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Apr 2021 19:21:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HxVrsj_UO7-z for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Apr 2021 19:21:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ED806837D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Apr 2021 19:21:13 +0000 (UTC)
IronPort-SDR: qspn6D8iSOlfuc103vDuZMntYR4IKihQJHeKMK1AliWcif45A2g//3OBDgaNsFbkbf3qH2aHb8
 BtRdPIu2YBuA==
X-IronPort-AV: E=McAfee;i="6200,9189,9959"; a="195500088"
X-IronPort-AV: E=Sophos;i="5.82,234,1613462400"; d="scan'208";a="195500088"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2021 12:21:13 -0700
IronPort-SDR: ttv0u5l1ks1B9FP7puoNHZdoH7gIm02cB/DFUWNUBoKgK8a+rTfOyT1O+frEjgF5pDDha5LTY8
 LxpxyII2hZFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,234,1613462400"; d="scan'208";a="454442206"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 19 Apr 2021 12:21:12 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 19 Apr 2021 12:21:12 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 19 Apr 2021 12:21:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 19 Apr 2021 12:21:12 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 19 Apr 2021 12:21:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m3+pK1/lGbQCQEoJb2gf+BPSsFo6tUhpXnfyBM8BY6O7ccunusVMULLLFnf+p4g/DntXgORAFDlErCQumiiI57PImwddmtfLb75b47swL6aUOPMQVcSsbHYe4qhV7KANtkxfasUZBc4abFx8sGzXJ06ut+H5CbDNKTXxckV1RGkAhj5gta5r7XQGcpqdVF93Z2Y0Rzn0myL1DsIVW4O0UhCITFDikAJg/d2z4MweRnkEINOVrqgbnmfGccAHFDWsGHMJeH2aXiVSgorWSH/nyVIuHiIBvHcwPnykrwxGa2NkZavC0CegdsyryJmY/0wAvzRV6cMmgHySmbrb4wq7kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HXz+m3s8AoR7k/D94KyTe7ngEanPVtx5KmfH9gcBXQ0=;
 b=cGtWFRFJdXA1/aT0Sl8QuMlm1JWIIPrVZi6OIBei01J4wwcwnOnYMzfn+9KaRHh6zY26i54pH/drlzkQj69I5Wryct/SoVF7a1IC41YD/wkPgmBzCk0NhMcQrw5IwSnjZgokV+usVCHSuCoDGF4yxtaKAs5YrnfPHYwhNdu7+ZYh4QW/+jhPCdatj4slufFhEYUilIcSVSiES8fnfcPUBNTX0QTAuFgc1aZFaj/ZjZPHtOyq9XB10tkazp9D0W9kx6u6Lmit0vp30gdVrgHU/WS6PvG6mWVX4hYm9QV53v8x0BsTTRhw7/xxzn8nUSSKBTgkioQkxWcbozyQrqo+eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HXz+m3s8AoR7k/D94KyTe7ngEanPVtx5KmfH9gcBXQ0=;
 b=J8g4fSEz2IIBbqUFuucSjrcoZxd+RBxdSAhhshErtVT03ShIO2RdHFqjd7cNdKkYk9zsuAEtJWE2cpOGg6oC/mm1uYvw7mXxVmdj6EV17MzHywzhw5zcA62kUy6gaie/xOPbZ0cJ9lX3G+2LAUlbAZ44jqg9ICLhAUztbqlKIoE=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR11MB1701.namprd11.prod.outlook.com (2603:10b6:903:22::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.21; Mon, 19 Apr
 2021 19:21:10 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08%7]) with mapi id 15.20.4020.023; Mon, 19 Apr 2021
 19:21:10 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 01/13] ice: Fix allowing VF to
 request more/less queues via virtchnl
Thread-Index: AQHXDIaQs3UpOw0aCkWrRHHrrfgbIaq8iS3g
Date: Mon, 19 Apr 2021 19:21:10 +0000
Message-ID: <CY4PR11MB1576663F3684D25AD110121DAB499@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.97.153]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a6911040-06ea-4794-b4fa-08d903684a49
x-ms-traffictypediagnostic: CY4PR11MB1701:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB170125F73C53A9869D9248FFAB499@CY4PR11MB1701.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2mNTEHbXfn6uGso5HIeWYlhgyn1wfEWW+jLJ2Rp4HykKjVT8E6/BMEtWhJoYSzLaxXDXU7W0WKh/x7bTAnlrhbIvcLk2aBAhf5cp2MmpAsmGICNt7Xg/y3yVlfeLk5KOS0zpwTAbNzVXT6AztNc7Xd9ijFbXCPtZOsUUHF7vnizgSNkoG7ZxM5cmcvgsaEP3I1g0qN6EDrYBzAm0DsVw7yAVcni+xwz8Z8YmJtI6RTmeXLdV4eRbkik+xp45vCFQv6KcAEJ3NmopGz58n72lNR6Yd2Y31l1uSPOMorznc8qJ/DSEI1Tr+6R3nitETnYJuu8ywXRvNugI/LIN9resxenSzv4Nt4Y4o0nrcPOWDizNY1XWA90IoSA/6rrZ0+5X28DwBJm/7ssHMcwHjgCXzvZMb7BgFFe6ERtGL+yIhruAc2mb4iwSRWtBZZ344llHhOXCrgggxAA0O9NCTULQuqa5sXPcBW0j43Nwz8mJOt9jM3dKF1Osg5J+s4O2zWeysH+x5k61+sELcrVurERYIFi8fWO7v9tFa6J+OrCwszK+IQGv50FQdOlYOanK4CEn9cprAj2NbgoWmaNfMasxeo39FcFETJLQu5DBC4ZXcgBXgnP2rhZWnMyBMF7aJmF+SZ1BaiBNRdnbnwmPM16FPNPbLpT6qMn1hTeqkD0Ffm8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(39860400002)(376002)(396003)(346002)(136003)(2906002)(33656002)(110136005)(83380400001)(5660300002)(186003)(86362001)(478600001)(66946007)(52536014)(6506007)(8676002)(76116006)(66476007)(316002)(53546011)(66556008)(64756008)(71200400001)(38100700002)(9686003)(122000001)(55016002)(7696005)(26005)(66446008)(66574015)(8936002)(156123004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-2?Q?erjx6Fiig+4n6XZTcwg8oA6fHB036NV0epeM3SVDc6pNg6PghpZYCKM6lM?=
 =?iso-8859-2?Q?lclJREnnlHYUmiGeAh0npgFFTDAytv5J8vOAyMx9uBK58CDv+fNa3fgl+X?=
 =?iso-8859-2?Q?212ioZx25q2lxG9nePQ+f0FxCDjXxG4GCbHTB/121fckV2pMf3ZIcBknff?=
 =?iso-8859-2?Q?jvqJsqh2My8Ic0NsFL2obCEMcSXXVPF/6kvrUgZEB08WCUG8VAg10CVA62?=
 =?iso-8859-2?Q?G/NQhuiuW+5Lonu9lQ4IheZCQddsb3BZl/TfAqS3iSS3FnGn+xxoZx3eZu?=
 =?iso-8859-2?Q?mbsBKuCJ+IE0BvEfVOhh1I867PvSR28pFL36+g8ySM71g2EDy2fk7DQhE3?=
 =?iso-8859-2?Q?qLjUVZXDGO9O+ZEb5U1bpBnQipgOF4L3n0mn9SfmjuaMKuvPfIHMxDEDee?=
 =?iso-8859-2?Q?dRLVwnN0FWWdThO5WBXkalzL0IbcyADQXkGJil99nQeADlBYo16zLPFRoZ?=
 =?iso-8859-2?Q?Ue7c6JFR703AnhJWAPwHR2JQiMPf2k44VyU2RTWYZXThFtambfDDRcmUOM?=
 =?iso-8859-2?Q?ngrnSA2hQETfcQ7hlgFfGU1LvFb9bTXNXtKDdVtWRgLA2J34AMwg0FGjdJ?=
 =?iso-8859-2?Q?CLAgdRfYb9kU2D7glk5px+1KbbvubXtJM5heYjORnrljGCK+O9OwLsfIDs?=
 =?iso-8859-2?Q?6HPvVOUvq2A5NGNh6DUePaIN7vp5KPVlVxEobiAGnPjwIUCIfPrtXwY87E?=
 =?iso-8859-2?Q?BR4qJGAXQRJKyq2No+66TjA/2lm/IrjHTV9CiIEgBKBU1b2BMgIUDPUzVQ?=
 =?iso-8859-2?Q?qgI7gBYVhmqyZiN4V2q2aXyj0CweFB3u41DAc5a8xUUIom4R1oeVjeMxiR?=
 =?iso-8859-2?Q?bfx5C19YhcElCmZ+zh4shvM04Dv+CazHOc3jMqsGp+zHCVWN9ICtwPmKmA?=
 =?iso-8859-2?Q?Y4F1hFUXyG4wAyuTZPipHy9myqJ7SUjMuZ/YCp391jXuqQCCSFh5evS9xN?=
 =?iso-8859-2?Q?ByuJwCQ6yyBl6NN2t2o0nKGAwm36Rk1zbvAbkFYpAfeJ6v5HDZnsN30eF2?=
 =?iso-8859-2?Q?pOlnnlZvOGpOy8hVqVNcJxUhAjcXV/kVRYncDPC+faNguDBnwjxad+bhrr?=
 =?iso-8859-2?Q?xhTzdv85EgvUfdnvpS4OB+qxuPjkmbrtRtOjmLxQdTtoLzJrGrqpNsakIo?=
 =?iso-8859-2?Q?BMIrDN8zwbJOiD2HdpA0yZfzp2IYncV9tki/F+jZGDa0XaLP8B5+XUcjEm?=
 =?iso-8859-2?Q?NKZ6aLdvgAGP/er0cGdi31GzYi11Iyi69SZgXMeIpjxoOyzlYyEDnuAAw7?=
 =?iso-8859-2?Q?Hh/CSl/AsAD2QfAjRX1KQkyNqRn7C7sbn6lIeLNIKX2+Pf4+EM563YTSP3?=
 =?iso-8859-2?Q?zSKIDSTOIVXkcVBPpPAqpJ5Dbjfa8HIgnyumeUjvjAwUVwFV3ZVu+0XNT8?=
 =?iso-8859-2?Q?WDTtRIkVUs?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6911040-06ea-4794-b4fa-08d903684a49
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2021 19:21:10.6862 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iOtjx0XSBaWYImzkJeclmRC8cMVpzBGLFVO7GVMqA2Jm8RfDMlq+bUhwsDqk9Id8NA57IckLA1P93GJRUpCf6XD06uFOmskGwVt8lPe2OXs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1701
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 01/13] ice: Fix allowing VF to
 request more/less queues via virtchnl
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: pi=B1tek, 26 lutego 2021 22:19
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 01/13] ice: Fix allowing VF to requ=
est
> more/less queues via virtchnl
> =

> From: Brett Creeley <brett.creeley@intel.com>
> =

> Commit 12bb018c538c ("ice: Refactor VF reset") caused a regression that
> removes the ability for a VF to request a different amount of queues via
> VIRTCHNL_OP_REQUEST_QUEUES. This prevents VF drivers to either
> increase or decrease the number of queue pairs they are allocated. Fix th=
is
> by using the variable vf->num_req_qs when determining the vf->num_vf_qs
> during VF VSI creation.
> =

> Fixes: 12bb018c538c ("ice: Refactor VF reset")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 8d4e2ad4328d..116f8556f4a8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -192,6 +192,8 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi,
> u16 vf_id)
>  		break;
>  	case ICE_VSI_VF:
>  		vf =3D &pf->vf[vsi->vf_id];
> +		if (vf->num_req_qs)
> +			vf->num_vf_qs =3D vf->num_req_qs;
>  		vsi->alloc_txq =3D vf->num_vf_qs;
>  		vsi->alloc_rxq =3D vf->num_vf_qs;
>  		/* pf->num_msix_per_vf includes (VF miscellaneous vector
> +

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
