Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D43C1ABA1E0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 19:30:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9405F61253;
	Fri, 16 May 2025 17:30:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OatBc_7DbwWZ; Fri, 16 May 2025 17:30:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0050B60A69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747416637;
	bh=1PQZLv7W/mVgpxKHBRTWyhYak4EWPelbdPHaAWP6IXA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JzQRL3QbIj6UqlPfodujCRuovT+4OmwL1jDZkHoO194DgunQfR+Ru9dwrPwUokYlS
	 O3dK2g2cyGDxeu7KMEXSDXHW778b2izMOwjPJUvgTGiwZdRyYTu0WeTRAfHgq2ytxE
	 fj7jW/5liWTvENpzu6Lhs3XEVlIStuaxBPotAg0dWUggqzxLjXJBHQArCUvWA5SbLo
	 BdrcII6AJs667cQH/H6ltVAc3/ed3MXp8TX6zOt3Lar6xFbr/DQB7hHmAJqyAnr0G2
	 x5Kp8EmwMYNZ8PJ6GWj+Lj1VXBQ6Q3eEeRuszRd47M26bRaSzojqH0W7be7WnFkssr
	 ej1T7KXBCCCgQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0050B60A69;
	Fri, 16 May 2025 17:30:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E584F185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 17:30:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB39C60A69
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 17:30:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N29STNw6C0WE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 17:30:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CC1B760A76
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC1B760A76
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CC1B760A76
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 17:30:33 +0000 (UTC)
X-CSE-ConnectionGUID: ns3xcU7WRFW8DRsvcfYwSw==
X-CSE-MsgGUID: JbcHbnAsT9SfNwbkYENCsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="49382333"
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="49382333"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 10:30:31 -0700
X-CSE-ConnectionGUID: sU+vjuvTRbCsqlEOoCDT3A==
X-CSE-MsgGUID: +AjjPxBTSYWsgjvWKZxN1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="162054171"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 10:30:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 16 May 2025 10:30:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 16 May 2025 10:30:29 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 16 May 2025 10:30:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dom92oMRGHrD39jzVldVgz6Hzgm3l6yoxTmlvC4bOmTDq8zZcRuZK6m1+trdL9eTYct4jtSJQBTvQQ7FT0aT94vbJCvg0RxG1nqbSMixbZeUnrD0iQFYONmKqbMqv7JY3vkTvRded79ezm+pu9pRVhS3kt12FFSOeQ4k+snMKe2EqxJo8nM1lyma5772JA9aA0CTqFq7642SB59zjiIi6Mv4tM9xIwXrxRSvl7TrtbCn15FwSrrRA5nAX+s82hnqPlM/w0rnPVBDMZNKHctfTQIXPLUd01IH2ciTCo0qmQBWYqorv1rkWu1TjVIfXiBhBm4VVsGYLtiPaqwmqBj7nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1PQZLv7W/mVgpxKHBRTWyhYak4EWPelbdPHaAWP6IXA=;
 b=eRAXW0+An51k6dR1pkdz0dDIzMYwHCmD75bKrDx0mMvYfu4ncwhgv3SdSTyWZoc174YAPUbkGr81vgrZuYLOiEURmo27vwFnXVRNChDh77UpdhGOLzO39v19SsojM71UG3Sxv171P/ik3uS64lumcZgA7WOPeJ4Wl72nGevtsaeXh513Ki8Ps7RtcTDwBDcTY4MtsOzzuPwIQ6YJUR9mJ1adwFQIMSJTVGGVID7/gtMaOqbvn/91Q/qwZXxQlca+AwI9hTqatb6T2B3BLwJd2lkE5JgdGUM+ZlP/GHJkiQ/SYKtfLUYPD7WWY398Y8OV+T6JD5wN81xHIjxE5CbZ+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SN7PR11MB7510.namprd11.prod.outlook.com (2603:10b6:806:349::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.31; Fri, 16 May
 2025 17:30:27 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%3]) with mapi id 15.20.8722.027; Fri, 16 May 2025
 17:30:27 +0000
Message-ID: <31f29ba7-7731-487c-9738-1beab56b727f@intel.com>
Date: Fri, 16 May 2025 10:30:25 -0700
User-Agent: Mozilla Thunderbird
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Konrad Knitter <konrad.knitter@intel.com>
References: <20250514104632.331559-1-dawid.osuchowski@linux.intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250514104632.331559-1-dawid.osuchowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0027.namprd16.prod.outlook.com (2603:10b6:907::40)
 To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SN7PR11MB7510:EE_
