Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOTzOZFQnWkBOgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 08:17:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DB4182E0D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 08:17:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2338E8446F;
	Tue, 24 Feb 2026 07:17:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fbbZN0oKKgFy; Tue, 24 Feb 2026 07:17:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F7E984464
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771917453;
	bh=fZvvkSh/ihUWGisgXO1fnU+Fviw9Azg6rOYsNTvKC3U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rHeQtskGKzgwZRV+Lkpi3WVPxbikY8exzzijEklnsjrNZhHa0IoM1V4GNL8Gk7d9s
	 ski/Cwrxq9p1RepcPaBS3c0vFhOQP0m/tFOnDOc/7nfPNlDbgK/8LSO+02XR6ILYfa
	 R1pF2WWCp3fzmYPdXZO+2e66iiDR3TDQ+elpKLlFGuzuypxaIuUGqH0W4Q4N0RylEY
	 Al/5sDBAjVMxXnfDS+JBZcjpGMiJ0SmHarC6BxAUVTtD4OiNIM+iRTSgrHZgqYGDvT
	 dOrPbyFoNLJYktUa5gAzD9wu1cxEQqkGlKY1kqIeoWtLCQMiMgXgc78PxUUfz1Pv4M
	 sqnv/zXYcBI5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F7E984464;
	Tue, 24 Feb 2026 07:17:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2AB74237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 07:17:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0FAE58445D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 07:17:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KfJ9ivAPpvYO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 07:17:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 307F184022
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 307F184022
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 307F184022
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 07:17:30 +0000 (UTC)
X-CSE-ConnectionGUID: 0WohomY1SveX2BkeXD42BA==
X-CSE-MsgGUID: dqEFpu19RKW5ADH4KgG7YA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72898620"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="72898620"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 23:17:30 -0800
X-CSE-ConnectionGUID: 8dLENJPxSt+o/rTzyVinQA==
X-CSE-MsgGUID: xGglXJ7jRKqnHFCJlKNbSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="246403101"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 23:17:30 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 23:17:29 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 23:17:29 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.56)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 23:17:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HfFp8LKXCNSFk/rfV224l1nzq/Bm6Wypz5JVU9xgfvSzQd9AtceDykv4/JXPlGtkldL2sIWjf4KkcWtmigqJR9rbo6WeZBKlFlHEgYOy2jSPZkqngC6wTsGavUsgvK2oXk1t3HPucPtPSpaImVJzR7DsnhtKZfbRj9y4XGWvbKfB1Xscv8TJZ7mwbnkNwI3/C+7RDjsUXRC6CMAV8IdAWNNTt0nIv8Zh2Q08E5G7TjNFlpEckLOG9LuL5XyXBNrle/3XZlkSTyXxpV8HIBz+XyLddRtu2Zlaf5nruDLJuw6AnooDvUJeLRQDdE2EyDJE/+/FyMSKhRuOiLCkoZsbuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fZvvkSh/ihUWGisgXO1fnU+Fviw9Azg6rOYsNTvKC3U=;
 b=fj8fYZGtSrAWLemKh0RMp00/Gaw3bZgCc1COq5QWGagWPp54i4fIodPiDYfmNQhcRIxKB+pmt5lQZodg7BIZ4hXWfbX8orSIPL/RgZ54rXouqEydzVLq2LsOSCnTcGSUgvD7HbX90bcKTbZohM85YS2XS4wWJuxiq0nb1monUiDRGXay1PUuFlpD48nrr2DojPnyqE6lnX/5D9WYTc2tek5yzPQ8AxUYravMd+EoUBiUfPm4B9RTkR5F6nOe2R5NEbzzTqqqIVWdlqKqxvgn6dQ/mozDfe4kT5jDNa1gzWA0THIO/VnckrCqJtMDkULRYNDeh7eW+bZCUueYh9hB0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by IA1PR11MB7368.namprd11.prod.outlook.com (2603:10b6:208:420::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 07:17:25 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::b351:6cda:caf7:64a]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::b351:6cda:caf7:64a%4]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 07:17:25 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 04/15] libeth: allow to
 create fill queues without NAPI
