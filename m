Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614AC958FAB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 23:30:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A671040B38;
	Tue, 20 Aug 2024 21:30:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TN5N0Mrd9i2s; Tue, 20 Aug 2024 21:30:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64CFD40B4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724189414;
	bh=hzNZc3Bawx260EwoEYLgXvn21HeRLCoDfDl1ShCF3do=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0W1Y8GJgBv0iswRZzkiPWXPYL6mnj54Eg3sXQQik9dCjJRyN6D42rgtxjKuXKrAnU
	 NSmnyDjHzvKKRvsMXgQ4fb0UkbgnqjYcJ2FW/1Jd6cDyiBr/L8DXmtJZklPxj/PdNT
	 c5n+Qnm9VryjVQHxD7ZJ2DV2x55OJHyzG0/oF2OZa/O7mV8OvGtqbbrgjXuwm96O0m
	 3pz2EC25W+iweR42cIJkKgitNQzhsAHH90XX7LdD99MN88+Z8ONyaSojhUOZA2uCP8
	 J6THKCt8j64efeFk0snTRwW76deDdHKFjBUub+dkfE0F20hSAY+2xBh9Y8j1jo2nhx
	 kHDfw1SFDuCdw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 64CFD40B4A;
	Tue, 20 Aug 2024 21:30:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 504361BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 21:30:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3CE9B80BB3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 21:30:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rHzeq-D-d0G7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 21:30:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 793C080BA3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 793C080BA3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 793C080BA3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 21:30:12 +0000 (UTC)
X-CSE-ConnectionGUID: pLonOm62TD6VgoaVATgBgA==
X-CSE-MsgGUID: DXEjEszoSySNOW/eondEkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22138099"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="22138099"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 14:30:11 -0700
X-CSE-ConnectionGUID: bPssdzdDQkiZ7T0VHFKr9A==
X-CSE-MsgGUID: GdTY9qU4QHCqgKFvOoX0Kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="91593231"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 14:30:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 14:30:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 14:30:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 14:30:09 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 14:30:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=htGve+jPiL7q3PkuZnvUpf5YrJFHTH113v/HR+pRK9HZlT/zsKCh+fJKK+tDP7kM5UoClFSAiZY18Kya4xP8nncr/pFzaxfBc9G9D9AL79YWC/suwqrXfmSI7iYXn8TdAoDebmOXJTIa3nU/3bcHsvahciBDNVkGxuHoDgs8fQfN3sSOBaGPFz31f61yGNYQOaSUa8y3hSwQSA0awo5p+wJuYQPIicHrZvscW2vNSXhQx0TuLre0g+rnFg3lyLCmfJCNr5WbbzS8T2YYaL4oRe2obzH0loMf6mWeHRiJF0CGzgyyNcA/7SCGosefAd5Oh82EpIHxOrRZLdF9Ib3N6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hzNZc3Bawx260EwoEYLgXvn21HeRLCoDfDl1ShCF3do=;
 b=Y/hQD0LUYYS9ykEfkM/fQIpQuSQWqGmf+4XzilbuBj1WXtVaJM+NR9TA/wuZe26J7kx1tpctFxnjSCu7u3whCYv8RZZd4PHvLjofeR4Gshb07HD7RryRNaYHYiSEY7MaTGySK1nDAlte/esx5K7w2pm6zY32LIOM8Q9yQakd+0mh0OX3NDvT/0CaliSRtgWZducwjgUYVyrjQKYyixYa8TpqRpzCSLzDTOIF5a6ibF9hi19UdkWoIZLaUllrEElWn8wQepcq/uX0qDkwv1P5oVTFbROODLJg0RTQ104v4JDPvTXU0NTlURypnnZ0WHNsinO70u2vaRDYH8fyls+OFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY8PR11MB7732.namprd11.prod.outlook.com (2603:10b6:930:71::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Tue, 20 Aug
 2024 21:30:06 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%2]) with mapi id 15.20.7875.023; Tue, 20 Aug 2024
 21:30:06 +0000
Message-ID: <c97664f7-1341-49cc-9051-69c51c9b4768@intel.com>
Date: Tue, 20 Aug 2024 14:30:05 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>
References: <20240819092756.1113554-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240819092756.1113554-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0239.namprd03.prod.outlook.com
 (2603:10b6:303:b9::34) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY8PR11MB7732:EE_
