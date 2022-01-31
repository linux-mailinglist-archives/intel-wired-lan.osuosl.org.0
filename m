Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 527F14A4CC5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 18:08:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC18440534;
	Mon, 31 Jan 2022 17:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 23KMm4_7Q3iF; Mon, 31 Jan 2022 17:08:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E3B6403E9;
	Mon, 31 Jan 2022 17:08:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C27DF1BF35C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:08:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BD7674034C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:08:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ipV6eUsaUMGv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 17:08:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ACCEE402AC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 17:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643648902; x=1675184902;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SdlPmOm4tuz2nRZU4E/Duby3j9CaRF5FqPpuxcfArio=;
 b=de4sdglZgtjG0DdvaOkIqgEaJ01FKJdjPcSsiVdoLgXuK49mi04bhXwh
 ApOINM6Us//kVxVFrzJbJKnqro/KdfQwzvLu4d5rKFHeCZFdoPj8/LmxH
 umT9C97pGIzt/6hIjnL1VTM9l4cuhQrsn0ap9JDt+ykuL0bnyz0Ip3qmb
 5hev8X9cqxIQDI3a/dGOQf6eREm63x+AxqEZRFMMdk2ufxJFJYq46fGhf
 3LUaU0QKmTtpR6wC7Pu7Sddhzp25JElCkNBvXuO0v8M6BhSlY1O5HzLkH
 HvPpMwUEjWHa9BBu9a50ZUaMZw0JJxafhu8AdseWK5C+ETnRB87QDk7T3 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="247460810"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="247460810"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 09:08:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="565221411"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 31 Jan 2022 09:08:21 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 31 Jan 2022 09:08:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 31 Jan 2022 09:08:21 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 31 Jan 2022 09:08:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JbS6dPnJFh+tNuTkeYt3JJTRfIDs5Q7TpO1JDN/lYYVGXms3VxKi+Hwjodmnvu/fi+Q95uzjTNqNJaRHVNgDBbBLLYWYpNXng+08Q5wamVgPuxGSUMWUYx19QdKr9WpLgYG9y4yyzP1TENjudVbV0QNGtWKutdHMwqxG4FR9dogA6jDGAUDVMz+Pi/XsQvRzZK8VHBKLD27CDJGGpGD+e3FplaZ3y3p32zYV0k7JGuc/oB8TZj/EfScQsT9kdenhF+mf17CgKNColZgxPJWBWwNdrr8SVEGaNjwjk4amBxuTtHDfqSeQGsHRLcClN+qByAbbaZxpczGytTgVNP0e6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J0hvUyg3rq4XDHjBkyUgA9x2jwgLoGT9sevqootmPDw=;
 b=EGKJlecjJxDEWN2DsrGl2a5JJs3lz9FVtZGAzvJy09XNWQfhsVuXRiF6/RcW/yTs1TBtv0XZV8kkbIakognv3CUHoSn2LCsw3twgyeN+BqC+3F057Q52pypSQ+U6kCuMACTMiROkEsxmQZhHZry1b4UerTRJ9iKhIcrSi5zC1cyf4KL/1r+L4RDG8tDahW406R62cESVL4ObN42ZTSCdgdEdmWAYliXmj9LYGyK3WFoy1hf4KyoJItXeXVmp0yj/SsezQAiPyLKdjUpEXZzV0NvQMWGxjUiJhuFA580us+yCDwjazU+btlA5RlrHGcOA8pa8I8g20k+QwmWtYe3E3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MWHPR11MB1742.namprd11.prod.outlook.com (2603:10b6:300:113::13)
 by MN2PR11MB3629.namprd11.prod.outlook.com (2603:10b6:208:f0::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.19; Mon, 31 Jan
 2022 17:08:19 +0000
Received: from MWHPR11MB1742.namprd11.prod.outlook.com
 ([fe80::2d20:54e0:ab56:cb77]) by MWHPR11MB1742.namprd11.prod.outlook.com
 ([fe80::2d20:54e0:ab56:cb77%3]) with mapi id 15.20.4930.022; Mon, 31 Jan 2022
 17:08:19 +0000
From: "Ismail, Mustafa" <mustafa.ismail@intel.com>
To: "Saleem, Shiraz" <shiraz.saleem@intel.com>, epg nat hpm dev
 <epg.nat.hpm.dev@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH for-next 1/3] net/ice: add support for DSCP QoS for IIDC
