Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96938C3BEA2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 06 Nov 2025 15:59:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A4CB842D6;
	Thu,  6 Nov 2025 14:59:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xFziIYNQGlrj; Thu,  6 Nov 2025 14:59:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 55ACC842D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762441156;
	bh=wPHFMQriJdtBGILTMtolIhyAU2QeDm1ypwdU3x58whs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z6a6gEz53jhr+l1ZuZZ9gIjiP9m1gYAESzL6uTHW8K8UWyShLY4huQW3Z9x4SZJM8
	 xhilBVlTxfNWSlDrFtJCl3Qajz5meZlg4sdLsIplYu1uHJUmTZbm7crwY2yT1UFRXe
	 X6DKoUfNC1Wr/3dJlxmOo9F6sVurWyICeGOGSY0VONL7LINWHu7KacgNdTYl6kLBC4
	 u8Ws9CrRQ6wmGLcWZ/17yV+d5O6CJzya5K0ofUw+1F5P1zlDMCAZ1+dKK2WYq1H4LB
	 OSQRWjMIPA9bdQLQVooK/nw00xS+u3QvyDg9TKNYOXMrQU7AsbGI8ZApf8B0DXDGu1
	 eBotMyLITrxag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55ACC842D8;
	Thu,  6 Nov 2025 14:59:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 58754462
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 14:59:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3ED7340876
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 14:59:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AuxvVoRPh993 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Nov 2025 14:59:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5685B401EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5685B401EC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5685B401EC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 14:59:12 +0000 (UTC)
X-CSE-ConnectionGUID: ueg039EnQ3W+NJ4MuqBSSw==
X-CSE-MsgGUID: QO2o6y+KTgy2Te/+D35zZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64493421"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="64493421"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 06:59:12 -0800
X-CSE-ConnectionGUID: y79pciCmQiKZaaWCHvBp+Q==
X-CSE-MsgGUID: 2aA55bwZTD60xh+rQ22i1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="218529821"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 06:59:12 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 06:59:11 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 06:59:11 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.35) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 06:59:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=axTBmUpKTUEz50M2GDYd+nypONXgCPFH/suy2eWytLDIY0nmuld2hBaJwXnJO3oofO5V7h4v180r7L1x3s4OsnNNpeBa+ab06ULQN00o9iLI3/BoE1z6GUgvAFkkG3zryjBII4BZaojgikIj+csQLu+JlrPVJ5CBkLtuJRVBvUABvmVqW3VkwLBI03Px9rnPCNCpUIzEegTyVDVTOA7yWqnTocFAWgPLC8EXL0WOQ/+A6XI41mr3Btp4yAGgvDisKB0BTfXieDbJN7dqUzvbx/lgWVGxvmoHaCDrQQJFGLhgmbV8T+pJQmNzAdfjalM3TlfXplA+U3ZsHBQKAYDiEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wPHFMQriJdtBGILTMtolIhyAU2QeDm1ypwdU3x58whs=;
 b=J1B7WGG1HQ7d9ByBML1MZmjp76wlulQhTmkT+HxUsVkGBqYK2R8laK91kb7r8pSsvPrUsl26qoAtV0zgBll4Qc0wRsaFbXP9r8scXBj8mgLQERu8erQGH16myT/9a8pEPtNM235uKu8EjFOpEuEavEtBXLA9oZ9Cgi2Iy2dTwR2Zau1JOydFsPa7/w2YLHO7scuyRhgxqYuQr7hlZCbaQRzDKKBXfTzpjB4lQsX4lMtse3JIZ41mv2Lx330jK5a9bQLy1SpyUOcHzxPPRXnGHor0polG6P1TMvXTPharEk0pGU5YmAziKqY5pM2vcFG+0AiP8FuSH6nfvGcT56KlXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA4PR11MB9156.namprd11.prod.outlook.com (2603:10b6:208:562::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Thu, 6 Nov
 2025 14:59:04 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9298.010; Thu, 6 Nov 2025
 14:59:04 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-next v2 2/9] ice: use cacheline groups for
 ice_rx_ring structure