X-MS-Office365-Filtering-Correlation-Id: 8148d951-db29-44a0-7367-08dd949f594a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dXBDUkpQL0FyUzd4ZjRVcng3T0lGNThrUzdGRkd4M2d2dWpxckMxenZSbUxO?=
 =?utf-8?B?Z0RPcDN4N3BZb09oQ09IVlU1ckQ1bTF5RVNOVytxbEVJWGtCd29nbnRJdzBv?=
 =?utf-8?B?d1NHbnZPdys4ZXhrQnpsNkpjZHhiZGRPZ1dvOVYvK0MxQ1JiZHZ5S2RXMk9s?=
 =?utf-8?B?VWJCTjkzam5QcHNnQ0lLL2dBVUNrQ0FHK081TWhnT2FYZWpKczU3cTFVNjlB?=
 =?utf-8?B?TVgvU0k3eHdQM01VeUd4dHNxazZjbWh5bmVFUWpJQzQzaFVLZ0M5M0ZXOG1u?=
 =?utf-8?B?S3BNc1R3QVovZDdOVEY4UTZFd0c2bmlBZDdOWXI5S0JwbktmS1p3dVlock9C?=
 =?utf-8?B?ZVQwNS9mUzdhWGxaVWdoTzJYQkUzQUtKLzlMYkRVZ0FHTWZORytyUUo3SUlI?=
 =?utf-8?B?TW9jei8yMCt6T21PcEJjeVNzL2d1SmgrellGU3ROZk9sTHdRMUpJZGVBb0U0?=
 =?utf-8?B?QTBwdndRbmRFQUM4SGNNbnowa1FNa3hHZUJJQk9FTnZYdUVXLyt3ZjVXTHVD?=
 =?utf-8?B?OEtHbzUvM0lUeGJLblg2TktKVlRmTGxZdUM0T0VpSGRBTmlFWHExeVJid1BP?=
 =?utf-8?B?SFRhYVVEQnBxSlFoZkRsV2hxRUg1TGs3dnV3TlU4TzI2clFpcHdQVkRMaXVP?=
 =?utf-8?B?Rnl1MHdnQklWbGFlOXJzcWgrUkZ1ZExDVXBQUzNYU3dCSnM1aHk3SlMzQ3BV?=
 =?utf-8?B?YkpublR1bXdwMG9Yb28rWjZnMG56eVRMUlJlSExPdWpFekREYWMvbE9pSHNw?=
 =?utf-8?B?azNjcWxLSzRYQm5sOVlJb1JDUlZLQ1Aydzg5V3hTV0tmcVVrNC8wcG9KOWJC?=
 =?utf-8?B?cDhCeDErOGlidEhqV2hSOVZqTnRWMzhPSE9XNm5kcXdzZEJmenBvb2ZBeFVI?=
 =?utf-8?B?Q2ZUT2QrRUZadXl3R20zWGllemR2UHI2L0JuV0RyR1h3YWRoN1V0MUpOS3RD?=
 =?utf-8?B?Qm1JazUvU1F0cnF5QTd2aVh2M24vRWJwbTdqOGJmS0FhZDAxdkdaN0VZT3pO?=
 =?utf-8?B?S1RqL3NraFdOQnZtTFp6TTkza0kvV0RpdkU1S1NyOC9keWpMNEswNE1tUm1w?=
 =?utf-8?B?ZmdEYndUaEkzK05tNWZ1ZU9rd2JjdmFPUTdvVHBBZWNxdTd2Q0ZidkpXQnhH?=
 =?utf-8?B?bVdLWXRGTXBOS1c3NGptSFlOZFMvTXJzbEMwQlJDMVN3OTVyUHZHY1dPSUZ1?=
 =?utf-8?B?MXdFZzAyRCt3YUFJNXBiY1RUSGVITlRqN0tTVFdXcldkZHRlUlBTQVh3QzZS?=
 =?utf-8?B?K2x5cURtL1pWUzdhQ0JMWXNvWmZvVitjZVo0cVdmSit5VUNiNjFJYnpUMmUy?=
 =?utf-8?B?NkZmeUIrL0R6UDgyL3I3a0pPRWhJZmZSTUQraFRRRDY4UExHYXNVdUlvdzA2?=
 =?utf-8?B?NE9hRVFyQ0VZRjhxMCtXMTlncVlnNTZMTUZncWVkZHNpMHNObEFKUVYyQ3lG?=
 =?utf-8?B?eDIySmtxWVRGMTZVVCswa2QrTzMyQ2NCTW9nd2RXWG1iaStXbmdPK3VPM0pQ?=
 =?utf-8?B?eG5xNFVHQXp2UTgvRmpNMytwSnhqSHhWR1I2TmdzY1BOTTRYTllnTkpRdVI1?=
 =?utf-8?B?K0Q1dzFxWDdQajdyMFNwbldDbmN4aDR4REswRGNvQ28xczdWMmFvN1hEeTU3?=
 =?utf-8?B?U2hadEdydFo0eUF0TlNnOWJidTlKdXdTNE80NGxIeDZhb0d0MzA4dG9aeWpy?=
 =?utf-8?B?UThYS3ZPYTQ1ZzE4VWpkUFRoTG8zNEVNUXcvRW11TWczWEc2aXJoazY4cjR2?=
 =?utf-8?B?ODlvcUNuMk1ZNHBxNUtSUHc5dFQxbWtIYUcxayt4aVN2WHRWcjVVSkF3eHBE?=
 =?utf-8?B?NWR2Q1dVRkdSY2JHMmF1TDMvdXBtWlBab2MrQm05VDR3T0g5OUFvbE04TDFL?=
 =?utf-8?B?NXN6Z2dhVHM2SGRwYzZGR2ZrdGZmTTNDQXA1VkltS0FDT1NKd1JJWFRrclcr?=
 =?utf-8?Q?SIgv1sW2A2A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aExtOEZIWWVUT2ZEQUdHYmpUT2VXc2VJa25aUTBLUTEzdWlDVVpUMFdJbCtF?=
 =?utf-8?B?Y3lxSGw0QmRRSU85Rk9BejFwMEtBSU1pRzZMRDYxQXpNSGZFdFdMVU8wM2hL?=
 =?utf-8?B?R3M0d2grdi9kVjQ1MWQvSDZPY09HMXlmSHplUS9IZEUrZ1dPTEJwWjJVUThD?=
 =?utf-8?B?bFZNbVJRT3NMSUFSdFVjUHYwUmV6TVlkbTI0enVSbVI2QzBlb09ldnl2N3pJ?=
 =?utf-8?B?eDNwc2lNT2h0K2orVEJJcnROVkRHRk5DYXNLR2daZ1phTFAvSElNYzF6OVAy?=
 =?utf-8?B?b0tTeWVPalZYOGpjV0JvR0w2aEtlY2pJdGNrOFh3RHd1U3hMQTB1MkErOXdL?=
 =?utf-8?B?aEJWVkk5RjduMzlUTmIrbW1ZVkVpQnd2TzVhbjRoVjZxQ29mYzFISEI3UUpn?=
 =?utf-8?B?a1l2SWlXdDhtT1FzYjFHemZxQWoyMGNFNk1HUmpKb3VFSi8xelVjUnVXNlpK?=
 =?utf-8?B?VmgyY3BueDBpZytLZFI1eks1TU9Xa0YvUzNtZUFhL1dEYXlKWWVicDJ6TzhK?=
 =?utf-8?B?MG4ySnJ2d011Y3A5akl0QSs4ajlBaE5GUHRicEplYjgvSVZibFVGd01lUUlS?=
 =?utf-8?B?ZWpNeVVpVm9KZTFVTGN3QjNyWlNYcGQwa2Uxc1BUWjVKQVJzb05UdjZSdzkz?=
 =?utf-8?B?cEsycFlQVkwrTHVyaHdoN2M0dG1GZmlmd1NPZ09iZ2xJZGoyTnJ4RDQyTjNl?=
 =?utf-8?B?M2Z5RFpIMkhHVVhQbHFzdGIrWWd1UmFaWnRxS3lyZ1F5aDVLL2lsQXZjSHp0?=
 =?utf-8?B?SEJCOGI2VkNkZm9PQk40djEwOHZWS0VHUzVJVm1iOEQ3YldWZllYN2MxQzRF?=
 =?utf-8?B?ZmtJemJ2R0F5NHdrWlVBbHk4NXIzdmhFYURLSDMwNVJjd0YyT2tpSGE2cGow?=
 =?utf-8?B?eUZkUmZOS2tqbE1WVVNPdjZKYklRdzVKWEFMRzZXMW91MXNmNFRjZ3R5U2N5?=
 =?utf-8?B?YXZqRFFISWxZTHd5bGdmRitYZHdtakV3S25qU0Z2ZXF5WVVSVnUxTHpTQ0ZJ?=
 =?utf-8?B?M251UXFId0c2cXNMaVp4cGpOcVczTUZMVktxTjJYQlBKNmRSQ3NpMDYxRlRR?=
 =?utf-8?B?SkJBc1NNRDFQZ3VxTjdnU1h6M3kyM1A5S0tQcFU0dVN1bFZFUzJoOUhWNzRL?=
 =?utf-8?B?aXpTVmxKTFlSV2VlMGxRMkdSVVJXUnBKamhJS29HZUVsMDQxUlkvMzFEU3hP?=
 =?utf-8?B?RTh2MEl4ZDMxN2VVOC9aNmxiRm9JY1lERzZybWRJSUV2ODhWbjBkalYxeUFx?=
 =?utf-8?B?RXd6c1dWZGExd3l4YXdtU2R6cVdsbUpIa2VwaEh2d0paVWJWMHZkd3ViaEJh?=
 =?utf-8?B?VU5yTGxEVmozR0J3Y2xXRG80Q3YvaGhzbSt1aVBoT0Y3czhhZEowUXQvaTg1?=
 =?utf-8?B?YlVWQmpJTkFyUkFzWVJuR05DWjNoMUU1TE02N09HWmFPT29OWnVPZ2M1NEJF?=
 =?utf-8?B?NU9lUkFzaitUNXRqQVdhSkxmK2FDSzlRQXFCK2R1UEdXVUVtU0hPT2FxbkdX?=
 =?utf-8?B?WXF5TGlBSWJzeDlHKzFHKzhJYjlYLzJIYTBudnFhSXdTYk9pdW9HZkVEd1hM?=
 =?utf-8?B?M1FOUEgveU9kTlQ3STRCeVQ5T2JHMmtYUEFSd1RhL2RJWFBkN0dmZk9nZXdD?=
 =?utf-8?B?YUpieWVNNWlIN1M5YXhSQXRoRE0wSGhtNEdmR244ZVJoYkpVZFZBRzViSDJq?=
 =?utf-8?B?V1lyRkMxM0V5YW1vSldXcDFrelduR0U4akFQbEo4OWJOS0kwVU5PWEhXTVVD?=
 =?utf-8?B?eGVtcFZFM1pzaTBRUTNhWHg1ZDJNdFpXL1VyRFozZ05Fc1Y3ZXA4K1RFdVZH?=
 =?utf-8?B?SThaT3FZM0ZFVU1DQ010MkdZdGVxdUFBZFcrbVlsRnQxYldnWTJXWk1ialdQ?=
 =?utf-8?B?QzZxT282ZjBvSzVMTE84cTJHNTQ2dEtFMkt6dHUyeUxDVDlQdVo4ZVYxUEdX?=
 =?utf-8?B?US8zM1dYUW96SVEvUHVpM3pueG1qQmcxM2FDS1hidkNKczVqeVlEMHVWb3dT?=
 =?utf-8?B?RnhFNHhhOUxqVzB0VjJJK3I3OU8yTUlGS3p0SHpaN3BvQjNKVXdvQnF5RFFh?=
 =?utf-8?B?NTVqTU9VMzk0QUdhNHF3cGlaajQzbzJmaUV0NFdya0pSbzErV1gzVkp5Rk42?=
 =?utf-8?B?c2JaR3Fia2hTUTI3Q0NUWmp5RlNORnRrTjZXbWxaR2pOZklOVXdEandLSHdR?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8148d951-db29-44a0-7367-08dd949f594a
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2025 17:30:27.7251 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BqyIszEdIJ1D8cLCE5QZGBDeo0nxOgJ4DmPVDB6Mn9KlKtr+oJwKc9DHD/xGZaCLK7sl+xd/bk59JjUdZqpIEbB3Fqgc/9Y9itq68z9xOJU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7510
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747416634; x=1778952634;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u6RIMA82EAkPcmixpiNUQ/EeS7JKasVtYDAAjkauRck=;
 b=PS7NLbE0bmvAuWxrozmF2YoMh3hWU13yIqHDzG7a7iqYrdxN7+FNaekJ
 H7tr7pXtkETDMNV6v0Vjvoa5Mbe7O6/J6jDfX5I7lPv62TsNwvi4gbNIG
 XXQbgsKsP0p9LLSqhoNUt+riBLLyIsdVGFEsDNo5s5KVqsbzB7JU1Qbsy
 1F+lmr9VbUlnbKtFQTqH0umyZiQ1VZQWqZ9HNhYlV4HxXuPZqnsWNlFxN
 zVct65ccHmtCg/jwJXPqjSjmtsNhKVFmFxjnRgv3Od5l5vI/wFL6SSgjE
 vGrH7PTxpnR6aiU6xeHt5kWChcaROEsNdwNvbkZyS7SKuEH6srMVQ5tFS
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PS7NLbE0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: add E835 device IDs
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



