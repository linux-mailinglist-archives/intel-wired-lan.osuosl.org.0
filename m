Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A7BA9512E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Apr 2025 14:44:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8835D60ADC;
	Mon, 21 Apr 2025 12:44:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dqMG34_s4f1J; Mon, 21 Apr 2025 12:44:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0109560ADD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745239456;
	bh=THtaYBYUVJr/FpiuQekAhFJh85duUlj78BG8ASGq2rw=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Y0mCaYDickzzAf22385ZkcRP5rpdnIGApj72ht3lCZmJLt7Y4fQsEKt+eLQ4GqiAD
	 fxQYsZVJKowhfecBc8sQWEAg4nWdQLAMFBhBm3wdjkXmhKJdp89bkCxWELmcb4MWMU
	 CB0pMipTEjReC6APMX+BBi4WrdI97pLCWqEttGixeul6f8mROsnyVPimIRrwR/gMWa
	 kfrKRmDbVt94cZHK11WDdUhh8so9A35oCk3X8Scl7VC0MAXd6omi8ZkR17dXT74X0T
	 J3a5Fl/J4XV0vHF6vW/+VEGsTwHTPq/1aT2cHgsE4NQBmcddPBaO9jjeT6VGyytjul
	 oNJ41giz+EXQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0109560ADD;
	Mon, 21 Apr 2025 12:44:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 57A3A1A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 12:44:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 48FAE60ADB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 12:44:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y_hBhu9Fmb59 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Apr 2025 12:44:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8442A60A76
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8442A60A76
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8442A60A76
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 12:44:14 +0000 (UTC)
X-CSE-ConnectionGUID: 2F3KlP9BTFuRy33GyTHeUw==
X-CSE-MsgGUID: gWZlLODKTEqWZO5NgtdVsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="49432584"
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="49432584"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 05:44:13 -0700
X-CSE-ConnectionGUID: E6VVBz9OQn6ji0sP2QXcNA==
X-CSE-MsgGUID: B0ecSG/7R3a4UGGWFFqUEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="162670685"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 05:44:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 21 Apr 2025 05:44:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 21 Apr 2025 05:44:12 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 21 Apr 2025 05:44:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QDOi7Vjf2NSXsy1r7g4l9ZMIfoD4iJ7/Cwp2D3xwmas9Fn9VYwdjsONJv+1JKzRZpyM5LVfi8T7ey40C3ES23KGpmmzrgzG67VINMpErjJQCqn6uQQPbtFKEGoRNFaNprYXnPHdGM2RD1ge8zjSwfftqI6ccqyGvuSW85KwgYI/Tur7cyOd3jWZsy7gBAaYf0B2tKBNyllIiDov6AeJGPokojZaQOVoAYSEFPAijmk2XCddC0/b3+Gt9GGXr0LMXOq4zNEDQ/KpV5VaB7cIyh7CtSIdJRK/2wxU9OPcTdMEQ1n+OUHTj1A/Fw8xUbr6ca12Fe7ESdlG1fYZZYPvrhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=THtaYBYUVJr/FpiuQekAhFJh85duUlj78BG8ASGq2rw=;
 b=iczJOCPlr64/v9ENbWaqpEzTuNf4HmFuKsJWDiiWNysAPPv/HrVSfv9pF5CC6De2PijOE9SKSDuEaNQD+sqafG9j2qxpt1YUcU9Em0fGidOTyV/1Qjk3MbP4LaTSbmhoWFJc1DsSTAAJj8tQOP7tzgA25pg0MBpKhVNknfebvOamKQlZfvcjb9YLwDkPaH4S6QA7aUghcOg7kWjp+BNnTdpXwREzcupXZtx6z+I4aRECXfRCLjUT/gIB7TDo4OD+HIjE9zmCt8Jt4aZAn+JkOAGMPyC0M9o6uRiKeYj57lmumk/Pg5ydotMgrBlAe+2SdeGDvgF5nEAQ6wRFJJk1vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by DS7PR11MB8828.namprd11.prod.outlook.com (2603:10b6:8:257::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.34; Mon, 21 Apr
 2025 12:44:08 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%2]) with mapi id 15.20.8655.030; Mon, 21 Apr 2025
 12:44:08 +0000
