Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gEClHL9poWkUsgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 10:54:07 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F78F1B59B3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 10:54:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A15F819B4;
	Fri, 27 Feb 2026 09:53:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NyeBNaz6ySY1; Fri, 27 Feb 2026 09:53:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DC5B819BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772186038;
	bh=4b9RwXxuuxar8aSHin2NCmmDbNU+pkhHTh377NsAEYY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DRzqe1FYdtvJWN3p4dJPvLxB0J39DkJ0f7Uo3umYP1QCj6+caqCAjDJOMIDb4eejl
	 1mnUOfL0VNYbb/hjN0BYIckA8nQzBc8uI/eaTj7gjo0g2WjlhE5uxs/601b+mL4ldM
	 Avty2YDokXoT0xcG8kp2c0umw8LNguRFEyTsUM1CkjYpRxc6JCa5jwxd17f6uDO0tk
	 uaaMLY2qacBaRp9O0r78nTctBhNVvbU8goDKKgAhsDSMeipmr1tGOr2U2JPGlAaxWy
	 fe4qZfTlFkA/ZAd+V8fc8JGmI6kYjVOzlrDUqwMaT+KjDyu19pCA4H2ozIASFtyk0f
	 Czr0/DMDZpamQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DC5B819BC;
	Fri, 27 Feb 2026 09:53:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 710F3204
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 09:53:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C25481992
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 09:53:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9JoXf4t61yVm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Feb 2026 09:53:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5FEB981991
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FEB981991
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5FEB981991
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 09:53:54 +0000 (UTC)
X-CSE-ConnectionGUID: 8YJMM+bNQiO7EJHW/9/RlA==
X-CSE-MsgGUID: YUoTUkKSQHW9eZNkP1Lbjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="73449996"
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; d="scan'208";a="73449996"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 01:53:51 -0800
X-CSE-ConnectionGUID: LSGsZzcISPWm27/npwCOsA==
X-CSE-MsgGUID: Dn1M+KB6SqWfNYmfnSUHog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,313,1763452800"; d="scan'208";a="214292200"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 01:53:53 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 01:53:52 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Feb 2026 01:53:52 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 01:53:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nStvjJz9rvl9F7ZU9IXj3ri/uUxIQQJIlOfXIuyue1nr6PYMxqS+IjRLMJ2Bqjrt2KaGmZJSOF0djt2GXjOB2gbETLu4fu9P7+y9t8wXwPOoN7xGBa2Mhe796E3+gf5/dZqqUPfdnMIZdcOsRoXOcGYZMFWuqsqfpQcVv2/nFphqDAV1oxyENo2L6nnYUWS18peaDee0yKb8u+u2Nu1VqNKT74AdRvPAE85TI7uFbIsWWj7ELG5JGPd2jy2xlPBTYZJDhTco7G8W+2LqLMbfeH2M9UeYkS2Ta2jMv5EozcqKx+Qq4U/ymBjjiHjH9P8gPAlwcQN5PswwJrdGVf71pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4b9RwXxuuxar8aSHin2NCmmDbNU+pkhHTh377NsAEYY=;
 b=hEDWN4Wvc9WlAYcK5nFru2yx8nodkQC9Mq0taFXII0nSt9NSElnhrTgc7wwmisEwussQpEX3qEb/rwagl2nLWq5V0z5UYeyVEqbVNaE4TuWnh8ArrMPnkSTJk2lGgjtUTRuz6LU1i0SzUzF6D5eMdZ9/bj4zOdRGrqKDiVrjfnb3i5W3QWqJhYplEdbj58MhMu3hbwJHqJTbrGHGDqZDbZPLbjXxVdsY6ecS/gw84WEFxo1lNvE8/ohZg7DXTVUJRg4YQM8qFG65tgzrmOOB4MmcG6uLzMhiJ4uEej6g9t/55tDhqARM/VB8yOnM1j2qny9QfgKdsrHyA1KaJjFS3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6258.namprd11.prod.outlook.com (2603:10b6:930:25::16)
 by IA0PR11MB8333.namprd11.prod.outlook.com (2603:10b6:208:491::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Fri, 27 Feb
 2026 09:53:45 +0000
Received: from CY5PR11MB6258.namprd11.prod.outlook.com
 ([fe80::3aeb:4e49:6de6:9ee]) by CY5PR11MB6258.namprd11.prod.outlook.com
 ([fe80::3aeb:4e49:6de6:9ee%3]) with mapi id 15.20.9654.014; Fri, 27 Feb 2026
 09:53:44 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Takashi Kozu <takkozu@amazon.com>, "horms@kernel.org" <horms@kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "enjuk@amazon.com" <enjuk@amazon.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 1/3] igb: prepare for RSS
 key get/set support
Thread-Index: AQHclQxat9WdXfjBVESJ3LfBrYyi07WWafMQ
Date: Fri, 27 Feb 2026 09:53:44 +0000
Message-ID: <CY5PR11MB62589640F247F342BD8BDDD88B73A@CY5PR11MB6258.namprd11.prod.outlook.com>
References: <20260203125417.37285-5-takkozu@amazon.com>
 <20260203125417.37285-6-takkozu@amazon.com>
