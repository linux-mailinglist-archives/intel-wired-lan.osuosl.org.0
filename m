Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEMwKj6gFmqBnwcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 09:41:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 065815E0908
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 09:41:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84DB841F5D;
	Wed, 27 May 2026 07:41:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YkjYTmXlUgxQ; Wed, 27 May 2026 07:41:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7602341F5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779867706;
	bh=2b3vCit63rOH64W/9Dl1aC4uVU9rB3X0lKcaa58uqsU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RGwUISRkW3GNzvmRcihHwvhDyoE4tHP6nrZDbKUfCQ3R9tbhN82uI5isI7xQ4aB3y
	 r/t2kU0N728xjR90UIM5KFqbMk/vSQV0aXXoVs+Z1T+PVXWfMLe7EttqImDVN72f+i
	 BbJYGPGnCdTLTCZIMBAZXJ+tnjXCJWDOrH8z5XrVSfgS1MYveXICqqmFf/aafODjRX
	 9d4M60ETFQuH2j41i5mOnajUWxk0duAyl12oho6EQPqcgQMq/Cd9ERse1AfKXrxKmV
	 QoeLw099+7OMnpX1IHfibC6oFyjGpPSVcFqIZs+/DD+txu3c3aF2bItOLc6GWhPIVn
	 NgBa+wsEu8jQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7602341F5C;
	Wed, 27 May 2026 07:41:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7D82921F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 07:41:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A17241D75
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 07:41:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bbKUz9R_f02o for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 May 2026 07:41:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6517D41239
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6517D41239
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6517D41239
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 07:41:42 +0000 (UTC)
X-CSE-ConnectionGUID: uni3JW5xQH+xmJJLj2tR7A==
X-CSE-MsgGUID: ZzkJbAlMSqOCPD6xcumV1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11798"; a="80722155"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="80722155"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 00:41:42 -0700
X-CSE-ConnectionGUID: InVqrW4zQ626wEhFIA/66Q==
X-CSE-MsgGUID: tzlVEYmwQcKlMC9NnSzKuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="243987327"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 00:41:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 00:41:41 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 00:41:41 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.26) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 00:41:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=upEd8h66O6Y8cWCGmipUAX4HNvZs06hST09HcmVvcDZjNivHGJSK6fhgPWS7HMRJfzHr7EUhZect1pe2LVYWHDLhPRP8dk+VHKo3gxrmLk6EvJXVLLTVoMyAvLPAvnAyuWvIDRro4kLzLheMaDxheP7TdRVs2rAiIVay0CANz8wikmWy2LXu+3MRQ85h4ZE08ob2J62wR0VQdSZ27nynovoyFAuQX79f/O0RGKYF6j+gqP7D4hfYCUW91o44v2qylGthnb8/chqpW7T2XoLXTrH/CiqXIgaudVBvFFGysItWm1WYD/ER2hiFlwvnMWBas6H845zSRIb86tqw0BdEnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2b3vCit63rOH64W/9Dl1aC4uVU9rB3X0lKcaa58uqsU=;
 b=I3jrQAP+4I9QcGo+jO5ijECQ5qK1G8FUz+K/FAtnOgqOdVGn46WJn6GFHszywyXRdK0SY405GhPbHfWZueTcnV25i3n7IR+fVNPAp6tK3+V8PsID4wvbWoLd8jJAkaHe+NM41maP8Z+LGvp7fsesgp6HdfnM6OLWc+qox2T5ShZa1HEY4XUgCJhdMMW/a+LWgROcKXan2NtuR4m1tfUK3pyHs1EdovHYr/4ABgeKVcdNRCOgkV80wGcs0s5MRqt7NLf1qVqv6Zx90RMu962EFRGnr3zMLKV7jlqc+eGqQbuXoxIBk19Y1kVBESzn90McpA8ZS4TnXDvhjK9+luPiyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY5PR11MB6186.namprd11.prod.outlook.com (2603:10b6:930:26::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Wed, 27 May
 2026 07:41:38 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0071.010; Wed, 27 May 2026
 07:41:38 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Simon Horman <horms@kernel.org>, Ashwin Gundarapu
 <linuxuser509@zohomail.in>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, andrewnetdev <andrew+netdev@lunn.ch>, davem
 <davem@davemloft.net>, edumazet <edumazet@google.com>, kuba
 <kuba@kernel.org>, pabeni <pabeni@redhat.com>, intel-wired-lan
 <intel-wired-lan@lists.osuosl.org>, netdev <netdev@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] e1000e: fix memory leak of
 msix_entries on MSI-X failure
