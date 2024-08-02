Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D006B945E89
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Aug 2024 15:20:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3107D845CB;
	Fri,  2 Aug 2024 13:20:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MhEs5qUZk0L1; Fri,  2 Aug 2024 13:20:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E476845CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722604854;
	bh=hUxUWNtLFUzqknRDAk1o4RBT8Q1hqFdT94l6csknL7c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dmpd8FsQ/8dvqWm/PkTcJrR8t+VzESrK80pQBGld0KpKOOerZ/RtjxNR21HNkFqOy
	 BzwITptYDhEzjhGD9s2EkSP7Ola3c4nvXs93TVVDUQz4qwN6r8GGDzc7lVSmSe39EC
	 SYnjveb3KNFX8rv3ls1KtJG70PMLe8eX+kSYH0Hr5dBmUVRrazZub+N8EHsQSxoTMh
	 dKWs0moommLZNVr8yR8q8faVKfiSHO5L9Mq3tBlyGuUiuaslFi+XkGkad+MkADnrp1
	 ifOZFNdWpz+j/a+4pgZF2CyHuLv2cInS6bW5jmF8VWaJQjOPntprZvNwrv9v9DQgZQ
	 ifXuBtFIZES5A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E476845CD;
	Fri,  2 Aug 2024 13:20:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F0721BF995
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 13:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6B52840B36
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 13:20:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5dLMHLzyyUAj for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Aug 2024 13:20:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3BB5741208
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BB5741208
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3BB5741208
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 13:20:47 +0000 (UTC)
X-CSE-ConnectionGUID: NUE6y3XBT7CaIUhMJVbgcA==
X-CSE-MsgGUID: SHScLCzqQLyAxUZKeZsxIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11152"; a="43136755"
X-IronPort-AV: E=Sophos;i="6.09,257,1716274800"; d="scan'208";a="43136755"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2024 06:20:43 -0700
X-CSE-ConnectionGUID: WP9TCCsxRNOD5/eLGQ1n0g==
X-CSE-MsgGUID: +yt/Ff+WTta7L7K2j6Eh2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,257,1716274800"; d="scan'208";a="55031385"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Aug 2024 06:20:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 2 Aug 2024 06:20:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 2 Aug 2024 06:20:42 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 2 Aug 2024 06:20:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IlGeyBZddeWDsINtOzNveXETyxD7jDYiegSvqLSGQc3wA4QXR63qgSW+2xqM0GPKldXBqAiLd13Z8MTUlKmRrzm+HR/TeTPOtk9oDp1edW0/D4poBcfJ7lpFZY8duxMOdtf+Q15eG/GgIUhtRQR5xtA042m8qJ/AWbzBBv6WINQHSzoDxTe1u+RyKIewQOUOqb3wAFCKzkIRIAa2TQGTLdiHB4kdlNylCfVMuOGlntFLpVn+kymZAUQ5gUQRP3TYUzz5x/5UfuWDssKkonf+NFFt2VS8R/WPSF/P2cM3kI/8pL0A76yhMwM+ZbIJVw2TzPyG9zEAonbLxE7IZEFolg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hUxUWNtLFUzqknRDAk1o4RBT8Q1hqFdT94l6csknL7c=;
 b=gks3tVr6j0Du8RMBfpNHwv7EFhc1rlTtLGkIrDNaxT6C9NrgwTZybzK1/lc5EuIZbNnq3MEUrOSFhdU0X0wPnu5aJcEuJlowJ7oNOzUjcs6jIxADF270DdZHj4OKUFNLx9yJXqLOsVrJGcYIM0GxVaQgVs9VCQi2Uj2PQlSXO9fWgSV4GwFPry9uQtlxvak0gYhLZlXC8hcnC5miPwNdF1bMut1msoXLdCE5oR14YxUy1GUb9kaizS/j9WcaELdiZkz72MuqE8pDvnvGfs6/pja0uiO1QqT7KDioZyhwV7e8wFIo5UIbX6L9n5zQebv8hhXSA1AlYtIRCL2wMMT4EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by MW3PR11MB4602.namprd11.prod.outlook.com (2603:10b6:303:52::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.23; Fri, 2 Aug
 2024 13:20:38 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3%5]) with mapi id 15.20.7807.026; Fri, 2 Aug 2024
 13:20:38 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 1/4] igb: prepare for
 AF_XDP zero-copy support
