Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C330361FC1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Apr 2021 14:27:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DF0141883;
	Fri, 16 Apr 2021 12:27:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id faMAV4iXwX99; Fri, 16 Apr 2021 12:27:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A576540611;
	Fri, 16 Apr 2021 12:27:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3DC221BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Apr 2021 12:27:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A8204187C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Apr 2021 12:27:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mfZHqjMtltMM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Apr 2021 12:27:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 51F5840611
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Apr 2021 12:27:21 +0000 (UTC)
IronPort-SDR: 9HvfN9SeQmLdr+4ON2ND8aNloyRdinZVMDm26W1YRPKEJC/l/uFVf3Bt0KUqMNSgzaTlk3YVcv
 XEc14ExivSNg==
X-IronPort-AV: E=McAfee;i="6200,9189,9955"; a="191842318"
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="191842318"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2021 05:27:20 -0700
IronPort-SDR: RSOfG3Y+VzfuJQWXY9kWxVfvKl9taweiKpM4LfSOdiINAlteFt6xql5DW6gKdZSPclO0cyCAwa
 qnHpMnaabKRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="612746643"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga006.fm.intel.com with ESMTP; 16 Apr 2021 05:27:20 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 16 Apr 2021 05:27:19 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 16 Apr 2021 05:27:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 16 Apr 2021 05:27:19 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 16 Apr 2021 05:27:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BnwbeKKO2mnMvWTDZopOxKHmY71VmSGsCha7CMV51d/msf0yscqRu0unUk/IBmrGqia6FZW1wWMwGW9LSxBy2LyJmlNnTbSPL5alCKSdwyKrW+tNZ/uAo+WUbtWfDurNHu6woDILABaEu4GGIX2ZiyubbrsbS2vyB5yVZ7I+bcPKDKlEnNK2cUQrVlLj2pFM4dcmwhd78IExgHwINZb+d8m0jhNLnzwDHCtl74KDBbsPobawqdPKVZ+XFIAnbPxgX3cHNB1UOGUJnPBDkkCxx+SqD2CEOTo+i6lKKH83gznc0RbQvZ5D6TEneEbYA69B7YXtZQd7Xs7zOxXI/OATJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Os2qlE4g9TDbf9WmMz83gobynJuXIQvqgU8sVyXBR28=;
 b=eOeGQco8GCOuTViJtSNnPV+zyuDA24ZBUD+tnRAl928rxldG9DP9kNkSoQWO5ipM1XGj+o1SY7Jo0OCTzFjxxzzur2koPjzyX8oT5om84zEY17kBMZCpBueGCukL/Lr7XbMDn0Fl7Uc3Xmga9Y1ETcwqwZ0divJfQZEJm2VLyem+nSJZ7Dpv7ihAgFJSspJkzwTZr8dcXXixfyBFzi/NBfywXqPfQQiz9/g9I807Nw5jwyPjdOe4JVaV4pfR5KmtsOSUoVfL+HNanFgW43ydMhEy6z9WLuDW7WoNv1kmsm5+nm0GwxqgcZpzPrQeGvlRcHzTyKGc8mysyYmTbdJgrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Os2qlE4g9TDbf9WmMz83gobynJuXIQvqgU8sVyXBR28=;
 b=YetmQ+4PEpl918aY4dCPwJDDoWlGElUFprbkECDF67sBmWtyvKvp0Iyi1xZRYuB9n1+cntmtiYa6gf6dux774fLheZ4+Kuk6nC3EWyycdGtFff0Z9m8eFERp77ozD/VtSgcZnneXeng/I4KmJ/hEbxVsiZXRnn35wq3kvbtQkbY=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR11MB1782.namprd11.prod.outlook.com (2603:10b6:903:11a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.19; Fri, 16 Apr
 2021 12:27:18 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08%7]) with mapi id 15.20.4020.023; Fri, 16 Apr 2021
 12:27:18 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S55 13/14] ice: Advertise virtchnl UDP
 segmentation offload capability
Thread-Index: AQHXD5FVqMXW+IhQC0eqLYPp6q9a9aq3WGiQ
Date: Fri, 16 Apr 2021 12:27:17 +0000
Message-ID: <CY4PR11MB15769D5E52551F641BA8669EAB4C9@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
 <20210302181213.51718-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181213.51718-13-anthony.l.nguyen@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.97.10]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 86782076-fe92-4214-597c-08d900d2f995
