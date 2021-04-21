Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7653672D1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Apr 2021 20:48:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B87660B82;
	Wed, 21 Apr 2021 18:48:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jjeMXpaFh2A8; Wed, 21 Apr 2021 18:48:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A27B9608E1;
	Wed, 21 Apr 2021 18:48:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 811121BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 18:48:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7BF43608E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 18:48:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KlLVuZ2BP0Zq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Apr 2021 18:48:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CDD4560712
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 18:48:03 +0000 (UTC)
IronPort-SDR: h3fl/GDqd7/L5FASwuWG7QCkJ5xJ2hAIAGYI90zm7by1nKyQXO3xgz46Xh643JdYB/7MFuu/X6
 kx/ggcPmXfqw==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="195311783"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="195311783"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 11:48:03 -0700
IronPort-SDR: LOgcoHEiy/kRCcU+mUWGZnBLoa0TdfwFLwtsxF3oe0g+yF+tUykKcwIcXQekLDIUApKTIqiId5
 ePJpBdQIilLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="421091596"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 21 Apr 2021 11:48:03 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 21 Apr 2021 11:48:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 21 Apr 2021 11:48:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 21 Apr 2021 11:48:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BKSKopx0oJU3kx+Vu9rMSokzHl6daW/hnvN+N8GVSvuqvr6ibJ8pCRQkMTTKOhAp89lrLLAQgujqn6pmW0IZuwBz/gcnrKsEotfkHCiYd2eq73AbcTDlnz19pTbUKHwoFcVYqcU1WvdgNqsGTGrXohJ2g268awSdJRRptlpmkkp8aT7+obVi1dTV0vk2uHY23xMCB/pXbBgwko8J7JYekWUIcSz5jonjkXbj4qqpZsPoEqastQOYa3pSgsmSRR3MsRGTfR5mTnhs35SK0Xv3jJTag0G5xj2+XnAJvrXTk8Sh76H2k96fwo6BDqYpPTjrbEpe4W22TDLecD5JeXwuEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i8/FFq+a/o+QdQqavk5sjrG5uugq+RGP15Xu2u5f2u8=;
 b=FX2klBlGWSwbLonILwh4E19pFFNRxRYZjWCC0v2eT5S/wvOTR/Tgv4ausa57ztolL3JETuxJu3O1ZtCAXms62pdWwd2broGUETaEauZ6vLS7/6VGoIXw+9OF4n2htZsl4HDQhPY9Zj4JGjta+w/WfKEP3HyVGepucV0bmAhr95VTwqMFF1DbKSUJII8pSrUTKFGL4Xnr1Dl+kJavFbE1iW+3V6U8bV0QqS0Gi6OReMXqNY/vFIa4U9tpU9O5PNvxbhUJ5Cg6rXlc7RH0L2uybo/oQwgDkgNMO1YUThN+YZ8VI10Pd5URLZHaV4W3R0pDaxFnT+pzXIlnQuyonIBraw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i8/FFq+a/o+QdQqavk5sjrG5uugq+RGP15Xu2u5f2u8=;
 b=tyvfHmziCQX14FRrNL7i2um0Xm9h4lKcSkztxfrdiijXSEB1RGS93PFkjZt9NaCgaSHk4jIt2+tJMtDZQs35MiqUJkPzl3ERziRkHWey2z/UvAUQDsreJdrAeRBCrVumgcLg7Q2IjuMsYApWv7ks+9sDephIU/6NRl4Kto6TWJk=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR1101MB2309.namprd11.prod.outlook.com (2603:10b6:910:1a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21; Wed, 21 Apr
 2021 18:48:01 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08%7]) with mapi id 15.20.4020.023; Wed, 21 Apr 2021
 18:48:01 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S56 07/13] ice: Add helper function to
 get the VF's VSI
Thread-Index: AQHXD5GXVf1wyJpNG0SlrXKC4Drocqq/nn7Q
Date: Wed, 21 Apr 2021 18:48:01 +0000
Message-ID: <CY4PR11MB1576D0985A0DF0B7D945DE40AB479@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
 <20210302181545.51822-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181545.51822-7-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: df9459c3-93e4-4d4e-a3d6-08d904f5fd96
