Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2AF4CAF4A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 21:03:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E20B460F28;
	Wed,  2 Mar 2022 20:03:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sINOCQ1TsR6l; Wed,  2 Mar 2022 20:03:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D326C60F26;
	Wed,  2 Mar 2022 20:03:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 858FB1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:03:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 72D244012F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:03:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LWIqWFkTEfoH for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 20:02:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2BA57400FB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646251379; x=1677787379;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VrJwsaHSL6AWSMkbk7AXQg00UfTSWNGiMbgI+9cHMgA=;
 b=G6JG+VnEdsg6UeymQM/I+QwWR7vShwdDELjMCk7DlB9AiF1hf4tZa+ta
 IxoiszYCdV0e5GvRIzhSuEgg6Toky6C4fwgiKs/4xruNBgqczCcho/OSE
 rUts0sMsxCYWhFyVXCzFdYqKNtZU3wUcY19XZD9BRrM1D+XSXMIlP7THZ
 XbPu4Msi2UWcm7KydLbu+cQ2O1Dur3CFULYdGWfuhUTwy+ZV0MRQ8ERd7
 HAyaka/6gfhlR46vMUXiH0LtNc0unZFPHRHTVvryao1bGPUzpQoYJDLji
 cKo9Ybyi/3T0VnJpPt0g07ZyMr7GseJ/+Buu+IJtr0WHj2BBgBgYb7HKo g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="237005439"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="237005439"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 12:02:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="511134774"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 02 Mar 2022 12:02:58 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 12:02:58 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 12:02:57 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 12:02:57 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 2 Mar 2022 12:02:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EdqpR6xZg8oJ/hH6GNLfKG2/0uuKVB6uouOgAGfp7AHaFfXMPh4U0BFykVNNemf6dY0odTyTOZ4xo3qp7G58lfQhRd5m+ECInlRd7P1pcyEpO38mr8vEEWEj9AnpCFlmOTuAwxB8JuFZDLPXs4mQL4RQoAd2mmwexXNQ/YMDnKvFPQp6087y03d4NmIYV1zh6T/C6mLmSsDfTpQ5rfetjjulO/rXkmOcvCVeZh/4Bp1Y4he1DEqqCuespErAalpxL3eu7oE5V70wUK2ZC03ACJVVOB+LhzUtYxmIdlsOSK/0wMmA4qDEI9Vs1sJI7+GKo6qK2X0Q2JzHnQhmc7WdxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JH0OOHaw6AbTS8vjRrXRIHn2RAk+bBqx4p3jtpIqbgE=;
 b=fICmzsF5vPYx0PSSqytrY0z1VzbR+v44ZPQBReKWvjznrTTwFXaUbklVuh1qsmgVh90z0B7IF9dHNvt5J/6W4h5G6PgMfH8Y7XFVAQSHlCjR5D1i1QWqVUZPv1yFo8J3ji014IhnqaBp+Idn68PBnYaAvmFjHIzPC+GQIxgAxNuvuk60OyMk2WQ+lo5UaClnL1p6MZ+cVnDg9KwNYjdKZQVGf8RuZc/JTMsCtOnvrL7NpO6rh83LkVSlAZBleOvbz9CybCFNTy1dr2HdnmLJiTTZDiLBj8bQzsN3xc0YmpKNDy/wdnUB6pRSYOXzlzutG5LfCJMPDOmTD4RHveBLpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by CO1PR11MB5124.namprd11.prod.outlook.com (2603:10b6:303:94::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 20:02:55 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 20:02:55 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 07/25] ice: refactor spoofchk
 control code in ice_sriov.c
