Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDliMqQ4pWnt5wUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 08:13:40 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 300881D3B45
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 08:13:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47651417FA;
	Mon,  2 Mar 2026 07:13:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YXecQyNhauIM; Mon,  2 Mar 2026 07:13:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC73F41815
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772435617;
	bh=IuMpsHzoI2qzIR5nVG3/zzrXzxl/G8V1KHk+p+F9dXE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=asvyJEAM55DHF9rWt+A5camwIB30QmQzPzJUXJ7SlLmQWQaI2NOjFuJKPRCdIA3h7
	 +x37LyMHBqVorJCg7TscNozSIj/d3UDErxstBbanCtwSvbfG0nPxOglZFDzeo+JggO
	 7mSoDyUhob8jUlS4NlkpvygJP2jtP0aI608CpJmzMN1jMFsEkizyXojYaFXCYLR7U9
	 MtgpBxFcJ+Qb7jc9lpBnPSwrs6pNCpkt9pThMYZww3rdW384rN8J7SyGnz5eSKAoX2
	 xjcrBD6X9E1ucJ9fgsrJsU8EX0EFLqhEEcgtFvXtlH1Rzj2xyF/jrp8fiwHGPJZZg6
	 sOYy6Rc+H7PKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC73F41815;
	Mon,  2 Mar 2026 07:13:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8E795231
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 07:13:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 803A982978
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 07:13:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2E2cqwxr5_c2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 07:13:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DB9B682977
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB9B682977
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB9B682977
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 07:13:35 +0000 (UTC)
X-CSE-ConnectionGUID: noFqhg9IQkOyY9gKRmOujA==
X-CSE-MsgGUID: Zg96Up5YRQiPLFscBkx1cA==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="91010968"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="91010968"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 23:13:35 -0800
X-CSE-ConnectionGUID: HWs5pAjDS32bZIU4sg5Gdg==
X-CSE-MsgGUID: bqpseasQQ0yY0iuOA4cqAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="215583501"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 23:13:35 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 23:13:34 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 1 Mar 2026 23:13:34 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.1) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 23:13:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tJU2iD25e5wkAl4qmqx6A6Mwsao2Gze8fKyZQYSWY88zlN8TKXNXJ/envtjAjDDGLiIPdRwIVUPNFc9WwnWJcRAiQAV2S3pudIlt3VUp7dS399uiwFvAlMKhzcL5/CZVtC+irUoZ+Z6mDW3d3GdubJYjqzcUicnTDfj3OTXPGyU4RraXDKKPVBb3xcDm5Jg71d4vUKTBR8pkeN10tF/H8WlDlS9gpEV6tcd8k+tqOVSDiR49bxLSnXW0IidSzplalKb/btU94rvgLJEvdvdDDOj5tuZSiDepj3AVBtI7aSLP5ZtRzSEQ5Zp6Dm/3hlbMSJhSSxBbbTqCpxTP9wKCkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IuMpsHzoI2qzIR5nVG3/zzrXzxl/G8V1KHk+p+F9dXE=;
 b=CKrFb0KlXfDyMJr2EoCvmWqmEWddfbqyH3gVr+zxQNZNwBzeoOz+8F2po3uc5kQFhLEgAMwbwCJBpf4DyJv9FQVZjob8Mzi2TR5EoasPJEL1aonQKgEOB/3s1mXiLjRjkJ9+B8CrfCkTFrE126EfJTqkCWxIutiBc9UmMmclGcXI9Sqz2yUi0d6/m3hWbsP8yP2bZ81DWXmymXSBcRZML+e3BqCc+62wwrnXnz3ffYSLY39O3MFTJ4p94qJ42K6nNlfdUxywhYahJDuB0VP7GcW96bw+LA+7dGTKMrpnzNSi5x2cT8vIAYO7ZBnMkOEIyZmswh8LpWAX7DNUtwfF0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV3PR11MB8532.namprd11.prod.outlook.com (2603:10b6:408:1ae::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.20; Mon, 2 Mar
 2026 07:13:31 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9632.010; Mon, 2 Mar 2026
 07:13:31 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Yury Norov <ynorov@nvidia.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>,
 =?iso-8859-1?Q?Thomas_Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Andrew Morton
 <akpm@linux-foundation.org>, David Airlie <airlied@gmail.com>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Brost, Matthew"
 <matthew.brost@intel.com>, Paolo Abeni <pabeni@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>, Yury Norov
 <yury.norov@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: Simon Horman <horms@kernel.org>, David Laight
 <david.laight.linux@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 2/4] ice: use bitmap_weighted_xor()
 in ice_find_free_recp_res_idx()
