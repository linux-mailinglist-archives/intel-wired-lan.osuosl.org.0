Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E80C68080
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Nov 2025 08:44:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1785560E24;
	Tue, 18 Nov 2025 07:44:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WwXSuMXXioFj; Tue, 18 Nov 2025 07:44:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A3A96073A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763451886;
	bh=4udDo7oLQ4WKdAOfPE0L3jy5n4c0QRYehx7fEfrzQ/U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mR0hsUOedk2qV+yyihzkZUhS0XyLCGcjV54J82Cmd38pOmcIsLfJmjC/ngkw7TxpF
	 VtqApDTNYE4RDDXlldmzItrjkjvD1xItkCxz8ZyFyGkcAkiAPJwRrM/Djfgs3XOAr2
	 82w6taE+Dbw1rgAfq6ahaF0CWxl40eua+Z6xDg8KXoAQQvmjmv4sCLbeb86skrN5On
	 xohao+U1euaRKZi1PZaS57xlVoyqSNaM9IIEcaiY/q9U9ZX2geyWJYtlF62kkNfYr4
	 gIv6runMgJGvOg1ZLrHUFJ3ELcnkaEUPTrtjQes8IXKx6K8Z22t1Oqup4u6IDMTRL0
	 aPRu9PYT7JyxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A3A96073A;
	Tue, 18 Nov 2025 07:44:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 029411BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 07:44:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DCF6B80BCF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 07:44:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5ncgVMROWmvn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Nov 2025 07:44:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A4F7180BBF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4F7180BBF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A4F7180BBF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 07:44:41 +0000 (UTC)
X-CSE-ConnectionGUID: ZBcCKHp+SYC428ZZFy4agA==
X-CSE-MsgGUID: Gjqs424aTGyUcqI3Tndvpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="65170658"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="65170658"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 23:44:35 -0800
X-CSE-ConnectionGUID: HWHVYCAfQWeDDh0Q/0sw+w==
X-CSE-MsgGUID: 70Jqw2ZkQ4apwL/bmJmy2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="190911949"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 23:44:35 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 23:44:34 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 23:44:34 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.60) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 23:44:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nja5iOzaIuyqdVDf0ZcQ+fdAlSv2lL/QiYmAbBvyZv45bPxfYqapGBLK5KKLZOKGHsgv24MBaINCnXE5YaKQ39WHeCtGqJC3+j+YmpsCIbobo/TjL5JBqk8woefWFOdPGpCXMVTFaeJH6AqkNI17A3nIyZbhWPzOni2ApNKhePC1zaWZt5YdIGTKM5f3N50P+HWJQUp9PC5/kAMktrg2UUzFQdb0td43kpi8qsFv0wb1JE+9R3b8/P9ohJTDHL1MT8/5fT6kOdffAu/C3TaTHs3Gc3KNeiq22OUxYAt+JSbSOR0F+B8OD2wJML0e5WyyHtWdjIrp4PgeLeRNyUxMrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4udDo7oLQ4WKdAOfPE0L3jy5n4c0QRYehx7fEfrzQ/U=;
 b=K1Naza1KsNjpsh2aC8+OUOWGMtOnhw0g5rcG9Iq85btsuygcr82EyBsAa5PXTkF7zjcQSs/E/bMre2+KQZiPLEy1axvebwKHuL1dxF/9oew2vmAzfXvUvjXtFEvOoGQbuyNKA3uaktLGNcCQAgbHQ6N5td+jDht5OI1Pq6/QtEdSFrT2nsh/7kdGp1SSulnLpxvzw0tFcGQLa03MlZcFO9yF8zJ3+A5wPyOls32sT3ZyvKbAjBHF83WtVk6ntjy8QfVcfWCkOt/Rz5eGLop6DjQQwOt9jZAHE214qfLql8Pxh5E1VfJZR97NZQKZVnyOeecqMOO/lUtCp/F7Wk8ilA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB6446.namprd11.prod.outlook.com (2603:10b6:8:c5::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Tue, 18 Nov
 2025 07:44:32 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9320.021; Tue, 18 Nov 2025
 07:44:32 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-net v2] igc: Restore default Qbv schedule when
 changing channels
