Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBP8Lo5LAmpaqQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 23:35:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CB5516536
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 23:35:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4563E8109C;
	Mon, 11 May 2026 21:35:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZvEE9FEOgsMP; Mon, 11 May 2026 21:35:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1B49810A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778535307;
	bh=c+e3cjz3XsPqvcAlby3VKeOsHiKdJTtgXTk9KZJYTsg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Nbyx96dOGfGcewaB/aH4lnUK7x8+tT0C1reBw9GvaiuHAAhu420K8PSB4DV/ttnE8
	 N1aZWoYxFNnP6zhoMqThDc4LVijrmzBEuARSmHPTgmTtvjkrNyknRoe2ThY0Bfg6vD
	 dOzzG2uJ+eLH+W1wdM3gaQWJj/58TgxB4yhRi8nIIkjJKpbQCJZzrVQ02y/9ltSjPK
	 mg+HIxDYdI42vQmqzaXCIpceFpbZ82oicq+6t8xDfsuOE2VRkbxFvzs2ZcPOdLR+ip
	 MzsHAiijnYdGun2VzPXuI/8VQrEcib9EX9g48CqmGzqa99NNO/uXc5QSPn5VK155Ya
	 W9+B0QnhPEv5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1B49810A1;
	Mon, 11 May 2026 21:35:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CC115352
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 21:35:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD25140242
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 21:35:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CAivXRIRlDZA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 21:35:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B25914023D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B25914023D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B25914023D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 21:35:04 +0000 (UTC)
X-CSE-ConnectionGUID: Y3DITzJfTMqzDwp9aJYRFA==
X-CSE-MsgGUID: dSZS22eSRpuHPeZukGNKjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79383059"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="79383059"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:35:05 -0700
X-CSE-ConnectionGUID: Z+FaEzqrQgaQC7eVG4PPsQ==
X-CSE-MsgGUID: roxxQRTdTYCTHD09Xk/5pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="233251706"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:35:04 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 14:35:03 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 14:35:03 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.47) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 14:35:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KHcDI6hon26J7yiBJesboUgmW6J62c0uQK2LHQoq8aIujj231BMEW5Ykd3Ak6PwJbjpxPavjtquTRVhzNt5+wcReSxt9gr66EszgHW+dHk4Jw5JYF7+qgdeJCslWYgDmxCtPy3ZEQCESwlcdotFOuTGFr5Pdfo9jYyylLKqvPwqOcmzSZ3HVbFamwza7Jq9QGTIxv3xF78b92EJnhwKN60hRm8hlKK8hOZjYIlP+hLIjQs09Yh2L6hQV/xo5Hcup5z2S/SMWE5AY+7SFOgldlPrHcbbia32bMb5ZB6Bu1feOk34VgnQaE6AKCyMAgPCAFBfq3U+M+vvfI62wGwfv4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c+e3cjz3XsPqvcAlby3VKeOsHiKdJTtgXTk9KZJYTsg=;
 b=ZvSnzq8GNzbAgXsiNyG2FcNUq8HmmJrAOpSBZebpjlfdlYN1pLU7pmehvNp5UP7voozTsEJwFfzQVscnw40/iDsk+LAArYYL3UVIRJDtDQ44u2tYd0Vt/kiMMCQabg8wMOYi2vGoFuG1PjhegzKZOBqu8glfP4hch4FdBnwNe3WA4jWAhmlC84L6yZba850poubZ0oGCxfC/yxxVxvnP55bnM2eOg0Fi7redxlRS6kd31/wI60VJJyroB8Wjzu/Qfsm2vFr2xj6PAMhR417io/kCEx1NnlEL+qHmRPs+DwKPkettoSqGepIID1sBgZEosIP19zGM0QeTqMchm4MfaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by SJ0PR11MB5920.namprd11.prod.outlook.com (2603:10b6:a03:42e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 21:34:59 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 21:34:59 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: support SBQ posted writes
 with non-posted support for CGU
Thread-Index: AQHc3ihRewwsOCByaUGgBhbpAICytbYJX1zg
Date: Mon, 11 May 2026 21:34:58 +0000
Message-ID: <LV1PR11MB87900C846F8DF3DAFF01511790382@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260507135110.809367-1-przemyslaw.korba@intel.com>
In-Reply-To: <20260507135110.809367-1-przemyslaw.korba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|SJ0PR11MB5920:EE_
x-ms-office365-filtering-correlation-id: fb1db8b6-1036-480c-6591-08deafa526e5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|38070700021|18002099003|22082099003|11063799003;
x-microsoft-antispam-message-info: S9/olJMyH0VRZN/Yctj6G3H7JnM+9RhZKvnYiF4SSMQmADDt8EWxF0avWFCbLgYhXE5ztEcBh55ydG/tEZHyRLEKMhZBPYfDrsxsVyts6aJtDf0Wf8kfm1QgelpFpYOFZC2eAT9I9StCEJoLr3fs/fg2As0o4PCgon+gQYl4aWuaYCDTN9ErRMCZ4AbO35FuWZM2KR4G5l094cUW1CQj4RXPmo52f5qlMpfY8NCuSkXvmdzEJDifqsc0CZ22RtRWUtnKfGh6EzmplVixoVICsAiQ7hZIrqk5aX+9oSAl18Sh5reAxHp/0vhwlB7mlFcDda33oNQQjHR/7PExENnhsEI1I8dRjJYm3pYnGZ5CpxU8AQuJ4vieUsge2nOFwGUb6UfC9669s8D2ltUQ8+LxuUNH1iLQHTuAOw6iDoY5BWaqHl2nnz2VoYYDagoSYpNyuQk4xicDv9h/7SbWMBcvPTTstx57jSkvQ1oc7UQNQIK7t6SdbBDghVNiN1ReimHzBVQjvdWVKL4qCjM6Ql4U2Iwe3HLQm9bhJ20dUTnFM4VmnsWYhUAJfsYvhBXwQNAMTsoMHc4dZALizENes8Ph7yxbZlvZ32WZh3gXq3F2B90N3m8UahU8vrENObKKS8BYzgqANDtd6ROG9teBknttJ8aMskM7nfqAAB2zK4upLM5liwR+jXC60fSKRN3nuzd5i/38qDm1557vtOpOCtKybeSdl3b7r4VOA092ZF8eU98qn7HATIBwTMbX7KKEyvsF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(38070700021)(18002099003)(22082099003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUovb0hZZ3pPTncrTGoyZXcvalBHNlRhMVpTbU52TTJTanJHZnptNzM3eTE3?=
 =?utf-8?B?TjRUaHBaN2xHK2E5aWxvRFN3eDR5RENTUEk2Y0g2L3p5Z2llbUk2ckRLbjQ1?=
 =?utf-8?B?Sms3bDZjQzhCN1ROVVJxQjBUc0NDaWp1L3YwaDVyRkhOSHBoWTV1L2VaTGQ1?=
 =?utf-8?B?NldNVWZMTzBOYmM2YzZERXpQd3U5S21kVkg1cUw3ZmFsTlV4TVgrRDVTRUpo?=
 =?utf-8?B?enpnc3lWMFVFSHRKN2hkbjNOcU9IQVhVMWl3SHdkUlFGMWxjeVlXb2ZzRENq?=
 =?utf-8?B?c21aQkFZbDRPS1RQdHhrN3p3Q2dPbnQvdHE2S2t3d1BhSXY1U2lJN2FnT3I1?=
 =?utf-8?B?VWxtbUptQXRlUmpoc3J5MTM2eWVGRUtXRWNud3AvcHJwb3BZeXFhSnVKQkFD?=
 =?utf-8?B?VG03czQwSUhHb2VENWNMZHFjQ0hNQ0dUTWVkWTFrRFFSUXd0Tksxb0svY1pL?=
 =?utf-8?B?S3RtZ2FTS0RKcEdRM2pKdkwyNmlkNFdwak55Wk16eHdtNFAyWlJPQyt2aHhQ?=
 =?utf-8?B?RHdTb0drNVhGUlA5SmkwS1FQWCtJT3BrL2xoeWxiOXduQmFHR3dHWVB3dXp1?=
 =?utf-8?B?aThoaTZUcWMvOVNWOFhNU00reFdtSG84bTZKdTRUV1p2dVl6bm9sczhUU05p?=
 =?utf-8?B?N3ZjdXFZUm1VYkEwcjh0Q2JMeWdzM25admowcDlIOHN3emJwSUhNaFU2U2xG?=
 =?utf-8?B?WjZ4RllTQzZ0WW9OQlVRcU9TQi9nT2dOaVhMcStjM2s1WjFRSGtTakVDNWZT?=
 =?utf-8?B?VCtSZ3BqQTM5RHJ5RE45K0VKSVNCY0ZMcis5dkxZMitJYTZMZ29Pa3NDZy9O?=
 =?utf-8?B?Y2NFYXA3MHhNdkljL0s1TTc5YVJRNEd0dXpLckFxZ0QrQ0dwN2hvSUpEM2ln?=
 =?utf-8?B?cEUwdWVSRkd4YmpBNEd1b0toSDBkOWRLZlZsM3JweVRXa3BSRlFRWVI0dUU4?=
 =?utf-8?B?UXVGZmptb0R4RW0rOWRQdWRTZzM2cTJNT3lLNXRuWGY5bjdZNUJkOGloanRF?=
 =?utf-8?B?cGNaN1ZkckhkZGFCdUVOOE9NeW1yVVJwTnFGTmYvaFJTWUtzQUF3cHExNkxm?=
 =?utf-8?B?YXY1b3g3MVo0ZUZVVTZjWEo0SGZBRG53VWlxRXp3dklnS0VqUkRod0laazJZ?=
 =?utf-8?B?S052YzNhck5rN3FUWWNFVzEzS0g5TUdkUDVFZ1dFaUdvMllUZW8zY2tKMUk2?=
 =?utf-8?B?NmRkRnY5bDY2NUFjSTVRTEtmaXZnZklGWlY3M1IzUHlYelppeC9QVFlyQkt4?=
 =?utf-8?B?NzJLeGhqcUI1NFpPVE5QZU1rQ0p6V1RVTG9oTjdCeGVnbVptQjl1WmNBc1l5?=
 =?utf-8?B?S2NHcEJyZ0tmK09BNVNjSVZ4c2RxcmROL25pWm9seDN0QUxualRSWmFxSUt0?=
 =?utf-8?B?QnN2SnRRTkkvZlFXNTVleE1lL1U4NEY3RFNRV2o0d3hhd3pGYUlHa09WSHFk?=
 =?utf-8?B?K3hya3pyNEhUWUZvTVl2SEFULytDL01VSTFkL1VqdjdVVE1pNjdENDQ4aW9u?=
 =?utf-8?B?NVdVZHlOcmJHUWZsQnlJeXZtVzV0dmlIeDBvZGNaK1BhVjF5ZVdDUGtjOUE2?=
 =?utf-8?B?L0lOSzNiK3d3Szh5YkZKeE5uTW1WTGo0Z2c2OTI0YnVjcDIrdmdmZ3FhYzhm?=
 =?utf-8?B?NUUwUHdQakNTUlRNRk9PZlJkQmt5RVBLYk1WT2x3OSsrRURNV01EOGdneklo?=
 =?utf-8?B?cFE2am9QUFZOT0tXWVkvUWMwZHhuYy9wQ1FtY2VnYUFRN3JzcFNxaU1Kb0Qv?=
 =?utf-8?B?N3ovc2UrdXBuRTVQaEk1Ykw0N29zQnA4S1pYZE9kenNmbHV5QUJybWlXb01r?=
 =?utf-8?B?ajFMNC85STNJS1JpellLQklqSHRocEErb0F2Mk1TbTNielJ6UC9TaFE5UEpM?=
 =?utf-8?B?ejd3VWhiOUZpaTVYVkp6eXRCckhFTGJ2bnNKNmZlMkh3SmpFeEFZdFJaZWVs?=
 =?utf-8?B?bnVCUVdGN0xac2FWcG5qVDRZVHB5NC9WU01kVVhHbVptUHBlNlJsbW8ydDdv?=
 =?utf-8?B?S1NkeGI3ZEhSL1I0WFRmR2VkL0hUWmF0d3lBNno0R3NJaHY4SXZHNkorZ0VO?=
 =?utf-8?B?cDExRWQ0dGlPTTFEUmExS1ZIaC9lVGRUd1BLLzhRL3hWUlR1TE5SNml4ZUVx?=
 =?utf-8?B?ZXBVL3NpVEhzWHRlVmNZRUVzVmI4UmNLV0ZFUkVxeUJjeEJHZlN1aE4zNnBO?=
 =?utf-8?B?bTFzTTdrUjlBeXo5STh5THVWOU1IVExQSHBtaVBYTUNyQ2V3UUYxVXVsNHJh?=
 =?utf-8?B?d3ZScXZzZjhyL3FMbUIzZE5hTHVMaGFsWDN0VVViWGZ3bzB2Y2lCbDhkVXpL?=
 =?utf-8?B?TjN6OGI5bkZTYWkzZGdLSDZDcVQxNFBmSURLNXVteXdvMjR6dkZhZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: RQX6JGxC9vWTrG8K34Q30rDDQs8wgms1gL5/6q6xPBRqkhGIZA9iH8a2Xo8GpWmseOI265dkn6x/OPHkZaOFNuXq94xv7whCnLt6/dFOlRYtWNE94LFJhjXQWxtWmaTg9hcsz3isEETzxGe7DIHK9/zWRxqB0Mwn7N8lhYFVG1u/kzBTW5WfTVv2XiBYVS9bfV1GJXqaQwrPUxDNNXGuohzIE12JNtTfjBswCPDAMDeAkKuzCND+dEHbM+94H42sNWBIvSUz0o29Tgx844e1VyFKIKwgqipbhm7tvwOCds4LQT+Sb8FYwp326rsmSgdEts/8KSExTRdgH1Dxp0Ut6w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb1db8b6-1036-480c-6591-08deafa526e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2026 21:34:58.9043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0UFyK/ubRNL4N4xG4BKKieyfJo7PAP814PqdeIDB+eKApYe77hv3lOGYSv37NYavFfnKHZ4pBOsEZ8NDu7wgyqqCqr7UC4O/sqK7WNw8SZk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5920
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778535306; x=1810071306;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c+e3cjz3XsPqvcAlby3VKeOsHiKdJTtgXTk9KZJYTsg=;
 b=HC8FrXTzrUyjNNiaIIUPFPyEtwCm5/YGsovFII7noONMHMTYeKR+imL6
 /oN+nFtJTruW2vnhzyW5hYLyAxivqdvIeLAkTD5n7B+aFioQFb8W1wpYf
 MCy+6LvIasGWoU634JUVPp5Jt+n6HjIaaLSAYO0yvi7mO3uVVnmcUPqP7
 5kWadFvDzld6um9m+6LaGWYGIx3m4LTYGjU2265bo3Qel5jvg4YQMnapi
 qaR7QGPxS1sBgTTXoKBNzdR8wv7i/1+iiEvTmXN/tqAmHiIl601rcG+nB
 CldVAm94LnxHVVncbvRLifndC4eCD/lwX3ZtJCrAjRx4QEAHsigej8X95
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HC8FrXTz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: support SBQ posted
 writes with non-posted support for CGU
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
X-Rspamd-Queue-Id: 97CB5516536
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:arkadiusz.kubalewski@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[LV1PR11MB8790.namprd11.prod.outlook.com:mid]
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBQcnplbXlzbGF3
IEtvcmJhDQo+IFNlbnQ6IFRodXJzZGF5LCBNYXkgNywgMjAyNiA2OjUxIEFNDQo+IFRvOiBpbnRl
bC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogbmV0ZGV2QHZnZXIua2VybmVsLm9y
ZzsgTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3pl
bCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IExva3Rpb25vdiwg
QWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEt1YmFsZXdza2ksIA0K
PiBBcmthZGl1c3ogPGFya2FkaXVzei5rdWJhbGV3c2tpQGludGVsLmNvbT47IEtvcmJhLCBQcnpl
bXlzbGF3IDxwcnplbXlzbGF3LmtvcmJhQGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIGl3bC1uZXRdIGljZTogc3VwcG9ydCBTQlEgcG9zdGVkIHdyaXRlcyB3
aXRoIG5vbi1wb3N0ZWQgc3VwcG9ydCBmb3IgQ0dVDQo+IA0KPiBGcm9tOiBLYXJvbCBLb2xhY2lu
c2tpIDxrYXJvbC5rb2xhY2luc2tpQGludGVsLmNvbT4NCj4gDQo+IFNpZGViYW5kIHF1ZXVlIChT
QlEpIGlzIGEgSFcgcXVldWUgd2l0aCB2ZXJ5IHNob3J0IGNvbXBsZXRpb24gdGltZS4gQWxsIFNC
USB3cml0ZXMgd2VyZSBwb3N0ZWQgYnkgZGVmYXVsdCwgd2hpY2ggbWVhbnMgdGhhdCB0aGUgZHJp
dmVyIGRpZCBub3QgaGF2ZSB0byB3YWl0IGZvciBjb21wbGV0aW9uIGZyb20gdGhlIG5laWdoYm9y
IGRldmljZSwgYmVjYXVzZSA+IHRoZXJlIHdhcyBub25lLiBUaGlzIGludHJvZHVjZWQgdW5uZWNl
c3NhcnkgZGVsYXlzLCB3aGVyZSBvbmx5IHRob3NlIGRlbGF5cyB3ZXJlICJlbnN1cmluZyIgdGhh
dCB0aGUgY29tbWFuZCBpcyAiY29tcGxldGVkIiBhbmQgdGhpcyB3YXMgYSBwb3RlbnRpYWwgcmFj
ZSBjb25kaXRpb24uDQo+IA0KPiBBZGQgdGhlIHBvc3NpYmlsaXR5IHRvIHBlcmZvcm0gbm9uLXBv
c3RlZCB3cml0ZXMgd2hlcmUgaXQncyBuZWNlc3NhcnkgdG8gd2FpdCBmb3IgY29tcGxldGlvbiwg
aW5zdGVhZCBvZiByZWx5aW5nIG9uIGZha2UgY29tcGxldGlvbiBmcm9tIHRoZSBGVywgd2hlcmUg
b25seSB0aGUgZGVsYXlzIGFyZSBndWFyZGluZyB0aGUgd3JpdGVzLg0KPiANCj4gRmx1c2ggdGhl
IFNCUSBieSByZWFkaW5nIGFkZHJlc3MgMCBmcm9tIHRoZSBQSFkgMCBiZWZvcmUgaXNzdWluZyBT
WU5DIGNvbW1hbmQgdG8gZW5zdXJlIHRoYXQgd3JpdGVzIHRvIGFsbCBQSFlzIHdlcmUgY29tcGxl
dGVkIGFuZCBza2lwIFNCUSBtZXNzYWdlIGNvbXBsZXRpb24gaWYgaXQncyBwb3N0ZWQuDQo+IA0K
PiBUbyBhbmFseXplIGlmIGRlbGF5cyBhcmUgZ29uZSwgbG9vayBmb3IgYW5kIGNvbXBhcmUgdGlt
ZSBzcGVudCBpbiBpY2Vfc3Ffc2VuZF9jbWQg4oCUIHBvc3RlZCB3cml0ZXMgc2hvdWxkIHJldHVy
biBpbW1lZGlhdGVseSBhZnRlciB0aGUgd3IzMi4NCj4gVGhhdCBjYW4gYmUgZG9uZSBmb3IgZXhh
bXBsZSBieSBhZGp1c3RpbmcgcGhjIHRpbWUgd2l0aCBwaGNfY3RsIG9uIEU4MzAgZGV2aWNlLCBm
b3IgbGVzcyB0aGFuIDIgc2Vjb25kcyB0byB1c2UgdGhpcyBuZXcgbWVjaGFuaXNtLiBXaXRob3V0
IGl0LCBjb21tYW5kIGJlbG93IHdpbGwgZmFpbC4NCj4gDQo+IFJlcHJvZHVjdGlvbiBzdGVwczoN
Cj4gcGhjX2N0bCBldGgxMyBhZGogMQ0KPiBwaGNfY3RsWzQ0NzgxNzAuOTk0XTogYWRqdXN0ZWQg
Y2xvY2sgYnkgMS4wMDAwMDAgc2Vjb25kcw0KPiANCj4gQ2hlY2sgdHJhY2UgZm9yIHRpbWluZyBm
b3IgY29tcGFyaXNpb25zOg0KPiBlY2hvIGljZV9zYnFfc2VuZF9jbWQgPiAvc3lzL2tlcm5lbC9k
ZWJ1Zy90cmFjaW5nL3NldF9mdHJhY2VfZmlsdGVyDQo+IGVjaG8gZnVuY3Rpb25fZ3JhcGggPiAv
c3lzL2tlcm5lbC9kZWJ1Zy90cmFjaW5nL2N1cnJlbnRfdHJhY2VyDQo+IGNhdCAvc3lzL2tlcm5l
bC9kZWJ1Zy90cmFjaW5nL3RyYWNlDQo+IA0KPiBUZXN0ZWQgb246DQo+ICAgLSBJbnRlbCBFODMw
IE5JQyAoRlcgdmVyc2lvbiAxLjAwKQ0KPiAgIC0gS2VybmVsIDYuMTkuMCsNCj4gDQo+IEZpeGVz
OiA4ZjVlZTNjNDc3YTggKCJpY2U6IGFkZCBzdXBwb3J0IGZvciBzaWRlYmFuZCBtZXNzYWdlcyIp
DQo+IFNpZ25lZC1vZmYtYnk6IEthcm9sIEtvbGFjaW5za2kgPGthcm9sLmtvbGFjaW5za2lAaW50
ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBQcnplbXlzbGF3IEtvcmJhIDxwcnplbXlzbGF3Lmtv
cmJhQGludGVsLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtz
YW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogQXJrYWRpdXN6IEt1YmFs
ZXdza2kgPGFya2FkaXVzei5rdWJhbGV3c2tpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jICAgfCAyMSArKysrLS0NCj4gIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuYyB8ICA0ICsrICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmggfCAgMSArDQo+ICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5jICAgfCA2NCArKysrKysrKysr
Ky0tLS0tLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3NicV9jbWQu
aCAgfCAgNSArLQ0KPiAgNSBmaWxlcyBjaGFuZ2VkLCA2MiBpbnNlcnRpb25zKCspLCAzMyBkZWxl
dGlvbnMoLSkNCg0KDQpUZXN0ZWQtYnk6IEFsZXhhbmRlciBOb3dsaW4gPGFsZXhhbmRlci5ub3ds
aW5AaW50ZWwuY29tPg0K
