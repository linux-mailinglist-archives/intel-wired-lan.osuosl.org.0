Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3550FAC61FA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 May 2025 08:37:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7BD5812D5;
	Wed, 28 May 2025 06:37:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N7XTdQr2F0S3; Wed, 28 May 2025 06:37:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B625812DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748414221;
	bh=EnU718ESd2a0xkYS8nerUWJNGTKbpnhiuQBdvIXmwrc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S2H5OTa+TgaNF0bf0LGI/mQ/zpEkvx3uGXAsRI3XSqomJc2FMJ5L8Y1bvBLaDnUOW
	 WGmSCXOLzS2b7ptjPPXxTbAz+Slq1d0iyworWCJpxHLmyxnQGa7TsMShGq9vyU2jtz
	 Gl4X66YrtUMj44lk1IRNPcmaMUgSchlFDex1FmxAnrBljZQBO4NZGGGHOo2qzePRfu
	 4jH/Z+6JIWa6OuEIeJKhUrqDVYcIOveqordTqCP6EtyEK0kQCfHNjGMWBS/Dk+c0om
	 pxj/4Aw7iogvrcvRpum0nwsNTYJDOo6Q0iXFSAID3U+I47tY0M3QFICQASx3FeeZxk
	 lahW5uowIUu4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B625812DC;
	Wed, 28 May 2025 06:37:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 964CEB66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 06:36:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8755640891
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 06:36:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dkbN4jM3Dyou for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 May 2025 06:36:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7A8C440880
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A8C440880
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7A8C440880
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 06:36:57 +0000 (UTC)
X-CSE-ConnectionGUID: hSyfn302TAadb2SUxaXzjA==
X-CSE-MsgGUID: 9gJobUceRjiMnL+ipfN+GA==
X-IronPort-AV: E=McAfee;i="6700,10204,11446"; a="60681164"
X-IronPort-AV: E=Sophos;i="6.15,320,1739865600"; d="scan'208";a="60681164"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 23:36:56 -0700
X-CSE-ConnectionGUID: ALZoAEr8T1O+TSkeB9cKfQ==
X-CSE-MsgGUID: k8nOiKPnSp2ZvCLHLUiJqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,320,1739865600"; d="scan'208";a="147911383"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 23:36:56 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 27 May 2025 23:36:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 27 May 2025 23:36:55 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.76)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 27 May 2025 23:36:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lz5HGcGcPIHYvrC5pSZxcOidJMs5lLp1MK7q1w7rbOj+ABgo4+hQDgOp+AA9hZLEzSLQ5z/OrDceT/d/9axys7kyAY6hSsGWwvA/fIOVbHsaO0Yf+Wpgv8OFhWXyHHMVKyXom8P3dwUlN9WjzBk8uxRcp4zUUtg2Msg7YNwzaum9ndCswDRDArQA3XzUUvGPt87/JNWWRwiHnCEpUWxeB6tqfpoLsCFQnELMFiBl+CmsubW1Tx18fF2htWSbeiZgSMm55TzT46lljahxu8OmiJBuYlBeUQstZN0ivFvyQlQiKwwhLsCbTBRAlk1JlVMsL4n7xYehmpQwruUk43zmZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EnU718ESd2a0xkYS8nerUWJNGTKbpnhiuQBdvIXmwrc=;
 b=layA0BjVAvWrfCxvW9+S0RCV0/o9pTp01j3O4T/GAJk1EXl7/541fsr2YlFb9sKqgyqJNEi8Hl4Km6Fns12FMlzQ+2tSsrC+MPXhtPILnJt9F4fxMZ3lrjpf43TBPCC3LFyliTh0gFER/Ja3yMFX7Z3ah2xCHDdNuq6je0cyoR4ouNg7SKeMBfzfVwFob6rB3RAd5eTR1Qs2hYX7FW3VEw6J4IebvrXsT5owHvAtnjWfvmMpKrk/ITsDiLAqtcF9LvkiE2kKfvc2OGcnilAXxhEh7MWK38MRcB5zYA8kvZQUqG5uOh42OoAkCTmpEZFmUCO8/mxXidEHsUU549xGTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA1PR11MB6146.namprd11.prod.outlook.com (2603:10b6:208:3ee::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.21; Wed, 28 May
 2025 06:36:52 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8769.025; Wed, 28 May 2025
 06:36:52 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Martyna Szapar-Mudlaw
 <martyna.szapar-mudlaw@linux.intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] i40e: add link_down_events
 statistic
