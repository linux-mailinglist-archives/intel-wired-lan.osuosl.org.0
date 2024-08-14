Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 286A795231B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 22:15:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69082608C3;
	Wed, 14 Aug 2024 20:15:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3E4zvznwMddo; Wed, 14 Aug 2024 20:15:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 801D0608D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723666493;
	bh=pVsfihqbo2mgY3pJ8PWZmXbCWL9m3WsIb/r0Ssn24Qc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ptzfr2nUm8LBvpy04X4JQE4M9NGJeLznvMHodZSx/AS2/MDRdpCCx5xrM/Uxf63kH
	 1oLUeS42uRL0P+ecTyo0g7ZWd9oJfXBxWLiRDDMLekmhzrgSPNdJmbGMA0gSctKozI
	 b4kaRjDjRxj4aDlk+d6U4TVeDwtRVZbNC80BKf3hR0CQf5yEsAK5PdZAYJn0fEUjva
	 CG/lv9KMRTxvM0ti6FIsbGd8E//RkBMfLVi3jwh/HUYmZrQ07URvOvOI1nQJU95OzR
	 XXEYW9p2OwhdUwfeRWRgquzBhx3nv8vBg1skJQkompBDLPB+UdEaii8knQYGCV2cTO
	 PYHuwFisbhwOQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 801D0608D0;
	Wed, 14 Aug 2024 20:14:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F5EA1BF471
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 20:14:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7ADFA40DC3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 20:14:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id to8Rl01nPUcq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 20:14:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DDD0E40342
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DDD0E40342
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DDD0E40342
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 20:14:49 +0000 (UTC)
X-CSE-ConnectionGUID: R+4pAhQmRl6x+2L+5sNMkQ==
X-CSE-MsgGUID: Tjsn9hdrRkK0nVZyfa3ZLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="32481880"
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="32481880"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 13:14:48 -0700
X-CSE-ConnectionGUID: 7q8SqOHRQlmUmLQZMcKbXg==
X-CSE-MsgGUID: aGD2Yt0ZSJu3agl0DpkGtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="89920857"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Aug 2024 13:14:47 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 14 Aug 2024 13:14:47 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 14 Aug 2024 13:14:47 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 14 Aug 2024 13:14:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a4e+R6iyJqMNp53HsRsWy+4FhQM6ypgqZ/7jy4jNd0R/KSEHUxQnHfv70m2pmjZ0UmR4TmpChjr13igT6thdDarm9cep0RisGW9q+njZF7D6csTBhIxIEFnfWZNfqyqY5EyGcjGXJ+Y13KSTjUcDSI1Gwkx4oT4CYQRvq1vQ6sPEoCK1dTGVpdR2h/N0JFc0ag8I1mpRA7esAsnqm7wAQg3o83jI3frccIEM4KKSKpiVkQkFxcll2PUQDJlF1qp8ksjMsRw+FxEsCk/vettv6Dc+WPH/mo2SkHyXxekQtJbH91gLbx2MZgWj51f8INk8P8VoVc7oPPWsVc8czhGkog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pVsfihqbo2mgY3pJ8PWZmXbCWL9m3WsIb/r0Ssn24Qc=;
 b=WFfYJf9P5w42ldfZjp/Mvw4wFLqd7JzSM9xi+GSPHjA63i9qrTJPmG2b/hJEV1sSZ/SSjVpfzj0A192TjzncTwGNYoBuYTA8GzjqENy8PAaybFI0G+aYh31L+AwnoThzGeHAv2wyFr+fxVORJHyC/PH4eyVUQrEUFPni3mcvzeFmYrCh7xISYqWzYOIR2KDGQmTogiin3B8XpS1mHJzStlSMQ3KQ9ZqzRUHDajpGRIQLl47T7Y7uwCJhn58reH4h2Lmdwh3qAy3Kq5+8ovWFdsGqcGpDKLLyPv8DuBCthYHlm+RPGHEu8KhTt1rGvguFtDhbb4fmXj3wFvQ7GHT/Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DS7PR11MB6174.namprd11.prod.outlook.com (2603:10b6:8:9a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.17; Wed, 14 Aug
 2024 20:14:44 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%2]) with mapi id 15.20.7875.016; Wed, 14 Aug 2024
 20:14:44 +0000