Thread-Index: AQHc6nyjBt/ds8WJZUiAsgmw9wceALYgv9YAgADDSwA=
Date: Wed, 27 May 2026 07:41:38 +0000
Message-ID: <IA3PR11MB8986A9C7A7F67829D03F652FE5082@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <19e537fa55c.56218d6244367.1765806925055659075@zohomail.in>
 <20260526200114.GD2256768@horms.kernel.org>
In-Reply-To: <20260526200114.GD2256768@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY5PR11MB6186:EE_
x-ms-office365-filtering-correlation-id: 6ca88800-3549-4def-3d92-08debbc362c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021|4143699003|11063799006|6133799003|56012099006|22082099003|18002099003;
x-microsoft-antispam-message-info: s6S0tHN1xwcCKvIhvrZ2/hUHTa4OCk1XDWaC9xG6UBjXpdKNdWpROl2bxWkBYosOzK2WJhJs5mGpoPJ/gWlqll7F/LGc7ZOzXQrDzC9y7zDrZtrF94wA/0Q7wur1APtQEpPz7XsG1rL/SDUzFnSb9s0PZo5Xr4nsMEyn85cpzzxXcAxZoLqIqlnxVmZJZEgXvbe3wDQbDm3STJ8c7aB6/esf7v3VPoY9uy8jlNUzwyrpxkWtEc7whfWDbaFfK0ZLwE7FgJClE22+MlQ6H1YeHlF49O6qS2K3u/yKjEeYjBgDeIwRDCVgRpn5L9txcHlmEx8Po7dce+NgSraf7qKpf4qCeLjrQVNEYzIvT2RKX3UkmNJ8SyWgG4AuoNGN4/FY/QrFpVx0IT75Y8XZKKuNtI8XSW32bJEV7fDvv5sf2kWFbrPcB4JQSmJocDwmzjY7+Y1DRO5O54ny9qXtsZzhoVrfor51OAbtUh/g7qs4YQE6JA38UkOEZsKs0KF9AgTh2Ol7jBta9NG/ZO7o5u6fXioNmCu1Q22rt6RQw3km99MkErzTe13PUSnAmcXogHKu21ShuTC9ZU52Z4o9K2v90Eg2zdedGUeYP2wRu5/K8G9yUhHh9NjpvxrphdZl8nT9ZMcTpr//Qk2XX2+v32eE+D5DenoIwrtd7h50I/sF84l1sdDCxbRmKVrk7IDJka6ke7G5ubG9zX6pp2rwnLjLPw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021)(4143699003)(11063799006)(6133799003)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?25oA+TEfuJYHHjjK+6O231TSzvJc6xAEEBDCKBk3QlDDeXPga1/40qsM7hRH?=
 =?us-ascii?Q?mJmPdaA7YbEYQA0T2F6Z+M55r3sPIQf3L1tkJi6wwsZetidZVtYoz6A/NC2Q?=
 =?us-ascii?Q?m2/4iykggMqOYdEau6r6v/eapxetcsKVXree7LPyrnX8/XhlA9yLA5Qcg9eI?=
 =?us-ascii?Q?GIm8q5qVRFd94VHqQAeUd8TnBAFy1uj6XB/ZeIQTtBrB3esMEnKdQlxk1N7B?=
 =?us-ascii?Q?M1E0HzMxBm452+N6Mko67ypPiiv6x8VwoislqTKe4V5gU+IBm7TGdB//a7Pt?=
 =?us-ascii?Q?gCNiRicWRwVeaBh4MteRh7D0MCGROT8n4WLFNwq9uJfSFgQM4ooc8rMp69qI?=
 =?us-ascii?Q?yeaTe13rY/HAhfujt9k3MsJ+e330ZXfOdQasNLRSX2cx4hDcjysZ/VC70EGA?=
 =?us-ascii?Q?RevhaE/nCUJRgx0IHzE+NtaYKhPZE87eQNgoJbT1OQSJ4IL4UXKiHfhk4UB2?=
 =?us-ascii?Q?/mQzEItneXDuGbQd3Wrde0Is6FhncM2tr7srEq4QVj4R/TXx90BevRIg7a+0?=
 =?us-ascii?Q?UTIlKraSLjtU0Ii9bbVOM30nz/NO0RXhitbEpUM/Ii6WS3nz4+7jk8xELkuD?=
 =?us-ascii?Q?v08LDVruuR5n5LBqqwCG2LEBYvI2rwOZstY2kZhjXtPxmfADjetv05K3ydeS?=
 =?us-ascii?Q?QLu1AAvYjX0GIpbS7XYyXtXAQVoz+YBEYnbq5/NYppG1+aWASRLIqKGlq6V2?=
 =?us-ascii?Q?VtDdNYhe6o1wqx0Svfiz6C2C9DycZCFJPuCpxD61mycpA08S3ycLNxoolkc8?=
 =?us-ascii?Q?q6HpNL//LJ3FKnbxU98jN2n6QvBUnZijqmX6BUIAcAAm6aZ/1WU9d67ldLGS?=
 =?us-ascii?Q?Lx0SiKCRia8+QxTAO/+ziS0/ifRopoE/6w5HC0CVnGtiaE8nFzw5sGvxlLOQ?=
 =?us-ascii?Q?CZE9zouT3HxKds98aX0pol1NHe000gHslQNf4iQTT+5xXQqAe7tFNsMUEE18?=
 =?us-ascii?Q?TkzZGk61VbzfRGGT8F/f7Rqa8PAgTrJIne9L72DoIJ4P8NWkpQm+A35n1Gjt?=
 =?us-ascii?Q?78cIZNbW+4EBopDXkHIWbn2RQy5zYtLdhqWMuFXvxAf2wHPRF5Qbg3fXwbEZ?=
 =?us-ascii?Q?xCIbwVJK0EB1dOcjjyvcJHY5QfbdqPMZM50rcBQKPGkzMS5+zr7Pw/3moXd8?=
 =?us-ascii?Q?GaX6+EhQeGU+OP3odt6ObzanMurRFXG/N3soT225tJrCs+Y2+8zY8ukDnAW6?=
 =?us-ascii?Q?RmuvowWA7rbx518aJ0M+JuMtpDAPkqrnsnloXplcsgIGllvitc3B4106o3+6?=
 =?us-ascii?Q?9bVXYI14uQ9mPQhWqYL5DHniwJXm38sB/wVTEz+DWKA5ovSa7lNUGAD2RpZd?=
 =?us-ascii?Q?aMpVW33NddEUKxg4N9x5Z7nnakxSR9EC/Lg5CrfGuWUJ8qCAaBId+XesLjtk?=
 =?us-ascii?Q?vQNyjsKl/7xG0dFa9KpGViJUAZcfIB3+jsvqleyRlJFJM3G1TlVt3Jdab7h3?=
 =?us-ascii?Q?TwKTcRYArKzmHclFCDnMljUHbYC3glGAKNmUJhg/KBKUgqBlcqnY6GjzpM1W?=
 =?us-ascii?Q?Yng4ReNUtvBj6RnG6QKaNxF7TAUn3SPxINnSTo77y1spc0Y6Z5Qiz/0w2dW7?=
 =?us-ascii?Q?OLNV6IQVagbO53+4jY2BbIswkSEyofUrZG/3yW5QlN+QxFjw/0nnPsvtVui1?=
 =?us-ascii?Q?YVSB+OB/aVHlLi1OuACO3GVOfM0M1lIfZI5TmR58G+fYEG/VoVMzICVJ5Rsm?=
 =?us-ascii?Q?bZiJ3WtUk4/hpemtahWEGoxTZ4H2U2zFRklPDCxMxXwnHoheOfJ7zwjMg7aB?=
 =?us-ascii?Q?B0cRoLLrqxhIpaH/5ZDhTTOC1XSw+D8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: l1Az0IIQZ5aB3aEW40WitBlzGtkSGgUvPctCDzJGWCmiM+8y3KT9ppnqlTamgufCb4SF71ckgS+4y7tlNt51xO7QD1RLdkRxX5Si7RPjqdH2UdfANVlXSE1ByxRBeryN2wSZDERUowEIY3+zjYWU7bgcs66nOVvM+n5SRPg8/cTckB2r+zt+MAgFIJ/X5X3uWI/VnFscBs1YpMyzi/b0mjXSfr8dpKvNhdEnewL7KtUv52ZZQ6K2vlMn7Ky9WpV1s0MvHlU7NKRMX+BSFpk1XgHFu89iU5BsYIGrtboDt7i1vKqP676fA2ltZYiLTrUfIwdZHYcVWSR/1OXiRJnVHw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ca88800-3549-4def-3d92-08debbc362c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2026 07:41:38.3215 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uCQyPyy10C16pT+jF6EWbMLwQVkuJsMG9GrsiYaCiQdiJWNcnyZmurTgctMZ0MCm0G8wzDv9NdR6o/6rU2GHhTpJp0ojMRATz6r2mp5OhmE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6186
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779867703; x=1811403703;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tTd/XN9et1O+9bfigC1LPRUFXz+umzU49gZhi1ziXDw=;
 b=V2ufnejbqFAelgrDItjWpH/Tioe6NOSmdBxT7UxUHugqj5u/vSQJUai2
 Je1bDc35d5FT7XD86Ih2GxToyiFpPR1KiZOdQLfCWtOYR+knoJcCDgPl/
 u0nyCE/qkQRK4F27HjYe0Tgt+pWEL6grIbmDF9iN3X4hX0xG8cPUde5Ts
 X3Q52iiDEgRLx/NSROg6Z7PonBdh+Gz1oRRtwblbDaFUX6eg9OuVWFQbC
 bvkdgMReR0M/alB/oe62prIxqaLgyVy+uYhexPlmFFr/Eeut44TvrA+5S
 MMhFS5hkTWLegiJk43Wj+19xgsrcRSQweibzW+QzrXsgvmzCcIF/Kabxu
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V2ufnejb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] e1000e: fix memory leak of
 msix_entries on MSI-X failure
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:linuxuser509@zohomail.in,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Queue-Id: 065815E0908
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Simon Horman
> Sent: Tuesday, May 26, 2026 10:01 PM
> To: Ashwin Gundarapu <linuxuser509@zohomail.in>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrewnetdev
> <andrew+netdev@lunn.ch>; davem <davem@davemloft.net>; edumazet
> <edumazet@google.com>; kuba <kuba@kernel.org>; pabeni
> <pabeni@redhat.com>; intel-wired-lan <intel-wired-
> lan@lists.osuosl.org>; netdev <netdev@vger.kernel.org>; linux-kernel
> <linux-kernel@vger.kernel.org>
> Subject: Re: [Intel-wired-lan] [PATCH net-next] e1000e: fix memory
> leak of msix_entries on MSI-X failure
>=20
> On Sat, May 23, 2026 at 11:52:14AM +0530, Ashwin Gundarapu wrote:
> > From: Ashwin Gundarapu <linuxuser509@zohomail.in>
> > Date: Sat, 23 May 2026 11:49:40 +0530
> > Subject: [PATCH] e1000e: fix memory leak of msix_entries on MSI-X
> > failure
> >
> > When MSI-X initialization fails, the driver falls through to try MSI
> > or legacy interrupts. However, the msix_entries array allocated
> > earlier is not freed, causing a memory leak. Free it and set to NULL
> > before falling through to the MSI fallback path.
> >
> > Found by code inspection.
> >
> > Signed-off-by: Ashwin Gundarapu <linuxuser509@zohomail.in>
> > ---
> >  drivers/net/ethernet/intel/e1000e/netdev.c | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
> > b/drivers/net/ethernet/intel/e1000e/netdev.c
> > index 7ce0cc8ab8f4..1526069d7fc1 100644
> > --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> > +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> > @@ -2065,10 +2065,12 @@ void e1000e_set_interrupt_capability(struct
> e1000_adapter *adapter)
> >  							    a->num_vectors);
> >  				if (err > 0)
> >  					return;
> > -			}
> > -			/* MSI-X failed, so fall through and try MSI */
> > -			e_err("Failed to initialize MSI-X interrupts.
> Falling back to MSI interrupts.\n");
> > -			e1000e_reset_interrupt_capability(adapter);
> > +                        }
> > +                        /* MSI-X failed, so fall through and try
> MSI */
> > +                        e_err("Failed to initialize MSI-X
> interrupts.  Falling back to MSI interrupts.\n");
> > +                        kfree(adapter->msix_entries);
> > +                        adapter->msix_entries =3D NULL;
> > +                        e1000e_reset_interrupt_capability(adapter);
>=20
> Hi Ashwin,
>=20
> e1000e_reset_interrupt_capability() already handles freeing (and
> NULLing) msix_entries, and it does so after calling
> pci_disable_msix().
>=20
> This patch seems to have the effect of bypassing the call to
> pci_disable_msix().
>=20
> Are you sure this is fixing a memory leak as described?
>=20
> Flagged by https://sashiko.dev/ and https://netdev-
> ai.bots.linux.dev/sashiko/
>=20

Good day, Ashwin

For me looks suspicious the call e1000e_reset_interrupt_capability() after =
you NULLified the adapter->msix_entries

Alex

> >  		}
> >  		adapter->int_mode =3D E1000E_INT_MODE_MSI;
> >  		fallthrough;
> > --
> > 2.43.0
> >
> >