On 5/14/2025 3:46 AM, Dawid Osuchowski wrote:
> E835 is an enhanced version of the E830.
> It continues to use the same set of commands, registers and interfaces
> as other devices in the 800 Series.
> 
> Following device IDs are added:
> - 0x1248: Intel(R) Ethernet Controller E835-CC for backplane
> - 0x1249: Intel(R) Ethernet Controller E835-CC for QSFP
> - 0x124A: Intel(R) Ethernet Controller E835-CC for SFP
> - 0x1261: Intel(R) Ethernet Controller E835-C for backplane
> - 0x1262: Intel(R) Ethernet Controller E835-C for QSFP
> - 0x1263: Intel(R) Ethernet Controller E835-C for SFP
> - 0x1265: Intel(R) Ethernet Controller E835-L for backplane
> - 0x1266: Intel(R) Ethernet Controller E835-L for QSFP
> - 0x1267: Intel(R) Ethernet Controller E835-L for SFP
> 
> Reviewed-by: Konrad Knitter <konrad.knitter@intel.com>
> Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> ---

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_devids.h b/drivers/net/ethernet/intel/ice/ice_devids.h
> index 34fd604132f5..7761c3501174 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devids.h
> +++ b/drivers/net/ethernet/intel/ice/ice_devids.h
> @@ -36,6 +36,24 @@
>   #define ICE_DEV_ID_E830_XXV_QSFP	0x12DD
>   /* Intel(R) Ethernet Controller E830-XXV for SFP */
>   #define ICE_DEV_ID_E830_XXV_SFP		0x12DE
> +/* Intel(R) Ethernet Controller E835-CC for backplane */
> +#define ICE_DEV_ID_E835CC_BACKPLANE	0x1248
> +/* Intel(R) Ethernet Controller E835-CC for QSFP */
> +#define ICE_DEV_ID_E835CC_QSFP56	0x1249
> +/* Intel(R) Ethernet Controller E835-CC for SFP */
> +#define ICE_DEV_ID_E835CC_SFP		0x124A
> +/* Intel(R) Ethernet Controller E835-C for backplane */
> +#define ICE_DEV_ID_E835C_BACKPLANE	0x1261
> +/* Intel(R) Ethernet Controller E835-C for QSFP */
> +#define ICE_DEV_ID_E835C_QSFP		0x1262
> +/* Intel(R) Ethernet Controller E835-C for SFP */
> +#define ICE_DEV_ID_E835C_SFP		0x1263
> +/* Intel(R) Ethernet Controller E835-L for backplane */
> +#define ICE_DEV_ID_E835_L_BACKPLANE	0x1265
> +/* Intel(R) Ethernet Controller E835-L for QSFP */
> +#define ICE_DEV_ID_E835_L_QSFP		0x1266
> +/* Intel(R) Ethernet Controller E835-L for SFP */
> +#define ICE_DEV_ID_E835_L_SFP		0x1267
>   /* Intel(R) Ethernet Controller E810-C for backplane */
>   #define ICE_DEV_ID_E810C_BACKPLANE	0x1591

For the most part this file is sorted by device id, could you move these 
to the corresponding spot?

Thanks,
Tony

