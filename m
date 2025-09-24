Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D7EB9A0FB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Sep 2025 15:38:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E436D81CD0;
	Wed, 24 Sep 2025 13:38:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vv4fIAm-Yb4A; Wed, 24 Sep 2025 13:38:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F509815D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758721124;
	bh=IiUz/NZ6eAHrd6b6CXA/xywAmNGWr2ZfzN/B3k2icbI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JbmvT7iOCLiuCRANkKTcHaUAyaInF1M5pMvXzoqoKFFqLMywP9JZD0GYbHke5QGvw
	 /elWYNiaO8w9K7BQ7PL/u8J0aE6euKpdxizGHGLz3M3YVJQZifTUDk5Rd2nfEgjcMv
	 ZUt8G5safKWFcCjArNl1+WPh280ZK8yWQZgzS4eiJvuRqv3Xti+3LfV6jnKA6gsd4a
	 R6rhjF4TpS7DU5W0BFOOEDaiDx6ttIssPhECGi/TO8mj54ioIZ1w3iq6TwgpJcaDmS
	 GEVEkFwgVdVdyZyRWQhuo5JvJOZcVpMeS+J7i6JNU7ckvfsCoi+mzJszev6f1R/uNw
	 mz1/qfH0sTJcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F509815D4;
	Wed, 24 Sep 2025 13:38:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EED65129
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E105A40692
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:38:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ql3d2Db-RmbN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Sep 2025 13:38:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7A24F40800
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A24F40800
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A24F40800
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:38:41 +0000 (UTC)
X-CSE-ConnectionGUID: XuYqRQPDSsmrC+jKcRFkUQ==
X-CSE-MsgGUID: 8vO77TwYTxSj0LWUWxjgNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="71638906"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="71638906"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 06:38:40 -0700
X-CSE-ConnectionGUID: gFcnFwW7Rsqru5xgE3cWaQ==
X-CSE-MsgGUID: k6kteW4WSAem6NBQRz5abw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="177807694"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 06:38:40 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 24 Sep 2025 06:38:39 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 24 Sep 2025 06:38:39 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.50) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 24 Sep 2025 06:38:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DGAiH0ZRgjor9cUlawLvgRhfzL30grFDp9LtrU0jw4TxY8uTgIc7X7AbIS9YowKE7wl1kge8vwDRUDy/TQpLrYv8RYk7PAYjbla0acqtVU7DLI4drA7tleBoXnmMKqqeCInYTkmpoMuExnqGiKH0klqvNPy+8MQOG7Dx1vfM0EokL/Cdot52IMeTEI+DGCygKqPBRdYVBqRTRVh46VN0EdzLR4lFM3C5tqJfvT4ExTngPEQhHN6ZIA0DqGiA6BaEj+JJJBwbQzZth032+qWG6R/uf4ITDzXtMzKXeBKvFLT8JrUi1X2I96oswDU7TqNr94tMth/A+xAp9IrtH76BsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IiUz/NZ6eAHrd6b6CXA/xywAmNGWr2ZfzN/B3k2icbI=;
 b=K2J51KiXgGis1VxVMNe2KUO/Uy+1/K2kQesy4hhjR1sC/oYLmbd8C5GF7pc4LfdDNS5WBLOS9ySgxaeb4lOHuPkTAuDuImcHGfFZxrH+DxVdfLgiCcLh9pjQG+siklwxNIyV2gbrreV/efhP2mxeoUBScqaDCmy7XWktmCnt53Zm/QV8TJuysBJ3wmYlkm1qukjsAPrCIHeH/C3D1gkeeeiNjlbbp8RucHWdmoKaS2kdNhTgDFBUQxGnspEHt3aUouPYAVZDjcBKHboAWO5jXV2V2sXi2OCtZcgnGHIeFrkKhDc+IuULPHe6LvGqW//IFAqhItrZdsQbhpDYpnfrMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB7002.namprd11.prod.outlook.com (2603:10b6:510:209::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Wed, 24 Sep
 2025 13:38:36 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9137.018; Wed, 24 Sep 2025
 13:38:36 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Jakub Kicinski
 <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Michael Chan
 <michael.chan@broadcom.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>, "Tariq
 Toukan" <tariqt@nvidia.com>, Gal Pressman <gal@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>
CC: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH net-next v6 1/5] ethtool: add FEC bins histogram report
Thread-Index: AQHcLVB+uBWqW6LjRk2juCxa/QO1RrSiVj3g
Date: Wed, 24 Sep 2025 13:38:36 +0000
Message-ID: <IA3PR11MB8986056877BF5CAF253F0F23E51CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250924124037.1508846-1-vadim.fedorenko@linux.dev>
 <20250924124037.1508846-2-vadim.fedorenko@linux.dev>
