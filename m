Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3F4A7F3D8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 06:55:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3DB98108F;
	Tue,  8 Apr 2025 04:55:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p9W7dUjcBWMa; Tue,  8 Apr 2025 04:55:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9E2781090
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744088153;
	bh=osHq3uBmrrO/JSKYLNE6W+07PD/t//6trMG6MF1J4yA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rlMPQ7BTdDT9jhjoZvz3daHQHSRCqk/HMGJyGZ3Z+MEmDWFrz6nywOZl3bityb2UQ
	 aCF8YY1ssIcHABs3LdUpWrKbdTJ43GrDIHEusEmPO8qw5MpBiaYRfepI5Su828RNVf
	 lsLCDrmYbVMPCSH4abMaR3RX6vi933mz6sZxb4YPmUyncJlQXRbQE+S6DuTR2JPWFx
	 KJKDUXbgcjWuejLXLkC+7fzqkHI8ypB9jCzgJyuRc4wKq9NwzhFh2XDB3+oHvLINkC
	 +o6iNfjMnNLXB46+F+mz5uYVGQA9Q0PrLBZS1cZ3F3AdgmwLvqTawLtoM9uYsuBnW0
	 q06uwlEV2hJEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9E2781090;
	Tue,  8 Apr 2025 04:55:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D5966DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 04:55:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B426140181
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 04:55:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id axbYcc_g2E04 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 04:55:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 32E6B4012A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32E6B4012A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32E6B4012A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 04:55:48 +0000 (UTC)
X-CSE-ConnectionGUID: FxUOAtbkTROK+3ScSJHG8A==
X-CSE-MsgGUID: /nugmGE5SpOEeD3R3mFOpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="62903268"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="62903268"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 21:55:48 -0700
X-CSE-ConnectionGUID: DNyvs0I0SeSRkWoJf9jpuQ==
X-CSE-MsgGUID: IEqm6LdHQDOgD0bWblgtZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="133309802"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Apr 2025 21:55:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 7 Apr 2025 21:55:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 7 Apr 2025 21:55:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 7 Apr 2025 21:55:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wKmDxMm0kJCqamfFSQg2pl4kK3xKBOALCGYOvQAbGqP7Vvek5ajROWgtNRx3FolLZVDG8ujaBvU8Gt5hfKX14RnxRTgnb1r8JxAnd4EyBZq4u8lNErXOtaURb7PqYkO0TwNrMPIngdVzoXMAjdTY7oUxyGvXo2R8NuJniFXz/0cgDaWVA66g8RXgrTZ3EskHAzU46mB8th0tWCUzwrddJpQlMnNf7O0iUyol8ZEKzjsdpo8codpHATGItM2MscOASX0Z6r/zdYq51K38EFtGW4m++6BuAsZhJYYmbhGmVBs528QBM7zQN4LHWHzTmAsGLQSd3Oqgvuv3nL+NMP5PcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=osHq3uBmrrO/JSKYLNE6W+07PD/t//6trMG6MF1J4yA=;
 b=FuAb4hbjCShG+UITGLLHoaDaZU0V6C5JbYCbpq5fbzi8/Yx7zGrVfo1ROC2MnJ8JKmPUfa4p3YV0fd5fV2VAj6iStK/Hbr2RbIK/yfIGFpuONLNY1+eQDPI8qWHOW8vHpLpeakmfp4F3vNf3LJAku3QSl8B6hyIL/f4q0V6GxLFKBnjnx+jOgSl/aYlSJDbD1g9Vn9npnP9pURRNaceL0af5+UnnV0udLP4IkG3QaLq1dbictimZxjBPCYb+LFxKIq9OeuFyDpIniP+IutLG4y/HWWs8UjkxLgB1LMVi6/1Yb8WWzVuwWPIDceROXht9uXAQOGznPg/tszFONMAQqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by PH7PR11MB7449.namprd11.prod.outlook.com (2603:10b6:510:27a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.32; Tue, 8 Apr
 2025 04:55:14 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%6]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 04:55:14 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jesse Brandeburg <jbrandeb@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, "Dumazet, Eric" <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Richard
 Cochran" <richardcochran@gmail.com>, "Brandeburg, Jesse"
 <jbrandeburg@cloudflare.com>
Thread-Topic: [Intel-wired-lan] [PATCH intel-next v1] ice: be consistent
 around PTP de-registration
