Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDBFA4DB4C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 11:49:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49829607E3;
	Tue,  4 Mar 2025 10:49:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D7IXD8N_U5Fl; Tue,  4 Mar 2025 10:49:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5A2E60A65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741085348;
	bh=bCf+hS8akpxmoFLee7NNyFq6U8C/v06iVlIV0uRe00s=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RLvcHKjkpqDIL3i9rVurRbINSnygenfrSkJ5dCj1nIb9YR1p4Nrdl1bvlw1MTNTEg
	 QC6cr2DjDbdN4qFXX4sa6O7inEh7XsUHglzlc56AQyj572cFkHqxQ6GoafkZQyS9jF
	 zHd2rgFymXUPa2vQ+rMto03tY9HaKEd6Er5eGzYeXAAP1GgV4zU+yrwisGBIRBZdtC
	 3WOGtnrZ3m2cdsFEshfNxAEoi+EzO8Ls/0QuFomnBg+t5cMI4aURAtA6IN7SAiaaPG
	 vpizxSlGKJFkM9KEWI50VurnHVc17qLLY+npjPvE4N/F9M/lHo4jUM98FO5dnmu7R0
	 qBU2KFcwbIcuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5A2E60A65;
	Tue,  4 Mar 2025 10:49:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4968CC5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 10:49:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1F29340584
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 10:49:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2yArevLhMsAq for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 10:49:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9CEA8400CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CEA8400CB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CEA8400CB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 10:49:03 +0000 (UTC)
X-CSE-ConnectionGUID: L+H19PmtTQeMad+aRnVvEA==
X-CSE-MsgGUID: ktCk9B90SmyLo+xHwZLqhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="53391481"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="53391481"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 02:49:03 -0800
X-CSE-ConnectionGUID: /th4hE68TbGeHXUUpIrkhg==
X-CSE-MsgGUID: 1MHLtCV3ROSs+cnvigKKhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="119028682"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2025 02:49:02 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Mar 2025 02:49:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Mar 2025 02:49:01 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 02:48:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fMRSzlCPpVGC+vBlYLOLgSuo/dbXE8TXnTzPm+lRNMRHroy30DfXTQKm4auncqEOT5Ba2k6bEB0hGsIVBSU5kl7t3WQAUNMJVJj2WmWSRmYRG1xUMG6Mz7oTJLcePZmubASsk5iEobF0vQXoyzoTpHqtxUM7adgoVXcdLlTRIrfQLRmYgC9ZeDBEyiva7TLKZERlzQJqWNwScElTfpmElBSXtoLpJ9r/5YTzI2ouxmbReiY2+Bn8Vf4sMYhadX4hIn5Bm7DOvBQNCCnRY/rwcF/yXbajJ6vNz82FyJJGOnFnqnzaa5rjhhTDy+RVge/lNdICxk6Lnu5jAMn711qUuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bCf+hS8akpxmoFLee7NNyFq6U8C/v06iVlIV0uRe00s=;
 b=Zvw8YjFWx8iBqoP0LNkWVOqTBfut6SCnlJIH404sXvm0Fpbw+IyKRmrc9x45xwcdUFpqhkyLBrBsxqe25fOYJK3odGc+RsIlF4bni8WqmtJVicynWRoibFIM5kk3uKCiUHtm1fAHcr+EnVJ8TxlESnQwIcHVPiJo1tQhggwzJd4jB7yFtdlt3bjp9tSBvVRQPBHh3/gt5xnvsGYryYKDgI7+jkFKyj+SzlE/8vKmrqNT3XolYqJV2u+9qnIqKV5vgL1S8EYg0Tkif1N/deBeEOAlzuGDzvow4M8T6dU2FyXZew+igb6aIcJCoHU8Lz/f8ek6BR+1ggbfSIoturiXZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by SJ2PR11MB7713.namprd11.prod.outlook.com (2603:10b6:a03:4f6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Tue, 4 Mar
 2025 10:48:13 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%6]) with mapi id 15.20.8489.025; Tue, 4 Mar 2025
 10:48:13 +0000
