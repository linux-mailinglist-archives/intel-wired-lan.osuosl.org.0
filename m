Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E87E2A7E7F1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 19:15:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 479CB81148;
	Mon,  7 Apr 2025 17:15:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SWivExt4DQbh; Mon,  7 Apr 2025 17:15:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9284D80B49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744046141;
	bh=9VsQIjekYKMmhin/5adPbtjIX/r+gw2XDVV5kJRpuNM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2qtPSmIOpfNTaUBK4iQ2hNOA99yjAsqfv5UfPR+iytS5QvVBrgtzhXUpGkkcegwOE
	 EWHdW9/JmkVEnHTITAmCvZfG//jnGIf4G/LzjFCO7zm1rrfOObxSKjlJIXeJelhWXG
	 bWwRkMBXel14Aby4Q0PJJOD8cKJAeiTJqJ/xvskr9pMvgv2Fpnprd6XZ70UlBa/vwM
	 /25M2b0bBArFI6+CAJz/rtzsV7iY/Ef+nSOBMPPTEqvFVLG9LVjh8CuhmnTBeaHW9a
	 V9mg+KkH6nknvruOwM3WCq2hUK1YrKDMlXDw8MeA5PgwRqztRhrSkJU+fgh9IuNtmT
	 NvuWBIEc6KnyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9284D80B49;
	Mon,  7 Apr 2025 17:15:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A8F31DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 17:15:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 277FB60888
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 17:15:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yFw6K4FU92Rr for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 17:15:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7E98660838
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E98660838
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E98660838
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 17:15:39 +0000 (UTC)
X-CSE-ConnectionGUID: j22xrtTGQ0aEWPLZ+43zQA==
X-CSE-MsgGUID: oxyTuohnR9qXCssC/4l8mQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56106998"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="56106998"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 10:15:38 -0700
X-CSE-ConnectionGUID: ZSswhw1+RAKdHr5C3t+wVg==
X-CSE-MsgGUID: zTuBpQ+gQ2+OUJzo1mKPOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="132865552"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 10:15:38 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 7 Apr 2025 10:15:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 7 Apr 2025 10:15:37 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 7 Apr 2025 10:15:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=APJUwWo2sr5ZGuiBacAx1FOInfXz/q5UIYZ6o+6KTjvKGRMTwF3t6RAcyyFMRffCC9k3mRIkpVTtMD0i0IvktQW4WQqmFgCGb+L00J/hPI3Fm4r3Np6j+vAppAwCexl1iTviTZ5Kh82qH+5w/ilO/pNx16EHx7NkUgt6g0RE9cR/5OyhL6AH9XoS+By9XcKEewLRMfuD1qngIyaUkIl69jmLSIiXhLheWGeG5L9CPlSWahIYNkvamWf8SaMeUid4WA6oDziULdlCpn88T4iAlJa+fcr0W4RKsyyD5ad4I81iV0LC53YawQ64hg4b0+RGWZ6cPnRGX7+gOXN7dEoo9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9VsQIjekYKMmhin/5adPbtjIX/r+gw2XDVV5kJRpuNM=;
 b=BXWgz6JJBJ3Pm9q5d9cR7TtBEhovr4fRgBhYHbgXm8vBIU4t3Fkew/TodUx1gKze9l1cKurGy/9M9/2rjHusCyRqI5oY8xpXf4xGDgGY9DV83wEFih+tgBN2eJADWg4NN9lShFbAI81Lyh11mBzfDKm8n2GZNpFNK5gak06cl0MK4iD46j8KzI/nJV7vsEBvxwsX1hpaGby6XnqvCN32uTQcBM4GR0sMgeJdFesCeeZQ2cS1vH1OUwgroi0fu8SbHeI40hhpCkAI8EQDe6KzOLUj6fQ9+ph8eJj2FNCYanYtSb9Npwuuro0CNwMfQWWKQO2rCjnQ9rGRui24EVhdQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by LV3PR11MB8768.namprd11.prod.outlook.com (2603:10b6:408:211::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.35; Mon, 7 Apr
 2025 17:15:31 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%5]) with mapi id 15.20.8606.029; Mon, 7 Apr 2025
 17:15:31 +0000
