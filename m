Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E560B442FA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Sep 2025 18:38:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3FC6260614;
	Thu,  4 Sep 2025 16:38:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JpuOLx4y0avu; Thu,  4 Sep 2025 16:38:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D77A60631
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757003914;
	bh=F+ORR1MYOWfCIfVmAf5xX5JqzAuUEaouPi/YEQT8EBk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L1ykxYi1I3j7xbZ+yA5VJifQoNJv+5H5A+rGNAg35AaqB8DLdB108QIB5GNRP8owh
	 hmE5kIcWkySM+0eZPDrb9LM4k5ED8P98Yibs4vAlLQUKGs8kIgfQjAO47EoEC1Y/bb
	 IQTtgelw1K5rwLi2mFwLHccEj/vnUqxkb0uPt1OfqY+zDb9B/STlm5XE8CDhdBttoC
	 4fc3Gr9/wVaEfdYhKzlYzaFOhOL/CjqA0VDToYeZChhJP/kaWTjlnHjajBqQNyrm8e
	 EcmmJXWkMEfaCu+9woWHWg4kst964jwVvR7lUIh83HpstrtGdT3mOr52wRGKrFIm4l
	 5D4YYPwlC13yQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D77A60631;
	Thu,  4 Sep 2025 16:38:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 63EF7B69
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 16:38:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 488A640548
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 16:38:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YbsoF2_AZ_Z5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 16:38:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=ramu.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3BF8740540
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BF8740540
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3BF8740540
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 16:38:32 +0000 (UTC)
X-CSE-ConnectionGUID: WH4cjkzORbKq1dNQrD46nw==
X-CSE-MsgGUID: 9hkn6ysbSXKuWlZ1Qq0knA==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="58384270"
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="58384270"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 09:38:32 -0700
X-CSE-ConnectionGUID: yj7hR55DS3iV0DxS46kAhg==
X-CSE-MsgGUID: Y5N5ooK+QBiC692COyaOyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="177166443"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 09:38:31 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 09:38:31 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 09:38:31 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.45)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 09:38:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mdG0p/7JZmMxbge5ljHAGP4lyXrErcBW/88hn6WyhmQ/tKkqKm8gkWa3oxRksV17EBnIvl8u6lhvGdtEzlPAu/1bOyTBAt2n6RzjQppgrux9xJ7JzKlUaiuG2tHaE/ozzuD3aV9b8zxSM3RQyBSB286zLa/JouYwxGCKHrMoJ5yKQP09RdOb30WfOSD/pzff1xexIfkOH3j21CPFd6KACk/FFy4NrFcfIs+MbS+KQpAjtcrUkIlyL6ekDVJMCLcSHCuNNBXjtJeSzNk5GLttF8Izu3yNDgyat8cEFLCohz+u5wWF0XRJLuhIlbMP/jwtSTATMOYsK6nBvgBXlEXUGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F+ORR1MYOWfCIfVmAf5xX5JqzAuUEaouPi/YEQT8EBk=;
 b=U0hqEctqb0wsSadi2o/5Ko3zmd57SBHZEKI5VLEW6C8qVPY83/JyZBJin8jGlhWRSRYMXOuHXSbJwt1Pj/SbVe7vwEAURiPcZMcH3fAdWhp4ktDKMP/Uc6VRtPdJRNSfhww3jg+fd0ixZZffVtC10DXRTyqVVmLGWaAm2FHY04RopU8mQYSwbGp+d8CkfOwmWadHj7KbkESH/vW8Kghl/bOpvWKOuBnlf8EYnqEB0tjXvAAvoRZ4S0a22NeXDYc4KJ+s8dAgeTT7JppWS8H2jkaM7sDKYu+NEJgs+9hGvvL7MLU4qcXxJU6G9Q+H2f87v555LQ4gnBUZ0UMeN4kSuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6455.namprd11.prod.outlook.com (2603:10b6:8:ba::17) by
 SJ0PR11MB5216.namprd11.prod.outlook.com (2603:10b6:a03:2db::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Thu, 4 Sep
 2025 16:38:28 +0000
Received: from DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425]) by DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425%6]) with mapi id 15.20.9009.013; Thu, 4 Sep 2025
 16:38:28 +0000
From: "R, Ramu" <ramu.r@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "Simon
 Horman" <horms@kernel.org>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 04/13] idpf: link NAPIs to
 queues
