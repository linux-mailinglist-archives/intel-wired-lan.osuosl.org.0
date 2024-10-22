Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 418E59AB845
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 23:14:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF01D40696;
	Tue, 22 Oct 2024 21:14:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ctqx47vq2sHE; Tue, 22 Oct 2024 21:14:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D64C84068A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729631661;
	bh=tQ4NOf6qibiBAatbeD5M+hTiUk4B0dfnRmJ4r6z6D5s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SjxyBSWb3/9nDY+42LL2xe8duzyBZyI5N5wxF3EopQpvYF5DLfaBUql8oaM67jf6V
	 7675fkd9WHyeO67HzlaSG5v81xCuAfSBueLyBnYEVqWE0hxYLj3qryxNRbzaN817pw
	 TafzWEXCiquoZteyhAYGNp3L+oI5sFItD6k27sMGQkMM5RhYkyACG/8WFOCoX+HF8+
	 HA7E5U93efFjcdV3vx8X3hknSAhU4QjDVXPIfgqn7tQj6nx5bvVS6305dh2Br86vut
	 o44vmnyCRH9g8VTEyE5W1zIC5cyWkjMp43sJirj8JjkeI3qBMN4pjCBZ8GAqsLGuG0
	 fLqyQEtvmRqqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D64C84068A;
	Tue, 22 Oct 2024 21:14:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F7FB2072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:14:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4AB7D40106
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:14:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zvgDN49M6NL4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 21:14:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C57A040320
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C57A040320
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C57A040320
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:14:16 +0000 (UTC)
X-CSE-ConnectionGUID: YbT8IaXDS6eqsNonI5NrQg==
X-CSE-MsgGUID: i8T5yfccRLmrGXQlIFnwhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="40563877"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="40563877"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 14:14:14 -0700
X-CSE-ConnectionGUID: 53As6WrbSVuu7w1mo4jNwg==
X-CSE-MsgGUID: RT2W0/YzR0a5ENmX6e70dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="79933141"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 14:14:13 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 14:14:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 14:14:12 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 14:14:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fcvTq72mlwcJyUf0T41E8m1K+AUhptB5VlBi67JKwLK3qNvxBwFclEZsooN2jiOzQsT0iTllJAkuG6yEqp4/vHy3pLb9gp4uo449CJ3bV0IGynd/OaSGLi7j2eElyeoMwSmyNKw47rrdHYQkDqcMP5+sJw2ZObVtRZcrtdCIud49Nm+mwsNEqw56Mv3oeo5HOrzydwFRHxZQFSYIrbYrYlrkrWnAh8QMpRKtLaE22P83Ujuaket4TWtkfkfmeyBcdrEYYq5CcC6tulbCMAZRZyJ3t6d3GKMNXxTEBJxdVY994E0pbZKxq0+YNM3n4zpJ4NFisJ37fGC8vA11CboL1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tQ4NOf6qibiBAatbeD5M+hTiUk4B0dfnRmJ4r6z6D5s=;
 b=TrlCsFRwfG5LK76OJbensPyxEPILEHQmky6//+/q5GQneuvMGKUaIAbbFjmpLCilDKnzC/voZ8ywy9VXrDcTe5FcNoUQ0/HTbStaZs7/zuECvIwlLCfmgbBlQjTIshXO7/8wl5S9HzNqOFe7J2w2sAJ5uI//2QOQ9ys9j2Lrz+Kgb1Df6PcnlgToL2oSLVDisacU1iskcN2W/jvxdWOg6laqiKlzqHCgkacj2JLSlBxSI5BdMrdMO6QxIetky9sgidAStWSpxR/SH1Rd/MnMCzTxQt+lIsw5V4sEN9qwLWbT4kayJ9rP8X7o5B6WCHvUGHmmvQCxW5pFWOGUac1/Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ2PR11MB8372.namprd11.prod.outlook.com (2603:10b6:a03:539::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Tue, 22 Oct
 2024 21:14:05 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 21:14:05 +0000
