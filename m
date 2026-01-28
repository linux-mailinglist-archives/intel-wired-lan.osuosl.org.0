Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KE21NNVLemkp5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:48:05 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 572EEA7283
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:48:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3B82607C3;
	Wed, 28 Jan 2026 17:48:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9H_ZfO71VY6U; Wed, 28 Jan 2026 17:48:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 666BE607B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769622483;
	bh=aBM4glfXzwsAicvVJfuotOvKmFF2NBYZuxIMGcZ/s8s=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lP/omX/A5jBwanOHOD81rZhkGh7L4f1FeQoLL2nrFKHkW6W+KNNTO6JzpsBN9X0q1
	 XU6Ko1ZVC4bCRfyHl948TLJGiRC25s1IGqLObdsYpx12jvINkjNddrrIi+W7zgjzCw
	 1I84fYbJ6UNm8l5qxSDn1cM5D9OHBonlpGFVTcsXS5z+RZTZ5ENWD6d/zVLZDV4Bv/
	 UEtDSR1yIlb/wSNeb/C5eMC7p1ThJeJqdwr5pudi9hNfOono8L/YjpCF9PkjghMond
	 nlZ5KsmB1WClcvWaVXXLRHb3lt7eYnpa4sOLu8PGck2HZIzUUtRrcRha7ZClT5XERJ
	 3JopT63RokyHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 666BE607B8;
	Wed, 28 Jan 2026 17:48:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 28671118
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:48:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 17E9640353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:48:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rPxehU7MHlIG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:48:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E6E74400CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6E74400CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E6E74400CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:48:00 +0000 (UTC)
X-CSE-ConnectionGUID: +SIoQ5hqQ5a10qfU3Hng1A==
X-CSE-MsgGUID: 2fvgU4MmR0KCfHCc3aZoHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70898011"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70898011"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:48:00 -0800
X-CSE-ConnectionGUID: g/ty8ynIR5qjMzBQMLaYNQ==
X-CSE-MsgGUID: aViRhwZPRx+mlL9szvLizw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="213196934"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:48:00 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:47:59 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:47:59 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.32) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:47:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dYUoU5B9sRNEMLiXL8TTd+TFhdX28NM2CsAXZf9FJGb3ye/SfYNx5SVo/YnV/YCDw6glaungExQIXAEIlp9ZwKQ/GcPQIymvDO87wLnhbGDCO2Nf80KnPgceca28acP5fAOolTtqHhz7/9f0LLzZREmosZhDpC8L8En32xyIhz32EPtXo587D75ymRJ6Zdb7cEalfKo8BQcr0PbqFD7YvfnwO0Vl8XGQ3nA5blrBIuuBJy2wF1Fm0eNBqi/8bELf8/0fk7nJoJTvjQNqWXvD45ZKL2crapBV366eK8tsqyhol/IL5CLx0fWdwnn5+NW4lk9+srST/XELpiSq6XbHRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aBM4glfXzwsAicvVJfuotOvKmFF2NBYZuxIMGcZ/s8s=;
 b=Br5j1ht0qA9FwiZ8wYZ8IxXw+sVYfQkvHBhYnNU7GBwuzxkMOb8sGtxLPVqXZ9VRBu06zuPYD+Oep4RBOb6BJWNdtLTOyelM+6EDZvyT32sbZjvxkYNYeaEAzraGIBZz+q08MQTWoc2IP2mPRWu19Sq1V3kqRW1JOhOlqFnrZa3RxhrW5o/lqAjsJZb/W7nyqEid+oACexI2CU2tKZp+ZjA9z14siXvhBIQNzNZBAhFedAooYkQjDRJ4SFAEJoi9AzxaK9wmuvNr7Svj3PzItJDBoWmo5V5xKevfkzmO03QOMPr9IwZzvyhFYf/CLq/UTOcWbrbORC3Y3jd9ozkZZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 17:47:55 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:47:55 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, "Stephen
 Rothwell" <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 15/25] docs: kdoc_re: properly
 handle strings and escape chars on it
