Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9175B8AFB8D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 00:03:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CFCE40177;
	Tue, 23 Apr 2024 22:03:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ygP9No4t0B9F; Tue, 23 Apr 2024 22:03:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C9594017A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713909822;
	bh=uhbrnAV0adwuPr4V3KhcqqPK8lN5kFx9feHduQTWVWk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=31buwzijq4X60QVz4+9sDtAz7uhHAargeEE2ExP8qR+mhcZDd95WbDhs1/pGtAJ9/
	 QkuP3MdfCktw9rATfI8Piff0BJAJ2UCZCXPvO+j1aN+m41km9xer45jiBOnKkhl3ew
	 0wE5DOaq3PlOox0d3hDeVnqPyQulNrPvRYwRzIAy1auAPJAKHPj0We5OnLvh/xovOs
	 sw5pCfrkhtajbqB0YxaU+lpqpdgNBVv7RZdnHgxAQzbuvAdI8QP4XZC1+D3Kwxd2jv
	 5ps/f/oqLA7H4TZoek07bvJGSfqPDLc6ty4ensKaD0Qrh9thM0Xy8QHqOGcF810/hf
	 Dwi+Kz/D4WJXw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C9594017A;
	Tue, 23 Apr 2024 22:03:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 837641BF30E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 22:03:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6D37C40176
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 22:03:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O_NL-L1XPJcY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 22:03:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E8AE34016E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8AE34016E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8AE34016E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 22:03:37 +0000 (UTC)
X-CSE-ConnectionGUID: IHtv2PEiReyr1WFsU7BfUQ==
X-CSE-MsgGUID: r1EEb6XNTPeksCaR6AlHNw==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="20133097"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="20133097"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 15:03:32 -0700
X-CSE-ConnectionGUID: 6cZ8PHEZSs2fFtL9f4Glxg==
X-CSE-MsgGUID: vbLKNaZgQ0CUcOtB8/s05w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="29155429"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Apr 2024 15:03:29 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Apr 2024 15:03:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 23 Apr 2024 15:03:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 23 Apr 2024 15:03:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U1boPGLzfDUs999IEWUl62A2tNOKkMAskBKR2sNImSS0m+3h4MxK3XomVZZONnJF6YVAUnv7Gl9xs6QuDyTH3ZBG183hetT0W4Fqv0dmjydpllbbnvD4SuLqMEsrhhi8tlWvO/olXfhQeqnrmRuKVIrBnNv/o0b4P/I3v1t/fy+N8NBJ0QgpLeGlLs9N23wTX9HJAdZmcB9YpMtUdMKiQlphckAsd+Fy6AhSZPXsgMxxdseHTX3QbDUQm9HVCBb2xIpLjw8egYWwIADwZ0vnBdWBUR/SJUN34SFrJNV15hQNwYtATn/ViRvH6bnfTcaGmClA32txb02pC7yrbKFLbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uhbrnAV0adwuPr4V3KhcqqPK8lN5kFx9feHduQTWVWk=;
 b=h970TEULEDL1vWrtzjpLF3u8vHMoPPXrMK0PnwB0C4o6uLt/cNc0W5014dJo3wKmAT8WIklYFQVImzePAduDt3PnGHRJzHTMD72rfm1H2p1ac0bT9OjABuVHoFoNgVnTio7CSxrmW0ZHUQUlCy3WhGv0viQauRULKq2YpeJq0y87GrTxEyLPa+tbJdOeh3BDBdomeKU6Zx3z4+esXe3DEif8USM/KdPYsk5CbusnCj5X7Anv5BAhA+SJfoqvFpI1ZXwkyd/fec7TWmL7s3FIQ3gTqeD5cKQGKKT1no9DZ0RSHNmRgw783z4rdUN2JHC59pVIA/LQ1Lk2JVBn/U0n+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB5077.namprd11.prod.outlook.com (2603:10b6:510:3b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.21; Tue, 23 Apr
 2024 22:03:26 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a%5]) with mapi id 15.20.7519.020; Tue, 23 Apr 2024
 22:03:26 +0000
Message-ID: <3a634778-9b72-4663-b305-3be18bd8f618@intel.com>
Date: Tue, 23 Apr 2024 15:03:25 -0700
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>, "Temerkhanov, Sergey"
 <sergey.temerkhanov@intel.com>