x-ms-traffictypediagnostic: CY4PR11MB1782:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB1782CE84EA70EBC434D6E494AB4C9@CY4PR11MB1782.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dzju7wzmGNeV04MxqAZ4C7HasOzQfGHU14F0HJYRf51EoufRPI83+UrK69X6e3d2J6ZM3IC0e3GAlA5JwS/bHDpUGIJZ2yJbLnjlFdnClI3UaMsi2A8CVELw/OccAdHdvDvp1cVKi48GGYcZmhfC2pw2udaCvDXtUHd5X5R/FHfhk855NmqsXxtjWDO5w/gl2Dp6Ye1apJzNrbiMOzOKy+jeWL1Wu/dFoMbHbVjz0TGzkrgep3VplkYHzUThKuKGXAYL/uiJsAkcj56Ng2TyFpx11DL4F6IXYmJN2N6KnoQckFdQR9uHD9VMOBEkS3SUxRJNqHE6cfB0X/Kj8t9yDMymuerTH4SXWWXMJ6COkGMy2DwfzPKJJ0gggOIX6AsmQtE/QY8U2BrD+GcKAVQ+mxNHTIau1Eh9ZncIwSxDhzPSXQ7X9jlanfEkscYakRHFK9o8Avo/ixMyYIifKMhx8p46xgSK8k/GLpRmDMdsR/+g7ohezkHWdiWvpiLbcOud6P98FztH1HheAkFyILqiKWEESRAb8ZY1Yll72LUREP8+W3Nk6+/FgETFnUOX563bUDWYfOFJpdOPop3DKs3qv6od3CHR10SuGjhCh3Q0aTQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(136003)(39860400002)(366004)(376002)(396003)(26005)(71200400001)(83380400001)(8676002)(66446008)(7696005)(478600001)(55016002)(5660300002)(64756008)(186003)(52536014)(76116006)(9686003)(38100700002)(6506007)(2906002)(66946007)(33656002)(86362001)(122000001)(8936002)(110136005)(66476007)(66556008)(316002)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?MXKaw95Pj3mif+kmJ8zIWavRJNMx1FRcURIcZQBog8dLUBzalyXXO24jtN0j?=
 =?us-ascii?Q?4d4Rws9JLALRslvCE9b+k4EJfQ2jsj24sdSGuV8zq0Gi1Ca8Q4u255uKCrFz?=
 =?us-ascii?Q?c0heO7WVsHtk9kTFxNoemxErnAKlZT33IbTA4gQN2QX6iogVqB/hAFq+UIeV?=
 =?us-ascii?Q?i5hwtw8Z0766JHTPkelh5ZIOSsnPUYtX8/HQVNWpyCfuMVzjkGcvDJvjtPVa?=
 =?us-ascii?Q?gUyOS7SrP9nT3qUGxQ9HzwC7T1BJ1Xs5RUN+VQeotydH8dVLLc0En8mCoav3?=
 =?us-ascii?Q?1aAG7siTCitOc5clL985452CAnppkdBTEPVPphRYNNFaKOCPzlhYIWlSl5PR?=
 =?us-ascii?Q?aPtKjyL+GXuG4IXzDRP6lybr+3IMvLgpVSbxpVWTAp2lkNIfLFckEYa8O95a?=
 =?us-ascii?Q?6DRtZfWtJv18mfy6SNh8AjYutniaV4vVnKsg1T2FpPZB8bR3dR+b42jnSVy9?=
 =?us-ascii?Q?dGe8OxQPgnnz5WDT+DcwFYIeqkIX/JwX8/GPm+dRv1W2XC8gRvmtwDrKwZPV?=
 =?us-ascii?Q?RRnNEHdpUJPxKrUBJXOC/7dIv8hqONBd7NJe/aDkSQ2nTyUaLX3q/FAKlmUo?=
 =?us-ascii?Q?ZwtNH8dJo5IWFUN+LIWVrD5HP+o9415TrjerbtNt9d8+k1S+szonkEp5Pyxs?=
 =?us-ascii?Q?I9z7qBoXwU8H5NrtgTiC0h83DnUcmDVTv7WZAq2WBtMS/EIgWinI7Nb7HqRB?=
 =?us-ascii?Q?zgo+HKrI4eH0v0J2dTucU82LwyTHbQ+YUSYWoW2B9pwD3G8Ns+h5knjz3q2b?=
 =?us-ascii?Q?5jUywk4wO8cXeD5oGA6x3WP5zhzpBuSCN/qyU5OHdeKoFvoDukLfVVagFoRG?=
 =?us-ascii?Q?CB1rZ45O8Rc4Yxtu3Qobcyel/sS8gLjsB5jVvxfni1azuh0yiaPKsEeVCBGA?=
 =?us-ascii?Q?L47VP84xj4fmphlsWohWVWekN8oBjgSoRnDud+a15jBOEHBAXdwHXRatYt7W?=
 =?us-ascii?Q?vRNF73livpVWkCFahUYMCaAWJ/LypAyqHSh0IgNgOeTi4RB32nqBM2+vgdPN?=
 =?us-ascii?Q?i9fvMlVjN8zEKUhIvjyqpDXGM5hb2Z9McYp9XMQQ1i4Zc0zIwv5WPDJy6laf?=
 =?us-ascii?Q?pPuDBBhyUXAKGDvXxRrETnpfw/uHIwkyWhkXKUF+RJVPP3ztm9W3+ffnMrzB?=
 =?us-ascii?Q?2Ht3D4PwWWZ382/6TMDj56uFBm8SmXPtkJBpznD7DCpSObny6QiSzf/z7nn7?=
 =?us-ascii?Q?IZDuyEmzCnvXRAPzqcYbDcH/lq7ugYcFTs7VJG0PtUY/czKmYU7cBPCyIjNH?=
 =?us-ascii?Q?Dy43FLEkAwglqM1XtDuW/yi37ri3D9coUIQWpNN3xLFji7yJRZb2psafdgLq?=
 =?us-ascii?Q?5yVf1XyQjO8mB2lgbw2upCbV?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86782076-fe92-4214-597c-08d900d2f995
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2021 12:27:17.8723 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ODwT5X5rNScb17PqvmRzqh4nR2uPKqyyhp8JkrjxU/ZcH8kdTZFqXWBnrAcwfWf2IoAAN2r4cf7RFQd39HznAV8Nd43Uk09VTLCNvVkPDeE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1782
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S55 13/14] ice: Advertise virtchnl UDP
 segmentation offload capability
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
> Tony Nguyen
> Sent: wtorek, 2 marca 2021 19:12
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S55 13/14] ice: Advertise virtchnl UDP
> segmentation offload capability
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> As the hardware is capable of supporting UDP segmentation offload, add a
> capability bit to virtchnl.h to communicate this and have the driver advertise
> its support.
> 
> Suggested-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 3 +++
>  include/linux/avf/virtchnl.h                     | 1 +
>  2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index f09367eb242a..43d309aa9efe 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -2126,6 +2126,9 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf,
> u8 *msg)
>  	if (vf->driver_caps & VIRTCHNL_VF_CAP_ADV_LINK_SPEED)
>  		vfres->vf_cap_flags |=
> VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
> 
> +	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_USO)
> +		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_USO;
> +
>  	vfres->num_vsis = 1;
>  	/* Tx and Rx queue are equal for VF */
>  	vfres->num_queue_pairs = vsi->num_txq; diff --git
> a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h index
> 228b90ef3361..ddcff6219b61 100644
> --- a/include/linux/avf/virtchnl.h
> +++ b/include/linux/avf/virtchnl.h
> @@ -252,6 +252,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(16,
> virtchnl_vsi_resource);
>  #define VIRTCHNL_VF_OFFLOAD_RX_ENCAP_CSUM	0X00400000
>  #define VIRTCHNL_VF_OFFLOAD_ADQ			0X00800000
>  #define VIRTCHNL_VF_OFFLOAD_FDIR_PF		0X10000000
> +#define VIRTCHNL_VF_OFFLOAD_USO			0X02000000
> 
>  /* Define below the capability flags that are not offloads */
>  #define VIRTCHNL_VF_CAP_ADV_LINK_SPEED		0x00000080
> --
> 2.20.1
> 
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
