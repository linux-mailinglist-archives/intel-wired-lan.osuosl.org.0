Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A9AAE9187
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jun 2025 01:03:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D14DF61645;
	Wed, 25 Jun 2025 23:03:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KWTqCEPvnsbs; Wed, 25 Jun 2025 23:03:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3CEF6169E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750892588;
	bh=kTfwWyCGWxT4XI1aUBrqHJW2YtioMgb5iIMcOMoFPIA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SC10ehec/KtcaPajiTcGCBYK8NMKwyM0owiITbslK6Qm4BWsTLGfezX4cvZoF1WKm
	 oM+OW5NYw+IcW8FK5JLj9HCBjYnr7DlBdXUedywMKj4XQHTH+VWnBImIEAtId4eSWQ
	 dEp7KIwEGm6OXUqwco9l7ZRIbAMRqopied53QUSeuKBb7drcGXCkhi5cyYn3nUu6AX
	 CT7j6rFkSIMUjApaktySpX34hnoV9J3MtTSZK69LMIqMs5JUEV/rwTZBzSUDxnTcDQ
	 E5PGeDkuYkIwWshUQNQque1wDDHiGGOT9XyOiTrI/NZNm/Al2JNR86FlzpiloEdrId
	 vdvT1wai0R5Cg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3CEF6169E;
	Wed, 25 Jun 2025 23:03:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8C83D154
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 23:03:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 71AEE421D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 23:03:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S1xyDJcZoMnO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 23:03:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B8C444215B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8C444215B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B8C444215B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 23:03:05 +0000 (UTC)
X-CSE-ConnectionGUID: kKg5M6bmRY2+kUAxEJMMkw==
X-CSE-MsgGUID: 4EwGIV1PSfeuN3/jkNNo0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="53245742"
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="53245742"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 16:03:05 -0700
X-CSE-ConnectionGUID: 7d3M5d0XQW2DR8Jrko7Wmw==
X-CSE-MsgGUID: DFs74ziQSfOtPyoDntt5sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,265,1744095600"; d="scan'208";a="151870550"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 16:03:05 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 16:03:04 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 25 Jun 2025 16:03:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.82) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 16:03:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ePzYAsAmcNneI9/ecBFPGFImuj+GiDXE8pvTEIOgPzNKgZG+q83hm1eYdg/GOhWr8ng0tT1cCRqqgwxksmaIl7RgfTEgo4Y3mJ7ECC2bNd3rORajiAUSSwiH63BiTK80iZI5J4IkTte1Vyt54nYLs6pl7hEpY3eLZxv16Ib/Jl20FI3T+C1zZhicVKv+wzb7VZTaF3UcA32SCTGCY9KzGvdHfbhPz9G4wGRuFWrzo3UNRfnGpCGpKcOLw0sI2LWoKYDRVULnrdLuRhifnHIoVGlNLOe79xafsMVm7bUl9Whp1xPoSxzOmEfnnaZRdB6q5VPCdjs9BPbvSM7Awt+w2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kTfwWyCGWxT4XI1aUBrqHJW2YtioMgb5iIMcOMoFPIA=;
 b=tvXmYEGHqeREJVYik54h+nV2FYj+xMEd+9pFz4cYGgsyLG6D9z5jm1YIs+fSnKwv9LhUo+pSkUg8eoEI30YJ+hzTUdUm1NDYphN23w3oGn0ThKzakw3kfJVKdmIbT/hrxeYGvMRQLEgXBLnU5R8UPUl8BXLaJ7udVK/PBb7NuUW+B1d2MaOlM0xGIkfCgN+mZE9oX6KcASDUPnzHAfhVTxcovFzXA6qqGrAft5FpbwE4use/yEvisZ41Zhg49PXr7Nsd9QogXCnb+k6VFoM3yRwaXm1R/Hd0Ggff+QmTvwzGJp6PIWsUO9b6dgPoBYhIN/AplKSFxsi5gnKixmL5YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by MW3PR11MB4619.namprd11.prod.outlook.com (2603:10b6:303:5b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.30; Wed, 25 Jun
 2025 23:02:55 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b%4]) with mapi id 15.20.8857.026; Wed, 25 Jun 2025
 23:02:55 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
