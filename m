Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8F7A5E229
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 18:04:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 113AF41202;
	Wed, 12 Mar 2025 17:04:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fTFh1VnOmP4o; Wed, 12 Mar 2025 17:04:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0647441210
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741799051;
	bh=GT5TrjnIgA6OzoObfWZciwAouCwJF7WUHJmzgfQo5D8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PkJgr+DPmK0AWOXQidWwL+T0dfYkddYncbs0ne0iwpe1O2KB6rwla+VBGcNWQZcCW
	 MmxTWprYisA2pqSMT/30hgJevDKbYn1URAHTxNWgvOU5v/0nHDAnzMfgNC7G/EerTD
	 Ej6iMy0l+tr/Hm4+jEvHCwvZez+7oZF7zFyLysGs1xKNBfXET6KPV68KZR0PrV6WFm
	 tAauoV0zjEAgXcp7+2JfH3w3dhmv21/Bd4mL3Ea3AC9NbDih0VMca0KWxg4QSq5zb7
	 zbj0S3AKZmJ9AP0p94542d1nSGqA3zQA2R80tU6FC6Uo49/03wYVCnz+tY6ajDnnIe
	 s197z3L5vWc6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0647441210;
	Wed, 12 Mar 2025 17:04:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C8E701C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 17:04:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A4DF340112
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 17:04:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id llpLrEM2w4MK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 17:04:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6FAF640F06
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FAF640F06
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6FAF640F06
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 17:04:07 +0000 (UTC)
X-CSE-ConnectionGUID: ljwgAqChRAileXogPEmMHA==
X-CSE-MsgGUID: mV1lLBvPQwSrmWk1N1wLsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="42751745"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="42751745"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 10:04:06 -0700
X-CSE-ConnectionGUID: ck6H3XpxTkCrIhZ3Ci9Htg==
X-CSE-MsgGUID: fFkeCnwRS1Wl/zoF3JwjVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="125761461"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2025 10:04:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Mar 2025 10:04:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Mar 2025 10:04:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 10:03:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AQTN+l6dV5My6Zm0SKRcehS9wvqiG63RH9C2zQZn3nvvVGevHnT/UaxD7iHLxooN3Zuv0VjNNrnky6Gp25qLNc/J2F/NxTR+Sn0DytMCjK6x6NbZnkokq5ZkVbypN0Al0wjGCGrJhy6cXuTDszFfD6rgAvvzy1V8WDcLiyyDMW1X1KoO5Wu5DN7a5A+5RDn1e3C7R0kpXwE1UViYsrE4L4EvWclTYgOd37jfoEtRfjhXIkAxJacip5UIik8n92nWbY2KNJEPo+bIdtcMBiXslEKySnKf7w9k8iABbvYQqljXS7zi27cSKL8lmXKJpLpuHFv5MoFMxIGyFw8cVG0LmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GT5TrjnIgA6OzoObfWZciwAouCwJF7WUHJmzgfQo5D8=;
 b=kb8/JW/dNehKMric53X7kHMBTCSL4Hcp2t3YYdeeoRoFA4lAEQTEsLCXiUhnY547iXg+hYYMOwfL5+FhOHurNudmr6LxGJHWvZrZV8QwrnD1jHVftnTDZPW6V9Ft0QwtVAg3wSSH6VRBd5HWIs22uZgDe3JHy/5l8kEeU/b8KSST9+yZwHeC7h0Wx0kyccI+EmEkto2B1f+E27qTItQGgxV5wjvChplSPHDeuYorNmFyB9+MLWohUsFKmj8YbsRe0HERBQclMDqDL78IlK3FQdKJM4mT2+P/29fF2RdWqglo8vnkJQa6paGucTfLa5GDnH1p9wRoPaKNe3zPJ+b86Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by MW3PR11MB4729.namprd11.prod.outlook.com (2603:10b6:303:5d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.28; Wed, 12 Mar
 2025 17:03:27 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 17:03:27 +0000
Message-ID: <94add491-592a-4f89-9212-24e04aa09a82@intel.com>
Date: Wed, 12 Mar 2025 18:03:21 +0100
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Michal Kubiak
 <michal.kubiak@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 <bpf@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
 <20250305162132.1106080-5-aleksander.lobakin@intel.com>
 <Z8rHXMzaMowRSv2m@boxer>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <Z8rHXMzaMowRSv2m@boxer>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MI2P293CA0007.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::7) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|MW3PR11MB4729:EE_
