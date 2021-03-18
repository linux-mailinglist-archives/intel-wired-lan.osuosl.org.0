Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B452C3401BC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Mar 2021 10:18:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E18474EDF4;
	Thu, 18 Mar 2021 09:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NPUTQN7kGbL4; Thu, 18 Mar 2021 09:18:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91F904ED96;
	Thu, 18 Mar 2021 09:18:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F24081BF471
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Mar 2021 09:18:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EA45384208
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Mar 2021 09:18:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iq6SRB6mg9k3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Mar 2021 09:18:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1884A841D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Mar 2021 09:18:06 +0000 (UTC)
IronPort-SDR: qAB3hwVTFFL+MEBNEyfopcTdqqta+LS/EiF+LVDWMDtor+x1Ri9Tcd3zWS45jcStn1jsfPpzY1
 bsbdLxnd5++A==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="274694905"
X-IronPort-AV: E=Sophos;i="5.81,258,1610438400"; d="scan'208";a="274694905"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 02:18:06 -0700
IronPort-SDR: yiUK+rz8TKgS670fOWEuZPKlFeUC1Lna+na6hRqxdN4/Yy2aSUflELH4vFMSGI2KWzKE1TCSme
 jHP5jMxDyEnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,258,1610438400"; d="scan'208";a="379676648"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 18 Mar 2021 02:18:06 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 18 Mar 2021 02:18:05 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 18 Mar 2021 02:18:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 18 Mar 2021 02:18:05 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 18 Mar 2021 02:18:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g8NgrgXr5znGrdkiQSAr47yRAZEo3Q02uuxnds7dEXILCyBrI5mSbXuahlDOJSd1T6Vps/+OfAvCeWXtLB6AYlwMEu1y5eH8X5Sxefxb8ET1gyWy9OSIg//05UUEDB62XzyUf0qRYs3HqnB/xl5KOTkIGYDZOlIbqa3Z7HsrosoeekyfrRcGdBaPrF3VRtvAvYQjVXy1xUn5onv96JDnmWL7ZJb2etv8RQIgWYbUiqIMq+fp1UYCYhjhQ9F7jH9q3psVLWKZIXQ6mrajn95pVOL0SeeJI+HG+QPhLx6Phs+wjm29Ra3NVhX4gjrLONPqk+SCSCT8LBmk6v+FjJy87w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oQez+TLl5AteaiYJUGuIjOL/x4HeVKTw8TjjjCAHZXs=;
 b=QT7IB7yoqaj+T4aqLN4gsI2MYP3OehctjBCkJ2spnsN1NabffpujrfsHGgC0GlAyG+w9Wu8pXzjRMplpAu/03LGNApJ/dN8W5xTe7+7teZIcl7oA8WxTkBKHEhiLy2FLT0DhFxLMmYfg6mq+R2sESxeyJOhKhgybXR4MoOZ/RpwOW2vgLkvL66CP6fZ7qquyVT4fJlWN76KQ/eIn+qwhCUIwa6g+5jcyMdMlgN7vEZlub3C1XvFNdmOVOllFc533h7pvQYywWuXEODVr6v6TXYKrRvFIQejoOjmsasoKyQCPBqI3kwE7AqLjCv7EE2mU49QjFdr6euAFRCz/K4jN0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oQez+TLl5AteaiYJUGuIjOL/x4HeVKTw8TjjjCAHZXs=;
 b=V+zP5h7NTk6J/nyvbx5QV4JjL4FFsndWoJ8354vJbSD8dbiBNj4h8tZJZUyq5JdjXvBFmgIIZB3wBJoh/U35i3sbaXY9xdg8wvHAjUHGSv3jP6RxBj+H8oRuuW3PYWzhvrkdMr/bSmOQ7NxfkRdYW6UGxez54Vp/2UvDum17GJM=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR11MB1574.namprd11.prod.outlook.com (2603:10b6:910:f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Thu, 18 Mar
 2021 09:18:00 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08%7]) with mapi id 15.20.3955.018; Thu, 18 Mar 2021
 09:18:00 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: Fix kernel oops when i40e
 driver removes VF's
