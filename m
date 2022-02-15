Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8D34B623B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Feb 2022 05:47:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 02BA240412;
	Tue, 15 Feb 2022 04:47:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nCHpsR5WU7Wr; Tue, 15 Feb 2022 04:47:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9651D40377;
	Tue, 15 Feb 2022 04:47:13 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1728E1BF2B1
 for <intel-wired-lan@osuosl.org>; Tue, 15 Feb 2022 04:47:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0DE2D60E37
 for <intel-wired-lan@osuosl.org>; Tue, 15 Feb 2022 04:47:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6d1aOZHm6-Vs for <intel-wired-lan@osuosl.org>;
 Tue, 15 Feb 2022 04:47:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6DC9660AB2
 for <intel-wired-lan@osuosl.org>; Tue, 15 Feb 2022 04:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644900428; x=1676436428;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DKY+2WAU6ligV3yrIc3X1j8sH9wehSFV/7gHmFXlKyQ=;
 b=bw1cCpscu70Kj8pz4Is8vNn82U2iRAVl2j+VFDMafp7g5JiQtHymP6q4
 NkwbTUTaleV0Krck1kw9F2XDp6/NopwPhtHH7F0ZVdH7S6jsqeuIei8Di
 fVTKf9J1g6cNNcB1tQJy/dpk10B38RpuLw4H7INVdIxJqA7gk2Seg7zVy
 YHhYZyPnpn54vBYmz0varmVcdz3OeunOxlwMFdfxOERnJW+PNudgbeU7h
 vFsOWVQtbeJacKQkrP1gwfkt88PZFu92K5DS5HWYusmdNGjhO3J+za3eX
 fFqOpYmfacC+P6qCRfaF6SQJfnMf9wxQF7hICOPSgvJJJjR1jT3GWBPkU A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="249082767"
X-IronPort-AV: E=Sophos;i="5.88,369,1635231600"; d="scan'208";a="249082767"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 20:47:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,369,1635231600"; d="scan'208";a="544090064"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 14 Feb 2022 20:47:07 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 14 Feb 2022 20:47:07 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 14 Feb 2022 20:47:07 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 14 Feb 2022 20:47:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dPsJIqAc6sa3BHqJlWgBrw8kP0igA/ytkXhwClFuoetaWowA3Bqm8UmeaCQQMk3gQnKJoNA5blGtbi0hZLd6yJhIJ2nacbuoakAxVtx7EWXZ6uAf8JEKVH/S1H/mdNILCFyS0td1IKraE6CmciY6PRocbBEErigLTuqfS+AnDuWctxJaE8P/YWGW+n8lq5xAL9iU6QJpBCM6RGwh7HJQDYRr92nMEcorFNw8YK3VPne3wyhxD6iSmxC69/oGIWRlbz0agKKV2B2AW2itOCqTZLAMpH4iGZY8VE8Ni676QRjvK+2/l6KrktLPj3Cmsvgpe6/6ZxFB+sFHhnNWQh0WcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DKY+2WAU6ligV3yrIc3X1j8sH9wehSFV/7gHmFXlKyQ=;
 b=UauPWh/Z1XGFc01X9+P0t+EWCWoMqUROFHcEsCT7k7o49kU4pJ1NKjdbOH9A498J6w1/tayVaoFUBSqgJ0+0kHdaeQkTzRvzSyYPwfIMRGU+u1R9SOfXvRYRwyKPFa0cr8ei88dzzecUVnSo/LRqvx4Fs8WTQn0F269TPD/AipFnV9obNvGWM6jz63gJ+c7iBDeQbgDh5xwwQdrhF4gWHyM/Ahy/tDlDucIUa+hqf6VrImYzliVATtWqnLDlDNhNznDdJsW8vW4rCv22C1YDEIDP87DgVMpiCUqlvpdlefHmtc+I1Zmh5ROjAb6VWJrl6/MZ7lbMg7+Ll9bkuzWu9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by CY4PR11MB1573.namprd11.prod.outlook.com (2603:10b6:910:c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Tue, 15 Feb
 2022 04:47:05 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a%4]) with mapi id 15.20.4975.019; Tue, 15 Feb 2022
 04:47:05 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix setting l4 port flag when
 adding filter
