Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E17AE3E363D
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Aug 2021 18:01:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3DBB403DE;
	Sat,  7 Aug 2021 16:01:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RDURbVvpRZnW; Sat,  7 Aug 2021 16:01:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1B7C403DD;
	Sat,  7 Aug 2021 16:01:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B8A21BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Aug 2021 16:01:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8949D837C0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Aug 2021 16:01:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7p9P5us-2t9h for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Aug 2021 16:01:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B9728837AC
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Aug 2021 16:01:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10069"; a="214244651"
X-IronPort-AV: E=Sophos;i="5.84,303,1620716400"; d="scan'208";a="214244651"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2021 09:01:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,303,1620716400"; d="scan'208";a="670025261"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga006.fm.intel.com with ESMTP; 07 Aug 2021 09:01:16 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Sat, 7 Aug 2021 09:01:16 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Sat, 7 Aug 2021 09:01:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Sat, 7 Aug 2021 09:01:16 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Sat, 7 Aug 2021 09:01:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k++95+DcKq1MFo++8NHmw1rTQCmoFu2CjnhYMveMc/5GJ21Ot0Ym3CbAIuJ9TZ0+GFsIMfKtN4516uYP41szJPbESm+JKKnZfP7aT5a7PzYhbHrgvjdCDqQ+xZnVSJAec67eCRGYH295ajG+QxiHmoon9ZpzlnJHqnxs13rvUqfQL9NM2BagwL383+BVIEtu1YKLTRwUyZtZNYuEx762EDGM3mrAuhuniwj26DVC0Dxrva6IpgAZ4lrC8umQwyOsd46RTLvtHcsZb6RLr8hOua49UB4kwIkXNaW7sYPAY7BG9ei85hrlUYYYOj0NRswKy2e4T8Vg4cXfjZ30LLfQUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zKSoa6qZnFLArMsEey5dxZ6PS+QmQzyJZxdv+GvQF6A=;
 b=Ka9ejaR6J15sHklwo8zsI8OZE7Uup9DUgrwGx8u4C7oLBCPLDMkXjJE38MrsULgAGwbfOJoIGcbct+UiI6JW3FDN2GBHp06s/g5MJuxAPGMhSQHIAK909PtcWwpra0okU9YSg7Ax/BpDU0uajuoYOFy5L2R872Kxz1AhBI3Xxdg4/4ugNZ2qTOAuGCZ/c2ceIdbdTefeY/lybxaFiTHjw8ZhA7ydVjkNaO5Bsv3qt9an5L6EsNDaHVZZ0Nhpw2Hdu+V/1on2fY8YcCVe5KPxFk9qabniywrmDbjtxCeSTv0j9afSqwoJ61E7FB7+KcPwcdFdO7IbEuRAnMqTlVC5qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zKSoa6qZnFLArMsEey5dxZ6PS+QmQzyJZxdv+GvQF6A=;
 b=Y7/whqLXnCitwlUUJ6VTsxxtqaBtKvRxUn6zq8lvhEDl6e/kVTpS4cjynsxTDZaviYrrcK9M0juF9kQPPYDsH0NK5+S9t3Be6DXGd7YI5rMgfzEtkkd8eErFisCo7NBrUheJYOg5/0nZmUXeo9Ru0xLYRZNPf7TIPPGblogJu/I=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM4PR11MB5568.namprd11.prod.outlook.com (2603:10b6:5:39a::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4394.19; Sat, 7 Aug 2021 16:01:14 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::8ff:7ba7:cfa7:47a4]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::8ff:7ba7:cfa7:47a4%6]) with mapi id 15.20.4394.021; Sat, 7 Aug 2021
 16:01:14 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Venkataramanan, Anirudh" <anirudh.venkataramanan@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Stop processing VF messages
 during teardown
