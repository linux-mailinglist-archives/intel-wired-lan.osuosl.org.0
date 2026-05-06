Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNJ0M7aL+2mWcQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 20:43:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 287EB4DF790
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 20:43:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D28C780D8F;
	Wed,  6 May 2026 18:43:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8kSPsPnkIfnH; Wed,  6 May 2026 18:43:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 599EE80D8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778092980;
	bh=BA3R/hYl91y8dpC3MHOnUa8icuBrPNmILe3Zudd7ziM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PmR2IdHIis4DF8UHfhLiytwjtKs5APwCs5cYriRamaC5nZI5JLMSPAwPbPS2Zw5fi
	 /Bz/1xQC8kJm0/YcbTLlyDVB4cXksHIiddzvB+V84L8It9pHg7ade9CsMXQHJAduW5
	 yQxEhnud21cyJW60B4wR7Ptivf59QLKl2eKipda9ciJ/WjabKDYtgzo3H9v3zilDPj
	 HwySOMuzH85tG6RsQ0cv0HJ35X95WT6s0ojWnehzKq9YqMAV2ebKICcvM9YpB8kiSc
	 qXlP3e3XAb5gxDpXJj1QfcBvSjYioybTRsWCUJIGgR+XiqsJkAv9Q1MBwdMtRc2SBL
	 NnZMroemAli+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 599EE80D8B;
	Wed,  6 May 2026 18:43:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 61354317
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 18:42:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5325760EEE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 18:42:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1PLCuX-JW01P for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 18:42:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A695260ED8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A695260ED8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A695260ED8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 18:42:57 +0000 (UTC)
X-CSE-ConnectionGUID: 2XASlghjTfy0TBd3AnNLLA==
X-CSE-MsgGUID: Y/+sLSBrSpOoluZnIHmpaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="96463656"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="96463656"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 11:42:56 -0700
X-CSE-ConnectionGUID: OMOmpqg7TUSD4294+0QMRQ==
X-CSE-MsgGUID: JuWPVtRtTt+Lf5VMhCcATw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="235372799"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 11:42:56 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 11:42:55 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 11:42:55 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 11:42:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OJhnQsNGsVSfDYSRDeKyklHBdF3ADY8L3RzKtn8PPRGktZvZ41CAIAb6XF0VBObMg4XF1yp/tjKcuwM3j44fYWq+xo+7VLq52TfNrpsMi0J0QggM8fRbYhPovsqdiwYQDcw+sdbA5FQqjAgZ0bqnJMzGxOxtB6oOQ+UVpoIRmn6V0gI/OpxLh4BqZIE4LipstAgmuX3Hzy05RlRFY4ouXp5wuGtWhSsSSQxM/aGQZ+I3VIgCN7CF04j+ayB4q8qnPeMlpo5zm9GEAiTpRk7m0pyToNH+59J6g1hS13keYtOUJLbblzEX6bqy29PgrsAK76/KbaMN2PeSb0m9c6GXJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BA3R/hYl91y8dpC3MHOnUa8icuBrPNmILe3Zudd7ziM=;
 b=lIhXrbHwxfsHd24RXTJCDHzKu0d1bFoVZRCKyQTHlxoNQOruboo9Gm9+sdCkeyOH/hpvER+HQhtJnlwO7RynJIWeVO2mO1HHQg6TMmpISopAllRbTqrvX4Nbafb+Q+UkrcQO/hVDsT7NeyxjaA7Vt6qpILN89DKZOlE5hPmOorZp9M7SD6M9cXU6by+xM6sJ7YgeFvjOGLjOrmEH+0qtr4s3NqZtnuPeP3l7SXuanUUkGgXL7xpPBJJaRLlCEqlUyRG59rgvOVZkhDiZg6lekeEU6MI9l9isbOMq2DGVRcdYSUcaVCAnFPlqkOeDkKL63fEUglc+vpIBVnXBFp8b5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by MN2PR11MB4677.namprd11.prod.outlook.com (2603:10b6:208:24e::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Wed, 6 May
 2026 18:42:47 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%5]) with mapi id 15.20.9870.023; Wed, 6 May 2026
 18:42:47 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Penigalapati, Sandeep"
 <sandeep.penigalapati@intel.com>, "S, Ananth" <ananth.s@intel.com>,
 "alexander.duyck@gmail.com" <alexander.duyck@gmail.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 09/10] ice: re-introduce
 ice_dealloc_flow_entry() helper
