Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A559B0A91
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2024 19:11:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B47864077A;
	Fri, 25 Oct 2024 17:11:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2zGc1QJErDFW; Fri, 25 Oct 2024 17:11:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9CBC407A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729876304;
	bh=CjY2eyO9wqBTO1guXssWWg/kwj/CC3fUkL2B3E41u6M=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mt2+LBPx9yD/y9wmRxK709/QNQODgeeA7NUPy8mL/HUaed3h4Vzc0TTVBE/kuMlkE
	 kIWAb3tUvUbRRJIKpO7upuJENpnC2fvZoGDuzend22CqWB+liDn3/EbZF7rOm/vx5L
	 fz7g1/KcDRg83kUZ/hfeN8TrtAJePdXONVKgbcfDOqcdJL/g+tbrUz3r33ah9BaYhp
	 wSo6hSGkguO2+CQviRvzfYLSkHx6FgSuVvup2UNqTVLl7dNn3+e1k9GJMTrgJoMyQH
	 q6EHdkFpy+/MUGb7m+FKfqZLXL809jxfWrANhkGkmzLtugGZGLeTROpQZNCb31vLD8
	 c8r/aEYnfMg3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9CBC407A9;
	Fri, 25 Oct 2024 17:11:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 94A672318
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 17:11:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8172D40BC1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 17:11:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vvpE_rYd2LY0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2024 17:11:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4AE2440973
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AE2440973
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4AE2440973
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 17:11:41 +0000 (UTC)
X-CSE-ConnectionGUID: 3YvMT1YsTjOWDkQhQFBsOw==
X-CSE-MsgGUID: NbXr1FVYRamYSmaIXWzX2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33249322"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33249322"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 10:11:40 -0700
X-CSE-ConnectionGUID: LVHUV77rTUG4Ts4TOl/urQ==
X-CSE-MsgGUID: XhCMu/jsQNiP47hNTBDjpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="80882537"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 10:11:40 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 10:11:39 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 10:11:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 10:11:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ARdGo8n07Y2EBQXXm953GqwdqAZuV8VLYcGIjTQxHqkk8HBXLhtPXomlPFhpXVGRXHvuG67PoNBeKioSUp8s5e6HTLHrZJF/EbKm8IiNFU/s61rSxsvTaEM/XP8BZJynUyDFaEYHukOkRCt3z0sxyElLJNrzByZQppY0WVanbZtGB9ttJbusib5UbEFkwldQ0tVknd0NGyWSNf8ClJbjkFmWiNhSagI/qxlSVpFeS0wM+mOEl8UnoHPPJbGiAHqKo/YOev7oWaUAw+nF6YGr2jK6kwdIA0+jT7WeTOdkLkeVXS61AsUggxQmAhHk4s0eDYZYXm9VIaPY+QmLGHysyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CjY2eyO9wqBTO1guXssWWg/kwj/CC3fUkL2B3E41u6M=;
 b=kyG3jlLsobi/6neRY1vLd5tmRWX1Qm4oQp9pukHkm0XXb60bhNw7GUxSaLDFeSiGt3TDxoI4iHaTt3ft05gdnYHIY2hxFCnI0h6IsFfQkVd3YmWHXq1yVGtv26xzI+6DVvHJIZlg4ABo+dW9waHN/WmwfjNfSzu+EaE92sLYi/fKYF4mGAalbqiARJ1o9Xf7kB2szsJ04dK5CJckho4M3wEvP/BsWV5HuRUP1Kc/AVaG0SbOrCA5mc7W29LHS9tWO+RBhr+93s1cIw3mmfT/jeV59UThIBVa2D0xu5bG+zQO37f2PVOmMVbH8YFSjfsulCFhsyMgiTyDqtm26F9HNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8431.namprd11.prod.outlook.com (2603:10b6:930:c7::17)
 by DM4PR11MB7325.namprd11.prod.outlook.com (2603:10b6:8:107::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Fri, 25 Oct
 2024 17:11:37 +0000
Received: from CYYPR11MB8431.namprd11.prod.outlook.com
 ([fe80::546b:dc38:a70f:1c27]) by CYYPR11MB8431.namprd11.prod.outlook.com
 ([fe80::546b:dc38:a70f:1c27%6]) with mapi id 15.20.8093.014; Fri, 25 Oct 2024
 17:11:37 +0000
Message-ID: <8adfb7b5-0f55-4b89-a4ac-300b2c906268@intel.com>
Date: Fri, 25 Oct 2024 10:11:35 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <stable@vger.kernel.org>, Tarun K Singh <tarun.k.singh@intel.com>
References: <20241022173527.87972-1-pavan.kumar.linga@intel.com>
 <20241022173527.87972-3-pavan.kumar.linga@intel.com>
 <20241024143939.GQ1202098@kernel.org>
Content-Language: en-US
From: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>
In-Reply-To: <20241024143939.GQ1202098@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR08CA0048.namprd08.prod.outlook.com
 (2603:10b6:a03:117::25) To CYYPR11MB8431.namprd11.prod.outlook.com
 (2603:10b6:930:c7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8431:EE_|DM4PR11MB7325:EE_
X-MS-Office365-Filtering-Correlation-Id: 30ae72eb-a8b5-4c61-bfca-08dcf5181595
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UWhmM0k0bFhDTkxFL1VYdzJFR2ZrUHF6c25tM0FEdkJwcG51eExWTFRXSGRP?=
 =?utf-8?B?YlpSc2hwc1ZXR3E3TVVDbnJZRWZSelBmQWdhKzk5RWhwRGRHTUM0Y2JkSWhy?=
 =?utf-8?B?Z3NvTXYrMm5ZRzdid2syV0cyditJUUFNT1liVGFQSU1SWnNZQytmdXliVTN0?=
 =?utf-8?B?OTk1dWdFaVlJTWt5WUFpaVZyOEZpUllTL2M3MG4zQ25qRGpKNis0OFg3RGtH?=
 =?utf-8?B?K2wvbTVOckpqUXd2YWZYbFA3Uk5DcWR6cmFpV1ZtN1RqcXM1UFdMbDR1Snds?=
 =?utf-8?B?SzRNcEJReWZZYUpIL0JmQkRLaURwNzdCK1JYcEhuV0xqelZaY3RCUE4vRWFh?=
 =?utf-8?B?VTJobDZoZGFHUXBaNGNETFp5a0U1U0tLTzhaYlpuUFZFazF3RE5Ha096anZ3?=
 =?utf-8?B?RE9NSmt2RXlFQlB5Q3pYRnZnRU82QUsxZjlCVURxSHBjbGN1UTVGVXpJMk5Y?=
 =?utf-8?B?Y0wzazl5MmZodUNiajRjdlNyNDZ5UHBGdHZyckNZK0lUK3JxOEt5UGRWUG4y?=
 =?utf-8?B?Q1U2YlBDSFVZV0ZwQTZSVWVGYlU2SE9Ld3lGMVhSNlhUekZaUDlNWkhmZ3RK?=
 =?utf-8?B?YmtoOWF6OVFSTWJUN2t6VnNqRVhYckY2aTlGbWVESndzekp3SVFrOW16azhZ?=
 =?utf-8?B?UkxrTlNJcm5DVzAwY3hxdHZ4L1oycWxQMjVVZ0VDZGFqZ1liWFBWdG51VS9i?=
 =?utf-8?B?a29RazJBQzQyb01MMThodWdqUnFzTXlvU09vc3hVMEt0eE5DRzBvRzZOcGQx?=
 =?utf-8?B?cjZhM0VRa25WY1NSRGRXbmowcE5vK0FhY0theVZvMDNsczYrM05kL3ZHR3Fu?=
 =?utf-8?B?REw4cEp4emJUanFFOURvMkhaM0NZa2R1emxsNHRjc1l6Q1JGdVk3d0hTOWJL?=
 =?utf-8?B?cTh6ZGtyc0FnRzVURXhoQzRRZEtLQkZ1V0hKWVNHamk1U0JFNkQ5VzgvZ21B?=
 =?utf-8?B?ODRXdHNTdnlkcFcvQTBpSjlxSG5XbytCNWZ4WXZRR1dQUG9xYVpUN1NVTTVQ?=
 =?utf-8?B?eUkwNHFRWi8xayt0Wmo2bTNJSGErbXJNdW0yQ1RjaU9XTmw4dm1lditHbnUw?=
 =?utf-8?B?YWV2NXhDeVd2UHRSUnBHakRVS1Z4SHUwVkRyVUhUSENpeGtvOUxqbExwRHI3?=
 =?utf-8?B?MlNjRzN3MlVHejZIVmJTMTVhY1NNTWNOc1RqR1RIY09Eb3hvNzVCTEZrNTNp?=
 =?utf-8?B?VHZ4eHh6VDMwYmkwVjNDRGU3Tk8vNXBZdTJiTUk4QjlqTkY1UUFVZ1R4Zk9Q?=
 =?utf-8?B?SUZaNnZjbW1YRXhQN0hsblVQeDhPN09sN1lwaWp4OU01cFhxN2hHUkIvei9Y?=
 =?utf-8?B?b2ttYVplOVRZNU5FeUJrTkdFejlPMnhrMzZXcnEvT1llVlhHNFJ5RnAvN2Fo?=
 =?utf-8?B?b1Vzdml0N1lQSVYyZFF0SDdncWZVTmQzVjYwT0JvcDlwbWxvK2JQOVJhM0ly?=
 =?utf-8?B?aFA5SlBUenRUSHJGU1EyL0h5eHdsZ1JBempvZ0UvT09KYTlzUWJwOUUzNmF2?=
 =?utf-8?B?dGE5aGs2YVNVVXJPYklxSzIrMmVUQTZXN1hINStIcjMvdkJBcU1TU1B0UG9X?=
 =?utf-8?B?WEhFU3RSNXVJanpOZEtZUWlHcjFzVGFSTitvaXFtaTRJL3ZsSUpkU1JvUFd5?=
 =?utf-8?B?bnRjdFpWeXc4RVNMUmNJSGV2dDAxM1E0ODc3azdYMnBkLzlOMVBBOVZkRG5a?=
 =?utf-8?B?WmtTTmNhUVJJK1hyZjl5c2R5WndBOC9aWEcyakIzU3BsU2ZuekQ4Qy9jcXUz?=
 =?utf-8?Q?9Xc2YkHWjzUkyfC2gmHvFkudba65eFGD6rnfROM?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8431.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXRWVG5JTG00RjUzVHVBUFMwQm8vZzFnaFhOSWJPejZEWHE1dGJWb3dPMGl0?=
 =?utf-8?B?UlhxbW9tYVZHbFNEdnhUQlRzUm1TU0dLKzNDMmVzcDNaYXQxcUxKNTAwWWFl?=
 =?utf-8?B?UUhUTmNxclZBQThwVS9TdE9qcEhONVdPbTFQb3dybC9nNFhhRE9qK3IyTVN6?=
 =?utf-8?B?VjNrVXg1YW9TbGFNZmYzb0RoZmNaVVF1NmlWcGZiSlZZWHZCbDhoR2VScjBv?=
 =?utf-8?B?WnBrQXBMYzFUemx6M3phRnMxVWl0WEtzb2Z5MDVHOWdpUEhJZ291aEhsc0Y5?=
 =?utf-8?B?OEt0cHZFbUovbUFpcERaa3NvWUpmWVUzN3B6V1E0bDNTa3dvd3B5c0dzUEtH?=
 =?utf-8?B?V1pMNzZ2UHB5SmI1bHIxQ0ZCR0RxamUvcXVWVzVQQXljS25kWVYvK0w3aW1I?=
 =?utf-8?B?RER2MGhkTFI1VlMveHcxL0FtcGszM01HUkhsLzBza2MyclZ2NGF6M2VBdjcx?=
 =?utf-8?B?YTZETVhDQ2hRU294S2RuQnBMYzJRK2FDUEdnckJSMU9XNUErUlZrMXA0dEpP?=
 =?utf-8?B?T2xnWFpldjFURWRtRk43Z3VKUm94ckpvZnh6T3l5Zm9sc3F3ek5kUFEweDky?=
 =?utf-8?B?TWVhRzBDMWZyd2xhbDcrSVY4VW1iNFJRRGc0S3JZTkYyK1NwNVkzTDVyVTZu?=
 =?utf-8?B?SUpiR1hXVnNoalBJZjRHWHh0UDhFcXlQSTlTUENPQXB1RDROaGNiaWl4SHZ1?=
 =?utf-8?B?K1lyRlc1SnNBSktlNUphTmVhVWN6bFJReld5enllbjVuWjJYdU02L2JVa3NW?=
 =?utf-8?B?aUNqQWJvck9USmRzU2dBcWljV0YzT3dPYVlST1B3ZUxidkIvckNaVmF2bVpP?=
 =?utf-8?B?MXJsQnlMRDdIcDhmK0t3U3E0bkk3cUFTa2lvMWJuM0ZlYXU0aEp6OFZsd0dr?=
 =?utf-8?B?V0R1eDdRYjVXdmg4ekthYURxckxWT3E0Ym5ISEFBYU55YnlPTGUrT1FOYm1w?=
 =?utf-8?B?dFhZSW11dm9BcVBoMi91YmUwUTFOOUJNbCtwMkxUN092bm1JajJNM3VjZzBG?=
 =?utf-8?B?K1h5dkNpR2pzZnhFVW1jdmM0OFFObnFuWTdUUlRiU3JKZ2RlczZ3dmdnNFpk?=
 =?utf-8?B?NU51amNibHBqYW1ya0pDcHcyUFNaSk1zeldoUmM5MGdES2g0NHp2TnhTL2x4?=
 =?utf-8?B?d3RYcGVHZzdVQnAxeEVjQXdWRXFSWi9aV05NZUxtbUlDb1FxaUV6WDBCZzVH?=
 =?utf-8?B?enRMWVc3OUx5eXpRWGdrcVI0WlE5U2FuR1ZlRGZQWGcveFFQRzRUdll1My9F?=
 =?utf-8?B?L3BicTVSa0thNUdGQW41NTRFVytTUVIyR1dSRjhpSkFPd0w2NnpDbFZrQlpa?=
 =?utf-8?B?NDFDaWFRaWQxcU1SOEMxNGhRK0tvdVBLUkJzSWhLdmlaRW5UaXI0TUhZWmxD?=
 =?utf-8?B?aTd0SWU2VEFVM3drQVVEZS9PVUF5NlBneDhnMkc1UVVBWnRYQzNhRmk2ditr?=
 =?utf-8?B?ZmEzOS93bkZtcUF5MVFMdElzY05mRmIzNXZoWll2SHhmdlp6d2E4Zmt0dE5z?=
 =?utf-8?B?eWNiUmNkQ00vT0JZZ0o2aXM1WnQrWlJsUUtJV2lvaC84YXZCSnBHOXdvTUhT?=
 =?utf-8?B?ZWtUWW95VEVFN0l4VkZ0ZVVOTDJCTDQ4ZnRaRGtMdmZpNzFET25abXVvWVh4?=
 =?utf-8?B?RmpvTUc4eFpWVThkQ1I2S09HUHh0UGZETFhTd2tDdEhvZk4vc1VSbjVOM2hs?=
 =?utf-8?B?aG9MN3VWYzZSSVhCbVFyYyt3SWY3NUk5czNQREcwTkRVSHlXVUtiWTMwc3Nm?=
 =?utf-8?B?NE5WbjJ2UHpwVGFtQjFPTEh0M1J1MHRaZGo2WURKblJpQjFYcmxuYXRqb3Nx?=
 =?utf-8?B?bmpDU3duYnl4eVJtTTArd29NY09SOXRlUklDaEEwY3hyYUgyZ2UwR09pOVdS?=
 =?utf-8?B?K0JkTmtRUFRGOUtRZDJncnFCVUljbFZhWCtCMS93TEhiV3FyM2xQVmhlR1Ft?=
 =?utf-8?B?dVpGYWtjRkY4TitSTkhlWXFNaXR3MTg5ZVdCeDErMlV2WlJDN2JnQjgzRktB?=
 =?utf-8?B?bThaUUY2Q1Z2TXBQVE5FZjhYaUFOeTYyZVJrOVlrRU1WalczMmdOaEcyZkg3?=
 =?utf-8?B?VVpxc3JRTXJkbS9oVGhtSVFkZDRlV2xzejFsR0pXT3BoOUViaFVJVVUrK0xM?=
 =?utf-8?B?TjZueHAwTGErSTRBUnZhOUNkNDhWdWN2UnM1MVB1K2x1NmhFQStkTk1RNUhj?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 30ae72eb-a8b5-4c61-bfca-08dcf5181595
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8431.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 17:11:37.1399 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gIjjP69L0BiO0KGjYZsjGDjQO5wst8nV6lbdxfa4UaUXKEMnXjE6hkjjKcJPxHsDxw200vGPGEtLs3hWCoCGtzN9+77ybLsirnKC+BM7/XI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7325
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729876301; x=1761412301;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KIgPbVfOpUcCP5QeZ2XyiaZCII7gJpv159xxsDcxmQo=;
 b=U5GBlWzSBMgvDa7vGWlnWb85sPdmja6GMSMafHmf6omlKWDgxOEaFQeQ
 nMOSO+OVPAw7kdDySoE28hE2dSt8L6Q9v94x7c8lBElWWe5S/bOnWE2ui
 Iphneh+ERHuwj0pRjgfmnxnRWnaYckBAWSahgW2oC661wvDlHNKN7WWQz
 3JJTuDyWBDCRRzraRxpyMhh3O9RZUAr8tKLV+oI2fSEo/S1mzf6DcaBp7
 Va1XY5wWvi2dlMeFEbtyFMZBVskiTNbW5taQcV2dCmmAw8KEohu0Tnnwp
 iLJTEH52KiLNhYtrrixLaBr/jI8HyAw8QmqE21uMJeaxkuR4ORzFeS1Qy
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=U5GBlWzS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: fix
 idpf_vc_core_init error path
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



On 10/24/2024 7:39 AM, Simon Horman wrote:
> On Tue, Oct 22, 2024 at 10:35:27AM -0700, Pavan Kumar Linga wrote:
>> In an event where the platform running the device control plane
>> is rebooted, reset is detected on the driver. It releases
>> all the resources and waits for the reset to complete. Once the
>> reset is done, it tries to build the resources back. At this
>> time if the device control plane is not yet started, then
>> the driver timeouts on the virtchnl message and retries to
>> establish the mailbox again.
>>
>> In the retry flow, mailbox is deinitialized but the mailbox
>> workqueue is still alive and polling for the mailbox message.
>> This results in accessing the released control queue leading to
>> null-ptr-deref. Fix it by unrolling the work queue cancellation
>> and mailbox deinitialization in the order which they got
>> initialized.
>>
>> Also remove the redundant scheduling of the mailbox task in
>> idpf_vc_core_init.
> 
> I think it might be better to move this last change into a separate patch
> targeted at iwl rather than iwl-net. It isn't a fix, right?
> 

If we do not make that change in this patch, it results in calling 
cancel_delayed_work_sync twice in case of an error in idpf_vc_core_init 
(err_intr_req). Looks like there aren't any side effects of calling 
cancel_delayed_work_sync twice. I will remove the said changes from this 
patch.

Thanks,
Pavan

>>
>> Fixes: 4930fbf419a7 ("idpf: add core init and interrupt request")
>> Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
>> Cc: stable@vger.kernel.org # 6.9+
>> Reviewed-by: Tarun K Singh <tarun.k.singh@intel.com>
>> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> 
> ...