Thread-Index: AQHcWF0RYCU8rpOFcUmMf4tY+0Mk57T4DEhA
Date: Tue, 18 Nov 2025 07:44:32 +0000
Message-ID: <IA3PR11MB89867DF16F7438B2DFF1D1C1E5D6A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251118-igc_mqprio_channels-v2-1-c32563dede2f@linutronix.de>
In-Reply-To: <20251118-igc_mqprio_channels-v2-1-c32563dede2f@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB6446:EE_
x-ms-office365-filtering-correlation-id: 3dd08445-ab14-4af8-07a1-08de26764ffa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?MmRNaUpOQjdCTkpKVUtWV0I4aEkzNExuYkVicXEra2pIMFZHMURQQmFLc05r?=
 =?utf-8?B?T2NaV3RtdXJYb1BidGpMb1FLRERyclJlYy8yM0tPWjVzZ2tPNHdKdFZtdTM4?=
 =?utf-8?B?aC9jWVI0T3RjZ2dMb1hWSmNOMExsbHNTOEZSK1JuYVFXTFdoZ0FEbU5Jc3BH?=
 =?utf-8?B?dkNzNi8rRDFOdVhPVmNBN3FkSEIrc1I3NkRTcit0akprcGFHSjhqd3kyZFo5?=
 =?utf-8?B?WlhWL0E0WWVvaGpWT0ZnT3Z3ZnFCbXpaTGNIQ1FsdThJaEU2bC9PWklwRmJX?=
 =?utf-8?B?Q1ZacWJzNWFCZVQwbnZFSmYwSFlwZVpucGNtUzVYS2xMaGVWNGNGUDhOMm1u?=
 =?utf-8?B?Q1F0ckwwZFFTSk0zNEp6NG5QK0ZUbjJhdDltN3hnbzhPWXJ5T01LL29jaE1Y?=
 =?utf-8?B?Nk5MTG5OS2Z4cGlXREd2TjJ6TVN4K0t5S1NwRzl4NFNqWUQ0eHZBVFQ0bTV5?=
 =?utf-8?B?d21sUTdLdGxISDdaYzFUQUpRYU5WazdrcjBJczVCc3l1L0VXdHFwN2ZlQitq?=
 =?utf-8?B?SkN4clFkTGIwRWY2MDdzLzN4T2RXVFJrQ1I0RjZMQlplWHVqUGtGRElHb3pq?=
 =?utf-8?B?V003SkZaVG13ckFua1VFKzJhTXZsZGJkNVQzTWp6ZU0wY0hSbnpjTytpRHN0?=
 =?utf-8?B?OS9PRExEdUppNXliMzdqdGZhOGNXdXhCaTMxSGJDWXFjZ0N4RXV2Qjc3Wm1j?=
 =?utf-8?B?a1NMMks5dC9xVFJ1MXAwU29FMWtOVSsxZmpCdm8yTm80bUdqZ3JmRXBkMzZQ?=
 =?utf-8?B?OEx1YjkxdlduZ0ROOVkzOXZyeWhlTkprSlNwVlRTU2NvaVZXaFhuZ0w5ZWFC?=
 =?utf-8?B?Z09WRjNTcVVWQUQ3OWcxblgzZ29ROEdWRG0yeW4wQ2I5cDhIL291b3BXNXZp?=
 =?utf-8?B?Y2wyUUVTL2RZd0xuLzdmd0pxb3hyeHRtTGtIWHdCT3hMekpoZmV1Rk9HWUN0?=
 =?utf-8?B?WE5QUmE1STFhM1lac3g5TGdJRXdRY1BaWEV6d3F3aWdxYWtJUEx2QnovVEEv?=
 =?utf-8?B?QWtnaGFWTTFVczFveVlvWW13Z2J3YVArOW9TSnA1MnFlL2ROaDE0NnZFNnov?=
 =?utf-8?B?bS9DQXFPYTlBbS9Qa1ZWVS9VZGFBNjV3VWpqSENzeHJ4THZxcHZmdkR4aUZt?=
 =?utf-8?B?Vk56cmo5eUwzQlZSZkQralczQS9xRlBBT3JaT2dnY3F6THY3eDNEQWErVHAr?=
 =?utf-8?B?VThwVVUvQnZrRlduLzc0ZHh3K2N1eUtMK1N4TjhpUkhnWGlEalZKYmpjVHdX?=
 =?utf-8?B?M1BSc0Mwc3Fiamg1eWQ2WUJBWk1VL0ZTc3VwZy80eFNKMVZZK3BxQ09jNy9E?=
 =?utf-8?B?Yzc3cjZabjBuU3E1UmZMRUJhNlIyWEM0WFJIcjIybkNVek1saEtXV1d5SnAz?=
 =?utf-8?B?SkpFWDBhNUg0VUlPZG03SnlmVkJFdkxRQTM2L1NEcUFidlpDeG5MRFV4NVQ1?=
 =?utf-8?B?Yk5Pek9DUFhHZnZtdlBoYmhwbU9MVzRna2hpaHIxb2Q1eTVEd0s2N1pVS0dE?=
 =?utf-8?B?TzlBQUZqMUZ5RytoeW5ZTDZBSUZNMk5sSmVvdzRRTjR6N1JWeGVCY2NtNU9U?=
 =?utf-8?B?SnM2a3BFendYK082WVpCZVpDWlJvODl6cFIwZXd2dDZOcEloV0F0YzAxWW5S?=
 =?utf-8?B?VWg4Z2d3alVxdUo3U3Z3dHdqQzdTZTFOMUNtSEZnQmpEZm9vblZlTlFnYlAz?=
 =?utf-8?B?VUlUQktkQnUyQVQzeGhERGs2dy9MYkpPOUZncWdraXVXcldjbGlaOUlYMEE3?=
 =?utf-8?B?RFRlbkRCYWNENFJlS2dHY09uOXYvbDAxcnYwdkpQTVJ3eVprc1k1MFo3cnZy?=
 =?utf-8?B?WVZzZkx5dSsvZkxVb0V5dUFTbktKTHZiQUtCRnViS3dNWVNJVHplQTR2eEhR?=
 =?utf-8?B?WS9HT2ZPL0Y0UlB1L1k0MC9WRnhpTUhDb3cwRmFtZGZjS2E3a3BvMDNhWnRF?=
 =?utf-8?B?SEovR3Bzc2V4dVVTeWNPUGlxdTFpVlVhYmlERXdpS2tlWjFBL1FtU0ZvWVV6?=
 =?utf-8?B?clB2M3NvdnY5ZmQ3MDN0QmU0WmRjaXVBcnR4clR5ekkyWHE4elVVcS82d3RY?=
 =?utf-8?Q?h+ggmf?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZklabnJwdE1SN1FtanFSbnBXVjdiSUFBZk0vZGc1VmhYTzdsQUZEMjFHbWYx?=
 =?utf-8?B?VTVJYmlHSDI4VEZLakE1N0JmTkVaMk5XK1VOY3dVR2U5b0FVc3lBdTErZ3Ji?=
 =?utf-8?B?NHcyN2wrTXNxOUZvQi8xOTBML05seUkyL1gyd2tGUW5nd3E2OEtNMUx5VVl6?=
 =?utf-8?B?NjRtTGlPUDVHWHhrUXUrVEMwbENmT3MrYWhXaloyTkx0ZnhvT2c2M0QrTzRJ?=
 =?utf-8?B?S0h0enV3UEFEbkpyK0owdnJuUG5PTmdaVlNVY1VtZHk0MW9OTVR6WkZkeC9y?=
 =?utf-8?B?ejRjbDYvMEcrSFM4dkszdXA4WFFHbTN0VW5lSnE3eWVuVUliSVorY1hOUHR4?=
 =?utf-8?B?T2RYVlVJTXlkdEs4TnVTeDRlcUE0OTk2d0pncmtjZlZacGdPYmp1QUszbE1U?=
 =?utf-8?B?ZGVjbmlsS05pMTR1WGFNSEdXOEloakJ2dVpRbTJzT2tmY0JndFhGRGJBOEdv?=
 =?utf-8?B?emQ1d3F6V3pZc0UvSS9DTlVXc1ZnQ3ZOMTQycDlwZGdlamZZYVZsMFVlL0N4?=
 =?utf-8?B?Sjg5ajJOVjdRRVFDZHF6YmxEL29ZVlJnd2ZUQ1hsOFpmNCtyRzVwclBtaWhj?=
 =?utf-8?B?SHZGZWp6Y2piRzBibmR0S2ZLd04wS0RYbXF5NWlUbVFmVlRMVk9qVTBNZ2FL?=
 =?utf-8?B?M0YxUHVjVUVHTi9xRnV0N1JGVWx2RFhoVnFkcTVwQ1BYSUtJSDZPVDFPZnRt?=
 =?utf-8?B?elhZQjlJMHV1S005N1hBQVA3NlZRN1g1UVAzTFVZdDJiZEJKK1g3ZW5tSUhX?=
 =?utf-8?B?SkxOOUpRbU1PT0VoaWloV3FQZTVUM1o0UiszMjlkNnBqYXVGYjlWcGYzSGNr?=
 =?utf-8?B?VkJZTkdMdFRSNVhjbmhSVk1ZczVJeHkwZTJJTGx2WFU0T1U4YlRNRitUNElu?=
 =?utf-8?B?Y1pSVGxNWklGVlJxUDcyeFB3NUVXNWgvdkdqSW85Y0dNWjVZaVNGMDl5Vko5?=
 =?utf-8?B?M2hRNjBHMVB4YXh2L3VkWlJLSklSYTNJNlJNUVIzQlQ5N1lka2Z5a3lJNUtL?=
 =?utf-8?B?UVVtSno2M05jYXIwWFNBTnVzMEo4YTkzVzQrSTNlNlZoZUMyeE1jSlhVNXB5?=
 =?utf-8?B?TnJQd3JYa3g0dllRS25XdzRWUnl6R0xKMUtOM1Bid2lGbXF1aDJ6NGE5a1BO?=
 =?utf-8?B?cUVsRUNSQTF3WHV2NW0veE4wdXg0TGxRcEJOUnRHZVJOY01mSmhZV0E1cGRs?=
 =?utf-8?B?S09ma3FDd3Avd05ScE9kQkk0M1JXYTVkeldVNVNibEptdXhpMGRxdEY1SzVY?=
 =?utf-8?B?MzdDbWJ0VnQ4UlVTYStNandBWGdTek96MUliSUN2cEJTTTNkbVBQcVpoUWhv?=
 =?utf-8?B?VXExcXJZZW5wUlFscXY1cHY5S0tGWVBqclhPMzh0a1MxTlQxbU5MQlJKVlFB?=
 =?utf-8?B?N0hPcjlFbnpBV1lJV0FMeHdyb21MTWZTUVhaT3hLTHE2Nmgxall1R0lWWHNO?=
 =?utf-8?B?bUpGdFBKdVprakgrWWt4OUFGa2hXeVF6ODE4akdKK3dLMTVEaTZZVFJhRk54?=
 =?utf-8?B?eU5mYUhEcmhjeS9CdWhhdDIzcFNQV0FTK3M2M0hLcmUyWS9SeVdIdzRtOWg2?=
 =?utf-8?B?S3BFU0FrME1QNGY0OWtwVXRJdVdsdkZHT3FUMHdWQkpOZ1lnQVRVdzc4Z2JE?=
 =?utf-8?B?elp4Q2ZvWC9WMnp4VTlTYVI1Wml5MEF3Vk5OUzJxMXR3VTdzN0xyV3VOY2hn?=
 =?utf-8?B?ZExYTDdJdnNMN1crQm50TTZBMy9PZzA4QVEyNWFINXRiTjRFVXRhYkhOcEs2?=
 =?utf-8?B?ZTNXdGRWZVJ2MTI3VnpEWS9kRDB4Z2MxODZpVG82VlFkbWlVUkVnT3pONVo1?=
 =?utf-8?B?ZHNodS9JKzZwT1EzVStYOFh2TTZUbUllamhSbnN2UVdEQng1WldrOGdteTBP?=
 =?utf-8?B?SVFhSjAzOXZYSWdiRmFGY0FOQTFtQXlRYTIvcWZHNGpsbnVYR2RiWDhZM3Rz?=
 =?utf-8?B?bVAwQ1BlQmJ6QVJuYjBKTlpCVUNydzhqU09DWEFpUTNMN2FVQlFwcjhMRVFr?=
 =?utf-8?B?bU92L2QyOWtabEhRb1RON2F4SVJubHQ1MGEvSjFZdjR4ZWdXUWlUSnlPNHZ5?=
 =?utf-8?B?aFVBUTZwbXJyMXc5ejZTWkl4VEY1OUZ6d1ZJSlEvNm5BSFFmYVZReHZpRUZo?=
 =?utf-8?B?SW5YZWJreHF0VExNVktEWGs4ZkV0c3hvdDI2MHFzamh5Um1nMEpBV2loL25m?=
 =?utf-8?B?T3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dd08445-ab14-4af8-07a1-08de26764ffa
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 07:44:32.2489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lef3eB2LINSXpZAUakKVKd0/0InDOXhTsg+D/CKJZYrLKzJ1NZv3sqjt1ChiM+zYE3ABNlbcG6WVaZA7ZU6QHwETeuaCQMePVCKHfGRrH+A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6446
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763451882; x=1794987882;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4udDo7oLQ4WKdAOfPE0L3jy5n4c0QRYehx7fEfrzQ/U=;
 b=C/TyKHdBXVSP9Da8mBXD8Ge97kTvbZU05YZQsFZjXnS6N1vtnl9K8p3a
 xeQA4p6AZZoSntUWBxuCsNIML1LLsL04ep6nSwOkttqn5wGhluvsmdosU
 DCKZjoG4wo8uKBxw73/i4IjgfMfNRM+8in3IX4XoAqtN/3mq/5NcXChwO
 75E4nOFGpr+rOmcmuK+dRrBuXtWkdaEZOWv6S+Nt//XSi7uiZwB0Ixevv
 Ko7SwN+IbnUtrkVZEHzJ+o1E9XW0ydhvy3ftUzgcRzbyorcWVWqovRm2Z
 ojUqaft3C66HALhGIxYk4Knvu8uiQkror5OyYtl/HxphY6oSlhmftBQOQ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C/TyKHdB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: Restore default Qbv
 schedule when changing channels
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS3VydCBLYW56ZW5iYWNo
IDxrdXJ0QGxpbnV0cm9uaXguZGU+DQo+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDE4LCAyMDI1
IDg6MjkgQU0NCj4gVG86IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVs
LmNvbT47IEtpdHN6ZWwsDQo+IFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5j
b20+DQo+IENjOiBBbmRyZXcgTHVubiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsgRGF2aWQgUy4g
TWlsbGVyDQo+IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBn
b29nbGUuY29tPjsgSmFrdWINCj4gS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFi
ZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT47IFNlYmFzdGlhbg0KPiBBbmRyemVqIFNpZXdpb3IgPGJp
Z2Vhc3lAbGludXRyb25peC5kZT47IEdvbWVzLCBWaW5pY2l1cw0KPiA8dmluaWNpdXMuZ29tZXNA
aW50ZWwuY29tPjsgTG9rdGlvbm92LCBBbGVrc2FuZHINCj4gPGFsZWtzYW5kci5sb2t0aW9ub3ZA
aW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7DQo+IG5ldGRldkB2
Z2VyLmtlcm5lbC5vcmc7IEt1cnQgS2FuemVuYmFjaCA8a3VydEBsaW51dHJvbml4LmRlPg0KPiBT
dWJqZWN0OiBbUEFUQ0ggaXdsLW5ldCB2Ml0gaWdjOiBSZXN0b3JlIGRlZmF1bHQgUWJ2IHNjaGVk
dWxlIHdoZW4NCj4gY2hhbmdpbmcgY2hhbm5lbHMNCj4gDQo+IFRoZSBNdWx0aSBRdWV1ZSBQcmlv
cml0eSAoTVFQUklPKSBhbmQgRWFybGllc3QgVHhUaW1lIEZpcnN0IChFVEYpDQo+IG9mZmxvYWQg
dXRpbGl6ZXMgdGhlIFRpbWUgU2Vuc2l0aXZlIE5ldHdvcmtpbmcgKFRTTikgVHggbW9kZS4gVGhp
cw0KV2l0aCB0d28gaXRlbXMgKOKAnE1RUFJJTyBhbmQgRVRG4oCdKSwgdGhlIG5vdW4gcGhyYXNl
IGlzIHBsdXJhbDsgdmVyYiBtdXN0IGJlIHV0aWxpemUuDQpCVFcga2VybmVsIGRvY3MgYW5kIGNv
ZGUgY29tbW9ubHkgdXNlIOKAnE11bHRp4oCRcXVldWXigJ0gIHdpdGggaHlwaGVuOiAiVGhlIE11
bHRpLXF1ZXVlIFByaW9yaXR5IChNUVBSSU8pIC4uLiINCg0Kcy9NdWx0aSBRdWV1ZS9NdWx0aS1x
dWV1ZS8NCnMvb2ZmbG9hZC9vZmZsb2Fkcy8NCnMvdXRpbGl6ZXMvdXRpbGl6ZS8NCg0KPiBtb2Rl
IGlzIGFsd2F5cyBjb3VwbGVkIHRvIElFRUUgODAyLjFRYnYgdGltZSBhd2FyZSBzaGFwZXIgKFFi
dikuDQo+IFRoZXJlZm9yZSwgdGhlIGRyaXZlciBzZXRzIGEgZGVmYXVsdCBRYnYgc2NoZWR1bGUg
b2YgYWxsIGdhdGVzIG9wZW5lZA0KPiBhbmQgYSBjeWNsZSB0aW1lIG9mIDFzLiBUaGlzIHNjaGVk
dWxlIGlzIHNldCBkdXJpbmcgcHJvYmUuDQo+IA0KPiBIb3dldmVyLCB0aGUgZm9sbG93aW5nIHNl
cXVlbmNlIG9mIGV2ZW50cyBsZWFkIHRvIFR4IGlzc3VlczoNCj4gDQo+ICAtIEJvb3QgYSBkdWFs
IGNvcmUgc3lzdGVtDQo+ICAgIGlnY19wcm9iZSgpOg0KPiAgICAgIGlnY190c25fY2xlYXJfc2No
ZWR1bGUoKToNCj4gICAgICAgIC0+IERlZmF1bHQgU2NoZWR1bGUgaXMgc2V0DQo+ICAgICAgICBO
b3RlOiBBdCB0aGlzIHBvaW50IHRoZSBkcml2ZXIgaGFzIGFsbG9jYXRlZCB0d28gVHgvUnggcXVl
dWVzLA0KPiBiZWNhdXNlDQo+ICAgICAgICB0aGVyZSBhcmUgb25seSB0d28gQ1BVKHMpLg0KVXNl
IHN0YW5kYXJkIHBsdXJhbDogJ0NQVXMnDQoNCj4gDQo+ICAtIGV0aHRvb2wgLUwgZW5wM3MwIGNv
bWJpbmVkIDQNCj4gICAgaWdjX2V0aHRvb2xfc2V0X2NoYW5uZWxzKCk6DQo+ICAgICAgaWdjX3Jl
aW5pdF9xdWV1ZXMoKQ0KPiAgICAgICAgLT4gRGVmYXVsdCBzY2hlZHVsZSBpcyBnb25lLCBwZXIg
VHggcmluZyBzdGFydCBhbmQgZW5kIHRpbWUgYXJlDQo+IHplcm8NCj4gDQo+ICAgLSB0YyBxZGlz
YyByZXBsYWNlIGRldiBlbnAzczAgaGFuZGxlIDEwMCBwYXJlbnQgcm9vdCBtcXByaW8gXA0KPiAg
ICAgICBudW1fdGMgNCBtYXAgMyAzIDIgMiAwIDEgMSAxIDMgMyAzIDMgMyAzIDMgMyBcDQo+ICAg
ICAgIHF1ZXVlcyAxQDAgMUAxIDFAMiAxQDMgaHcgMQ0KPiAgICAgaWdjX3Rzbl9vZmZsb2FkX2Fw
cGx5KCk6DQo+ICAgICAgIGlnY190c25fZW5hYmxlX29mZmxvYWQoKToNCj4gICAgICAgICAtPiBX
cml0ZXMgemVyb3MgdG8gSUdDX1NUUVQoaSkgYW5kIElHQ19FTkRRVChpKSAtPiBCb29tDQpQbGVh
c2UgYXZvaWQgY29sbG9xdWlhbGlzbSBpbiBjb21taXQgbG9ncy4gU3VnZ2VzdDoNCiIuLi4gSUdD
X1NUUVQoaSkgYW5kIElHQ19FTkRRVChpKSwgY2F1c2luZyBUWCB0byBzdGFsbC9mYWlsLiINCg0K
DQo+IA0KPiBUaGVyZWZvcmUsIHJlc3RvcmUgdGhlIGRlZmF1bHQgUWJ2IHNjaGVkdWxlIGFmdGVy
IGNoYW5naW5nIHRoZSBudW1iZXINCj4gb2YgY2hhbm5lbHMuDQo+IA0KPiBGdXJ0aGVybW9yZSwg
YWRkIGEgcmVzdHJpY3Rpb24gdG8gbm90IGFsbG93IHF1ZXVlIHJlY29uZmlndXJhdGlvbiB3aGVu
DQo+IFRTTi9RYnYgaXMgZW5hYmxlZCwgYmVjYXVzZSBpdCBtYXkgbGVhZCB0byBpbmNvbnNpc3Rl
bnQgc3RhdGVzLg0KPiANCj4gRml4ZXM6IGM4MTRhMmQyZDQ4ZiAoImlnYzogVXNlIGRlZmF1bHQg
Y3ljbGUgJ3N0YXJ0JyBhbmQgJ2VuZCcgdmFsdWVzDQo+IGZvciBxdWV1ZXMiKQ0KPiBTaWduZWQt
b2ZmLWJ5OiBLdXJ0IEthbnplbmJhY2ggPGt1cnRAbGludXRyb25peC5kZT4NCj4gLS0tDQo+IENo
YW5nZXMgaW4gdjI6DQo+IC0gRXhwbGFpbiBhYmJyZXZpYXRpb25zIChBbGVrc2FuZHIpDQo+IC0g
T25seSBjbGVhciBzY2hlZHVsZSBpZiBubyBlcnJvciBoYXBwZW5lZCAoQWxla3NhbmRyKQ0KPiAt
IEFkZCByZXN0cmljdGlvbiB0byBhdm9pZCBpbmNvbnNpc3RlbnQgc3RhdGVzIChWaW5pY2l1cykN
Cj4gLSBUYXJnZXQgbmV0IHRyZWUgKFZpbmljaXVzKQ0KPiAtIExpbmsgdG8gdjE6IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL3IvMjAyNTExMDctaWdjX21xcHJpb19jaGFubmVscy0NCj4gdjEtMS00
MjQxNTU2MmQwZjhAbGludXRyb25peC5kZQ0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lnYy9pZ2NfZXRodG9vbC5jIHwgNCArKy0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX21haW4uYyAgICB8IDUgKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwg
NyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfZXRodG9vbC5jDQo+IGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19ldGh0b29sLmMNCj4gaW5kZXgNCj4gYmI3ODMwNDJkMWFm
OWM4NmYxOGZjMDMzZmE0YzNlNzVhYmIwZWZlOC4uNDNhZWE5ZTUzZTFlNzliMzA0YzJhN2U0MWZh
Nw0KPiBkNTJkYzk1NmJmZmMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYy9pZ2NfZXRodG9vbC5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYy9pZ2NfZXRodG9vbC5jDQo+IEBAIC0xNTYxLDggKzE1NjEsOCBAQCBzdGF0aWMgaW50IGln
Y19ldGh0b29sX3NldF9jaGFubmVscyhzdHJ1Y3QNCj4gbmV0X2RldmljZSAqbmV0ZGV2LA0KPiAg
CWlmIChjaC0+b3RoZXJfY291bnQgIT0gTk9OX1FfVkVDVE9SUykNCj4gIAkJcmV0dXJuIC1FSU5W
QUw7DQo+IA0KPiAtCS8qIERvIG5vdCBhbGxvdyBjaGFubmVsIHJlY29uZmlndXJhdGlvbiB3aGVu
IG1xcHJpbyBpcyBlbmFibGVkDQo+ICovDQo+IC0JaWYgKGFkYXB0ZXItPnN0cmljdF9wcmlvcml0
eV9lbmFibGUpDQo+ICsJLyogRG8gbm90IGFsbG93IGNoYW5uZWwgcmVjb25maWd1cmF0aW9uIHdo
ZW4gYW55IFRTTiBRZGlzYyBpcw0KPiBlbmFibGVkICovDQpLZXJuZWwgY29uc2lzdGVudGx5IHNw
ZWxscyB0aGUgcXVldWluZyBkaXNjaXBsaW5lIGFzIOKAnHFkaXNj4oCdIChsb3dlcmNhc2UpIGlu
IGNvbW1lbnRzLCBLY29uZmlnLCBhbmQgZG9jcy4NCg0KPiArCWlmIChhZGFwdGVyLT5mbGFncyAm
IElHQ19GTEFHX1RTTl9BTllfRU5BQkxFRCkNCj4gIAkJcmV0dXJuIC1FSU5WQUw7DQo+IA0KPiAg
CS8qIFZlcmlmeSB0aGUgbnVtYmVyIG9mIGNoYW5uZWxzIGRvZXNuJ3QgZXhjZWVkIGh3IGxpbWl0
cyAqLw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19t
YWluLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KPiBp
bmRleA0KPiA3MjhkN2NhNTMzOGJmMjdjM2NlNTBhMmE0OTdiMjM4YzM4Y2ZhMzM4Li4yMWU2N2U3
NTM0NTYyY2NmYTdiYWQ4NzY5YmJhDQo+IGZjODY2ZWNiYzg1ZiAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4gQEAgLTc3NjEsNiArNzc2MSwxMSBA
QCBpbnQgaWdjX3JlaW5pdF9xdWV1ZXMoc3RydWN0IGlnY19hZGFwdGVyDQo+ICphZGFwdGVyKQ0K
PiAgCWlmIChuZXRpZl9ydW5uaW5nKG5ldGRldikpDQo+ICAJCWVyciA9IGlnY19vcGVuKG5ldGRl
dik7DQo+IA0KPiArCWlmICghZXJyKSB7DQo+ICsJCS8qIFJlc3RvcmUgZGVmYXVsdCBJRUVFIDgw
Mi4xUWJ2IHNjaGVkdWxlIGFmdGVyIHF1ZXVlDQo+IHJlaW5pdCAqLw0KPiArCQlpZ2NfdHNuX2Ns
ZWFyX3NjaGVkdWxlKGFkYXB0ZXIpOw0KPiArCX0NCj4gKw0KPiAgCXJldHVybiBlcnI7DQo+ICB9
DQo+IA0KPiANCj4gLS0tDQo+IGJhc2UtY29tbWl0OiBjYTQxMmYyNWQ2YjJjMjFmNjlhNmNmMTJk
YTA2MmUwYmU0YTVmNDVlDQo+IGNoYW5nZS1pZDogMjAyNTExMDctaWdjX21xcHJpb19jaGFubmVs
cy0yMzI5MTY2ZTg5OGINCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gLS0NCj4gS3VydCBLYW56ZW5i
YWNoIDxrdXJ0QGxpbnV0cm9uaXguZGU+DQoNCg0KV2l0aCB0aGUgYmVzdCByZWdhcmRzDQpBbGV4
DQo=
