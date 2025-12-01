Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A35CC99359
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Dec 2025 22:40:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3F6682282;
	Mon,  1 Dec 2025 21:40:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XGds9fICXxXw; Mon,  1 Dec 2025 21:40:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30C6C82287
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764625253;
	bh=SSpb60f+Ura7xOKp9BKLGvv5EMuhQVYcLiuLOPvVGcs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xlM7jrNPqypw24Zvtzcv5rw2IXbp7VbPufmRUtB3Im0aLWln7SUh91tBGgujSzkdZ
	 DQK72MHQ2Fp1xpUt9QsO1/JnbqteJFQ05UZJlLZr4cMTKAJ9ySiww0hAEzDbGHQgy7
	 Mq0GeEV5RpN5b2/1sDsqtWLhbPJehzJoa2i53msuRWwtHaRtaqyiSArzCz+UhKoXdv
	 kppWmMggE/28zAv0w45hsyXL4fVz+jZLKAkj/Xp9wi42khmAjYAzwpnVf8oYb1RA7E
	 E8Ro8mPuqAZEZ6JQew0eYSkU+WyJmDeLr42hkuxkOvVdgNMWAn82MAO9hi729KYkuP
	 2oansBGgJZxCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30C6C82287;
	Mon,  1 Dec 2025 21:40:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C790E1BD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 21:40:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B93FA40F52
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 21:40:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pstptNs_eQAU for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Dec 2025 21:40:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BF76440F4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF76440F4B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BF76440F4B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 21:40:50 +0000 (UTC)
X-CSE-ConnectionGUID: Ir7NS3z0T+qVH3ZDj8w55g==
X-CSE-MsgGUID: 6N7b1fELRmS9qjj/oU3yWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="66615153"
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="66615153"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 13:40:50 -0800
X-CSE-ConnectionGUID: yFkhYjsITp+RQfQPDxaQag==
X-CSE-MsgGUID: 8NeGwxtYScC6sm0x5S3UvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="194293975"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 13:40:50 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 13:40:48 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 13:40:48 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.18)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 13:40:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lTCjub0/ir/M+1+IJok4TH80shVYPUuy3Fzq1EkMrO8Bi8BleuoaK+PjIbX4W7vnP62prUbwUp4Zg/597WlpyTgeWCB46jKDR0t8D6tcg4DUPcZMDCEfCkTTUbtzfk5dYZpkCS2ydbWQWHRyuffEujF/rk3P8LeUsvp7JjMXMfXzvigVWrlLxp6mqGU/PN5HlSniZN6muhkcjvtlCnjUzS2dAECq/R3/3gd0Drp5QkCtgTSGO683Oo6yQkvgOJvAvTdeCLG4nLJflOP/xBFMVmlvcqoy4kEkILq0zhyx31KapYq4ARoyxPP7/Nop6vPByXUET3V8QZdBBZEQTPOlsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SSpb60f+Ura7xOKp9BKLGvv5EMuhQVYcLiuLOPvVGcs=;
 b=oQeapGgshb5782KDaw1Tgj1e/UmYv9Bs8T5P59yHXN4lS8Z5stF2TkQxAxIGU7Eit6HR+sXQgI6scbInDWOkFQy4HMME2eJkgWnXKG1F0hZv9ZPyVuO47oCh6bPTKAB+g8YzgW6WGhf7MoAzxZQhqz7nZgolSIRRUgAU/y/uky7AzSGESq4UgivCGwzE4HoUJ6QwlZiACf0Ax06QM16lgnzYYqy1ahZslPTo10GbPZ/TbOLg31JJPXWHamHbvv6VRvG6c9NwtwwXn39LZukwLsIOpWk2c4RxLxN5U1pO3CoN5KlkzRDU2o/gwbXIcuitl6vX6fUvESHz8nySyThi7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH7PR11MB7074.namprd11.prod.outlook.com (2603:10b6:510:20d::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 21:40:41 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 21:40:41 +0000
Message-ID: <81053279-f2da-420c-b7a1-9a81615cd7ca@intel.com>
Date: Mon, 1 Dec 2025 13:40:37 -0800
User-Agent: Mozilla Thunderbird
To: Ally Heev <allyheev@gmail.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexander
 Lobakin" <aleksander.lobakin@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Simon Horman <horms@kernel.org>, "Dan
 Carpenter" <dan.carpenter@linaro.org>
References: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-a03fcd1937c0@gmail.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-a03fcd1937c0@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0033.namprd04.prod.outlook.com
 (2603:10b6:303:6a::8) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH7PR11MB7074:EE_
X-MS-Office365-Filtering-Correlation-Id: 73d0d7df-0a61-46f6-380e-08de3122460d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?czY5Wkx3S2NLeVdzTVhPcVpLNkVuZ3gyNmlRa0lIVzNBSzdrQjhyY3VFTm1y?=
 =?utf-8?B?R0pNYjFtMFhJRnR4bW5kdEk3MVZiemtRRnNxUWo4Nks5dXp0RENRQk9pVXhN?=
 =?utf-8?B?MlB0WVB3TityTWpONFVlVWlOVFNqNXFzVUlyNERyUW1leWRiWFA5ekxPNzV4?=
 =?utf-8?B?SWV1UFB5NDNYUklwWFY3cG8rTXZ6endIWWdhbEJQQTRUR2xNTVJ1ZHZnWGNs?=
 =?utf-8?B?NjhSMEJ5VDdhdUYrWFhEUStSUzVjc1p4ZXVLUDl1NnVzYnl2blhsSU9zRjBa?=
 =?utf-8?B?Q1VjT2dUdm1rY0w5OUh0Tlk0NlRYSU5lcDU5VkhkVEQzeDMwVVQ2cUJiRzE0?=
 =?utf-8?B?VzNQNDRreHF5a3JERzRBSkZCdzh0L3JwemNqaUdNdllKSEFhaGhHdjluRFRu?=
 =?utf-8?B?RzBKdkUwUEFyeVZSUEl6Vy95NUlrRGtBbkRwemlFREFPeFlKcTlkS2Q1bXRG?=
 =?utf-8?B?R1hOZ3lZRERqSlZkOVdwKzZ6ZTJ1Wjlxc1RVR3grcEkrWUx1RndZd2JJQlhO?=
 =?utf-8?B?a0tZc1RDbU5IRCtlenpQRVQ2VHo3b3Z3UGF1Vnc3OGZoTHFCbEJHRGNyTWpO?=
 =?utf-8?B?bG5ZdTg0dWFsVXY5VVRydWFEdGRHbVhFcVd1MldvUGp2d05EdEUxWU8zR1NS?=
 =?utf-8?B?cThBN2ZuNlFFZklFc3Y1czF2RWxOdmN5eHIyaUdhcGVWWEhzbW9XdTRFRllj?=
 =?utf-8?B?MzNTa2V4L1lwVmR4WXRtNHlHOXNDUFVZNkN1TzIwUkNiVXh5SHhXdVFrNllV?=
 =?utf-8?B?TVBWdVBhQ2N0bW9ZaDBuNktBaWI0dktVL1ZFWXlPYlNVQk1tbys3dnluNzZQ?=
 =?utf-8?B?ekhHa3EydStBZkU5VWQ0cDJKSk9jbUc4a24rbTl3TXZJT0JCMnRaYnc3azB1?=
 =?utf-8?B?NjhYV1JyYVcraDdwakxkMFI2bXFzTGdSRm5rZkQ0bUgvM25DVlNYays0cDA3?=
 =?utf-8?B?VzRmZkR0ZnhPNGt3U1BlWlNJa2V2a0dmSk00ajFQVEZtNkVPWC9tRkpJRS9v?=
 =?utf-8?B?bkJqUDRCTkozdi9vbktqeisyM3REa2ZGT21Lc0VWZDNRY2p4Qk5zeDlvQm81?=
 =?utf-8?B?clErOVRyNk0zd0drN2xnWG9JblRQeUF1akxSSTRLdnVIejJudUJsMXhCdEtC?=
 =?utf-8?B?R0k2NldoVHIyMEFHNGtGRjlyMDZhdmZXdm5PSGtCN3I4MWhPZjlJSE9nWDZu?=
 =?utf-8?B?Vmx5azBLK0dKQjNwSHdYYU9QNElrUXlEa3ZBYjE0Wk5YV2VndzhCbnAwUXZy?=
 =?utf-8?B?Y0Vpdmk1WkFzUHpkaW0vV1JvOFFFV3J1bU5wMEZMS29lU1VoRWFzYzY0YjdW?=
 =?utf-8?B?TDdSZ2xSbHVBU2R1UHIyZm9pWlBCayttV25HK0ZCOS9abmsxblVyVWxFVWpG?=
 =?utf-8?B?QjhpOXZjY2U0Y3F0ZmxIeUV3blJNckhIRkRPL1VqTitVOHFvMURkcXVINCtU?=
 =?utf-8?B?b1lqT0tuclovdmsrTUwrVU5iUFQ2RkN1cmFFblRoRkhNQ2p4Q3h1c0hOWUw5?=
 =?utf-8?B?SG1nU0liaVlUb3l2MjE3SjdxaVdUaDVWVGFaVno2UmdFT0VWbzQ3ekh6Q1RZ?=
 =?utf-8?B?VGl5TEYvRm8vSGhrUmZYRnJlK3h4VTczMUFLcjhxM0I4V1dGTFR3Vjl6YmJJ?=
 =?utf-8?B?cjNjb2NGS3AyaWVSODlSNllZZEN2VC9qM3NaTE9OTGtyL1FwZHVmYmUrdXh3?=
 =?utf-8?B?Vi9SUUZya09yNjNOeTV1NGlmSGJrL2VuRGlNNk50TmVLazRqdGNsWnU5NW5H?=
 =?utf-8?B?ekY4NllpajVPZjlkVVB1TXN0K0V2T3lsZ3B4UWFDeUcwNEdjaUhGVGhZNnNy?=
 =?utf-8?B?RnZLV25Nc3M4QkRNMjR2akFONlozT2N6MlZmVGhnZUdhcU5yMFV0S0lwRWtv?=
 =?utf-8?B?V25Nbm5kWEMvSjQxWGZJZG5JemkvOC90NEk3UU92RmFOMHc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?akw3akJGYVBiQlRkWFd0WkhPNGQveTNZTjB5bnN5L1RDY2NzUVZ5NWxqM2Z2?=
 =?utf-8?B?NzlCYnl4L1NFcXlSdzFPa3FVZ2lGUjY1RElDd0x4RlRFZVBoQkQyOE1vNG5w?=
 =?utf-8?B?NmxiTjhmNnRoVEtsNUdmMlBpSDlhK0dvQXBIT3EwcGlGbWRCcGdJbDRDd0lJ?=
 =?utf-8?B?VFBoY3J6dG1Iekt3bWZVVVdMdzBKTk9QNENmTGlyekFoaFRsUHNqcGUrQlJU?=
 =?utf-8?B?dFBTNTZiZ29GNmhiejFnYXpKbWxLcHFRTTNvVms1bCtJbzU2YTdtQlFhdTli?=
 =?utf-8?B?RXFycVFlYTRkcDRkZ0RuTFJESlBHWVVuamVvYjBOZElKY0k1Ty83RUZFb2RM?=
 =?utf-8?B?d09mSzZuNVZ6Qi9YMWM2SG5JYTR0ZHoxWjdOZmp2QUdGZjJ3a1N2dUs0N3Fz?=
 =?utf-8?B?VUJ1WHJaaWlXQzVTZ2VsVE1oV1dzVzZmdHVUbThIUGdlNllsMHgxZVlpV3p4?=
 =?utf-8?B?cit6L21oTjhlS0ZWSm8xeVlsTStwczJXWjVrekVZRWZWdEczZFNYYVVVa2Ex?=
 =?utf-8?B?SStPamQ2dXpYNzBaenoweXBnM2F5N1cyZExma2Q2aTBYaGZ6T0dGQjlzNHVB?=
 =?utf-8?B?VVdNbmYveUtkOUlUTyttWHY3VmVqcVV3dnZVMkM3QjJpcTRUOCtMZmVjWHFQ?=
 =?utf-8?B?SmdtdDRNOW11TjIzOXE5Wlk0M3V6bkM1LzdNdjRHcEhqRXhMUDFwRTB2ZGs5?=
 =?utf-8?B?azF6TGRWcmY5VTJoczlFdWRIVVpNTlRoK0FubTdHVkFuQzRNV0ZQaFYwRU5i?=
 =?utf-8?B?TGhlUjJpUEVsSDJ3dDVYeEVoaW1GTGl1NFAydkhrUFJuVEVZc1pmVklZNHQ3?=
 =?utf-8?B?eUhlWGV1NDg2QTlMZlhudCtnL1A5bTh2bDVpQm5uNHFUT2QrUWcyK0grYmo5?=
 =?utf-8?B?R1RWQmdGU3pnaHJzak0rM2tKblJ1WXAyWml1K1lnUC95WVI3a3JSMWYrVkto?=
 =?utf-8?B?blNaQ05jVm4yRTBKZTNidTEwVEQ0bFBkRXdGTlJkMUZ2bmxBMmFjUUI4UTlN?=
 =?utf-8?B?clNTM3VPWlQ1bCs2Rk1LQWRhZFhxNjhqYWE3cmFIL3pmaGY1bGZKZkZrUFIv?=
 =?utf-8?B?dnpvZGc3ZU9VUHRFZTJDeURDQi9XWVdqNkZLMDhGbXlCakxCeDNxRi9iMkcv?=
 =?utf-8?B?Y3FTc1cvSHVPMWxLSStHWFcwL3pXSitQMzNPcnpobFVEcnM5VitVV0NyS0cv?=
 =?utf-8?B?U3pVSWtnNnBybEQ0c3ByWlUvWDY1b1FEbFh3c3VuRzhYN0puUzEvQXN2TTZR?=
 =?utf-8?B?YkpHbmR1cVBPY0NjcitoSUkxbHd2YVBydUluQUxjWHlqcDZBckhJNnBpaVJj?=
 =?utf-8?B?ODRpcHRyNkUrU3RaMmZrM0EvYm9OdFc0UmZYaGNsVktHTmdoNXAzQXZmUkJF?=
 =?utf-8?B?WTJhQ2NrOFN3RU5NMVlBejNIM09NN2dkQVllMCtLaXpiWmlhaDA0aGlyVmFk?=
 =?utf-8?B?cFMvTDFRQmxCR1h6UUUyRlM0WDJlZ01nSzkyVE0zQXJrdis3NzZmYjBVdmdZ?=
 =?utf-8?B?RmhPRU5wOGZjOHBSV0tsS1dtczMxOC9ua1Fjdjlsc1pHU0oyaVRPcUc1SWpV?=
 =?utf-8?B?K3c1aHp0dEtkTXM4anJLYlRhTU85bElrZ0JGRWp6enJpbWV0d25wTWJQUW8x?=
 =?utf-8?B?TVRoK29Od1p6L2ZsanBwOUcrU2UvdUl6UFYzOHNXcm9EczRYWndnSncvaysw?=
 =?utf-8?B?Z1dRNlRpOFpEUnlkbEFWN1hkbE4waThkS3FvR1dvdzJGMUVkaDNTSGJ0dGcr?=
 =?utf-8?B?eHRyazdUL0drWXlpM1JoTWFMYXV0WTBDcVJUaWtONG04YVlaRFZQUXNHVlVG?=
 =?utf-8?B?REFMeHExMi9sRUVoOEZtOG42ZDBYdWpSQ1hJNjY0WU5RckJ0NUN0dG14d0dH?=
 =?utf-8?B?T2FSNERxRFhzL1dWY094bnNPSmt4VzlOUnQyMGdtSVdCdy94RHNBS0FlWkdQ?=
 =?utf-8?B?WmpRR2hkNDRYQ2p5VndoM3h6MVEwTXF1SThrWDF6V2ZUOWNCenAwWjk0c00r?=
 =?utf-8?B?eVlqY1JNVGJ1YU50dEZIMHRyWG16OXR0ajNDWDBYaXp5bUZoUmY5L3NENDZW?=
 =?utf-8?B?NElxSmJRSyt2RnlwUk01Q2tYOW9ZZHJvTTUxR1VTY3FDYWdUcFV2RElQVlFR?=
 =?utf-8?B?SlhiMXpYSTdzZW9WQWVSZkMwM2F4K25BWThwUWlwTFdvM0pMQmtLZS9RRkFs?=
 =?utf-8?B?MFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 73d0d7df-0a61-46f6-380e-08de3122460d
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 21:40:40.9734 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IJZPwHZtC4hg516smUD5q70OILvygmnNkR73TmNEF15/hH+KOdJusESpD/n8Kx0d3p2AyT5NWentM3QuQwQZDw0PH8B/NM28n73t9mQe1Bs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7074
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764625250; x=1796161250;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lrWH0G9mrbgBLxCppQnS2a4bCA0t3ou+EqW5v1VNNn0=;
 b=MEgsttHjFgTgF0GFvFnUqOY5XdKOzzMODGdcZMijEaFcTsQy+x2NHnOQ
 N1L2sdBPCs0o0u376rXAcJTJl1vZA+pW3TUlrrhzz9Uh2IcV99cYal3uL
 Ol6ZFYWmUUMwBx7CAk9zmNIoeMjN2IScR8QPXO8CDNsy+LOHEcZlxXZp3
 4yz+PkIMp4cEyMtdD3c8l1obsXhsiZTQY18T6bpSLOim+o0PT9APhagMT
 LkqnoymuUjFLcl/PLToVdgq+CV5fOFK7vIxu66sug06ZV/9b6IwnoUwGJ
 1GcUt6yf3MYzd7D3t95OybB5C9pCLGYn0JAYZr7/9QX+RF6jvPkt27sZG
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MEgsttHj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFT net-next PATCH RESEND 0/2] ethernet:
 intel: fix freeing uninitialized pointers with __free
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