Thread-Index: AQHbqBO7essJg8d+s0OhQYezwOT1PbOZNImw
Date: Tue, 8 Apr 2025 04:55:14 +0000
Message-ID: <SJ0PR11MB5866428A3D9E154AFA71AD7CE5B52@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250407232017.46180-1-jbrandeb@kernel.org>
In-Reply-To: <20250407232017.46180-1-jbrandeb@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|PH7PR11MB7449:EE_
x-ms-office365-filtering-correlation-id: f7816134-8f8e-4297-778f-08dd76598cc1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?3HDmY8tYRVvNgRvGp6W3R9uciQTlPXLBnsxo49CnG+3ahXU5I9Kq7hj6BgB/?=
 =?us-ascii?Q?loM8aEZm18JNNdl1daw3vfRBSYIuyTnOdOwf4X5AD/xfDb742Bm+4gsp3rYI?=
 =?us-ascii?Q?ckOegmMM1tYLHNAPlYiX0X1VT7e8jLEc7QIyl4O9g76psFd1KP+VtvG+iPb6?=
 =?us-ascii?Q?uhj5avXqSCkL+z6kI1zhoDkRg6fCkIdboHHMj5U7LUGj7Nfhk11y7ONql/bF?=
 =?us-ascii?Q?TdDY5DPWObqADOgIr9oqqbfCg08D1GDi6YGY8yoNTcaWbMTWvdCaETGWeynV?=
 =?us-ascii?Q?IjzGKKG+W/0BDsYs/uzykZNF9oYAKp9zkl6gb431m9McA6LNXfQdrXWn/T5U?=
 =?us-ascii?Q?EyDX8IlP5v+2QTdNSW/AkMfOj5jF8ofHsl+D+aItD3clnw1SFQl7Y7YJlXvi?=
 =?us-ascii?Q?3EIK57ftqZ67svCe9vn9rYf38rZCNfnxmR/jQsYVnw8oG8H6RV1Xl3Yi5OHW?=
 =?us-ascii?Q?B0K2y7RhvNN+PyOe6SJUZE37MbUsSY5U5utsELPKwB4oPN/KRNDBAcvGDtva?=
 =?us-ascii?Q?toNVhtLdLKgm28EwxHlDbrzPwc0jm9js1DNqpNW6qOrGblviWzNsxNusBhJ3?=
 =?us-ascii?Q?/a8eUN8l9dmCYEIJ7n64INMHWwIr875WnrqJumbmTK4Nx2SgpFTVrMLU9mQH?=
 =?us-ascii?Q?c5ahJHHuTYt1aSw3Glh+0CwPcXbKcXfkh/Hfpv9hmoygeuRhTLzGEhCU+WTH?=
 =?us-ascii?Q?BYnayQDtWp/PVaDQkbjHEXnd7buNPKHyP6YTbdbDEU8OffDEYRqr1qElm1GJ?=
 =?us-ascii?Q?i9iTU5DjZT5O/sNwDoJ/3fn1BZ/5PTWSulZ5ywLE75tqnvCU45f47eziNZBS?=
 =?us-ascii?Q?4D91VtXDBkk6pyyFph5qfSrH4RYhuq555E8JER66bFzBn3ARWe/vb79lhN8q?=
 =?us-ascii?Q?zObdRQNTprHm6HEANLjmdVLTZHhKB1TZnJIi+evyJ/Sr6bBYyBE8wo7aUw1r?=
 =?us-ascii?Q?g1FQ3TdWSTjeMuc4Z2T5NENIBPFJEqn6nq73XE1TZKn1/j+xnY4Z3UZ9KwGg?=
 =?us-ascii?Q?fLaMUXYFUQkianSRoktvIKKCZSyRe1OAub17B4z78BOmijBIZCagInVAE92K?=
 =?us-ascii?Q?+4rpoGZr/8v5jffateEOEQdUmu00DcvJMjjM3SC1VmD95Jjdpxv774R+qim1?=
 =?us-ascii?Q?c4BLG0wwQ6bDHbdOWjJ6f6ci93CQIt9AcApIbxIyjSY4J4Krw2SYRGdNbKf/?=
 =?us-ascii?Q?HkrTGMws2WYkK0idLILdSF7VHWu8Ydb4plrO6EqgzMGhM1hFDyaJAkOo6wn0?=
 =?us-ascii?Q?26kT1DdYVDHf0Y0UthUQxMciM+b5ZZigqAf3TP2rtdW7i7g/5n/qt6BwLNDz?=
 =?us-ascii?Q?e8lHE1+PhdNKgRrcFlw0pObPXiqEKljlOpiHhanEVp65gnNPW3EzHOzgpJr/?=
 =?us-ascii?Q?/18oP4upUAD/lgDe//MULLxWLdzEYfHe9xVp5bD8JeIaNw7Qx9io67nt+Ygc?=
 =?us-ascii?Q?0UANlHbcjSaB/3RImnMGXXkG6B5pwJCcJlJOr9rUPO7WKozERj5GtA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+85F+0NWqbPq1Sm2BTGudE8oFONNIaoc0pVxal3YV7Hn0xf5o3x7jkYuJZ3v?=
 =?us-ascii?Q?mobIt3cVp2DeVv764IRwvAS3WyxOqQMZ4H7OyZs8GTkYlzwgYyUfnPy6MJXr?=
 =?us-ascii?Q?LjST1nfG5hpOFvFqpYSMu1PeOTSJ+OU0MvdMUhduTAyH55DblfDDXn1rY/St?=
 =?us-ascii?Q?hbtOuD9eF8F8KyvivqeHeQkEfLtsqdZqnm31s7gEG6m76DKaB2R6NlF1YeSs?=
 =?us-ascii?Q?HlBzuwtEZBkFQ93eYcNvY+YvJYW7+eUMKhwGGAiKDMjiJ2Le+HggCRrB/lka?=
 =?us-ascii?Q?c1NsHnIyxDczWSlQ/zhDiCeBCxXYdkSbPp3FT+Q4NKoE1QwFRdykfdpATdAF?=
 =?us-ascii?Q?i6ylTG3QEEwGpsI1yezZ+3I2nic9d+aXB9L5lwXimfSsR8B7sgUgd0PFBQ0b?=
 =?us-ascii?Q?Lqyb+lfDbzdp73LMCzb1aHN7k2Ld9xgn7dAWYWyO1haQVyilZsnsSBaQgjON?=
 =?us-ascii?Q?joZ8a4S9++p9khSbfb28ujECRKrqFGaMHn76a/8/36OR4TNL45Q5/AVDRZ4H?=
 =?us-ascii?Q?KCBEid0Zwzn1PQOylJx2kGl4bMj4wAM8tpY82sxPJtSOTrk/Yt3GWJ40OgIF?=
 =?us-ascii?Q?AA42Rr28tVUS8scp5vGq67t6HP+rE1r39lbAKdYTyH0X7f2SnX3PTaUKCJZ8?=
 =?us-ascii?Q?4kBSYtlpuAxMSXGjUuNeiMns/FXlo+qhTTinHK3XT2sppl2TfJuC984QzDmn?=
 =?us-ascii?Q?edWmYEXlkSbUYOjlS7S2ydfhIuXiPcuKUXkp9vcMXEbkiL4h0YGLS97IY5eg?=
 =?us-ascii?Q?P61pFPAjQacG1wr2isjyvBsW0nb/ThQ3YGWAlF6DSs6oaX33H3ln0GR4sGUY?=
 =?us-ascii?Q?yWt2y0s3yrtpeDWIR+cxEOUjRIsVFlvh3Nmt1xPj9bdOp/h796kIpkXGtqR4?=
 =?us-ascii?Q?aZPhd/tUFHNEtN+y1ottcxK+1Umx2ztw83hMVcfSP8PUgM7AQT0bHJuQxvM9?=
 =?us-ascii?Q?JpxVspG5+HJa47J0f0JohJ2Ou/NltWIp4O9sPjAbANzGDe2eWQxfy/+2f0rc?=
 =?us-ascii?Q?nWTFX6urOSnkmJGaF+uLEWB0ra3CoiWp1i5b7bZBJ6e3+4AYBIuBWOUbG5Ar?=
 =?us-ascii?Q?xMMTZfAkI+w72gbfGbd4y/dZ+ArVBjUeS2L7+KfXQdCOnm3/UdkIjaokoOd0?=
 =?us-ascii?Q?9gvHwRh3wjeusAoFnVDLfsCxW7Nws2ON7KbIXyuJpioHk2F4sAaHvuabkfpL?=
 =?us-ascii?Q?c6R0Q/k4jtvsZBDa6WAhfsqL7dwGV33ZMqQc+d5GJt1MKSSG5solYtTMAwoB?=
 =?us-ascii?Q?RJG17qi11ooaaOA9Y0TYMAkM/8rQCBuJJiNsxGwtd/Eu97gaJSkShlBLu7Jm?=
 =?us-ascii?Q?pDscLWH7DXEuNLouEN5eNI8DfiiQ/1ORR4nbtgSFs58PFUNXN/lDhxKJ4QF0?=
 =?us-ascii?Q?pTaMh7g5KSsh2tr2UA5NLeeIgzX1FhaiRgXBqqrrToyKHZoynK2Xne+YKNrx?=
 =?us-ascii?Q?x8/S+O+nPxlHpOZ52qAIMyhuJ1QlrUNhWXXiUbAxknrOSOpfQNgDYA7BqQsq?=
 =?us-ascii?Q?a+FCdDi8hElkX44TbmK48zmcjxyiVQRVPbdQZdCr5WR6yGnbkozwefDuRAvN?=
 =?us-ascii?Q?s+hDSe6ArCDk+TRc8v0CZEr5ja4082m+0eN4CWMiiZfl1znndWtrgi9rwINz?=
 =?us-ascii?Q?Eg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7816134-8f8e-4297-778f-08dd76598cc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 04:55:14.1960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pGyzvrYU8M/RTdZDkXm4sY2r/7+PukAv6a07ufOdOTP3gVe2Th7LcB6NiYFyx1KldudF9gdGYGLmVciuY12Chs6ndJ9r5uEW5XHiMTXppUU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7449
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744088149; x=1775624149;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gnC1agaE+r+wdKAc5FgOeFOncb3vVpEQf9YCx6o7lk0=;
 b=TE80PPiJJBrQX6NvwyJueFe8oz/NbVWlzuEJzuV7ALHGtWMu4pv62rtv
 WhhtFiJfyuVL3YbMJjZvNfwwn0V8Z74AjXeVnWvhbdv/FgLPvzpez52HL
 NWViVQw+0p9//J7t/NYuyPymJ6uEjiGSyEd8Gv3qB2dmDJlLng+ZGu8Ee
 ws4QtRuUAMi37ZZ/jN53OSK2XgjlvkubNMopgqLGH1fENYf2g/LAiQ4vh
 cV6ime4k9kJxBX4GrMxBA5TC9w3EGUUPuE/6q00k5YZyPfg2rXtBZJ/KS
 DGlGNaObuemLisIBvttt9s4DbM5SdNND3q8/Wek7thA6SDbNJsXW+BA0I
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TE80PPiJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-next v1] ice: be consistent
 around PTP de-registration
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jesse Brandeburg
> Sent: Tuesday, April 8, 2025 1:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Dumazet, Eric
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Richard Cochran <richardcochran@gmail.com>;
> Brandeburg, Jesse <jbrandeburg@cloudflare.com>
> Subject: [Intel-wired-lan] [PATCH intel-next v1] ice: be consistent aroun=
d PTP
> de-registration
>=20
> From: Jesse Brandeburg <jbrandeburg@cloudflare.com>
>=20
> The driver was being inconsistent when de-registering its PTP clock. Make=
 sure
