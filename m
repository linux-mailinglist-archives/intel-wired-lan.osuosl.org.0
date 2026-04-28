Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APG3ATd08Gn5TgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 10:47:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5225E480815
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 10:47:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8322411AC;
	Tue, 28 Apr 2026 08:47:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gmw7isJEoBpv; Tue, 28 Apr 2026 08:47:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C71A410A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777366068;
	bh=ybkORzFNB29M14NF+p3LSOFuqiu6R2AE4ApIL7z7ay8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wdDcBlyQfNLqOV0lWIeV+1zbDPgYdgcxOejVt2IMutgBJlnlYppAVTRhAQbvpyTAe
	 +CQVAChtB4uBTjdOkyJuDKzo+hoNK4Rq7Moieh2ZVGOsQpqB0/yXaebJA6hGwZhftJ
	 e4OKTImQpcca/Pszql3WAfVugqJSZwzF0I5I6aiINqJ3NtWKP5UjOQUjcFdTs3SWjf
	 E+DmcrzxqAh3SNcJO+6GeANJE58fKp2TXbnexU4ji6nXUWgyq8hx9yi2wQ5LOJpjmf
	 eOmLQEw5+tVRQsuJC2QYJhn+W0bZQskz8mDobfocnsPIjRCDb8xdBaHQN+ovPtCjvW
	 a4UnMwuzp95uw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C71A410A7;
	Tue, 28 Apr 2026 08:47:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CF7C423D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:47:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B4F4B60F1B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:47:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f6MQleCTy_Fr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 08:47:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BC45860F11
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC45860F11
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BC45860F11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:47:44 +0000 (UTC)
X-CSE-ConnectionGUID: xRLGut0HS6CcztQb7mLxAQ==
X-CSE-MsgGUID: JMmXWdcvT1+Q1/wK1WkoIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77972727"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="77972727"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 01:47:44 -0700
X-CSE-ConnectionGUID: ZTtVUEI9Qbqr57722JnJVg==
X-CSE-MsgGUID: c56dWMN4RLWWuTJ9xafhjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="233845476"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 01:47:43 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 01:47:42 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 01:47:42 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.26) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 01:47:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bMqIjO9VnuB6zpP+aTKFoZCdWh7qJT2TAOCR6yhL6ngQmP+9/xZKcxV/g6g6+B/0TXJW6bKE7qBCKmTgJWGayVZlKmGBczRu69qjxgj26C5pSt9GNu/ZALFzUe06upL22UEcTBYyHqQjlCp02BdBU7/Xb++yDGFEU0lntN9AIuHd6VKSrBkw5ZSiSws2PGuVgE1Zru3dwhq+Q8Ec09NRUgD6HZW2Dxld8diwNpR8DsikxOAqKLEsC1IjgWNWTTynFNPhj9SSXd4x9fKOC8xvwsE+68SjLwxfoMlaDtnlHPnENpevspvJRetQUQ80vdTRe2/AA/6n8pt5HWZpySw8Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ybkORzFNB29M14NF+p3LSOFuqiu6R2AE4ApIL7z7ay8=;
 b=dE40fufjkyCJF55yIwvneq/0mxrLFqAvGpjFdpYo6I7m+5qw5sx3biMcxK09s7ii9n07iklNbYoxHpN0+erpi9f4vPCkf6EiIarDh9QMAREvwFo2KxbvzglQW43ZFL8CqPJvmhfeAvqw8lXSq5eGTUMMK+kXNvxx6iwfm1rK0i0cd/v2ExUNLPDFTgMXZyOB/lo0kXPIWdfW0+EJM0+PvjGPakkVFZA5Q/qvMxjslFkSwI1hP0eNZBtmuFXZtwBMmR8jgpNe9uROhCi1RmqOivu+aTzSaVOFFxBnw5U0UFYET1uU8FjIAqtAVM63tdVldvDnHx8jtdpGZ3Tahma1Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA4PR11MB8964.namprd11.prod.outlook.com (2603:10b6:208:56f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 08:47:29 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 08:47:29 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Salin,
 Samuel" <samuel.salin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v7 07/14] idpf: refactor idpf
 to use libie_pci APIs
Thread-Index: AQHc1ujyZSMaxGI7NE+CoLBnF9lmm7X0KUQQ
Date: Tue, 28 Apr 2026 08:47:29 +0000
Message-ID: <IA3PR11MB898658952B56FC5666A64EE2E5372@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260428082654.44364-1-larysa.zaremba@intel.com>
 <20260428082654.44364-8-larysa.zaremba@intel.com>
In-Reply-To: <20260428082654.44364-8-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA4PR11MB8964:EE_
x-ms-office365-filtering-correlation-id: 2fc410cd-93bd-45e0-68f8-08dea502c7b2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|1800799024|376014|366016|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: UmUvij+xkqIEEjF3xF6BCUdwBYuvp/Q9b9R1GdHlJq2LXUiRz9/es0g/zPUkQF4OpOwZKscSvvXDSdtWRLT+1KnQXgvSQuQmq217BhIRP7FZMBMjIBfQHrpsiNXJBZWitu9HCzjKLvg/pdGVy3YttmyxzG81lyYrNeDQJeZaMxFb7ILUfx3COE+3JRyPjnsGc/W+r8D7RCEO74Gt27pIsfqk3q4OQNXGxMrQz2U1liAE6UR4VdaI9RirioV3DwlBAD+d90SyJqYbwMRhUF5Bar20I8Xfsa6GuqErnZm2t+/L7G+x2s9cay7KbTYX2WW9BgSnizbcoEtWs5eeJ0K55amZysoCSOImBmKh8kDpPK0GZZFwGxwqO56qXONCPTb4pDXyrXPHJSRLQ1IdpI7Da3b3ooII+vhZpO1IsUcIVX8+WDZOCFif/Sgiy8ioxbnkcSsWR09JdX5mJCFnJ/HOsqPIkbUirFOnX099Gy/h6AklgpXBea80r4YuH4LlhHxpHQu9hVdN6s1wBgte/59t0rfZ19AksOLRT8+0JoIFOSoaT/tVgBnZgT0W4kqFqSqL/8dQM41FtKspCbYkN8TNtrJzsL8cG4JH60XZ0EfmgKfYxsEe7bMVMUF9ifSbyS3auUVFWNAxVDhgl1lqjTXzC0u8JkFEo3rk5bBhCEfqWm1LfWz0ASitcCpJ6FOP23grlHVeutJkJTjFdmm+2W9NhUp+x/pIw+fgEr5EjrpCT2h3mIh7XY20Y4OxMESHM2ltQQUrADbt1T5NaA+cAC4cnwE52drvc+g4q9N80iRYZnw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(366016)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Fkp2WXJPIzUbjj2/TW0zR8cwklJPSHvmeu4RYWVGUQVDCzfeCx7jlFhXE+B0?=
 =?us-ascii?Q?mYl9iUHVOx/1+8J0NVvb2oNR9yJtlY4ZVfcB6HwemnXfvTLVpcxOxRVfnQiM?=
 =?us-ascii?Q?6OGSNTh7Fav+JVcUdLYVbSoMdzIGyhficwIgnWsxI3JA+xCEJAUIJZkYt+9c?=
 =?us-ascii?Q?AGsxBUWGx5h2kdCdXA6TjyjsYd2wPsbBnQqg01rk7UcDz0muXl6zATb4PnpR?=
 =?us-ascii?Q?LRVYilUrmPu+RXZdP52yQN9QEeXTclxVZ9GObjvjqhG7VsAtNQItReelDJNX?=
 =?us-ascii?Q?HsP4hO/cBba+plKbqKTzVH8ZUHTeZ3i/9o+MuNCJxd9UHCV/dJU357T+TfRa?=
 =?us-ascii?Q?0HIeO+9qbzC29om4jMf4AEk13ATETNLv/1OC0nHk94LafjbhxapvNNJ64K4M?=
 =?us-ascii?Q?H+STHBgqyhKL5A83EU8qlRYODzP+VuUrj2xQIk/RG31IXw3CsrWgyvghtMdh?=
 =?us-ascii?Q?wkcMLKWVVzWKn672qIak+jBzXlVAIGS430NPot139jYNg/URrCQbDfAOqF6+?=
 =?us-ascii?Q?qyxw1XJC50zTpUTdbhHEhH1/PAbxt104X1793JSgJQfMby/qoUXpLyov+yhS?=
 =?us-ascii?Q?RUlkszCwPNvBH1YymZTEP7M8RFVIN1UBd+d3r7D0QzAWEl9xZ3U6Pi+zBipB?=
 =?us-ascii?Q?THN7CMfgjLtbd5CJGDKfj3ctSNsPCvWME0yKX5deBTGiGA+BR2tgi9MgUQ/D?=
 =?us-ascii?Q?Mosd/51dUc49PKmbngJoILZWPGHZeTbq/GaFze3H8gmt6eXY62W2BltcUGSb?=
 =?us-ascii?Q?u+DRcNyTxuhBEnChae9HYdeXO7PSs1vhW0x/QGEru9v7VgZuurFRpHg/W1O4?=
 =?us-ascii?Q?KqF+FnXxs9G9WFh98KhISFqxchJhI1Xd86Wi+JTQWmYWMP3D9ZAjCHmhZy9A?=
 =?us-ascii?Q?8pkmw8QL/oJfEwpHZXaANC6KZmvhNCoIrZibOHVD7ZDFQOs0MXrOvtgiHPrJ?=
 =?us-ascii?Q?U/jxUujVBC16ZKfS/WXWMa5SG1xQ/afMcnHZJwVPvqkxdJlGTtE37mc50TC6?=
 =?us-ascii?Q?DP3xNs49KiaG1BFWiaoLi3gDAZukh94jCd1x//MASSltIwa2URY6wLZUeUy1?=
 =?us-ascii?Q?saxVQHG2gvClOqmgl9Bt0ELh3DKHA453OtRykoRXsokYbDqwFyYmcPv8uSQx?=
 =?us-ascii?Q?8JFmC9MFJYylChU1dpaRK5eCm20oRJhgIOAC0XH+zEP1RyS4kgCWCsNwaS6h?=
 =?us-ascii?Q?p00cFwikSI9gbaZjAwB6UnXxIWhjG+aToORvWYUP7DQf8+waJpqIzVQNgutu?=
 =?us-ascii?Q?5Kat56Xe9ULJspzbX4iQbkY1qdEeVPSQgWT9f/XIsc4wKL+QbmvLd4qStCoJ?=
 =?us-ascii?Q?P8jYLL6QPipvIor9dwqUsL3LPY8X7qtA3ALLOFWycAK0GJqo1+38gMQeNZ2g?=
 =?us-ascii?Q?PxLmkGINnfU73aBO/zFYZ3SeUKi2CYZ2yyNA7VZtB5tuNG2cNDYcoLwTxU7H?=
 =?us-ascii?Q?tYBw0WI1a5Z1kgT0mFRLsW2QHqmzNyL5VFBDBhy0AaZ7lsu0z+zbsbUdKY1M?=
 =?us-ascii?Q?3gxx+RGlOSOsfVE8C7sSAzTfNBNkh6JRBTzWC3QLKeRdi6RNkmJQ4HKrlTxa?=
 =?us-ascii?Q?tEGmL9K7MivCGeu7Wfcvp3D27vIc+oqv5wwkXcV2MS6Oaf8ZL15HSx4LG/7O?=
 =?us-ascii?Q?eqDy53dL6NAmVdUfccF3YHEBDAbcc3CVsnjxGlkNJHsYn70evOgYvvVBdtbL?=
 =?us-ascii?Q?N5AXqy2CqAdLScUQfXnLTxsoN+NXWUEyNp/ppw+kKde+ihmKpkd+bDLtEmom?=
 =?us-ascii?Q?ZYPWcmdVqO0OJsnrWdOZHMvbQumauLc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: vfeeJI8WQwBOMUTBHzlSqpQXvIpyWgZGyGW6xo/an3M65H1j+gyrxV8NDijNOeEGJGhu+VSg8MyVS69p3OjpYpaI7OslCZJ+iRFxUpdaFkvE9mT3hE4xtrzpWx9LYLTqZ8tw4R1YUuzEmntN8bn5ZZu9fOClfdJlkMZktNqFOkVwCMk6ckmoW43AvcKAVuQ/T0y1/HO4tEoCANjIuds0m8L7PkV7rJSMQJJr6nWZ1cczOAwXiaJ42AGK80HYEDwhkEBXcIKOB9EFmATq4xyO4pXxnHnbopKwAobNfjtyWyuedm2k3HPWd27pAgwvhfRNnTjsRo2J3pnE4f/0kG/ORA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fc410cd-93bd-45e0-68f8-08dea502c7b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2026 08:47:29.1666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pdnGXtWm6fqZhtG1U6knr4kzAnTspsM7miBtC4nXIolydQ43EZaCWJMOiUmGuXR+xr3NpKjWAM69R0C3nPmC30I3q3H/vhQUqiznKuNag7A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8964
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777366066; x=1808902066;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zlQjR6ONi4oWuUweLQThC7kw5ciVMN0A96ssgHhlBQ0=;
 b=j6P56OS23XbhX1zoa5AbRCE/+bTgNZapVhu8SrBvZ+hh0DnVhmE4fp32
 McVEdKRns+nQKhYu5L7URuA2rt7xOV/NZLcyLxmzAvs+KBh7y0mFDJoxv
 Q+ZeE8x4hxgnmxfi1WcQjW4HXe6Z+DehoGmORpPnNl6G5BXN4e2QuBf9T
 c09oj2LAl6JwWge74E9MYT4xJkludKd8OX1zZuaFNW0e6dGHXck0+MGN9
 DEcSVnpdiJ3Mu5CeQb5wxncBUhXYXjvH4d/pyZCE4V78As8repFhKWoxm
 sCoPIoB+9Wlkm9Bf0ugwYw01PIhLkmh6xRemjvqac0OH1IotdlkGYs5AF
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=j6P56OS2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 07/14] idpf: refactor idpf
 to use libie_pci APIs
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
X-Rspamd-Queue-Id: 5225E480815
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:samuel.salin@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Tuesday, April 28, 2026 10:27 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; Salin, Samuel
> <samuel.salin@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v7 07/14] idpf: refactor
> idpf to use libie_pci APIs
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> Use libie_pci init and MMIO APIs where possible, struct idpf_hw cannot
> be deleted for now as it also houses control queues that will be
> refactored later. Use libie_cp header for libie_ctlq_ctx that contains
> mmio info from the start in order to not increase the diff later.
>=20
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/Kconfig       |   1 +
>  drivers/net/ethernet/intel/idpf/idpf.h        |  70 +-------
>  .../net/ethernet/intel/idpf/idpf_controlq.c   |  26 ++-
>  .../net/ethernet/intel/idpf/idpf_controlq.h   |   2 -
>  drivers/net/ethernet/intel/idpf/idpf_dev.c    |  61 ++++---
>  drivers/net/ethernet/intel/idpf/idpf_idc.c    |  38 ++--
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |   7 +-
>  drivers/net/ethernet/intel/idpf/idpf_main.c   | 114 ++++++------
>  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  57 +++---
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 169 +++++++++--------
> -
>  .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  58 +++---
>  11 files changed, 288 insertions(+), 315 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/Kconfig
> b/drivers/net/ethernet/intel/idpf/Kconfig
> index adab2154125b..586df3a4afe9 100644
> --- a/drivers/net/ethernet/intel/idpf/Kconfig
> +++ b/drivers/net/ethernet/intel/idpf/Kconfig
> @@ -6,6 +6,7 @@ config IDPF
>  	depends on PCI_MSI
>  	depends on PTP_1588_CLOCK_OPTIONAL
>  	select DIMLIB
> +	select LIBIE_CP
>  	select LIBETH_XDP
>  	help
>  	  This driver supports Intel(R) Infrastructure Data Path
> Function diff --git a/drivers/net/ethernet/intel/idpf/idpf.h
> b/drivers/net/ethernet/intel/idpf/idpf.h
> index 0d08f51be7e3..efdb58990a8b 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -23,6 +23,7 @@ struct idpf_rss_data;
>=20
>  #include <linux/intel/iidc_rdma.h>
>  #include <linux/intel/iidc_rdma_idpf.h>
> +#include <linux/intel/libie/controlq.h>
>  #include <linux/intel/virtchnl2.h>
>=20
>  #include "idpf_txrx.h"
> @@ -625,6 +626,7 @@ struct idpf_vc_xn_manager;
>   * @flags: See enum idpf_flags
>   * @reset_reg: See struct idpf_reset_reg
>   * @hw: Device access data

...

>  	for (i =3D 0; i < num_vecs; i++) {
>  		struct idpf_q_vector *q_vector =3D &rsrc->q_vectors[i];
>  		u16 vec_id =3D rsrc->q_vector_idxs[i] - IDPF_MBX_Q_VEC;
>  		struct idpf_intr_reg *intr =3D &q_vector->intr_reg;
> +		struct idpf_vec_regs *reg =3D &reg_vals[vec_id];
>  		u32 spacing;
>=20
> -		intr->dyn_ctl =3D idpf_get_reg_addr(adapter,
> -
> reg_vals[vec_id].dyn_ctl_reg);
> +		intr->dyn_ctl =3D	libie_pci_get_mmio_addr(mmio,
> +							reg->dyn_ctl_reg);
Stray TAB after =3D

>  		intr->dyn_ctl_intena_m =3D PF_GLINT_DYN_CTL_INTENA_M;
>  		intr->dyn_ctl_intena_msk_m =3D
> PF_GLINT_DYN_CTL_INTENA_MSK_M;
>  		intr->dyn_ctl_itridx_s =3D PF_GLINT_DYN_CTL_ITR_INDX_S; @@

...

>=20
>  	return 0;
>  }
> --
> 2.47.0

