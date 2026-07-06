Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f+Z3AY4WTGqvgAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 22:56:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0AF7158E9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 22:56:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=auRzRFfK;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 706D380F55;
	Mon,  6 Jul 2026 20:56:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ygO57NJW5QZz; Mon,  6 Jul 2026 20:56:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B66FD80E80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783371400;
	bh=zDs8e1C/YuVjBLb1xhxCAEJ++jECD8scUUEFm9insqs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=auRzRFfKSGEXUZeY0xN5Xmj0BEE0VYtIRGr8fifAVBTGvuRWGr/kjA3TsAxz/FeSv
	 4arzaKeNiflIxXaUSfNFLXMTpW3lpN3MDqOVceb+YmWZe8nZ0nYw5w2//P5amEm2Vx
	 hd2rbIT1xEGTlogKoU2B9fz3qzo9d9f7eWqka1FbW+22TpapyWdkH+aewpeD4WZV5X
	 9YftOUaPlZRg72G2FHiCgnk+RCtLbGT9FDAW/1NIba8cnlasXsdUFf/bfV0f23timX
	 fXIPTWFm4vJYkPRme20rpSIOAbk2dGco6SfL53giFfUOjVfXENzYjD1+YaQtFuFnyh
	 64qvZHKFvHYfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B66FD80E80;
	Mon,  6 Jul 2026 20:56:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 43CFA11B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 20:56:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 297E640134
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 20:56:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dUwHWZp2iZ6o for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jul 2026 20:56:38 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4433A40131
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4433A40131
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4433A40131
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 20:56:37 +0000 (UTC)
X-CSE-ConnectionGUID: QzZkLSfFTX2/b4pw0JU+TA==
X-CSE-MsgGUID: dVfxAvJWTOC76xvi3KCkvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="101434575"
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="101434575"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 13:56:11 -0700
X-CSE-ConnectionGUID: 7QgmnOeETp22xkRRjge/VA==
X-CSE-MsgGUID: RNQ0pOQRQI2larg28CZxVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="258131314"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 13:56:10 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 13:56:09 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 13:56:09 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.30) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 13:56:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PFYlyFiAFyLgph2gJ82wIVeR7FQNe92IdTsJvcJ5yXepXHiHfbAFXf5bWcRiJapkMp/9e+2co1lOfxVY4QWAzvBkTy7mxd1RF9mM8PPeRNZW5aWAawLT6+l5isi7x0cuzpvVUue0OH8DpIKVnADxxevJAFzSfz4ARjUhuwUsXmsOeFmY6JRjqtaWogEDRQlIwBa+lGJ4fLSqHMyDXukW9Ll3jZ3sIpSpHMIQFLzRYkg4XfB+U5Z6BjhMEOQZbAu8Cjf+HYlpDzDryV+qUY3G5WVTOHyRlHnJdiZ9BOjIbAKsiFijzrWP45djktLKsDnln/4O6IUuLBiTysQmPf556w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zDs8e1C/YuVjBLb1xhxCAEJ++jECD8scUUEFm9insqs=;
 b=hOXjIZlDlYHPiAdn6ajEmmxzaEKC+SD0xrXRaFvFaBr5snJZbahLsZegpnZxOvBrGS/a2dOMAp5jriXzTjWrFvPjT6e4VY9fNe5XX9fHWDBeDGIs+DOF9mpUBN6O2XH+JLVKUoxK5klTDmfgESkS8ImnuYZORWJs96UAxUDCus2hfqMjy3xM9WkwgoD09x9UeTJuth4ahW8ujkQClVQ8HeXsmJHmlZfNwi1hGxpodK34bHxLRGaYIn/oczv7PiMa1VjNv4YgjSgviqVEkFQW2yJe3eGYIONv1R3k9xp2JuK4D1n1SCEXiTnqtL6ZVcfjF7VkfwusLL4mTKPsyIQV2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7381.namprd11.prod.outlook.com (2603:10b6:8:134::14)
 by DS0PR11MB7829.namprd11.prod.outlook.com (2603:10b6:8:f1::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 20:56:07 +0000
Received: from DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58]) by DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58%6]) with mapi id 15.21.0181.010; Mon, 6 Jul 2026
 20:56:07 +0000
Message-ID: <84d1fa48-6bfb-4fed-aade-646731ccebb5@intel.com>
Date: Mon, 6 Jul 2026 13:56:04 -0700
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Robert Malz
 <robert.malz@canonical.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Jesse Brandeburg <jbrandeb@kernel.org>
References: <20260703103245.374800-1-robert.malz@canonical.com>
 <65001d57-9abf-4129-8c7e-e7a5136ba5b3@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Content-Language: en-US
