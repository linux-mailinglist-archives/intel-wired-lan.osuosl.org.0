Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 495813A794E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Jun 2021 10:47:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A327160783;
	Tue, 15 Jun 2021 08:47:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NlX0ZRCFGXl6; Tue, 15 Jun 2021 08:47:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6AE8460764;
	Tue, 15 Jun 2021 08:47:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 794CE1BF289
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jun 2021 08:47:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7498B83A43
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jun 2021 08:47:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vlqrAOwbiYAf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Jun 2021 08:47:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E8C4583935
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Jun 2021 08:47:18 +0000 (UTC)
IronPort-SDR: z2diNPPq7s4b/VTlwmP+/zoJbKKDWRRRVc3ds/rYRoPMVt/bct3FSRz1i2Ch+rKUtwrFGaMjSV
 m81PD1x4c2vA==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="205982468"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="205982468"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 01:47:17 -0700
IronPort-SDR: 43XmSEs1lIa/RG2DXBqt3I5ME/bGgVs3JbwTs3HXge4bgV6XpAIjHcwXldawEf1e9fvs9xBozl
 dfZiR6TWIVsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="478658729"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Jun 2021 01:47:17 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 15 Jun 2021 01:47:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 15 Jun 2021 01:47:16 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 15 Jun 2021 01:47:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HUAzQptYZj5aCvcqGa75lDOysOc9qMQV5tBTZ/AXfoCJLfFMAb1GBKPe4aKiOtJ2mQwcqOhd2Jc9sspNoJjJtNzOyGUXjQGwo0lf7ZyyvHXlnKMP0KEnLMoDLnLUeMRb9BaKhEyJO1uhT7ysPWot1MmvJdyv8lL8L/12bQmM7jO+zS0cylbQVWeSDf+Mb6+hjZbYYH1yYrfowyhm4fh835x3f1cRHJVE+RxZ03qKByo3QUefrqKxVolhFxQbrp7H5U5QCZcKyCpUmCia0AYfaqcv5zNksopKoEeaA3bKivXJsr9ILsduqTThfO/eQ1RNM9S61RCPDv0KYBb4uMCxqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TiciMoqWWR6mVeD+ApIzUuXJi3B9wctP/BygiMcA/fM=;
 b=GruCMZTtp6PM8juXuAn0IEPFdAsxeRnSGgg9x7Zg/7NFx3Bj+mbjDpZ1HV823QXQstqHsUn7QXKOk7BmlNvLqQWZqRnSEwCLNtK8IQGVxqOmMxlzvLctFElndNxfOlZY9b7Gn4FxDkWyHocmlXPs76krHZTbpcD8GO2LygCDFqlDteBnGtuwW0qf5+PCM0YtKODh9Vc33GJVS1Mo8u1Ghvv1ZuImk29foQ261s9H2ETxsmj/eaPnCNySYDRvgUs8XIIus+BJ7jq8lLwZpKkODbzjKZntl5p5j7AgseJWQTPyCnejCBmNAkHIHyLFJitDks6FH3o/c9naeVdRmiTkOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TiciMoqWWR6mVeD+ApIzUuXJi3B9wctP/BygiMcA/fM=;
 b=hNNibfZNsf2lFqV48Y5zQyqYJncqzcNC0dj3rTFWABi4C18UCOUojhEB/UViCWZkE5/VKJSPaCfJW1X84qBPXrTYtS6Wvthg+dq2lJvwOhiu0I5iU1/eNS3S1MMz5a5+BRLKzlCyrZ94QFYmDlfOSKORIHxhdZ4+gttgw6hdjag=
