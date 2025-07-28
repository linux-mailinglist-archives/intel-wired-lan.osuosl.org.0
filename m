Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 497C1B1361A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Jul 2025 10:13:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99E5D8226C;
	Mon, 28 Jul 2025 08:13:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HzdSocruhtte; Mon, 28 Jul 2025 08:13:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6A3782255
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753690405;
	bh=W+frcS/vOIaxE6hpeQyze9C4Z1OR8rVdeCtqD+ksOx0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CBQ3bmtX9TnqKyumMZMA4VzUYIdhN98MLelStEeoTv0LIwmRnJthDHiDOJ2WMhwMx
	 A5LGvg6xLq3XX8N2Y9OLcrbZ2m/6gEF3h5BVXRtDJLjyffWPkZABzavDDzIZASxjt2
	 pyDoFGAzbyijy+FWAFNwW2/wST8JlY23QEQcY2N4HoYjXsiOKdSMJwdIU7t61VXlnB
	 wS/LccWF9G+li1pQ7V1hF+ROr+To1khbhWsouPltvlVBDgkejPsw5pqWmOBLTBe30z
	 syL/GcLQJdahfKcTaM8qlm9iZnoTYtHZT9RB3zNj2KoMWWJhfYWph0Pn3WHFQvH3F6
	 YjOJlyS5enoNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6A3782255;
	Mon, 28 Jul 2025 08:13:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DDBE0231
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 08:13:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF4EE40277
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 08:13:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xzGXMG8DVTtW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Jul 2025 08:13:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CCD5340058
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCD5340058
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CCD5340058
 for <intel-wired-lan@osuosl.org>; Mon, 28 Jul 2025 08:13:22 +0000 (UTC)
X-CSE-ConnectionGUID: lq5ErthBQY29I0DQ0o4IsA==
X-CSE-MsgGUID: yoQaLm7XSNejajH4HwjJRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11504"; a="78482209"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="78482209"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 01:13:22 -0700
X-CSE-ConnectionGUID: jEfwZMEkRo6+1iG1+qtWwQ==
X-CSE-MsgGUID: agBrfEi0TbmXg+2L84qKYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="162718736"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 01:13:18 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 01:13:17 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 28 Jul 2025 01:13:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.55)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 01:13:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kv9wm4XGjiHrQAgQ9sL4snkRZ1Mpn41/Ge0bTdxvbR114nwIiDjuqK+Y7IiL0+ET0UWNosT+B+1T2TzXJ7HOefIe5iakRaii1XrjLZJG676ImwMZsW0pRI7vtmhjEDa6cclWjtEFGJKZL8z7rnr1+CBSpK9XTISb9hEPFwP5vq8f4nM4ouT4QzcjQJeJDaISExvxcH2qRoqfoRFfb3pML5CtOCrFrxAZr6AX7neKZoaA06rbs5ro9gJ7Jfw5Qdhg3qiLFF/OVqMwdIKS2M/y8YNDg7Np8SPNFgpcvU5cOs7Yh/DOrb/unIdlqtMN433H5ACYHmPsKsqhe32wlUO79Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W+frcS/vOIaxE6hpeQyze9C4Z1OR8rVdeCtqD+ksOx0=;
 b=XZ9nwCNRTXQMh84AfZ0zOGnbM7QjlM9AADJs66S+7EU4UHCCoryQflczpjTs+lyh+J8ISYVSqcO06bjCYwIC2vm1IVRSWUf9PJml8OounnkSXltbN1YYnS9dse2tFK9Q5YulUgUpU3ESjw3pzRD6fnp2Pj0ZzX2BGb6nm0/lUMvU0oWCao6m/blt/IREXbYOfCgAyT1xQYo4KDPjm7YX3ZNW9KUQSgJQZkP3TTAr1ERMD2Ne9Vq4CHCwrkw90tkLXikupYCk1riLJH4aMOs3wCi+tBZl0zY1yG4ctrvXphC/iZkUCKqaECjpI8sTsweMYxTcLMnl0a+WMz62+RZ6OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ2PR11MB8348.namprd11.prod.outlook.com (2603:10b6:a03:53a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Mon, 28 Jul
 2025 08:12:33 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8964.021; Mon, 28 Jul 2025
 08:12:33 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, ValdikSS
 <iam@valdikss.org.ru>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] igc: fix disabling L1.2 PCI-E link
 substate on I226
