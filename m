Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F33651D403
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 May 2022 11:11:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 052F78127D;
	Fri,  6 May 2022 09:11:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eEZGK9q4HH8b; Fri,  6 May 2022 09:11:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E29CE82F49;
	Fri,  6 May 2022 09:11:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C24FE1BF575
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 May 2022 09:11:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BCD3041910
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 May 2022 09:11:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oaZu9_C9r7g9 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 May 2022 09:11:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C8BB441553
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 May 2022 09:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651828276; x=1683364276;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Epqw/K04CoiJzdJYpjTnnaOFaO4xMOHTiMz5MiUI/Tk=;
 b=JzPHTC24MhmGm27oDpi/jz5RBY1/SnxJWNT2CkEv053RlK6rKn/7kP9K
 My9RhQOmSlx8DgzAzq/cF3U0tYdDVxXEM+n5G3bA2zepeD4kk6Vy6kwcs
 X1KrqNjuTKgZYeUw24BRH4Q2Cqbxc9LiwPhgZ/OiMjX+fkqmsyS+XPo3t
 fCe+4L+78j5ypZHUQz38vN3UN7gBWEcWZ3RgE1AAKc3Ovpqxlr0KFp1+7
 9UcQzbz1CoY5rdbP+tSCOLpZoSWblo6rSsrt7i+k0EWyX9iS4YUKwDblE
 ztPurcokKnJ1AJY/vrGFiRuNprT726TBc129l6ERHFbmAFtjCKjtWY+MU Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="331394703"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="331394703"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 02:11:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="537794226"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga006.jf.intel.com with ESMTP; 06 May 2022 02:11:16 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 6 May 2022 02:11:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 6 May 2022 02:11:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 6 May 2022 02:11:14 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 6 May 2022 02:11:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nEg+KnjTGSTxhIC4e/KxbkGh/svZyLykOacMp/8egfqFxZ7SoLrMz0QhbrnzWdYGo8z7uvjmZceAiEoYDfulBWnWupf1HteVXZWlYTO+FgrIZ5AuU+fIyeAK+gB2W+ZXeuHbnaKSoJo4hzDB3nsSuuZzBFRIrgG2FATb9FdbsOwS2HbBbEf47vVh6ddfxTbWtBrkx76r8MFLp4sxh0sbmkxepkogVvABjk4elzoNE/nhxHKzZcDc3iA+czW8ZpLL7i3KYCoD9XFAgaym4ZlJr2a7O5UoNCVMz5wKYvEDz7WynrWeThS0bH+QY0gJBeXXvaiISs3k+KPxAED3CtFKfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FBjfE6urIBDEPBSnDpiLd42SQp+h+aavZC9vXAPgyv4=;
 b=aQgaJpHp3sCE4jItLPUBMnGykCNkezA7CeCDHwlCLqQ7UnMeGUQcgdpiWGAeVTkAX4HJVJcy5YN9DCLPNzA622uRPaRBZoxHi8VX8rPtwvPEIwM26ukk/5E5HhR9NayJr8MZ/CyubiwW1GCt4gk9sxFDVQ3hqfc5jVbixLzwbxi/T0yLML9VO6ftTO79yYDU0NUB14Wnut6Dc/rTZjsJWQi2XLOqwvt4zG/pxyX6ItjwQjhEPrsCJrv7Id5b0O8gkNUvsMGFnKGfNYLJvRiwO9q9xzdmRw1efSsDUD3Z2IDuAB1xsgG1ciYsV7vOLvZmOa3A26h/QZxJY13OUPLIwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3461.namprd11.prod.outlook.com (2603:10b6:a03:7b::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.20; Fri, 6 May
 2022 09:11:12 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7%6]) with mapi id 15.20.5206.024; Fri, 6 May 2022
 09:11:12 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH linux-firmware] ice: Update package to
 1.3.28.0
