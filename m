Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D488D075CF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 09 Jan 2026 07:15:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BFE340867;
	Fri,  9 Jan 2026 06:15:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gWm8Sc9j9-bY; Fri,  9 Jan 2026 06:15:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCCA64094E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767939334;
	bh=HLnklpPHT/GIDG72StOYOxaI8Mkwxl68S0cAEps4K3g=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=btSWqchQJ3XjiTS6P+cIsuWpesFvwQaJ6Gl9Lh+TA/WGZ2JaIcDH16umscTIJf8qB
	 wrEAGGJIyxW9JjIQOPt+1+8boJuKjwJvF0M1PMOCFZWpIQeRHO8JLfqYJirne6yvwS
	 EA4dmyawTbe3hK1cv1JpBy0TpBbozhKprne82zUMnYS25RcmS4ejPOCDHV+xAt9tdq
	 FxNzZweRq8GTIbfHxuimOXSgq6fHkEq3MW29Eytujus/mYkgEvROpSSmu0LAjY2J3O
	 IK+eG9NybdvvaUBDWM4XTy3YuA2iAiTxFd2ZBgo29+4WWFdk58dRsA4gmWFqf4nDzj
	 JxzXIArn+RR1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCCA64094E;
	Fri,  9 Jan 2026 06:15:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D20B131
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 06:15:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8410040864
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 06:15:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 15G6WFh6rBgG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 06:15:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BBCFF40531
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBCFF40531
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BBCFF40531
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 06:15:32 +0000 (UTC)
X-CSE-ConnectionGUID: UaKr9rBfSKWotKXqJOKM6g==
X-CSE-MsgGUID: m9geEAZgRSSO4/cDQMWYAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="94791671"
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="94791671"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 22:15:32 -0800
X-CSE-ConnectionGUID: rAG8hVdZRW6+4CjO3eL5tQ==
X-CSE-MsgGUID: l4M4OK4KRP6h8RPrd8O/4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="203819714"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 22:15:31 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 22:15:30 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 22:15:30 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.2) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 22:15:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kgaqZ64vbh9QWu4qrLXVTDCNoZUmAPAw7TCZVbgKEJOjG5u2pjoG1eEH0nTdBQlvwo3bmKLwvjH3bIeTaNULktZsIfBHVOQCcfZy7mbLKRBtJHivIU5YyFnEnUFmMeCGYizIAvIByXKW+1DQZYfOpHL8H9lo+jY4f/D1cp6qg5jDZFrQj4KGuZYH1zQALIZQX/7wMh/SPElOxCmegs8xSco1sF/RwNJ8mu9rQJ2xWdktY6cg6PscwjPgwN5qW5kksDpRxI5X6V27cgEb+6rrlCyHRhfS1yyjgB+AG2B24vM9L4/eGqzZHWk28cRnozlkDoqplIoRrhpnls6QPohVqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HLnklpPHT/GIDG72StOYOxaI8Mkwxl68S0cAEps4K3g=;
 b=rcyQawm2jFTbo0kuiLG4LXMEJrjBnLti8t2TGH0tCwDHqQo3X3sZO+C5pFbK7heCZN+XX5LjFT3JMC4BLVa+ZzUCVQcp1G+cyR6PZNWIoYB/K32q6H4/KG46CVtV9FVV24wq6xn4952bWN7e6htyiA6kcbdydVNFjPviCGA9gcfyhPxWEjJN7hqDNqgFa9P3h3ReSH2IBdJwiXTx0htqL0S6VvXYORzLzEetwCakpo2H5KbMryW27I6pNMmzyzfd3ata6pKD+6US+BbUh59JWU0ThenPsIG9IfBjFyzaq1uySceyXGhfT/B6nCQO2Zqkq36BICgyU7I1cFEJeMs2fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH3PPF6B7063D92.namprd11.prod.outlook.com (2603:10b6:518:1::d2a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.4; Fri, 9 Jan
 2026 06:15:26 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9499.002; Fri, 9 Jan 2026
 06:15:26 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Vecera, Ivan" <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: Eric Dumazet <edumazet@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>, Leon Romanovsky
 <leon@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, Conor Dooley <conor+dt@kernel.org>, Jiri Pirko
 <jiri@resnulli.us>, Richard Cochran <richardcochran@gmail.com>, "Prathosh
 Satish" <Prathosh.Satish@microchip.com>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>, Mark Bloch <mbloch@nvidia.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Tariq Toukan
 <tariqt@nvidia.com>, "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller"
 <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 12/12] ice: dpll: Support
 E825-C SyncE and dynamic pin discovery