To: Mark Pearson <mpearson-lenovo@squebb.ca>, Andrew Lunn <andrew@lunn.ch>
CC: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <mpearson-lenovo@squebb.ca>
 <20250226194422.1030419-1-mpearson-lenovo@squebb.ca>
 <36ae9886-8696-4f8a-a1e4-b93a9bd47b2f@lunn.ch>
 <50d86329-98b1-4579-9cf1-d974cf7a748d@app.fastmail.com>
 <1a4ed373-9d27-4f4b-9e75-9434b4f5cad9@lunn.ch>
 <9f460418-99c6-49f9-ac2c-7a957f781e17@app.fastmail.com>
 <4b5b0f52-7ed8-7eef-2467-fa59ca5de937@intel.com>
 <698700ab-fd36-4a09-8457-a356d92f00ea@lunn.ch>
 <24740a7d-cc50-44af-99e2-21cb838e17e5@app.fastmail.com>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <316a020a-aa49-700e-3735-f5f810adaaed@intel.com>
Date: Tue, 4 Mar 2025 12:48:06 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <24740a7d-cc50-44af-99e2-21cb838e17e5@app.fastmail.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0015.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::18) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|SJ2PR11MB7713:EE_
X-MS-Office365-Filtering-Correlation-Id: fc26e862-74ed-4d92-0ee2-08dd5b0a0fb6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bWd3TzFSSmMyMFNZclhvMFlpZEFPT0JUZW9GMzVuN2hJTFhsejRNajJoY2c5?=
 =?utf-8?B?YmRCVVFmd0Rrek1EVWlkWjlQOXhiNTdBRS9iVmp1YWFNcUk5cDdiTEVZWUpX?=
 =?utf-8?B?eEZ1ZnkrOWR6d3NEWldKVnlMT285V0RPTGZTUG9jVlRVak56WEo2Yi9nTXpT?=
 =?utf-8?B?cUhZL0FNSHl1VmNEbUE5eFZJZGVQM0tNKzBGcVI1THI3Q25lcVRlbzhjOGxI?=
 =?utf-8?B?U09FQU83cGdMa3lVS0RyUGVGS3VabDhmV2IwczdCTm4wVW9WN2h4d1VxZWtZ?=
 =?utf-8?B?dDc3UVl3N3M5RXErZWowdWFZZnkvWmNRRWZEOEdVUnl0eTlyWFdCc3BKVWt3?=
 =?utf-8?B?WS9PZUsrcHg3cVVac3FYc01ncjIrdG9LaDc4ZC9UMU9SRjl6aDZWSFBkY3dz?=
 =?utf-8?B?UUhxd0RtVWdkcHEvN2I3Zi9Melo1NE5JRkp1VG5XZFlFcUN6Smxvek1jY1I0?=
 =?utf-8?B?MDhqdXI2UEhsNUgzMVhjeVlkUEhkd1BrRmRqdExjZFo3WC9iR1Ewa1ZodDB5?=
 =?utf-8?B?cE9FMk5QOGVHY21QOVFYMDVZTzdBcmtBZEViWEV0dmtXSjNWMzdPaE1oRmNo?=
 =?utf-8?B?c1RCZWoyZlF3MFFxYVZHVXNhMG5rU3JNN2d5eWEzRTZ4djErRTAyWmpPL0cr?=
 =?utf-8?B?am1pTU1vVnh6cCtxTDB5OHlvZGJNbmlNQkVCeHpPWFRJMitYN3M5Z1RFU2FN?=
 =?utf-8?B?TzVCR0FTS05wS1lCeWdEZy9IYVZrZ3FXQ3M3TUZONEhGVmNPNHYrWkloUXlp?=
 =?utf-8?B?WjRrcWVFc0EvV09xdmVpV21iM2hvOEFxVExyS3huTjJVelVKNWlscW5nT1RM?=
 =?utf-8?B?Yk5QQnJHWlNlRXgxckZVT2xKcUVTSEJzcm1nNTQvcXV5YklDTjRBbVhNS3BE?=
 =?utf-8?B?ZzdyTHVRM0dYbzA4b01EanBORXdZRWowTHVKN1VJUjRKZnpjaUxFUFRnTXA1?=
 =?utf-8?B?Vm8yWVRjOW5qRDk2aEcxd295a0l0OUIxa0FIakVmK3lSejI4eUh6ZTVvby9L?=
 =?utf-8?B?U3hHeHhTb0dEZEU4NTllYkFaSUFFTCtwK1YyL2x4UHhORTdQMEtnZXZzWHN4?=
 =?utf-8?B?MTRJdTNPQVczYXVoY1FmL0krcmovVnFDV2RuSmxyVFhmaURIbG0wcm1zMEUz?=
 =?utf-8?B?ZXdVOHJncEYwNFdUS25jRGloSVBkTU9mK1JSVko2YlgvSXBPaWxNemFGQjgx?=
 =?utf-8?B?NU94KzhZTHpqTlY0OThDQzdiOStWQWFPeVFSVndqeU8zK0hTTXVkU3FTYzFp?=
 =?utf-8?B?UUl5WUhjOHRERHRwUVo0RmZqSThkSUZmRWwzNWM4c09OOTA1Z3ZRWnpwd1R1?=
 =?utf-8?B?ZDdGbWdjMDZET1MvSEVaU2U3M2h0cFRWNTQzTTRja0JmUnI1cDRjaE9KTm94?=
 =?utf-8?B?c3E3Y1Z3dGhORGFNc2thbFBqdDNlQUZGVHAwWGRkL0NlYk01N0VzNmdQbTds?=
 =?utf-8?B?T2xLOER5eEYrTkFDa3VYNkxvM2srL284OG5nN3lQSDIyTTQyVkRubTNZSjlH?=
 =?utf-8?B?L3gvQ3FDNWZ5WUVrWXEva1Y0SjNTaTFFSHJXck1ac3Z6NHlxeEtlRmtwMnZP?=
 =?utf-8?B?U3o2TGhZQnAzUGNVcE00MUNDeFZwWEtlNUxjUWVOY1dzRHdDRlZuSXpzVFpR?=
 =?utf-8?B?Y3B6WE1vbVlBVkpQWnYyUjc1TVRtUkFQZFJHUTFFd0FpMkIyYjNPa0ZsRzQ5?=
 =?utf-8?B?TGJxUWpucHB4SWtzUGlnK0g0VVFTL1l2VkRuTkQrZlVIOFQ0ck9pY01tS1A3?=
 =?utf-8?B?aGRKakJDT0ZQamVsRHE1ZGFsNko2bUFUd3FxMzREdUd4clFNblZESitkbGN1?=
 =?utf-8?B?MUd3cXk1dThPdUVKMEhkdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UDRTeWo4dHo0UGoyRlh5ZFRmQ2EyQ1Vod1NmRUR3QTVoYnRNcEN3SW9RMzNH?=
 =?utf-8?B?RTMvRysvZzU3ckc2QTNxN1RFZjh2UTA2dDdXSDNwZDNmc0RJRG1BcXFpOERE?=
 =?utf-8?B?WUNUZERObTY0aVltdVJ3TG92cVJYcjh4a3c1bEFwMjZSU0U2WWRqUENuRmtL?=
 =?utf-8?B?b2JNUGRMdHNRelpwbi90ZGYra3pFdzFuUTdaZGxLZ1JBMG9kbTRWTVJoN0RP?=
 =?utf-8?B?SHRGYk5vanNMbXFVak1mN1lzY21TanU2K3FmcE55Zk8zZ3FINUFBcDY3TE1T?=
 =?utf-8?B?VjRHbERrTHFwQ0U1djA2OG40YzVnMnJzUUorYmt1Mm9lbXh1dEFKNTQ1UEg4?=
 =?utf-8?B?Q1lzYTYrcmJtNzNkd1pSRkdrdysyYlMxdFdlbzNPRVIycTJkbDVIMXFyRlVS?=
 =?utf-8?B?dkNjdnoyT2FGU2JiYm81Nm1yYnI0YXFGRjl5cEJXbVU4aGFhUVo1aUIxUlBt?=
 =?utf-8?B?RTlsWHdaaCs4Q3FRcDV4NDEvV1RLc1JYNGpiaEJQaWMxbjJiRlgzSTExdmJr?=
 =?utf-8?B?TU5DRzQ3WDdVbjNBc09VMzFNa0hUaWNTcFZBUlB4dEt3Zi9ORDY2YlNXMFg5?=
 =?utf-8?B?WkxvZE5yN2J6SnhpVnlpVE10RXY1TDZFSEI2QkpUMkY4S3FMMUdQMHZjMith?=
 =?utf-8?B?c2NEVktianNFbjZjc0Qyb3hOZExjRUlicGswUEtTQXF2dVdUdTdXd2Y1Q2xH?=
 =?utf-8?B?N0M3YlRqcmF2UG5QcWdIbWhhZElMd1V5VlFxZnBzeGluR0xpRUlYS1p2Q0l5?=
 =?utf-8?B?WlpvZElwQnRySkdlbVRtOTlqNnRkOXRQTklhaUZPTjN5UEtvRk0vN2hsMlM5?=
 =?utf-8?B?RlllNmdKa0lCNkNVa1VzTm1xUnBZYm05SUMyUUlFQVpJWTlvZE9iR0hhVERw?=
 =?utf-8?B?SzN3a2ZsQ0w0RjQ2bE9KZ2RCRHdCOVd0cHJQazh4TmFHdnZRbXJqaUNtNkJB?=
 =?utf-8?B?VStxWjlVWkFGdmFHWG10S2p0Z3Rlb2I3Qis3RkVpejk0WTFIMXdMSE5ReWsy?=
 =?utf-8?B?cUM5NGVnbjlmaU8xU29SUkJrTk83VVFmMjRlbG9KcHl2NjNkTStxZE5semww?=
 =?utf-8?B?QnNmN0NsSEJsY0lKVEFvL01jY216QmtDZDJCY0Z4RE13VXlkN0dZVGg5ZDFN?=
 =?utf-8?B?aGlWQXduQ1V1YnFoQVNKbFQyL0crOUZEbndsR2RNUnM3M1ZON2dBdXZPdlRV?=
 =?utf-8?B?RWp2Q0RGM3AyaFBNRWxFQ2wrd1U4UDNQZVBiNGNHT211UlRFL1JVakJTZVk1?=
 =?utf-8?B?b2VyWGxRYmh4bGMwUTRQWElNeG4wSS9MY2RyR2lDVHpDZjVZMHA4cWQ0VnJB?=
 =?utf-8?B?eTh6U1lXRGpkUmtWaWc0RWFpTjZ1Y3F1Q2dPaEVZcm9rR3NBUDAvNXl0QSt6?=
 =?utf-8?B?SmdJbi8yQzRYb1JjZnArOHlJQWhtL0RxdFZ3TllLTmI3T01LUzNVajczMWph?=
 =?utf-8?B?WlQrd0k3d2YyelRpN0NGSWgvb3ZkZXZicmcyZWFvY3pyK1lDSUVRaVJadm1K?=
 =?utf-8?B?V3JpejdDT0Q0WDFtNnpTcllUeUpod01xZ0NtMmhPUnhBNmJrRllEWWwzM1d4?=
 =?utf-8?B?WmNsa2ZWMDFrcEttNWFIYzRwTGMzVStpQ0Z2Y3QveGFFU1FXTnlIQU5sWDNN?=
 =?utf-8?B?clYwZnMrenJXTlFTbDQ0aTJQNjlTeExSWkVNc1VOMElFN3o0R0hQOFBORGxn?=
 =?utf-8?B?OVpWYTBxWDFQbkJQNEJXaVBwUUpwdzdFaWtNWXp1NkphQzBDajhRMzkvSkhN?=
 =?utf-8?B?NUx0R3lLSlNsSG1mTEpSSkY5MGxkTXVCSWJxWmxacENLQ3hKM3dPZDJvai96?=
 =?utf-8?B?azhwMTFpM0FudWYwendFRVlVR2xNMWV1UmR2eW02VUc1NEl2ZUFlcW4vc01U?=
 =?utf-8?B?VVlkM0V1TFZvbE5Sc2JraGtnZlFidmVIOUcvZ3VVOEw5TW9EWVU4QW9IaHRO?=
 =?utf-8?B?R2I0U25tV0l4YkV4MFl1ZmVqTzlrVnBLRTVnSk5ZUkZDcTdOK284SCt5T1NP?=
 =?utf-8?B?ZTdjUHIvS2FHN3NHYWVvVTk3M05VRXlkMWdPYlB4QmR1bTBJWE8zSWVLbFhy?=
 =?utf-8?B?amVrdkxkZTVUMytiRitWa09FOVdyMDRtRVFqMldBWDFVOTZSTUo5a1QyOGcz?=
 =?utf-8?B?anVwQnJQWTBrVTUxVU1VV0ptTGdBcjBuUFBKOUZSbTd5K0NLVjBSbnZnYmZJ?=
 =?utf-8?B?dHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc26e862-74ed-4d92-0ee2-08dd5b0a0fb6
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2025 10:48:13.0811 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZKIFzloRn63Tmhzb8hYiw2FbPH/uAxUXfR+v84NTZYLQIj3/IaZLdgB/q93FZYn5k1z8bQAAFWFWWYG/0HRDnWaPGw1pwMqQTC7Rh+qzHTg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7713
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741085344; x=1772621344;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=04sh+4E02yk/tZXiwdqbsrFiX0r/X3P9K+QC7whrKdw=;
 b=oCU7pqhkH6J7g/mAlU/oL9uh0zIQvUzLKBpkRG+kz6ZyNwJt5DpAMuoz
 24Uq+T8d6V6f9ZoA58ImDe1PBc8QaJw9rsHdzCa9km9ScijrGnIgJR1nC
 DCAysZBQxYKWoWgVRj+mtS7mjcBY/pqd7RRl88auBDiw/kEAjheGdvH3C
 F8XtH4FCPAH4MAIWimAu49GsHbYtmRGA4hs51YnJq89RwxNukrBTbBU9t
 yXEx+Lz+GIrB6+5vMu6CJ+m3UsHorKESineIpun0f4Huo6y1ubtmn52py
 S5yhuHrE/MoVJU8FPlHE3IHoYejB4nTGmxPUcnlIbTnsmpSRRvBr5rsBK
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oCU7pqhk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Link flap workaround option
 for false IRP events
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