Message-ID: <4a4c4a1d-2091-384c-1fc9-68d9e6c07727@intel.com>
Date: Wed, 14 Aug 2024 13:14:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Linux regressions mailing list <regressions@lists.linux.dev>, Sasha Neftin
 <sasha.neftin@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, "Ruinskiy, Dima"
 <dima.ruinskiy@intel.com>
References: <acaa3e31-a6f4-4c45-b795-d12b0d2743da@leemhuis.info>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <acaa3e31-a6f4-4c45-b795-d12b0d2743da@leemhuis.info>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR17CA0070.namprd17.prod.outlook.com
 (2603:10b6:a03:167::47) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DS7PR11MB6174:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f3415ff-eac9-4171-906b-08dcbc9dbcc0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?alJyM1RKRnJXcE54MFZlbUJidlNRNVhWUjg4bUlJQVVrRXBId2M4NFFGSDVF?=
 =?utf-8?B?aUE1K29LYS9MKzFqMHZpbGxsS0dGaGcyZEdhUEdaRHlVNi9oVkdycFVuZmZq?=
 =?utf-8?B?TUxYYkdjdjNxblFUa1I5M2JuOWY5NUJEcm5QYTRVU3p4Y3k0dWRxVGhKZGdG?=
 =?utf-8?B?SVlPNWI2c0ZQVWhtcVQvTkthQk9YQ3FEOUVqSUdtTkt0dE5FcjAzMEtkUnpi?=
 =?utf-8?B?a29lZ01WalBqcHI1b3F3cU13SDhZeVRMT0dMbkhnUDhaTUphWEdSMExXekRE?=
 =?utf-8?B?czNtQUh2ZllOejk5c0FiOTBYbWVWd0ltTWg1VU03d2dqV2pBTG95TDYwWHZh?=
 =?utf-8?B?TUFKWlZ0bnc5cm4waXVGdkJGTVQ2ZkpDeHRDR0FWdk5COW1qTkhkVkxoWTZl?=
 =?utf-8?B?UCswNVFsMHNNVTlQNXF0b2NjNVJOclM1TWZOZUwxNTlod0FQZlJ2UUprOVdt?=
 =?utf-8?B?MkhyMVppUG9sWThFSG43ZzkyVTE5eDIvdUVoeURuRk9PUHVxNnUrakNKMnM3?=
 =?utf-8?B?ZzFPZDV4Y210RlVXN1VNOHRwd2tKZGhFaGJJVUhjaWc4cS9RbWlWKzZTa1JI?=
 =?utf-8?B?djhlMnFOQmg2Z040cXl1NnN3aGZTSjZuMW1PVDBFbjhaUGYxckxMYzY4OWEz?=
 =?utf-8?B?SnljbW05M0hlUmpKQ241ckswTE5PSHN5aFVUV2JYR2doQzJGN0xQblVzOVpX?=
 =?utf-8?B?K3dSVjJ0R1diNXVsaElWVGtLOWdpcjVvQVFhZWhuNUlnS2hRQWJhbHF5MFRF?=
 =?utf-8?B?R0FlOVkydzFMQStEK295WFYxOUVVdlA4ZXlEOXR2TFZ0TFhsM2NuZFlXeXll?=
 =?utf-8?B?eDZZR282Z1Vna0tGZ1p6WnVFUlZybEliazJPWUgvRGZMZWlZWjVLdlRLVG1U?=
 =?utf-8?B?QTI0Vlc3WjFiWXB5VG5WUnY3bXlrdkl2TVBnYlhlRi9EMFdpZHFLSWYxL1JN?=
 =?utf-8?B?MjkrUmljdUtTUmVoaklNRDJyVVVVek9VQ1lSeDlHOUlQamd6Z3lnRlMwQmth?=
 =?utf-8?B?NUxRSE1FWmd1N3NDdkFQaEU0aHYvZ3FIY2N2aUtvejZCMXJJNm41ZU44bmJ4?=
 =?utf-8?B?WkhqWk5HTE5xaTJKeTNHMzlKaWVJY0lodWVFRGlBN3gzUmxHc05OMjV2OEpE?=
 =?utf-8?B?eDNOYngyOVdQM3l3VlIyUEZHU1l4R0Vndmt5OEZNMEpVbTBTNk1ybE5kSU9H?=
 =?utf-8?B?M2xMMUVqbjUybGhHR0Myc2R1dlFvUWxBT3VkcWI5UDlZa05vNmprcE9qK01k?=
 =?utf-8?B?YkJFRjVlcVZQdG91bGlCUnFLY3JXbjlMWTR6SHNWbUhsbEljczJEZURmUzM1?=
 =?utf-8?B?Z3dkNERpUFJFQlZkNjVlZmExcDcwcUsyU0UrK2FCNW0vTU51Mmw3M09oYXhx?=
 =?utf-8?B?NmoxcndnSGhXSUNhU0tTSmlIVkFHY0NYUHNCMTdOa29JN0dqTXhTekVMa0NL?=
 =?utf-8?B?ek5zelRxa0toaUtkRGZaNXJjT29sTjZ3aytzN0pMTVBHU29ZaUd1UU5xSDJN?=
 =?utf-8?B?UjFJMlArQnhPNU5ieElMamV6TWQ3b1BocGdPSllSUGE0RFhKcWZXUHV0QzQ0?=
 =?utf-8?B?Q3ZtYW5nMXJHdEJDZmpMOXVqL2w0U3Npd3I5ek1saEVQb2grYWFOemV1Ullk?=
 =?utf-8?B?ckFRUmJuRDQxV05tZjNwT2NFeVZtOFk3amlJeHNXQmdqc2I5SnNkRXZsSlgx?=
 =?utf-8?B?Q3I1aHB6emtNOFdTSVZaL3d4b2I4RE5kSm10RlJqSHd1a0YwY1RQNFNMMDZp?=
 =?utf-8?Q?P4DsAe/uVp6dooGkOI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2N3cWxnL0M1dVE0ZDYxbEZrVEpEdlRpbDFWQTFvUnlYa05VQVJsUEhLdlZk?=
 =?utf-8?B?Q2dWQlVyM3h1TDhaaW9mQVNmWE1IWFN4TFlmQ1FiUGJFcUZZV1NrS1AzdWlV?=
 =?utf-8?B?TGJ4aWxUOVlQN1VrMENCSlZmYUNrVzM2RnlZR2NIeHpBY2x0b3NvVlNkSi9a?=
 =?utf-8?B?ay9nU3pHczRpSEJiOHBMb2ZoQ1gzYW9CdFAyTTJhSkVDV3V1blBlNzd3THV4?=
 =?utf-8?B?OUJ0STJ6akhpTklDSVlhdVNOWDdaVGcxTnUxLzZSZmVkbjZ1Q3ZTNnVsbEJy?=
 =?utf-8?B?R2syYThSZEVqL1pnQ0hwMnhodnJsQlkycmFsYVRlcUZIU25ERFI4M2hYVVFU?=
 =?utf-8?B?a2llZUtQb05zQzMydUcxYklORHFlcFZRUTFlQ0RQOCtFWlpFL3Q0MjQrNTBV?=
 =?utf-8?B?WnY0WWMvdWdoNlZENENER29MdGVMT2kzVURPNGNUa0taMi9sSjZOR05RWWNu?=
 =?utf-8?B?ZzZ3VllseTRlbXhEZTdGUTRqQTE3S0U4MW1LZkdlWWEwRm5NWmpZUyszcWRz?=
 =?utf-8?B?TjZyb1g3a3c3ckRseDYwc25pUDBUSDdPek5LOWFCcFkyZ1pCdTJaYjVDSUR6?=
 =?utf-8?B?UnhzUk5admZ4SnQ2aGF6VFU2WXE0Rm9veEtkYzY1bGNNTGZ5Sld6ZHUwYnFE?=
 =?utf-8?B?ZDJFeFN1aUQ1ZHAwUHc0QllHT1lmSDlBK1Jjc051UUpvREo3STllL2tiT0sy?=
 =?utf-8?B?bzZ6cWJ4OE8wTkZEVEhNYWtxRzNGcjI5eGhneUlPcUsvbk45S0Z5MlZtTTMz?=
 =?utf-8?B?Q0lxL29USEpmU0NPYW1salhJdDJ2WlNJd2x2VHlJYXN4dVR3UTArUVREdFZ3?=
 =?utf-8?B?UmhlU2M5UnN5Yi9RREc5MEw1Rlo2dklyNTFyNEtXUzF0QVdxdTZQL0g5Rngz?=
 =?utf-8?B?cE9YWWQ1clNLUjRWbUJmVCttVWdZNHZBUUpsSnFkNno3TUM0aE9XcU1EK3g4?=
 =?utf-8?B?MDdWcXRETitGZFY3aDhQUnJFa1dOK2VPRE1xblNvNm1ZV1pXVVNBM2pzZksv?=
 =?utf-8?B?QnZIVVdJeWFCWjJFUHhCbnU2N2JaVll2ZHdDSDQ3UDNXVjZsUTJucVRRT2E3?=
 =?utf-8?B?c2g2QkVLZXV6SHdBMkh0UHFvQU5PNm5YY3pKbXpldmVMak1PenZxdTlBN09p?=
 =?utf-8?B?elcxQ2JZT1NkcDZtTXV5dldsTHdqS0EzSEkxaHZmNnZIVjNuYk1DaFZLaStX?=
 =?utf-8?B?M1ZaQ05lTWRXOFBSeENnZU8zbTlleW13SW9pK3ZaQnFYY1UrL2tEU1V0a2kv?=
 =?utf-8?B?dXc4Qk5HOHRFRFlUNUxNUk9NKzZ1RjlOWlFyRFI5Y0c1eXFXSGFyYmVDVmFF?=
 =?utf-8?B?OVVZd3JKWE1VNnNxejZpcUZ4U3Y3amczcXZrdXVzQXBheVJBenRXUVhyazFl?=
 =?utf-8?B?QlBQd09xdUNDQXNQQzdRb1M3ZDQwenJFdFNnaEhSYWx3alJCNmZtWEdaY0VU?=
 =?utf-8?B?Vlgra2VaUlVvZ0Y0dnltVkYwbnN2Ky8zRmg0T1I0dnE3aVU0aUtMOWVFUWRz?=
 =?utf-8?B?Z1lmWjFSMWtjdERaQlpCVGJ4M3pCZ3FKNFVyR1RMcFp6amdSN2lUZG1vb01Z?=
 =?utf-8?B?NHVOaWs0a0tRLzhRek5TZG9CSFhCWUdUaFN3OGxSa1Q0YmZVTjNBbWlVdktM?=
 =?utf-8?B?cTE1STJ0YzNsQUNhRzc0Ky9FSndlaXdNdVErL1cwV3QwOFlzMStrNmFJOWdv?=
 =?utf-8?B?WXBvR1BnMjFSMkZjRXpZcURoZmsvSEphSVJnQ2xGQXZ0bmxpR256aElCUzhN?=
 =?utf-8?B?NW4yZUk3VkxsSDFoeWlMcDdkbkhCci93RE41NW5uM2tvTzRRWVlhYU5kTlRv?=
 =?utf-8?B?MDUxSDNqUUkzemY3ajZVM0I1ZXJsc004MzBGVi9GTEtvT2JHdG1YTVVzRlBK?=
 =?utf-8?B?QWlEZ1kwZkFWUHAxWmEzRFRmM3RkWVhjNjUvZC9CaTRsSGtJYUVDQjZ1T0RH?=
 =?utf-8?B?aGxRWklJbzBrV0xhME5aQjR5b1p2RU1XRlJtR1FQSFEzSXpVUnJlNGRVMWcw?=
 =?utf-8?B?dUhHUmxWSXFpalJLVGdZbkpRZElKU05CZDNlcGRxUmQ5UWN6bUxzQ3VLSXJY?=
 =?utf-8?B?cWJOMUlyVVp1NUNWRzBraEtKYkkyZ3hLSWxJR3NRZUwwbWJDM2E0YU92SlhZ?=
 =?utf-8?B?andvbGZJcXhtQkxkWWtLMzByTVcveFh0TmFteG8xeFJYQmxKWDc4RkxrMUdy?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f3415ff-eac9-4171-906b-08dcbc9dbcc0
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2024 20:14:44.3938 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VOZsxvoWdpFvxXbZUiisms3F+zYpyyDTEdNlEkxiRb7Z8MrvgMvpAzYJiitpgzi7rdtYj4xMNtrVuBgNaBlsw7q/rmrMA1nQPwww84cq3CQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6174
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723666490; x=1755202490;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vGhtb04FYwDeh3ClZBFQbkLcpNAvrHi43rNinQOOaKY=;
 b=TLH5ANIEn+WfZJFCPn33dkPXMnN5hUKuC/4lpXFk+PVjQLyYyNWlIaL/
 X3j1q3bver63iN/Gwo8HD5Dh3PezekGXUq0SCjmt9yGe5zv6HZIi2Eb3h
 ywnFzi3wEH+dqVoMkfyORzqZ35BfotkUbYyjs3u1IUOJO2CrB+ghkuCQG
 8yp1JrvZy+WYUttPy85oDdlqsnAeZUtHhi96VcuCMI8Pfzjior7mGOQKR
 zFKz6z6jX+unEG75E8zkOHKL6m/WA2X9MEWmhtnVxusdpkH/VJDaf9wLf
 CEo7EUNNgogkKVIwkcOFDmj/M0H+WaueV5Ev3Qaxd9Nd9i576poqPczJR
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TLH5ANIE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [regression] igc does not function anymore
 after second resume from standby
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
Cc: netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>, Martin <mwolf@adiumentum.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/14/2024 3:42 AM, Linux regression tracking (Thorsten Leemhuis) wrote:
> [Tony, Przemek: lore did not find any mail from Sasha in the past few
> weeks, so from here it looks like this might be something somebody else
> needs to handle.]