References: <20240423091459.72216-1-sergey.temerkhanov@intel.com>
 <ZiedKc5wE2-3LlaM@nanopsycho>
 <MW3PR11MB468117FD76AC6D15970A6E1080112@MW3PR11MB4681.namprd11.prod.outlook.com>
 <Zie0NIztebf5Qq1J@nanopsycho>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <Zie0NIztebf5Qq1J@nanopsycho>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P223CA0008.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::13) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH0PR11MB5077:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f28d42e-79e7-404b-f176-08dc63e133a8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eWdVL2FScGhoQ2p2QjdBeVRuWDRPcUF6QUpzeGJBUjF0WjhXQkhmMm5vQk5J?=
 =?utf-8?B?TnRyU1c4dmN1WlNwWmloMzV1d25MUFRBTFhRMGt1OXd6SVdhVm1KSHZIbCto?=
 =?utf-8?B?ZWgwd0hROTJDeFpVMEd5UUVFWWRldnM2ZllWbzRKcW1kUTJXT0pmbVBxeFZL?=
 =?utf-8?B?NStwNnRBSW4wcGN3cmZoMFRKM1VRZEh0VHN4dFNzKy80TXJtWGowM0d3a2p4?=
 =?utf-8?B?aThWeGNtVVh0SldJWHJFeGhnMUhubnB5ZXFPamZ2Q0NtTnAwOU9ST2hLMnM0?=
 =?utf-8?B?OWkvWFYxWFlVZTFkbkZ3eUJtMmpUZmJ1b3VVbGlvZStzYjFVa3BRWEovU1Z0?=
 =?utf-8?B?Ujhwc2IyaGd0QWJnL3NWNS9qUGc0NE5uK1ZyWFlySnhTT3Z0bkhWM1lneUJj?=
 =?utf-8?B?aW5KRjVMaUZnc3hiMmtFeHppcWVZU2FDN0FQdnRGVnZBZlFIT0N2RWZhcTV4?=
 =?utf-8?B?K2JvSFp5akQyaXFMbjlsbk1VNE1yY1ZrcUlxVnVxUmVVTmFPVFNKeFBIWW4r?=
 =?utf-8?B?SFpVUnorSkFCbXRxTlNJT1JnN1UzT1g2TVVQWUxpL2RaS3V1MWdtQnlTMUlx?=
 =?utf-8?B?Y0NJRy9BQjhCOWtjS3pqTXJXOU5TM0JTVGNkMUVVcEx1TU41eDBObWpvSUFR?=
 =?utf-8?B?ZGQ5eFNDcHpkaXozd0RuOXRSbDB3bmNKNnNUQWdmVUxUajl1bVRYdWhTcjZO?=
 =?utf-8?B?ODdRaGtYOEU4NUl0U2RqTkxpbXQwZ3E5aFNQeE5WOHpqei9uZ0NMdnc1dW9O?=
 =?utf-8?B?TWRDVnRhVHZOVnBnVDhrVkdEcnJDMG9TNE5xRGdVZnBXcUNqVnZVc2QvQ2JR?=
 =?utf-8?B?KzdEOU9HeDFKVjhwakx4T054blczZ2RHNWRFdTdkNUt2azlBdS9DUy9uZGpv?=
 =?utf-8?B?T3NLMWlDTy9tVGdPVUFKNUhVY2lJWEoxQlJwL1R1b2pyTTNLdTdmenhWQUVJ?=
 =?utf-8?B?WSs4YnFILzJKRVEvWWpFK2R3SmNYQ3pHTXJia1BpSlVhajRoRVlKM3kwQ2VY?=
 =?utf-8?B?SlcwMkFZWE1xREhSenZ3d3kzeHRZR2lwazdFb2UyS2JwRmhORW1sNE1JQUpq?=
 =?utf-8?B?UHdXbnk1ejBTU0ZpaTVhUjIwN1JJNldPQUhBbU5EdHdSc3pkeWlLdGtXeU02?=
 =?utf-8?B?TmNaZTIvaE5FNmdaYlBUd2JmcE1kWUx2MG0rUWZVL2o3MGlPWnVpZ3hZMXUw?=
 =?utf-8?B?QVVEWWh4bG96dW8zbXdXNE9hRGI3UHBJQllDaCtianZoMUNQK3VnTVA0RnZ1?=
 =?utf-8?B?cmZkNCtKa21wa0VlQ3RLRlFFV3NlbUlwdXBwRkluWUc1YWcrbWtpZS9RR2pD?=
 =?utf-8?B?ekl0eFprQStmSVZxS25PSWlobGZNQ1ovYWdWY2JyVHYxcXF6YTZXdUY4K2tx?=
 =?utf-8?B?WVBwUktVay9TUjhkcFExaVpldSt6RndZRmxVWG11RTlCMHdiZ1lNSWE4bmVi?=
 =?utf-8?B?aEdNd0drVDBhWjZaNU5ITTlGV0FneUduV0U0T1JTS3lodXFNV3NueXBaNXNn?=
 =?utf-8?B?Y0IyeWN5bjZlenN4RTJNMXBCay9nMEFKOGx2Y1hIZDM0Ti9JenN4ak93TkI1?=
 =?utf-8?B?RmZpZTJNSi9MckxoVFYycE0vU1RFem5yVDYzbVRtK296UitUVDBWeFE0UGdn?=
 =?utf-8?B?QkxvbEtmcXgyYmI5Y0FXVkZ5UG9XZkM5Z21Ldm5VS3NSMTVnRVkva0RhS3N1?=
 =?utf-8?B?RXk1Yng4KzdPeW9WSFo3OUw0cXNYMjdveCtNbmUvb0JRdThiWUNCRHdRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0dybWNpa0doQThmQlUzS0xlbUF4UkE0UlNHWEx0OUV6VG42cW4vdlRRM1NN?=
 =?utf-8?B?NnN2ZVBOdGVQbCtxS1dBRW1la2x3cnVGNFVlSnBjeERoNTVJam4xV21wQXMw?=
 =?utf-8?B?TCt0VmNndHg1ZEVNbEpra2NVaDEvd0lEOUE1a3Q0R1NQOWZFY1dFWVQrTWNp?=
 =?utf-8?B?SHNOSi9aNERaM3lzV2JaR2daQ1lCN2xaa3hMN0ZQbjFCSzkrVVY4UnlxbkZQ?=
 =?utf-8?B?bExCLzZuKzU4emc0TjQ2VUVxRmFKYVN2cUl0SmYySXVDdmNHaFJrWjM1Ukto?=
 =?utf-8?B?UHZRYUpyeXlXd0I4QmVKYzIwaG5RbGNDck5jZlBKYWZDVU9paFRITXRvTk1Z?=
 =?utf-8?B?R2E5R0h0bHZqYWxtcUdLT2pKMFVuaFBZU0NLTTZRS1lmQjBsbTZkMlB5aVEx?=
 =?utf-8?B?QTBEVCtXaTdrOWJGUmR1MDFiR0Y5RUpuK0pLT3JPSGhOS0htWlpZSWtuQndp?=
 =?utf-8?B?M2VxN1FqbWRrVVNQek43anMzdUJGa1N1NGNUMENRcDlRQ2pmUEl3VXJYREFC?=
 =?utf-8?B?c2dCbEZuNXlNTXJKb2JmUkFvVTZFeTd5T1d2MW5vZVRSSm9OOS93dnNsbEZK?=
 =?utf-8?B?NmROVFp0RnNuVWgxS2t4TlhtWkJLV3FwRjFyckFQb3V6eDRoQXFtZUpPOE1v?=
 =?utf-8?B?VVYwWmF3NUF1VG15MlQ1cDlwbER3ME0rSnR5U3I4YW5OTmQ3ck0zQlRxWnVz?=
 =?utf-8?B?d0ZscDk0VFZ4bFpuUFh0YXA4ZVRFT1NmeEhpN2NTTEhXQ0dCeGFSTGkyUXBF?=
 =?utf-8?B?SlNYbFpUY1NuZ2h1VTRxRXFQRURDME1NT0tTY0s2aEZzNUZKMExma1JMWW9H?=
 =?utf-8?B?OVFwWktKTzZDakdoeWhkOGZyYUplYkRUczQrNmd3K3hVeVpZZmdQUnB1U2Zv?=
 =?utf-8?B?MUErVGlSWHJ0NHk5bHFxemdlZm5mMlBMZjF4NjVyWWNHaTdQQkZ1YlZhRm8r?=
 =?utf-8?B?WlhOYmFCK1owcjlqNzJaMlYyNHhFVGFmTVlWcllId29yZ2JSS0J3VU9oY2hl?=
 =?utf-8?B?U1hXOXFDUWVvemxoY3psTDlpeWVxc3UwcnJLVlZJR0plVjArUkdONk1DVEti?=
 =?utf-8?B?N2x6L3ZJNEJLYk51TENVWmJQWVRnbElZZkRRTE9hZkJ5bXRtbmpXd29hZ0hJ?=
 =?utf-8?B?bC9TdHJrSlpaaEFYeURUeHRoSWszdWwwNE9seFFIc3NURWZSRVBzUGFhMUtH?=
 =?utf-8?B?c1U5T0taWVFkWm9mT0IvYzVKRm5iNlBKSUV2UVdRRTVyTU1UOVFYZ1EzY1pa?=
 =?utf-8?B?eVlUUU12NExpMzMvaEJoNW9IWDV5b1dYSUNCOStDYmJkOGpCR0krdmVQL2VR?=
 =?utf-8?B?M0VBbUxNL21YbjZIOW8yUjdSYWVMNUpFZ3J1MFE0UytQYWlZWS9Yekp3QkVx?=
 =?utf-8?B?aHg3SVYxem1YanlSYy9MSXBTbVFhMzlQeis1aEpMYTAwWUcvc1QwY3lSOHhR?=
 =?utf-8?B?V3czSDNZV2VOVGtnTkFTMnJJRHF3TW1qb2RHQms0WWlWL3RiUHhsbWJrUEtK?=
 =?utf-8?B?T0YrZzFBakpxdzFGQ0x0ZWkrY042RHk2Nzg5cG1FR01RaXkrZ2tOZnErVTc2?=
 =?utf-8?B?NHBLTCtvSHFJYzF5UlZJNHhvSGMvcXZlaVlrYVdENXVWZHc3MS93TkMzajVv?=
 =?utf-8?B?UlJoR0xFSkx4Mkl4TXlGbStGTEd1MkJSSTRONkhiVFptTFpPKzJuekREdkFK?=
 =?utf-8?B?emNJM21TcElzS3g0Q29hSGFMTWxGZjhEcFdnaUNFZHdKQTJUNTU5L3ZWdXFD?=
 =?utf-8?B?UGloTEt4U0R2cFVBOTBWS29EdHlGNnNXNkFEdU1haUZPYVR0cWVEUk9xODQr?=
 =?utf-8?B?SlhsZ1VLeG1Ea3lrenRSb2g0YXJhMC9HTVFhdXoyMVhhRmI4elEveGhIc0hs?=
 =?utf-8?B?Vk1yYnVCSHR2bGk1MVliVG14ajRBNTFqZC9NUTh0MmNvdWtDY1BXL2V4Mmt6?=
 =?utf-8?B?ajdDWDMvTzhRemRyVGRYd2RtMkxSZEhzWWZ2ek40ekpRQXhKcXo1NVlCWjc2?=
 =?utf-8?B?Q3NYU282WFdKL1NMZElRcCszQ3VIUnNWTlE5bHc3bXI0aDBjQVhFQndZdHhD?=
 =?utf-8?B?YnB3NWJPLzdUYkNoZCtDTEx5YVl3Mnd4QnlLM25XL3QxaW45VUxWOWJibXNI?=
 =?utf-8?B?MDExWDkzN0JOWXZtcW93QnhqK1hEYlcvS1B2VmllWnZmK0w1TEpuQ3RnV0t2?=
 =?utf-8?B?dVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f28d42e-79e7-404b-f176-08dc63e133a8
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2024 22:03:26.6236 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R78XRMJHcTqKrYaVkbSCtHm02c18sozOUQEu5GYyGhaClBPRyJ/2VUhZ8OSU5Bj/MssuIbTBDZffsjvHNbEJuwSRuRO46vtaH18YYgMq1/4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5077
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713909818; x=1745445818;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PkuX1nP6b/PNQh2SY9HJcUp4RYvvxbsCfJAlvxkWzAc=;
 b=nVkCDXkxtq4pXm9EK3gGADmR+eFe1i0QFtX7Iid/IYBBMyES9E6Kl7FN
 f52V/k0d6h0oRaMnegtZwNe0TPnvxgcZqis+o8/WL9ZNJ11+FkbW2xKYD
 eH+4u0GFc7bZ1ryu7Wb1mfFUwNZbiONKBXNX/RaxdIz3IxtD1vWcgSHpI
 Qf8zcOb+31pQ/VxHewJFopx9dP+XzoZ2n0fgW09dKSfEC+zDYvnhNOZXs
 N2UhUXhx0a4Xqmn4wsZxiMSkYnkKLdVG9MdUFrCX8s49zFiCz5hsfM8eN
 Lgg4NVpqK56FBI3Nr+SVpDEkFROb9d5iGVzavao5iC9NKE98BqoymKXj1
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nVkCDXkx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Extend auxbus device
 naming
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/23/2024 6:14 AM, Jiri Pirko wrote:
> Tue, Apr 23, 2024 at 01:56:55PM CEST, sergey.temerkhanov@intel.com wrote:
>>
>>
>>> -----Original Message-----
>>> From: Jiri Pirko <jiri@resnulli.us>
>>> Sent: Tuesday, April 23, 2024 1:36 PM
>>> To: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
>>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kitszel,
>>> Przemyslaw <przemyslaw.kitszel@intel.com>
>>> Subject: Re: [PATCH iwl-next v2] ice: Extend auxbus device naming
>>>
>>> Tue, Apr 23, 2024 at 11:14:59AM CEST, sergey.temerkhanov@intel.com
>>> wrote:
>>>> Include segment/domain number in the device name to distinguish
>>> between
>>>> PCI devices located on different root complexes in multi-segment
>>>> configurations. Naming is changed from ptp_<bus>_<slot>_clk<clock>  to
>>>> ptp_<domain>_<bus>_<slot>_clk<clock>
>>>
>>> I don't understand why you need to encode pci properties of a parent device
>>> into the auxiliary bus name. Could you please explain the motivation? Why
>>> you need a bus instance per PF?
>>>
>>> The rest of the auxbus registrators don't do this. Could you please align? Just
>>> have one bus for ice driver and that's it.
>>
>> This patch adds support for multi-segment PCIe configurations.
>> An auxdev is created for each adapter, which has a clock, in the system. There can be
> 
> You are trying to change auxiliary bus name.
> 
> 
>> more than one adapter present, so there exists a possibility of device naming conflict.
>> To avoid it, auxdevs are named according to the PCI geographical addresses of the adapters.
> 
> Why? It's the auxdev, the name should not contain anything related to
> PCI, no reason for it. I asked for motivation, you didn't provide any.
> 