Thread-Index: AQHcgMwyCjvDXFOVskiTkzUvrIforrVJXA2g
Date: Fri, 9 Jan 2026 06:15:26 +0000
Message-ID: <IA3PR11MB8986036A2826A4EE758A456EE582A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260108182318.20935-1-ivecera@redhat.com>
 <20260108182318.20935-13-ivecera@redhat.com>
In-Reply-To: <20260108182318.20935-13-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH3PPF6B7063D92:EE_
x-ms-office365-filtering-correlation-id: 7cdf1bab-ec39-496c-17c7-08de4f467ae1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?foft9cjhYr9crq2lVyn06MB9ig1opkniNPWuo7NkLtv/pPEdSGXppnWILJWe?=
 =?us-ascii?Q?ikvmwMJV2gRwbQ0XkzOL9QqoaUkeRhhfQi6vxm/4fyD2rEnOvOenGJ6BBKsC?=
 =?us-ascii?Q?1x/ObJEuVjIWqwOBZTz9ID6ANBwd2golH3IJbkf+f0jxZ4X8GRWR3Xu+bgNi?=
 =?us-ascii?Q?m4XqQOWZvhd+RBblpLxBNhXLJ5eGZxjGDx9QThBN3SrkDEKyPqZmZvIqJj9r?=
 =?us-ascii?Q?UAv1tsXdOhzYz/mt9YBtplttcKXg//rx8ani8SXVWyGe0C5RVGPRF9obHzvO?=
 =?us-ascii?Q?geH9tYlE2Xd5zTOTdLJdd3/Cl9iEg8C7ecf0hfABTaTM3l9PTIw+xj8sQypr?=
 =?us-ascii?Q?SgdGggocce1pMZrN0M2MvUEj0AUXZJ32JLvdCqxFcS75cRi4pL2SuFWObWBW?=
 =?us-ascii?Q?HH0EHjhJPw07O9uWesnB34yk01vHJLxVf4Ltkt61ouYnI8K0ULrWKxoGvOBG?=
 =?us-ascii?Q?yBskNmvuv4iywJquBhboEE9L8H1kfSum8CWNPp+vKYMzryfMSU0LNZGEpn2D?=
 =?us-ascii?Q?zqa23nHeLEYDC5VZ/baTrn+gZZtzUM4M+WED/G+Y1hqweCln+mOj8S7YqeZR?=
 =?us-ascii?Q?7W8JlWkzD57hglq3xFei30n3377NHjPgFY3vpjpHngqAfs7NBpM05W7qqpmd?=
 =?us-ascii?Q?DLV+fe2YwtzjPBIzkhS2VRs9sLAqWCrZ+dpDzxZW/k/MrJNgyTpakYABN/ee?=
 =?us-ascii?Q?0yR/MkDwkCIdEcb8MstusbCTKtND3oPr3XICeO1X0WKG5p2eR+xDQuLJXr5y?=
 =?us-ascii?Q?U/UxrbjOksiiNOElJDpwAGzBuOIoXpjIUVecgEXjNaUHYbXoGRobHiyb3vAs?=
 =?us-ascii?Q?aBhHFl4Qhh5J43LlY1U7ejp7pkUnnrebx/JMoliogpTMkfkKgMpgiOm3swfk?=
 =?us-ascii?Q?A0S9XKZlV9Wq7LUJgobkJzP1AWgC8/84slMfTNePEK7Wa3Y04XAgeZVnIQO9?=
 =?us-ascii?Q?1QF+OM9tZJBCD8BsKdXNvTfKf3SBYi8ZN029wQzyteQg7u5cbWwzXvZizSGB?=
 =?us-ascii?Q?nO1p25iIv1hfyHdXDVa+ZkxJP0yKfk7SxEEJWBChrRccw76O11VZjANct5w0?=
 =?us-ascii?Q?R66Q6LGXW5uMWnuxbmdhM+Yye/nFIpXfMtaRTbVdpWcvl8FmhLUyuTB5Svv4?=
 =?us-ascii?Q?z2UcYNIeeUyXFarORAQC1YYapPD4hvpCExembr3AhyZdrZoAmg6dfY6eJFBB?=
 =?us-ascii?Q?1spdZ1DnAVDCWAFw1flLzGLy+GjxYIejET71ERc6ZddBG686Ot89k2fUUB6D?=
 =?us-ascii?Q?xrvVgaDFyZnVtyYtVX3sq6xH6VZRyp6JwBg0Y3se3/Hx68n8/xWB3XTixQhf?=
 =?us-ascii?Q?DkbgTUiewqsEmekwKWSxtMng1oRnRP0KD6umO/mcBcQp6s4osdIcrrz9//K6?=
 =?us-ascii?Q?L41Mz+9KroD3MtQm4ERueSkgosR6ogfUmQjZU6IZmTjb2JqimbrWoqLQZ2fF?=
 =?us-ascii?Q?Boqy3+XSZxiUQJbDET5VFtUFmwsdTNPVIOAMedtioIEjuKQ9YvJA5QgIn5IN?=
 =?us-ascii?Q?z3zYQO5pe2D/YBmmbzOWqcpEVdGaBplIQXFS?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rU1am+JHwX5Q+CsqwypPQACLgXqGpvTixJbaYOXs1wHHXdT6+kujzbFg1hwp?=
 =?us-ascii?Q?LEWGzjBwqQUHU3XNGOZdyKRUBzIRxzy6hP9Xzd012V0Is9nTOIOsoV8gcKab?=
 =?us-ascii?Q?K2vVYjMQLPJ7Wv1zQv5eNb5+uVgLytbbKh1Y8H4FPgqjXBcuwJ5yYmiSPRzJ?=
 =?us-ascii?Q?gRkADQCbxqW6Zhd35dFkwytCR/ZOZmPM6mDSPOOPuoOyATFkVeX2CdAbutiT?=
 =?us-ascii?Q?te6Eeu1XZOt++9BKx6LFVrotLDqVuuHGfu5eeYArSxv8TCTRz8Q4xDJRQ20I?=
 =?us-ascii?Q?ybwB6g4dsU/r30E/k+Jk8AlqJrAo9ozBKEMm//0ce5Aj2sy7rLZ2IWKUYeVL?=
 =?us-ascii?Q?eT3hJJhubWVk21kzeaYGfAkT6u1/Q8jnHkeY9y3H94aLnkeFHfF8MURzCrzy?=
 =?us-ascii?Q?KCBWAg1Cs7MUwcl3GTzm6S/1LokemUjeB7sd32RdghEQX06pRwxrv/1JyK/u?=
 =?us-ascii?Q?/+D6t496O83/lfon+iBLU58z1TJmzk4lb4wUB3Y6EBsYIMb8zOY32tmU4pwX?=
 =?us-ascii?Q?8ttf+Fzm4myKqAAz3V2CMyvHNpFx4VsHHVuZnZkrfW9nrDtT4w4Dwf2Q3zZD?=
 =?us-ascii?Q?FHYcqNeL7EcVEtouNElGfkRRqvB1E0F+TMs6BuM2ejQsZb7u4J/iVWIekTo5?=
 =?us-ascii?Q?OSUnKH/pepO3ekPkyyHH4/WbnvxinkdJX68WXscsPniZlIzaDFi9iQPJ/xa7?=
 =?us-ascii?Q?qhWZm1E2f7xmNTGIwRwyBgbz8LyepW0QhWDEdIL6YfTR/FRkb/2UTu/bkpol?=
 =?us-ascii?Q?EYBhEs6RGT3ELWv1HE7vAQMKSTUNzWjm5Y+4ZlZIudxnGlmWKlsM/UcBPfSI?=
 =?us-ascii?Q?Nvc4tvrmKvfvG8OEp0A17J8PvMhcJP5RSjDW9VTurWjFxiN4ayrS9tZQkVcm?=
 =?us-ascii?Q?v4UVbn0bkWLBPQz5NczqBVwJAgFo+5Jl9BSXwRwp/1Vv+/7oQsiGcKQ+i7Mo?=
 =?us-ascii?Q?THW+6mif2ZnJP9MAO8JugOAn3XrgfqqVVn+/vmZ67BM8ORSVA3Uc7ia1YlBG?=
 =?us-ascii?Q?xMwuxH0O537jvF6e1U5uOLWNzqaiDX/8s6z3amUg7c816hoAmyPCOwJoF7dL?=
 =?us-ascii?Q?hgitVBTS029QRI7d8rvx5TjFcYCuBqL2XYODMR+9fPswBX+qMIyW3dR0NeSH?=
 =?us-ascii?Q?rIGQM2PhrefXtaIonAeif2JMtpa71a6JSikHq/nJtB0+W+Cwy1oEYPeuj5fV?=
 =?us-ascii?Q?+8vXa+o9Pq20QSt+R9OmA7cz3d8CQgf8EPONkMPYAwVNlJWncWFjjvHe5XNc?=
 =?us-ascii?Q?B+1/XTDWYPLDzzTMJjP/8V8f/DBWxFpVHKRaH2496ZvD+ngQzssh0Xo0cn3c?=
 =?us-ascii?Q?vQ2q5koDAJRQGz2Yk649jWv6KzrGXUfFNaoBGWfbPwPUYPJ0dDmrjfjh1mLG?=
 =?us-ascii?Q?ySYeX6d/woxbx5f0VnlYHFRqEDLRvrXBLFproUCEjDsXuzyOGy3QbME05W1M?=
 =?us-ascii?Q?T9rCoZbKBwWzfHvTQQQ7CiDPZbCOzhNTO4/q0WM6gM2IaJV7eHssh+N9dqa5?=
 =?us-ascii?Q?JLA8c1FyyLgJRAZxTp3X+huZwQicRZT4waag26i3qj/jVsVd5Gan/RtPPII5?=
 =?us-ascii?Q?FkmQz+q2e9eR+P3Aj1iGExc7DvlR+UIjYBKAyoX0ZeU06a1S/tsCwf/G+YEw?=
 =?us-ascii?Q?bzn5Ow/KhlQ2DKqVyAMbq4lLJrmSAhsvA/E6L8+sTeEVNc5NIC1sRZpEy9kl?=
 =?us-ascii?Q?tnT0HY+TZz57ukEEP+V6yr6+jUwWBEzQHB9JVFHPy933yVTMsQmPlkuHndUV?=
 =?us-ascii?Q?8Rg8LhixNw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cdf1bab-ec39-496c-17c7-08de4f467ae1
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2026 06:15:26.0976 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZrC7pYSSQW1219ip84gLcCWCvFpAcrMJxE9fKNJbawCbnk1022Xru+mO/BVXeccq5s0rRG6Bq0DSBUf3o2x261FCusFPWDGpmKO2q7uhb7A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF6B7063D92
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767939333; x=1799475333;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0Jptjv2IamIkGjHl6EcUvYqrnL0j/W16q1EKkfq8aB8=;
 b=ZXWOWS6BO4Iqt1QkoW5+Ra1B5QZ/aXITQgwFfYmbt7XGSY+DYC0sgpsF
 5IH1i4LJxCMB5eRPRtsCg1smbby7aWm1TqyDd9IfEBBsfz1D+O1jqbk+i
 NCVH66fbGL3MrYXD/kp+ex7XfDC/bb3XN3XpmKwB7RmsRuB1AlkusWR7u
 bkOG8CuyDYHm8+D6/n9Eow3FTRLxjOHXi2Yo6eBdxhp9vKBSRitvWIG+u
 boiU0tbK8/jRUeKJgtOGZT75ZKbgwFSr41jn6CURoPA+L5u/F9eCcImvx
 ONOkjdmAdH8iKjAABrm9/+vdx6bGGjEzz7ijiu25TQovczypkPYRTrVOn
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZXWOWS6B
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 12/12] ice: dpll: Support
 E825-C SyncE and dynamic pin discovery
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Ivan Vecera
> Sent: Thursday, January 8, 2026 7:23 PM
> To: netdev@vger.kernel.org
> Cc: Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Rob Herring <robh@kernel.org>; Leon
> Romanovsky <leon@kernel.org>; Andrew Lunn <andrew+netdev@lunn.ch>;
> linux-rdma@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; intel-wired-lan@lists.osuosl.org;
> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> devicetree@vger.kernel.org; Conor Dooley <conor+dt@kernel.org>; Jiri
> Pirko <jiri@resnulli.us>; Richard Cochran <richardcochran@gmail.com>;
> Prathosh Satish <Prathosh.Satish@microchip.com>; Vadim Fedorenko
> <vadim.fedorenko@linux.dev>; Mark Bloch <mbloch@nvidia.com>; linux-
> kernel@vger.kernel.org; Tariq Toukan <tariqt@nvidia.com>; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>; Jonathan Lemon
> <jonathan.lemon@gmail.com>; Krzysztof Kozlowski <krzk+dt@kernel.org>;
> Saeed Mahameed <saeedm@nvidia.com>; David S. Miller
> <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH net-next 12/12] ice: dpll: Support
> E825-C SyncE and dynamic pin discovery
>=20
> From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>=20
> Add DPLL support for the Intel E825-C Ethernet controller. Unlike
> previous generations (E810), the E825-C connects to the platform's
> DPLL subsystem via MUX pins defined in the system firmware (Device
> Tree/ACPI).
>=20
> Implement the following mechanisms to support this architecture:
>=20
> 1. Dynamic Pin Discovery: Use the fwnode_dpll_pin_find() helper to
>    locate the parent MUX pins defined in the firmware.
>=20
> 2. Asynchronous Registration: Since the platform DPLL driver may probe
>    independently of the network driver, utilize the DPLL notifier
> chain
>    (register_dpll_notifier). The driver listens for DPLL_PIN_CREATED
>    events to detect when the parent MUX pins become available, then
>    registers its own Recovered Clock (RCLK) pins as children of those
>    parents.
>=20
> 3. Hardware Configuration: Implement the specific register access
> logic
>    for E825-C CGU (Clock Generation Unit) registers (R10, R11). This
>    includes configuring the bypass MUXes and clock dividers required
> to
>    drive SyncE signals.
>=20
> 4. Split Initialization: Refactor `ice_dpll_init()` to separate the
>    static initialization path of E810 from the dynamic, firmware-
> driven
>    path required for E825-C.
>=20
> Co-developed-by: Ivan Vecera <ivecera@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c   | 715 +++++++++++++++++--
> -
>  drivers/net/ethernet/intel/ice/ice_dpll.h   |  25 +
>  drivers/net/ethernet/intel/ice/ice_lib.c    |   3 +
>  drivers/net/ethernet/intel/ice/ice_ptp.c    |  29 +
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c |   9 +-
>  drivers/net/ethernet/intel/ice/ice_tspll.c  | 217 ++++++
> drivers/net/ethernet/intel/ice/ice_tspll.h  |  13 +-
>  drivers/net/ethernet/intel/ice/ice_type.h   |   6 +
>  8 files changed, 925 insertions(+), 92 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 4eca62688d834..06575d42de6e9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -5,6 +5,7 @@

...

> +/**
> + * ice_dpll_init_fwnode_pins - initialize pins from device tree
> + * @pf: board private structure
> + * @pins: pointer to pins array
> + * @start_idx: starting index for pins
> + * @count: number of pins to initialize
> + *
> + * Initialize input pins for E825 RCLK support. The parent pins
> (rclk0,
> +rclk1)
> + * are expected to be defined in the device tree (ACPI). This
> function
> +allocates
Device Tree and ACPI are different firmware interfaces, aren't they?
Writing "device tree (ACPI)" can mislead readers about where the
fwnode-backed discovery is expected to come from.

The code looks good for me.
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>


> + * them in the dpll subsystem and stores their indices for later
> +registration
> + * with the rclk pin.

...

> --
> 2.52.0