Thread-Index: AQHcyCD5/+p+UUN3zEmgvkOsTToDTrYBf96g
Date: Wed, 6 May 2026 18:42:47 +0000
Message-ID: <LV1PR11MB87904ACDD55FF9CD87603B85903F2@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260409120003.2719-1-marcin.szycik@linux.intel.com>
 <20260409120003.2719-10-marcin.szycik@linux.intel.com>
In-Reply-To: <20260409120003.2719-10-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|MN2PR11MB4677:EE_
x-ms-office365-filtering-correlation-id: fb2fbdc5-e476-433a-cfa2-08deab9f44e0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: UHqeD9Xa8tw1HuvzBFJfdJOGfHIv0C3kt6UcHh/xVhTFGKgG/bXVT/zu5Pg+Cb7wCok+KnRNiHeYt+hCtd29oOlQTlWAglONrp54dzxV9FqYvVqWyF5+Tac2XapaY7j4gL2pYagWUCPwQ0uBBGDPajKwWOK0zuVDHWC+j5JfAQTRt3PCUMqofUOcV8n8jE8n34eFK1O8+nvjoSL8DDEjy2TqYGnzfGw4KYmujubDp3V6gyd3o7JIn/zkoU8jyc1p0bTCgFZ9eThFRd3DZ081cofRm5SMsTS7JDliAxLE8ysKcZuICBQVCqAsF+nCoINgQFaMvB3/Hc7CdYk6piTxq3y4B7AbyMVJCri3BivPDxDkKhdoUhlMJiWWGfjZO6ut62vaVPDwyGuuEmggHn4tbSftlZpVnL6lvf0JHIWYi/xcQWrUG3aiBVgeFWx/WnZEuRW2LRgAzBrD4V6wu/XBxWSg2riAg2uAAp1/CdsO5bGcGtCkJKvdRnO3v+09ZCKoljeiAJgck1PrvwIXtkRy57aji+KfOztuu8vAFe0muqXczsBtkN7J1t3ni1gSYHi2qNnd+MTCrAqRp5dQOAaylKoTR6hBrr0gym+fK5bgwWpH4rW/rNUZSM8P2UEyXAY4RHyKgdpzhX52tt/7Klw6vbGbxuxHKgl9iLBr3rDX4l329/N72LK4CnUfZYoeMz/nRU3BaRy2/R7bLOdRtN1hCsCcz4+gVH828D2S8XJaxfuJcnrxPcRYo+jACp995RyN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lolvNUeUtpLCjXJULnEIRhqMQk4t4UaSu+dqaHOMEdD/xXq8HfUZuNNLGo4o?=
 =?us-ascii?Q?BCyGDlNYKSlv443KVbHWoiCuhGlXne/WK0uEutZhM+kI1cQt2Bx877fvXVFM?=
 =?us-ascii?Q?2bKdihwgUDefOGjj464ZKI7ES2BY264FJVLKK87OmBkVjZk9EKpEsVsfG9Ld?=
 =?us-ascii?Q?CtGV7S697usgylLeH7G0fLdONcuNeoJPTP7J1bkh/c908z1jDw0aKGXkLZQi?=
 =?us-ascii?Q?zpBVov6TCWQK8UxqWx60mQlGVwVOYmggizXJoCMMjLrZ0cAjvUoTF+AyI9J9?=
 =?us-ascii?Q?Ngq2X+bhABJe52SVdNxL9OCgfaTOjF8m+vOriplZa5zdiT0u/argvCA2zimE?=
 =?us-ascii?Q?YrM2J9/Za+66nYRPSoIj3wGSknIykNsnoPJY0l2Gfie6O5f7CYisWpruURTT?=
 =?us-ascii?Q?WObBKeAgTWzS/RWozDc1Om5DrHa66jdCMGsGQ6vj8dBJiDiq5mFPvmh4SJXV?=
 =?us-ascii?Q?TU3m/GF3mjL2W9cFMaRGk4lW6NuX3dsIjtNl6LVwwP2Z3uYdYYHsWFGgnids?=
 =?us-ascii?Q?8z/nFESyWvcqS9NuPvHs+qCuTX6hhJyPO7MPURNTbla9EcWpGNM4nEcQ7hru?=
 =?us-ascii?Q?scU/4VNQzn+HWDGhkNgjDcaDckCBsnx1frk0SOsqkbdpujf4SNMbxkzo+7Io?=
 =?us-ascii?Q?UQWBl6+1T/fyclCtB1D37uVUAHbyFcxlcvvIhCPu+L3EBcJbv2WJZdpBcrxA?=
 =?us-ascii?Q?0mWm92wOnPVz1VFU3ft+GDfz2ksqZoeVnsafwQ1cH3+36HqpwsjtaTKZnkf0?=
 =?us-ascii?Q?NFqMziUkB1nGXPrPyjfrJlgg0YZqh8yviMAFokow17DUkCLwzXX9A1Hebfr8?=
 =?us-ascii?Q?Dz/JoGlTrEdhfkZNLT+bvvXSxNf0id7RlnTAogUvzUtcp4F+uIYdFmE6olRZ?=
 =?us-ascii?Q?clUfESXwD3/hB2gbhRdhw74Kr5R9gSjOIzayT+fJPkDKqzP5T9RyB+TmCLS/?=
 =?us-ascii?Q?0bBMMjMnDLtRJtfyuBLbyhKwQ9mC1dQJwD8fWS3zF4w9M8VtfLby5dWV0Qs7?=
 =?us-ascii?Q?yLzIs2Yw2lBvDCDDb1qYLeIY6g+rD5qYZFQxSulkI5EYl+UeOX31/sDknWOg?=
 =?us-ascii?Q?ExRUqd2tacKbBpYHeX8msJTPxUa73OKKv0f/D7C+avVNMlL7i1APpigxrCA2?=
 =?us-ascii?Q?6Z6fsktZNiZJFtxhWQQjKoHOOCz+Llj1DFi2sEZ60jDus4/8MT1RzXX7T30S?=
 =?us-ascii?Q?j0Xplu3oYceAIKsVq0iLRRTe3anYVA4liOi5+XNEtOx0FnJjjKRlfEBDQuVm?=
 =?us-ascii?Q?z1HWbBz/AWa5FdbOE2HMyY6SX6DoPAhtV412/T1mbD2WlJ5/FElGlczDM2qp?=
 =?us-ascii?Q?vbFGU/oG4GMVM6wxCrnE1vmIs3SEOn/PeBtrEtAVtjI+efPgwT1RuAFuqb7r?=
 =?us-ascii?Q?59UidRcHWoqnsGXs0tpkdSMJ4aXIn7KJrdeluAUCpYjQ3Ffxw29LJmP7yzJC?=
 =?us-ascii?Q?VIpceYeOpohFcF4htXeleLdtcsD++sKzZT1D62r0TTGYaOfUbH/6BXpxUAKv?=
 =?us-ascii?Q?Ye8Uqk35rbD03RwAC1EnaNqNVTgKtY2/QuVS1DBl168JTIGiWeBaD4V4t+En?=
 =?us-ascii?Q?/Jiw8nivCFAYkvppdCRHB9bzkeTPd3a9DFAwIxAcTNa2iWv882MWIyFXIEGN?=
 =?us-ascii?Q?sR/quck10IOkNMqJMucgeFDAa0AkOflArVYCEoEI6+vjeERq09PPhiSiER7r?=
 =?us-ascii?Q?H71pYGRp71XHExg8CKxfCfU0Ol81Eh4AlODFVf/6+EAb1gZdQ3UHVlK2QukJ?=
 =?us-ascii?Q?+D3pm0gsUQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: E4p11HXMQsonUkTyo1GrHzZ7Y/9FHEMgLufa3tyomqHqF92qRl3zL7svNUv7mCgjA15n7vB6cp8y331cm0dfSyTfHXwKIAp/5AvO1Afk1TClhN9CNz8tBRNjvPeyu3Nb82NjlCep4+U7yGYisg/ftYoEN0B2m5Nxl+lGUPYzn2zDqOg6QABqk54KhyspahIFjbjEWQhkJzMAFIjmTVHRMuP1qDVf7NQ6bDine+AFSaopBA4/1U21aM7k0x3+YbHQKxSSjxbbk3zOIpfdJCIYuuThbQ6v0RQq87H0cdFr1oBthzOg6B1Ejkeju3jbKuhcrrNib5jaiJSrm534/0uaxw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb2fbdc5-e476-433a-cfa2-08deab9f44e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2026 18:42:47.6018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mOj11G2Qnro1LA+fYcfBLWSYj7Thw+saYg6+c9qDfDfkeAb6ELkWWwzxSGHCro5uOto+WHqVmgvVzSoVLLl+BQ/lpsm/cHAWD/Inn3ct8uM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4677
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778092978; x=1809628978;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cktsJxLK+EL6OhFt082u53yzbIew4EntzQalH/A/kHE=;
 b=Qsk+jlBsKzv+VJfXkUNqMNli/sQqDtRn0EfiThc8YpvZacLlnfOnRXCk
 cp1SltXi4zsjeljxOjHRfoEa10EXePOR8d/ZsU6xrc5jmv8B4FUb/sFLg
 YEfTUgnAlZ4JWOUn4NuCUZK2ru0lxsD1P4MdTkCsto2hXlqccujnGuLUx
 VCGCnsyjgHKzWy79j4mHSKMG76OaILIIDnd8dfnFyNPtkPeHKWvIwUmM8
 aFwXcmBKvxUED3c+74E4lkTYeSkoc/1u2lq5H5xnme5Rf8OHdWymkJsyf
 2rJ/trsuFN2icKeyKCq7jMU2+iGcVi69mRyqO1Vbz+EfWZGNFhiU6/GQI
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qsk+jlBs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 09/10] ice: re-introduce
 ice_dealloc_flow_entry() helper
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 287EB4DF790
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [9.89 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim,osuosl.org:email];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:sandeep.penigalapati@intel.com,m:ananth.s@intel.com,m:alexander.duyck@gmail.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:alexanderduyck@gmail.com,s:lists@lfdr.de];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.334];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	R_SPF_ALLOW(0.00)[+mx:c];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[LV1PR11MB8790.namprd11.prod.outlook.com:mid,osuosl.org:dkim,osuosl.org:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email]
X-Spam: Yes

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
arcin Szycik
> Sent: Thursday, April 9, 2026 5:00 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Penigalapati, Sandeep <sandeep.penigalapati@i=
ntel.com>; S, Ananth <ananth.s@intel.com>; alexander.duyck@gmail.com; Marci=
n Szycik <marcin.szycik@linux.intel.com>;=20
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw=
 <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 09/10] ice: re-introduce ic=
e_dealloc_flow_entry() helper
>=20
> It was removed in commit ad667d626825 ("ice: remove null checks before
> devm_kfree() calls"). Now it's useful again.
>=20
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> v2:
> * Add this patch
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.c | 33 ++++++++++++++---------
>  1 file changed, 20 insertions(+), 13 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