X-MS-Office365-Filtering-Correlation-Id: 0df7ebb5-68a3-4155-8baa-08dd6187ced4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d090VjFSa3JwSFlmRDVVZW9jUEZtb3FWT2J3M21RT3M1MFZKblczTVRUeG5W?=
 =?utf-8?B?enhPV0xHR3MzemJNZUlmTW9Jekorbm4ycDNyR3JpQ1ZocnpFOTNJTnk4emhn?=
 =?utf-8?B?Wk4wRmtKYVVsaklHc25tTm0rZ2lsS2JqL0JaM3pWMUZiZy9XRkxRWWRBakpG?=
 =?utf-8?B?YTltRHJpWTZQZEMzY29rMGZIdi9abVBpYjh0WnpNOWFiYkVVblo2ZEMzcXpa?=
 =?utf-8?B?bmw1M3UxT1QzQVRjSFNkb3BnZHp1MEZUYWJwRDdlWHpBMGJGck0vQnUxd1Bu?=
 =?utf-8?B?NkdqYmlnU2RFdzdzNVMyb0JsQXdnUkRtUlJ3em9UaWJYdnFoQlRVb2ROVU96?=
 =?utf-8?B?Q3RCNUFJTHp2THhNTzROeCtadGZPSCtBR1ZaeG41amNYK0dCMmRMMWlUSTFq?=
 =?utf-8?B?UWVkVU9YalZRU2dDRG5TclBEb0dONnRnZzMydFJGR0sxamRJSFFzcDgyUXB6?=
 =?utf-8?B?bWlieWljdEFjOFlSMnY2Y21LRGJsSVdiREw4NEZYeUZVNlZwNUF4Q0ZCVSsr?=
 =?utf-8?B?UEN6MXZEUGFqUUNzTmRvc0V1dTNhVzY4ZUY5RGl2Q3dGS0tQbXQraHNtTEpH?=
 =?utf-8?B?SjdCSXhxUW02L005NGpRNVFjT0lsSFZGRGxuQUtyVWFwTzFqL1Q4eUJwbmJ3?=
 =?utf-8?B?UXZVVU5lVWVtVnd2N1ZvUm52KzhBY3dvM2ZDK2RNSkllMXIvUmNIaEJsd0ZT?=
 =?utf-8?B?UXl0dktRaWlQQ3FiSVJKYzhTWjFXanlINnBQL3NybTA4SW5VRzhMWENhRVla?=
 =?utf-8?B?ZlFXaURqbmN6WlJXTXplSVpCTHQvWGY4NHVmVW5jK1JHTitDR1JtNisyRFpk?=
 =?utf-8?B?aWgzU2s2dTcxSnU4R0djOFVyV3VtN3R0WDRKQWF2SmV6WjJIQkVTQ0ZZOUYv?=
 =?utf-8?B?OVh2K1gvY2tsMnVMQ2xyOVF2RDhkdmZTQW5YU0xrN3UwbHRUL3VXTmlUbGRj?=
 =?utf-8?B?Nnh1RWxoWHlDbFlJVGdCT1h3NjBJSVdPMGFwd0RGbE50WkNJeG5vb3hGUEJV?=
 =?utf-8?B?dXdiajBFTEkzb05OS3BPZ3pVbGIxelpkNktvcE1QdnFrd1dMWHg1SXNWYlZ0?=
 =?utf-8?B?SHVTY0FIZU51SnZNZUJJUDF4VGIyZEJ1c2pqL3IzU2ZiV3lpSVY0VTh2RHBP?=
 =?utf-8?B?cnhPbEFvUDFNbEVJQWpUOGIzbEt5ek9OZzZQaXBGWkNYZ0ptcVkzdDQ2N0cr?=
 =?utf-8?B?ZUFDYlczbTdJbUNKdncrR1BCNmJVSTVSc0lOU1BqZ1pNcHQvN2dxeUkyazhE?=
 =?utf-8?B?NVlOR0xNODRHK0hFUEduRStGWFM0dFM1OU9kRmZPYlJYcDlFRklhTGRYVUhD?=
 =?utf-8?B?RCtsU2VaZ1pQNFkzckhrUU9LVnlobkxsU0RER0ZJZGFaaEVmSWVUa3o2Uy9m?=
 =?utf-8?B?YzAwVVZ5ZEdEUDVaZExmYWtCQ3NLTnNZSzV1THVUYzNzU0haN3hoYTYvYkRY?=
 =?utf-8?B?Rko4blBhMFlVZFJGMzZsYVBTMWZUemNFeHF1N01WNXNnZVhDMEpHREpTNzFM?=
 =?utf-8?B?ZGZTK0F0WVR2RlFjcENuNGR4U1J1TUZjMmFlVk82R0lEVUl5aUJTc1YweFFN?=
 =?utf-8?B?emdiUTRFWm1xOERFRzlrbGdXMU9NZTRURDFBOHo2b29zL21JdmdvdHhoZFhU?=
 =?utf-8?B?QmV4K1BnZVJSazhrY1lPb3VlRzFNSVRmY1RKVTZ1Z0FKKzlCSmUxZUJaK1E2?=
 =?utf-8?B?TmEyZ1l4MWhCSVRCRGZsakNlVXQxSVlZUTg3NTk1SHYyeXdodit4cE00QWt0?=
 =?utf-8?B?YVVDSVh4VlZjcW1SSFFyc0NHUFdDZzlDVlhtV1Fuam9hWDBXNjdNQnNYNDdN?=
 =?utf-8?B?VnVzcXpvaW1aSmE2TFVHMndBZTlUc2VIWlVHamVpZ0RVZ3U0OCtDYlRuaUdx?=
 =?utf-8?Q?jH0u6TM5zlnxQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0dmV0FsOHI0QnpzMHREcFdJRjBNY3FuVXVuTXdFaE9DS0lobXR0bFdTNXNt?=
 =?utf-8?B?cENaY2wvY1NGV2FnMG5JajFxYkg2TUhBelFPc25EbFhhQXUyWVJEdlZQQ0FI?=
 =?utf-8?B?M3VRRnJUZkg3WDhBUnVvSzdRZnJ0bEQ2YWlVOVNYTzg4M3FINnoxT0VJa0l1?=
 =?utf-8?B?YkozcGRrUWovaXdWQlJ3ekU3YzV3VUhnUW5iTDFpMnhnaXBYdm1Ya0tLUTcz?=
 =?utf-8?B?UzloNTIreFJaaVUxSXovSVg4UVpJc3QrS1IxRVNlZ2FYemRiNjJDNUNOSHR5?=
 =?utf-8?B?NzNGVkE0ZXYwVWFGbkdKTFNVVENhN2pxUEZvb0tVaDcvNWxJMEIxb2pJdkhX?=
 =?utf-8?B?ZmxOM3lFU1lFYTVoc3R2RlhSMG0zbURod0tXYWJzTUdJR1prWDNQMEhDUHZ5?=
 =?utf-8?B?cVpON05uWEFVczZLU0VrOW5ZdWdKeEFJSlpsWkg4N2c4c0NOZWxiRDYzTEcx?=
 =?utf-8?B?QklvZnFOSGVOUEg2ZVZxYXVSUW52SHpKOG53Snh1SjlnaFgzNFFGVjNJaHJk?=
 =?utf-8?B?eGtkN1ZJVXAwRHVhZkFybFlib2F1K3VxWEliTmZFQmdZTThnb05nOUhKYkp6?=
 =?utf-8?B?TFkybVptaGFQS0JJUFRUclFvUnVyMEExaGIzZHhGUjhVbHZpQlg2dUhQR0xT?=
 =?utf-8?B?eVc5U2xLMmNabDVZbTFpUytzUTd3WFp5dU9vQ3kzbXMya0hrU0UyVWpsYmsy?=
 =?utf-8?B?NXN0aVd4TDRqZHdDZnVsZ29FU1NsVm82WnFXWVc1K2dEMzQwSi9vdnkyb2pQ?=
 =?utf-8?B?WUdUd0x4UUN5dCtJbytwWU1xNmFRbGZYVDJmeWxsVWliM0IrQ2hwRUxBYWdX?=
 =?utf-8?B?M2IvWkNrMXg1bnRaZ3JNSE02QkFJMTFPZHVHMU5yVzJ6ckxzYWx2b2FsSVpq?=
 =?utf-8?B?bXR3MytlQ28zZDBMSVA2NW1aaWJHb2k4NlA5VFpiZ3E0cUJzZ3ZZOXR2RElx?=
 =?utf-8?B?NHBWMmcrTkJJVG9mMk5EYm5oRzBzU2wzMS9XVWpyRVpzUWlJM2pBTUVwQVcr?=
 =?utf-8?B?bFRWNGEvUHBod2tua1NRMzBXUWR4QkY1b3F1b1ZMTW5BOG5vbFI1T3pjaTNi?=
 =?utf-8?B?WVlRUnJXTnpVRWtXS3JEdi9qNnc1ZisxYVVvVmM2QSs3UnU5TFYwd2VrenNy?=
 =?utf-8?B?cThsd0Qwdyt6U0U5Yi9yUi9jd1hGTWdyV0hKQmNzay9Oc1NHWno0QjAyTldG?=
 =?utf-8?B?WURCS0RoOG9BT25DbTZaY2pwcEhETXV1bllhSkhWZFZoblZmMWF4bU1sNFVY?=
 =?utf-8?B?SHVCTTBUNUVvWmF6TnZ6bXdxcktDTUxKeUtYY0pLOUVFYjFiQ3NscEtLa0Fi?=
 =?utf-8?B?Njl4NEU4UWxtYzQ1ckVURytMNjdXYnczS0ZUbzhpamx6U1NxNEM3NkR6S2xT?=
 =?utf-8?B?aEJvSVlFeGNhME9xMnNLcDhoSWpoK3hiUEE0NjlMSFRiV1lLWFB6US9iVGhi?=
 =?utf-8?B?MGppWDBWTmtxVHhPQmR3cUhSYk9mRjYxS2FMVUhiOU5FbTNoSGxpcXBvRlVI?=
 =?utf-8?B?blU1N0g1RUZUc3g4SXh3Wi9KN2ZWNjdIKzhreC9nY0FrVGJwRVp1dUlTZUVM?=
 =?utf-8?B?WXBCdEhkQ3NtdG03RTdYZWpYTXlHZFRNNkwvZ2MySTI0N1NxS1hFVzRkVFVZ?=
 =?utf-8?B?emdTcWJFSlRycWRKYmlkSDlOWEtVNUJORm5xQ0RRVHJmbEdRYy94RUtrNFl2?=
 =?utf-8?B?aTVOU3kyaGw2a0xubFFjM05QM05YRHgzb2k4aHFaYzNvUVEwY3RQTHRzWWFZ?=
 =?utf-8?B?YjltOXpyOUdablZ3YlZFZTk3QzMyRFc1cFF4WWpSbE1YK2VIZnBPSlFqMWQ2?=
 =?utf-8?B?OTY2TVkvRnhDQ0EzektaeDVSd3ZjUG1YRUtMbE56czlobm9ySEVKZnpRelhH?=
 =?utf-8?B?RkM2dlVydHpKbkNoS3k0dVlaTVdxSmdKdFovRzJRanRFcXdtOFZrQkhtM1dv?=
 =?utf-8?B?THVOOVZ4ZTB6c2tscitiYit0ZDhSclAxNTl0bXB0anVBSy9pWGFwQVY1eUZ2?=
 =?utf-8?B?bXpwZ3J2MS9QOEZxMDRhNEh1QmlWL0NLOW5uTkl6ZHhSVVhCcnhkVDZGOFVF?=
 =?utf-8?B?OFZnYktoWXFCZ2h0TUdCbUJXb1VNVGRzVkY4WC9ld3NzWDFLcUpldmZFSGNK?=
 =?utf-8?B?N1I0NlE5UkFpd24xUTQxY0ZINndOaDY2VGk0UTd3cHd2YTBNZk9WMUNUVG96?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0df7ebb5-68a3-4155-8baa-08dd6187ced4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 17:03:27.8135 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qjD7RVnxe6Nv5/w3EDx5zAhBcjGAe2oR5dPXwm1hDv+9U+ci2huSchuKAaazamC3buQd7c06NxWACPZ1W+m1ORnGEg9fVZiJ4/webbuMdHE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4729
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741799047; x=1773335047;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MHhqfwQdvZeVXCL8adh8gsENB2WOiqCF7ypi6VFfAug=;
 b=hNmdBep7tWOqUUjwih6e9LN/l+ZQtjPvIDbp7en2xpvO2Bw372P6tIDw
 BPnTOi72SXIvS/7NWw2jOgA4+dCLLvqQzPe9oKDhZWh5eQUkK1fdvAYjN
 horHeN46C2ibVt7OalNZMRmVWIfSZOsZqzjmJEI+i11nnT/U7txUUrj+D
 Qyv62BJm+jnb3lha9piQ9tPEEntj5TfmXQ+96WUquHDToGeTF4yxaH6+H
 rvlQ0auoK8iWerQbdZLGahEro2HXSl4uJ5K8PufDbSnzNaEmjTtTTI0h1
 hRUuCmftaZMC41Cm4b+96oJZUCwKgHS+KnXbkfvw+kuSCkKybnWVS5eaR
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hNmdBep7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 04/16] libeth: add XSk helpers
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

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Fri, 7 Mar 2025 11:15:56 +0100

