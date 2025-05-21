Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6071FABFCB2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 May 2025 20:18:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5ED582118;
	Wed, 21 May 2025 18:18:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8RUyC45SuJIe; Wed, 21 May 2025 18:18:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44FC581948
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747851534;
	bh=OQC5MeBvdTeCz4mhItrEyH7MftoZZlHiceT1d9pgJbk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Dt3u6cbVKr7ByiRoxISWxzX137WBUuhKH4JC7wuGY09d+2s+ELbOmJesJOkj3+9u0
	 V+FPDpX2yBSUIXqyrSKZA/o4SBiwGX7WOh8+0FQg4sVwrU20XS/QqtvSz5+o5u3AXG
	 0NKd+zhck6ndK49ZwerCAL2Jrh5hNbaiZ9VrW+0mript5e2o8cNAlHtz7EzKE2SzN2
	 2co/K8M+VxQdX+6deAq7BPHfwm3ZWRtqDTo07cvZ6cBAfGdZA0GAJpvHCQACeC+6hZ
	 YXfST1EytOl95M/1X5+pJMMDsbIbSkZNntCFOpny7dmPE+miX/fxmygJNqcISnxPQ6
	 cyRbBagyJWekQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44FC581948;
	Wed, 21 May 2025 18:18:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F1377758
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 18:18:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E207D40DA3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 18:18:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Zi7VH-28t3b for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 18:18:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3225540D84
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3225540D84
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3225540D84
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 18:18:51 +0000 (UTC)
X-CSE-ConnectionGUID: BnsSe9D8TkeTViJt52ZD6A==
X-CSE-MsgGUID: o60q0WPJQAqQj7A1Dfet6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="60508645"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="60508645"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 11:18:50 -0700
X-CSE-ConnectionGUID: z5/VYSwOTVmfYSgn14pLmg==
X-CSE-MsgGUID: dPhoLyQiQiytw/E9Gqp+1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="140730914"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 11:18:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 21 May 2025 11:18:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 21 May 2025 11:18:50 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 21 May 2025 11:18:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GSS5+8Oxytpxywt88wYohqgmZOVhFAXp3JjiFOlgDOs4QqnVLUTlBl1RZhqhOVzuhU2XVrqWPekv2c6Qwm9ybwMEBLOTW96txfb7WZINVLkPW9iKBqrbj6c9yWSmNqi4e9tAHoNHl1odkIifVScZOKN2NJXT/Bm1TeEfOldpSf9lxWpepe+tKaCtFBg5Oskd7APrxVEs7pAGgctRL2S+d1ogJ2ZhrE9n4vFAZDS9X+n3abJgNlLs85AwYdc6yAF9wfuXTog6Kd1vqQyBiCGHGZk41vN7MJSU53S3TE7nKxl13ZFXCDmZk0rG9QlNgEAc9JPwUC6miQonRHeSAox8aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OQC5MeBvdTeCz4mhItrEyH7MftoZZlHiceT1d9pgJbk=;
 b=CxhPQjP98A8tpLOHp0bVTSFvpWDP/Lah9w1G9FwIW1ICkq/3Tl2Oqo86Z5lpgENbA0EGNmbZx+DxdCoRKBQZoH/t/8xZzioj5wgW4Xmy02oE5mBCekSnFgx6eTCg/usEfrG+wtgAgYQHzHuauSyJVB6orjCRavPQPjZelRSL/qRRac9z6Lk4ZffF7L4bsASGOFUM8fRoIIYZh7palDfVHMk/opbTMbSA5gpkS+5c+SM6cudfVbAqEQpym9a4slff1ZhUiXZ6rC9CiREhfMPH8iLR2bS7NSALOELW+GRLoRhr17mphFunyPUukD9+e6+1v4ARck/NaDT1dnVNs7ZqiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by SA2PR11MB4859.namprd11.prod.outlook.com (2603:10b6:806:f8::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Wed, 21 May
 2025 18:18:33 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8699.019; Wed, 21 May 2025
 18:18:33 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/8] [PATCH iwl-next 2/8]
 ice: replace u8 elements with bool where
Thread-Index: AQHbyb8FBcYPHzrm+U625rwjZwUBibPdZbTw
Date: Wed, 21 May 2025 18:18:33 +0000
Message-ID: <SJ0PR11MB5866BE3495A2FA33FCFB4867E59EA@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250520193930.3763888-1-david.m.ertman@intel.com>
 <20250520193930.3763888-3-david.m.ertman@intel.com>
