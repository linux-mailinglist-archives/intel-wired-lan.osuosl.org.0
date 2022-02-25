Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C104C4A89
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:21:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6312C40A91;
	Fri, 25 Feb 2022 16:21:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oUZcXvfj3K4T; Fri, 25 Feb 2022 16:21:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D8ECF40A6A;
	Fri, 25 Feb 2022 16:21:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 92DE21BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:21:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 814A3417D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p7A1WJYgcsYm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:21:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E344A41726
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645806103; x=1677342103;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=te4KRLzfR+uZP5JU91ZFk92j7rX/c6g3pUjytt2OF4I=;
 b=ISJRfd0K8md3ne1lCEFd6ojmevQcvCEMtrkOKjHykDoxRQjJCFVFhakG
 UFPNPmtY9z5rzdzc1A3nakghdnqPuQ7f/BkoqOUmP63nhhkX5kli99IjL
 noR3LLqf46K68YX6ArXroOuJpoJbjuGFYOtaWsztBAbkhDoehsMNSPdVE
 ILRU04e+ADXQXxRbRpcInzZCqyCNfxnW9Kd//k2ghRsk/PzXmz81b5sCY
 e3YU9Gs/LQI1taD2JDnN6ClTjutUBAl3maGiIAoY8IL/XpU/3UHqaT/4x
 bfY+jHLXIOhSFgRJVkagVFFiSnrlNlYlJT49MIz0Um4AZ5cUJ8F/mwY/M w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="233150172"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="233150172"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:21:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="707910339"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga005.jf.intel.com with ESMTP; 25 Feb 2022 08:21:43 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:21:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:21:42 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:21:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LuxA98J/q9Xwt7ZbGeeKweAZ4YbjaxsWgEHiRM0vapTvzdMTyW2hSYKEUiUb0wqZG+eP/J9TrvegnBCBeFNelRG34UFRuH637vRtlmvwx4enNW7+yyDbGYiE1Q7lcUskaDdAkl9MpIA0mFiYAY1M3lAZ7Y2UIPrWsYQfIKHoZsW2a/syoVx1PBvKx0Wbw/eP/lKEqf1WWiKbFmqq1XHDdSPnzJ5J8ZwstMm1aq3WR7D90eIrcr3zbK2wIvHXWHquw/RillcNgSkZEWrY2sfXJuS5I0uAP2jvpD89DX2b1X1KDrAWaXFEh59dKU1LM7FwVJITD9tdhy/XEzvJLnEosA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jq+YzKLXnOI7i0StG/YquWPZaU8oFMbiNoz0x17/Aqs=;
 b=jdsJUibZRjczBXhUT4oq6rbuKpxD5PDLR/HDjbSDsWieivlFLAWOFGYPluvjBDOveQmu6n9VPLkyKKkWTJk6cNmNBtquGgEBpovQwjEqf1t9S8HcEheHP+KY7k0of5/rZbnBv7f5nL6iJ16RqXy3Qp7aLU53hcJHW55ZuI+pUBY+0cXg6nV/mhpBKhO0BbKn+VzKnqL1JQPWJKtvL7iIY7EMual9hzAvU6vWU5DukUpVaAshn9JTp9N6sZlP18IXBae36yvnGE18hnGEiZ+zY7QFoN3Zbrem/eiLHWoCRS2rX3jNmu0Esg15bORif0illGQWQHro1GyAPuH8yTlFIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BL1PR11MB6027.namprd11.prod.outlook.com (2603:10b6:208:392::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Fri, 25 Feb
 2022 16:21:40 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:21:39 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v2 04/11] ice: move
 clear_malvf call in ice_free_vfs
Thread-Index: AQHYI32KjA6BElVXAEmnUU3iO3QSAaykgHxg
Date: Fri, 25 Feb 2022 16:21:39 +0000
Message-ID: <SJ0PR11MB5629DE227C9D6FFCAC639BBAAB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220216213738.3826664-1-jacob.e.keller@intel.com>
 <20220216213738.3826664-5-jacob.e.keller@intel.com>