In-Reply-To: <20250924124037.1508846-2-vadim.fedorenko@linux.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB7002:EE_
x-ms-office365-filtering-correlation-id: 82439552-7be4-4d93-073e-08ddfb6fa99c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|921020|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?FwgsUDQSUnVReoTp/QrSB44Q9+56LcyIiGhvBAx0jghimjEUtNm3WZtV8pJ2?=
 =?us-ascii?Q?nyVTvTjhcxs6RAp0MBbE/ovWfxGDmY/JX9gN5pCTS0un/ZTdfju7spEbnfUz?=
 =?us-ascii?Q?2aNB9ZfDu/zjIwq6oPEGiEw7OdwD6b4jPgfRG0Ma4fHol/L9svuuV3XulIlI?=
 =?us-ascii?Q?dsf49ap8+e2COKzd+VNrFZqAlU3Hmk23NQZRdc4qua+qMAhhy6MrwV+w1AKP?=
 =?us-ascii?Q?8LxkD2GFEKhxP1lYxgaNYhXj841vbSTpVDjmUsQvYfFo9HWjqET6QBJqg+hd?=
 =?us-ascii?Q?iywKXK3FPvt/gkTJB4UBBZjXijPKgJYdZwIw8ciW+nEfaGyR3kScQIgrQA3W?=
 =?us-ascii?Q?iClN0EdMcST9zNERDsWqy44tkNRVwLMjUIXUrMntl11VDAztDdbFFJLQMeGZ?=
 =?us-ascii?Q?PJlWk1he7CsBdc2t3klrHIGo4LARn38LceLPz7a/8Gq42Qb0ZSyth+Z57cS9?=
 =?us-ascii?Q?0LpcIH96L7ZSTreANVYwv5WC4Af7C+sNGpWfa3jXxOGk0XltW2a+oM5nLbbf?=
 =?us-ascii?Q?pPjDACA3sns4alccgLfIk+d1Wb5JhU1VOLCiHaLCFoVU0UIqlUKipNSx3E2q?=
 =?us-ascii?Q?U7oTRQG/1ecxUOnLSwRve8yaReCbOeHAY2wbuSmXzZDkiWaJ0GKrFmtq719K?=
 =?us-ascii?Q?5z43d/u8ssEdCP6ceAf8vzPAVY1zm7D5zA5gFY361mBs61jL/QmGhuSUoEsC?=
 =?us-ascii?Q?gBVZ3HJNtQNQaF/izrOlxs55eMNsBLJOjHduvzAdf8NrJ+IXef/uWsl5u7p2?=
 =?us-ascii?Q?pIOMizoxkgxxU2OFkbrfdBt/hNCTlWTgGcWWrQJPqEDC6eR/iZu/g/xQIJfT?=
 =?us-ascii?Q?U0JluGLqtYDBEPWvuL1sc7gvsz4IQ2nNHF62cGkF9CSfOdUW4VzFeYIUXtsK?=
 =?us-ascii?Q?NTnZtAwUUiKaNMLHiWpr6rE2KOQB+o5FGxAkyp73+AJ0CiBx2b8bX7g3znum?=
 =?us-ascii?Q?WLvZbqLqEvqlGeD4it/NsSis9Vj8d+Wkqvu+hIoITb88bQ9MJZNc2GAzfLPV?=
 =?us-ascii?Q?NVMTqrMjD/vbY9MG3CfUgCHr4OJ0Oozh251Xmtc80GcA/o01SYjXO6xwyNrD?=
 =?us-ascii?Q?hBitBAefypxYeoEBpvRAzs5soQ8ykDTXRkv2OfHTyI74QbOP1oxKhPYkrhqu?=
 =?us-ascii?Q?GdFmJpuMZEgGOnwTQtS5IREuSXA48xFXACygdQ0VXRG5EG5gc6BKNABtx/7t?=
 =?us-ascii?Q?PKaszbynzP2KoSW0lEuK75KjhGdfQI/OhNXXFgjZ/Fni63A7G8eQaMCSmjYV?=
 =?us-ascii?Q?2ZLYD6yHFeNBQFEsvZlObWjnR5H4DPZu8FF/lh+4tDgfP2rNATtqgylFDeMh?=
 =?us-ascii?Q?ZT4wtFHe6ADGAn3YiNVmU7W+d10bnwsvii3c0V+f2bN6aTXgIEF7B3zXGrt6?=
 =?us-ascii?Q?f4V45RDhPK3IR9buXeFucqPHQS3bgVInr+xxfhbhis3m9AIDnLCIJqaOOGLw?=
 =?us-ascii?Q?kRcE7y3qZ14yZVaAOpExk0McbXPvGYuEch1D55IbLDwNUnjwhehbf2ZNbN5p?=
 =?us-ascii?Q?GFL9Op2BifqwbpU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tLQ85FfcA1pfi0hSky+lJcMr6psIOfPEpjeAquN20fzoRnac/ZNBZ0X3N3dc?=
 =?us-ascii?Q?GYxBLe9g/62X0kqpPqd26X7arOJ51cHgcLSZHdRMEVPb/dVPCviyndoWCRAM?=
 =?us-ascii?Q?4yVmbBZ2MA3GxIuCRdxL289gyJ6GwC+1/ssMAJj5BCu5kdQalqjL9gJbWPDD?=
 =?us-ascii?Q?lxdRSBVLG5+956pznB5YV+emS8f/PY1xHBTxr1CokrVzJI3alhSfDPpyt6CB?=
 =?us-ascii?Q?5JGP1ny39IxatfGmRc+/EORlRLy6ntozFIOgjDdhacWle7r4yBHDNuC6pDDS?=
 =?us-ascii?Q?M+8sHcJLt0/xpPW7oBMo0WLZ2Wzcb8o1TgGLAaSOXB3zEhViRelGth02gZUR?=
 =?us-ascii?Q?5XCFvhZltdZ/yhvNldY/sqQjZ4Eo369niNEZlgDbsCq4jQEndzD6WQYIIIBx?=
 =?us-ascii?Q?2x6mLvnpqmn1Za+qcwWWt4Z5lM4tlZ42A7m2Yn07WqGg0xZ2SuLO8GZNyeAl?=
 =?us-ascii?Q?xX41n05Walu2XO2LGEyb466JRjuhahlhRMbFFhfS+7DhEseyNo2Fyn474LbD?=
 =?us-ascii?Q?ibiYA/Y0HgM46SjJZcpmCzF8JnrmRKSAC5TeEYLqs97DYPuxs3NoYpdGKkhb?=
 =?us-ascii?Q?XWt7vONsa8hRl/x7yrGcHKnsqpR0MY+nNhjmnNLFlQ9xL7nYUxga+5269ygq?=
 =?us-ascii?Q?Z/lbQmuHjpf/tY+J4njbfOYKqHXVKB3QVsAN31A024JkxplJy0tnLKBFNTTe?=
 =?us-ascii?Q?LCXxwh4Kjcz7dxiFzvhzhGwQhVhw0/IjtWfTxBWimgHi5DrbgX+GOm/lsqta?=
 =?us-ascii?Q?lrk+yOAGNlv6aLEnX4W+1bgK9zUJ2difqrqwIGLkNlG4tbk/iW7sXKHRPgkg?=
 =?us-ascii?Q?zLYCFInC9R2QuqQLLrGhvZm+aByccW/iV6a36DkNCfZn402KGMxMi2kE/Aye?=
 =?us-ascii?Q?8wfJ1Hw/QcbreTOnn0bLMHehkves0ex3ZiZY5vazCWIQJXotnQBXMdQVA5Ct?=
 =?us-ascii?Q?48v7Ka36X4PsBVvMblv52P0J6MJtu0hqqf6Te+7u1xj75iW2o1G/7FzXVMhu?=
 =?us-ascii?Q?7CyYUB56Pu2oDZsuCbEFGOjuHvxt7bZjdUVJiOMvnVzVhTf7isActjjZ6S4h?=
 =?us-ascii?Q?pr3jn8tc4QzJkgyYaNLzHdKsviUiY1THEw+RmSHU0JOKBn0wYfEGusqJMWXE?=
 =?us-ascii?Q?TH9S1mnU4Ur/6xFc4urr+XdZmpvA9v1BzKsnAuGVLItadXY35yHprywVTq8/?=
 =?us-ascii?Q?CVZ1WxgtYI698fQzuSMMsMzV+hwLVH/VXukf+3yInW75Z0cohiUkeh88vhmm?=
 =?us-ascii?Q?N7mx0VQsMsgPk6leesyY+kw1d42/ZDjc51ft+vv/TPiX4PKBwIm6yGdD9CWa?=
 =?us-ascii?Q?ppG8nnAzwoGNFXcQ37+Q0BxZEEbHx43wqGqwWlSwJF8ffLS5JoR5fhRAz2/9?=
 =?us-ascii?Q?In7N9dgvROtOGBl7o5kYiel26LTWpZ9pQ6dPV3VYVttyz8epM5yHuaM5mt8o?=
 =?us-ascii?Q?Pkp/iUBzsXJiWFYbYOoNDT6Jk0qJXYIrmF88Tu+CGQET0QgOrWDdDclVIbP7?=
 =?us-ascii?Q?ZQxTcnPZpS52YT17zPwZD8k1c3X02K0pD0gHBEA+9g1dhFqacDfwtS/HEfEx?=
 =?us-ascii?Q?0THLE19mWumwuxxD9EzixelKZ4ZK4kdJHc9qZy6dgezTWttE4E4nespdurpV?=
 =?us-ascii?Q?6g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82439552-7be4-4d93-073e-08ddfb6fa99c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2025 13:38:36.1690 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vnvEE1RVHolbYd/Fej61Z1Zj+LVYPQbpAawdOVcuRQIAV8Jc8u/Wx7B1CaOoZoYBfTyFHsZGpsAr5A2rIJprbovk/sxTxGXGvd2JkHP84Pw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7002
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758721121; x=1790257121;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RLyawFC1CpUDBN9SOoVyhPW60xIJ0PEPPKph9lOl6dk=;
 b=YnPCFdcdxcPqK2pNcZiR6r/HfzwmsNnjoBPKOE53Y2fJHhVrL0b9G+vZ
 mXy7YMwNjJBVvTeHZIINaXGfX0aMw+6PA3NlMlxxRq9Gd87PakhtyOp+U
 Jg/ThTbEDWcd0AuC2Dfcf0T2W/DGadReIy3ztBeEuUbkHI3z7wvQuVYn8
 znBEHh8MP1CpjDwgWfzjcZgnmHp+b+KPjJw2h4FExthuJp4goJ+vg2rtC
 t+ize2mZAVbeIiZejCtxL6f6PPNzCtdzcg1kgi5Dlz72tAK/7eL5Z8MhF
 jpvDfz0D4J2OC7VVPr1NLGPLYqEMpe45HbNZIS+9dpRDdQiY3EYg+TNtC
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YnPCFdcd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/5] ethtool: add FEC bins
 histogram report
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
> From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Sent: Wednesday, September 24, 2025 2:41 PM
> To: Jakub Kicinski <kuba@kernel.org>; Andrew Lunn <andrew@lunn.ch>;
> Michael Chan <michael.chan@broadcom.com>; Pavan Chebbi
> <pavan.chebbi@broadcom.com>; Tariq Toukan <tariqt@nvidia.com>; Gal
> Pressman <gal@nvidia.com>; intel-wired-lan@lists.osuosl.org; Donald
> Hunter <donald.hunter@gmail.com>; Carolina Jubran
> <cjubran@nvidia.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Vadim Fedorenko
> <vadim.fedorenko@linux.dev>
> Cc: Paolo Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>;
> netdev@vger.kernel.org
> Subject: [PATCH net-next v6 1/5] ethtool: add FEC bins histogram
> report
>=20
> IEEE 802.3ck-2022 defines counters for FEC bins and 802.3df-2024
> clarifies it a bit further. Implement reporting interface through as
> addition to FEC stats available in ethtool. Drivers can leave bin
> counter uninitialized if per-lane values are provided. In this case
> the core will recalculate summ for the bin.
>=20
> Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> ---
>  Documentation/netlink/specs/ethtool.yaml      | 29 +++++++
>  Documentation/networking/ethtool-netlink.rst  |  5 ++
> .../net/ethernet/broadcom/bnxt/bnxt_ethtool.c |  3 +-
> .../ethernet/fungible/funeth/funeth_ethtool.c |  3 +-
>  .../ethernet/hisilicon/hns3/hns3_ethtool.c    |  3 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  4 +-
>  .../marvell/octeontx2/nic/otx2_ethtool.c      |  3 +-
>  .../ethernet/mellanox/mlx5/core/en_ethtool.c  |  3 +-
>  .../net/ethernet/meta/fbnic/fbnic_ethtool.c   |  3 +-
>  drivers/net/ethernet/sfc/ethtool.c            |  3 +-
>  drivers/net/ethernet/sfc/siena/ethtool.c      |  3 +-
>  drivers/net/netdevsim/ethtool.c               | 25 ++++++-
>  include/linux/ethtool.h                       | 25 ++++++-
>  .../uapi/linux/ethtool_netlink_generated.h    | 12 +++
>  net/ethtool/fec.c                             | 75
> ++++++++++++++++++-
>  15 files changed, 186 insertions(+), 13 deletions(-)
>=20
> diff --git a/Documentation/netlink/specs/ethtool.yaml
> b/Documentation/netlink/specs/ethtool.yaml
> index 7a7594713f1f..6a0fb1974513 100644
> --- a/Documentation/netlink/specs/ethtool.yaml
> +++ b/Documentation/netlink/specs/ethtool.yaml
> @@ -1219,6 +1219,30 @@ attribute-sets:
>          name: udp-ports
>          type: nest
>          nested-attributes: tunnel-udp
> +  -
> +    name: fec-hist
> +    attr-cnt-name: --ethtool-a-fec-hist-cnt
> +    attributes:
> +      -
> +        name: pad
> +        type: pad
> +      -
> +        name: bin-low
> +        type: u32
> +        doc: Low bound of FEC bin (inclusive)
> +      -
> +        name: bin-high
> +        type: u32
> +        doc: High bound of FEC bin (inclusive)
> +      -
> +        name: bin-val
> +        type: uint
> +        doc: Error count in the bin (optional if per-lane values
> exist)
> +      -
> +        name: bin-val-per-lane
> +        type: binary
> +        sub-type: u64
> +        doc: An array of per-lane error counters in the bin
> (optional)
>    -
>      name: fec-stat
>      attr-cnt-name: __ethtool-a-fec-stat-cnt @@ -1242,6 +1266,11 @@
> attribute-sets:
>          name: corr-bits
>          type: binary
>          sub-type: u64
> +      -
> +        name: hist
> +        type: nest
> +        multi-attr: True
> +        nested-attributes: fec-hist
>    -
>      name: fec
>      attr-cnt-name: __ethtool-a-fec-cnt
> diff --git a/Documentation/networking/ethtool-netlink.rst
> b/Documentation/networking/ethtool-netlink.rst
> index ab20c644af24..b270886c5f5d 100644
> --- a/Documentation/networking/ethtool-netlink.rst
> +++ b/Documentation/networking/ethtool-netlink.rst
> @@ -1541,6 +1541,11 @@ Drivers fill in the statistics in the following
> structure:
>  .. kernel-doc:: include/linux/ethtool.h
>      :identifiers: ethtool_fec_stats
>=20
> +Statistics may have FEC bins histogram attribute
> +``ETHTOOL_A_FEC_STAT_HIST`` as defined in IEEE 802.3ck-2022 and
> +802.3df-2024. Nested attributes will have the range of FEC errors in
> +the bin (inclusive) and the amount of error events in the bin.
> +
>  FEC_SET
>  =3D=3D=3D=3D=3D=3D=3D
>=20
> diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
> b/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
> index be32ef8f5c96..41686a6f84b5 100644
> --- a/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
> +++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
> @@ -3208,7 +3208,8 @@ static int bnxt_get_fecparam(struct net_device
> *dev,  }
>=20
>  static void bnxt_get_fec_stats(struct net_device *dev,
> -			       struct ethtool_fec_stats *fec_stats)
> +			       struct ethtool_fec_stats *fec_stats,
> +			       struct ethtool_fec_hist *hist)
>  {
>  	struct bnxt *bp =3D netdev_priv(dev);
>  	u64 *rx;
> diff --git a/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
> b/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
> index ba83dbf4ed22..1966dba512f8 100644
> --- a/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
> +++ b/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
> @@ -930,7 +930,8 @@ static void fun_get_rmon_stats(struct net_device
> *netdev,  }
>=20
>  static void fun_get_fec_stats(struct net_device *netdev,
> -			      struct ethtool_fec_stats *stats)
> +			      struct ethtool_fec_stats *stats,
> +			      struct ethtool_fec_hist *hist)
>  {
>  	const struct funeth_priv *fp =3D netdev_priv(netdev);
>=20
> diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
> b/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
> index a752d0e3db3a..a5eefa28454c 100644
> --- a/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
> +++ b/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
> @@ -1659,7 +1659,8 @@ static void hns3_set_msglevel(struct net_device
> *netdev, u32 msg_level)  }
>=20
>  static void hns3_get_fec_stats(struct net_device *netdev,
> -			       struct ethtool_fec_stats *fec_stats)
> +			       struct ethtool_fec_stats *fec_stats,
> +			       struct ethtool_fec_hist *hist)
>  {
>  	struct hnae3_handle *handle =3D hns3_get_handle(netdev);
>  	struct hnae3_ae_dev *ae_dev =3D hns3_get_ae_dev(handle); diff --
> git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 348acd46a0ef..dc131779d426 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -4624,10 +4624,12 @@ static int ice_get_port_fec_stats(struct
> ice_hw *hw, u16 pcs_quad, u16 pcs_port,
>   * ice_get_fec_stats - returns FEC correctable, uncorrectable stats
> per netdev
>   * @netdev: network interface device structure
>   * @fec_stats: buffer to hold FEC statistics for given port
> + * @hist: buffer to put FEC histogram statistics for given port
>   *
>   */
>  static void ice_get_fec_stats(struct net_device *netdev,
> -			      struct ethtool_fec_stats *fec_stats)
> +			      struct ethtool_fec_stats *fec_stats,
> +			      struct ethtool_fec_hist *hist)
>  {
>  	struct ice_netdev_priv *np =3D netdev_priv(netdev);
>  	struct ice_port_topology port_topology; diff --git
> a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
> b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
> index 998c734ff839..b90e23dc49de 100644
> --- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
> +++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
> @@ -1283,7 +1283,8 @@ static int otx2_set_link_ksettings(struct
> net_device *netdev,  }
>=20
>  static void otx2_get_fec_stats(struct net_device *netdev,
> -			       struct ethtool_fec_stats *fec_stats)
> +			       struct ethtool_fec_stats *fec_stats,
> +			       struct ethtool_fec_hist *hist)
>  {
>  	struct otx2_nic *pfvf =3D netdev_priv(netdev);
>  	struct cgx_fw_data *rsp;
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
> b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
> index d507366d773e..bcc3bbb78cc9 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
> @@ -1927,7 +1927,8 @@ static int mlx5e_set_wol(struct net_device
> *netdev, struct ethtool_wolinfo *wol)  }
>=20
>  static void mlx5e_get_fec_stats(struct net_device *netdev,
> -				struct ethtool_fec_stats *fec_stats)
> +				struct ethtool_fec_stats *fec_stats,
> +				struct ethtool_fec_hist *hist)
>  {
>  	struct mlx5e_priv *priv =3D netdev_priv(netdev);
>=20
> diff --git a/drivers/net/ethernet/meta/fbnic/fbnic_ethtool.c
> b/drivers/net/ethernet/meta/fbnic/fbnic_ethtool.c
> index b4ff98ee2051..b6e5bdd509f1 100644
> --- a/drivers/net/ethernet/meta/fbnic/fbnic_ethtool.c
> +++ b/drivers/net/ethernet/meta/fbnic/fbnic_ethtool.c
> @@ -1659,7 +1659,8 @@ fbnic_get_pause_stats(struct net_device *netdev,
>=20
>  static void
>  fbnic_get_fec_stats(struct net_device *netdev,
> -		    struct ethtool_fec_stats *fec_stats)
> +		    struct ethtool_fec_stats *fec_stats,
> +		    struct ethtool_fec_hist *hist)
>  {
>  	struct fbnic_net *fbn =3D netdev_priv(netdev);
>  	struct fbnic_phy_stats *phy_stats;
> diff --git a/drivers/net/ethernet/sfc/ethtool.c
> b/drivers/net/ethernet/sfc/ethtool.c
> index 23c6a7df78d0..18fe5850a978 100644
> --- a/drivers/net/ethernet/sfc/ethtool.c
> +++ b/drivers/net/ethernet/sfc/ethtool.c
> @@ -217,7 +217,8 @@ static int efx_ethtool_set_wol(struct net_device
> *net_dev,  }
>=20
>  static void efx_ethtool_get_fec_stats(struct net_device *net_dev,
> -				      struct ethtool_fec_stats *fec_stats)
> +				      struct ethtool_fec_stats *fec_stats,
> +				      struct ethtool_fec_hist *hist)
>  {
>  	struct efx_nic *efx =3D efx_netdev_priv(net_dev);
>=20
> diff --git a/drivers/net/ethernet/sfc/siena/ethtool.c
> b/drivers/net/ethernet/sfc/siena/ethtool.c
> index 994909789bfe..8c3ebd0617fb 100644
> --- a/drivers/net/ethernet/sfc/siena/ethtool.c
> +++ b/drivers/net/ethernet/sfc/siena/ethtool.c
> @@ -217,7 +217,8 @@ static int efx_ethtool_set_wol(struct net_device
> *net_dev,  }
>=20
>  static void efx_ethtool_get_fec_stats(struct net_device *net_dev,
> -				      struct ethtool_fec_stats *fec_stats)
> +				      struct ethtool_fec_stats *fec_stats,
> +				      struct ethtool_fec_hist *hist)
>  {
>  	struct efx_nic *efx =3D netdev_priv(net_dev);
>=20
> diff --git a/drivers/net/netdevsim/ethtool.c
> b/drivers/net/netdevsim/ethtool.c index f631d90c428a..36a201533aae
> 100644
> --- a/drivers/net/netdevsim/ethtool.c
> +++ b/drivers/net/netdevsim/ethtool.c
> @@ -165,11 +165,34 @@ nsim_set_fecparam(struct net_device *dev, struct
> ethtool_fecparam *fecparam)
>  	return 0;
>  }
>=20
> +static const struct ethtool_fec_hist_range netdevsim_fec_ranges[] =3D {
> +	{ 0, 0},
> +	{ 1, 3},
> +	{ 4, 7},
> +	{ 0, 0}
> +};
> +
>  static void
> -nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats
> *fec_stats)
> +nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats
> *fec_stats,
> +		   struct ethtool_fec_hist *hist)
>  {
> +	struct ethtool_fec_hist_value *values =3D hist->values;
> +
> +	hist->ranges =3D netdevsim_fec_ranges;
> +
>  	fec_stats->corrected_blocks.total =3D 123;
>  	fec_stats->uncorrectable_blocks.total =3D 4;
> +
> +	values[0].per_lane[0] =3D 125;
> +	values[0].per_lane[1] =3D 120;
> +	values[0].per_lane[2] =3D 100;
> +	values[0].per_lane[3] =3D 100;
> +	values[1].sum =3D 12;
> +	values[2].sum =3D 2;
> +	values[2].per_lane[0] =3D 2;
> +	values[2].per_lane[1] =3D 0;
> +	values[2].per_lane[2] =3D 0;
> +	values[2].per_lane[3] =3D 0;
>  }
>=20
>  static int nsim_get_ts_info(struct net_device *dev, diff --git
> a/include/linux/ethtool.h b/include/linux/ethtool.h index
> c869b7f8bce8..c2d8b4ec62eb 100644
> --- a/include/linux/ethtool.h
> +++ b/include/linux/ethtool.h
> @@ -492,7 +492,29 @@ struct ethtool_pause_stats {  };
>=20
>  #define ETHTOOL_MAX_LANES	8
> +/**
> + * IEEE 802.3ck/df defines 16 bins for FEC histogram plus one more
> for
> + * the end-of-list marker, total 17 items  */
> +#define ETHTOOL_FEC_HIST_MAX	17
> +/**
> + * struct ethtool_fec_hist_range - error bits range for FEC histogram
> + * statistics
> + * @low: low bound of the bin (inclusive)
> + * @high: high bound of the bin (inclusive)  */ struct
> +ethtool_fec_hist_range {
> +	u16 low;
> +	u16 high;
> +};
>=20
> +struct ethtool_fec_hist {
> +	struct ethtool_fec_hist_value {
> +		u64 sum;
> +		u64 per_lane[ETHTOOL_MAX_LANES];
> +	} values[ETHTOOL_FEC_HIST_MAX];
> +	const struct ethtool_fec_hist_range *ranges; };
>  /**
>   * struct ethtool_fec_stats - statistics for IEEE 802.3 FEC
>   * @corrected_blocks: number of received blocks corrected by FEC @@ -
> 1214,7 +1236,8 @@ struct ethtool_ops {
>  	int	(*set_link_ksettings)(struct net_device *,
>  				      const struct ethtool_link_ksettings
> *);
>  	void	(*get_fec_stats)(struct net_device *dev,
> -				 struct ethtool_fec_stats *fec_stats);
> +				 struct ethtool_fec_stats *fec_stats,
> +				 struct ethtool_fec_hist *hist);
>  	int	(*get_fecparam)(struct net_device *,
>  				      struct ethtool_fecparam *);
>  	int	(*set_fecparam)(struct net_device *,
> diff --git a/include/uapi/linux/ethtool_netlink_generated.h
> b/include/uapi/linux/ethtool_netlink_generated.h
> index e3b8813465d7..0e8ac0d974e2 100644
> --- a/include/uapi/linux/ethtool_netlink_generated.h
> +++ b/include/uapi/linux/ethtool_netlink_generated.h
> @@ -561,12 +561,24 @@ enum {
>  	ETHTOOL_A_TUNNEL_INFO_MAX =3D (__ETHTOOL_A_TUNNEL_INFO_CNT - 1)
> };
>=20
> +enum {
> +	ETHTOOL_A_FEC_HIST_PAD =3D 1,
> +	ETHTOOL_A_FEC_HIST_BIN_LOW,
> +	ETHTOOL_A_FEC_HIST_BIN_HIGH,
> +	ETHTOOL_A_FEC_HIST_BIN_VAL,
> +	ETHTOOL_A_FEC_HIST_BIN_VAL_PER_LANE,
> +
> +	__ETHTOOL_A_FEC_HIST_CNT,
> +	ETHTOOL_A_FEC_HIST_MAX =3D (__ETHTOOL_A_FEC_HIST_CNT - 1) };
> +
>  enum {
>  	ETHTOOL_A_FEC_STAT_UNSPEC,
>  	ETHTOOL_A_FEC_STAT_PAD,
>  	ETHTOOL_A_FEC_STAT_CORRECTED,
>  	ETHTOOL_A_FEC_STAT_UNCORR,
>  	ETHTOOL_A_FEC_STAT_CORR_BITS,
> +	ETHTOOL_A_FEC_STAT_HIST,
>=20
>  	__ETHTOOL_A_FEC_STAT_CNT,
>  	ETHTOOL_A_FEC_STAT_MAX =3D (__ETHTOOL_A_FEC_STAT_CNT - 1) diff --
> git a/net/ethtool/fec.c b/net/ethtool/fec.c index
> e7d3f2c352a3..4669e74cbcaa 100644
> --- a/net/ethtool/fec.c
> +++ b/net/ethtool/fec.c
> @@ -17,6 +17,7 @@ struct fec_reply_data {
>  		u64 stats[1 + ETHTOOL_MAX_LANES];
>  		u8 cnt;
>  	} corr, uncorr, corr_bits;
> +	struct ethtool_fec_hist fec_stat_hist;
>  };
>=20
>  #define FEC_REPDATA(__reply_base) \
> @@ -113,7 +114,10 @@ static int fec_prepare_data(const struct
> ethnl_req_info *req_base,
>  		struct ethtool_fec_stats stats;
>=20
>  		ethtool_stats_init((u64 *)&stats, sizeof(stats) / 8);
> -		dev->ethtool_ops->get_fec_stats(dev, &stats);
> +		ethtool_stats_init((u64 *)data->fec_stat_hist.values,
> +				   sizeof(data->fec_stat_hist.values) / 8);
> +		dev->ethtool_ops->get_fec_stats(dev, &stats,
> +						&data->fec_stat_hist);
>=20
>  		fec_stats_recalc(&data->corr, &stats.corrected_blocks);
>  		fec_stats_recalc(&data->uncorr,
> &stats.uncorrectable_blocks); @@ -157,13 +161,77 @@ static int
> fec_reply_size(const struct ethnl_req_info *req_base,
>  	len +=3D nla_total_size(sizeof(u8)) +	/* _FEC_AUTO */
>  	       nla_total_size(sizeof(u32));	/* _FEC_ACTIVE */
>=20
> -	if (req_base->flags & ETHTOOL_FLAG_STATS)
> +	if (req_base->flags & ETHTOOL_FLAG_STATS) {
>  		len +=3D 3 * nla_total_size_64bit(sizeof(u64) *
>  						(1 + ETHTOOL_MAX_LANES));
> +		/* add FEC bins information */
> +		len +=3D (nla_total_size(0) +  /* _A_FEC_HIST */
> +			nla_total_size(4) +  /* _A_FEC_HIST_BIN_LOW */
> +			nla_total_size(4) +  /* _A_FEC_HIST_BIN_HI */
> +			/* _A_FEC_HIST_BIN_VAL + per-lane values */
> +			nla_total_size_64bit(sizeof(u64)) +
> +			nla_total_size_64bit(sizeof(u64) *
> ETHTOOL_MAX_LANES)) *
> +			ETHTOOL_FEC_HIST_MAX;
> +	}
>=20
>  	return len;
>  }
>=20
> +static int fec_put_hist(struct sk_buff *skb,
> +			const struct ethtool_fec_hist *hist) {
> +	const struct ethtool_fec_hist_range *ranges =3D hist->ranges;
> +	const struct ethtool_fec_hist_value *values =3D hist->values;
> +	struct nlattr *nest;
> +	int i, j;
> +	u64 sum;
> +
> +	if (!ranges)
> +		return 0;
> +
> +	for (i =3D 0; i < ETHTOOL_FEC_HIST_MAX; i++) {
> +		if (i && !ranges[i].low && !ranges[i].high)
> +			break;
> +
> +		if (WARN_ON_ONCE(values[i].sum =3D=3D ETHTOOL_STAT_NOT_SET
> &&
> +				 values[i].per_lane[0] =3D=3D
> ETHTOOL_STAT_NOT_SET))
> +			break;
> +
> +		nest =3D nla_nest_start(skb, ETHTOOL_A_FEC_STAT_HIST);
> +		if (!nest)
> +			return -EMSGSIZE;
> +
> +		if (nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_LOW,
> +				ranges[i].low) ||
> +		    nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_HIGH,
> +				ranges[i].high))
> +			goto err_cancel_hist;
> +		sum =3D 0;
> +		for (j =3D 0; j < ETHTOOL_MAX_LANES; j++) {
> +			if (values[i].per_lane[j] =3D=3D
> ETHTOOL_STAT_NOT_SET)
> +				break;
> +			sum +=3D values[i].per_lane[j];
> +		}
> +		if (nla_put_uint(skb, ETHTOOL_A_FEC_HIST_BIN_VAL,
> +				 values[i].sum =3D=3D ETHTOOL_STAT_NOT_SET ?
> +				 sum : values[i].sum))
> +			goto err_cancel_hist;
> +		if (j && nla_put_64bit(skb,
> ETHTOOL_A_FEC_HIST_BIN_VAL_PER_LANE,
> +				       sizeof(u64) * j,
> +				       values[i].per_lane,
> +				       ETHTOOL_A_FEC_HIST_PAD))
> +			goto err_cancel_hist;
> +
> +		nla_nest_end(skb, nest);
> +	}
> +
> +	return 0;
> +
> +err_cancel_hist:
> +	nla_nest_cancel(skb, nest);
> +	return -EMSGSIZE;
> +}
> +
>  static int fec_put_stats(struct sk_buff *skb, const struct
> fec_reply_data *data)  {
>  	struct nlattr *nest;
> @@ -183,6 +251,9 @@ static int fec_put_stats(struct sk_buff *skb,
> const struct fec_reply_data *data)
>  			  data->corr_bits.stats, ETHTOOL_A_FEC_STAT_PAD))
>  		goto err_cancel;
>=20
> +	if (fec_put_hist(skb, &data->fec_stat_hist))
> +		goto err_cancel;
> +
>  	nla_nest_end(skb, nest);
>  	return 0;
>=20
> --
> 2.47.3

Thank you
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