X-MS-Office365-Filtering-Correlation-Id: ea66fd2a-038e-4270-0a85-08dcc15f42b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ako0NG1Fb2xYbEgxUHV4T08waFRGS01vdVdZY1VCSGhTYkk4WkV2YUZQM2l6?=
 =?utf-8?B?MjR3amcrVVM1TG5UazZRcWo1aVYyZzFNWWdGWUZJRXpVdjg4UmVhRStwSS8w?=
 =?utf-8?B?UzR0VjBuZGp5QVYvbkViaU5zT1c2MkVaQks4VFFDMVVxVlA1Z0FzUjMrSjYv?=
 =?utf-8?B?bkhuZENrTUVET1VQMjgycndPRE5yQVp4dWZHZ2pmWStjcktUSlFNU0UvSUhM?=
 =?utf-8?B?TnA0NG5DaFRwZTF4d2Y5KzROdmYzWCtqdmlqcDNlTlMxeHIycGNKb3BrRWh2?=
 =?utf-8?B?b1lWWTQ0RlRMeEt5Q0J0Z3FPREkyS1Z3dVp3R2pvckJIdHNEOXBwKzRiWGRQ?=
 =?utf-8?B?VzUrNHNxRmZHdHFRWXpsVUZnMUh6MjJhSkFqUVFHdUpOUUc3VjRsTU5GV3JX?=
 =?utf-8?B?SmF1V0FkcEQ1UE5TRXBlSytucGtXZ3czZ3A0WWMrQUMrUllRR2V0dk1zMExl?=
 =?utf-8?B?bDVQRlJLMEFoZWRaTjVmL3hBS1lZMXhOazY0ZC9pR1hoN09wWHhjWjVIRkJD?=
 =?utf-8?B?b28vM3JOMU11QncxZ1hNRHc3ZWlORmZMaVZ0bDRuZHQzQkMxcWFNbXMrdXZX?=
 =?utf-8?B?bVY2SGh3amlYcVRJMDU2S0w1Q2FOTVhRNTNOcllIQlVwR2xJZVhXWnFoL1VX?=
 =?utf-8?B?RlBwWk9vblJROVFXYU9Ma0IzTXFwWFJoUEdTTEdmVmJXVmFZTVRVVGpiS1NL?=
 =?utf-8?B?cnJlOUlRc0lqLzIxb3FxZTN1TXdTYVQxbHp3ZGtwNHJyQStGQ28rNEYraXBk?=
 =?utf-8?B?ZjR5dE5aRkxZVGozRVhZZFlaa2l5Rll1YlZzclRRa3daN2ZuZ0lUL1NaRzUw?=
 =?utf-8?B?OUgwMm9xa3lXb2VCTU1mTDhlcGc3N0lCS05CUHNSY0JranRtMW9La0J1ejRh?=
 =?utf-8?B?TW16OU1wRWhOSXUralhEdkk5U0lGcmovd2t4UEQ2eTE5djN3MWVGRGJzcUlT?=
 =?utf-8?B?MWtSQWtKdllyTzAxNjdMOVhqRUp3bHZWTkRsYzFVakswU1FuNWdaSnR3R0ZQ?=
 =?utf-8?B?THpSakFJSm9aaXQ0bGJIWUx1eWZNb1ZERHJuRVdNSXdsMVhUNG9NVzl1d0pZ?=
 =?utf-8?B?RWw1bDFzVWd5eW16RU13VXBYcEExcTRjMmpZcHlQeGNaeENNNUxDRERGUWNQ?=
 =?utf-8?B?Y0pjMFQyejN1RlpFTFRpZGFJTmVwbGdrSkpucGIxRHJ1UUFEdStvTk5zc2ts?=
 =?utf-8?B?RW1zUHNtU2Q3TTBDS1BXelRWVkEvWlFjMkFXellLVE5xQ0kxWWVzejl6THJE?=
 =?utf-8?B?WTJoayt6Mnl0bCtJTVdvUldmN3ZWbHpzZ2JobUNWd1dFSlVIZ1UxWXUxcXAz?=
 =?utf-8?B?RG91RGdnNVl3b09sbitlTVdnRXEwRE5hb016dGVuOFFPcHROS0ptaXdqL2Vs?=
 =?utf-8?B?N1V0RHdlVHRXVnBrV0o5N3RhT2ozbGdHM0ZaM0xvbEVJcVpUNzJGT2tZT2RI?=
 =?utf-8?B?ZjgzMVBFT0E1SGhzTllDeFhiWi9qbWkvZlcwcHppV2VaQlpyTlNpb2FYSWVl?=
 =?utf-8?B?MWdZUndDeHc3ZDZCVTRSU3Q5djF6TVE0NGs4NmpYdE9oanhJYjNjVlM0cWVB?=
 =?utf-8?B?MnhFSVg1bEQzSGtHYTZZaDhsOFVObDNyU2t1Q2hYMVpSTTJtV1czN25RUkFL?=
 =?utf-8?B?ZzdBbG1aWVFUMXQybEkrR00rMWNhT0RUSmZGUHUxUjE3UjRNUTk0anBmaEVQ?=
 =?utf-8?B?NU1zbWhYN1dhYlM1UDBoc21xbjExblh1cC9ZQzk5MDhJUG9WajNTTXdVb2RZ?=
 =?utf-8?B?Q1EzS3pKVTBiUHF3QjFTNVovVUNwUVdHMHFNa1Fpck9BRW5oZnYvRkFoR2lM?=
 =?utf-8?B?VTltSTBodkdpbmcvaDh4QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qk90R0Jsd0ZRbUhqbzFHMnArZEo0L0NDa2xqRDVDOWhxZzY0NHhlQ3R1THRB?=
 =?utf-8?B?dUZNdllnZGgvdFIwMVBIK3BWSVIxOFhMbGpmOWxNUjQ5YWlqZkQ2WDNPZDZa?=
 =?utf-8?B?amNyNEwxVVdFRU5NdnBpNENUYXNGUTdjMVA3RC93eW4yMTdXTnRPN0tuTUs3?=
 =?utf-8?B?VlZkR2hZa3dhbERDOE9wc29zaHNDa3VrcEpwMHIwSm9IY3pPYTZMaHg2TXVq?=
 =?utf-8?B?bGptRTJHZlJ0OHltdkp4T2V0cDRPckdGZTB4R0pNclp6MlZqd2krYjhWWmpE?=
 =?utf-8?B?VTlzZkJjcUFzbmtmdWJIb0IvS3FueHp6WFZ5Zk5udXEwT3R1ZlM0VGphYzdG?=
 =?utf-8?B?SUw5ZDY3Rjg1YVhIUllGSzk1dk9FTzlrSW9PandSN05heDh2V3RPSHdtWUls?=
 =?utf-8?B?RFdMbzhoQXZvcjljWktwbnR3NEpKNlpGblJHYnVMb1VQUC9ZcEFVdEFpT0Vv?=
 =?utf-8?B?eWFyQ3lUWEZKUlN6QjVCZDArWU93d0hxSEEwSHVWUTZRT3VMdXBtUDBZdExO?=
 =?utf-8?B?dHArQkliS0UzQW1zdVVZcmpIK2RzMElCOWNuT2ZIZGN4dFdDOG55ZEtMcE9R?=
 =?utf-8?B?Z2NVQ0tES25UbFdwbW1HL1dTa0JjREhJNmZnSlh2WFNWWFVianUzeW8zNm41?=
 =?utf-8?B?L29JSnJiYWYydkdGUVNWd2diN3dLdllwY1I4RGQ3a282T1NycGM4T1F5Nktx?=
 =?utf-8?B?ZzBWRHZGUW9KQU9qckxKUFBqZHloSUd1VjQ5bHFzVnZ6RWQ5STRWNFRtMWFx?=
 =?utf-8?B?UEpMdk05eTJPNjR6T044Qjh4Z3hSWk9YMXFVbHVFSGlKanZZS3BZdUg4bE01?=
 =?utf-8?B?RDBpN25MUlpzbXc3YUxZTVFycTZ3MjNsT1lRVWNid1F2eXBJL0VEQ1gwQzBi?=
 =?utf-8?B?dUdnOEd5aDYrYXdOdnhCN1orUU9SKzhxN1REZzJwVWJIS2RybkZ0NlljVU9v?=
 =?utf-8?B?YTZsQzVUT3NyNDV4clFxRDcrQS9Pekk1dWRTUDIzQ3Q0L1BZMzVRM1Q1UHNI?=
 =?utf-8?B?cWRDY1BHM1U5by8rVUx3UXkzZTRMcU1OWVV6ZlpzTklqMjQxOXRxMDBRTUhC?=
 =?utf-8?B?cHJjOHRSbXc5UE1tdExDUHVYR0lZSmg2ays4YWhKcnR2MVluU2RDWDg0ZnI4?=
 =?utf-8?B?T1ZoemdqdWMzbnhUWkREcFVyOWlXakhqZUZ5UVdxa2VMQjY0a0QyWVdoVGlK?=
 =?utf-8?B?Vmlzdi95ZFF6VHlZVSt4RTNDTkxKTHdESnpTZHc4NXlKWWQ2eFJpWm1NYUJF?=
 =?utf-8?B?VVc1cXRmdE0wWmxweW9qZWlxeDdrVkNsdmk2WTdSKzBmWG1IdmpoeVpERWZQ?=
 =?utf-8?B?V0pPeEtzTkNEVXdmTmt0QU9qY2k3NFVZWVNLY0VMOTFMQmJ1QTFxUHMwV3pt?=
 =?utf-8?B?eThUdWNnUnNVcmluKzNoclZTZ1kxdTFkL25PVnZZWG10bE95VW9MWmo1L1Bk?=
 =?utf-8?B?NHBDSHI3ZDBPUHRseTdFU1BYajdkMWNuU2NZL0crS1IvZElQVk9yRldnSEZS?=
 =?utf-8?B?d3ljdjF5aExsdkVPaDdRMGcwRi82cjkzeHN2cUVxRFhUL25qdk90Kzg0UWQz?=
 =?utf-8?B?VkF2bFp0bFEzWGtlbzkrazRzMWp5RnBObHpuUVJjWWFzZzZHVU1valFJcExW?=
 =?utf-8?B?NFR5cEZyQVVrMEkvZjdJN0E0ekdLUloxaUNIeHc3VFNNTm0vZmJVR3NuQlBy?=
 =?utf-8?B?WHJNdDFJUVh4N0FHOHZ2QkMxNXZobE5NcUFQSnhxZnVuTkg3YXA1Y2M3ODh3?=
 =?utf-8?B?ckV1SXU1V3F0ZzJNcEt0V2V4bWh5VXVocGxHeVBDdnhmNkJnT1cvc3dWR2tT?=
 =?utf-8?B?Y2cyUHNsWEhLTElyT212MlNRTFVabnhXZjRVTHl5MVkwRHlHcnU5Qkp3clZB?=
 =?utf-8?B?ejhtblUxc2o4MnlLNy9VNHA2NTIrZkEwck1vUjg3UWVzSkJuUFBVRnVvc29O?=
 =?utf-8?B?OUo1Q0RHQ3VRQUFZRlVTVU5FSGxJVEpnRUNuNEdWMnJ4S0RoSE5yWG9nNDNE?=
 =?utf-8?B?RFJab0MrRHpsVGZ4M3pYclA4WU9XTGtTRllRZHc5bDBDaTk0eUNQTFV6R3g1?=
 =?utf-8?B?UGRkRHlycjhpTGhQd0RQbVZTVTdkKzFtdXNjQkx3OGJXaFNoa2YrK2dRWkVR?=
 =?utf-8?B?UUtLWDVQbXkvTlZBRDZUWTRrUGd0UjU4MXorZWZUUjVZMHpSUFlVbEhoYkYy?=
 =?utf-8?B?eHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea66fd2a-038e-4270-0a85-08dcc15f42b6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2024 21:30:06.5951 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gXLLo9t6i7HntZi47RvkzJAa09w+/bDpkJZVlCn5Oh7AtylfYNeq5DTdOnEh4HxseL0u0FCUNpHPUy5uBjG65hP63BKSIcg+0ZM2Hrm8gcM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7732
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724189412; x=1755725412;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RIJZvvf1wV+s+UVKnQWJmU5pCDU4dnuwBZtfEYBjXcQ=;
 b=D7ZQ4FoL8hQTojBJqcjlII3Jgugths5V3z5Al+zzXc1o+5xVsjdD5oYu
 r1tM6+vX2BT4VnXdX2FF/JV0rA9Ka7iKG7OYQew9pbDS24RKVwXHUUFwW
 xHc6G4XzOXQtGmUrt+crP9qfyCdpnr2w0pH2afNWWWQMC1PDao5nS7Vy5
 rpH67ygTKAFkleUboDeAIo9nmWYs0m7L+o9O0nTNz4UkxS9j20dCHdwp1
 UL3YjrJt0Y5L+W02KpKmfc88Dtz35MezUoS7csjSIMIb4X920ki5h7RUC
 +9/m1xAF+X4KwRhw5N9/nqEeJU0ndQCWvhRnVPkW08EytuRIMlK3V42lP
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=D7ZQ4FoL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] i40e: Add Energy
 Efficient Ethernet ability for X710 Base-T/KR/KX cards
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/19/2024 2:27 AM, Aleksandr Loktionov wrote:
> Add "EEE: Enabled/Disabled" to dmesg for supported X710 Base-T/KR/KX cards.
> According to the IEEE standard report the EEE ability and and the
> EEE Link Partner ability. Use the kernel's 'ethtool_keee' structure
> and report EEE link modes.
> 
> Example:
> dmesg | grep 'NIC Link is'
> ethtool --show-eee <device>
> 
> Before:
> 	NIC Link is Up, 10 Gbps Full Duplex, Flow Control: None
> 
>         Supported EEE link modes:  Not reported
>         Advertised EEE link modes:  Not reported
>         Link partner advertised EEE link modes:  Not reported
> 
> After:
> 	NIC Link is Up, 10 Gbps Full Duplex, Flow Control: None, EEE: Enabled
> 
>         Supported EEE link modes:  100baseT/Full
>                                    1000baseT/Full
>                                    10000baseT/Full
>         Advertised EEE link modes:  100baseT/Full
>                                     1000baseT/Full
>                                     10000baseT/Full
>         Link partner advertised EEE link modes:  100baseT/Full
>                                                  1000baseT/Full
>                                                  10000baseT/Full
> 
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
