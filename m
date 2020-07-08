Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0892193E1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 00:55:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29DE387B64;
	Wed,  8 Jul 2020 22:55:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MDe2GLQL21Ej; Wed,  8 Jul 2020 22:55:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 52D6B87DC5;
	Wed,  8 Jul 2020 22:55:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 91E821BF308
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 22:55:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8087387B64
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 22:55:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WfOVfZR80elz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2020 22:55:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 36EAE85A56
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 22:55:25 +0000 (UTC)
IronPort-SDR: goCAch0d1asb+0bQ2gSSgIEo0ZnbsB//TOJA5ANSCRutedc2tWp/U3RQl53BuAQqje4h4RPdAL
 gOO5tndBgzcw==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="149404852"
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="149404852"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 15:55:24 -0700
IronPort-SDR: IBd76Tb4qAkNahO+mlFbquMVLeAhFoB3XZJq/wxk3BR9nh4R4ossLGnE4R2Zi8A1jsdW1thn+w
 pLB18P24/z0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="323063842"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Jul 2020 15:55:23 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Jul 2020 15:55:23 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX157.amr.corp.intel.com (10.18.116.73) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Jul 2020 15:55:23 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 8 Jul 2020 15:55:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PSGkHbG/nM21tRWvdAq11JGCizYyugQBCQxy4/XgkDz4juClUSPtsvTdfoQZuxqZF/8keVMLaPLTYbFT4JEfLv7WoVf24FdfX6ytdazTEL+YKVD7LIve/vXV0xfxa9fFWQmpJZSGRN8vB5pHJCltUS5HcKtg2kncnRWzi4vYZcHum0r8cix0WmCK8lPkqYIVOqWuG+6cbIkosiyFzmpijwEGp/Q+0I7DAqZ7J9igswCLB5HW31lAgpOP0qN7roMIOX15GMY/MEZgf5mn6KgEDr+82bllnuLAy9pcYuCT4x+vqbVp6nRg2pF8jAX/z2h8Zo4A6DMC1S8CvF4cmUjGsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I5aLcAZmfBZPwy1FOcjj+oKF54w83gj0JZUa5m74jdY=;
 b=J5kZES8QTCEBHkroMLWFwOuQc0ZB+GNQvJbleQ8sI56yp9Y7JJ7gueZKoDw7lX3f9uNki/8Tih9MFNu5UXN3BNIrcASEs3HRe5IUfDZ5yZ4wds+dXKM3ZqgOaVyCmUH0Xb5uXVkYu2QvU8v5Pi7tMUQXdDSFwpb3B/Ya7xMglcPUq1+6fr16ejgKHE7gEqmWHk+bZ2T7W1Vk8EcAw0G0vuFOQOq5RpKahpVVkMMWohAsFI+dMRpUb96fHmqvyZBlReD/Zw7HsN630+HZSgrIdnrW5zQ1g6Th+iLMNshSX59OF023NFvbsiwZ0hQ8dcDvhGm5vHrRHibxxp2TUciNjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I5aLcAZmfBZPwy1FOcjj+oKF54w83gj0JZUa5m74jdY=;
 b=TOnYTdkAXmd15GNzgBHCB/HRt+LFkw5q+3C5jloqaquintGALbbrXM/n9aZAkHpQSGFplYv8r/ffPbitTW1XPdA2iGN1UunNuf5e8LI85vcqd42+BED+bCdFo6frHkKxh4pmvvBb33JW/7aG110dVA5xMEvQxwlnBhr4YCdAXHI=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4622.namprd11.prod.outlook.com (2603:10b6:806:9c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.23; Wed, 8 Jul
 2020 22:55:22 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bda3:d65a:f390:f875]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bda3:d65a:f390:f875%7]) with mapi id 15.20.3153.029; Wed, 8 Jul 2020
 22:55:21 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "kuba@kernel.org" <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [net-next, v7 5/5] ice: add switch rule
 management for DCF
Thread-Index: AQHWT0gN/SntuYrO80u3y4MvxI5z26j+VyUA
Date: Wed, 8 Jul 2020 22:55:21 +0000
Message-ID: <eca3253391dd34a267e607dbd847d6878bc3a6fe.camel@intel.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200701012557.40234-1-haiyue.wang@intel.com>
 <20200701012557.40234-6-haiyue.wang@intel.com>
In-Reply-To: <20200701012557.40234-6-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2629a6eb-fe86-464f-f732-08d82391fe78
x-ms-traffictypediagnostic: SA0PR11MB4622:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB46225D4F9FD48F0FD3FEEBAAC6670@SA0PR11MB4622.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:935;
x-forefront-prvs: 04583CED1A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eNbulmEbW+0GV5+0n6lNfYaxXLMBOB3QnTtwyFt6ut4NkHjEE6djvzbs8maqXVSnEYfuPJ6o6Q9Doe0GhyLeUF29H/GXvs37JQw3f+Kd6beeiwgS3lIGPhp6X/1s0cWMxwMntuOn+pvMiV/1SD+2WzvY6vAK6HzkAsQDr/iRWgbovuMnxsqBMiEWHd226JSW0Gsb4hAmBJtq/CKBEU4YTZYSCiQzCYH2RkZS8PZYwvsGVM+PU+srpamljuC6dBxTQz23Q569E6lCBZULn6jPZ1plA7eP18/yYnlqQk3WSKeu8PEsADbByiuLfuRsjsA4akJZ2S7DaSK+80cM4gTFDA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(136003)(346002)(396003)(376002)(36756003)(186003)(4326008)(66946007)(66446008)(6506007)(8936002)(66556008)(66476007)(64756008)(76116006)(2906002)(91956017)(5660300002)(86362001)(6512007)(26005)(110136005)(316002)(71200400001)(83380400001)(107886003)(478600001)(2616005)(54906003)(8676002)(6486002)(30864003)(579004)(559001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: oZWahsJtFJoqMuUBq71Ux0fhdf9wbmWcev7B+i5Mcl3oi2b3DtCXISM893G78ap1SEqdcpr3ci+DJg1YG7ikSBoU/aYejLdfbibLwTHoY+KNjqPFvE+pgsrSsK7WtJOlG9bepQ3phLyp5fNp9HCnWn6jd6o7ajUZF6SLq31z6Jy8jN5c+3aqd7uqxgi5VpU3zMyCaZmhaje031dX27LInwdr87MrkYwUMSyi7UGn70ziZruwQb9MUcJtv7/98DK8CZtlRaeJhYuA0BO6bAFoTWsYRSW6H5j5tVQix+X0vct84xLhjCpsYDavZyxN2N2bxqyx8BgadSAIDGxzktCX8FoaO2R6DEUBIm6mx66R49TGKV09RH+By672YCJumou/nvVT6FdIX15AH4SB7woCnWgpMZLUF9q/S1vtF53VVlzWpG+i2urKg8n4QtuzAG/op+nYqkdBo7lgbO3UwEmxr42Ba/oXLmydeuzJRIpjVp8=
Content-ID: <162F15BE523D3B4B8B9830ACBB0C2880@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2629a6eb-fe86-464f-f732-08d82391fe78
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2020 22:55:21.8556 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DFYd9oe+2dVy5aZQDOo0HVHyaf/MMd6pykLjfoOTI2j7ncSXCs+9xI5zXe7cdegVrVtnMhxPXwK5TT5FN92rBwgRLcbNra//w+4OVLL+o/4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4622
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next,
 v7 5/5] ice: add switch rule management for DCF
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
Cc: "Zhang, Xiao" <xiao.zhang@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Xing,
 Beilei" <beilei.xing@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2020-07-01 at 09:25 +0800, Haiyue Wang wrote:
