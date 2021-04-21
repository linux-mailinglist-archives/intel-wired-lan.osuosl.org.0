Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8483672CE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Apr 2021 20:47:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CCD6A4029A;
	Wed, 21 Apr 2021 18:47:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z35W1A43zK9f; Wed, 21 Apr 2021 18:47:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AAC1040291;
	Wed, 21 Apr 2021 18:47:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6EB791BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 18:47:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 69A1B608E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 18:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kdnxnLnF0yyt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Apr 2021 18:47:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E14760712
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 18:47:28 +0000 (UTC)
IronPort-SDR: 9GI4tPJ2ZK2+zZXWY32rnKLnas47eA0Qf9nRWZLPX0zdbi3mmYiBq0ZABa1LIZkIqQBiARPr1p
 DceUHyj4n9DQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="281084693"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="281084693"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 11:47:14 -0700
IronPort-SDR: p9xbVd0uQORghd+Wa5GDhD0tKIm6vKLHH7hmHX7SNQAoZICuSADHZPZs37eqhCqCfl6FGlmYb2
 dGLUUGoUg9aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="534957381"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga004.jf.intel.com with ESMTP; 21 Apr 2021 11:47:14 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 21 Apr 2021 11:47:13 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 21 Apr 2021 11:47:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 21 Apr 2021 11:47:13 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.52) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 21 Apr 2021 11:47:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kodFQICU+OfEF+XmiFNJ9U5GdQZGiLkuRWcW9EV2z7onokti5RWPg4A9grS6nLdhVB7ilSbPAywZkyYKH2D05UpCYCtBAaxfOAYZE0gX1+9R10SlOlMLTJKiQOguMsXwYYmuPfLjBqcSK5Ud/oZOvMuDc5jSsWQVPN1rnpxwI3RRLX9Jwy7eBEjbi0X9VuXWeL2xjOsYRLVW56Zbq9RreCX2AlNs2dze359xr1ziu8pDsGIX+1ZDLbCscVC1XiWcKvsS/5pny9MylzG8+To/QjQmK+VpuCEG5WtNMBoHgNqvm5EObgihTEVMbEfKDKSkE4wyYSk63xly6XzUInkasA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Uo/ORFS0aJVV1Q5oe4ff2OKjE0eKHVtJJkh+ZzIQaM=;
 b=dBbQlptQB5wvPKYzyHNNWbvvS/0voPH7llekXl0PDHuCqKSL0ltJWMS7WpqELuLSZSHnNp0Zysyx24gyIIZ0Dr21ODzaB9TJ8MTmahfU1ON7usIh9JEWJLewvx7D3TEEpdwRi1yEil4uBo+f+/ExJC3a5Fm0/PyGEK4k/9M6En2lk2rYTDfbzPQoHpIZMxo4w3i7HsMtFM7E54v7Ii3tcYgI8NkKdC+RiffukdtFOJOX9DMHc6TmjjEzo+zMn4Wa+SyzBwosUR7howhIb6QdChc3ECf9Vq8T1G6TTG9waC/clU82ZESqHYCE9KCvOLMdj8COQwzBABguxrvZDEK7DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Uo/ORFS0aJVV1Q5oe4ff2OKjE0eKHVtJJkh+ZzIQaM=;
 b=hZ9npQJPedhjA7iyfqCalml2g6AtKIkcJnGw/k5XuC/Ss48Egqpy+64vYUee0iqcfBg6MoVY9OQlLQ+qVthKm4UPvPseLzQDq8on4465lxDYsizKZW2OGBGOlk6puyDkE1rfAG+6jOxJgFi7cBkc0G8Cl35cbCoAtRj3OmqXwzE=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR1101MB2197.namprd11.prod.outlook.com (2603:10b6:910:18::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.23; Wed, 21 Apr
 2021 18:47:11 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08%7]) with mapi id 15.20.4020.023; Wed, 21 Apr 2021
 18:47:11 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S56 08/13] ice: Refactor
 VIRTCHNL_OP_CONFIG_VSI_QUEUES handling
Thread-Index: AQHXD5GJzyGvhJK0mEGJ6ZF6cB38Q6q/nitw
Date: Wed, 21 Apr 2021 18:47:10 +0000
Message-ID: <CY4PR11MB15769EF82C7B193E6779A172AB479@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
 <20210302181545.51822-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181545.51822-8-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: e2680f58-1a51-402b-3426-08d904f5df70