Message-ID: <770a44c6-c808-4b31-aaa5-be8e57fbbf53@intel.com>
Date: Mon, 7 Apr 2025 10:15:28 -0700
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Michal Kubiak
 <michal.kubiak@intel.com>
References: <20250407112005.85468-1-przemyslaw.kitszel@intel.com>
 <Z/O6HAm3GMWe/0aE@localhost.localdomain>
 <7f700a89-7058-4c16-b53a-2e84bbed8542@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <7f700a89-7058-4c16-b53a-2e84bbed8542@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0065.namprd03.prod.outlook.com
 (2603:10b6:303:b6::10) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|LV3PR11MB8768:EE_
X-MS-Office365-Filtering-Correlation-Id: 107e97d4-5752-4755-3a05-08dd75f7cd1d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RnpWNWYyVGEvUFlOc09PQ0UzQ3hTNFBpVFFsVS9iNnQydGhydmdsTlhRc1A2?=
 =?utf-8?B?dnJCWU04WnpDZWFIN2t2UDlySmZHenFIZGNGNzUyM2dINXhjUm9MYmJTWXJF?=
 =?utf-8?B?VzJDL3JiY0VXeVphSTR5NFRNcjBlVEhNbFFxMVE4MUpnRDc4R3dIb1R1OGhW?=
 =?utf-8?B?MVV5M1VBRVZrQVNhNlY3MUNFUDEvd2Q5UGZ3SitmN3NvMkt2UWVwNE42Q3N2?=
 =?utf-8?B?YVU4Qm9wRWZNMXlQSEVoRnhNK3lEOGdYR2d3WENTcUdkdWhGckFBc3lGTVFs?=
 =?utf-8?B?OFNYWGZZTllPeDV1UEZFL3VhTWlIK1ZxMGtuNWdFWGlDcWdMM2RUZXhtV0F3?=
 =?utf-8?B?VVI1L2hSakpHZnpHOFl5clM3SmZrTGJZVmJ5UzZ4b1Z0WTlic1ZWMHJuQ2hi?=
 =?utf-8?B?VFdiS1RlM1ZabVlzMEhwV3lKSkVJWUYzZzNjMDd6ODBxcENMaFAzOXVBL1Jn?=
 =?utf-8?B?TmFuVWlVaVpueGU1ZDdZRkNxNXk5OGJTOFVwTXIxY1pNMzRVUS93b0psRnN0?=
 =?utf-8?B?b0pqT2lvVlJ1Rk1uV1o1YkVpVmpoOVZVcDBNZGdmWnRBck1PS2NsQ1BOeXNu?=
 =?utf-8?B?djc5ZytvTVdnOVZyUG9qQVo4TTU5TmY5VnZjQmgzbkpOWGh5bWpEazRMMkxa?=
 =?utf-8?B?Q0VqMjVzZ25EbGJBdi9JWTFIcTI4alhoTmE4eW84dFJqenlhbStOVTZ5UGhE?=
 =?utf-8?B?L1pQVmZNSjMxb1N2aWRjaS9KYzVxNnVhR29yYmdTblI5QlFHakMxQ0VQeGVy?=
 =?utf-8?B?aTZONG54cGcxVGp1ajVEcUNDNE81NjVibGx6Zk9GVEdEbXF6d2pDUk0xV3Zj?=
 =?utf-8?B?YkdCT0RTMTA1bldmNTd2VHVMbFBrd0lDYi9kR2tjMHFPeFljZDE0ekdyYXRa?=
 =?utf-8?B?Y1pQVUNPOHpLVjhJblpQcEkvS0RZQThFVThTek56Z29paUJXWFdUTWRNR1R5?=
 =?utf-8?B?cFVGcU5oRmt6SWF4QUVHVGFCemFxRkIxM3VLYXUwN2VDT0VlMlRpZmxQUCsw?=
 =?utf-8?B?UmtMOTJGbXRYb2xEMXNFTWJiWXJRbTJvd0JFSk5WSDZNRnFXcE44Wm9Ya3VC?=
 =?utf-8?B?NHVRcWJ4QThnV2hhUWJqeVRQREtaQzJJd1F2cExqYmZ3RnIwa0loUDE0ZElC?=
 =?utf-8?B?SG9FSXdwOUNIN0gyRnNTSGg3eU84TnJoMzdXbUgxclhhTVRlcDhqcFlRTmVv?=
 =?utf-8?B?MnlqNStQcXk1SmZyeHU2L2tiYms5WW1DWGxGUkhWWGpxY2NNZ1dWbFdTUW8v?=
 =?utf-8?B?ZVNNY2tJM2REQzNDd0g2THp3S1FobDN4UmFRa3pTU2ZQVlAzcWRxUThmOE1B?=
 =?utf-8?B?U1dPeVZSOXdRLzlVU29BNG9GMDk2Tk95ekZnTGt0VitRSEdZN2N3MTl6RFgx?=
 =?utf-8?B?cE1wQ1V6S2xYRWljV2FIM2ptQk9wUW9pWERoNnZDM01JL2h1SDE5TDJJQ3JF?=
 =?utf-8?B?cWdUNlZGdmNrL21UVnVXV1NFajZiR2R6ckpaMEcvZUxsQy9Lc0tQUnlEbUxr?=
 =?utf-8?B?Rk8rKzQ3eTBHZXc1dkdVNC9pbmxWQjYxV2J3RDZpcExoUHRiSHk4TjE2NS9X?=
 =?utf-8?B?UUw4V2I3ZGRVRWZVSmZlN0d5dTZZcW94R1JZaG03V2Rka3VrOGloOGI0ZmRZ?=
 =?utf-8?B?eURzMStoZXY4aFVBSDI5VnlYYUFZUXpCWk1RbEh3NzZmQlppd0t2SVBxSXEz?=
 =?utf-8?B?ekkxa2NlN2VYWmFpY2xWMmsvc1c5SWs2S3Ivb2VPZjBBQzhVVU1nOXJxRDhV?=
 =?utf-8?B?ajFNYlJIcEpGVGQvTkUwVFZ4OFgvRXZxcjZGTmRoYzZiOGRZYzJnRXAyQUp5?=
 =?utf-8?B?ZkY2QmU3UWtWdjljOTBmN1hjNlpCWW9pbmFIUGRKbHR0WUNESEJuK3hnNnRE?=
 =?utf-8?Q?7OLb1afe1jmS1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VVpFZVI1M044bXdHWkIxZ3NTSXBWZS84Y1B4V2I0ZmdiM0w5TEE4UDR3K0NG?=
 =?utf-8?B?UVJKTzMrQlFrKy83S2t4blRuVDZCa3pJZ0R0UUxYWEhaNnEvcjdDUGduUFFl?=
 =?utf-8?B?UGZra2dhTlkzOXFPczRKR0xvVy95MmpYUUVDRjRUdERVWDNROCs2R3JoNHNu?=
 =?utf-8?B?dGxsSnU1dFJQUk9qaHdYNEI1bzdhYWphNkRlMlFIa2pmNmF0TEFTQ1FLUTVT?=
 =?utf-8?B?TWZWempERHJ4OGF1Ti95djlXZHVMNmQrSGc2OHlaeDducjZOY3NCSC9DdlpM?=
 =?utf-8?B?RDIydUp2aUNtNExxaUpOblFGUkx1VDlqbDRFQTIvK3FnSGhNZVJ3eWpNVDU0?=
 =?utf-8?B?RWFQbnpIaUJRcVI3dDdMQmdhbWtVc0dNQWw2ZjNiUSs1QkhPM0JPbHlDNUV2?=
 =?utf-8?B?Um9qMEtyQTZkYmMrRlh6Mzl3V2cybjZQaGpMcy96RUJRbmdueVJoUStrMVM3?=
 =?utf-8?B?elBvNllVNzEzVUR4VkdrWE9GM1hyRTBUY09DS0lkdDFxVjNmcStLSS9FZVZI?=
 =?utf-8?B?YWptWWU1NmIzdHNpa0JwczRJMG50a3MzeE5BUFVEVjZaRU1USFdDNVp4ZkZ5?=
 =?utf-8?B?UTg3SE9DYjAyMm13NU9BRVBjVnRON2pzVFo0aGxjR2o3ZUt1SjRjak50ZGIy?=
 =?utf-8?B?a1pUMlhEb2E2dmhWemZZTGpVYTFJbGtEVyt3U0wwUWtCbEFubVFxUGZtMlZ0?=
 =?utf-8?B?MkN0d1I1VjhEU05NZjJWTFg1cmxNYlBTclJSMHdPU0ZxKzZ1OVpJZEh5MkJR?=
 =?utf-8?B?VWsvVWNIOWpXVnEzMEIvaHNxZXpxK1doYXJtdVB0WGYySEw5dFRTWGdKK1Nx?=
 =?utf-8?B?M256R2xPSnN2UEtPR3FpV1JuYklLK09kei9TNGlkOGJjNldyMjBSL1NNK0RV?=
 =?utf-8?B?cm0veVZVU0R5Y0Zvdm5Iamgzek5KMm4xOUdlcVZEeU1DWkVnY0VjUDMza3JB?=
 =?utf-8?B?QzQ4QkI2QTdJSEo2ZXZPcDc2Z1M3THpsc1E2ekh5Nm9IYjBiNWFFamdCOFpJ?=
 =?utf-8?B?aENNMmxLUUJwSHFPVGErMGlWYVQ3VU55K0RYVmc5R2lhazJQa1A0Ymp6SnNa?=
 =?utf-8?B?Y29RK2kyRVBXMjV2OXJBY2hBa0xoS2NMVEtOZGJBbGsxTm8yVkRFTnF6UEhz?=
 =?utf-8?B?eDV4Nk9zTXU5V1J5V045R3U5TVdNRDdFR1M2SUowQ2FObHhtMFg4TjI4S0lJ?=
 =?utf-8?B?U3dmczBmb2Nlb3FONHd0Tk53WW40YStoTG5oUnFqL0pmdXkxekNxaUlweDlR?=
 =?utf-8?B?cnZxaFp4MEl5ZURCbXpFL3JxVENCeFlXYUZ2NXJwM3NBaTZ1Y3ZaQUt4MzJ4?=
 =?utf-8?B?MExmTWthT0FhM00zSGR4NDhiaTZqVHdud1poSmpHSFFCVUNoc0RMUTNtUjlN?=
 =?utf-8?B?bi9Fc1dqbTJkRnArK2Vnc296ZkEwMXlkOXY3OFZha2NDU215blZYODNaakMr?=
 =?utf-8?B?MG9rYlZHMGJDYTBTQ2htam9OT3RmWTVGVUJ0NTNhMWNYMU9yeWpNVXRuVGpq?=
 =?utf-8?B?Y0NLalp4S2VHUkFaNnYxYkNDRXBnVjRoOXUxdUVSN2oxdlZ0WUFCWXl0RjN1?=
 =?utf-8?B?WGFJTTAxZmZ1R3h3azZlT0tCTTNtRExKNVBFT25JSUcvQWp1T0t6S0lwemUy?=
 =?utf-8?B?VXk1SDBiQ1k0S0xDQkJhL2hKTlNwNnZvQUF4akdyZVJVMHA0TW45Nm9KbU04?=
 =?utf-8?B?eENLZjNneGRjdjlZc0xHOHlNRUVyUFdubFR3NXJhSDk1WGFkNmZUYXF2VGtn?=
 =?utf-8?B?S09TYlp1QUhzL0N5YjQwdXZlb3BNeEtVOGc2V0VyODU1RWZPdVVhY1diVjEr?=
 =?utf-8?B?YllUQ2VaTXE4UkcrcUNZR0kwd3lDMFE3c1ZsUkZxbVpUTXJmUmU1amtTZlJr?=
 =?utf-8?B?RVJ1SVZEQkQrVFljNG9YS01EYWdvR1dtZi9XZnBjVE9iZVQzZ3N4TnB1ams1?=
 =?utf-8?B?YnZMc1gzNGYzS013SU1DQzZHcXBUUENnRU5HU0pBQ0tLSFJXTllzd0RKbmxU?=
 =?utf-8?B?bGJzc3hXamVkWndtREpXa2ovTXN1dU9kbGYyRkpsRDBkdjJsamRnYTNxdVV6?=
 =?utf-8?B?b0txOW43Y0pCaktqb3oyVXZpOE9UK20rQy8vUnVrU3RKOHA1NUpXN3NlZ1Bt?=
 =?utf-8?B?bERDd2JrYmxCNlEvQ0dvcncrdmY5eGg1d0tiUTVDM3ltMXJFaEFJV2RyeHZh?=
 =?utf-8?B?ZWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 107e97d4-5752-4755-3a05-08dd75f7cd1d
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2025 17:15:31.7655 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yXest/B47D/HiebhWScB2QdqaFz9yW81vdXeC6mDL2+Y5YoFDUCVf22F5NHJG5OPDCd+RyPpVkK3ixRYIV74uX0Kk4kbzxCOP5F+iZ8pn5g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8768
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744046140; x=1775582140;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ozh90TewXcPRKbxreFCTh4yz2z9T6IqUa7J/cV1WMjI=;
 b=UFKK/T/Vlyw0OmaiQVZ8m18UuMpepM4XVVS+XuHK7AeaRJxbu9RM167k
 TAnTKMSUkU+DrvEag3RiPYtqb7EAj8ORaxmYSP4/Glz9mIDdashMgb5/p
 1+3sg0Nyddg5j5YqISVlIDllz3udLXwcU8EdHRp+RYHeNaqotWf1z8dhg
 vzxiPuCVRf4mD4DRR3eSkarxpXp02i8aLTrrsdA0E03km8jQRQD1ee+Dh
 E0iMmus846TKfHGIz8BMljvm8u4foxqt3zkbgdk25LNjjdoIk9mYdWE6w
 m9mHqB3brNsQM7eU19Uvin3qZmAPIY7+l9oKUeA4GHAZyRuXY7Un9FpRl
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UFKK/T/V
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: use DSN instead of
 PCI BDF for ice_adapter index
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
Cc: Jiri Pirko <jiri@resnulli.us>, Sergey
 Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/7/2025 6:30 AM, Przemek Kitszel wrote:
