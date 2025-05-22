Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B81AC0DE6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 16:18:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF3D2811C0;
	Thu, 22 May 2025 14:18:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w6SVXUecsT4A; Thu, 22 May 2025 14:18:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CE8C811C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747923502;
	bh=C2tGqR8M/m9CxFOusVqWnsbJE5F1c+KFuuXTX29UAf8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VDL0wBXOMU6LhmPgnF9g5QYW5NKWWaY7WinWCv3ijCZiUamKNjC1Ff/M/ItAQvNyv
	 X/pfbV/mnab0pOYAnuNcnbHSDKs/7LiQsN8eN7UuPuUfJsyUf5S0yPTNAYd9o81R4D
	 wolbaZLQwIc+1kYjWbYf1bJR8qFYlmLxPtNb0GDFhN/UFRYnOfCbgo3B4BvvtWm31P
	 GavH5W8PKvLB1w7SSYW0Lw9iBszcDyIG/6V7/m4l86DGxRyBJu6Fhxzy87sIy/n700
	 mm2dyBTXAlt5SU0HT4Y2X6Azz0tGrUTmrJ7fHlWHqyQ4lX2Xuu2QEKIoL2SqsYwFSd
	 L8E8zBbubR6Ng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CE8C811C9;
	Thu, 22 May 2025 14:18:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 239CEBC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:18:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 143EF6141B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:18:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EXchqY-n2BZK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 14:18:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6DCC6608BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DCC6608BD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6DCC6608BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:18:20 +0000 (UTC)
X-CSE-ConnectionGUID: Rpel67L4RPez2FU8rHpSAw==
X-CSE-MsgGUID: PSePB+AoQHSFxSAfWM9XNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="50095599"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="50095599"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:18:20 -0700
X-CSE-ConnectionGUID: DHMH4aLfTSyrzbiWnSvgrg==
X-CSE-MsgGUID: ulJaL0AKRnCNpis8fJxrbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="141038057"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:18:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 07:18:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 07:18:19 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 07:18:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YI+tYQogLPRm5Zx8UBCVK4WG8xfwLft98x+C/DaF+Pb+lueR1hrZbjjNUGiRdI5nTqHawSQ/oImv+hl1DtyHUYA1jSM2vlmgPM/PjfQaGVPeD81JzhNxddDh7Rz981gDBCSNJOmE/78extxSftv6CxzgUmVlhWJUvZOIMIhhiDmNju/uD57cnVDOLmy/PB1RBfhNG+s0gkUHf9cUIZ0F8Tlx8eYoyKM4e9JIndJnNFp7F6LkM+TKbP5ueHBaA6xxbzFYNtj5qjyEeljEHpmbs6EYK5hFHRDhRpFR88TMrr1Gt7xiUO2mJe+uy725ibs7JFawP6qahDnlq8JrHCca5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C2tGqR8M/m9CxFOusVqWnsbJE5F1c+KFuuXTX29UAf8=;
 b=jnI548WDypo/GXOMkR6lEiSryC1QyO0yxLK0YLFMs6pX467GJz4/ItWjsoTNLIyNBfEt2b6UJPDsgP3aUMMoWaXTWMlwg1f4vBgVfYo95gA5/QZXI0G9mCjzW0jFR77ejVBO7XrNpR8xiVNyZXdSX7ESjDI/wW3jGmLuMS+RIIEQ/QwYcit7zjsd1Aq65tDQEAJZhmth9JPlUwxbuKMrIG5wJpacH6SlukaVyv4U1r0RalX2k1eedqVt2qrV3vAVikcFoR/yMtMpbywVp9Fxb64C+7ii5yMMxPt3c5SV3n2+50rgTxX2M3OzuJhaqT+5VtczgClCbDpqGaihbpSMPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by LV8PR11MB8698.namprd11.prod.outlook.com (2603:10b6:408:205::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.21; Thu, 22 May
 2025 14:18:02 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Thu, 22 May 2025
 14:18:01 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, netdev <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v4 03/15] ice: fix E825-C TSPLL
 register definitions
Thread-Index: AQHbuuwR8PbdAEcS/ku6ct2jUTgjI7Pe0lkA
Date: Thu, 22 May 2025 14:18:01 +0000
Message-ID: <IA1PR11MB62419F45C39C48528947652D8B99A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
 <20250501-kk-tspll-improvements-alignment-v4-3-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-3-24c83d0ce7a8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|LV8PR11MB8698:EE_