> to NULL out the pointer once it is freed in all cases. The driver was mos=
tly
> already doing so, but a couple spots were missed.
>=20
> Signed-off-by: Jesse Brandeburg <jbrandeburg@cloudflare.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> NOTE: we saw some odd behavior on one or two machines where the ports
> completed init, PTP completed init, then port 0 was "hot removed" via sys=
fs,
> and later panics on ptp->index being 1 while being called by ethtool. Thi=
s
> caused me to look over this area and see this inconsistency.
> I wasn't able to confirm any for-sure bug.
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 5 ++++-
> drivers/net/ethernet/intel/ice/ice_ptp.c  | 4 ++--
>  2 files changed, 6 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 049edeb60104..8c1b496e84ef 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3968,8 +3968,11 @@ static void ice_deinit_pf(struct ice_pf *pf)
>  		pf->avail_rxqs =3D NULL;
>  	}
>=20
> -	if (pf->ptp.clock)
> +	if (pf->ptp.clock) {
>  		ptp_clock_unregister(pf->ptp.clock);
> +		pf->ptp.clock =3D NULL;
> +	}
> +	pf->ptp.state =3D ICE_PTP_UNINIT;
>=20
>  	xa_destroy(&pf->dyn_ports);
>  	xa_destroy(&pf->sf_nums);
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
> b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 1fd1ae03eb90..d7a5c3fb7948 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -3407,9 +3407,9 @@ void ice_ptp_init(struct ice_pf *pf)
>=20
>  err_exit:
>  	/* If we registered a PTP clock, release it */
> -	if (pf->ptp.clock) {
> +	if (ptp->clock) {
>  		ptp_clock_unregister(ptp->clock);
> -		pf->ptp.clock =3D NULL;
> +		ptp->clock =3D NULL;
>  	}
>  	ptp->state =3D ICE_PTP_ERROR;
>  	dev_err(ice_pf_to_dev(pf), "PTP failed %d\n", err);
> --
> 2.43.0

