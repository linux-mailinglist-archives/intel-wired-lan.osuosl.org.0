Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FE2AFBE71
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 00:58:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87C7A834E3;
	Mon,  7 Jul 2025 22:58:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P9n5u99ozchk; Mon,  7 Jul 2025 22:58:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8ECFE83E83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751929132;
	bh=vfy3BMlSP8KsC9PR6hNq9c2Pi+n4fQJVbC3EbwAPVK4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W2JU4AvhLA4JUlzgtdeStpdkYUglayiD9/psELO48XvjU6zctuwQrx3+HSubsqCG2
	 9+CiAUjuuemzOq6QibpshtEeEStZXo6tDgusIpbDbYfIaGyjP7DhW2FH8/iJxo7Gbd
	 mnbNVL/x/i1jtlkcCSiYEIh9IV4MYxwscAoRzxqkzB0I39mkxeTzclBRUjNRpjtWON
	 tMYdyWTyJwsxfCwd6PTNSCLYwj/Rw8YC7TAjhMaTezFCAeUdhnaHE2hk7UmPNPhjKd
	 0LQGTcjgx7GLd8sPhlVERY6VJ4IX3+gH9+IwIiowyBGJ1HzgP9JUeljT610BCzO7bT
	 fjor9N+u4aVvg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8ECFE83E83;
	Mon,  7 Jul 2025 22:58:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8414D1BF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 22:58:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 69F5B834E3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 22:58:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ni6OvXerjbjr for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 22:58:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 930DA830C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 930DA830C0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 930DA830C0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 22:58:50 +0000 (UTC)
X-CSE-ConnectionGUID: mTdJZ/BcRwiTwhEUd/lHEA==
X-CSE-MsgGUID: MlroCf7sQXSZrSeEtxPf1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="65615833"
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; 
 d="asc'?scan'208";a="65615833"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 15:58:47 -0700
