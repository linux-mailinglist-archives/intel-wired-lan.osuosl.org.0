Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B77999EDEE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2024 15:41:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CBD90405EF;
	Tue, 15 Oct 2024 13:41:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1KsfSLCiiIQw; Tue, 15 Oct 2024 13:41:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9180405E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728999672;
	bh=utCiQb8d3bVcQ56glhw6NgG3coX1dWoQ86HXWwhz1HI=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pV++jvkOf/ZBVs1h1pCBhTpdBL71RozC2Z6EO1QRLlwSubFOPfYpcegMNqTJ4Bux5
	 TC3NapvGth9LRS5B993PjbNjFIucbLJdIcVm57mtguaIU0YWibYYsgEKDqdgBlleJf
	 BSJJMUMbS4TZHt2RTfB+KF5SFnO80qSB7NRJVEKCC8t8+5jU0RGffge2BYvtPACAhb
	 zXDpJGQN0X/jT5JF9KuaD9vHXxUtkZQvacSu4ROH4zDdJUd7jCxTVkAx+AzR14pPAw
	 3dPZmjEWepJ4kZ/ZMFpXMQ49GZ1j8n8SxmoPfjaGExx6Qjocw2Pd/unAPAJS3U9eUp
	 RJgaiMMDeCp7g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E9180405E0;
	Tue, 15 Oct 2024 13:41:11 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A85FE1BF321
 for <intel-wired-lan@osuosl.org>; Tue, 15 Oct 2024 13:41:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A2F90606B8
 for <intel-wired-lan@osuosl.org>; Tue, 15 Oct 2024 13:41:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aJ1jbhBu7NFy for <intel-wired-lan@osuosl.org>;
 Tue, 15 Oct 2024 13:41:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A3C976067E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3C976067E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A3C976067E
 for <intel-wired-lan@osuosl.org>; Tue, 15 Oct 2024 13:41:09 +0000 (UTC)
X-CSE-ConnectionGUID: p+rLMSw0TCa5JZW2JhUEgQ==
X-CSE-MsgGUID: 5dafCFA8QGKD4/VA1Piegw==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="53802530"
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="53802530"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 06:41:09 -0700
X-CSE-ConnectionGUID: 48qtEcnuSdGO61ON+QNNNg==
X-CSE-MsgGUID: LHYoyraRQjGoUYu/efj+Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="82704774"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 06:41:09 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 06:41:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 06:41:08 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 06:41:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vQaS3rEvXSG+H6FMIstegAQFCVKafIFBE7RaPMNfaEHAdlbZhUh6zhWq+bobYmiHxMEHdoJaPLSP58Bn/E0NVSVYrtOQ0kvLQj0SCCrBO1i2ZisXLDE+i8U5XYh8+avGdxglVJLBxlTVb8cxWC4uAYY8FxjNuHp4RjBn8MbJmW8Dk4y7pJYLcaD1DoJ4TO5eGhlz+CNj7EZJpDwBNIR2WLnOsX7BTcqhANxK5QHDumpRD6F406qirZpAwBAlsighYZa8OY+e9bZtwCRFrK+zLsbzkM7qoj1cXFZetFf0QdGtVvVDPcO3O1FfwrDQ42FaLiZ5lU+nHtiHs3zvyzW5oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=utCiQb8d3bVcQ56glhw6NgG3coX1dWoQ86HXWwhz1HI=;
 b=K4wpobGpeDeEdeWdbGSmMc8SqPdMMtk8M1ut+cfmFOPVy29AvTPS4dYxlJFSdD3CH3kWvfyTLfKolCeVP2QPo2SDYv2QsTIqAvnn8dr6UX3spFpkC1XFJ1IDsORUnpgvEcrZ7cZVTtJQr6oZvmg9Ww/wpMMCvIY4oOyB+voi1b4Qk2TRigJMjX4UyVp11Lt37M9bTzGcWmBok23fgKD/YHtR32uoRffek1h8805BaLw5LGtm5i+mfxaK+TnJ5nG/VRf2iYNKjSIJKCnXeKcmNxhbTDRAlhEfNg24CU0dmZkf7+D30w1LvlFH3fx7tSM9Zz2cJRswtkp7A643llBB0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by SJ0PR11MB5038.namprd11.prod.outlook.com (2603:10b6:a03:2d8::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.17; Tue, 15 Oct
 2024 13:41:05 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%5]) with mapi id 15.20.8048.020; Tue, 15 Oct 2024
 13:41:05 +0000
