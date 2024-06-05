Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFFB8FD836
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jun 2024 23:17:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDD6884977;
	Wed,  5 Jun 2024 21:17:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mgKfo1AbCQ0v; Wed,  5 Jun 2024 21:17:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F227E8496D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717622229;
	bh=Oephq+iYsdLIoN6+AB4ff+/TnzYr/OGKR1bt57aUIYM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E4O6fFyDZdGdpFBpg/CAXOK2XPUxx41SJCU4ro7/VOfhbm+y6MsZZz0yY32jaaT0v
	 6Zowr+ngv29fOUphUYjYzV9BkG8RtRSvWaRLvrsB6JIk//rbhhf6EikR+bxUZEyO7L
	 MHUlFLlx4B4s8Z6sgRuoe24jVRJtqhDDAvYLkaD/pDJKU3uTWTXCCff1KMdpfxXN06
	 bh5++lK3E5EEdQrQDLlSdPDYcOeOpyHh6r0GDRLLaFY0iscD0UdiNtj4XQtVoLvw6g
	 wOINLi0nEXYq99fxJcKHwwPHxuz4PvcGHP4z0mebEUCrwHX4U1vZUp4Ky/QJylm1Ea
	 edM3QIy6RII6g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F227E8496D;
	Wed,  5 Jun 2024 21:17:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 91E2F1BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 21:17:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 89E774091F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 21:17:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IUMQjsTSyaNr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jun 2024 21:17:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5744E405E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5744E405E1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5744E405E1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 21:17:05 +0000 (UTC)
