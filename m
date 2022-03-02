Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A83BE4CAEF3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 20:44:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 155EE60F28;
	Wed,  2 Mar 2022 19:44:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id apJiuGXmd0ej; Wed,  2 Mar 2022 19:44:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0531760F24;
	Wed,  2 Mar 2022 19:44:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 804F11BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:44:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D2FB81462
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:44:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vidFwpPYx7ch for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 19:44:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C809881456
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 19:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646250259; x=1677786259;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=i+dJdFaNzvsUG1TCeVSYZRLGcpMCD6zzsMWEVEmFxAQ=;
 b=DT508fbnUxOTRGenx3z/jHpPUPNA97xW+SOTOcogalBkXTS5uTwCn6Vw
 UXH1R8Q+Coa6XJ1+Frq4LkVN1pXlPX7KzKMgJqQBzchAC9DwhbYTxpCRi
 DJzJGUV/lVQlcNmhBJsOMpVtVRRBQ1X131CrTIRml7hXJC6s4Z5qwmDah
 QSJXyUBqkiZAEJFJl1S5shmS7ISqwBxXERzaMg3v4OQX4QGUmizxxjPwR
 arjCkV4GUlIhtGrUi1K+TPfD8ydCSh6BJvMQIkx0d48toOQoo/nu9o2i5
 8tHZCNMm9ve1L52Egmu9Ga7Uh/Mj24/s/45MbJRImEM3cBPWmkg1NdELQ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="252320676"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="252320676"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 11:44:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="511129655"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga006.jf.intel.com with ESMTP; 02 Mar 2022 11:44:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 11:44:18 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 11:44:18 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 2 Mar 2022 11:44:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BM7WtrEyDqSFOrgzJu+TTjqCVhuZ3kPyB2pmZ/V/6hU9ggsI5tG18SefkniNelV+on/93zsudDL3wD7hLTE/Zz4nn/L7vdL4qDMGunkGvAr2FJqIN/8Q9d0BbtygBEluqIKArKhYZlSiaW2kZoiKaWP6sHbYkscwMDPQ0PD5gJkNasOQnEEYRqE8KtamipmwiO/+DOs9MTNiSlGAWS4grJI6hqDEo6soFHtQA8KVQ0gCOYH0NdyU8j39YizO2dtBAgz424hyQRwjhQV4iXH4vE9zKdLQT7WuqJM/eTvpkwO9PRN8fH0LeIOZKSTw09v2VCnKzHDOJZ19jjVid9Xn1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gWp4rAg3oE5/OJoPc/Ov8dK/tkotO1pIOILoip59f4I=;
 b=jvZXpVuK9MVXuhQfmuR2a27/DMWGkiszbxKeJQLVsdLcm9Ot+XLbRSGLrKr+lpIIZpXocl/KjfQ5qy3INjPKSbeEqWvXKdraE40xDW3NbWv/3YbTG9Z3bB0yEQZ7kxZWIJYQdqVHgPM8nyaOxKqtwd1zEWKGBc/tOTKFsVHRQZRQdSE/OtW9Cje6rb0tMaRoOWDpkBxmkJaLSuyLrHjo5dRUPwAK7Wcy6R5Mi6yGyMkeg1wUfdzjoWK1U1DgA6i5PM66TSe0OmpOrv25Be9lmCcMKVUOfc7lS3xgbWYmhKOKOyQ/9I21hucX8lq9AeICpnr7rQKualG00L8v6U7wEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by DM4PR11MB5455.namprd11.prod.outlook.com (2603:10b6:5:39b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Wed, 2 Mar
 2022 19:44:16 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 19:44:16 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 22/25] ice: introduce
 ICE_VF_RESET_LOCK flag