To: <intel-wired-lan@osuosl.org>
References: <20241011195412.51804-1-gerhard@engleder-embedded.com>
 <f8fe665a-5e6c-4f95-b47a-2f3281aa0e6c@lunn.ch>
 <f5515472-21d0-4a56-a6a1-8431c1d60f7e@engleder-embedded.com>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <9f8c0c7d-49de-db54-c968-c701833c8e5d@intel.com>
Date: Tue, 15 Oct 2024 16:41:00 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <f5515472-21d0-4a56-a6a1-8431c1d60f7e@engleder-embedded.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: TL2P290CA0006.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::6)
 To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|SJ0PR11MB5038:EE_
X-MS-Office365-Filtering-Correlation-Id: 7792271b-c13d-47de-2e7a-08dced1f0475
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aXdqN3N0eU5nQ3BvZ2MwcVRxQ2dPNVVHQXJaQU9TU0d0TDNGR0t6NDJBNmF4?=
 =?utf-8?B?UHQ2MUFCYjBuZ1M3dWkzMTdXVUhPWjFLbW1oMmhXTjk2WU1hb3B1TWJVblhL?=
 =?utf-8?B?MEVzRHE1czhGMHNPUVcwbHF6VDN6T0tMUURPOVAveEJDL1QwTjd5ZnNab0Uw?=
 =?utf-8?B?ZmNpV3NnZ205a3FCc1R0QzZRUjZHWTgwMC9qRE0xVjJUQ3lJZmJyL2tTVHVj?=
 =?utf-8?B?NnRFUGFPT2duT2ZTNElwSlF4Kzl4djZ5UUV1bUhoQUpjamNlZ09jV1Z5eTk2?=
 =?utf-8?B?SHJlTGRJYTZOU0J3Q3pLczVnY1MvemFiOENoOGVkQVF5Mzl6bFhTNENUZFhM?=
 =?utf-8?B?UThkRHFiQ0I5REVEMDhnakFBSlFWY3g0NG1uMFJTTVYrV1ZaSFNHN1dNcy9H?=
 =?utf-8?B?RiszQitmMEk1b2pnTTJzKzE4ajFNdld1VGVXY2tkTTRvbmU3NnVaenNrZGtr?=
 =?utf-8?B?cGR1b0EyL21TeUsvV01Lb29kdG9MSWQvVUhVV1ZSbHVFV1VqRDVMOGdsV3Fn?=
 =?utf-8?B?T0Z0U2ZSdW1sZEFMZlZwZW12L1lydGU1bkU2bjU2bUk2anlMZ3JBRUZNYmNU?=
 =?utf-8?B?WjBKaFoxbHpLTVpnTUZJL1M5S0h3OEEyclFtbU55UHV3SEVDaCs2TnNHWjY3?=
 =?utf-8?B?SnhUZXRRaFdOZnA4cVA1UW9rTGJ6MVNnUk55S2pzQWRVcWQxeVZvV0c1UnB5?=
 =?utf-8?B?cnRZL3BNNkduVEk0NHZDWXh4N05hOTBzZkw0UlN0TGxRTEZpY0NZYUwwYmZr?=
 =?utf-8?B?WnY0bWlUTkxyVG1QU09Nd28zc0hMMm54NUJoc0xDQk04aHZlQUxvd2lRNFNz?=
 =?utf-8?B?UUszazlQb2RPREpUb1dnajAraW44ZFlqR0RXVytjMy9wcHAwcGljOEJ5QXho?=
 =?utf-8?B?TFRXWHBnNG9PZExINlRoYll5N25pWm1XOTdNQVdQSWRxYTJQZDhKM3puN0tL?=
 =?utf-8?B?YlFwcnFjdU90aVZaOTNBaGF0QXZQUGFnK2RDOXpIQmw5WlBuVmtRY3h1OTZU?=
 =?utf-8?B?N0djTWhRS0d1NEFFakxianNTNS85a244WkpNSWtBR3VJSFlsZlREMmFZNnhY?=
 =?utf-8?B?aGJySW9lVWtIL2lFQ1JoazhUb2JJblMyYWxNc2dJS05SMjFqRVR5VmlKaGtT?=
 =?utf-8?B?cm5oNC9UV0dBQXlTSkE0cjJYZnphQTV3RU1IZHp1WDNzSGpKTFEyYlJIS1Jn?=
 =?utf-8?B?VTl3eGVPYnYzamFtYlRkaG43SlRCK0JnQWt5djZ6RVJUd2dkcHpoUDV3TXps?=
 =?utf-8?B?TFFJUndyWU5WOG4vbmJCeDVNSlFjaisxRmFWTVpPUzRNNk9ZU2l0UFNyNUhO?=
 =?utf-8?B?MlZmb3RKekFuM3JyZEVhbllpVk5yWVY0dU9VM3BPRjBhODV2YmwzTmh1YTM0?=
 =?utf-8?B?a01HdEIzaHhqVmtQUjRvSzBlOHFiUFkzODF2eHNiMFNCWTk4eUVmTzN6R0Mz?=
 =?utf-8?B?dDNuNHNpblh3dStlR0dBUVIwNWV5dTJVTVFPaUhTSnFxT1dsQWZmOXY2dE94?=
 =?utf-8?B?LzhsbFpwNEdNVGEwZldpUUFscnprYjJOSnJxWEtGbXlRQVhqZlNtcGhjMEs0?=
 =?utf-8?B?Q1k2NjlDSDB0c2JZMCthUjdMVVV3dmtaZ1NaQkZhTys0a2xjS0NVaWdUT2lq?=
 =?utf-8?B?K0QwRUhzeFl0WHo2VDgxVzhYaW45SXJQeXNOVWNGR2taWjk1RytWcHZGYktv?=
 =?utf-8?B?T1ZCNzFPUmU1QkVlY01mTnlNZ2VzczYzUVlnby9lNlZLdnB1cjkvNWNBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVd2TTZjdGhwenBseXhpVTZIS2F1Wno1UUJYcFUxNTQzbEFIam11T0dsUkk3?=
 =?utf-8?B?MFovbG9HK09aQURNNW1hZ1dQRWk0b3ZGOEtVOWpQcW44VVVRSzhqa1dzTDU0?=
 =?utf-8?B?aE9kT1QyWWY3ekpBaUg2Zjd5UWVSa3R4U3R1bElWejlLVFRYTGZjdTczbUJE?=
 =?utf-8?B?NUhMQ0c4bTNrSHVIUFp5N0c5NnAzUVVtSlNIVzJhNlpUK2dlY1RJeXJLRC9o?=
 =?utf-8?B?NkN2dnNHV0hQcFpDRDZYWUNmT0NmOG1FVVQ0WGtjTE9tYTQ3Sm53aXBiZVFn?=
 =?utf-8?B?eWxLMjJUUnFBR1ZGQm9zR3R3amtPM0s4WisyZWVoS2h1VXNJanBZdjdPd0pn?=
 =?utf-8?B?OUZ0bk16QWIrRDVrS2xDbmc3L0JZUFhiYVoxcFFYdGtrMTgxekVlb0ptRzM0?=
 =?utf-8?B?cXVIWnQycDdPRWZsYzBEZWVTT3VUK1cySE9ra0l4OFNWdE1HNzZnRlliMGI5?=
 =?utf-8?B?b0FCVzJqMk9kaEdiRWUraEJqbVBSWktPbWkyWnMrSGxKako0cGFmQ2FNM1Q3?=
 =?utf-8?B?RitmZVZ0NmRIa0RZVGJ5MmdnMXlubEtIVzZHQzNQbDkvKytWM3h0UGsvVDZ3?=
 =?utf-8?B?aVBYWW81ZEtGNW5qZzkySHdLZkZ6UTEwWU90Q3crNEVCUFlrUis2WHZsRWVY?=
 =?utf-8?B?Yjd5aTRpMnVtbzNZcW1iQjBzNTNtL2E3NlBXeHRIbEFxNkhSVUVoVVlXWFAy?=
 =?utf-8?B?a1Y0TDdGdHlhUjNXMkFGYlVNNk8rQ2xjSGtsY0JwQ3pzaXVTVXU4Vmg5K0FK?=
 =?utf-8?B?NGx4M09tVVV4eDE0ZG1yczJPV1gvNUYxanJOZlhLUk96bGFNSDIzRHdnZkk1?=
 =?utf-8?B?dVhaRHZZbVdlanR3SjVsLzVKR1U5M0U2MFpQWkdGQnNXTTdvYTdYMWIrQTFz?=
 =?utf-8?B?bVRQK3J5U01IbTVZZ29NNHo0U0dDeWROTmJvVlk2aEFVRGpscjE4ZmY1cU45?=
 =?utf-8?B?WXppbEJYalRXbitmL0hFbGxwK0ZCMFl1dWtuNWJaUmJhM2pzWVQyOTJwQTRn?=
 =?utf-8?B?ODd0dk80N0MvSFVvYTNiVjNWaVZaYUJtMkozQlBjK3pPZjA5L2VZSDgzbmN2?=
 =?utf-8?B?by83dm5na1pDcDhTTllTUGJqa1NTbDE3b2FoUlFFREFDRzJCbm41YlcwWmNM?=
 =?utf-8?B?NFBlTnVaQjY0ZGVvRFlFWGUzTzlXRnRHM3dqTmN2bWlzSDNuVktNRE5nNC9H?=
 =?utf-8?B?dXhhdWpRVHlmVkU2ZW56LzRENjZrK0hZcDVGcEo0b24rVmgwdG5GaXlYQ2pI?=
 =?utf-8?B?ZTNRMFozclI4SmRDVlpmWDdtYU1WL0tEc2pVSW1WaEI3QnQ5eWpock5iRHFV?=
 =?utf-8?B?NlBnbWhQV29vaDFZRGJydnlSbHkvU0FHamJEdjhpUWFlY1RzT051ZllROUFC?=
 =?utf-8?B?SWNLdGRVUGNrYXBYMkw1cFhVaTVRQ3ROUDZ2WmZIWm82M2k3UFpkckhOcEh2?=
 =?utf-8?B?TWFuYTlESFpDV3U5WTFkaVBYQWt4bDNUV09uMDllU3lKVXZ0MVRMVWdObmhH?=
 =?utf-8?B?VS9uWG5TNXkzTmE4SE1DQk9YQ1BUZ0FtZndvbEJKZTZTcW45RFpEQko2S0RW?=
 =?utf-8?B?QWYycWVOV2c4eTlMRGk1RFNhQTBhWjJYUlEvcFVmUmtCNVprNjBiWWhTZlh3?=
 =?utf-8?B?Rjk3OHJxZWp3enZydEFvRHZmZk5jRXhZbmpEZWVWME04WUpaMG9ZUFR0WmVK?=
 =?utf-8?B?WE5sTWhTU1huUG5jSlBIeGdFbExlQ0JqSlBmNTVCSEtSZ2xkempXNWxxUkhW?=
 =?utf-8?B?a1ZqbUFzdW82UklnTExEb3cvamo3dUVEdEc0OHpKV2JlNEsxSUVPUjdtRjYw?=
 =?utf-8?B?dTVkUUtxY2xhSUJZeDZSSHh6T3ZOYVZQOFNUYVJRd2hlQkxxV1B3MzhqZi8x?=
 =?utf-8?B?czgrbFZKNFd6MmlOQjN4dlZ0N3BaNmgxVlFFemdGNkJlWnJWaXE5Q00yYkVN?=
 =?utf-8?B?ZkcxVXhrSEtRcm1jMWV0MTB5bTIwMVN6L2FpRGlGK2phZE1qdDFteWZseUVh?=
 =?utf-8?B?OU9OSFI1RUp5dnM2L1FTNnI5K2FyUEpOSzhROFhQd3Y4UktjbG9sdklTRC9S?=
 =?utf-8?B?aWVmSEpHQi82L0o4OFRoMGxaajhBdnYxNjNBQ0t5OTRTRzB1RUZOWGhnOFZt?=
 =?utf-8?B?dy85RzlaTlVEcnN3V3hNSHlVTWxkb3VJSU1RSVpEQWg1dnByVmlXT3hUQWlC?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7792271b-c13d-47de-2e7a-08dced1f0475
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2024 13:41:05.5547 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MbSsmvd0JkMptHvzFp0Mr9+v/tVx5UE855F6jVtQKIoTtfpVcZVNlfhkYLTkG+cuvUO8/IQgBmWkCAp+c9Qnf50GZgDd1BrDL/0CS4dythw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5038
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728999669; x=1760535669;
 h=subject:to:references:from:message-id:date:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=janJOgRrWnIxytGt/x4WNkEWrkS5aTk1cG11JRblLIs=;
 b=RFvEsuzxvXNA2yDoqoQTw2dkQRfXvZmYj6vUEAG3IhQdF0IkFxM7m0Hw
 IXbT6YCKNL9LZv6qsk/XKJtk5zeQPDcWnmwn7C13LWUChi82OsLscU1nJ
 o1v6/2De5ZWeGHmvuyYM48j7dfffEWhedNl5RwJ+TvMlhBqFjDoOrohzi
 KIS7Gv2U7rRFKsn93w7wLNNGi7Reu7OyfjVR0T1ZNqIIa6I0Oopr3nTIA
 KkcmhgNXE8gAUJw5vVpX/rEOwVRbgb1ja0qQWNPw8EL/FiXCuOpXs2HzN
 3+NQPB/JqrAQWamC2WXR3VCOdmOySba+WWxzFkoBbxGITzGuACoz2Mf98
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RFvEsuzx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next] e1000e: Fix real-time
 violations on link up
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 10/14/2024 8:59 PM, Gerhard Engleder wrote:
> On 12.10.24 20:42, Andrew Lunn wrote:
>> On Fri, Oct 11, 2024 at 09:54:12PM +0200, Gerhard Engleder wrote:
>>> From: Gerhard Engleder <eg@keba.com>
>>>
>>> Link down and up triggers update of MTA table. This update executes 
>>> many
>>> PCIe writes and a final flush. Thus, PCIe will be blocked until all 
>>> writes
>>> are flushed. As a result, DMA transfers of other targets suffer from 
>>> delay
>>> in the range of 50us. The result are timing violations on real-time
>>> systems during link down and up of e1000e.
>>>
>>> Execute a flush after every single write. This prevents overloading the
>>> interconnect with posted writes. As this also increases the time 
>>> spent for
>>> MTA table update considerable this change is limited to PREEMPT_RT.
>>>
>>> Signed-off-by: Gerhard Engleder <eg@keba.com>
>>> ---
>>>   drivers/net/ethernet/intel/e1000e/mac.c | 8 +++++++-
>>>   1 file changed, 7 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/e1000e/mac.c 
>>> b/drivers/net/ethernet/intel/e1000e/mac.c
>>> index d7df2a0ed629..f4693d355886 100644
>>> --- a/drivers/net/ethernet/intel/e1000e/mac.c
>>> +++ b/drivers/net/ethernet/intel/e1000e/mac.c
>>> @@ -331,9 +331,15 @@ void e1000e_update_mc_addr_list_generic(struct 
>>> e1000_hw *hw,
>>>       }
>>>         /* replace the entire MTA table */
>>> -    for (i = hw->mac.mta_reg_count - 1; i >= 0; i--)
>>> +    for (i = hw->mac.mta_reg_count - 1; i >= 0; i--) {
>>>           E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, 
>>> hw->mac.mta_shadow[i]);
>>> +#ifdef CONFIG_PREEMPT_RT
>>> +        e1e_flush();
>>> +#endif
>>> +    }
>>> +#ifndef CONFIG_PREEMPT_RT
>>>       e1e_flush();
>>> +#endif
>>
>> #ifdef FOO is generally not liked because it reduces the effectiveness
>> of build testing.
>>
>> Two suggestions:
>>
>>     if (IS_ENABLED(CONFIG_PREEMPT_RT))
>>         e1e_flush();
>
> I will do that.
>
>> This will then end up as and if (0) or if (1), with the statement
>> following it always being compiled, and then optimised out if not
>> needed.

I agree with Andrew, this approach is more elegant and won't cause 
degradation in the performance.


>>
>> Alternatively, consider something like:
>>
>>     if (i % 8)
>>         e1e_flush()
>>
>> if there is a reasonable compromise between RT and none RT
>> performance. Given that RT is now fully merged, we might see some
>> distros enable it, so a compromise would probably be better.
>
> Yes, read/flush after every posted write is likely too much. I will
> do some testing how often flush is required.


I like this approach less, since it might be system-dependent, so that 
on some systems it will work well and on others it will fail

>
> Thank you for your feedback Andrew!
>
> Any comments from Intel driver maintainers?
>
> Gerhard

