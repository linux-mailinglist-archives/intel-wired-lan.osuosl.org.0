Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CC796B626
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 11:10:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 97A72810AF;
	Wed,  4 Sep 2024 09:10:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T-XlCVTUvpsZ; Wed,  4 Sep 2024 09:10:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADEF180D5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725441052;
	bh=64iSe2Gqk9lOP2z18NPBN6SIQEeA5Rc45+9LwQ5jppY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IrAEcUBF7C3Orj6OErfBI0cuy1dnEWSGN5gB8PtWr7alFrgTOI7/8ApJCBbmt/Wuw
	 Zy+AGtFz8FLAlq1iVigzX3dDIm0/t6KPJSUxZIouUIPPj/xJOlFLqpF8Sbg4hfOhf5
	 xhXFSBRUK2qnjhiyC1lqob+2HLltJUpKXW2B9mzUVibC84qdUjOprBFNCQdAK+8SX2
	 /RT0DY8BJBiJ9V0Jzu9yrSz1GsWmcsSwmuzKbgRn8AAuacS9+n5RHAK2ktTYW9DPOo
	 WAo3ptKxAoR2/1U2YAneqtPkixc6lrAkm3lf3BH4rwszsWL/C4RPaACOMCAr1jdIRd
	 G9PKSzP7cE9lA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADEF180D5B;
	Wed,  4 Sep 2024 09:10:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0CD2E1BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:10:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE7C8607F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:10:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u5wlR9pzdJC0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 09:10:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2F0536069E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F0536069E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F0536069E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:10:49 +0000 (UTC)
X-CSE-ConnectionGUID: MlpxIICHQ+aPn8q7qZm7/w==
X-CSE-MsgGUID: 2NiMyfyURze8j4m3EeAJmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="35246636"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="35246636"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:10:49 -0700
X-CSE-ConnectionGUID: B39Xm+iNSPi73JDPdh+bDA==
X-CSE-MsgGUID: kFljTae4RnqEjm70Rm5btw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="96002619"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 02:10:48 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 02:10:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 02:10:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 02:10:38 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 02:10:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gEuLBhaOAdrQ7D7iYEDqSOcOaNpQfjTQRBDyCtdLEL0sCukKt4Mtzvhtguzh50HHeIKfyz5cxLIvbk3TM+RNje2Ay89pWOqhUhUfz1PxpS3aP29u9MbFXwkz7jXDqF1DHpZQNB67989r4R16nqirg5AdktCObqLF3QLhOCJaNDKQGgUAXzYjzFWg5XhqL+8vmhVam4FejlMsNhdtSmwCGkJ3sRFFfg2SwJHzgQdFyGCJM91JHYIGE2RquPSh/WMGzRPTBfaOB40eRrKSonT553DVyqbx2rk8tF7d6dF20NHW7xmjjHdw9sdvRDumbf1xYlyky3RKwmuYrSjmSbDDKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=64iSe2Gqk9lOP2z18NPBN6SIQEeA5Rc45+9LwQ5jppY=;
 b=AbBwyq4mjCpxA6dlWjmfOhOFbRUaGRGF11R8HtVw5XebxLPFWWCvydaXvMlP0MIb+UGtk2AmSsvbjKRKtRAondzx7h+LRj3u7ASZz3wbOeo20gi1Ik88sSrTRdHiWoptpuuO/Nbnbh57kdA6IdmBFvT+lwzJyDWpp1CkfWa9CJEjd+lrIWwLpDMTeXw3qN6Ifmeg6iuR/dvCx9Xx6o4MOv/GPlkv69FQYpZ3KaDqXJHnrhcH3cmY8k0rsWa4Euiivn271NBIk/jkS8V1oHH19o1VoMcUa5LB5xl6H/0XI22H2kMaP/hWN7nk0r0x2P27K1v4a/u8Z+5BF/xH7/49FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 09:09:39 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 09:09:39 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 2/5] ice: Add
 ice_get_ctrl_ptp() wrapper to simplify the code
