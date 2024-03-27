Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9404988EDBD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 19:10:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41944606B9;
	Wed, 27 Mar 2024 18:10:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zB2pzTFBPWHV; Wed, 27 Mar 2024 18:10:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96DC660705
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711563016;
	bh=jUPYi34qdfe1pooWK8TtnAvqZ98Ub/YuH5siIcp/qGw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7opxhe8LX+e2RE3YWgKHTwyNxEQYTyUnX/6uMCJuTGSBPKUFQOmo0uYZA6S8WtzgD
	 BU1L4mO0Wwe/H+8aSZzPr8Ekvyy60Tz0EhcjbIEDkVqiiaC/FP+iHA+gFYcp4O9PRd
	 wBZr/r07WIsnCnc5RV2jIXtHDIW+pHJ9oW/IlLC67grkeVGgQls34oo01OdIbtFpxx
	 pXmnchPMOj6dVRCKNvIpmnEgbJGN/VvdmYcnJFGTuXYHKzKfvXlmcCB0MpXed+EUix
	 aAEAVDmoZP7lg4rlqn04fqlYbk6WpKQYQcMnMJZHpyNAWEGCf8OaFeBQ8q6XTGgfFD
	 GuF0jMOf5br4A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 96DC660705;
	Wed, 27 Mar 2024 18:10:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A76151BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 18:10:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A077881353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 18:10:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f3tAb7Q17mHf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 18:10:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 956D181282
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 956D181282
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 956D181282
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 18:10:12 +0000 (UTC)
X-CSE-ConnectionGUID: qGGJu2gLTwKza8JUHbqNhg==
X-CSE-MsgGUID: o7Lc7gGxTi+gpBXbZCfsfw==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6543537"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6543537"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 11:10:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="16455749"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Mar 2024 11:10:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 11:10:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 11:10:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 27 Mar 2024 11:10:08 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 27 Mar 2024 11:10:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ak8Y+TBGLbtYS4Mw7ZU+qqPkNUUmJqG9LDqZG62o6S+4NbhaOlpW6xTANp7ErTMMU2EFWAYqyPNk801CGpdZH6JhrE11D/+bhEPhgU6SlgflwWYu6+HU0Tle1rLEVSJke5KPzLToqahjuxCxI8wezTjnN23iJorrPQfYxHqaQXdGMJRcU6yOntIR8VqiRr4mLdzuAvIJzjgoN1j04IGLJgYuLYDeNIwNyuNc4aRG+82MppbeMsU6vpPv5hmTTJTj8Vbj0jYl/ZHni32zXIKRM5v0tkcKHRhDlDQ4b9Kkyow+A/Wbclk8GqaPnElhb0GTEJTluU4S4vLF0i3XcEEZCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jUPYi34qdfe1pooWK8TtnAvqZ98Ub/YuH5siIcp/qGw=;
 b=NKI5ocexOEscFYoLX2LWDg9I5m1UBBvpH5yh5peo+u8RqClm2ksnL5lyvIkfzFe4DP9GRQkaJkrMmhpUZvaAVD9k8aO5zkkBET1cw73BbDyAyzOq3ruj3A/Q5hFfw54lvMllg0JnVnKPb7TVXOpNAZvTuuOQIkvR0tjgSZCkM8FzbFxxFXuew5o5wEtH+s2CJ4KzXSNDiCwBztADC5ye3UZ/Kjk7MXFoAH23VOyeCSttfJXNSmmUwzzAgBRa97hzrbj4E6HQI5LgQeKtsYiUNdn1aSqu5QvVuIWf+ZcBZb3p5tDUWI6I2SPNr+wT/sc+kIZCCNSiypw7+J068S/jZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SJ0PR11MB5072.namprd11.prod.outlook.com (2603:10b6:a03:2db::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Wed, 27 Mar
 2024 18:10:06 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 18:10:05 +0000
Message-ID: <e6581461-5589-ffaf-498e-5737dd48a7f8@intel.com>
Date: Wed, 27 Mar 2024 11:10:01 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Ivan Vecera <ivecera@redhat.com>, <netdev@vger.kernel.org>
References: <20240313135618.20930-1-ivecera@redhat.com>
 <8e585156-4f6f-4837-9375-f29842fa7f85@redhat.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <8e585156-4f6f-4837-9375-f29842fa7f85@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0076.namprd03.prod.outlook.com
 (2603:10b6:303:b6::21) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SJ0PR11MB5072:EE_
X-MS-Office365-Filtering-Correlation-Id: 24c41a8d-9814-4157-3759-08dc4e892158
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4lhSg4sODvRMp0sUm70OiptVTXVyXKW+S2Mx3ICblU8HMTLp7mIjqVwXgyFGlK/3/1liw2ILPJbtSdM2oE7zBm5dncX1LLF5AkCVTx6OmUSZL6teNozjqke5mZzWtPQEiHXHGvSv9gMaFytOyWMeHt0xgwhcWiFr3ACwVakt5K5l6ErwxfP9q565P5szuI66a++Ur3sfnJrxbFTWhe2p9SalXRO5LPm3LiRvXGPyboEWCcqE7dpa09mUNZ32t/bpAwFRA7ySkRGB362DYXJ9RMVk83cxTwhr5dIlrzwrtvoBp2GvIAHDNqKD4tZ4eGBHEG9GJK/iAbJHGzD7MQfthLwecjgFtRc+04iZG1wifUfiVtnhJzap9wxZ6y2PdzNBIoA9bDADA04sjtJpjchvQ8lDInZssSVC/eCNikcxZV9sW2ygkUAnsw26A1uv3H7gM/5hQgryqTeMKWXzzkTVm7RK83h+/wGJTMHmWItLZ7MlTvgdl2QjKbM2bc1pzxbs6KMI2fZL1OOhSDr94PgsVk+X5AdtMlAmLdh/VcuQDaFP9V/vMP+snwtYwO60bq+TQSxuIMqMqaCbRGaBthOhgYDTGC8ML1wmgAc/I+DkZb9q87tJGxaNh9819d8et4NYZEnZw0sFlYlsgljOQUqUfZbHarQni9yEBAXlZ/9zdX8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(7416005)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?am5Ud24za29qVFlabHpYcWJpa29BdTJrbHFHZkM2SkRqNFpZRjVRd2xDRHg0?=
 =?utf-8?B?SmdmL3NWRHB0eTJvZ3hPakNLUGx4OTA4NHdJQ29CNTFqMmtoc3hFaHFxcXNZ?=
 =?utf-8?B?T283UmV2YXJoRExtM0xMNU9xOUU0ekYxMzkydlo4QWZtQXZVSytsT2dFWmVi?=
 =?utf-8?B?clBmWGtNa0dNZVJFNWFkQlpacmhsRFdRelQyZ09QUEtiS2lQWGUraVBvU1Rq?=
 =?utf-8?B?cVBXVVlMVlJmM2xTbUNabEVEdDlnRzArZ2c5R2Fxd05BQ2tqcVpzZTRlZi9T?=
 =?utf-8?B?d0ZKL0NzS1FuRFZTeDhRSjM3eUswM3NEVU11ejd6MmVGeDFTNGJGNGlSYzhC?=
 =?utf-8?B?c2pCakN3SFg0TnBza1pUQlhRT1R1WW5FWHhBOG9Ba3ZhRmtLeVhEaEtyR1Uz?=
 =?utf-8?B?WjRXRXR0UHNJMWJZYXRKKzRIdkhIMnhLWmJGakkvUkJtY3ZzWi9BZ0NQcDVQ?=
 =?utf-8?B?QjM1emMxdnU0UTZKL3BMVWNhS0IrZGt1dHBjODBObG5pbnFhaUhRaVpKaGNE?=
 =?utf-8?B?cVJpR2t0WU9OQjN5clA0V0RKRndLZkNPcXFSNk1QZVp5YUJWaHBhRG56MENU?=
 =?utf-8?B?YzZrckFuMzY3YUI4NS8weHliZkxpVzZEOEs0YnJEazJNbXg2V09pWDJlZE1m?=
 =?utf-8?B?cDhRbjVDcmk4eTR5WElWV1RtMmIrRlJvWU5wdWRwUFpyN1lvUWxSeVdBVmpD?=
 =?utf-8?B?dzBBdnVPT2NEa2UwOUNuM2RlZVN4S1lCRlpOOGRwcGV5aDYxYm1vY1hhZkNr?=
 =?utf-8?B?QWpIaDlLTmxJWkdBQjBtamlCUktHSVRHUmJOclhYZG5vakZDcEI4Ri9oc0oz?=
 =?utf-8?B?NkNaMHc2cjIrZWJFWFBLYjFTTDVvVjZ2eHE0TW9jM0lpaW1kakIrSU84ZGRS?=
 =?utf-8?B?Z1k3VWpkWXZZbjJ1Z3J3NW5HcWQzcVAzOU91MG94a1pER29uOFl3cU1FeTVi?=
 =?utf-8?B?MUlrVkFxck51Y08vWHF2THRPTk0xUTR0b25ROXMvOEZTT01qblJUSHpxbTA0?=
 =?utf-8?B?RllkazRXeUIvUzNUVEx5Rkd1VEpwVTVxUGNiWGlVSUVHeVYxOUFwajFVY2pF?=
 =?utf-8?B?RGk2THB4bUVXRlJ1UEtvZFZMeUpXUHhMNEdvNzdnVE04cHhiQ0FJL1ZmTlpJ?=
 =?utf-8?B?TXNFeVVaZlFsb204bFltc2lDSXpwMDZTdGFlbmEza3RqdG1BeHBsdkE1UlFH?=
 =?utf-8?B?UVhCUGUzNTg3STdRMXVMVEc2UERtNmR0UVJ3cXU5MmRJYUw4eUw1NTZPMWYr?=
 =?utf-8?B?ektnb1JHYWRTa0tKYW8xaENSVVduT3A3TEpwajdXOStVcXRQOHQ4ajJZMmpZ?=
 =?utf-8?B?ZTVkQUNTN0FlaEpMelY4TE5NNW1aVEtSQ3FFc01RMmVnTGV5cjZpZnh3alhs?=
 =?utf-8?B?QTIwWUloTW4zZnVRVDEzUjBRNzlQS2UwajgzcGloWnRNYnhIeWtFaFRhRDhP?=
 =?utf-8?B?RDdDUTg3VzIxQ0VUdWZnRmxhVXF6MVhtRGNkN1Zva0VRZTNVb05UYjJGQ3d2?=
 =?utf-8?B?WklaelpUM0FiWDNhUWI1ZFY5dzFyUEpFQ3VPUDNRdVlnN2N4cVF6elNDTFFV?=
 =?utf-8?B?c09sMVlKa2VEWjRPQ2FUaEkzRGpGQXMzd1IwUm01aFBUQ1JHVUhGYnByQW1y?=
 =?utf-8?B?YWpPMFFjRXJjb3NKbmdRa01adW5oSkZwMWFUMTB5aGNuNk1rYVRoUllrSVRk?=
 =?utf-8?B?SzdCQklkYmU3TkppcTNDMzc5WjQ5QXlSTGM0QUF1SjdySnYzek1BQVY4QjZj?=
 =?utf-8?B?VCsxdzBVOGpKMld6dzRabUp6MFlGN3ZSd1ZSNnlUS05pa09lUTMxTHEzZG5F?=
 =?utf-8?B?OUZUUkNWdEwyUEVDa1hqbzEwS2pMQ2VhM2w5L0s5WERPODRCTVRuMU1JS1hq?=
 =?utf-8?B?SElYRWVFOVN1NjR0U211OGFCN0JmL0xVNFdUcmt4NXhpUUNUWjFwSzRkRlQw?=
 =?utf-8?B?Rmt6TmdFa3JYVEpiSFdhalJEZzRUaWJzRlQ2bzlDNHpaYnB0RnZENGFQNGNI?=
 =?utf-8?B?b1JSN29pN0xYL2V4aTdvYkthNVlabDM5eHRmZHNBUmlWTFg1U2hoZWppNDR2?=
 =?utf-8?B?U3Z4V1JnclZsVlNhVFoyQTF4L3FJeUtXL0kzQmZpNkFmR0FJZlc0bnZYZkpV?=
 =?utf-8?B?S3NtVFZ4TEpEdlh0dHZDK1F0VVV2dFplSEZ6dXJYd1lMUmNYR1Q3V3BhakVM?=
 =?utf-8?B?M3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 24c41a8d-9814-4157-3759-08dc4e892158
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2024 18:10:05.8676 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qaTDiHjiyJJBvmKpi36oRsbaoN8Ew8+feeJfFSOn/zp/s/26laLosa3gfam805fu9BUiaLv+x/OLf3Duz4z00LmCxwOmkvZN3eYdi0MsXSY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5072
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711563014; x=1743099014;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hT4SuKmFNPTSuuDbk5Z/DkKTRnLisxRPZscvQOLp0oE=;
 b=f3RpvJbNghCZEdAntDzC1uE+VfhNMj1y+y6q8fXK/6ZBzT5QaePHLnXN
 y1S6FGTBA7dT0QrLweibJuhQrtFS2NpassIcKv9LoG71811DcfkKBOa8x
 PzxJ/ELnXfK5XgPRLD8EJyAH6G5EHbuHua6USc2ZFEXCNOhLJyPORjSWk
 jKHGeShvzHNYNK+nQHsrO7oh3dB64NG4IuThlZvkaWia/i0seN4q3lmld
 ltvHgn6F1Q8gvb9SEmv7qDf+DO9sk8qnuzbJ2Dmj599I/uM6DN38Gf3mU
 rp9Xxuem0Tyb20O7d0qebHOt59r0Yv7znQfiyR2yCa9yp9XFL7nF6A9Cx
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f3RpvJbN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix VF MAC filter removal
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
Cc: open list <linux-kernel@vger.kernel.org>, aleksandr.loktionov@intel.com,
 Eric Dumazet <edumazet@google.com>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 horms@kernel.org, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S.
 Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/27/2024 12:29 AM, Ivan Vecera wrote:

...

> Hi Tony,
> the fix is not part of your recent pull series for i40e... I have 
> submitted it to 'net' instead of 'iwl-net' as it fixes recent commit 
> that causes MAC filter resource leaks that should be fixed as soon as 
> possible. But its status in patchwork is 'Awaiting upstream' so it has 
> to be resubmitted by yourself... Or should this be picked directly by 
> netdev maintainers?

Hi Ivan,

The normal process is that it goes through the IWL trees. It's currently 
applied to the tree awaiting our validation's tested-by. I will send it 
on after that occurs.

Thanks,
Tony

> Thanks,
> Ivan
> 
