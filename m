Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBhjA+tYd2lneQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 13:07:07 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF3588015
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 13:07:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6271460B98;
	Mon, 26 Jan 2026 12:07:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JKStg5wjHTpw; Mon, 26 Jan 2026 12:07:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C499960B9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769429222;
	bh=1tIkbAR6ahu8d3gPd9OmSR/lQzO6LlAS7FJ/8wEZ2DU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1pGLhnAVUOodB9MWzSJmQoFaSZdhZCHJrsZ+jYQXU/NEiAKdLw2K52UVL6row3DTf
	 nAfNmhOkbWTHqRUNZ8irUh99Vg6/Tin/omOklBpFCaZFLcjoAwlrTGgGCWkt2B/dop
	 HXCUjn4wCGaIQKZkiMNHWKvGBYciFkEadcSJNeisdGQCkt5JI2BvvaLCZ/5E2RSBwn
	 yP8rM6Q4j4V3Yrspl+hNCFCd4rFeb0CnDf9moRsU+PDNY5zBZmxA/ausxoNvVR9/Jk
	 nPX4OasX8A2wHH7LErhSPva/ZPgCshmu7g2j0VgO3CDbDSg0AMRpDe2jDRpiI8AdJ5
	 nlyoXEkhXrr7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C499960B9E;
	Mon, 26 Jan 2026 12:07:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C95531CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 12:07:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A4C8740859
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 12:07:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 08k_PZsryYrg for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 12:07:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C316940847
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C316940847
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C316940847
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 12:06:59 +0000 (UTC)
X-CSE-ConnectionGUID: MM3tQwq1TT+C6VaEqUKk+w==
X-CSE-MsgGUID: 3WjRQdhfRLuk1f44ga5Otw==
X-IronPort-AV: E=McAfee;i="6800,10657,11682"; a="74447059"
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; d="scan'208,217";a="74447059"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 04:06:59 -0800
X-CSE-ConnectionGUID: PSYIk4eTT6i0fjtiaHNgGg==
X-CSE-MsgGUID: 0GxJX/+gQR2EiuSF/hABVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; 
 d="scan'208,217";a="207264490"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 04:06:59 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 04:06:58 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 04:06:58 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 04:06:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D2KJZZlJjOXgIFyT/mtSOIhbIraOruSCv4uNlIZ9b1Z6xhqIymQaovypxrpZdPA0ITj+6d7M4ozj/SwAEgvtwpgDGA2d+zra4bajmZ2ex+sX5N5MsOnYOADsuNVMNIbdpACD0+gIcoNWU72cOWp91qYIt/ISZtr+KO5qFJW5x6TAjwLBacWL8Sv9OTYO60SUjMnJYVDaDFyBeXgz0P9UXTVQYJ0S+dw74IGmqlpzlRB1Smfck83kIZZXrX4YmkKZLa8oo8JSvfDDvx9POe/UCZkli5aNF3HzRZhdh3B611YU/BULb2cwNCN5Ajy1h3RD7lSFRDl7K8HRV+iJMprWgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3u8z7O4A+AXN9NVTwBtzQFbuTKJYXlbRAaRLgHvuyvA=;
 b=YsJtFEjUvwMHUbVFZ9oP34pnQ+O9Q679VgHv/q4lsEy0tMLQeQi56JTXJdg8lUHYXkDgYbE1qOpxPr7qPxX/T1mAGKNIy+NTbYWmAYcNz2n0+kmmuzmEC1AaC6WRrQ7MQagXKdE6T1+rBSea038BvQsCS6UpW5WRHUHfEis041IWi9P8NhTZ6qw9TwZn9Tc2h641SHXfts5bU3fymjvDvgHJ2pD7AZDVmpLzkmL0N/xanVKiHrjbWtbQ/SWG9ZX2c1IZcTFAqxwxplLlXL3O4IzX6S6tl9t+JF/k/HVtFZ7s9EZXwKi2G+X7+CwX4Bk0fuIi5lXgbs4XOIQ7ndj/sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB8021.namprd11.prod.outlook.com (2603:10b6:806:2fd::21)
 by IA3PR11MB9208.namprd11.prod.outlook.com (2603:10b6:208:57c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Mon, 26 Jan
 2026 12:06:56 +0000
Received: from SA3PR11MB8021.namprd11.prod.outlook.com
 ([fe80::a8b3:7565:9b2d:6789]) by SA3PR11MB8021.namprd11.prod.outlook.com
 ([fe80::a8b3:7565:9b2d:6789%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 12:06:55 +0000
Content-Type: multipart/alternative;
 boundary="------------UNgP5DdaoqOcIm8pir3H0GFj"
Message-ID: <520cb8cf-62e2-414d-af33-6ac28c598f45@intel.com>
Date: Mon, 26 Jan 2026 14:06:50 +0200
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20260106141420.1585948-1-vitaly.lifshits@intel.com>
 <20260106141420.1585948-3-vitaly.lifshits@intel.com>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20260106141420.1585948-3-vitaly.lifshits@intel.com>
X-ClientProxiedBy: TL2P290CA0007.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::9)
 To SA3PR11MB8021.namprd11.prod.outlook.com
 (2603:10b6:806:2fd::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB8021:EE_|IA3PR11MB9208:EE_
X-MS-Office365-Filtering-Correlation-Id: 501931e9-ab1f-41d9-c7f1-08de5cd36638
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a0dyb3lhRzNnT1BTcHRRT1ZmQkt5Yml3R2FhUHl4cEIzTkU1WnpHKzRBejVu?=
 =?utf-8?B?czB5aTZPdWRUaWlYNW9tQm5na01NWENpa2p5bGJaRjRjWUtwWVhBY3BwU1Mr?=
 =?utf-8?B?QnUybjdMU1BhVUU4SEtyeitOaG42WXRhOFFYNHArQ05HbE9Ddlk0YlZobUk4?=
 =?utf-8?B?NTlXK3R6UVRsWDRXbis4VXB4MEs0OUhPTjUyUC9qQ25jZ0JvaG9jRVk0WnFH?=
 =?utf-8?B?WkxXcUZKT2tTSjVWWXZacHBkNWltUVhBTTRheWlsY1UvL2Z2c2hxSTNmQ044?=
 =?utf-8?B?dWRLZTBLQy8rQ3ZEWjVycGhVNEY3WHExd29MSGNseGNNeC9FUDBGWHNhNS9P?=
 =?utf-8?B?SnJ4OGN0MjYzRWpkbXg2b1owbVRGZ1Arb2g1alIvbnp3ek13YzY4Wm1qbkVY?=
 =?utf-8?B?UFpyWmpmbFdsOUtMN29xVElnWEZYS1pCeGVEQWZKNUxjMXZ6OFRsSHExeVJV?=
 =?utf-8?B?U0Q1WXhYVlFMNlZlUmJEVVdMRDBXczdwYTQwOG9ncCsvNDZLdGY0cnVKSG10?=
 =?utf-8?B?Q2NBTGVUZG04MzZjTXdJYlFYWEhNeUxJTEJacE01cEtaV2RrRzZzVzBNTXJG?=
 =?utf-8?B?TEFKcFVST1grRExoVElKY1YwbUxObjQrTW9KbDZyU0k3cDFkNGFBeUh2cTFy?=
 =?utf-8?B?NkpKVmdaMGRla2ltL2tHVWt6SnJ0bXdZcDUrcWtZZzM2Y0NPYmZZVWRXN25G?=
 =?utf-8?B?bC9ibjRwRUxnUVFlR1FqdXkra3J5cy9mUU40K2VRSkFEbWZ1R3lQNmZpck1r?=
 =?utf-8?B?Tlp6MGNQMWV4a21lZ0xtU2tMYWJFS1FNV2tXRVRlU1pTT2RCaG8vL3plZHd3?=
 =?utf-8?B?ZVRkM1NvMnNlZWhVNnhuWlJoYjQ2WHlLUjk0Q05oN29FNFhNSXhyOUhMUmNa?=
 =?utf-8?B?WTdKSEhwMnpqNmJ0V0cyRndzb1ROVTBHYWFFcWlEMDlkVFF2QnpTS2NLSU9I?=
 =?utf-8?B?WHVkaS9abEo0d1k1eXpEL3VETnZDSWtxaGVteTJWemZ0ZkwwSW9yQ2plUGhR?=
 =?utf-8?B?YmdsOWxnakV1dEl1a3ZJblBRQUxLczMwVW1IbDVmTG9lRENuTGZqaVV1NEFm?=
 =?utf-8?B?Nmg2cnZmR2tzcG56UmQrRUl2UjdYd1I4YWdCY2FIc012dEpENVVYVHlYRHBu?=
 =?utf-8?B?K1BRcXpIdUhDdTlyS29tNlRuZlZrZ0VOdDBDbDhva0NEOTZhbGRUQ3doWnQ0?=
 =?utf-8?B?K21QNGtFYWhFOUg4bEhmRlRhdU9QU1hWTXk4RCs5SlJwVkdsUk9XRG9FZ2lO?=
 =?utf-8?B?ODN1eFR4anViS09LdXZxVjlZeGFKdG9LdEtkbFF5K1BxVURvU0p4Z0dUcXBX?=
 =?utf-8?B?bzk0RTBNNWx1SFBGL1VQeWZMMG5MOFAwNEVJZnJldjE5SmQ5dk9hL3RrZ0RO?=
 =?utf-8?B?ZjNRSFBydlVydmIwdkxMekNBMWtldjBjeFhVdjNxNytZRUErUVY3N3pXK0dT?=
 =?utf-8?B?SzlyNDM0N0FlTDJrUkdkU0tRRWdiRi9JU2I4Ynh5NFlpQ1o0U0VsZ29NUGYz?=
 =?utf-8?B?Rm9tTlgzRXRJekJPTmU5cFdIN0pyaE1EZWorZVNEbmFPdFRML0NWOEVhWkNL?=
 =?utf-8?B?b1R6Y2V2Q083K0JDZnpTd09WeUt1R3Nvcno0NCsyYkdyM1BmR00zTFI0L05n?=
 =?utf-8?B?bmlXaFNvY3RxYTdJTHhYdXl5SUgwMUxiVUpqTjVtRHExc3JGUHNKNjZxN0FO?=
 =?utf-8?B?bzZvT3ZXdnpZUGtUTXVXaFhMZ3V4VjhCWFFqSzdEYUQ2VlNlM0s4ODB5bzRL?=
 =?utf-8?B?bVBPV2UwNnRZTDZId01Xd1RtcHZaOXE2WTRaa0dZdUpEOGV5cjNWTGlOVk9n?=
 =?utf-8?B?OVNreHVnVFEzQXZvS2tjT1JzU2xVZzhoTEQ5YzJiVlhBMU1lL3BlZzJ3TEJW?=
 =?utf-8?B?Z3NyU3cwZzQva0hTSWI2YWlZdnB2cUx0SDBqTFYxQXNhNTA5UWlYaTBYRTl2?=
 =?utf-8?B?NkR3MjltSHN2T3c0Q3IzeE1iUFl3WlY0N0hCNmpIaFR4bFBqK2dQMHZiSjZv?=
 =?utf-8?B?R2pLRXd3U2l6VzhtQVNXVGE5cEtsTlczNnRaT1p6dlVabUJCVFpmd1BGQ0E5?=
 =?utf-8?B?UHNWeU1vTGxrTEpmU29lZE16ZytzcXBpM3ZnaHJwZ2o3QlZNb1doYXkzWXVY?=
 =?utf-8?Q?gY38=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB8021.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXRsaTR2emRQNkhkZVgyUFh1RHN5NFBmandtWWlyU0VpalI5UFZmdUZNMFZK?=
 =?utf-8?B?RDZlNlZoTUpIQ2xubmNmM1BlY0h1M3lrMlA1Uk1RVDdScEpIayt5aGlYb1Iy?=
 =?utf-8?B?cVNnVFRKOVBVMG43bkQvR2gxQ0J2YU00MG0xaElqTmRwaGxqNjNyTUhBWFhk?=
 =?utf-8?B?UW9aQUdoZGJ5SW5Hdmp2bVFuR1F5NTNCcUVoKzJLbHc3T05mNXVNT0k2VERK?=
 =?utf-8?B?amlFem9kdUlkU1h0VmxWOEZOczRORWRWZ3g5SGlUUUpKSStuOFd6MUg4L3Vk?=
 =?utf-8?B?alhkRWhJVnVKQXFEMTl5a0ZlZ2E5YUhMQ0pENk45YVNyMGpRYXlmTzBkc1dP?=
 =?utf-8?B?clRIUzN3MGEyMEZJTnhMc1JwUXcycDZHOUkvWEdwWHJGM28vNE9kdzExRHR3?=
 =?utf-8?B?b0RXSG1IZE1KRE9HTVFtZjVmbUIvTDdBeURCblEyRWxhVmt6SW5mMEZVbVd1?=
 =?utf-8?B?T1dBdzBpQUhGV3NsRUE3N3hkSWd2aWFtRHZNbXcwa2IyZ0dPTlhjWTI5RGJz?=
 =?utf-8?B?ZUZuK3hKcHgzS29iN3k4NlZmcmFWY2RzSjVvOVZueUVhRExBTUFlWWt6RkFk?=
 =?utf-8?B?YTY0bndXdmlBU09uUjhIbWJSMjJqT01kSUp3Vkc1Tm5hMEMvRGZLU0JiTmVV?=
 =?utf-8?B?NnhGbVg4MmhVaWFUOHpWUmdIQzBGSWZ0NW5PZ0JYNjRRTDJNOVd5ejI4dE5R?=
 =?utf-8?B?YUVBRllQUGcxV1U0VXpQSGtGdHlEVXgrSkU1SWtHMDUwUTZTRXBWS29aVm1H?=
 =?utf-8?B?NkJJWStTWGYvUnZEaEE3WmpGRURheGJSaFBVQ2MvR1FZUEhKVU5VelQrcFI3?=
 =?utf-8?B?c05YRWFGdTJURmtYampsZ1Rhc1BpcHlUbzNSTDdJT3I0MXZQWmk2Z1hNcTVV?=
 =?utf-8?B?WUkrTW9hTys3cUZtTm5SaTkydFRNN3BadmtlalhJODBpVm5sd2tZUUE5NFBm?=
 =?utf-8?B?Y0gvWFlIbUtyaXNmOE1GaVBkUUovM0RQeHFyYzVzcW5mdnB4c3RVMkw5KzFx?=
 =?utf-8?B?bStaVUZPOHN4alArUkdLZUVIUktYSm9md0tueDNJajRhaDNOZExWUEJIdVc2?=
 =?utf-8?B?akZrVlFkWmVEZ3ZpdmtXa3dXVER5bHUrWkl2RHV0enVrNHI4NHk1YlQrVksr?=
 =?utf-8?B?WTZSdm1zc1dZdTgxNHVzNGExZEVWYTFCODlGejRXMXJqaE5XNkRtcURkUC9V?=
 =?utf-8?B?UWdzK0dOK1IwcjBuSDUvMWhuWGJONjRNcFlseExYQlQxOFRNZ0I0MFJpaHN2?=
 =?utf-8?B?TVRWRVUyTWMzcWR5MFJ4K3NRcElWS1lhV254Y3FUYnBFcmFjRlhBc3hVSCti?=
 =?utf-8?B?ZjBMbUNtdGhIb25LMy9Hd0tsMGhPelN3RHpWTjJWOXUxRzVTdnhGSi80UkUy?=
 =?utf-8?B?RFB1Y01CWTdqOEZvcnNkQ2JrV0l2TmthQ09QY25qTktiVFIyM1ZVRm5Edksr?=
 =?utf-8?B?YXAxYW5mOXRYYVg2ZUtkUVhreDZjS3dZK1drbDVlSTk2TEk3dmZvM2Q2UVFt?=
 =?utf-8?B?MmFBS0VldmxrQ1dBZituUXhnYUM4Z1JydTRLbzFWQTFKc2pFY2d1WmFMM09y?=
 =?utf-8?B?UVpFOVZGMlJlTEJqSExybzhRNDJrbzVMbVFyVnlOemtERjJvdWZ5S1p4MTRZ?=
 =?utf-8?B?VEltRXA0cmZ0cUtKUEYxWVVMVmwwT0ZZZkpoaENQQ3ZyTFo2dThmenlobFV4?=
 =?utf-8?B?QVpoU1M2UzBWUmdTUitVeDg4YXVUOUtLakdFVWZGZmgzSHo3TXRuMGN2Uk4v?=
 =?utf-8?B?QTdPSlVoT0dmT2lOL2gxMmZpQWhjQm9PVnloWFVoS0t5V2RZR0JQZHcyNUhh?=
 =?utf-8?B?Yyt3VWFmUGw2Ym1tZHdnU3hpVzMyYlphcmtpYjdHYUlneW1lVklpWE9zZUxz?=
 =?utf-8?B?Yzd6VWMvaVFaWk1IUitHc0U4b0pMUFV0ZTBLZGlhOUV5ME5hOUJPVDhZYjdx?=
 =?utf-8?B?b1RuaTRGQ0wrbE9Ed1lBKzBDZGxJbWhibjNXYWtld0h6Z0RPV3NVUjYzNTI1?=
 =?utf-8?B?WnJRWVljT3VJeHRNcWluZzhCWDdoWEtSaC8va2cwTHIzbzRFakFwNFc5VTFh?=
 =?utf-8?B?bTh0R1phaXk1cHBJUGxJTWhZOW5ZY3FJWFFHYWlhRXliNjBWTCtnaktCQ1BE?=
 =?utf-8?B?NlV0TnowRE9IaDVzejdKUytGc215Qzl2b0xGSUpwWWxyTkRFUkN6Wk9xZGdU?=
 =?utf-8?B?ZDFFSlAyN09KMkowYUsrRkNZaUFqU1BINXlRWG9qOVRUa2V1Qzk1a0FtLzFo?=
 =?utf-8?B?RnNwUWdPTTh3ZVl3Mm1rbDlsRTNVZmVoOUpTNHdEaVZjWnlBR2wrR3VFSWVS?=
 =?utf-8?B?cHdUZ0UxcHFzcVlBclNnVlJlZkEwYTIweHNvQXIrdEg4QzNHTGoybEE3Q3BM?=
 =?utf-8?Q?tOb/MXG04l645X7M=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 501931e9-ab1f-41d9-c7f1-08de5cd36638
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB8021.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 12:06:55.8570 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EHwa+mN/A+hGOWwqXUp9hHEXGtTuEtIe8lmz4o0ogG1SImrs+qPW9fMiVE9CTBEZ2iVKSnSiZtIeVEVKsDil5vQbtvYtpjDZ98MuITXAuPg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9208
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769429220; x=1800965220;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version;
 bh=udh5kb9QXYK+4bssF+HjSB7NVNEydSG3EYf5pHj3fNQ=;
 b=FMgxTOEve7T9p6EIwoEwM3qGHLeK0hP6ibM4XHYRlHgYaZc1CQx6TYC4
 D4XgfxAlqfmagFN/e3SARUozY7sXpJiSnp8M8atPuHpMLBdnrAzznQa7Z
 WBEVYTHnshh1f/5R4/5FPleXm7Ne+WhSbNtTcKIitfvdlgBEA0YQMJaet
 7OJGjn0/wGuWbitfrgHGbT8LinG4eq4Ewhcl5abNr3N5czXG7rDAahhl8
 +SpDn6RpjgHz55BfctbSHm2m7hBKBSDsNCQOpZRxy9Vh+NTGlhY50fxGQ
 XIVFjocUoeIM33KaNGvQHwrcanzb3GcJtv+Qk0Sa8cthJtGi+G9SjkBJI
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FMgxTOEv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 2/2] e1000e: clear DPG_EN
 after reset to avoid autonomous power-gating
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vitaly.lifshits@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: EDF3588015
X-Rspamd-Action: no action

--------------UNgP5DdaoqOcIm8pir3H0GFj
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 06/01/2026 16:14, Vitaly Lifshits wrote:
> Panther Lake systems introduced an autonomous power gating feature for
> the integrated Gigabit Ethernet in shutdown state (S5) state. As part of
> it, the reset value of DPG_EN bit was changed to 1. Clear this bit after
> performing hardware reset to avoid errors such as Tx/Rx hangs, or packet
> loss/corruption.
>
> Fixes: 0c9183ce61bc ("e1000e: Add support for the next LOM generation")
> Signed-off-by: Vitaly Lifshits<vitaly.lifshits@intel.com>
> ---
> v4: fix commit message
> v3: rephrase a comment in the code
> v2: fix a typo in a macro
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 10 ++++++++++
>   2 files changed, 11 insertions(+)
>
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>

--------------UNgP5DdaoqOcIm8pir3H0GFj
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 06/01/2026 16:14, Vitaly Lifshits
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20260106141420.1585948-3-vitaly.lifshits@intel.com">
      <pre wrap="" class="moz-quote-pre">Panther Lake systems introduced an autonomous power gating feature for
the integrated Gigabit Ethernet in shutdown state (S5) state. As part of
it, the reset value of DPG_EN bit was changed to 1. Clear this bit after
performing hardware reset to avoid errors such as Tx/Rx hangs, or packet
loss/corruption.

Fixes: 0c9183ce61bc (&quot;e1000e: Add support for the next LOM generation&quot;)
Signed-off-by: Vitaly Lifshits <a class="moz-txt-link-rfc2396E" href="mailto:vitaly.lifshits@intel.com">&lt;vitaly.lifshits@intel.com&gt;</a>
---
v4: fix commit message
v3: rephrase a comment in the code
v2: fix a typo in a macro
v1: initial version
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 10 ++++++++++
 2 files changed, 11 insertions(+)

</pre>
    </blockquote>
    <p><span style="white-space: pre-wrap">
</span></p>
    <p><span style="font-size:inherit;">Tested-by: Avigail Dahan
        <a class="moz-txt-link-rfc2396E" href="mailto:avigailx.dahan@intel.com">&lt;avigailx.dahan@intel.com&gt;</a></span><span style="white-space: pre-wrap">
</span></p>
  </body>
</html>

--------------UNgP5DdaoqOcIm8pir3H0GFj--