Message-ID: <6045c48d-f6cc-4961-819e-917933c3e466@intel.com>
Date: Tue, 22 Oct 2024 14:14:02 -0700
User-Agent: Mozilla Thunderbird
To: Joe Damato <jdamato@fastly.com>, <netdev@vger.kernel.org>,
 <dmantipov@yandex.ru>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Simon
 Horman" <horms@kernel.org>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, open list <linux-kernel@vger.kernel.org>
References: <20241022172153.217890-1-jdamato@fastly.com>
 <ZxgEb0N0cJt1BRte@LQ3V64L9R2>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <ZxgEb0N0cJt1BRte@LQ3V64L9R2>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0064.namprd02.prod.outlook.com
 (2603:10b6:a03:54::41) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ2PR11MB8372:EE_
X-MS-Office365-Filtering-Correlation-Id: c7e68915-a46b-436f-8c24-08dcf2de7582
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bFFmR2NHWmRRWnI1U2x6S1N2YlIwQi85THNVayt2ZUlBUVdVZUhyaG9JOUc3?=
 =?utf-8?B?SXBBRWJ1VjBhZk5JS3B4UFNmV3JHaDhLQ1dhTUNYR3Bnb0ROVkJWZlYxeEh0?=
 =?utf-8?B?dmQ5UEZaK01mMEdsdXJaWC9TQmtQV01mYlgzNTljUnpnNGF6ODJNelBKSlJQ?=
 =?utf-8?B?MXFueWZ3dTNmV29zMTNUcHVBWVdwU2xiWE1TSWdYa2NnZEh0ZFhNSUEwNDNB?=
 =?utf-8?B?Nlg5TUtJeForZnNqQWIxTE0wcS9EeFV4VVo4TTNNMVpnYXd1YUsyYnBFYmhW?=
 =?utf-8?B?YlArUytldHNzeGh1L29VNlBlNFpIZk1QWGNzdTFNQzlrZ3I5Tis4bm1Uazlx?=
 =?utf-8?B?Rno1TUdHZ292bXp1ZmtJaC9jbVB1eDhacUNzTnJ0R2N1OVhtWERmNlFLbWY0?=
 =?utf-8?B?ajZRQXpBMXd6eWlJak5FM3NFWHBFNDliNDB6TFlvVHRlZFNtYis2eTJ2MHBB?=
 =?utf-8?B?NldnYjdKRmF0VVYxZlNXb2lNeFIrN3FiTGpiSWlhQlpmUlZzaG5GUkR2YWpr?=
 =?utf-8?B?RlU3bE5IakdPSE1ROU5wYW1XYVJGQWpiVkJkeTBybklqZ09RWDVDcHlzOUMx?=
 =?utf-8?B?WnltQ0NVb21OTzZnNHVudko3VDY2UlFSaUdiZTRqRWJJQmg0QUU0aHZ4Z2Z4?=
 =?utf-8?B?M1M2ZjU5QmFDRTY2c0lTU0pRTmRpNVBMbW42L09MTjlOY2J5T0R3L09ISTJS?=
 =?utf-8?B?ekhSc3B1M3hkbW9NcjZmR09HUExoTDBDb25TTi95MXI2Uk1tb0pHRlkwUXhE?=
 =?utf-8?B?dGNlc3lmZGcwdklEZzBrOTdTc0xLTkNaMGJGZStBU1JQV1pGUVIrQW9UVVNy?=
 =?utf-8?B?aW8wcHVuQ1FkWDhubGpWVFNhUnpvbm1XYlBLZVZ5SDV1VDZyWXJCcUJ1dytF?=
 =?utf-8?B?V1N5RFJwREkya1pHdUN0RXVNL3J6ODZ3YldhT1YrMFhOaVhkK3EwWkpudzB2?=
 =?utf-8?B?UldsUURzenU3R2cyOGlqWWdOeGFzcFpoaExzYlBWcEl0dlp3UHJGckM4T0Rs?=
 =?utf-8?B?SWo1SnFKUlF3ZU1kd3g4ZHZKb1lJRm10YTdsL0oyNTZDcFNxSWs0U3FYbUFL?=
 =?utf-8?B?d2x0UmlQeVlONC9Nd2hJT3J1ZzNqWFZrT041T0Y0VE93N2JSQVlMdDJ3RUI0?=
 =?utf-8?B?R0JtdVdSdDFSZVk5NFdsVUs5Q0lCTCtlSU1MTllnczZFYWV1OU42VHZld1p3?=
 =?utf-8?B?WTBOTXpiOWRQdkhkZWFucmN5cThJRFRmZ1BjQ0RHWUdybG5mOFZMQTFwTXd1?=
 =?utf-8?B?Sm5vMDB5a1pkOTRNR2wwMWRHV3h4N1hDQWtTU1hvZWxuRk9Sa0FIRmRnRDBZ?=
 =?utf-8?B?Vi9Yc1lMeXVrc2M3TGR0eFA1QU8raStHM2kwd0JyQmhaTFN4dm5mV2Rwb1JL?=
 =?utf-8?B?VzRRTFBwS2lZeFZSK1pkRWtSTy9MSG1oaWxFV0gvKzBHMXl2b3pZbmhaYVFM?=
 =?utf-8?B?NkI2anlVUnY5clEveHdvZ25NcDQyS1ZqM3ROSS9iaGxtVGJUekg3bWNzais4?=
 =?utf-8?B?U0orRTJKYzlqRXpGbnlNbzVDYWVBM0xEVHVNSGNzbkJpbFBmUk02NWkvLzhF?=
 =?utf-8?B?M2NGS0FtTW5rcGREVTdMNGdKUGdyR1VHMlN6YllHUU1RdmZCVWtPbmNrZmll?=
 =?utf-8?B?WHJVcDYzWklYRWFqb2xxNTA4U2F1M3V4QTUzQndvQXNXWkUwWHdiQ05JcVpt?=
 =?utf-8?B?ZFQvbTFHSWp1MlUxVXh3YkNNUVNnNGtaT3JDa2lxdXRURnVSYnhOSXVqbTlz?=
 =?utf-8?B?c3l5ZENySUQ0Y2lrOExMTERVNHoxMHNDK1N6VEFUQlhLNmdYZVpTZVBHMUVa?=
 =?utf-8?Q?6AkbOdSOYDS1fDcpfXIZp0wdf8YZd4nxcSI78=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y1BvS1lTQkRxb3F1dkVjY0YrMEkxK3VaVjllVDJwbmNIYkx5cnBYNE9zR1BW?=
 =?utf-8?B?a3l2MzRpRzdVSE9QUXhSOE5xK00wRjRrM0M5dlkvNlZkTGFhTkFaY0xiYmpx?=
 =?utf-8?B?YjJvb05YMUUrdnN4S3lTTXFFYnBwR21qdkR2SDUwYVpUbG9SN2J0OEMwRnFr?=
 =?utf-8?B?aVk3RzBMT2o0L1BIc0R5QnlCaUhXYktKR0pMVWpyVVlDY1BiK1NER2FjZGFF?=
 =?utf-8?B?NFhIaGovYVFhOGVtaHE5elhlREhZdzZpMlhKQjRGMGtxVk5TR1ozYURCUjlF?=
 =?utf-8?B?TDV6cVBQY1FzR2RuMk5DRTJPZFZYaHVXOHo5c09iSzdDdHdjbjNTTCtvaW5t?=
 =?utf-8?B?TGdkNTVWZjdTcytDS3gyUDBHZ1JVUzhhdDVlMUhOem1HM29ITGpwZ1lQNk0y?=
 =?utf-8?B?MjFGWnJSL0Nrd0drNW5iL1JUNXBFRjZQNFVhSWY0OHdFOTY5L0IvOFJtd1ZX?=
 =?utf-8?B?eVNRbXVWTVkyTEtsVEErVS9CRHg1U2ZQSkRFeGw2NVYxTGlPbmlBMTBKKytO?=
 =?utf-8?B?NmgyUUZVc0RFVGZDZm1qaFFCYUVMaVhDZko1d0NRZWpkeFk3N1pVbnE2amJR?=
 =?utf-8?B?WUdyU1dTeHpDM3g5VEZ2SXZZOEl1WjVteGRVTVBTbkl3anNxVVV1S2N4bjB5?=
 =?utf-8?B?dXVzVXNFeTAwWVJGcENUYTlEQU5FcW1aV0h1RVFKSkxNWDhrTWMyZ0dBZjRE?=
 =?utf-8?B?SjcweEQ1MGtqTDhDTGJDQ3hVMFBkM1hLVFpEeTQ3VzFnMkxKRFhJTEZrckhl?=
 =?utf-8?B?WWQ3RUZUK2xpekRkZ0tWazBkRWRnL1hZaktjeEZzYzE2eEw4UEN3THJqVW9k?=
 =?utf-8?B?M1JoVVpKeUJhS0h0RnBLc2gzZ2dhQlQ0UjBoeGdGZ2orMVUxQTlkRlJRQ1k5?=
 =?utf-8?B?THkxaFJab2s3YzlmNUFVVVZOUXhqYm1xa0dYa0ZVNXRENmUvMEtPK1ArRGcz?=
 =?utf-8?B?Ynd0SnF1dHhZeGZQdGJNZnJhWWluMCttR2tOVWh0dXFlQW0yaEd0TFRveDd5?=
 =?utf-8?B?SFpaSGRWNXVPcjltYnVGZlcyektFdzBCUy85aHZHOUdiTi9lVTZvaUcrWG5a?=
 =?utf-8?B?eUNwZkRYMlcvemRTc29YWllRajg5RUtTZ2RMQ25ZNXI1K1drMnJITFRna3U5?=
 =?utf-8?B?dVR4RHhhS3owQVBDL3AveXRXbVFQckJWSUdVRUp1SitMTHpVNC9OSFJsZmtK?=
 =?utf-8?B?eGhlaUJ6Z3dKNjhBSDM5UDBLK1VEaHRmaDJLVDVHODRyamZqSmp6MFpIeHRs?=
 =?utf-8?B?VWQxU2Z1RktDTEo5a2J3S3orOWY4OTREcUczVEJTbThJNTJETnUreU8raFRX?=
 =?utf-8?B?SHgxdlo2V280enpYM1ppWGVLTXpDTUtsbXNsd052V2l5YmV6ZVN0alJ5bTly?=
 =?utf-8?B?MnNNWVVQNW5xU2ZHdENLalJ0YVFjMkoxc0R3VGlFS3dlZ0FaOTl6SWRoTVIv?=
 =?utf-8?B?QXNLMXR6N2RobURDZW93M2hycW9WNzRXRDFFM0JDa0ZZZHhxWlFSeHoyNXBJ?=
 =?utf-8?B?eGhmRFpjZDBXQm8rSnZ5OENyK3VOdHJYdDlRZElWRXlSVjBRdEtTbzlZME90?=
 =?utf-8?B?NTlQTm1mU05zRzJrZE15WjFFU3hScjlpVmRjQmdSVmt5ZTZQZm42NUl3TDZo?=
 =?utf-8?B?QmdXRHlMWXltclpuQ2NjYUF5ZUR0M2Q1NWtuLy8zV2pWdFJaK0dIVVA2Zi9B?=
 =?utf-8?B?WURwMW1qaHVGM09aampONnBhTFdtbHZZSXZEVkoydmI1bTZmeFVQWEdCQnE3?=
 =?utf-8?B?NGdtQ3VKUUtNb3RpYUJyanMybjJSSnJYbElEdFdXYStkRS9wUWV4LzBTNHc4?=
 =?utf-8?B?L1pjNkUwamdvQWVJa1Y3RXBhaCsrYTNabmJnYyt0MmoyTXBkUUJXTGtMQVox?=
 =?utf-8?B?R0ZsNU5jTjFabUlPR0FTV2VLVUppSGd5S2FFZ1hBbzhYenQvZXkvVTczQVN2?=
 =?utf-8?B?dXVzOXlLR0NkbnppUGdlVlBKK2N6aUxJZ1kwQWRNZytrWno3ZU85UVhuOUlm?=
 =?utf-8?B?MU0zcFd5c2Q1Q2lvV2tCWVpFTFppenBWRlJnUDRjV3ozb0VoeEdWSXlXTkdG?=
 =?utf-8?B?dldaN3BQY1ZnL2YyM2ZudDhHMUI2dUVGamVCWmJkamVmTXJrQlB5NGRYcGNI?=
 =?utf-8?B?bnJQenMxKzQyRktJZGtvSjRUdUhHelMvZ0pxWFJpYVdrMFpRUUE2Sm42MW8y?=
 =?utf-8?B?aWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c7e68915-a46b-436f-8c24-08dcf2de7582
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 21:14:04.9135 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L89OOBvuP/fdlmgyrCLX5rSJ6fTx7aG6xVTwyR/HQAzKNFZAWgU9+7ch7f/8oP6slreL1bma44gIM4lcS/l2niyGgmGGksVCz2orgha58XU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8372
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729631657; x=1761167657;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sm6eaANZsYszv9sXLkSqTKsdHPXiJfqFW9IHkRuC3CI=;
 b=TSPZ0yRU0591ptgsgEZwNBEiJZvzpcpqDJa+GMSUnHh3dF4gwspQplqP
 ja/5FntjWSQYPEpofbZHWacjqlaO5R8vcSfcCBYIEOFgHvtwa1/VIxZF2
 aZWF3tvbFY+/O7NPeT/F3HqRRDhfLbC+DFrB0n3atsukmsvWSjWACPnLO
 b2vWIpFeeB9J+ZPOgXWLNOMAhXvbdAwFkQBZI31ffb0pF1F5mOG4LeLKS
 ToW6XYkOhyWsYc8s3USf9t0uLx34IMMd43JcrTUhAaeXNweefBRU0zlce
 tKb33sWviT4nSTsBXcoRWN+B4gBRq59JuFMKUZzIRBlbU3qQpWVyaaQ6R
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TSPZ0yRU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC iwl-net] e1000: Hold RTNL when
 e1000_down can be called
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