Thread-Index: AQHcqeGkrqtZK2cTxEqjY9lXXtRNEbWa1E3A
Date: Mon, 2 Mar 2026 07:13:31 +0000
Message-ID: <IA3PR11MB898640438994A551D1233770E57EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260302011159.61778-1-ynorov@nvidia.com>
 <20260302011159.61778-3-ynorov@nvidia.com>
In-Reply-To: <20260302011159.61778-3-ynorov@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV3PR11MB8532:EE_
x-ms-office365-filtering-correlation-id: 6f44d308-026b-4973-5494-08de782b35b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7416014|38070700021|921020; 
x-microsoft-antispam-message-info: QhuxEvOOLLSMeCnjMhqu2JwjQGE7IuBvANVyJnSecF/xrgU6/b9gwjCWYhPr8iJpV+UzobW39f/KlGOnF3GY6zmNuBP+0V5HFsKIfC2kX7dk10OiE1GoR/3T7fme5/0gmGlEsuiKe7k2YBwDQTj2qZxoOxbgTmeS3pldWGw0+2B1QQcklaXzXCUnwTtbHJ+UjUGleB6uKK4+xm8AT0uxIF+/ujMSusW4+jLL0jlfldtqTbV8K3PoBT7MYEH+9LjSOeSRzoc5iPlnQZvcumLGBpwIkYpsSoet3zjqGquUQmpoZyf3OUbN+JyIgcZVdzlreeOkeEfUHn4wnCFUhOUpbWkDV2nsGC9E5V61fANwUEiiH2GwI9i2JXFcpmJnbIkMJncgRTuaye9uadgkML05lHSyNc6TjhBHioxwhGSNIbfdh4FnCbtWkdX9jztvobicR+F95UvXvOkqpZt8gNZsCV954l9rXUA/iWQKtVM2/N2YRtwQ7VMhzPScem8LPCr/l/bJsgCRL8auWR40Z7jFaQeYXMo1ENiVTN5AyKQUX09HU2nAcS1IiPUKo/Vy5kYoDk6kOXIkfF/i1hU1wKqZheXfCJ/BfuiT/cB/86PL+cMQ9RxrWScevSkduYn1wQZPohY/XuHH01cqgPtxIRygpmrvWDSmRyFMol1aZZ8peVIdncueJy5OsM06J5phRlau4hrpurEUsUVPXhWftuj6s2/hR87IIHH1/ULbt0DrWjCTXfNhejqvot7TrTG2/TBvrGhNezayp5RTB03ZrpY1llbJYYiWCYn3i++F+freF0tvuX6ZxY9AYkRNz0PWbfZX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?/Ls7W7nKvoW9zKVWDBusz42U4mNX5WNShgeZwF1i5Fcfs4jiXgQvsBRQiS?=
 =?iso-8859-1?Q?i4IoL/Q60j5tqJik9hospy2UJu9MvyLgia+U+tb679quel0GVa1c5lXQpi?=
 =?iso-8859-1?Q?RsfiPfNpthgaPqOiALyWFX+vLKj5vZvYHzOt5LxoMjCOHitY1GsMZt+N0v?=
 =?iso-8859-1?Q?tnwwMOuZXklLYeaEuqQ0n3yCJbnFwElITmCMx0YdJXVrc1hFfLq4Brwy2Z?=
 =?iso-8859-1?Q?Kc0xjAsEGS2WmheXARitke8WqL8t6mmSD2nHQ5E3G5Q6WeGn7ukia3URmP?=
 =?iso-8859-1?Q?N1tDoMEG2ey+ZtJIOJHevELLVm0hhKQcqNVg1U0nJcGMEuPuKStbrGgOkR?=
 =?iso-8859-1?Q?coTOAic49wvkq2HGmpKbGthWGf2Ymh6mGve4qdEKFcN/cIj9ZA5FK1tfmD?=
 =?iso-8859-1?Q?kXrX8Tvu4zrWVNzum5fDI8t7bXFeSZWP+t3wIgLq47tTAytAymt8tAJMjm?=
 =?iso-8859-1?Q?AFHm/FsMbZkRnvW9E2dunZXe9tvr3VNjAxA+HX/i3tx6ZP0KnRR1CVWxPK?=
 =?iso-8859-1?Q?XWXmyov4V7Ylr/6WVS0HzGz/kNBL4OY/KCyiw5qfT0zqN4C3wmdVD/j1Ha?=
 =?iso-8859-1?Q?J1ZhkWETF6h0ChetAJtxmR9OJOyEWAw2ZVTqZigTaqeVJ3+A6Cy5izSWva?=
 =?iso-8859-1?Q?Y+fDtmcXkfqDITvCryZII+D1m2qU3M0qv5dmUB+fmwgsAiQVOyeK5qjy9Z?=
 =?iso-8859-1?Q?Bg+ggp3+wIaJBAbNbI1/2uyXE+7MOfMp6s1Ojtv1bYWyajooy8mexr60eo?=
 =?iso-8859-1?Q?o8C6/5DltHw7fZJChfI5RMiMWeDhbd6M+k78o3YB8VeCUBTewhdEytOP90?=
 =?iso-8859-1?Q?OUsizJUirkzRbDh0Y5o0Ay5q6z9F8Ep6BfhnPVCjW0s059Z67UrnFSiINf?=
 =?iso-8859-1?Q?dTKESJLG8zPc+2BBE03WqBS9LJpS6v4FN5i5yEnc2eNkzGmbp9LXc8HqMj?=
 =?iso-8859-1?Q?lvjUm92/K37dd07+XEyvcYL2ImkeujgEuU8A0LqRpiPton9BbJX4hmDiCM?=
 =?iso-8859-1?Q?sbj+4E6+rbYbkifAdiyzDOt2cZMS2BWo2KpEFhKL9+P+X54K70Uo9RIQ45?=
 =?iso-8859-1?Q?cykNMby0sZQip0LBE88hv98AvxzHT5GntCxasI5fDsefErCeYEIHbPSjmU?=
 =?iso-8859-1?Q?8czgVtTqmPiIOh5tY1GFF8ywGRj8JG0XxOanDbmMjGwslOfDtOrEW0NTCG?=
 =?iso-8859-1?Q?ZhvbxBgMKS5lvX72DXbHmqwzNE/K/fVonsIp1XemEQrMTAwkeirXS58xh5?=
 =?iso-8859-1?Q?xwajWq25XjxRaheRO/dH+rqnK60JsgPGESHg1sLN5VCQ08ODWpCkfmWfpb?=
 =?iso-8859-1?Q?u6jVcxZZn7ht9qvjbHLGXopkZlcGStu1u54Q5yvRJn4qvJ3z3Yc6+0JHe9?=
 =?iso-8859-1?Q?i1532igYFNCTvcRPHBkyy5FnrNYUSd3MOfNL0tYrSIRcSj0DPI1H6VBHPU?=
 =?iso-8859-1?Q?Ks4MEpM6OnM6Ue/kG9V0mjxcACqbN1wdNt9sRIeOWstmyyezMJKftKAE7R?=
 =?iso-8859-1?Q?VCO1aqrkr1q1+tso4y2XB/qC9IeA+TwgdmhDsstrsVTF5oujSrYIx38Z5Q?=
 =?iso-8859-1?Q?lDBD2ZSC2j0zNNK7xWkycglFaL7OTOn1vmjOleHjEGwR98dW9G9jWIFJRQ?=
 =?iso-8859-1?Q?eG5iu9vfSns3yw9wcl4FItYqVwkTbwJvYW9GyTdykX9HJ/vtvIc2AJu69T?=
 =?iso-8859-1?Q?GJqL6biDmxyYYl+EbTA//mMMrbBy+jLknp/RIIMUUPmbeUqGlnsVlIVAAW?=
 =?iso-8859-1?Q?XW40k1iKhDaImbB/UpJtTHQE9yixNMZTlFDFj5MP/uNdYFYNG0ZGPfPXJt?=
 =?iso-8859-1?Q?K9LyoX0p3aFbsx3nEupRqENgSGaD97M=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f44d308-026b-4973-5494-08de782b35b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 07:13:31.2803 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wyo4rh+jAXzsp8uqSTkkqHD/tGPKoy6YCvhsyMoXpNi+ODiCsAnABi5lDRoh1goYlJ6PUmvC8xpJA5rmAg2jzIpXfwY0vr8XfMEc6wMXzO8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8532
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772435616; x=1803971616;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q+IGxVI7iF6WFS2mSjan47QguNhdY3+I7V5+k6RJGBE=;
 b=RAAu7Tqd2FxJe1276gb4HpRSA3lQQpA5G3FDD0+J2VRBJPw0LyYM8/C+
 mB1zgwMkV/Mq/5SQUZQrJVmNKvMfaUL6O3kSZN8AIgwCgisrOLj9Ts9o0
 2mluDsaEYaNscKIKSY8j4PJ5+ZZdTi4V7Uj3Z7Zxhaxo2sogsJ4HYnAkr
 Ng0BEhVkss9Oy8fnTDawSvKGawkOGi0FzxvUqG9RFBeFGcTtTmojb2Nqf
 tiqMzjRjilF9fBF8+tA4HQ6ZJIeSlnHwrzKq03MuQ9PyHI28LC/ljbae3
 9GAZ1sS6XwhuiJ5hOXeQ3wyNgR+3bIziH4zG74GofFy+q74I58t9fU0Jr
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RAAu7Tqd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 2/4] ice: use bitmap_weighted_xor()
 in ice_find_free_recp_res_idx()
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:ynorov@nvidia.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:thomas.hellstrom@linux.intel.com,m:andrew+netdev@lunn.ch,m:akpm@linux-foundation.org,m:airlied@gmail.com,m:edumazet@google.com,m:kuba@kernel.org,m:matthew.brost@intel.com,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:rodrigo.vivi@intel.com,m:simona@ffwll.ch,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:horms@kernel.org,m:david.laight.linux@gmail.com,m:andrew@lunn.ch,m:yurynorov@gmail.com,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_TO(0.00)[nvidia.com,intel.com,davemloft.net,linux.intel.com,lunn.ch,linux-foundation.org,gmail.com,google.com,kernel.org,redhat.com,ffwll.ch,rasmusvillemoes.dk,lists.freedesktop.org,vger.kernel.org,lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 300881D3B45
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Yury Norov via Intel-wired-lan
> Sent: Monday, March 2, 2026 2:12 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S. Miller
> <davem@davemloft.net>; Thomas Hellstr=F6m
> <thomas.hellstrom@linux.intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; Andrew Morton <akpm@linux-foundation.org>;
> David Airlie <airlied@gmail.com>; Eric Dumazet <edumazet@google.com>;
> Jakub Kicinski <kuba@kernel.org>; Brost, Matthew
> <matthew.brost@intel.com>; Paolo Abeni <pabeni@redhat.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Vivi, Rodrigo
> <rodrigo.vivi@intel.com>; Simona Vetter <simona@ffwll.ch>; Yury Norov
> <yury.norov@gmail.com>; Rasmus Villemoes <linux@rasmusvillemoes.dk>;
> dri-devel@lists.freedesktop.org; intel-xe@lists.freedesktop.org;
> linux-kernel@vger.kernel.org; netdev@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org
> Cc: Yury Norov <ynorov@nvidia.com>; Simon Horman <horms@kernel.org>;
> David Laight <david.laight.linux@gmail.com>
> Subject: [Intel-wired-lan] [PATCH v2 2/4] ice: use
> bitmap_weighted_xor() in ice_find_free_recp_res_idx()
>=20
> Use the right helper and save one bitmaps traverse.
>=20
> Signed-off-by: Yury Norov <ynorov@nvidia.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c
> b/drivers/net/ethernet/intel/ice/ice_switch.c
> index bb0f990fa2c6..6a5875bd9c6b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -4984,10 +4984,8 @@ ice_find_free_recp_res_idx(struct ice_hw *hw,
> const unsigned long *profiles,
>  			  hw->switch_info->recp_list[bit].res_idxs,
>  			  ICE_MAX_FV_WORDS);
>=20
> -	bitmap_xor(free_idx, used_idx, possible_idx, ICE_MAX_FV_WORDS);
> -
>  	/* return number of free indexes */
> -	return (u16)bitmap_weight(free_idx, ICE_MAX_FV_WORDS);
> +	return (u16)bitmap_weighted_xor(free_idx, used_idx,
> possible_idx, ICE_MAX_FV_WORDS);
>  }
>=20
>  /**
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