x-ms-traffictypediagnostic: CY4PR1101MB2197:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1101MB219787AB97D7E39A39F0310AAB479@CY4PR1101MB2197.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RqS3v7/0St+vcstg6sBA/aX/wUnhDKlyC65/YYuzyb4Ry0eU20/jiCZ8M5rptIuZDmBqPBvpp0qSxG4vf94GDrGhNLWT9dYmd1CwMYGdYsuaFzHUa0DAGJdUbgA4r1s8dWYIYmB+psQDFMfzsBHPU4IXhjsu8q2ilnTWtHOGiqXpWa3t1nkIeRuPvJrDk0Pmuc6OSeXbVZheP0A0RGZKMkBjn6Oi206Y6nGmlqLL/DeVFRuNb7qObHIeNDgb9/4ApvyJThrrffdjmAyt8KY6xGETpsik6M151zIi9gLqqUrhj2s27707J5fFLkknXIP+1QLFx4t1+WiSICL6BwvqEHxv10ZKOnPEe+Q+uRacEoVuS4MdwT6sHwTlqNV/4IFE4vCYb4PGfsXr2kpAA3e+/Ue3+VpSjflr7eLyjmiT23pld6nwR9iAvGxMjIdv6kZ2I1zO8YI3gLjl0e3IDyPFE6ODbGeTIxAZ8gMpz8fWgM8OApbNSNt1pP3zOXw3Hnmzji7TeswxNESm/lRlGIkr/Mg2U3xdasY+H/JzZTqtNygFqc5LB/p1Tt3fmWApXAUPU6AYqIJcXWgCyq+n4VYnw4J4ezYAFrQ7w35AXYxnZck=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(366004)(376002)(346002)(136003)(33656002)(66946007)(52536014)(316002)(9686003)(55016002)(122000001)(186003)(2906002)(71200400001)(66446008)(478600001)(83380400001)(66476007)(5660300002)(64756008)(66556008)(76116006)(8676002)(110136005)(53546011)(38100700002)(8936002)(26005)(7696005)(86362001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?pZHFUuSMcdw1FZ+XL9AE8yp3yygHj1VDJML8zVAvEL/jm7k2kMDwrTuVstVi?=
 =?us-ascii?Q?jH4adlnXb09tYTfxl8q/8VAm0mCFkogdfAAUYfO2mdkL3VRJbmQhDvcSx5rW?=
 =?us-ascii?Q?LZDuBDlS3w2dWWtgLiVoCJUlUxS4CpyvBYEfm3BY184IkNh+gYp+tXFmkxUy?=
 =?us-ascii?Q?LFLv3rxWxuo6aXS0bCBHUO28QMTnWvJBT+LGhOHVqGJR9WvWXPPoqsIMq0xe?=
 =?us-ascii?Q?fANGJhrbgZoQcqtnO7Iwk26/SvQARq9GJFuCl0j56tO/dt57qcfVAMek1Nir?=
 =?us-ascii?Q?cgJvNWeTVqaUZNKH1CN3tG2LRQyubCUQgXOdpexVlOOvn5tPO4hHoAIcmLms?=
 =?us-ascii?Q?O8tpq603xb2KoUrdip/HJat3UNupPik6/l1c3oxetOPrl9uciPmBw9u+KcKh?=
 =?us-ascii?Q?3N2mZ8+86707W7oefjm4v66W9FoMtHXXfOYeZ+fPnfvmwv8V3yzeQTWERdU7?=
 =?us-ascii?Q?qFLU2caIwdVqSseWZfh0UXsG3S5i6iLldCFA+rHrBnc0dsTMTuFv1rnpUUKp?=
 =?us-ascii?Q?7ibiYoOO5kD54WIAJsTc968is1t8tX8LTf8NL5DlcKhUqFFS2aW1RmOkUHAC?=
 =?us-ascii?Q?0iPBIddqu/KqrC+uAw/AcpVZ1W6UhpOXxpVabQVRZjPxOZqtxPMV3Qk1KSA4?=
 =?us-ascii?Q?iws3NevlUDf7qOkzV5vdDQpDapfWjuwHXmOCOUEzTd8Gu/fHwTVyBhai2cwZ?=
 =?us-ascii?Q?g6Lg50COSYje9UmmQAoZJBXI3zsd0YCUtbY7w8Q7L95Ks4EyXb2Yb7SIXRGx?=
 =?us-ascii?Q?evZ5dretR4enxfa3gZjBX6ojYwW/U+MnVgpEkpWeOH4I1euihfa0US5VbWDb?=
 =?us-ascii?Q?WEd1ljk9IN2bmq+G5izfF1ugFFigWyEEsMf0yyM4zBZR9b6Em+s0bmNheK4T?=
 =?us-ascii?Q?2ImFL28ws5VYMtCAleWyt9x9laBjb6NF+6tMMiimbe0Vu7jzQhgaTUPIsN4i?=
 =?us-ascii?Q?oojB2RDqra7Rl9sCi+8gb5UP5hDo3KEXSOKZ1slv0QF8dGtqXC0BLmPS9kAD?=
 =?us-ascii?Q?3JuNqAkipWC3fOm5xjYhO10O20WJei9X+XF+CK+YKh8EfNlSWVx3P2jUP3nn?=
 =?us-ascii?Q?tYWFq/qnnp6eGpQrc1Zy/4950/Y9e5XNS0c1bSTew2wNv3DavFosmb5En43C?=
 =?us-ascii?Q?j6Xo+pQVHIP+m9WMqXeU1zVCHu5Vi8IMMMLqVk6U+R/LgV3YaxABuV7WEEUn?=
 =?us-ascii?Q?TDGlKqJOwLwvHS7CwauM3qLyLUzeK+k3j/k5bHybitG138ttiNJ9O3F2+Rkn?=
 =?us-ascii?Q?7oAKfClEKAdUX7ykWVZ5rFbkfPxkEqjWlBioHYMaBWsp2zwXVaFO6DDZtJYa?=
 =?us-ascii?Q?cV6SgH5uoOG6UJQjbM2VOFnP?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2680f58-1a51-402b-3426-08d904f5df70
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2021 18:47:11.1067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CqYIdF80+JZl12ATP0SUQnvOyvWvdVTBN9D7CvdE7TmjKIC0hnJBSxjKYmEfw2AfELLF7CRDKiWrBa+/aZpHhjUaMFRG3OfxElxlNVrPQ3w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2197
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S56 08/13] ice: Refactor
 VIRTCHNL_OP_CONFIG_VSI_QUEUES handling
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
> Sent: wtorek, 2 marca 2021 19:16
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S56 08/13] ice: Refactor
> VIRTCHNL_OP_CONFIG_VSI_QUEUES handling
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently, when a VF requests queue configuration via
> VIRTCHNL_OP_CONFIG_VSI_QUEUES the PF driver expects that this
> message will only be called once and we always assume the queues being
> configured start from 0. This is incorrect and is causing issues when a VF tries
> to send this message for multiple queue blocks. Fix this by using the
> queue_id specified in the virtchnl message and allowing for individual Rx
> and/or Tx queues to be configured.
> 
> Also, reduce the duplicated for loops for configuring the queues by moving
> all the logic into a single for loop.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 27 ++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.h      |  4 ++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 51 ++++++++++---------
>  3 files changed, 59 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 01371b377fbc..ddcbd5bfd058 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -1668,6 +1668,33 @@ ice_write_qrxflxp_cntxt(struct ice_hw *hw, u16
> pf_q, u32 rxdid, u32 prio)
>  	wr32(hw, QRXFLXP_CNTXT(pf_q), regval);  }
> 
> +int ice_vsi_cfg_single_rxq(struct ice_vsi *vsi, u16 q_idx) {
> +	if (q_idx >= vsi->num_rxq)
> +		return -EINVAL;
> +
> +	return ice_vsi_cfg_rxq(vsi->rx_rings[q_idx]);
> +}
> +
> +int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_ring
> +**tx_rings, u16 q_idx) {
> +	struct ice_aqc_add_tx_qgrp *qg_buf;
> +	int err;
> +
> +	if (q_idx >= vsi->alloc_txq || !tx_rings || !tx_rings[q_idx])
> +		return -EINVAL;
> +
> +	qg_buf = kzalloc(struct_size(qg_buf, txqs, 1), GFP_KERNEL);
> +	if (!qg_buf)
> +		return -ENOMEM;
> +
> +	qg_buf->num_txqs = 1;
> +
> +	err = ice_vsi_cfg_txq(vsi, tx_rings[q_idx], qg_buf);
> +	kfree(qg_buf);
> +	return err;
> +}
> +
>  /**
>   * ice_vsi_cfg_rxqs - Configure the VSI for Rx
>   * @vsi: the VSI being configured
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h
> b/drivers/net/ethernet/intel/ice/ice_lib.h
> index 3da17895a2b1..4b16394da354 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.h
> @@ -12,6 +12,10 @@ bool ice_pf_state_is_nominal(struct ice_pf *pf);
> 
>  void ice_update_eth_stats(struct ice_vsi *vsi);
> 
> +int ice_vsi_cfg_single_rxq(struct ice_vsi *vsi, u16 q_idx);
> +
> +int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_ring
> +**tx_rings, u16 q_idx);
> +
>  int ice_vsi_cfg_rxqs(struct ice_vsi *vsi);
> 
>  int ice_vsi_cfg_lan_txqs(struct ice_vsi *vsi); diff --git
> a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index 7ffad4c8a64e..420fcb58e0d3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -3053,10 +3053,9 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8
> *msg)
>  	struct virtchnl_vsi_queue_config_info *qci =
>  	    (struct virtchnl_vsi_queue_config_info *)msg;
>  	struct virtchnl_queue_pair_info *qpi;
> -	u16 num_rxq = 0, num_txq = 0;
>  	struct ice_pf *pf = vf->pf;
>  	struct ice_vsi *vsi;
> -	int i;
> +	int i, q_idx;
> 
>  	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> @@ -3094,18 +3093,31 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8
> *msg)
>  			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>  			goto error_param;
>  		}
> +
> +		q_idx = qpi->rxq.queue_id;
> +
> +		/* make sure selected "q_idx" is in valid range of queues
> +		 * for selected "vsi"
> +		 */
> +		if (q_idx >= vsi->alloc_txq || q_idx >= vsi->alloc_rxq) {
> +			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +			goto error_param;
> +		}
> +
>  		/* copy Tx queue info from VF into VSI */
>  		if (qpi->txq.ring_len > 0) {
> -			num_txq++;
>  			vsi->tx_rings[i]->dma = qpi->txq.dma_ring_addr;
>  			vsi->tx_rings[i]->count = qpi->txq.ring_len;
> +			if (ice_vsi_cfg_single_txq(vsi, vsi->tx_rings, q_idx)) {
> +				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +				goto error_param;
> +			}
>  		}
> 
>  		/* copy Rx queue info from VF into VSI */
>  		if (qpi->rxq.ring_len > 0) {
>  			u16 max_frame_size =
> ice_vc_get_max_frame_size(vf);
> 
> -			num_rxq++;
>  			vsi->rx_rings[i]->dma = qpi->rxq.dma_ring_addr;
>  			vsi->rx_rings[i]->count = qpi->rxq.ring_len;
> 
> @@ -3122,27 +3134,20 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8
> *msg)
>  				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>  				goto error_param;
>  			}
> -		}
> 
> -		vsi->max_frame = qpi->rxq.max_pkt_size;
> -		/* add space for the port VLAN since the VF driver is not
> -		 * expected to account for it in the MTU calculation
> -		 */
> -		if (vf->port_vlan_info)
> -			vsi->max_frame += VLAN_HLEN;
> -	}
> -
> -	/* VF can request to configure less than allocated queues or default
> -	 * allocated queues. So update the VSI with new number
> -	 */
> -	vsi->num_txq = num_txq;
> -	vsi->num_rxq = num_rxq;
> -	/* All queues of VF VSI are in TC 0 */
> -	vsi->tc_cfg.tc_info[0].qcount_tx = num_txq;
> -	vsi->tc_cfg.tc_info[0].qcount_rx = num_rxq;
> +			vsi->max_frame = qpi->rxq.max_pkt_size;
> +			/* add space for the port VLAN since the VF driver is
> not
> +			 * expected to account for it in the MTU calculation
> +			 */
> +			if (vf->port_vlan_info)
> +				vsi->max_frame += VLAN_HLEN;
> 
> -	if (ice_vsi_cfg_lan_txqs(vsi) || ice_vsi_cfg_rxqs(vsi))
> -		v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
> +			if (ice_vsi_cfg_single_rxq(vsi, q_idx)) {
> +				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +				goto error_param;
> +			}
> +		}
> +	}
> 
>  error_param:
>  	/* send the response to the VF */

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