> On Wed, Mar 05, 2025 at 05:21:20PM +0100, Alexander Lobakin wrote:
>> Add the following counterparts of functions from libeth_xdp which need
>> special care on XSk path:
>>
>> * building &xdp_buff (head and frags);
>> * running XDP prog and managing all possible verdicts;
>> * xmit (with S/G and metadata support);
>> * wakeup via CSD/IPI;
>> * FQ init/deinit and refilling.
>>
>> Xmit by default unrolls loops by 8 when filling Tx DMA descriptors.
>> XDP_REDIRECT verdict is considered default/likely(). Rx frags are
>> considered unlikely().
>> It is assumed that Tx/completion queues are not mapped to any
>> interrupts, thus we clean them only when needed (=> 3/4 of
>> descriptors is busy) and keep need_wakeup set.
>> IPI for XSk wakeup showed better performance than triggering an SW
>> NIC interrupt, though it doesn't respect NIC's interrupt affinity.
> 
> Maybe introduce this with xsk support on idpf (i suppose when set after
> this one) ?
> 
> Otherwise, what is the reason to have this included? I didn't check
> in-depth if there are any functions used from this patch on drivers side.

I did split libeth_xdp into two commits only to ease reviewing a bit.
There's also stuff from Michał in progress which converts ice to
libeth_xdp and adds XDP to iavf... I don't want to block it by idpf,
who knows which one will go first :>

> 
>>
>> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com> # lots of stuff
>> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>> ---
>>  drivers/net/ethernet/intel/libeth/Kconfig  |   2 +-
>>  drivers/net/ethernet/intel/libeth/Makefile |   1 +
>>  drivers/net/ethernet/intel/libeth/priv.h   |  11 +
>>  include/net/libeth/tx.h                    |  10 +-
>>  include/net/libeth/xdp.h                   |  90 ++-
>>  include/net/libeth/xsk.h                   | 685 +++++++++++++++++++++
>>  drivers/net/ethernet/intel/libeth/tx.c     |   5 +-
>>  drivers/net/ethernet/intel/libeth/xdp.c    |  26 +-
>>  drivers/net/ethernet/intel/libeth/xsk.c    | 269 ++++++++
>>  9 files changed, 1067 insertions(+), 32 deletions(-)
>>  create mode 100644 include/net/libeth/xsk.h
>>  create mode 100644 drivers/net/ethernet/intel/libeth/xsk.c

Thanks,
Olek