x-ms-traffictypediagnostic: CY4PR1101MB2309:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1101MB23092C5A4EDCE07325B8700EAB479@CY4PR1101MB2309.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1N+AwTdfgx4NiTkHWHPtN6MhF+fB2t9XrvjwfAWP0bEU9ckNOIL7TM2sijnUCjq/zT7ItJUKVP61xAGknt1RovAsEFxJsCSiBYmjyJqmcfH9/aXpy1LEDo3Dkx7f/5dYiwiuIniZt133K3U7OH6sq8t87OJNuDsKbr03zu+1crPz/yv0DlfAzxO3PUBxudFB/H8FGdIt1hMQR/qqY/984ScfknFkKHy5tRPwQVYvAaqGPJLTMscgSdxMvY5gg+LEZTx3rE9EWWIIlz6B7+vhANE81khZIOw/ROAspwNbFGsmKWkJFRk4gi1230GOoTCmnf8nCU8eBABmFzI1fD3gd9tw7LxckcLwLGrep45+A6zX4iejILDkA7wBkn25aMv8FwoNd7Cvi1ppwpnAcNtvPsY3KXsVvCp9Ip5bzA2dPXvaVZsR7ZPprj4KzMuAcyagg7OHvfsHLhSfRmejIf1mZG9pQ7jiIsedgPYYL8ITZN+FnLOnRQ6nd8QeJ2w9V23CVGammxl25W9tvK8MgzvGYo1OvtSDwbe/57EneqFXm2MZdGHod2Jc4DTPaWKqvW+8KbqYNguQa1rrMRuIAuI5DQ2iGVBZ0tHWmBuQt2CxdUnjS8wwy8pa9aZSQOU/8uWIGpAlx5cW3UHIWpfAvXdG5w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(39860400002)(396003)(366004)(136003)(376002)(83380400001)(478600001)(86362001)(26005)(55016002)(33656002)(76116006)(66946007)(316002)(64756008)(7696005)(6506007)(2906002)(53546011)(66556008)(66476007)(52536014)(186003)(66446008)(8676002)(71200400001)(30864003)(9686003)(5660300002)(38100700002)(122000001)(110136005)(8936002)(15583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?ebbLr3gqcXuAjOzFMfeWSwb3PEcXs233A4tp4ZHHb/T9e9X7hcKFx6YakA+K?=
 =?us-ascii?Q?7vNFCFgnCeUANdJyEL5v1eM915UI9Mv4IP+P8WbCSZDBzWUU8dZJU+oHCwvQ?=
 =?us-ascii?Q?CJydgbKEZxXmCHLp16ozLzg/8K2svLJw938hRATObv1/SanxPaxDQe2pGvTb?=
 =?us-ascii?Q?nMjB+7mjE416UblPnbZFT5kbtV1ujcr2vt4762uUiy9lQgGUMOVKOH6/9YzC?=
 =?us-ascii?Q?Q0+wQnCrYJUg6VRQ4xZ0kO7+/y/54p6kWwp+MM0HNY0sVNB1G3rNW5BVljzL?=
 =?us-ascii?Q?nh4ksAHFo/teJZdEXxTWKYG2FK8dxFKoScswG6oSjoa9p7BiiEExrIsqzMtD?=
 =?us-ascii?Q?1+b7r0XC6swpgrp0j22gJv1jjIRorTXkTgZr/r5kwoH+/spCYoZY9bN0QpEy?=
 =?us-ascii?Q?BtyygtCx/0dI51GibIHoVcdFWbeK6ov+DUK7d2sw6Egqyyn/12mu/wwzNLd1?=
 =?us-ascii?Q?pJjU+i1eHZQkFwCS2P3ZPT1q/TdUjqGjHCHmqwIvtWI9eoQnth4VUSjqS8lt?=
 =?us-ascii?Q?wGr6OrlHPmm4WdM4oIxhk3JgQcaegsGFIt1V8gJWHYk6IFSyba/6azwlIT5d?=
 =?us-ascii?Q?nx7s1JYD6uynbB0CxlAKgSvVUBtA0M+iVAC5BWX9XrSgUUxaOoAphGg2vsRg?=
 =?us-ascii?Q?OOrBsjrjyztC3InaefhhnL3/HKkemtHCcT2t4QuUX4/pFymbVEQnphBqKeNV?=
 =?us-ascii?Q?3CWY/7tr+5uKHm3sP2W6b7HiC31NXXgzvKUUSZ92TJChNTyhpVc1ZcNNlCwf?=
 =?us-ascii?Q?siDUCrJizW5h4gVFW1mYqgz9hLw15KTazesxfFohd8EpjTU4cdF0gShocM/O?=
 =?us-ascii?Q?ylInAdb+qXBsCECNx6dqTJOmWj1WBtWp8284r/fyBQp3gjTghcYyi4ybMtq2?=
 =?us-ascii?Q?l2NIuNTUqk8ylY6IgssSquxxV5nbxgLi9bba3m3jKmJ0gslhJHPCendt59ex?=
 =?us-ascii?Q?q7DEMvpRIQJS5Feny0KuBnkTzgwcgkYoS6YMCQ9ZU5sllck2oTK06LB15Zkj?=
 =?us-ascii?Q?0+HfAStlArzGnfdMBTcpV8am+DCAdVgDDPwvip71niC6ZcMzIy0S0sX0+W+D?=
 =?us-ascii?Q?uPrbIf0gZlBkEF/OzQhOxauzR7xEBwMZhcwu3skkeQpJUmscgPX1lftkVW86?=
 =?us-ascii?Q?ypmw/zJ3V+o8i5cODm1gNLfcFxz+1aUf3LQGDndNzA9IFIMJMvdZw05y2Bel?=
 =?us-ascii?Q?tpJu51u9UmD0tAwup7KaypVD9LymBduRaZ4AJcPnuHsOPomWJr+5XHEvrkd3?=
 =?us-ascii?Q?jS1u3I1wTqo9nuOV+ixqaemcXaQ7YIWQRGEiwbI3+yOk8ZAa2D1a77jWb2hp?=
 =?us-ascii?Q?Y04eV0VAHs8Ihu1C842+fkE8?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df9459c3-93e4-4d4e-a3d6-08d904f5fd96
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2021 18:48:01.6043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AZYTzFiVPdeKgApJ+CVQkdPKxczAiewzeUnB3WaRduPux3GpnYKoIVtme8SfbkIintDkRhnXqo1uKG/vSq+/tqcw8UPUuHC5P0ZGSYgOimM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2309
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S56 07/13] ice: Add helper function to
 get the VF's VSI
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
> Subject: [Intel-wired-lan] [PATCH S56 07/13] ice: Add helper function to get
> the VF's VSI
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently, the driver gets the VF's VSI by using a long string of dereferences
> (i.e. vf->pf->vsi[vf->lan_vsi_idx]). If the method to get the VF's VSI were to
> change the driver would have to change it in every location. Fix this by adding
> the helper ice_get_vf_vsi().
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 82 +++++++++----------
>  1 file changed, 39 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index 2d4b39a9f788..7ffad4c8a64e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -7,6 +7,15 @@
>  #include "ice_fltr.h"
>  #include "ice_virtchnl_allowlist.h"
> 
> +/**
> + * ice_get_vf_vsi - get VF's VSI based on the stored index
> + * @vf: VF used to get VSI
> + */
> +static struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf) {
> +	return vf->pf->vsi[vf->lan_vsi_idx];
> +}
> +
>  /**
>   * ice_validate_vf_id - helper to check if VF ID is valid
>   * @pf: pointer to the PF structure
> @@ -167,7 +176,7 @@ static void ice_vf_invalidate_vsi(struct ice_vf *vf)
>   */
>  static void ice_vf_vsi_release(struct ice_vf *vf)  {
> -	ice_vsi_release(vf->pf->vsi[vf->lan_vsi_idx]);
> +	ice_vsi_release(ice_get_vf_vsi(vf));
>  	ice_vf_invalidate_vsi(vf);
>  }
> 
> @@ -243,7 +252,7 @@ static void ice_dis_vf_mappings(struct ice_vf *vf)
>  	struct ice_hw *hw;
> 
>  	hw = &pf->hw;
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
> 
>  	dev = ice_pf_to_dev(pf);
>  	wr32(hw, VPINT_ALLOC(vf->vf_id), 0);
> @@ -318,10 +327,7 @@ void ice_set_vf_state_qs_dis(struct ice_vf *vf)
>   */
>  static void ice_dis_vf_qs(struct ice_vf *vf)  {
> -	struct ice_pf *pf = vf->pf;
> -	struct ice_vsi *vsi;
> -
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
> 
>  	ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, vf->vf_id);
>  	ice_vsi_stop_all_rx_rings(vsi);
> @@ -609,8 +615,8 @@ static int ice_calc_vf_first_vector_idx(struct ice_pf
> *pf, struct ice_vf *vf)
>   */
>  static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf *vf)  {
> -	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
>  	struct device *dev = ice_pf_to_dev(vf->pf);
> +	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
>  	u16 vlan_id = 0;
>  	int err;
> 
> @@ -646,8 +652,8 @@ static int ice_vf_rebuild_host_vlan_cfg(struct ice_vf
> *vf)
>   */
>  static int ice_vf_rebuild_host_mac_cfg(struct ice_vf *vf)  {
> -	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
>  	struct device *dev = ice_pf_to_dev(vf->pf);
> +	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
>  	enum ice_status status;
>  	u8 broadcast[ETH_ALEN];
> 
> @@ -750,8 +756,8 @@ static void ice_ena_vf_msix_mappings(struct ice_vf
> *vf)
>   */
>  static void ice_ena_vf_q_mappings(struct ice_vf *vf, u16 max_txq, u16
> max_rxq)  {
> -	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
>  	struct device *dev = ice_pf_to_dev(vf->pf);
> +	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
>  	struct ice_hw *hw = &vf->pf->hw;
>  	u32 reg;
> 
> @@ -798,7 +804,7 @@ static void ice_ena_vf_q_mappings(struct ice_vf *vf,
> u16 max_txq, u16 max_rxq)
>   */
>  static void ice_ena_vf_mappings(struct ice_vf *vf)  {
> -	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
> +	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
> 
>  	ice_ena_vf_msix_mappings(vf);
>  	ice_ena_vf_q_mappings(vf, vsi->alloc_txq, vsi->alloc_rxq); @@ -
> 1064,7 +1070,7 @@ static int ice_vf_clear_vsi_promisc(struct ice_vf *vf,
> struct ice_vsi *vsi, u8 p
> 
>  static void ice_vf_clear_counters(struct ice_vf *vf)  {
> -	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
> +	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
> 
>  	vf->num_mac = 0;
>  	vsi->num_vlan = 0;
> @@ -1124,8 +1130,8 @@ static void
> ice_vf_rebuild_aggregator_node_cfg(struct ice_vsi *vsi)
>   */
>  static void ice_vf_rebuild_host_cfg(struct ice_vf *vf)  {
> -	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
>  	struct device *dev = ice_pf_to_dev(vf->pf);
> +	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
> 
>  	ice_vf_set_host_trust_cfg(vf);
> 
> @@ -1165,10 +1171,8 @@ static int ice_vf_rebuild_vsi_with_release(struct
> ice_vf *vf)
>   */
>  static int ice_vf_rebuild_vsi(struct ice_vf *vf)  {
> +	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
>  	struct ice_pf *pf = vf->pf;
> -	struct ice_vsi *vsi;
> -
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> 
>  	if (ice_vsi_rebuild(vsi, true)) {
>  		dev_err(ice_pf_to_dev(pf), "failed to rebuild VF %d VSI\n",
> @@ -1367,7 +1371,7 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
>  	set_bit(ICE_VF_STATE_DIS, vf->vf_states);
>  	ice_trigger_vf_reset(vf, is_vflr, false);
> 
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
> 
>  	if (test_bit(ICE_VF_STATE_QS_ENA, vf->vf_states))
>  		ice_dis_vf_qs(vf);
> @@ -1416,7 +1420,7 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
>  		else
>  			promisc_m = ICE_UCAST_PROMISC_BITS;
> 
> -		vsi = pf->vsi[vf->lan_vsi_idx];
> +		vsi = ice_get_vf_vsi(vf);
>  		if (ice_vf_clear_vsi_promisc(vf, vsi, promisc_m))
>  			dev_err(dev, "disabling promiscuous mode
> failed\n");
>  	}
> @@ -1867,7 +1871,7 @@ static struct ice_vf *ice_get_vf_from_pfq(struct
> ice_pf *pf, u16 pfq)
>  		struct ice_vsi *vsi;
>  		u16 rxq_idx;
> 
> -		vsi = pf->vsi[vf->lan_vsi_idx];
> +		vsi = ice_get_vf_vsi(vf);
> 
>  		ice_for_each_rxq(vsi, rxq_idx)
>  			if (vsi->rxq_map[rxq_idx] == pfq)
> @@ -2007,8 +2011,7 @@ static int ice_vc_get_ver_msg(struct ice_vf *vf, u8
> *msg)
>   */
>  static u16 ice_vc_get_max_frame_size(struct ice_vf *vf)  {
> -	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
> -	struct ice_port_info *pi = vsi->port_info;
> +	struct ice_port_info *pi = ice_vf_get_port_info(vf);
>  	u16 max_frame_size;
> 
>  	max_frame_size = pi->phy.link_info.max_frame_size; @@ -2056,7
> +2059,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
>  				  VIRTCHNL_VF_OFFLOAD_VLAN;
> 
>  	vfres->vf_cap_flags = VIRTCHNL_VF_OFFLOAD_L2;
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
>  	if (!vsi) {
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>  		goto err;
> @@ -2223,7 +2226,6 @@ static int ice_vc_config_rss_key(struct ice_vf *vf,
> u8 *msg)
>  	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
>  	struct virtchnl_rss_key *vrk =
>  		(struct virtchnl_rss_key *)msg;
> -	struct ice_pf *pf = vf->pf;
>  	struct ice_vsi *vsi;
> 
>  	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) { @@ -2246,7
> +2248,7 @@ static int ice_vc_config_rss_key(struct ice_vf *vf, u8 *msg)
>  		goto error_param;
>  	}
> 
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
>  	if (!vsi) {
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>  		goto error_param;
> @@ -2270,7 +2272,6 @@ static int ice_vc_config_rss_lut(struct ice_vf *vf, u8
> *msg)  {
>  	struct virtchnl_rss_lut *vrl = (struct virtchnl_rss_lut *)msg;
>  	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
> -	struct ice_pf *pf = vf->pf;
>  	struct ice_vsi *vsi;
> 
>  	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) { @@ -2293,7
> +2294,7 @@ static int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
>  		goto error_param;
>  	}
> 
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
>  	if (!vsi) {
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>  		goto error_param;
> @@ -2376,7 +2377,7 @@ int ice_set_vf_spoofchk(struct net_device
> *netdev, int vf_id, bool ena)
>  	if (ret)
>  		return ret;
> 
> -	vf_vsi = pf->vsi[vf->lan_vsi_idx];
> +	vf_vsi = ice_get_vf_vsi(vf);
>  	if (!vf_vsi) {
>  		netdev_err(netdev, "VSI %d for VF %d is null\n",
>  			   vf->lan_vsi_idx, vf->vf_id);
> @@ -2482,7 +2483,7 @@ static int
> ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
>  		goto error_param;
>  	}
> 
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
>  	if (!vsi) {
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>  		goto error_param;
> @@ -2614,7 +2615,6 @@ static int ice_vc_get_stats_msg(struct ice_vf *vf, u8
> *msg)
>  	struct virtchnl_queue_select *vqs =
>  		(struct virtchnl_queue_select *)msg;
>  	struct ice_eth_stats stats = { 0 };
> -	struct ice_pf *pf = vf->pf;
>  	struct ice_vsi *vsi;
> 
>  	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) { @@ -2627,7
> +2627,7 @@ static int ice_vc_get_stats_msg(struct ice_vf *vf, u8 *msg)
>  		goto error_param;
>  	}
> 
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
>  	if (!vsi) {
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>  		goto error_param;
> @@ -2717,7 +2717,6 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8
> *msg)
>  	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
>  	struct virtchnl_queue_select *vqs =
>  	    (struct virtchnl_queue_select *)msg;
> -	struct ice_pf *pf = vf->pf;
>  	struct ice_vsi *vsi;
>  	unsigned long q_map;
>  	u16 vf_q_id;
> @@ -2737,7 +2736,7 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8
> *msg)
>  		goto error_param;
>  	}
> 
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
>  	if (!vsi) {
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>  		goto error_param;
> @@ -2807,7 +2806,6 @@ static int ice_vc_dis_qs_msg(struct ice_vf *vf, u8
> *msg)
>  	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
>  	struct virtchnl_queue_select *vqs =
>  	    (struct virtchnl_queue_select *)msg;
> -	struct ice_pf *pf = vf->pf;
>  	struct ice_vsi *vsi;
>  	unsigned long q_map;
>  	u16 vf_q_id;
> @@ -2828,7 +2826,7 @@ static int ice_vc_dis_qs_msg(struct ice_vf *vf, u8
> *msg)
>  		goto error_param;
>  	}
> 
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
>  	if (!vsi) {
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>  		goto error_param;
> @@ -2993,7 +2991,7 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf
> *vf, u8 *msg)
>  		goto error_param;
>  	}
> 
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
>  	if (!vsi) {
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>  		goto error_param;
> @@ -3070,7 +3068,7 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8
> *msg)
>  		goto error_param;
>  	}
> 
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
>  	if (!vsi) {
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>  		goto error_param;
> @@ -3422,7 +3420,7 @@ ice_vc_handle_mac_addr_msg(struct ice_vf *vf, u8
> *msg, bool set)
>  		goto handle_mac_exit;
>  	}
> 
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
>  	if (!vsi) {
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>  		goto handle_mac_exit;
> @@ -3654,7 +3652,7 @@ static int ice_vc_process_vlan_msg(struct ice_vf
> *vf, u8 *msg, bool add_v)
>  	}
> 
>  	hw = &pf->hw;
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
>  	if (!vsi) {
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>  		goto error_param;
> @@ -3821,7 +3819,6 @@ static int ice_vc_remove_vlan_msg(struct ice_vf
> *vf, u8 *msg)  static int ice_vc_ena_vlan_stripping(struct ice_vf *vf)  {
>  	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
> -	struct ice_pf *pf = vf->pf;
>  	struct ice_vsi *vsi;
> 
>  	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) { @@ -3834,7
> +3831,7 @@ static int ice_vc_ena_vlan_stripping(struct ice_vf *vf)
>  		goto error_param;
>  	}
> 
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
>  	if (ice_vsi_manage_vlan_stripping(vsi, true))
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> 
> @@ -3852,7 +3849,6 @@ static int ice_vc_ena_vlan_stripping(struct ice_vf
> *vf)  static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)  {
>  	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
> -	struct ice_pf *pf = vf->pf;
>  	struct ice_vsi *vsi;
> 
>  	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) { @@ -3865,7
> +3861,7 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf *vf)
>  		goto error_param;
>  	}
> 
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
>  	if (!vsi) {
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
>  		goto error_param;
> @@ -3891,7 +3887,7 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf
> *vf)
>   */
>  static int ice_vf_init_vlan_stripping(struct ice_vf *vf)  {
> -	struct ice_vsi *vsi = vf->pf->vsi[vf->lan_vsi_idx];
> +	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
> 
>  	if (!vsi)
>  		return -EINVAL;
> @@ -4281,7 +4277,7 @@ int ice_get_vf_stats(struct net_device *netdev, int
> vf_id,
>  	if (ret)
>  		return ret;
> 
> -	vsi = pf->vsi[vf->lan_vsi_idx];
> +	vsi = ice_get_vf_vsi(vf);
>  	if (!vsi)
>  		return -EINVAL;
> 

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