Thread-Index: AQHXBdeB+Sf1WnvS/0uHaXJt6BIeh6qJo1NQ
Date: Thu, 18 Mar 2021 09:18:00 +0000
Message-ID: <CY4PR11MB1576F34E5E813013AEC8FC0EAB699@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210218111526.71493-1-eryk.roch.rybak@intel.com>
In-Reply-To: <20210218111526.71493-1-eryk.roch.rybak@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.68.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b5ad217a-2995-4e17-25d6-08d8e9eeb9cd
x-ms-traffictypediagnostic: CY4PR11MB1574:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB1574312BF1B29CD48238F521AB699@CY4PR11MB1574.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qwQnqc1qMp4nlzUekPQ9DBXKs8trhSzvtfpjoZYB2bnH6LtvVvPGGPRiVdRtaDxoTn9bAaaIRiSxWt4Qts9LnEJoTGA1NUvLVfLqoX5c1vaBgXj0nZZP1NmK2+N84fGqMe//YpHEPs1PL4AvWejZF6CHJ/gfP2Ado02HAqkOmS2IQHob3cnHnkkGjCCfinlyJeM9ezCDrGI4ZIJROkfw/0oNbQGZz8CDFLjgPoWN4N46GC3Jy05X5PnEpGr6TPmloHleqpqtWheRcOYIx1xqk6tNTAo7s73TCLytnY60MzTwfwPqLN85fuTfQNUoMwLp+PiOkfvLLSKyeQ6KHV0XAg0JwP0tQcNrSdtrpqOZz7dPqaAAfi/+M6wMeSj9KWxk0jZJSsXf1ssggKqrahwqxoqFRuxYY1xImoZ8fSaTjxiRjfhRPsb9tQrZbwXOc0nhUzxqmLFNczONzD/+mANA8Ww8mVRYyEUdzXtIPeoSoKRly8zym3B80e2MkVlddJAsly7Nt3AIoc86Q4NDbjvJ1/ESSh+DdAj6hgmeK1tqE//u2SKE3Jvyun47/4NU+rgSUhifErekwzojRtF98jwByRbL6it8Z6qV+CjfJdX3rZD/MS+k80tdkf+J8t6BN/RS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(39860400002)(396003)(346002)(376002)(64756008)(316002)(55016002)(9686003)(66446008)(66476007)(110136005)(76116006)(83380400001)(38100700001)(54906003)(2906002)(8676002)(107886003)(66946007)(8936002)(66556008)(86362001)(71200400001)(6506007)(26005)(478600001)(4326008)(5660300002)(186003)(33656002)(52536014)(7696005)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?CnOzISWKBK0FOcaiEb0j+xv7AjJNNrz5r3Kz2DhSPJi8Sq+BDAHBAGAgBLzR?=
 =?us-ascii?Q?NqvpnUbt7YcCnUTzc0Awi4xM1tnQPQ6cRtm4qWMd3j1nNQGeJdkEzE80T1BD?=
 =?us-ascii?Q?P3KWyzHeFi7C9HgPMO6nUmcN5iFLkOt5wFj38qQipTfDVxUipJ/3BNOb0ove?=
 =?us-ascii?Q?pdRhnENPSGu66MC5/44BDUbJJ9+EzzJvffQ/8NoMDwkoxf2nY32LWU8tzDZJ?=
 =?us-ascii?Q?G4rxPVWU+Iq298+UAenWaWzcNMI9RvcI0gYmareuiLdIzuwyQfV7y020WjDe?=
 =?us-ascii?Q?eHI/VlS/XjOrZv1emiJuwa0PLzDPfdkNnmKX25H4AnpiHq1Aeipuvo/VRTiJ?=
 =?us-ascii?Q?59sZtPlgb5YILzqp5UibDUdMU2OVYnPftny4oPZwHhKtnHtwM/q60OIHXrIs?=
 =?us-ascii?Q?Nnsh8SBpaTmNL2ZJ5AMzDmErkj4K7WsH1OAf1FeQE9vS0D5+/xrVJ+9Gg/lQ?=
 =?us-ascii?Q?/IleY7QS/MR6/r6oYXOn6vEN1QiPt3CKvdR2DSwCQ6ZEkwqEpFzBvROVYReY?=
 =?us-ascii?Q?VoxwiHpgR+FER0LoBsgqgv6cE4mXVn5D0EZ2h+n/f5fbNc3z7j3+k/jrOewP?=
 =?us-ascii?Q?ArHaiPd4QSjaRsJdEj4ElEMUSQbeP/NGb4tzraIxJeD3HqBYqmIYEWDbgcaQ?=
 =?us-ascii?Q?El1F8Vxr5S6VreLXlTlOFfCQOowMP5Xvg5zI2cBx4CyvpAxW9ziGLv2oCnh/?=
 =?us-ascii?Q?CRHYHz3h67P1DLuF731fjNm59jTXfTY0QkqutYEcavC1JqJ++4+67TWuvBAR?=
 =?us-ascii?Q?VGZWMrw+zxiR3JF+P0+6nJW8UY6OHg5WenKqrBA9EntLQlmf/4VnV9XKsMj6?=
 =?us-ascii?Q?f7fqjs4CsGpjfklXVbcD/JLw8ZmudOqVOjqLcM9iBoRu6zHZZP77yy/0UAuL?=
 =?us-ascii?Q?nRFPZl1+MFTGqTSt/IPO3JLL0Bd8eh2yyrBwuqwI/TxjO94Ueexx+u4PHsqc?=
 =?us-ascii?Q?N1YxVfyzNQ4NzeKrd5KKZZsSEoRTh1gO7QkNxl0ngfowu8lI4yn6iQ6lsqRc?=
 =?us-ascii?Q?ts4yS25D3mCn2lGOEFGkz33Xe/C83hcFAC9AZH/V87jH22B+lgPl7vP1eJxx?=
 =?us-ascii?Q?CWq5GhN+FFLzzp1CkpiiKB5rXKbIEJ/k558971zFVgoVxUBr6pO+m+/zPf9e?=
 =?us-ascii?Q?FdOiVSwYav/VfHU8uzPTsQKEtyazZSPBI/s7YFtVCI9CvBL6XpeGEIkso8pc?=
 =?us-ascii?Q?0uQkCa9u4PL/pWzqurYVaeli/A+uwU3PkpydDAKY6rlXcBQ6s6H6pBqRR3lE?=
 =?us-ascii?Q?ct6WtKS1HzZ574zgwMXZkqBUoGQVvz1rAbXX9X/BnSuGoj/JBMyvtdOSmb9w?=
 =?us-ascii?Q?8GGZd1XHyERVz/Df1xfsfCD1?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5ad217a-2995-4e17-25d6-08d8e9eeb9cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2021 09:18:00.0843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YlVe692se52WJ9pwVAPUI0jxatqfBDbBty2Fs3/uKqda2IU3v6u5KaiNqzkiyZpmSQsmBgBupmKflDD1PstiMyIca3AqInBjBQKzDXC6fY8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1574
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix kernel oops when i40e
 driver removes VF's
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
Cc: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Eryk Rybak
> Sent: czwartek, 18 lutego 2021 12:15
> To: intel-wired-lan@lists.osuosl.org
> Cc: Rybak, Eryk Roch <eryk.roch.rybak@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net] i40e: Fix kernel oops when i40e driver
> removes VF's
> 
> Fix the reason of kernel oops when i40e driver removed VFs.
> Added new __I40E_VFS_RELEASING state to signalize releasing process by
> PF, that it makes possible to exit of reset VF procedure.
> Without this patch, it is possible to suspend the VFs reset by releasing VFs
> resources procedure. Retrying the reset after the timeout works on the
> freed VF memory causing a kernel oops.
> 
> Fixes: d43d60e5eb95("i40e: ensure reset occurs when disabling VF")
> Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h             | 1 +
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 9 +++++++++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> index 118473d..fe12587 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -142,6 +142,7 @@ enum i40e_state_t {
>  	__I40E_VIRTCHNL_OP_PENDING,
>  	__I40E_RECOVERY_MODE,
>  	__I40E_VF_RESETS_DISABLED,	/* disable resets during i40e_remove
> */
> +	__I40E_VFS_RELEASING,
>  	/* This must be last as it determines the size of the BITMAP */
>  	__I40E_STATE_SIZE__,
>  };
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 1b6ec9b..0c6cbe9 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -137,6 +137,7 @@ void i40e_vc_notify_vf_reset(struct i40e_vf *vf)
>   **/
>  static inline void i40e_vc_disable_vf(struct i40e_vf *vf)  {
> +	struct i40e_pf *pf = vf->pf;
>  	int i;
> 
>  	i40e_vc_notify_vf_reset(vf);
> @@ -147,6 +148,11 @@ static inline void i40e_vc_disable_vf(struct i40e_vf
> *vf)
>  	 * ensure a reset.
>  	 */
>  	for (i = 0; i < 20; i++) {
> +		/* If pf is in vfs releasing state reset vf is impossible,
> +		 * so leave it.
> +		 */
> +		if (test_bit(__I40E_VFS_RELEASING, pf->state))
> +			return;
>  		if (i40e_reset_vf(vf, false))
>  			return;
>  		usleep_range(10000, 20000);
> @@ -1574,6 +1580,8 @@ void i40e_free_vfs(struct i40e_pf *pf)
> 
>  	if (!pf->vf)
>  		return;
> +
> +	set_bit(__I40E_VFS_RELEASING, pf->state);
>  	while (test_and_set_bit(__I40E_VF_DISABLE, pf->state))
>  		usleep_range(1000, 2000);
> 
> @@ -1631,6 +1639,7 @@ void i40e_free_vfs(struct i40e_pf *pf)
>  		}
>  	}
>  	clear_bit(__I40E_VF_DISABLE, pf->state);
> +	clear_bit(__I40E_VFS_RELEASING, pf->state);
>  }
> 
>  #ifdef CONFIG_PCI_IOV
> 
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
