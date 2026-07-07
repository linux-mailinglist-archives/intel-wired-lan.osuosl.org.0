Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PP71Eh8yTWqtwQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 19:06:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C65E571E17C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 19:06:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=WexoareU;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B922F60811;
	Tue,  7 Jul 2026 17:06:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lRMYH-lt3FFH; Tue,  7 Jul 2026 17:06:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21FA360802
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783443995;
	bh=OY61pJto4BXNWnf2kLUj7VpTec8hpQ8XWbUptKS4Ypk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WexoareUWeEa9qZXfbDkYyeWZwFFTiC3boCm937nlhK/FmbqfeI9t0U5OJ5omfeph
	 9vldNmHljP+Y31jN6ppJTX72biTXnrnYa050jRW0KR/t2pEWBYd/8AYo49qZZmLhaF
	 lzRr81LPo91pQmqAdrFZz6EnK58zmYXAP2Q8lMWr8YebcXGoSc2E/Lcg7bm+NlpHr/
	 lDAzLDNzmHCkYTil6ohvEHqaxOZm0OOW66biEyppmhlkbA9jYmOADA8wXcBwDqBNX/
	 mFSJYqF0EOKpA/rPhtCsHlGsExxEQ83mqJZ0NgSnBeTwcQWRVN45z0twQlJoyONz2e
	 rHrHPvakcb2bQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21FA360802;
	Tue,  7 Jul 2026 17:06:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7C3AD33A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 17:06:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 61AC9607E2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 17:06:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zds3WOcVZyIV for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jul 2026 17:06:32 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9055460782
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9055460782
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9055460782
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 17:06:31 +0000 (UTC)
X-CSE-ConnectionGUID: ZhVKbD+/TaCTkR0nl7NGDA==
X-CSE-MsgGUID: uj10xilNTlSK7I6256Bbig==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="84071407"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="84071407"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 10:06:25 -0700
X-CSE-ConnectionGUID: 6siBr/BSQAC8n9/gpphbtw==
X-CSE-MsgGUID: MEWDUfEcTmydRJTcoQxDgA==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 10:06:24 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 10:06:24 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 7 Jul 2026 10:06:24 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.1) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 10:06:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eRutM1iyGKz4nw66tuGDH9Lk+xcaqy7EepHe/BjH3xz98+urYpU0XzpaXntICSUN5t+bYR2UE8EquMQnS7MJk7wt9dOBGkjKZ5brZFy2TX2+duHl+7H4yt9qgr/c6AyN4giKk6EK/xbcLXXCTUHPWWjcpfXuRC429kUmm0b3kV8ElVd7Stl4cONhvK6YJr6SzuyC2CrWh2iCU5Bx4aGqVTRr6jLMtyCkjrObjvlsryAB3B9SqvqeVRkYIZBcj43a9vDXrAcnt+NdwaF6zGQnusVFb6qVhZWvtAcBzC8i2I445Or8n9vHGcdVroOVYUTdZtb0rm8CiCuPZZj7bPB65Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OY61pJto4BXNWnf2kLUj7VpTec8hpQ8XWbUptKS4Ypk=;
 b=kPKHyE7N4ygrOkv353dNBP8USYYiIis1bSUKMh8ag6cX7lBWJ05X+fS3PoErdR4Gus323yZPUSBSSuhprSKwE+MsEEBdVbMiNKmTdPaw5bqTm/giBybfmMHq+idg9cX6u28MupAmTIo73VDIog9IHufiFTtPSKsiYAmepQpFXu2PHz6/jIUSmmemmSK40NMUECWlWbIH4S5oZmVu9fBpwee6/nC47QGDFwiPm31D/e/Mk44GrFdtWwQFAa5ignGBFv7FrYycF6CBQzDxlht+alPZMwY8EcFPP13kQC9YIhc1BpYOXTvctyEFWleOGYqnsHEQyfIjIeCfxWfV9fQbTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CH3PR11MB8493.namprd11.prod.outlook.com (2603:10b6:610:1bc::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.9; Tue, 7 Jul 2026
 17:06:18 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%3]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 17:06:15 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Li Li
 <boolli@google.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Eric Dumazet
 <edumazet@google.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David
 Decotigny" <decot@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Brian Vazquez
 <brianvv@google.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4] libie: log more info when
 virtchnl fails
