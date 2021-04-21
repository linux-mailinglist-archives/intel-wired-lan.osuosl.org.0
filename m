Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F143367348
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Apr 2021 21:17:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05BB04055C;
	Wed, 21 Apr 2021 19:17:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yU7mJhUOXrXf; Wed, 21 Apr 2021 19:17:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C113840457;
	Wed, 21 Apr 2021 19:17:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CDC61BF239
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:17:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5A09240457
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:17:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ovRQr_oH8bTq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Apr 2021 19:17:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ECCD24040E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:17:32 +0000 (UTC)
IronPort-SDR: Y8YFc47wm+A8vYWozYnE4EMnPTKIZ9bKfXgalzFnOrqnKlx5SDYMw7bRMXQHGLJjBd2UHnMxvv
 3BhMm2IFLV7g==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="259714999"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="259714999"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 12:17:30 -0700
IronPort-SDR: X4cXrMayxaiSwIki9xEIHQ5g8Tk2dJ1qKBfh42MwisReAQdZucNC4Es9E4FmJpWFtis5d9JONM
 yLJ7doaJljjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="446032972"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 21 Apr 2021 12:17:30 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 21 Apr 2021 12:17:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 21 Apr 2021 12:17:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 21 Apr 2021 12:17:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b0feqPfsLsaQbPlBe3+wi5LPh1CfPkUpQCbFMHuOTaQzxqnOpsUwYodV2A+x4STy2qO+n+u10r1VjPhOQP6MlYRssqmP+L0RHk3glAIapUnTniOmQHR2gehD7Kg/ix405kS6DhfavnP+AKCMYPurE+0ZsLRTnSEylFr9eQ7rd3myedTIbFwfflGzSDOoPLdWQ8+gK3CCJxLM54JTRHNChAB0TbPK8wLfVwg1iP1xvdqzYoCwki5xTz8DaYEYV8yVu9QbxqNwnABYSDIJZK1D4uZfp+xlsX8XUgMdBpd/BRwxZn3RvDfU8WtfEyGMoNifvDyQybyQ4WuE4io8kC79Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GtrD9bvCGCT2qh3oXLk/QYoqOV7PX/FNrcpY3NQwXfk=;
 b=eB++ezQxQehcytKl0Ncu8K6FSYTWXfmnNI8+wIEXg6nMMcnc1lGIKXEiNwgT0feNh+i7XsuimdBRsrVSQM/+Jh4JHYRn5CTs7Gh0UpbpfgKQ+MZVo5PhMIzJaFVrYSLDW3tscTVC1THFz2/aepHN4k0Knpg2k/25Ph8AVd9slO0k95403xBrH9FEfl9RwTWkKKFarrX2f8NTb85JAKlKWRTEnewixheZQNSlys0L0U/wpQ+355heg9lQBBe3yz6gTy3U4y/1ppEk8DPmVGe30rynjGM76iDk7LwUq/jJvw/H4gZwLASA0m92fZFUOtB/PBwhhpkIqr5NmCn17Bnfvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GtrD9bvCGCT2qh3oXLk/QYoqOV7PX/FNrcpY3NQwXfk=;
 b=jBaIknltaXjuOI+sHE3ApHX0HNo3Pf+Lv8lH0ypx2zhwptTz+3LkHjpBN/sS0qNtvYxgOqtgnBqSMvhkcPELlDDxKX7QFPnok47jMKS1YRMI9zuuwes4o++qy1yisQ5Ra+FUNtE6tbUUPVAclH6PY2/BibP/BHMAnZHAgXK4hDs=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR11MB1784.namprd11.prod.outlook.com (2603:10b6:903:126::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Wed, 21 Apr
 2021 19:17:28 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08%7]) with mapi id 15.20.4020.023; Wed, 21 Apr 2021
 19:17:28 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 12/13] ice: handle the VF VSI
 rebuild failure