Thread-Index: AQHYAG1n8pspUl9Vy0a0tNCCzehAoqyUTTmQ
Date: Tue, 15 Feb 2022 04:47:05 +0000
Message-ID: <MW3PR11MB4554C559AD81666797AF86B99C349@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220103064121.2366-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20220103064121.2366-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d1fe4e56-b52a-43d2-ffe1-08d9f03e377f
x-ms-traffictypediagnostic: CY4PR11MB1573:EE_
x-microsoft-antispam-prvs: <CY4PR11MB1573EA76A5963ABADCEBBAF19C349@CY4PR11MB1573.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h/lFqSMprDmjmT3I9PXbyoixAqKLOLQO9lp4vngXThnaaxdTCTpvLmcC0PFFcEbCfaFwc1ZxcBApQUyqhELNLRNr9iegnFfAFTyTISzS3xOhfVbsJ0sejPDkA4YBZab3vTvsPEEm7+CkJOT3smicj1VzUbcSPiaq2ul5LNBMfaXeCTpDgGZYf3UUXAuVkayqnOxFXthtjUUGANRiSOnEIJwpoMCiRCEChW10DFXcFvsOsbzHo38ETP/DqsZpVdwtoN012MIvU+CUZTQkLM3SEsgMDUIiIP//OopOy5eOmweW4IVfXtqLd3OGSpSiC8UXVdYEtlmmKdl9PNC6I5v2ChecLTxvhXlsLGmMCNT5k5GsaRzkW7TrRqCCOODE6RH8LD2r9synNQ09KuOMOnZ3ZlA2oMzMr9EFeP7/YHfFmdKxR/EMup5MCU1+d1m0u3IfO5HzChCCzW3QWZIg6jtBR6bc23KsC1DY9xMGNTE6jN2qzfH+d38NrAybBBF8TTm16XKCP48Amvx5RQotgherVhYpWTQr9DMyv3OKPq7X+558qVw5n+88jWrf1U/YC0BW4CpmUWUHsO8IPVd2pWFcke6g0vSP7srbYnJ2NjZueSaYg+Y+x7aR76rx1wUuNUEN5eE/xVOS84HeA7U8iaJ9DtpVRLr+G9TFSnAQswDsSeo0fk2jYbW21M2JOMTAlHHwHsNljX2BK9PjYvIgoKkaOg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(33656002)(8936002)(8676002)(26005)(76116006)(86362001)(66556008)(7696005)(9686003)(2906002)(64756008)(55016003)(82960400001)(122000001)(186003)(66946007)(66476007)(6506007)(38070700005)(66446008)(316002)(83380400001)(110136005)(5660300002)(508600001)(4744005)(52536014)(71200400001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?O9QAHqqul7KKQQHFGtr8cAMCOlUAq9Zo2ME+PRorGiXwq+/DI8ip3L+cLQu6?=
 =?us-ascii?Q?C90gRboGS5Uw8a+QoT2rU6JUbFEHvILud29ofyv809FcbAaLxkkjGa5RP4xo?=
 =?us-ascii?Q?g1noNoeQSQHbi1VIRvl43vXy/UAMWjAIWRFheH9uDRBwtyLdxkHzlgy1GL9n?=
 =?us-ascii?Q?YME8++m3Ij/nAO39+GWAkrYgXmaQ689kGdcDeTshfxuw4NHjZha6AqQvVfu/?=
 =?us-ascii?Q?i4ryCxQ3stnETT+Kwqt3eeI72Fht6cPwQZAyLk6YEljAwzJqV5tjWoDyHaHv?=
 =?us-ascii?Q?Qhl+KNnmBIgGYZDIcnaO3+PXsSFc28KhKSmp9NOej9GzdHG9xvHC2uNK2UNW?=
 =?us-ascii?Q?8VzsLKYNoMDoPnOb5yHbB+N7Essss/sxnQJKO/MoYbsI6qdsnUOdsSD7hxFc?=
 =?us-ascii?Q?fI8y9mlT6nFMpSrStzn+cd+tCzhEvjqdS7Xjh1Ix2taJTqyyRpjYBj/Ic8y/?=
 =?us-ascii?Q?qrENWrth8FNYb51OLeulftPPbqXc5h1c6ZXEbfDN2lDVoVPsBQWOXIAAfOVr?=
 =?us-ascii?Q?y83PhXVucaZlU5EAreqAUC+wiN/9J7KVRyFYfbGiTHfIeRF3BMFeu8GF2KwY?=
 =?us-ascii?Q?qhVHkedecDAdKGLc5a0+W5U+rDESIrI7Fptdmnm3xyUvO8f+q0PDkcE6/QtS?=
 =?us-ascii?Q?hRzalOYadkwGMr5FGerN5PV+8crQeAzz4uszZiqMIjeFUUqTKuWIoIz6DMke?=
 =?us-ascii?Q?nCTOBVwzbmE3bxaBhPJEaF9gtzfPbJXl6tJ3l+ZNCeFbzfxCu0NDTYnKiQ8z?=
 =?us-ascii?Q?rQfy4RwvtVbAIzF/S9R8hpvGNtWnbZ4DCy1D3ncfUFGurS9nZHWMcsM14UFP?=
 =?us-ascii?Q?CALO3QKYcNuK/Nr8h86+dmecZ1WAI6ipxlPtyJGtYl693M8Jmd9SWhPniMPr?=
 =?us-ascii?Q?+kTbWHUlNRcqVZFwwVzLmA12BsO8r+MjRIt6KTryXHuCQLoMMfE5fr3hJ+WW?=
 =?us-ascii?Q?gPs7jScZBwpnc5MYpzb7heaxkG4OXMpsGCKvhnRAbrzMMFHKZqEi7E6eBAte?=
 =?us-ascii?Q?03jsB9OdiSSaH6ejzoT679tFg+kNjVIZ28uVwldJ3hn+1bJrOqp9BzKpGDlg?=
 =?us-ascii?Q?RBJ7zDBZ61/WFvSu1gPHHxdHdvRTJrdRJaz+xeM2JHWTvRW4O9ylUP51r6xX?=
 =?us-ascii?Q?GxoT3JvNrabG3sgF+DrRumGHmuik0MjEvFt0fVWxRS4kFl8NPbiy+TvBhlY4?=
 =?us-ascii?Q?QwOXh6XNvDGEX6prMwKAEmm0/J1kgf96YTbXyoDh7w2CZArHoR9Im0w4M9hj?=
 =?us-ascii?Q?gtL4bg5+cG6clAuDyX3eMba4cVdfgqy4snPHjg236/Vv8K5rQJc8NFvYI0R0?=
 =?us-ascii?Q?MmLHux3n7OROXht2VMkeGsvlzoryLUaZyU3BE1CMuenHNgxzN334WbGsojTJ?=
 =?us-ascii?Q?ncA1McjOuHBPs3EFUL+8DiPrWGKZD81+bPCXP5YkzjWFa0YQnJNRVLOvPrP7?=
 =?us-ascii?Q?LlRHcIK/sn/7rueb8l9KMGezSKJXAT/fYB6IztytfbYm3WaoEFcyPGgY1ow0?=
 =?us-ascii?Q?5nsXXl7ZB0xPLB0mQQe9E8PDDGABnuLeR5QjQ68PyWBVTBr6JHJnoFFF1NzJ?=
 =?us-ascii?Q?+zXP8+NuFWZo9QD6kDD8Y8UHmsdszH2xNtQp2EYtaT1zC+2xA1olAbt4q6Xu?=
 =?us-ascii?Q?BHpY+ZxvzevJsMyY+TGfQetwvf63Yske/IA+uVoDrYMVrQgbGayxre8s5MCX?=
 =?us-ascii?Q?Ecz7xg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1fe4e56-b52a-43d2-ffe1-08d9f03e377f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2022 04:47:05.8160 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SL9gQm52CQHcg3V5RpqNoq66X2TdUojUVvtADtkwuZyNpkN3fUp2MKpUJdUOAAxLJk9wTxzOlXzN2LxRiPJpmnVcNHiWAhM8vCyQ0b8SpYw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1573
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix setting l4 port flag
 when adding filter
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Michal Swiatkowski
>Sent: Monday, January 3, 2022 12:11 PM
>To: intel-wired-lan@osuosl.org
>Subject: [Intel-wired-lan] [PATCH net] ice: fix setting l4 port flag when adding
>filter
>
>Accidentally filter flag for none encapsulated l4 port filed is always set. Even if
>user wants to add encapsulated l4 port field.
>
>Remove this unnecessary flag setting.
>
>Fixes: 9e300987d4a81 ("ice: VXLAN and Geneve TC support")
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_tc_lib.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
