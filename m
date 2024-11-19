Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9809D2A42
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2024 16:56:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AAB03855A9;
	Tue, 19 Nov 2024 15:56:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3yOtxSPsA7gk; Tue, 19 Nov 2024 15:56:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF641855AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732031771;
	bh=E2ahpZIz0OdZ1jxR9at5QckKQDFBtkAVQwjcNq+4GiU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ag5QJ2lXXaxNqpAxUsKwRdlrVqOzAdFBm5bKpNHRFkbmhS+mrhz9xDfAgpnErjodC
	 eFV33OLh038hoAjH763Rqcxdb18DovUFOOD8Ss542aRoF4aJrl6g5EsrRdNrUh/uUM
	 sKr7gijy30jLIEWmsjYkQs6jfcGx+eQui8YAto9KBwBWktSitfYZcY8X0lnR0kAtBI
	 dGPNJxTWYhutA6GDFiworRd1nvZWaDi8EkxQpgIKDmrs2Ltn4bCimGZ6eESv14OcKW
	 Do+KBqhttfsdr8NWCGwUjxiGgTP/TvW+bdJJjSI477fHHdDUflt8U2HFtpxZhdNvAi
	 M2nel8ieoFyUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF641855AB;
	Tue, 19 Nov 2024 15:56:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D5534DB2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 15:56:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B5A2E40288
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 15:56:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CavvnEOas9W2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2024 15:56:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3FCE441C54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3FCE441C54
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3FCE441C54
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 15:56:06 +0000 (UTC)
X-CSE-ConnectionGUID: rKFjXIM/QAWYaThNA+ExQA==
X-CSE-MsgGUID: oA8wb4QVRCywD4JdRCpkiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="49469899"
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="49469899"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 07:56:06 -0800
X-CSE-ConnectionGUID: nIhCclmeTAy01XV4B2HYmQ==
X-CSE-MsgGUID: wtX7kXsUQBW9PDRkABT5GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="90014480"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Nov 2024 07:56:06 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 19 Nov 2024 07:56:05 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 19 Nov 2024 07:56:05 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 19 Nov 2024 07:56:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v3FCagjnIr1DTxrl814J6YQyKVRKczEodQfHkfpijJFiXti/MjEjWbqPHZLqPHNukSHdXkm5FQTqiQHcV0VPWp5I6lJTMBP8uqW8rcOaUvPhtgEDBdEgZC1ZxeMDfLemVLyAMIhSAOi4JpuSQiSW0ZTrbZQsO7Uxnm+IlLVU/HYonpxnvIR4ULb/hOb620ZjtxDXtKQQAVTVV5lyAW7X6voASVZrxiJ0Zci0cxRlRhCaTz2qO3KSSoXYM/zZp937K1YfU03MYq7Bhp1RJFMX7f1AZW/fzLdJRIfLJmLFiDI/yi7zcC1E7TRWOmwisjIzlxwTax/88NfYL2KqEx8jyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E2ahpZIz0OdZ1jxR9at5QckKQDFBtkAVQwjcNq+4GiU=;
 b=pPjxIb6JqaLeKz5C17jmTdSHBTnIbMA7vIKD3KRG1Rfcg2Yryg/MXQJIHcw1oFccSA/v5tn217m++gYhyaDG4OJEpdd5wqyOPx6msP7JP+tffKOlvUzTt0L9XAGX4b26Akmc5T1vv+C8/mo7JzxHgVusDzCCaW1E9sPEpo35jddkYrn3oUSmH7HKEfy0V/EXVWzJa/7rqPQf/DNQuQGKHUlZ0BlM98QvSGnhYpEK7wK768AmS7q9Gc5fnC/7+GbD3ZG4WHxMRKXaOblDm4RWaFGNB4+Kl921C0Qo/XWpViPI9vrUmHSXmPHy+xB5NrBoXNRzfDhHIpctC0fClP4SaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19)
 by PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Tue, 19 Nov
 2024 15:56:02 +0000
Received: from DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c24a:5ab8:133d:cb04]) by DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c24a:5ab8:133d:cb04%2]) with mapi id 15.20.8158.023; Tue, 19 Nov 2024
 15:56:02 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [iwl-next v1] ixgbe: use little endian type in admin commands