x-ms-office365-filtering-correlation-id: 566c798c-f4df-4f94-e5db-08dd993b75fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZWJMY3lIczErTG1La2FMdUpBeHJGWi94TG9XdXJPZ0M3SmV6REN3czhJcy9i?=
 =?utf-8?B?ckhFcFEzNG04RC9kZWttUURjeFBaaHNTeFBiN25nLzU1VllOT0tvQkdEZ2RK?=
 =?utf-8?B?Umh5NnJEb0N2S1lBN25xYjRhWDlmOUxKeFpCR0dwZllNRnJWdWQ0L0dGS29R?=
 =?utf-8?B?TFlSNUVpTFg0dXZvNUFIanRoT1NFOU5GZnY5blNaR1ZRUzVQZ3lHN3A3QkdR?=
 =?utf-8?B?aGxsWVZqSjJjaEwyTFV5NzBycURIOHMzdU1yblllMWdjUXJUZUdXb3RnTHlX?=
 =?utf-8?B?anphaUgzRklpT1R1OFFnb3lZcFhVS2MrcnpjZVczMXVMQVIrMWxhQVNFZTN1?=
 =?utf-8?B?VGVkZW8yWHh1SHdBU0VDVm03WnlwekpBalpRNVgrbUtwd0xJVE9QclJTaWQ3?=
 =?utf-8?B?bStQT3dCdDduQURIV3pKRllDTnl1UlE5QmtiOSs5cnU5WXR3NDFuVnJDZHI5?=
 =?utf-8?B?OE9TRWRkVW5sYWNqbXovSEhCdUdMbVBGQVdrODVETlJma1hzRDA0UG1qZk4y?=
 =?utf-8?B?eG1NY3hncWJYNk00REgwT3JyUXlTOUh2Uk1JWFlKek4vSElmcmNyV1kwQUNu?=
 =?utf-8?B?RmN2dlhDZXB5Z1F4TDJrR0g4amQxcGJPenZXRktoMFg3eWp6dStobmcwNDlO?=
 =?utf-8?B?UWIwZk9qUm8rVTJZZGxJNnVHdVZtK3JnbkVlVTB1ZkFQOUNvd0xCelZBZXZ5?=
 =?utf-8?B?bVJpZXlPZW55VUtzQnNKM0dRY0xDV1NPSjFkTUYwQkJjYTFTNmRscXFrUy91?=
 =?utf-8?B?L2lib0c5YVlvZFdvSUdKblRiaURZTFVzVlQwS2JZVmJpelN0ZVJhbWlzWlRU?=
 =?utf-8?B?WEV0UldQb1YwdXRaRDVINGJrYkhJRXdlTWlKcG1QaXdUT1RIMDFIUFd0T1JB?=
 =?utf-8?B?UXllallXZmFZRXhBTS80NlRnM0NmTitYcGlXd3psNXhjcG5GNUNKa1hKRVFQ?=
 =?utf-8?B?L0xQUmUyaG1Db0tFOVJYS0krMjFPQ0UrR01TTXhvdFRQcUVLM2ozcXNmVzRy?=
 =?utf-8?B?L0tYQVV4TER4RkxpYklFbDJKS1FnK0ZtZDBHdGYzaWI2MXg5cmlWZ2JmRmk1?=
 =?utf-8?B?ODl3SmgwQ0tJV25BYmtnMkdxaVNFK1VUYzB0RmpzQk5Eay80cWI0N2dLNU4v?=
 =?utf-8?B?QUkzN3FvejJMek5kMm4xdU14M0JQUXhsSGx6cmFnRFFtNHZtTkxaT1VHYUcz?=
 =?utf-8?B?bGtLZ0ZjVWhxOTNtWmV3WVZnb3k2VlBsczVjZEZ2SXcwUEdGTjdlbStXUEEx?=
 =?utf-8?B?YUNoUTYwdENiUGRUb3hwSzM4N25aMDFKT1dQNnpYc1E5Wm1PRUE5MWx1TFlX?=
 =?utf-8?B?b1R4bHFnaVlJcjdJN29uMDRPem1pR055eWV0dllYUXVYRkpPcE9vTHRjUm0x?=
 =?utf-8?B?OWcrN2JmamJDaS9WU1JUUFNsdWwvUW9HRnBsYVNMbkNEd3FwY2N1R1cxM01L?=
 =?utf-8?B?Wm53dWdQR1dtbW9vVGltOGpCb2lkNnN2RWlULzhIekdtcEhGSCtkYlVmcW52?=
 =?utf-8?B?ZktsTXdtMGZSTWIxak9GcUNQNUJROUpBWTF1L0tvc25LaUpsN2RPK1liNlZx?=
 =?utf-8?B?MzhDWUl2QWt1aUN4cHJNaHlLSWNMSU1DUDQ2NmdmRHFhOURsdmVhMWtuOXZw?=
 =?utf-8?B?eDVGamczcEdJcXJ6cm5oUktuNldxVXR6UUt4QlR5c2tRS1VPR3MzRlJlNDJP?=
 =?utf-8?B?eVBSYTc5a0d5c3FmR0xmeHROSlZxSVBoSis5UHJQTnNVdGx5M1RDWnBXNmkw?=
 =?utf-8?B?NnZKU1VzT1NTNDFpYXlDblRHUGtnek96VTE1Nm9mb3dyTmdYUzlFL2RjUFov?=
 =?utf-8?B?bjJ5UTN3c25UTjhrZVVTT0RzSU11cVFOaE1ib3kramhMQkJ5Zkg2ZHZsR1d0?=
 =?utf-8?B?OEkwU3VLc2Znb2JMd1FJd2JNVDBvQXAydjhDRHJ2SXNRNWhiTkRJWU8rQ296?=
 =?utf-8?B?ekdrWUJtcWlFcVg1RGw5cE9lN2UzNkJtV0NSbFE3VnQ5NExRV3RRUjRMa0pq?=
 =?utf-8?Q?uOD9DmDs5mLMpZI03t24yKChYffZF0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UStEbDN3Mm45YXlWQXpiYlFMU1ZjTG9YajI5YmxqSWVHakJqcG1nQ1J2b2tv?=
 =?utf-8?B?L0I5OVM0K0tDWXBzMzd5NWpMeU9aUDdqcFp4REJLR2dYZzVTQm12OTVWSU9n?=
 =?utf-8?B?VUtjSWd1ek5IbFpxQXdNYW1MMmhGVXhVUTBLZ3Y0eThoSkhBT1VEWmIwQkIw?=
 =?utf-8?B?VEUxSmpYVXhTY3VUZTAyTU1QWG5meGN2M2dZdUxXK3djdWQ2WUpZRG1kMEhj?=
 =?utf-8?B?dFZQZG1qcWIzek9nbFJ6SUlqYkxJUE94MDFBY0lCWC8rMnhhcDZxNCt2NkZ2?=
 =?utf-8?B?cVlUL2pnVkY1VUtXcFl3TERSeUV0eTVZdWtrWWpyTHFOLy9sU0wrVGo0aDNv?=
 =?utf-8?B?Q09ZMWx3OHVuTnlhc3NhbGtYdXMxR0d2Wk5HTzVIZmZBZXl1VU10VXphQkVP?=
 =?utf-8?B?YlZtb0REeHlEL3NIWW9TMVZncFB6ZnpoaTZvNmJRN3d4TjB6dlRMVCtvZHVs?=
 =?utf-8?B?YWRSb0FNbHoyQWhybzlTRHJCUzR1MFM3RWljZDRmb05pQ3JOeDd4SEg4K2wv?=
 =?utf-8?B?MXBWbVZXTDRraHJob0FvWGtiblZXbG4zSkJ5MWxmYkJrOHlvVTBaTVg2V2s2?=
 =?utf-8?B?Um5mc0pCVkJZQkFtZ1NveEJtK2RJSWFtdzI3cmZqVlJ6QVhsK3kxWkRoanBE?=
 =?utf-8?B?SU02OHN3Z2JUdnlwZmI4QWlZcHFqeFpRUzMwVGRSMmVMT2JrTkJwcW1yQlRL?=
 =?utf-8?B?aEFMQ0FtR1hoeGVvWk0wL3IwMVpmY0ptYWdDSytHVk5BbjRQaHdYTDhEdmJ3?=
 =?utf-8?B?Z1k5ZmdWR2dpNThrMkRwZFZIa0RPYzBBRkk1eVVlMFBnd0ptZWVXL3oxalhL?=
 =?utf-8?B?ak93bEtwQUQrWnBQZUN2RjFUeEprcDJPQ3l1T1BGbTZNVnlUYkJmTlA4ems1?=
 =?utf-8?B?MU1MWXdydjBiTmp1OTdkUHBGNkZadUlMbHZEYi9ITmFXOWRFTzV1eW4ycWFW?=
 =?utf-8?B?SW5YNTJFVWRMZ1pJRzc1WFNOZm15SW42UDdkYlduTVdTWGVHMFpwcTk0QjI3?=
 =?utf-8?B?S2NxRUVpbzRCWXpEZGJibXkwR2lJcDJxUzF4SlBiY2l4enN4N1VMbGJ5U0g2?=
 =?utf-8?B?Ykw1dml1R0xjZE9ZOW85blArYTk3VE5rWkJtQUwrRlRzTndSUnNtVWV3aTIv?=
 =?utf-8?B?YnhNOWZINnVCcE0wZUszbkZFOVpJWlNTejdwVU01emV6OWp2aFFOUXE2SjJW?=
 =?utf-8?B?VlhBQjFqYllSL1lrWHZiVllWbXdVMTdDWTBxdjAvU05KVGtWZ3J5UHJkdG1k?=
 =?utf-8?B?MFgxZ285STVaTHhwdU51OFNHRlMyNjh2TVJGVk5HQjMrdnVVOVVkMlhiRVdy?=
 =?utf-8?B?b0p0ZWMrZmw2TVpWMCtoY05nTFdycnRJbFVBUFhZdStnM2dVVUhvS25aNVEv?=
 =?utf-8?B?KzlrTkFQVDV6b1pFbkNPQ0VnTFdFajY4RXU0ZjFSalZpaWFtV01kcE00SUFr?=
 =?utf-8?B?bmlRckJwZFYyTnY1T1V1eXE0VVd6dGVYbnlQZlR2SEU1a20veEdUSHhYSGdu?=
 =?utf-8?B?NWpjY0RDZWkyOEROa3ViQ2NzTUdNMnZDODBWbXJHZVRsZUo3NWRvaVJGY0s5?=
 =?utf-8?B?SVlySmFUUXBaOE5GMkFIZE15d2pKU1M2ZE5KSVZuaVFhTGJ2bXlKN3Bnbk1s?=
 =?utf-8?B?STVBdzl4eHErZnRqZ0VmRzdKakcrSDJnUWNyK3BMOUdyVlA4MHU2UEhnY1hZ?=
 =?utf-8?B?OFh5NHZiZ0JBZ3VVRHVNRWhjdHNDLzdVMXRrQmJ5UzY5TUQ1WlNua2o1MFpX?=
 =?utf-8?B?WlI5WlFpbURNbnVHYVJpT01VMlhLZ0tnNGlXeGV4WGxNVjZJQjFSS2pBRmgv?=
 =?utf-8?B?dHpRSHUrTUpnM3A1MExZVFZIdVFlY2MyaDdaY25hVGczc3ljWVBzbGg1TndQ?=
 =?utf-8?B?WEFuWFZpMjU0c0pUdm1LWWMwTnIzYkM3M1E0QVYybEVLYVM3cVphT0RGanVD?=
 =?utf-8?B?NVoyK0J6aGRGR2RTK3JzS2ZOSlM1UTdrN0wyRmU1M1NFRnJ2bEd5Q1Z2Nitr?=
 =?utf-8?B?dzVqMFVJbmZUZUJ6QndaSHYvRXc3SFRaaHpKOUVCYkZOcUU4SXlpY1dDM3JF?=
 =?utf-8?B?YkZEVGE4QmFEKzlGbEMvZXhORTJvWlFwWmdiSHNFMXRsakR4SnVQcTFsaVNQ?=
 =?utf-8?Q?EdWWLgz/PltIJfUPFEbwiMlvh?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 566c798c-f4df-4f94-e5db-08dd993b75fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 14:18:01.7740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rui3x2/NO9sSJ1nMxtMqVFIUeb6kyaPYsBh47bMbA7QWxHDo15NtMs96b8qb087h0mtYqFUEV8VVQniTmGezzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8698
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747923500; x=1779459500;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C2tGqR8M/m9CxFOusVqWnsbJE5F1c+KFuuXTX29UAf8=;
 b=LNwgixq0jBMvxMsNi+hBarr/zDrvMQUtqRs0mvH/PlBuPKO8qE3BVB5i
 7RPpUMC8vk5TP67n8ZwSeplv4N437UAkhuZVn+6thr/9/zyQpCCS5MQTs
 86rleBuwYyKdBU9O2OW6IJ3qt4Hr1t7rsJFg+tjqU9btv3qhI8ytrmyAI
 j7CmdqhqoGJ9lOhyh1HlnOjpN22FLM26C/zaldcmOHMNgFF22JlCRwwZd
 cuoau8ISh6opkXKcKLP4LvkBMy29gU+AJM3QmV8slVTfnyhuctr5RInQ8
 lEGxDwwpiF56A4LQTCV/d6mJXeZPEYOutSLz7eRxw4Mow/vQW3KUftm4u
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LNwgixq0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 03/15] ice: fix E825-C TSPLL
 register definitions
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
ZXINCj4gU2VudDogMDIgTWF5IDIwMjUgMDQ6MjQNCj4gVG86IEludGVsIFdpcmVkIExBTiA8aW50
ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9u
eS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+DQo+
IENjOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IEt1Ymlhaywg
TWljaGFsIDxtaWNoYWwua3ViaWFrQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyIDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtvbGFjaW5za2ksIEthcm9sIDxrYXJvbC5r
b2xhY2luc2tpQGludGVsLmNvbT47IEtpdHN6ZWwsID4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5r
aXRzemVsQGludGVsLmNvbT47IE9sZWNoLCBNaWxlbmEgPG1pbGVuYS5vbGVjaEBpbnRlbC5jb20+
OyBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPg0KPiBTdWJqZWN0OiBbSW50ZWwt
d2lyZWQtbGFuXSBbUEFUQ0ggdjQgMDMvMTVdIGljZTogZml4IEU4MjUtQyBUU1BMTCByZWdpc3Rl
ciBkZWZpbml0aW9ucw0KPg0KPiBUaGUgRTgyNS1DIGhhcmR3YXJlIGhhcyBhIHNsaWdodGx5IGRp
ZmZlcmVudCByZWdpc3RlciBsYXlvdXQgZm9yIHJlZ2lzdGVyDQoxOSBvZiB0aGUgQ2xvY2sgR2Vu
ZXJhdGlvbiBVbml0IGFuZCBUU1BMTC4gVGhlIGZiZGl2X2ludGdyIHZhbHVlIGNhbiBiZSAxMCBi
aXRzIHdpZGUuDQo+DQo+IEFkZGl0aW9uYWxseSwgbW9zdCBvZiB0aGUgZmllbGRzIHRoYXQgd2Vy
ZSBpbiByZWdpc3RlciAyNCBhcmUgbWFkZSBhdmFpbGFibGUgaW4gcmVnaXN0ZXIgMjMgaW5zdGVh
ZC4gVGhlIHByb2dyYW1taW5nIGxvZ2ljIGFscmVhZHkgaGFzIGEgY29ycmVjdGVkIGRlZmluaXRp
b24gZm9yIHJlZ2lzdGVyIDIzLCBidXQgaXQgaW5jb3JyZWN0bHkgc3RpbGwgdXNlZCB0aGUgOC1i
aXQgZGVmaW5pdGlvbiBvZiBmYmRpdl9pbnRnci4gVGhpcyByZXN1bHRzIGluIHRydW5jYXRpbmcg
c29tZSBvZiB0aGUgdmFsdWVzIG9mIGZiZGl2X2ludGdyLCBpbmNsdWRpbmcgdGhlIHZhbHVlIHVz
ZWQgZm9yIHRoZSAxNTYuMjVNSHogc2lnbmFsLg0KPg0KPiBUaGUgZHJpdmVyIG9ubHkgdXNlZCBy
ZWdpc3RlciAyNCB0byBvYnRhaW4gdGhlIGVuYWJsZSBzdGF0dXMsIHdoaWNoIHdlIHNob3VsZCBy
ZWFkIGZyb20gcmVnaXN0ZXIgMjMuIFRoaXMgcmVzdWx0cyBpbiBhbiBpbmNvcnJlY3Qgb3V0cHV0
IGZvciB0aGUgbG9nIG1lc3NhZ2VzLCBidXQgZG9lcyBub3QgY2hhbmdlIGFueSBmdW5jdGlvbmFs
aXR5IGJlc2lkZXMgZGlzYWJsZWQtYnktZGVmYXVsdCBkeW5hbWljIGRlYnVnIG1lc3NhZ2VzLg0K
Pg0KPiBGaXggdGhlIHJlZ2lzdGVyIGRlZmluaXRpb25zLCBhbmQgYWRqdXN0IHRoZSBjb2RlIHRv
IHByb3Blcmx5IHJlZmxlY3QgdGhlIGVuYWJsZS9kaXNhYmxlIHN0YXR1cyBpbiB0aGUgbG9nIG1l
c3NhZ2VzLg0KPg0KPiBDby1kZXZlbG9wZWQtYnk6IEthcm9sIEtvbGFjaW5za2kgPGthcm9sLmtv
bGFjaW5za2lAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBLYXJvbCBLb2xhY2luc2tpIDxr
YXJvbC5rb2xhY2luc2tpQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVy
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5oIHwgMTcgKysrKysrKysrKysrKysrKy0gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHNwbGwuYyAgfCAxNyArKysrKysrLS0tLS0tLS0t
LQ0KPiAyIGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0K
Pg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEgUyA8c3gucmluaXRoYUBpbnRlbC5jb20+IChBIENvbnRp
bmdlbnQgd29ya2VyIGF0IEludGVsKQ0K
