Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA948D299F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 02:49:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EB7D8202F;
	Wed, 29 May 2024 00:49:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gn6i6g4z5Q7O; Wed, 29 May 2024 00:49:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B22E082004
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716943796;
	bh=bHb7hs2uUm9SC//jTF2D494t+onF8dmHavf0LmBRG5E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Cm7K0zo+qru66YEdxeiWNVrkckWRug0wRciRxTPpI8Ft61DZ6Mk+tz8RlU9ngld63
	 y/lF+9+/cj+879oxIq7FQWs3MWeAsU7weS0/xxHj2SQ64MRI6qwFGkQ0JMTfCvqZ3p
	 CnKEmzzXO3Nwp4dJghBTquHnFiu8o7yek5+bBJ3zoy0bh5LAbLKgdc0+uY00BL+Gs9
	 hjp1K0PvH4ve9oryrIKAISiYzO+aZFATLHkkeEsBwXg7FASRBE3yMBmIghlLS5M4/b
	 7ivY5VEf/P5PeZPd8mcy7fHgBY3VHYYRCK4qGhY9Uyys5xM6aLlp7MC2qnI4BCxqST
	 U9GAvr90LU9eQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B22E082004;
	Wed, 29 May 2024 00:49:56 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 074471D2F16
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:49:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F3815605FB
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:49:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 43vCYTVKt-aK for <intel-wired-lan@osuosl.org>;
 Wed, 29 May 2024 00:49:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3C675605A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C675605A3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3C675605A3
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:49:53 +0000 (UTC)
X-CSE-ConnectionGUID: Arx8liHMSuGwlfL296/MbQ==
X-CSE-MsgGUID: TlVslkibQFW/s95bytV5BQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="24451955"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="24451955"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 17:49:52 -0700
X-CSE-ConnectionGUID: ixxELOnvQqeGxLR/SILlAg==
X-CSE-MsgGUID: 0XGJqXauQsO+lwHz+XYo3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="35167582"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 17:49:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 17:49:51 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 17:49:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 17:49:50 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 17:49:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ljN4QENkdGl2/iLv2/qHejhifuVtHKjy/ZYtme4YRFQYCaI3uIUa69gbfhALOJdgbbeIK/YdEfdKY6MQ3y6l9QdFvjff3tuOjOg731rV9ptN+4+zQ0ZMqn3i+/LJgUgwo5jgDhf3bvNsjlKec+bI6RyfKJARYRqpWaFV3NEPmGXrIWKYyfXq4Uh1OTeEQM7HQxavrfSIQutKc+C2741x3gJ0SmjpN8pDvKKa1LFvcn60xJKLLcbXFaRkCNi48kjMIgZYIP7KvdjPHHdIHoaT3JBD+SyP777D/aKBq9u7sKtHuAvcBOR4YqKKjZLH7VjIo2cm7l6M2qMpwl6gL9C+PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bHb7hs2uUm9SC//jTF2D494t+onF8dmHavf0LmBRG5E=;
 b=k7KiEKlqaQIJMwHBtWXf3dscZvJnZvbCKpRVhrEu3NZmZJKUxF5UyIRqaHlrTXnW9+jTCbP5NZvelMXTR67Rwd8HXVeOBWBFpaIPAH9CbL1ioYEIRDmTRYqwO/Sciyrc5XcBinWPGYO21H6zr8qj5TaS/MmYbMPGuMHBiMJ46hD1dpJ7t1tTYZwlYa46ECi/SBJp8Lzmtj+x/UieadnzDMTpmsNEFYr/kfd+qy2FswOripuu9Jm4aZJlBBXTw5H7Zs3IY61Uem0LbQtl14KOHmBQ51RyiUlyie4keOp3HtGnyv+CwHjP6Ubtn5hvRi2vJ1qG4OyEfQRPrj4aYBMs8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB6977.namprd11.prod.outlook.com (2603:10b6:510:205::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Wed, 29 May
 2024 00:49:48 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 00:49:47 +0000
Message-ID: <48fd22d5-a582-4b77-a0f9-3a2cab24a2b4@intel.com>
Date: Tue, 28 May 2024 17:49:46 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-9-aleksander.lobakin@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240528134846.148890-9-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0373.namprd04.prod.outlook.com
 (2603:10b6:303:81::18) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB6977:EE_
X-MS-Office365-Filtering-Correlation-Id: b299257e-72b8-42aa-01bf-08dc7f793d6d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T0dBZDNjd1p0bEpmZldsK1BCNkhRS0MwQUtES1dOOXo1RDNKblVGOWI3clZn?=
 =?utf-8?B?cXpkbUNzV3NPZXhIVjB6UThnOUhHWGN0ZG1Yci84cWdmaHlIaE5XNkxLSFRB?=
 =?utf-8?B?Rm92ZEhLa1JNdU04aUNzRjU4SjBLa2hEY2kwZUpwY0xZWG9vdDMvL1psa2JX?=
 =?utf-8?B?L20rTnc5ME1RblNvZEpvUVN0KzRObnhuTGx6anRGWVppbFN6ZG9uK3Yva1Mz?=
 =?utf-8?B?MUErT3piWGVyQisxcTN6bWtYdHlvMUVOYVBEUnZEcTdWcXptNzJ3SFF0cG5C?=
 =?utf-8?B?VlltSTh2QzNocU1iQlVsWWtjWitDTzl1ckk5YXNqd3Z4RTR1QW5vQncxNnY4?=
 =?utf-8?B?Tk82Vy9wZ21wbGJVL2UwSEU5azlHKzQzMXlGRlM0ZGlydFViYWUxYUJDV2tB?=
 =?utf-8?B?T1BMM3hIWHlBTHVOMDkvUHBCbDhaNDgwNmU5Y1plNEJUMGcvVWJ0TFRvbmgr?=
 =?utf-8?B?S2N2TVd6Z3BrcmVtNWRIME43aVBPN2w2c0FNbWJXUmFTeHVXM1ZHUXFTaG1M?=
 =?utf-8?B?VHNKSk1KTit4WUZJaHV1Z1pDMnNqc2hnWWtDQnRpWUhNbS9OYkw1YXF1Y0lS?=
 =?utf-8?B?ZjVnSUh2WjQ1YTJQZ2htaldWT2s1WmlnbjFQMzFCUGcvMmtSSER2M2RIejJ6?=
 =?utf-8?B?SlQ4UWg0OWwySG0rMTg0b1pHWHladlVkSnZ2RVpSQisyVTA5RCtNTUdjZ0xW?=
 =?utf-8?B?WDE4SEtKdEpsa3VWeWowMGkybDVmQ0N2WVowRkJQUFJWVG8rckJmaEV0alBp?=
 =?utf-8?B?TnE1ME5nQUlEZlUyR3BaN0htUEhvczFlTVA1RnVuODFtWXU4b2F6RDJWN0Yr?=
 =?utf-8?B?dEtySTMwOGdHd0xZempWYXRiQmNsZDRWR0JSWHlDc0dob2haZjFuWUpjUkNG?=
 =?utf-8?B?b2VTcFhSc25BNDBFc2lhTCtkM3hUSHZ5SFdVb1c3UXZnTk9YakNaTmxaTXk3?=
 =?utf-8?B?ZFdOd0c0REVmMnpMNWNTRzdMZHR2NUp0dDJQN1RtaDlRZXh0WEptR1A3Szlu?=
 =?utf-8?B?R0pmVjJNM1Q3UWVlTm1xaXRQamxad2JrWEJqemRtNnN2Q0JINE5Kb3FMZDNF?=
 =?utf-8?B?ZnU5dTliNUZNV0twZnlRQlpEaFUzNGQ1TG1iNExJbVBZbjZoTXJ0L1BuTFQv?=
 =?utf-8?B?TUM3Z2NtZmVLZU5lcFJEQVBEWXRlY0dOUU9WOUIxTGxGVzFwOGhWM0Y0eWcy?=
 =?utf-8?B?ZkhCZlNUSDVvVjdGRW1LZlpBVGYwZEVoU0lLbytaU2Ivc0NvSU1Fc2hjT09G?=
 =?utf-8?B?ZzgxZWlQZU1Fd2xBNTNrQUkwV28yU1BOalp4Wm1hQ0RUSG5wTldFRGhuTjRR?=
 =?utf-8?B?Yjhsc3FaeCtSRmU2d3gvODM4NE8zZURqMzNoRFlhZXczbHVsTnN6VWdHTk4w?=
 =?utf-8?B?aTk2eXFHaW8zT1U5YzJja1JjMXJsb0swbFJSa1B4QU4wWW1PdmNhMzFlQ3p2?=
 =?utf-8?B?SUhBKzF4dEV3ZHVXNHV3Mm5EdTkwek1Vbyt3b1B4UWcvOTJBclRSL01Rc3lG?=
 =?utf-8?B?WXo0c1FIb3k1SCtKV1FPdUtpSDZYcU5aMTZpUW4yOTVnOEVraHZpSWtKNUJP?=
 =?utf-8?B?bEEyejI2bTZmUlh6NDlUOUhyemhUVmdEMWFDWmIvaDg2eUVYUHd2dHNHSXVw?=
 =?utf-8?B?RTlvOWluQkxjOUJXTVdVQStQeis1OEtJNGlobTNkT1NoSTdNUE8rL3NSUzhk?=
 =?utf-8?B?dzhjQVZrSkZSUWNKdkFKMTh5NjY2UG5FVGFLRlhqTGZZMEhiQ3hHUUJRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGpSQW1IUHA1QnRqT2EzYXlnY0tUSDh2UElkR0pVSHhlalFnRXRPcXdNSGlJ?=
 =?utf-8?B?bndYSGpjL09KUmR2dXJHYzhzUEZBUWFqdnNvOEtSd3lJMUk2UVFyc0pNSmlL?=
 =?utf-8?B?YTY5a3ozcHZZWXRFc1NseDVIRjZIbjUxbm5qY05IR2ZzNmJFYk5qaFV3d2VR?=
 =?utf-8?B?OGlCU203d0VnekZnUXpIMTh4cDZ6S25VR3BtQkV4MHhpQVVWTkRRTTB2NElr?=
 =?utf-8?B?M0ttM2pBUUtneDJLRUNVSTdxUnFiUXAwVHR4UDk4THNKalQyVWtMc2drSWNW?=
 =?utf-8?B?RjBXdTZSU1hLeDhzT2xrSFBCMDNVNzNnSnJmQmVGZlhBMUYramM1ZUtSU3hT?=
 =?utf-8?B?ZU9Sc2RrQzNGajJFdjIzMDNmYXJTZU1LV3ZOSTBJd0lUUDliRTFVNHN6RnE4?=
 =?utf-8?B?QmVIY3AzNGxPR3A3WFpidVlZQ2Z2clRrTldPdVhzS1Z6OEVJTHV6SDVUR0JN?=
 =?utf-8?B?eTlFQk81ZnY4LzZYU2dRYmhmQnlzUVRPckNMQ0svRXFDOWowZXVtajRWV1Rw?=
 =?utf-8?B?TG9YMkxkZzlpb1l6eVg0SXg2bkdMSURjTFlvNCtESkhZK3pBM1dvME5ROVU4?=
 =?utf-8?B?YkJPSnVKeGFVcVpORGg3Wi81K1JQT2xCa2hBWXFtMUVCa3JDMkd2YjhVR2J2?=
 =?utf-8?B?eXpwNWhMOWRIRGh6T2J6MUdxeTFKMW1YSHd3RWpqUEE4WTUxOFlBRk5TQzgz?=
 =?utf-8?B?ZkdQamlXSnBsYUdBamo5TUFQSmVZaW1oaWx3N1Zta2xIaFpKMVVLNG5PSDRM?=
 =?utf-8?B?MXdWVStBdDNucDVXcU5RV0FxOGxLWnliNzRLYnlLdHQzNXkvd1djdGs4Ykox?=
 =?utf-8?B?UUNCS1M1RndxZWFYQjc4bTFjVXd5V0xvNkVSVU45WmNwU2RVYmVrb20rdWhT?=
 =?utf-8?B?blFnUEl0ZnhHZ096OEx6M2hVRER0NVJqVXZhL3BiSXNIc2VycElrNWQvRlNs?=
 =?utf-8?B?MlpYSUlMVW1XejJVZ1ZDWDBQY0hmWlM4c3VlYi8rSnEvL09sejM3Zzk5Q2xp?=
 =?utf-8?B?aDlxTVB4QzBlVmNic3VLdkMwNk5aVThRWGxPdE45M29HRFRteEVhU2N2bjJV?=
 =?utf-8?B?YTR3MkJoam5xU05WdmcwdXNWNHowckdsTmhJeFBlZDRqUk9ZcHY4dDYvR2Ni?=
 =?utf-8?B?VGZhdDQ1bmgvOS81T1pHQUdGdXBlRjlrN2pOSDFSRHg2UmFEbXVwR3hlbk5V?=
 =?utf-8?B?RFNlZ0pCa01UWDBLVFNRVlU2T0pBeHRVNTZhNWZXeGFUb1lweEtaUDlTMlFW?=
 =?utf-8?B?VkJFQitua3k4ODBzdGdRcXEyeXA2T0kvSitOK01OZmtnWjFIRVR5SlVmVkhh?=
 =?utf-8?B?QmNEMFNiRHlxVFR4NjIzY21hNHJ1bjBDWFgzTXU5eDMvckpIQW9Rb01jTHAy?=
 =?utf-8?B?dmUwME93R1hCT01NNUJFRXJPaTFvYmpwT1lPdzhrd3BJa3laOVdGRGZsTkFk?=
 =?utf-8?B?bnNRVWVqTzllRUl1UytoalJORk1Nc1ZWUXVHdTQ5MnBVZGVaMDl2aC9KUzdT?=
 =?utf-8?B?ZVBXMm91T3NHS1A0ZVEwcU51MGtHcktYUWE1MUs0SmpJZjZVbTFQWHBHRzM4?=
 =?utf-8?B?NGRWVWdiMlVhQVdTTEpmTDNpdnZlaVRBMnVkUXRGS0FRSzdrT0VEdFhMdFY4?=
 =?utf-8?B?a3Q0NTNYQ0l0UFk0YnNUZFFrUzVLVGl2Q294emdScUZPQ09wd0lQYkxCWkdC?=
 =?utf-8?B?NjJSV3RMcTNCeG1yTkIxU044WlZzajhiQXo5SE4yVWJ4WTBZR24vZHNoalZq?=
 =?utf-8?B?S2N1d1d3UXAzUXg1dmh6a2hZTkE5WUJ2SmZVWjRVTGxFTVdQNEkxTVd1M3Zx?=
 =?utf-8?B?SkJ1dUREM1JIWXJaN2tXd2Z4Sm1ITXMreVdFR0svdWJZOEZYN2lFc01YbENq?=
 =?utf-8?B?bUhrYXlhc0x5bGNwZXhkTTVPdENESnRBZ0t0NWpKYmJwL2lrN0JENHdxQkIz?=
 =?utf-8?B?MFkzZzQ1TFBZVHoxdUpIYWVxRW5DaGRaK2YzRzBiamVVblQyanNVNXNhRFo1?=
 =?utf-8?B?OG5TemNpWVlaRm96V1Y2cWtHekNXc0VGNUVzbkY4dHB1WlZMMTJHcmJiaFdi?=
 =?utf-8?B?NGdKcjd1SnFUTGh3K01UMy8ydk9aSnp5Z3lFZTZJdTc5T25OU0dYTVoybHQy?=
 =?utf-8?B?dEtucjBxYVFlQVlrOTRzSW5NSFJ3Sk93b29TN3JucGhmY25OTnJiY3JHVUI2?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b299257e-72b8-42aa-01bf-08dc7f793d6d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 00:49:47.9160 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L+OXHJa7Vj5YSPKwnGQk235rIusOLwnj3G8H5xkJHF6/CwNLSnl/Lx5uYEhEuQsZ6o1fvE+EMNn4NUfbifr4p9oiCuBp7z+4bAWxBezhy3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6977
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716943794; x=1748479794;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GWBavp/jF3A8XfQ1a3YU6rTtU4AcPWxDnqbRSq4ZqD0=;
 b=IHRAIMibsGGNLqJf3of91YzOW86dA4opX5mxsBEyAVsqFRbavsCFJ/WD
 nsnnhFVAFXWWh8FJLGnA1Om84LmSZjkCDQRp7hs2gSgVFNUsVJGm7mIek
 AxD+dvKfrsVNKNYfPveNCuvaKwnTfDhdNaKdG2Qc3nuqdSIlpHFc6h6US
 fJ5KCzo7I4kn3uPBWhgREIgfyLJ5/OzKDewK+dxHd2X+20UtR8yIcCnR4
 RE9qPgciSohsAhbO2DB8HtKRc+uciQxg8tWFEc9kXHAniVK2Grq89WQqL
 SJtiSTXvtNxHS5gOTTLZeYC4Wr0WCsHLHUeokiCA1Dl9SpYeZgGrFXZJW
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IHRAIMib
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 08/12] idpf: reuse libeth's
 definitions of parsed ptype structures
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/28/2024 6:48 AM, Alexander Lobakin wrote:
> idpf's in-kernel parsed ptype structure is almost identical to the one
> used in the previous Intel drivers, which means it can be converted to
> use libeth's definitions and even helpers. The only difference is that
> it doesn't use a constant table (libie), rather than one obtained from
> the device.
> Remove the driver counterpart and use libeth's helpers for hashes and
> checksums. This slightly optimizes skb fields processing due to faster
> checks. Also don't define big static array of ptypes in &idpf_vport --
> allocate them dynamically. The pointer to it is anyway cached in
> &idpf_rx_queue.
> 

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
