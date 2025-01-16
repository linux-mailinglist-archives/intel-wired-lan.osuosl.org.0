Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E1AA13790
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 11:14:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E89B741992;
	Thu, 16 Jan 2025 10:14:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ITSiLWxVFU8W; Thu, 16 Jan 2025 10:14:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD8A14199E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737022482;
	bh=xrZCbt2X0DBaF59mK7a3QP8JgdNsdk8133lW8IoYaro=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vpackKh21UaIevWhZn+GWFACaRjX6EnaJADJ8IWcxZMQWf2udD8v8dL7dhXHI1ghf
	 5MfNdxgMfQRTaFDVU6k0Uw+RjGKtIDGW9eE8x6hnfMqwNMtlK1ObUaYw71WXcM6LER
	 J09G/FAkoOCeHZPTq0gr4G8PDJBf71ORgpOxR/WAMXoB0AChcqGwdum4/llNzSlz2l
	 Nm9PalKkBetARqtsy00jvSuIXJPohclKJpGKrP7R8aCKThbJo0Nn0+fZuXmIPAMbIu
	 KvYhCRRFAshQmRPSaegqRjUIA9Rpjetg+RAQYq+ZBq0q9kW0i5Tc4fE34UhtR0wlfz
	 hGjDxskj6Nsdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD8A14199E;
	Thu, 16 Jan 2025 10:14:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id EFEFEB89
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 10:14:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C31376FA68
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 10:14:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ySrKxmjHojpn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2025 10:14:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E2E0F6FA54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2E0F6FA54
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E2E0F6FA54
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 10:14:39 +0000 (UTC)
X-CSE-ConnectionGUID: 8LE/+GZwTFqkwS6tNScNTA==
X-CSE-MsgGUID: lf6unKDuQVetxvuT284NKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="37285318"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="37285318"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 02:14:39 -0800
X-CSE-ConnectionGUID: OcR5NWKVR9u1FCbTpRXo8w==
X-CSE-MsgGUID: WSMnsIPIRgGxIIX9E34peA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="105207157"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 02:14:39 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 02:14:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 02:14:38 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 02:14:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tX1Ln4YCMo2VWWdWULY/LDBKPTvJDJfINcaROnljoYen9zoZYYM4wYHkz6fb1bflC3yhURIk55ZaUoMxB0uER2fC+9AT8MLMkblTpBYRP2g7+eyuFsr1Qx7x3dMc/1FuPKawIeIsjeQpKWAvra6018c9OjKNDd1TXNaka7IEpzWH/NSK0wJfDE9nvR2P1NkAsToa3Pqd58IXDeqdfMZQdKViM9N4HBDGhI9JR6B4ml8eKVVN1pbbuNIXIQXu4FwfT8QR3lplYfBYXeZuT6LXcEc5B6DipVCWKXDOjaZvYodO0rFceKZxg8U/cR1lBEd6hBeVC4N6tswzIlxABSafLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xrZCbt2X0DBaF59mK7a3QP8JgdNsdk8133lW8IoYaro=;
 b=iK6eoqO8Kal4aHc3iDAA1VO2oNKLIwy0x0e4gLVRb5YfQZlZuqKZvLVs93nF139SQqHPF5cPuPUL4AlTWeLCNQnSJYE+CHtnxfbTKcnLxxNdaLBZZJdYsjaJ7/OG2dF0jUfIoXIKE7eAluE/MgPT8odYb+p7hz296oQMqcSs+JaK4IVdaDCKz622e3iPloawiPSVRaggeBuqTcJDX2YzjNQ3DRN8TStgv7cpQFbL0w1wX0P7ee6dqVhrfn9IXmEN1TZZutn+c+F2yQ7pwl6y2vGs4L2BKNSoNLK35X1BWraA724J6w0cByYW/hFukC981XKa2eUh1LEqq7Mog1kf8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 SJ1PR11MB6225.namprd11.prod.outlook.com (2603:10b6:a03:45c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Thu, 16 Jan
 2025 10:13:56 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18%5]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 10:13:55 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: add support for
 thermal sensor event reception
Thread-Index: AQHbZ0q+0uIZrLqm9kyUEujjR5Zbk7MX11IAgAFXT6A=
Date: Thu, 16 Jan 2025 10:13:55 +0000
Message-ID: <DS0PR11MB7785C428F9DAF5DFDBF93098F01A2@DS0PR11MB7785.namprd11.prod.outlook.com>
References: <20250115122720.431223-1-jedrzej.jagielski@intel.com>
 <c8cf251c-9788-4d00-a633-7a4a7bdc5e87@molgen.mpg.de>