We aren't creating one auxbus per PF. We're creating one auxbus per
*clock*. The device has multiple clocks in some configurations.

We need to connect each PF to the same clock controller, because there
is only one clock owner for the device in a multi-port card.

> Again, could you please avoid creating auxiliary bus per-PF and just
> have one auxiliary but per-ice-driver?
> 

We can't have one per-ice driver, because we don't want to connect ports
from a different device to the same clock. If you have two ice devices
plugged in, the ports on each device are separate from each other.

The goal here is to connect the clock ports to the clock owner.

Worse, as described here, we do have some devices which combine multiple
adapters together and tie their clocks together via HW signaling. In
those cases the clocks *do* need to communicate across the device, but
only to other ports on the same physical device, not to ports on a
different device.

Perhaps auxbus is the wrong approach here? but how else can we connect
these ports without over-connecting to other ports? We could write
bespoke code which finds these devices, but that felt like it was risky
and convoluted.

Perhaps it would be ideal if something in the PCI layer could connect
these together? I don't know how that would be implemented though..

The fundamental problem is that we have a multi-function device with
some shared functionality which we need to manage across function. In
this case it is the clock should only have one entity, while the ports
connected to it are controlled independently by PF. We tried a variety
of ways to solve this in the past, mostly with hacky solutions.

We need an entity which can find all the ports connected to a single
clock, and the port needs to be able to get back to its clock. If we
used a single auxdriver for this, that driver would have to maintain
some hash tables or connections in order to locate which ports belonged
to the clock. It would also need to figure out which port was the
"owner" so that it could send owner-based requests through that port,
since it would not inherently have access to the clock hardware since
its a global entity and not tied to a port.

In the current model, the driver can go back to the PF that spawned it
to manage the clock, and uses the aux devices as a mechanism to connect
to each port for purposes such as initializing the PHYs, and caching the
PTP hardware time for timestamp extension.

Maybe you disagree with this use of auxbus? Do you have any suggestions
for a separate model?

We could make use of ice_adapter, though we'd need some logic to manage
devices which have multiple clocks, as well as devices like the one
Sergey is working on which tie multiple adapters together.
