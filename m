Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4754CAF4B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 21:03:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF0CF4029D;
	Wed,  2 Mar 2022 20:03:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NSbosq5_HpOJ; Wed,  2 Mar 2022 20:03:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE1C140216;
	Wed,  2 Mar 2022 20:03:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E65F81BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:03:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D0478404AA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:03:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hJBv_Psnwupt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 20:03:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8E3EE400C1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646251412; x=1677787412;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hGBAdKfp5UXLuE/3DansuG2xoUydjGT51zNrYrKLEIE=;
 b=I3ocr8BOpVlkqUWe2lxMx6EFm0w8Hs9i/mDAshdo6g/fYp7cAZ6V4JlC
 N6RZ4USNKZBr2f2ybDGhHrUkZw7SZJ16O6S1AR54Ke7EcrD0wATpUAwSI
 H5dt4ALcwMX7N4gdBwGLcFvX07uWo1g28TVCdMdhLiPZj794157rsi0/h
 8BYUH5sJ2zMDfOriVhK5FpZxPOqgp8CUuV8w/KrykOI2IqkwYWgoROvs4
 skphOyKC6fJJL7Y37CdsSTSXOV7MqHka/hLur4Taxwsd8CUYgMBEej1HD
 mvk73wEiXgnVRFjoyGHj6EeIqDGykq9BWS6vgSCgYNqFF+AUCg8+DJDdY g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="251069494"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="251069494"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 12:03:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="576231471"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 02 Mar 2022 12:03:26 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 12:03:26 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 12:03:25 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 12:03:25 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Mar 2022 12:03:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=knNxIq5OTmxxJ1d1H1pfClCEu08pYQT4w/gHs2fRbetFp6lJSB8syOhMp6iKr8gtSFenHpZxldmyAbByqJwR1AA+CtOSls0KPHA0J9TOyBGy7CMYS9/UGCHQOlgWM0AmAXWl1jru/qpQEhwaTjnAw684A5LxiDpmcwYEPYkfzFhC8TrrdU5g8voQInFeOyHvTNUM0GpJ6+RCJ1s5Z3ZLpdYsL9fQSRWfYPCQyQWuI5hTYhirQ1smEwRlp4UOWByn/5ezR4iA6hsWSyKjEEhKTf4RTubBaJkVHqLojusEx+4RpsBkJmwSNCxAF55b0YU2ijEU9fODTUKrTh+MtJrh2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JuNQi0AWUudmF+TVDboef8Q/tzDE0hEmtyD7X5KJrf0=;
 b=SiY4L1CcKlSj96Ep7ZvSdTTGsXYBVexaZCL1gPkZeuMKzxwybRa4Bn6+45L5E+En50HeFjla5iYuZYbPASbTYEjxyua0tg9BCwguAdUVnNzp7cuehwYwDCpT7eajj9XU7t1GyHE6jGe4sucoGT/SxbsWokB/2Nhig4ROjBzUswTY95wGq3AGyvMaDTv4X6OedeiyKxCxfkX9lvpWRIo08Y1swy4671oG/Uw1hcHCTu0spYUDzVwUhyG3tuSP6zvc8x814+S3YkvUZekNO9GXO71t1iaQTHwmyEyicxK49t2XOpDPn69AIMgVIgXiwQVQtD4fb6Offs5/ibZg1A+b6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by DM6PR11MB2924.namprd11.prod.outlook.com (2603:10b6:5:66::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Wed, 2 Mar
 2022 20:03:24 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 20:03:24 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 06/25] ice: rename
 ICE_MAX_VF_COUNT to avoid confusion
