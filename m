Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96644D029ED
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 13:28:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A65D6086D;
	Thu,  8 Jan 2026 12:28:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LFirTOmdcnNi; Thu,  8 Jan 2026 12:28:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 755CB60881
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767875294;
	bh=DqH31b8OlknIzHQPKkeesGn9/n/C1NCQUTgpOnyZtPA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3B8Zat+CE7t7svLotfnU22aqilYzBGgP2FO24cp+mei16GkhgWf/Vbw8SXi0ivDe4
	 VaQXwTKApxdMS7YzVEwGKgS6C4hCm+u6LIfum0dDRMJgNxAfr1LaYkZ0lNlxNKyebX
	 J1+oZCklXJ/t4ZLDyiG4e6YHSlccZijYt3jDM/r7jEcJjoSfTAkj5Y+SmO90xOnR2u
	 LkpZzZh7tqmROUJZr1ePpzQ0lzdl1yFJRzR37i+JBIH8czw+I4hSdGXC6U42CnnbDM
	 f4p5DVAPZ3FTttVVOO8zapLpgdXsKOc+frDwV/iWSXcyAzydMh5XL8RDvyZEIIzc2Y
	 IYnPYCXdYUhTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 755CB60881;
	Thu,  8 Jan 2026 12:28:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 45191237
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 12:28:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36436607F7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 12:28:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ucr-kp2jPYeZ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 12:28:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0A41960625
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A41960625
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A41960625
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 12:28:10 +0000 (UTC)
X-CSE-ConnectionGUID: 5/t1cixeTTmtPmPs2oaHag==
X-CSE-MsgGUID: RMQNTkXuSx+O2//pp+ACsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="80615489"
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="80615489"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 04:28:10 -0800
X-CSE-ConnectionGUID: pIHOyl5xSYmxATBcfK65hQ==
X-CSE-MsgGUID: wO9NCt5hTFWoKS7sUVO9+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="233907707"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 04:28:10 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 04:28:09 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 04:28:09 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.64) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 04:28:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lipfDMFVA/kb70JnXjxdy02JLw7doCKjXslL/bqX61NCrkIvLjHU6LQKjM/eM6PFcSD1rzMnclzBHOEmagIQLlR4uiV0XDVfkRMQnuRJGcKsimXz+CiZ2Og3QpB4h8y6R3hohHidn8lvUmjsJYlt+vdtpiafNfgIRl8+k4Q6Occ9tDInDFoyn1M03YV8hmB+M6W9Y07lgVfsazjadxQdIi6EVsWYiN74Jh6tOjZCd9AwKkjS21+AXl80C/KsD6fSvGck6Zagj+XnWD1w/k58oCXGPUXlILe++QZdcbmpuT5EcPsMfzvEloc1+qEJhasrraZ4ojov0P0vml/IR2vO4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DqH31b8OlknIzHQPKkeesGn9/n/C1NCQUTgpOnyZtPA=;
 b=cs/st2TbZFLsqrDp2hwQcs8uVKaB5q9RY080YhWIshJsdvzPZomLshfB6BIqteNe/c9GlFGNcccS9JA2yaTNj0hvEpnPG2dAiQGk1/kMlAhCmGNtv63SSlJPyZr7V0K8oiwPY64vGkq0nXuv4+ltyrveI+2hw0IExbMHfPI45nYs/+32U6kZCXuvc2DiftkVq5EzbRfhDmaP7RgIPYbbrvp8DweqpTmfU4uHlaCwQq+Hv7MqBSsB4QUrCVctVPjAWnGgx6A4gVTqnUrYAqmsM8xGKVN+Fiy9AfbVfpw2hBe0SHiz1tQbo5hsBT1X1UHgFCRjEtnTQ4/uGMYa4tVgkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA4PR11MB9372.namprd11.prod.outlook.com (2603:10b6:208:568::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Thu, 8 Jan
 2026 12:28:07 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9499.002; Thu, 8 Jan 2026
 12:28:07 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>
CC: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "takkozu@amazon.com"
 <takkozu@amazon.com>
Thread-Topic: RE: [Intel-wired-lan] [PATCH iwl-next v2 3/3] igb: allow
 configuring RSS key via ethtool set_rxfh
Thread-Index: AQHcgF7gmLGugxsz7Um8qgZKBPTLwLVH29MAgABRLACAAAZvwA==
Date: Thu, 8 Jan 2026 12:28:07 +0000
Message-ID: <IA3PR11MB89865D0189D37BB3393B57F5E585A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB8986D6E9C30B7FFBCEF64394E585A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20260108120400.75859-1-enjuk@amazon.com>
In-Reply-To: <20260108120400.75859-1-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA4PR11MB9372:EE_
x-ms-office365-filtering-correlation-id: 4c21172e-0440-47a2-a108-08de4eb160a5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?69/bY6+NtuwWCaWb9CSAnSlE5QZVjGWbxa/pJlM3TGp7bLp4vQGAiPmpuY2K?=
 =?us-ascii?Q?yhTwjtfyLei89iyULblAiJm0sqZFzNMdtx25t7HTb9vfB53K7m1IdqCYGAsR?=
 =?us-ascii?Q?+QiGRpmlwUkfKSX5l6lLyjrEOsuyDjcbphZTFvb2VfXEkqT6OaH3kjJ4qOk9?=
 =?us-ascii?Q?wf18EqXNF9W7plC6lNPFNTjUHpqQzACq0TlruVfuqAQAMPPqK1eE94lwepdw?=
 =?us-ascii?Q?imXDyIvj1rQ40OgffZob1d2OaxISsfZXtoZ2swnwJFKgMAmMM0xeeFcrC7D2?=
 =?us-ascii?Q?1n76/jIJLl+PKaVYyZMmGVlODAksNXvIw0cHoidZoOqqNZOdtKhfmHObZdvc?=
 =?us-ascii?Q?PzjfM4DiW/4vCrX8ST40ALq4a7sPSPlbrGKoTc3pbnKOUXNFnsr/gTAhw5fz?=
 =?us-ascii?Q?k9OqN+bcge96cylTt1n3lIi/b6zW3+/c2BijF4BWRAld6TmVOnK2ApnXjUcC?=
 =?us-ascii?Q?g0/LcRYys7zv7NKd4rPdBmmgwBk4PB/fhgNMcWiNKUIMIgsmLYTgh0f5WOBc?=
 =?us-ascii?Q?r7WeptA6DCI4VvB5OSvB+g9spRQvXExaoSEwDmi3UbWMwlVspY+RY/KFywGJ?=
 =?us-ascii?Q?S1Z8ZOngxTruxlzOHVQoJBKldZGOD/0yVueOhvrm1BvXlQwlO3i4rLHIh+NL?=
 =?us-ascii?Q?DZim6x5MbeLA/kCkYMAQNBCMXFtgG00EuwcdNtME0XcHAtqgwCJQcPbRKabX?=
 =?us-ascii?Q?dyr8iODGl4CLAhPp052fNiZysMgK+7LNPl6l58qS+5+HLkwj0w2wL5wTz5Zn?=
 =?us-ascii?Q?63SdPk4hiZ90Wu7bb/iBEaliWtMQaV3jeVr5nY9D8JWBP0YnUXym5oxubtS+?=
 =?us-ascii?Q?V4rmk/HbEAwb1TV4iX9kM9EPQsF8TNWlKUtKbqjCS4upceSLJdOqY8ntnhbu?=
 =?us-ascii?Q?r6BkdVN/tget+hlVG8ObeHVCJN5e3HqEZZMyrsvYdU5qCfw34WbDRo2nCRCc?=
 =?us-ascii?Q?QCdiME0U5gk11h4Te3SdVJPmeSgM1bGRxXlq7cpPMEw9cmThpMCJhhBfbH1o?=
 =?us-ascii?Q?9Bc+6UOhLlCnTuX9QewwxXdhwbrFhoBkGmwbVfTvP13zfJCD0OleJFv54F/C?=
 =?us-ascii?Q?cF+Ayj7F1aiXR9GaxHHAyqZsxCfAQND+IaVds2EXaQneathBVQinZgByhncp?=
 =?us-ascii?Q?lWElpTaq1HYhm0qZxAvSqdI1MHtUVJZbAC/qTEU/nfZHHja9h24+iLZuf9Rt?=
 =?us-ascii?Q?ovNT0MZ3ifHzIK92/S2VvaQrTGxitIyAr/sKn2rVBLiIpbTGYEuKREpLheje?=
 =?us-ascii?Q?2ragk8RanndObkMQKz8sKBndARpn/mdxvvIHtlOc5G9oeKDyLqq1kCqXWnDl?=
 =?us-ascii?Q?hgke36AeCjwsjyd+cB5BhdxutzG9Kzh0DYCUW90Jm0QKjHAJq1CnOhttyYFB?=
 =?us-ascii?Q?9gzrb9ZAh+YBKg9lQeH5jcOu9i9vMN/yuUpt/leKsre8wifsFGJmx8vIRNJj?=
 =?us-ascii?Q?eiDHXI6bJmJHGuwfRqpOND6YY2F4Dp/77CVp4vtSKRh3U8vcOlJqvPvPQ30D?=
 =?us-ascii?Q?5h+aOhkMj+mL1AF0wVfmZ4K6WXp9Zf7VVIfC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2YgPRS1sAgFlsPEXmDdKMebsr2GvvviWxg9OiBxFVSLK2ozVz049P02B0ezg?=
 =?us-ascii?Q?3z9m1qLeT7FxRF/WkLQdQJUwwH3hUnJNprl6KLOse3k2k4HY7BZ48TmIQr53?=
 =?us-ascii?Q?6u4X02TyV0pm7OkWLCUHlQSEQsLkGzq3n3AjhtZ1L81cIet9CKz2Io/iwInD?=
 =?us-ascii?Q?zdHTB1Mcx/yVNC8AuBqGO5S4jC49kut2lsmYw4iBwjC7A9uw6VjfRnMysyfy?=
 =?us-ascii?Q?qU4dZ22Q8aDEkAvUKZoJqZYBhR2S3N4oW0QWMqDG1VClCCa02lejgC3i3sut?=
 =?us-ascii?Q?mF6KuA1NEhcb4B3zK7n6ZQORZpKWJGKk4o63KoMPyk1kclSFaWmuMjyZqZtq?=
 =?us-ascii?Q?zTFTVSvu4hVExfN1tWBBEGCbh6FaWxB2HiJ0hEotkUzxDWjDUXSvlNRWNp0A?=
 =?us-ascii?Q?08y4bl6p3rqCSrS7JXMCbbdVURYQkmTCIyoaj1WagKyQTcLGEK4hM7PJPxnw?=
 =?us-ascii?Q?f5AL1V0pRWqQKp3nZEGPKQ6RkEThBiyxzHGGw0+X828wKpYMvDK44hGXQ1HG?=
 =?us-ascii?Q?y2poGjJemaj7ni6WOTR/eNq1h2yNygg5ocwRCOHZ980Uq8LaR+oUnmXTuYlE?=
 =?us-ascii?Q?HUnaYxhtO5QDNsG26kyZvoXG11Z8d8G4I6watNbgwSdoS72gldidAphEtQRL?=
 =?us-ascii?Q?uHS8H6rJ6Tlljvs2LdY7529R3HnyVPTP2SDPGX7rsmrxy6If9zvQ7Wu4xjwo?=
 =?us-ascii?Q?Z20hTf8hpVIpj+66qbWiEo+iMg3GNea2R0JTpX8/OYPkIMABrmG4IVF7yoIb?=
 =?us-ascii?Q?R1By/u2Cz40XV6aAUYNm6SKXmgn8taQdZdyTpi0JOPt2vDQVR2hrb/Z+QEna?=
 =?us-ascii?Q?5MHxDHE7KHs8t5amBIDAE+IgV3PVeUsEllGt4db03xkmhlWKc0HUnRz/EGYt?=
 =?us-ascii?Q?OcCHOFrCDW3rNaIBUwTlZ3dhSZSygP6lhL0aNzeo4wwmyjXQjmGSMKzOPRml?=
 =?us-ascii?Q?JdrST6KMQVfYfJ50t/qWQlJaZK+RLhTeM28EI7lAU4ustnBF2+bVonGizljF?=
 =?us-ascii?Q?imFeOhLYp7mhEltwtHlY3ddSmQQ1gREZ4LdIYWPeSMx5QCQ9nVKC53IZ5Xds?=
 =?us-ascii?Q?NVrfKbK/oIyNQ+CGrmlEQYHYkv4xqEsEsDYw3GqPzSfOfhrVcMIDrD1TOIw8?=
 =?us-ascii?Q?hLcpA32FNJ4HCi64t/ASrrAXSt9Jqn7gtonnGUc79vEI5k6iWVi/Lki0zxK6?=
 =?us-ascii?Q?M5qZegsJ1AVa8aTydDzQiPCqB4B0GGAiUJarU/qju15V9IGgo/UDWzFgSprW?=
 =?us-ascii?Q?wA2oDTUZcM1Fj2S9YFxpG4WV5Pi1ypwV2GBXkY6g70MOcKOPQ/n6Re99l0TI?=
 =?us-ascii?Q?hYaD+nxRJV8eKw4QCC6TAyPyK56qhBqbQ8atPj1P6hDGLhrXv5g35Z3t5vfh?=
 =?us-ascii?Q?pwPmHN3o2Mkywel0Qqx5ebDqYd5L0soqrA5MH8AdYS3oc0iiUDAlXvgkplPy?=
 =?us-ascii?Q?JfAVLH8J9Cq+LZeX6fyr+y0MhmBYmnkeFNDEO2ZWf7L8NEh4RaLhBF5+CoAn?=
 =?us-ascii?Q?WoV4wQ6FL/8IjtUzOsd/O/pPJJjsx0xqnf7WZvHW+Z+YRgXiPBp94iYwCTsi?=
 =?us-ascii?Q?Kc1PLJg/V1V6pgu7o6yrUbVj2KWwjziI6pEMv6HmdDvZHeUml7fqDF3ImsXL?=
 =?us-ascii?Q?NLUtqaPxlqB7FCKTedJmS7M+vWgv/yME8u7zMYBR4QM2AKFZwPBpbbG9l2uR?=
 =?us-ascii?Q?hvKHPjYjJm15AV5UVA71Vq12t7t+ShYqJ6Cj7GZNWfAe9omQrcipFIdsXM8p?=
 =?us-ascii?Q?cjcJrV8PyZXBHypq8qRuJGsgWvkms8s=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c21172e-0440-47a2-a108-08de4eb160a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2026 12:28:07.0632 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i4L3fonyrCav+x1Ha2hSTjOll+dibQBXExFEPCo6lkfVS5gad5rLN4HsFf5ZUbM+CuRY53ZJw15ltg4i2DRN9wuue9WmDGyD3RqgvvrBwSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9372
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767875291; x=1799411291;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uveHdGLOb5P1xaYu8tzqqA22Lm2gCAtbAbFjxxlwxgQ=;
 b=Gz+3tY3BWmUTIWvcLFHXHjUOYmzBppk/DFUVRa464Blnd6uIbmfLCBWr
 7TdnO/0b+HrClcvQhOjivWinUxf0R9KF/IGSpzsA75yIxh0qq1rxmhtfK
 5OjFyQ48iTuAd3hE9MmfhVEr8DsvC8dMZIahCRhySzXap6mlncIdbFOlB
 Vrlm2pvbzEk/Zw36g61oEvhCUokT3nObOZYpQxsxdWM2DRRMwfy/6X7Tf
 UW1F4BJd8QKNVUOvA9O+dgb10PyVKgtwyNCsNrE8PyftZxVE/uENp8PYz
 PxpqdiCjJZQ+Cqmj6R5S0IQiZzwggUO9q6pJ6+hkycIzg3Zw/Cu6nPsnw
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Gz+3tY3B
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/3] igb: allow
 configuring RSS key via ethtool set_rxfh
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
> From: Kohei Enju <enjuk@amazon.com>
> Sent: Thursday, January 8, 2026 1:04 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: andrew+netdev@lunn.ch; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; enjuk@amazon.com; intel-wired-
> lan@lists.osuosl.org; kuba@kernel.org; netdev@vger.kernel.org;
> pabeni@redhat.com; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> takkozu@amazon.com
> Subject: Re: RE: [Intel-wired-lan] [PATCH iwl-next v2 3/3] igb: allow
> configuring RSS key via ethtool set_rxfh
>=20
> On Thu, 8 Jan 2026 07:29:19 +0000, Loktionov, Aleksandr wrote:
>=20
> >>
> >> -	igb_write_rss_indir_tbl(adapter);
> >> +	if (rxfh->key) {
> >> +		adapter->has_user_rss_key =3D true;
> >> +		memcpy(adapter->rss_key, rxfh->key, sizeof(adapter-
> >> >rss_key));
> >> +		igb_write_rss_key(adapter);
> >It leads to race between ethtool RSS update and concurrent resets.
> >Because igb_setup_mrqc() (called during resets) also calls
> igb_write_rss_key(adapter).
> >Non-fatal but breaks RSS configuration guarantees.
>=20
> At my first glance, rtnl lock serializes those operation, so it
> doesn't seem to be racy as long as they are under the rtnl lock.
>=20
> As far as I skimmed the codes, functions such as igb_open()/
> igb_up()/igb_reset_task(), which finally call igb_write_rss_key() are
> serialized by rtnl lock or serializes igb_write_rss_key() call by
> locking rtnl.
>=20
> Please let me know if I'm missing something and it's truly racy.
I think you're right, and I've missed that missing rtnl_lock was added in u=
pstream.

Thank you for clarification
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

>=20
> >
> >I think ethtool can/should wait of reset/watchdog task to finish.
> >I'm against adding locks, and just my personal opinion, it's better
> to implement igb_rss_key_update_task() in addition to reset and
> watchdog tasks to be used both in reset and ethtool path.
> >
> >What do you think?
