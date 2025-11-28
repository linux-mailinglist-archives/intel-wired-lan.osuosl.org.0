Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20282C91370
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Nov 2025 09:36:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6256960B3F;
	Fri, 28 Nov 2025 08:36:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PMsg2AhPJweK; Fri, 28 Nov 2025 08:36:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8B8F610BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764319007;
	bh=21kCjSreidGiWEEBArmXliIlbEaT17CMp+uS4e7xfLU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=k0WmEHkNaoB/hhm+Hb0TBBVE2KO6ITk0qIwn2OX1o66bUbmWkbrjsKWp5V+jG5SUD
	 HmR3+7R8UwQ54OoupUhQ5QiN9CrKNI19lb3BWiS2wmsgO19+Kdwl62pzEVHUiVf/Wa
	 XvdYJIXXFlOE1NkdyR8edhWpoeJTdgYBXxA1iQU+gbEOgsS3qNy3QJGX6psmxurVqW
	 i+zXLmwKcQuln3M8xnM7Ke5iEqf/RY93+OYCZfkeqQKxVA1T2lfiSt0w68AAdmM6Ya
	 6wtN3bcT3uZNGMz2z8wuuj7e99jFLVi8xL2J5/zrQ9b6EPUkWIVqKwUCX2pleeLtOQ
	 Zw97/FutA2c+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8B8F610BA;
	Fri, 28 Nov 2025 08:36:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B779708
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Nov 2025 08:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7921640FFD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Nov 2025 08:36:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L0bmS1eHAWQu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Nov 2025 08:36:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 517EB40CF4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 517EB40CF4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 517EB40CF4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Nov 2025 08:36:45 +0000 (UTC)
X-CSE-ConnectionGUID: nc4E0jpXQwaFqktnbrJl3Q==
X-CSE-MsgGUID: JySw+BYYQe+NCyxebqfQQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66242118"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="66242118"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 00:36:44 -0800
X-CSE-ConnectionGUID: MDfHDUx9RpGqniGqASZdDA==
X-CSE-MsgGUID: Tv0d9OssRwa32rX2dgesbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="194208054"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 00:36:44 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 00:36:43 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 28 Nov 2025 00:36:43 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.49) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 00:36:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ujvgf4MUKmSVq58yT9bBZw1D4ZpYohnmJ4V5XOBjwK5+cFSHuTNrAvmW38dHXeSEyT7d3ceuebkMjbyjnRY63TcVllDT4s95DSmh57in4sFmpQyHLOhPQe/Re+n1j95patry5KPaASA4X3zGl9hEm0z6I7+7kkD4EjN2do2NMgFuUT8nugUboCWi7ObUxZw6neJ6Foak9Y6UWSNXmK5TyT1cETiWGan56eaJMBLPSvyntsJqAowP0gxS51jtNEDjdNvs1BYf9rUfSv8GEvCw1D3c3/sMJZcngrpVQ1UjJE5eCv2xlImi74Q5l8a7raCiBtyheI6/A+5TRNznfuEIGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=21kCjSreidGiWEEBArmXliIlbEaT17CMp+uS4e7xfLU=;
 b=j91RkymnxneBkVoc1FunffVyn5E9bGEKlfRqhWwr8fGNxpnrdFBrG96PhiFmSYriKAB4Kj//TkKoyosw65TGa0n9DB0srwalMxlzamNRJ2ry+twK00nVJEPk5/R2lhjRHpRsqdo3xGyZHj1l+6z+24TZa7ZMkUEUivP39WFBwQFU2JxQ52JdGFfxkjUkej/0o4tgv6G8A2z/Q5277GGlbVvdg4YKD7go8Ni47qFBz8JjOV7SlJUR22DRHAa4CuUwldKWJDjjQB1AL3wuZCJ4lCX7F0SiuqWR8nWkoqAW4mayNCgT/Sv07puYt/p/Yi1MyHjB2LwMghZl1U+gsh9QDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA0PR11MB7953.namprd11.prod.outlook.com (2603:10b6:208:40d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Fri, 28 Nov
 2025 08:36:37 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 08:36:37 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Slepecki, Jakub" <jakub.slepecki@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "michal.swiatkowski@linux.intel.com"
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [PATCH iwl-next v2 5/8] ice: update mac, vlan rules when toggling
 between VEB and VEPA
