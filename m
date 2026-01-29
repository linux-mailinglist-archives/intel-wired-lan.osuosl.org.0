Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yN5eMR+Ye2nOGAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 18:25:51 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 137E4B2D15
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 18:25:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87B6540C41;
	Thu, 29 Jan 2026 17:25:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cXHidMmFljXf; Thu, 29 Jan 2026 17:25:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D420640C5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769707548;
	bh=zm/DvkBHMsFnuroZbbI935ws4vw7cg5ahSSwgBm3gJM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M7+ehoNYHpf3FpGLLdhHah04A5DsoyNqa67ZhlgeavLUN2L5X1rB8rLgFF12GwTit
	 LwL7vHxvTYgFoptkp8rqErhW9AGpo9XbvjcYcMcWQZ40ddg2k4FY7uokqVCCFMFO4p
	 7haPARh9gd2MkccnY4p38m4psQv9bTDF6aX9X3KnubQzUaQno1v93NXHUhpYu7Qthd
	 /o6KCJhiC3wGHdZKz2TIWkTp2WyshpojJ6M1hN5X/SOcgd8wD3tzyfRb3DuGADuyS8
	 y+1fStb7NExDzHYzC3RmNUiP6zpv4/eclg/Bz2XgZGSnkQe62aLKVN62QSjI5ZuXyf
	 ByXxJ8qpmFcBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D420640C5A;
	Thu, 29 Jan 2026 17:25:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B9380118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 17:25:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A883B40511
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 17:25:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oOWBX263EEV8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 17:25:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9879D4051C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9879D4051C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9879D4051C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 17:25:45 +0000 (UTC)
X-CSE-ConnectionGUID: 1xaxKS63SmuxUyy0aYJWfQ==
X-CSE-MsgGUID: N1MN3YvtRyGzRKvjsp6dsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="82381435"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="82381435"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:25:41 -0800
X-CSE-ConnectionGUID: ZFbZJhMCTMS2Bxd702fs4g==
X-CSE-MsgGUID: BI/J64uIQWSyI+kwqz1rNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="212713628"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:25:42 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 09:25:40 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 09:25:40 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.5) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 09:25:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W3U2HeRQPyhkERj1Mz706AFkkUQYkNwAbsZiAKSAzriVmRZFagr8AD+gvbRqsG5xnqUIsNKTODyEdMXfS/37sWaBWQPoVKsczxj6Su5UCfvNFLy1vZyysjGAZcV5rOv17HKIcAOwmLrVzJb79kLTuw/r0H6cL3oujN25XC6besUGp9GQaBGbM+Oj/00MaTYv3XZc8mYM6zSs5fV4OVm1bip0KHjKfSsL6AZVZQ8+x51voARyegNqJGfYk9FFlUX0Ak3nNkkWwpaHHcS6y70P9ltew8HtASCW/6FzRPRLMMwjGaWNoWeNfwZGLa2KEW2HbchlrwhfxgMFWevACChYFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zm/DvkBHMsFnuroZbbI935ws4vw7cg5ahSSwgBm3gJM=;
 b=BwPJYtRit2XC7zfhMI0q8bdc44HAaWKaNhJZkFpKmhoPjqx0OHNj31XANBmTxBxfeA9/hqRcjKJ7MuVGCIe6qprvQkyF7x3wAJgih4kHz3J+xfutbNehdBXwEkNBMdMj9obMWveB0mUi5jNrDI+pkNoJplo3Yzv53vW4msFlmkYRvPmMaEXYq7WAQA1AW4sx2bARhDL2pyhs+VQfAl8Y3vdiEi+G9/kFpSl+3mHKJoivYEEPrQsUBJTnywoYKBeiETxdmfKP8ONoIfgYg8HJGpityvLqcWR9vurDJqfjbSTvqtGzXr7o3BkiMUpIgxnt0/94vdTg+JIxDuyqHeIpDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB5110.namprd11.prod.outlook.com (2603:10b6:510:3f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Thu, 29 Jan
 2026 17:25:36 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 17:25:36 +0000
Message-ID: <9a6a7736-6fdb-468c-9576-6c2db97777d8@intel.com>
Date: Thu, 29 Jan 2026 09:25:35 -0800
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, <netdev@vger.kernel.org>
References: <20260129095723.7269-1-poros@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260129095723.7269-1-poros@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0261.namprd03.prod.outlook.com
 (2603:10b6:303:b4::26) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH0PR11MB5110:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f8567ae-dc7b-4a02-c59d-08de5f5b6a1c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QXVNSjB0QzFudU1yUWtpcDQ1OFFuWWJiN2FDMXVYaEdhWEN1ZlE5OHVqWExs?=
 =?utf-8?B?SytRWXlzSllHS291ZEhlU2RUbHp6c2lsTXpET0hIVVN4RGlTc2FnTzErUFgv?=
 =?utf-8?B?Yk54eUk0L2w2OFhEWkRVTUJ2NzBpVjZmOXRYY0xPZHdlV25CdlBrNVZJOE14?=
 =?utf-8?B?eU53UWJsR3A4Z0ZFeis3VjVON2pKVm9rLzQycXV6U3hxbDc3QmxESWJaUGVE?=
 =?utf-8?B?V0x0THZ0NklCZ3ovQXJzZytIcXJNRExhQWVKb2Q1dVNjY0lrekpOZGl3Tk93?=
 =?utf-8?B?YzZwSzB0OGdzNXlxQXdlUHZIYU4yOEk2ZHdMamV3QlhiK0JTRzhvSHVDY3A2?=
 =?utf-8?B?a1ErcW1PU0JwMmVEenFBZVhSV25Qa3YyVTZ3dWhiZlVORC9wR1ZmRmNoYkJP?=
 =?utf-8?B?Zk0xMGZBcjN1S0V6bDVOL2E0NUd4enIzNFl4NWFiVVdEbDZVY2FZOVJJR0Jn?=
 =?utf-8?B?ODdMYWZwZmpxeGlabnBJcnI1UmNma3BBWlAwcmtGL2Y5NzZYUEZtNFAxOGRq?=
 =?utf-8?B?RVo5SlYwQzBnVHFuQktyRElFNkl5aGZjd284cVdjZkFEcnZObVduRlROeXVt?=
 =?utf-8?B?SG55bDM4MUJXVFA0dFFYS21SZEJJcHpLM2ZiOFNyN0kwbFF2TDE4bFRNSWRh?=
 =?utf-8?B?QmNCdnl1czhWdVJZeUo4S1pHMDNieHRScmNhVHhZaVphd21CVE43S1NXNEFK?=
 =?utf-8?B?dlQ2V3NkU29ENEg5RVd2TzMvbHFNREVyaExKZGNuMFpoY1pLR1huc1E4K2U4?=
 =?utf-8?B?SWlWbERodXg2Nk4vNEN6aEk3SXV4WnVaekQ5MTBhU2RNOTdFWnBtTWNIUDNy?=
 =?utf-8?B?WUt1cTY2L0RPRml2NENiRzBRWTZONVFPbEc3aWcrdis5dTVqSUU2OVgvZWJB?=
 =?utf-8?B?TWJqRWpxcHZmQUNQUVdmbUREcFlseWoxWTRFeVNOTXFXS3VsUk1SeUJibXdy?=
 =?utf-8?B?VFBzTC9XN2dMZ051Q3JBRDhaYjZwakRWdG4zNVNSSkZBQTBnNVJOTzJiWHg1?=
 =?utf-8?B?S0lQS1dYMVpzbzVvM20veEVlaHc2anMrWHJwSk9pV2FqeXdLWkxMeDMzS21l?=
 =?utf-8?B?WEZxcTR1SmJQeXJuSU5jSjBUeno4Wk9TOFJPRnZkOG90dXdWWFo0ZjBBWC9W?=
 =?utf-8?B?MXd5blVPMjRBdFhEdy9zZWsrUE85RmRmQ2MrS1NhYjFLZnk5UVg5MElvV2Za?=
 =?utf-8?B?TmdVai90MUFGczcxMWlvMnM2NkZPQnVzZmIwVkdXQ2tuRElkRzY3TzVaVmVB?=
 =?utf-8?B?N2M4blBML0RlSWlqaGVGLytJL2hXcmlrK2luRFo0aWxUVktsei8weHU1YWVS?=
 =?utf-8?B?WHJDcE9oRDdPMWdIWE1qcFFmNEprdE9aaGh0dzA2VFE5Y3pHVnB6QXZBRSth?=
 =?utf-8?B?OFFQUFVPMHZFNlJqL0svWkUwZEl2OTFWcEJYdXlBSzhBNHRWdk83b1Y3RDdo?=
 =?utf-8?B?WWg5eWl6WVhPQTVXa1JpaHZEMWN5ZHNYU24wSGVqWTF6cG5TSnlLZC9ZYVZz?=
 =?utf-8?B?b0pCUVh1cnhvQ3BhRGI4WkRmd0k5YTZXU21ZQjZkSmtXNzZTY1k2UFpMS3Rx?=
 =?utf-8?B?UkJZUTJQMjRnRWQyemFZVXFuTk1wL3E0YitxdlZnNjBtTkd6bEpyQ3Y2S0l2?=
 =?utf-8?B?ZEdnb1p2L3J3ZnhWWjlrWkV0dnE3QjJ6bDd1QjlTdW1INDlPQ0ZXVVQwTWRS?=
 =?utf-8?B?VGxzbzBBZ09aUUNtaTcza1pNZytrZVFaSlJKWHVDV2drZU5WaGJ0T1ljcUEy?=
 =?utf-8?B?dW9aV002TXFpNklMWFdBMkxwVHpBSFpaeUVvU2liVGpMcDM4V2d0ZmMrUkxN?=
 =?utf-8?B?eHJOQ0tlamMrZUhVUzhkTU4rQmx3WnJkZXZ4NmZjbFV6eU90dnpOdStpazFP?=
 =?utf-8?B?RnkvTUdSUS9oTS8xR1NPeXpZS0pjNE1BQkJYZERVU3VJYmVocEh1K1RSR0dM?=
 =?utf-8?B?WitTS0R0aElkc3dSNlZRSTUwVVV1RHhGUGpJWHhLUXlabi95V0IzZDc3eVNl?=
 =?utf-8?B?UVdMUGhxOEtaeFpndE1XU3k1T3VLRmdVc014a29yL28zRDh6OXpob2NTSlNJ?=
 =?utf-8?B?aStsdjVINEdpL1ZLYU1YUkxCNi9wYnBWUXU2Rm90VTBiQXNJUUd5R1k5RHRP?=
 =?utf-8?Q?T2Gs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnhHUER4eWg5TGY1cGZkMGJlOTU4YTliZTBlODVTTVpXekdINytXcDJPSE1F?=
 =?utf-8?B?TGxhQjREVDZBRHVYYWlScnlTNjZPRWV5UFlVMS9QVzByNzRnZHE1Ym5oK3Ny?=
 =?utf-8?B?bWlnY0dyZmtDK0pNRHdPWDJLUVhSOVhSbmN4S3hmY1JscEZGOEVPRlBMQmQ1?=
 =?utf-8?B?dlR1MVN5TFFaM05vVnlNOVpWTjhHTVhxbk1KdktLc0ZMbEFmTEsrZVNYdnYr?=
 =?utf-8?B?U1NNMmxsdVlkZHRhZ2hZbjhtUHNKUVlQTENBa1k5K1RPRTc4algvQ0FQVXpl?=
 =?utf-8?B?TDZBaEozN0lRamNCVUJINlg5SUpwSFY2NVpneEZVaU9jYmZTWXRZMG9CT2hI?=
 =?utf-8?B?Nmpya2xIOW5xZ3VGN2s1dmJLTGxxSjVxYjdmTnAvTGNGSDNMNmRScFh1N2tP?=
 =?utf-8?B?Zy8rTzVhc2ljNUF1QUpXNTdVY2J6QWQ3WGt2WFhLWGRRd2IvUGZraHdnVXlE?=
 =?utf-8?B?SjdXdnBEZW1VU2NaVnJQNnlrTnA4RTZhM3EydWVIcFRWZDdtaDZuMGRnanR3?=
 =?utf-8?B?YUhYTDIreEtiOG9wMU55NDg4T2JJdjFIWDJaUFc2VmE1NElwUHYwdWJ2a2xP?=
 =?utf-8?B?UDNzUnIydG9JelJSd0ZmMEhiWGd3YXk2RnpxazV2a3VBdHJKa2poTnE4Y2Rp?=
 =?utf-8?B?aUltdHZTTE9NNEpWY0IwcVF5RUpTeXF0K1VEamo4UEdIUXZKZFArcWNEd0Y0?=
 =?utf-8?B?S09NZjlicFI1VnJISTlJNS84WUxWbklKTnBwelk2V2RLK3d1Q2ZvQkxjTHIw?=
 =?utf-8?B?ajIzSko5VFIwQmVJQXZEeUwwN3VWdzdzZUliYkhmZ0ZsN05OcGg4RWt1YjIw?=
 =?utf-8?B?UUVxQ3lIVjlBQ0dUelR6YjYzN0pNYk1zVWxWWDhGSG5JWkVKZVhIRGhPL3Vm?=
 =?utf-8?B?MGxyQWdnR1VxUktaNDUzNzE4a0RnOFpwN3ZSWnhpcWlDSmhRUEdBcml2aCt2?=
 =?utf-8?B?SnhTZUFHZy8zcGZrcFF5eENSU2N6VStXVUprL3huSlpxb0NXL2IxQ3I4d3Ja?=
 =?utf-8?B?MjA5b3Z2UW1Oa3B2LzNEUHNyMGRtRHl0R3B5NndvWGZ5SXZpYUQ1d2cyeWk1?=
 =?utf-8?B?RVY1RUJPN3Fmb3dhUEtEdkM2SVlXSUJrbjRwTTJ5b00rM09Ja2p2elhnQTlZ?=
 =?utf-8?B?aXhZNDV4bkJtY2ZQMTM2bTFQNTBNZFBieS92TW9RbXBaQTRKNGJpSHBEbG9a?=
 =?utf-8?B?UDdVYnpCZXRrTTY0TlhPcmxzd2RYenIvVmZpSnJteHprNHJlbCtvMGJPK2xW?=
 =?utf-8?B?Wm9zaDlWQjFhQXhKNWVrZ1JGOXcrTExUS3hQbVdOUHpJVEpjaVJwdUxML2ts?=
 =?utf-8?B?enNQZC9HaC9qUWo5eDVmbFQ5UHRWUHkyR2cxUTNHc1hhNjAzbGxpRVBXYVV1?=
 =?utf-8?B?ZWYrT1p5RFFpakYvMVpsMUdSSGFKYy9lTVJSMVp0SG5CRmpjYys1em0zMllJ?=
 =?utf-8?B?S3Qwa3ZueWxyeWI4Y2lpRFRFbWR2cGQvRmxSNVEzMTR0bXdUdWNUa0duLzc5?=
 =?utf-8?B?cEx6SVQxZnBEczE1WkZVc0d4M2E1cThnL3pFWEkrT2pRVFdLK20yUE10RlFZ?=
 =?utf-8?B?cjJ4by9aRVZ1YXYrZVFjYVRWZGlIQnh6NTc2QzJSb1BYQ1RyVER2Yy9ZbUZ0?=
 =?utf-8?B?dnRxd3BwWUxmMFBaZXFkOWhBSjk2SHhCWHoyMzQ3YTcrMER3TnBadVMyeVA2?=
 =?utf-8?B?bUI3T25IZm5vaklqTmJiNS9PellYMkI0QlhGTUxtamRXMk84MkJ5ME0vZFhK?=
 =?utf-8?B?VEFEQWJuYkdCcmY1VnRnV2Uzc3BnOTVBOXRRT1ZQc0xyOVVFY3lCOVRoTHJX?=
 =?utf-8?B?QjdhUzZOZnpiWmlJcjFvZndnR2hJWmJSc05vQ3R6Rkd3M1drVkxEcVVnS0tx?=
 =?utf-8?B?YVNGZFJJTXpUekp0eGtxLzFFUzJIdGJ1V2NpNWlmUWFraU01VUJqdWdQOXFR?=
 =?utf-8?B?MnZQU2g0R1U0TzNkUnNBcHlPejVkWVhERGg1UGdPeXRydFhaNzhZdmwyNElj?=
 =?utf-8?B?VXJBNEF1eFlPenNJWjZtM1czNDRyY3AwazVhK0tEYUwreTMvUzBaa0xBc3JD?=
 =?utf-8?B?RUdpK2tQenFTejZzYWFDcnpDMllpQzJsc0xqZ1pHT2tSclorSFZWRFo4bExU?=
 =?utf-8?B?N0dKNU1wQmRUZVFuRVBFb0oydVNpZEEwdG5IU2RaSlM1ZHh0OEpuR3pNTlhq?=
 =?utf-8?B?NzQ5blU2TWF4cWNIZEFmVVFSRnFHVnk1K0E2WE8rWml6cTFnK2tZQUUrZHho?=
 =?utf-8?B?T0U3RFcrWnlGZFRNSXNvOUVvSHQxY3Y1VmVVMTIzNXIzOWhBZXBzT0EvYTAz?=
 =?utf-8?B?TGRzdFhtMXVVSGdJU2ZCMENScEZtVEdOeHhsTmJ6N3V6OHE5VnhQaTgyRjYx?=
 =?utf-8?Q?UflDasvVfkqmtXxs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f8567ae-dc7b-4a02-c59d-08de5f5b6a1c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 17:25:36.3216 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n3yynbFW3Q5UyBTwpx2tPNQNBPbAFDzLe3yW7MbzAw69UtxJWPQ2RiPv3Els8o0Lfg8Qv5C9r2GZyfpMEdETyNMFaOAwsgaA4gTLN4Ga25s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5110
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769707545; x=1801243545;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xlx+4Padld1Oq2b6DvwA0m8tVAydT1/nSb+iBG+2LPk=;
 b=loBZg9TT/nmjPoafPVr1jRhz2fsjkaZYe0wPwUEHMpfvU2VGbnUa80x7
 ROwPuytgTNqoGLBSNmLJ9ZBKDy00P0pizpy5YVq+6SKcrbR53i5J3Tz2o
 Xa5cmMz4uERUluqvFCZnNEGGKhNfeRgTiV3Yg7PU5vdAsZJXa1Wifm/kN
 EYFp87nDAU849QxNUorrGhL0oowvY5/AZtpkubervc4jJ/QOUaFXJ1GZC
 9GV4oAO63PJqz/xLpZe14zXZBApOrZ8wJlV+0u/mhIqUDYR3Be+8OrKS0
 MJgF+ml+W4gmUUTqSRaF3OsuLDVXMaMiEx0TTtj74q/dxCXqYJwUVX/Xc
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=loBZg9TT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix PTP use-after-free
 during reset
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
Cc: ivecera@redhat.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:mateusz.polchlopek@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,google.com,kernel.org,davemloft.net,lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 137E4B2D15
X-Rspamd-Action: no action



On 1/29/2026 1:57 AM, Petr Oros wrote:
> Commit 7c01dbfc8a1c5f ("iavf: periodically cache PHC time") introduced a
> worker to cache PHC time, but failed to stop it during reset or disable.
> 
> This creates a race condition where `iavf_reset_task()` or
> `iavf_disable_vf()` free adapter resources (AQ) while the worker is still
> running. If the worker triggers `iavf_queue_ptp_cmd()` during teardown, it
> accesses freed memory/locks, leading to a crash.
> 
> Fix this by calling `iavf_ptp_release()` before tearing down the adapter.
> This ensures `ptp_clock_unregister()` synchronously cancels the worker and
> cleans up the chardev before the backing resources are destroyed.
> 
> Fixes: 7c01dbfc8a1c5f ("iavf: periodically cache PHC time")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 4b0fc8f354bc90..0dd58ce5a53ab1 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3025,6 +3025,8 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
>   
>   	adapter->flags |= IAVF_FLAG_PF_COMMS_FAILED;
>   
> +	iavf_ptp_release(adapter);
> +
>   	/* We don't use netif_running() because it may be true prior to
>   	 * ndo_open() returning, so we can't assume it means all our open
>   	 * tasks have finished, since we're not holding the rtnl_lock here.
> @@ -3200,6 +3202,8 @@ static void iavf_reset_task(struct work_struct *work)
>   	iavf_change_state(adapter, __IAVF_RESETTING);
>   	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
>   
> +	iavf_ptp_release(adapter);
> +
>   	/* free the Tx/Rx rings and descriptors, might be better to just
>   	 * re-use them sometime in the future
>   	 */

Thanks for the fix!

Acked-by: Jacob Keller <jacob.e.keller@intel.com>
