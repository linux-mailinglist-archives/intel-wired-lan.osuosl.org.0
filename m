Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7178C7851BD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 09:37:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91CD74176D;
	Wed, 23 Aug 2023 07:37:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91CD74176D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692776255;
	bh=14sYB7mPzV+7ATPOUn69IX0ZvcTwLU7dehQmlbd+58w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1RQNNQoE44hcvRUVvkyeseL30u111c3wI9BQIqQcsBjVVu8T2MS038SIlJkouB4PY
	 AIjg3tA2AYrqxnFcbpTLtcQhW8R6/V2vWruiO/uf/YYav2HfzP6q3fimkU+m8ZXi+N
	 etntMqNj0exlxIGWjYRJq/LNPNfrVQI+7Ms1chDOqc8CGKicrFYijbLKMHMea7qQRr
	 VGcDf6lKnKmzUdUeon3lV143sJZitUK2BBJCuNaZje/7QUb1pPJJ75oREuh5qAAHBC
	 chWIb1VABLGOV/hdVOB8td3Ph32WzYQmU4aj5d6CrazPjnB3QuGR8xGHAdaAdSlOie
	 TN5K1P7J4jpAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PfgrjuVpi54H; Wed, 23 Aug 2023 07:37:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B308416E5;
	Wed, 23 Aug 2023 07:37:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B308416E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C52971BF321
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D69E4168D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D69E4168D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Taa5D163XhM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 07:37:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B413841762
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B413841762
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="405094287"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="405094287"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 00:37:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="686340946"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="686340946"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 23 Aug 2023 00:37:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 00:37:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 00:37:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 00:37:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nYdmBX1Ff8MHDZCD4PAPQIUUZrRg+qQMNbSncVcrioQCov9A1LP/lkl/5qirnc7io0e0fBnIJCoxs0R62YWZVkA6x1xcWXZ2rKW+BvcxMSzEXh4MdRj7O2mKR6fLoeEqylqMnZR7tVLthaHEX7fmRDatzrcxCMevQGwbkXy6Uu1tUvdBji71FG2vdTYgSrAx3BhlIaA8CmtaBwnTAnRxqJnXyT+0l0atulqURwoQ4UhdWuqezR/mwTDwfx4uVhqnXTjJs9YTxHMQf19CFjRd6xKd29Q3bt4l/pZYVNf0qMi0Psk7vfNNaRLv2JqMPOadjxry2k7mA6uZ1+EExTWD3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+OrjVRfpYNlcpJThebIrpUp1VDWSRFA8wPXMp1IZDtE=;
 b=IJuEhKknST3F4wtUXb1CREYYogKUWob97qdBjiVJAvoE1on5l/DLGYr0k2vPuSfuKTNrVS1t4mxkWJ5HjXuU7AXoIzws0VPgsCofKnFje297Vj+YdNblxxWvF+tmCZY+O83VTNy/CyoYD1r3V4n7CM9+zt8dkL18e62v3m198z9k7QImp2L63d8ayvXoLx6uJNiRJEgnZ2/Mcez02hH5KHPIMq+iorjjgKX7x1WpoqJpx5q77p2Z3xmGqF//bqTV2JnyC2/T/EFko6eDmkHS2Kzx55VXeKIkI/fGcNG6e+ChJU9uanUAXnB2QTx0FnoEu0ciOqqQUKvvNcrG2HbPbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by SJ0PR11MB4814.namprd11.prod.outlook.com (2603:10b6:a03:2d8::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Wed, 23 Aug
 2023 07:37:09 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::7a15:68a9:57ed:b62]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::7a15:68a9:57ed:b62%5]) with mapi id 15.20.6699.026; Wed, 23 Aug 2023
 07:37:09 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/5] ice: fix pin
 assignment for E810-T without SMA control
Thread-Index: AQHZ0J4f6d8l3q0FlUaFY5ZVmI8RmK/3gDkg
Date: Wed, 23 Aug 2023 07:37:09 +0000
Message-ID: <CO1PR11MB50283A0B7BC6318E5E8C2BE3A01CA@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20230817000058.2433236-1-jacob.e.keller@intel.com>
 <20230817000058.2433236-3-jacob.e.keller@intel.com>
