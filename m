Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2C87B6008
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 06:47:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21BCF40FCC;
	Tue,  3 Oct 2023 04:47:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21BCF40FCC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696308442;
	bh=KzH2/D84POxlQkFQpq7odsumysq2PXNGSyPphSfEtDo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=og5wsqo01uH1O5BgT3AuCd/DPR+tA88zvDYfrk0lN238mweMyNmg9EBaUxRpec+AI
	 4VDpjXITCHFOcDMvUzIO5qgag2O6XR/1OPH1nHcqrxv7uBw3qxk2FGgiZr0FoavEAr
	 UQXKjunruQm8NsZR6WRxMS8KzQ7Vd2VLNW289opyER/Ukjvkjmb/v1A39inSGlwUCU
	 RA7VA0g44N/kN3OhBsXtTfMT2rscxUhLwayIptWnY2mLj7QF66VMcMAxBOPBmhEXrP
	 7appAOrq6JGWAl1LSx3fTEqwc0r6xYLu95sjBnPCVylHFxHlVDNUf8NaA+PTr+AICA
	 JQTiNliwrNKjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XjEfuEjO5eAX; Tue,  3 Oct 2023 04:47:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB6AD405E2;
	Tue,  3 Oct 2023 04:47:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB6AD405E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7CD8C1BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 04:47:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B53C610A2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 04:47:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B53C610A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VMSddaBP0LBD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 04:47:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB4BF6101E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 04:47:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB4BF6101E
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="386669051"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="386669051"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 21:47:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="700559697"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="700559697"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2023 21:47:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 21:47:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 2 Oct 2023 21:47:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 2 Oct 2023 21:47:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GTpju5cQTvdMcMdDdKodoNIvXZ7OTExeTX0VwYHTCCPkIyVCvJFwI7GKohUZs2cukpq0N35ZTxll54GzwqxzB146+nwN0rQ3O29YMIDXQdvh43JogQWTKGkxH46+REWlDJucJTG5M2oPIXAAg84tFM2IUCmf7OH4/Kd/uKsJSLOQ9wh8dQb2w2DJvG7MpNJToETJLYyBG2HKGf6FfJ8kzneAil3w+MwOjuxXc6Cwh3K7ASKvP/z/2pZZ6FVOT4kXHr1Y1fwstHsnOwTO7H56SwfXqQHPoqVzQybe+YH9COTtRF21K8itlH+WA30w157Ch1uk3aIEAy3ON06ORHnf5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WCYILIS2S0IDeY+R2fn4UzlvATxcxQCqQbDQOntawvQ=;
 b=PH5Po2/HbhSEzrx5hwcNk8W+FxPalZYvkxKzXkWNBm6V0YXNuw17+y4vTwfVUBkna6sb9hYt/6FzL2XpNLuytDIQwVr8/P9VxptMsaPGkcG0/pdhQCOKYWpqJXDv+k1WwD7zOHRdzmlItMePj0ryS+LOsEYNfhBLXHkZZLG1jsm1EgIW6kPySAdZkpTlPU8oXMaCE4Q/seohVQtUg4JwFh1Zeyq8qPbUY/G31VrEo0gw2QLFruTss0qHBur/I48ZyePZ2JqzPSk4VS4rgkP71QS4uZu40ra0GoPoukpKsgfaIQ4L4ZPhwT6nDuxSdsS/7Qt6Z7ycuqshBXLAwy5DIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CH3PR11MB8240.namprd11.prod.outlook.com (2603:10b6:610:139::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.33; Tue, 3 Oct
 2023 04:47:01 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8%7]) with mapi id 15.20.6838.024; Tue, 3 Oct 2023
 04:47:01 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: make
 ice_get_pf_c827_idx static
Thread-Index: AQHZ61IUM1iQ4r+mekiPONbMjVFE87A3kiWg
Date: Tue, 3 Oct 2023 04:47:00 +0000
Message-ID: <BL0PR11MB312218004219241211B2E09CBDC4A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230919233435.518620-1-jacob.e.keller@intel.com>
 <20230919233435.518620-4-jacob.e.keller@intel.com>