Thread-Index: AQHbylwJAErlxDXm+kK5+oavKxJy+bPnoEwQ
Date: Wed, 28 May 2025 06:36:52 +0000
Message-ID: <IA1PR11MB6241E13A129E9B62B6E1A7328B67A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250521142332.449045-1-dawid.osuchowski@linux.intel.com>
In-Reply-To: <20250521142332.449045-1-dawid.osuchowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA1PR11MB6146:EE_
x-ms-office365-filtering-correlation-id: 178c3a2b-c8df-4021-9b7d-08dd9db2081d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?nO0Yva7b8j3Ez0Oxx+n5sF4CCkP4lwOC8KcTUQudH64Wyvo/yHIIRhFGqBzZ?=
 =?us-ascii?Q?FjrFjB1LXdxHdAEGKTSvYlmDzSMKR5gSRmia508xiNlGB9aeRrhnfLtPdS8z?=
 =?us-ascii?Q?IFGuW85PUc+138mTqDFTdE0QJfGYAisNp3XHh8yfkZnHr0HomhaXVtugvd0C?=
 =?us-ascii?Q?DcH6CZ5PJ14NaT2008LifPIIuQa16e2GGj5Wgskx7Nc108OUJDdl+k8lU4fv?=
 =?us-ascii?Q?tCiXL3JR9kvq/1ru548VD97sN6h101ha0BHHZZxoNoDJiB97In7cWTt8XL52?=
 =?us-ascii?Q?NpPfNq3xuEOXX+TQXMv9qiJjr4MMYVFuNpqYOvtojpMk/Ur8SQlTJlfJl66Y?=
 =?us-ascii?Q?7CjIND9kdXtAmytt/fMNzYZN2g3hlDhSonUG7Y+uHML1aTo9KngYcWrdON6X?=
 =?us-ascii?Q?hrdEZ0/TCIWpr5NuOI/d/6dT6SnTTkiqe6XWo0YuYqvTJCm7MO3vw8tSbv6I?=
 =?us-ascii?Q?TOguGOl8amXeEb4WFrF4DUdxmuXOUOrVMkbQPm+EDQJMSfZ0hiGnSUNwTZAN?=
 =?us-ascii?Q?zgCz4TJ7YHGw57Ohd8EI0HTyjlSEK1aIbC2ywS0a7e1olG+DWggqapQnB3Kd?=
 =?us-ascii?Q?rNv5Tl/i6yB/BYnrGpGSiNP1nTvgr9IiPuGy48nD8mEETFHyyPc4kmUrs2RA?=
 =?us-ascii?Q?+MWoJj3ThyNXuYvQ/5SQaNWGe/6xecfvEXqRHEFesmrOAT2GXi8dprLCeQqq?=
 =?us-ascii?Q?XtROnwtK+dlwTBOF9HXy+SdiVsO5FVCF4yCdWZ1ML8HmzUN0F+MTq5mKUwju?=
 =?us-ascii?Q?OlOP8UZDsntjOx2NV0hz9ztKEOBnJTv9KzRwbzmu3gJdAqsk6XDNVYJvy8VS?=
 =?us-ascii?Q?ZZTQaDlngM/2dgOWwi4DJE9h7aye3r0myOUaq/buRxjrMBIu6PRHgfOFGqSZ?=
 =?us-ascii?Q?fmVH4Jsaruh8MWTW8IqIMC/OdVX/SqIlpz+lyJFn2AHoD+cMBkZcVKdcQikh?=
 =?us-ascii?Q?ohlbJRVIVLMWIdi4N20w1RWv+qKH5G2GxgDoTH1DPd0ZxMX+VL0Ej97Mqoqg?=
 =?us-ascii?Q?FEht4xCg7ZcX97OSc5AtyR6O0GYEFiaX6S22qOSqrOo4bZqjSpt9VlZR2trK?=
 =?us-ascii?Q?2dH1F7esQlsQuXH2KHVlOOf7zyy14seoUQOcAdNze5V+oQYzoW/nC0FEbr2T?=
 =?us-ascii?Q?ea41gNs1MqfgMTFM8xb+4F/pq62FEc9QF8BvGLcYtO5gpwhOjbssXn/tE5NQ?=
 =?us-ascii?Q?C6yH9w0MzsA1sM75gc5Hg6kLiAwYmSGeep/JlVeWVaiVXUnEylEWZGdK5Cx3?=
 =?us-ascii?Q?0UpnN4lJBS3Eg4W7let5glrhapzml0W6ekRnhhaJ0pTQtFpeteZVce41oAQA?=
 =?us-ascii?Q?KRakPuWYA8KLdOTpjoEQCq1C1QMXTwn+MZhfPW2rXPNhrTZjfHgNQ5PG0IGh?=
 =?us-ascii?Q?LCoB26BU7Q4iIjOrqZP2kAW0VV3F859qrao0aT4DRHsslL69legtB8kEkuHf?=
 =?us-ascii?Q?0okDanrctaRcIlliq4V0EbXW/LS5NQ7a5tRALh6k/6y4+6YUNK2iL5Sd7Slo?=
 =?us-ascii?Q?LjO2MIloTd+4hPI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3k85DI3/qSZZfTcYVI4VZbG+7+Gz1MeXRguVl9GGxmlGQM2Pnv9N3T3+JEG2?=
 =?us-ascii?Q?Efsxw5IudrPakzJBm9UuW2WsJHUcQkD9mQMo7oaZGd1Ix+gqjtgyxDREeZ7t?=
 =?us-ascii?Q?yj8BxJ6HEFxfgL67YeDwqyn+oEJNlFH9JKdRHxat+Okex8REAfF8J9mTNxXD?=
 =?us-ascii?Q?dcpS987FREDGk0TQ3XhV+G01aT4yifQOY6a5pFmNEO9aPWG0KFhi4QHK7TCE?=
 =?us-ascii?Q?igY6GQ8Xwz81e7c5lUEcY1seszAXy7tG0VagP3uR92XDB3L5lc5o2zueZkeH?=
 =?us-ascii?Q?Ud4fLIXQyVQRuMuKWU5OsJv7UtKuJdLEuMxqpCqgrQv8NFfk/X98thrkUIXg?=
 =?us-ascii?Q?nS//FUPP3vPiOpIsHT30Fzi9OjetN2Wzsn+f0nibjJAzlGQ92q1d7cAYq6XY?=
 =?us-ascii?Q?1qp7O64y7DYKumRwnB1Ix6/sPJmNF4QW6SUDditq+70rWvQEtAn8ZLUkpOMI?=
 =?us-ascii?Q?nrRcC0B1RLbX87rmt4dxBDa82cmS9x7JilVu53j+Orgl/YrtJTC4BnCwLAz6?=
 =?us-ascii?Q?2S9yq0uMK1W2sGXcd9uo8LY9x1lLbITfrZQfQhIuI0tW9GI67A99QTWgUDIT?=
 =?us-ascii?Q?ThTDIPyDRiB3vNtVwNSIYIN7/VTuPh3NSM8gCnMhvjrAwzy1cZegR/ItXhFb?=
 =?us-ascii?Q?3H9M39FXz+VRS5f0vdXRbIMduPdsvzXYcnJmOMMTiGIVvbzt1MNduQ/eqW27?=
 =?us-ascii?Q?FEsrO976c9nikngdrt/YM7/LRzxqMxyP3S3K4o9ZrYdcC8NBjAqMsx2NhknE?=
 =?us-ascii?Q?ppLtDqs8vjMurUgXGx2IJkL2YMQpaAgNP9YFp8oEjpsFm50H20TiZIVKXylP?=
 =?us-ascii?Q?ldjJcbsv0wdZxO9I/7TKa1jjXGkF18bTRBTzQsXCwDIwx+cO1o2V8laX6aR0?=
 =?us-ascii?Q?hkFLFH0wBiVfUl+H5JI+FjuOrcXKtkyjxg6BndN7y/AFORdsYrMen8khZ1RK?=
 =?us-ascii?Q?Td0q/nSTytfouc1YLRncKy05yVcRr39L2NF/Rt9yXh4mfNpjmMR5L8nYdcnP?=
 =?us-ascii?Q?W90vB9Cq7vt3DxWxoZ/fiFIFx8+KWINJFjPHQ89m6g5aYUBPW3GnCOh6Ubzr?=
 =?us-ascii?Q?vv3y5Ab/33SYhJN7fjxw9H4N0KkrC1ahHBsTqhdakaOCN/NLDMwAKoD/1RMA?=
 =?us-ascii?Q?FRqj0nSAgoGGNPOZ/azgkLE8n5RyHHfZu1dvWxWnIJghs3Y0CHWvI4FIT8nQ?=
 =?us-ascii?Q?sNcVGtSo15mB9xleWb5Ge8HBk9WLBaOsuSxWeiyRSC707w78Fg/0M4UsW3fU?=
 =?us-ascii?Q?OQYJwTRLulBwoPvBgfTGtHTvamNyZqADBLDUNH3cxhWSU5uH5x7bwgt6Ge5R?=
 =?us-ascii?Q?vxZHO2aJShafBOfbS94Ec+J58b51mt2ZsDQGdn4Iet2odQ8tnvyTksW8T2D3?=
 =?us-ascii?Q?I9c1HX4vTIxtZeow6D14frnc3haD88jfdOTLteSutAXyRC+m91BUL3glG2KF?=
 =?us-ascii?Q?9bwD95eg64UZSg6Fr192BGWS9es3cQby5o0haaBSWqf35IP4JuE4On8qKSps?=
 =?us-ascii?Q?ssbPC4NbG5iTtfw5lU9t2vVFHO/5mnjFtivKRHJ5cNaPj6PvSF9XyB6kWpQZ?=
 =?us-ascii?Q?DxALMZVRxiWxI+ZRSGmxDHhlcDv9UonrvbsIDLN6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 178c3a2b-c8df-4021-9b7d-08dd9db2081d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2025 06:36:52.1768 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RkVzBGkYoXMJMLAi67fSGvWFUDRkOTq+bqhRUDLM9ZmMKmw0ctIU84V5PAvlmwdNfhXi7/zEYN9zoq3z1YuAgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6146
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748414217; x=1779950217;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=heFE94s9lNvDEvQEbhrxx+RsJ/EjYH1kznPAS8zMJmg=;
 b=QK/49tvyhBwIjVQgfqLCg6gFWZnqqbZ9b5X2u1lK4jiv4WLW7bLeOBDJ
 K8TuSynYmMDLSNBHzw3fEs6UWAeMpimlxSApzbXuSQs3kh6WPuUJqr9xe
 Uv7z/zrPQV/21u0OhSyH5h+eYSJ/k8mCpJM8h0iuEOndXyHmcTpAt/PYk
 Mvx9auMjXkLQW0Rp2AQoiF2QN5Cy1rLIKFtDhIIk/DrC7N9e2HMRBLgJT
 IY9oyNez+OUj/adriqro+YHo64ZxDT3oVHan6axgRSEsX7NeKfcOSgE0k
 KjVs+zi5LeTD31uYOAmI2NuujeV4nqCq30dX756NyMaB0JjjDXyHVoPja
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QK/49tvy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: add link_down_events
 statistic
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of D=
awid Osuchowski
> Sent: 21 May 2025 19:54
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Dawid Osuchowski <dawid.osuchowski@linux.inte=
l.com>; Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>; Mich=
al Swiatkowski <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] i40e: add link_down_events st=
atistic
>
> Introduce a link_down_events counter to the i40e driver, incremented each=
 time the link transitions from up to down.
> This counter can help diagnose issues related to link stability, such as =
port flapping or unexpected link drops.
>
> The value is exposed via ethtool's get_link_ext_stats() interface.
>
> Co-developed-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel=
.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.c=
om>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> ---
> Based on series [1] from Martyna where this was implemented for ixgbe and=
 ice drivers.
>
> [1] https://lore.kernel.org/netdev/20250515105011.1310692-1-martyna.szapa=
r-mudlaw@linux.intel.com/
> ---
> drivers/net/ethernet/intel/i40e/i40e.h         |  1 +
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 10 ++++++++++
> drivers/net/ethernet/intel/i40e/i40e_main.c    |  3 +++
> 3 files changed, 14 insertions(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
