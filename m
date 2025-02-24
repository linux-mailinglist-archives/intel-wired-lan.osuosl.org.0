Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AE9A42ECC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Feb 2025 22:16:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5813A81467;
	Mon, 24 Feb 2025 21:16:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7lhu5ayB30tF; Mon, 24 Feb 2025 21:16:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57DD18143D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740431798;
	bh=wSAQwzZRXf5UEw1UcArEhKsmNnRAGKf8h8FFDaKgE2c=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8wbKk6p/RPi1Mz7pGwIXudf9fdU0t3a4zuNyrIRFJKsWhfBFPQl/TEQD3epz0DPta
	 nu8hFiKzdmH/nSXJdeIvMYnZ6EGIf7iNwm4Hh4Dodolu6L4nAX3kGj7lPp5FtNmv0p
	 9AIBeYJhF9cQSrJALA4U2vZwh/x/V2d9O7tUoQkZahJbxn+boFPz1F9ZFL/XgdRXbP
	 ZJ+VTrHRQKgZe0HS7te+j9yeNiLK647eoOEYUUY+W0D1X3KIc4Uu1BaNd11pS4/Y0G
	 LPBceGohl8A9FfAwKyqQxq/4rCAn/5oRy4NDZ2sTSS0pkZRkqm1bBE6SFdWKTAmJEx
	 3zj2uZl4ngG/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57DD18143D;
	Mon, 24 Feb 2025 21:16:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 251861531
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 21:16:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 09F1D60DFE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 21:16:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nwIYw704lluj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 21:16:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0A4E160D93
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A4E160D93
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A4E160D93
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 21:16:34 +0000 (UTC)
X-CSE-ConnectionGUID: nwt8ko6aRp2gu+CxqLG6VA==
X-CSE-MsgGUID: w41wLuuyRJS94t1s3E6V7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="63675170"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="63675170"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 13:16:31 -0800
X-CSE-ConnectionGUID: fKiLewAHShKBj29uYFzZzA==
X-CSE-MsgGUID: otettvXNQYmoSYPF0fXdIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="115936768"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Feb 2025 13:16:30 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Feb 2025 13:16:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Feb 2025 13:16:30 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Feb 2025 13:16:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v2t90dcq8Thr5sNbX4IVoTppZ5kbUNkhjvfFYYVrhBu7K1O7ox3cgurmk/yWYbqbMiXgIgHbehL71lIzS1EXjAwHsq89HgFrpnGhWq7kc0f2/n1pI+3uGbQpPI6mNLw5tW6SYfmZsADzimf+YRkOkYUGOIouBUG4Snck1m/dFghXwbma1ma7kWNhQuliwPlUcZQ/e7rDV0XNSr/ZDRA1ngr3h9HOcZp9wVNJ+zorsFawX3Qb8AYCuoY7Yd5OQ3kaN50wshRP1Tiv3Y6YGOeCqYlHkT/Y/sIRjwwj8nHl7z103S6Uf/wUI0mZcLNeV3TbEwyE1utRa5LdjzmgyS40Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wSAQwzZRXf5UEw1UcArEhKsmNnRAGKf8h8FFDaKgE2c=;
 b=mO4IoIFSXR0s4dQxgxouciqKUEYhuiNWTnJI4dhbi/jJ9O1uVvWmKEZ7DiERA0DXJPxjgXjSce+P3BrTM7Z30XQdohov2kBPawcbbfgQdCG4E186981iOlYfHJJ4mVYFFgOy95dT5r8kihisDGpddoH/HG8TvmCOhnRt/tXQioMfUAcsU8wjqEN/Cwr0qcCs/AeorbwG3uFrq4rAH8aGQJFLHy5MuFVqatsy23wPxC/1F5MdL1vmcb2z9gfwESd5zXJ+SxQMX0T6kct8WT9eE0Br9hta0JAkkYJvc5mCWDBnz6a93OPhid+USkCho6EeHaqhC5DoX5lrk2IHj1OsIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Mon, 24 Feb
 2025 21:15:55 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b%4]) with mapi id 15.20.8466.016; Mon, 24 Feb 2025
 21:15:55 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: Allow 100M speed for
 E825C SGMII device
