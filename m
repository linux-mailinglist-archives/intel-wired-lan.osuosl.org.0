Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F89CAF3D7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 09 Dec 2025 09:06:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A350383CA9;
	Tue,  9 Dec 2025 08:06:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0RK5oS96sEv3; Tue,  9 Dec 2025 08:06:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8A0883CDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765267561;
	bh=RNm2HdmDWHXatA762p6JFi+ba7fTIyEqKyOijfR2m70=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yv3xvLTmCjawGqtru+iVE7LwBS/gGSSeJrluLCW9dwAAVWBQQMB+HLcrF8B60tjpL
	 1DBJ64psgQ8rue4HbXHEwSSgEiy1W/gjc8thDsQxoMHsKUFt2WA/XTJUyzJXMYhkFs
	 YHocgKZnQQMlr6x+2kVWl+KjNUn9G+KUI50L/tpIKxRPpt2JCIUomJUvcWspT6xJO9
	 bUM+LihrCXQHHIC9wf6EWvQBf/aOZ+u8rmdtpGVe7rEsjkkp+EElSwCx+1J/30gLwf
	 wSNVRoqNXg1t+utcCrjHf4RrR2MmKKSRELGTLM9gah7PEfbdh+p8NeDoDS8g1hTfHI
	 Hc2HG/+jyb+pA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8A0883CDF;
	Tue,  9 Dec 2025 08:06:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0818B197
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 08:06:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E20CA83CA4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 08:05:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GrqAkj8pNOkj for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Dec 2025 08:05:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AF74783C82
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF74783C82
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF74783C82
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Dec 2025 08:05:58 +0000 (UTC)
X-CSE-ConnectionGUID: y6+5R/8QQO6AYnB45nbKbg==
X-CSE-MsgGUID: uSQM2TjrSJWF6+lvMr/CUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="71074505"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="71074505"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:05:58 -0800
X-CSE-ConnectionGUID: pR1WjWRCQZaM4kBZV5YjXA==
X-CSE-MsgGUID: XAtzbrRsSXC0q4OHvWNw2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="227196718"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:05:57 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 00:05:57 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 00:05:57 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.32) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 00:05:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ID3zeKa3WaggJO9iB59CuDheQL+QH312nk2r6BHeawP4EL36qjdhiA93qxOaT5Ih9j2SJ7JkQNumzqB161mc0CqLpgzshEoP3HlmuSkoNfDrOAU64jMHjVOQ3RbctnoqRAuKywocFzQfFHPZoqPi9ARUS8JONGirpsrcjxyNU0fxOvv3FEKitCTe74/TbRu6fUktjDVw1wQsyPJla++Re1Hjxk/3E3WVqJLg34RdkXVpMQua66ySwdE5BA1zMBXWdr+o+vYwiEbQsvkX3BulGPSO8dZAsaueXKY2nGaNHppdCttHp8g9X1Wr0dNnaoCqRkWOsu3jV6mPjNXNCLmwcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RNm2HdmDWHXatA762p6JFi+ba7fTIyEqKyOijfR2m70=;
 b=Ts1yj+2fyIE4CsRZc82G5M00XWRxdy5jpOBziaz9oWHTd6QC4gEunL+j90Kc10anMqqZBu+gUqHvwCrFomhaGjVo5NtCw6kzFqV6CRribSOAHT0Hu5kB9Q/qBVz7lovAseOhYKUxzZfYCGINIYIDq4f/DA9Lm0wUoR41VYShYIJeLKB/4vQjRsJvnDxw9ddSNNzdE1IXbkXw2gX8rHyr7/ANW+Sp0zPeHLnc6D6zHz3kv7URfOUxRZu8yO3Z47Yjur3+gQnv6OsQFiW9OuOI9cpimYyMIinCRnFeuxmgvjk80DOzqV7rIPzUmOdA5jivuLF9phTZdzPleCROaabcAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB6356.namprd11.prod.outlook.com (2603:10b6:510:1fc::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 08:05:50 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.013; Tue, 9 Dec 2025
 08:05:50 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Behera, Vivek" <vivek.behera@siemens.com>, "Behera, Vivek"
 <vivek.behera@siemens.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v3 iwl-net] igc: Fix trigger of incorrect irq in
 igc_xsk_wakeup function
Thread-Index: AQHcaNeruO58TIwXOEizi3OoSKBnvLUY83cQ
Date: Tue, 9 Dec 2025 08:05:50 +0000
Message-ID: <IA3PR11MB89863C74B0554055470B9EE0E5A3A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <4c90ed4e-307c-429a-9f8c-29032cc146ee@intel.com>
 <AS1PR10MB5392C71EED7AB2446036FB9F8FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <AS1PR10MB539202E6B3C43BE259831AD88FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB539202E6B3C43BE259831AD88FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=d3ac5aa8-3a96-4e14-95c7-b25deb848df8;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-09T05:54:50Z; 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB6356:EE_