Thread-Index: AQHYFsQcOIFLQpE0CUy5Lst5xO0s9Kx9XH1g
Date: Mon, 31 Jan 2022 17:08:18 +0000
Message-ID: <MWHPR11MB174244E3BC0008E3921FC2B08B259@MWHPR11MB1742.namprd11.prod.outlook.com>
References: <20220131165921.1392-1-shiraz.saleem@intel.com>
 <20220131165921.1392-2-shiraz.saleem@intel.com>
In-Reply-To: <20220131165921.1392-2-shiraz.saleem@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d29e160-cdcc-4504-0547-08d9e4dc4755
x-ms-traffictypediagnostic: MN2PR11MB3629:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MN2PR11MB36293DBF63548A611A5661AD8B259@MN2PR11MB3629.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6+fC2KaMKuBFVDe0cDgFdTn5V4nJeNvOW89cz/XkGFluXwLTn3ud08M2jWe4+7j+bakMJtWB2DqtKNHrh1Ucm++hSilBQN4Jsxezm79SnvsOEX8YE6Gx41CvcXRSjWXRV3AhzBO7Zjl8v6MTV4NfOI8SmxsJ+A89WGH6IwM4r5skFoECVE41pl/MOSeeGweyjH7s6SWEhKTXT3ttRxiz3A8h9FbGNIkULojm/dqJ6rAmb/cayTeWrfugwaFtbcyd3sUwDCcwDzQ/ThKXhhRfTbG7DfnQCtlXJZEB9lEdEnAhpKjqfaLHGiBeXc4kj15MpGZcS7jn9A2Wy8Gjz2BudpAlZZxpL4xf/Mdg9946ke96f3InkObgrSDcPiUDbaKvG7i3F/rTIesLEWAaGmBVO4xI2YRBoAgEFabAlVwSCMCESUQkmWemEFiMNwddk3MQIl34qD8uU6zaIqo9qinxvqMbRE/zkzelP0z9fYMZ5rNO0gJCCpqw6tRGQzsTLwVLl9Gk3+2xE7lMsavYevpNtb50f+f1TvofByPBTUgHjolAHOuWJegxXArDvLWNEgcAI/43cYsizqNOL8B+pMKtpo1AZuSzVPgsobOv/+XIFJM+SjlIpspmtjMnJRyiV1VzwwUgPpB8KfNV0LgWQ5WIDWEIztUajyT31klmD2HlHeSTN/zEf2rpHcfQhULvguXQDlDVEZQiqU3ab2wJ+VD8Cg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1742.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(26005)(186003)(508600001)(2906002)(107886003)(110136005)(316002)(53546011)(6506007)(7696005)(83380400001)(4326008)(8676002)(5660300002)(8936002)(86362001)(52536014)(71200400001)(9686003)(66446008)(66476007)(66946007)(66556008)(76116006)(55016003)(122000001)(82960400001)(38100700002)(38070700005)(33656002)(64756008)(20210929001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ssZKloJqQ/XP/anIrJxUu7PkF0wH8z7GwjEI+rHdvpFddxayDxcQgkucz7MP?=
 =?us-ascii?Q?zmZNMPxAMJvKHD4x1ZWOX0YpZc7ooligAmeOxtRaekW6Moa+lPqwKx0L4h8N?=
 =?us-ascii?Q?qfnnMmbcImFYMFXfRUBSXkJ1ZgmQ/ObgkjF2vYiNoVuEQe7QvB9QofbuDxfO?=
 =?us-ascii?Q?uqVxfk0y4U5LQggIaetJDCpgIa+0MIhCiMhtkCaGIzFS7s1tV6eLL+2mBu31?=
 =?us-ascii?Q?XwO7r9vVL5tmKXjNAxjqiKeBKa3HjMtfIBq9B02+KLPOCWlp3F1coJdBTFKL?=
 =?us-ascii?Q?aF+cIzCi+/oJwAYgtu3qwgiE+racoO97BSb6ZNwIjeVn0p7dG/Qe6FZTVBKT?=
 =?us-ascii?Q?HMRB/Co0vG9Sjod2qWuK+yjRLib/F3AKeAk71+NmzURolq/nCRdztDyru/wK?=
 =?us-ascii?Q?PnBcyBIX8MZ8q2pI804bObe+2Q3SU7K6yPCznqZOYg1A7LAwIBOAoHGCKLRG?=
 =?us-ascii?Q?+Ll1LH2aPFS/SCPzHl+OEFyUbN9fHWMHg28/F5TCRu6a0vsMUI+oxTEYBHJL?=
 =?us-ascii?Q?YKfaM5Yd/QagxL2n00gdtPRj39EnuwpMtZ8CJdVNFsSD08OQYjiyOpHIij2z?=
 =?us-ascii?Q?KThhPajiZV4w6h3z3ITTFmvZcLLjfQTkxawOa5IeGHbo7G/XuNP9wJ0Rv9iR?=
 =?us-ascii?Q?JYFI9sQGQq7/MxzN5SdAMSYLroiHCUUVnORoHsmGj1sy2NZAeshiWEMb10GO?=
 =?us-ascii?Q?HGDqfLJTXAC5Y1uj59bmXwvCvAewTdcTbLzvTknuWhotEKLGjKYgP8GWuQtT?=
 =?us-ascii?Q?Xrol9KAyyyHje1FmGBw5lrdBzQuExjBEEs/FEUeFDE7ijpi24BomOwIqFfk/?=
 =?us-ascii?Q?KnMp+F6x+EkKnFdAKM3KgyawU0fsnVaIBkwrDo2+p5j7wx08T6b7ifzmJzkI?=
 =?us-ascii?Q?WluUqpGh6iMmgAV6mQpxkx2fvfOS7jNQD8RzW44L81e0coqE+XscgWBDnMpO?=
 =?us-ascii?Q?Qsjlw5mGpT+Jmx+JSZPsRU3DtpXCk05Z9rlzpPav6E0xgCUczMoACrCtm7Bi?=
 =?us-ascii?Q?D4KyI5Pd5M8X6ykw8KARS3ZhtT53S8FhvACkRl63UJPmIIkfJCuc2i3cd2qZ?=
 =?us-ascii?Q?cK609hB70yRCH8tyBBa4oL+LtUU2zx/cncqgVq0d+udi2izb8RCVfzEmIL8c?=
 =?us-ascii?Q?JQs8WXt48pYdOaP1oNopleZlrGDzWb+Z5OLZQ/I4aagiaRU5JHhAdbpWemvk?=
 =?us-ascii?Q?6UYHm5yD9Dg0cRDmnlTQg/Qq2k+ETrzHZz833r7ACMk85HlDM8YuS00Slu6P?=
 =?us-ascii?Q?Yrx+k0J4a52G44i7zT0L1GIA1ZW+DvXZeJY+Kq8Lkm+rlo0L8tpU3rc+PJoz?=
 =?us-ascii?Q?R6oySiMUPpQFVBmOfTeHzG4yQXOBSEYn0cMhmbao+hqLcUmcKdumGuBRaBoh?=
 =?us-ascii?Q?0fusfVBoFYkTFFB+BEbbldc9I27RwSiOmNMnTf8iCxQV++2nVHKNpMEBMLkj?=
 =?us-ascii?Q?NMYvm0wsMGkmSAwx4fX+cIyJLUPYZsna37jabxuSxfCqsFJVBx4s6vkTzNFm?=
 =?us-ascii?Q?yyuiFXcR95Lhq1klmBt2b6ylHjp32k7AckHKVDNlqaXPf15kv0P5xyydHHJy?=
 =?us-ascii?Q?2Z7gPE37Zzt06CwlZWTVCb5HTSZxAGlLmyKRUW+ISyQRCYmx2Uuvlur47aFt?=
 =?us-ascii?Q?hleqk/S17KdI+yF24sdvIdTiJf/0AH1b1yYwzN3ehiDHxTORnEWDI/g2pMwA?=
 =?us-ascii?Q?2PN8Ew=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1742.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d29e160-cdcc-4504-0547-08d9e4dc4755
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2022 17:08:18.9546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: crPLF2vkqxTiU+itUqbQYKwBD5QyHvMc1VzYXhMeb5XLl2Hs94N5/OuNKMePCT4Ubdss46t7dFjFNBpnsPQweIWkoSeNSTo0+blpYCNVd3E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3629
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH for-next 1/3] net/ice: add support for
 DSCP QoS for IIDC
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