In-Reply-To: <c8cf251c-9788-4d00-a633-7a4a7bdc5e87@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|SJ1PR11MB6225:EE_
x-ms-office365-filtering-correlation-id: 375fdf2f-183b-47ea-5d72-08dd36167c48
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Ty9TR3Q5SUM0ZHFMOUtFYjZIVXlLV0JDNFlTekVDUDQ3MmtodlZlYlFzUmRG?=
 =?utf-8?B?MnFUYnNNMEZsbEFrL3lHcEZrZm1hYW9PWkVWTmhCbjFQdVV6YlAvNjE3NE5t?=
 =?utf-8?B?bHowK0xJQ2E1NGZmQ1BtWDhPT0dmVnA3dVNtRDBKUlpFaDVKTTdQUWZsNE85?=
 =?utf-8?B?clQxSENCdUI0MTNEemJSdWNaMm1KZzRRdnBDRFBWTTVHZEp5T2ZEMExNcS9u?=
 =?utf-8?B?bHh6TDVGWlIxcUlZdGc1U3ZlZk9GRG0vdDJSVm9qTTJ3MXNIT1ZHUXBtWjVG?=
 =?utf-8?B?ZW53ODVIVkNzK1RCQ3JpMjcrTkIzTzIwMkUvZENOQ0J3eHRQUWsxTWJnL1lW?=
 =?utf-8?B?bjNCNDhuN0pud25ZSkh5Ni9EOGdqLzJoL3FzOWRYZmNkbU9lck85Y29rNkpB?=
 =?utf-8?B?Q0ppNmJXSWJ5bElJNXhFcmVjdWNZRkZyZFdzN0x2TWtVOUtkQ1FSZnhVNXYx?=
 =?utf-8?B?MmdPazQ5eCtPZWhmOWlwZVhIcmI5YkpxbkZtUHpMTFFrN2YwM2E3RjYwM0FB?=
 =?utf-8?B?OVd5cURJc2syZkJ0N055UkhoMTVic1FxRUNreTNoVVgyL2tYM0pVSWEvTG1i?=
 =?utf-8?B?QWJvRmkvNUU2NFFVc2JMYXpzcFJ6T3V6YlcwTytvS2lXa0dTVEdxclpqRGp3?=
 =?utf-8?B?RThrRGxWSVNMd0hPMDRmQm5mYzdsWmdTN1M0VTZhdnlRdVBOY1dEVVJ1QWNI?=
 =?utf-8?B?RTJHTmgwQ2lCdzd1Q1M0TCt1bG10UEZtRi9iUWcySU1yRFErSGNHUTV0K2ly?=
 =?utf-8?B?LzhsbjRqVDhDT3phbWxXUStMZGpHKy9jVzdaRmYyRWUvUFpmV245c0ZONy95?=
 =?utf-8?B?N3hUQjNmWmhTcnp4YlZrbFZ1WURKT0Q3MnpxcXFJYUY3SnhOeDZLN0FKbmRn?=
 =?utf-8?B?bXpNWkpuRTdWSTlQdjQ3SWFSY1BrVVlKZWorb1ZualNrc0RNcHJUNHdCcVRK?=
 =?utf-8?B?akppMy9rYk13anBJdmE3QnFUaFRnN1BVV1BINDlqNzNaNUJDQXdyeE4zL0hV?=
 =?utf-8?B?c09xUGhUelZXQ1Budks1UmpvMk4weEVlV3NqU1hVNndIaG04czdDZmlVWTZC?=
 =?utf-8?B?WjNkTHZIWmQvQXl5RER5SHpnQ04vZFVnQjBXbTdjdit1TUJCMzBGdGFNUmVB?=
 =?utf-8?B?S1hCOC9GdFVYTTQxcCtVSG9ZSXg4bGt5VzVIVHVkay8zQmpJVWU4cWxZMk52?=
 =?utf-8?B?RUtKTFcwbWhrL092OGpKTjYwRmhuRGl2aXUzUmZvUGxYZnBBWTBETnpVZnla?=
 =?utf-8?B?QVZ2R0xlTi9qamE0ZktVNDhveDFEYjlVQmJRZWFFRkNWMXk2dUdxamY0TEZX?=
 =?utf-8?B?alhlU3ZtdjJTeUU4WGVsY2lUaUZaNHE5U2FuSjNEeStWWTErbjJZVHpPc3Nu?=
 =?utf-8?B?ZG0yV3hUSGUyWnZJQzRkSmZyNW1IYWtMU0lKU3RTQlNucGVLM2FRWlFGSk5C?=
 =?utf-8?B?ZXlrOHhSd1hvRE5BeUk0Rmh4L0tCV2I4QVovQzlWaHRwSkZxbFBSV2lvbFhr?=
 =?utf-8?B?SHBJZVpWdVpTWE9CR0UwcFE3N0hEd2FxdkZFY0JBWmQ2aVJYUDBOK2oyUWpH?=
 =?utf-8?B?NGR3ak1OUkZpdWhldW1aamhadFZwQ3FzY01TOTJMSGYvQ3VicUJkTUJkZzNz?=
 =?utf-8?B?TWZ4Skh5aFZtZEJTVFZOeFh2SWJaM0ltSlFMRWlqZXpJbFp2MlVNY1lSK3hF?=
 =?utf-8?B?UGtpVCtRLzRKK1lNZGM0NFJ2MmVkKzN2TXdEK1NqV1llL2ZlTktERlRQUzNP?=
 =?utf-8?B?N2QzQUNuemF3WXkxbkxRRmtxMkJoeGtMME5BZGZNV3cwM3RiRmVhQTFUOThq?=
 =?utf-8?B?aXpLRWlFMm5pb1VMM244NGV4ZWg3ZkRpQ2lkK3V3NEM0MzRCRnI1K25tcE5X?=
 =?utf-8?B?eU9SS1U0UXJnY0tSb3FQMllXZHBvSGlTZW5LbjJaTHhuQXFmODlqdjZnYTF3?=
 =?utf-8?Q?kGWyVina4M1UOhB4h1FVibM5ZF5uWdEo?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WDNQcDJNT0hud2FKdGx2UXE5QzV5T2VWK1BjVFhXRnhmTjN4YkFHMlY5VlQz?=
 =?utf-8?B?bVFzb3crWTVEREdZd09YalBmZlZ6Snd1THozTWJTVi96Z2RCODVQM3VXZjVj?=
 =?utf-8?B?eGdqdllocGZTR0dhT3gxbmxGM2xWOE9Lb2FhTjBKbXlXRWJHbUJXYjJmUG81?=
 =?utf-8?B?Ty94dnQzcTQwbmx2TXJWdHhPK3kxaVVZcGJGVGhOUlM0U2IrbmhSQ2sxeU1o?=
 =?utf-8?B?UEhJZmhDMC83YXl4bXFsWHdHK3Rmak1KMlFkNDBEYVdXZVFPcXk3enZSbkNF?=
 =?utf-8?B?c0F5bHZ2dy9mUzVNQVBmTnhCd0kzVDEySjRPZVRDaUtUUkJQMWtSR1grSUVh?=
 =?utf-8?B?eWtONG1pakIvZU1XMmJiRUQrZUQ4ZXBJUHpvd2hBaHlpM0QvUkR2VGtZNUlU?=
 =?utf-8?B?UkRoY3NrOHpLTEE5RWVXYzdjZWNKS3J5clIzYWkyb0NJejR3NzFGWmdaM3dW?=
 =?utf-8?B?TmFRcmJGNGJmUCtDQTdiRy9iL3J6b0YwRkIwZDkzQVE3N2FJQXo2aGM0bzlJ?=
 =?utf-8?B?Ym5kQ3JVUU4vSTREN2dsZjVKZFRkRFQrTVdIaFJxaExRa0JoZGppbG92NHEy?=
 =?utf-8?B?UXhkc211T3JGT0VoN1M1TUpFUURQdExBSEFsYktkazZhaytmalhIVzBSQ1NQ?=
 =?utf-8?B?WmExK0ZzWk54bzdOU3hpUTRHTzdTYndzc1RKenNlREpzb0dZbWUwcytLR3Y3?=
 =?utf-8?B?b2MxQTlkWHdnSzhmdkhWSkJHbUJPVVVTUWk1VmRyanJLUThOZ0ZLWjBkMU5N?=
 =?utf-8?B?bnFteGxTalRvejhpTUppakxJNlFlajh0SnBVTURqYS9NUkxrcDBTTTdtZm9h?=
 =?utf-8?B?VXhMYTAxRHo1Z2Ztb2hVZnRxaU8wcW1kS01UL3k4S1VlNjBTSS9XWVMvV2hr?=
 =?utf-8?B?TGNqZlU0MGM0UkpscS9oL2xlWkUyN2QxbjhqMjFkMzNtTGdXeVRWT2pORkFs?=
 =?utf-8?B?cTVBcHNNb3hZb04zUXBaQ1VSQTBPSmtGY1F3TUZsemg4NGJaaUJnQ09VbVMz?=
 =?utf-8?B?NkNyeVBDcFU3SDQwa1Fja0hSRVlSVHNjaUY0VFZMNWsrc1lYamxWUzRnNmNT?=
 =?utf-8?B?aGdqenFSMnZzRzkwZkY4WmlqTUJDanZUcnBqSTladzY1TzNjWXQzZXJBZEZ3?=
 =?utf-8?B?YVpwWnVFQi9uelhoNmRrRHovWEZpZkhtRms1YVljSnl4NmxScFVicWJEM29C?=
 =?utf-8?B?ZVpsZDJ4QkNKcGlXbktlckhyQzRJQ0QxZkhEeUNsQmI2WDhWR0kyek54UFE4?=
 =?utf-8?B?THZWYUVyL2hFWTBhYjEwa1crU0lraVRQRnpRajFZMGJpdWZiTlVmZ2Znd0tM?=
 =?utf-8?B?VDhya3p2ekhUSEp4ZitrRVJoNjUwZ1VzYlRQZzFqczJGMW9IMWhnY216RWtG?=
 =?utf-8?B?M2tVdVZ0c1F3eDBCYVVRYmNUTkNFK0tJSWVHUWdEbGVGelRoTWdIcDlmdGdS?=
 =?utf-8?B?aklKcnBQUks5UXV5QUdCUHR4NnZWRzd6dWRXNFAvWlY4eitnZFF5eTlJRUUx?=
 =?utf-8?B?a0xyVFRJekFYMGxlSTUySWZ3ZlFGbTZyZTV4SEhOMHhTclRYeGhuRTd5MFZG?=
 =?utf-8?B?T1R1WWhWNEdFR0lGZlYycGExRG51L1d3WmRQMG9PTE9XRTkvdThKQ3dhYmN0?=
 =?utf-8?B?SmV3cVNhV1d4VXlVcUVRUjNuRXRPZGphRHA4RHYrdHhXTUk0dzAxMEk2bzdR?=
 =?utf-8?B?M1ZjZ096TEtVcVI3Wis3dE04Sm41Zy9qeVlHNk5ndzNMZFBjSTAzSDJacFlR?=
 =?utf-8?B?YVpiY1diQVM2M2RjbmV4RklVY25RUnN3bjJtaFRQL2FPb3RiVnBGZWtRQVdy?=
 =?utf-8?B?VGdpeEFCcGEzK3FrUjA5THE3SDBsZVg5d3phNGNTdjdmRHFUR01kaTVDbXFa?=
 =?utf-8?B?dUxYU25JcFNwOWNwOGV5aXZYUDdTVUcrbmJ6RGVrbW9LcXZ0Q0h2S3N2ZGxB?=
 =?utf-8?B?TDRyKzlhelk2VXNPR2xPc1lCa2xDZm5pd0RjNlhUSUdnSWpvRTJGNWJQQXRy?=
 =?utf-8?B?aEY1LzVPQmVxOUhQVzZ0U1hiRUlNb1ZhZ1J3SkpOcDEwZ1lTcTdPQzdzZTlY?=
 =?utf-8?B?aGEwS0loM0dnSytEdVNhVk9NYzgvRHkvYWVGU2tvWmJuRFhCN25KamtONTll?=
 =?utf-8?Q?iNmL8O+h4ITNkp2iEKM1PiTRU?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 375fdf2f-183b-47ea-5d72-08dd36167c48
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2025 10:13:55.8343 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Vq18KY5CS00wsWBdLHN955zulz9IUNSRn2g8Kk27lIOKCucZ6P8FLtdHOucxQJ37OHrqm72kuZaH34yt7hXiphLFBuALeVa9m7TwJgY7fY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6225
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737022480; x=1768558480;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xrZCbt2X0DBaF59mK7a3QP8JgdNsdk8133lW8IoYaro=;
 b=Pv+Im8MHgb1NAtdLHTcECOtw4Icgr3oiMnoDOBdk2hcds/P9MTJkDmtK
 C3cnU9Yx7FhSdVdoLhGGbp2G/XuqDAhS/cqVcacpRkZLuPMV2/rZ0fhJl
 MS1smogfpWKWVK4NoEvlLH0eICLsdwxbIWyTC1FBxb4BcD032aRxiG59K
 XNZiEevBcTTRoyZgg8TOLjCXF4voe22zmeye7mC0ugqLSjgUYzJ21SZRk
 RpqxA1OTnnOxmWYPxQTF6t9vVyfC/B/QPbB9iIIk3EFC5QckOYJEGB7+4
 ZBeCymr5yxEbjVSh2uxtbU1xs5gEHlHgfDXJn5Bm7/UgKhe11IAqe4nNn
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pv+Im8MH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: add support for
 thermal sensor event reception
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

RnJvbTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4gDQpTZW50OiBXZWRuZXNk
YXksIEphbnVhcnkgMTUsIDIwMjUgMjo0MCBQTQ0KPkRlYXIgSmVkcnplaiwNCj4NCj5UaGFuayB5
b3UgZm9yIHRoZSBwYXRjaC4NCj4NCj5BbSAxNS4wMS4yNSB1bSAxMzoyNyBzY2hyaWViIEplZHJ6
ZWogSmFnaWVsc2tpOg0KPj4gRTYxMCBOSUNzIHVubGlrZSB0aGUgcHJldmlvdXMgZGV2aWNlcyB1
dGlsaXNpbmcgaXhnYmUgZHJpdmVyDQo+PiBhcmUgbm90aWZpZWQgaW4gdGhlIGNhc2Ugb2Ygb3Zl
cmhlYXQgYnkgdGhlIEZXIEFDSSBldmVudC4NCj4NCj5vdmVyaGVhdCppbmcqDQo+DQo+PiBJbiBl
dmVudCBvZiBvdmVyaGVhdCB3aGVuIHRyZXNoaG9sZCBpcyBleGNlZWRlZCwgRlcgc3VzcGVuZHMg
YWxsDQo+DQo+dGhyZXNob2xkDQo+DQo+PiB0cmFmZmljIGFuZCBzZW5kcyBvdmVydGVtcCBldmVu
dCB0byB0aGUgZHJpdmVyLiBUaGVuIGRyaXZlcg0KPj4gbG9nZ3MgYXBwcm9wcmlhdGUgbWVzc2Fn
ZSBhbmQgY2xvc2VzIHRoZSBhZGFwdGVyIGluc3RhbmNlLg0KPg0KPmxvZ3MNCg0KSGVsbG8gUGF1
bCwNCg0KdGhhbmsgeW91IGZvciB0aGUgcmV2aWV3Lg0KTmV4dCBwYXRjaCByZXZpc2lvbiB3aWxs
IGluY29ycG9yYXRlIGFsbCBjb21taXQgbXNnIHR3ZWFrcy4NCg0KPg0KPj4gVGhlIGNhcmQgcmVt
YWlucyBpbiB0aGF0IHN0YXRlIHVudGlsIHRoZSBwbGF0Zm9ybSBpcyByZWJvb3RlZC4NCj4NCj5I
b3cgZGlkIHlvdSB0ZXN0IHRoaXM/IENhbiB5b3UgcGxlYXNlIHBhc3RlIHRoZSBtZXNzYWdlPw0K
DQpUaGlzIHdhcyB0ZXN0ZWQgYnkgZm9yY2luZyB0aGUgY2FyZCAoYnkgdGhlIHh0ZXJuYWwgc291
cmNlIG9mIGhlYXQpDQp0byByZWFjaCB0ZW1wZXJhdHVyZSBleGNlZWRpbmcgdGhlIHRyZXNob2xk
Lg0KDQo+DQo+PiBSZXZpZXdlZC1ieTogUHJ6ZW1layBLaXRzemVsIDxwcnplbXlzbGF3LmtpdHN6
ZWxAaW50ZWwuY29tPg0KPj4gU2lnbmVkLW9mZi1ieTogSmVkcnplaiBKYWdpZWxza2kgPGplZHJ6
ZWouamFnaWVsc2tpQGludGVsLmNvbT4NCj4+IC0tLQ0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMgICAgICB8IDUgKysrKysNCj4+ICAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfdHlwZV9lNjEwLmggfCAzICsrKw0KPj4gICAy
IGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQ0KPj4gDQo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfbWFpbi5jDQo+PiBpbmRleCA3MjM2ZjIwYzlhMzAu
LjVjODA0OTQ4ZGQxZiAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2l4Z2JlL2l4Z2JlX21haW4uYw0KPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aXhnYmUvaXhnYmVfbWFpbi5jDQo+PiBAQCAtMzE2NSw2ICszMTY1LDcgQEAgc3RhdGljIHZvaWQg
aXhnYmVfYWNpX2V2ZW50X2NsZWFudXAoc3RydWN0IGl4Z2JlX2FjaV9ldmVudCAqZXZlbnQpDQo+
PiAgIHN0YXRpYyB2b2lkIGl4Z2JlX2hhbmRsZV9md19ldmVudChzdHJ1Y3QgaXhnYmVfYWRhcHRl
ciAqYWRhcHRlcikNCj4+ICAgew0KPj4gICAJc3RydWN0IGl4Z2JlX2FjaV9ldmVudCBldmVudCBf
X2NsZWFudXAoaXhnYmVfYWNpX2V2ZW50X2NsZWFudXApOw0KPj4gKwlzdHJ1Y3QgbmV0X2Rldmlj
ZSAqbmV0ZGV2ID0gYWRhcHRlci0+bmV0ZGV2Ow0KPj4gICAJc3RydWN0IGl4Z2JlX2h3ICpodyA9
ICZhZGFwdGVyLT5odzsNCj4+ICAgCWJvb2wgcGVuZGluZyA9IGZhbHNlOw0KPj4gICAJaW50IGVy
cjsNCj4+IEBAIC0zMTg1LDYgKzMxODYsMTAgQEAgc3RhdGljIHZvaWQgaXhnYmVfaGFuZGxlX2Z3
X2V2ZW50KHN0cnVjdCBpeGdiZV9hZGFwdGVyICphZGFwdGVyKQ0KPj4gICAJCWNhc2UgaXhnYmVf
YWNpX29wY19nZXRfbGlua19zdGF0dXM6DQo+PiAgIAkJCWl4Z2JlX2hhbmRsZV9saW5rX3N0YXR1
c19ldmVudChhZGFwdGVyLCAmZXZlbnQpOw0KPj4gICAJCQlicmVhazsNCj4+ICsJCWNhc2UgaXhn
YmVfYWNpX29wY190ZW1wX3RjYV9ldmVudDoNCj4+ICsJCQllX2NyaXQoZHJ2LCAiJXNcbiIsIGl4
Z2JlX292ZXJoZWF0X21zZyk7DQo+PiArCQkJaXhnYmVfY2xvc2UobmV0ZGV2KTsNCj4+ICsJCQli
cmVhazsNCj4+ICAgCQlkZWZhdWx0Og0KPj4gICAJCQllX3dhcm4oaHcsICJ1bmtub3duIEZXIGFz
eW5jIGV2ZW50IGNhcHR1cmVkXG4iKTsNCj4+ICAgCQkJYnJlYWs7DQo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfdHlwZV9lNjEwLmggYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV90eXBlX2U2MTAuaA0KPj4gaW5kZXgg
OGQwNmFkZTNjN2NkLi42MTdlMDc4NzhlNGYgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV90eXBlX2U2MTAuaA0KPj4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfdHlwZV9lNjEwLmgNCj4+IEBAIC0xNzEsNiAr
MTcxLDkgQEAgZW51bSBpeGdiZV9hY2lfb3BjIHsNCj4+ICAgCWl4Z2JlX2FjaV9vcGNfZG9uZV9h
bHRfd3JpdGUJCQk9IDB4MDkwNCwNCj4+ICAgCWl4Z2JlX2FjaV9vcGNfY2xlYXJfcG9ydF9hbHRf
d3JpdGUJCT0gMHgwOTA2LA0KPj4gICANCj4+ICsJLyogVENBIEV2ZW50cyAqLw0KPj4gKwlpeGdi
ZV9hY2lfb3BjX3RlbXBfdGNhX2V2ZW50ICAgICAgICAgICAgICAgICAgICA9IDB4MEM5NCwNCj4+
ICsNCj4+ICAgCS8qIGRlYnVnIGNvbW1hbmRzICovDQo+PiAgIAlpeGdiZV9hY2lfb3BjX2RlYnVn
X2R1bXBfaW50ZXJuYWxzCQk9IDB4RkYwOCwNCj4NCj5LaW5kIHJlZ2FyZHMsDQo+DQo+UGF1bA0K