In-Reply-To: <20260203125417.37285-6-takkozu@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6258:EE_|IA0PR11MB8333:EE_
x-ms-office365-filtering-correlation-id: 860a0581-9299-4128-12d5-08de75e6189c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021; 
x-microsoft-antispam-message-info: De2Ln+HEh5Jug2e13ECJqCAnxI7XEqJJT0lFaJg/LjTgJ8ORGDlOj9R3vOgBPxUWDF/2zJWQyMb9vH1xfqik/40ynmpZex6tKS6GEKuGEgB4XZxZM267lcRPkcQCR9Vu2DIQkS8xuDVt03qAQ4BDIGrg4MS3d2iDF5f9HyTaHeGBm2FlwxPwFAU9rMQIB1H/51ZL1Rhh+l15k2d5e+F3f2nFxddKY1p8EvUTs8X1AZk7GKaq7H9bFmkM03jovoDQ9TqpSyQA9TkbJgpbONCciQtis92pI70iwFIFZBhxmTnNxF+5fLgjwsYDWZPjIa3KvcWSawgnZlzexYQNPWyaxUCJakifluOSK5X5SSOOJb1MFQGXtqCekojGDmnwxM/9yH+KbWCi/u9GK/nTDyImBqe+Yc7ckdoJWfaRy627f1WpBdEMcr7emjKYMw5VQQ6BB0YXFY80bwc2uYd+gfkxLgu5QK0eW0q5KilqG9nUPMswDWq4xGOkSdNd1waOGDqm/UCgzBrSBjta/5hm22+uErZK+ctKBesFllbvuQJVIRdS8QWF4ip0c3kA4ji+ewXVBHqSbrjzUgxB+HnQc31GG/LoBuGK8fG8Y18U4WM1o096zjlJDMCOtvZO7vdHR5xv6R6y3SunU/JwNdyykC1dceks90YT2CjKAN/1Y7LH1dL2dG2k7h5vbaKOA6p25k54s0mLtDpXp1oXL3cU5Fw5+VWzCyJDRBxluLlrgDpeQTUZIXZF3woCsD0twwNOMr2ekxuhB98qWOvEk8PgfXsZZ51TTOnF8RfAccnKjUTRCbs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6258.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dU/EX2eau6JZy3s3t6X5KcapWmr1VM/Eba6sDh+sROC0gpmCHeuI0IJZiykN?=
 =?us-ascii?Q?caKJjwEnVEJj4BQHuLpzDzryuBR4zjMr0x7RwAQk15HbDone1ChxbbgY4TZM?=
 =?us-ascii?Q?DdpNNHzeZIo159+v+m1K7twG9bjDpUTYExRuUZqcCGNjTHiJDeRl4zd1eY8F?=
 =?us-ascii?Q?+d74jMVfzhmkMg4wmFXRpwJYUP3mJih57fbdj8S7Oh/MqOcjItCTRJqEhTLu?=
 =?us-ascii?Q?X3rDBQrarPEH66SYBstzLjZEhJxjTlrlwz+nWwg/ovvwKdMcwmYvEf0iIIV5?=
 =?us-ascii?Q?6evZzZqny1hdO6s4LBqOANdO7/G/jfsnuVgR+oHh3/0Ss4Ah9PV8Dr/qfLhW?=
 =?us-ascii?Q?s/f36xEd5EPzU48FQksk9ROVgC4iznPaPU3jUnK0U/Kr4b7WZbqpm2MS7jBH?=
 =?us-ascii?Q?lMoN9HUpHdhT7o0COJxPwS4tq4C/lVdPJ3lhN6AnSMcSoy+eIAc7QUUXEKCC?=
 =?us-ascii?Q?grhB1AqSGSjIXbd4z3F7zRbfdcoXX1UcDvl8kjFpWHcF5sxJs6gGejDwi1yE?=
 =?us-ascii?Q?vqmsnhVPwW82/MSrNhD0wK4WzZmsmOraip2fMS8sIyexL8rrdWSIwWf0bN7J?=
 =?us-ascii?Q?AH9aJ5j0EMPN720QqU6uLnBfbb1t6O6mYO6qS0JBUMfezqpTtnRXmXWbY5x0?=
 =?us-ascii?Q?C+beNJIn1YOM0FmPCFlf2Moh7nMGNksZDErXY6W9w3Yx70ACvn2m+92bcoQP?=
 =?us-ascii?Q?BYcupLivfAPZW4TKvh7750ZSmCoR1xpIw4uiAnS3+NZuqtfzWEtPUZs64d94?=
 =?us-ascii?Q?MQyv8kMgKsf8MH/fANWSiSP3XpL1aqmRmES1DJbkeUsZgamjQ9EqAl5nl/F5?=
 =?us-ascii?Q?nDI0QcKs8oHg3OJUdsxFz943LtMQghfzQw5txZ6uDndQQzMpg6WRN8Y/cvMv?=
 =?us-ascii?Q?DNG47p1lCAK1mrH5m5VVEkGJgX2WpR72ttstVrBvKeiFN9rahbXI4IpHHUFE?=
 =?us-ascii?Q?gXpyA7nFtWon9nl9NXTKmMNTe3suuObteSSruUNpD4hFkLHMQ2u85R+5Mp2S?=
 =?us-ascii?Q?Jhu8UtJqWWYd4HqERfHSaquzY7YgSanbrM5f0y1DBFdTa4F8yyCopKO16yAJ?=
 =?us-ascii?Q?kfnhdJpEUtQK22lbBgq+CIrWIiZS/nbsP9zfZOtSi8io7/NWgYdxu/rU1jkB?=
 =?us-ascii?Q?66KPrfIsuoA8pzKtECdEg6auPXTCjluyrYrX5D0LLqpioaHj62eRpCHYdfnv?=
 =?us-ascii?Q?JZICIKUuRac+yxlafB0NKFrfz4W1vPufZnknLUp53gWJrDUxmNoDh+MTosm/?=
 =?us-ascii?Q?sPgnphYAPsXWPdC4ceHFVZF7mhllDnuJN68/TgU2FiUm9AnjKT0DEtWVJ737?=
 =?us-ascii?Q?vQ58iQa1hWp1cDNhSJfDNnzhgwmFLnJPccHQC+NxrGtpQv83T3hqlNPDfzXQ?=
 =?us-ascii?Q?fyu5hGWsGqR+86fjvciB0sZKQ6vPM7r/5Q1RfxX7bLa5adU5F1Ne77dfy74m?=
 =?us-ascii?Q?UHO1dpQ+MdfzWZmiAjuyCejuY7kU+k7yhazM3+V9dv7J9XmCjKsAqs+SGc9D?=
 =?us-ascii?Q?gdG8mmVX630Yzzj/dtq5RZYU15iIBIHdjZ7d2o3o4ayxnv7cxeDb2g9VXqIa?=
 =?us-ascii?Q?YTSjiPm6ic2vWLzD5uqbIVVAW+EIRlSX23ij9sYmbqepEiDUzFtUK2YF/bWJ?=
 =?us-ascii?Q?NNckiqYwDV2j8bih4F7Vtvf5iIJ+J3DB4aFTBy8QdEohLo0LJnrAvIOJdfvD?=
 =?us-ascii?Q?yLRbgeGyGIpg0JvJsXpdSw6oXQIQiV56D2JpanBklBx6WBti?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6258.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 860a0581-9299-4128-12d5-08de75e6189c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2026 09:53:44.8424 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hx1JZuUMeJT3bOmyV68/im6f1ToaW7KiN5/V1leIF3YsijibpO8rM3bOu73z04ao+GsHGnDCanfuyv1FY48JkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8333
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772186033; x=1803722033;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qO95eSBNpl3QcveW7qhyp9tzsJ4AE2t4OLkqvrzHJKg=;
 b=OwXIA5rEj1YlYwATxDQ4iQ/lZTG+gPsZEnK1hZUatiCHNq1BcqQfTnVD
 Iw6otsibmHhAbHfGr1a4vNXGK0sTbAlfCZEQHPxBIBGuWSNM6jLNFk8N1
 4FKrRE7cX6hvkmrOs9ayGGKVik/rZeX6/4c5x20nMgJYvEuZbnvuDdEJ6
 PMqhFFqgwc4/ACru9M6nXYU/KNNNbPoXg+pTg7XPmWPKeycUZMHQLwRcq
 ulV802dVMLM73CnbRk+5XIvS28cjLqL6deqcSZc5Jzfzom4mw3PuzlIcc
 fqWLzEN2HIutNnyNgI2TNseOzeHSnG4Wb8sep6ywVz5NzrEIsv7yRu+R5
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OwXIA5rE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 1/3] igb: prepare for RSS
 key get/set support
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:takkozu@amazon.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:pmenzel@molgen.mpg.de,m:piotr.kwapulinski@intel.com,m:enjuk@amazon.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 3F78F1B59B3
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of T=
akashi Kozu
> Sent: 03 February 2026 18:24
> To: horms@kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch; davem@davemloft.net; =
edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; intel-wired-lan@li=
sts.osuosl.org; netdev@vger.kernel.org; Loktionov, Aleksandr <aleksandr.lok=
tionov@intel.com>; pmenzel@molgen.mpg.de; Kwapulinski, Piotr <piotr.kwapuli=
nski@intel.com>; enjuk@amazon.com; Takashi Kozu <takkozu@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 1/3] igb: prepare for RSS k=
ey get/set support
>
> Store the RSS key inside struct igb_adapter and introduce the
igb_write_rss_key() helper function. This allows the driver to program the =
E1000 registers using a persistent RSS key, instead of using a stack-local =
buffer in igb_setup_mrqc().
>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Takashi Kozu <takkozu@amazon.com>
> ---
> drivers/net/ethernet/intel/igb/igb.h         |  3 +++
> drivers/net/ethernet/intel/igb/igb_ethtool.c | 21 ++++++++++++++++++++
> drivers/net/ethernet/intel/igb/igb_main.c    |  8 ++++----
> 3 files changed, 28 insertions(+), 4 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