On 3/3/2025 5:34 AM, Mark Pearson wrote:
> Hi Andrew,
> 
> On Sun, Mar 2, 2025, at 11:13 AM, Andrew Lunn wrote:
>> On Sun, Mar 02, 2025 at 03:09:35PM +0200, Lifshits, Vitaly wrote:
>>>
>>>
>>> Hi Mark,
>>>
>>>> Hi Andrew
>>>>
>>>> On Thu, Feb 27, 2025, at 11:07 AM, Andrew Lunn wrote:
>>>>>>>> +			e1e_rphy(hw, PHY_REG(772, 26), &phy_data);
>>>>>>>
>>>>>>> Please add some #define for these magic numbers, so we have some idea
>>>>>>> what PHY register you are actually reading. That in itself might help
>>>>>>> explain how the workaround actually works.
>>>>>>>
>>>>>>
>>>>>> I don't know what this register does I'm afraid - that's Intel knowledge and has not been shared.
>>>>>
>>>>> What PHY is it? Often it is just a COTS PHY, and the datasheet might
>>>>> be available.
>>>>>
>>>>> Given your setup description, pause seems like the obvious thing to
>>>>> check. When trying to debug this, did you look at pause settings?
>>>>> Knowing what this register is might also point towards pause, or
>>>>> something totally different.
>>>>>
>>>>> 	Andrew
>>>>
>>>> For the PHY - do you know a way of determining this easily? I can reach out to the platform team but that will take some time. I'm not seeing anything in the kernel logs, but if there's a recommended way of confirming that would be appreciated.
>>>
>>> The PHY is I219 PHY.
>>> The datasheet is indeed accessible to the public:
>>> https://cdrdv2-public.intel.com/612523/ethernet-connection-i219-datasheet.pdf
>>
>> Thanks for the link.
>>
>> So it is reading page 772, register 26. Page 772 is all about LPI. So
>> we can have a #define for that. Register 26 is Memories Power. So we
>> can also have an #define for that.
> 
> Yep - I'll look to add this.
> 
>>
>> However, that does not really help explain how this helps prevent an
>> interrupt. I assume playing with EEE settings was also played
>> with. Not that is register appears to have anything to do with EEE!
>>
> I don't think we did tried those - it was never suggested that I can recall (the original debug started 6 months+ ago). I don't know fully what testing Intel did in their lab once the issue was reproduced there.
> 
> If you have any particular recommendations we can try that - with a note that we have to run a soak for ~1 week to have confidence if a change made a difference (the issue can reproduce between 1 to 2 days).