Thread-Index: AQHckHZjwaykyDiETUu1go6efWBsb7Vn24Fg
Date: Wed, 28 Jan 2026 17:47:55 +0000
Message-ID: <IA3PR11MB898658F0BEB00EA18586E5F4E591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <934f61b22277dd5575c77edde96dfa7a98c8d79b.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <934f61b22277dd5575c77edde96dfa7a98c8d79b.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB6991:EE_
x-ms-office365-filtering-correlation-id: e6a2268b-c00d-4d2e-f071-08de5e955e3a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?TDMxUjZSVTRpYTdVanJIajVTL1pRRkhlaW41NVdZbVdjeHd4dWRqWkF4K1Fk?=
 =?utf-8?B?cVJlSFYxWTJ1WTQ5L1U2S0czQWpUL1BGb2U4UjI1TzJEL2JQeGNVY2VidTNP?=
 =?utf-8?B?dmU0Umc4UVZsbjlwLzU2dTRydVFRUmJkVE4vc1Y4YnJPRHFuNHBvdDFFNVd5?=
 =?utf-8?B?dWJtV3QvTmZ5aURVV1RZVVZQdWVuKzNaYWRYSFRwaWZ1UDdpaVRhRCtIUDAx?=
 =?utf-8?B?dTRXTE12d0FOWUJWWDFtOGRjQnBBRGt6ajNqeG10V0d2bFhzY1pxUHFIa3h4?=
 =?utf-8?B?bkhvNjBCOGV3ZE9Band5WVI2MWYwSHJtWjlWeWN0TkxCNkR2cXQvUnlyeWRi?=
 =?utf-8?B?YnMzSFNveTZPWnRKUWNqRzFQQTlYS2pnckRFcjdaZ0FEbFBoU2xEeVFZVmxO?=
 =?utf-8?B?MzBLMlZ5cnYxRW1BbXBqdlo2Y2ViZHRGNmhlV21ZSFkxWVcwNW9RVjE1MUFP?=
 =?utf-8?B?bWJpUFIzMmNFME1KVU43ZHo1WU0rbURYb2NwMVNwTlRubjRHSmhJVjJpU0FT?=
 =?utf-8?B?dGpOOVNUMWRCVHRrS28rRnZJZXBmWEl2WERmSTJKZHViODhGSzJ3cVBpdWV6?=
 =?utf-8?B?N3hpM21tU0kzbENoWDRlVW10dXJQNWJOd3IxY1hOYnJDc3lWZXRnTzBCYnVi?=
 =?utf-8?B?ZTI4cElDNVlYZ3R3bVBLbkN5SjV5cmJKOFVHMUZRNVdLOVV6OFVaaE5HM1BM?=
 =?utf-8?B?L2dlZ0RNalNqdXdxZXRSSVNDdkV6YWFmNk1Nb2NmL3VVRzkzV3FvM0Q4blNn?=
 =?utf-8?B?eCtFZU1ybW9XS1NmdXJ4MFNxdWdQOXJ5TE5PVng4ckNHblNaL2Z5R1JzT3Ax?=
 =?utf-8?B?TmIvVzg1aEpQNEIwRTh5em4xaXRxYmRNOXBHY2pXVnh0Z0hSa3FUanNEV1RM?=
 =?utf-8?B?WWd0dkh1N2ZRY3lmNXRXYWhrbkFDVmJjYktEcmhvUHlQVWdaZFBUUFFyNVM0?=
 =?utf-8?B?VllndkRmb0VGaGJMQVBEYXFEbDlCeENlUWVkZE42RHQwRFJMOHFpMkN0S3Y4?=
 =?utf-8?B?Y2s4SUo1VGEvVHVPSFpSR1hYTjUzSGg3c29hN2pubG9MYWVLODVWVzY2RVEr?=
 =?utf-8?B?UWRzZVFlUnA2YXlnUk13YmR1VWhaODRoci9rT3VDS1F5c2Frajd0b2R0bTZq?=
 =?utf-8?B?dEQ0bThIM0RHQXhIdldaSDZZVGUvMENJRkZNa1MrdEgrQ0lZdUVTZFllRkM1?=
 =?utf-8?B?UlhJSDc3T1c1eFY5ZUh1S0VRZitXOU5kRDNEYndjdXdmWGFHMFlrcXF0ZXI0?=
 =?utf-8?B?NldxaU40QWpIQ2w1a3lpZGl3V2ZMcVVzSVJMMHNCaHpyQVBEQXUwUnlSdjcv?=
 =?utf-8?B?bFVmamJYTTd2UVlwV1ViTC9BYzdUbnVVTm4xSmZFaksrdWl1eVhDZXNheU5a?=
 =?utf-8?B?RGszZCtJMDhLNEpzeDNXRGZFeVJVRXplNVh2dFZqeThDY1hnM00yNUtUSTVX?=
 =?utf-8?B?Mk1Ma1hZNVA1bDFhSDNKWi9qYWdlOU5laXNvOWFFK2dVWVJRemFRQVZzZUda?=
 =?utf-8?B?VjNSZk96Lysyd3ZBYTJkQnlUNTNudEpFOTRYMnZkcTcyYkg1SzYyQ2Y0UjZx?=
 =?utf-8?B?blFHdGRVbTZVTGI1U092UllSVWdaYXVCMm9TWjZzWkFhYXNmdmEyd0V0RWNl?=
 =?utf-8?B?V1NPWG5VdGJNbnJ1OUEwdTN5WFI2WnpkaS80eURDMDZzdzgzcFlpWnp0ZERQ?=
 =?utf-8?B?TlJEZlZsVXZRNW9aRzlTWVUxVDNCY21laEZlM1RDbC90aGp0VWZUOHZkSmFi?=
 =?utf-8?B?SHZOT0JJbEVUWitaYWVtL3N0dGY1ZDRGdjJYU3gyZGYxbGIwUUZNeElkL3Rs?=
 =?utf-8?B?ZkNmbW95TGw0OXdONVFyTXF5RnEzNVZPS0d2ZzlVM3djeE9tMXo4ZUxaNFBs?=
 =?utf-8?B?S28rUURqQ2NFU1JnNEUzZU1mUU9qN1JqaGlRSmpackx6R3UwN0lqNmtjc3pT?=
 =?utf-8?B?cEdOZDJxY2h1MmlOYkJYYTJ1N05qNno4K2N4bWtpQmF5SnVYemVJZEViSmJ3?=
 =?utf-8?B?cXd2cVYxZjlrWUgvS0FRZjd0RVpiRWpjN2NITkM4TG03UTdURlY0OVlxTzVD?=
 =?utf-8?B?VGVpbzIrNDVBaXBPZ0JGMXRlaGFWYmRnekVXM3BjSS93YjFvOGdPRXlXTU1K?=
 =?utf-8?B?TlhhSUNKb0c3ekl0dGxkVlE5b2oxbFJhTjRhYU41NWc2K0o4M1VyUEhDdzIr?=
 =?utf-8?Q?xPWXap9V0o7S3WA8ro9eb3A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VlFzVzF6WG92SklnL3RKcWM5VXVDdk14Vi9UR3k2TUc2bXc4N3M4dnIxMyt5?=
 =?utf-8?B?QXlyejdrWXd4TzY3NUN3aUpkdjFYUkNDak0zbFZJbk9oTTdmcUR0OENVcjJw?=
 =?utf-8?B?dnMxYVZXYWpkK2lqeFhGcVVBbnIvSTg2RC90cnNjWnpUZDNaRkNwK3VwOWZX?=
 =?utf-8?B?M1VRVHp3SzB6R3RGaHVuUk8rY2dkalRINWNvbUhMRzgybndRc0ZRaFRnSTVL?=
 =?utf-8?B?blZObWxwdi9zMUNoUVlrQkozbjRodGRDVnZjYzczK3ZXNjA0MU94YWxaMWE3?=
 =?utf-8?B?NVg2ZG5nVFRuQlVFNUZYOXN0aUNnSDV2N3dNME1BM0hqdmR4SmMrZXlFaWVX?=
 =?utf-8?B?VU1OSkJieCtkVXhsM1JVWjhjYnk1QndpMDhWcW5ZQ3ZuYVdjVHROeERXUnp1?=
 =?utf-8?B?cnY2dWRPQkd2TlBaQklNblg3NFpMNHo0RmRIN05uNGRndUxWZXRwMjJWSkw1?=
 =?utf-8?B?WmM5L3dpVUxnc1U3cXlBcTdiU24vQkNNbU5sZXl1b2NiMWpBcVY5b0U4N0N2?=
 =?utf-8?B?U0h0WWRLWFNHWHAxRmlPNzAxdXlzWGVDaGF5bHJqNXZnTWk3UHJMYVNHYUZm?=
 =?utf-8?B?SDVnUlowaDZYQXIvMUJOWkFpOGNsR3grbDdQRXliazNzVTZHSXZXVk5mT3RO?=
 =?utf-8?B?UG5MSmdEVUMrZHNrK3p1T3VoWVk4UGlBZXJOTHNQdGROTG52eG9iL0E2UHRy?=
 =?utf-8?B?Q0g2QzlWMjJhOFV2STlpMUxzQ1JxUmVlb3RBWWwyc0E0eVBRTkFHdkFRclJw?=
 =?utf-8?B?bkp1V0E5dW5wemF3bjJlT3ptVWpDMmtJM3VYbHdYSjJ4YVVpbDI3VGRrT040?=
 =?utf-8?B?NWE3QUw5MEM0bkE5NWVkSVBKOGlUb2UrbkhnQU9hNXF5TEgzQmoyWVdUYXd1?=
 =?utf-8?B?KzIyMlVPWS96OHRlTXdubnptSnZvSS82NkEvRmtpWGJSV2NuZ0puY01TUVU4?=
 =?utf-8?B?T3VSVFRiWlBmQlhPaE5oQkhOVVhoVktVdFBYMWYvcUhta0NGam5Fc3Eyazh0?=
 =?utf-8?B?eXdlK1pzMHhFV3I4eHJSTHg1cDQrd2NNWVkwVTJXaXd5bm12T3dsSVcydDdB?=
 =?utf-8?B?RXNkRTdPZ1ZVWEVMUEVFZHBGRjVuRkh5dUg1STRoV3hGaHF0cUNGZmRMYm44?=
 =?utf-8?B?SEdIL1E2a1hWMmlBeFpCT1ZKRmljaUhQNEhJQkZ5OVhGNjR1TW8xTWQ1Lzd1?=
 =?utf-8?B?T0VoUU4yS3Vxb0I5TE5kZzEzclgwb0RxbXgxUnU1STlHeW12bHJjQlJJYkxi?=
 =?utf-8?B?dlc4U3lpSWVqMnQ0aTZ4THRVd3hwbmRtSllMdGFhR09YQWFJMVB5cU00Q2Fk?=
 =?utf-8?B?a1h5eVFGQWNkc2U5aFU2UHkvczVQV09IWHZKMTIydjEwdktaOVVHR2ROakdl?=
 =?utf-8?B?QVdOZEVkMHA3TEVjOFN6OWlRNXl2ZTBveDlDVnp5cUVKc0V2QlAyMXRVSXFX?=
 =?utf-8?B?T3UzMFo5Y1NGcytMN1lVWndPQkhQUWNlTFBPdTFJc1d1QWc4Y2V1c0FDemkv?=
 =?utf-8?B?WEUzbkoxNUgwWDdJaFp1UE5tMUo1aEhGQVpsaHFNcTl4WmxDRDVCS1VtQWpa?=
 =?utf-8?B?S0RQSlhieEpCV1k0bVlibnQvcGtmOGpoblJPWDVEMTM5R2E5ejMwaFJvd1cw?=
 =?utf-8?B?OC94MmM5bkhSTTdmSXo4REVabXhlVjJYdndVSFc2THVvRU1HWmRqN3VWYUhN?=
 =?utf-8?B?N2VldUJ4RlhnZmFPdUdGdEhDVE1FLzdudm9LODNLd2dwQkJ4UnpDUU5OcXdP?=
 =?utf-8?B?VWRNTW4vTkV6VVdYeVJoTGc4S2t2RElZK01lZ0xGaWRHVlg2Q2hlMlFhcnNv?=
 =?utf-8?B?REs4RXQwVDh4M2V1UVFaQnRidllaUTBDWVllVG1tcFFsUW5qNDVNc1hhWk11?=
 =?utf-8?B?ekUySWtybjVjRWdiSEpjMkROK3dOcTAvV0xIT3FMZFIrQlRsWHVyL3gzTWcx?=
 =?utf-8?B?OFM5UkttNjRqemthbmdnUFd2dTdwZmZzeVlsTkNCczdCdEpqWEdDc3gxTjJB?=
 =?utf-8?B?VW1Cd000K0lPdmRQNG8wajhPcXVDdkhMTCs0bVBZK1U0dDVHU25wNDZzb1FT?=
 =?utf-8?B?OVVMNnNuR2VlY0hpSk1BZDZjSWlySlhRcndXOTNETTlLcjZPVXk4YUpTQ2ZO?=
 =?utf-8?B?N25HRTdSeHJLd0JCZWxyYkhKdkpROFJVNUR1cHNmclRoMGlRWUNWakNYdkFV?=
 =?utf-8?B?Z1B4bVo3OGE4YXJtVXVPY0trdjNob0JmRFZBeDJhYmhOWkc2a2NGQXRQSGlt?=
 =?utf-8?B?ZGZoTmZCYnNaK1JreUMrK2d2MmpVUjRYYVNJY0NHcExRSS8zdnRJRHAzQWky?=
 =?utf-8?B?cHMzRmhoRG1CUWpTQ3ZDallKUHNwNXJIb3ZuSG43K1VvNzkyRnQxQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6a2268b-c00d-4d2e-f071-08de5e955e3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:47:55.7149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2/Hh4t5xdcXFveVMEaSu5paOYj3K54lmQYvKS01V7nN5G4ANlBAzEBBBci0xRftnfaHRo1/eKKCU2kpA1ZaEzQJT4WpksCekX9U+KKht+N4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6991
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769622481; x=1801158481;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aBM4glfXzwsAicvVJfuotOvKmFF2NBYZuxIMGcZ/s8s=;
 b=WurJdYwbdBhcUWNTLnnH29m4r7fvKPGW4EgRgNjGzYUgSdQ9qQ1xADPh
 N2+qbSFFrSHs30MMSDT6Gs2LI8zmWus4oWg/FGgqPGQUsFFXpfedSOfB1
 jed9ps0rWTtSdXc8yCn7qiiaiiEgwbFOiO0nvFDIKGTZBYKqkvbAAdRfe
 PtCVx5fx+wooM+2SMzxIRsLh8LKC9y+YhAwAr8AjBCGuGBu31cynqapaP
 plt4JwBV3oKUN+2nL8TjgX5cR/Rl8wxViCQKhOVh5nWygiSw9D7bYH6mK
 ta0szUk9I12jtpkuwAHy1ZXyTtdf+UJrSQfKl1Cts45dJlAlj9dAy5Cz7
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WurJdYwb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 15/25] docs: kdoc_re: properly
 handle strings and escape chars on it
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
X-Spamd-Result: default: False [2.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA3PR11MB8986.namprd11.prod.outlook.com:mid,infradead.org:email,auug.org.au:email,osuosl.org:email,osuosl.org:dkim,lwn.net:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 572EEA7283
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+
IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFBldGVyIFpp
amxzdHJhDQo+IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz47IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPjsgU3RlcGhlbg0KPiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiAxNS8yNV0gZG9jczoga2Rv
Y19yZTogcHJvcGVybHkNCj4gaGFuZGxlIHN0cmluZ3MgYW5kIGVzY2FwZSBjaGFycyBvbiBpdA0K
PiANCj4gVGhlIGxvZ2ljIGluc2lkZSBOZXN0ZWRNYXRjaCBjdXJyZW50bHkgZG9lc24ndCBjb25z
aWRlciB0aGF0IGZ1bmN0aW9uDQo+IGFyZ3VtZW50cyBtYXkgaGF2ZSBjaGFycyBhbmQgc3RyaW5n
cywgd2hpY2ggbWF5IGV2ZW50dWFsbHkgY29udGFpbg0KPiBkZWxpbWl0ZXJzLg0KPiANCj4gQWRk
IGxvZ2ljIHRvIGhhbmRsZSBzdHJpbmdzIGFuZCBlc2NhcGUgY2hhcmFjdGVycyBvbiB0aGVtLg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdl
aUBrZXJuZWwub3JnPg0KPiAtLS0NCj4gIHRvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3JlLnB5
IHwgMTggKysrKysrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9u
cygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3JlLnB5
DQo+IGIvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcmUucHkNCj4gaW5kZXggYTA0MDJjMDY1
ZDNhLi4xODYxNzk5ZjE5NjYgMTAwNjQ0DQo+IC0tLSBhL3Rvb2xzL2xpYi9weXRob24va2RvYy9r
ZG9jX3JlLnB5DQo+ICsrKyBiL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3JlLnB5DQo+IEBA
IC0xOTUsNiArMTk1LDggQEAgY2xhc3MgTmVzdGVkTWF0Y2g6DQo+ICAgICAgICAgIGZvciBtYXRj
aF9yZSBpbiByZWdleC5maW5kaXRlcihsaW5lKToNCj4gICAgICAgICAgICAgIHN0YXJ0ID0gbWF0
Y2hfcmUuc3RhcnQoKQ0KPiAgICAgICAgICAgICAgb2Zmc2V0ID0gbWF0Y2hfcmUuZW5kKCkNCj4g
KyAgICAgICAgICAgIHN0cmluZ19jaGFyID0gTm9uZQ0KPiArICAgICAgICAgICAgZXNjYXBlID0g
RmFsc2UNCj4gDQo+ICAgICAgICAgICAgICBkID0gbGluZVtvZmZzZXQgLSAxXQ0KPiAgICAgICAg
ICAgICAgaWYgZCBub3QgaW4gc2VsZi5ERUxJTUlURVJfUEFJUlM6DQo+IEBAIC0yMDgsNiArMjEw
LDIyIEBAIGNsYXNzIE5lc3RlZE1hdGNoOg0KPiANCj4gICAgICAgICAgICAgICAgICBkID0gbGlu
ZVtwb3NdDQo+IA0KPiArICAgICAgICAgICAgICAgIGlmIGVzY2FwZToNCj4gKyAgICAgICAgICAg
ICAgICAgICAgZXNjYXBlID0gRmFsc2UNCj4gKyAgICAgICAgICAgICAgICAgICAgY29udGludWUN
Cj4gKw0KPiArICAgICAgICAgICAgICAgIGlmIHN0cmluZ19jaGFyOg0KPiArICAgICAgICAgICAg
ICAgICAgICBpZiBkID09ICdcXCc6DQo+ICsgICAgICAgICAgICAgICAgICAgICAgICBlc2NhcGUg
PSBUcnVlDQo+ICsgICAgICAgICAgICAgICAgICAgIGVsaWYgZCA9PSBzdHJpbmdfY2hhcjoNCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgIHN0cmluZ19jaGFyID0gTm9uZQ0KPiArDQo+ICsgICAg
ICAgICAgICAgICAgICAgIGNvbnRpbnVlDQo+ICsNCj4gKyAgICAgICAgICAgICAgICBpZiBkIGlu
ICgnIicsICInIik6DQo+ICsgICAgICAgICAgICAgICAgICAgIHN0cmluZ19jaGFyID0gZA0KPiAr
ICAgICAgICAgICAgICAgICAgICBjb250aW51ZQ0KPiArDQo+ICAgICAgICAgICAgICAgICAgaWYg
ZCBpbiBzZWxmLkRFTElNSVRFUl9QQUlSUzoNCj4gICAgICAgICAgICAgICAgICAgICAgZW5kID0g
c2VsZi5ERUxJTUlURVJfUEFJUlNbZF0NCj4gDQo+IC0tDQo+IDIuNTIuMA0KUmV2aWV3ZWQtYnk6
IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