In-Reply-To: <20220216213738.3826664-5-jacob.e.keller@intel.com>
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
x-ms-office365-filtering-correlation-id: e5ba5071-47f3-4e3f-8a05-08d9f87ae6f9
x-ms-traffictypediagnostic: BL1PR11MB6027:EE_
x-microsoft-antispam-prvs: <BL1PR11MB60271AEE54149E59E2E20403AB3E9@BL1PR11MB6027.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3ScxnOyjPs3TvBsNwJ+Qlr9bugqtj7u4blbtMFFdyyTo2Ui0LDBwt0D2LoGDcUiq57OtHsIBWr+0dKeR6ljFfkCACHDcDniZllrvDuOrIEzaGoG0fKgQX09brmmd+6kFLotr+wf0Gg9rIUYHWSkEyhUR+7U04SHlDBfjO19wmR9gSojkTKGc8z3v5oqh9hyGvIfJMTLbEQo/jiRq9IfNgHpWCQII/LGnJUBiPn4d/ULnSgdEXJvvFcaXlYvPJUmlX/GQD/Z2jg/Oy3MoypKhxveR+Mqq554SNRuVTn8l/Xd5rRaI/PTA/juIBPy5vP0l0J1qmBPNt5Z+xVpNWsije4pR1su0aZ4sIrgN2LtMt3h0f6EldSXZKcthHf9wYLIMeUU0uMK1YEOUt3cDpdcB0ELHwCU5efMpNNSy7dBWwBfparMkdh/Sa8hIjEu6KiOKs4uhzPYoKF8ad/m91OlBNzVi3SqlnslMoltttBy1l7b1X+wPsDVvv2ABe7vjTRSDFwEGZDJ5GoD7+dQ1a/9mB7vz/uYTxaKwmF/8p0p3kZrdg0JpQ7RRI7JFOM8P1+1X+LUFPC1s5purKt7YjDbeV0izUva6HlPKa2ltquaGIzgwf73TXkJLC5fdNRFm/Mov/p7ApyjblyiNhjYPr9yo8tOssJtzweSqS0mIs/JHdthXApVv/LIJ1+gjZbY1PM30G3IlSHqciM2tKaODcW4Exw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(5660300002)(86362001)(9686003)(122000001)(82960400001)(38070700005)(71200400001)(66476007)(7696005)(6506007)(110136005)(316002)(33656002)(8676002)(8936002)(83380400001)(66946007)(55016003)(66556008)(76116006)(52536014)(186003)(66446008)(64756008)(26005)(2906002)(53546011)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TEnGgPvc88b5qZapk5KYAZko3p0LbTtNBBTtuP5wUBianEpHpHmEOQyUMZC1?=
 =?us-ascii?Q?eTzMotnmMkAw4p1SVJvfeMTpeBr2yo5WFPgNkqKy5l/cfolRM3ko4N4713kU?=
 =?us-ascii?Q?Mx7eafAoeO7lLnKBGnxY2nVG8X+FR9xiatGyjxzpVGibnoeHJR6bLZItlH7Z?=
 =?us-ascii?Q?RllQ/BjDkSYS2cutU2jxwqajMBFWjqhCRsXZdLjSTMD155ukky7nueZULf5c?=
 =?us-ascii?Q?gDflKVvolGSyw1XYX0LRteRUwdJWAnzDi47t/k3+xDdvNX5nJSv+AmybiJPJ?=
 =?us-ascii?Q?X9IDjTLZ/IYi00f2POrbk5hW/t1eABp+U2zEGPLMmJAr6fOHEzJSVj59fZxY?=
 =?us-ascii?Q?kaL70ugITKr2OZ0F/jYf/9LqlydOIoovRtN/YTcSYkxlvEyJzvjNh0OBBWV0?=
 =?us-ascii?Q?6VyMa6NUCpMQ1JjSh6KqlxPohHfrp8f7ZYfaIPIh7ex1vlSS+mFpLAdAzTr2?=
 =?us-ascii?Q?ABjUMJfFM3LPNkJM8rl2HUy/plP7oBAHl+udvKdeghxmAAyHRTlGYTjGCIiw?=
 =?us-ascii?Q?M4eKC7mO2rxOSmGz8eYmSXDHLLuebXDK/gvlJmlWkeUZPlnzyHfY+jTe4pr1?=
 =?us-ascii?Q?Q+ikceD8phoy5bnUEUEbPmGMU/ZDqhPsPR3r2zXvFhc6vMmNS6MGJBa2sm2R?=
 =?us-ascii?Q?WeHRcwKTyazzhRCNIe8EgJp0D5fLhzpW5/nOxEkHwJJH2IBKhHZ56swLuJ51?=
 =?us-ascii?Q?nZN3intvXZ81QHH0Zj/+76Q50nPfIFI3XkxVVlQNaxub4wf54cv6bNDMY7oj?=
 =?us-ascii?Q?PRHlusXbHzz4yQHT5jgAtILSwakHGQTqpcAIiKFGCBopAmkTqYNRKWWEShdz?=
 =?us-ascii?Q?pmbjBWFLVxkmeVt/PVfy3Azw4WXx+9e2iDfruxXYjtZ8C5ACkK24YpyRDAgp?=
 =?us-ascii?Q?R6x446IKGxDe3BGlTabN7VhlWlQC3nHyImbbPT0Fz7TCLij4E+d37NYVpnBA?=
 =?us-ascii?Q?bEd8ix6nx/Va+awrVd9jhmetmo1Zhoh7urYO32F6UGgKYDrGT8Al8F7+p7tZ?=
 =?us-ascii?Q?T3eUNgMRzIEtJyIR39naWzn7I/SILZQrjZj8dtGLj9q59U8eO/hqUltrm7kj?=
 =?us-ascii?Q?hQdDq9vWvnD+MpUgkl/uZLDsTVKgWonSG5mJTeNyZ2BRLm3SsEr+h1qa8eSB?=
 =?us-ascii?Q?C6fOoGaDXfj/tKJxdPVd18Fupoy3RrW+GhIhjj/SJ77iftMHTMp52C+HxEYF?=
 =?us-ascii?Q?GHwVpN+dB2+Qomza4K+r8vzQu7kO/NN1jfi8asLVdu3eF+hcAIdfGq0e7Bq2?=
 =?us-ascii?Q?F2UORHa0h44GTEzYVx6NFhpAxdTiNR9AH8wNrVII28emqFIwsJiM0xoRuJfC?=
 =?us-ascii?Q?ErQbeMj5wKI5K05rBjjaNHDjXXI3URKrFTJ0GUet8TyEz+gLNVP7yszdkDba?=
 =?us-ascii?Q?WaBfkilBg/0WVhyKB1XdBv/8PE/UcOX6mE6XbOl2T1frGyjhOIyY6r2MXVQL?=
 =?us-ascii?Q?AOHOU4n/eUhvHLyd4kbGlnKPIZ6ijU6cLtThBjEDLnoaNAsfjtRHL2NSC1bz?=
 =?us-ascii?Q?aJRDQnTRTbJbqqJzMXI4q7Li66p5uBYrksuPd3W6kEjA3YG9mPUq/gEvtwxj?=
 =?us-ascii?Q?DdtRmsOnp8nOCwKIYYoN6fjxIhLlW+5ux03tqDFAb3NVX/VPDyoGgTf7JUX4?=
 =?us-ascii?Q?xKvXLQ3k1l5idngLlZq8pGxJ8M7LaPYFAEsZIGkuxht+az798qJMXL4mqTSD?=
 =?us-ascii?Q?/xtQ2g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5ba5071-47f3-4e3f-8a05-08d9f87ae6f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:21:39.3666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vQRvw3B5CH7P+1QhZtllZQkvp3iSeKBJymfb+XoEkLjYFiESS/tBOt1SQDERRd3hFUKOyu/DjiSS0lpRgPnnYI4NkOh6TFaOBpZeOYHbwAI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6027
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v2 04/11] ice: move
 clear_malvf call in ice_free_vfs
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
> Sent: Wednesday, February 16, 2022 10:38 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH v2 04/11] ice: move clear_malvf
> call in ice_free_vfs
> 
> The ice_mbx_clear_malvf function is used to clear the indication and count of
> how many times a VF was detected as malicious. During ice_free_vfs, we use
> this function to ensure that all removed VFs are reset to a clean state.
> 
> The call currently is done at the end of ice_free_vfs() using a tmp value to
> iterate over all of the entries in the bitmap.
> 
> This separate iteration using tmp is problematic for a planned refactor of the
> VF array data structure. To avoid this, lets move the call slightly higher into
> the function inside the loop where we teardown all of the VFs. This avoids
> one use of the tmp value used for iteration.
> We'll fix the other user in a future change.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index 44037d569755..c469b32f665b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -536,6 +536,12 @@ void ice_free_vfs(struct ice_pf *pf)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