x-ms-office365-filtering-correlation-id: 9eaf2d4e-add6-4c36-cbb4-08de36f9c49c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Yzc2SHEwcG16aGFzdmdJalk5dnMvVEI4QmVBclhPM09sRzNBaE0xdTJHTjhk?=
 =?utf-8?B?Qy9SVktVWDVWeDJod2pMTi9heDJUbGV4bjYxNk1mbWlsWXNOM1E2M21QekZQ?=
 =?utf-8?B?QkxscjhWbTdLWSszNTFudjMySjF2czBDd1RNSlRxTVZqTVppTFZyR21hVkph?=
 =?utf-8?B?NG9aVlBXblZwUVBaOGg1d21XanBiQVM1Yy9Zc3hjd2p3KzI4WEZaam9scStE?=
 =?utf-8?B?NTZJbWZtWVlTMXplWDlTMzhJSnEwL2hSNVNDWFNiSlptOTA3UjlVN2VtSlNW?=
 =?utf-8?B?N0JCZ25MelNPRnJNdGRCK3ZDbkxMK2g1S1RNMy91MjFyZmVkY3NqWkdwVnZk?=
 =?utf-8?B?R2xDMW5DUFgxSnFmdUNaMWZFNXZSbVF0NlY5UWk5OUc4Q3I1OXpGODJqb1Ay?=
 =?utf-8?B?L2hHY0ZuczFpeHlMcE1IdSt5YnZMVXBwZ04rMjFaQVNYL04velBKRCsxbFZE?=
 =?utf-8?B?YUlGdXFpQUMydXlsaE5tNlBia0N2cEtQaUc0dXVaU1hmYlIxZkMyRDI5VzRD?=
 =?utf-8?B?b0k0WDhrWkg1eFdzdVNjd0dXT0gxZ3NYYzc0cTRqT01TaVpuWGxRenZSUlBT?=
 =?utf-8?B?K2E2VWZ0YUxwOXB1MmFaWmhOQmFDU3JWNHJ4eEZpR0oxN2Q3RUp6M1duWmVN?=
 =?utf-8?B?QnZGeFRVY0h2UmtTaVFrZDF5eEpyYTNZcXRKb29udWsycDNPTHVCT3gvTWlo?=
 =?utf-8?B?aElaS1pSN1p1WEE5dXdYWjVWTnpKM2pkb2hXdTFWcVFjeFk4M1JyTjE0bDJp?=
 =?utf-8?B?WnJLYWZTRmVCS0lZZFYxcjZlMWFtUHVhOWpRSWZDT25YYktGVTBSQzUvZHdR?=
 =?utf-8?B?YithTU0xeEhLSDQ5YWtNQ1J6QXk0M1hYbXdkVWEyUEFTa0Y1ZFZWTG1jWEtN?=
 =?utf-8?B?cTN2Y3dRNE13S1Q4OWhRM0VIU0FKL0ErU3oxNkVYV1pJUXpoNWEwV0hGUlNU?=
 =?utf-8?B?djBoVU9QZUxEaUJZRS93ZkZJMWxzRjUyejRuUC9xKzZOaDB5MXd2Q0xpc1dM?=
 =?utf-8?B?aCtHdnlqZkFEMm5talFMZVdQV3Erak9zREYybWgrVEtYRlBXdUlYUU8zS0lw?=
 =?utf-8?B?TmdZeEVrOGpBM2J0cDZiWldieW9SQ0dIMUJlWE82clhvbHFNUGRONGViVVJT?=
 =?utf-8?B?a1dHc0RSdFhxOEdlRHVlU0xxS1A4c3U3MS9FT0twK3RZcjVkU0xsUGFwZE5R?=
 =?utf-8?B?L2FhRW42VjVMM3RabHpLYmE0Q3R3b0s2NzVXQU1BS21SUGlXc0xqQnMvOUll?=
 =?utf-8?B?MjJmMkNjenRkZ1dFbHR1WGFBSVY4QXVsM2gzWWE2anZ1Q1ZsbFRqYTNnMng5?=
 =?utf-8?B?ODNUeGVjTEh2eEJ5MTYwbHJJWm1yeDNiNURDMjZUZmxwc3Y1dkh0VzJFN3hz?=
 =?utf-8?B?UmxqN0xxRFk1cTYzQVBhMVBQY1pxQUdSdEROZUdLZVFSL2pQTG1hcHYvUElt?=
 =?utf-8?B?c3NMYTZ2SjNWWFhEN0JzUGIrVktHNDFFUERsa05abmpXYWRBeWNud2ZvM2x4?=
 =?utf-8?B?N2NhS0xxdUpJRW5maWt1QXVRRDAxZnFORiszOGdMT1BFa0JSU3ZwaG9jbHo2?=
 =?utf-8?B?Rk5ZS2JpdU9MOFpOSGNVckE2NFRDcUFJY0wwVWF2UmJrRHJzUGZ0U21Tajhi?=
 =?utf-8?B?SDNUK1JQdFhhb0RkNVY4TFJzSU5FclBjNkdGSWh1ek1hcnUwZ0tKRlEvNits?=
 =?utf-8?B?RklmSEVEYmNJOFZhdWxEWXVjYzBsTTZrdy8zRGRrd1hObXF6Qmk2MStsZFlZ?=
 =?utf-8?B?NEl4cDF2eEdvYkh0bmNDSVY0SXNKWUZyTHlxd1lWb3EzUWFqVGFidldXL29B?=
 =?utf-8?B?aWx4RXExVDJiaFJpRTdjV1pEclhsczg5UXRyd1R0RnFSZlJORll5dThqNkJP?=
 =?utf-8?B?MytrTDdRSGpodEJBUmZOd1lkZXgxNHVVTityS0NtTlRPa3pibjlqS3YzU3JE?=
 =?utf-8?B?ZzFKZ3A2V3VHdmdhdlJxNVg5YUdrdWRyd00yQzFBUFNzOVU4bm9JVVNXKzFp?=
 =?utf-8?B?MmV3ZG5YZC9xNW01dW5ZUTJIc0NuQWYxMXVlNEtEVHNpZGNSQmZMMmIzUSts?=
 =?utf-8?B?Mnhjb3hUUUdHdDhRcS9XVVRFaTVzQzlWTFd1QT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(921020)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TXRtcml1OW9BUkFGdm5nanhzNHpaU20wOGo5TkhsSUJSajZZZjkyMnpRNGk5?=
 =?utf-8?B?RWlTOUM1M3hHRXhmOXorUDNsL2kvNlhzaUJZRzBtdFFrWExkS2N2UWppb2xv?=
 =?utf-8?B?OFRGZUVLcDhTQWJkSWt0djJUUlMyRExJZ2tmSytjUVZORTAvaUJ0VURQWDZh?=
 =?utf-8?B?cFUrMXR5NjJISnF4eFlHZE5yek9BWlpQSCtxMkpvM1d4eG54dWN0MWlRZzlh?=
 =?utf-8?B?MFRDajBuVG9ZbE4wWklIeThBaDUxbGtXOG5ObUdYNHBZbmczT1p6bmxmc0VH?=
 =?utf-8?B?U3ZuVFZWK3ExZlFSMkxSNjFveWV4b3hWTjgwODgxdEhrbGsvdllBMVBrUklE?=
 =?utf-8?B?R21ZNXVYVWVGWlI3aDhZMmo2aWJ2eWFDeHEwT2NTdHlKTUliRWRVUnROUm5V?=
 =?utf-8?B?MlRrd3VpZ2ptYzJOallUaFNTaFMwOUtORmxqeEpKbVFqalFCOTZSdmdtNTd2?=
 =?utf-8?B?UW5HU0FtRjZyNW1CbkR3a3drZ280NThNVVNCcXhLV3lqVUovVEFqV0l4SnhI?=
 =?utf-8?B?NU1Ud24zdmd4WUc2T1FBYXVqRmpDREovTzhFR2Z0c2s3V2V3cGx0N0NzZTE3?=
 =?utf-8?B?UnpYSThHVVNMei9YelB2b2x3Z3dpdkpxLzhKVnZrWW53bENUUTdKRzh0ZkIy?=
 =?utf-8?B?ZitMbTMyWGd3Nld0eFZYUEFUYnRKc1U0N2RacURUclZETFVRWFdJaU4vUTBo?=
 =?utf-8?B?alpjc2M1OVIvdW1Bb2ZSUjQ1TENDWjY0bEtTeHVZbVhoUDBmMDkxWDlBUGI0?=
 =?utf-8?B?S0gxb3FkQmR2bjBFeWJXT1poL1U4RndPKzliRzFhWmhBeE5qY2hzOCsvYjcv?=
 =?utf-8?B?RURGaWMyK3orK2VJVWlYMzdGU2ZiNHI4OVR5TVA5SERvWTJrM0ZuMnJCUG40?=
 =?utf-8?B?NUh3dnpGbmZnY0pWYjhvMUpLVVNLR3lMWjI4aUMwbjVJWW4wYUk5djJ0SFJZ?=
 =?utf-8?B?T0ZscHhoMzV2M3IzN3Y5Qk54QzBBMHZKMDBVbXh1eXZ0TWRVWms4RVNEa0xi?=
 =?utf-8?B?am16N2ZlZUM4TGdHWTlhdDJKWGNvUkRYNGJRM0YxOTdBVWtOT2s4NUF4ck1j?=
 =?utf-8?B?dlhIMk9wenJUTlQ3ZzMyS2hxK3ZkTlVEL3Ywa0IrTGxLVDRTNlZ0Z282bklX?=
 =?utf-8?B?WmhrSEpUbmlDMktHM3RUaFpyV21OdGFiU1l4TUhCdUhhU2NzMTZNckF1YU8v?=
 =?utf-8?B?ZitWaFh6OU5yaTBnRmYzQitaRFQ2TitzQU53Nmx5UWtGOVlTWCtrZGRLbEt4?=
 =?utf-8?B?Ni9TYVRHRGtEK1ZFN2hUY1ZHSFc2R0JCVWg0WWk2VmpNTC95UmpPN083bnRj?=
 =?utf-8?B?azkxMDRJM25jUzN0d3EycllvU3luQzJnVysxNDM0VzJRYWtUT2QwNVFJUWdj?=
 =?utf-8?B?RXJPdkprcnRpY2J3cVljK0pWV0J5WTZhaElHTSt6YmxhT2tNOVZOaGxUS3RH?=
 =?utf-8?B?aUc1d251OUdRZis2cUZDME9VV1E3RUQ0MW92T1BXWC9tM1Yvc3NsMnRxUjVW?=
 =?utf-8?B?dVAyQnNCeGR1QXdEMnROMVZ5K3JGSmV0T09BaG1iSC9QNUNzbWtMVk80Vldh?=
 =?utf-8?B?a2pEcXB1WmNYV3kyVVpLU2pmK2VVVTMwUU52aE91VjJTbjgzRTExL09IMjdO?=
 =?utf-8?B?MVc3S0JiZVhyVXErK1JUOXZIcnE3SGxEb1Y1QnRBc3NGbTlEb3A4SkVkS0Vq?=
 =?utf-8?B?LytLN2hSWEhOQkRoN0s2enMwRDIyNC9CeGlTMVlLaW4vWm9pSmYreVJ3RzQ0?=
 =?utf-8?B?eWRsdVc1R0hyNnlhZE00YjZYajN6bkNqTHhUTjdBbFdwbnMxMGhzek5UbXk4?=
 =?utf-8?B?eCtVNjRESGdJNDhkbFRReVFqakp1NUtRYzBLNVkxRkpEUzdBTlVDRFloQlJV?=
 =?utf-8?B?K2N6MXh1OUNQUHhwNDJvUUhhR0N2YUpIbzBLeFZvSE9HL2JSSTlvaGQ0ajlF?=
 =?utf-8?B?YnkxdjA4Wmh1eGlvV3VyYW4zQmFlSHdaRUFuVFNjYWRUZTgvZjkya05DZnUw?=
 =?utf-8?B?Vm55dTRDNlp6Lyt0dkIrZmc0SkpzQVlaMGJYcUdtYlZ4Vm8wcTlOOGg0UWV0?=
 =?utf-8?B?VjlQOHVUZDI3T1hUZVBKWFYvMm4rRkZRcm9SMVdGOTNiVmVFaEJpMGxwY1RN?=
 =?utf-8?B?cVZkV3pWZkV5UTBkRzYzanpNSnpnTWNLUVpKVEpneGw3RVE4TXlLQWZWejRQ?=
 =?utf-8?B?TXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9eaf2d4e-add6-4c36-cbb4-08de36f9c49c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 08:05:50.5973 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FT9vRwKtLlB55iu0RF4KhKyOlsi58kZiDCtVntU4+cWT5LuttXru6v4a+ZtNlZ5Bxj0YVrT3BYA8aVa57klp2c7irXQXQQwrwl/W9WiZPyI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6356
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765267559; x=1796803559;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RNm2HdmDWHXatA762p6JFi+ba7fTIyEqKyOijfR2m70=;
 b=SRZTMdJHazgm/I0VlKvbMj8DLeUatvdX7W0e6zr0FEKGq0cPmICtVyzW
 nWUrYmyu81cUUj3sz+W4BS1tLOwefDnKkBbgqkUCMnunEyDjfKS7cVdos
 0KhEmTv2KE83CdjLAbq8rU8AQ8pA9kJD9Dztyle4LBUovXTXVX9jZK9j0
 Q2t/Mdz0RLgVpUQo/7bJ2AiZTjf764A5oUrXvBvrODirw296H9ndDLDam
 hn42kAm1Th0svmUNgrSxtQOxnJRf4eZDiRFVPceEtxOTj8jT+2kC6AF85
 5JQ80X6Dzfpi01tkg+uC8yKg+/+uFMBxX9ty7a0Hfo+2RcvgA0PMO/zwJ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SRZTMdJH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-net] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgQmVo
ZXJhLCBWSVZFSw0KPiBTZW50OiBUdWVzZGF5LCBEZWNlbWJlciA5LCAyMDI1IDc6NDcgQU0NCj4g
VG86IEJlaGVyYSwgVml2ZWsgPHZpdmVrLmJlaGVyYUBzaWVtZW5zLmNvbT47IEtlbGxlciwgSmFj
b2IgRQ0KPiA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPjsgTmd1eWVuLCBBbnRob255IEwNCj4g
PGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6
ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IEFuZHJldyBMdW5uIDxhbmRyZXcrbmV0ZGV2QGx1
bm4uY2g+Ow0KPiBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+OyBFcmljIER1
bWF6ZXQNCj4gPGVkdW1hemV0QGdvb2dsZS5jb20+OyBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJu
ZWwub3JnPjsgUGFvbG8gQWJlbmkNCj4gPHBhYmVuaUByZWRoYXQuY29tPg0KPiBDYzogaW50ZWwt
d2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4
LQ0KPiBrZXJuZWxAdmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5d
IFtQQVRDSCB2MyBpd2wtbmV0XSBpZ2M6IEZpeCB0cmlnZ2VyIG9mDQo+IGluY29ycmVjdCBpcnEg
aW4gaWdjX3hza193YWtldXAgZnVuY3Rpb24NCj4gDQo+IENoYW5nZXMgaW4gdjM6DQo+IC0gQWRk
ZWQgJ0ZpeGVzOicgdGFncyBmb3IgdGhlIHJlbGV2YW50IGNvbW1pdHMuDQo+IC0gQWRkZWQgJ1Jl
dmlld2VkLWJ5OicgdGFnIGZyb20gSmFjb2IgS2VsbGVyLg0KPiAtIFVwZGF0ZWQgc3ViamVjdCBs
aW5lIHdpdGggJ1tpd2wtbmV0XScgcHJlZml4Lg0KPiANCj4gRnJvbSAzMjQyMjU4ODM1OGE1Mzdl
Zjc5ZGU0ZmY2MzBlNDQxNGUyYzZiOTM0IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0KPiBGcm9t
OiBWaXZlayBCZWhlcmEgPHZpdmVrLmJlaGVyYUBzaWVtZW5zLmNvbT4NCj4gRGF0ZTogRnJpLCA1
IERlYyAyMDI1IDEwOjI2OjA1ICswMTAwDQo+IFN1YmplY3Q6IFtQQVRDSCB2MyBpd2wtbmV0XSBp
Z2M6IEZpeCB0cmlnZ2VyIG9mIGluY29ycmVjdCBpcnEgaW4NCj4gaWdjX3hza193YWtldXAgZnVu
Y3Rpb24NCj4gDQo+IFRoaXMgcGF0Y2ggYWRkcmVzc2VzIHRoZSBpc3N1ZSB3aGVyZSB0aGUgaWdj
X3hza193YWtldXAgZnVuY3Rpb24gd2FzDQo+IHRyaWdnZXJpbmcgYW4gaW5jb3JyZWN0IElSUSBm
b3IgdHgtMCB3aGVuIHRoZSBpMjI2IGlzIGNvbmZpZ3VyZWQgd2l0aA0KPiBvbmx5IDIgY29tYmlu
ZWQgcXVldWVzIG9yIGluIGFuIGVudmlyb25tZW50IHdpdGggMiBhY3RpdmUgQ1BVIGNvcmVzLg0K
PiBUaGlzIHByZXZlbnRlZCBYRFAgWmVyby1jb3B5IHNlbmQgZnVuY3Rpb25hbGl0eSBpbiBzdWNo
IHNwbGl0IElSUQ0KPiBjb25maWd1cmF0aW9ucy4NCj4gDQo+IFRoZSBmaXggaW1wbGVtZW50cyB0
aGUgY29ycmVjdCBsb2dpYyBmb3IgZXh0cmFjdGluZyBxX3ZlY3RvcnMgc2F2ZWQNCj4gZHVyaW5n
IHJ4IGFuZCB0eCByaW5nIGFsbG9jYXRpb24gYW5kIHV0aWxpemVzIGZsYWdzIHByb3ZpZGVkIGJ5
IHRoZQ0KPiBuZG9feHNrX3dha2V1cCBBUEkgdG8gdHJpZ2dlciB0aGUgYXBwcm9wcmlhdGUgSVJR
Lg0KPiANCj4gRml4ZXM6IGZjOWRmMmEwYjUyMGQ3ZDQzOWVjZjQ2NDc5NGQ1M2U5MWJlNzRiOTMg
KCJpZ2M6IEVuYWJsZSBSWCB2aWENCj4gQUZfWERQIHplcm8tY29weSIpDQo+IEZpeGVzOiAxNWZk
MDIxYmM0MjcwMjczZDhmNGI3ZjU4ZmRkYThhMTYyMTRhMzc3ICgiaWdjOiBBZGQgVHggaGFyZHdh
cmUNCj4gdGltZXN0YW1wIHJlcXVlc3QgZm9yIEFGX1hEUCB6ZXJvLWNvcHkgcGFja2V0IikNCj4g
U2lnbmVkLW9mZi1ieTogVml2ZWsgQmVoZXJhIDx2aXZlay5iZWhlcmFAc2llbWVucy5jb20+DQo+
IFJldmlld2VkLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmtlbGxlckBpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMgfCA4MSArKysr
KysrKysrKysrKysrKystLS0tDQo+IC0gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9p
Z2NfcHRwLmMgIHwgIDIgKy0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgNjQgaW5zZXJ0aW9ucygrKSwg
MTkgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWdjL2lnY19tYWluLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2Mv
aWdjX21haW4uYw0KPiBpbmRleCA3YWFmYTYwYmEwYzguLmExMzBjZGY0YjQ1YiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4gQEAgLTY5MDgsMjEg
KzY5MDgsMTMgQEAgc3RhdGljIGludCBpZ2NfeGRwX3htaXQoc3RydWN0IG5ldF9kZXZpY2UNCj4g
KmRldiwgaW50IG51bV9mcmFtZXMsDQo+ICAJcmV0dXJuIG54bWl0Ow0KPiAgfQ0KPiANCj4gLXN0
YXRpYyB2b2lkIGlnY190cmlnZ2VyX3J4dHhxX2ludGVycnVwdChzdHJ1Y3QgaWdjX2FkYXB0ZXIg
KmFkYXB0ZXIsDQo+IC0JCQkJCXN0cnVjdCBpZ2NfcV92ZWN0b3IgKnFfdmVjdG9yKQ0KPiAtew0K
PiAtCXN0cnVjdCBpZ2NfaHcgKmh3ID0gJmFkYXB0ZXItPmh3Ow0KPiAtCXUzMiBlaWNzID0gMDsN
Cj4gLQ0KPiAtCWVpY3MgfD0gcV92ZWN0b3ItPmVpbXNfdmFsdWU7DQo+IC0Jd3IzMihJR0NfRUlD
UywgZWljcyk7DQo+IC19DQo+IC0NCj4gIGludCBpZ2NfeHNrX3dha2V1cChzdHJ1Y3QgbmV0X2Rl
dmljZSAqZGV2LCB1MzIgcXVldWVfaWQsIHUzMiBmbGFncykNCj4gew0KPiAgCXN0cnVjdCBpZ2Nf
YWRhcHRlciAqYWRhcHRlciA9IG5ldGRldl9wcml2KGRldik7DQo+ICsJc3RydWN0IGlnY19odyAq
aHcgPSAmYWRhcHRlci0+aHc7DQo+ICAJc3RydWN0IGlnY19xX3ZlY3RvciAqcV92ZWN0b3I7DQo+
ICAJc3RydWN0IGlnY19yaW5nICpyaW5nOw0KPiArCXUzMiBlaWNzID0gMDsNCj4gDQo+ICAJaWYg
KHRlc3RfYml0KF9fSUdDX0RPV04sICZhZGFwdGVyLT5zdGF0ZSkpDQo+ICAJCXJldHVybiAtRU5F
VERPV047DQo+IEBAIC02OTMwLDE4ICs2OTIyLDcxIEBAIGludCBpZ2NfeHNrX3dha2V1cChzdHJ1
Y3QgbmV0X2RldmljZSAqZGV2LCB1MzINCj4gcXVldWVfaWQsIHUzMiBmbGFncykNCj4gIAlpZiAo
IWlnY194ZHBfaXNfZW5hYmxlZChhZGFwdGVyKSkNCj4gIAkJcmV0dXJuIC1FTlhJTzsNCj4gDQo+
IC0JaWYgKHF1ZXVlX2lkID49IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXMpDQo+IC0JCXJldHVybiAt
RUlOVkFMOw0KPiArCWlmICgoZmxhZ3MgJiBYRFBfV0FLRVVQX1JYKSAmJiAoZmxhZ3MgJiBYRFBf
V0FLRVVQX1RYKSkgew0KPiArCQkvKiBJZiBib3RoIFRYIGFuZCBSWCBuZWVkIHRvIGJlIHdva2Vu
IHVwLCAqLw0KPiArCQkvKiBjaGVjayBpZiBxdWV1ZSBwYWlycyBhcmUgYWN0aXZlLiAqLw0KPiAr
CQlpZiAoKGFkYXB0ZXItPmZsYWdzICYgSUdDX0ZMQUdfUVVFVUVfUEFJUlMpKSB7DQo+ICsJCQkv
KiBKdXN0IGdldCB0aGUgcmluZyBwYXJhbXMgZnJvbSBSeCAqLw0KPiArCQkJaWYgKHF1ZXVlX2lk
ID49IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXMpDQo+ICsJCQkJcmV0dXJuIC1FSU5WQUw7DQo+ICsJ
CQlyaW5nID0gYWRhcHRlci0+cnhfcmluZ1txdWV1ZV9pZF07DQo+ICsJCX0gZWxzZSB7DQo+ICsJ
CQkvKioqVHdvIGlycXMgZm9yIFJ4IEFORCBUeCBuZWVkIHRvIGJlDQo+IHRyaWdnZXJlZCoqKi8N
Cj4gKwkJCWlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5udW1fcnhfcXVldWVzKQ0KPiArCQkJCXJl
dHVybiAtRUlOVkFMOyAvKipxdWV1ZV9pZCBpbnZhbGlkKiovDQo+IA0KPiAtCXJpbmcgPSBhZGFw
dGVyLT5yeF9yaW5nW3F1ZXVlX2lkXTsNCj4gKwkJCWlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5u
dW1fdHhfcXVldWVzKQ0KPiArCQkJCXJldHVybiAtRUlOVkFMOyAvKipxdWV1ZV9pZCBpbnZhbGlk
KiovDQo+IA0KPiAtCWlmICghcmluZy0+eHNrX3Bvb2wpDQo+IC0JCXJldHVybiAtRU5YSU87DQo+
ICsJCQkvKipJUlEgdHJpZ2dlciBwcmVwYXJhdGlvbiBmb3IgUngqKi8NCj4gKwkJCXJpbmcgPSBh
ZGFwdGVyLT5yeF9yaW5nW3F1ZXVlX2lkXTsNCj4gKwkJCWlmICghcmluZy0+eHNrX3Bvb2wpDQo+
ICsJCQkJcmV0dXJuIC1FTlhJTzsNCj4gDQo+IC0JcV92ZWN0b3IgPSBhZGFwdGVyLT5xX3ZlY3Rv
cltxdWV1ZV9pZF07DQo+IC0JaWYgKCFuYXBpX2lmX3NjaGVkdWxlZF9tYXJrX21pc3NlZCgmcV92
ZWN0b3ItPm5hcGkpKQ0KPiAtCQlpZ2NfdHJpZ2dlcl9yeHR4cV9pbnRlcnJ1cHQoYWRhcHRlciwg
cV92ZWN0b3IpOw0KPiArCQkJLyogUmV0cmlldmUgdGhlIHFfdmVjdG9yIHNhdmVkIGluIHRoZSBy
aW5nICovDQo+ICsJCQlxX3ZlY3RvciA9IHJpbmctPnFfdmVjdG9yOw0KPiArCQkJaWYgKCFuYXBp
X2lmX3NjaGVkdWxlZF9tYXJrX21pc3NlZCgmcV92ZWN0b3ItDQo+ID5uYXBpKSkNCj4gKwkJCQll
aWNzIHw9IHFfdmVjdG9yLT5laW1zX3ZhbHVlOw0KPiArCQkJLyoqSVJRIHRyaWdnZXIgcHJlcGFy
YXRpb24gZm9yIFR4ICovDQo+ICsJCQlyaW5nID0gYWRhcHRlci0+dHhfcmluZ1txdWV1ZV9pZF07
DQo+IA0KPiArCQkJaWYgKCFyaW5nLT54c2tfcG9vbCkNCj4gKwkJCQlyZXR1cm4gLUVOWElPOw0K
PiArDQo+ICsJCQkvKiBSZXRyaWV2ZSB0aGUgcV92ZWN0b3Igc2F2ZWQgaW4gdGhlIHJpbmcgKi8N
Cj4gKwkJCXFfdmVjdG9yID0gcmluZy0+cV92ZWN0b3I7DQo+ICsJCQlpZiAoIW5hcGlfaWZfc2No
ZWR1bGVkX21hcmtfbWlzc2VkKCZxX3ZlY3Rvci0NCj4gPm5hcGkpKQ0KPiArCQkJCWVpY3MgfD0g
cV92ZWN0b3ItPmVpbXNfdmFsdWU7IC8qKkV4dGVuZCB0aGUNCj4gQklUIG1hc2sgZm9yIGVpY3Mq
Ki8NCj4gKw0KPiArCQkJLyoqKk5vdyB3ZSB0cmlnZ2VyIHRoZSBzcGxpdCBpcnFzIGZvciBSeCBh
bmQgVHgNCj4gb3ZlciBlaWNzKioqLw0KPiArCQkJaWYgKGVpY3MgIT0gMCkNCj4gKwkJCQl3cjMy
KElHQ19FSUNTLCBlaWNzKTsNCj4gKw0KPiArCQkJcmV0dXJuIDA7DQo+ICsJCX0NCj4gKwl9IGVs
c2UgaWYgKGZsYWdzICYgWERQX1dBS0VVUF9UWCkgew0KPiArCQlpZiAocXVldWVfaWQgPj0gYWRh
cHRlci0+bnVtX3R4X3F1ZXVlcykNCj4gKwkJCXJldHVybiAtRUlOVkFMOw0KPiArCQkvKiBHZXQg
dGhlIHJpbmcgcGFyYW1zIGZyb20gVHggKi8NCj4gKwkJcmluZyA9IGFkYXB0ZXItPnR4X3Jpbmdb
cXVldWVfaWRdOw0KPiArCX0gZWxzZSBpZiAoZmxhZ3MgJiBYRFBfV0FLRVVQX1JYKSB7DQo+ICsJ
CWlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5udW1fcnhfcXVldWVzKQ0KPiArCQkJcmV0dXJuIC1F
SU5WQUw7DQo+ICsJCS8qIEdldCB0aGUgcmluZyBwYXJhbXMgZnJvbSBSeCAqLw0KPiArCQlyaW5n
ID0gYWRhcHRlci0+cnhfcmluZ1txdWV1ZV9pZF07DQo+ICsJfSBlbHNlIHsNCj4gKwkJLyogSW52
YWxpZCBGbGFncyAqLw0KPiArCQlyZXR1cm4gLUVJTlZBTDsNCj4gKwl9DQo+ICsJLyoqIFByZXBh
cmUgdG8gdHJpZ2dlciBzaW5nbGUgaXJxICovDQo+ICsJaWYgKCFyaW5nLT54c2tfcG9vbCkNCj4g
KwkJcmV0dXJuIC1FTlhJTzsNCj4gKwkvKiBSZXRyaWV2ZSB0aGUgcV92ZWN0b3Igc2F2ZWQgaW4g
dGhlIHJpbmcgKi8NCj4gKwlxX3ZlY3RvciA9IHJpbmctPnFfdmVjdG9yOw0KPiArCWlmICghbmFw
aV9pZl9zY2hlZHVsZWRfbWFya19taXNzZWQoJnFfdmVjdG9yLT5uYXBpKSkgew0KPiArCQllaWNz
IHw9IHFfdmVjdG9yLT5laW1zX3ZhbHVlOw0KPiArCQl3cjMyKElHQ19FSUNTLCBlaWNzKTsNCj4g
Kwl9DQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYy9pZ2NfcHRwLmMNCj4gaW5kZXggYjdiNDZkODYzYmVlLi42ZDhjMmQ2MzljZDcgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMNCj4g
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYw0KPiBAQCAtNTUw
LDcgKzU1MCw3IEBAIHN0YXRpYyB2b2lkIGlnY19wdHBfZnJlZV90eF9idWZmZXIoc3RydWN0DQo+
IGlnY19hZGFwdGVyICphZGFwdGVyLA0KPiAgCQl0c3RhbXAtPmJ1ZmZlcl90eXBlID0gMDsNCj4g
DQo+ICAJCS8qIFRyaWdnZXIgdHhyeCBpbnRlcnJ1cHQgZm9yIHRyYW5zbWl0IGNvbXBsZXRpb24g
Ki8NCj4gLQkJaWdjX3hza193YWtldXAoYWRhcHRlci0+bmV0ZGV2LCB0c3RhbXAtPnhza19xdWV1
ZV9pbmRleCwNCj4gMCk7DQo+ICsJCWlnY194c2tfd2FrZXVwKGFkYXB0ZXItPm5ldGRldiwgdHN0
YW1wLT54c2tfcXVldWVfaW5kZXgsDQo+ICtYRFBfV0FLRVVQX1RYKTsNCj4gDQo+ICAJCXJldHVy
bjsNCj4gIAl9DQo+IC0tDQo+IDIuMzQuMQ0KDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rp
b25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo=