Thread-Index: AQHYW+v29zlDREAJkk6en7FURKHYl60Rmmtw
Date: Fri, 6 May 2022 09:11:12 +0000
Message-ID: <BYAPR11MB33674231F42DD52D4A04336BFCC59@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220429170433.7298-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20220429170433.7298-1-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 907a0198-42bf-45b2-4d65-08da2f405dc5
x-ms-traffictypediagnostic: BYAPR11MB3461:EE_
x-microsoft-antispam-prvs: <BYAPR11MB3461FAB9FA8478A44FFF2CA1FCC59@BYAPR11MB3461.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H4yzmXJBs8WqdLx1sT7KDPdcfEjq4Fu9mr+E8ZwRonUSSjcTabGcE5LFS8m13LqHkrG78zS7qlHE7HOByECvvWFE1ioyb/cTh4tp7GMAsoI4i59iFY3MlDmqSODedBvTR6Q5ayvILeSJRcHK5px7eWkw/kJ+C/84aw36h6wsojj84XUp9EjGck55OOvxaB7OTcZl+bEgnHnpua7p9SPNuhYqWK0AfoEyNpGt9ZFTpu20f8v2688F/5aodTZkJgRMh/QsWskQL1+SKDSIfqVp5HGM38/m08eDl10zriXc8lnYSWEwYqOhpFfV+PFyXsmmcnwraD3cbPQcwZNxhLtrAasOyJdbHggwTH8uphxkM2P7RPoO1KEr6CeCMYwArKSa4/8B6XsXn65AvGmkfG+sEj1HZ0ZKNeH9SNUr0hfjz8PaSG341dR4kka9mhsUiiV/FwdT5hO4eB+oYu9jNSanAXRRhQnIgOOEQ3SNAi7cJWtPUgI5zsTUQ3MkUcPZeB7IgP22u2usFTFldJwd+kKLe3Drplc/9S76XV2GEzScC0oCk6GH8VFYTtW1JZraWYJ52OPFN/QJ1m4F5Wy8fn3qqBAgetlKBpjDWZKJawjzJqlNsFpRgdSUL8vp0uKQnH2bW5ghUefP67A2CnOLC8dwdYNFJYokbvf2tZaOjAH0JSFs24vFf2eZ9kN8BdWVQmEulJZLQ9eCYrkDz9O372SYKQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(66556008)(66476007)(110136005)(66446008)(64756008)(76116006)(8676002)(83380400001)(38070700005)(38100700002)(316002)(66946007)(8936002)(33656002)(52536014)(53546011)(86362001)(6506007)(26005)(9686003)(5660300002)(508600001)(71200400001)(82960400001)(122000001)(55016003)(15650500001)(7696005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?M1cYglKIgo3LdQWQ2+at1vtpv7OfJ0D1ihsiEbpNjoVDpR8jXtuQcg/tHwVT?=
 =?us-ascii?Q?Dw6lYetoYoB2sV4HMDoQrd6mF9oP4WjcmSN8kLt/9QDSy5CDlw6m4FeEkTl3?=
 =?us-ascii?Q?NVJCTfanNxCy95f+cK7XgWUCVq0bh4LSbE073LxxeDWzxTFL3JC9Jx6+RnFD?=
 =?us-ascii?Q?WBOs4QDo0wpCBCpMD9y+jvWKeJHo30xigh1ToAdWziCbCYhQYPuWN32qwLOg?=
 =?us-ascii?Q?aWo7rp8z+0MX4DEpSwGsDwXuse2ehwHQE1u26MQRyEbLOqDdjrEUqZlJmX3n?=
 =?us-ascii?Q?usAHt85QaxH0qOSKS1PhZ80nKzOyEyumsNlXWGpN6hn7MK1qKcBDiYPGX4yH?=
 =?us-ascii?Q?ozAzUMNPI4pMwI1HutyWjEzmX3DA138xcj2MoaCebMuX+uL03ELY9Z1OAmNo?=
 =?us-ascii?Q?Hi0BWgoWi54JeS1WX/efotrv7lJ683wWYYUUtzl036yLsNI25zG6Ld3Zr/hx?=
 =?us-ascii?Q?lhnD8wHOfwcDS9lq3f8CAjAp9a+zNfaFS/3e/Ks8Xkrcw6XCZOrfQt7UppIX?=
 =?us-ascii?Q?WcmKFj73unoQGOIz30AWukdveKit5SDqceUotyAK5VrmYooiScBWIwaJPlh/?=
 =?us-ascii?Q?etygM0CbR6HCn6M66ThaiCjze791WSOhjVCnYxL0GxAtIdk67Anqg7NN/wCa?=
 =?us-ascii?Q?bafLPmMKqUuUCntNH7r0ym4o6GQ6LInEuNlw9Qhik3GRdoiPH/MyIrRUfj7g?=
 =?us-ascii?Q?4yCITPhbLyYn1jdJspqBRillXXManeDf4JbfsCFLKh1AetVr9cMGp5WMrt36?=
 =?us-ascii?Q?iJyyf4qCshJmL7F0wIAOCrUwjk0K/xyBxSQmUwnk2kanqo/lnvyW6ZdYFBqg?=
 =?us-ascii?Q?8a/4t/V8grQXe45Zr7Rj1tYuZRFyuyrj2fYP8eWU4jH/azq7En844k9906mm?=
 =?us-ascii?Q?gxpbeDT7AWgIicJdP/Z0NMgnFQXEExmmieGaYjs06H3sXhr55n1KfDYh1Kex?=
 =?us-ascii?Q?c4qzSeD2ColPXIrxhzyG3I6DUuRLdtVZCfA9hUfAEi0/fU77yfYcptZ37497?=
 =?us-ascii?Q?jsuL/RkVQpigUvH/tVH8M9EDl1j5yFGNtPWbMRvtA6pAHryiMApC9UE9F2jH?=
 =?us-ascii?Q?SC68wqMuQ5jrm8Yjw1qGksq6GuIIzjmz5lseiHGYCA11g+0hOgKQc3aistCo?=
 =?us-ascii?Q?DobgY5bdxHSlxhPRUsNT21+UZ7AkYPBEhNbguPXAEwdLxyBq+g8FvIatOjvn?=
 =?us-ascii?Q?37FzKcgyD6fdbbAiudQRWgwYvHH42R7CrMC566QDDQuCpFbEri3MbbUzeCu0?=
 =?us-ascii?Q?/e7CRG7yBqDDuvAIYWp6wHV2HVx72790K2JHPQqMDt7peaJPerl/c47y/9Oa?=
 =?us-ascii?Q?TPAHYANtGxnDjg22vhx584H+XPsUXXDa+F9DiiI8aKg51RT9cIHos8Nqk6pg?=
 =?us-ascii?Q?ncMXqsW2dd946tvDDhShVwwQmE7bW4l7nQ84BAIxOyHjuZq/WH6VCD/WJ/dv?=
 =?us-ascii?Q?IJ9Fw99Yyzo4AXtBDa8KGYZdaIzpv42YZeywKjC6DoTzm2lqL8YqRBDmKQl9?=
 =?us-ascii?Q?nH6uA7a2KJX3QhMtJKXMdvPi2+vl4nljnt2nfx3vNn1NPaD399rdhhMPKb17?=
 =?us-ascii?Q?X+cpmOhRWnNb4N2EHJT12ECxNhEsx1T04tfbNjH8Q26Xr7SVvoERSyEwdB2Q?=
 =?us-ascii?Q?jWImHMdeE+LYrK1U4Hi95E+uxM82nZqD5fTfIDpnkVNuEzjqg34gnZMTp1nx?=
 =?us-ascii?Q?vp3NGTpAjS4HxPs8AxPc4FZR18nSM/xPqE70uewq+dOdARd9Uv+atg1x5UER?=
 =?us-ascii?Q?sa404i/zVxfAHJ4En7InDwyVy3GSTFE=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 907a0198-42bf-45b2-4d65-08da2f405dc5
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2022 09:11:12.3345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xpb1Jx3ssFDK3j3ZQt1l1wQDlwg5arfSSJeVYto89+euwYKjSmKLJHaKsydiYg1Xh4+DvvWhled3F3HhWEhWDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3461
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware] ice: Update package to
 1.3.28.0
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
> Sent: Friday, April 29, 2022 10:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH linux-firmware] ice: Update package to
> 1.3.28.0
> 
> Update package file to 1.3.28.0 which adds support for classifying IP
> fragmented packets.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  WHENCE                                        |   4 ++--
>  .../{ice-1.3.26.0.pkg => ice-1.3.28.0.pkg}    | Bin 635256 -> 684408 bytes
>  2 files changed, 2 insertions(+), 2 deletions(-)  rename intel/ice/ddp/{ice-
> 1.3.26.0.pkg => ice-1.3.28.0.pkg} (72%)
> 
> diff --git a/WHENCE b/WHENCE
> index 56f3cea45571..4d44fafc925c 100644
> --- a/WHENCE
> +++ b/WHENCE
> @@ -5992,8 +5992,8 @@ Licence: Redistributable. See LICENSE.amlogic_vdec
> for details.
> 
>  Driver: ice - Intel(R) Ethernet Connection E800 Series
> 
> -File: intel/ice/ddp/ice-1.3.26.0.pkg
> -Link: intel/ice/ddp/ice.pkg -> ice-1.3.26.0.pkg
> +File: intel/ice/ddp/ice-1.3.28.0.pkg
> +Link: intel/ice/ddp/ice.pkg -> ice-1.3.28.0.pkg
> 
>  License: Redistributable. See LICENSE.ice for details
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