Thread-Index: AQHbhEonCGzmAazM00ef1tM7UwDtObNR0rYAgAUmo6A=
Date: Mon, 24 Feb 2025 21:15:54 +0000
Message-ID: <IA1PR11MB62191A63B1D1AF514173629D92C02@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20250221101608.2437124-1-grzegorz.nitka@intel.com>
 <d07597a8-7e89-41b3-aec9-3af9d9aed529@molgen.mpg.de>
In-Reply-To: <d07597a8-7e89-41b3-aec9-3af9d9aed529@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|DS0PR11MB8665:EE_
x-ms-office365-filtering-correlation-id: 73f2217e-b14b-4dc2-edf2-08dd55186ccf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WFFjYTNVQ1hhVzI3RkpqV0VsVzNaNGNzNlFsdmJiR3N0YzZXWG9CL2Riblc1?=
 =?utf-8?B?ajhXcHVpamhmeTR5VVMyZWlLWldUUkdTdXVvSVkxbjNZSEZKSXc1REhDOE1z?=
 =?utf-8?B?MzZLYUZHL0VVOUoyM015WkNaNU5VZGJoNVlEWUs5TlZlb2xqTWIzMmNKZmM2?=
 =?utf-8?B?VjRKQ1lvblFWRVFkVkFZYytnOTZYcHFaSE93eFZlK2RzQ2V6SVpPOXNLcEF5?=
 =?utf-8?B?cUl1U21pVktkdjNsQTgrQTdLN3R6ZlBkN1dQQlo5aVkyUGN0OHh0cXJHOEF2?=
 =?utf-8?B?ZVYwR0p2SW0vWStoZnBtTUlHNktiWTVFSUlYMHhtSlNzTXNUblRMQmY5RTA1?=
 =?utf-8?B?ajMxTFNPWkVNcjgzVXlsMXpLeW4zaXhCRkNqbitDU2FNcUFqdStrUmhoKy9s?=
 =?utf-8?B?blZoQXFZWW9yaWJJQmtnYXVubjhKS3pCb0xXeG41Y2wyVHBROEdIM0tCUUJK?=
 =?utf-8?B?M2dvQWRJV1o2dHRLb3p1TGUxMlhkK3dieGRMS2Y4RGF3NkF5OTNzY2k1SkRV?=
 =?utf-8?B?UlRIZ1kzdGZxdEx4dlE3Wkl2SVNCQVNndGI2ek05MGtkUGhnNGFnWmQ5bzVQ?=
 =?utf-8?B?NjBKY0ZoSDlXQzZZZ3VEaTF4S1RuUHplSzhKNVFnM1FUZWE4NW9keTQyWTdn?=
 =?utf-8?B?aTBIc0IxQk9KU0NxUVdubEk4M3k3Q1ZpRDlPaUlCclpHRnNMeWFrRzFrcTFZ?=
 =?utf-8?B?b2NwcDFQTUFubjFySjVBRmhBN0ljWW5QVHJvT0VuSmlzdi8rb2R1YU4vWFgx?=
 =?utf-8?B?ek1ySFhPaHFzbEEvUCtxY3B3ZGI0RWg4NGFjclZ3bFhTMTdFMU5QVXA4MmFm?=
 =?utf-8?B?QTdsSmxnM3pIMExrRE1pRUVWcVJEdTR3eEVUb0VuRGRqcXNtRVhaU3JvQXhk?=
 =?utf-8?B?enRoQUt5ZEJUSzJZWTFvWFRib2RJeElaNnlueEFTMTZuMDJYaGpnNmRZRkF1?=
 =?utf-8?B?OTIwMEJCZDJoRDhZOEc0ODJ4VmQ1MHRpdElzU1lxR3JPNDlvaG9xeFJvSExl?=
 =?utf-8?B?WEhtTjlGU09qTkoyNU45WVQzbERjV3k0QW1LTU5BMVpyNjJCR3NYYkd0Z3Ry?=
 =?utf-8?B?dFdlNHJubDY5WkhLcno3MVNaeUpBUTh6dlJvNVA1ZC9aSGwya2d4Tk45RGFN?=
 =?utf-8?B?aEc0K1VlaE9TVWFIOWwya0tJdTFwdlVhMTJKQ3hLbnhnajQ5b2xldVFmc0pn?=
 =?utf-8?B?anlBMlhDZTgvTDJXTWdTMHJkcDdka0N3OWpNVHRnUU5ZOTd1bjdPdFd0UWxB?=
 =?utf-8?B?OGFvY3FIRDJWZGdEYmlZbUVxdzd5czErUzY3eld2d056SXVaRWN4cTlaZmNu?=
 =?utf-8?B?RXhXN2lOaHlyZ01Na1FHeWhBWkZCTTNhd1NHcnovdTd3cFhPRkFxMTBZV2Zv?=
 =?utf-8?B?OStZcUFmTUZmbEptcnBraTI4Tm0zTWlsZWsrbFExV2NkSFBwcnp5dVJDWnF0?=
 =?utf-8?B?Y3BvelYwWTlsTmZ3NHd4Mnc0b3VGa2FSVTc4Rm9WSkIvbzRVbGVjMHpVOEhp?=
 =?utf-8?B?cWY4VENDcTJpbVlkK0hQQ0hNWFFPdlAvZGR4WURFdWFaWmhYQWdFR3ZuV1ow?=
 =?utf-8?B?a1IvZ1pQTE53U0ZHcEJObkdQQ1VPcE04L20yU1I4Y2x5a21lVEJsbXVzSCtv?=
 =?utf-8?B?clRLSjU1UjNhUDVKcGtmV1pQS2xsQzhaK2JINjRQaERHQjRSb25aeEJRT2Jh?=
 =?utf-8?B?V2ZkeG02Ukh3dE15TERlQmlGNE51ME9ERHFJSDJOb1JhOGVEb2xtSCtvbHVT?=
 =?utf-8?B?a2R3WHZnbGNJb0tZS1k2Mm1wb2VHZm05TTBhSlRuZkNvV3JDWTBRT3Q1RkJK?=
 =?utf-8?B?MFdlbFJnbGlvSGJkaVdUM1hDamJWK3NNcGo5VnVQaldUNkNFbjBvcVh2S3Vw?=
 =?utf-8?B?dDlDcEtwK0RCMW1SWlEyR3J6Sm1lN0pYSHJHaGNRNmMwT2cybnQvb0JoMmk2?=
 =?utf-8?Q?UKsS28ssmbrH0zq9vP5BCi5H6JYNCRLL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R25HVDVjWWJycDRtellrYjRwY0xwcURhVmVLcVdhVmwzTWFvL21HZlBTc200?=
 =?utf-8?B?UjNOd0VMNjQ3R3ZBa3dycHFFZlhBdk9EK2FBa3EybWsxc0d4Y0FDWmZBRGE4?=
 =?utf-8?B?Q2x5RVRMRlp0NytGdVJuUW5aTEkvOHl4K05DZEpxOGJaMm1PYXpXRTFLSkla?=
 =?utf-8?B?dFBEQzQ2ZTF1eE96a2xPb1BycHRnYXdjOTlMVnI5K0FiZElkZXJKTXdtcU5i?=
 =?utf-8?B?TFAwSFNLNnR0VmNLNUFzRXJxd3QreDlSZmJ3Q1B4Q2JVV2NHcU05U3hiRVE0?=
 =?utf-8?B?UlgyUHFoWHlQQWkzUVY1RzNmZjQyeldYWjJ1TFB2R1Q1ZWRLSjNPS2NWU2ls?=
 =?utf-8?B?amdqVFlFTzMrZ1Rkc1VudS9hQmRwblRQU014VVhicmFKOVhnaGF1OUw5blpr?=
 =?utf-8?B?d1QxTnpMeHFiZHhmRmgwaWE1M0QwTFVOVEU0eGRyWFRraS9leUVJL0Q4TEpk?=
 =?utf-8?B?Sytjdks5bGkvSWNVWTlhYkdHaFg2K2lFSnh2SFRkeUVPd3pYTVEvbkxYMVk0?=
 =?utf-8?B?N2dmdnQySTJ3bzl4TUorbS9NN1pXWG4zeG1ZQ1BJMFpFM21aQ2J6MUJRNFBE?=
 =?utf-8?B?YUc5cyszOUtVZzFGWUh4Q3lYUEloL0dZdDBLL0hIMlBvS1VkVzhtYWNQUDEv?=
 =?utf-8?B?YmhwTDN0K3BMNzY1T1VNbVd6ckZRWWJiVnB0Y3hDdlg1T3Y5MG1oV3diUmdl?=
 =?utf-8?B?SHF0TWhWZ1FFbmxuNVBrRjJ6TTdkZXNiNWcvTTVuNjdsbmFUUmxudmtCa1ZG?=
 =?utf-8?B?NWdvRUNxUDlGR0xVeDhjWk52aEw4NDFTYUxFZXJGUjFoYVFsQnhDV0lVN1ly?=
 =?utf-8?B?WnlLU3NTcjcxdEd1QU5iMDZYdGg2RExvbExjWUdXdUtlZXZHcCt0VUwwR21t?=
 =?utf-8?B?OWYrNVhPeEVHcWNTNXJkS3c5OXRJNHJ0dHhySEdmMjhISzBrUjVWenVLam91?=
 =?utf-8?B?WUU2RGpjVkdMZDNER0ExV25yb2IzYXdzSThjcGJpaW9QY3RYQVhJSHRMcWYv?=
 =?utf-8?B?QzM0ZCsvN0ZUcFQ2NUFQZG1tUWlqRnZURGJrY3RVdTk0dTV0OVd4ZHJyWEpP?=
 =?utf-8?B?eTM3Ymd3Mjd0V3p5b0VSVjdFM05GeFJQOFJFRUcvcTEzSFU4OHlDWWd4UDhs?=
 =?utf-8?B?dFpiSDdOUjQwa0huaGhJQ21McXFBM012Y1dZcFlkL0c2UkpILyszaHJvRWVS?=
 =?utf-8?B?VGs1aXdpczdERGR4YXhaTlk1cmVpWkYwUUk5U3pYZno2SExWZ3JwTERmdEo4?=
 =?utf-8?B?cmc4T2JJOFlmc092SlU4UktkNmkxRnd3b2dsQ1lhKzhkeVlHWHF2Vm8rRWpM?=
 =?utf-8?B?Z29yQW5OYmsrdTBwZTJ2TVJZSytSNW9YRW9pSEozTlU3VjRUbjhQU2lZQStC?=
 =?utf-8?B?VjRYMFBEdU9JbjdhWVZKS25vclhWTkl2L293Wng1ZldCM3F4T0dLZWpsVEVo?=
 =?utf-8?B?S2gxQnZVYk5GQzJLUWVsclJiMzhFT0FhVzAxVkVJd2dMSTJIZzdOdmg5L1R4?=
 =?utf-8?B?WGlPb2FseUk1YTVHYm9KRVliL0FXY2djYkVUejBGYkRPNnlsaVg1T3ROQ1U0?=
 =?utf-8?B?YTd3UnZVUUFKV21NQTFTS3N1b0dxbHY2OS93WnUxdVdOUndKUTNQSU5oMEZ3?=
 =?utf-8?B?YkRacG1meFRZRWVUTFJwV0phUEpkOWoycDI4bVFqR01nWU0zckpUVllXYktC?=
 =?utf-8?B?MEI5K3BjQ0tYVkN4bUpWVDkvUjg1OVdidjNiR3R6SXk3d3B4cDJIQXc2TWI5?=
 =?utf-8?B?VHIwZnY1bmw4Q3BVYnBrYmFpQVF2WUxQZnp5QmQ4QWRkWEkwcjJmdUIramh5?=
 =?utf-8?B?bTN0aUc0a1NHc25uL29uQk0xN2pEN1pMQW1zb2dIYkZXdC9sT0tnd2twelVG?=
 =?utf-8?B?Z1BNM09YbnVTSkU2dU00ODlNSXRST1lKRjh6bzRuK2kvSTZvUEM4cURYZUZO?=
 =?utf-8?B?WlZFMDk2Q1UyeU1JNDNnK2RZUVp5bmk2bzkwTThxRVZOeTdTakU4T3lpZmRh?=
 =?utf-8?B?TEpkS3hacmovd0RHZFV2d016L3R1QTNuNmlKK0dOdVdRT2VUak1lMEl2WWtj?=
 =?utf-8?B?SW5hVjdiWEd0UitsbTI0OFd6b2JMZ2xKN3hNRCtOaWpIMi9TejZyNzBPU1Ni?=
 =?utf-8?Q?hFbVEEXxKeGdzThjtSN6LaTl9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73f2217e-b14b-4dc2-edf2-08dd55186ccf
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2025 21:15:54.9229 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vPh51EciAYKwox0TG14C6uqULFOzCZf6NK+wbG6eu/4Nw1n9Lw3lc0ydjcOzSoV0EZ0mi4qCMANvQ+7xnBffILKfeu6By59hEUF+dOjysms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8665
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740431796; x=1771967796;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wSAQwzZRXf5UEw1UcArEhKsmNnRAGKf8h8FFDaKgE2c=;
 b=aYBkWtgF6NF4CmQ/qAckPiqXRQ0er/2UZD26QGgmnuPzJFwlGyrgfOYa
 uyX78OMzEFKclpEa88XyOaeQnBq+/C6L6omDP2u33NNbi3wIrbZCgO/HK
 bSxO1zeHF+3W1NzXv0Rvi21S46BiDzN/y6klKDqfgFm6YehJxS4AInDlp
 e771dANxFZvdxs4xxVIupevvs+yjUVQVfecf5d3+pFidd9fpFv1gpZG9a
 y5CfNe+grqLIM1h5c/DlUhcuY4rpTUrHPUIJYwKa7+WYySBWucydt9uwj
 NJVV3m94tguuyeyuFtnyi/iUjLzkTfl3aZwqNv/tHx4Gg1DZgQF7DX6kk
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aYBkWtgF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: Allow 100M speed for
 E825C SGMII device
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFBhdWwgTWVuemVsIDxwbWVu
emVsQG1vbGdlbi5tcGcuZGU+DQo+IFNlbnQ6IEZyaWRheSwgRmVicnVhcnkgMjEsIDIwMjUgMzoz
NCBQTQ0KPiBUbzogTml0a2EsIEdyemVnb3J6IDxncnplZ29yei5uaXRrYUBpbnRlbC5jb20+OyBp
bnRlbC13aXJlZC0NCj4gbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IExva3Rpb25vdiwgQWxl
a3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47DQo+IG5ldGRldkB2Z2VyLmtl
cm5lbC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0
IHYxXSBpY2U6IEFsbG93IDEwME0gc3BlZWQgZm9yDQo+IEU4MjVDIFNHTUlJIGRldmljZQ0KPiAN
Cj4gRGVhciBHcnplZ29yeiwNCj4gDQo+IA0KPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4NCj4g
DQo+IEFtIDIxLjAyLjI1IHVtIDExOjE2IHNjaHJpZWIgR3J6ZWdvcnogTml0a2E6DQo+ID4gQWRk
IEU4MjVDIDEwR2JFIFNHTUlJIGRldmljZSB0byB0aGUgbGlzdCBvZiBkZXZpY2VzIHN1cHBvcnRp
bmcgMTAwTWJpdA0KPiA+IGxpbmsgbW9kZS4gV2l0aG91dCB0aGF0IGNoYW5nZSwgMTAwTWJpdCBs
aW5rIG1vZGUgaXMgaWdub3JlZCBpbiBldGh0b29sDQo+ID4gaW50ZXJmYWNlLiBUaGlzIGNoYW5n
ZSB3YXMgbWlzc2VkIHdoaWxlIGFkZGluZyB0aGUgc3VwcG9ydCBmb3IgRTgyNUMNCj4gPiBkZXZp
Y2VzIGZhbWlseS4NCj4gDQo+IEkgYWx3YXlzIGxpa2UgdG8gaGF2ZSB0aGUgY29tbWFuZHMgYW5k
IG91dHB1dCBmb3IgcmVwcm9kdWNpbmcgdGhlIGlzc3VlDQo+IGluIHRoZSBjb21taXQgbWVzc2Fn
ZS4gVGhhdCB3YXksIHBlb3BsZSBoaXR0aW5nIHRoZSBlcnJvciwgaGF2ZSBhIGNoYW5jZQ0KPiBv
ZiBmaW5kaW5nIHRoZSBjb21taXQsIGZvciBleGFtcGxlLCB3aXRoIHNlYXJjaCBlbmdpbmVzLg0K
PiANCg0KRGVhciBQYXVsLA0KVGhhbmsgeW91IGZvciByZXZpZXdpbmcgdGhpcy4NCkkndmUganVz
dCBzdWJtaXR0ZWQgdjIgd2l0aCBpbXByb3ZlZCBjb21taXQgbWVzc2FnZSAodGVzdGluZyBoaW50
IGFkZGVkKQ0KDQpSZWdhcmRzDQoNCkdyemVnb3J6DQo+ID4gRml4ZXM6IGY2NGUxODk0NDIzMzIg
KCJpY2U6IGludHJvZHVjZSBuZXcgRTgyNUMgZGV2aWNlcyBmYW1pbHkiKQ0KPiA+IFNpZ25lZC1v
ZmYtYnk6IEdyemVnb3J6IE5pdGthIDxncnplZ29yei5uaXRrYUBpbnRlbC5jb20+DQo+ID4gUmV2
aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9j
b21tb24uYyB8IDEgKw0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspDQo+ID4N
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21t
b24uYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMNCj4g
PiBpbmRleCA3YTJhMmU4ZGE4ZmEuLmNhZjNhZjJhMzJjMyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jDQo+ID4gKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYw0KPiA+IEBAIC0zMTgwLDYgKzMx
ODAsNyBAQCBib29sIGljZV9pc18xMDBtX3NwZWVkX3N1cHBvcnRlZChzdHJ1Y3QNCj4gaWNlX2h3
ICpodykNCj4gPiAgIAljYXNlIElDRV9ERVZfSURfRTgyMkxfU0dNSUk6DQo+ID4gICAJY2FzZSBJ
Q0VfREVWX0lEX0U4MjNMXzFHQkU6DQo+ID4gICAJY2FzZSBJQ0VfREVWX0lEX0U4MjNDX1NHTUlJ
Og0KPiA+ICsJY2FzZSBJQ0VfREVWX0lEX0U4MjVDX1NHTUlJOg0KPiA+ICAgCQlyZXR1cm4gdHJ1
ZTsNCj4gPiAgIAlkZWZhdWx0Og0KPiA+ICAgCQlyZXR1cm4gZmFsc2U7DQo+IFJldmlld2VkLWJ5
OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPg0KPiANCj4gDQo+IEtpbmQgcmVn
YXJkcywNCj4gDQo+IFBhdWwNCg==