Thread-Index: AQHYKExNE1b1bVi8xkSn7V8e2pCcXKyskHmA
Date: Wed, 2 Mar 2022 20:03:24 +0000
Message-ID: <SJ0PR11MB56294813AD405EDA94E6F227AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-7-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-7-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: 093e7b72-74ed-446b-d162-08d9fc87b557
x-ms-traffictypediagnostic: DM6PR11MB2924:EE_
x-microsoft-antispam-prvs: <DM6PR11MB29249B572E9B5D01588394D7AB039@DM6PR11MB2924.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nIn+WYyLnjkQoEaa6olQanuCDk6dF1jzYwmJWvwwQRlqWicB+vlPwstaMVhT8WEdF3CrqPdinLNSgQ4stkyNXJ8QwWdc7EzVQkt+4mRJ8A7oMkdDtlUBypWAV1fcyINpfHnGkCizYUizEz5NI3IUMGVQvB3+sg2yUc/OsVDGWWx83oh7Tj3x7W2wvD4PAsiYGrCDhM49zMDHesdJc2OhrkRb+kl1Qy67EZdQek8PVy23A/eceYg3Yr/oEnHCwnuiKCkNRnyHVn1INmCwodrka0fYtsFKb10piR+70hfYrQTDzDEFpA9lFkI6s51NxeOVeQkO9xriokSQ8SFbIRqutxE+Rj4xOWtQ159kjUDMniycdyIkZAM90pQ4GXWYWVaKOa5xkR57U7GhqVAPP1/3f2HHxSN6VbHODBVMNxwEU9xhWRi2596NuYmGw1zA74NxhBpkR+zrkjH+AnH9OV8e3VimfSq95a27dF8D9MFB5jklHuMumxF1qZiYsGJqXAiYVOW6+mwFOBiV4lS5WXO7i6AVcjGksxGR4+B+JDo/ykkkc0o0Woj9aRAin9brPzZBh1ws4gXVnYL65A8SO0dWcAxPy0e8lOJhzDKHts0oswU2QtcimKdAv8nbpp4cZhJ8sOP1mk6638H7ujkHdwVotEdp5kgQTNms8xV0VWTMEXxjrIdyzLw9shme9dvC0tU18y82zvnQBJHv0dLIK2/Zdg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(71200400001)(508600001)(83380400001)(53546011)(6506007)(7696005)(110136005)(316002)(82960400001)(122000001)(33656002)(64756008)(66446008)(66476007)(8676002)(66556008)(76116006)(8936002)(66946007)(38100700002)(55016003)(38070700005)(186003)(86362001)(52536014)(2906002)(26005)(5660300002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WbrMu9viTHVqnyi3y/ekRnn4+zJT023twC+tVvScVptDx2ApZ/64cFTApzxR?=
 =?us-ascii?Q?Ir059LxgOuGHH8bDspUP92bX63PxLUwfJjfJVV4WFbWFa5bC+bdSeaT7BXFy?=
 =?us-ascii?Q?kDiJ1wtIockM2jKiTdRv/HyYI+7InriB22N2DIYC4lGgXb7LvlhTWgBKtsBe?=
 =?us-ascii?Q?LPxHZmyFXQy17mA0ItwWZqh0ErbuykR5DoBZJBrjbCc/FsvyKzbdgDFXR4Y+?=
 =?us-ascii?Q?PZZzrT1rsQ5B5GCURZT/Z231y//kdwR/WfN0hIA659mYCPwQ3PBToVa0WgQ2?=
 =?us-ascii?Q?LF91nUqTS615L32k5f/brQFP46VBWkF86Q9iJigBWU49lDoUVFQxSdQpxiRG?=
 =?us-ascii?Q?dvORnNlB5mrrCmHdp+64s9mRw4kzR/Fbw651JfKcd3yIYnSIRe+acpXqHrlT?=
 =?us-ascii?Q?8BqmWriqczM1WxP9yyxKJLnQVWFUMt8CryjGTd8jYaZtGNcHu/fWgo3yWr+N?=
 =?us-ascii?Q?DWrxVPU2ZYiRFf1e5RZwhQDwdNbGCAwHSaYfZpk6CIEHGbRi/E1djmZdoP7z?=
 =?us-ascii?Q?3Jh1FYnJTNb43nyZQQQo2a+VVhCj13leqj000KPiOzq9nI7bCJSDDaPp60oJ?=
 =?us-ascii?Q?xgrxyEu3J9XA282cV8m1SjT78S9oNHcRCvpuN54wQcwTnj0hpVFjU2iMw9yD?=
 =?us-ascii?Q?UVAZmJj9ywuxsfa5VbR1PyrY09W24a/cqUWAYe8YSe+tZ7UFK/OlBhHK9obC?=
 =?us-ascii?Q?EsQU7a1W9c6dpvKpaRnCKNhGVuz6bMxsUOsslFyCMVHK7YlgsKB7eeSTERWL?=
 =?us-ascii?Q?rCGAM8SOlxfVuSU+pHoyedp0Q0GrIXZhoECO8mZWMFt5ANPCK7DynFGJrBZN?=
 =?us-ascii?Q?i8mI6oXQZJj7tGYAOcZ8TTQ/Q55+RUeDt1peKMFsrBBfs7Q1AiLOKNZEoIs6?=
 =?us-ascii?Q?MCmk24HQy7Kt0+6ZwZ5Ow2BuJU9vBR/RFkd83VUIQIr1lMkLxxHLp47CSpNU?=
 =?us-ascii?Q?fT+kL7YtBgPTtO5Ysxb/8wXH7YPmV18Tf44DPipZdzJTO4TDmgOkn5Tj1L+8?=
 =?us-ascii?Q?gzwKhBjJ+1IjUZVg/Mz0DaZ+VFz1jU/w8kC2R23l7JP3HnIh344ROk6HvXOV?=
 =?us-ascii?Q?OKeeTJqpBIRur5mLR3P7zAgZRlmlJjg9JMKq6wGQr9NCODRP3wsQLXVG98Df?=
 =?us-ascii?Q?87qofTyvyBmfPGEPqXHzrnuBLTD93j2sCiJsJw34BIBMVdwzhN/yzv3HotSe?=
 =?us-ascii?Q?SlrOQHpVEyi/E063lw4wcf3P3WLP6EvQvSvoBDFEFpBkHNvb685V6zuOpHwJ?=
 =?us-ascii?Q?6Zct/GcXniLl22GPrmQiu59+h61A9y9+X5lDYPELGfENV0U4M6PhhQMaoa4o?=
 =?us-ascii?Q?2qAQPn0UAF6Jn20rrSzJNxiAsZuqceVadY5CBKuaG1sIr1nbZlZL5hK0GwaF?=
 =?us-ascii?Q?dBCwsWeWw8ejhjFe3nBdSw+RsUoxeHq0MzV709eBRfC3qIsAuNC9pbV4W2Oe?=
 =?us-ascii?Q?9K4bPtalulM9+hbvFcjob08Qwr7dMyk2OW0sALx1tmLEWHro1ugfPTF4VQGX?=
 =?us-ascii?Q?WyhrIFyTzpbAFvo5MpXVDu6lkQCxGY6B9Kgssqcc1oPv1wEFsr9VAHKdYP6Z?=
 =?us-ascii?Q?EylKLEcZ+TtjHjaVNsPp3rOQyISUKDZY7BgfGB9ftPucgLCRt6X7AmwOoXdP?=
 =?us-ascii?Q?tPH/9aMIYOllqPgyHAhmDg3Cgni8xn2mxqb4O2x9TUAqqNXPT+mtNvoq3553?=
 =?us-ascii?Q?n0CtSA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 093e7b72-74ed-446b-d162-08d9fc87b557
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 20:03:24.2070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zz31cIaYrbp727BFsYfRl2cYUV+thDiZ4UVNdMRZa9DV0IUXD4XyrF3PsZXP1zz7wcjFOGF4uAsuWpPkAAgXH6CBxLR64taAbsk41blHTic=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2924
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 06/25] ice: rename
 ICE_MAX_VF_COUNT to avoid confusion
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
> Subject: [Intel-wired-lan] [net-next PATCH 06/25] ice: rename
> ICE_MAX_VF_COUNT to avoid confusion
> 
> The ICE_MAX_VF_COUNT field is defined in ice_sriov.h. This count is true for
> SR-IOV but will not be true for all VF implementations, such as when the ice
> driver supports Scalable IOV.
> 
> Rename this definition to clearly indicate ICE_MAX_SRIOV_VFS.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c  | 2 +-
> drivers/net/ethernet/intel/ice/ice_sriov.c | 8 ++++----
> drivers/net/ethernet/intel/ice/ice_sriov.h | 4 ++--
>  3 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 133860071174..a628fa9f1442 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3868,7 +3868,7 @@ static void ice_set_pf_caps(struct ice_pf *pf)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