In-Reply-To: <20230817000058.2433236-3-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|SJ0PR11MB4814:EE_
x-ms-office365-filtering-correlation-id: 40cdbfe5-5b8e-4e0e-24f9-08dba3abc224
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QqsVOEE9zpFqhTTMzt/60rMZN7XIdmm3MEy1KkptumMnAj0aiK01MO6Ff2T7XBNZ1DMoogORlAcWg1vxrcGkeiZf6zD4UUGIA3A/yIDvTzGowYmzMs87WKnogPANJrKQqXDRRAPSekIXpNFoiQ7xqlNGUDbBdqCtjXJk/JenVA08AjqVdDZ9yGjqc/DTYemM+Mwc8gVo/YpsXCvo6H57ayGBO4AZu8rB1uh6LZDbLO00mVmDGDqNxhD5DEUGsWUxQKukmqtZM+cFEg9KTxnBM/BDWRhfp+ctmV3yvZCigb6EnSVCV3vQ/zP1r76RVT2kVXyrJAdBnH4e2PV0dWVeNdg+pJ9DRiy7RX3zY3MuCiY2WWRYIdt/cbscfidi6gheWUWGGDRuEqBmQhdnUWnYaYALofX97/RFxcOff3NsFdEf+UvisaDo3gGWWg7WplMjSKKTzm2LZNOgze/s3Jzz7Msjq2R22TxR9xgZWwFh2087c+axL/7N08Z/hA+kudj+R3oTIaE8I3lOnKNsK2ehtYaQ/XUcf9xCqGRCFNv2L49r8jynD4rKcw4zuD2clXvp0dgb81ZISFPVqxpY6nPYNGIJvoDRHZdPSpxDPsOX9POa2441WGNC0H6c9GJO0Pbm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(376002)(346002)(366004)(39860400002)(186009)(1800799009)(451199024)(66556008)(66446008)(54906003)(66946007)(76116006)(9686003)(316002)(66476007)(64756008)(110136005)(8936002)(8676002)(107886003)(82960400001)(4326008)(41300700001)(122000001)(478600001)(71200400001)(55016003)(7696005)(6506007)(53546011)(38100700002)(2906002)(83380400001)(86362001)(38070700005)(52536014)(5660300002)(33656002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?23b+1N0eoOAv0528X9SlItzUY82h3hlWD7IVS8aG3NDghu6HTGwXLztog9/l?=
 =?us-ascii?Q?hUU9okFxLIVd4cWoZpvptS7WiybeZlZ75PGFNpcGIOk33j0EHkeJuAVUlN7H?=
 =?us-ascii?Q?7E9qTN3DkJa8VUCEAVAGeogm5Um8Lsl+YBexXghhONArYbvNqRdS+/QYGBhQ?=
 =?us-ascii?Q?4gls7mJgH0cRIGH5E/ReO7zZTrjjuN6RE4XH2xV9nOzR3eNnlBvUAwufcd7R?=
 =?us-ascii?Q?KXQA86hiXDtSPdWR2MjdotakQTJSkJgSif3OxENflYf4P1VNNmzds8j3nFGp?=
 =?us-ascii?Q?PFYJ3pzx97pk7thNiJ+O0bI/YNRCtlCVhcd5SSK8ef+LcEMYnFXm7KO6dxzF?=
 =?us-ascii?Q?gRngRBh60wBndbSlRqoK1Ax7RxVoJtt/2W7jazDw84gNBUNHMWjY+1P9KcF+?=
 =?us-ascii?Q?X2nXAiMHHGzbsjwbtG+avuZ/Cwru1hr2mS4HHQbMgYUg5uzNkXh3k2ItIBmI?=
 =?us-ascii?Q?jk8O875W0kPVktOv5gKvwnsh3eTxeTu/vzCAfinvHFaV75WSl7WZ2Ujq7GOm?=
 =?us-ascii?Q?AA2FO1A/wXTZa8QgkHujyrRMRVVd/tVoaYKLEmM5rtZZVtMBR2H3TyYB6jnH?=
 =?us-ascii?Q?65UqDgkcPSkQ2tDHkRZ6PYqMGzNAnf9oBcjB2Rx33z345UvjtyxyWH+lvn5j?=
 =?us-ascii?Q?ht8eCoTtUpXerhIJdNbjfoyClfGIrI7GI2u/7corwkFwgveA2sSGotdIW1Op?=
 =?us-ascii?Q?f2p/aIhv99Z7fWh9hvrtRFAMeNYO6LYf4LUkhBr58gJbXwhNm/Dng5MYLBEd?=
 =?us-ascii?Q?ZPqIkAsjrSCtKwe9tfcmGW45PBNlaSe5733ERVXCDpo1D37I8vKBtlJ7ALXR?=
 =?us-ascii?Q?3PetbwxdwGVRv6RI/xhtyMYM+mhVL9CPlUTBfSI2GTEtevymG2AWsPxtM8iv?=
 =?us-ascii?Q?bFdYodnuM3iNiLDgrtXkT1mYfMv1+QguVvGQMrF0Br1LRkkjRFnNJuXTIZqY?=
 =?us-ascii?Q?KXMZ2PqSTSdP4prAcDMZ/B5TAACABH0R6OLqcAjntwMtClozW3HI2qVf2QR6?=
 =?us-ascii?Q?Eh2Udxf2HJiHXJGwN+h6cADbA4cmALKczEqab7fHpZRY/GaRelBH1e0gJ+u1?=
 =?us-ascii?Q?8k90/NiYM4BVnf1soaSe0SOx87rErfhQgH2W8Mv2YTbk/9TFYEKHcTaATR+D?=
 =?us-ascii?Q?7ktrmHiK+U4PXERGifZR10j73tce5yISQll5UYHgg4zPManwJ5u9epQwGhe5?=
 =?us-ascii?Q?0ogSdpTgOWF2gqAYXVk8VYbftSNNqtxC5zYwL8x9clgI2bhIs7qrOGN29/1P?=
 =?us-ascii?Q?34wn2SdZV4Pfo9qxyJ119H1M9B2K+MNI9pT8SyQAhngV/LSx4UBuL1bCELvY?=
 =?us-ascii?Q?ZASlhlQdCPxuzDJ0wVuDARuYo5myD+QuJjT48lFhvILCj69PgYg7V0bGatzk?=
 =?us-ascii?Q?chksKUaYBjXKVY471/gu3Jog2gNf9Gq4TlTnV3701x/XRu2Cy0pw/HA7A3gW?=
 =?us-ascii?Q?cnTCOrPUQbIf4egGqfQH6Zj9xfIht+OX4antYeNPz+eYpIm+dpQl9XItmGH/?=
 =?us-ascii?Q?AfHslkRAFSac5NomHd5BicZIumxFH/tow8wa4P/Ko7kun8ToNQ3qbY2FPomj?=
 =?us-ascii?Q?+sa4SvgqJAwN5cdpvvNLNONV47esh8qLT6cJEwp9fnazK/1cJUhisNscz7jf?=
 =?us-ascii?Q?pg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40cdbfe5-5b8e-4e0e-24f9-08dba3abc224
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2023 07:37:09.4782 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4+nkfANzgFDP6TQRD7s4ybMH9cdUoeD619ExfRIqpeUdbQ2sEzU834PZ9oxykRBEUGhx8wYNPRSl3FTg0EIr4HKfe7YnDmQvwy72yvgh/8c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4814
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692776233; x=1724312233;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+OrjVRfpYNlcpJThebIrpUp1VDWSRFA8wPXMp1IZDtE=;
 b=FgEwQyG70mXlkqeN+I6iSuCDQYKGoqf5fnTfm9wOxIKdfOovZPl/OL2h
 7c+mDR1e5CzhAoNbOla/G2uIez7sWJNEteynwohkNTKnBiTtTb0lPKGPB
 O/iQ58aFhcYIIDIKUQYzbvVkTlN8Q3gx2hC+8NVXYzoMIrTxALe6dDIEe
 JsBFPZCsoKmk9JS5q+Y2OqnsGpYioOCEtR5eVYm32sYmfs+PvR2/hQ0Ph
 jB/Bes5uWH0F4od8whbr23kvWNa1SgnMhWz9UJ/qeaelCvgHgu4a6g2WH
 MpZsRE2+YmfvAvBrOOM75+v/clvwUctqNCHz/LkYmq06vYUKrawJzThf6
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FgEwQyG7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/5] ice: fix pin
 assignment for E810-T without SMA control
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Wednesday, August 16, 2023 5:01 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/5] ice: fix pin assignment for E810-T without SMA control
> 
> Since commit 43c4958a3ddb ("ice: Merge pin initialization of E810 and E810T
adapters"), the ice_ptp_setup_pins_e810() function has been used for both
E810 and E810-T devices. The new implementation only distinguishes between
whether the device has SMA control or not. It was assumed this is always
true for E810-T devices. In addition, it does not set the n_per_out value
appropriately when SMA control is enabled.
> 
> In some cases, the E810-T device may not have access to SMA control. In
that case, the E810-T device actually has access to fewer pins than a
standard E810 device.
>
> Fix the implementation to correctly assign the appropriate pin counts for
E810-T devices both with and without SMA control. The mentioned commit
already includes the appropriate macro values for these pin counts but they
were unused.
>
> Instead of assigning the default E810 values and then overwriting them,
handle the cases separately in order of E810-T with SMA, E810-T without
SMA, and then standard E810. This flow makes following the logic easier.
>
> Fixes: 43c4958a3ddb ("ice: Merge pin initialization of E810 and E810T adapters")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> New patch in v2.
>
> This is not sent as a fix to net because it is effectively meaningless
without the following change to conditionally enable or disable the
ICE_F_SMA_CTRL flag. Currently for E810-T devices the driver always enables
ICE_F_SMA_CTRL. On failure to setup SMA pins, the driver clears all pin
functionality. Thus, this change does in some sense fix the mentioned
commit, but is not sufficient to meaningfully change behavior on its own as
it depends on the change to only enable SMA control when the device has
access according to the netlist.
>
> drivers/net/ethernet/intel/ice/ice_ptp.c | 10 +++++++---
> 1 file changed, 7 insertions(+), 3 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel) 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