Thread-Index: AQHYKExd8E3oVbWYe0u8wcn5572fQqysiyDA
Date: Wed, 2 Mar 2022 19:44:16 +0000
Message-ID: <SJ0PR11MB562937813050C7C68D7E7C90AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-23-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-23-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: d7da4c32-9bfa-413e-9c95-08d9fc85096a
x-ms-traffictypediagnostic: DM4PR11MB5455:EE_
x-microsoft-antispam-prvs: <DM4PR11MB5455E6B4CE86D76406AA9472AB039@DM4PR11MB5455.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iQHUbsCC7+T1bqu6bh/2kCtPlbi0tqMSo67PDoOgbVowsqg7ue7ox9q0YnYMYu9AoXHjexhOKEGc5Y36NcVD4OsBpAKTyjR4dM24QeRvDuBFFSxSDYz5OkslX5UbsLhIVu+LAK9YHm2yw6uzTCzBw2F5wXhpAxuOl0OEImC4DpqhQkdShYWRO9MELuCIzkwgqVQ2Y4PUKAhaWrvTIRh9A56X5oMgES+XtKVFDunedSw2k+7Vo+E9ZjDPIOWPXpVbsaZRAgnNK1zZHGjg/E/qCChJpDSf0iHUFCLCVa3SOq+YrGi7ea505795bSKXYgPRCetBLMJCjK9DjdiT5zHJeDxwCUozyDXExpvDd8yOgrG/ZP7pjNwuDWcREYDPwO9xZNsWdLn50OirDPWTxTix6YKE/q42BoJIcZw80aOK/CzPMOCxdcFhgqB0K77PM3JKtLpif+EI5MtyAjpf/1v+DyFQ5JPQZcEkPqwDA69aJWXv+j9TmRwtBN0Ix+5A1/0LoM866T6q6RI6s2OR1kCL5uog1t0SzwswDMRqG36O4Witr8hKqrfAnwEt35dk7Q2F7N0wSYv/CfPY+yAw+pThtjK4v9/j8g0etWa740g7R+6MLstWHR5mLPDOwlHKeTlJxpxJRptoVAp7iV/BXguH8DLhaLEVLcOfMK8dV98G5v8aF5E0wDMVq4V2kypVvWAOu5YmhAfzJrGPbSwb+/hLCw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(7696005)(53546011)(82960400001)(6506007)(33656002)(83380400001)(71200400001)(55016003)(508600001)(122000001)(110136005)(8936002)(52536014)(38100700002)(9686003)(86362001)(5660300002)(38070700005)(316002)(26005)(66446008)(186003)(64756008)(66476007)(8676002)(66556008)(76116006)(66946007)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?M6qGrYkhx0HBj3SeXljwR0PFXxrwnamqp78XKc/AUt4D8+DNXG7rlNF3eACj?=
 =?us-ascii?Q?Ih6nFr29g1ypd90HY69D5YGTDFgBS6avn+icS5ZR2Jab3okzizSA+1LtmaZj?=
 =?us-ascii?Q?n1p1BBRNcyCEVe2l4pPxQXJKmcKJwB3XFR+i6iO6iecGcIK41cjdkR/4/C3L?=
 =?us-ascii?Q?qDAYMMlFiYkeOvOx+TxRvhHH0CwW5U8g23EkwYKgUTO9K7FYSAS+BKy6PoXu?=
 =?us-ascii?Q?blbVH7JkPkb/HEXwyq0XNnCj/gSptsKxDRTxrauXe0B0KzBtEY3QaFUNEd2R?=
 =?us-ascii?Q?Dj0nWj3xc1POqYycVEGPzIaj7wIp8YxR2dYPN9v94qRyVfa/m3yfsxjBHu/i?=
 =?us-ascii?Q?Hzlr5PkcXnLqS0G7t2L699xF6/CE8kZeu3pP2u0Z5tg2t+T2GClZ5A0C2+Aq?=
 =?us-ascii?Q?2tvdobo9VGmtKtD007w5yBFT67PD0AF3/ldGkaSqXMwJ7Z8ntpsbmzl0GWWV?=
 =?us-ascii?Q?pEdXqB3AC6uzz8XxC+FwtFvY5YPbnYhzW6pQDrHK7Hr/Fic2siRLb5wblao+?=
 =?us-ascii?Q?2OWEL04E3dmJ/kzy6g8uhRN0T47PsW2ThQFA1c6EK2tiOrYms9l7lFtM9w6r?=
 =?us-ascii?Q?l+MBuarH6SdnL6/NqlaxnREygN19szfyaCFImXgZI88XR3ko+WBRDfoI49Yc?=
 =?us-ascii?Q?OI7H7w+dPX7uonkRccjZba4ern6J00f+es+S8JzNLZUEd/NipwhqPUAbwT4q?=
 =?us-ascii?Q?TOQY6A0uKMQiEai28GR4pDddyvr2DZQQCN1wplIvFHbjanIr/c+N9h7xfSjU?=
 =?us-ascii?Q?Y5VtFY+j/VjhadC8YH0LlMRXtq2XOC4ddzBsjNftveuOAZ4axEZK1JE8mm6w?=
 =?us-ascii?Q?ch+oHxHSYFLc1XluSWofcPEGi/bLdfxCgti5tK3K8dJ2I/QAwbPG1b6CYZsG?=
 =?us-ascii?Q?rfUi9hx9btcBx0YcxlRHVAuUo99pgt78cvVbNO+ZxMmd6bmS6zxTKBEoP45o?=
 =?us-ascii?Q?/Ugt6wdQOWdiM/R6EsE+NddN8sEfwSZ1g9rgQ7en2O0ekP22Q0rZb6IxX9ev?=
 =?us-ascii?Q?8bDe1L+2HDlPDHY4pAl5+LqsblljRFR5Vllmh4EQoaB3ZnolYTM/a/flFX1Y?=
 =?us-ascii?Q?rfmW0cm27CUOlM+qwNhmq0w/YoTXL9jtBxWWI7RjEFYpFlNIyAsIqto53V8Q?=
 =?us-ascii?Q?Cnh20KY45demtF64E0/wGE6r2h4NyX6PRkfCCG5gcISDBsHhg9HW1MYyQIlA?=
 =?us-ascii?Q?TN3/JllOqL3P73b+TDSzMoRslh3y/Qw097ttehS06RW2jcupEnF3xdgvEXXQ?=
 =?us-ascii?Q?kjWbdJKNqRFTgSk8yJL43NfuIsMVSzzv6H2RPYoNm2Pl9VnvxkRlyskPwbkX?=
 =?us-ascii?Q?EFLJm87Tr6THxQfhzrbK97UgfHfeVw1AImPRHrL1KvfboqGJuMs/QF7hCyGo?=
 =?us-ascii?Q?vCYDP35809b2vJ1VgoMWeMVrDKul8tOlusBUi02K3O4jhApcT6+l1FYhSFW8?=
 =?us-ascii?Q?1XQHpDZ55ruExJCY7RH4RVviKue7tqrxzcK69uI9hm8VNUt5UZcDAyCSm3C8?=
 =?us-ascii?Q?bKvZquu3FXDeopPJeauTeX+PL55cLBkLJvbulENGu2Mg9BpgoH29Y7abgKC+?=
 =?us-ascii?Q?CPnjksHYh6tWRQNYtPPYVJPtQMGw1KtnIQBH2IPAWBWOzgpbZuqtfKesgxSC?=
 =?us-ascii?Q?4VuTzIdSc3+01ZfjCTJxsMUBG0EbWfo301jmip5g6zfgGoJbYUlw/2JFnULo?=
 =?us-ascii?Q?JVGLEQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7da4c32-9bfa-413e-9c95-08d9fc85096a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 19:44:16.7842 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XCmCsdZcEfZmD2MiIUcllwwliGaBPbWLUB+1h3DZPPfjpJna4FQ7kjhnTcDyMAdlwfiVyl2/osSi/ouX9CgOIjyLipAL9+BNsesR9B3ZCWE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5455
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 22/25] ice: introduce
 ICE_VF_RESET_LOCK flag
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
> Subject: [Intel-wired-lan] [net-next PATCH 22/25] ice: introduce
> ICE_VF_RESET_LOCK flag
> 
> The ice_reset_vf function performs actions which must be taken only while
> holding the VF configuration lock. Some flows already acquired the lock,
> while other flows must acquire it just for the reset function. Add the
> ICE_VF_RESET_LOCK flag to the function so that it can handle taking and
> releasing the lock instead at the appropriate scope.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c   |  4 +---
>  drivers/net/ethernet/intel/ice/ice_sriov.c  | 12 +++---------
> drivers/net/ethernet/intel/ice/ice_vf_lib.c | 18 ++++++++++++++----
> drivers/net/ethernet/intel/ice/ice_vf_lib.h |  1 +
>  4 files changed, 19 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 9d5fa9840004..4f35eb039d9f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