Thread-Index: AQHXiWaemAku5/saX02/imbx8jWmbatoN/Vg
Date: Sat, 7 Aug 2021 16:01:14 +0000
Message-ID: <DM8PR11MB5621372DC86114ED631FA27CABF49@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210804191242.871950-1-anirudh.venkataramanan@intel.com>
In-Reply-To: <20210804191242.871950-1-anirudh.venkataramanan@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 95abe046-ae24-4182-79ae-08d959bc959a
x-ms-traffictypediagnostic: DM4PR11MB5568:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM4PR11MB5568C0BC531C33E180D24796ABF49@DM4PR11MB5568.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oeHkQqXsuc+FDZvhZ8kLIoWXdVIZ+hB5Bzowp6+SZbfwh3UCpIriiqXI9cncsuliU/WWXUNPV943K1L8wcCBwXg0tPev2UirDQL5/XpbBN218hbOjZbA49MUMFG+9WvRfITWFNo+5/HYLfyP/lcPA+0JQ//d9gxq5GjVapU1SVjvoh0K6V2SzY2NvvMbw4sVGpeDV/DFefxXrwoKpHb3q/gZDsSYnL3uGnOVmyRYJW0htm7kG/zrAAJ0nQoTCWTGgp6Gj4n8sKtR/vz8/LfV/bsIghLy/VkRssspqHMpvncbQ++Vj0xgdPtEhiRFoB0qfJRF9vGiAsp9dgEvwCf9dkesAewR90wKay8fRha70vi6SQOyu+/7xWN6UnWXSQL9PYlti9RquUFGC4DR+D62cuse1TOqIp7WK1QqADjPICB5it3gi+9tv1d6lLEnWW1H3ldHYgRnSi+Xs4nmUfp3C5TyxG8EW8YgDulGdEmMARHMvuk5IDU6BmMJckiTOUQi/OHMbVlbrIvI40/UG+QqMOJBIveUgmQQuC7IzwVi0r4nj3ZOsv4knp6aEOAxOWOtwDlZcFXpiLCrrbC8Q4B4WBp9y+jeuSwGxc9d2LodVlGZX5IHBg5PFnnZc7XJRYPO50rDa6UkTpYkb78VAUvdcXG4OOBAdgz8Oh+j8a4PI24ZP2IQpGid3VxUIGD+xnS7Uk4JR5EA8mK87NoT4TP8jw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(15650500001)(8676002)(8936002)(2906002)(110136005)(55016002)(5660300002)(9686003)(316002)(38070700005)(26005)(38100700002)(33656002)(83380400001)(86362001)(52536014)(122000001)(66476007)(76116006)(186003)(66446008)(6506007)(64756008)(66556008)(66946007)(71200400001)(7696005)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uf/4K0eZrjG7lR2OfGobqm3YwUyCvZ8T1NDeohHaJjfoeNIKcl2OhayZhFjt?=
 =?us-ascii?Q?Jb3NYkG3ZbXW2DmyGvvmw5aB9rMuIKHwzBTQJXI90MC63/vXjRYGhEgiR6rr?=
 =?us-ascii?Q?5PXqq7XiRd6eMbUuOdklypb5CIFsBMRpArOzRXFfGZgHQKBtMG4UsTuXBt35?=
 =?us-ascii?Q?Bv2V4T0yUKqXnK6nNtCRw3WkeVxc801XY9U/zkgywzpq/U2yYZM3TxmEhrCW?=
 =?us-ascii?Q?72146h0udhtkLZeSwFVtPUQjPXhGZnylh5gBB+1dnqNFeBMSRBwz/dgKe3NP?=
 =?us-ascii?Q?TIFRS/cayG5NcMYvWq4z1pjOJwkK3p1ew4eYTzUltz8nu11I8DHXavpyDPR1?=
 =?us-ascii?Q?0a/IDt7UeJk9FwV90XrOL+fjrlC11WVLZ4davG9cFWUh+Nl6tn/0Cya0e5/w?=
 =?us-ascii?Q?awVuSP86MEn0XEYddC8SQXn3SkaKMMZX0GctbDCkx6SdTh+/iLAzLzOjqeEB?=
 =?us-ascii?Q?ICE9woNXWCX922xEVrgp+bfK6aBn4xbmwwix2OV2xUhKWUq+FuWnxJ1lczl8?=
 =?us-ascii?Q?lojSyWHEk3pN2fM8ByVF0XtvAibz+SNc+zPZCAjaom1J4bc/qPoGBBbRPrIt?=
 =?us-ascii?Q?e7P1CWHczGxGNifBais8ztjLkSbbpvPGkDOWToPq4IqlNw0WGVcyTTGKeNcf?=
 =?us-ascii?Q?ZKehPag8Nos59Ayn0JiZUpGv/JsER04Yz0jZKg7rxZXnuN120T+CHXFJqK5D?=
 =?us-ascii?Q?XLses19VGZ5WwfLsUKqSWBXAGhuY8LJzERcz8hN+hU/WQ1C0Z4dmwSlxOoSO?=
 =?us-ascii?Q?KTsTJYwTXkdVVoLXz77uLrtx0anhyEo5KfFf+g9O7deVBAu3aAB7R+KLQ3C0?=
 =?us-ascii?Q?XHO+3FmgutDtYxiRiWLhzQVMqA4Nn2QeUjlpY9Zio7WE7FdXglAi2Gx84Bkt?=
 =?us-ascii?Q?Dy/9WWgJ9Q2/F/t3CuxFboa86zC5LoN1AqFOb6c1vnbX0ey/WBs0WhlFs8ZZ?=
 =?us-ascii?Q?+iZY0lKCX/GVd9bfaW7cgB0qGCGgdorZUWOicYImEvfPpDZ+9NmqtMJRPI29?=
 =?us-ascii?Q?9ISGcD8+blYdAhUdjJR2U69QmAGRkBx/kfMXzFHLhRXmen2KGli4AUL5ojgH?=
 =?us-ascii?Q?n8mZJDXM8d0QEjI7LuJwsG0sqgO5irnEPeLpZPF4+EN/cuHaxXElgZfbvjd9?=
 =?us-ascii?Q?m39+rQKkuRWvbzxPqpjBTsx2fzhuBraBLIPcoQ+Sy9/1oBouDXScszu9wh2o?=
 =?us-ascii?Q?HJDiu2k+my5/6martALJ5e27H9LK9ycLpsA3+7ftR4Php3VHwaA1CNPOFZAD?=
 =?us-ascii?Q?E24YSdO9Rtt1dkX2i2AJs7ThCmRN+zWM5ky9dXGRBsbZGlaOlSpJv2TAjyPY?=
 =?us-ascii?Q?W4PGZUWLvU02Bec+PWq2zmYP?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95abe046-ae24-4182-79ae-08d959bc959a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2021 16:01:14.7352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7T84t9ltjvAt8utcAK0DJpm3okmCTHjlz4s5P7mKw6kTjDd5xFfehTU8FhWNTQ9B3veRNrlNZqYCHUsWcX/luEFDb/GZ83YNo/SEJ4CKCjU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5568
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Stop processing VF messages
 during teardown
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