Thread-Topic: [PATCH v2 iwl-net] ice: add recovery clock and clock 1588
 control for E825c
Thread-Index: AQHb5T1xOO6+IT+Ef0qMnLx9wxO/C7QUfq/g
Date: Wed, 25 Jun 2025 23:02:55 +0000
Message-ID: <IA1PR11MB62196753E2FB0861830B59CF927BA@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20250624192211.3043049-1-grzegorz.nitka@intel.com>
In-Reply-To: <20250624192211.3043049-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|MW3PR11MB4619:EE_
x-ms-office365-filtering-correlation-id: a45c192a-6544-489e-4f59-08ddb43c6bd1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?xZ+RcqeBSlVuUVHHEFsbYKxMUuUi37DYmTgyeAbXitxai6aw5EHGubT2RP1u?=
 =?us-ascii?Q?aezRwX3sggmTsstTNRGTdaqXL0Sy1iamNpUC9nooi1Bk5YStT4rTgu/z5vLV?=
 =?us-ascii?Q?O7cW0nNJMn/2B0e1k8rLlB7zTTUmK3yWwDxcXZoemnlmLmbTU+8ARnix7qli?=
 =?us-ascii?Q?sLWSwEji1NY653CYHnp5T5e+vCYy0EGrw44+lGImUuTf8EazTSuG6UYsi06z?=
 =?us-ascii?Q?JEf8sjAgCLkO6VnaHF1vlrJdH6VBut5cznKwkNf2DVoJYWof2JfKMeezrxKf?=
 =?us-ascii?Q?EWZEaonHSWRrJodROC2aKPRii/oDSySvFgrCDYodFLoXiWzNtktz10lfiK7o?=
 =?us-ascii?Q?fYmbB2z0SoCo2R6IjS5MnJkJiBl7zCCvE8PP1x2yhd9aOK18coumlBmVsewt?=
 =?us-ascii?Q?ux5TZ/dN4JHBvLLzZOPA28XGdz5w2VctvOQkmgggYwyt/MJtKrumF+8jwIZN?=
 =?us-ascii?Q?uVKmI06AVhLmX12cKRpFxNq4GnPzkG8PFsl90ldSYT+m+d+Vhfwjq5K4PgNB?=
 =?us-ascii?Q?GUam5U8uG+CzmhGk1M/pqevhhrPoa3jkyktpgM70Ca8Ol/ttq6B//76ORRkL?=
 =?us-ascii?Q?8F2XIw2SsTYsEoWuvtbRtm2Q3S97s9BZt+mQuZ6zIiZvKL70FPWkdnSbSoTL?=
 =?us-ascii?Q?IL+KQrNbro6oYPOkqQLIU7sbkm/HditggRKlBdYTVtfQAg+w5CIxdG5Saxoc?=
 =?us-ascii?Q?bDhLNYxztxNJbo839t/544r8hsATnxldvQNn22xcuxiBb6zWpspYepfpQUFj?=
 =?us-ascii?Q?Q/FYlHhOPN4b/0XL6zjAckv0ifjOfoamJeKs43mEGsoPaNYJAGlGnbSPkj9x?=
 =?us-ascii?Q?CggoYgpHDpLE8FuEZW+zLOhZhK3ZNHpk69DZ7HeJBYDtw7JwswYlPJ1zWaPF?=
 =?us-ascii?Q?fAM9JAqbdfzZGsT7cxe+7IUSfFKsyN5hQUKOZW8S4LX5ILzA3a8RShLWdSW3?=
 =?us-ascii?Q?7vhaOdf07SbrXc0yEZ9ZNukQ2SRlT4ibCv/2+fxgjnqrwkgdbdijMtQNGp0i?=
 =?us-ascii?Q?SuJCGagHtXHigpgE3TGteQYAcXYANq9gC7c44iL+fEdX+pGi8NlBP0QpKY0A?=
 =?us-ascii?Q?dwhAAIGd/rCyK+cMND3rJ5008/WdJSudmN029Nuj5ekDjihGNV3cBfEragca?=
 =?us-ascii?Q?rB3q8rX3NEzONnBDdy2JjvfM8+sb70/7oPeW/geJVFhtxIga4bH6XCxjWRJV?=
 =?us-ascii?Q?W8Zq0bkm0GCJNiy44N8q7bxNQyXZ8UFkTpO0+X1vLvW6thTVoSnNNxPHIagj?=
 =?us-ascii?Q?84wUuR7qRy0l/VwsyiDAdglQChgrOwOOZx8uxlLY92ypq29B4NoxpfbksaAG?=
 =?us-ascii?Q?2ffHacFlP6kIDEt5re/jnjBdFBcJYfHIfDOVmiq+7qqBi721UTWam+i5Q69J?=
 =?us-ascii?Q?o0t4mDtXJVXdwyYS/NYWXWXmLrv/GCqr+KOl9mqUz5DmW/eMW5kRdZdbUAZX?=
 =?us-ascii?Q?xeo0Wy+GCxq0UcB28qBQd/xwiK3ij8ozBNF/MiMtrSrGK6ALIu2klPCjDq4x?=
 =?us-ascii?Q?Cq0LVtwJknXTxKo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YRjGeZrv6hSDmrUt1IA1crqIfvRxdiKILR5kKQfzO1/B3LrIJjNFO0pBP+fO?=
 =?us-ascii?Q?r8F88kY4QnmUKSUMxV29s80nhUQaU3N0FZ7TTXbni1u9BPNRWSVVHRsaNvCt?=
 =?us-ascii?Q?HZAPgtRTaueG37Rk65gcZQal7PopIxmsd2IdWvH5KQkJvXovZJT5DinfV6EZ?=
 =?us-ascii?Q?B3tpaGZLGb4TG4QxZ+09qgxHcCY1+bQP0nd2Wg0dgggsk9xVf3ROgu7k/KNh?=
 =?us-ascii?Q?hF8yi6A1EoGVMO7Hhy8xdJ9RE66m5spJ3v9kkGs6vH9ixXVKHBrkRfZnGEf3?=
 =?us-ascii?Q?7d27QTTwBUw8VzHFckRqMEiyHSgkIScyoI15b4WbAWSYSIO+pKrZqy7NfR7M?=
 =?us-ascii?Q?/ikMLOfavyHdZRPjtUNB4DRsJIRbQyFIHZEZfi2El8XXH8oBkZCnq6dJ60Yn?=
 =?us-ascii?Q?gdlZhPOq/hQuKvcIgQpREy8ykzKCvHT8Yxlv026yoBJWgdU27UF7XY2QG8fv?=
 =?us-ascii?Q?FXQRaNlFKEdhvMBldkzO+1cxufc7jphgos+I+xIFuFlsIFGLQmK7Y81AiDow?=
 =?us-ascii?Q?zbqjHzv172AaBluoAYBDpuNoDJeS0fBMM1FQoVEj8+gPw7qo4Pm4fT/zDpp+?=
 =?us-ascii?Q?EWSPGldp2kXSsC3PWaWIgU3oSNjPeyWLTMjz/Rnc/8iDDrQJqlq9S2eTDUNW?=
 =?us-ascii?Q?3NQNVHdEQdWMVlW8hjuDQ8Px1c/mFCC2UAd+j7wlDmJFDG539yFkxHWfgZP8?=
 =?us-ascii?Q?ioer6SA1ngFCIf5cHcjPTvQho+hbSD2WAp12g9ACpn6tOmLUVj9iAf+tl9TB?=
 =?us-ascii?Q?kVn+Gvv40b0dUoxAisqVJrEcuOO8Ed5ezNimpkjT0bB1mbbJiPgUsNE/q3qO?=
 =?us-ascii?Q?rS87YkPRR4qpHAIJnds3QeryMUvfppRaHYvH8u1gyKaNpsBzyBV3+/5HkpH+?=
 =?us-ascii?Q?t3irO3idDFEKdYuJyQCcjMHdtVSKtOpWY6dUX/YMGShR2ZUqnNL8K6ecvgFM?=
 =?us-ascii?Q?B73e3N+FCIk5v3b++iIyPSnBrn+WKxSsyRXS8+FaR2w2Xfj5Xf/HSy0sd7ec?=
 =?us-ascii?Q?ro7I0Wqxby8kzRPbFcLEq+JFVAKKGaiuJ8I/V3OzcwiRGlRSlb8GNO2GEJoe?=
 =?us-ascii?Q?Q6PZ+1gKC5DL+53EEjq+tkvkwKn8znUUlu8hgOfOIkwN/43P3jq6wO6Bbi6R?=
 =?us-ascii?Q?/MrAC0O0od9GyqB6LF3a49/H0cTlSvQ3VPswQrrT2FiOlKKxH+EOH1t6EXHN?=
 =?us-ascii?Q?KNoqrnJXYkNQBnz2iPujLP2kZOQ/wdpPU8zafW+3hwgTywV6VlrrZyqhDuF3?=
 =?us-ascii?Q?EfR5LE4QBZDd9Q++OMVmFaUkc9wMWths4ai6FKcMxr2eIbh+PoRI4FeUKa5U?=
 =?us-ascii?Q?7p+Q+VpZ9SYFblw+gqChrkT+tJRnJnnPrSFLI0453l5QcsAlVIl+Zpf6v7H/?=
 =?us-ascii?Q?3T/K//dvjAJ6dp7bJRJ1ziWQWqOxk5X2+QKkC10wMIpV/kYnJg4hKyfb4lTn?=
 =?us-ascii?Q?IILWvFHsNmKau1haHAuQvrf2gQlXUHuntiVqa/4kyIkmD0/+N1y40ZUIlNtv?=
 =?us-ascii?Q?k91uMB0ABGZzew00Fg5geW+LlcsEbSSVaom/O+e40TtoLSOs9GDwXRjGA3aO?=
 =?us-ascii?Q?Q4u/PbW1GgFGDzq1Mxvn3ZDzrW9d3Nws8iT3drPn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a45c192a-6544-489e-4f59-08ddb43c6bd1
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2025 23:02:55.6309 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6c8HqpLnsE5zYqJs/j5Fp0WbT6nrtNuEr/jemC1CJxdmxWZQ8PlWnAtzOLQ54vwoycW/a3X7LhBE1ObSr5j7CXC13Y1WM1BpR3g3bWBSRog=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4619
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750892586; x=1782428586;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6QVFkLQqQKoE1onkK9JOsQAtZd8A02Hgd8kBtE+3yk8=;
 b=THxkBV9XnxUvoVQgox1nRxq49TUGpUhsKRHWuTx6EpK3XoOZFcaSVepZ
 zuz6VWbz9d88eUD6d9A2vWypyn+k+sWeGpvBv9UpTdp8VWmCEHDzYpU7y
 z3BCbuivALaegMzrDUjdyYYsT7FUnmfidNAjv15uiKNa83YcJMA+RT2cd
 coLHmohYLBBuldEiIjT+UnJAt0UZMqc5vXCRG1WsZngq20yej/EmYITRt
 ZmSZnK3dqeYZUnHpRmM80U7ItKxsAz+vdeN0CnvsgCv8UJY9Z7+ECcc8H
 35HGYc18P+3/isVApZPLgM4zGKql4DL6gSR5P4lQs6EEdAkLpK8xF61Qf
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=THxkBV9X
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] ice: add recovery clock
 and clock 1588 control for E825c
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
> From: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Sent: Tuesday, June 24, 2025 9:22 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Olech, Milena <milena.olech@intel.com>;
> Korba, Przemyslaw <przemyslaw.korba@intel.com>; Nitka, Grzegorz
> <grzegorz.nitka@intel.com>
> Subject: [PATCH v2 iwl-net] ice: add recovery clock and clock 1588 contro=
l for
> E825c
>=20
> From: Przemyslaw Korba <przemyslaw.korba@intel.com>
>=20
> Add control for E825 input pins: phy clock recovery and clock 1588.
> E825 does not provide control over platform level DPLL but it
> provides control over PHY clock recovery, and PTP/timestamp driven
> inputs for platform level DPLL.
>=20
> Introduce a software controlled layer of abstraction to:
> - create a DPLL of type EEC for E825c,
> - create recovered clock pin for each PF, and control them through
> writing to registers,
> - create pin to control clock 1588 for PF0, and control it through
> writing to registers.
>=20
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
> v2:
> - rebased, addressed comments from v1 (kdoc updated, removed unrelated
>   code changes, fixed undefined 'ret' code in error patchs, use feature
>   flag instead of MAC type chacking)
> - use ptp.ptp_port to create pins indexes instead of PF ID
> - removed CLK_OUT/output pins definitions as unused
> - removed redundant dpll_netdev_pin_set call on 1588 pin
> - removed checkpatch warning about SET_PIN_STATE macro (parenthesis
>   added)
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c   | 823 ++++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_dpll.h   |  26 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c    |   3 +
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  35 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   2 +
>  drivers/net/ethernet/intel/ice/ice_tspll.h  |   7 +
>  drivers/net/ethernet/intel/ice/ice_type.h   |   6 +
>  7 files changed, 839 insertions(+), 63 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index fc9f40aff251..a33b04d549ea 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -9,6 +9,7 @@
>  #define ICE_CGU_STATE_ACQ_ERR_THRESHOLD		50
>  #define ICE_DPLL_PIN_IDX_INVALID		0xff
>  #define ICE_DPLL_RCLK_NUM_PER_PF		1
> +#define ICE_DPLL_PIN_1588_NUM			1
>  #define ICE_DPLL_PIN_ESYNC_PULSE_HIGH_PERCENT	25
>  #define ICE_DPLL_PIN_GEN_RCLK_FREQ		1953125
>  #define ICE_DPLL_PIN_PRIO_OUTPUT		0xff
> @@ -61,6 +62,7 @@ static const char * const pin_type_name[] =3D {
>=20
>  static const char * const ice_dpll_sw_pin_sma[] =3D { "SMA1", "SMA2" };
>  static const char * const ice_dpll_sw_pin_ufl[] =3D { "U.FL1", "U.FL2" }=
;
> +static const char ice_dpll_pin_1588[] =3D "pin_1588";
>=20
>  static const struct dpll_pin_frequency ice_esync_range[] =3D {
>  	DPLL_PIN_FREQUENCY_RANGE(0, DPLL_PIN_FREQUENCY_1_HZ),
> @@ -515,6 +517,107 @@ ice_dpll_pin_disable(struct ice_hw *hw, struct
> ice_dpll_pin *pin,
>  	return ret;
>  }
>=20
...
> +/**
> + * ice_dpll_init_pin_1588 - initialize pin to control clock 1588
> + * @pf: board private structure
> + * @pin: pin to register
> + * @start_idx: on which index shall allocation start in dpll subsystem
> + * @ops: callback ops registered with the pins
> + *
> + * Allocate resource for clock 1588 pin in dpll subsystem. Register the
> + * pin with the parents it has in the info. Register pin with the pf's m=
ain vsi
> + * netdev.
> + *
> + * Return:
> + * * 0 - success
> + * * negative - registration failure reason
> + */
> +static int
> +ice_dpll_init_pin_1588(struct ice_pf *pf, struct ice_dpll_pin *pin,
> +		       int start_idx, const struct dpll_pin_ops *ops)
> +{
> +	struct ice_vsi *vsi =3D ice_get_main_vsi(pf);
> +	struct dpll_pin *parent;
> +	int ret;
> +	u8 i;
> +
> +	ret =3D ice_dpll_get_pins(pf, pin, start_idx, ICE_DPLL_PIN_1588_NUM,
> +				pf->dplls.clock_id);
> +	if (ret)
> +		return ret;
> +	for (i =3D 0; i < pf->dplls.pin_1588.num_parents; i++) {
> +		parent =3D pf->dplls.inputs[pf-
> >dplls.pin_1588.parent_idx[i]].pin;
> +		if (!parent) {
> +			ret =3D -ENODEV;
> +			goto unregister_pins;
> +		}
> +		ret =3D dpll_pin_on_pin_register(parent, pf-
> >dplls.pin_1588.pin,
> +					       ops, &pf->dplls.pin_1588);
> +		if (ret)
> +			goto unregister_pins;
> +	}
> +	if (WARN_ON((!vsi || !vsi->netdev)))
> +		return -EINVAL;
> +
Still leftover from v1 (no need to check netdev).

> +	return 0;
> +
> +unregister_pins:
> +	while (i) {

