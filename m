Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B845BAC0E0F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 16:29:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCFAC8118A;
	Thu, 22 May 2025 14:29:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZiOo4X73KjGT; Thu, 22 May 2025 14:29:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CA4A81165
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747924146;
	bh=83mwMuI/az4fcVg7FY/pZEPMwK2EUcrNsKVnd50qPrI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DOQbexE4NWsBO2kUOoJrmQVgdopsB1QNtkf+Sf8GX7vh0l5l+qKMCS7EQ7+tDnmfd
	 NX8b8QLaNEiaju++JboqGXfmagiwavx1yAll+BHoMLqgIt/VgvjNscCStDOxv8QwLl
	 Ek2zRXRcYZ/7wg7yTgkbBQPSviXw9AKCz+S/u4c/Bc7LL/xzAxz+VHobRiCxS9DfHb
	 GY7DmZLI8tWHk4jLQUk4DSPEyvMQq1JVWpLOJDvyzAFAq1oBIycw9bv1T1JwRwgRf9
	 H+gJrqrfaPwFjFuhtOyyVh1pmofNsHdwxgu1E+Yz8dLLoIetr96fo9gu1TifSj2Oi3
	 i2aVo3kxhVMJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CA4A81165;
	Thu, 22 May 2025 14:29:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 91DF9BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:29:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 83A9940BBF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:29:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rqYvSLnAd417 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 14:29:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E260140B44
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E260140B44
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E260140B44
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:29:03 +0000 (UTC)
X-CSE-ConnectionGUID: 9vmlPbwXS3OcXLdtjH0M8w==
X-CSE-MsgGUID: EnZU3hQhQxyDSeo5xmJ40A==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="37577150"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="37577150"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:29:03 -0700
X-CSE-ConnectionGUID: R1CY9mkYSiG+tkbvu9UFWA==
X-CSE-MsgGUID: 4IMThbNzTkq4w39XyQjmmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="145336028"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:29:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 07:29:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 07:29:02 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 07:29:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kvri/dfji1T1jdCRPE138pfldNJxNLaWrmeDewTA48ad+Ch4VtDLAMqr75c7e1EpR8fIk/JYQSO/U8kx4R5L+LvGc0isxBucsqidDlMWmDioIYOtl1uMonqf+xvQ5crNEkmx9+Sdq92Qj4hSUqMq1b88gwNjE7JcYrHJYaIMn4Hsbvf7FlUyNIQp/UztMmNYj7zWoHBja7uvBbvkZyk4ty10bGawaO+or6m0Umt4ARXjBrLVcD9cIYyp/UsKLUYhdmOTsitYplD7C6QeiI5eGYfHC6heA7dwfvSLMyIp3V5j2rFkTmkbgPjbcchLN/TMzUMW6jxxMjwjKM1ZDYrGdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=83mwMuI/az4fcVg7FY/pZEPMwK2EUcrNsKVnd50qPrI=;
 b=k1y2FsNOu6MoUYLPcdj3/IPFba/oSrK2Mch5LQa5a8nCc9iw7W5yr26LtX23M1wV2IKvT90GkoBj3U5cZ/UMF4P6ukWDm3hODlmuGh/P+nHmUxf74TSfhlzm+5/OYvE0RDwG6TnWBMtp5J3/BGDlTZpPsoRpfW31LKefXqWvnTNLJQa31MqL2Lt8hIb1lE9meKEpKFw1kDu8H2vdDzV4u5WwKPrPboNnj1wyhjrOu5zGHJmncHo7W3sZM7fCEctN2FZcRXW+OHXozT9gcl73gzt7nkSvG7FVXpoUkp8bInte8NdOEkMwn/HtTHN6MiwKZjTco/ql/vTcRkqpeqxdAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SJ0PR11MB5054.namprd11.prod.outlook.com (2603:10b6:a03:2d3::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.31; Thu, 22 May
 2025 14:28:44 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Thu, 22 May 2025
 14:28:44 +0000
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
Thread-Topic: [Intel-wired-lan] [PATCH v4 09/15] ice: read TSPLL registers
 again before reporting status
Thread-Index: AQHbuuwt3qEmp73f302O4uRmmbEbj7Pe1XTA
Date: Thu, 22 May 2025 14:28:44 +0000
Message-ID: <IA1PR11MB62419A841827CF44B48F4F318B99A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
 <20250501-kk-tspll-improvements-alignment-v4-9-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-9-24c83d0ce7a8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SJ0PR11MB5054:EE_
x-ms-office365-filtering-correlation-id: 6a5153f6-2aeb-4caf-d6de-08dd993cf512
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?THk5Q05iMUh5UDNBUkNXTXRUOEFtYnJ4eEhIYjdHdldTQkZJeXFOdm1RK0Vs?=
 =?utf-8?B?QmdsSWxqODdYWUhvRFJaOU1aMjFKN2NzazJ2cWh2THJyUjFJY21rUGpGRmRG?=
 =?utf-8?B?UnZOcG1XbkNIRExNekw3NnRqekt3aTdmREhIVjlJWnl2WE00eSsyWmVCVGpK?=
 =?utf-8?B?NkhPVUNCcndRdUtkcnVJVWN6NVBwSW9IRWdXMFEyUGZBZXN2MXJUTkdKZndl?=
 =?utf-8?B?TVRXZG5IMzRnRmNtUTF1a2hGVjI2UXJ4TEd4SGZJSjU2RW1YemkrVHZxYVNT?=
 =?utf-8?B?ZjNSQUZpV3RHTisxZy9hZmxVWFNzYXczNVhlL1UydnNwWG9qOEc0S081UzNM?=
 =?utf-8?B?WWcybFAzR3B5ck94ckp5MUxMMmhBbVFKL01mNDluRnN5Q3VJSzROUjBFL0FE?=
 =?utf-8?B?M0RWK0NtN3NLUkFtL20zZktpTWRxdHpqTSsyakhFMDM2Y2xCTzJ2R2pJb3RI?=
 =?utf-8?B?NDRyNEdrZ3FiVkQ0Z3IwLzRVUnhYYXpqQXBxSVBTQjRRS1E1QldJdkdmaFhs?=
 =?utf-8?B?VGtDb0EveDdJVUllVWFOOHZvdzErbEZESkdsWVd3YmRldzZHREtYemNVSzh3?=
 =?utf-8?B?a2pnbVlDR2lVYTFWQmZwTUNSb3M3bUIwZzJYbEZkWFdwUWlLaUR2UUpVdW5q?=
 =?utf-8?B?TEtwbTJ5SG1UTFg4bGtGcFBXczFPMkxoNFllV3BaMlB6NUtsb2sxZnd3Ynh4?=
 =?utf-8?B?Ym40R0RuQk1IU2dyWGtVTmR1dXFwOWhmS2Nhd1k4UFg0Z09RZHUxdzFFdDEz?=
 =?utf-8?B?UUE0MDlhQ0YzclErSkE5UFB4YWVVa1hrZkNnMDhwc0EvRmlTelVlanNoc2RE?=
 =?utf-8?B?aHJnT0o0cXhLZUpVcWM3Y0Vvampha0h0RCtwRkJldkFjN2toVlJEKzlCWHJJ?=
 =?utf-8?B?clk1Y05yM1lMWTdQeUdvNDdJbnNYK2lzNDJOOFJtRldtTFVwQmQ2NzhaUkdi?=
 =?utf-8?B?dWVqSTN1T1ZwU0Y0ZW85blFXNmgvQ2MxVUtwRmwwc1A3TXloZkRsNlRReWxQ?=
 =?utf-8?B?TGlkRTZiTU9oRmJ0NU1Ib0N5cldnTUN1dGRWdjZHSEZxSS9PV0pTOGZ6SDNv?=
 =?utf-8?B?K0RLN0IvdU04TnQ2b0lhT2lTMWpxa3loN2JOcm00SmQ5dEJGWmhBb1VUTkJN?=
 =?utf-8?B?UFV1U2IrYkc4bEF5R2FVdHpCVzdzQ1NyWXVZWHdvUXFYaVgyR1dCbU9oYnZa?=
 =?utf-8?B?d0tkRUxla3N4Q1JNT0UvTU94UWhNbHAyUkVDYklGb09BbnlLY2ZKRWROTnJL?=
 =?utf-8?B?SXV2WGRZMUpSWGd1c04ybmRoMGI4OU9zK0N3NXQwVlppc3c1eUlnSFducWlU?=
 =?utf-8?B?NzRROElzYlhnUGdnTHFOYys3MzdPUm1QV0xuRklJbHFJOTA4YldQb1dLM09M?=
 =?utf-8?B?bDFGWGJYRnNiNkZCNXZSQ3ZnRTlIUE12TFJhVG5pMmkxWS9seWczWitpbW1M?=
 =?utf-8?B?MXdlVS9zWllXd1Awa0lTKyswTmE5SElZNVRJWi9OV0dvOHB6a0RodjJxcnBI?=
 =?utf-8?B?NEVPMzFLcmU1YWkzMnQ0SHB3bERhTy9sWmN1RzFmYkVMaUJNSHFaQk9LNUZy?=
 =?utf-8?B?dTFtV1JwSlp0L1hVQjFkRXFNbS9Wa2xvT0Q0Z2xyTS84ZU10Tit1dldSL0Zw?=
 =?utf-8?B?ZmxHcFV0RHdJVzBWaWU4Wmc5bWk0SFR1TTZHb0lsY3VmNWI5TFpJU1c4UVBO?=
 =?utf-8?B?Z3lyQUxobnRTZk1YQTRvZlNJSWR2d0l2T0dLazlNeXg2M3h1eWFvWHpRTDVq?=
 =?utf-8?B?aFRSQ2ZDRy85TlVJRUUwYTFxUkRzbXIvWUluVXZPbThoTWQ1bGFBbkFqTndY?=
 =?utf-8?B?dGYxNzh0SkhOS2h3TlV6SUptWFhUakVDSHNPa0ZySlV0NnlFSysyU1lUSUlv?=
 =?utf-8?B?SDU3dkFKTE5oV3FuMC81bDdENit3U1FhV1pBSDNLanJjVjFxVmhlRWkzYUJl?=
 =?utf-8?B?Nk9PMUZTTy94RncxWkJiUGVoSHFINEZnZHo1eGNtb3F6SmZoQWZtMDNlajAx?=
 =?utf-8?B?R0x2OTUvTlJnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S2FCTmxmSjRxK2E4RUlIWVlSWFFJZ0RtWW9BZnZEUzlGVkJXTTZSRXZFRFVR?=
 =?utf-8?B?UmVFWTRITno0dEY0cGE2ZUMyd05kYXMrZG5IaVRydGF1WEZpZWIvVytFdjdw?=
 =?utf-8?B?NVZ2NnN4SHVtN2thY2xWZTBZVytacFJnVjZoV1dCS0ExSThaQXhxNlVyNTU5?=
 =?utf-8?B?US95SEEwKzFJNU1QNzIrc05tUjhYckR2NWRMNVhoSTc1d1YrSElYckc5S2RN?=
 =?utf-8?B?WTBKbTdpWWQrV1Vpakl0RHRscWd4TmQvTXJSQ3o0YVU0bTVsbWkwZ0hQMXlE?=
 =?utf-8?B?SlBWbzRMdkxtSjFud2F1eFBiK3NXcndsUFIyMnJ5UDhzMUhhZFp4YTdKNEE4?=
 =?utf-8?B?d3J6YlZpSUdmVEJud0dCMjFhczZyTEMxaGFPSG1zZE5RWTF3TWpaVzM1bita?=
 =?utf-8?B?cFI4N3hpMU9YZ0d0Nit2K1I5ejkxWnAzdm4yVGNzeitxTll0SlRBVVFSdWVL?=
 =?utf-8?B?K0lTWWlTUE5KNXNxck9wUmhNNDl0ZUIwZHFJdzF2TWY5amxKaUdDV1RQSDIz?=
 =?utf-8?B?ZGszWmlwemw1aGF0dE0xTi9OTXBtelVoUFN5dlR4OG8zb21ZVVNpT3pkWHFX?=
 =?utf-8?B?QXpmcStmckxRNHVybzRoSmkrbGZGbDRQdUh1WFZOMkJEQ3BJelB3SDlqQThW?=
 =?utf-8?B?bTdHL0pKOFNTNW5XTERrVjJNMFFncDFFTEFNVTVMU2Y5RmJFOUpBSDZacUlG?=
 =?utf-8?B?ejIwc3hHSkh3N2hVME1xOWpmb3VTcmVXYVVOci9tYjZiNnFCK0krblhHeWRV?=
 =?utf-8?B?OEFvNThlRnE1TnB1TnFidDFvZklWbFlwdnUrRXJrOGRVU3BKWXY0Y1lqUysy?=
 =?utf-8?B?V2hrMFo3dnFta1JtQUpmRUdtWEEwd0JsQnZHanVEdGk4NVlLYTlGQ2YwZGx5?=
 =?utf-8?B?VzdLWFk1V3N0V2ZjTVk3aWlXY1JISEF1YjJPcGJhV0dmN3FVbndZOCttcVRN?=
 =?utf-8?B?a3hHR3dYV2pxQ0VwUEg2dnJlT3hWenBxZDBNSGxBYXJNRVB0S1laSm9KWllY?=
 =?utf-8?B?b1FHV3B1WkNRYnR3TUxUcDBUeEI0L2VVSElwVHVKcCtzbGd1N1RFanFkOWQr?=
 =?utf-8?B?bC9SZ0FrbUlEbDZKRjFnZWsra0JoeGticjNuTkJiNkQvRHBiNGkvbzZpYm5C?=
 =?utf-8?B?NkllNzg0b2g2NmpmdldialN3NnF1WVdPNmh2TnBJQlowaThzdFA1VHJGV0d4?=
 =?utf-8?B?ZnNjVndTaUFqYTduV21SdUxWUCtENUM0WWY4QUEyaVhVVDNuTXJ6cnIyaHVa?=
 =?utf-8?B?SG82Y1Foc3VKVXNVeGdGRStvbFh5YjV4U05LOWlseVBQMHB6QXd2elNnaUZk?=
 =?utf-8?B?V1FpRDFUYkFvZ2kyOW9TWFA1UnU4ZStDK3pTeTBZMm56dHVuU0hsdVFPWnl3?=
 =?utf-8?B?YTRuaURxQk5Oci9LZnd0blNkaUxFRzliVmdJWUdZbC9IS3IyNWthdEt3QWVv?=
 =?utf-8?B?WDdqYUZRbTNFZmVXdWplbVdhZkxCeTRNU2UwWGlFUEJRc0VSUkxqMjlodGZs?=
 =?utf-8?B?aDBoV0NXNzArYjVOelBWbHRnTjgzSlBnbmZpa3k1bGxSa3VPemRGSXpUREIw?=
 =?utf-8?B?bzNYV3JsYVVIdHlJOEZSYVNyK1MvNmhqYk5OQ3NWTFZ1WEpkM3R2MFF3UVlL?=
 =?utf-8?B?WThiYmoyS0NMUFBnYU5xdDdqZFRsZE4rb0pXc3RiRlE1RE9VVi85OXRETzdM?=
 =?utf-8?B?TTE5UHFGSnk4SFBCUWZQQUtSY1N2U1NnZThDNXVXdFhOWm5hOXFJemZGcGw3?=
 =?utf-8?B?SlZmWE9xUFZUWEZqdm42cTVCdlc0UDdRejNGdHVObTM5MGtLSGJKRmwrSU1q?=
 =?utf-8?B?S2J1LysyV253SmRZelgyNDNLSGZFMmlaSEVpY1h1UDFmbmxZRzZzT0M2TGhM?=
 =?utf-8?B?V0J6R2NTVmJSMDU0c0k5aVRWWUF3blhOZTQ2VHo3UUtGWTY5ZlBkZHlKc0pa?=
 =?utf-8?B?dzM1NVlFZFlOUVJJSGlRVUJvZTQzSDVTamJScGNRelc1QVYwbk5IT054a0Yv?=
 =?utf-8?B?Z2pMREUxb2RNb2I2SWMzZHAyeVcvdEVUS0ZZNkdhOGg0RGJIclNDZWdiWGN3?=
 =?utf-8?B?OWtFeW9iKzZQdHdXeXdQVUtlalhpTmRtWTFwM1JGUkVka0VFRVB5RHpRMWRo?=
 =?utf-8?Q?HVMwjlAWONdeoZ45wOCzwp4F+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a5153f6-2aeb-4caf-d6de-08dd993cf512
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 14:28:44.4731 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iOM/JaQ3f/ijxsHsGl/IlUgwDU04scMbRyFmXoBjH3gKfXcpOgXLTaA9HrrFEMGeJnmu3eNOE+k/DXfmaKmBag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5054
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747924144; x=1779460144;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=83mwMuI/az4fcVg7FY/pZEPMwK2EUcrNsKVnd50qPrI=;
 b=VkB4p/Aag61XfH6VwRi8W8Wt0lKFGs/SD1J0IKs7Gd6CaryUTdxC3pjY
 05bvcpht/CzV7WH1pCCjJsPwIBS4KsoZ1PLV3ym2BCJJIdc+XJUNTZSZq
 /6WZXKddEOPGxLf5z1cwO1PYQyf8znFNdYwLZOjmfntnXPJ25eqsvs26n
 K8p002kBuZC7oaFjNwmKWAXaAT9N9uFW4j43XEte+/wsN3y/oo9z3gdfc
 30nN0YFH8sME7V2M6qsQK4FWt2R5JSP0IeHLrLguRCPwFYPtpbcPuVH1R
 OM295iIDbc9bRXBrSpbOKwvt76U+Kf10sem4TCVCLCxNKnNJNzfYL2KD4
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VkB4p/Aa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 09/15] ice: read TSPLL registers
 again before reporting status
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
b2xhY2luc2tpQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0
c3plbEBpbnRlbC5jb20+OyBPbGVjaCwgTWlsZW5hIDxtaWxlbmEub2xlY2hAaW50ZWwuY29tPjsg
UGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU3ViamVjdDogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIHY0IDA5LzE1XSBpY2U6IHJlYWQgVFNQTEwgcmVnaXN0ZXJzIGFnYWlu
IGJlZm9yZSByZXBvcnRpbmcgc3RhdHVzDQo+DQo+IEFmdGVyIHByb2dyYW1taW5nIHRoZSBUU1BM
TCwgcmUtcmVhZCB0aGUgcmVnaXN0ZXJzIGJlZm9yZSByZXBvcnRpbmcgc3RhdHVzLg0KPiBUaGlz
IGVuc3VyZXMgdGhlIGRlYnVnIGxvZyBtZXNzYWdlIHdpbGwgc2hvdyB3aGF0IHdhcyBhY3R1YWxs
eSBwcm9ncmFtbWVkLCByYXRoZXIgdGhhbiByZWx5aW5nIG9uIGEgY2FjaGVkIHZhbHVlLg0KPg0K
PiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4N
Cj4gLS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHNwbGwuYyB8IDE0
ICsrKysrKysrKystLS0tDQo+IDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQ0KPg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEgUyA8c3gucmluaXRoYUBpbnRlbC5j
b20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0K