X-CSE-ConnectionGUID: VhD3DrquRAeL5yak2yFaWQ==
X-CSE-MsgGUID: wRtoKVzUTR6GRSs0a19MyQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="31756762"
X-IronPort-AV: E=Sophos;i="6.08,217,1712646000"; d="scan'208";a="31756762"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 14:17:06 -0700
X-CSE-ConnectionGUID: gelD3rpERhmBbrXv5T+Xfw==
X-CSE-MsgGUID: xmI0VV8jRSCfKPEtn8XzYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,217,1712646000"; d="scan'208";a="37609144"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jun 2024 14:17:05 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 5 Jun 2024 14:17:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 5 Jun 2024 14:17:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 5 Jun 2024 14:17:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nHYRVa6y6i+XAKAHzYW52DbG1FKvfu8IH9Rjbzj6XqXRMToYgK+O6jaPXMEcoVXFIA+LPxLdJldDVME+RjI1LDL7IRhRxPi+UpoSCPs6N1GvdcDxmMrmFBU6mXUWzrkPEJ4/RkrrAMn/ChWiaRWP9wtVuVxxDMRaYYUnQ2MT3+x4582eph7AJE2DRqqRc0PqSVr9aQAetsndKopIv6rbMrlCihGBoCAQKE8Exi5OavgrQelLJfWUya955n+sWTElV5xuYiGC5s9uHWGbBG7OJnogjklSEWajA/ObROq/7h6J4DY9VBRTVEZNYwBCit6Vq76wX5Hj0Yb8RUxYpRLVAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Oephq+iYsdLIoN6+AB4ff+/TnzYr/OGKR1bt57aUIYM=;
 b=FL5guntNp6frZ60vltXMgsK3tvQZ6fwK7MP3a3tRK6Z9IBT4zkQqkEObFd8P/Q2t/pDi5J+cRS/h1/d381G1sY3IdvdHRoCDeBFTxa/kzI1EgwHV2nJg++SNTGS9P7SGYRO5gsOwoIA77IIFQcz9rXnl7Hv9W2+JWWL1bHlHMhDr0CrVctuNufP7f+sw26GOoP4OXKF28GYNYa+7eiS+k3YPL29cYHmd2lHpG0ciXD0Gc+9w+nRzgs4+nIvBBdMBddhvd2ARsNvwGF2BEA+YhlAZEIUUolbO3yXSOHZEZnZUb6qYVA6XtXBhWm2Yw5OjavALmaSQm/3d/UdeVLeTQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB6375.namprd11.prod.outlook.com (2603:10b6:8:c9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.24; Wed, 5 Jun
 2024 21:16:49 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.7633.021; Wed, 5 Jun 2024
 21:16:49 +0000
Message-ID: <4f9af0e9-5ce0-4b76-a2cd-cbd37331d869@intel.com>
Date: Wed, 5 Jun 2024 14:16:47 -0700
User-Agent: Mozilla Thunderbird
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>, Jackie Jone
 <Jackie.Jone@alliedtelesis.co.nz>, "davem@davemloft.net"
 <davem@davemloft.net>
References: <20240604031020.2313175-1-jackie.jone@alliedtelesis.co.nz>
 <ad56235d-d267-4477-9c35-210309286ff4@intel.com>
 <dce11b71-724c-4c5f-bc95-1b59e7cc7844@alliedtelesis.co.nz>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <dce11b71-724c-4c5f-bc95-1b59e7cc7844@alliedtelesis.co.nz>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR06CA0025.namprd06.prod.outlook.com
 (2603:10b6:303:2a::30) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB6375:EE_
X-MS-Office365-Filtering-Correlation-Id: fd9c2980-0fcb-4342-d045-08dc85a4cffc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aHBkRHJMVUh3eEd0a1pPbXNFZ29wRE5ISldjNEk4MUJTNk9sV2RGSGJlSzRM?=
 =?utf-8?B?b2N6Y2pFRFFQSHdmVURTczJnMTBudGtIOEtJU1RsL3ZYNDlBV2lxS2pVMUE0?=
 =?utf-8?B?R0RFd2dVU1d0MDJPRXBYVCtWQ292RmhmQTVTWHV3a2NMT1BzQW1HNTJ1SWN5?=
 =?utf-8?B?eXZybkZFNkVLeUR6SkYxR0lFMkk4WUdmOUVJRnRlRWtSYXFQRGtxTzZmenNj?=
 =?utf-8?B?TE9PYS8vVjRRU3kvOGZuNVpzM0lxNmQ4L29wWkQ0MVl6MWd2d2ozYUFxZVpP?=
 =?utf-8?B?bmZTVGZGaEhHQWRvMlhYU0hZUnNYVis0RlRzM3RNQkxWUTdQK3NiVjl4eE5D?=
 =?utf-8?B?cWNhZExoWFArMnpZREhJMHVaM1B4UVQxRkhyL2RzaG9CS2tVcXFVZVBIS05m?=
 =?utf-8?B?R0R6UnYxNXNLL0podUpQODJGbGdjczN5a3E3WFkwdStOakZLSWNUeG5FSmV2?=
 =?utf-8?B?eWF5MjU3cUdndlUyUlBzSDExZ0NRWTk1dzdNc2lrR3RoU2FBcTVhT1J0WGd3?=
 =?utf-8?B?NmU0V2NIeS9JOTBoWkhXNDNhdXFyMnVYVnNhWlQ0RSsxaHdsYU1EbEJqODVz?=
 =?utf-8?B?WTZRT0xXSGc1Zy9jK3JldTRWcXlXV2FGbmRlck5HVDFmNG4vem9EQzdQTG5i?=
 =?utf-8?B?ejA0emx0M2diK0Y0RWNrSzNlNmtkeGU2bUFrTjJma0JzeGxYUk9Ecm50UUoy?=
 =?utf-8?B?d2JlSWJ0UzBDQ1lGdmJSd2pUUVl6d1FyZ1RrRE05WW1zWGJ4NXhGNmZldW1Z?=
 =?utf-8?B?citXWkJsUU53cTlkNkcrK2lWM3VtRTkrRWNzUU1Hc1RuVXFZeWNDd0MyQmp4?=
 =?utf-8?B?TFg3T1ZwLzNaemZ4NUJaVjhlcWo3dDFVUE4yRXN6Z3lGMVVBQ2YxRExhQ0VN?=
 =?utf-8?B?QTdSTVIwWjR6U1VXNythMitKZnhKZXRRN0daRi96U0FrMkNES3NSc2lLa1NY?=
 =?utf-8?B?S0VjUEpObWtyL2lUYUlXbVhScmFaR2ZkL0xzY1h5QkhUSVR6NXk5U1V6R0RL?=
 =?utf-8?B?dU05U2NDS1JRUWpJa1FTNml0U1VOY3craGRGcDRUbXRKeUdRZ09xREVjZnlt?=
 =?utf-8?B?VnlBL0h0WnNJbkdlTUgvdUpORlI2eS9aREF0Q0E1bkhjMlFVa2tGaHRBdTBF?=
 =?utf-8?B?bWc4Q01CZUh1cEwwenlyK2d5MThCdlhacjJLbXYxeG94MGVqRDlidFBGU2U2?=
 =?utf-8?B?QzVBNXdJMnhjOWl0YWI4d0l3dTJDVzl3NzRkVzhxUGpNRjBQNmkxRHhZUm1q?=
 =?utf-8?B?dUdlTEZNMGoxNW9qZTUyTkJqaXA5RFdPVTVNa2J3UTlVaFR1Sk93SVkrUXlw?=
 =?utf-8?B?czBrSVFDYjdGT3hCUFR2c3NmczFDUnYwekNTQzQ2MVp3L1NHNDdncGhUNWgr?=
 =?utf-8?B?cmZxMFhxdDBwd1NUSUJzYmFlVzJ1OW5sTUJjS1ArSDdXQzUyT3IzNGdOWkY4?=
 =?utf-8?B?L2JiOUtxeFF3NXVPNGVGWU50MEQ5amJJRmw4Sk9XNzFxbDNOMUVIcXVtSlls?=
 =?utf-8?B?dGdJY3hkK2x6VnNDYzYrUmVvdTFFSlZqWjBiMUFjZjFuMXJENTlyRUJYbFU5?=
 =?utf-8?B?MVV3aVdqWnhaUmxLY0tzeHdRdnMyN1orZWtVL2VTMnFuMHdxclF1ZmZyREhZ?=
 =?utf-8?B?dm0wempzL0hrdnB0cERrVWJKZ3Z2WFVMbXYza1RVT05CK3hlY0UvNXJNNmpr?=
 =?utf-8?B?cnZLYUNTWWZIeUhkNVhocGNkaDVmcW9JbjQrYXhYM3lwZGJJekZhTldSOTFk?=
 =?utf-8?Q?po5kc/Ygondcu8iwMz7I8wp3PWMwX4/3/3fDOAP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ejE0azZPTDM5UTgyS2RaMHFXdnJVVEFuNUUxRnA5ZmltcVhOa1huK1dWSE1u?=
 =?utf-8?B?TkRKcXdNa2I2ZTlIVGZYRiszQlMwTDJBU1hLQlM3Wm5hL2srUHFXK1h6clEv?=
 =?utf-8?B?NWhrRWJKcm1pNDNXS3ZZUTdmSzhmWkxrQ0xyNmwyYy9Ddi9Obm43aS9nNkdt?=
 =?utf-8?B?bHErTGF1d3l1Wk9aRlJSbk45RVh2aUorWjRJNXRNeFFySUY5SVJPdDRUL0kx?=
 =?utf-8?B?OTlJVVhaUkswbG1NWVpTR0hnSWdBRS81R1Rkd0hyQmJHZjltUytLZXdobXBF?=
 =?utf-8?B?M0RNYjg1UGFHWVJZblJHUjZ2aURWUFA2eGNXU1VsUmdiY0c3TGw3aXNibWVZ?=
 =?utf-8?B?a2ZKNXBSMHI0ZEl0Sm9YZitmY3RyTW9QTGx6UGFmNzVLQXU5OU1UTjJRM3A2?=
 =?utf-8?B?UTVHRXNTekl3T0c1MC95TFBYWGFMSkQzY0JGY2ZzYTlIN0cxQks4WjVPT2lK?=
 =?utf-8?B?OU9VT05wRFhvMjVlam1HbW1PUzVoQSsxSnhqZUJ5OVpDanhhaUhEMVVvTTVV?=
 =?utf-8?B?dXZ6RWFXQS9ibC84UHArcnJVNVBBejA0OG1ydmFPMC9tSC93Zkh5R0phdDNX?=
 =?utf-8?B?Sm1XaHd3VUdLZFJia3hRZER3R3dOZnNuNjVNSW43NnkzNE1jbGpYOFdoSFEv?=
 =?utf-8?B?NGlRUGprZWo4MjI3ZHIySHhlZlMyNGx6RFM1NmJPZ1VJUGNHUCtKZ0Z5ZEdX?=
 =?utf-8?B?dHQvS1FqS1gvTStBeGFHUDJnYWxZSWNadkM0MldMOS9nZWJXSU5MNHBxMlpI?=
 =?utf-8?B?NnVKTUNUZ21jTHJycFNwQzhWNGtKNlpVMHZDUWxPTmQwVDBLQkNueDVlaHVj?=
 =?utf-8?B?aUs5Y1M4V0t4aW1JVnVuU1VBekFJNytsVjI1ZXZOeXdaeUtLSUVRcGlGdXZl?=
 =?utf-8?B?eEIwY3RtUkpzMWJMMU9XaU5DWVBhY1dlbnB6dDNiQ08vVTlkVU5uc3dlZEUy?=
 =?utf-8?B?N1czWUdWQXJTZFpsaGRwTUhCQ1lZUENjbmJrQU9nd3pZckcyTTVocHAxNVR6?=
 =?utf-8?B?ZGhKQ0pob1E0Uk50aGdkYTRNb2VQMHZZK25MUk1TRlJ2Q1RDMDFGVytiREpY?=
 =?utf-8?B?VStkUk82MVhTMlo4eXpqZnVaQk9ja3BXVWYzM25JMDBxYi9TdkdIeWpMc0hh?=
 =?utf-8?B?MFVCM1RKN0xMaUFCeXVUNEVYRzV1VFFmbjBhekZhRlJ4Snk2aytuajRPU05n?=
 =?utf-8?B?VUZKTjJiNTAzOHhqNS9kL1dWNU5aY2ZqN2p6T3NCZUlSQmUvNkkxMmg2Zjly?=
 =?utf-8?B?M1lwTHl5cVVFbzNjMm5RUnBCNkVmdGlKNkVwS0puMEdaZjJvN2RTUUU5MU8y?=
 =?utf-8?B?VGIyOXprTGNNcm1VSy93cERoNFlJVUNINGt6cFg0SERKRXRGb1ZOYkUra2cv?=
 =?utf-8?B?bmhVV3B5bzh0TGduVUZXNVFuUG9uZWtzdGhldlFHWE54OWFYRjV5R0FoSUFN?=
 =?utf-8?B?SFBOSmV0RU9iMDdOZldSaE9aV1VzRDgra05vT0tsR3dwUEhiU3pzZ0xMQ2hO?=
 =?utf-8?B?QlJDUi9ZbFZqbHJLKzZnQ3BZRGJ2bjRiSTZMbVVUWUVwLzRNZ3FEQTNMSWh1?=
 =?utf-8?B?clFYVDhZS2NEWk9aQWdqc0t0eGhMZmx0NVB2Tld4Z2hYMzkrci9UTTc5d0U3?=
 =?utf-8?B?cTdoSzJ2NWN5Uk13OHY1SmY3bzNLS1B1czVVUDVDNTB0MFQwaENMNTcwVVBq?=
 =?utf-8?B?bjVHUEsxaW5IVDlRcjNHUkd1OGNXNm1tdlZvQmc2bDR5T2I5ajROY1lyQWps?=
 =?utf-8?B?VUgzb0VjOFF1WnU2UFhyYU9kd3prWUZFK2Fub2lGQTE5M09uSVNKejhHcWFh?=
 =?utf-8?B?bFN1UFdvREVHbUpScFNucVlpd1AzSXVxNkY4RmZ2NmQ3TWl3UVFuYlNHOEVz?=
 =?utf-8?B?MXdFcTVFV1FEd094TDRrN0ZmRDdpZlJiVHFZdDNZNXFnYTdteElKNXFqQkFs?=
 =?utf-8?B?NzRVSW5zY2pFMFpyWXI0a1VsN3hHODI3aWRZOHQzYUJJdVZ2M3M5dXg0RTJy?=
 =?utf-8?B?YW9jVkhSc1JoSHZ3eTdpV3hUNDNhWm9PZG52Q3I4M0RBSFhmZWxZWnAzUU5k?=
 =?utf-8?B?MCs0WEcxNjdvUjZOaEJWQlk2MTU4Rkhmb0xKZCtVSCtWNERGZk1LV2dZdjkw?=
 =?utf-8?B?VkpNM0tUTVBMV0NNSDhSY05GZVFxaE9KcnpzMlM3a3NjNlhHcG9DYldOTjVC?=
 =?utf-8?B?MXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fd9c2980-0fcb-4342-d045-08dc85a4cffc
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2024 21:16:49.1072 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MTOjkdvTc/zydyEU67zE7q2PT4qtRg4KJv1nVNC0qQishylw9sOdPn6QHxOxoEfDyn1Ir/0o5NF1T7yJPL4gMP53iCDEGzYl6f2DUfjCawg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6375
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717622227; x=1749158227;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ljLRFnXDJSUm0dYBat7az8MZ4ehZVKANFMG9pW/MqUM=;
 b=PO9+ruMPtCOB0Wo/ZidDyQpUgBk+HmaFsxjikKQmtQOsMLqmolD4uaXj
 sLQl2li6+Ucv/f+SPyRYNlZDHh9zOjNPCCDcMuZBIKJGbNsNdiFVHAvu2
 1ieTWsAdHVmfIpNpLqiQuaIGb94EBjkzux6MeR4t/pPjjA3ELaOzP0tDv
 jv5WnlB7ftwqlVueh8vb+SKt3VEo5fQQ4Ob5eKpnv92Zu113+eNYTDl7u
 dTygoogxXmr4Bf8/pyZ82j/8WvMXiAHk5/X11/mGyw7E2oRmKQTB+xYCD
 9nIG6UvO1bAITGRd7rixoyHhlexck/WmBWCBBzQOQr6p0q6SSaME11eLN
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PO9+ruMP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Add MII write support
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/5/2024 2:10 PM, Chris Packham wrote:
> 
> On 6/06/24 08:51, Jacob Keller wrote:
>>
>> On 6/3/2024 8:10 PM, jackie.jone@alliedtelesis.co.nz wrote:
>>> From: Jackie Jone <jackie.jone@alliedtelesis.co.nz>
>>>
>>> To facilitate running PHY parametric tests, add support for the SIOCSMIIREG
>>> ioctl. This allows a userspace application to write to the PHY registers
>>> to enable the test modes.
>>>
>>> Signed-off-by: Jackie Jone <jackie.jone@alliedtelesis.co.nz>
>>> ---
>>>   drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
>>>   1 file changed, 4 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
>>> index 03a4da6a1447..7fbfcf01fbf9 100644
>>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>>> @@ -8977,6 +8977,10 @@ static int igb_mii_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
>>>   			return -EIO;
>>>   		break;
>>>   	case SIOCSMIIREG:
>>> +		if (igb_write_phy_reg(&adapter->hw, data->reg_num & 0x1F,
>>> +				     data->val_in))
>>> +			return -EIO;
>>> +		break;
>> A handful of drivers seem to expose this. What are the consequences of
>> exposing this ioctl? What can user space do with it?
>>
>> It looks like a few drivers also check something like CAP_NET_ADMIN to
>> avoid allowing write access to all users. Is that enforced somewhere else?
> 
> CAP_NET_ADMIN is enforced via dev_ioctl() so it should already be 
> restricted to users with that capability.

Ok good. That at least limits this so that random users can't cause any
side effects.

I'm not super familiar with what can be affected by writing the MII
registers. I'm also not sure what the community thinks of exposing such
access directly.

From the description this is intended to use for debugging and testing
purposes?