Personally I doubt that it is related to EEE since there was no real 
link flap.

I suggest to try replacing the register read for a short delay or 
reading the PHY STATUS register instead.

> 
>>> Reading this register was suggested for debug purposes to understand if
>>> there is some misconfiguration. We did not find any misconfiguration.
>>> The issue as we discovered was a link status change interrupt caused the
>>> CSME to reset the adapter causing the link flap.
>>>
>>> We were unable to determine what causes the link status change interrupt in
>>> the first place. As stated in the comment, it was only ever observed on
>>> Lenovo P5/P7systems and we couldn't ever reproduce on other systems. The
>>> reproduction in our lab was on a P5 system as well.
>>>
>>>
>>> Regarding the suggested workaround, there isn’t a clear understanding why it
>>> works. We suspect that reading a PHY register is probably prevents the CSME
>>> from resetting the PHY when it handles the LSC interrupt it gets. However,
>>> it can also be a matter of slight timing variations.
>>
>> I don't follow what you are saying here. As far as i can see, the
>> interrupt handler will triggers a read of the BMCR to determine the
>> link status. It should not matter if there is a spurious interrupt,
>> the BMCR should report the truth. So does BMCR actually indicate the
>> link did go down? I also see there is the usual misunderstanding with
>> how BMCR is latching. It should not be read twice, processed once, it
>> should be processed each time, otherwise you miss quick link down/up
>> events.
>>
>>> We communicated that this solution is not likely to be accepted to the
>>> kernel as is, and the initial responses on the mailing list demonstrate the
>>> pushback.
>>
>> What it has done is start a discussion towards an acceptable
>> solution. Which is a good thing. But at the moment, the discussion
>> does not have sufficient details.
>>
>> Please could somebody describe the chain of events which results in
>> the link down, and subsequent link up. Is the interrupt spurious, or
>> does BMCR really indicate the link went down and up again?
>>
> 
> I'm fairly certain there is no actual link bounce but I don't know the reason for the interrupt or why it was triggered.
> 
> Vitaly, do you have a way of getting these answers from the Intel team that worked on this? I don't think I'll be able to get any answers, unfortunately.

You are correct, from what we saw there was no real link flap there. 
Only a false link status change interrupt.

> 
>>> On a different topic, I suggest removing the part of the comment below:
>>> * Intel unable to determine root cause.
>>> The issue went through joint debug by Intel and Lenovo, and no obvious spec
>>> violations by either party were found. There doesn’t seem to be value in
>>> including this information in the comments of upstream code.
>>
>> I partially agree. Assuming the root cause is not found, and a
>> workaround is used, i expect a commit message with a detailed
>> description of the chain of events which results in the link
>> flap. Then a statement that the root cause is unknown, and lastly the
>> commit message should say the introduced change, for unknown reasons,
>> solves the issue, and is considered safe because.... Ideally the
>> workaround should be safe for everybody, and can be just enabled.
>>
> Ack - I'll aim to do that, as best I can.
> 
> I think as Vitaly notes, the read should not be introduced for the general case, in case it misses link bounces in other situations?
> 
> Does that confirm that the module option, so it can be selectively enabled, is a reasonable workaround solution. Let me know if there are other ideas.
> 
> Thanks
> Mark
> 