> 
> When VFs are setup and torn down in quick succession, it is possible that a VF
> is torn down by the PF while the VF's virtchnl requests are still in the PF's
> mailbox ring. Processing the VF's virtchnl request when the VF itself doesn't
> exist results in undefined behavior. Fix this by adding a check to stop
> processing virtchnl requests when VF teardown is in progress.
> 
> Fixes: ddf30f7ff840 ("ice: Add handler to configure SR-IOV")
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h             | 1 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 7 +++++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index 5517e13..e452397 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -240,6 +240,7 @@ enum ice_pf_state {
>  	ICE_VFLR_EVENT_PENDING,
>  	ICE_FLTR_OVERFLOW_PROMISC,
>  	ICE_VF_DIS,
> +	ICE_VF_DEINIT_IN_PROGRESS,
>  	ICE_CFG_BUSY,
>  	ICE_SERVICE_SCHED,
>  	ICE_SERVICE_DIS,
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index 85d98a8..9779519 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -499,6 +499,8 @@ void ice_free_vfs(struct ice_pf *pf)
>  	struct ice_hw *hw = &pf->hw;
>  	unsigned int tmp, i;
> 
> +	set_bit(ICE_VF_DEINIT_IN_PROGRESS, pf->state);
> +
>  	if (!pf->vf)
>  		return;
> 
> @@ -567,6 +569,7 @@ void ice_free_vfs(struct ice_pf *pf)
>  				i);
> 
>  	clear_bit(ICE_VF_DIS, pf->state);
> +	clear_bit(ICE_VF_DEINIT_IN_PROGRESS, pf->state);
>  	clear_bit(ICE_FLAG_SRIOV_ENA, pf->flags);  }
> 
> @@ -4527,6 +4530,10 @@ void ice_vc_process_vf_msg(struct ice_pf *pf,
> struct ice_rq_event_info *event)
>  	struct device *dev;
>  	int err = 0;
> 
> +	/* if de-init is underway, don't process messages from VF */
> +	if (test_bit(ICE_VF_DEINIT_IN_PROGRESS, pf->state))
> +		return;
> +
>  	dev = ice_pf_to_dev(pf);
>  	if (ice_validate_vf_id(pf, vf_id)) {
>  		err = -EINVAL;
> --
> 2.31.1
> 

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
