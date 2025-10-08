Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5263BBC5485
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Oct 2025 15:51:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0118240397;
	Wed,  8 Oct 2025 13:51:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F2ict_oNJyF4; Wed,  8 Oct 2025 13:51:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DB97403B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759931465;
	bh=rQwYHcPxQf9aR/p6+vOEMg+6pXSXtbrH9NCEG7DvbzE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ChnAa8QZDi0iHTIc2ndU4J5HmIhsEuU259zf6PIN+IZfgSnNwd69t32faqjgwqiQh
	 +K6h6N7U0VtkkTLIBVwkh4/OqCi/1H9poNQGXJAeGpk7B9c07oBsc82cAn9vLQgrvX
	 8pnSBpPCa11IasgKssPOZkJowSXXfXEwBdaUwVTfX0CItWDE6KGHRe5ZVgzARNfaD1
	 ILICX/3r6J0PjxFnr0tkfPeOi1epFzAEjKUPmW4CISa1AlbhQT58UekvvWO1lCzzCi
	 KG+VefMUdPkypx/ZYHM3xRu8SyiMyjlWWOrE8jsmUj6KFn3N3X28Fhso5Y0NpYuZt2
	 XCiR5fU3biMTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DB97403B0;
	Wed,  8 Oct 2025 13:51:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 24B829DA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 13:51:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B923402FA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 13:51:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GUxswJJiCg9l for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Oct 2025 13:51:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 57CB8402B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57CB8402B7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57CB8402B7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Oct 2025 13:51:02 +0000 (UTC)
X-CSE-ConnectionGUID: EDrxEcRQSmioX/RZ4sJtXQ==
X-CSE-MsgGUID: 0Ho1iRJnRWOqZpAM5yIK8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="62155629"
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="62155629"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 06:51:02 -0700
X-CSE-ConnectionGUID: HusAjZSoSAS8Rz6ZZM0pjA==
X-CSE-MsgGUID: Gxh0xlMwTRqBhUXyyTNyIg==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 06:51:01 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 06:51:00 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 06:51:00 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.29) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 06:51:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NTpN5ssA1aolnJfwrvHtD3EMWUepGpX+oQdL8bpiRMPRpouLkjUqvK6rZS5ONJty7anQYPZX6axbpYemeIisVCAx3yMtdVk1rCow4o5CtawY4mp5/OZVpfl7bqFSVR0r1rInA7p3mP1KhuPvigpI5Mr9UDd8rtGoW6w6P3uRx+e6wzRh6nqD0kr9ERZVcV8lx1OvpXVuTmXAKQSEIvzUSVdS4qUfGS8gogP3bUtkT2mUBKBQobWgDbtpZCsuhaMgWnXKLAhIFMImWSMn57hEQfLU7afrt5yxWiL4vQGBPwKB6VfS5JUEsz7lbcWsBjPtNHWa/Aa8wRfPpoErvA7lLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rQwYHcPxQf9aR/p6+vOEMg+6pXSXtbrH9NCEG7DvbzE=;
 b=IRG2L2r5vJ7Ws1/DQRHHZBW6g6VRCXrTrcYxWlKq6c3zU/gYEoffDNGvv3s1rlrOKt24pSLG5iQAo8mKir+aMZNmUqNFlpAYoviQhmxfkgGZuofn2sf8ojNn8sG3PGQ1mXpWT82M4xsWwTbd5PyeF4u7L9UHurGYbveWN+VwXQZoRU0cxiV9h2Yrl2ZQYO26XdM8u6hsS3h88K4FEXfvMcv4uxj242WloZrhRtvjyY1o+ymXweBYhVWNoedvnhDk3Xq3EuO2wXiMtGCgXf2rVxL7aSWHPn0dTn0R0AXJotHyuFrWPTJHiXWcJrP/CSL6XB7BIBjlAjaO66wctfLaoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CY5PR11MB6257.namprd11.prod.outlook.com (2603:10b6:930:26::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Wed, 8 Oct
 2025 13:50:49 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9182.017; Wed, 8 Oct 2025
 13:50:49 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Brandeburg, Jesse"
 <jbrandeburg@cloudflare.com>, Jakub Kicinski <kuba@kernel.org>, "Hariprasad
 Kelam" <hkelam@marvell.com>, Simon Horman <horms@kernel.org>, Marcin Szycik
 <marcin.szycik@linux.intel.com>, Rahul Rameshbabu <rrameshbabu@nvidia.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "corbet@lwn.net"
 <corbet@lwn.net>, "Keller, Jacob E" <jacob.e.keller@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg, Jesse"
 <jbrandeburg@cloudflare.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 5/5] ice: refactor to use
 helpers