On 11/23/2025 11:40 PM, Ally Heev wrote:
> Uninitialized pointers with `__free` attribute can cause undefined
> behavior as the memory assigned randomly to the pointer is freed
> automatically when the pointer goes out of scope.
> 
> We could just fix it by initializing the pointer to NULL, but, as usage of
> cleanup attributes is discouraged in net [1], trying to achieve cleanup
> using goto

These two drivers already have multiple other usages of this. All the 
other instances initialize to NULL; I'd prefer to see this do the same 
over changing this single instance.

Thanks,
Tony

> [1] https://docs.kernel.org/process/maintainer-netdev.html#using-device-managed-and-cleanup-h-constructs
> 
> Signed-off-by: Ally Heev <allyheev@gmail.com>
> ---
> Ally Heev (2):
>        ice: remove __free usage in ice_flow
>        idpf: remove __free usage in idpf_virtchnl
> 
>   drivers/net/ethernet/intel/ice/ice_flow.c       |  6 ++++--
>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 28 +++++++++++++++++--------
>   2 files changed, 23 insertions(+), 11 deletions(-)
> ---
> base-commit: 24598358a1b4ca1d596b8e7b34a7bc76f54e630f
> change-id: 20251113-aheev-fix-free-uninitialized-ptrs-ethernet-intel-abc0cc9278d8
> 
> Best regards,
> -----BEGIN PGP SIGNATURE-----
> 
> iHUEABYKAB0WIQQBFRpOLrIakF7DYvaWPaLUP9d7HAUCaRn0WAAKCRCWPaLUP9d7
> HPCSAP4tu8ld+4Og65tjSYNChRqIR4Gn8C546JFeozyQW6uj3wD/SQEPIidSAYbb
> klXrZrKIBOc/avt55S2+krl241aNJA8=
> =guHM
> -----END PGP SIGNATURE-----