> The PF shall track all the outstanding switch filters (filter IDs to
> be
> precise) added by the DCF.
> 
> Upon a VF reset event, the PF shall clear all outstanding switch
> filters
> for the given VF. Upon completion of either VF or PF reset, the PF
> shall
> skip replay of filters that were added by the DCF. The PF shall
> however
> continue to replay the filters that were not added by DCF for the
> VF(s).
> 
> If the trust mode of the DCF is taken away without the DCF gracefully
> relinquishing the DCF functionality (by way appropriate virtchnl
> message
> exchanges), then the PF shall remove all switch filters that were
> added
> by the DCF. The PF shall transition back from DCF mode to regular
> mode,
> the VF shall be treated as any other untrusted VF, and the PF will
> reset
> the VF.
> 
> If a designated DCF requests AVF functionality from the same VF (VF-
> ID)
> without the DCF gracefully relinquishing the DCF functionality first
> (by
> way appropriate virtchnl message exchanges), the PF shall remove all
> the
> switch filters that were added by the DCF.
> 
> Signed-off-by: Xiao Zhang <xiao.zhang@intel.com>
> Signed-off-by: Beilei Xing <beilei.xing@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcf.c      | 713
> ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  41 +
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  16 +-
>  drivers/net/ethernet/intel/ice/ice_switch.h   |  27 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   9 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  40 +
>  6 files changed, 821 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dcf.c
> b/drivers/net/ethernet/intel/ice/ice_dcf.c
> index e7d37735aaa5..154005f1b634 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dcf.c
> @@ -124,3 +124,716 @@ void ice_dcf_set_state(struct ice_pf *pf, enum
> ice_dcf_state state)
>  
>  	pf->dcf.state = state;
>  }
> +
> +/**
> + * ice_dcf_rm_sw_rule_to_vsi - remove switch rule of "forward to
> VSI"
> + * @pf: pointer to the PF struct
> + * @s_entry: pointer to switch rule entry to remove
> + */
> +static int
> +ice_dcf_rm_sw_rule_to_vsi(struct ice_pf *pf,
> +			  struct ice_dcf_sw_rule_entry *s_entry)
> +{
> +	struct ice_aqc_sw_rules_elem *s_rule;
> +	enum ice_status status;
> +
> +	s_rule = kzalloc(ICE_SW_RULE_RX_TX_NO_HDR_SIZE, GFP_KERNEL);
> +	if (!s_rule)
> +		return -ENOMEM;
> +
> +	s_rule->type = cpu_to_le16(ICE_AQC_SW_RULES_T_LKUP_RX);
> +	s_rule->pdata.lkup_tx_rx.act = 0;
> +	s_rule->pdata.lkup_tx_rx.hdr_len = 0;
> +	s_rule->pdata.lkup_tx_rx.index = cpu_to_le16(s_entry->rule_id);
> +	status = ice_aq_sw_rules(&pf->hw, s_rule,
> ICE_SW_RULE_RX_TX_NO_HDR_SIZE,
> +				 1, ice_aqc_opc_remove_sw_rules, NULL);
> +	kfree(s_rule);
> +	if (status)
> +		return -EIO;
> +
> +	list_del(&s_entry->list_entry);
> +	kfree(s_entry);
> +	return 0;
> +}
> +
> +/**
> + * ice_dcf_rm_sw_rule_to_vsi_list - remove switch rule of "forward
> to VSI list"
> + * @pf: pointer to the PF struct
> + * @s_entry: pointer to switch rule entry to remove
> + */
> +static int
> +ice_dcf_rm_sw_rule_to_vsi_list(struct ice_pf *pf,
> +			       struct ice_dcf_sw_rule_entry *s_entry)
> +{
> +	struct ice_dcf_vsi_list_info *vsi_list_info = s_entry-
> >vsi_list_info;
> +	struct ice_aqc_alloc_free_res_elem *res_buf;
> +	struct ice_aqc_sw_rules_elem *s_rule;
> +	enum ice_status status;
> +	u16 rule_sz;
> +	u16 vsi_id;
> +	int i = 0;
> +
> +	if (!vsi_list_info)
> +		return -EINVAL;
> +
> +	/* The VSI list is empty, it can be freed immediately */
> +	if (!vsi_list_info->vsi_count)
> +		goto free_vsi_list;
> +
> +	rule_sz = ICE_SW_RULE_VSI_LIST_SIZE(vsi_list_info->vsi_count);
> +	s_rule = kzalloc(rule_sz, GFP_KERNEL);
> +	if (!s_rule)
> +		return -ENOMEM;
> +
> +	s_rule->type = cpu_to_le16(ICE_AQC_SW_RULES_T_VSI_LIST_CLEAR);
> +	s_rule->pdata.vsi_list.index = cpu_to_le16(vsi_list_info-
> >list_id);
> +	s_rule->pdata.vsi_list.number_vsi =
> +					cpu_to_le16(vsi_list_info-
> >vsi_count);
> +	for_each_set_bit(vsi_id, vsi_list_info->hw_vsi_map,
> ICE_HW_VSI_ID_MAX)
> +		s_rule->pdata.vsi_list.vsi[i++] = cpu_to_le16(vsi_id);
> +
> +	bitmap_zero(vsi_list_info->hw_vsi_map, ICE_HW_VSI_ID_MAX);
> +	vsi_list_info->vsi_count = 0;
> +
> +	status = ice_aq_sw_rules(&pf->hw, s_rule, rule_sz, 1,
> +				 ice_aqc_opc_update_sw_rules, NULL);
> +	kfree(s_rule);
> +	if (status)
> +		return -EIO;
> +
> +free_vsi_list:
> +	res_buf = kzalloc(sizeof(*res_buf), GFP_KERNEL);
> +	if (!res_buf)
> +		return -ENOMEM;
> +
> +	res_buf->res_type = cpu_to_le16(ICE_AQC_RES_TYPE_VSI_LIST_REP);
> +	res_buf->num_elems = cpu_to_le16(1);
> +	res_buf->elem[0].e.sw_resp = cpu_to_le16(vsi_list_info-
> >list_id);
> +	status = ice_aq_alloc_free_res(&pf->hw, 1, res_buf,
> sizeof(*res_buf),
> +				       ice_aqc_opc_free_res, NULL);
> +	kfree(res_buf);
> +	if (status)
> +		return -EIO;
> +
> +	list_del(&vsi_list_info->list_entry);
> +	kfree(vsi_list_info);
> +	s_entry->vsi_list_info = NULL;
> +
> +	return ice_dcf_rm_sw_rule_to_vsi(pf, s_entry);
> +}
> +
> +/**
> + * ice_dcf_rm_vsi_from_list - remove VSI from switch rule forward
> VSI list
> + * @pf: pointer to the PF struct
> + * @vsi_list_info: pointer to the VSI list info
> + * @hw_vsi_id: the Hardware VSI number
> + */
> +static int
> +ice_dcf_rm_vsi_from_list(struct ice_pf *pf,
> +			 struct ice_dcf_vsi_list_info *vsi_list_info,
> +			 u16 hw_vsi_id)
> +{
> +	struct ice_aqc_sw_rules_elem *s_rule;
> +	enum ice_status status;
> +
> +	if (!vsi_list_info || !vsi_list_info->vsi_count ||
> +	    !test_bit(hw_vsi_id, vsi_list_info->hw_vsi_map))
> +		return -ENOENT;
> +
> +	s_rule = kzalloc(ICE_SW_RULE_VSI_LIST_SIZE(1), GFP_KERNEL);
> +	if (!s_rule)
> +		return -ENOMEM;
> +
> +	s_rule->type = cpu_to_le16(ICE_AQC_SW_RULES_T_VSI_LIST_CLEAR);
> +	s_rule->pdata.vsi_list.index = cpu_to_le16(vsi_list_info-
> >list_id);
> +	s_rule->pdata.vsi_list.number_vsi = cpu_to_le16(1);
> +	s_rule->pdata.vsi_list.vsi[0] = cpu_to_le16(hw_vsi_id);
> +	status = ice_aq_sw_rules(&pf->hw, s_rule,
> +				 ICE_SW_RULE_VSI_LIST_SIZE(1), 1,
> +				 ice_aqc_opc_update_sw_rules, NULL);
> +	kfree(s_rule);
> +	if (status)
> +		return -EIO;
> +
> +	/* When the VF resets gracefully, it should keep the VSI list
> and its
> +	 * rule, just clears the VSI from list, so that the DCF can
> replay the
> +	 * rule by updating this VF to list successfully.
> +	 */
> +	vsi_list_info->vsi_count--;
> +	clear_bit(hw_vsi_id, vsi_list_info->hw_vsi_map);
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_rm_dcf_sw_vsi_rule - remove switch rules added by DCF to VSI
> + * @pf: pointer to the PF struct
> + * @hw_vsi_id: hardware VSI ID of the VF
> + */
> +void ice_rm_dcf_sw_vsi_rule(struct ice_pf *pf, u16 hw_vsi_id)
> +{
> +	struct ice_dcf_sw_rule_entry *s_entry, *tmp;
> +	int ret;
> +
> +	list_for_each_entry_safe(s_entry, tmp, &pf->dcf.sw_rule_head,
> +				 list_entry)
> +		if (s_entry->fltr_act == ICE_FWD_TO_VSI_LIST) {
> +			ret = ice_dcf_rm_vsi_from_list(pf,
> +						       s_entry-
> >vsi_list_info,
> +						       hw_vsi_id);
> +			if (ret && ret != -ENOENT)
> +				dev_err(ice_pf_to_dev(pf),
> +					"Failed to remove VSI %u from
> VSI list : %d\n",
> +					hw_vsi_id, ret);
> +		} else if (s_entry->fwd_id.hw_vsi_id == hw_vsi_id) {
> +			ret = ice_dcf_rm_sw_rule_to_vsi(pf, s_entry);
> +			if (ret)
> +				dev_err(ice_pf_to_dev(pf),
> +					"Failed to remove VSI %u switch
> rule : %d\n",
> +					hw_vsi_id, ret);
> +		}
> +}
> +
> +/**
> + * ice_dcf_init_sw_rule_mgmt - initializes DCF rule filter mngt
> struct
> + * @pf: pointer to the PF struct
> + */
> +void ice_dcf_init_sw_rule_mgmt(struct ice_pf *pf)
> +{
> +	INIT_LIST_HEAD(&pf->dcf.sw_rule_head);
> +	INIT_LIST_HEAD(&pf->dcf.vsi_list_info_head);
> +}
> +
> +/**
> + * ice_rm_all_dcf_sw_rules - remove switch rules configured by DCF
> + * @pf: pointer to the PF struct
> + */
> +void ice_rm_all_dcf_sw_rules(struct ice_pf *pf)
> +{
> +	struct ice_dcf_vsi_list_info *vsi_list_info, *list_info_tmp;
> +	struct ice_dcf_sw_rule_entry *sw_rule, *rule_tmp;
> +	u16 rule_id, list_id;
> +	int ret;
> +
> +	list_for_each_entry_safe(sw_rule, rule_tmp, &pf-
> >dcf.sw_rule_head,
> +				 list_entry)
> +		if (sw_rule->fltr_act == ICE_FWD_TO_VSI_LIST) {
> +			list_id = sw_rule->fwd_id.vsi_list_id;
> +			rule_id = sw_rule->rule_id;
> +			ret = ice_dcf_rm_sw_rule_to_vsi_list(pf,
> sw_rule);
> +			if (ret)
> +				dev_err(ice_pf_to_dev(pf),
> +					"Failed to remove switch rule
> 0x%04x with list id %u : %d\n",
> +					rule_id, list_id, ret);
> +		} else {
> +			rule_id = sw_rule->rule_id;
> +			ret = ice_dcf_rm_sw_rule_to_vsi(pf, sw_rule);
> +			if (ret)
> +				dev_err(ice_pf_to_dev(pf),
> +					"Failed to remove switch rule
> 0x%04x : %d\n",
> +					rule_id, ret);
> +		}
> +
> +	/* clears rule filter management data if AdminQ command has
> error */
> +	list_for_each_entry_safe(vsi_list_info, list_info_tmp,
> +				 &pf->dcf.vsi_list_info_head,
> +				 list_entry) {
> +		list_del(&vsi_list_info->list_entry);
> +		kfree(vsi_list_info);
> +	}
> +
> +	list_for_each_entry_safe(sw_rule, rule_tmp, &pf-
> >dcf.sw_rule_head,
> +				 list_entry) {
> +		list_del(&sw_rule->list_entry);
> +		kfree(sw_rule);
> +	}
> +}
> +
> +/**
> + * ice_dcf_find_vsi_list_info - find the VSI list by ID.
> + * @pf: pointer to the PF info
> + * @vsi_list_id: VSI list ID
> + */
> +static struct ice_dcf_vsi_list_info *
> +ice_dcf_find_vsi_list_info(struct ice_pf *pf, u16 vsi_list_id)
> +{
> +	struct ice_dcf_vsi_list_info *list_info;
> +
> +	list_for_each_entry(list_info, &pf->dcf.vsi_list_info_head,
> list_entry)
> +		if (list_info->list_id == vsi_list_id)
> +			return list_info;
> +
> +	return NULL;
> +}
> +
> +/**
> + * ice_dcf_add_vsi_id - add new VSI ID into list.
> + * @vsi_list_info: pointer to the VSI list info
> + * @hw_vsi_id: the VSI ID
> + */
> +static void
> +ice_dcf_add_vsi_id(struct ice_dcf_vsi_list_info *vsi_list_info, u16
> hw_vsi_id)
> +{
> +	if (!test_and_set_bit(hw_vsi_id, vsi_list_info->hw_vsi_map))
> +		vsi_list_info->vsi_count++;
> +}
> +
> +/**
> + * ice_dcf_del_vsi_id - delete the VSI ID from list.
> + * @vsi_list_info: pointer to the VSI list info
> + * @hw_vsi_id: the VSI ID
> + */
> +static void
> +ice_dcf_del_vsi_id(struct ice_dcf_vsi_list_info *vsi_list_info, u16
> hw_vsi_id)
> +{
> +	if (test_and_clear_bit(hw_vsi_id, vsi_list_info->hw_vsi_map))
> +		vsi_list_info->vsi_count--;
> +}
> +
> +/**
> + * ice_dcf_parse_alloc_vsi_list_res - parse the allocate VSI list
> resource
> + * @pf: pointer to the PF info
> + * @res: pointer to the VSI list resource
> + */
> +static enum virtchnl_status_code
> +ice_dcf_parse_alloc_vsi_list_res(struct ice_pf *pf,
> +				 struct ice_aqc_res_elem *res)
> +{
> +	struct ice_dcf_vsi_list_info *vsi_list_info;
> +	u16 list_id = le16_to_cpu(res->e.sw_resp);
> +
> +	vsi_list_info = ice_dcf_find_vsi_list_info(pf, list_id);
> +	if (vsi_list_info)
> +		return VIRTCHNL_STATUS_SUCCESS;
> +
> +	vsi_list_info = kzalloc(sizeof(*vsi_list_info), GFP_KERNEL);
> +	if (!vsi_list_info)
> +		return VIRTCHNL_STATUS_ERR_NO_MEMORY;
> +
> +	vsi_list_info->list_id = list_id;
> +	list_add(&vsi_list_info->list_entry, &pf-
> >dcf.vsi_list_info_head);
> +
> +	return VIRTCHNL_STATUS_SUCCESS;
> +}
> +
> +/**
> + * ice_dcf_parse_free_vsi_list_res - parse the free VSI list
> resource
> + * @pf: pointer to the PF info
> + * @res: pointer to the VSI list resource
> + */
> +static enum virtchnl_status_code
> +ice_dcf_parse_free_vsi_list_res(struct ice_pf *pf,
> +				struct ice_aqc_res_elem *res)
> +{
> +	struct ice_dcf_vsi_list_info *vsi_list_info;
> +	u16 list_id = le16_to_cpu(res->e.sw_resp);
> +
> +	vsi_list_info = ice_dcf_find_vsi_list_info(pf, list_id);
> +	if (!vsi_list_info)
> +		return VIRTCHNL_STATUS_ERR_PARAM;
> +
> +	if (vsi_list_info->vsi_count)
> +		dev_warn(ice_pf_to_dev(pf),
> +			 "VSI list %u still has %u VSIs to be
> removed!\n",
> +			 list_id, vsi_list_info->vsi_count);
> +
> +	if (vsi_list_info->sw_rule)
> +		vsi_list_info->sw_rule->vsi_list_info = NULL;
> +
> +	list_del(&vsi_list_info->list_entry);
> +	kfree(vsi_list_info);
> +
> +	return VIRTCHNL_STATUS_SUCCESS;
> +}
> +
> +/**
> + * ice_dcf_set_vsi_list - set the VSI to VSI list
> + * @pf: pointer to the PF info
> + * @vsi_list: pointer to the VSI ID list to be set
> + */
> +static enum virtchnl_status_code
> +ice_dcf_set_vsi_list(struct ice_pf *pf, struct ice_sw_rule_vsi_list
> *vsi_list)
> +{
> +	struct ice_dcf_vsi_list_info *vsi_list_info;
> +	int i;
> +
> +	vsi_list_info =
> +		ice_dcf_find_vsi_list_info(pf, le16_to_cpu(vsi_list-
> >index));
> +	if (!vsi_list_info)
> +		return VIRTCHNL_STATUS_ERR_PARAM;
> +
> +	for (i = 0; i < le16_to_cpu(vsi_list->number_vsi); i++)
> +		ice_dcf_add_vsi_id(vsi_list_info,
> +				   le16_to_cpu(vsi_list->vsi[i]));
> +
> +	return VIRTCHNL_STATUS_SUCCESS;
> +}
> +
> +/**
> + * ice_dcf_clear_vsi_list - clear the VSI from VSI list
> + * @pf: pointer to the PF info
> + * @vsi_list: pointer to the VSI ID list to be cleared
> + */
> +static enum virtchnl_status_code
> +ice_dcf_clear_vsi_list(struct ice_pf *pf, struct
> ice_sw_rule_vsi_list *vsi_list)
> +{
> +	struct ice_dcf_vsi_list_info *vsi_list_info;
> +	int i;
> +
> +	vsi_list_info =
> +		ice_dcf_find_vsi_list_info(pf, le16_to_cpu(vsi_list-
> >index));
> +	if (!vsi_list_info)
> +		return VIRTCHNL_STATUS_ERR_PARAM;
> +
> +	for (i = 0; i < le16_to_cpu(vsi_list->number_vsi); i++)
> +		ice_dcf_del_vsi_id(vsi_list_info,
> +				   le16_to_cpu(vsi_list->vsi[i]));
> +
> +	return VIRTCHNL_STATUS_SUCCESS;
> +}
> +
> +/**
> + * ice_dcf_find_sw_rule - find the switch rule by ID.
> + * @pf: pointer to the PF info
> + * @rule_id: switch rule ID
> + */
> +static struct ice_dcf_sw_rule_entry *
> +ice_dcf_find_sw_rule(struct ice_pf *pf, u16 rule_id)
> +{
> +	struct ice_dcf_sw_rule_entry *sw_rule;
> +
> +	list_for_each_entry(sw_rule, &pf->dcf.sw_rule_head, list_entry)
> +		if (sw_rule->rule_id == rule_id)
> +			return sw_rule;
> +
> +	return NULL;
> +}
> +
> +/**
> + * ice_dcf_parse_add_sw_rule_data - parse the add switch rule data
> + * @pf: pointer to the PF info
> + * @lkup: pointer to the add switch rule data
> + */
> +static enum virtchnl_status_code
> +ice_dcf_parse_add_sw_rule_data(struct ice_pf *pf,
> +			       struct ice_sw_rule_lkup_rx_tx *lkup)
> +{
> +	struct ice_dcf_sw_rule_entry *sw_rule;
> +	u32 act;
> +
> +	sw_rule = kzalloc(sizeof(*sw_rule), GFP_KERNEL);
> +	if (!sw_rule)
> +		return VIRTCHNL_STATUS_ERR_NO_MEMORY;
> +
> +	act = le32_to_cpu(lkup->act);
> +	sw_rule->fltr_act = ICE_FWD_TO_VSI;
> +	sw_rule->fwd_id.hw_vsi_id = (act & ICE_SINGLE_ACT_VSI_ID_M) >>
> +					ICE_SINGLE_ACT_VSI_ID_S;
> +	sw_rule->rule_id = le16_to_cpu(lkup->index);
> +
> +	list_add(&sw_rule->list_entry, &pf->dcf.sw_rule_head);
> +
> +	return VIRTCHNL_STATUS_SUCCESS;
> +}
> +
> +/**
> + * ice_dcf_parse_updt_sw_rule_data - parse the update switch rule
> data
> + * @pf: pointer to the PF info
> + * @lkup: pointer to the update switch rule data
> + */
> +static enum virtchnl_status_code
> +ice_dcf_parse_updt_sw_rule_data(struct ice_pf *pf,
> +				struct ice_sw_rule_lkup_rx_tx *lkup)
> +{
> +	struct ice_dcf_vsi_list_info *vsi_list_info;
> +	struct ice_dcf_sw_rule_entry *sw_rule;
> +	u16 vsi_list_id, rule_id;
> +	u32 act;
> +
> +	rule_id = le16_to_cpu(lkup->index);
> +	sw_rule = ice_dcf_find_sw_rule(pf, rule_id);
> +	if (!sw_rule)
> +		return VIRTCHNL_STATUS_ERR_PARAM;
> +
> +	act = le32_to_cpu(lkup->act);
> +	if (!(act & ICE_SINGLE_ACT_VSI_LIST)) {
> +		u16 vsi_hw_id = (act & ICE_SINGLE_ACT_VSI_ID_M) >>
> +				ICE_SINGLE_ACT_VSI_ID_S;
> +
> +		sw_rule->fltr_act = ICE_FWD_TO_VSI;
> +		sw_rule->fwd_id.hw_vsi_id = vsi_hw_id;
> +
> +		return VIRTCHNL_STATUS_SUCCESS;
> +	}
> +
> +	vsi_list_id = (act & ICE_SINGLE_ACT_VSI_LIST_ID_M) >>
> +				ICE_SINGLE_ACT_VSI_LIST_ID_S;
> +	if (sw_rule->vsi_list_info) {
> +		if (sw_rule->vsi_list_info->list_id == vsi_list_id)
> +			return VIRTCHNL_STATUS_SUCCESS;
> +
> +		dev_err(ice_pf_to_dev(pf),
> +			"The switch rule 0x%04x is running on VSI list
> %u\n",
> +			rule_id, sw_rule->vsi_list_info->list_id);
> +		return VIRTCHNL_STATUS_ERR_PARAM;
> +	}
> +
> +	vsi_list_info = ice_dcf_find_vsi_list_info(pf, vsi_list_id);
> +	if (!vsi_list_info) {
> +		dev_err(ice_pf_to_dev(pf),
> +			"No VSI list %u found to bind the switch rule
> 0x%04x\n",
> +			vsi_list_id, rule_id);
> +		return VIRTCHNL_STATUS_ERR_PARAM;
> +	}
> +
> +	if (vsi_list_info->sw_rule) {
> +		if (vsi_list_info->sw_rule->rule_id == rule_id)
> +			return VIRTCHNL_STATUS_SUCCESS;
> +
> +		dev_err(ice_pf_to_dev(pf),
> +			"The VSI list %u is running on switch rule
> 0x%04x\n",
> +			vsi_list_id, vsi_list_info->sw_rule->rule_id);
> +		return VIRTCHNL_STATUS_ERR_PARAM;
> +	}
> +
> +	vsi_list_info->sw_rule = sw_rule;
> +
> +	sw_rule->fltr_act = ICE_FWD_TO_VSI_LIST;
> +	sw_rule->fwd_id.vsi_list_id = vsi_list_id;
> +	sw_rule->vsi_list_info = vsi_list_info;
> +
> +	return VIRTCHNL_STATUS_SUCCESS;
> +}
> +
> +/**
> + * ice_dcf_parse_rm_sw_rule_data - parse the remove switch rule data
> + * @pf: pointer to the PF info
> + * @lkup: pointer to the remove switch rule data
> + */
> +static enum virtchnl_status_code
> +ice_dcf_parse_rm_sw_rule_data(struct ice_pf *pf,
> +			      struct ice_sw_rule_lkup_rx_tx *lkup)
> +{
> +	struct ice_dcf_sw_rule_entry *sw_rule, *tmp;
> +	u16 rule_id = le16_to_cpu(lkup->index);
> +
> +	list_for_each_entry_safe(sw_rule, tmp, &pf->dcf.sw_rule_head,
> +				 list_entry)
> +		if (sw_rule->rule_id == rule_id) {
> +			list_del(&sw_rule->list_entry);
> +			kfree(sw_rule);
> +		}
> +
> +	return VIRTCHNL_STATUS_SUCCESS;
> +}
> +
> +/**
> + * ice_dcf_handle_add_sw_rule_rsp - handle the add switch rule
> response
> + * @pf: pointer to the PF info
> + * @aq_buf: pointer to the add switch rule command buffer
> + */
> +static enum virtchnl_status_code
> +ice_dcf_handle_add_sw_rule_rsp(struct ice_pf *pf, u8 *aq_buf)
> +{
> +	enum virtchnl_status_code status = VIRTCHNL_STATUS_SUCCESS;
> +	struct ice_aqc_sw_rules_elem *em =
> +			(struct ice_aqc_sw_rules_elem *)aq_buf;
> +	u16 type = le16_to_cpu(em->type);
> +
> +	if (type == ICE_AQC_SW_RULES_T_VSI_LIST_SET)
> +		status = ice_dcf_set_vsi_list(pf, &em->pdata.vsi_list);
> +	else if (type == ICE_AQC_SW_RULES_T_LKUP_RX)
> +		status = ice_dcf_parse_add_sw_rule_data(pf,
> +							&em-
> >pdata.lkup_tx_rx);
> +
> +	return status;
> +}
> +
> +/**
> + * ice_dcf_handle_updt_sw_rule_rsp - handle the update switch rule
> response
> + * @pf: pointer to the PF info
> + * @aq_buf: pointer to the update switch rule command buffer
> + */
> +static enum virtchnl_status_code
> +ice_dcf_handle_updt_sw_rule_rsp(struct ice_pf *pf, u8 *aq_buf)
> +{
> +	enum virtchnl_status_code status = VIRTCHNL_STATUS_SUCCESS;
> +	struct ice_aqc_sw_rules_elem *em =
> +			(struct ice_aqc_sw_rules_elem *)aq_buf;
> +	u16 type = le16_to_cpu(em->type);
> +
> +	if (type == ICE_AQC_SW_RULES_T_VSI_LIST_SET)
> +		status = ice_dcf_set_vsi_list(pf, &em->pdata.vsi_list);
> +	else if (type == ICE_AQC_SW_RULES_T_VSI_LIST_CLEAR)
> +		status = ice_dcf_clear_vsi_list(pf, &em-
> >pdata.vsi_list);
> +	else if (type == ICE_AQC_SW_RULES_T_LKUP_RX)
> +		status = ice_dcf_parse_updt_sw_rule_data(pf,
> +							 &em-
> >pdata.lkup_tx_rx);
> +
> +	return status;
> +}
> +
> +/**
> + * ice_dcf_handle_rm_sw_rule_rsp - handle the remove switch rule
> response
> + * @pf: pointer to the PF info
> + * @aq_buf: pointer to the remove switch rule command buffer
> + */
> +static enum virtchnl_status_code
> +ice_dcf_handle_rm_sw_rule_rsp(struct ice_pf *pf, u8 *aq_buf)
> +{
> +	enum virtchnl_status_code status = VIRTCHNL_STATUS_SUCCESS;
> +	struct ice_aqc_sw_rules_elem *em =
> +			(struct ice_aqc_sw_rules_elem *)aq_buf;
> +	u16 type = le16_to_cpu(em->type);
> +
> +	if (type == ICE_AQC_SW_RULES_T_LKUP_RX)
> +		status = ice_dcf_parse_rm_sw_rule_data(pf,
> +						       &em-
> >pdata.lkup_tx_rx);
> +
> +	return status;
> +}
> +
> +/**
> + * ice_dcf_handle_alloc_res_rsp - handle the allocate resource
> response
> + * @pf: pointer to the PF info
> + * @aq_buf: pointer to the allocate resource command buffer
> + */
> +static enum virtchnl_status_code
> +ice_dcf_handle_alloc_res_rsp(struct ice_pf *pf, u8 *aq_buf)
> +{
> +	enum virtchnl_status_code status = VIRTCHNL_STATUS_SUCCESS;
> +	struct ice_aqc_alloc_free_res_elem *res_buf =
> +		 (struct ice_aqc_alloc_free_res_elem *)aq_buf;
> +	u16 type = (le16_to_cpu(res_buf->res_type) &
> +		    ICE_AQC_RES_TYPE_M) >> ICE_AQC_RES_TYPE_S;
> +
> +	if (type == ICE_AQC_RES_TYPE_VSI_LIST_REP)
> +		status = ice_dcf_parse_alloc_vsi_list_res(pf,
> +							  &res_buf-
> >elem[0]);
> +
> +	return status;
> +}
> +
> +/**
> + * ice_dcf_handle_free_res_rsp - handle the free resource response
> + * @pf: pointer to the PF info
> + * @aq_buf: pointer to the free resource command buffer
> + */
> +static enum virtchnl_status_code
> +ice_dcf_handle_free_res_rsp(struct ice_pf *pf, u8 *aq_buf)
> +{
> +	enum virtchnl_status_code status = VIRTCHNL_STATUS_SUCCESS;
> +	struct ice_aqc_alloc_free_res_elem *res_buf =
> +		 (struct ice_aqc_alloc_free_res_elem *)aq_buf;
> +	u16 type = (le16_to_cpu(res_buf->res_type) &
> +		    ICE_AQC_RES_TYPE_M) >> ICE_AQC_RES_TYPE_S;
> +
> +	if (type == ICE_AQC_RES_TYPE_VSI_LIST_REP)
> +		status = ice_dcf_parse_free_vsi_list_res(pf,
> +							 &res_buf-
> >elem[0]);
> +
> +	return status;
> +}
> +
> +/**
> + * ice_dcf_post_aq_send_cmd - get the data from firmware successful
> response
> + * @pf: pointer to the PF info
> + * @aq_desc: descriptor describing the command
> + * @aq_buf: the AdminQ command buffer
> + */
> +enum virtchnl_status_code
> +ice_dcf_post_aq_send_cmd(struct ice_pf *pf, struct ice_aq_desc
> *aq_desc,
> +			 u8 *aq_buf)
> +{
> +	enum virtchnl_status_code status = VIRTCHNL_STATUS_SUCCESS;
> +	u16 opc = le16_to_cpu(aq_desc->opcode);
> +
> +	if (!aq_buf)
> +		return VIRTCHNL_STATUS_SUCCESS;
> +
> +	if (opc == ice_aqc_opc_add_sw_rules)
> +		status = ice_dcf_handle_add_sw_rule_rsp(pf, aq_buf);
> +	else if (opc == ice_aqc_opc_update_sw_rules)
> +		status = ice_dcf_handle_updt_sw_rule_rsp(pf, aq_buf);
> +	else if (opc == ice_aqc_opc_remove_sw_rules)
> +		status = ice_dcf_handle_rm_sw_rule_rsp(pf, aq_buf);
> +	else if (opc == ice_aqc_opc_alloc_res)
> +		status = ice_dcf_handle_alloc_res_rsp(pf, aq_buf);
> +	else if (opc == ice_aqc_opc_free_res)
> +		status = ice_dcf_handle_free_res_rsp(pf, aq_buf);
> +
> +	return status;
> +}
> +
> +/**
> + * ice_dcf_pre_aq_send_cmd - check if it needs to send the command
> to firmware
> + * @vf: pointer to the VF info
> + * @aq_desc: descriptor describing the command
> + * @aq_buf: the AdminQ command buffer
> + * @aq_buf_size: the AdminQ command buffer size
> + */
> +bool
> +ice_dcf_pre_aq_send_cmd(struct ice_vf *vf, struct ice_aq_desc
> *aq_desc,
> +			u8 *aq_buf, u16 aq_buf_size)
> +{
> +	struct ice_pf *pf = vf->pf;
> +
> +	switch (le16_to_cpu(aq_desc->opcode)) {
> +	case ice_aqc_opc_update_sw_rules:
> +	{
> +		struct ice_dcf_vsi_list_info *vsi_list_info;
> +		struct ice_aqc_sw_rules_elem *s_rule;
> +		u16 list_id, vsi_id;
> +
> +		if (aq_buf_size < ICE_SW_RULE_VSI_LIST_SIZE(1))
> +			break;
> +
> +		s_rule = (struct ice_aqc_sw_rules_elem *)aq_buf;
> +		if (le16_to_cpu(s_rule->type) !=
> +					ICE_AQC_SW_RULES_T_VSI_LIST_CLE
> AR ||
> +		    le16_to_cpu(s_rule->pdata.vsi_list.number_vsi) !=
> 1)
> +			break;
> +
> +		list_id = le16_to_cpu(s_rule->pdata.vsi_list.index);
> +		vsi_list_info = ice_dcf_find_vsi_list_info(pf,
> list_id);
> +		if (!vsi_list_info)
> +			break;
> +
> +		vsi_id = le16_to_cpu(s_rule->pdata.vsi_list.vsi[0]);
> +		if (vsi_id >= ICE_HW_VSI_ID_MAX ||
> +		    test_bit(vsi_id, vsi_list_info->hw_vsi_map))
> +			break;
> +
> +		/* The VSI is removed from list already, no need to
> send the
> +		 * command to firmware.
> +		 */
> +		return true;
> +	}
> +	case ice_aqc_opc_remove_sw_rules:
> +	{
> +		struct ice_aqc_sw_rules_elem *s_rule;
> +		u16 rule_id;
> +
> +		if (aq_buf_size < ICE_SW_RULE_RX_TX_NO_HDR_SIZE)
> +			break;
> +
> +		s_rule = (struct ice_aqc_sw_rules_elem *)aq_buf;
> +		if (le16_to_cpu(s_rule->type) !=
> ICE_AQC_SW_RULES_T_LKUP_RX)
> +			break;
> +
> +		rule_id = le16_to_cpu(s_rule->pdata.lkup_tx_rx.index);
> +		if (ice_dcf_find_sw_rule(pf, rule_id))
> +			break;
> +
> +		/* The switch rule is removed already, no need to send
> the
> +		 * command to firmware.
> +		 */
> +		return true;
> +	}
> +
> +	default:
> +		break;
> +	}
> +
> +	return false;
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_dcf.h
> b/drivers/net/ethernet/intel/ice/ice_dcf.h
> index 1ca228f89a19..23842db0a884 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcf.h
> +++ b/drivers/net/ethernet/intel/ice/ice_dcf.h
> @@ -21,10 +21,42 @@ enum ice_dcf_state {
>  	ICE_DCF_STATE_PAUSE,
>  };
>  
> +struct ice_dcf_sw_rule_entry;
> +
> +#define ICE_HW_VSI_ID_MAX	BIT(10) /* The AQ VSI number uses 10
> bits */
> +
> +struct ice_dcf_vsi_list_info {
> +	struct list_head list_entry;
> +	struct ice_dcf_sw_rule_entry *sw_rule;
> +	u16 list_id;
> +
> +	u16 vsi_count;
> +	DECLARE_BITMAP(hw_vsi_map, ICE_HW_VSI_ID_MAX);
> +};
> +
> +struct ice_dcf_sw_rule_entry {
> +	struct list_head list_entry;
> +	u16 rule_id;
> +
> +	/* Only support ICE_FWD_TO_VSI and ICE_FWD_TO_VSI_LIST */
> +	enum ice_sw_fwd_act_type fltr_act;
> +	/* Depending on filter action */
> +	union {
> +		u16 hw_vsi_id:10;
> +		u16 vsi_list_id:10;
> +	} fwd_id;
> +
> +	struct ice_dcf_vsi_list_info *vsi_list_info;
> +};
> +
>  struct ice_dcf {
>  	struct ice_vf *vf;
>  	enum ice_dcf_state state;
>  
> +	/* Trace the switch rules added/removed by DCF */
> +	struct list_head sw_rule_head;
> +	struct list_head vsi_list_info_head;
> +
>  	/* Handle the AdminQ command between the DCF (Device Config
> Function)
>  	 * and the firmware.
>  	 */
> @@ -46,5 +78,14 @@ bool ice_check_dcf_allowed(struct ice_vf *vf);
>  bool ice_is_vf_dcf(struct ice_vf *vf);
>  enum ice_dcf_state ice_dcf_get_state(struct ice_pf *pf);
>  void ice_dcf_set_state(struct ice_pf *pf, enum ice_dcf_state state);
> +void ice_dcf_init_sw_rule_mgmt(struct ice_pf *pf);
> +void ice_rm_all_dcf_sw_rules(struct ice_pf *pf);
> +void ice_rm_dcf_sw_vsi_rule(struct ice_pf *pf, u16 hw_vsi_id);
> +bool
> +ice_dcf_pre_aq_send_cmd(struct ice_vf *vf, struct ice_aq_desc
> *aq_desc,
> +			u8 *aq_buf, u16 aq_buf_size);
> +enum virtchnl_status_code
> +ice_dcf_post_aq_send_cmd(struct ice_pf *pf, struct ice_aq_desc
> *aq_desc,
> +			 u8 *aq_buf);
>  #endif /* CONFIG_PCI_IOV */
>  #endif /* _ICE_DCF_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c
> b/drivers/net/ethernet/intel/ice/ice_switch.c
> index ccbe1cc64295..ee434b8d794d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -23,24 +23,10 @@
>   *	In case of Ether type filter it is treated as header without
> VLAN tag
>   *	and byte 12 and 13 is used to program a given Ether type
> instead
>   */
> -#define DUMMY_ETH_HDR_LEN		16
>  static const u8 dummy_eth_header[DUMMY_ETH_HDR_LEN] = { 0x2, 0, 0,
> 0, 0, 0,
>  							0x2, 0, 0, 0,
> 0, 0,
>  							0x81, 0, 0, 0};
>  
> -#define ICE_SW_RULE_RX_TX_ETH_HDR_SIZE \
> -	(offsetof(struct ice_aqc_sw_rules_elem, pdata.lkup_tx_rx.hdr) +
> \
> -	 (DUMMY_ETH_HDR_LEN * \
> -	  sizeof(((struct ice_sw_rule_lkup_rx_tx *)0)->hdr[0])))
> -#define ICE_SW_RULE_RX_TX_NO_HDR_SIZE \
> -	(offsetof(struct ice_aqc_sw_rules_elem, pdata.lkup_tx_rx.hdr))
> -#define ICE_SW_RULE_LG_ACT_SIZE(n) \
> -	(offsetof(struct ice_aqc_sw_rules_elem, pdata.lg_act.act) + \
> -	 ((n) * sizeof(((struct ice_sw_rule_lg_act *)0)->act[0])))
> -#define ICE_SW_RULE_VSI_LIST_SIZE(n) \
> -	(offsetof(struct ice_aqc_sw_rules_elem, pdata.vsi_list.vsi) + \
> -	 ((n) * sizeof(((struct ice_sw_rule_vsi_list *)0)->vsi[0])))
> -
>  /**
>   * ice_init_def_sw_recp - initialize the recipe book keeping tables
>   * @hw: pointer to the HW struct
> @@ -490,7 +476,7 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16
> *vsi_list_id,
>   *
>   * Add(0x02a0)/Update(0x02a1)/Remove(0x02a2) switch rules commands
> to firmware
>   */
> -static enum ice_status
> +enum ice_status
>  ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16
> rule_list_sz,
>  		u8 num_rules, enum ice_adminq_opc opc, struct ice_sq_cd
> *cd)
>  {

Hi Dave, Jakub,

This feature is only built when CONFIG_PCI_IOV is set. We end up with
this namespace issue using defconfig when checked against namespace.pl
since CONFIG_PCI_IOV is not enabled.
	Externally defined symbols with no external references
          ice_switch.o
            ice_aq_sw_rules

From a previous patch, neither of you liked the use of CONFIG_ to
control static-ness. I wanted to check that you are ok with the
namespace issue or if you have a preferred method to resolve this
issue. I appreciate your feedback.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