Thread-Index: AQHa88vCOUqR0ZbXpUyJ4mUg+9/Ej7JHRRgg
Date: Wed, 4 Sep 2024 09:09:39 +0000
Message-ID: <CYYPR11MB84299D886989E674034152D9BD9C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240821130957.55043-1-sergey.temerkhanov@intel.com>
 <20240821130957.55043-3-sergey.temerkhanov@intel.com>
In-Reply-To: <20240821130957.55043-3-sergey.temerkhanov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH0PR11MB5830:EE_
x-ms-office365-filtering-correlation-id: f19f95f6-c726-41fe-1c05-08dcccc14e64
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?WU/fDwsVa/ehrBj5G5grzXrILSs1TjFmBSObRbIqbTpFVmaVSpYUsgxn32bT?=
 =?us-ascii?Q?KSnuXVhDd4zfsaSCaKNm/bDfCaj/fXtzYUB4LPJ9mtReWcKdA06kBIaksUfj?=
 =?us-ascii?Q?pgXw1QdlWwOl4lFOgltYsQtTv+1jV/szQM7ZrCEQXg8+qgulxD6ZkMOb4s84?=
 =?us-ascii?Q?+SKx5QZ93F8MD0Rb51XeY8wmL9pM9vRpik3s++7gF0DNR4LjXY4YJOHODweF?=
 =?us-ascii?Q?TPOhnPvn/6wLN1jPrJnx+Inuuo1eaEcuqbAuXpGXnYZkaHb63uGq6xbMUkcJ?=
 =?us-ascii?Q?m23nex815Iv2Cg3ZKpML7YAXGj6pdkKTO4cZFnOnoLakTZbaGqPi95O/qi9g?=
 =?us-ascii?Q?HUesS2dO5Z1wdXMx/DMRwFHX9k/VIy7bD+VqUlKJUk8AizG4PKYlLmJiF0iC?=
 =?us-ascii?Q?sEvwSzyvG8ZMDzJFNB/rHXZjlNFqro1/bzVbMSayihiZPaCt97qRP281HKhv?=
 =?us-ascii?Q?pE+iBFGcwJf5ugPPEnSlq04pqmNDjXmURQgGNoObErTPEGnRLOtlDxfjQe6C?=
 =?us-ascii?Q?VZKD6Qcpk56U+3eVANdsrnbktl08/Q6qSuO8e5KTJe7MqCkJ8H+WVZvN5wDQ?=
 =?us-ascii?Q?niDrl7dNsRWYTBx6JczH4gUp4ulvpMwNrNPXYLrC1TWR128OgUATy3m+CZ1i?=
 =?us-ascii?Q?ObDvve8YbQlaSF3RL1qypDYn5U7RPaVAkeqNh7XogqvbEYpDthE6ZZw2M29M?=
 =?us-ascii?Q?kvAamr24NDYIH7Yt5xQwvUZaZcXk4/4sN2yMJMq4cP2ahlUMAdCCC+ubzSTd?=
 =?us-ascii?Q?NDxjOzvqvAlsMe1rV6az8lsH+gd07CxHgWHGVHVUCs1DPNCidntO1VdzkxZL?=
 =?us-ascii?Q?RCvf0RZrdEeoR0FcVxQerVLdkg7Aybuu3K5Jgm4iYgFIe4htBbsdz4AjzQ7i?=
 =?us-ascii?Q?I8ixb7IzLwWcA2UGNe+1/RAwQfHKpEL5JIns3uGSHzR8saDksdBFjiowP0Lz?=
 =?us-ascii?Q?jKbTZ2tiad5unfeGpLBrblp8VN5XGBwziYSoARTwx4BxU8eI/OjdDsLR8V27?=
 =?us-ascii?Q?A4zThcdcrw+cDBUglf51XNiXFrHHpTlTa4doRoh6pHOA9CFRJftzdD6gCfho?=
 =?us-ascii?Q?qZyAMN9wkrIRHXfN9OB9oCXtofTQ8COoTPJSjx4gvrfzvSNnlKWoNA/jIVmy?=
 =?us-ascii?Q?2X+Q6spb4WqtFFcRqm8v94RLfElb9VMCLsvSfJswEYaOrjJPBJVbLIE6V93h?=
 =?us-ascii?Q?Tkk3xiu+kI+rkHOGcjnxgeoV5YH0jDZCkK27NJJifjbKJ2HBkM5W7lJhsI1q?=
 =?us-ascii?Q?2ksBxq8jcb3wLeF2rUaJgKfERiCQ09Sx4An31OjsHIrKgNQA+gOdEaDfDAZp?=
 =?us-ascii?Q?nydm/OHjQzhqfwwr1HHqv9lDGkeYkti5tzkj6mJqdfbqmJ8yygDQFeZgzMqf?=
 =?us-ascii?Q?FT1nQbBPOEHpXZgxOrG7fx84VJIaOQV0iMvpuFxSEZ0KxjxEjQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?k4KAkYljfu0d5vCHHv1m/atvWiZr6qKUEIesfbxDGjwYFcbCCbGNzJcyxJUv?=
 =?us-ascii?Q?P5XYIdjZqjd5q8Xj18GHYAKnTWKcjI3yLnRatLGJwQlFf8onWnd4+gszFGJ4?=
 =?us-ascii?Q?R3hJdlvcwuG2vM9MRimzDVvMGRmf3jvLe20oetfYKa6r4z5Cj6685Y/3wzoV?=
 =?us-ascii?Q?yvg+IDDlc5uvbUqyWMPReBbh9QFNZUvGoKvCfuzzVscabgFU7QvLzNkq0Uxx?=
 =?us-ascii?Q?XiNnD/fyrdXrzrUNQsvA6s0kFgCuexArUYbl3aPH46lKwgeFbxYDmEpIH8IP?=
 =?us-ascii?Q?bk4OPlqfAg8jUg1pLDOGrfZ9+0UNoA5CZ9HsKDCF7ovpHcK5amTnLT9iCWGd?=
 =?us-ascii?Q?3E9Xf8EVEwpxnevAi1fiZMdw7FihUyewXi0pZq4Dw12GOiObTlrFrfwCm3ha?=
 =?us-ascii?Q?P7rmJ0krWaJzOtjFWMfBErXj5p+oNW9ZxE++Bin9aGrZsUzyPZmROvg0JgpN?=
 =?us-ascii?Q?kBUaOSvFEQKfJCKS3GP+nAKQye1gKetjpGvkwfxBfsQBipXBEOqYKgnekrCT?=
 =?us-ascii?Q?DRnRsRyiukVrrnVPvJH1UUx+2XxsM4NOTbaRyov0ezgvRlmiAL8bxTfzqr3p?=
 =?us-ascii?Q?BpLSwGs000At+9eLnZpx1U0zDxAmNY+U/pQqTxFooqlmSwpbE15+X1WEbKrL?=
 =?us-ascii?Q?Xjhp+A7iUOeYV5iPqIRo2/FfnlqEX2GaxyiV9wmsVgFNpOLpB/Slx7WbI7WQ?=
 =?us-ascii?Q?phUUabZ+QXTDDhbS9W3S1XZo0p9ZasH7thFujWrp7MmogsmUGw91JDVsMdGc?=
 =?us-ascii?Q?qkRBkZusHK6BX9RvyL+Q2xFyy2c/aHGgx3CpDqW9NTx5DwtNzWXOmfm07FdV?=
 =?us-ascii?Q?njlnRu/NaT1dMiTobTw3rHSX30gwnQ2kIb42E9uPZCvozNAM/5Frefanx9mS?=
 =?us-ascii?Q?flBMzCMI7Q+Poch30mymvSm6W4oF88pXPG5Eqssz8hQVBJCfkTXKzWVAnU5W?=
 =?us-ascii?Q?LzuciO6AFba0nguv8ZrGyxx3QQnWgfOnmrLBColn4Hg+13Siol46HskpmaU5?=
 =?us-ascii?Q?FFFetmb4dbn6gFSMcDk5rtpEjK7v29u/QCUdfXfZ2UhotMYoErhSnScJIyp6?=
 =?us-ascii?Q?VwBe8ZOs3vUc8oBlhycDp6NjjYA0U9xeVrJxNrtkf8BE/2WOXtuyyxayrGEf?=
 =?us-ascii?Q?pmxNqf8+D9tRm8IRlBKvv44fiOVJzomD5P/jc6/0pDUKxvmTtebTfH4m7jHQ?=
 =?us-ascii?Q?iX3JhXZaCapA9NIjy3dXYZRKSXbcZwgCIsk+Gfu5L82EUa0jqXzWTyeRLo1F?=
 =?us-ascii?Q?bHYgSTkC2S6wfFtl5vvr5muOmdH9eguOcUNCtcFulZLHpbVCr4vTvhkY4s5s?=
 =?us-ascii?Q?mNGScdrrwh8SxgQYVRvFOsX0qn774Rpqg0hZiuwWPWHbsYkO5Q1C/joT2iL7?=
 =?us-ascii?Q?fAoIbpexceFhYD+1dsUV+th7ruLrYl+I8gfJdspuQyVNzX6kb5zuI6Xj3bkx?=
 =?us-ascii?Q?aeZEYzOtD6Ee0c0NFwd+LjbsNbxSVaHnKnbJ78Gw9f1RpFJYDz+xngIwB+Ro?=
 =?us-ascii?Q?QoPiuh+QOAvKTWQsJQDGZLqGtvSeKBbwjlAhtL7fu7Is+9neV2Snxe3ERL6d?=
 =?us-ascii?Q?ZegH5tX0FREroxQTxl63DFhyZKA/1hwLW1GaOqfHdZmpujMq1sif7VSXUqAx?=
 =?us-ascii?Q?SA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f19f95f6-c726-41fe-1c05-08dcccc14e64
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2024 09:09:39.5578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XywYNtwKeg9bgrzA/puiys2W3C1gLdipO1WawrpR70imEFkT8doRmoN/CDruiW8OhRmt9Zfjr3VBDhmC4nvnFNBgH9WYgcDc94k1ocIchphlDEZl82qAfU6FivZMit9G
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725441049; x=1756977049;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SmHmTIYM7DK5W4CvBsnQGA0A3tafacV4zQppy9DUQwY=;
 b=HRiUC1q5W3ki1tE895NmEaldylmSmIkjJDsuKR8lRj3GvKiFTTAh66G1
 RZrmIoHPgiW6Um21WSAelEXhoG0iMnHHguJxflIOqbDT35Cw+3YYCZHc0
 47GrK1sT0PAiltRemVp0fM/sJ+wPTIGvH47B3mnE4aLUTDz32V8oPyaIL
 IIqs6eAAwkarFvzfnjlTXigWZDJKuq1/3akU/6nSsm9Cb0VEHDqiKEajc
 GCNVTW6iM3GnIFIUEJ3FCXrhqxnZfUkszyVBLo/TcuTf1ivZ/jkTL41Vk
 dckD+JAokPLvnOWas5AVjOpxAGaYYZn0d49w0qYFBs/+MFpmotkEFnAwW
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HRiUC1q5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 2/5] ice: Add
 ice_get_ctrl_ptp() wrapper to simplify the code
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Simon Horman <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
ergey Temerkhanov
> Sent: Wednesday, August 21, 2024 6:40 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>; netdev@vger.kerne=
l.org; Simon Horman <horms@kernel.org>; Kitszel, Przemyslaw <przemyslaw.kit=
szel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 2/5] ice: Add ice_get_ctrl_=
ptp() wrapper to simplify the code
>
> Add ice_get_ctrl_ptp() wrapper to simplify the PTP support code in the fu=
nctions that do not use ctrl_pf directly.
> Add the control PF pointer to struct ice_adapter Rearrange fields in stru=
ct ice_adapter
>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
>  drivers/net/ethernet/intel/ice/ice_adapter.h |  5 ++++-
>  drivers/net/ethernet/intel/ice/ice_ptp.c     | 12 ++++++++++++
>  2 files changed, 16 insertions(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


