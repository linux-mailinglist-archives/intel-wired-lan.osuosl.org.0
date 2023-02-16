Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5328B699B29
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 18:22:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3ACC241961;
	Thu, 16 Feb 2023 17:22:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3ACC241961
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676568128;
	bh=p9jFXR5hxBiyuY5FfNYntDcTRTSyti+aVBhtyHe94Wk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VbLpVNDYvi6a7M6mG6T/helDwr7f8jN3eTTOepKDkzeW8gj/LD4DtQ81T38cLKZKx
	 mmbHSHvi4Jrj9FALnpuBTMxM4a02C+ayJjfWwfmhEy7164ISJmAjx9VlHDaEbgshFg
	 I62xWUR2oWBVHYoSZ8XUb6rLUD76pA/1MyNPHu3F53/eAXbZLIYpzX2RiY6rMNW6DU
	 hwqj2TNCSffg+4Rm2b/TL4FYwYf+QBNJpmJMdiU806d1bNmPItQ2lh4c/W3bv62V+U
	 mMv+8O7g/k0Eh/mlEJEuCqDLY1kvsyvFOxpoAISxp7ZipEyB7neFXeFKILIsE7FZ4j
	 qAiiUDiMZlx8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H9KGyvJ3oQ5V; Thu, 16 Feb 2023 17:22:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D026D41965;
	Thu, 16 Feb 2023 17:22:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D026D41965
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 02A111BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 17:22:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CE963820C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 17:22:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE963820C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rbqAJtPrXO7O for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 17:22:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06B6E8136C
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 06B6E8136C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 17:22:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="396444774"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="396444774"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 09:12:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="759003678"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="759003678"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Feb 2023 09:12:32 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 09:12:32 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 16 Feb 2023 09:12:32 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 16 Feb 2023 09:12:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Byxf0WArUe4niUNWQeTseVSgyqQzSz9UO7D/i550Jj+IwMLqnyxCSjzlj0MWx+Eyh/jqE3AvwNZRdmpBKdnAh40n06C4zzb9POd6qcBkASqL0KiYdgXVsNSPTGGMq7EOaGVjdF2x2UR1yhTPLzXZKNp5MSCByQMwXXNJ+QWk8phz9jLDHSeBBPQZu7VYeEtLKpyfllShrcvTuSmTENP436EXXdOrGx814SaLtHyreVGX0/iOLrXzK/GxG+orACrjThsjMCY84MQgsTpn/MIPdyUrB7lGNhP+LZwKy00/3iAqjMFmvo4InqkvJLaNf3bZ1SGkKnsfoCFEjUEGruh0gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0YdppbxtOrse4fEUDIXzjmKmt5cwrp4qwYTDc2/mG+o=;
 b=NfaGvJjAZP4o3j4KY4+FOyBO0Zf5cakKFfY5q6MGdoajmq1+P/OlkIln7uvSgPgbCWXMzJcZu9v7eQyZu/edwmBLTBfmKwxeKAanL9nOtnDlEUeC94+y8c+CQO8F+z0LVYSRFgd/fu+/xhcOFusntz8/mIxme0EMnKeDkE3BGFc9Cp1NluoqQk++4YRnxEBFCXM+j5XnXdF5+1H1PvWA6L7Dj7SfKP4jW+upV/9BnyEX2nWpZixZgwZwcM6xxCXmRjPle2sxjSHNLf3wQCHhawoVw5FLC9mnlHdYokIqyRjorWpoHKPELfxWCD3OgxhwsLbj0oRPKrGmtq9BQvbqBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Thu, 16 Feb
 2023 17:12:30 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6086.026; Thu, 16 Feb 2023
 17:12:30 +0000
Message-ID: <28045020-2109-5713-1e9c-6f752805ca1b@intel.com>
Date: Thu, 16 Feb 2023 09:12:26 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230216100512.224241-1-karol.kolacinski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230216100512.224241-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: SJ0PR05CA0189.namprd05.prod.outlook.com
 (2603:10b6:a03:330::14) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CO1PR11MB5073:EE_
