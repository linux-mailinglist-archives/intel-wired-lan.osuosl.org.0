Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3273E9744DC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 23:31:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFC2A608C9;
	Tue, 10 Sep 2024 21:31:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9IPK-TwZooiy; Tue, 10 Sep 2024 21:31:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6ABF3608D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726003872;
	bh=JluuFhVRAeS/qcwaq4HP4ZwsMXCUKeA2tjXuU9dbB/w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7bweV+9E9ACXWYzn+rv3AS3CcO5NqKxBK/s/9y9guFQ0cRaXPdlJcxza4Tqsi4Usr
	 VvQY9MPhiJkbzCEUNvrYmICfnnd4CmuaX8bxIsEqz32uDfjmw8FvpjHiNSIOpznFHb
	 j7nOba2yk0vnT9V1ghNrgdy/Gdke2XN7XREtULxiAJt2DTQQns8DDLr6EnhCherkr3
	 1DGaenIrkIOL1fmFRQ9zAbZHlDrPEE0tIGDpc830cHVv/OHnvpYF3ZEZJa+01ap8gN
	 oVhJ/HQWWXITJaQ/sx14IrosSEAAP6oqryyrjrozUPog6ka8q2Dux2YlEaVwNAZOSA
	 5GJwz/2ClP8Gg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6ABF3608D3;
	Tue, 10 Sep 2024 21:31:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 29EB91BF359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 21:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1502940651
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 21:31:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AuJTuxQiRSY7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Sep 2024 21:31:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B46914064D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B46914064D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B46914064D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 21:31:06 +0000 (UTC)
X-CSE-ConnectionGUID: vuKDb625Taaj06cudD9xRQ==
X-CSE-MsgGUID: 73A7RbKJRimMXk/hmMC9PA==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="42297770"
X-IronPort-AV: E=Sophos;i="6.10,218,1719903600"; d="scan'208";a="42297770"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 14:30:40 -0700
X-CSE-ConnectionGUID: LrH04t4TRqKXUnHrGYzx9g==
X-CSE-MsgGUID: ZouzR6+8TUSmNu9OwwB2dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,218,1719903600"; d="scan'208";a="67452133"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 14:30:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 14:30:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 14:30:39 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 14:30:39 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 14:30:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mqAToTgn/f6BZ4nY0QMAFR/naig5N8ELKUFDhkt898WWXuZZxPXCvt8jMOdrCFI6iRgqF2jgBF4Z0dDJlf8cH/uYk+9dXkTcq8TALKGkPMZxLHmLeKHXwpojNn8MON7gmHHKPWbHGI08nrjHW0bWShfYPCWEv9gNlDwQksuIuoa9C0a4KxTa+p7BS3N/K8g0QUkD/UnsJJBIuy74dg93KTdDGkCZjnxyltKZ2MP9lL/tSf9mfAvU+94zvoZXjvl47RZ+GVbYAKehuf9cD+r6S560HGXkKNKcZ7NvyD8Domye95PrWwv6G+FBSLQscCQNTcMA0Czg4ELukFxVCv0AiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JluuFhVRAeS/qcwaq4HP4ZwsMXCUKeA2tjXuU9dbB/w=;
 b=o09kYWsRO82wr/rSgH0rbtrbyKGYf5Rs+Kk7birF7qt0LhYoPnve8FpcIxdt46tFSd3iSLMi54QFVDebW/lPB5tv0dlME7eiVR9O4/EG9RQ75MTXPZYF47NY4Tw86jaY5C7otmYLY4hdJD+JGJiTXGf+C1OgAL0vNmzJKnx0Z0YPgKRcQ5up5mdwYg0406g46NDuFtONzXbegC4CMDRxaa19uOfyRLCBdDHFpZwEuXEWI+OzqiK0deqi/TOWfz+UBqPMWn0CRX3FO6YuiB6vPpEND/MyU2aVZM9J6ZBGNEtjVROJBjNJbP1SnxJ7I45AajWwperl+IZDvdSKGvR9Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA2PR11MB4906.namprd11.prod.outlook.com (2603:10b6:806:fa::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.17; Tue, 10 Sep
 2024 21:30:36 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.7939.022; Tue, 10 Sep 2024
 21:30:36 +0000
Message-ID: <4fc61caf-e922-44d6-b3b6-f286fe179107@intel.com>
Date: Tue, 10 Sep 2024 14:30:34 -0700
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20240910135814.35693-2-przemyslaw.kitszel@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240910135814.35693-2-przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0088.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::29) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA2PR11MB4906:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d11b849-0e59-4ee8-cafb-08dcd1dfcf46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZjRETEtyNVJPTkYxZEx2Z3VRMVJZNmZteWNlT21TOXU5Zzh2V3Jkak9jR2VZ?=
 =?utf-8?B?MFR4eHRGQll4cVh4eUMvSmlLZzVpUjdGbEs0bnNRNUxyOWw4TWExS2U5UW5E?=
 =?utf-8?B?bDdjRTFCUHN1c0N0VkltSUFnVzA4U0k0OGlmUXI5ZUlxNE9INC8vc1JsMkRO?=
 =?utf-8?B?L1REc1p3VnNYTW9jbXRBZXNiQThkL25VeVZUZDd4UDcvTVkyZ2p6NEFGSzNF?=
 =?utf-8?B?aW1ja1R0M01lUmMzcyt4NlljbERwUjFob2RkVmJXdWlXQm5JemllS0xQYkZQ?=
 =?utf-8?B?TnNUZUlsaDlyeG9tVjlMbDVyNjFUby80MHg4RXRLVFNNWGEvbEFOVVAyT2dl?=
 =?utf-8?B?bFZOWW56VUozQjA2aWdxdGk1Q01GRzhKN3VTRzViRi92MHhkbkhMNksyTEFS?=
 =?utf-8?B?bjFYTHFVNnM0VjdXWHRMb012TTd4YlZoMG9TbmZJMnZBcmwyY1Voa2g1Wmx2?=
 =?utf-8?B?WlVtZkY3SXlRajdrQ0gvZTFIeGdLL21BOG83cXVqWjIvMjZNV3hOcDlGQS9o?=
 =?utf-8?B?aE0rdFlYSlJxUVMyMXdWcVQ1UDVvOGNSclkycGxvOU83K1hhR016blR2T0pV?=
 =?utf-8?B?ZFlhT2NYdVhhZG5KVktEQ2NNVG4zL0J4MC9Pb2hTOGxJNWxzUjUzRXFCT3BK?=
 =?utf-8?B?aFFkWFJxVGhXVmxOYnhPbHY5ZE9iTDVSYkNBUElQRS9uZ0x3SFI0a1BBOEdx?=
 =?utf-8?B?WGQwTUxhTGM1SVVtY1pBdWpSOFpPcmtLekFFSXFrWHBha0NrekFHdTBKdmhx?=
 =?utf-8?B?N21YYnRnMzJNbDhUYlJZUFV5aXFzQmlUODE4QkRCRlJRblcxaWU3YXgwWWtx?=
 =?utf-8?B?SkRWaU9Mem41SEw5aXZOMGRXMGNSWi9rQ3Z2aXFjUm42ZkJNQ2JOVy9nZk9I?=
 =?utf-8?B?dFpqTWJIRlZ6SnVzWjdBeUtkNVJ4M0RPajllVEZhSG80MjR1cmxaYytwRDMw?=
 =?utf-8?B?Q0NadGFmb3hmTDFPRVI1Um9FUlpHL1dBNEl4UkYxR2NZajJ3aUR1RW1pSGdM?=
 =?utf-8?B?MEJTUUJVVExhOU81VUhqOFBBS0g5dTdIQ3NaRTNHOU5OajFZeXB0T3htRzVB?=
 =?utf-8?B?c1kvZXNsNit6aUQvM1UvWEh1YnhMZ1E3NUJrTG1VNnJQSk5kTHZYa0dFUExt?=
 =?utf-8?B?TG1pUXFuUU1PV2lydU1ra21UOSsrSTM4cmNFRXJwLzMvR1RHYWU3clFDZ1N3?=
 =?utf-8?B?T1ZockQxYjRlNEVFL2VsWHdZdHZMc2JqZUZrWmUyL2UwUWNIRm9HRGJIZEp2?=
 =?utf-8?B?ZkNLcFJpQVV3Zk9lNFBSaVVRRlRGLzNQOERVYk1MZWtwaGFUNnowY1dIU0Fu?=
 =?utf-8?B?UmZGdmxQTXhINkJQVUNPSHFtTlJvbDZOcE00VzZjSWZzZzZ5eEQ0U0x1anBC?=
 =?utf-8?B?SXQ0emRYTkJQbU5tQzlLbTF6ZjFCU2FqU3BQbXRkYWtTb0lJb1NncDZ0eGM0?=
 =?utf-8?B?L096VGJNL0lGYWoyWHRRT0NlK1R0REpiQXBPaFppTHd0OUdQZ0tjcHBUUXNZ?=
 =?utf-8?B?dGlkeFN1VmRZUDJaYUpJYUpKeFJlVVdHT29NSkNjSkM4NFBXaS9ubGpaTWRi?=
 =?utf-8?B?UXB1aE5YTmRDR1JsanB4Tm44L3dVL0ZJMWl0NzIyZzd4TjQrMzY1dFBFY0dz?=
 =?utf-8?B?VDAraERNcWFKU1VlZUJCWU5adDFRaXkvVFpsNklneVhSUHpXYW91RXIwQndl?=
 =?utf-8?B?ZU1QL0l3d2g1b0xjSXpBZnRhaUE4TW1HMUJGM2lMeVB6WWo4SmVKSXJmV2tF?=
 =?utf-8?B?dmhBTmJoVjZEMVZLOUZFLzAybWR3LzJoTVFORGdJdGk2MDd3cE1jczhBdWo2?=
 =?utf-8?Q?ceiXtxnOJkAp3SUcvRQ/fS2anrT5ZvfHn7EgI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2J6V3dDV2pKbTFUV1BmQTN2cTdRL2FHYzI0d2RvY2kwdzg4NXQ2ZkMzZExR?=
 =?utf-8?B?WS9lNzdHRlE5UTNjWm1ZZUZnWEt1WEgrbSswOGxoSzJHeExyMGxMZDcxNzBi?=
 =?utf-8?B?WlZjVzB0K1lEL3JObHJTUFpxK0djdmx3b2lwVjdoZG9JVWhXYS94WC9wVW9S?=
 =?utf-8?B?SVh1V2NqSk9UQ1E4QTA5b2h5YW9VdmY2blBodTRBaVhkUnFXWlBZOWFEUk9L?=
 =?utf-8?B?UVp0MmRJQUZTSzgvTm5VK0NweUxoZ2tXQ0FhSGM4Qm1WZHI2UktUQmtiRThR?=
 =?utf-8?B?VUFYYVBQdnF3NlJkVGIweWpWdUlad3RZV2JQL3d2cnVvUmg2QTlFMkZ3V3ph?=
 =?utf-8?B?K1U3NERUdWJEMVpDWTZwWnNMTFA2T1lORlRHZWVqb3BMd1pkRzFnTWdoaURY?=
 =?utf-8?B?b1Uwb1ROek13c0h0ajdEeThka2hXejJ3TVVYbjNDRFN4a05qVDN3aHIyazYw?=
 =?utf-8?B?L0IwWTMydlNCTndKU3lJY1dibzVmeUppYU1RcWRIY3kzYS8rOFBXdHYxY0VJ?=
 =?utf-8?B?QkdRNUI3dGo0Z0ZFdkdwY21BQ3VSQ05HUlpLR3BDY2FseUhuTWhFTWJhZzZH?=
 =?utf-8?B?ZUJoTFlSQzZyUk0yMFoxaEliM3VRUTA3UUo0amJFQzNML1IyOE1QbkE5ZTJR?=
 =?utf-8?B?ZisyUVB6ZnNkdXNBdnZGa1ovV0hJcCtTaHNna2swODUxQ0VlN3RvWitQa2hI?=
 =?utf-8?B?M1pSaVVkdTZRQmhjYS8zUEhkSEloYnZoYjY4UUhvb1IzWGVsVjFyWC9JRDFU?=
 =?utf-8?B?ajdVTEpHb05mdEt2ZmgxbmJ3WTZHeGtiUHI2OUsvdm51c014SElBWEk4Qmhp?=
 =?utf-8?B?bTdJd3lXR3NpSXhQanFFY3BzRnpHL0dCYlBWUXJUZzdzTGZmaklYaUZ0YytQ?=
 =?utf-8?B?VEFBdTFPWHp5KzNvbGVlNFhTdDU0ZmR6OWlXeDlxL0UyRWhoVVIzeDhQbFhK?=
 =?utf-8?B?dzFlcSs0L2wyOGxYS3A1a2tuK1hLd1FoRE9xV2ZoTTBUZDdaSU8rKzhSMVFj?=
 =?utf-8?B?NmtFOVpqNDVpZTQwT0tzcjlJNk9LVGJpNjJFQlA2V3hpeDkzR2liVjNld2Fl?=
 =?utf-8?B?cmZpR2dTRTdRdjVmZDlwajNiYjZxaS94NU8ySmhrNUMzZVF6YWZBU3AxTDFO?=
 =?utf-8?B?MEJMN3RSVW9GcW5EM3dqQks3N01FYU5IUDVNcm44VWdQa2lvcklWYXYzVlZP?=
 =?utf-8?B?RmYySTdLdkRORFpQZVNRY2k2Z2RubG1hczdUSnBlcUJKLzg1ZHV6eGVzaFRr?=
 =?utf-8?B?Zi96TTduODlpUTV3aVpIQXRCeks5c3I4N1ZUWUVZcU52cHB3ZG1tZ2p6UWhC?=
 =?utf-8?B?Q0E0cGlZMVlrOWtKNUlQTFMyYjd4WmF4NkJWOWZpN05SVERReFVqZHRGZ2ZP?=
 =?utf-8?B?Q1lCZkRXVitZcnQ4eklmUVdZcVZvVHFlRGl0c1RCMk53cU9DVGhhbG1QYVB5?=
 =?utf-8?B?TzJSZVZJN25ZMjhnS05udStMOXRkWVJuK01tN3FhTjhadW5TU2xaTWQvU0Rp?=
 =?utf-8?B?cklKV0dCV3J6SnpJdnlNWGhOVXpCYUs4a01OMXRldHNhQVdlRU5GemtpaU5o?=
 =?utf-8?B?QkU3UXZsQ2o1ZlYrR3BEMXhHVlYxeWduR285Y09RTXg5RWg2NW1lZmZzblYw?=
 =?utf-8?B?cDdrdjFKNldUa1ErTjdNQ0gvS3VuWTFHVEdQbWI0c1Yvc3l5alNtZ0RVbGNT?=
 =?utf-8?B?L0k0a3hwOUt5R0duQmpzUU9LeldsT2NLcEFDSmpadzVJWmoySEdYemtjV1c3?=
 =?utf-8?B?NWRRNFlDM3c5UE96LzJJWmFiYUtkNldkL20rN3RJMEtqSzdyZXNzamg1dEVx?=
 =?utf-8?B?SkRmL0hZdXJmSzhBSE01TkFoN3NURWJLQWdSS01QcXJmTFczS0hDa1NEWC81?=
 =?utf-8?B?NmxyNVB2cXZqcllkMzBhMWtjQUJlRkZNNE4zdm5ERTNMNnBNREc4WGttNEd3?=
 =?utf-8?B?blVYQzJyZmlnVVF5dnhOU2VCb0RRRHFVTGRaaTRhRzFoSFQ4SGs1Q1VKdGww?=
 =?utf-8?B?aXhHenlvM1Y5NForWUFtMEs3RjZjUHlMaC9JR0xQSXlsTFdhTUI4Qk9SK2Vl?=
 =?utf-8?B?Rml1U0IyQTF0ejJhOHJKY3ErSnZScUNOV213OE5pWHJCdDZRdTRyYU1YWFZ0?=
 =?utf-8?B?dG5VZnVxcjVKdjJ2dnEwZEx6OHBsMU5wQTZrdnlSR0k4bXpZRGhhdDBoRVh4?=
 =?utf-8?B?OFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d11b849-0e59-4ee8-cafb-08dcd1dfcf46
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2024 21:30:36.6429 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uu06+7zzETfZPjRuKC15yF2oIX3OPD+4Ik7c08RBKvANCcR8i/DBdl4xrJ2gOsPMuPiSR0J5RqaioND6g6N7Y332we+1IMlDtmX9P/bT5UU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4906
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726003870; x=1757539870;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5MejWGJeRHm0RTZqifK8Iqh0jQ0PAg10ajAbAgqKR6s=;
 b=UOEoeJmQVsy0003t1tfxJ08vJq1HqQPmEnwqTTFcC20ME/W5si2Xnn+B
 srVzSveuYtkWumgAOrN7+Mh93JwvZW+552AWUTdoqf89pE6/cf77rrprY
 YMyU+Li8s2/k8x+mbAnES2B+IsNqum8sCRige4kLokxzZEUFcOgy4Dkr0
 PHoz7jXdUOEeWHBB1wIALSfn/DVV/3u08h9rKDfvnA5RN01jz+WlUiNG4
 fdSD7TlzsFQ+HJLGgBJc/uhp0dt1YjO5AbrVD3DVPzucWwNjo7vb5xGqc
 s5a1ysrfCvnZzgngHMo4oVCw3e+BBdU50idm0Q3MLYhs4Amy21pKO4Ojw
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UOEoeJmQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix memleak in
 ice_init_tx_topology()
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
Cc: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/10/2024 6:57 AM, Przemek Kitszel wrote:
> Fix leak of the FW blob (DDP pkg).
> 
> Make ice_cfg_tx_topo() const-correct, so ice_init_tx_topology() can avoid
> copying whole FW blob. Copy just the topology section, and only when
> needed. Reuse the buffer allocated for the read of the current topology.
> 
> This was found by kmemleak, with the following trace for each PF:
>     [<ffffffff8761044d>] kmemdup_noprof+0x1d/0x50
>     [<ffffffffc0a0a480>] ice_init_ddp_config+0x100/0x220 [ice]
>     [<ffffffffc0a0da7f>] ice_init_dev+0x6f/0x200 [ice]
>     [<ffffffffc0a0dc49>] ice_init+0x29/0x560 [ice]
>     [<ffffffffc0a10c1d>] ice_probe+0x21d/0x310 [ice]
> 
> Constify ice_cfg_tx_topo() @buf parameter.
> This cascades further down to few more functions.
> 

Nice!

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> Fixes: cc5776fe1832 ("ice: Enable switching default Tx scheduler topology")
> CC: Larysa Zaremba <larysa.zaremba@intel.com>
> CC: Jacob Keller <jacob.e.keller@intel.com>
> CC: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
> CC: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> this patch obsoletes two other, so I'm dropping RB tags
> v1, iwl-net: https://lore.kernel.org/netdev/20240904123306.14629-2-przemyslaw.kitszel@intel.com/
>     wrong assumption that ice_get_set_tx_topo() does not modify the buffer
>     on adminq SET variant, it sometimes does, to fill the response, thanks
>     to Pucha Himasekhar Reddy for finding it out;
> almost-const-correct iwl-next patch:
> https://lore.kernel.org/intel-wired-lan/20240904093135.8795-2-przemyslaw.kitszel@intel.com
> it was just some of this patch, now it is const-correct
> ---

Right. So now we're doing the const correctness in this patch along with
the fix?

Would it make sense to fix the copy issue but leave const updates to the
next tree?

I think I'm fine with this, but wonder if it will make backporting a bit
more difficult? Probably not, given that this code is rarely modified.

The const fixes are also relatively smaller than I anticipated :D

Thanks,
Jake