On 10/22/2024 1:00 PM, Joe Damato wrote:
> On Tue, Oct 22, 2024 at 05:21:53PM +0000, Joe Damato wrote:
>> e1000_down calls netif_queue_set_napi, which assumes that RTNL is held.
>>
>> There are a few paths for e1000_down to be called in e1000 where RTNL is
>> not currently being held:
>>   - e1000_shutdown (pci shutdown)
>>   - e1000_suspend (power management)
>>   - e1000_reinit_locked (via e1000_reset_task delayed work)
>>
>> Hold RTNL in two places to fix this issue:
>>   - e1000_reset_task
>>   - __e1000_shutdown (which is called from both e1000_shutdown and
>>     e1000_suspend).
> 
> It looks like there's one other spot I missed:
> 
> e1000_io_error_detected (pci error handler) which should also hold
> rtnl_lock:
> 
> +       if (netif_running(netdev)) {
> +               rtnl_lock();
>                 e1000_down(adapter);
> +               rtnl_unlock();
> +       }
> 
> I can send that update in the v2, but I'll wait to see if Intel has suggestions
> on the below.
>  
>> The other paths which call e1000_down seemingly hold RTNL and are OK:
>>   - e1000_close (ndo_stop)
>>   - e1000_change_mtu (ndo_change_mtu)
>>
>> I'm submitting this is as an RFC because:
>>   - the e1000_reinit_locked issue appears very similar to commit
>>     21f857f0321d ("e1000e: add rtnl_lock() to e1000_reset_task"), which
>>     fixes a similar issue in e1000e
>>
>> however
>>
>>   - adding rtnl to e1000_reinit_locked seemingly conflicts with an
>>     earlier e1000 commit b2f963bfaeba ("e1000: fix lockdep warning in
>>     e1000_reset_task").
>>
>> Hopefully Intel can weigh in and shed some light on the correct way to
>> go.
>>

From my review, I think we need the RTNL lock around this function. The
deadlocks mentions in the fix lockdep patch appear to be due to having
an *extra* lock which could then cause issues.

>> Fixes: 8f7ff18a5ec7 ("e1000: Link NAPI instances to queues and IRQs")
>> Reported-by: Dmitry Antipov <dmantipov@yandex.ru>
>> Closes: https://lore.kernel.org/netdev/8cf62307-1965-46a0-a411-ff0080090ff9@yandex.ru/
>> Signed-off-by: Joe Damato <jdamato@fastly.com>