X-CSE-ConnectionGUID: 7M4NbJARQRihaxRSYg4jnw==
X-CSE-MsgGUID: jkwsTQ5yT/yNfs3y+QWfCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; 
 d="asc'?scan'208";a="154741403"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 15:58:43 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 15:58:42 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 7 Jul 2025 15:58:42 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.52)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 15:58:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qMnULymG828Zjp2LcDua0HuvJfZHmW9ywqh4vus7aoSqykiNZP/Iv1cwmwFNDHKvh3S7DdWTwV2WekjfZ5Wqn6oBvQmMaH6tQQ4wP4sr94MtgWH8s0p2hyqzqDF3fGYDqI8CdGiaFQ8ksZ0KBj4BCXc2uEx005BvOO+JxqZkA9lgOAwpznIliv03fKpJ6NHA+MpZPICrq50SRLHTSQJz0A67bP5N5l5RpOKzCCofhzSha6kK440B/8Dxlc37nE9at9BcuDE4Ximfw4+W+GYkaakivapxFsfcdpzFGEblA9Mg/YXR6O/O7WbxzvdGYfzF/eIoHpHpi86f2APh8V1Ctw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vfy3BMlSP8KsC9PR6hNq9c2Pi+n4fQJVbC3EbwAPVK4=;
 b=P1PIOQ3XboMgBZgRZxMwpY+tIBRGXJOlag/0xLw44hxotZ7d4u0aDz1HxBW+YFJsEkAfLq3xvyRbYhGeNPL2lelh9Hh9z5UUOS8IxRTwMMOP6LioGwHzv6gRRl3JINkj70a1d9UeuvGTzhWPasP5JC8SDRQyJkVbgWRhN6D4N2dWi6C9TrXNfnurundc+u0Q2jmy9E4KtsAsAdRN0ffLz3O718cVaaGAYbvtmgz8IOsurV6leIc6RwBIfUW7PGqC25QBccHsE84oe1u95xUREIUMKUhoEnx5lvcdfhkNaOe9dxtHqwm0nbBjpO4zCf1YmCIxYkivKtvN9asz2OV9NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB8480.namprd11.prod.outlook.com (2603:10b6:510:2fe::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.23; Mon, 7 Jul
 2025 22:58:39 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8901.021; Mon, 7 Jul 2025
 22:58:39 +0000
Message-ID: <53c62d9c-f542-4cf3-8aeb-a1263e05acad@intel.com>
Date: Mon, 7 Jul 2025 15:58:37 -0700
User-Agent: Mozilla Thunderbird
To: Michal Kubiak <michal.kubiak@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <maciej.fijalkowski@intel.com>, <aleksander.lobakin@intel.com>,
 <larysa.zaremba@intel.com>, <netdev@vger.kernel.org>,
 <przemyslaw.kitszel@intel.com>, <anthony.l.nguyen@intel.com>
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <20250704161859.871152-4-michal.kubiak@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20250704161859.871152-4-michal.kubiak@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6xnGNvj6AdFBerG0Ve3FNp9N"
X-ClientProxiedBy: MW4P220CA0009.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::14) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB8480:EE_
X-MS-Office365-Filtering-Correlation-Id: 021e3c04-d6f2-42db-dfeb-08ddbda9d024
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Rk5wckltV1hwYkxITGxFTjA2RXBtYktvQlZHVHE4anlScmduS3lXK3RnN2lY?=
 =?utf-8?B?WE91L1V1MDZkajFjQkZ3SXB1ZG1hc0FEZjdiSURDeEQwSDhCcVRQOElRUjJY?=
 =?utf-8?B?ZG5aZzVVMVRSYXJtTDQvVjRDOWxtMFkrdE9nenY1VFQ1QWIrZWNIRW5wMkFL?=
 =?utf-8?B?RTJwKzBPTkpHSDRDWThjYW5IeFZmYURvUThuVDY5QWdydTlpaDFaNE42VmtM?=
 =?utf-8?B?RUlqSjBObFlPU2VzenhTOERkN3hWckhmVktDOEpTaGhlZHp4NU91VjZiWEJC?=
 =?utf-8?B?VWdBZm1DMW9ySUFuQ3Flb1ZZSUJaYis0VE16YjBhOUFYTGF4MlZOd2dFNE90?=
 =?utf-8?B?UGp5eGdvR1VjTkxKRHE1QVp5a2xjRE03ck9yOExxelVjNEFSQ3RRRjdFNEFN?=
 =?utf-8?B?K0JLM1V0UkJldGFGRHdQL2tnWldBMEhLZ2ZqQTE4OVBIQmJqaDRqUDVBbE45?=
 =?utf-8?B?VWlaK3ozWmtFVXhudEZhc09DWXlHTllyZ3I1cGNsNGtYeEFDdlFEMHNuVlVP?=
 =?utf-8?B?SmhDek9NbDlTbmY2emNQZkQ4dTVxVjlTYXBxVlJNUTVJV1VMaUl0SFoxSHor?=
 =?utf-8?B?NXBXQ1h1M0YwTm9lM0w5cU5JZFhpQVJtUHdMK3IxTUNHUVJiMzVnK3VhaGhF?=
 =?utf-8?B?dmJNck51Ui8reks2ZDQrUjdrdkd3ZVZNazVoa0xDUHJPZ2k4T2pGTHY0TDUr?=
 =?utf-8?B?eWFkMmpQVzlhTWt1WmZMbG91QjlqZDNLYmt3UFE5eGxyUFU5WFlwcWdTWWtL?=
 =?utf-8?B?QTQvUDI4a0hGM211dkZlOWgwZWhndDBzZ0g0d2Z2Rm1WcUZrTTFzRXlCeWlG?=
 =?utf-8?B?Z29UNU9jcURSY0JwVFhpYVVPd05hMFczOW1IMlNqMS9RdDZaYk1QclUraWJM?=
 =?utf-8?B?ckxoSnE5MEMvUTVSaDg4SHBuRWRzRnBFcHhxZnRZTXQvQWFVZmlxK25HMlNN?=
 =?utf-8?B?dG5iSTZQcHNKYVVYZzFGWHhHeHJrdElhWjErWTBoMVdmaktZMmEva1ZSb1Fa?=
 =?utf-8?B?d2ZjalZVRTg4Ymt3VUtNRVFHT09nbFlISnVkaXgzU0ZIVVV3QjlsS1pOakFu?=
 =?utf-8?B?bjN3Vnk0SzRQTUNuczFUcVoydWJib3hwTE1nQ0g3djh5OGVmdXdxUkxEZ2Rw?=
 =?utf-8?B?TjZETDhhZVQ2R1hJdjhEd0dCUzg1OTU1WitSeEgyNTZ1WlUwNTZBMGFXOVNu?=
 =?utf-8?B?OGhsTFRmbEZRblZCSVlQZzZ6bGk4MUgzVjNWOGRiZjlwNnVLY1FXclVKd0to?=
 =?utf-8?B?djdjL21NemF1eVA5aUh5M3VZR2YrM09zaENieXdKTDVEWW1xR0hhVVhOWkY2?=
 =?utf-8?B?SldlUWRvT2RzZmlDUWdWNGNPYXZqSXZPTTE4VmsrNG1HYnJHa25yaGlWRS9J?=
 =?utf-8?B?UFR0cC9kZ3FwMEt1N1daT3NxS3ErUkNJOTA0VW9FZ3grbVEyczlaVnhmbXZn?=
 =?utf-8?B?YzU3YkJGMlVsekxiUHVzTmx3OCt5SFdnQkhZdjBXeVVFeGxLT2JGeVg1dXBy?=
 =?utf-8?B?QkFwZ2ErcjhQNlNwMDVjYmpFNGNRUWtkSUtQaWdEUnNUaG9EcS9jc1BhYnV4?=
 =?utf-8?B?K2xUNEdpSmJNNzBKdmNaWmltaXR1MG5UTzlWcW5HV21qa1pBKzBPZzNEaGFp?=
 =?utf-8?B?TU10c1BFRW8xazI5NVovVERVQm1RNGFKS0FMdzZlWkdHQXJ4RFpUdDlOalNi?=
 =?utf-8?B?QUNvUHRtUExaczVjL3lXSVdvczhkZFJZdU5NYTIxeW1GTWozYzFoaWdjRnRp?=
 =?utf-8?B?bm9idlZqdDVGTW5QMVFFQzZXc2o5R2JGdUd5OHR1QjdLaWpURlJqWkV1L3A1?=
 =?utf-8?B?TU5WaWtXYzV4QmdVbHk0eWJMb095ZElOaUxDNzZmUVJCVHdBbEw4cDYxaWFo?=
 =?utf-8?B?WGVnaWRqV214cUVyMExZNUlhQVREdG9pb0dXK2NiSjBYMFE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Rm5IOG90S3hiMFpOSTV0TEdTTVY2OGFhWGxiZmp0aEpCeHpoYU8zSkN2aldw?=
 =?utf-8?B?bFJIVUdrRWpwV1RrTC9FTmM4TERGQjlnZWcxNFppbjYvNngyZlBOTGNtdTVP?=
 =?utf-8?B?Zk4ySVJjL1BhSDVsV1RidTExeU1xaEg3ajVCbGJkbFZHOTZTSzRraDZBcEZY?=
 =?utf-8?B?WkhIb2RTTmJ6cEVuZVc0YWlsU2Y0KytxZzhiTWltQnR5VWY5V2Rqc1kvRE02?=
 =?utf-8?B?dHBvT1JPRG1hb0NFbmgyUUxQZmR4YUVvdnR1NzZsWUZlWVZLbERwd3U3SjhE?=
 =?utf-8?B?cERreHovc1U0c0Job0lKZUNHV3VJU01YMWp6QlpNN3VoTEhseWlkM3BHaHI2?=
 =?utf-8?B?dEtuNTgva1l6K3Y4RHZrZXlwelp4ckx6aHV0THhYSndERnJneHpYNzA1bUp2?=
 =?utf-8?B?NlFtTWx1Q3JFMVYxK3YzcnZwQ011em1uRWRUcmtEcFZiVC91L2xsTVF0UHUv?=
 =?utf-8?B?OXA2MzJkai81ZzdSVzYwM0lFMWpmMEFyMW1MZDg4WUJIbTFpeEp2TXN5S1dO?=
 =?utf-8?B?Y1dQNVVscVRwV3pMbjNUaUVpY0dGNXhma3Rzb1l0eXpqYW0wdDYwV0dhTUFh?=
 =?utf-8?B?VDlaTVpoc3A2U0Z1UFk2SWR1OEtZRVN3VXZ1Z2lXTjJZenkxcENPMU5FQ2hn?=
 =?utf-8?B?ZTV0K1RtYkVkK3RBYlI4ZUdsZllxZGJLdDdwRnhpQldaRlNqTkl3RUIyd3ZB?=
 =?utf-8?B?VVJweFlSQmV0TFdHdDRTQ2NyK3J3cUdIaWc3V2xTVjB6WDQ4TkloUnhwTDdq?=
 =?utf-8?B?YU5wTitnQTJlUFg3QUg2QjlzekliRWdwZmJYWU90NHcwN215YlQxSUNyRlgr?=
 =?utf-8?B?VHF5ZzdZZEFyd0xYVm5pcHNYUTBwdmd0UFJyMDg4QTJlTGZScUdBNGhyQVk5?=
 =?utf-8?B?OFVyYWpXTDFKd2JNeVd1Y3lPaHorYUdPTmU0ejVlem40bkM1WFZYRHoxTVAx?=
 =?utf-8?B?a0QvYndVMy9sOU5pTlNxNjMweVBET2FnZGhoUEluMVJ6TWszRmpUek5KclhP?=
 =?utf-8?B?cnpGbUttL1o4blNnNDZzQVVvUXFSTFhnZXhLSXB0eWxva0RFQVFlSWtiNTZN?=
 =?utf-8?B?eVhValY1dm8vaWZjY3Jrekx2R2s3RU9DaXE3Q3hmWUhaUmZ1QWJkZndTTVht?=
 =?utf-8?B?cUo5WTdTdTRNK1d6QVo4V0hES0NqTWNXMXFTS1dUZzVuWFJmRnNvLzhIaWhr?=
 =?utf-8?B?RHliQkQ3akpDeG9wZmJKZzczU1BsOWZLSGFoOFBRMlZvNTl6eTIzamNRZFlU?=
 =?utf-8?B?VXY2QXZYc2l5L0xWVVdRUmx2NzF1dWhSVTZLMkFKWWV4bUlIOHcrd0FURlZG?=
 =?utf-8?B?WDRWbjhpVCtkcVluRTd3NGZpWFIzUHYrbzFjWmszSEtKMm5OUkQ5UWoyQmYv?=
 =?utf-8?B?VHFtbGNUN1I3VzlOMDVvL1RINVlzMW9DNGRMbUpQNXBWVytmbC9VNzV0NXlz?=
 =?utf-8?B?bjZwTC9tdXlpK1BqSTgzMkpKSzA2d2h5TGlHRHQ2YmVPWUxvUkZFaTF5OHQz?=
 =?utf-8?B?OHgzWno5cUhxVFBpMFZITzQyUmNyL3Z5WWxETXlXemNXWlBCbWt2Z1FWNStx?=
 =?utf-8?B?eWkrcWZrMW5Ram1Rdm04WW1nK1FXaTRmOHRQazNhdFhYSDYweDdaMU9CbVJC?=
 =?utf-8?B?SFVZR0FSdGdDOXR2STNVK2U1R0UyRmF2Sk9VSWluUzJmWHV5bkx0ODVyaXk0?=
 =?utf-8?B?cGwydVVKTVAyVFZZelF1bW82SVBkK0RRYVFuZUhLbytObDg3RzUxZTd2RkZB?=
 =?utf-8?B?VWdTc0lybjNhcE0wK3Q3TlRqWk4yd2V1RUlPeWs5RGhmRlhhcVN0dVRWaW9s?=
 =?utf-8?B?cVJxQUNIYWpsWUZKRFlKQVBlOGcrOXBJdldSRjZLY3hjUGliT25aM1hSNG1h?=
 =?utf-8?B?MEZXRmYzVmJDQ0YrU1hER2JZV09zTk5Na1hIZWZ5OEtCbUpVVHAxQUVIWEtC?=
 =?utf-8?B?VG5IcHIyV1dlZGw5Q1hMU21BcVBvMFhXbDdybzVtanFzZ2xvdm5MNzVMNUpY?=
 =?utf-8?B?eEdURWhBV3pObHFJdEVITXhDdVZQVFJoUVc5N1NOK2lSOXJlNmFuVUZVVC94?=
 =?utf-8?B?aXZCNHFNUFVZL2JpQVFWK1IvK3ovVm9mVnlETGt1VXdZVkYvZ2tPcXlKS1ZR?=
 =?utf-8?B?WGFtL01xb0JabHNQbUJqc2Y5NkpKS1Ryb3VQeitCWWRPU21vOXZLTktlMmdm?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 021e3c04-d6f2-42db-dfeb-08ddbda9d024
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2025 22:58:39.7363 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lSyKVM5G6geBXBPGAW7BKc2/M+Owid2qM9lPyBss7SJyp1NW8aC7vIl5YsQQhph7kcn3Ec7SSydhtTj6bVn0/NiaVfuY2vhynOTUZzWB3gc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8480
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751929131; x=1783465131;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=QMbF1tNeXF967S1JNAPNQ2t45N0B9AfO+vo4P8Sb7lU=;
 b=Qh1IVokeXoqLyYkJ4tO4zkNFkAnXfkW1Q9t166eQIfEbvzfIQlyRykPG
 Fji3fbXxaurSL14YgQ5uX47klzQ+awEHYVpFy9fF8pSMIzzp8u1ql6Fdw
 7zUkftgH6T8DGAL9VzAJ3SjiIbRpTf2PZZupXs3IMt9Od5E2VIQRGH4VO
 XUAstwQYfyRRilaPqNovMCeHBwCIf2eM7e7DHiUYt9vNO8dcaMbYhX1wk
 3KnnRE4Qjt13ggcRXo2xJ65b1Gba9Y+JwUSMcbR0463WqikFxIBnFeenM
 Dwq6WHMuBgsfU5b0N/PwfTToV8f6Mk5FCvUyKq+nh2e7+o8i/CgnTn89N
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Qh1IVoke
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/3] ice: switch to Page Pool
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