Thread-Index: AQHcJz6OjYth38ayIU6or4e8695WJrS4ZG1w
Date: Wed, 8 Oct 2025 13:50:49 +0000
Message-ID: <IA1PR11MB6241B2F7C66D3A1A2CB75BD28BE1A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250916-resend-jbrandeb-ice-standard-stats-v4-0-ec198614c738@intel.com>
 <20250916-resend-jbrandeb-ice-standard-stats-v4-5-ec198614c738@intel.com>
In-Reply-To: <20250916-resend-jbrandeb-ice-standard-stats-v4-5-ec198614c738@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CY5PR11MB6257:EE_
x-ms-office365-filtering-correlation-id: 3b663dda-fdcc-4f38-ef2e-08de0671b035
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?WUUzN2tTME9HMmpIekYxQlp5dGRWR3g5MXkwWkthazBSdHpDNVIvNGY3WmFR?=
 =?utf-8?B?eXozdzNQUFpnU1lEUzVUa0hNM1B2eDU3UTBRcWVkdVViYTlTUFZIbm9qT2Z5?=
 =?utf-8?B?TU9zQkYvVEVJSkUybWJNcXZ2Y1BZZS83Q3NZeVJjT0h2SHVsbGd6U0o1THY1?=
 =?utf-8?B?azJ6VlhMVjA1MEYrYXExV2ErVUw4dUFMUU4xYWlDbHYzYytLckN6NXhFai9T?=
 =?utf-8?B?b3c5OGZJejdEQzdjUEJnK09tMFYxdnBwaWwxZWU1VWpkV25EcHBjNjkySWZn?=
 =?utf-8?B?c0hBSDBhR3YrbWlOR0RPOVU1eEFPVEhaOWVVeEI5dWNCWXdaSTliMjFFOS9s?=
 =?utf-8?B?emc5OVNXSHBmNndUMngwR09FZUtDMkl6S2tLNW45WXB0SytMWTZTYVU1eEVt?=
 =?utf-8?B?QWNHcjBmLzMyUzk2MXk1N05UYmlnRFBnWFljUDFoQjZPVXFHWEpvSTB1anBQ?=
 =?utf-8?B?TXJ0dDN4U0RsMWhhaUJ5bEVNSW5LUVV2NlVFdG9aOE1rdW1qUUNVNmlPU1dK?=
 =?utf-8?B?dUJJdWw3d2ZBdXlrTi9wQmwwRFlITmNEb01WYUtNNjc0b3E0VlFuellNSWQ5?=
 =?utf-8?B?N1R1dmh5UUdBVEo1NmRuZG1CbDhqL1FJQ0tiMDYva0l6amlpNWRyMytEaS81?=
 =?utf-8?B?eTdWOEFnekY2RzVkYm56WDFNS0VIaWRRNlM5a2YwUzc0eDdia3RJYVZnNkdR?=
 =?utf-8?B?Zkt5cmg3TS85WVplaEhZdWw2SDZmNE9hb0lDYkJScnY0QThzRVlka01VTmlk?=
 =?utf-8?B?bmw2bTlPUk5laXgvTXBjeXo0amphYWtDWElHZ28zaE9HMUdKdGdtY0ZwRjh5?=
 =?utf-8?B?NGpTUjFhS05RcmVJU2txMUljL25KaURpRitsTUhBN0ZTYjV6SnVublYwN2dJ?=
 =?utf-8?B?bmRHbjdOWFhjTWZKclVnUE9zV3MzeFVYS3FXTk9qQ2pxVlhSZTExVkFjY1lT?=
 =?utf-8?B?b3ZxN09wMldLYThqOStObTEveHQzMXFCRmRUdjFERzQzaC9Da242OUlieHNK?=
 =?utf-8?B?Z1Z6d0NSWExYUGdaTHBnYzhKWDFRSE1Zdmk2MmtLQjE5QW84NEpIbnVpYk5V?=
 =?utf-8?B?NS9BdGM0Mm5NTlEwUjBBOFExMkNuMDBSMURoYkZHUHBBZnhHV0pCY205V2xM?=
 =?utf-8?B?Y2RqWWs4MEJwc3BjLzRpRUh1R0M4RlpEcFlDb2xVMDA5dkxJaHFZRVJrdmxX?=
 =?utf-8?B?SngxSkJqRUtOVHZlenY3Rjg5bWk3amZpQkdUL05qdWx4czhHTVorWWZUYVl4?=
 =?utf-8?B?b1RRUDRDcmZpUGFDcGZTK2NnVmVkVnlvenNaeGJRbkx6NlZOeGlIdnFmdk1v?=
 =?utf-8?B?SFFXM0lzc2lxUkJ2S3pFbGJCQmJEYjljTmFYLzZQR3krUUZrUy9Gb0NwL0Vt?=
 =?utf-8?B?amR2UmxiNUZlL0ZJd1VOQ0x3Uno1SElsRTZzTk9Cbm5tU2pNRmFuQ1dybFpr?=
 =?utf-8?B?eWVsOG9iTnpINGNHWTBGdGU3eC85NVZoUmNKMUZwMjNGeEFrOWdlWjJCaVpv?=
 =?utf-8?B?V2ZlNFFHNUVNWlphVENPZnptK1k1Rm1JSy9tbktOd2RSZm5zUTQ3aHBFRmdL?=
 =?utf-8?B?OUlqVDFKQ2pWb1RzTlFwYVZiUk9HTWg3Q2tnaU12Q1ZVcmVwZGNVcXZUbGcz?=
 =?utf-8?B?VXlPbVhiNnlMV0FndWM0UENRV1VIeUgxTjVpMXF0OGtMWjlmdnNXWGVmSjJm?=
 =?utf-8?B?d0tKMzNzUDlIL0g2dGNJSnM5TjRSZ3NCdW9zeXRXMkpYN215N1JVYWd6dlFq?=
 =?utf-8?B?YVIxY2ZuMW9iVFp6Y0JDRndBcDFDeWhVZk5nK2ZBdG5kSnZSY0loNkMyb0tO?=
 =?utf-8?B?dllFbjJLbkxzWVZkSW02aVdudGdMWVJ2Rld0MzY0R3RoRWo1QTU3RW9xUFVv?=
 =?utf-8?B?R1dFQXNveVRvNXVoNUhVKzhQNng2WnFDUUYyZFY3d1RKWURJSmxwaWtrVGNK?=
 =?utf-8?B?TkFaWWxOdmVyZzREbW90eDQ1RkFpVlk2ZGdTbjdSeml6TzBPNXlPdXRzMy9v?=
 =?utf-8?B?QjBvbzNoWVZ1ZzVKSm1MeHlUWkhuQ2NwbllVSVZJdjJlOEJ3T0F0TElKRmZt?=
 =?utf-8?B?QkpHSzFJNFFwWFJZQ1ZZOGxyaDFjQnlJVzZRQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YmlvbnBZMTM2eHA0bnhZWkE5bkkzaXY3ZUp6YmdIWE8wVTNlZExuL1lWS2Ny?=
 =?utf-8?B?VDBhdEdXdGpJNUtpd3ZCeEFranFMT05uNVZmMDVEUExHSXRBU2hWK1dIcHpr?=
 =?utf-8?B?dWJwRTF0VGtMc29Xazh2dWtMTWxJUjJzc3BQU3Zwc015bWFMRUorS2ZtdWdw?=
 =?utf-8?B?K1NCS1FVc0lEOVRDV1FiRTNZUzl3M28waktXRXJZdlJrbmI1b01IZG93T2tP?=
 =?utf-8?B?MXlwU0NsY0FybFpOZjFtMTFsTU0wa1Uwa3ZHSmVvSmlHY2tvZ0pzaTlQWlFt?=
 =?utf-8?B?dlExclpDVVJHelNjWStmMFVxaXlJa2JxS2xxTE1sQkxpNWRzT2ZMR3dxSTQv?=
 =?utf-8?B?dXdsbm5UaGYrTTF0SE5IYjdhZjBaalJPbk1PL0pTZWRxRE9WRmJHUXBhb2Qv?=
 =?utf-8?B?Y3BraCtSQnpNTjNFK3dtVGZwaXNGKzBqMzRqS3BPNnNScFpxVy9IVGpxUTJp?=
 =?utf-8?B?S0JoY2lUc1dRYnJqb1IzaHFsamZHWWpoSW04QVo5K0JMTE1GOWVTcEhaUktM?=
 =?utf-8?B?NkRLRkpJbkthaUUyU2pjYzFRVTg1cGZOQ0NlZGIzRWVZUE50ZnZGMTZUN3hx?=
 =?utf-8?B?d0pzdmRRN3hDN2FQN3hUejhBSzRrSHUra1RhSEJpa2gyQ1FTRlU1YzQ2RFp3?=
 =?utf-8?B?dXg4KzV5OHZZTGd2T2kyYXpnNFNMOTFteFB0OTlMK2hGRVBrSWh6SDVCN1BK?=
 =?utf-8?B?eWtCcEpZUkR6QlRyOXlvRW80dkVqdU5Qc1Q1dzJuRzVIaitORXF5L0xaNkFQ?=
 =?utf-8?B?UUhrWnJxSEJOTTN0aC84MUtPOXkwYTV2amM0bnZINEZsZHZqMjQ0eDAzZmVj?=
 =?utf-8?B?ajE2SXgwZnEyT1ZZSlgxRGJPdHU4czBmUUFnVkhmcVZTQ1c5RitRc01YOGNO?=
 =?utf-8?B?b3Z6blh1NEgyUXp0OEJHaEYzWDlTSGtLOEpOTjRYcDFEemdoa0luTVhybGpW?=
 =?utf-8?B?bWk1WVN5SFNPNDhTY3ZrWXB2eWFLVzVTNEFNRTBmOHV4U2tLVTVSNHNLK2ZN?=
 =?utf-8?B?UHJpVGI1MDNVb1E2UUxYTTNBVEZrcGEyYXYzZi9pYXhKZEUzOWxmNmpFT3Ji?=
 =?utf-8?B?M2RxcmFJWUpvZlgyS0x3SzMzdkFvaGM3TktsNVBLSnNOMnVoQlU2N2VPU01l?=
 =?utf-8?B?KzUzNnN3Q1VQVHkxUkpUa2oySStHRnErcUhsRHAwQyttSFlOOGRuWkF5NTIx?=
 =?utf-8?B?ditFRi9GbStRSmFtWTlxcVRqWlRzbWhXUDF3cnNwenJLaWFEbjZrb3RtMVpE?=
 =?utf-8?B?NlQxUHVYQzh4TVR5UC9ZZXMra0hPQXE1RzN4b2lVZXJ6bURyaytwQklRRVV0?=
 =?utf-8?B?MFV5bXZLeDMvQm0xZGdnZmRpN1I2TFBINTRSN1lzQUpNczhZRDFUNWxHUzBa?=
 =?utf-8?B?ejVWakwyeUpwYjZLcmlJSUU0NVhzMTBOcS9OQVEvYUlKRlUzRlgzbTcyR0J5?=
 =?utf-8?B?L2pTbytodmtaUGRtZlpzTExIQXl5Z2RlS0hCazRMY2ljQm9KWkxZdElsMHRP?=
 =?utf-8?B?TC9LcEhEU015bVRYMStyYVJXSzFDVjZ5eG5GM3hHQXBhdklCbjlINFcxQUto?=
 =?utf-8?B?TGN0bFZOVUQyMGo2ODJndWpqOUhXWEVzUFdtVGRSbS80Q01xbFVnb2F5QXov?=
 =?utf-8?B?ckNybXhEWnNpVHRjcjBxOVdSZFdsL3A2YUpISWxrT2tOZjhPT1RiQ2NCd0Y3?=
 =?utf-8?B?elZyUDdqUmNTWmgzbkVEU2s0eUxCRERnSGpSUmFXanNaL05pQ1krSEZReEMx?=
 =?utf-8?B?S1pFM3lYQzV3ZnVaSFpIN0dHVGxMRVJoeGFDbkZlY0hmMHUwb2NWcG9LakF3?=
 =?utf-8?B?VzFUeFFzU1E3cGg0SktZMTA4SVBsRXRLMGFGQjQ5SWtPRzlYN0c1bW51TlY4?=
 =?utf-8?B?eVFvQVlmS21tdFp3a3dSQlBkd0tmdHBoY0xhalZsK1pHYnZPdVJKc3VLUm5n?=
 =?utf-8?B?RllPZnVtSzdyVUJyUjRCSmpOWU1jOEx6YlRlYmFDbDhXOExGZU5rOUloU0lD?=
 =?utf-8?B?a3ZsZEtTOHZVYXF4ajJKNDY0WUVFTldta3MzSDJSY3dZMzU4c2lvOW5oejlY?=
 =?utf-8?B?cEgxS1Uva2thOWNuYU1udWppakFzY3J6WlRCYVovY1BvMW5QR1hpUUpmYm1k?=
 =?utf-8?Q?n7SNB4OxRWw5yDuSMhhcwJeg6?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b663dda-fdcc-4f38-ef2e-08de0671b035
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2025 13:50:49.0269 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pi1T/rK0DANS/t7Dc3b2PoUumtKWM2ygqjc6u2KtRjMVhmjGlAO8QHsGaZL+cZ5YWP9xjTby6eRVay95j234Ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6257
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759931462; x=1791467462;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rQwYHcPxQf9aR/p6+vOEMg+6pXSXtbrH9NCEG7DvbzE=;
 b=TDNjr2L7Fmkn9fSBLnigjdXUEfFtAYm1SwSLeMUR7iHdNbRQRrbcYoxn
 +hlXh50vEaPm9l5NflgCr7x2PUO8YhJyWW7zoocFwC98N4SebyV10uPuR
 yBtN6w3mAcImUzhjse+mw18W6+kjpyfkdLzomUTEt3FkDhzXnapLQsr5Z
 jc8WJQYGM/2mstjHYWaKOsIYrzpSQ02TQNLHdByxOUngmZ/0NbuG51gmG
 1MpW4j6IOUg9ceuePePIRH6lSGuSs/tJNLI1s95O8KDA8P3cICsMrmMj9
 v/+/NlV+C0nXrLgrRoZhFUuOLiveH5hPEoPQERbmnbMocujDZP1R/3JJM
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TDNjr2L7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 5/5] ice: refactor to use
 helpers
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMTcgU2VwdGVtYmVyIDIwMjUgMDA6NDUNCj4gVG86IEJyYW5kZWJ1cmcsIEpl
c3NlIDxqYnJhbmRlYnVyZ0BjbG91ZGZsYXJlLmNvbT47IEpha3ViIEtpY2luc2tpIDxrdWJhQGtl
cm5lbC5vcmc+OyBIYXJpcHJhc2FkIEtlbGFtIDxoa2VsYW1AbWFydmVsbC5jb20+OyBTaW1vbiBI
b3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+OyBNYXJjaW4gU3p5Y2lrIDxtYXJjaW4uc3p5Y2lrQGxp
bnV4LmludGVsLmNvbT47IFJhaHVsIFJhbWVzaGJhYnUgPHJyYW1lc2hiYWJ1QG52aWRpYS5jb20+
OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9y
ZzsgbGludXgtZG9jQHZnZXIua2VybmVsLm9yZzsgY29yYmV0QGx3bi5uZXQ7IEtlbGxlciwgSmFj
b2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiBDYzogS2l0c3plbCwgUHJ6ZW15c2xh
dyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IEJyYW5kZWJ1cmcsIEplc3NlIDxqYnJh
bmRlYnVyZ0BjbG91ZGZsYXJlLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BB
VENIIGl3bC1uZXh0IHY0IDUvNV0gaWNlOiByZWZhY3RvciB0byB1c2UgaGVscGVycw0KPg0KPiBG
cm9tOiBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT4NCj4NCj4g
VXNlIHRoZSBpY2VfbmV0ZGV2X3RvX3BmKCkgaGVscGVyIGluIG1vcmUgcGxhY2VzIGFuZCByZW1v
dmUgYSBidW5jaCBvZiBib2lsZXJwbGF0ZSBjb2RlLiBOb3QgZXZlcnkgaW5zdGFuY2UgY291bGQg
YmUgcmVwbGFjZWQgZHVlIHRvIHVzZSBvZiB0aGUNCm5ldGRldl9wcml2KCkgb3V0cHV0IG9yIHRo
ZSB2c2kgdmFyaWFibGUgd2l0aGluIGEgYnVuY2ggb2YgZnVuY3Rpb25zLg0KPg0KPiBTaWduZWQt
b2ZmLWJ5OiBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT4NCj4g
UmV2aWV3ZWQtYnk6IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz4NCj4gUmV2aWV3ZWQt
Ynk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gU2ln
bmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IC0t
LQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYyAgIHwgNDgg
KysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0NCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9mbGV4X3BpcGUuYyB8ICA4ICsrLS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfbGFnLmMgICAgICAgfCAgMyArLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX21haW4uYyAgICAgIHwgMTAgKystLS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfcHRwLmMgICAgICAgfCAgNiArKy0tDQo+IGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2Vfc3Jpb3YuYyAgICAgfCAgMyArLQ0KPiA2IGZpbGVzIGNoYW5n
ZWQsIDI0IGluc2VydGlvbnMoKyksIDU0IGRlbGV0aW9ucygtKQ0KPg0KDQpUZXN0ZWQtYnk6IFJp
bml0aGEgUyA8c3gucmluaXRoYUBpbnRlbC5jb20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IElu
dGVsKQ0KDQo=