Thread-Index: AQHa1DlpvN9POuBBRkSvv3g/ndVZPrIUFBiQ
Date: Fri, 2 Aug 2024 13:20:38 +0000
Message-ID: <CH3PR11MB83137CFF9E8F407BA930487AEAB32@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20240711-b4-igb_zero_copy-v5-0-f3f455113b11@linutronix.de>
 <20240711-b4-igb_zero_copy-v5-1-f3f455113b11@linutronix.de>
In-Reply-To: <20240711-b4-igb_zero_copy-v5-1-f3f455113b11@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|MW3PR11MB4602:EE_
x-ms-office365-filtering-correlation-id: ca0f46cd-cb50-4aab-b552-08dcb2f5e66e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|1800799024|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?N0VyQWVUampnYnBBeFRIcFErWVd3ZlAvLzRIM05mUnlGRVl6UlhuOEhmbWdY?=
 =?utf-8?B?dkdPOEtjYVVFcHRrZFVISG1NeHNPVXR6VEpYVmk3bTV3ZUNOdHpxNTlkV1l2?=
 =?utf-8?B?SVF3enZOR29VL2Z5am5oWHhvNi9YMTFOQWc4SkRvcVFXT251RERCVVV3OE5K?=
 =?utf-8?B?OFVEMHNleVc2cnlQclVTazBUZDVnUVF1djJVRVRFZm9WOUtUWkxvM2ZQS3Iv?=
 =?utf-8?B?dlcyMjdPVzY0WjBPZGRMZGVnWnNjVXNsWlEvV01EOG1xK09OUERHUmhEajFD?=
 =?utf-8?B?QkZPSDFzUnJTRXNnS051ZmFEdzBqY0laOXVtZHB2UHJxY2o4VmMvMER6STkz?=
 =?utf-8?B?NWVuZjIybHE3QW9OTjVBSGI2em01TFQ1QUo3L1lKT1poczFSUFZ6TElkS2E2?=
 =?utf-8?B?dzVZLzdISy8veHZjRlRHdFYxVWhNV3ZSQ09ma2sydUFSaXZXUUNQbVhHQmYx?=
 =?utf-8?B?cHJ6eGN5K3NNQ2k3RGE3U296SzY3bnRWRmhDUVlnc3VFRFppbCtEejl0ZjJZ?=
 =?utf-8?B?a0VJb3B1VlhzcW4xZGd2RmtubEtjYkk2NncvL0xXcDJwZWtOUjl4aVZmOFda?=
 =?utf-8?B?QkdWWFZzUm4xK1plL1JILzYwUWRZaGM2d2JOcUFBc0oxSkRaM0xVY2xsalFz?=
 =?utf-8?B?WlUxdDlEbXZ5SlkxNmszdERWdXJiK0RhSzZMM242ZzNzSnRKbXFSQ01saVVV?=
 =?utf-8?B?VkhNUDU2ZWJQak1HNWJpQlFHTlhDSGZZbzZDL1FxNnFiTGJSTUJBWUU5QXNZ?=
 =?utf-8?B?NTdWRGRud1B1ZU9GMG5yM2pmQ0hBQlVZNUpkVWlkb2hXaU84dXB3UGdEVzBi?=
 =?utf-8?B?RGVTa2greHVBSWloQlprRGkycGpDcllPUUxabVRFVk9FQ2tsc0xmblNWQlVK?=
 =?utf-8?B?QTlxU09JQXlPSDJVWUhVUjM1Mk00Z0ZuMG55bTJWdXRMSWtDaW52aXRYOWZC?=
 =?utf-8?B?M0NoM0JBUXZmc1RiREwwc2Vtem1Sc1c4U1ZjY2FBQ2R1Zm5UZ2NmaHM4OWFM?=
 =?utf-8?B?NnB5NnJ5R1p4eCtlQkY2QTAyWU15cWhFYlUwZVJWWGZ4SlZOVERDR3hieHJU?=
 =?utf-8?B?cVdmRUlUclNxeHNyVXBSVHhlR0hpVHVxZHQvZWxENzNZaDZBdm9JN3oyelh1?=
 =?utf-8?B?SGorUXgvYzUwS1A5M0lFekh3cUVtclBDeEVtemRoQkErNTJ5WWRtOFY3ZnRU?=
 =?utf-8?B?d2oyRE9FNFBjalZaZENSaHdzZXZMVXM3Y1FNOHgxWitMOFViZ0hlSWJXdEQ1?=
 =?utf-8?B?Y1RyT1R5S2MwOGJFOUlXWjN3TGdMVUV0TkNiNEc4blZZUkNHVHZBbzVTMmhu?=
 =?utf-8?B?RmdBdWFFWk5ncUNnVUhIemQrSldIS0o0VkZQV05pZEdYY25ieFVWa0lLeFky?=
 =?utf-8?B?ekYvV3ZvMXdhRzVzRVFWbFZicGtpWUUxbVpIR3pQRHI0Q1NwbE9NRTVUdVRK?=
 =?utf-8?B?eVR4bjhJQVBpRzQvOFoyaHIvd0lENjlrMW9XQU5FQ1k0K09aa2U1OWhaWDRy?=
 =?utf-8?B?azRjODI1bXk3VWZOR0x2RnFWQ1RVcmM2RWxILzlzUWxQNVdPeS9QSVV5Zldz?=
 =?utf-8?B?bzBkV1BxNHhOV0E3blVpRy9kc0xzUFJEbGdjTEhWNUlBczFRMkM4YS9BL2Nw?=
 =?utf-8?B?anJxdlk4Tmt2NXBwWE81bmkvNUNHbE1rS0x5ZEIrVktIY3dLQWZwQTBpY09x?=
 =?utf-8?B?cENrQklsa0dEdWExcGc4dFYwNkdFNHNlRHFCVTB5MU9qZGU3N3JjdWErK2Nq?=
 =?utf-8?B?YnN2OW5pbHU3YWVreWg5dUo1SEpnODNRUDF6VENNb3hLR3dhOUtscG91aTdJ?=
 =?utf-8?B?bnduUWsydkxmWG1XNDM2eU83ODQzem1pNjhjVXgxL25ZVEdQN2Q0K0IwLzky?=
 =?utf-8?B?ZWROVFk1MjZtOGJ3WWF1cWwzRUdOK1p1b3NiSG5JeVk0Qmc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MHZYLzVpTkZNdFg2bmZGLzMyU01CeXQ0RStCL2c0cktNMExmclJnUitBQUxF?=
 =?utf-8?B?a3lXeUNmSWx4bnZIYWlMdmN1K1lZQ3hwTUc4cWMyYmFsQXM4MllUMytUMERj?=
 =?utf-8?B?MkVablJRM21kTkN5T3NXYURsaWhvalZqNDlZVjVXT2xxcnlBSFpsa1dDRjdI?=
 =?utf-8?B?aDhrTXY3MDdLOUN0WEJtd1JzK0JqU2NIVGliRlJRcmt2UWJXS3JHK2tjNmEr?=
 =?utf-8?B?eTJhaXJGMzFoRmZYWW40SzJPMks2d2ZIazFocEZ2RmhNQ3JFZGd0UUluQXFQ?=
 =?utf-8?B?SW1MYWowOWx1em5DZWtOcnJtU1YvTGhyaHVzbi9CRkM3YUNBZFhpYU84UnRU?=
 =?utf-8?B?Y010WEhCRDZXaWVLd2ZLeVErb0N3K2cwYjJRSDlCTTRVYnB1c1RUcVVTU0g0?=
 =?utf-8?B?Q1JrOWdwY1lyQ3Y0K2lla1BZbHhEVWk5bHUvZTdvbjhnSU9YSTZ3OXJMZDdK?=
 =?utf-8?B?ekx0V1RNeE8rNWQ0RFhSaUZEdGl2dGQ3UWpaQTZuUVFFaTFRWFgwajNVOVFI?=
 =?utf-8?B?a29oczBaT2xjcUxuNWVqcG55cWVLcWVtT3didTdiTllxV3FPMDBtOUlnUzF6?=
 =?utf-8?B?b2IydVdWZEJFTUZBeXoxb0dwWFJPVEViZTZnV3U3VWZnYllhUkNKeThvMFVF?=
 =?utf-8?B?cWFSUFpReVFaOXFaMWJaaGphUU4rTmFpNHlEZk5FVjNvWFVlQkUxc2U3eUNj?=
 =?utf-8?B?TWlKR215ZGlSdUMyeFVyUUVqQlkwdjBTNmVSRTJLQXVPSUhBVjA2Uy8yWC96?=
 =?utf-8?B?Z2k3YTdzcHdIVWRiVWhyMldFbXc2dDFaNm52dGN2WlB4RkVLT2VpQUhYa2ht?=
 =?utf-8?B?RDVncTFhNFNFNWo4V3ZRNDcxZGNoeDA5VERNQmQ0ZTJ3SkdJc0ZscmFzckFo?=
 =?utf-8?B?NEZPQ0M3RWprVTR0aUJubWowRTVocFlhTzdGUzVsN2FvdWU1WURaWWlNQmJX?=
 =?utf-8?B?b3BURkhNV1E0TG8zL2c4RUVSTU5SbFM2ZERWbGM5aXJObTBBZDRjajk2RGYz?=
 =?utf-8?B?dTBVdmxvakhDRGNqdzBmMHpiajlCZ2ZyWFBJVGtRVEN6OUNQSmFiZGc4Yk9E?=
 =?utf-8?B?Nkx4eklaekdPdnhFK2VIMmx0aVRhNmFRSmczdExpa3dFNXl6Nk0zUkJxOThP?=
 =?utf-8?B?a0ZBbFpFSzM5QUpZSEpEckR1Q2J0S0ExRDdvaVdOcC9VRHU3SmxCZFJ2cGZh?=
 =?utf-8?B?MW5FNkZLalFna3J4Z2dRQU9KNDhwVDFCQnpPY0hxcnQ5NFVvSUkwdWpsNzI0?=
 =?utf-8?B?VVdQUUJpTlZSQTdYTmhJWXJobjY2U1ErRTVHalhJZWdSZDFNQ1Z3OUxQLzFq?=
 =?utf-8?B?cVZQUUYvckcvTHpWZThqNXgwdXFFSVNNSEM1eXpFd0kwa3JvTDRZU1JJSmxT?=
 =?utf-8?B?UGU2L0MwUHBESDk1NmY2YUQ4MVRuMzZJSkM4b1RRb1k4eUNSV244SVdxcHo3?=
 =?utf-8?B?ZDVycHkyMnZwdUVvZ0gwM1B5V1FwLzU2WEhwY3ptSVZOMjlQWXZsODRkZDJo?=
 =?utf-8?B?enQ4QUk4OXVXRVlIWHRabm0wN3V2Z2R1VWVZaHpYak00NWMxalFDMjFVOG41?=
 =?utf-8?B?aW9JMkl5WTAxNXJzYStld2lkRjRQdGtDR295RmhhY21CVEcvM2ZobzFQU0tu?=
 =?utf-8?B?UFBpaEJ3Wk0rTmZtTWxsWHR5ZzdQYjBKb1dQUUVaZjU2TWxtLzRidGhhMSs1?=
 =?utf-8?B?WlVrSHM5VTNiR2ZMN3AzRHZjNXdYUWV3Si9Gdzd1TFFKOVRsRFJYQlR2b29w?=
 =?utf-8?B?ODhhdnQ4OCtGZEp4UG1XTlZkOWhTZ1pvajZHOWdSdXpUR3R6bnRkdWJ1a2pZ?=
 =?utf-8?B?Zkxid1JLY1E1b0JueWU4bE43NC9VbjJPMDRUK2VLWHdWak1PYkJEZ2gwL3ZI?=
 =?utf-8?B?WDQwR3RmeXdsVThLMzBFZnBVZVZXcHVod21BaGtxSXVkTUxwc0hJeVhyL2RX?=
 =?utf-8?B?Z2w4ZkRBRm5SVlEyTEVoR3ZnNytkRldaUUhNQjJDWGJXS0U3UVczdSsrSGQ4?=
 =?utf-8?B?ZHNTWFlNVTBkc3FyNUdocUNIWHF5cCtJSmcwSEEwWHJPRlA0YUJnVFdJY2xk?=
 =?utf-8?B?cW5QQXZQUWg1SkpVbWN3M3ZuSnRreE1pYjlMNnJwVzBjazFOSUt3TUNobGh2?=
 =?utf-8?Q?Y1E2EwaYcBIqQap2FqfsPZeXq?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca0f46cd-cb50-4aab-b552-08dcb2f5e66e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2024 13:20:38.2425 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NbzfRtmohCwMzL085J8qInXUA7LVcsUBGHzfEqkZ9PwCmL11IOFTeCsbrU/3gTTFSot+W3lOoKt1xB+SHCp3kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4602
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722604849; x=1754140849;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hUxUWNtLFUzqknRDAk1o4RBT8Q1hqFdT94l6csknL7c=;
 b=APAcBOg3r/ODun8sOWtyj69TtjrqlVDvEenFOXoe4/Q/AoCkW9OhUpr5
 yUbzzqKt5mlkKfkB0fmqWthf6VRC94+Mq0F1jegnSATpzh3Xg2kkdlkxq
 xBR0wgzrk2M7IkNpZmFeg84aEnag+S/f1O2RNQTUSbrE27vQ1b3I0xdnG
 PWVQMil6PyuXn/gkUpE2gVhlkj1G1BG4+SYdLh54IaXMZhUJ2yft6MG/u
 eqU201ndcqR1NrQMvolTwvqqONm2TLDRUCkDgBWHv0w84ufISZ8JzSfm1
 PZXBzvjzjXaZHkiv5vBvxY+XLGEAfmVhgBEnENt3/Vrgc3dabA+rdCdYd
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=APAcBOg3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 1/4] igb: prepare for
 AF_XDP zero-copy support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>,
 Richard Cochran <richardcochran@gmail.com>, "Pandey,
 Atul" <atul.pandey@intel.com>, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IEludGVsLXdpcmVkLWxhbiA8
aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24gQmVoYWxmIE9mIEt1cnQNCj5L
YW56ZW5iYWNoDQo+U2VudDogRnJpZGF5LCBKdWx5IDEyLCAyMDI0IDI6MjUgUE0NCj5UbzogTmd1
eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6
ZW15c2xhdw0KPjxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPkNjOiBKZXNwZXIgRGFu
Z2FhcmQgQnJvdWVyIDxoYXdrQGtlcm5lbC5vcmc+OyBEYW5pZWwgQm9ya21hbm4NCj48ZGFuaWVs
QGlvZ2VhcmJveC5uZXQ+OyBTcmlyYW0gWWFnbmFyYW1hbg0KPjxzcmlyYW0ueWFnbmFyYW1hbkBl
cmljc3Nvbi5jb20+OyBSaWNoYXJkIENvY2hyYW4NCj48cmljaGFyZGNvY2hyYW5AZ21haWwuY29t
PjsgS3VydCBLYW56ZW5iYWNoIDxrdXJ0QGxpbnV0cm9uaXguZGU+OyBKb2huDQo+RmFzdGFiZW5k
IDxqb2huLmZhc3RhYmVuZEBnbWFpbC5jb20+OyBBbGV4ZWkgU3Rhcm92b2l0b3YgPGFzdEBrZXJu
ZWwub3JnPjsNCj5CZW5qYW1pbiBTdGVpbmtlIDxiZW5qYW1pbi5zdGVpbmtlQHdva3MtYXVkaW8u
Y29tPjsgRXJpYyBEdW1hemV0DQo+PGVkdW1hemV0QGdvb2dsZS5jb20+OyBTcmlyYW0gWWFnbmFy
YW1hbg0KPjxzcmlyYW0ueWFnbmFyYW1hbkBlc3QudGVjaD47IGludGVsLXdpcmVkLWxhbkBsaXN0
cy5vc3Vvc2wub3JnOw0KPm5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IEpha3ViIEtpY2luc2tpIDxr
dWJhQGtlcm5lbC5vcmc+Ow0KPmJwZkB2Z2VyLmtlcm5lbC5vcmc7IFBhb2xvIEFiZW5pIDxwYWJl
bmlAcmVkaGF0LmNvbT47IERhdmlkIFMuIE1pbGxlcg0KPjxkYXZlbUBkYXZlbWxvZnQubmV0Pjsg
U2ViYXN0aWFuIEFuZHJ6ZWogU2lld2lvciA8YmlnZWFzeUBsaW51dHJvbml4LmRlPg0KPlN1Ympl
Y3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2NSAxLzRdIGlnYjogcHJlcGFy
ZSBmb3IgQUZfWERQDQo+emVyby1jb3B5IHN1cHBvcnQNCj4NCj5Gcm9tOiBTcmlyYW0gWWFnbmFy
YW1hbiA8c3JpcmFtLnlhZ25hcmFtYW5AZXN0LnRlY2g+DQo+DQo+QWx3YXlzIGNhbGwgaWdiX3hk
cF9yaW5nX3VwZGF0ZV90YWlsIHVuZGVyIF9fbmV0aWZfdHhfbG9jaywgYWRkIGEgY29tbWVudCB0
bw0KPmluZGljYXRlIHRoYXQuIFRoaXMgaXMgbmVlZGVkIHRvIHNoYXJlIHRoZSBzYW1lIFRYIHJp
bmcgYmV0d2VlbiBYRFAsIFhTSyBhbmQNCj5zbG93IHBhdGhzLg0KPg0KPlJlbW92ZSBzdGF0aWMg
cXVhbGlmaWVycyBvbiB0aGUgZm9sbG93aW5nIGZ1bmN0aW9ucyB0byBiZSBhYmxlIHRvIGNhbGwg
ZnJvbSBYU0sNCj5zcGVjaWZpYyBmaWxlIHRoYXQgaXMgYWRkZWQgaW4gdGhlIGxhdGVyIHBhdGNo
ZXMNCj4tIGlnYl94ZHBfdHhfcXVldWVfbWFwcGluZw0KPi0gaWdiX3hkcF9yaW5nX3VwZGF0ZV90
YWlsDQo+LSBpZ2JfY2xlYW5fdHhfcmluZw0KPi0gaWdiX2NsZWFuX3J4X3JpbmcNCj4tIGlnYl9y
dW5feGRwDQo+LSBpZ2JfcHJvY2Vzc19za2JfZmllbGRzDQo+DQo+SW50cm9kdWNlIGlnYl94ZHBf
aXNfZW5hYmxlZCgpIHRvIGNoZWNrIGlmIGFuIFhEUCBwcm9ncmFtIGlzIGFzc2lnbmVkIHRvIHRo
ZQ0KPmRldmljZS4NCj4NCj5TaWduZWQtb2ZmLWJ5OiBTcmlyYW0gWWFnbmFyYW1hbiA8c3JpcmFt
LnlhZ25hcmFtYW5AZXN0LnRlY2g+DQo+U2lnbmVkLW9mZi1ieTogS3VydCBLYW56ZW5iYWNoIDxr
dXJ0QGxpbnV0cm9uaXguZGU+DQo+LS0tDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ln
Yi9pZ2IuaCAgICAgIHwgMTUgKysrKysrKysrKysrKysrDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lnYi9pZ2JfbWFpbi5jIHwgMjkgKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0N
Cj4gMiBmaWxlcyBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkNCj4N
Cg0KVGVzdGVkLWJ5OiBDaGFuZGFuIEt1bWFyIFJvdXQgPGNoYW5kYW54LnJvdXRAaW50ZWwuY29t
PiAoQSBDb250aW5nZW50IFdvcmtlciBhdCBJbnRlbCkNCg==