X-MS-Office365-Filtering-Correlation-Id: aeab2b2c-e7f9-403b-84ac-08db1040fc58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x35ZT4foq5VSxGsPQOtJlWHyJTJUtQuDvUMF4e8rsuEQkhIlh2ydguGF47iDPiTbqZSmA6HhnnwFBx8/Jlg84QzgXoyJFz71zyWbnrp+gphTyWW6fkV7vBPjnohBbWFwVgFjxlgJVf6xrJo5fgMk8Hoz9n5z6HhDLS9DrT7EdKuVeQJW9PyjDf7FP+LMMtJTkPGjKdwOfJ6CAcU6GMJ4QkQeyN6Y2EuU7gHemrheX0OvJaWlDAOF03wYj6X87LL+C5q0HLW//8bud8AJUhp6m1w9usCHq/5vgZ4lCI6gnk7yWZR5mD+Dq9Gs9BqkAZyA35dmgs8l+WIMUxDt4WDLb4aOV0dk6i7xRuWe8Mws4X/m95hm9el9rKNTWtlsaSogDQTtcNLD2uvyD+BT/KStJwB95WtUNUoZ3TKuXKoPFeLdRdkLoFcC2KXb5b5RrR/C4vKZThiHflb6mJiWrYKM/ETV7wTzlr9P22mfz/Ud588tuJvrt1eVKS+fXZ6mew8ujE6+0fvtRAXJtE2OY7huH/dVVh2Fcj+eHRxzL5pQ+l0UhlKKzPeZR48O9VJemt+05CFou5LJYgnt/BKzoXGxvEMcVVTbRPYr6beOYlDcpASiMocvLZW5YVNCWzHDaWAPA0VZcO/bBoyAlKKNwcysM7l/Toj1Zvvu3eNPuvN4IfUZ5hkb9PbCt5U4Q8NtTl4RNLffp4hVPzYQvdUKgiY+jOnNPoX3qN4msD9DIWt4Pwo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(136003)(39860400002)(366004)(346002)(376002)(451199018)(2906002)(38100700002)(82960400001)(31686004)(83380400001)(2616005)(86362001)(66556008)(478600001)(6666004)(66476007)(36756003)(5660300002)(53546011)(41300700001)(6506007)(186003)(6486002)(66946007)(316002)(6512007)(26005)(31696002)(8676002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkJxd2lyL3RwS240VHA2eDZ4RE5qUWpKeXBUTUUva3dhS3YrOGVING5FdXcx?=
 =?utf-8?B?bzJLejJMUTRiQ1UxdE5qTnp3OGRtZkxZaFdvV0xCZERnSnc1RDZyblpjZ2Zl?=
 =?utf-8?B?b1dBMWtBa1JJdkRyKzFWVlc2dHpBMlRnNU1UUm5Wc204SnBsU1l1MHA4Mmtr?=
 =?utf-8?B?NCtxQnE5M2s4MmtIUXhlM3BjU1BTWm1BS01WTEl5c2p4ZTBldDg1M2prZDQ3?=
 =?utf-8?B?R1VOOFRiNWV2ZVQ5RDZzYnRmMG4zWnhVeURNdk4zVGY4U1pRUmhtK3BiZDZD?=
 =?utf-8?B?Q2hCZnBGeFRiTEJVcUM4WXluSzdiakxvRWxWRkorQmdhNXZBclZiVnp0MVVO?=
 =?utf-8?B?UzBDTm1RYkpRb2FxRFNYS1F6aG9sZGxrRzVKZTdESXFDRTZkYm8ycXFaOUp5?=
 =?utf-8?B?UkNRcGZYNWRiM05xU1lHNjErMU9kbEY3OXIrb1dJOVBXNHFnQVR0ZEc5UUhB?=
 =?utf-8?B?eHpLSXdseTk0SFUraXM3aFlVdXVvN3JldDJ4ODFOUkNmcWEwZ29DWFQwaDhn?=
 =?utf-8?B?bERRVEhiR3dkYTc0RTkzVFNxWUdKYWhHaTZreEttWm0rLytkUjFZdkNDekVt?=
 =?utf-8?B?RUlnTmxHUEx0ZjR0L3lJTmtENFcrMUFDeTkwbXFaMTJvOEVacTY0d3N4MDBV?=
 =?utf-8?B?M3lwdThOY2hxK2E1UExKMnQ5d1BPcVpPeGF4c2diS01rdXl6Ym9yeFFaZlpa?=
 =?utf-8?B?ZnAwY2xwbG5nbUNWQkhWa3ZuRit1aU5PQ3FYWHAzYUtoSGVtZElwVmllUDB5?=
 =?utf-8?B?MmlqOWluUWtkVGZMeVRFYmxkL3V6UjBISG9BNjZpdkhNeWF2eWtZejBsMVpk?=
 =?utf-8?B?SllPbDloSjZUTFN3TDgwTHovNGVHZ2NnME5UYzBJaCtMU29YWUNUNFdWN2xn?=
 =?utf-8?B?NXJuakk3VDVTQ2RLTjcvMWw4Yis4bXhpczhtRi8reTJ5aENRbDhTd01nNlhT?=
 =?utf-8?B?TWFaTXNPV2pzQlRvZDNZWFBwVk8rQ1VqM1kxNEpGaWJXN2l6N1JmMFZ0MDhY?=
 =?utf-8?B?YWdUMWxKeHcyRjM2MzlFalhyb2FaSHZWRzJWQTd0dWdTUTJ0R3lJcWVqa1pP?=
 =?utf-8?B?U2s2WWpEVWdhcUs0MFhiRHpyeGVFNVZQTi85aWg1VHZ3QU8rbWVhMXZCOUNx?=
 =?utf-8?B?UUxRVGVHSnZyTzJvSHg3MFZLcDM2bGhlY00vNXRsbnZZcERaS3FrVW5KU0sr?=
 =?utf-8?B?M1FHZnBxVXhoMkFIWDZjNWNUYVY2aVFzcWJ4R2tMMlptNk5HNTNHTUFOb3ZI?=
 =?utf-8?B?aGRib0dXdWpWczVlZEJpMWFrSTNKVDN3bTcwdU5RbVAyMUp2Z05rVGRITXdo?=
 =?utf-8?B?M3dMTEJLTEw0bWVIbDdxL3NTR3M1TEpGRmROTWFTbjdmYkRCK05CRW9xVzR3?=
 =?utf-8?B?SFNWa3JnQWNVZW4venJyUk5EMkFvRXUyWTU0WFhZQW1xaW5FL3BYYVByMkNZ?=
 =?utf-8?B?Tk9Oc3lEZStTQzlKb3lJb29zL0t2d1hOdFcwVkttR2gwUmpVNE4xa25WQ3Vq?=
 =?utf-8?B?amczRzBHN0JseHVndUU3aFNwRWltNDVHMkRpR0tNc1BqL1NwRHdLUWZlR1Jt?=
 =?utf-8?B?MWVhcm9FMXp5b2FhQ0taNTE2dVlaQ1pzRCtKWVA0eTJTQU9sdHJmUVRyOHNm?=
 =?utf-8?B?dXQvcEF0Yzd0MkFGRGtEQjNvb0ZxS1ZjU0FMNGxFckZEcmU5RUhtcFA1YjRw?=
 =?utf-8?B?MlcyREhteGlDQktNR2RWSUJYMkpmQXNmMjFGRHQ1OXJyd1p0WmZINWo2Mjl5?=
 =?utf-8?B?Q1pYNmlmRVovK3YxbUJqc2pEV0hPL0RvWnA5S29IUVk2d05BN1NoeUM0WHZE?=
 =?utf-8?B?TDhlRDlFdDNpb2JPS3NST0NPSnBvLzRZTlVWYVczVlJqc3R6UjVpV3B6cHJC?=
 =?utf-8?B?Y2Nzd2F4YUZqYzRtUE5VYXorQUhlMDJKenhKSjVpOWVJWkd2T1BpenVWU2hm?=
 =?utf-8?B?d3VscWJaeTRpY0FBb1hMaDM1K3c0UkV3WGNVcFBwQ2hkYmkxd25kZExMSDZO?=
 =?utf-8?B?ZFlWZi9Ec2x1dFBjY2ladjBTNmx3dEtHY1VHaEw0dXMxblVFdTVKOXNkRzZB?=
 =?utf-8?B?emNTdVpoMUxUWW9TZStYN0NOcE5oRW0wZklWUXFST0hyN085OXRXRzZkMjV3?=
 =?utf-8?B?M1BLNjEwazVMdkFlWXNMZGNtRkdBTkVQUWx3QS9xdTV4Sk1xb05JeHM3TGxV?=
 =?utf-8?B?N0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aeab2b2c-e7f9-403b-84ac-08db1040fc58
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2023 17:12:30.2074 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nfijh0wK6FO3aUEw1CdnDJFE5XqyWlg8mrU7LmYdd5pMxaXzKz2jdKQE11As8oOuPxHKDbL0yq/VulTPJA16EKv2RETFZvaBjeGlKI5n0xI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5073
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676568121; x=1708104121;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lDJE08XxEgg/7U8sQ1noPIFEroPuXmyx2QbvxG7hrx8=;
 b=l18qPfy/CXAFisy0QyXBWHMLg+7yFfqvTU4d9jTcuLcZvHt3J277ltqn
 uWDNj2D42yd+kGZVXzXKQzcl4rLARgjUgcM5OR3NxpwrZyq1XsJGqw/aN
 6Ig+nlcEH3zxoO0pyzixLKHOpo1slr/7IvJzV8Qq5clPGi3Z9dURkHgMb
 MJ3Jic6UyWSpLq5Ul64IC5108Y4jMRi0PA3SaDmQsoG4/hI7r82uzlxeQ
 RQmFKL/mFYVD4EtO5QrEEjBAFryDynUIYpjT3TaXf3E+2BAANdi7NAxR3
 In1oLxeEbwAxCJnALtEuhoyU7zmGyilCCxNxzKUXCs8llC7liAizEQ+ME
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l18qPfy/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ice: Write all GNSS buffers
 instead of first one
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/16/2023 2:05 AM, Karol Kolacinski wrote:
> When user writes multiple messages in a short period of time, the driver
> writes only the first one and buffers others in a linked list.
> 
> Fix this behavior to write all pending buffers instead of only the first
> one.
> 
> To reproduce this issue, open the GNSS device with cat, send a few
> messages to the device, e.g. multiple commands using echo. The issue
> manifests itself as response to only first message. Then, after issuing
> a single or multiple commands, user can see that response from the
> device was not for recent ones but for the next single buffered one from
> the first batch.
> 
> Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V1 -> V2: Added reproduction steps in the commit message.
> 
>   drivers/net/ethernet/intel/ice/ice_gnss.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
> index 8dec748bb53a..1fa7bf31816f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_gnss.c
> +++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
> @@ -91,7 +91,7 @@ static void ice_gnss_write_pending(struct kthread_work *work)
>   	if (!test_bit(ICE_FLAG_GNSS, pf->flags))
>   		return;
>   
> -	if (!list_empty(&gnss->queue)) {
> +	while (!list_empty(&gnss->queue)) {
>   		struct gnss_write_buf *write_buf = NULL;
>   		unsigned int bytes;
>   

Are you using the net-queue tree? Did you rebase/update your tree? This 
doesn't apply.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