To: =?UTF-8?Q?Marek_Marczykowski-G=c3=b3recki?=
 <marmarek@invisiblethingslab.com>
CC: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <regressions@lists.linux.dev>,
 <stable@vger.kernel.org>, Sasha Levin <sashal@kernel.org>
References: <Z_z9EjcKtwHCQcZR@mail-itl>
 <b1f5e997-033c-33ed-5e3b-6fe2632bf718@intel.com> <Z_0GYR8jR-5NWZ9K@mail-itl>
 <50da66d0-fe66-0563-4d34-7bd2e25695a4@intel.com>
 <b5d72f51-3cd0-aeca-60af-41a20ad59cd5@intel.com> <Z_-l2q9ZhszFxiqA@mail-itl>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <d37a7c9e-7b3f-afc2-b010-e9785f39a785@intel.com>
Date: Mon, 21 Apr 2025 15:44:02 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <Z_-l2q9ZhszFxiqA@mail-itl>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::19) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|DS7PR11MB8828:EE_
X-MS-Office365-Filtering-Correlation-Id: 4561d2ab-269c-47ed-f602-08dd80d23511
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K0lDNlY3cnBJVEt3d0EzYnBsVkkvMEZxOU9nZVNjOUFEbGVFaUx5NUU1UzFl?=
 =?utf-8?B?YVhwRmd0cTdwMVR1Y1BKNmRFQU9jR09CWHR1MUlNcjFuTG1LNFJlWnd1QVpI?=
 =?utf-8?B?cDlRaEVoNDR1ZjN4K0d5UGpKR0VGT2FnVlhsL1lZaTRtNDQrbFNoTmdPYXdy?=
 =?utf-8?B?c2NwUkU0ZEFzaEpQczEzZDR2ckZDalQ4anh2L2g2SlZ1cGF1YXM1Y2h3MUpu?=
 =?utf-8?B?dDVRS3ZZM0tVb2NrdnlOT013MlZsWENIRGU3SmNTUEpSWWdPdlJaQzk0Z0lh?=
 =?utf-8?B?cWlsWVZTcldtUHpHZEVTSjJoSFlYMUtUSDNPSnEvQy8yNXdDNnpBZW9MU1ln?=
 =?utf-8?B?aFZzeUZwc0o0OGYzZFJxOSsrQXlwejJwSzVKa2RNWHdFL0tiWlNhYkZ5eGdK?=
 =?utf-8?B?SWZhTVVsUWdOMEk4OTlQdVRscHFzUmNsUnQ5MEx4Q09FblV6MFVVZ2FYbEwr?=
 =?utf-8?B?K3BsY2pHUE8xYjlTOFRLWXNqQXJSMmROdW83a0tKanVJV0czWCsvbFdGNEdy?=
 =?utf-8?B?SlBZRzJCQVJwUEJFTDEzYUZvUGdMQVhuNGExeHpYS0lSU1liTVNFYWlSRERy?=
 =?utf-8?B?emhCMWJaM3pyVG5zQ0dnREg4aFVDQk1VRFdNWTdCRGFYVVhIQ2c5N0FHeFFy?=
 =?utf-8?B?Y3QzSHd6TjV0SVRibFZWUkxXVFhRR0JJWkl4Yk82R2FJSzRHVVhRWkpjZ2Z0?=
 =?utf-8?B?OWh4dUlnRDJGQy9OVEU2STlaZTFWMmt6U3o0SFBFcGJ1Ui92VEJKV04xa0lp?=
 =?utf-8?B?UGJmWFZmVVo1aVRMcnc0T3UrQzdrS2ZGMmVYYlFqbzlkNm1EVm9Rc0N3TE9S?=
 =?utf-8?B?c2c5QjFrSlJRRVpaYUlRRHRTTEFTNGc2b01PMmZGUU5VbDFYL29CNlNKVmYy?=
 =?utf-8?B?YXFxc01IN0xBK21kdEdlTmZxbUE5UUdtZDhySjFiUkw1akpNR09PKzJJNWYy?=
 =?utf-8?B?NmZ2OXZMaG1aeHVkYmNEaG9acyttQlVmRTRCUXo5MCtIUmxVM0NYSzEzUm1y?=
 =?utf-8?B?VW9rWW5HaVRwcEJHTEtyanFpM0k2K1VaYU1uOFk3MlZxcHlaZG9Mc3FjVjZm?=
 =?utf-8?B?Y1dsTm5HU1VTMHdKK1grb1d0UmRtNnpwS0hQQkl6SjJqbTVpYUVrVXVOS0hi?=
 =?utf-8?B?MFA5NUNUZ2xQZmtBcHc3RmRaenNwQTNZS21VUWFwbE42a0ZIL1E4cjc2Q3V4?=
 =?utf-8?B?anBDRWlFQWVNaUFpMG4vZUpUblVIaWRrTWw3bHJRK3JLVEI5MVZJT1BNNGV3?=
 =?utf-8?B?djA3YnJyNmJzZlpBSFo0bHAwK2RiWTR6R054TGIxN3JDNndrSjhhVVJyZ3hJ?=
 =?utf-8?B?eEhFT0J2MVcyMXVOZm1qUXpPekdsL2NObTlZUG1lT2Y1ZGo4d2VTcEIvZU5P?=
 =?utf-8?B?a3pMTE55a011Y1ZqcEtZcEFSQ0dzaDM5aHhGZEUrM0EwaC91T1FLVkxyR1RH?=
 =?utf-8?B?QkRnaWVnN25QL01OYkl6LzZPMngyMGVCZ21GSWFveEhhUHRqTDRyRnZFblU3?=
 =?utf-8?B?WENSZ3o1UjBzS0NpdDhPekpXVkhwYjBZQ2VoVjlNOWY0UmNmcU1Jb09PaC9u?=
 =?utf-8?B?eFROVUQ2eDNCWnJiQ050RGh2ZlRwajRmcEJPREltZ1hlL0tsc1VqdU9Naysy?=
 =?utf-8?B?R2VvV1lvZ3l2V1F0elhJR1pqYkl5MnpiMHdOMzQxMUpONE1JUHA0NmhSV3Z1?=
 =?utf-8?B?OWFCVk9Zb2NZZG5aQlArbGFHbjZzeUIvTUo1bjZIb3FPSnd2cVhnWTZyYTU4?=
 =?utf-8?B?VFFUY0FvMTBTSTdqV1ZVL3BGSVFTVmJNbnhvV3lmclc5ZzlmcVE4MUNSdUtT?=
 =?utf-8?B?RE5WallGaEduS1NFdklWOVFJcUt3WDVkSnJEWlM2cHI4N3BKZ2ViYlNyNFVq?=
 =?utf-8?B?cTFzZTE0eWFvQ0VraGt0Tjd2OGVxV3daUmtzZDhtN1ZwSjhwaHdSUWphVjZ2?=
 =?utf-8?Q?m27HkKzLaPc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTUwaERVZXhoVXVnNXVLcEhnME01OG5Ddkx3ako0Y2lGRE5KWVl0aVlhaVlN?=
 =?utf-8?B?YVNDVGJzb250cFBDMWdJcjJyTnM4Y2RPWFNkWVJtVERnbmdueGVsV0FnN295?=
 =?utf-8?B?T1pZcmtSUndMV0Uvc2s3NlVndUd5Q1lyTG1NK09STWJLb29wa0NocS9XMlRW?=
 =?utf-8?B?QzJ6VS9hakUxVUFoRHNrZ3JvT2ZjYXBiVTdrZExGbFpLTnVSbW5LeGNXOVNW?=
 =?utf-8?B?bE5PdnBqNmxNdENlVFptbXd6TGlmL1N4SlZpT2ZVcGFpSUQvZ2wvQVFGRWoy?=
 =?utf-8?B?QTR6b1RGTU9BSEpYNk5pUTFSdXpzbXFuTUU4RVFFb1NNVllySlh3ZkIrYkdi?=
 =?utf-8?B?b05lTFhORnJjV3FtL09ja3BNclg3MWJlSkJqT3ZkdFZzclQ5WXJRSjZBa0lr?=
 =?utf-8?B?R3BGY1VsUERLOHhRaWxrNFdTSXppdWpoRmZJTUQvVWhoV3U4aldHNnREaTFV?=
 =?utf-8?B?d3hPa0ZlZlhEUGJzWUUycEE0a2hQVjZkTWhBazNOaytBVVY0eGM2cFBOUWt2?=
 =?utf-8?B?RXpSNE10b1ZlaTUySGp0Y3oyemhNMCszR1Q5SG1WMTR6NFA3c3B6OWJocTd0?=
 =?utf-8?B?dFVNRjczM2dpSkxHMnN5OGJSd2gwMkw1SVRpbEE0QlYvSGpjSEt6dDlXZGtJ?=
 =?utf-8?B?bnZocVZIbnVMSTJlTjlqZG0vZVZVOGJRTDI0MEViRE9kQTNOWUMwTHI2RzJy?=
 =?utf-8?B?WkhSb05WOWtLUWdVNW0vOExWRWxVOWpQTXM0dzZ0Q3Qyakw2NHJoOXh6NXE3?=
 =?utf-8?B?ckJuUmU4Y2ZQQm8rN0pXejRIWEVlUnEwN1N6cDg5bEcrWXBqVmdjS1ovOUJZ?=
 =?utf-8?B?RnZUVEUwcVJMYm51SkpLU1N4aUNGS3JuMDNaeitDWXlNZkVONVRRUUQ2alFC?=
 =?utf-8?B?ay8rQ1ByWTJDNzFseTV3c0tHdFdKd2tTU0svVk9KS3NsM0ZYTDN5eUxTaXg5?=
 =?utf-8?B?TVNoa2JRdnNkcDlxRW8yWVRFVGJQVS8ydE5JUTlUQ1dIZnEyT0dvMkRjMXdh?=
 =?utf-8?B?S1NpaEQvYkJQdGNYTktlMnJlY1NSbStpZzRGWHZ4ZDJ4VmVzUjNWTnF6UVhl?=
 =?utf-8?B?clRvMzVhS0k0TVh2WkV4ekJybU9ZSnB1cVZ3U3duZVZhckQrajBWTy9mdURt?=
 =?utf-8?B?dTVEclZHNk1UT1kyU3EycWljdzlDYUZ6eHJwSGVhZytZZHNvUW9IZEx1SjMz?=
 =?utf-8?B?TXlFTUVTNThpQVNpUGQ2WXJYTUJtOTJKeVlDWXBWK2JVRDlSL3A2bTgwMksz?=
 =?utf-8?B?Vmo2ZkJWYXFTWlhjWDBMRDIvYk10RFV0T2djbWE5Y3hpUFMrbjVBcTg2THNs?=
 =?utf-8?B?d0NYNVJ2anA3WTFhb05meXJIb01LcEdDVUlWSXBsVmRuRVhzZnkxY044WE9W?=
 =?utf-8?B?WDlZd0dZSktIR1krWXFnSXFTaFhTK2ZVWDZnR0dqOHQ0eHU4cllIc2RtOFpZ?=
 =?utf-8?B?NmVZL2FqNVVKQXh6ZmJrN29VUkFSd21tRStRZ3Y0MVBiQXF6Q2dnRXZmYzhk?=
 =?utf-8?B?LzJoTmdQaHBncjlUUTNxV1FZb0hDU05nTUJCTTFsK0JVaElSWGk5YkdvWGRF?=
 =?utf-8?B?VWZUbC83Q2YrQ0NWYWw0dUxJalNYVGw5QkM5U05hdzVJZTRaQzVCN05GbW50?=
 =?utf-8?B?Zy9wQWs1RVBrOUN6RmV2MHpRcE9HQ3JORy9hYjF5amRFVERlZ2hPdzBRUUlK?=
 =?utf-8?B?QU9XSUFab2RXQ3dDZ0ovMUxYSVF3OHFYWG5xdGxQQ05LZnQwUXpTUm1mMVZ3?=
 =?utf-8?B?ejR5Q1JKaHhrOEdsZXNDRjJiZnBlT2VoUjRyU2hmNmR0dU9qSTJKVXRxN3Ri?=
 =?utf-8?B?YWlHTUs1Ti9HVENJMWFCMFk1bDBDVTN5VjM3cnRBOUljRFZiUGxjOG9iMmxv?=
 =?utf-8?B?ZFpMa0lyZDFZWHU1VkFUWFQ0YUxRQy9MbGl4N2dmRXhYVDZkcjJ5Q3l0VjlW?=
 =?utf-8?B?Y3dieTZzdnhBRXlwdU85MUx1Ly9hRTBMNEEwN2pOMWZUWFVYbVpmZHovbitw?=
 =?utf-8?B?VUtZVUxvZ1lmTE5iZW0yRTBSeWJ3bEhRVmptNjJRUTZkNFRFaXExU1Jqd1Bk?=
 =?utf-8?B?RmE5ME1aQ2FiaXhRUmlGNGp5N2JkdnpWZGR5WjJWS28vb2U0RGNyVEZ1aFk2?=
 =?utf-8?B?Tlk1U1RCZk81SGZLVUd1LzArVHpyRFJ2TjFjNmVIMmFhbFdmYTVKWjBPMk9H?=
 =?utf-8?B?MFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4561d2ab-269c-47ed-f602-08dd80d23511
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2025 12:44:08.0654 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /TurNCrXHQd21ma8FtYf2z6kgbTAhAL0mxup4m/B1la8sbi4GYC6LAVCwVxUoJ+zTOvtC4qx3/L3KqDYq+iYNgkn+cMYOhYb/GU30AOs47U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8828
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745239455; x=1776775455;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HnuYPRhqPkX+FldimqI2iKM7wydA6ro5/qW0Q6U/yXc=;
 b=Z6XCLud48llBHIQ1IlYv2kmUuh4GNDcSrg1dORX7jQcgDnc4r8KSC9AZ
 hWScrmDDutcQH1FohWtEcVLWHP/vFDXwoGsCoS9AhTwBGGKiJROJ6ZOa0
 RPaNG60fzuXnD9tf/NMj8J4ufhGs1zoIZNuRkO11g/6KMJCeMP5gNLzQS
 3OsrUYLSJ1tqDj2Jjowqg6fF8ZF298BRGNLOqGm8rjXK2ZXHPKOLIFfem
 ecrIIpUNGBI/DP4dek6C9RzWhGdcAoLMz/A14QclmEhr7O6UzZR2ksbNx
 IKkZBQ1sLWs/5PKLUQJ4zzlZ/4Rrasmg4zMXfJMnfSXgDiXi4MlMJdvIN
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z6XCLud4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e heavy packet loss on
 Meteor Lake - 6.14.2
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



On 4/16/2025 3:43 PM, Marek Marczykowski-Górecki wrote:
> On Wed, Apr 16, 2025 at 03:09:39PM +0300, Lifshits, Vitaly wrote:
>> Can you please also share the output of ethtool -i? I would like to know the
>> NVM version that you have on your device.
> 
> driver: e1000e
> version: 6.14.1+
> firmware-version: 1.1-4
> expansion-rom-version:
> bus-info: 0000:00:1f.6
> supports-statistics: yes
> supports-test: yes
> supports-eeprom-access: yes
> supports-register-dump: yes
> supports-priv-flags: yes
> 

Your firmware version is not the latest, can you check with the board 
manufacturer if there is a BIOS update to your system?

Also, you mentioned that on another system this issue doesn't reproduce, 
do they have the same firmware version?