Thread-Index: AQHYKExASEuLdOc36kKl5j6MY2Vm56yskFNg
Date: Wed, 2 Mar 2022 20:02:55 +0000
Message-ID: <SJ0PR11MB5629B5F86B4E0AC1D232851BAB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-8-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-8-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ceeaddc8-6a08-411b-8729-08d9fc87a41e
x-ms-traffictypediagnostic: CO1PR11MB5124:EE_
x-microsoft-antispam-prvs: <CO1PR11MB512485B35EFE80A7FA05FCABAB039@CO1PR11MB5124.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wE5ZYpKV22R9hreZxKkK/QpLbz8Qt0kopjpXgVIXHAMfvCwvyqgXOuSTwExhtIkLv1mISk7ZeQ9gfWQ6VpWC6rPrWKyy00jnvWHTWedOHyzqcADfDXitasS2XFHU3dvPz9iFgHxV3BZ3nBTQLMdfs3/HPGPM/zCNLOkOOECmeieqtr7GYGQLJISpCWvAiLCS3saUdGkngGtgZ+NtsG5U4jAv+ea+3srzfa/s/Q3deGHaiCOvOvdLUEMY83JgRxUJzq4Y/C7riWv0R7PMTvHSOladB8DxEEhbkZy0kb8My1XIegDpxa0vN4ICgTHZMgyfYuz4OYAeYM9VeAso0dxDVO5I14P8wc+zsUsOvyh9kVEZ3yERsqZwDSJZX4g50Ndd+dqAFdtTBsbchR+p5LxSmVUBA4gFD0tlh/QiCWSeBdxDQZz5UBrHDB0slDDheFcpPqKk5gaOrk9FB//wO6nXxCHt38bVgC9tEggpal4YSR+ov3xtZs7RXXtK35r1NajChI8x6Hd0DrMcEp9uNuM5HJ7bCHfTvUrLZ7halpUpOo7EOcFMYOeFMSWvzjw661PTRCaRuOLsX9rL6g5sPlfRznJS9ORkO7RBAKQbPRo4bxS8CJagBE3P4lnVxfHyaspP259cN2naPFKL7W80DLp4JCsFRD0x+HcSpioC3uQlvteTHjqWYE2gLi7ky0TvSzTzebp01Q1NO5sifIbTOBimwA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(33656002)(52536014)(38100700002)(508600001)(71200400001)(86362001)(55016003)(110136005)(83380400001)(8936002)(9686003)(316002)(186003)(38070700005)(26005)(66476007)(64756008)(66446008)(82960400001)(53546011)(7696005)(6506007)(66556008)(122000001)(8676002)(76116006)(2906002)(5660300002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lnF/Q7l0+1PdK0Mglmkufmw+D8zt/rmUtnapfWulIare0cv05OBxuRTJLDQm?=
 =?us-ascii?Q?3yeZVRVnBUFMrxbHrjp9TAb0be5gaRWgl3pPgbcR46teMJtXE4XZG5IijbL/?=
 =?us-ascii?Q?uaFLF082vApHAkkAoNxdqvM/KTBEL5k/tug0kwYMnHxYSJON5ivaIW5SkVTJ?=
 =?us-ascii?Q?9CKZRAkzrMotH1DmsVOp4UIq4If2JLj9Q/4XnPtClvIpLyQBPpzBfWHubj+2?=
 =?us-ascii?Q?lhIBC7qlJmahhfIQlTDCZhRB+cvpH5Zkyv5vhqixIJ3LlH41W3efRLzg14w9?=
 =?us-ascii?Q?pnJKF8RIwhV88fcWh2mNFfwaXSSfbnzwMbVZebtRN/saxxqeuHhaL8hpa6kV?=
 =?us-ascii?Q?lkPD5c8rVkzAxE1MpKQBUnBhdzWwxo6wM9fhG83ZMAyhPQf5IJ2cPiZXCEA1?=
 =?us-ascii?Q?ms4/AWSako9X40jvAnHytRm7t6oIwOzDBqfu6CA9OlaVV9nOOEekLCOfrs5f?=
 =?us-ascii?Q?LWZjh33bbszlNNasm26HVSx3DA9Qlylx8CCk+iZjWjcNUCome+5dSM9nlnc9?=
 =?us-ascii?Q?Qbg24EBZdr8rfDbi37vk4kkszn6wa4kLaZTvjP5T3iGU9nUUEvlC5oajJteS?=
 =?us-ascii?Q?mn9cE+KiI1ItfDzRjahuNPUjrFeVMNeuhXTtXinQfJwvVaujqmED76bqjLJk?=
 =?us-ascii?Q?oRYGvfMnGNn3TV5a8vy1q4yBP47sTdRLEAYmNnD7QsKWvKIU6CbYhyhPO/wi?=
 =?us-ascii?Q?yth0lESIkv2aGg1QfOq4nQ1h0zilEhXFlfi3FfMptB53naWPKLQ5jTPFjU2q?=
 =?us-ascii?Q?CuzYNh1M1ZrL/NhNL7KCSObSbJvFWMHcAgnEfHGQecloGMnkASChT4+Edwav?=
 =?us-ascii?Q?0kxAfKLpemkTouyHkCGYWpTsqLb4yAbkUYWWxTy0sVkQOdhHiXNGSOWPEPKD?=
 =?us-ascii?Q?JLeBJ7C1K/+EnU92kc/34EURiWza+xjbVlRBiLRlO0SQOcwqhvwh4uNZuxDL?=
 =?us-ascii?Q?Q/NJOaFTh7+ZSpUNjwjacr3cb8X4MR4LQJrY2cJHUm8g4Rjgg/I1v9MAc3Wx?=
 =?us-ascii?Q?tAchYfaE0J50NjXguIaiyYF/TVKIbuWNm+N+bGDZL6WoQ8gG+DOT+LFj8kPR?=
 =?us-ascii?Q?XXMwjSwSEj2vZwNhfZ88rpXMxxpZnroJE43gm0X4guFd3OvbpukLaN91q9fY?=
 =?us-ascii?Q?Z64c1bPkyl8MRL9vojlMoC4mB/YAhU+FQIZH40LTPtc/kJC04P1trbhyzsOR?=
 =?us-ascii?Q?IaiKsey3wRpKYUb9h2Ap6iV6MwS/a+3rMYLKgHB2SGvzP4SPP/+tj+nDYEAa?=
 =?us-ascii?Q?BlxSgl5sTW5pgADB/gOurbDH3CDD8reT72jXG7XYrkqb0phlSG4rxFXZxexX?=
 =?us-ascii?Q?d3AdME30nAV3PlBOgZZafG9ahOnw6zUxfjbrrpVBQoHdePF6eTtx1wtEuPID?=
 =?us-ascii?Q?kLdCGyf2WeCAztSgGtetkmWTovsjIfZWU8HohBE6eg3hsSlMPvugMGBDk7f+?=
 =?us-ascii?Q?EKMKp7aBOjWPb7VeKaioQAl9SJVT9pi4e0gX7yhoREF/NKysV3c/vuQmNDzh?=
 =?us-ascii?Q?ShiToE0WILfSi1/VQU88Uh/KLz0vSpDiKOirTkPZT8syPIy9k8TRTi7QP0FH?=
 =?us-ascii?Q?YFsot6K8joBpmzBNVqCs5T5/OyUf92k01uyHwhDtT/CB2KCDkprs8UXG/Mna?=
 =?us-ascii?Q?W3nwdIbPM1mgIF8HsRS0MezOKfwW67nnX/+x/MFTLislQ3bZhP9XZsfR5w2C?=
 =?us-ascii?Q?3eIvqg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ceeaddc8-6a08-411b-8729-08d9fc87a41e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 20:02:55.2947 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H9lgTd1tdHRGqVPBckV3OZ6ZjgUyH5YL25Y+LNOmAipUYYt1/HWTB3HJl1C9gOqGiMvQQiKnIB8igpo4lsgC4cFNpEU9ktVahGP7v49xmq8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5124
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 07/25] ice: refactor spoofchk
 control code in ice_sriov.c
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
> Jacob Keller
> Sent: Wednesday, February 23, 2022 1:27 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 07/25] ice: refactor spoofchk
> control code in ice_sriov.c
> 
> The API to control the VSI spoof checking for a VF VSI has three
> functions: enable, disable, and set. The set function takes the VSI and the VF
> and decides whether to call enable or disable based on the
> vf->spoofchk field.
> 
> In some flows, vf->spoofchk is not yet set, such as the function used to
> control the setting for a VF. (vf->spoofchk is only updated after a success).
> 
> Simplify this API by refactoring ice_vf_set_spoofchk_cfg to be
> "ice_vsi_apply_spoofchk" which takes the boolean and allows all callers to
> avoid having to determine whether to call enable or disable themselves.
> 
> This matches the expected callers better, and will prevent the need to
> export more than one function when this code must be called from another
> file.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 18 +++++++-----------
>  1 file changed, 7 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 7cd910bb7a7a..8d22b5d94706 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -985,16 +985,15 @@ static int ice_vsi_dis_spoofchk(struct ice_vsi *vsi)  }
> 

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
