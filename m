Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF8FB4568D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 13:39:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7CE1D81E25;
	Fri,  5 Sep 2025 11:39:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HIrIFowukjCH; Fri,  5 Sep 2025 11:38:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6219E81E3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757072339;
	bh=OuPgMH+1Mq0hPvy5s7SlNHDxrFpNBEG64i4BYBWR+lg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NzmzSYdUHc+3Ol2HEejgkp4VA+N6uWAoJHGs39yY7jXkW8srY5TagpFQsEGnSxNL6
	 6UHsK+OB9Fi3x0UTUIb1XxQ163e3pksJrRiG2LC6cJu3chLY+vWxaXI50N7Cmeyh2Y
	 g4dFDvEtDr723AZgExk5q1jddgwtucfLTwTLGnLqy/5x69P9QXy7Z3aoC0qyv0MW6o
	 JLrfADlsEz/JtJQT8DIr3Z1fmdnLBe3khiBQMkCe41r3cdpjqhWuLtvEk3SdT33VI1
	 hPNN60mAdrAXJDGcbnkeh2ldIbRrL6tP3okCu4L8E5U63Hnx20uiNsmQam+jcDULQB
	 +7qbZWeC5dXfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6219E81E3B;
	Fri,  5 Sep 2025 11:38:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 604F6111
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 11:38:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5213460BDE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 11:38:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9oO7QJGHTL9D for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 11:38:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 62C3F60B51
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62C3F60B51
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 62C3F60B51
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 11:38:56 +0000 (UTC)
X-CSE-ConnectionGUID: dDZmcS2bQo63hUGf6sdTRA==
X-CSE-MsgGUID: D2PaRO4cR8WRKyYLvFg3SQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="58457570"
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="58457570"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 04:38:56 -0700
X-CSE-ConnectionGUID: rmMmUhEoRf6amQNpcWnyzw==
X-CSE-MsgGUID: p5dIYsI5Sj2I5kuFaJ2KHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="172029266"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 04:38:55 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 04:38:54 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 5 Sep 2025 04:38:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.77)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 04:38:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NG1omCxqUa1Q9SRL6XD9/0cUfosrPkEn1UX1RJogRFSl/hh4JsS7oZtKkkMlX0fJFBMh1zeSjZUgUtk5pl/VboCQkF029Gohhx8KadsLOfni96Ab1k5RTXo2vfItW6og9NoOIKXhv3WeIK1ESPhdqe6sGD0ppiPHy9rKsnItJ5FoHan/rdHon5iF68hI/QO+MjSlR91g0McHAxkHcqcaHNSyBS/bibSm+ZrA6NKHBIEAANFYFfgcAluF4TdlxkylfJXbLRMGz0zyv2fJPk3p6YROuX3vceGwuOXbkhBgEyBA1i8szLKUdUPbOZ58nNFUhHMseK1pfA9WvGXyz6+HKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OuPgMH+1Mq0hPvy5s7SlNHDxrFpNBEG64i4BYBWR+lg=;
 b=sdIlOJi1HE6QhuaXzTmtDYO8AyglGAff5iFzu05fihOdDyoFLDnncVh6HJsvdbBa8L6CzcUWidd8qT/e0jT8ZZozw2Dtf75zzAPywgTPK7pYQehf2q66VHukA8Bcdqu7s9OyYLXSjshzExqwHdeYWe2MkGUJOvpM8Ugrg/pZAGjagykmmdTfkhPAJS3lh54s2BIkpQZg2+lRH/L0Qz6/TvEGaO8vh04iN/2gvbNS9vcodailDpOeUAiKytBiKqJYwgDUsAKXgOevUeEO/Fuj3xggT2PLHtetx4nFtFGMDZw66qNSlUNDe2sZlE/wFKtlgPzMp4SPHggVehl1TG1d9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB6500.namprd11.prod.outlook.com (2603:10b6:510:213::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.16; Fri, 5 Sep
 2025 11:38:51 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9094.017; Fri, 5 Sep 2025
 11:38:51 +0000
Message-ID: <6baa0dd0-407e-4ca6-8dda-9d778aac84b7@intel.com>
Date: Fri, 5 Sep 2025 13:38:47 +0200
User-Agent: Mozilla Thunderbird
To: <liuqiangneo@163.com>, <anthony.l.nguyen@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Qiang Liu <liuqiang@kylinos.cn>, "Dheeraj
 Reddy Jonnalagadda" <dheeraj.linuxdev@gmail.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Piotr Kwapulinski
 <piotr.kwapulinski@intel.com>
References: <20250905025519.58196-1-liuqiangneo@163.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250905025519.58196-1-liuqiangneo@163.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0300.eurprd04.prod.outlook.com
 (2603:10a6:10:28c::35) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB6500:EE_
X-MS-Office365-Filtering-Correlation-Id: 3675c5a8-c1c4-48ae-19d9-08ddec70c95e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Umh0QVRzSVJ1RG8xalRsN2l3TytLcGd6RVkvcmhXVURDMWVtOGFRN1dONjlL?=
 =?utf-8?B?VllrNmFEaUdSMGN0TklSdjdiUnRaRUdDZlY0ektGU1NUYmtacjJnMGhlRzdL?=
 =?utf-8?B?aFBUMWJoN3VsSll1WHl0MnhNVHJJWWhiei9sSWtlV2NYUkU1R1RpTTRiMmFB?=
 =?utf-8?B?L2lpYnhoYVlJOGo3RENSaUpuNFExSnFyZi8reWxGbCsxeGQvQ01TNmxOV2xI?=
 =?utf-8?B?cldwUkRHb3B2M3EvcVVid3c1M0FTcTJ6N0tWUWJ5a0pYcm9LZVpZMkNqZldl?=
 =?utf-8?B?eGNabFhaV01DWkVIZkkva2JadkpUd1FDcWJxSXUva202N2hxR1hiT2d6a3RB?=
 =?utf-8?B?M0V6ejJScXJsWUlxUy81SlloQkQvVE1HbUpOd1IwYk43eXNxSDFicUtJNTZS?=
 =?utf-8?B?VHhHby9KQmJKV0lqdmNSbDgyQ05SUWVYc214cVNOVGRob2RUbXQrUUk2VEJD?=
 =?utf-8?B?bGJyL2cyaU9xMFN3S1RjQ3lkZmFMdWd0NWdhbWREdkNRUmswamx4bTNCMGIw?=
 =?utf-8?B?M2ZFbHBiYjJlSDUwY3VweUIyV2ErQ3hMQmtBNm5FSzRUaVBsbHQxdDR3Qi9E?=
 =?utf-8?B?bXJ1S2tiNjVFTTRzbE9qdVg5L1Y3RE9oMENWMGY4MHNvSmJiYVduYTNlYmRr?=
 =?utf-8?B?L3U2ZEczbmtOZWJVSzZ0Y0JRKzAxU3doT0RlWnczS3ZMSkhZMWpZRWtpQzdC?=
 =?utf-8?B?M3pUcVlCcGduQXMyYmpJSHFFOVVZZEs5MkJqdEs3QnBSeWt0QkJJMmVTdkJz?=
 =?utf-8?B?ZGx5cXVYa1ZiY1A4NGdodUk2N3R1eSt5Q0Jrc2VsZldwazkwQkUzRitpNFJK?=
 =?utf-8?B?VDRUeGthQU9EMkgrQ09HekNYaE55SXhQeFhRVkFScEhEbDBYSi84VGlhM0VF?=
 =?utf-8?B?bzFWN1VncmpXWUhpTEp3bitQQXM4V0E5blpaWFpQTE5lZlJaeGZQNXdIUFdo?=
 =?utf-8?B?Z1lnYkFVVjhVcTQ3aXFlU3g4VzZON2k2bk5XNHNhSGdOTmNRQndSdWZnRVdT?=
 =?utf-8?B?dWhwY2ljUW5iS2tUbm9KWkxhMEZXTk5CRFlEZU1PNkEzNWkrWFVKRk1TY0tj?=
 =?utf-8?B?SU9wajVXVkZwWHJKckRsVmRGdlIrM0VHNG12RHNCWForN1pTU0JBSGRKaVdw?=
 =?utf-8?B?bXdiSk9WRFVqaUttL3d5NHQ5OFFqTUZWK2tDeWZSUzBzUGN3WFh5SHVYOFZx?=
 =?utf-8?B?aUJUaEpxSTlRRzF2UUx3RUpOUGhmNk16ZVZ3ZmlPeFppNGpEZlFzcWtGUUtp?=
 =?utf-8?B?Uld2bDk0eER5cXUzWTY3TmVrQ0tkZmlqajRHK0h3WDNlSXNHeDBlcUxLTkZx?=
 =?utf-8?B?dmFxd09SMHhlUjVYOGtreHJvQWFoTE9HTmo2bllDL1V0ckNHbXpNRFYvWGpO?=
 =?utf-8?B?OFE0ejNYb3lhTFVmcm5BVUF2VWZaYWcrTE0yVUlNZDNrMGtXNlIzWWI5bmpo?=
 =?utf-8?B?Qit2SGhoNWljU3I3TGhYL0p0VG1WcFdEMzZhblVnUmNtNUFyMDdmdjlkQU91?=
 =?utf-8?B?U251T2I2cFFueWJKSTVONmRhQTJ5VjNYalMrSTFaUnluby9kTlFWQWd1VkpW?=
 =?utf-8?B?cWI2S3FHYm9yV0wyaEJsQ2VieEZIRzdXTENpSWtDMGhsYjF3Slp6RU9laEZ0?=
 =?utf-8?B?SjkxZk5nUm1NM1lmOWd1Q2pSaktBMm15a1pkWlpDbmgzZVoxV1hVbzdqMlhP?=
 =?utf-8?B?MjR6N2VQN2xqZ3o0OGhmYW9PWFhlWEZIUzU3QnlnS29qaWRJZUphNm5BelNJ?=
 =?utf-8?B?b0MvYjFDQ2VRb2Qxc1F5SlNPMWd6MVRJWGtLNjdCMUNyVkJFUk9RL0ZudzFj?=
 =?utf-8?Q?Ak+Rid/mDYW50bcQTwxI5RB/FbrBfcT/fdLno=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TmpLMkZDajVjTEhnUjB5a2JaM21jT3lhNTFHSWJWUk40Y2xMY2g5b2kvREIz?=
 =?utf-8?B?Y0dxcE1ub2lRLzFaN0QvR05nUU1JNnN0NnFKeUMxL2dLK0EvV3E5NVBHZDBu?=
 =?utf-8?B?YlJsdDI5YkduMGFhUkdvMnd2VExaNWlzbFIyZno1cXBYSXE2ZGZpTEkyK2JX?=
 =?utf-8?B?RG5LNE9HT2luR1BreDJ4SDNkandoME81N3I2ano3QlRydjkybkNFR0hUSy9v?=
 =?utf-8?B?L3J3eEp5MlJJYzZuZ1lzQzF6SjBCSWhYQWI1ZXRsclQ0YnhnQVc0WmpGbCtl?=
 =?utf-8?B?ZHpPRXVLVkdtSkNzbXRjWE9RRkkyV1YrUFFDdjdjUHJIZlVKK2tEQkc0bjlh?=
 =?utf-8?B?aUNnckxjQ0NpdUNHK2pOUUlJT0lEM2Rhc0RhN01ScG11UXBpZFNEWTFhemZ5?=
 =?utf-8?B?RklPV2JHN0ZVdlMwQ3RNNTRyNFkyUERpdmtnSVNNYm9CMHo0WG9OK2NCaDk2?=
 =?utf-8?B?dnYvYUJsRjE4YUFTOU81QmhOY2R1NkZzL1NxNjlvQkxIL3R2enlST2VGdXlm?=
 =?utf-8?B?U3JvYjZoYVFjVEErZzZqYUNoajVuRXpjWG5KTXdpRTRQeHMyd0llWUZiYjZt?=
 =?utf-8?B?RkgvejU1VUlTcXkvVFV5RTJVTmdyRENTS0EySitVdmgzZ0lxb0YvRkpnNDZW?=
 =?utf-8?B?ZjZJT0ZPcVFzdU9VVVo0Z2U1T0t2QW0xa3BzdmxtcWFrSzNKY2NQbFl3d0cr?=
 =?utf-8?B?cTExYi9yN2txZ1ptRlBBK1g4UXAva2ZSQk91L0pvd2FOMElNZU5RQzVCc2Iw?=
 =?utf-8?B?Ni9YQnhibm1XRVdlaG5VK1FUUUpzSUhvS240SEVlTXdlS3h4WjE5QkVkSnUr?=
 =?utf-8?B?V0RFblRqWTdHOVo0NEp5dXpwS04rOUh1UGErQ3NoMUYzVXlDdDV3MUNNbXUy?=
 =?utf-8?B?a04xQllNaTVNejdTOEM1V1JmUWNjZ1VUbGhPcDI3NUZzLzl4RXhTUVZkeXpZ?=
 =?utf-8?B?TUEvUTYwSExzb29rY3FhYTlVYUd5M2JYbEdaay9BeEpuUWZpUVdETTFQN0RH?=
 =?utf-8?B?SC9NNzlQYkZxVjVDcUNnQ2RydTVoK0lzYkN0QTRCQnEwV2ovMHJwRFI1VzNB?=
 =?utf-8?B?dklhVmh3VU1CRHVXRVNtSlBRMmhlQ2dHaWFuVWZtUytmaVVsb0QxWTBBNFBs?=
 =?utf-8?B?NW1ZditpS0FVdUZhZm9HTUlvYnpVdTk4RktQR0NIMHFrNUFwSmQvZ2d2bkp6?=
 =?utf-8?B?T3djR0NoUFBMc01IS0c3a3cwcGI5RTY1cUs5V1Jzb1JSRXVFM1h6ci9sM25S?=
 =?utf-8?B?dW5TdTBFREE0WS9SWGxacXRzNVkyVFZrYkI1Z2tWbEJUK3BySjNLRWMxbW5N?=
 =?utf-8?B?a2VVY0lWYUd3N3hhZS9nempFRG5yR0JFa29iWTBMK3V4T3UvMTR3dGNLVU5x?=
 =?utf-8?B?cGtHMWtabHQxU05jVEVjYnN6K0pjVXZTbGhnRWpKOCs5OStOYWpsVWpPRHFR?=
 =?utf-8?B?d204TUNjL2ZVc2RQKzFPTXRaWlV3TTR4MXFMdXpRWlp2ZHBmVWsvRkpiT0ty?=
 =?utf-8?B?SEhpeFJ2V0t2a3U5SHVlYm5rMlRtVndaT2liSDdVL2ZOZWpqZWFUb0xFRU91?=
 =?utf-8?B?WncvaktoTVFNN1E2RGRWdGZIb3M2OGFHcEFDSzJrQ2wxdXRMWDRNUXFZS081?=
 =?utf-8?B?S29SRXExTUZhb2taZTc0MXdpSEZwcHQrdjdaRW1zcVg3Mm5nOU1QME9iSWVl?=
 =?utf-8?B?RjNDeVdnczQxMG5qbDBYSGFTRWJZZ3RDMGdYTXl6Z243QlFQVjdIMnkxSTFu?=
 =?utf-8?B?NkZFSXd4WnJOQmhZNG5xSkd6WThIeHVkemZoRFh0eVVVaUU4bjhsZ0xOb0Vk?=
 =?utf-8?B?ZDY4dy9QM1QzOUMySUxnUkR6Y3Fsb2tRUkhuaitHcXF5b282bFN5OU5CUE11?=
 =?utf-8?B?S0xrdEUxQUR3UVlxd3pXaHFWTldlZFMwekdiQVFhUTg3UDlWMmhkSmpjQ0pV?=
 =?utf-8?B?cXhLVDJ3c3YxdHp4amplT09GMVMvdVB5VUpmNCtpeVY4RUtCU1Z2dGwxTkVS?=
 =?utf-8?B?cW1kQW83ZU1IMVVZYnpkK2dBc2x1eXY5eVE2Mk9DU2ZVL0VjV1RmdnhxSGhs?=
 =?utf-8?B?QnQ3VXcva0RVd0I2NFZ3Q0RkTVU2Z3R3OVYxWktVKzBuRHJXT0hRY3RjS09F?=
 =?utf-8?B?MUU3UXNQUUJaVklrOU9FdjZLL3BERkNlSGVXdFA3eG5PcTNkUklPYmdiVTZi?=
 =?utf-8?B?aVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3675c5a8-c1c4-48ae-19d9-08ddec70c95e
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2025 11:38:51.6511 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R1WCgt4HaPKenAggA+XtmnfMFhUDdTv6W8Kj9NIjW5dO54jLcJsa515lWigROOUeoCZ5COCaqJGMaI9l7jJJ/4UsbBiNoIATj2kQk1sm8wE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6500
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757072336; x=1788608336;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uJ7KzpFQRXU7NtG/4mWzul1pP0VoZUGNI/Pne4vucQQ=;
 b=X4boR071hM+HvPJ18Fy47gVtwGdfBT5tWm7x83XRy4MxfBhg0YDYHOd5
 dm+50rBDs+hrTamjdDAWnNWHJVc0QBKK5X3agOuQyesSYRDKJukxgstIp
 syHhIPx1nft+oNVa0eHPytjivzAbn7AW6kfK67HCGLwpId4oUb6MJ2hIm
 AIqWHKFpkVTEsCe58CJAI0BlMklbRtwihBM48+7z+2LhTYU09Hmo/l8ES
 sH1+/Y+sTI7pYF6H94Y78xDQvhL1LzEkyDj8zUv1+IrFVh4aEbh9nuc7v
 h0J9MW9NalzjcmBDS0ga+Pg0Ar6QZC9X0/o0kq0kPFF9Wv9rH2vgHlkbv
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=X4boR071
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Remove self-assignment code
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

On 9/5/25 04:55, liuqiangneo@163.com wrote:
> From: Qiang Liu <liuqiang@kylinos.cn>
> 
> After obtaining the register value via raw_desc,
> redundant self-assignment operations can be removed.
> 
> Signed-off-by: Qiang Liu <liuqiang@kylinos.cn>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 8 ++------
>   1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index bfeef5b0b99d..6efedf04a963 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -143,18 +143,14 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>   
>   	/* Read sync Admin Command response */
>   	if ((hicr & IXGBE_PF_HICR_SV)) {
> -		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> +		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
>   			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
> -			raw_desc[i] = raw_desc[i];

this, obviously pointless in current form, code is a remnant stripping
down our OOT driver, during which we have lost cpu_to_le32() call

there were already an attempt to fix that:
https://patchew.org/linux/20250115034117.172999-1-dheeraj.linuxdev@gmail.com/

but it got stuck on on some sparse warnings, and discussion weather to 
go with full conversion (of whole driver, not only the two obviously
missing points) or not, and there were no final action taken

> -		}
>   	}
>   
>   	/* Read async Admin Command response */
>   	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
> -		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> +		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
>   			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
> -			raw_desc[i] = raw_desc[i];
> -		}
>   	}
>   
>   	/* Handle timeout and invalid state of HICR register */