Received: from CY4PR11MB0022.namprd11.prod.outlook.com (2603:10b6:910:79::19)
 by CY4PR11MB1847.namprd11.prod.outlook.com (2603:10b6:903:127::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.22; Tue, 15 Jun
 2021 08:47:15 +0000
Received: from CY4PR11MB0022.namprd11.prod.outlook.com
 ([fe80::2144:d7de:6ad7:907a]) by CY4PR11MB0022.namprd11.prod.outlook.com
 ([fe80::2144:d7de:6ad7:907a%5]) with mapi id 15.20.4219.025; Tue, 15 Jun 2021
 08:47:15 +0000
From: "Sornek, Karen" <karen.sornek@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Add placeholder for
 ndo set VLANs
Thread-Index: AQHXW2hnr88W+jYKUE+VDsjvgBrHxKsL/j8AgAjKwMA=
Date: Tue, 15 Jun 2021 08:47:15 +0000
Message-ID: <CY4PR11MB0022C01ED7DEF918F41A63C79C309@CY4PR11MB0022.namprd11.prod.outlook.com>
References: <20210607064338.252336-1-karen.sornek@intel.com>
 <1f14c5099d28d4f606d1ebfd3a9af4955bb5daa6.camel@intel.com>
In-Reply-To: <1f14c5099d28d4f606d1ebfd3a9af4955bb5daa6.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [91.198.89.165]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7012067e-a7ff-4e22-52ae-08d92fda2d0d
x-ms-traffictypediagnostic: CY4PR11MB1847:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB1847ECF572C355E79D4949C09C309@CY4PR11MB1847.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mrPhZ+TsqFoGp/UYAOt6XntcGUJ8M6EUaLYLeRCIhMGPzm4sVneQj+H4edWqNIbfOANPqrGbD7apTwbfBGVZSxDroSEzdAqj8f0Fl0QQKezizC5Z6fr3CHcDuM/eczTT7AW4gynnkWyCXVr192j7WHpALMJl5Otk7GnTToMxcycToaKxUQ8L7i8wSRDPPZq1mJ+4/I04HZoIaNXMz3iPuoUDYMcLcHLi7peAcM1XX9xz8vLCJPkCrWevasCWzu+jNetGENSyWydLy3QaQ2da1BOI0gAXDl7I37LkcOdYF1I5b4VOfRzY1C7/cdDtYsbJuucokRagPI045Hyetbm0tzqIHR+NalD6VkYPkS2cNKLaSuHqvWrfS2ne+h2ZBtm6Hrr+n4xrvUz2YovAUNa4nrQP22+77C5WMEC5pwEfdc6lSMKsvFcsFkJE/vTKmTr7EJH9EkGos5+CvaqSMPPkSRbufDUxzaaeJwJ34annFasVmLqkD3VUFH7fWwEp6djrJGzreiM27fWatear/056Y2C5Ds83WSUB8qG5w1YXyxflK6uT5YUeoIlx3+5NC224VaOZEpBHDNSEiGI5KRZVW2YF1eawc9tyRl2hKR6Zc34=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB0022.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(376002)(346002)(396003)(366004)(39860400002)(38100700002)(122000001)(64756008)(33656002)(66946007)(66556008)(66446008)(76116006)(316002)(110136005)(7696005)(55016002)(107886003)(66476007)(83380400001)(5660300002)(2906002)(52536014)(53546011)(4326008)(86362001)(186003)(26005)(8676002)(71200400001)(8936002)(6506007)(9686003)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RjlORTZzc2FNWHg1MmRBSkptZ3ErN21Pb0lHOGoyK1VvdUFwcnNPMmY4UG5l?=
 =?utf-8?B?SzBKenJKUU41cWlDY1JzaHEvVVJjS09VbitkUUhXcjI5TmRpbkJiUVZINGkv?=
 =?utf-8?B?cDZNSHV6Q0ZMTkc0YzZxdGdFVEF1UVNwT3R2VCsyZXRjQVBDTzVWZDVYS2V6?=
 =?utf-8?B?WlY3YjBhVE13dld0dzFXZUhpTDZXN3RiTVQ2RU95RGczSEUxSTFCcUIxeXBl?=
 =?utf-8?B?ckVSM2hSd2t2MlhOYzgreE82cnA2ay9qc1pKTlFRRmlYdEMrY2thd3FsRjhk?=
 =?utf-8?B?NHBxR25ta1d5amtNQWlkTjA4citzSElvVUJONTE5djVPNGVBOGtmTnpJVlo0?=
 =?utf-8?B?TEtGNFEwSEtFZUVjS1l0SXpwMlVBeGZzOTB0RlZvWGxLR2R3WmpkNnNEQ1Qy?=
 =?utf-8?B?VXJvcEVLa2Y5TUp6b096SUlSRFFvNWR0b0d3Vy9PUTV1bFpFZmdpQ0Z3Rk5I?=
 =?utf-8?B?UCsxSnlWMG8zNE9wRlJDdmxJR3BPdCtWQmNmdUlGbnhlbXFhWDNvZ3ZQK2Jy?=
 =?utf-8?B?S283Y2hjL0dYU1Rqa214TGhwRHdpbVZxT3dxVVZxRlpCTVc3WGxxcGdMZy9X?=
 =?utf-8?B?dTM5dVo0QUwxQ0gzNEVBT08weFNwdXJPVURoYms4TXRvTFZrQlRsaisrNFd1?=
 =?utf-8?B?ckxkaTZKQlQ1Y2VWeTZIajlWV1J1OUZZZTRNQkZKWEhPTUFQVWg0ZTJMVnp5?=
 =?utf-8?B?NWUvdUpPbnhOQlFBMWROUytmakYwc2tvN21FcC91Nm9Cdjk1QTkyRzFaQmp1?=
 =?utf-8?B?aE5hMjBXdXRpRllsaEVQZEpqeWthZFhJL1NoZ1FnSzVFd0xiaXZFVmduakRX?=
 =?utf-8?B?c1FPVWd2MFVBNkpyakwwZUVJU0VXaG9TM1NmRmJKYkhrSnI4QWJwVkg1RVBM?=
 =?utf-8?B?Ymx6Z1drV2l5SDF6eE80RmVCWHhIZy9ub0t1RmN0OHJoYWcweUdQbnNyc0VO?=
 =?utf-8?B?Q09RQm40cVd4VmJ4RlllNjYrZCtwa1BTcVIyc0dYYjlCd2ZqR3ZrTUJOQnZt?=
 =?utf-8?B?aTYzOXBRd0gvRW9XQ2llOTNvNnVmemEvRzBZMlV4Y2NMcTR3UUNobktkZEFS?=
 =?utf-8?B?aDdCUWwxbWxmd21MRDZPejZrRGhXbk50S3lsaWR0SzZhSGgyUDRIbUVWd2gr?=
 =?utf-8?B?M203Qlp1QU0zNk5nNTBrSXJicDdST3VVVFhZeXdJTGlEUkRKZ2NNLzNPOUM5?=
 =?utf-8?B?YndaK05VanBnUHBudmU1QUx1Y1ZhNmM5cStYMlp3NHVSalZqVjJxK3dtd1Iv?=
 =?utf-8?B?ZWdhZXNMdEhTMDduRUZxNWNuTU43TGpwSjhvZEpic0wwaDNwVjR0MXNSaTJM?=
 =?utf-8?B?MzN5cWJYU21SR1cyc3VwY1c3U00vNnhaUldGM0cvUjV1QXBlWjdnNTNDSy9v?=
 =?utf-8?B?WEc0UldYK1VQZlE5NEl5dlV0M0NrTWs2ellqZG41VVRhUUFVZk1yTWU2T3ZV?=
 =?utf-8?B?aC80akwrYm1KcVJabnlORmJvZGlCa1JBUEl4NTBSNTdWMTlpc0hHMEhKY2pV?=
 =?utf-8?B?Mi96TFB6NFdGNzhIWnp2a3FWb0ZKMUt4M2I0WUlGYTkxWEtGUHY0QWd0Kzhp?=
 =?utf-8?B?azNBdU44RzRVaUgxTnkwdStjVWVwNXpSbndmdGM2MG5WUXZBY2g5bTg3SmQy?=
 =?utf-8?B?TVRDN05uVlpITjYzM1NEQlROUVE4S0lOdDZnaTF5UGpTY2VJVDlZVWczb0Jv?=
 =?utf-8?B?V2ZSNzBxZTg5Y3lHbHFSTmhKYXdWWkoxUCs2MFZGK01CRk5ZMmEzcmFSWGFq?=
 =?utf-8?Q?7wIEBo9fryojDbJ2nU=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB0022.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7012067e-a7ff-4e22-52ae-08d92fda2d0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2021 08:47:15.3540 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KpGzthnCz0L3yj/kuJu14ddxKhi4GDOGArWsj3i4bQbM4xtPBoGaJ0THYbH0S2YySUj/FlcsyKdrNHqNTYvVOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1847
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Add placeholder for
 ndo set VLANs
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

We use returning i40e_status in OOT driver and signed variable in OOT
Our goal is to reduce gap between i40e OoO driver and kernel driver. 
So can it be upstreamed as it is (after deleting this extra newline), or would be preferable to change return i40e_status to return 0?
Also why not s16?

Thanks,
Karen

-----Original Message-----
From: Nguyen, Anthony L <anthony.l.nguyen@intel.com> 
Sent: Wednesday, June 9, 2021 8:09 PM
To: Sornek, Karen <karen.sornek@intel.com>; intel-wired-lan@lists.osuosl.org
Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Add placeholder for ndo set VLANs

On Mon, 2021-06-07 at 08:43 +0200, Karen Sornek wrote:
> VLANs set by ndo, were not accounted.
> Implement placeholder, by which driver can account VLANs set by ndo. 
> Ensure that once PF changes trunk, every guest filter is removed from 
> the list 'vm_vlan_list'.
> Implement logic for deletion/addition of guest(from VM) filters.
> 
> Signed-off-by: Przemyslaw Patynowski < 
> przemyslawx.patynowski@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 131
> ++++++++++++++++--
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |   9 ++
>  2 files changed, 130 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index edfdce5f6..0fba4f1b4 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -986,6 +986,81 @@ static void i40e_disable_vf_mappings(struct 
> i40e_vf *vf)
>  	i40e_flush(hw);
>  }
>  
> +/**
> + * i40e_add_vmvlan_to_list
> + * @vf: pointer to the VF info
> + * @vfl:  pointer to the VF VLAN tag filters list
> + * @vlan_idx: vlan_id index in VLAN tag filters list
> + *
> + * add VLAN tag into the VLAN list for VM  **/ static i40e_status 
> +i40e_add_vmvlan_to_list(struct i40e_vf *vf,
> +			struct virtchnl_vlan_filter_list *vfl,
> +			int vlan_idx)
> +{
> +	struct i40e_vm_vlan *vlan_elem;
> +
> +	vlan_elem = kzalloc(sizeof(*vlan_elem), GFP_KERNEL);
> +	if (!vlan_elem)
> +		return I40E_ERR_NO_MEMORY;
> +	vlan_elem->vlan = vfl->vlan_id[vlan_idx];
> +	vlan_elem->vsi_id = vfl->vsi_id;
> +	INIT_LIST_HEAD(&vlan_elem->list);
> +	vf->num_vlan++;
> +	list_add(&vlan_elem->list, &vf->vm_vlan_list);
> +	return I40E_SUCCESS;

Why are you returning i40e_status values here? I'm not see anything preventing the use of the kernel error codes.

> +}
> +
> +/**
> + * i40e_del_vmvlan_from_list
> + * @vsi: pointer to the VSI structure
> + * @vf: pointer to the VF info
> + * @vlan: VLAN tag to be removed from the list
> + *
> + * delete VLAN tag from the VLAN list for VM  **/ static void 
> +i40e_del_vmvlan_from_list(struct i40e_vsi *vsi,
> +				      struct i40e_vf *vf, u16 vlan) {
> +	struct i40e_vm_vlan *entry, *tmp;
> +
> +	list_for_each_entry_safe(entry, tmp,
> +				 &vf->vm_vlan_list, list) {
> +		if (vlan == entry->vlan) {
> +			i40e_vsi_kill_vlan(vsi, vlan);
> +			vf->num_vlan--;
> +			list_del(&entry->list);
> +			kfree(entry);
> +			break;
> +		}
> +	}
> +}
> +
> +/**
> + * i40e_free_vmvlan_list
> + * @vsi: pointer to the VSI structure
> + * @vf: pointer to the VF info
> + *
> + * remove whole list of VLAN tags for VM  **/ static void 
> +i40e_free_vmvlan_list(struct i40e_vsi *vsi, struct
> i40e_vf *vf)
> +{
> +	struct i40e_vm_vlan *entry, *tmp;
> +
> +	if (list_empty(&vf->vm_vlan_list))
> +		return;
> +
> +	list_for_each_entry_safe(entry, tmp,
> +				 &vf->vm_vlan_list, list) {
> +		if (vsi)
> +			i40e_vsi_kill_vlan(vsi, entry->vlan);
> +		list_del(&entry->list);
> +		kfree(entry);
> +	}
> +	vf->num_vlan = 0;
> +}
> +
>  /**
>   * i40e_free_vf_res
>   * @vf: pointer to the VF info
> @@ -1061,6 +1136,10 @@ static void i40e_free_vf_res(struct i40e_vf
> *vf)
>  		wr32(hw, reg_idx, reg);
>  		i40e_flush(hw);
>  	}
> +
> +	i40e_free_vmvlan_list(NULL, vf);
> +
> +

extra newline

>  	/* reset some of the state variables keeping track of the resources 
> */
>  	vf->num_queue_pairs = 0;
>  	clear_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states); @@ -1766,6 
> +1845,7 @@ int i40e_alloc_vfs(struct i40e_pf *pf, u16
> num_alloc_vfs)
>  
>  		set_bit(I40E_VF_STATE_PRE_ENABLE, &vfs[i].vf_states);
>  
> +		INIT_LIST_HEAD(&vfs[i].vm_vlan_list);
>  	}
>  	pf->num_alloc_vfs = num_alloc_vfs;
>  
> @@ -2787,6 +2867,28 @@ static inline int 
> i40e_check_vf_permission(struct i40e_vf *vf,
>  	return 0;
>  }
>  
> +/**
> + * i40e_check_vf_vlan_cap
> + * @vf: pointer to the VF info
> + *
> + * Check if VF can add another VLAN filter.
> + */
> +static i40e_status
> +i40e_check_vf_vlan_cap(struct i40e_vf *vf) {
> +        struct i40e_pf *pf = vf->pf;
> +
> +        if ((vf->num_vlan + 1 > I40E_VC_MAX_VLAN_PER_VF) &&
> +            !test_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps))
> {
> +                dev_err(&pf->pdev->dev,
> +                        "VF is not trusted, switch the VF to trusted
> to add more VLAN addresses\n");
> +
> +                return I40E_ERR_CONFIG;
> +        }
> +
> +        return I40E_SUCCESS;

Same question as above. Why i40e_status?

> +}
> +
>  /**
>   * i40e_vc_add_mac_addr_msg
>   * @vf: pointer to the VF info
> @@ -2944,10 +3046,11 @@ static int i40e_vc_add_vlan_msg(struct i40e_vf 
> *vf, u8 *msg)  {
>  	struct virtchnl_vlan_filter_list *vfl =
>  	    (struct virtchnl_vlan_filter_list *)msg;
> +	i40e_status aq_ret = I40E_SUCCESS;
>  	struct i40e_pf *pf = vf->pf;
>  	struct i40e_vsi *vsi = NULL;
> -	i40e_status aq_ret = 0;

The convention has been to use 0 instead of I40E_SUCCESS. Is there a reason for going away from this?

> -	int i;
> +	int ret;
> +	u16 i;
>  
>  	if ((vf->num_vlan >= I40E_VC_MAX_VLAN_PER_VF) &&
>  	    !test_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps)) { @@ 
> -2976,12 +3079,19 @@ static int i40e_vc_add_vlan_msg(struct i40e_vf 
> *vf, u8 *msg)
>  	}
>  
>  	i40e_vlan_stripping_enable(vsi);
> +
>  	for (i = 0; i < vfl->num_elements; i++) {
> -		/* add new VLAN filter */
> -		int ret = i40e_vsi_add_vlan(vsi, vfl->vlan_id[i]);
> -		if (!ret)
> -			vf->num_vlan++;
> +		aq_ret = i40e_check_vf_vlan_cap(vf);
> +		if (aq_ret)
> +			goto error_param;
> +
> +		ret = i40e_vsi_add_vlan(vsi, vfl->vlan_id[i]);
>  
> +		if (!ret && vfl->vlan_id[i]) {
> +			aq_ret = i40e_add_vmvlan_to_list(vf, vfl, i);
> +			if (aq_ret)
> +				goto error_param;
> +		}
>  		if (test_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states))
>  			i40e_aq_set_vsi_uc_promisc_on_vlan(&pf->hw,
> vsi->seid,
>  							   true,
> @@ -3015,10 +3125,10 @@ static int i40e_vc_remove_vlan_msg(struct 
> i40e_vf *vf, u8 *msg)  {
>  	struct virtchnl_vlan_filter_list *vfl =
>  	    (struct virtchnl_vlan_filter_list *)msg;
> +	i40e_status aq_ret = I40E_SUCCESS;
>  	struct i40e_pf *pf = vf->pf;
>  	struct i40e_vsi *vsi = NULL;
> -	i40e_status aq_ret = 0;
> -	int i;
> +	u16 i;
>  
>  	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE) ||
>  	    !i40e_vc_isvalid_vsi_id(vf, vfl->vsi_id)) { @@ -3041,8 +3151,7 
> @@ static int i40e_vc_remove_vlan_msg(struct i40e_vf *vf, u8 *msg)
>  	}
>  
>  	for (i = 0; i < vfl->num_elements; i++) {
> -		i40e_vsi_kill_vlan(vsi, vfl->vlan_id[i]);
> -		vf->num_vlan--;
> +		i40e_del_vmvlan_from_list(vsi, vf, vfl->vlan_id[i]);
>  
>  		if (test_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states))
>  			i40e_aq_set_vsi_uc_promisc_on_vlan(&pf->hw,
> vsi->seid,
> @@ -4200,6 +4309,8 @@ int i40e_ndo_set_vf_mac(struct net_device 
> *netdev, int vf_id, u8 *mac)
>  	}
>  	ether_addr_copy(vf->default_lan_addr.addr, mac);
>  
> +	i40e_free_vmvlan_list(NULL, vf);
> +
>  	if (is_zero_ether_addr(mac)) {
>  		vf->pf_set_mac = false;
>  		dev_info(&pf->pdev->dev, "Removing MAC on VF %d\n", vf_id); diff 
> --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> index 49575a640..6ba48b398 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> @@ -62,6 +62,13 @@ struct i40evf_channel {
>  	u64 max_tx_rate; /* bandwidth rate allocation for VSIs */  };
>  
> +/* used for VLAN list 'vm_vlan_list' by VM for trusted and untrusted
> VF */
> +struct i40e_vm_vlan {
> +	struct list_head list;
> +	s16 vlan;

Why signed? Can this have a negative value?

> +	u16 vsi_id;
> +};
> +
>  /* VF information structure */
>  struct i40e_vf {
>  	struct i40e_pf *pf;
> @@ -103,6 +110,8 @@ struct i40e_vf {
>  	bool spoofchk;
>  	u16 num_vlan;
>  
> +	/* VLAN list created by VM for trusted and untrusted VF */
> +	struct list_head vm_vlan_list;
>  	/* ADq related variables */
>  	bool adq_enabled; /* flag to enable adq */
>  	u8 num_tc;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