Thread-Index: AQHcXeZwj7qoLAXCrku3q4UNIxO7jLUDFbKwgASwogCAAAIDsA==
Date: Fri, 28 Nov 2025 08:36:37 +0000
Message-ID: <IA3PR11MB898691972766E6929CFDF934E5DCA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251125083456.28822-1-jakub.slepecki@intel.com>
 <20251125083456.28822-6-jakub.slepecki@intel.com>
 <IA3PR11MB89867D7081F88828EAC0E107E5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <30c166ee-c113-434d-acca-15bc7c46722f@intel.com>
In-Reply-To: <30c166ee-c113-434d-acca-15bc7c46722f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA0PR11MB7953:EE_
x-ms-office365-filtering-correlation-id: dffe5418-e5d7-4e42-ea90-08de2e593ecc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?NjY4RGhPamxwdktTdHZWMlVac28yd1RnZlhXaU1YTVRjZE9odmhsdWtFY1o4?=
 =?utf-8?B?aHFNRFhHUDBDL0xGWVptTExEUjBkWENvNlJnRHFVTFI3NTR4Rys0clJGS3dZ?=
 =?utf-8?B?VWJLZUE5b1N5azF5UzBmdVAxMVpsMVNkZGUwRjl2WmZkYzF0c1FYYW0yRmo3?=
 =?utf-8?B?QXFGUjZobFEyQTYzV0JHUGRXQ0ZTVXdVdTd1UUVRMzBIQXVxQk4rZVF3ZDdI?=
 =?utf-8?B?b1BVL0RWVS9wWGZPQ3I1Ny8rTTNPVWlqa3Z5MnRJTFIrZUhIbUlFdHBFY1pO?=
 =?utf-8?B?VWJwL3JBZTVLVjJSdlJxN1EyOG9ybkh3K1Q5WTJMNmpOdjhXQnpWaWVYUy94?=
 =?utf-8?B?ZWlwL1k5SDRIa2l6Zlc0NGlPcVB6ZmRDWFdmb2Z6bWlVVTRNVFVsV0JmODR3?=
 =?utf-8?B?ZDNwNE1lcnovMU55UWQrbXpQSHU3aHEwZ0N5NlY0UXlTdTNqc3RNRDlGeDh3?=
 =?utf-8?B?SUxLREZzTVExK1oxWEZ5Q1kxMmdvK0NuUHFLNW9hM3pEajRKYXhvSDFmQ3RB?=
 =?utf-8?B?b2tTNHZLUUo0bEJVNkV4L0hwYlVtSnJLMWxmR2lMZXc5c29tY1k5dFd0eEo2?=
 =?utf-8?B?aXNnQ3NyQnBseHlLd1V3UHRBcmc0SEREc2lsdzFhSEE5U2xsbFRYMzBhdEJG?=
 =?utf-8?B?TlE2ZG9UYjlyeXA1d0dyQ2R4TzBvaEJOTlNjYk9KQnRKUTJjZkVIakUxUGsr?=
 =?utf-8?B?citzQmVPS1d5WnUzNUtOWlVzaSthSHF3alpsZ2tDTHFKbzJ1MjJCbW5Ya0d2?=
 =?utf-8?B?S2x5ZjN1UjJWWFNkZWl2Q3RzSkQ5REVWUEsxaFlydTFkTEFQc1QrQkJMbzIx?=
 =?utf-8?B?dy9CZVA5UXEzQWtKMlN6ZDRGR3VBbkg4UnRDR0RvdFpFNEd2ZmFhNXo2RHNP?=
 =?utf-8?B?UWFXTkFad0JCQ0xTd0JRZzkwbHJuMkpoYjFLeDFOTHlkNGJ4MjREY2NwNGt5?=
 =?utf-8?B?cUxUWUo1aUxZQTI3OEg0UytJREsrZDhtSjlrZk1qNjdsQVFtTzg5VTArYUs1?=
 =?utf-8?B?dFdReU02QXBZQ0Y2VlFqS0haK3pnd1JSc2J4aHRsYmRXdEpWN0I4bTNWS2pq?=
 =?utf-8?B?ZS85ZjBQZmphYjYrdjJMckhsRmpSM0YzTjl1S2lRUUlhRjNNU2U2OFRLakJz?=
 =?utf-8?B?aHlEZHA4LzlwWEpCaGl3OFRmMHk1YUREbnZkN3dLVmFXRWJhT3luTEdKNzU5?=
 =?utf-8?B?YkRTU3BmVU9LUjBldm1OSktFcm1OZ0pqeGpGU05JdWMzR2JNd0dXdFdueFpY?=
 =?utf-8?B?N1k3eGxqWGRsZGtNM2xwNzNQby9CcnVhb1lPUDI2N1hhOC91TitDOVVkM0Iy?=
 =?utf-8?B?NG1KNFhUYkIzaXNXQmtja25sM1JLekxyc3FMQStIQVZmeVFwbDg3d29ITmRz?=
 =?utf-8?B?QmhxUmJMSTlnQTFPcmM2U1didE5jTkdSVG1SWjdSY29ybktKYzBJdTdKUmdv?=
 =?utf-8?B?Qk9VYm9lWUpGblR2dEFvdE9KWWNRTGlMNFN1b0FIWGFLV0Q3eTB0d1JQdlZI?=
 =?utf-8?B?YW8xYXFZaUx5WGJoTVlhUkJVVTFITSttcnI5REwxUkdxL2pxcEp6WWVQTm1z?=
 =?utf-8?B?dXZzNGNYeFB3eC96Qlk1emo4ZGtieWFuWm45Wnlzcjd3UDNrVTAzbGM3OVZl?=
 =?utf-8?B?LzIwbVdQYjZGdGpNMG52VFBGR2lXRUtBZTFyZ215aFZhYzRTMnEvcDhjLzlN?=
 =?utf-8?B?amVZeVNNb3RrNTNvVlFrcms0T0c3U1hHVlFyeTc1NDFVaEFuQjlnTUE3WE1U?=
 =?utf-8?B?TWFMYXhlS09YSUpZWmtLclNYRlRwT1ZFZUhUL0pnVkFpYXNkZzlBVTAzbGV2?=
 =?utf-8?B?ckhHY0Exc2tLN2VlRnJRbThKV2hsZUlLcnRPOG9IZjlMalRmRmVLUUE1MFB4?=
 =?utf-8?B?RGxWVzVmUWp6UERyQzkvRzJCamFSQkw4bjVCNkVPTXNmVHNMZGU1anAxZWUy?=
 =?utf-8?B?TW0vRU1Zc0dhKzlqU2FjZk1acDg5NUtORDZpZGZ0Y21sY1p6MW5qZDZDYWN5?=
 =?utf-8?B?aUQxWlNHa0Z2YWhERlFGZnlBRWNPeWxpYzFaaVNqODBlbnAwOVczZW5Oalh2?=
 =?utf-8?Q?eRDLDC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z0xqMUc5a2JZZURqdTZaYnFPYmgvMHVCNXVzTmp4Qk9YWW04aG45VnhFeUdL?=
 =?utf-8?B?d3E2c1ZqdG4vcUVLQkljSkt6VWZMYW5UeHV0azhLZlJqNEE4TkVObStqUnAy?=
 =?utf-8?B?TXJwTUZVZ1c2S0dLVG1qK01zWXZFUFlIeTVEM1kyUi9LNXVQOE5kWWhDMUFK?=
 =?utf-8?B?WmVESFdGa2s1OStmR0s5ZVVIdGo3bGVCZTFZVUh6eExBQ3B0UlFOSHdNTDhF?=
 =?utf-8?B?K3Z6UU5GamdjdjBuV214bCsxUDBCU1YraXRoZW9PODhQTm00NUpZQTdpWEEx?=
 =?utf-8?B?dVpGSW9yTzZNQVdEdjM0ejlpaDNpTWdua2w3L2ltT01yekg2eGdxL3o3TXc2?=
 =?utf-8?B?VGlKLzFaMGlveDBuZUc2ZmZnRnZWbDl3clNDcjdhdkpHWEtxRHdlNnpOUDFB?=
 =?utf-8?B?OWFUa1N3UHBhREp3a1grRDNjSHR3eVZ2eGdXNlB0cGVWaU5lSC9raVgyaktF?=
 =?utf-8?B?cVg0bFFGNUZEV0JpaXNFWHltTDd6dGJrbC9SOCtWTFR1MTR1a3ltTjRaZ2dL?=
 =?utf-8?B?UmJ0K3luQXBxdXpjMSt0c2VRYWhvZUlqdjlITEhNNzd2LzlRTzVMVU80V252?=
 =?utf-8?B?Qlp3b3NNYlN0TllHeVVBSFZBS0MwbFpFOWh6NHFsOVlCKzhQNjZXN1h4V0tV?=
 =?utf-8?B?WlVHbXAyZXlOcCtDQ3U3dm9CT1NEdDBrUHNmZ3VJOGo5VnFaTjVWVDVHZENz?=
 =?utf-8?B?QXN2S0RPdk5FWEE0YXMvdVI5MmZaWWQxLzV2cklLUE5TVTRlMFI1OURIREVP?=
 =?utf-8?B?OEpZY3oyeDhuYzYxUDRkSk0vcFFpTm5BMmsxQ0kvN1RaZFp2NytoL0IrTC8w?=
 =?utf-8?B?WnR5N3NKU0d2RC9GMVQ3ZzdUMmllNU9WNVhFd1VHQjQ0czNRUVpGSEEyajhv?=
 =?utf-8?B?T2pIWEtYNS85TDRLaGtRZkdnbVBERGVaT0t1WUtOYWthcXZNcWJxMTZRT09j?=
 =?utf-8?B?eHVsTGdhTVQ5M0VkNmxsU1Q1S29IdS8vWm1sSTNRSjVqWVBkNDRjTEJvajlQ?=
 =?utf-8?B?SGxqU1BkYWdDSDArb2Rqa2VNaXY4U1B2eTNTeFFNSXRvTTlYTGZkQnJNMnNo?=
 =?utf-8?B?QmZGNkJod2g4ZjA2bFluNmJ0YWhOZ0d3bHZYUmpSK2xteTNzRy9CMGJva2x1?=
 =?utf-8?B?eWs3MFZPQlpYZ3Y2Um9BMk1VbkRENndBb3VwWTJDdHRMbVFVN3crSUJHMTAv?=
 =?utf-8?B?R0xMQjZIZis5dlVmL0RCMDZnMzZLOEhiWDlaQjEvZWVvOXU5Nk94REYrMXU3?=
 =?utf-8?B?NlNSb0FjaFZUQTZaMmE3OUlMV3c3ZVN2Qi9qUDlpbXVpRjB1bUtOZytCWFdC?=
 =?utf-8?B?KzA2akVueTZuNmZFK0VVQjJOTG8xcUNkQkt3SEVnS1U5ZHBXZzgzWFg2cnFs?=
 =?utf-8?B?V1dwSnVPeGlPN3k2dG9aTEQ0NjJsOFY0bTZyeldhR1N1a2V5TmlTc3liSTlX?=
 =?utf-8?B?UlVoc1hlSmM5NXJsZXVVVXJlWkFEeTQzTnhucHMwSlV6OGhybEtxekRUNEhQ?=
 =?utf-8?B?Zi9rRjJCR0UvNFdBL3Jvemp2R0ZnMmNzL2ZTUlYxQlN2cks2bWcwc0NFdEM5?=
 =?utf-8?B?dWxoNzg0R1FLYktNQ1R5dE1CakxvVVBCVmo3cVRCM1hCVisvT2VQYkx3RnF5?=
 =?utf-8?B?bnVGMGltSG5qR0hKZlF2OEpobk9Wam41K2NPdUkxeEdybnI2cnVkcmYzRWhD?=
 =?utf-8?B?YWlNN2x1YkZWQlV6SFNseWpzdWo4cU00M1NOZ01SUXZiRGJDNDQzOTVpTEtO?=
 =?utf-8?B?YVBlWmZ5TitTcWZueVVBSEVJczltdDhLdCtaVFZEMjJON0d4OFk2TkEzQ1Ar?=
 =?utf-8?B?ZUtESUxrRCtNSUhnZWJFRFlCc0tvUG5NWUh0b2dCaitvZjBJU0I3d2U4akRi?=
 =?utf-8?B?SWtDN3BBNUY0UmxPVE82ZWdMUTZBL3E0dFJpeWxCbGR6WEJlVnRPYk5PY2p2?=
 =?utf-8?B?ZFpCUjFnYkVrL05hY1JvYzh5bHh6RzlzMWdRcFBTamhUekdNRXdrbEdlQzI2?=
 =?utf-8?B?K3JDOG0zeHZhTndBSldzMElHendXK25RK1BtSldPUU1sdjM0QzhIOE9RaFZX?=
 =?utf-8?B?ZHc3bmFBei9YNUhFTlE0Z0RYMWtsSUppdEZ5b3FPRkY0b0RFRjlvQWtDcUNW?=
 =?utf-8?B?bk13SlFLTUlsbHo1T1YvRjFVRm5lWE42QWdjOUt6S3c3SkR0bStqOVRnOHZS?=
 =?utf-8?B?NVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dffe5418-e5d7-4e42-ea90-08de2e593ecc
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2025 08:36:37.2951 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LbXolPdW8YiCCe4zeiO+MpblfRRkgK7LC65Dw3WrATLaORiLweGqCjMgImCSzpWsKL9icvToJslUczR7aWpffc0lBkvd7wBPxWkrKimbqUA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7953
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764319005; x=1795855005;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=21kCjSreidGiWEEBArmXliIlbEaT17CMp+uS4e7xfLU=;
 b=Vr/gtTaLfxrQhgJStYBDq9v1YTyMEAEUH0zSZxJ+gWXmF8Y/g/RSslrY
 mqFgZfGpDHeB2IFyOYz44ko1KX9y5VahxtJc0gOG+f4XyKqUI95yoEzXu
 YAtLFvgZi8l4PdTW/1aMzkV4MFBVhE+gTLlGOrlwDSf2U6tfwP8Plojlc
 +u/zL5eZO5j15qZnDQzp3WxDYhHsrTW6pCVqmJUgA31Msmx69JSFGhW67
 KEbEJafTVuqVNlmeGKztI1LLDOLZqlY0oeMv7VA/UujlLO611jz3doUwA
 9DnvHheZBNtWyb2creAzPM1PD2DpBrxmjvZFzttHuR1fmVIxQ1Ahf5JWt
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Vr/gtTaL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/8] ice: update mac,
 vlan rules when toggling between VEB and VEPA
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2xlcGVja2ksIEpha3Vi
IDxqYWt1Yi5zbGVwZWNraUBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTm92ZW1iZXIgMjgs
IDIwMjUgOToyOSBBTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0
aW9ub3ZAaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+
IENjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwub3Jn
OyBLaXRzemVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsg
Tmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgbWljaGFs
LnN3aWF0a293c2tpQGxpbnV4LmludGVsLmNvbQ0KPiBTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1u
ZXh0IHYyIDUvOF0gaWNlOiB1cGRhdGUgbWFjLHZsYW4gcnVsZXMgd2hlbg0KPiB0b2dnbGluZyBi
ZXR3ZWVuIFZFQiBhbmQgVkVQQQ0KPiANCj4gT24gMjAyNS0xMS0yNSA5OjUyLCBMb2t0aW9ub3Ys
IEFsZWtzYW5kciB3cm90ZToNCj4gPiBCZXR0ZXIgdG8gcHJvdmlkZSBleGFjdCBiYXNoIGNvbW1h
bmRzLg0KPiANCj4gQWxsIHJpZ2h0LCBJJ2xsIHJldmlldyB0aGUgY29tbWFuZHMgaW4gdGhlIDAv
OCBhbmQgc2VlIGlmIEkgY2FuIGV4cGFuZCB0aGVtDQo+IGZvciB0aGlzIGNvbnRleHQuICBJJ2xs
IHJlZmVyIGl0IGhlcmUuICBJIHN1cHBvc2UgSSBjb3VsZCBhZGQgdGhlDQo+IGJyaWRnZSg4KSBl
eGFtcGxlIGZvciBod21vZGU/ICBTb21ldGhpbmcgbGlrZToNCj4gDQo+ICAgICAgVGVzdGluZyBo
aW50czoNCj4gICAgICAgICAgTUFDLFZMQU4gcnVsZXMgYXJlIGNyZWF0ZWQgb25seSBpZiBlbnRp
cmUgc2VyaWVzIGlzIGFwcGxpZWQuDQo+ICAgICAgICAgIFRoZSBlYXNpZXN0IHdheSB0byB0ZXN0
IHRoYXQgcnVsZXMgd2VyZSBhZGp1c3RlZCBpcyB0byBydW4gdHJhZmZpYw0KPiAgICAgICAgICBh
bmQgb2JzZXJ2ZSB3aGF0IHBhY2tldHMgYXJlIHNlbnQgdG8gTEFOLiAgVkVQQSBpcyBleHBlY3Rl
ZCB0bw0KPiBiZWhhdmUNCj4gICAgICAgICAgc2FtZSBhcyBiZWZvcmUgdGhlIHNlcmllcy4gIFZF
QiBpcyBleHBlY3RlZCB0byAoYSkgYmVoYXZlIGxpa2UgVkVQQQ0KPiAgICAgICAgICBpZiBsb29w
YmFjayB0cmFmZmljIHdvdWxkIGNyb3NzIFZMQU5zLCBvciAoYikgYmVoYXZlIGFzIGJlZm9yZS4N
Cj4gICAgICAgICAgVHJhZmZpYyBmcm9tL3RvIGV4dGVybmFsIGhvc3RzIGlzIGV4cGVjdGVkIHRv
IHJlbWFpbiB1bmNoYW5nZWQuDQo+IA0KPiAgICAgICAgICBSZWZlciB0byAwLzggZm9yIGZ1bGwg
bmV0d29yayBjb25maWd1cmF0aW9uLiAgVG8gY2hhbmdlIGh3bW9kZSB1c2U6DQo+IA0KPiAgICAg
ICAgICBicmlkZ2UgbGluayBzZXQgZGV2ICRwZiBod21vZGUge3ZlYix2ZXBhfQ0KPiANCj4gPiBS
ZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRl
bC5jb20+DQo+IA0KPiBJJ2xsIGRyb3AgaXQgc2luY2UgeW91IGRpZCBub3QgZXhwbGljaXRseSBz
YXkgaXQncyBmaW5lIHRvIGtlZXAgaXQuDQo+IA0KPiBUaGFua3MhDQoNClRoYW5rcyBmb3IgY2xh
cmlmeWluZyBhbmQgZm9yIGFkZGluZyB0aGUgdGVzdGluZyBoaW50cy4NCg0KVGhlIGV4YW1wbGUg
d2l0aCBgYnJpZGdlIGxpbmsgc2V0IGRldiAkcGYgaHdtb2RlIHt2ZWIsdmVwYX1gIGxvb2tzIGdv
b2QgYW5kIG1ha2VzIHRoZSBpbnRlbnQgY2xlYXIuIEFkZGluZyB0aGUgbm90ZSB0aGF0IE1BQy9W
TEFOIHJ1bGVzIHJlcXVpcmUgdGhlIGZ1bGwgc2VyaWVzIGlzIGhlbHBmdWwuDQoNCk9uZSBzbWFs
bCBzdWdnZXN0aW9uOiBwbGVhc2UgaW5jbHVkZSBwcmVyZXF1aXNpdGVzIGluIHRoZSAwLzggY292
ZXIgbGV0dGVyIChlLmcuLCBgaXByb3V0ZTJgIHZlcnNpb24gYW5kIHRoYXQgY29tbWFuZHMgbmVl
ZCByb290IHByaXZpbGVnZXMpLCBzbyB0ZXN0ZXJzIGRvbuKAmXQgbWlzcyB0aGF0Lg0KDQpPdGhl
cndpc2UsIHRoZSBpbnN0cnVjdGlvbnMgYXJlIGZpbmUgZnJvbSBteSBzaWRlLiBQbGVhc2Uga2Vl
cCBteToNCg0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0
aW9ub3ZAaW50ZWwuY29tPg0KDQpUaGFua3MhDQo=