Thread-Index: AQHbNmz8kxFSPzTVe0S0WYAgOdwbh7K9rw+AgAEZvBA=
Date: Tue, 19 Nov 2024 15:56:02 +0000
Message-ID: <DM6PR11MB461053E08DD213517ECF782AF3202@DM6PR11MB4610.namprd11.prod.outlook.com>
References: <20241114081220.85602-1-michal.swiatkowski@linux.intel.com>
 <85acafb4-502d-44d8-a387-6b261f01c116@intel.com>
In-Reply-To: <85acafb4-502d-44d8-a387-6b261f01c116@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4610:EE_|PH8PR11MB6753:EE_
x-ms-office365-filtering-correlation-id: 23903725-545c-4a95-b305-08dd08b2ab1d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UEd6WjM5NkpZcVloN0V1R0xid1RUeVFzc2d6dVpadlk4bTQwMlZQZERDWVVy?=
 =?utf-8?B?dEptWlU4VWVyZGpGTWlDMDBiRGtsWWx1T2dnSEVSMEE4WFBuQ0pOL3RYc2RT?=
 =?utf-8?B?OTZZYm15blJGQjJUdFR6VlNrQU9tQ1JyNDU1U0tEYTFWODZjejhEUVU1T3JG?=
 =?utf-8?B?NHQzU3J4Sy9IbHRHcllpaHlpbzlRTHYrZnlUT3BTOStxZmc1TldYaFFxK3Vi?=
 =?utf-8?B?cUFYRVN4eW5Ca2tkNituSmpUdnM0djBFQzE0RExHM0FjYWxvUFpjdE5JYjhO?=
 =?utf-8?B?QmR0b3RBTFVYcU9wcmx3cmJMN2QvOEFLOXY0cmNKSDJ0Rm1LRWRpTjd1RnU1?=
 =?utf-8?B?bHJrTWxpN1Q4VkhnM0grSngvcDlPd1ZicSsrcGNXUE5BRHg2RWJTSVV5ZkF3?=
 =?utf-8?B?UmRHaU04QlYrVVNzVkNxVWFaUXVPME1MbEltcGxvQldtM2N5cVdwWGpFcVgx?=
 =?utf-8?B?UWtmc296cHIvMkNOdG1zSjFudEdBL0FHTWRHQzluR2laT095eCtXRDQrZFJp?=
 =?utf-8?B?OTFKU3pldUw3aFkxbFErQXViUzBhWHpQRklvdm9PTUYyWXFFdmQza0ZPSEMy?=
 =?utf-8?B?SWZLdWp5YVBjWmhwRlNodUpkRlNhQnFMME9vMloxb1RUTnNaWnVWWUhrTWlq?=
 =?utf-8?B?U0cxcmNFYVpCdjUxMUU2NVkxWVBZQldKYWVlc05mWFpCQU9nekVOZ1VPdTlX?=
 =?utf-8?B?T2xNSE9hazFlR25yZ1N2RHc1YXJMbVN4cUxpU3V2R1daV2dJQ0tYYk5PMmN0?=
 =?utf-8?B?dXdQbWtIbVI1QS90ZlJuaHlnUS9vNG1JR0JEL2FRMjFEclBLam5EQXpFbksv?=
 =?utf-8?B?TnJoYzhRZXdjaEJucWRmLzRMeEIwTXdPdm5COGZlU1pLcGV3SHdrMUNrU0lI?=
 =?utf-8?B?Um82Z1Joaks0bENMWVNkUVFVa0t0UlhoTTZ4VStvN0xSTWdmQjVGM3ZtWHZK?=
 =?utf-8?B?UlVhcG9lSGpqS093aHh2eGlxSmlvcDlnUjgyS2V5bmx1U1FVVHZsQ1hxZHpU?=
 =?utf-8?B?SkxsVUNEOU5tOXNOdFh2U1IySS9YQkZKUDZCSlVZbGhrbFhOa3p0QXNaZmZK?=
 =?utf-8?B?QXhEbEFtWGRoc1o3SG4yOUZHbDllcGkwcFZzY0hpZG90dlkrTEJ1b3IwL1BC?=
 =?utf-8?B?RkZvY0RFZ1RmV0Fua3Rub3NiY0lZcGNRZHIwUStLWVNnL1UweWRHSFdGc2tY?=
 =?utf-8?B?aEUyVDFvYnVPNi9PL2VtMEJGa0xIWk5LUlpiOWYxTjJqM3dTZ1JXWTZVUFNp?=
 =?utf-8?B?Nkk4RGwwc1FWREpNTjByMW9vYmI1eU9Qbzk5bXNubzY3WEpaYWFkMkdDRkZm?=
 =?utf-8?B?bVlMcWZYMDZJWlVaTjV1Z3Y5cDhSUDdwN1c2bkU1NnJ5RnRQS3lhT1hjMWFn?=
 =?utf-8?B?eWtjMWlQNkhmTll0UVNveXlLL2ZpNUFUWTBRYzlQaFFrVHNyWEtQRE9zTys5?=
 =?utf-8?B?UWRIREVpMi9sRmkwRTRUWTA5ZEc5MC9RYXpxSU0wWlpMNDQ5YmlBZDNHTDRr?=
 =?utf-8?B?MmJCVm12bVJ6NXVINzBnTC9iREV0cUFESytqOC9CMEJQQThFS3hBTFQ4YlR6?=
 =?utf-8?B?enFhSTducWZYdmV0clQwZFB0bEtQbTQ3Z2c1dFdNdHJwZENjY2g3Ly9wVnpY?=
 =?utf-8?B?ZDc3NFRIOG1Qa3BjOXBVWUhMTUJJeHNUWGRDNnMxUDF1YTVkd0hzVFcvWmpP?=
 =?utf-8?B?dlBZRDJSOC9uZWxtQnlzMitrYURHcmVyRlc4Z3htRDJUT1d4L2xRZmFhcGtX?=
 =?utf-8?B?ZWhuOXg2MFZiZVljZGZYUmViUFdXbU5wVmRib3FUOVRGWmh3VkNucTNPQkdN?=
 =?utf-8?Q?GF6cMfOIFW4UWGzBjwDrCwMngEbIQDqNMOzIc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4610.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L3pSeW91TFVPUjhrYTRBeGtpZFpITWN0Zm8vWVFKTUpWbTFWclRjaDFidmdj?=
 =?utf-8?B?S2Z3TkpCVm40OTNlYXdlVFExbDQ4NlJ1QW0yZGxVNTV0QS93SE95SFFPV2sy?=
 =?utf-8?B?K2FscmZObWJyekJvY1JpdTdYM3dJdER6L0s2eWZQcmJJZzZIemlqS0pDaGph?=
 =?utf-8?B?N0kzSFVMd1JGOU5zNWtIZWJSZXBkckxHaGpDVGZwN1liRW1UMkhQcDVGU0Jh?=
 =?utf-8?B?SnphOVBVNVpidGV5SHludGNqTFVEWkVKNCsyTmFGdTRWRWJ3OE42UlhDbWVk?=
 =?utf-8?B?YUxaZXdOVEo0V1N3Zm83cWQxazVyMFluL3hJbUEwZGs3S3ArSVZwd3ZUTEtH?=
 =?utf-8?B?c1Z4Q1IyOVhVK21YOERSM0VXMzZBcGtQSVpmZ2tIM0Z1VzJONFQrbmNpbGk3?=
 =?utf-8?B?MlRzUWJYNm1sNmFiQktiRXV4UG9Ia0ZaUnMrR0crWDdYOHFBUk84djE5aVFw?=
 =?utf-8?B?MUFEaFVSNjNxWTZReTBvWm1SWUNDakJhUlA1VGRrejg3SmNvUE1wYm5PTUZw?=
 =?utf-8?B?ZGtXZ3J6SThJZHF4ekFvNkZqdk1aNHhLL0NXTTY3YlJwZjN6Zm80dERmTzBE?=
 =?utf-8?B?SUJnTHpacDF6VGltNEhpU0tvOGhoOVFING55U2NSYmppWG5XOHhOMGhDSmIr?=
 =?utf-8?B?MjZyQ3VuSFRLMGtKdHpOT2lQWDFpaWk4Tk92UzF3YnZ4N0c1aElPUE1keGw4?=
 =?utf-8?B?YndGd2hzTFdhTlUyQlhVMGhVYzZ6Z3FCdU56RTVpM3c2MU1icklMYTlHcFdl?=
 =?utf-8?B?RmxwbW1laEttZ1JqSlZadXpRdzBlVzlnMUsxNFMwUkJ4KzRzcWVSS2E2a1g2?=
 =?utf-8?B?Z2lBSXF3RGlXUlRpOW5RVTFlbFdGR3dwZVQ2NGNZNENOa0pxeWdDaE5Lanc0?=
 =?utf-8?B?c0JUVUU3dE53anl3d1JZN1ZHK0Zoa1drNktVQnRGeGNNbXhEOVFIZjl3WXIv?=
 =?utf-8?B?ZFo0U2NwQWVSUGZFS2cxZGEySjhQSFN4QnlpbHRhazVYN3JVS3Nqd3FINGtQ?=
 =?utf-8?B?azRtUEhlZThMSmszVE1mK21vc1ZFYy9RZ21mN1NFeEpIT3BkcVlUcnlaV0dN?=
 =?utf-8?B?dUQ1a0o3dTVVd2JGK2NWTklZZEUxTWc0VzI4eTFiMEFqcVVmbytLT2hOdDFh?=
 =?utf-8?B?VHhCK00rakVwbll5KzBaMDRnMjdSa21yUUhLZU40RURKeGgvMXF3bkEyeWMz?=
 =?utf-8?B?N3ZTK0d6alNORUd6UTVaS1BVRlJFSmJlSkl5SFBPeGVaMkR0Q1l6RExheVZZ?=
 =?utf-8?B?eHQrd1RCTXZ5Y2tmaDZTL3RTSE1jaUZpTGs1Umx0bDdiUWg3T1FMWkNsSjV2?=
 =?utf-8?B?cWhsOFhwYStjODV4dGpwY2U1RnB6ZEpOU0tQaDQ0NWtaQXBINitjVWEyL0ZS?=
 =?utf-8?B?TUxDamxhYyt2RWF5M3ZqZEtlMEsxank4cUZZRUNuQW43dnFROFRhKzMvNlhu?=
 =?utf-8?B?cXJ6alV1aE5ZY1lNdUUyNUp2dmxPMXZkU09FVHZGUHduYUhEYytmUy9EOXds?=
 =?utf-8?B?eUF1NjZUL0Y5NFRXWWpNYzh1UDMyWlk1RGQ5S2hVV3pXUVhoUTVnTEsxVk81?=
 =?utf-8?B?NHNkandoNWdUUWtzTUFJeVdMZ2p2blp0UXBtb29DZXVQWUd2bVBhR1BjbnVH?=
 =?utf-8?B?VURhSGk5bFpxdjBzS2w3SG4yMHNPRFBlUUdsMFhhUWdYdGV4ZG5DUDdtekU1?=
 =?utf-8?B?QWtveVdXc0JKVTQvK2FOZStSSWFrcG9qYnVGTDJ5RHJVT3Y0SDBaMkFsNzBG?=
 =?utf-8?B?WWpCaVZaMk5jWUN3T2RqNmg1TVR6Vk85eTdDTVJiR2IwQWt2S3NmZnp0RDlx?=
 =?utf-8?B?dkUyZUc5NVF5T1ZhODZYSlJvMitjTTZWRndOa2lHWHB5MVZaL0FSM1ZvcGhw?=
 =?utf-8?B?Vi9TbWZZV3lRSmRTL1g2U0FUM0h5bUlqVk02V1FhZnNBQ0FQS1NOWWVIcklo?=
 =?utf-8?B?ZXlnZjQ0Y25pZDJLSDZCV2t6YW5wVTY1OUtCNUdOaUI4TUpodmx5VTVpTkF4?=
 =?utf-8?B?Z1ZjZnROaHBNdDJjTFJBV0I2ekhLNGJST0RQc2tjdnhLY0FYaHV1WUlJeGcz?=
 =?utf-8?B?Y1VtUlVXc01VakFSVEF3NHdEVHA5Qm1EbEh3d3c2TjBFNUFtT2VPaDk4QW5F?=
 =?utf-8?Q?XygsmO1xMgQvG88FkzPeH6n1J?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4610.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23903725-545c-4a95-b305-08dd08b2ab1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2024 15:56:02.4007 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eMVJUSQpBvU+hxNfqYP+LBUUZzN1gV4YZByDiNtn2Pw3BLZ+PeL5dkETIFeA8C5iXexPexHbb+t3q9vXKKNy8l6NXQCCF2XDkMlZ5GULNmg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6753
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732031767; x=1763567767;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E2ahpZIz0OdZ1jxR9at5QckKQDFBtkAVQwjcNq+4GiU=;
 b=EV+j2HtNWrb/q0/MXIkRySTuIFEvFhgm5ykQ2v6zrdBYKf/ra+Dj4xj9
 y/Brwj75klLWKramQ7wOaffT67gwsU09AebI9NntHnKc5id6+RSQAHL7t
 CPy8u2iRo/9BKrS6JBlfuarB9QKEW0G0a5oLTUamdaAwlJZJJ0s4y+W5C
 dtEiSnv8+dqggK2UBjij1W6IayKl47eP+C1/ymU7lOaFUY9WjvMtWSStx
 oe3UJZxbfa68QXTujG5sERvEdkO2ERp9SAY/2xpSLQZO1ZL/idMlPkY0D
 iDtYJv/c5yc7PRAv0x1nIAr4mmFpDOwX7txdma8PrRDk41SHgibO+DKfS
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EV+j2HtN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1] ixgbe: use little endian type
 in admin commands
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

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogTmd1eWVuLCBBbnRob255IEwgPGFu
dGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPiANCj5TZW50OiBUdWVzZGF5LCBOb3ZlbWJlciAxOSwg
MjAyNCAxMjowMyBBTQ0KPlRvOiBNaWNoYWwgU3dpYXRrb3dza2kgPG1pY2hhbC5zd2lhdGtvd3Nr
aUBsaW51eC5pbnRlbC5jb20+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgS3dh
cHVsaW5za2ksIFBpb3RyIDxwaW90ci5rd2FwdWxpbnNraUBpbnRlbC5jb20+DQo+Q2M6IEtpdHN6
ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+U3ViamVjdDog
UmU6IFtpd2wtbmV4dCB2MV0gaXhnYmU6IHVzZSBsaXR0bGUgZW5kaWFuIHR5cGUgaW4gYWRtaW4g
Y29tbWFuZHMNCj4NCj4NCj4NCj5PbiAxMS8xNC8yMDI0IDEyOjEyIEFNLCBNaWNoYWwgU3dpYXRr
b3dza2kgd3JvdGU6DQo+PiBGaXJtd2FyZSBpcyBhbHdheXMgdXNpbmcgbGl0dGxlIGVuZGlhbi4g
TWFyayBpdCB1c2luZyBfX2xlIHByZWZpeGVkIA0KPj4gdHlwZSBpbiBhbGwgYWRtaW4gY29tbWFu
ZHMgc3RydWN0dXJlcy4NCj4+IA0KPj4gRG8gYSBwcm9wZXIgY29udmVyc2lvbiB3aGVuZXZlciB0
aGUgc3RydWN0dXJlcyBhcmUgdXNlZC4NCj4+IA0KPj4gUmV2aWV3ZWQtYnk6IFByemVtZWsgS2l0
c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4+IFNpZ25lZC1vZmYtYnk6IE1p
Y2hhbCBTd2lhdGtvd3NraSA8bWljaGFsLnN3aWF0a293c2tpQGxpbnV4LmludGVsLmNvbT4NCj4+
IC0tLQ0KPj4gVG8gYmUgc3F1YXNoZWQgd2l0aCBjb21taXQgZWEwMDdlMGNkMmRjDQo+PiAoIml4
Z2JlOiBBZGQgc3VwcG9ydCBmb3IgRTYxMCBGVyBBZG1pbiBDb21tYW5kIEludGVyZmFjZSIpDQo+
DQo+VGhlc2UgY2hhbmdlcyBsb29rIHRvIGludm9sdmUgYXQgbGVhc3QgdHdvIGNvbW1pdHMgZnJv
bSB0aGUgb3JpZ2luYWwgc2VyaWVzIFsxXSBpLmUuIGRvZXMgbm90IHNxdWFzaCB3aXRoIHRoZSBt
ZW50aW9uZWQgcGF0Y2guDQo+DQo+SXQncyBwcm9iYWJseSBnb2luZyB0byB3b3JrIGJlc3QgaWYg
dGhlc2UgY2hhbmdlcyBnZXQgcm9sbGVkIGludG8gdGhlIHJlc3BlY3RpdmUgcGF0Y2hlcyBvZiB0
aGUgc2VyaWVzIGFzIGEgbmV3IHZlcnNpb24uDQpXaWxsIGFwcGx5LA0KVGhhbmtzLA0KUGlvdHIN
Cg0K