Thread-Index: AQHb+0QEvT+X3zOYu06KVqXCBbiYH7RGAv4AgAADdoCAAACNgIAAAQ+AgAEwESA=
Date: Mon, 28 Jul 2025 08:12:33 +0000
Message-ID: <IA3PR11MB89866F6776C28FD80790A151E55AA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <ac3d9591-f564-4306-9638-989ebb328d29@valdikss.org.ru>
 <20250727140011.527375-1-iam@valdikss.org.ru>
 <c5766eb1-e770-4512-9141-d957d23e9d65@intel.com>
In-Reply-To: <c5766eb1-e770-4512-9141-d957d23e9d65@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ2PR11MB8348:EE_
x-ms-office365-filtering-correlation-id: e1eba891-fbfb-4a7c-162a-08ddcdae8131
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ci82NnpvK1VQRXhxYUZhMTZQZTFHOVgydkV1NkFIU0FWRFp2ZE13Y00rQURI?=
 =?utf-8?B?c24raUlQRUdlbVRCWXpUZTdhZnk1VUxJYjZGZitrT3Y3cVFVTXlmdG1aTFFq?=
 =?utf-8?B?VXdqT0dPZHlRTHZUM1M2T3N6VlF3R09kSk9IVXJMVXd1bnhreXJZUjNhSldn?=
 =?utf-8?B?eEhNYXFpaWVxYlFIU0V6ZzByN0JZcldRM0N1TFd6dmMvV0ZIOVd6dGhjblB6?=
 =?utf-8?B?MzNoUHhERjdLOTV3M2VwdFBnRnlPSEVwUko3V1hRMi9jQ3dqU0phUE0rbFIx?=
 =?utf-8?B?dmczMUhYeWFvTEtvZDdhZW4vdGFLSEd1MCtOd29oL2s0VnFZd01FVUVraWJN?=
 =?utf-8?B?ZUsybXZmcitGWmYvYmU4M2tHN2ZVeTNibFkyZ2ZrcmZkbUdVTTJhY0xJakZC?=
 =?utf-8?B?RmFsV212bllCSjMxTjd3MWNPTnZ4dmp1amtqVWRWTVZ0WXg2SlR4bkV6VC9x?=
 =?utf-8?B?TENoMEJBMEJ3enRiVmYvWG8rQUROdkt4aUxVMnJtOVlKcjV5U2MwNFBrVUZh?=
 =?utf-8?B?R0hiTW9IUnlOMTM0RkJpMFRWR2M1YXhPWFFEaFpLNDRBYnJLdnFpS25rYjBU?=
 =?utf-8?B?dWFTazV4MWVZaEYwOWsxR1J1WXBqWTE2blE2V1p1Ylo3ZkJQYWZPU2xXMHJ0?=
 =?utf-8?B?UnlFcmRReU1YVGhqUVpXdkIvWERFSjJSQjQxVHRtWkRtcFRWVHNHUWFORzR3?=
 =?utf-8?B?S21aNXhHM2pMUEQvVVRXem5RUUpFdzgvZjM4cjBJYlVHME9xbzJ6TXF4UTFp?=
 =?utf-8?B?Szh6SkNSaEFBUHdFQ1RaeXdOVkxWbU1ReEM3cUVXQmpuZmF6eTdiMzhnZ2Rr?=
 =?utf-8?B?d3NJS1NET2lQVy8wVU9uQk05VUVVMTU0QVp4c0ovWEZ6V3RmV3FYdDNTbmZz?=
 =?utf-8?B?Y0ZqUjVINm03NEhzY2tqc0xMTmdvOG0vUzJKWkZVQlErNmNDWXJVQTlhaW9Q?=
 =?utf-8?B?bkRORHJaY05lbGZha2N1SjJGV2JINnZnMWZsT0ZRSGIrRkZKMDZsQUNybCto?=
 =?utf-8?B?bVdBKzlYWng4Zy8weG00QXJBcStzSUlEWmliYWpUQUs5SG9SWVpaVjZyWDc1?=
 =?utf-8?B?cXlGN2wxNDk1ZzVpQlRMOWYxeXlQUkdzQnd0U0hCcC84dzBHNGZmakt4MzFa?=
 =?utf-8?B?VDJXVnV6UHEzRThYV3dWbkg1aURrSkF5cEs3V1hYRVJVSXYzWXBKNno5Tkgw?=
 =?utf-8?B?Yml4L2JUSFE4dk1QLzF4NGdVcEVxQUp3c0xjV0owTjBXREo3YWE4cGVFRUVY?=
 =?utf-8?B?S2NXMjBXRXErVzRaT2xxVDVwZ2l6Ump0R0JWSkZoS2V2eXU4dzFZa1NKMUFx?=
 =?utf-8?B?dHlxcUY5akxocjkvT1JsWVB0VDlxUDJDZDRhb1ZaS2JPaVFvNnJ3UTVZc0dq?=
 =?utf-8?B?dk4yREppUUZVNnhXT0tIeEU2Tm5Jby9nVnhobVJvUUNHZkxuTWhuN1YrM3gy?=
 =?utf-8?B?TjRtTlhOQTUwZWQxTHFIdmFJKzFFa3h6VEFpbXRuNnFHMHFuYzBESnBETnBn?=
 =?utf-8?B?Ym1OQ2pTSitXcE9LK0xJVVMwbURMZ1hBQkFud0MvMjZCSEpJQ25tKytqV0wv?=
 =?utf-8?B?dW8xY0ZHdTRJcGRBRytBQkova2swdWJtT0VVTTMrVlhOendtZFVZcXJHMTd6?=
 =?utf-8?B?T1hoZ2s5bEoyZFdhVVN5Y3U5L0ljN3pYSWU4YjNuQjNsWXk2ODhyd3AvSnB1?=
 =?utf-8?B?WDF0ZjZpTkEyWi9BdHdaWmZqSXVkNTZVaGpmdlVvVTc3eHpWMC9iS0xGZ3d2?=
 =?utf-8?B?Njd3MVMyWUtSM3dHRXlJNm5ZUkFST2g2WExLMHEySXNNWFNRQ28yREVOWUxQ?=
 =?utf-8?B?YkFXdDFCeFVKd0JCNkEwN3pXK1IrR0NPcUx3UTIrTUtoSW4zOW9uVXhPL0pY?=
 =?utf-8?B?bUxFOWpISC9lYkt3OUEyOW1ES25yaUhudGpZL0JuVVF5NEZmTzNINUJCbEN5?=
 =?utf-8?Q?lv51i9lHp5Q=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TWJ3T3NOdDloY09Kc1ltamtiSHhBM1VnVGUxb2d4VG85WkhaZUpQY2s0bnB0?=
 =?utf-8?B?eXp2cUVtelhDUDFidW5iYTU1YWdLbmEraE14eS9DUjBrT3NBK2ZaRkUrWXlp?=
 =?utf-8?B?WkMwbGhseWdtL2NDMDVla1JvZFVoazFYdVZueFR4WThBajFOWnFVSk9UQkcz?=
 =?utf-8?B?YjlEOUxWQUZKNlJnRzFia05sNE4yL04yTXVZTzFNOENianUycUM1NzFpaFlo?=
 =?utf-8?B?MlBUcE9Pb1pBR2k2aEdPY0dhNUVoTmZzVGN1Y2ROUnpPZGR2UW5vMWhWelFY?=
 =?utf-8?B?MU9LV0U5Nm9VckdKTjNpNHptRTZ0MXhwNzU1bDIxUGtLRk1hSVYzZjd1S1lC?=
 =?utf-8?B?eE93N1hHb2o1KzNKZUdaVnhUZzZmSUlZKzJKM1ZEbVI2VVZ5bVhCWGIveTY1?=
 =?utf-8?B?K3d2WTU1UzMvQk4rQmV4MWZFczR5b29QZktIWmRtejhsc1RvbGFvQThVRW1L?=
 =?utf-8?B?TzlQMnZpV1FQZ0t6Ny9ab2xFeG9NbXl0UW5FYkl1QW51WXBSSmI0Zktuem8v?=
 =?utf-8?B?MFdlMXRYK0lSNmVQb0RoSG0vcDhxSmVGa29SeUxvY3FPOGdrVkw3YkRRU1ov?=
 =?utf-8?B?eU0wN0Zxemt6dTlXQUErSE1BR2NSbzdRT2p4QU9xa1NNcVRDSk41eDdjY0pS?=
 =?utf-8?B?R1NoNVV5U3BvNU54SXU0cWJTNzE1V2ZPOHFDMjAzZmJjSy9mekxxUit5cGhm?=
 =?utf-8?B?V0ZlV0xKOUF1SXhVd2pFaHNFMTAvZXc1OThYazRLQmtCR2N2STk2YlhnSDVr?=
 =?utf-8?B?UC9HV1hBcG51Zi8wV0V3TmY0MlFudW5kNVU5U3FtYVFrU1hWc2FmZnExa1E1?=
 =?utf-8?B?SFptdk9YTTU3UXlndWdNWkROUThqNjlvSzBGWklFZjQraDdIUUk4K2s0enFy?=
 =?utf-8?B?WE9uNjVleTFFaWFndzBZdmprdU83QUpqMXp5THhOcEVHc1RpOUZYdWV4UDl0?=
 =?utf-8?B?UTgwVGI0ZDF6UTZaUG13THczb3I4ZUY3RGNrQ21XUUdKbUdxVjZrdjhQZXpW?=
 =?utf-8?B?YklZSlFtWHJ0U1podUZ5NHlsWkZzLzVuUElXUXY5MzhxRUxGbXQyNUE1OUYv?=
 =?utf-8?B?bmZRTXliYTRJWTU0aUx1aUlhbVVOSjZEai9SWXZQVHdwMUZzems1dXQzaFhK?=
 =?utf-8?B?TU11NlRwWU1JRUdhbDM1NHdIU2hJU2ZQWkVpT3JpR01SYWxRYVBYdm13QU5r?=
 =?utf-8?B?WHVVQmpRVjBGQk5keTkyU2dpRVdhaitsT2xIMElzWm45ZWJOQ0pxK3lVbnJM?=
 =?utf-8?B?MVR6SngzNE1PcXdQeWZmQm16d1dXak1NZmt5bnNLZk9ZdjFSWUlPY3hNUGRM?=
 =?utf-8?B?elpzeTZORFBmTGxtRi9jb2o2TjdyeFdtNlI2WnF3SEdmZlBkWm9sTFF6RjBz?=
 =?utf-8?B?amk3S1J5VnJLMi9OTWJmK2xYRGhZL2JRblJXSW8vMVFOVlhjZmhHSWlkN2hv?=
 =?utf-8?B?UEFFZ2JuVk4ySWo1dTBMUzdhR0RzYWRUM0tkYXNZTE5IbWJGNGFXN2E5ZFBm?=
 =?utf-8?B?WkdYY1dpOFg3aUtCTXUwQWJMZkZwVkRobmt4dEt6dmVVZHR2ZHJjdXVWclAr?=
 =?utf-8?B?eTY3Nk5xak16RzI3YzFDY2JFR096RnJNMytDZXJpdGMwZTRtaUxPYlFtbGdD?=
 =?utf-8?B?a2dmRWFuc2VOZGVnaG04OXYyMWJhOFErU1NOaTVLUGdoVktxaDZVTHRSOERQ?=
 =?utf-8?B?bUNweVdXdDFUT1dGdnFBSGxOUjNveHhlczZqQWZXWWYvZjJvUzN5bTc5aFZG?=
 =?utf-8?B?Y2phOW1yTUhNNmlkK3FHQ3drNDNIcjZoaER4dlkrTTBVY0tXWEZDSENhWkdC?=
 =?utf-8?B?Si9QZkNLWURrUkY4bUNUWGhrQUhFMWpvT0Q1WFltczhUbnFCeWRhTUwxVDNB?=
 =?utf-8?B?TjdFUmtuOGdKY3FrcXNYNmVCcURNa1lxUXcvcEp6a0VxS2gxaVpvOU1TR3VR?=
 =?utf-8?B?NHV4STBiMEdyOU5zSmh5bDRORGJ3WGp0TG5QTnlldXVLT1F4dWhNSlhYb2s5?=
 =?utf-8?B?d2ZSa1JnVWJxektOYm9aNEp2NVdhS3kvY000WjBDemdvbFZ4NkFobS9TU0pI?=
 =?utf-8?B?dTRYajAvaGNMM3pzeXFrSVZRY2FWMHlYNEI0bjF4TndKZzd2L3lSQXFaK092?=
 =?utf-8?B?YUlmMm1QemlJVlljaVJrTkttRnI1V0ovSFM3SlV6Y1VWQkJkU3hqM3lFL1dG?=
 =?utf-8?B?akE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1eba891-fbfb-4a7c-162a-08ddcdae8131
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2025 08:12:33.1743 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8DL5x95KLyPhZdxZxSc4dScou09iPZGRV74UK9y6qHKe0jX3ohWlyGbAbKfsWVhfK9upLGWFr1eWlgHYy+l7+ZXEu3SUh5pPj8zCJH7wrWM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8348
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753690403; x=1785226403;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=W+frcS/vOIaxE6hpeQyze9C4Z1OR8rVdeCtqD+ksOx0=;
 b=KAtdVYvhYDHhaiHRHuKs6xVeL1FKYywYMoVUT3/7flynJM+FUmSTHRWi
 0uOddETfvUvjnufSi2JBkFXMOPILJ10AvyXKPeN38khKj5SU/5kZMGGZx
 OW82sLuAxirN9UwNdZB9nD82VQtwLVmy7YBLtx7180krbdmnsrJt9E9MD
 jcnTY2gQMywbwQ/smUQ0wsBWx+4pyWBX5d72LvgFdLMmOGgLTGKkm1DOo
 5EI3Qdl0txqmPT9W34CklpNCS7ZcQsb/Eki3j1Z1JS1afFGfqNE+QSvHH
 0rJ6Wyairl6y7kUjd91S0JxxUu1xsVxGcRfnGL3LQ91a5UeGQ70y/6krk
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KAtdVYvh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix disabling L1.2 PCI-E link
 substate on I226
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTGlm
c2hpdHMsIFZpdGFseQ0KPiBTZW50OiBTdW5kYXksIEp1bHkgMjcsIDIwMjUgNDowNCBQTQ0KPiBU
bzogVmFsZGlrU1MgPGlhbUB2YWxkaWtzcy5vcmcucnU+OyBpbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIXSBpZ2M6IGZpeCBk
aXNhYmxpbmcgTDEuMiBQQ0ktRQ0KPiBsaW5rIHN1YnN0YXRlIG9uIEkyMjYNCj4gDQo+IE9uIDcv
MjcvMjAyNSA1OjAwIFBNLCBWYWxkaWtTUyB3cm90ZToNCj4gPiBEZXZpY2UgSUQgY29tcGFyaXNv
biBpbiBpZ2NfaXNfZGV2aWNlX2lkX2kyMjYgaXMgcGVyZm9ybWVkIGJlZm9yZQ0KPiB0aGUNCj4g
PiBJRCBpcyBzZXQsIHJlc3VsdGluZyBpbiBhbHdheXMgZmFpbGluZyBjaGVjay4NCj4gPg0KPiA+
IExpbms6DQo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvaW50ZWwtd2lyZWQtbGFuLzE1MjQ4
YjRmLTMyNzEtNDJkZC04ZTM1LQ0KPiAwMmJmYzkNCj4gPiAyYjI1ZTFAaW50ZWwuY29tDQo+ID4g
U2lnbmVkLW9mZi1ieTogVmFsZGlrU1MgPGlhbUB2YWxkaWtzcy5vcmcucnU+DQo+IA0KPiBSZXZp
ZXdlZC1ieTogVml0YWx5IExpZnNoaXRzIDx2aXRhbHkubGlmc2hpdHNAaW50ZWwuY29tPg0KPiAN
ClJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGlu
dGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9p
Z2NfbWFpbi5jIHwgMTQgKysrKysrKy0tLS0tLS0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4gPiBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQo+ID4gaW5kZXggMDMxYzMzMmY2Li4xYjQ0NjVk
NmIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19t
YWluLmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4u
Yw0KPiA+IEBAIC03MTE1LDYgKzcxMTUsMTMgQEAgc3RhdGljIGludCBpZ2NfcHJvYmUoc3RydWN0
IHBjaV9kZXYgKnBkZXYsDQo+ID4gICAJYWRhcHRlci0+cG9ydF9udW0gPSBody0+YnVzLmZ1bmM7
DQo+ID4gICAJYWRhcHRlci0+bXNnX2VuYWJsZSA9IG5ldGlmX21zZ19pbml0KGRlYnVnLA0KPiBE
RUZBVUxUX01TR19FTkFCTEUpOw0KPiA+DQo+ID4gKwkvKiBQQ0kgY29uZmlnIHNwYWNlIGluZm8g
Ki8NCj4gPiArCWh3LT52ZW5kb3JfaWQgPSBwZGV2LT52ZW5kb3I7DQo+ID4gKwlody0+ZGV2aWNl
X2lkID0gcGRldi0+ZGV2aWNlOw0KPiA+ICsJaHctPnJldmlzaW9uX2lkID0gcGRldi0+cmV2aXNp
b247DQo+ID4gKwlody0+c3Vic3lzdGVtX3ZlbmRvcl9pZCA9IHBkZXYtPnN1YnN5c3RlbV92ZW5k
b3I7DQo+ID4gKwlody0+c3Vic3lzdGVtX2RldmljZV9pZCA9IHBkZXYtPnN1YnN5c3RlbV9kZXZp
Y2U7DQo+ID4gKw0KPiA+ICAgCS8qIERpc2FibGUgQVNQTSBMMS4yIG9uIEkyMjYgZGV2aWNlcyB0
byBhdm9pZCBwYWNrZXQgbG9zcyAqLw0KPiA+ICAgCWlmIChpZ2NfaXNfZGV2aWNlX2lkX2kyMjYo
aHcpKQ0KPiA+ICAgCQlwY2lfZGlzYWJsZV9saW5rX3N0YXRlKHBkZXYsIFBDSUVfTElOS19TVEFU
RV9MMV8yKTsgQEAgLQ0KPiA3MTQxLDEzDQo+ID4gKzcxNDgsNiBAQCBzdGF0aWMgaW50IGlnY19w
cm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwNCj4gPiAgIAluZXRkZXYtPm1lbV9zdGFydCA9IHBj
aV9yZXNvdXJjZV9zdGFydChwZGV2LCAwKTsNCj4gPiAgIAluZXRkZXYtPm1lbV9lbmQgPSBwY2lf
cmVzb3VyY2VfZW5kKHBkZXYsIDApOw0KPiA+DQo+ID4gLQkvKiBQQ0kgY29uZmlnIHNwYWNlIGlu
Zm8gKi8NCj4gPiAtCWh3LT52ZW5kb3JfaWQgPSBwZGV2LT52ZW5kb3I7DQo+ID4gLQlody0+ZGV2
aWNlX2lkID0gcGRldi0+ZGV2aWNlOw0KPiA+IC0JaHctPnJldmlzaW9uX2lkID0gcGRldi0+cmV2
aXNpb247DQo+ID4gLQlody0+c3Vic3lzdGVtX3ZlbmRvcl9pZCA9IHBkZXYtPnN1YnN5c3RlbV92
ZW5kb3I7DQo+ID4gLQlody0+c3Vic3lzdGVtX2RldmljZV9pZCA9IHBkZXYtPnN1YnN5c3RlbV9k
ZXZpY2U7DQo+ID4gLQ0KPiA+ICAgCS8qIENvcHkgdGhlIGRlZmF1bHQgTUFDIGFuZCBQSFkgZnVu
Y3Rpb24gcG9pbnRlcnMgKi8NCj4gPiAgIAltZW1jcHkoJmh3LT5tYWMub3BzLCBlaS0+bWFjX29w
cywgc2l6ZW9mKGh3LT5tYWMub3BzKSk7DQo+ID4gICAJbWVtY3B5KCZody0+cGh5Lm9wcywgZWkt
PnBoeV9vcHMsIHNpemVvZihody0+cGh5Lm9wcykpOw0KPiANCj4gWWVzLCBleGFjdGx5IQ0KPiBU
aGFuayB5b3UhDQo=