Thread-Index: AQHcV8kNDoXUmdTVcUWfb4vDpPjytrWSC19Q
Date: Tue, 24 Feb 2026 07:17:25 +0000
Message-ID: <PH8PR11MB7965444642E9C1EF54CBE674F774A@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-5-larysa.zaremba@intel.com>
In-Reply-To: <20251117134912.18566-5-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|IA1PR11MB7368:EE_
x-ms-office365-filtering-correlation-id: 60c8c6a2-fbee-41e7-32c6-08de7374c295
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?sf8rAcL93RdouoB1nnh1dqKHMHZYB/wxB7YfkTgBY0D1grmhT9Oczq8juWqd?=
 =?us-ascii?Q?+QEiLwz/TGXm0OHLB6PuDKbjvYaCVdx0ldkJAWMf92Nr1Y0v5LO6E8gESMc4?=
 =?us-ascii?Q?AhzdkFvnJs11tFpQZbr2zZLpnPxPRVbZzJuclLE1yNeU3VO9EJYGnGd9Astq?=
 =?us-ascii?Q?4xgk7Qp+2Otp83HfyDanZkLZVTHaMctyKYhryn7SjUpag2zhWFCf0/ugZb5H?=
 =?us-ascii?Q?/MtIN28e6mFJLFhB/ppAQl4O7uvAW2l1+nTfadP1ChZVYtXFhGt+PWYIDL/K?=
 =?us-ascii?Q?nxea7dc7iXOfxz5bbUjP9UFCBiDdEy5T/iIOhlabHb96WG/fMoPwI31fIWwB?=
 =?us-ascii?Q?6xHXrDIPz3mx41xBKUzJeHey1zSlpCy+1PoLEFW0WudruLIQm6B7eldRA/M8?=
 =?us-ascii?Q?Lucv6ijm9CNX06aWk9L9Y0ua8CxCc7M2srWVu2bJ2E9c2EN8NexYHiA32GZc?=
 =?us-ascii?Q?fsTuY/jZrDOQeqdXss7S0dlpvRT/Iy1n1LL51G/7HyBacD6jPchJxfedMs8z?=
 =?us-ascii?Q?Lghylyp6lSOxaIFycPLd9QyHEdfQY1A70uHkuduqbEa02THed3NkyxcC8ZjE?=
 =?us-ascii?Q?erqmYx8Fbhw902MYQNyLm4eZrUhgYgwEJg7tnNmTTtKn1wy9yewAmFhpiLRX?=
 =?us-ascii?Q?BPqAQgs4eNYd5PDZp6jpnHzWPw+qdb49wz2pVkWABXlPat/D1ur+wiFTQPX+?=
 =?us-ascii?Q?nl8/m1EQI6CXtNHRkVrRVASuWC79wLA2EQulQRPIVc/NX9qEP7yAI9hET/4m?=
 =?us-ascii?Q?yZWg3LlZwQRvvpx1XY5ZFjtGYuyLa0m5tIY338dgvoJRloJ8HMgY7yrPV7f2?=
 =?us-ascii?Q?4laUoZrfm3pZpPC7H2DnBtTcZRpIe4MYNQwJHG8pw3x2hNmEgNK6NpX8tm1q?=
 =?us-ascii?Q?R6JYUbc2OoAmmzX+PHrreDVRRDP4yBDWM6mdy/t30yB2rzZTZ2+VEeAMSreC?=
 =?us-ascii?Q?uedUi+dd0cXalx4392wzxMfyoRA7S6qvnfQbMgSp+GSSpSeGv5wnvN5lQIS9?=
 =?us-ascii?Q?cS4PGdE6pVAcvbe0odQHR6dgb8Ybx7Z4V3kZSTUBrQHKKOcGBqGEeJGgHn5q?=
 =?us-ascii?Q?RqVl6Ev8NOJLahcgK6OWygs1S34ovxCsidTevgL7nnf2Com3QUOdqr9zygFr?=
 =?us-ascii?Q?C4ePaTFlSY5Qqunm6iVQCHAuJNEHXJAnY3kgLjdHr2R6GsUGqRtA6ulkqaZ5?=
 =?us-ascii?Q?muDDbZcz8cYBzU8IsaS9jGiUqkgP86dnAxHgjgo9Feck9pqilDXa3zZO5sB7?=
 =?us-ascii?Q?bx7NHMYnu5vGLYXWmn3nNF3mM/h+pzxZIeQNzsTAH7c5pSqD/S8l4Un/Yitv?=
 =?us-ascii?Q?AFtr23EeE2kXP0IQzrE0pEQj3kY3EQi6Gng8Hy0oh5ySKk7t6whiEC2FU/hl?=
 =?us-ascii?Q?J9v0GJtkJ1NFp5kPDAfK0+Eb1X28HWAwoNgY7H+TilRYHo8nMO9PPEZP6z2L?=
 =?us-ascii?Q?X65zjZO0JMYJ/pqCJyvf1nVr78Ji7DycT7/oIz+Wz3mj4hSAM6cBmX8uebxu?=
 =?us-ascii?Q?ZK1jyCUKiekvHyrIxCo5OqWPjQlpsjbftDgdtYjEoaLDEiRvva4o8q7asMiF?=
 =?us-ascii?Q?tp3InK5hxMOm8BzvEj0uk6AbqLcSoxOwPVYySDJ8fFA8TMJ2EyMrZjnFx/ml?=
 =?us-ascii?Q?PJnCFDp8n+j+1t2Wo5VoMf0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ETQ9u6XwVLGLGZUscI0ITbiUhDZSAkOmEwv6xZvmmd7Bi1+WqmPi7pMiEfJb?=
 =?us-ascii?Q?20oNVqC6Fb0ow5WZd5XqHVrxgb8a1f4G7FGI9SdOik9JMvzqOWwURzSUi2uX?=
 =?us-ascii?Q?V/L1fSpj4+BiRaogFstHiDVj0fETw4s2Tx345yaAMxa6Zs+nIaVMPpcjMlTV?=
 =?us-ascii?Q?fQ/+vPkkVWynyThGBRPCiK8Xy8xb/draKsTe43vr3J67LDU22C9CWdIPFc8H?=
 =?us-ascii?Q?tA+P1P3AyKtKowF6fXENB5EO3QXupPo9h5aP+heRWDSzBuF9J+CWJ0KoiB+t?=
 =?us-ascii?Q?EiNdxIhhfQ0TlzS4pLiwXEsXU8cYMltFizRMX7FJf3Uo5RBmI6RypBNFE32r?=
 =?us-ascii?Q?yxNjbo0Wl5J7Dr1gJ7vUaTt5fAf7k/WVy3If32zlU3gK4JcY2nDqhFOhj2EW?=
 =?us-ascii?Q?z6uNdq6dlCCh127h9cYwRWG86+O96Alrv5+o9sVshg4JU0BhfmpKLOtKnTct?=
 =?us-ascii?Q?V32RopPXKHMmRF8WfWUxKndfusW74bBDw8kDGAa2JffHrkG9+20cpf/EBY8i?=
 =?us-ascii?Q?Wo0RQRNkia2sbtRrVYHBJhldhtf8DfTHnnUANQDB+qgOoKlglMHNY+IohaT3?=
 =?us-ascii?Q?Stjiag1d6Df9NGMrT8fTOhob+bOaq4kVBcXl0oOnBPqzYIN27Dy+0cEC0Aia?=
 =?us-ascii?Q?vnImL2wmhN8daMJoQsL131jw3YDpRO/xdsShRLi4ZF9DVTpsfxJfaCibuoZN?=
 =?us-ascii?Q?5lVKiZFP1/w6rmLUTEGXumAMP3GAV5SG6fgtQcAJLgTcSeB3+1sbGf+xtjPt?=
 =?us-ascii?Q?FR/sWYkovvTR98J6RGo68ii8ykdlQpTIRfIGuus2cpPtxlAclsUuOM6KSos4?=
 =?us-ascii?Q?SRYMwuq4RwHPpr1BsVpxUkTdM9OlkEGmnUVoP6klTzLEkbKArqv0FC6xoYJf?=
 =?us-ascii?Q?3YN5oSWKeOx8UoXiSBBUyeUp9nB0hVxsionr4K9h4eQcbIdZ6HZ46MgXm3pK?=
 =?us-ascii?Q?dl2RaYs3IibTDAX3KL7fS5ACPSiH01V/Tx8SkM/sVPo4GE7xM1TEhmKFS0oW?=
 =?us-ascii?Q?hLNB9voqG5AFjWTaKqL+i8fTPlzMmA1TGR+T3UP4kb1dkXa4lRDMmxYrBIq+?=
 =?us-ascii?Q?pqB3w75Vavk3fHDB1kOeVyt/iWVjXQDG+uNUs/mvELplozJhPi0/2DM2WqNi?=
 =?us-ascii?Q?exNjXef7/0zc8pFF/F+Q5mwCoF5nbpio5V87pNnE2+bQDEcpM+LLDVazxlJn?=
 =?us-ascii?Q?bOZQWt/iO6T25tvNDrxzokFFVYZAJHxvRqpTT0VIoR82p68VOy+6f6dxym1c?=
 =?us-ascii?Q?MWu288395013O9D+uMU4Ub5E2qpBrimfKgRvSMQqw9iImvMk5bJBs9bPAJML?=
 =?us-ascii?Q?bwiVAxwSrs6hnB/TSg2OjF4azLlYhN3zbM09VZTmgCbZ+ghiLcdau4T0Lk0t?=
 =?us-ascii?Q?EKkKVAWdq0pt3DB1mE2650439LUIR6OzNkDCiU7+9B2DUCXObWqU2cOp7HXH?=
 =?us-ascii?Q?7wt5rmW/h8Q86+NzHZTFPrYiUjB6yYRj7ynE8nP/d1kk92pe24ZCZclX7Gyb?=
 =?us-ascii?Q?LHdd+PjroD1zaDbZLipC3p7fMqRCkcIL345YO9UNIZTGJZIFwf+BSx8YvomJ?=
 =?us-ascii?Q?6bkt2tDWyjXhwvFbCDbOUy0LRR+G5k/nEAqgH9nwqgakVibZEZSvIxylVoYs?=
 =?us-ascii?Q?TxAISadiExk42u3viCfmVo6KDImqTVKiX8TqT67BerGM7tseATGRiyaQRDS1?=
 =?us-ascii?Q?rXPykVntTml9uainIGZ8iigOZtWE0xaxgsrzP/mXZFmhvU16?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60c8c6a2-fbee-41e7-32c6-08de7374c295
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 07:17:25.0963 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YhlQkkz9H9q1IQ0ChqH4y83+TaKv6nOORZB4m3QhXcFHiboBb4J+jAGFIrumGQfSr6C/L4MjvkgGW3bZ5G01rw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7368
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771917451; x=1803453451;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PpKS4SUDbuiT67lWAZkSu5Y9c3DCDZDng+P57sXCd0M=;
 b=OjTFIjUslz0MnqFvkA75TphIvOMwa73lIy0MccyB/CHKWK/dE0Z9rKXQ
 d5TtsLJFtR0wKQJKYrAbRprklTsHRQ19WDhQ5zLogrPepptu4UTFGjygu
 fGo4sVbePfXWx1CxCfrB6sf0Z2Ftwu44tee2YEvAHNHIoip+w2KkLexcf
 ujLSMn4ClYd8InlMbcFfTVqJbSGyOyXltk3uhTGbbt9FuyIV66zWIzxvE
 +nt3uhmLMO0w/S7OgCGpWKK7KeINIKuBcAbwmz0QP/x0qP3l4zWqyvXUx
 MJn4lkYlQqD+rZlN0vN5nYl1yWblSbXrT7VgqLTQ8N4dbTN4ET88x2hak
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OjTFIjUs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 04/15] libeth: allow to
 create fill queues without NAPI
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:natalia.wochtman@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER(0.00)[bharath.r@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[bharath.r@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 40DB4182E0D
X-Rspamd-Action: no action


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Larysa Zaremba
> Sent: 17 November 2025 19:19
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala, Sridha=
r
> <sridhar.samudrala@intel.com>; Singhai, Anjali <anjali.singhai@intel.com>=
;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.c=
om>;
> Chittim, Madhu <madhu.chittim@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Shanmugam, Jayaprakash <jayaprakash.shanmugam@intel.com>;
> Wochtman, Natalia <natalia.wochtman@intel.com>; Jiri Pirko
> <jiri@resnulli.us>; David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan
> Corbet <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 04/15] libeth: allow to cre=
ate fill
> queues without NAPI
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> Control queues can utilize libeth_rx fill queues, despite working outside=
 of
> NAPI context. The only problem is standard fill queues requiring NAPI tha=
t
> provides them with the device pointer.
>=20
> Introduce a way to provide the device directly without using NAPI.
>=20
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/libeth/rx.c | 9 +++++----
>  include/net/libeth/rx.h                | 4 +++-
>  2 files changed, 8 insertions(+), 5 deletions(-)
>=20

Tested-by: Bharath R <Bharath.r@intel.com>