In-Reply-To: <20250520193930.3763888-3-david.m.ertman@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|SA2PR11MB4859:EE_
x-ms-office365-filtering-correlation-id: ce5e681f-047e-4e77-74f1-08dd9893e55d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?0LonE6FZoHmLzTmBMhV0NA7Q5tXJuzsIek26LhWxBiosBarnA37Y2MSZYDkX?=
 =?us-ascii?Q?6K2VYHrLaWSJziZugD+FjmGEPJiM6mvI7x291GYO/BMTH5N2//NlNsV10xQN?=
 =?us-ascii?Q?Yjv2QInuGZZvRIq8rJfdNQ/huKLI6z9BN/0bdTSysSDrcdYKZ2G2VKEdMPsi?=
 =?us-ascii?Q?AHYSP3uJJgrG3BtHYjfZEuB69Gg4+/xm41GWfNqSLvjYp7tgFVFSpCPSsK3h?=
 =?us-ascii?Q?dCiKIv9APMnVSyBOVhN0GEPSA5h/2TGFNHaWvr/5NfNWNE5Th4o/aiuuQiIm?=
 =?us-ascii?Q?88bSQ0HTsFFU24onnvxwkAOvOP+KI7CYMFY511C0WfYJhVBwA3d7Q7ciP1WP?=
 =?us-ascii?Q?D9uOFJ+kJqhE2apRu6re9FHRzHCaVFzj6KNWphlcQtIrYAglfircthrirl77?=
 =?us-ascii?Q?386ZADz9KTpMehKsnDNhR5yw+bnJOAo77dovCscL+j8y6QIjRJ98Kf7vSkCy?=
 =?us-ascii?Q?rPGZRXzzMZqpz3Rql1RBKEkRJ/lQz5una7lCCxvue/KafQOw2zjWSJ/AWPMu?=
 =?us-ascii?Q?6gPSCAIzhPvMME1JAB/wjj0cOqTPgstrlTM65tXAVnGGGl2eWXYkKjbakcey?=
 =?us-ascii?Q?EtkaUwEjqjoOWssXz5VIzYUaaphwTi7TCdWq3G0W2KEylJ7iOldsr/ntS3Mq?=
 =?us-ascii?Q?lsPGWGwzyzEe/GgkajkWmylRnddJ8O/7aE3XzKz2lT5G9bg6uEZsdhRBKmNm?=
 =?us-ascii?Q?TlGe4k59TYi4VPh+xtOlSa0U5WpnLq+S0K5tOiCRCInYaFevBNRkOilCeulB?=
 =?us-ascii?Q?7WUVZSGcMQMnER04BSgGORINjKW9vJGIbK27z8M1v6MD4ppqrZMxCjbbda4r?=
 =?us-ascii?Q?C6v49W+u+41ynv1HDBAzsTtEkKiqs/Qx5ZAC210IFIXxvh7eBbJFXwyV5lzi?=
 =?us-ascii?Q?toNrWXEvfAvV8U20Bs8kadFzkHGwNYvyVOqOcRiRi3+GGIsqqqiuvWDEC9U8?=
 =?us-ascii?Q?LweBqSPPbUjJVb+pxgjZrIq579+jHytUpjeC/h+h66Ez6Bw5CpP3VWS83CdN?=
 =?us-ascii?Q?BuuaoEuyLK6PjEds26E1QP+RcV4j8VdeXNOHubVIKn3oVGnXT2OUMUTVSfPV?=
 =?us-ascii?Q?NG90aUAQ71cF71cIGMzONMedUAc5b1rmII1CErdHhfIMlhSD+2/9ulD750rl?=
 =?us-ascii?Q?e9QYiA0/6/c1dJAmCh9B8eMBKM15ln62ha9CQeul6SuUUGZ8E78AJ0PiiK5C?=
 =?us-ascii?Q?H5vA7w2uv5hpY/RE3Er1P34HgpJj5nxJ0AJekFjwyOn3Gc24SaAFmfPs1lCf?=
 =?us-ascii?Q?QillDCJ5itzuDZO6k4vpGdZ+WO/KQXfSY5M/4DcQspi/RIAV5D3OybRP6f45?=
 =?us-ascii?Q?XArKIkxJz+yScLJNV4WxJuhpfpkGGi04VTTSSVPgLnHsEKCSUQOzAshqbJIQ?=
 =?us-ascii?Q?3TZEeAct4UixyKbCWB06Nmy/gjQSK888481NLE1pg2q7d39UBbwLC8AWG+T5?=
 =?us-ascii?Q?K0PlVY0mxA0ATTgdBtnYATbK9PMHBdOZc6GQrm3hFciUjW522w7nJ+vTZ0Op?=
 =?us-ascii?Q?m4ToRYDTfj/98Ps=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gwzJK2cynB8WRdLx3GQaadCTZM8PWecEAWa2ZtpgpohrUqcwECeoxJ0dDUwS?=
 =?us-ascii?Q?z+2QUkWoqB/tIYvdj1h80netWNCQLuttpiNdQXMFnoHCBDYuH+Ea+KMrz4IV?=
 =?us-ascii?Q?qhjR5ew31bPmxgSqvU9AJVv4Qz/K+N2hXrjCZC5hccGbpZWFB9STWb+V7V6T?=
 =?us-ascii?Q?Ge0rW6wiRpKnOXYPCOMnIz457ppO/uEhwwTi+tbsXKWV0uvGa13B2VY/OBxz?=
 =?us-ascii?Q?HAiHg4kVt93d1ePQrWplCpJfTOoqhnlww3NWiTyjNAt5oXV+d7BBeMwSVEnn?=
 =?us-ascii?Q?ZnCONFCg0rjySDi9SzhALOC7r3yf/3+Dgr7j0CpHat/ZuyxnppmEaiA8fX00?=
 =?us-ascii?Q?yPczOb3D17uCRPuo44X9Z7K5OoNVPeOcFohxgcV423FlyKfRhR5baQej9XXp?=
 =?us-ascii?Q?Oyp6uWUQDP524LCb04qvCcYf2OQMfcDU6OGNoqWI9XyYehyshUT+922bRlqJ?=
 =?us-ascii?Q?3QRXVNzz/RXG1COT0zyFvtTfOsJYVZuUAJAdkVoHFCK+cdm74C0SWr0hjf4I?=
 =?us-ascii?Q?DvnslTqVwN7vdC8xc1T1hgv6cVaXkllduzNk2mdLxo4pz4p7Pedp6NZs7eeG?=
 =?us-ascii?Q?9Iu7sb1SQcVTetazYjnkicWBvihdqi2c1JQCg2CYOc2S9ZzkutzeOE7Aawr6?=
 =?us-ascii?Q?Ac2iF74mzGdvyU+UbUoVp9IPfrTbvvjwMFeMixe8eaufJ9rz9Amb3O4QI6aL?=
 =?us-ascii?Q?33Fk5iBC3StfpwNZyF7ertf3HlhVtFfKtEgLhHMDh/Y20z1QO11B7O13fQcd?=
 =?us-ascii?Q?XOCPSYX+sGu1CuFa/C5Lzf73a1HcYVQtIAJgl8mxFzOZVLeqOzFWshY0Tv5m?=
 =?us-ascii?Q?GrscgtwCOQcLi406E1MvYHTxkMCmDz1J5Zn5d6w3E5GEHua6elvjGI0SINin?=
 =?us-ascii?Q?UeL6hqXUYQ0E8Q5WykB6RHGGXfXvGhQmbKs8wfujA6miWE/3oY/yM8NSGqNY?=
 =?us-ascii?Q?kMjTl/c2y3I88vH9ehA9i82Hy+zTbLdoqt3AFf0pP0I6nsTcg/xkum2fgGOk?=
 =?us-ascii?Q?i32uZ/rdoK0bazWTIZOftruljZFMii0hFJzbJAT9jMLi50cjUwDl/s6w+kHq?=
 =?us-ascii?Q?WDH1UYKiWmbkHyk5ZJTM0P1mKtslqmeHvpR0Wg4Gm138Le3Bhm9yveR/LF5T?=
 =?us-ascii?Q?rWTaJkKOB0HnuJBUPpNSVwbtfKc3LeFstfSAxeyCq6WxktHHmjunY1P5BKzw?=
 =?us-ascii?Q?eIqU/A2fU1VWyStcsqQ+/BjsHFEuCxM5Ay9Ab45mzRDNLzDjrHIcScp4MLt6?=
 =?us-ascii?Q?BOAD609+59YwePU6q2pZSOYtA2HyCpniOGTjwe6w8UF3ofK9LYtilR83FloO?=
 =?us-ascii?Q?lBAf1iAm0qroYzdLoXPshH+8OBXBFBZTs/CyJ7FVKP4mH1qzv27oJdToG8ZR?=
 =?us-ascii?Q?qiHFrINuSWANKpuHUyE0XZCvs/QFJXFQop4EgnTEylDwG97USS+9m94z5mW1?=
 =?us-ascii?Q?g52ee6i0SV2X+F9Zo1uQh1sG5PaY4aoCej9c0jU3VJ8C/1J3sQSYaPwr+hi0?=
 =?us-ascii?Q?MldP3j6pZLmVOTI629TENMUKJ8IZWxRxKn/+RJUDG16Xdff4BjmMl5f9QR71?=
 =?us-ascii?Q?wPvUo19H9mXL96CfQYVxsf26kDofLVtWAE5KUKR0CFnI9HlJwsBJ5F7y2DAm?=
 =?us-ascii?Q?cw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce5e681f-047e-4e77-74f1-08dd9893e55d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2025 18:18:33.1733 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vdN54+WBRmNbsU608pWVAfwsH+a63oi6yQ99Z5Jcym+cYxznMeoUUbqtLlk+GTy7HFzdc/N7VppklcJGW6Gnpoco3ojLTk43DQcz5S19qWo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4859
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747851532; x=1779387532;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sB+c4yM83263DcJWL+KofSZaJDpcuOcoUTB2VWLUyWk=;
 b=UnpXBFKQre3WeaTeVsgWvqPA+jF+RR0qDXhbvnQ/oSeTzxkE6dSMon9B
 ArRzcF9ItHIVTTwOKWpTTqjLxaYyRZPSIiQe6XiMmb+5Qhf/H1P5zJsFi
 /f+6kXCrn/e53kinWBftMseOzmugnish00NdFqfzXeyGZJddkj7FVmAk4
 v2pa/WFyP1g/Cwel7A9f+ytUw3R1D6WmuUPkEF4oK/4SnNTy6xkrDU7VD
 XOBzlO2g10yhWRs1sEWdNuBG0QW14kiYCu2jHZIkjTtWlw021ap/CcD7+
 J8NYmroTJcOwZVovOHGdG6sTjyO6PSfP0SyNC64nXd3G/482fMGnb7kMX
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UnpXBFKQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/8] [PATCH iwl-next 2/8]
 ice: replace u8 elements with bool where
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Dave Ertman
> Sent: Tuesday, May 20, 2025 9:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/8] [PATCH iwl-next
> 2/8] ice: replace u8 elements with bool where
>=20
> appropriate
>=20
> In preparation for the new LAG functionality implementation, there are
> a couple of existing LAG elements of the capabilities struct that
> should be bool instead of u8.  Since we are adding a new element to
> this struct that should also be a bool, fix the existing LAG u8 in
> this patch and eliminate !! operators where possible.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_type.h   | 5 +++--
>  2 files changed, 5 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index f7fd0a2451de..29a02a0348b1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -2219,10 +2219,10 @@ ice_parse_common_caps(struct ice_hw *hw,
> struct ice_hw_common_caps *caps,
>  			  caps->reset_restrict_support);
>  		break;
>  	case ICE_AQC_CAPS_FW_LAG_SUPPORT:
> -		caps->roce_lag =3D !!(number & ICE_AQC_BIT_ROCEV2_LAG);
> +		caps->roce_lag =3D number & ICE_AQC_BIT_ROCEV2_LAG;
>  		ice_debug(hw, ICE_DBG_INIT, "%s: roce_lag =3D %u\n",
>  			  prefix, caps->roce_lag);
> -		caps->sriov_lag =3D !!(number & ICE_AQC_BIT_SRIOV_LAG);
> +		caps->sriov_lag =3D number & ICE_AQC_BIT_SRIOV_LAG;
>  		ice_debug(hw, ICE_DBG_INIT, "%s: sriov_lag =3D %u\n",
>  			  prefix, caps->sriov_lag);
>  		break;
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h
> b/drivers/net/ethernet/intel/ice/ice_type.h
> index 3d68f465952d..e40ea754f91b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -293,8 +293,9 @@ struct ice_hw_common_caps {
>  	u8 dcb;
>  	u8 ieee_1588;
>  	u8 rdma;
> -	u8 roce_lag;
> -	u8 sriov_lag;
> +
> +	bool roce_lag;
> +	bool sriov_lag;
But why not u8 roce_lag:1; u8 sriov_lag:1;  ?

>=20
>  	bool nvm_update_pending_nvm;
>  	bool nvm_update_pending_orom;
> --
> 2.49.0