Thread-Index: AQHcFqVzm/4yuSBVOUiCwSRcDaReq7SDMwuwgAAUGOA=
Date: Thu, 4 Sep 2025 16:38:28 +0000
Message-ID: <DM4PR11MB645524232024596740D7DDFD9800A@DM4PR11MB6455.namprd11.prod.outlook.com>
References: <20250826155507.2138401-1-aleksander.lobakin@intel.com>
 <20250826155507.2138401-5-aleksander.lobakin@intel.com>
 <PH0PR11MB5013A0358A8D847F0E757A959600A@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5013A0358A8D847F0E757A959600A@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6455:EE_|SJ0PR11MB5216:EE_
x-ms-office365-filtering-correlation-id: 15b11c1e-e7f0-4a2d-d571-08ddebd17a1c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?e1J95sg8zGR5Sg0UiVCSk8p0WS5dfktX9gngczb2zLMLH2OiD/ek26IIyvS9?=
 =?us-ascii?Q?Fb05pXWpRArWHzF+frdQlgILW+bM6RN7RBdS+conZ5OJcQSz0WPvqr4qBdKa?=
 =?us-ascii?Q?NmQoWbp/kmcO2KljfdKFl8d8j48u7LlmHyPgxqBKzYQrc1FyPU3fj0YZ+uLW?=
 =?us-ascii?Q?Ovnrsc98hcRhy9us99NBnKjgSK4MChHp19G8BlFtX7jbUI+lWt8WOLGTrgP/?=
 =?us-ascii?Q?GoHxkc8ccQJDsaX0h1r/jZC2MoR8QuRFFL0yQLqWHoEFYx3/saCQ8NnjvcTS?=
 =?us-ascii?Q?h1CGX7rK0hgdDG5/0r7CrIUhFgi44JNY7H/beh/KKtlFRztr0dCc+gZ4P1mt?=
 =?us-ascii?Q?lebTaCwhbvMSLcMmGKpuzYGbUkGO4u4asfCE1o6xuCXOMUndS5ixNFO2fgxM?=
 =?us-ascii?Q?YDGTYzswQsd3DMnoCtzKqWtQavz9eRo9aYTSvaCgJq1Lg1zXDQQ06I4hHqId?=
 =?us-ascii?Q?aNR2EoCPmSYPdOrjpEl4PxZZeagPi3fOl1G6HZDHRwx6mxwDc5VQb3xcFCce?=
 =?us-ascii?Q?C7fo1mofbwSNvNBTjrKt4qqUgfCyGvc3RMgvgGMWgW0mS53JjVIsBwRou7BI?=
 =?us-ascii?Q?HVSqnwkuakhdyUpUJ5xHk2JJNjQDZUNM2m8lGnglbqi1IoZ6StG0T5X7JF5E?=
 =?us-ascii?Q?/Dco6pCTyjqro5KJCaiob8eiqpgv5gs5iNWZg8AFr5XEpSFsLD2QJ5yWmRGS?=
 =?us-ascii?Q?tVipvYsN+vux6fXIudTa1qMD/EvLxKzoIgQqW3apCcxfdKzXhMpEpa6R+jPW?=
 =?us-ascii?Q?tmK9EvN31BaexLOnxzgwiznTctCh5EnPTA9G2vaCAAEYYzAkiKPXDfeNYDvS?=
 =?us-ascii?Q?aGrTmhN13FgGWKAJ4FswFfhE0Byxxwc1yCLGWLDDiHbDlS/nZPtW4Pp4RZRh?=
 =?us-ascii?Q?AZJQQh71p16QPNFHUuvbPUZitcXiqyi8iJZzhJ/KHlxscGYJrP7TYQf+K8F8?=
 =?us-ascii?Q?GaXqzSsjjYD22vqyUCKfVmbxLfNZFFQA6Xj1V9A9G4P6eah8DsMy5DeanGsV?=
 =?us-ascii?Q?01Bo/uES3seD7jD/LaO2Jk8g/dWRjAa3xqb/dKHIYJba48eOuGTaBbWYnqo2?=
 =?us-ascii?Q?oUEA5wPBvOLocmq/t980F9IItUZRXdsUd8AYEVJlzoK/sMo95Z+fWrkRG8zv?=
 =?us-ascii?Q?wD8PZCMPPWakpmCKus8Y41wvGfr1eGCRtIfIRCoIIE3snYzoaIJSLeTrmBLg?=
 =?us-ascii?Q?O0FQ0AVJ2F1f0NpnOMfgK+HnQLxRj3D8KeC9vzPHoHgQUg3snDjJU1rec5uA?=
 =?us-ascii?Q?ysDc5/bURVQ7OvgecrmeiOjCV2J1kxaipyqW8Ss4JLNUxfxHQQAUkxG1+IQW?=
 =?us-ascii?Q?Roq56LM+dt4oLU4HqwESNs8GLEU7hRC1VmTTS5X/X30ZBSuzY78Q1Z+tUWBX?=
 =?us-ascii?Q?ioMUlO7eTe95SDRr6NfGxzaGZFdlWNvqV8S6tBI3aSW++CY843j7Cfwb4hyb?=
 =?us-ascii?Q?+qYAipRo+etIokkL5UNaS2/PNxjyultO4n04pHezFyTkMqX5G9J43A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6455.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zmgMwKyU6kh0xcErXVZaOvepVlzNbBOemJcN05bm9Nc4K7gurSY9DrnOeYpw?=
 =?us-ascii?Q?KW5KxB6p/PlTuCPhhx7tpKxc/qNIT5OalVGLHDiUkZqXXKo0aFJObRqmYqlm?=
 =?us-ascii?Q?cBigEmpOsooYO9Nk2O1jw4A/wsGmfolZGj/jR8b3r4clytP5udc0v89esHCn?=
 =?us-ascii?Q?fBJL5cSJDTnShpKiEpdR8oFmveeK3Pur9blGvGuCe+81AE5a3xcILC6LMIM4?=
 =?us-ascii?Q?wOGt+YsQivlDBWC/JL/x/ilmSblShefiZ1rAlfd0zp2yLGPJqbEckDgLi88/?=
 =?us-ascii?Q?l2qkzT3Z80rbF+cwCyaBcWS2FCGFOJfmrQX0Yer6vfsaty7SVwkXe2QQ0hYg?=
 =?us-ascii?Q?CQKI1M/z98QcxmTscflkX7v7ALnwtaI926wofKzTDi9aohBrSnyv3O/AXjBV?=
 =?us-ascii?Q?kmTeewl/BOdV5W1H19YbHFDbm+4oHBoPVoxnEpLBUzYs6424v4i8OElnpM3c?=
 =?us-ascii?Q?GZwAfdUvuGlpaEtLW9nqXLgY/UyAUC7fZn2G5ACVnFdn4r+WM8jJ3c7bRoso?=
 =?us-ascii?Q?V5o0lNs6ZY6LkeTPCBCA+hd2HMpLXZ1K3hh6QNOr41keYrBQDA7BwiDsU8d/?=
 =?us-ascii?Q?h9dLiC/XvnnzFJXlHIh7VZJ6QWTK88WO1o20yMq124vvDLjI3/dwJxwalzdk?=
 =?us-ascii?Q?I6sMJ233CqADR5WAJBFXmLxzWvQIxT4dBIQL4Y3CyTZ0mUHP8FiJrS9FyUcM?=
 =?us-ascii?Q?qoGy7FfJ/QbW0YY1V/TgbQ/1qWWt0Nl3zShqhbtEPOBTe8+7VOx209NtYeF1?=
 =?us-ascii?Q?4DmWKlGPWsxirrpK8pnCFEI6yjUiGIbc3jm1Tz9w/dqlW74Mt7jg6jQWpeuw?=
 =?us-ascii?Q?s+kr4NcRR+792e2AxvgZ9Nlmd3BGJcX7PspD1Q4ISlJD2E0Evky0VD8bzxpE?=
 =?us-ascii?Q?KmsHArnvt7k41K2ll+QKBPWWukQY4J/OkNlXU7OZstj9mm8zizPYyXWjavyV?=
 =?us-ascii?Q?ya/VfQKpj31f8vlESGyM/BBRN27FD/Q6z9WiM+zwvc1LyCoRDTCh0Qs9BvWD?=
 =?us-ascii?Q?17urXLmYamBaov8sBXdtqftLhqgHMxuGqghJCqHaLFGMH+vlIU/PRbcqH0xf?=
 =?us-ascii?Q?zgNFPtiCfHTxAbJ/1TTKL1FRASJEaaHBIEzNajNaiq/xL2SyWV9TE8Q+tyFs?=
 =?us-ascii?Q?uz/aj+dUeY6rfxuUPmWEmo24OKBSCSS9OJnzEAH9oqvMx92SkPW39XKFZRxg?=
 =?us-ascii?Q?PuIYsAiOSebThfirEf7oJnTCUkt+65rqsaxhwE2zpeIq/JRiX0bphS3zWKhc?=
 =?us-ascii?Q?MVMGhPAj9OdD1jzW+k+XZDKGFPnnZ1LjInseYW7AEJPSjhT9PhVmbZ7x6zGL?=
 =?us-ascii?Q?HHnouTXBbrqv4FWQgHL5CCNaYJY4dfy+koGiGjvVrzKVdc+FN8Vyl/25A4mc?=
 =?us-ascii?Q?TmAT0POSr1UGkTUvylMZ4pAM+Yqs6/l0KkO+IL16Dw57g7KuovzVBtYb0GFA?=
 =?us-ascii?Q?GW8k0I0zy+Ds5rOTOpNAckW2m1nLDHBX0xZfGfnhj8dgRNq07s8jQa897I4v?=
 =?us-ascii?Q?3QeGLy49ATllkJ/niuJI3EDDriJsPEuOAZs+dyRa/tingzn6E0eBRRzLtsy7?=
 =?us-ascii?Q?HSsLJCqY0WfzNM5fp/k=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6455.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15b11c1e-e7f0-4a2d-d571-08ddebd17a1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 16:38:28.5355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r8wMyWoEOAWZDQAUIA0naT1wAnUObtZhdUNBXUV1zU62uMq6PJXm99XdG4LYN3DOjstxM9uRRW+Aqf8mp7RQmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5216
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757003912; x=1788539912;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DwKYGM1qNECqc4dPJ+iBvFkdCs9Ybuxam3LnCli+8S8=;
 b=fKEqF7gbzjuqWHxJBHmFsWAE1q26t9hLq297rgjzK+fcFqBWZTyFzfze
 ZnapKW8m0SOdsF67N0XQbYtjH+oNMa13sBGMamnQDUPteBlzUBZUuF0P2
 TfoaQ3xbPKtV6YKzU8bDNAW5KV5J9eKLqxhsHZYCinrLpxGueYYVOOIn4
 hRkRP0YqpOpcf8Mu9WfQqEJLlg8RLQnNwNvy9Z0dgsAOxitnqmiFZH1L9
 Wu/Qolkx+fw6jQbS4JgBct2vU7x875uhQBJNVIrXSI/h4lJiigXCNzE/M
 MYihZFD4tEJudK0rbgDSvMZPWCSy7HnQ2yQhrzAKlx9u83N5c7ppwkwHH
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fKEqF7gb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 04/13] idpf: link NAPIs to
 queues
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
> Alexander Lobakin
> Sent: Tuesday, August 26, 2025 9:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Kubiak, Michal
> <michal.kubiak@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Alexei Starovoitov <ast@kernel.org>; Daniel
> Borkmann <daniel@iogearbox.net>; Simon Horman <horms@kernel.org>;
> NXNE CNSE OSDT ITP Upstreaming
> <nxne.cnse.osdt.itp.upstreaming@intel.com>; bpf@vger.kernel.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 04/13] idpf: link NAPIs to =
queues
>=20
> Add the missing linking of NAPIs to netdev queues when enabling interrupt
> vectors in order to support NAPI configuration and interfaces requiring
> get_rx_queue()->napi to be set (like XSk busy polling).
>=20
> As currently, idpf_vport_{start,stop}() is called from several flows with
> inconsistent RTNL locking, we need to synchronize them to avoid runtime
> assertions. Notably:
>=20
> * idpf_{open,stop}() -- regular NDOs, RTNL is always taken;
> * idpf_initiate_soft_reset() -- usually called under RTNL;
> * idpf_init_task -- called from the init work, needs RTNL;
> * idpf_vport_dealloc -- called without RTNL taken, needs it.
>=20
> Expand common idpf_vport_{start,stop}() to take an additional bool tellin=
g
> whether we need to manually take the RTNL lock.
>=20
> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com> # helper
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_lib.c  | 38 +++++++++++++++------
> drivers/net/ethernet/intel/idpf/idpf_txrx.c | 17 +++++++++
>  2 files changed, 45 insertions(+), 10 deletions(-)
>=20
Tested-by: R,Ramu <ramu.r@intel.com>