--------------6xnGNvj6AdFBerG0Ve3FNp9N
Content-Type: multipart/mixed; boundary="------------6yAIqxJe62YQmxfHlgH650F0";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 larysa.zaremba@intel.com, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com
Message-ID: <53c62d9c-f542-4cf3-8aeb-a1263e05acad@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/3] ice: switch to Page Pool
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <20250704161859.871152-4-michal.kubiak@intel.com>
In-Reply-To: <20250704161859.871152-4-michal.kubiak@intel.com>

--------------6yAIqxJe62YQmxfHlgH650F0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/4/2025 9:18 AM, Michal Kubiak wrote:
> @@ -1075,16 +780,17 @@ void ice_clean_ctrl_rx_irq(struct ice_rx_ring *r=
x_ring)
>  static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>  {
>  	unsigned int total_rx_bytes =3D 0, total_rx_pkts =3D 0;
> -	unsigned int offset =3D rx_ring->rx_offset;
> -	struct xdp_buff *xdp =3D &rx_ring->xdp;
>  	struct ice_tx_ring *xdp_ring =3D NULL;
>  	struct bpf_prog *xdp_prog =3D NULL;
>  	u32 ntc =3D rx_ring->next_to_clean;
> +	LIBETH_XDP_ONSTACK_BUFF(xdp);
>  	u32 cached_ntu, xdp_verdict;
>  	u32 cnt =3D rx_ring->count;
>  	u32 xdp_xmit =3D 0;
>  	bool failure;
> =20
> +	libeth_xdp_init_buff(xdp, &rx_ring->xdp, &rx_ring->xdp_rxq);
> +
>  	xdp_prog =3D READ_ONCE(rx_ring->xdp_prog);
>  	if (xdp_prog) {
>  		xdp_ring =3D rx_ring->xdp_ring;
> @@ -1094,7 +800,7 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx=
_ring, int budget)
>  	/* start the loop to process Rx packets bounded by 'budget' */
>  	while (likely(total_rx_pkts < (unsigned int)budget)) {
>  		union ice_32b_rx_flex_desc *rx_desc;
> -		struct ice_rx_buf *rx_buf;
> +		struct libeth_fqe *rx_buf;
>  		struct sk_buff *skb;
>  		unsigned int size;
>  		u16 stat_err_bits;
> @@ -1124,19 +830,10 @@ static int ice_clean_rx_irq(struct ice_rx_ring *=
rx_ring, int budget)
>  			ICE_RX_FLX_DESC_PKT_LEN_M;
> =20
>  		/* retrieve a buffer from the ring */
> -		rx_buf =3D ice_get_rx_buf(rx_ring, size, ntc);
> -
> -		if (!xdp->data) {
> -			void *hard_start;
> -
> -			hard_start =3D page_address(rx_buf->page) + rx_buf->page_offset -
> -				     offset;
> -			xdp_prepare_buff(xdp, hard_start, offset, size, !!offset);
> -			xdp_buff_clear_frags_flag(xdp);
> -		} else if (ice_add_xdp_frag(rx_ring, xdp, rx_buf, size)) {
> -			ice_put_rx_mbuf(rx_ring, xdp, NULL, ntc, ICE_XDP_CONSUMED);
> +		rx_buf =3D &rx_ring->rx_fqes[ntc];
> +		if (!libeth_xdp_process_buff(xdp, rx_buf, size))
>  			break;
> -		}
> +
>  		if (++ntc =3D=3D cnt)
>  			ntc =3D 0;
> =20
> @@ -1144,27 +841,35 @@ static int ice_clean_rx_irq(struct ice_rx_ring *=
rx_ring, int budget)
>  		if (ice_is_non_eop(rx_ring, rx_desc))
>  			continue;
> =20
> -		ice_get_pgcnts(rx_ring);
>  		xdp_verdict =3D ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_des=
c);
>  		if (xdp_verdict =3D=3D ICE_XDP_PASS)
>  			goto construct_skb;
> -		total_rx_bytes +=3D xdp_get_buff_len(xdp);
> -		total_rx_pkts++;
> =20
> -		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
> +		if (xdp_verdict & (ICE_XDP_TX | ICE_XDP_REDIR))
> +			xdp_xmit |=3D xdp_verdict;
> +		total_rx_bytes +=3D xdp_get_buff_len(&xdp->base);
> +		total_rx_pkts++;
> =20
> +		xdp->data =3D NULL;
> +		rx_ring->first_desc =3D ntc;
> +		rx_ring->nr_frags =3D 0;
>  		continue;
>  construct_skb:
> -		skb =3D ice_build_skb(rx_ring, xdp);
> +		skb =3D xdp_build_skb_from_buff(&xdp->base);
> +
>  		/* exit if we failed to retrieve a buffer */
>  		if (!skb) {
>  			rx_ring->ring_stats->rx_stats.alloc_page_failed++;

This is not your fault, but we've been incorrectly incrementing
alloc_page_failed here instead of alloc_buf_failed.

>  			xdp_verdict =3D ICE_XDP_CONSUMED;

xdp_verdict is no longer used, so I don't think we need to modify it
further here. It was previously being used as part of the call to
ice_put_rx_mbuf.

> +			xdp->data =3D NULL;
> +			rx_ring->first_desc =3D ntc;
> +			rx_ring->nr_frags =3D 0;
> +			break;
>  		}
> -		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
> =20
> -		if (!skb)
> -			break;
> +		xdp->data =3D NULL;
> +		rx_ring->first_desc =3D ntc;
> +		rx_ring->nr_frags =3D 0;
> =20

The failure case for !skb does the same as this, so would it make sense
to move this block up to before !skb and just check the skb pointer
afterwards?

>  		stat_err_bits =3D BIT(ICE_RX_FLEX_DESC_STATUS0_RXE_S);
>  		if (unlikely(ice_test_staterr(rx_desc->wb.status_error0

--------------6yAIqxJe62YQmxfHlgH650F0--

--------------6xnGNvj6AdFBerG0Ve3FNp9N
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGxRHgUDAAAAAAAKCRBqll0+bw8o6Op/
AP9XZSJ6m6do8te1VX5yMqtp4ycJH2pLEvcnoAtVs7VofAD/RAlZ9PfDfO4pw5jbZj7H6hcvEzYA
UeOTcvdYUpHaVgs=
=nfW8
-----END PGP SIGNATURE-----

--------------6xnGNvj6AdFBerG0Ve3FNp9N--