In-Reply-To: <20230919233435.518620-4-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CH3PR11MB8240:EE_
x-ms-office365-filtering-correlation-id: 64841ca4-40b6-43d4-b126-08dbc3cbc7f7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HuGtYUY2gAfPTzRmiLdqdrYppwgrQmLlgrkxvfosvhpH0jYp49OmD23CnnV6QhftRCI5bvjfHidmku4KT5QTMv+X2/dx9Vo8plL5NbY9jfU5SVHwxoIP2y6oV64NqVRVhYTa0UhCjD4dCFfSypRinpgiNssO07G5S+JoOZCu80jzVgJ13UTq70q5Zdcoayo/fq7l/FLAsNXzFQoinyCdf5mGk3HEu21oIfNB8GEH6BqzVzwyHTNxUzI6s7MscepIEEXHTnm8IJmfzghnK5DM6Rxw+GW3b0na2KgAluiOWLDjNims60g5R3vzYcdWTjWmt4RDiXU8zTjr1emdSmFr9n31uzKzXXcJtGzrIEMtdsINl7FVsyhVE33faQaAUPtge4bWKSqEd0L0FUL5iEQyQzkSZ0epK6GpZzbPqNgA1BeLWjIeEQgSkSzqI5hGE60weoWUWWgXvQkUhpI7XSEW/WGXMB0CCjBSagK610XGKHqTq6l5MPJhJnuyC0b1hoGlnZizZD7VIAVSNClm2JIFWmtvrEvTrd6zRYtikAnh+mXyP9L7thMCTwY8xmwWEz0glQBxruKyShkr3iwk2rr7Ra3Jx5N4NqHJ9Xa8QTmWGhU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(396003)(39860400002)(366004)(376002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(122000001)(82960400001)(38100700002)(38070700005)(33656002)(55016003)(86362001)(71200400001)(2906002)(4744005)(7696005)(6506007)(55236004)(53546011)(5660300002)(478600001)(52536014)(26005)(9686003)(107886003)(76116006)(54906003)(66946007)(64756008)(66446008)(66556008)(66476007)(110136005)(41300700001)(316002)(8676002)(8936002)(4326008)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/7atjJHKMXmoXDR8nfpq3o397Ae6XnqAO+64nSmfa7+JAZ/T3iQiw5SEFCks?=
 =?us-ascii?Q?Xyqx/E+fD1W2GVCrC8sB7DiLZ9gON3HFxiscb0hkhdsuWpbVKz5zCcpJ7OfB?=
 =?us-ascii?Q?Q06dFrt6U3Fg0vmuuhSwK6NLPIT30GUYniYP/TsJGRvDcAfL3XuBh1bxbrVc?=
 =?us-ascii?Q?sjwEJZbALDYVmOZlYSH6U+qE3EljMth1xHbSahtBoPhdVude9fYLJsCXbbnV?=
 =?us-ascii?Q?4UFP0/vGCd4SqIGAs9eMYWSSAbcMuVv+qgjTW+fMBpsoftaPikaNpSGlcVVq?=
 =?us-ascii?Q?mi+Kd+t7noAEZHsElI7MS3S5sUgPYSwy7LyiGBeBAmv5ebjZHfGlTXIHRJ5f?=
 =?us-ascii?Q?6wnpRQA5gz63mdzHdTwSPyU+cn1JAJvIOncw9Hpt25soczBgkplm7kr5Xymc?=
 =?us-ascii?Q?gJQYhaakTT9ShdDk1I7q8s0GGSvAUtT9cT4OP38gg27J+sd9zpGTdF2lZrsV?=
 =?us-ascii?Q?czVQjHtPS2K9rfUruYg8d5Ix8zxwDAabCU0sh7ctVRpmtwGVC+TL7hA44mbx?=
 =?us-ascii?Q?SQR0GReGTeADcpyag8n7AxgbzSVAZobZ0lhTo+3IrgaknJLYEiNVha+m+hAw?=
 =?us-ascii?Q?uhPCEf5YIkmJydUwW9227Zk7FFy6rRWiAdoPc5AhtvKijbUf7g2NNrqFk74V?=
 =?us-ascii?Q?d27jih3140sQuu1bL3cvFx8Xre2DL26A8s+geWI2eFVolwgu/kFWAwu1RtIC?=
 =?us-ascii?Q?2hJKXJ/0EclwiW6f9a/KAkV7qCP/U76s11sj2Bk4RSaIi3uYwtwMgcjO07Li?=
 =?us-ascii?Q?Cuyyl+f+Iy3YeqVzuLSl9bIwCXIKytIceMVwcv7YQkvbZWuRJAbEWetXwRV9?=
 =?us-ascii?Q?w8znquo737qPr1JFQ8hoe2jukJgkbvf0rT+AbbImv4ur6CG0FSwhoviembUK?=
 =?us-ascii?Q?OagWzzDiVA/dhCm8Qi+fguT5kFz9ywzVe/xeGDcyFajhg745xF1bLaMRHj08?=
 =?us-ascii?Q?GHzTetot6V6etqKcdKKR2Pyh95t/NxLG76MruLoRYXz24qc8LXTgGD8LM9U6?=
 =?us-ascii?Q?bnENELjdc/AmTQqGL45rze0krr3DSMJ5RJXf2Qzlk/k0sHXYFITFMX9B/GvM?=
 =?us-ascii?Q?0FezQJ+BOHvi0LirgGCvPmHTw5HWED4vVFoMCpriQuZ2ZmHHXNoSvAxbqO5a?=
 =?us-ascii?Q?rBgJT+S9O4CJE0sBEZ/oBqk94mdK1egnvDMt/SN+Xts6dohBS1PQN8FQbzIP?=
 =?us-ascii?Q?KMz2/jOE0lpPafiVfo3AFHS1cvyoQmcKzHlKXtSgDXJ1H6xG+dKK+pFfiBWz?=
 =?us-ascii?Q?dhnV+RRi1h1PGiwcbLCNSv1Z8PbyhEphAnIGuoskvt7WY8q4sroyp7D0Menq?=
 =?us-ascii?Q?YmLiBKk0jk3rSWJwq87ZQEoyRNJ9+F4qAn32PyE7ldfBygZjN+J1gak1xc3w?=
 =?us-ascii?Q?OdZYjkaXkA8zhVHgVVkCnOqSLSD//Peujca+iQkVqEBdVJlF91X8CRbIzz4n?=
 =?us-ascii?Q?P2D/wULys0ywp3WpRKIfYVFSdMdrkXGKpnXVP2uegOJ9C+6GvIFNNPT36D4x?=
 =?us-ascii?Q?PVJ8jgYnZO26il2j4Qn0syr4kxWBJtIg4fenaioZKuflbzUAmymwZNrvwTjn?=
 =?us-ascii?Q?60a61Osdc8gNXH2v5kd2/hLT7FAjIfiYovMTs6cbJk2vZ+dB9UV2AjRGGYfg?=
 =?us-ascii?Q?Pw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64841ca4-40b6-43d4-b126-08dbc3cbc7f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2023 04:47:00.3663 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KYPBBjVMmrpjkv21oSyKt/8VMsVUiqm6o42YS0F+hVkCHAY2ByM90N4paMhQAksJgx8ftWUn+nw+wzs0Qpc7+0lZcegDlMR64DjqSLlOyFq9W7yafs9ZaiUNECcKp/y4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8240
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696308432; x=1727844432;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vTKLOA+1dtN82Ga6RbYTb6gaTBptSE8MKnrvYwtxFg0=;
 b=K/DxXV3KTL7az1MagZKq+HkhBSxJ5cj6Q/ZCGrvxhaWhVq0T2ABLXGkd
 GdrYzMqAjFMWhtldIRgDg3CWi1NdS5N1bHudj3pXLOEslm2ZLJpQwPU+I
 3TGNZn4INwlm2C5d080e82WlzNuYUiDM4cQXKYMhrvBHLrA7KoyNCu7Tp
 TnObd1V2O2SdbUXaIe4HODLZ2BqQZEXTPZW2mfJu9gPC7ltrn6mG1/Wum
 WnhL33gYeSMDvjPW9fRp+0FSa+OM0ZOAY2T1oZ2HOJAbUt7r/I1pQOcyM
 SmxDmL4IlniB24YjQaZOBET/ivVxIa6rde3RMrCDt712ecLHtsH89bH4Z
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K/DxXV3K
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: make
 ice_get_pf_c827_idx static
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Wednesday, September 20, 2023 5:05 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: make ice_get_pf_c827_idx static
>
> The ice_get_pf_c827_idx function is only called inside of ice_ptp_hw.c, so
> there is no reason to export it. Mark it static and remove the declaration
> from ice_ptp_hw.h
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 2 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 1 -
>  2 files changed, 1 insertion(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