Extra blank line below.

Mustafa

> -----Original Message-----
> From: Saleem, Shiraz <shiraz.saleem@intel.com>
> Sent: Monday, January 31, 2022 10:59 AM
> To: epg nat hpm dev <epg.nat.hpm.dev@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Ertman, David M <david.m.ertman@intel.com>; Saleem, Shiraz
> <shiraz.saleem@intel.com>
> Subject: [PATCH for-next 1/3] net/ice: add support for DSCP QoS for IIDC
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> The ice driver provides QoS information to auxiliary drivers through the
> exported function ice_get_qos_params. This function doesn't currently
> support L3 DSCP QoS.
> 
> Add the necessary defines, structure elements and code to support DSCP
> QoS through the IIDC functions.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Shiraz Saleem <shiraz.saleem@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_idc.c | 5 +++++
>  include/linux/net/intel/iidc.h           | 6 ++++++
>  2 files changed, 11 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c
> b/drivers/net/ethernet/intel/ice/ice_idc.c
> index fc35801..263a2e7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_idc.c
> +++ b/drivers/net/ethernet/intel/ice/ice_idc.c
> @@ -227,6 +227,11 @@ void ice_get_qos_params(struct ice_pf *pf, struct
> iidc_qos_params *qos)
> 
>  	for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++)
>  		qos->tc_info[i].rel_bw = dcbx_cfg->etscfg.tcbwtable[i];
> +
> +	qos->pfc_mode = dcbx_cfg->pfc_mode;
> +	if (qos->pfc_mode == IIDC_DSCP_PFC_MODE)
> +		for (i = 0; i < IIDC_MAX_DSCP_MAPPING; i++)
> +			qos->dscp_map[i] = dcbx_cfg->dscp_map[i];
>  }
>  EXPORT_SYMBOL_GPL(ice_get_qos_params);
> 
> diff --git a/include/linux/net/intel/iidc.h b/include/linux/net/intel/iidc.h
> index 1289593..842ba0d 100644
> --- a/include/linux/net/intel/iidc.h
> +++ b/include/linux/net/intel/iidc.h
> @@ -32,6 +32,9 @@ enum iidc_rdma_protocol {  };
> 
>  #define IIDC_MAX_USER_PRIORITY		8
> +#define IIDC_MAX_DSCP_MAPPING          64
> +#define IIDC_VLAN_PFC_MODE             0x0
> +#define IIDC_DSCP_PFC_MODE             0x1
> 
>  /* Struct to hold per RDMA Qset info */  struct iidc_rdma_qset_params {
> @@ -60,6 +63,9 @@ struct iidc_qos_params {
>  	u8 vport_relative_bw;
>  	u8 vport_priority_type;
>  	u8 num_tc;
> +	u8 pfc_mode;
> +	u8 dscp_map[IIDC_MAX_DSCP_MAPPING];
> +
[MKI] Extra blank line 
>  };
> 
>  struct iidc_event {
> --
> 1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