In-Reply-To: <65001d57-9abf-4129-8c7e-e7a5136ba5b3@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0270.namprd03.prod.outlook.com
 (2603:10b6:303:b4::35) To DS0PR11MB7381.namprd11.prod.outlook.com
 (2603:10b6:8:134::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7381:EE_|DS0PR11MB7829:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f54df15-7f74-4e78-e253-08dedba10004
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|7416014|376014|366016|56012099006|4143699003|3023799007|22082099003|11063799006|18002099003|6133799003;
X-Microsoft-Antispam-Message-Info: 7ev8QdSfG/BMbaCE+9QJso5sLrp1qJRNgQCZHk1zdiK3EHxZViku0VetahhgBTA8Z8ovW4QNeh8iOXWhCKl8esuQMbAYVzzxjGaUPbYgbSQD+GL2GPIZd0TLPFyeZAN3l3KiJKTjgPpilIUcsNTHXB5dETsMZvGclRnWFLeu0XqyYXE5s5bAKAq5LI6PzJ/5b+H8jBgEZZCPR556inpFO8b/PAAEDHgxlLLdwbCHKL2+sUOjJlAccprtyXEXecspG7gg1y9iEv5JFUH1aYyQhKpTBRdtO9m0KCbWCdwXcS7+0uANnLffxGzEBNHDUfcc6L3SvQQ4i/IRIwovf2SSCQiFVMO+CPg89BF1u/G1wW5fxjEIiO1Luh3nITfHJE1dm6s5jhji/TC0i3B/R1KpdbwuGcwDPSZUfSODFerGgmYokoLpTfL/0zAacQh4JqERy3xg7npaN/3wmoIvAvPx+9BjS2FN5nDW/lcjkLe+ojSCq96ahdTYpkW1QauGBEJR98noQMd23SjiSN6wOYvWyuaD+xPJLQasmfT1xPzuIDWC3nnT7LO63jQdsIqkqUApoODwpRIUiDOpkU0SE/Ur2ZKQ2X965uSylYuhdsoG6dRdpItSrWyymv9S7Jt3Z7rnToiq7DZ4TaKExPcH92E4c0sCCWROB+mo1/9TNZjmIqI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7381.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(7416014)(376014)(366016)(56012099006)(4143699003)(3023799007)(22082099003)(11063799006)(18002099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TnBlSmdvTjYydjdqdVBYbjlUZUovSnozYVpod2Jyb2NmMEhUMGVBQXowaWhB?=
 =?utf-8?B?VFpsdXQvNHJHWUxwNTlVcGpqRk1qTzlFVnNMb3dOWVF6QzU2dWY0b1IvQVpw?=
 =?utf-8?B?U0kwakNkSUpmZFN3Sk9hWW9qdTI0Z0VJekFIV2RUMk5QalZHV3duTTM3UG1K?=
 =?utf-8?B?RXEwZE5ub0dTTFNwaHRKdFJCV1J0ZGp6SkVnYWxQbnh1bEhDZXB5cGJtWW5w?=
 =?utf-8?B?cEZ2T21ZM0VMbVlMYWc0K3lIclBWSW1oRDNldStadG5oQnBwUkxKVWRwdDlw?=
 =?utf-8?B?Q3pzOXRNTGZGOSs3aHNRNmNtRWNIZjNKUTM3Q0tiMzNhbDdZSFp3UkYzRjVK?=
 =?utf-8?B?cEw1aHdTTVI0Z3lkTVFGMFVWQkZlOVFOQ2c3ckpGVWFSMEhjQy9Za3VnYTVQ?=
 =?utf-8?B?Q3JhL251TVl1VmhlSTRicTlIanFSUnNYRUdaS0FacXhrRXZ2K0F4VnF4L1BQ?=
 =?utf-8?B?TEpqVVU1WG9SME9Tc0hvcDlleGUwQ3BzdzlVZGtCTVNubmVPWjhqL1gzRnZQ?=
 =?utf-8?B?QzBjV3ZtUlI5RVMvS2JjZXk0dm5YbHJQMUM0SzEyS21YRjdGSkZGWVBIM0V0?=
 =?utf-8?B?dy9QV2lSWUMrZmFJbmxaMGNFMkp1UlFzODAyYS9rK1daZVh6Rk9MT3JqSUFP?=
 =?utf-8?B?M1lFTGdVUU1JOHNxeEZROEVPenlnRHRBbjN0L24rSHQ0OC9vQXRxeTdxTTJT?=
 =?utf-8?B?OFpmL21yb0x3SjlkejMrWXNBaElBU2J5SXZIOTMwenowMlZsUE1LTG1mUDFD?=
 =?utf-8?B?blpkNzdTU0I0ZFlXakQ0c2FMRERmODdCeldQcE9BSGExNERXR2U2UVlIeTli?=
 =?utf-8?B?NFd3SDVrS3NkT1NPQjBsdnozQU5XSWcwbFBLeE1mYUp1WTBaT2JvL1YwSkZP?=
 =?utf-8?B?WUw0WDJuWStGSExLOGUwSWRpSTVJM0RXT0tEM3hWaStEdW91dG1EQ2RpaGQw?=
 =?utf-8?B?alNHRGgrRW1NRzRsMVNvRzd6Y2xiejV1TjJveWl2bzdPdmNGek9ZYkdLekU3?=
 =?utf-8?B?T215bzMzVW9qNW9jMENBTlQxZUN1QWk4aTJZNWZJeWxGTFF4WUtuUEl1M1pM?=
 =?utf-8?B?NkVTc3VIWTM2MkpCTE1ZaER6dDVKM1ZDUFNXaUVIWDhlNkVrY2s1TThBYWtw?=
 =?utf-8?B?V2twRWtveWRRNnhvZEtta1VQYk1PZVNQY2FacEcwNHFCekZzNlpXR0lOMjdj?=
 =?utf-8?B?L3NiY3RtbGpiSHpCcXVZc2QzSDh3SHc1RFZEMlpockl0OXdMRkRTQmM3UmhV?=
 =?utf-8?B?RFVNNEdqc3dhdmxobXdXS3R6QmJObDlXbCs3WjV6K3ZXQmdBYnFmWXR5NmN2?=
 =?utf-8?B?MmxYWDNiK1R0QnZkYmt0d0QzUHZxWGdiRVljbzltdTcyRlhKUkFLQlRaNDFu?=
 =?utf-8?B?c25hcDkzN3lXTEkvVU9jV3VmYzlMTzRMY3AvTTQwbUNsM3ZUd3JKRzVoZkNZ?=
 =?utf-8?B?OWFFQ1dlTWFiaW1GdUJ5bnNwemxHV2tQb0hkSXF0eXBvTjcvUUpaa1hua2xI?=
 =?utf-8?B?aFN2MkE2d2hpaHVhb0tab0hvTjh5ZE5sYWhpTE9qSThqYUFhblRJYmxjLzI1?=
 =?utf-8?B?WjN2WWRweHNhZm8yRHhvQjNmSjk5bERoV2hUTURRdWFRRlR1a2RYY0M5cUtv?=
 =?utf-8?B?NVNFMTBMdElsemp3cnZwRHhHOW5GUklLc1htS1JnUXhnRWZ2Q1JzclprUTFs?=
 =?utf-8?B?RjNEekFLWUdCRUFpOW9RUU01Zjc2eEVOUHlmdHZFM3pjNHB6Y21HQXgzMXNy?=
 =?utf-8?B?aCtnMXNxQmt4dFdJRFRkblhuMktUSlY1NXFra2tmbUY0YXl4Z1RpQTF3d2x6?=
 =?utf-8?B?WGtXeFoxWDRyaVJSenlRdlR1T01BdHBJRnRYS1dIQXhLa2oweElzRXFxYWpH?=
 =?utf-8?B?Ym4vSjdJaEozVnFRSFVxTEQwYTFFU0RGU1JlamNibVk2eS9DN2lad0RPSUJv?=
 =?utf-8?B?S2JkYmdxeU1TTThPaHMvOUJDL0tYZUZGUjVtbnc5ZDdhT3I4d0txSmpDSzNr?=
 =?utf-8?B?TDJMcmsrU3BXSjUyRS82UDloNnp2anlHNXdpalNYd2dFSDI3YVdkOGhldEQ0?=
 =?utf-8?B?RTc1cTFDNzU1SVl5ZmluMkJJVTEzTDA1OUtDWjFiYkZNRjB2NmlSY1BqVXdN?=
 =?utf-8?B?NTltSE5tekMwNGRlV1hlKzNPayt5eFZVSEFkMzg3enRnTEcrdGtteTJWNHhD?=
 =?utf-8?B?VERTdGJ6TWpJajgyTlZvcWRWRVl2aitiTTdwL0VtTm1UeFlnVklnN0Z1bVpN?=
 =?utf-8?B?RkFtWTlnSUd1M3NLVFpmSUY5QXdoVThjZ2RCbXEwTEU5bTNLa3RsTWFwN1JT?=
 =?utf-8?B?R09CL3FDSzJzYXd1RU1NNjNyS29XTFVFOUdOVGZlUjN1TVovRkJYUT09?=
X-Exchange-RoutingPolicyChecked: jLzq4T4BTxnFGW9gv6/IcPhFBqgVr4CJOz9VPhHUeFw1yd7/2grwGhSOyGMzn8uazPjahe16Q9mO0ttJ6DJbj1ilxC7O7B+LjPb3ML6hLVdhNwYnBkD7I9/yDq0FotKMF695MNwAZdseh7vkI/JbihI9KLYX8XnmV48S1R+Sfx2r+ImW+YRqmpaUW6VWN4vOJ/BntsmsR0291nsSvk0Zuy90fRrXxwvCT3S4DY33w71RILWSqy2f8rSRzW0a3Tz4EYEBHYJWBMvmR3mn/tRMASGeCHyYzUKwa8mMZB+7wmOeg4nXjyEgc0r3L9Xw1lnRD8iUg/211cvneTRNvQEXtw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f54df15-7f74-4e78-e253-08dedba10004
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7381.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 20:56:07.0925 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tinJJk3Psvwp2vWDTMZxRx1v5sW95Vguwm3RZi7FFTRU0a2PvrqoOnJ2SdUeBkEsm/oidIClS2CLhniMpnM9BsWyxUkORnCq/EuDQ1NxE+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7829
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783371399; x=1814907399;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jv/V9m2i9jmt7jPWhva91BARAmaq2xhV7kzZYYhlXJI=;
 b=BTs7SLucusR6iCpZntyLf58UpG4IUAHMlykGwA26EvSUR0UV14u6FtVA
 02ylj46hO3vWCFwTBSpUrqVXuXL2PnWQGK3EHyPboIKfPeIkC0Tc08M3c
 rANZyEGQYw/PoyV43Dum5W6dNgIl33wZibjOoKQUHm9ysp+MhqWA5HuFv
 6W7xSgkRsHhenIqvfB0VcfCACVj1cdmTWc9/5b87AoC58kKxqeaHoLme7
 1VdckyRfmbtnpGCFfMLZPuDB3w9XhC/OXwoCH++sSHihqzyG34dEj5R4X
 EeWt30K7euppDIfPtsdL+HDhlmFBKMCwlXPej6J4lPpj6i63dH8hWVlh3
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BTs7SLuc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl] ice: acquire NVM lock around each
 flash read
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:robert.malz@canonical.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:jbrandeb@kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid,osuosl.org:from_smtp,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5B0AF7158E9

On 7/3/2026 6:34 AM, Przemek Kitszel wrote:
> On 7/3/26 12:32, Robert Malz wrote:
>> FW caps the NVM read lock at a maximum of 3000ms regardless of the
>> timeout
>> requested via ice_acquire_nvm(). ice_read_flat_nvm() splits a read into
>> multiple ice_aq_read_nvm() commands, one per 4KB sector, all issued
>> under a
>> single lock taken by the caller. Reading a large region can exceed
>> 3000ms,
>> so FW reclaims the lock mid-read and the remaining commands might fail.
>>

Yikes.

>> Move the lock acquire/release into ice_read_flat_nvm() so it brackets
>> each
>> individual ice_aq_read_nvm() command, ensuring the lock is never held
>> across more than one FW read. ice_release_nvm() issues its own AQ command
>> and would overwrite sq_last_status, so the read's AQ error is preserved
>> across the release for callers such as ice_discover_flash_size() that
>> inspect it.
>>
>> Callers that previously took the lock around ice_read_flat_nvm(),
>> ice_read_sr_word() or ice_read_flash_module() now call them without it.
>> The per-block locking in ice_devlink_nvm_snapshot() is now redundant
>> and dropped.
>>

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>


>> Fixes: e94509906d6b ("ice: create function to read a section of the
>> NVM and Shadow RAM")
>> Signed-off-by: Robert Malz <robert.malz@canonical.com>
> 
> thank you for extra effort [1]
> current fix looks elegant!
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> [1] for reference, this is previous attempt for the fix:
> https://lore.kernel.org/intel-wired-lan/CADcc-
> bysA531q2Wh=TD_oFqxivLLdnCRNY5jy7mkZuO0cwJwvg@mail.gmail.com
> 
> [...]
> 
>>   /**
>> - * ice_read_sr_word - Reads Shadow RAM word and acquire NVM if necessary
>> + * ice_read_sr_word - Reads Shadow RAM word
>>    * @hw: pointer to the HW structure
>>    * @offset: offset of the Shadow RAM word to read (0x000000 - 0x001FFF)
>>    * @data: word read from the Shadow RAM
>>    *
>> - * Reads one 16 bit word from the Shadow RAM using the
>> ice_read_sr_word_aq.
>> + * Reads one 16 bit word from the Shadow RAM using ice_read_sr_word_aq.
>> + *
>> + * The NVM lock is acquired and released internally by
>> ice_read_flat_nvm()
>> + * around the FW read, so this function must be called without the
>> lock held.
>>    */
> 
> for future submissions would be great to "fix" kdoc warnings of touched
> functions, here "Return: " section is missing.
> I do not ask to fix this particular one (given there will be no ask for
> v2 otherwise).
> 
>>   int ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data)
>>   {
> 