Thread-Index: AQHcTpguNr1EFKr99Uq/gAifnraatbTlvk5w
Date: Thu, 6 Nov 2025 14:59:04 +0000
Message-ID: <IA3PR11MB8986DE6011DF6B2EA06DA56CE5C2A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251105-jk-refactor-queue-stats-v2-0-8652557f9572@intel.com>
 <20251105-jk-refactor-queue-stats-v2-2-8652557f9572@intel.com>
In-Reply-To: <20251105-jk-refactor-queue-stats-v2-2-8652557f9572@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA4PR11MB9156:EE_
x-ms-office365-filtering-correlation-id: 80fcdd44-83fc-40ca-a2ed-08de1d450738
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?eDkzeG9qQTByTUdWVU1oYXV1RllMb2xpajlIRnhaZEhWamh6OEZRMnFqSFF6?=
 =?utf-8?B?NUhWc2pzZzZRcDdsaUFRYk1tQjhvdnhJcS9wczl6S0FhbzdkVFRKKzdGMW1p?=
 =?utf-8?B?ZHNoWkxTUkFIN3lVWktwak5zQ3IwWmRpbDV6bmJ2UHlwOXY4TzFMZkFVWm9m?=
 =?utf-8?B?WVJ4TDRZVE41TUJvMGZWR3B0OXlTSjlQZ3NlWXAzbGxORVVKbUNTb2FZa3hO?=
 =?utf-8?B?NmZLK3F3OE9EYXlyWmVCZ2R3LzBlbFlBWE9JQUVmWnNRcUFWaVhsVkhJaHIx?=
 =?utf-8?B?cnBhSWR3TzhSTGFZL3kwVzhQRkpqNi9FWUtOZ2pXUm55Qjc1YVVlSkl0NGZT?=
 =?utf-8?B?eU5KdHR4WEhhcCtERnVJbzR3T0Z0OUpzM0d0TmRicXBEMU04VzhzMUQ2RzYy?=
 =?utf-8?B?YlFZREZ4cGZqTlpmNWovZ3JNMHc3aUNCTk02Zi8wK0FhcjIzZFl1RXpYWjZz?=
 =?utf-8?B?clprT3dka25QaHNJcENBZUs0S3hFTXg3dGo1OEdvQjhkd0JmZS9zWHM5SUp3?=
 =?utf-8?B?d3FjbGZNaHZTUGZET0U1aDhkYXlDcWZvempuamNLc2tCNEwzOGJuZWN4a0c2?=
 =?utf-8?B?cnVYeXdNNUFDSGlNeGtNNkRKQnkyNjQwRkowcmY5QzBlYmFyOUp0KzJUQk8w?=
 =?utf-8?B?NEdxamdTMkVGSXdCelhjaVowbTBKY2dvaStDZW5yRG1oTFNxQlpWQU5BTXFR?=
 =?utf-8?B?aWZzYnU0dVpxMW51d20reWRHK0xnaDZwQ21hR0tZN0VSd3g2RElqbVFHRFFp?=
 =?utf-8?B?N28yNjJxaU5XaWVxS0w5ZGx0eFU4T25vT0ZENktTRjlRTHQ1TVJnUEtTNmFZ?=
 =?utf-8?B?OGJUYTljcStJK0NFUm5jS1ExemlIQ29uanVXNGVyU1FGWUZ5WmRoMTY2b2FM?=
 =?utf-8?B?bXdzTmxYYnZkdVdVR0RzSW5LUjRBMldaMjFBc3ZIU2NETnpGem81REpsYU16?=
 =?utf-8?B?MUhlUDJjTnVsUE1sSzlyV1E2Y05mdVB1WGVrbCtFM2VhNHVLZ09OY0J1dXJ4?=
 =?utf-8?B?b3JCRUJlSE50bjZhVGxoR3kvRCtueFh2YVR0ODNtUEJ3cmpvU0VqdDlnK3Mw?=
 =?utf-8?B?d2RzZndmNDF6QWdWSEN5TG1mWE9vMFdrWE0rNzIrNDh4dlk4Vkl2NTZqUzdj?=
 =?utf-8?B?cFA3MEptZTlwMEV2N081czJRNGpiaHJkNWRXZGowRU8rTHNRNTU3OGh0TFA3?=
 =?utf-8?B?aXNXK2ExcC9US29xa0xvbWNPbThCSDU4UzVjTHZHUDBvQVhjT2xuNDdyZFpT?=
 =?utf-8?B?MFJRcjR0SjFpUFNpT1MwMTQ5bzlKa0ZDNW9JbU9WZWpUU1VFV3lBNE44M2Z2?=
 =?utf-8?B?OEQ3Z2NyUlIxWHVqQnFiYis0OFE4TTk1QkdjVnpHOHFKODA2UHFnd3Z5aytk?=
 =?utf-8?B?VnREeitDZWlIRnpJbjdkbzdsSXhFU1RIbVVJRTFsM0w4MHV1UVdZUUlKTHc4?=
 =?utf-8?B?TlNORkl2NkJjRzgvS2JxMmRRVXFMa3E4MGt5bWRTU2hhYXhaZStkZml5SW1G?=
 =?utf-8?B?V3FzaS85dEtmbWZZZUdBQ2x0NGF1N1ZZNWdVZXBSOEh1dS9RZVdCajdWZkhZ?=
 =?utf-8?B?YVdhODFJZDM2czdYM3UxaytiVi9tZitxSjN6eVI1YXFMVmI0NGxrQ1RYOCtE?=
 =?utf-8?B?cjFhQVduS3pvNVV5V3lVV3NSMEtnOW9FczFZYlJTbkZFZU80NEJqdHd2RW1U?=
 =?utf-8?B?SEQxaXJGenlYcTI1L0hLTnY0Rm1ycUFTSnJ1TG8rbFp1V1UyajlQWUpJa0Uz?=
 =?utf-8?B?a0RLaDhybVZFWFFmLzRlZitNM3B6V0U0c0FVOVJxZHBMb1gyQWRhVGJNdVNk?=
 =?utf-8?B?amt4aXBmdmQ3R2xNNE9nelJMUUdJWG5RZllHNGdCK3podTJ1b2hzTlRGRTRG?=
 =?utf-8?B?Z1dzSTNYMndnaXNQOFgyM1JLWXgyVDAxQmY0RVlSOXYvWVVMMmF1c0RXSUNh?=
 =?utf-8?B?aHNDRnVsZGE2bGVTMDl3QVhTZExhTVI3bGhjZU5sbkgyMG9NdVJOcy8wR1Rx?=
 =?utf-8?B?NzFHdkNQVGxPTlRpWVVUZm1KY1V6RjgxakNLRWc2a0NPcER6M3Q0YjYzNTVh?=
 =?utf-8?Q?4kzVXf?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L0hLRy85ZTZFNjJvVHlCdy9jdTRIMXhjSFUxcEZHSDljdVU5dzRCenQrdk9a?=
 =?utf-8?B?aW9wdkhRS2JNZ3h3b01MWU0ya2V4dVRpVlV2cWk3ODRMUGh6akJtdzdSR0VD?=
 =?utf-8?B?NnM4MC85d24vaDdiZG12Snhnc1hwSTI3b0JpNDZwSFNjcVZvVVIvUDUzazdB?=
 =?utf-8?B?WVhUZ1RRZ1VpWitDbTdsOHdiVnlDWmc5cW5GczE0Q3YxRE9rZGdiaHFVeFV6?=
 =?utf-8?B?WWViTTZoZHV5YitSbXFXdGsyTnh3MzJTREZ0N0NpZXV2eVFQK3Z3UlplUW51?=
 =?utf-8?B?eDV1TGxZUHB5TmZUb3EwYndZeEl3RVJsRitxRTZDZERSRUw5Z21PcnhiTTQy?=
 =?utf-8?B?bFRUTUQ5OUJhcmd2SlorbU5ROGpXRXdyMndqNTVqQ3dQL2VkTXdRdGVpeHcr?=
 =?utf-8?B?T0dabE9uanZGUktpZTVMK0hkeE92QS9BUjQ2MGNtQ0oxaUZiMXlmVXM2b2cv?=
 =?utf-8?B?L1lLSzZtczJERlNBNnJQRStTR0I5QVZQdmRWNm92c1BiZUtrMGFVdHQvRkw4?=
 =?utf-8?B?VkhMZHN0UlI2R1lsVFh2a1dmUEdOTXhXUDdIL0lsNTF3NmN2T0NxcVY4OENm?=
 =?utf-8?B?OE1xdmhNV1ZiS2JwdG9iTC9wQUlGTStIUnNLMzNiUjdVZmtaTXN5NUcwSHFO?=
 =?utf-8?B?Vng5RU9ubWVsTEZud2FYWkZwVnBYczhLWTYxOHJqYXBVb1c5b1V5VitGZjBJ?=
 =?utf-8?B?S1gzQVdBYit0eVF6NlpGV3VkWEw3MUczazE1RU16RzF5cFloU3Mvd0dHcGZH?=
 =?utf-8?B?WjExQTdhemdNRy91akh3WUpsYlB6bXF3MTBEbzFkL2htMGwzTkN6NmpEMVFq?=
 =?utf-8?B?Q2dGUU9RL3JjYklsa3gzOWtxR0ZDZGVEamI3THJYLzEwUGhsWTZ2SEhyeTFM?=
 =?utf-8?B?WDE4OGlWTmMrb0VLY0JwaWVGS21hSlErZVNiMWVJc2R0c3hQYTN1RXRwT09D?=
 =?utf-8?B?UG1zb0J1MzBIbUJEeFZna2UwUE9LNEtPa3BoT01PNWo2MWp4Y2swTFlNZ1lR?=
 =?utf-8?B?ejcvOVNRLzdwcFhvWUxIaVF3SjlDdDB1eWx3L1A4NWJ0V2FWYjFHYUlJc0VY?=
 =?utf-8?B?U3lkS2VWV05qRWFHMERWcnRBd2JLTGxaYjdqY1pmTFg4cVBFM0VXVjhNUzlv?=
 =?utf-8?B?V205UEgyWmdISXZqdDE1QjZxclhoT1NyKzdqU3l6M1E5eFUwSk9TMXU4SVBa?=
 =?utf-8?B?ZW5ZVlNVSEhQdWhEaTdTVmxyZCtOM0QrV29kNmZtZTRKcEk3aHZOM3AwbmYv?=
 =?utf-8?B?bzdGYXFBTHBHUUV5UG9jd0EvMmdRRjJPb0N6ZnNuK0R6ZGFub2NFd2JlM3h4?=
 =?utf-8?B?NUFMYi9LNGFkeDJwK3l1cWZQcnppQk05eGxNd0dUTkdDWldXRld0dnA3ekhB?=
 =?utf-8?B?bDJGaVJUbVRVdWw0TFpjZnJrOVZaWUJCRUxyQnZTY1pjdFZDclNaUE5DcTNB?=
 =?utf-8?B?MSszQkh0cWlzbUhiTWJ1Q1FVeEFLV0F0S0d1TXN5VU5mVExlTnJSOXZFUmVn?=
 =?utf-8?B?ZEVMeDBFcFVjS0ErdCs4MXpaZ21FNjRPNVRHTEJwUnp6OVNZaTlzaTdpOGFT?=
 =?utf-8?B?aWIwaExScnpKZWhHeVg5dHRISE1ERE83RE52dzFtSWdnMnUyNGdBemdMRlhC?=
 =?utf-8?B?S0dkbnFiekdSZWFKNWEwUWtaNUp0dTVyRUhHemRBa2JabzJPdlZMenRKWmpS?=
 =?utf-8?B?dUwwRkdvMmc5OHFPQ09zMGNURE9VT3lSbW5tak42NzNHb1RIQ0w5L05EbEpZ?=
 =?utf-8?B?N3JNbXM3OXZQTHRJMWZFcHFaVUNRbDNvNGg2T3JuWncreXBQYU1mRTQwKy93?=
 =?utf-8?B?Y0hLK2txb0ZjZy8rSXhUTUxLcVZuS1dEN29NL0FZSDFGRzhKQzg5NElDeFp3?=
 =?utf-8?B?V1lxaDZZeEFabUcxK29jSExMcUxxc2M1bkdHV1J3Vy9nMzAzcWtSRHp3T1J0?=
 =?utf-8?B?MVBSd3FRcGF1enN2VElWVWFycUJpRzJuSkxBcUdScllodWtkV0U3VVk2NUE4?=
 =?utf-8?B?NEpjbDFtNzdBSmZBNHgrMjlmSUpZUkFFSzV6MXRpNEk0VmVsbVBpcjJnS1dw?=
 =?utf-8?B?T3g1NlVlRUpFZE5tRm0xeVlqYUdjUWdMS1lxQjBKMG5wM2VNY2NXSldoYitS?=
 =?utf-8?B?bFhzeHZSSUFOTTlPVThrcjhmeVp0TXhZVVR0RGUvZ04ydkcwNkJFcEpuTjds?=
 =?utf-8?B?QkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80fcdd44-83fc-40ca-a2ed-08de1d450738
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2025 14:59:04.4256 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3uAXu+zcpXvDcv9CBaQYaFHOch3tKLJMhscqRA+rLbZlRnbcRP5wI4FvimvnjTLfd/hFee8+X1Cjtdm8y0jsMPqXXnw0NiIJ+b5Ztxw5948=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9156
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762441153; x=1793977153;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wPHFMQriJdtBGILTMtolIhyAU2QeDm1ypwdU3x58whs=;
 b=m+JlRUTnHRtI+2gvsUZEwCnaiOyPl++R5U4VwAGKqsJkDJ07VhcHtUHm
 uKm2gFSidDu4c4qsPw3uIzTHDYeYoce1Nc9+PZC+8CowJdNPE3EC9zx9+
 cgZnadDRiHScVmNKfnVTVIqmH78H/FJq9IJyqWgHpYHQEmsjPPon7AR+t
 VD5DUcZ4be6ErvaVyTVSjic7/Uo9+z82lB+kAk1yXobqXX5umD7N3fxQi
 uxh00Lt788QfW8TLPgEyRnyYNZ/P5sEyl9hXCHYHfGrdbprs511Jkhw/b
 M0nVdDBY0Oji0Wwa3f6vN85tjfQ8Gz0kv1hT7xkPmrpfemeQyHQwfN768
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=m+JlRUTn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/9] ice: use cacheline
 groups for ice_rx_ring structure
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2VsbGVyLCBKYWNvYiBF
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIg
NSwgMjAyNSAxMDowNyBQTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5s
b2t0aW9ub3ZAaW50ZWwuY29tPjsgTG9iYWtpbiwNCj4gQWxla3NhbmRlciA8YWxla3NhbmRlci5s
b2Jha2luQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVu
QGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBp
bnRlbC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2
QHZnZXIua2VybmVsLm9yZzsgS2VsbGVyLA0KPiBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRl
bC5jb20+OyBMb2t0aW9ub3YsIEFsZWtzYW5kcg0KPiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRl
bC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCBpd2wtbmV4dCB2MiAyLzldIGljZTogdXNlIGNhY2hl
bGluZSBncm91cHMgZm9yDQo+IGljZV9yeF9yaW5nIHN0cnVjdHVyZQ0KPiANCj4gVGhlIGljZSBy
aW5nIHN0cnVjdHVyZSB3YXMgcmVvcmdhbml6ZWQgYmFjayBieSBjb21taXQgNjUxMjRiYmY5ODBj
DQo+ICgiaWNlOg0KPiBSZW9yZ2FuaXplIHR4X2J1ZiBhbmQgcmluZyBzdHJ1Y3RzIiksIGFuZCBs
YXRlciBzcGxpdCBpbnRvIGEgc2VwYXJhdGUNCj4gaWNlX3J4X3Jpbmcgc3RydWN0dXJlIGJ5IGNv
bW1pdCBlNzJiYmEyMTM1NWQgKCJpY2U6IHNwbGl0IGljZV9yaW5nDQo+IG9udG8gVHgvUnggc2Vw
YXJhdGUgc3RydWN0cyIpDQo+IA0KPiBUaGUgaWNlX3J4X3Jpbmcgc3RydWN0dXJlIGhhcyBjb21t
ZW50cyBsZWZ0IG92ZXIgZnJvbSB0aGlzIHByaW9yDQo+IHJlb3JnYW5pemF0aW9uIGluZGljYXRp
bmcgd2hpY2ggZmllbGRzIGJlbG9uZyB0byB3aGljaCBjYWNoZWxpbmVzLg0KPiBVbmZvcnR1bmF0
ZWx5LCB0aGVzZSBjb21tZW50cyBhcmUgbm90IGFsbCBhY2N1cmF0ZS4gVGhlIGludGVuZGVkDQo+
IGxheW91dCBpcyBmb3IgeDg2XzY0IHN5c3RlbXMgd2l0aCBhIDY0LWJ5dGUgY2FjaGUuDQo+IA0K
PiAgKiBDYWNoZWxpbmUgMSBzcGFucyBmcm9tIHRoZSBzdGFydCBvZiB0aGUgc3RydWN0IHRvIHRo
ZSBlbmQgb2YgdGhlDQo+IHJ4X2ZxZXMNCj4gICAgYW5kIHhkcF9idWYgdW5pb24uIFRoZSBjb21t
ZW50cyBjb3JyZWN0bHkgbWF0Y2ggdGhpcy4NCj4gDQo+ICAqIENhY2hlbGluZSAyIHNwYW5zIGZy
b20gaGRyX2ZxZXMgdG8gdGhlIGVuZCBvZiBoZHJfdHJ1ZXNpemUsIGJ1dCB0aGUNCj4gICAgY29t
bWVudCBpbmRpY2F0ZXMgaXQgc2hvdWxkIGVuZCB4ZHAgYW5kIHhzayB1bmlvbi4NCj4gDQo+ICAq
IENhY2hlbGluZSAzIHNwYW5zIGZyb20gdGhlIHRydWVzaXplIGZpZWxkIHRvIHRoZSB4c2tfcG9v
bCwgYnV0IHRoZQ0KPiAgICBjb21tZW50IHdhbnRzIHRoaXMgdG8gYmUgZnJvbSB0aGUgcGt0X2N0
eCBkb3duIHRvIHRoZSByY3UgaGVhZA0KPiBmaWVsZC4NCj4gDQo+ICAqIENhY2hlbGluZSA0IHNw
YW5zIGZyb20gdGhlIHJ4X2hkcl9sZW4gZG93biB0byB0aGUgZmxhZ3MgZmllbGQsIGJ1dA0KPiB0
aGUNCj4gICAgY29tbWVudCBpbmRpY2F0ZXMgdGhhdCBpdCBzdGFydHMgYmFjayBhdCB0aGUgaWNl
X2NoYW5uZWwgc3RydWN0dXJlDQo+ICAgIHBvaW50ZXIuDQo+IA0KPiAgKiBDYWNoZWxpbmUgNSBp
cyBpbmRpY2F0ZWQgdG8gY292ZXIgdGhlIHhkcF9yeHEuIEJlY2F1c2UgdGhpcyBmaWVsZA0KPiBp
cw0KPiAgICBhbGlnbmVkIHRvIDY0IGJ5dGVzLCB0aGlzIGlzIGFjdHVhbGx5IHRydWUuIEhvd2V2
ZXIsIHRoZXJlIGlzIGENCj4gbGFyZ2UgNDUNCj4gICAgYnl0ZSBnYXAgYXQgdGhlIGVuZCBvZiBj
YWNoZWxpbmUgNC4NCj4gDQo+IFRoZSB1c2Ugb2YgY29tbWVudHMgdG8gaW5kaWNhdGUgY2FjaGVs
aW5lcyBpcyBwb29yIGRlc2lnbi4gSW4NCj4gcHJhY3RpY2UsIGNvbW1lbnRzIGxpa2UgdGhpcyBx
dWlja2x5IGJlY29tZSBvdXRkYXRlZCBhcyBkZXZlbG9wZXJzIGFkZA0KPiBvciByZW1vdmUgZmll
bGRzLCBvciBhcyBvdGhlciBzdWItc3RydWN0dXJlcyBjaGFuZ2UgbGF5b3V0IGFuZCBzaXplDQo+
IHVuZXhwZWN0ZWRseS4NCj4gDQo+IFRoZSBpY2VfcnhfcmluZyBzdHJ1Y3R1cmUgKmlzKiA1IGNh
Y2hlbGluZXMgKDMyMCBieXRlcyksIGJ1dCBlbmRzIHVwDQo+IGhhdmluZyBxdWl0ZSBhIGxvdCBv
ZiBlbXB0eSBzcGFjZSBhdCB0aGUgZW5kIGp1c3QgYmVmb3JlIHhkcF9yeHEuDQo+IA0KPiBSZXBs
YWNlIHRoZSBjb21tZW50cyB3aXRoIF9fY2FjaGVsaW5lX2dyb3VwXyhiZWdpbnxlbmQpX2FsaWdu
ZWQoKQ0KPiBhbm5vdGF0aW9ucy4gVGhlc2UgbWFjcm9zIGVuZm9yY2UgYWxpZ25tZW50IHRvIHRo
ZSBzdGFydCBvZg0KPiBjYWNoZWxpbmVzLCBhbmQgZW5mb3JjZSBwYWRkaW5nIGJldHdlZW4gZ3Jv
dXBzLCB0aHVzIGd1YXJhbnRlZWluZyB0aGF0DQo+IGEgZm9sbG93aW5nIGdyb3VwIGNhbm5vdCBi
ZSBwYXJ0IG9mIHRoZSBzYW1lIGNhY2hlbGluZS4NCj4gDQo+IERvaW5nIHRoaXMgY2hhbmdlcyB0
aGUgbGF5b3V0IGJ5IGVmZmVjdGl2ZWx5IHNwcmVhZGluZyB0aGUgcGFkZGluZyBhdA0KPiB0aGUg
dGFpbCBvZiBjYWNoZWxpbmUgNCBiZXR3ZWVuIGdyb3VwcyB0byBlbnN1cmUgdGhhdCB0aGUgcmVs
ZXZhbnQNCj4gZmllbGRzIGFyZSBrZXB0IGFzIHNlcGFyYXRlIGNhY2hlbGluZXMgb24geDg2XzY0
IHN5c3RlbXMuIEZvciBzeXN0ZW1zDQo+IHdpdGggdGhlIGV4cGVjdGVkIGNhY2hlIGxpbmUgc2l6
ZSBvZiA2NCBieXRlcywgdGhlIHN0cnVjdHVyZSBzaXplIGRvZXMNCj4gbm90IGNoYW5nZS4NCj4g
Rm9yIHN5c3RlbXMgd2l0aCBhIGxhcmdlciBTTUJfQ0FDSEVfQllURVMgc2l6ZSwgdGhlIHN0cnVj
dHVyZSAqd2lsbCoNCj4gaW5jcmVhc2UgaW4gc2l6ZSBhIGZhaXIgYml0LCBob3dldmVyIHdlJ2xs
IG5vdyBndWFyYW50ZWUgdGhhdCBlYWNoDQo+IGdyb3VwIGlzIGluIGEgc2VwYXJhdGUgY2FjaGVs
aW5lLiBUaGlzIGhhcyBhbiBhZHZhbnRhZ2UgdGhhdCB1cGRhdGVzDQo+IHRvIGZpZWxkcyBpbiBv
bmUgZ3JvdXAgd29uJ3QgdHJpZ2dlciBjYWNoZWxpbmUgZXZpY3Rpb24gb2YgdGhlIG90aGVyDQo+
IGdyb3Vwcy4gVGhpcyBjb21lcyBhdCB0aGUgZXhwZW5zZSBvZiBleHRyYSBtZW1vcnkgZm9vdHBy
aW50IGZvciB0aGUNCj4gcmluZ3MuDQo+IA0KPiBJZiBmaWVsZHMgZ2V0IHJlLWFycmFuZ2VkLCBh
ZGRlZCwgb3IgcmVtb3ZlZCwgdGhlIGFsaWdubWVudCBhbmQNCj4gcGFkZGluZyBlbnN1cmUgdGhl
IHJlbGV2YW50IGZpZWxkcyBhcmUga2VwdCBvbiBzZXBhcmF0ZSBjYWNoZSBsaW5lcy4NCj4gVGhp
cyBjb3VsZCByZXN1bHQgaW4gdW5leHBlY3RlZCBjaGFuZ2VzIGluIHRoZSBzdHJ1Y3R1cmUgc2l6
ZSBkdWUgdG8NCj4gcGFkZGluZyB0byBrZWVwIGNhY2hlbGluZXMgc2VwYXJhdGUuDQo+IA0KPiBU
byBjYXRjaCBzdWNoIGNoYW5nZXMgZHVyaW5nIGVhcmx5IGRldmVsb3BtZW50LCBhZGQgYnVpbGQg
dGltZQ0KPiBjb21waWxlciBhc3NlcnRpb25zIHRoYXQgY2hlY2sgdGhlIHNpemUgb2YgZWFjaCBn
cm91cCB0byBlbnN1cmUgaXQNCj4gZG9lc24ndCBleGNlZWQgNjQgYnl0ZXMsIHRoZSBleHBlY3Rl
ZCBjYWNoZSBsaW5lIHNpemUuIFRoZSBhc3NlcnRpb24NCj4gY2hlY2tzIHRoYXQgdGhlIHNpemUg
b2YgdGhlIGdyb3VwIGV4Y2x1ZGluZyBhbnkgcGFkZGluZyBhdCB0aGUgZW5kIGlzDQo+IGxlc3Mg
dGhhbiB0aGUgcHJvdmlkZWQgc2l6ZSBvZiA2NCBieXRlcy4gVGhpcyB0eXBlIG9mIGNoZWNrIHdp
bGwNCj4gYmVoYXZlIHRoZSBzYW1lIGV2ZW4gb24gYXJjaGl0ZWN0dXJlcyB3aXRoIGxhcmdlciBj
YWNoZSBzaXplcy4gVGhlDQo+IHByaW1hcnkgYWltIGlzIHRvIHByb2R1Y2UgYSB3YXJuaW5nIGlm
IGRldmVsb3BlcnMgYWRkIGZpZWxkcyBpbnRvIGENCj4gY2FjaGVsaW5lIGdyb3VwIHdoaWNoIGV4
Y2VlZHMgdGhlIHNpemUgb2YgdGhlIGV4cGVjdGVkIDY0IGJ5dGUNCj4gZ3JvdXBpbmdzLg0KPiAN
Cj4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZA
aW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVy
QGludGVsLmNvbT4NCj4gLS0tDQoNCi4uLg0KDQo+IC0tDQo+IDIuNTEuMC5yYzEuMTk3Lmc2ZDk3
NWU5NWM5ZDcNCg0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5s
b2t0aW9ub3ZAaW50ZWwuY29tPg0K