Thread-Index: AQHXDIaNHbblX9XqF0OGSLAMCgKyKKq/rNAw
Date: Wed, 21 Apr 2021 19:17:28 +0000
Message-ID: <CY4PR11MB1576873FD3818864321C0323AB479@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
 <20210226211932.46683-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20210226211932.46683-12-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 3e6c3188-444f-4c0d-5aae-08d904fa1a81
x-ms-traffictypediagnostic: CY4PR11MB1784:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB17849DC573B786B15F57772DAB479@CY4PR11MB1784.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gzMmn+dZSUpvwW4t3y9CsnyJPNFBhWqhTbg/tLk9Q7yqJ23S3bkEoUqDaIx8LgU/TAwUjnPLezzKrIzxaSlS5oln6PwWj0Kfrog7gkPiAzCBllQBQ9LD+TSSuiCjAXZo57pc6LIoSP6lEYzKYwrTbsYILgUb+WuI4yk0zj5EcHjK/MgMfh9nOUFTJ0tiKwTK/S9foQikGWk7LmpTQ4CMd5pkb9cjYHtCNNcNTDwCbaEzNRHnSW3Jumz/Ta7Lq1pEkLk39g9LpoHgWh5fZw5FIhfydTzJWEaDTZQ+NgA1J/Hpc5IM/fMcmIA9ZakRBxybtlfIwXVqWsOheblPC2nq7NXDtcidZdRO+03nXy85X23mRw51B8+n/rZC/CXiwz0RB9OIHfF5kdecZqZEMXjRq34cqgkygBOBaOL5LSGFk7484k+6XxEY6NnAi94TuND5nDm7AkjsJQ9o6cZk3U0zjWYN4IqJPbkEtmUUBUexJNsqTD2t8pkvevoJiisxzEDx65PjN4zo8s//n7un/XebDAIgPEzNf8f2HiWtLx7f/0V9fWStUlQudCuO67F3yDMU4dTaXvfhgfbBJfQMR9dHhl2w++vJIIIMGHKBlk1Y3tw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(136003)(376002)(366004)(346002)(38100700002)(316002)(478600001)(110136005)(52536014)(66446008)(33656002)(55016002)(71200400001)(64756008)(8936002)(83380400001)(66556008)(26005)(9686003)(76116006)(66476007)(5660300002)(122000001)(66946007)(186003)(6506007)(53546011)(86362001)(66574015)(2906002)(7696005)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-2?Q?MhYKRAhHKlS30YawkOpwVY3dXWaX/PJsQsysUZCDpOPwQcUnJXCZh1MmXK?=
 =?iso-8859-2?Q?Gswaxo4g8BboAI9yA4/t3v66ihsEKknoXm3FGDRkxeqrRShrWzRYr9UeP7?=
 =?iso-8859-2?Q?obuwVYcGwntepNrQj1RsZVJMB4tvdnNjoGFfRwdY+AQGyV/Y4xoEJu8OgE?=
 =?iso-8859-2?Q?l/ROBo69O7/oo5/naWnaNdfqvF3+i0FTXY53gaTzwiWr1AtXVmKN/pe1Zy?=
 =?iso-8859-2?Q?EUUpGjoNMQ/Z0pLS9CHMne+zYZgdnjmyy5L+N8MNMtEgFWxxmqAMlHdi2X?=
 =?iso-8859-2?Q?9/+Jmi0m8ggMaKsqgIWO7eyy+diFDMJyTa3dPmAlRrAvtPkm9ctSyOHXei?=
 =?iso-8859-2?Q?el+NBm1eV8jghTfndoArBlSkFDx56Gh66gRwcqwbkD7Nk+fYZDYHcrrjME?=
 =?iso-8859-2?Q?mJo3wofhwItXL8deuoPRRAw7Bx1xZ0pI14sM1ICl0wIad+ddxJ0rXw4mXr?=
 =?iso-8859-2?Q?7OMsFUkoZEBfdLPqMzLswvap+d+CBJ4E54rUUen2u32afKwLjlX+b7ycII?=
 =?iso-8859-2?Q?S8PbNcujpllUD34IbQh7bUHmwCQmavRCBSHJ8W3cGEzx/mfswNkjCdVLAt?=
 =?iso-8859-2?Q?5AwdZXhP+AGjGNoyUN0pUsg+joFz98BTymrD0hG9ghEE6lp8YvbozJQ+lv?=
 =?iso-8859-2?Q?T7H8pQpuO+8dVvXD/y1pUaLNKkbGK3ghdJGGYfcndv4zx+yQ7HI71fcKfe?=
 =?iso-8859-2?Q?X6pLhbE0E1Df+I6QpyIm1TTxL7CtqZILFalnUh5xUldX0T/qb36Fvs4y++?=
 =?iso-8859-2?Q?pD8dHBPYrFK9wuWoSkWMO66ctfcglzxGUdNWI4SWhmXbtPMABCJngavuSk?=
 =?iso-8859-2?Q?JKGndI/A0ecHwsVjxHPI+/0LBxXw9wwuVsR5zopiA9SAGYNFpOjEuGW2Fn?=
 =?iso-8859-2?Q?F75nsXMc7snthUH5Di1H1a21xvqWJg4+kCEKTBlRzpffFPATuNC2PGmuVy?=
 =?iso-8859-2?Q?u5gnulzhJJMKhqBfF0pBbwB/NPsVEVHB5Ykqp2B8nLNnocT4smNDWChImr?=
 =?iso-8859-2?Q?Vu5+InOsRAk0DtxEUL+m+worZVUgwu8SAfr1LuWOBTRYY90jgZhSwnKLFU?=
 =?iso-8859-2?Q?5MsNuPLupLsivDRy0D8YfZanx5D8KnqmEul1EQZMVY2vFphH+9dl1VciGp?=
 =?iso-8859-2?Q?v5s67SmgJBULTnjZpAKMmMDDzteEJZGA+bO/Y8W3KGgu7bUc+O3exPkjQa?=
 =?iso-8859-2?Q?3rQlStgnkmbdp6pTSH811KgrFpDfzzitzjZ8zo3qkzAXlBzbz/EdZORpXR?=
 =?iso-8859-2?Q?7eoFQQgXmnJXdSNKXao0jZsNBYxjR6qB6ZZU2WgnOelGkip6Fvt0gqoKoK?=
 =?iso-8859-2?Q?ZOhFKdu6vcDIjPfYkAB/WoSEa6on/lEoxIFfV2dMlggPQRCotY+26n52vW?=
 =?iso-8859-2?Q?6zkk1/vnYD?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e6c3188-444f-4c0d-5aae-08d904fa1a81
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2021 19:17:28.1696 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AmRZExWZzGyx198zXJYPuNm3PBcVGVjmTxPEqx1YiQtmtpl5Y4uGEzul2Ni6WQXoeFyjPn/G98mi9PfHqvvXmtgzAF7XYQRoFiiKD5HoNBc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1784
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 12/13] ice: handle the VF VSI
 rebuild failure
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
> Sent: pi=B1tek, 26 lutego 2021 22:20
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net 12/13] ice: handle the VF VSI rebui=
ld
> failure
> =

> From: Haiyue Wang <haiyue.wang@intel.com>
> =

> VSI rebuild can be failed for LAN queue config, then the VF's VSI will be=
 NULL,
> the VF reset should be stopped with the VF entering into the disable stat=
e.
> =

> Fixes: 12bb018c538c ("ice: Refactor VF reset")
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index 5a581e759111..de438aba29cd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -1377,7 +1377,12 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
>  	}
> =

>  	ice_vf_pre_vsi_rebuild(vf);
> -	ice_vf_rebuild_vsi_with_release(vf);
> +
> +	if (ice_vf_rebuild_vsi_with_release(vf)) {
> +		dev_err(dev, "Failed to release and setup the VF%u's VSI\n",
> vf->vf_id);
> +		return false;
> +	}
> +
>  	ice_vf_post_vsi_rebuild(vf);
> =

>  	return true;

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