Adding a couple of others who are involved in the driver.

Thanks,
Tony

> Hi, Thorsten here, the Linux kernel's regression tracker.
> 
> Sasha, I noticed a report about a regression in bugzilla.kernel.org that
> appears to be caused by this change of yours:
> 6f31d6b643a32c ("igc: Refactor runtime power management flow") [v6.10-rc1]
> 
> As many (most?) kernel developers don't keep an eye on the bug tracker,
> I decided to write this mail. To quote from
> https://bugzilla.kernel.org/show_bug.cgi?id=219143 :
> 
>>   Martin 2024-08-09 15:17:49 UTC
>>
>> Starting with Kernel 6.10.x I experienced network connection
>> problems after resuming my system for the second time.
>>
>> My system contains two Intel I225-V (rev2 and rev3) cards.
>>
>> I ran a bisection and got a hit: 6f31d6b643a32cc126cf86093fca1ea575948bf0
>>
>> rmmod igc ; modprobe igc remedies the issue till the next but one resume.
> 
> See the ticket for more details. Martin, the reporter, is CCed.
> 
> Ciao, Thorsten (wearing his 'the Linux kernel's regression tracker' hat)
> --
> Everything you wanna know about Linux kernel regression tracking:
> https://linux-regtracking.leemhuis.info/about/#tldr
> If I did something stupid, please tell me, as explained on that page.
> 
> #regzbot duplicate: https://bugzilla.kernel.org/show_bug.cgi?id=219143
> #regzbot from: Martin