Thread-Index: AQHc2Qlr0TsvaqWpKkKOMvXjj/Fh0rYEzJIAgAPeHACAWgjckA==
Date: Tue, 7 Jul 2026 17:06:15 +0000
Message-ID: <SJ1PR11MB6297DC182E3DC6F27136DDAF9BF02@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20260501012507.461044-1-boolli@google.com>
 <CAODvEq7D75chNgD3h5w0rfa1ZFgca9VEd54sp4Ww999gCed=Aw@mail.gmail.com>
 <IA3PR11MB8986AF8D9E84A7861B14B3F1E5382@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986AF8D9E84A7861B14B3F1E5382@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CH3PR11MB8493:EE_
x-ms-office365-filtering-correlation-id: d520de60-f247-4e42-2696-08dedc4a0e2f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|38070700021|921020|56012099006|4143699003|11063799006|22082099003|18002099003;
x-microsoft-antispam-message-info: Br7Mm5QhKrhmBgQC3AfsIAqGlBgU1MnQ3SpcbXn4K4sqf1W6x1+BVnrreVOKNw3lInMKEu5uXOaRYrv3xM6HEeVJpSDVWi78HGd/JhQGjzj6gdHfMDzsqHU9asvAmovEhHyvcR7kV/OxQN88zgWkCLRX1sr0TiLtL2xWuJRp+YxQU4IPmtNUQV+wsUYNUQOaIS7al4jINiwcR/AQ1ZeEzJRUQmzMS1SzFMGgoxq/QfO4Dx7oUQkD74dctGT9nz70cE9i8OkyZOvNZjsEYDQ9Jetnc260IRm5iVpuHsL/gNP3VdhucIL488O7XFMrSPFYp/48fHfeFPsyu72MFIXrsLTBqurRMlbWdmYLSTb3c7UWH5rDIi+tasZ9eDs7nbAEj/7OgapELtbeTm63m2JT/xjzTVenHJO5iIW4LgA7BacUWOlowHmArsSG/tQCbUQ2c/cetM65rUYUqzYmrpVOJben+vm5RzPJQYrHClU7lY11nq75bADCfRJgh3cGunGPsyA8xQ3UcnFEbreBXY5e3yW5ed87pWj1dpQaSngTuG1bT9GAut7g3Y+2kFOqSCXeurSL1qaDezhmSIcT8yTBW+ODqx74zs6X2vH+5t8ksZAEClWmK84PYDXenuxPwp3+TGq43eCf7twCP1/aaef33NjhAou/YB1wQAbt4izfeUR3QIGQvehBMEG5qEOeh2WcQEFQqEwTFBrfgUAq6K60c3A0wrVY+vnVqJHlXV4Xq8ECYg9DDe8YTwyGMAGN0pEh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(38070700021)(921020)(56012099006)(4143699003)(11063799006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cm9aOStZaFBCaHNCOVhpR2t6Zk5wTU5mVXJicElvWCtCdDhEYTVseFpMa1Ny?=
 =?utf-8?B?RlEwbFJ0QXdsQStXdGowbjhzSUhNSVF4b21TTXNONEFMZFk1N3cwdVF0R2hO?=
 =?utf-8?B?UU1qYlNoeis2WjUwajdJYW1hTTdVT3dpdDhQTXV1SVk1TzNoWThnTkRWWTZ1?=
 =?utf-8?B?ZXdySjZuQytPZmZEYU1zcU1qK2lpK3FTYmdETEVKbDQzMUFBbS84TG84bEtk?=
 =?utf-8?B?dDVNZGEvWWRiRlhqM1hOQk9IL0hjekMvU3krRVNUeFQ1RlhCc1NSa1FIYk1m?=
 =?utf-8?B?V21KelpXUy9RT0xYblRDMTFQOThicW16ZndYQUkrQ2lWM0RZTVZ5ZzRUMjVK?=
 =?utf-8?B?Vi9sNXFDeUFXOTdiNXYxWGN1SVZEMnBnYi9uRVVXNU9mNGtSaWZ6R2ZFNXpW?=
 =?utf-8?B?TWw3ZFpYdzM2Y1pZTitqcXV0TkFoTTIwMzkvYTVwRTBwYWo5NUtPb2hjOWM4?=
 =?utf-8?B?V29GcXl4OUdLaVFvZHJxL2w0aTVjSXA2K3drcE9vaXcxei9vTXFrc2pCbnBF?=
 =?utf-8?B?ck1Sc3RXcDFrSnN0UnVMUi9DZ2tzTXRabENHSXRzVkVBQkVFQmZUWFRMM1E5?=
 =?utf-8?B?Q3kvd1ZScTBjRXoxZ2V1ZHJiTll1eGo5VlpJdmRWalo1SHN5WVNjODZ0aEor?=
 =?utf-8?B?Z2FFVzhpMVJsbit3V0JtWHpCWEk5N0E5ai82LytHaG5nMCtneEFYRG9RNUtv?=
 =?utf-8?B?SzM4bmxMbkZvUTRGUlFrcG1pWVRWMklSWUcrdnpwRmpHTm9kaXR2QVNRamR2?=
 =?utf-8?B?VGVQOGYxZkVYR1hmb1UybXRYRUkxaTMzWXhJKzg3TS9kYkI5WTNCTmxDVG16?=
 =?utf-8?B?bHRDa3drSVpjMW9FR05tZlljN3F6RVhIOGZDTzFUN0l3OURmM0IzbFJGaTkr?=
 =?utf-8?B?WDJyb0pFUGJibWhXa1h0UC9IZU9uUTlYUmJMNTJib3RwMHdXajB4amxzNkor?=
 =?utf-8?B?Nmdta3B0dDZlMjlNUkYvaUpqc29WZXpwNnpoNytLeXhEbFRDYlh3MWlJMDJY?=
 =?utf-8?B?MDhTcjU4eW5VUzhpRFhMaTNDNU0xN0FEazI0Q1VZWlFtWEZOVUFhZ090dmls?=
 =?utf-8?B?dnp2L2NWcDRFUUpMV2p5LzcxbEh3RDZmMDZ0VDhjVmQ4ckpLVVl0dkZMK3V2?=
 =?utf-8?B?MkNSWDRtK0g1QWdkNzZXekRRQzdMeDNBTzJWU3JOdDZrTnBEdFF3R2tPOFVI?=
 =?utf-8?B?bVJ1NmduVmRRUXdBcklyUWV0NzlrbE5lSGU3YXVrVWM5MGJoeXhKMEFVZjJu?=
 =?utf-8?B?MUl0NUQ2c2NBUERyN1BVak93aXRPanEwd3VTRE1TZ2dEeG12ZVhhL1REQ2VT?=
 =?utf-8?B?S2tLMW1LckVsQTk0L1Brc0RHYndJby91ZUxYVGhGY2pCSmV5eU96ZEgxcEg1?=
 =?utf-8?B?Z25leGRSVmdHay9RbFhMd3dNWVRwMmtLM2RYUHlNTWdSTlZ6SGdWVzdOL1Bq?=
 =?utf-8?B?V1RWb1E0dEZUL1RadUZHSjVUVnI2SDUzSUJsbkJPNEV1TVRvS2pzSDV4L1lK?=
 =?utf-8?B?VnJDWVNqbWJKZm1FbFNiYnRyVk0xUU1ZenhOUDdzQlRXME50OHgwQXJwdS9k?=
 =?utf-8?B?TCsyYWxhSjlGVjNCWnRDYkJRZlg5ZThuWUMxOVkxL1dvSU9RRmdVN2E5MWRO?=
 =?utf-8?B?SllNL0lRcHY5dG1nZDB2eGdYNWI1bzUxeVlBb3FUblFBTUdBbDdqRHltVyt0?=
 =?utf-8?B?SCtqTnVhUk04S2R4NUNIckF5RjZjYjQ0REtQUFJRR1o3eS9wQml5T1l0M3lT?=
 =?utf-8?B?SnlQRFFjN05qYzFwYk15dEliZmUyQmhWWVRTRThRRmZZVEVRUXNYTXc3Q0ta?=
 =?utf-8?B?L0NVcmZoT1p3QkIzMjMzMXJ0cHZMaE1sQzR1QitTNXd1Y0drcnR1WktHZy9Q?=
 =?utf-8?B?YlFKa0VEMHZmRUVxQUNwRnhKVmRvZjVGdjZSVE1JNllFL2VQdTJCK21FNEtX?=
 =?utf-8?B?WEZIdjcveXlrVEUyYmtQWS9jUEY5MjlXdUxyVXgvcUQxam5WYXBTd0RySURt?=
 =?utf-8?B?U1cwUGFDSHF4TWRHS084ckNZRC9ydlBYeWVvbllWbjA4NjljMUx5NUduZE41?=
 =?utf-8?B?TUpXSll5U2VqMThYRk0wam9lZm1saDR1c2Yrd1lLOUw0cm5ySjVnN3dOdVRB?=
 =?utf-8?B?QUV5dzMyQ3oyU3A3ZTJPVm5halNGRy9RMGU4QjBZcGNPbTB0eVFBNHE3ck9Q?=
 =?utf-8?B?bEZpWm82R2w5cnRNY3Job0VybndRYzhjRGRMaEkvWGlsOS9SaUVJSm1uRHVM?=
 =?utf-8?B?NzRjWVVZNGdHNGNHSUFaNGpoVmNHdkRMajh5QXFiMGoxUWd0UW5ycCtHL3da?=
 =?utf-8?Q?h0+s6CSAv8ZgschtVI?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KjI1Np/exOyyubzyi0ZBw9O46rtXiSuXcV/EoziKQc7bOfEUcHSkekniNZtMFHwK3YEj0CRr0iHUKUjCQSwLa51s5uopc6ioF7RhcTo1MOzCUmjY4DvFhgd0f2qilnJg7qv2EK37uTsynDdR50iOYovbRepw/AIEOvKsV4jtqxem3T/kpoRoMUZjJJfJ/e0G0tT5GuNYBtXbiTq1Wt1N8bI1m4JorFKxEmeHqam6BXbuaCk3AbN6lRt0GhE+hW3SndjGzADHPJC9m+8QjxLAU16Ncq1HfJx73NcATo5/H5oGbkCVuMQBdorNgU6hF5gyPZE6kZtBU1aAphb2B/cgFw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d520de60-f247-4e42-2696-08dedc4a0e2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2026 17:06:15.6286 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kXqTT0vJKcSztdZ0k7AReljflEYM4jkQYyQ8ijJNUbUM6H+8NGC6bA6NybR2MrMdfHbKXipAhI2Lu/u+3jI5qg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8493
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783443993; x=1814979993;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OY61pJto4BXNWnf2kLUj7VpTec8hpQ8XWbUptKS4Ypk=;
 b=FowGZEdZcBJ2CJr0eCARA0RnPUzgC0Msxf/KOdfJpKlnqmIfJzQOm5eM
 FaiwCIV/oqy/zgnssHSnsv0Sqcvr1kHdAsgcJvTEu+p9bvzoURZ7WxZIo
 EOUiqD0AQISFzAA4XC1YxTYfuUedl5bk1rn1xkMlsigCrMfatqlED2bR3
 ARx/wGq/IeIUgaOj/9B2wlfsdcp/+7ytq1P5cKymvxABJ3k2+ebB3imtG
 eRja5HudBK5fxgmtpjr3yLAuxlstZOD/Z660kAW/FZ3fQ0nVmDdd5YsKs
 lW3HsIeGN6ZPFR2yS89fCb2DHjKIYxwwG0mQUmAFf+v8DP8UEk6A75a0R
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FowGZEdZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] libie: log more info when
 virtchnl fails
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:boolli@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C65E571E17C

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gTG9r
dGlvbm92LCBBbGVrc2FuZHINCj4gU2VudDogTW9uZGF5LCBNYXkgMTEsIDIwMjYgMzoxMCBBTQ0K
PiBUbzogTGkgTGkgPGJvb2xsaUBnb29nbGUuY29tPjsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFu
dGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15
c2xhdy5raXRzemVsQGludGVsLmNvbT47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0
Lm5ldD47DQo+IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBFcmljIER1bWF6ZXQg
PGVkdW1hemV0QGdvb2dsZS5jb20+Ow0KPiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9y
Zw0KPiBDYzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVs
Lm9yZzsgRGF2aWQgRGVjb3RpZ255DQo+IDxkZWNvdEBnb29nbGUuY29tPjsgU2luZ2hhaSwgQW5q
YWxpIDxhbmphbGkuc2luZ2hhaUBpbnRlbC5jb20+OyBTYW11ZHJhbGEsDQo+IFNyaWRoYXIgPHNy
aWRoYXIuc2FtdWRyYWxhQGludGVsLmNvbT47IEJyaWFuIFZhenF1ZXoNCj4gPGJyaWFudnZAZ29v
Z2xlLmNvbT47IFRhbnRpbG92LCBFbWlsIFMgPGVtaWwucy50YW50aWxvdkBpbnRlbC5jb20+DQo+
IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5leHQgdjRdIGxpYmll
OiBsb2cgbW9yZSBpbmZvIHdoZW4NCj4gdmlydGNobmwgZmFpbHMNCj4gDQo+IA0KPiANCj4gPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEludGVsLXdpcmVkLWxhbiA8aW50
ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24gQmVoYWxmDQo+ID4gT2YgTGkgTGkg
dmlhIEludGVsLXdpcmVkLWxhbg0KPiA+IFNlbnQ6IFNhdHVyZGF5LCBNYXkgOSwgMjAyNiAxOjA3
IEFNDQo+ID4gVG86IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNv
bT47IEtpdHN6ZWwsDQo+ID4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNv
bT47IERhdmlkIFMuIE1pbGxlcg0KPiA+IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgSmFrdWIgS2lj
aW5za2kgPGt1YmFAa2VybmVsLm9yZz47IEVyaWMgRHVtYXpldA0KPiA+IDxlZHVtYXpldEBnb29n
bGUuY29tPjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gPiBDYzogbmV0ZGV2
QHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgRGF2aWQNCj4g
PiBEZWNvdGlnbnkgPGRlY290QGdvb2dsZS5jb20+OyBTaW5naGFpLCBBbmphbGkNCj4gPiA8YW5q
YWxpLnNpbmdoYWlAaW50ZWwuY29tPjsgU2FtdWRyYWxhLCBTcmlkaGFyDQo+ID4gPHNyaWRoYXIu
c2FtdWRyYWxhQGludGVsLmNvbT47IEJyaWFuIFZhenF1ZXogPGJyaWFudnZAZ29vZ2xlLmNvbT47
DQo+ID4gVGFudGlsb3YsIEVtaWwgUyA8ZW1pbC5zLnRhbnRpbG92QGludGVsLmNvbT4NCj4gPiBT
dWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHY0XSBsaWJpZTog
bG9nIG1vcmUNCj4gPiBpbmZvIHdoZW4gdmlydGNobmwgZmFpbHMNCj4gPg0KPiA+IEZyaWVuZGx5
IHBpbmcgb24gdGhpcyBwYXRjaC4NCj4gPg0KPiA+IFBsZWFzZSBsZXQgbWUga25vdyBpZiB5b3Ug
aGF2ZSBhbnkgcXVlc3Rpb25zIHJlZ2FyZGluZyB0aGlzIHBhdGNoLA0KPiA+IHRoYW5rIHlvdSEN
Cj4gPg0KPiA+IExpDQo+ID4NCj4gPiBPbiBUaHUsIEFwciAzMCwgMjAyNiBhdCA2OjI14oCvUE0g
TGkgTGkgPGJvb2xsaUBnb29nbGUuY29tPiB3cm90ZToNCj4gPiA+DQo+ID4gPiBWaXJ0Y2hubCBm
YWlsdXJlcyBjYW4gYmUgaGFyZCB0byBkZWJ1ZyB3aXRob3V0IGxvZ3MuIExvZ2dpbmcgdGhlDQo+
ID4gPiBkZXRhaWxzIG9mIHZpcnRjaG5sIHRyYW5zYWN0aW9ucyBjYW4gYmUgdXNlZnVsIGZvciBk
ZWJ1Z2dpbmcNCj4gPiA+IHZpcnRjaG5sLXJlbGF0ZWQgaXNzdWVzLg0KPiA+ID4NCj4gPiA+IFRl
c3RlZDogQnVpbHQgJiBib290ZWQgb24gYSB0ZXN0IG1hY2hpbmUgYW5kIHN5bnRoZXRpY2FsbHkg
cHJvZHVjZWQNCj4gPiBhDQo+ID4gPiB2aXJ0dWFsIGZhaWx1cmUgdG8gcHJvZHVjZSB0aGUgZm9s
bG93aW5nIGxvZzoNCj4gPiA+DQo+ID4gPiBpZHBmIDAwMDA6MDE6MDAuMDogTm9uLXplcm8gdmly
dGNobmwgcmV0IHZhbCA2IChtc2cgb3A6IDEsIGRhdGFfbGVuOg0KPiA+ID4gOCk7IHhuIGlkOiAw
LCBjb29raWU6IDAgaWRwZiAwMDAwOjAxOjAwLjA6IFRyYW5zYWN0aW9uIGZhaWxlZCAob3AgMSwN
Cj4gPiA+IHhuIHN0YXRlOg0KPiA+ID4gMywgaWQ6IDAsIGNvb2tpZTogMCwgc2l6ZTogOCkNCj4g
PiA+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMaSBMaSA8Ym9vbGxpQGdvb2dsZS5jb20+DQo+ID4g
PiAtLS0NCj4gPiA+IHY0Og0KPiA+ID4gIC0gU2ltcGxpZnkgbG9nZ2luZyB0byByZWR1Y2UgcmVk
dW5kYW50ICJyZXQgdmFsInMuDQo+ID4gPiAgLSBVc2UgJXUgZm9yIHhuLT5zdGF0ZS4NCj4gPiA+
IHYzOg0KPiA+ID4gIC0gVXNlIGRldl9lcnJfcmF0ZWxpbWl0ZWQgaW4gYm90aCBsb2dzLg0KPiA+
ID4gIC0gTW92ZSBsb2cgcGxhY2VtZW50IHRvIGFmdGVyIHZpcnRjaG5sIGZpZWxkIHZhbGlkYXRp
b24uDQo+ID4gPiAgLSBSZW1vdmUgcmVkdW5kYW50IG9wL2Nvb2tpZSBmaWVsZHMgc2luY2UgdGhl
eSB3ZXJlIHZhbGlkYXRlZC4NCj4gPiA+IHYyOg0KPiA+ID4gIC0gVXNlIGRldl93YXJuX3JhdGVs
aW1pdGVkIGluc3RlYWQgb2YgZGV2X25vdGljZV9yYXRlbGltaXRlZCBiYXNlZA0KPiA+IG9uDQo+
ID4gPiAgICByZXZpZXdlciBmZWVkYmFjay4NCj4gPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9saWJpZS9jb250cm9scS5jIHwgMTMgKysrKysrKysrKysrKw0KPiA+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2xpYmllL2NvbnRyb2xxLmMNCj4gPiA+IGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvbGliaWUvY29udHJvbHEuYw0KPiA+ID4gaW5kZXggZWJjMDUzNTVl
MzlkLi5lMWJjMTlkNmNkYmYgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9saWJpZS9jb250cm9scS5jDQo+ID4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9saWJpZS9jb250cm9scS5jDQo+ID4gPiBAQCAtNzY2LDYgKzc2NiwxNCBAQCBsaWJp
ZV9jdGxxX3huX3Byb2Nlc3NfcmVjdihzdHJ1Y3QNCj4gPiBsaWJpZV9jdGxxX3huX3JlY3ZfcGFy
YW1zICpwYXJhbXMsDQo+ID4gPiAgICAgICAgICAgICBtc2dfY29va2llICE9IHhuLT5jb29raWUp
DQo+ID4gPiAgICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOw0KPiA+ID4NCj4gPiA+ICsgICAg
ICAgaWYgKGN0bHFfbXNnLT5jaG5sX3JldHZhbCkgew0KPiA+ID4gKyAgICAgICAgICAgICAgIGRl
dl9lcnJfcmF0ZWxpbWl0ZWQoDQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBwYXJhbXMt
PmN0bHEtPmRldiwNCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICJOb24temVybyB2aXJ0
Y2hubCByZXQgdmFsICV1IChtc2cgb3A6ICV1LA0KPiA+IGRhdGFfbGVuOiAldSk7IHhuIGlkOiAl
dSwgY29va2llOiAldVxuIiwNCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGN0bHFfbXNn
LT5jaG5sX3JldHZhbCwgY3RscV9tc2ctDQo+ID4gPmNobmxfb3Bjb2RlLA0KPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgY3RscV9tc2ctPmRhdGFfbGVuLCB4bi0+aW5kZXgsIHhuLT5jb29r
aWUpOw0KPiA+ID4gKyAgICAgICB9DQo+ID4gPiArDQo+ID4gPiAgICAgICAgIHNwaW5fbG9jaygm
eG4tPnhuX2xvY2spOw0KPiA+ID4gICAgICAgICBpZiAoeG4tPnN0YXRlICE9IExJQklFX0NUTFFf
WE5fQVNZTkMgJiYNCj4gPiA+ICAgICAgICAgICAgIHhuLT5zdGF0ZSAhPSBMSUJJRV9DVExRX1hO
X1dBSVRJTkcpIHsgQEAgLTEwMTEsNg0KPiA+ICsxMDE5LDExDQo+ID4gPiBAQCBpbnQgbGliaWVf
Y3RscV94bl9zZW5kKHN0cnVjdCBsaWJpZV9jdGxxX3huX3NlbmRfcGFyYW1zICpwYXJhbXMpDQo+
ID4gPiAgICAgICAgICAgICAgICAgcGFyYW1zLT5yZWN2X21lbSA9IHhuLT5yZWN2X21lbTsNCj4g
PiA+ICAgICAgICAgICAgICAgICBicmVhazsNCj4gPiA+ICAgICAgICAgZGVmYXVsdDoNCj4gPiA+
ICsgICAgICAgICAgICAgICBkZXZfZXJyX3JhdGVsaW1pdGVkKA0KPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgcGFyYW1zLT5jdGxxLT5kZXYsDQo+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAiVHJhbnNhY3Rpb24gZmFpbGVkIChvcCAldSwgeG4gc3RhdGU6ICV1LA0KPiA+IGlkOiAl
dSwgY29va2llOiAldSwgc2l6ZTogJXp1KVxuIiwNCj4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgIHBhcmFtcy0+Y2hubF9vcGNvZGUsIHhuLT5zdGF0ZSwgeG4tPmluZGV4LA0KPiA+IHhuLT5j
b29raWUsDQo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICB4bi0+cmVjdl9tZW0uaW92X2xl
bik7DQo+ID4gPiAgICAgICAgICAgICAgICAgcmV0ID0gLUVCQURNU0c7DQo+ID4gPiAgICAgICAg
ICAgICAgICAgYnJlYWs7DQo+ID4gPiAgICAgICAgIH0NCj4gPiA+IC0tDQo+ID4gPiAyLjU0LjAu
NTQ1Lmc2NTM5NTI0Y2EyLWdvb2cNCj4gPiA+DQo+IA0KPiBSZXZpZXdlZC1ieTogQWxla3NhbmRy
IExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQoNClRlc3RlZC1ieTog
U2FtdWVsIFNhbGluIDxTYW11ZWwuc2FsaW5AaW50ZWwuY29tPg0K