> On 4/7/25 13:42, Michal Kubiak wrote:
>> On Mon, Apr 07, 2025 at 01:20:05PM +0200, Przemek Kitszel wrote:
>>> Use Device Serial Number instead of PCI bus/device/function for
>>> index of struct ice_adapter.
>>> Functions on the same physical device should point to the very same
>>> ice_adapter instance.
>>>
>>> This is not only simplification, but also fixes things up when PF
>>> is passed to VM (and thus has a random BDF).
>>>
>>> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
>>> Suggested-by: Jakub Kicinski <kuba@kernel.org>
>>> Suggested-by: Jiri Pirko <jiri@resnulli.us>
>>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> ---
>>> CC: Karol Kolacinski <karol.kolacinski@intel.com>
>>> CC: Grzegorz Nitka <grzegorz.nitka@intel.com>
>>> CC: Michal Schmidt <mschmidt@redhat.com>
>>> CC: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
>>>
>>> v2:
>>>   - target to -net (Jiri)
>>
>> Missing "Fixes" tag? (After retargetting to -net).
>>
>> Thanks,
>> Michal
> 
> oh, thanks, I wonder if our pw will pick the tag, if not, I will resend
> 
> Fixes: 0e2bddf9e5f9 ("ice: add ice_adapter for shared data across PFs on 
> the same NIC")

I don't believe it does, but I can add it in. No need to resend.

Thanks,
Tony

