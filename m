Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AAA8CEBB8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 May 2024 23:11:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02C1E4082B;
	Fri, 24 May 2024 21:11:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id myFR72-rZ7js; Fri, 24 May 2024 21:11:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D98D40843
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716585094;
	bh=0DwibAwyOu89XqL0NFXH79vq13/KzIC4nWlDWvg1HeM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=w22cJwkBMYYmUFj+mpF3YhVv62lOqUCljhitKwoxTuqLBITsKnggY6PssAXSPeXe2
	 gHIWQwPcadJ+iuL9GaS9kOjF1qZz3QUcS/XeDnKz4jaIFcBmlc5M6rCxl3Bmzw9SYd
	 jhp8rYPRT2eYFmIrXmsbJrR7jWte9BzX4psqwgTcvkX3urWZEzCNuj+5zpJMrGA9bb
	 rkhK5ikuVfMJQQ497the18r73yRWO8CfiVu+ZtXTZzAvCKkpBGAThCP8odEfdGP1u8
	 Z5SorqN/GO8CJFUKEogjJpcL5sMpifxypo6A+SZ8Seqzf2HClRQTj4qOnC4q/siYAS
	 9NPU64Of4fWsg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D98D40843;
	Fri, 24 May 2024 21:11:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBDEB1BF46A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 21:11:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A737560621
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 21:11:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iXeSWgaKfIvp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 May 2024 21:11:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4DA6A60620
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4DA6A60620
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4DA6A60620
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 21:11:30 +0000 (UTC)
X-CSE-ConnectionGUID: vxvmWk20RmK5KeU6g3JUxA==
X-CSE-MsgGUID: vDyxCKkAQIu2f1kwQ5oWqg==
X-IronPort-AV: E=McAfee;i="6600,9927,11082"; a="12822584"
X-IronPort-AV: E=Sophos;i="6.08,186,1712646000"; d="scan'208";a="12822584"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 14:11:30 -0700
X-CSE-ConnectionGUID: jrdn3ly4RiGC1/cdpwI7qQ==
X-CSE-MsgGUID: J+6aUpIMRhGZfWlyn1Wzdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,186,1712646000"; d="scan'208";a="57363667"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 May 2024 14:11:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 24 May 2024 14:11:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 24 May 2024 14:11:29 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 24 May 2024 14:11:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jm1KsesHpaL3Ss/jo0yB1BZ5n+tlwUb5WHNumVeCSDOCrx1OmW8nWm7hiMh6r6PuN/99SsvtITHQ6OBODNGgBLFDx3nWwxbMpwO2zzI/VsQgfI+TUhMo5ffkurzVqBwdrDS5fIAuw+2M/eM8Tf+RXuqn7mX3alCs1f0tFIDJee1yf/R8SCgv6T6PdWO54rhOjsxCDNRgkyGFKdb1kDzdh0OT/qJ560Jy8THgm8wtf5LZi1tAllCh9GH/7s70tU29VKsbClCzt2zVATrT9UCLkwM55kwDP+tJszDWWIZP10EwSaLm392aUXDSRXUcutD2UZk3LT1q8n33OX/PaHDkeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0DwibAwyOu89XqL0NFXH79vq13/KzIC4nWlDWvg1HeM=;
 b=EsFAhg7j3Lh5Bv/LAT3/v6x7TlYRUtMEz4oySYqhkMK8kvfWJWFyqhOmoebOHztgqSwGRcNjadqAUOCUwQeMkTC7iarn59031btRfp9KNnyde5lao9N2ZTJX4B2KBuutp5fvolhDYcYDIDseZK2kyRu1ERBq1zgfFXsXkvaV7CSyavod7jDecDaQp/RWMPr29t6it+7rp6AwI/r6KHEPPWkuzFmhs+klg6YsrEC4CLBf/7tTSDoBkgXF43HCQaPjB+yM4ZRnpQ9f8XJZQqzVf8GRG6LfTlII+ID6aiZoTnNtR6rGrTlVhs9RMHn1vKuNHXOSOF+cpyE+hIkhILdVqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CYYPR11MB8431.namprd11.prod.outlook.com (2603:10b6:930:c7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Fri, 24 May
 2024 21:11:27 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.016; Fri, 24 May 2024
 21:11:27 +0000
Message-ID: <2fe273b9-dd6b-408c-bc69-e12c00b4141d@intel.com>
Date: Fri, 24 May 2024 14:11:25 -0700
User-Agent: Mozilla Thunderbird
To: Anil Samal <anil.samal@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20240524135255.3607422-1-anil.samal@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240524135255.3607422-1-anil.samal@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0046.namprd03.prod.outlook.com
 (2603:10b6:303:8e::21) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CYYPR11MB8431:EE_
X-MS-Office365-Filtering-Correlation-Id: 969ab952-ff7f-4713-8740-08dc7c361312
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TzZnT3B5ZTdQanY2Q2pPb3hCQktkYjFSam96UDJRZFFhQnJ0UDdtdXdyb1dn?=
 =?utf-8?B?UmFHRU9ZZmNsRG1lVm1SeUFQanFrRXFGL3RMbGVZRzBXSE0wQXl4eTdoM3R1?=
 =?utf-8?B?LzArSHNmVXM2R1paTndCZHZnOWF5c20wOVl4Zi84SldlSFlrdXFzMEc1RzJK?=
 =?utf-8?B?NGpKZGt4dVRka3E1V3FCcUg2cGhFNjcvUDJ3L1RGZFQ1dUVjS3NzWWlyMDBF?=
 =?utf-8?B?dDNkbkw1LzRtem9iVnZYcWQ1WC85NTFaOEJ0ZGNHSVFOYUpXcmpORW9SVmZI?=
 =?utf-8?B?R2hWY2syTmxqUTJ1SXVwQ0ZvZ3U1YlI3Rmx0RHkyVURGUWVlVU56M3lqdWN0?=
 =?utf-8?B?TmV3ZjNTaks4MGdzMkxOWFZIMTEvRFNNdmkvZW9TM2wwS3VOcFptbW9zZHhN?=
 =?utf-8?B?ZWhVY0I0aDd0RHVpMzFZVHdFY2xvS1dwM3lzTjE1anNLVXVPcmE0U2lJWU5o?=
 =?utf-8?B?R2V0bERlUEJRWUFIb09pUXYwNWtTdFpDVjI1MEFndXgwSkNqYW1ZQkIyNVBh?=
 =?utf-8?B?ZFdIMXl2QXhhVGVnRVprbndWanM4UFY3SDNnOWkrQ2h0NUZkVTFLTE5yWVd3?=
 =?utf-8?B?R055MVRBSzdzbFR2aXNSN0I3R2ZVeGJaUzliTGJoZ1lDR1lGVzJxSE1hOW5N?=
 =?utf-8?B?alhCNE9OM3B6aDZaR3pweHRXajhWbVBxU3M0NjN3SDlvWnlvUTl5V2c2bzVk?=
 =?utf-8?B?RGJFVkxLN1NCRmdkRnJMTmxZb1BBZHJoOC9ydUkzdG9DalpuVkZYZk5EcDhk?=
 =?utf-8?B?RWFDajFlMXFiYXZjRDZuQ1JRRURXcTNJR1ZwU2RmL1hxTEtHVUk5Y2RiVk1S?=
 =?utf-8?B?UXJBR2RSM3oxOEtuSGErWVJwVm8wOHByT1RRUklzY2k5RGNlVVBSQURtVTZi?=
 =?utf-8?B?V2ltQWlYRXJKeTZZUzN1a3IvSTl2Q3NHdXI0dmRzWHl3Y2s5YVUzUW1MTGFk?=
 =?utf-8?B?TTFObWIyZlJQKzIvZ05KVVE1NUljUTY3RTlHZVJNbEw3eDI2R2VicnRpZzZF?=
 =?utf-8?B?MFd6dDdEZkMxdXlGS1A4NU5DeW1NVUNqM29JbVBYWFlrRDAwdmwxWTZicC9u?=
 =?utf-8?B?NFg5c0FQQ2lTYTA4N0loRTlzeUVhS1pZTDVFSmkyeWV1QVdjZzA2QkFxQzVk?=
 =?utf-8?B?d3Q2ckhXRDJtd3YrTEhzdUJYYnozOVZ5YlR1WEYxQ0tvNUZBazhKcEdxS0dU?=
 =?utf-8?B?YkpiZGt6UXFDNTZwMzhBWDVMR0NaUGsydnFFWDJQZkZLWDh3am9oQkxhY0tY?=
 =?utf-8?B?c2dQUVNzaW9nY25tNFhiMUo4MnN2NExKckJTdHlXY2VLUjNUOXFPZHpQOE91?=
 =?utf-8?B?T1RNYWxZNUZlSk5DOG0vY0M5Yis5Ry9kRUhWMytkQjYraHZyTnY0MGNTY0M2?=
 =?utf-8?B?TWxRWmFOb1FhYnRiVHBNTDl1UjBmTDVRekthaDBQZ0k0VXZWUmJWNi9UZFBI?=
 =?utf-8?B?R3hFbFBQTFBiVFRWejc5b0FFLzVXeFRxWXpjS0EwK0lheEdHbHErWndENitF?=
 =?utf-8?B?ckUxN2FQMG9XVnJxSmhnNWRvWk1HeVVLYzJERUZ5TitLMlVxVzkrRGtEQlNp?=
 =?utf-8?B?aXdMeHZMdlBPY3BRRW1HM3YyRVdmQmN1b0xpQ0tHNjlpZ0RUaXIybDZiQjU0?=
 =?utf-8?Q?/mXo9NZtIpGo20gSRRAwG2rrvWpnPZCNdo9peRf8wigI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGpuUzhTVmpFOGpoVkViWFJDMW80OWFEUCtsZk1pZnBZVWxPdy9aMVhyMUdv?=
 =?utf-8?B?WFpBeGlXWWhoeHF1ZHNacGhYVTI3ODNvSUxQYytaL0JOeVQwT2lSbUxGZ2k3?=
 =?utf-8?B?WXZWN0FwNXBmd2MrK2FkUnhkNEwvVHAweTNDeXAzQjlsZmlmRDdBbXFaK1hY?=
 =?utf-8?B?eVNjZTkxck8rWk0wUzlMRlI3R05iV0hMSitXZ0liY3Z0NEcra0l1WHFOYlQz?=
 =?utf-8?B?RlFLenoyQUFacU01QmFyRDNVbEd6cFMrYkF6bGFDRWRvcFZiSGhxQUZZN2J0?=
 =?utf-8?B?VmV5NVhBSGZZdmFTaG9xSWVtRUdXWEdlRjh2Qkp3Zk92UmhCR2ZxWkpjQ3lS?=
 =?utf-8?B?MFB4SDYxNHBKdndKTGJ1enh3K0lWSm91dW1rZWdqd0NmQmc0TTNjYjl1RktI?=
 =?utf-8?B?aUZnVWdpcGNwVUV0Y1Z1cldqbno5bHo0NFVZRjhwYWdiU1VrNmdyMmZZbkpU?=
 =?utf-8?B?WHZRTWJoU1NPUXRFUmhjRVRhUStBemRNeVNydWZoWU9DWVY4ekloeWRDZG9O?=
 =?utf-8?B?emhFdzlqakgzUk0zbmt6K0J2QU1adERsQy9rSE1sSCtoN3JoS2wrNHZtZlU3?=
 =?utf-8?B?UStMaFAxTzZjaEFSdkMreGFVQlJTS05pdDRWbUFPZnU5eGxWNERjZVNCMmo4?=
 =?utf-8?B?WXdGazJUMzdtVDRYNmdJYXNBRzMwNUtIVEsxalhycXoyQVJ5MktRLzdOWUxr?=
 =?utf-8?B?bXBkSUpzNzNMZGNMMlV3d1lwZXUrSGdaZ2crT3dpaTk3NmZkWkppTHNlZWpF?=
 =?utf-8?B?WWkwbFBmY3BGS2pNK09SdkwzWFdqdXp6Y2tjdzZYajl4c2t1R2RsZ0FFa29l?=
 =?utf-8?B?Z2ViaG5oalZ0MWxpRFJFNDdLOTVPd1R2QzlPRHNqdW1yY0FpMkVGTjBqSHE3?=
 =?utf-8?B?SG5kWmI5VlpvS0RieWJBUGVwK2pHczlRL1NNSU1FNGtNTXVDSXRTaUdCYXhZ?=
 =?utf-8?B?VjRLUmlvdGdHcWFnOUsxeThzR3BYK0gzampjY1lYcmZDWDVZS05hdEhXNVQw?=
 =?utf-8?B?WXVQZU53WnhqVnVybThBZGZSQ2NVMWdkREhuZitFMnhHTVNrbmJPb3lOY1lR?=
 =?utf-8?B?YVFRTTEwS09FNUt6N1RrNUgvNkl1ZkpzZWxVcS9LUTliOVJFUFV6N3ZzdU1C?=
 =?utf-8?B?aFFITjJwRjhUa05ZN25uZGxBRkNHZEJCYzZONnJZRDVtMHVaYUJQUEpUYmNL?=
 =?utf-8?B?WjRuU1F3R3pmYyt3dFdYNy93NjNveEFqRlI2Z1RjRjE1VS84d3JIbFZ0SlZp?=
 =?utf-8?B?bVppWDJEUGNQb1BMSXgwaW5YZlQ4Y0hjbEk3L3JFdStjY3FZbjhWbElqaTky?=
 =?utf-8?B?NVRlU2RsaXJFOTBJaytxN01hbGZPdmt1dkFETCtXd3NiVDBIZENCY1M0K0Ix?=
 =?utf-8?B?OFVLQWxHYVpHM3dxVkFDWEcreDB4REk1QUF0bHVleWRiWlNYbEdVUTlRc2Ji?=
 =?utf-8?B?azU5RWRCNFNMamxTVnF3eVB0M3lQVmxsbStSSXdiK2JlejJKRDBCWkxBWkFs?=
 =?utf-8?B?djh3djFxc1MwRVhBbEhuM0docEV3cXBDQ2F4RnB6MzhZdTYzTmtlRnlmckNV?=
 =?utf-8?B?RzJPRUtFNGVUeGw0dHFuRWlQL0hBcXg3a041NVl2c0JHYVYxdFFDKyt4NnIr?=
 =?utf-8?B?WmlMM2lJajZLbmhFK1FWRlRHVXN3bldpQ09tVkY4YVdwT1J1MkNPQVJsOExs?=
 =?utf-8?B?YWczRHNtVm5ZWDV5NjlzNGJKUGF4TDBNbm53NzNwbWU0Z3JkVUJtZHZrY0J1?=
 =?utf-8?B?SzNlb00rbTY0dUpISERjU05UVlduQW14aVc1OWJsNTFDUXBDWkRpdmxZejdJ?=
 =?utf-8?B?b0d6Um50RE1aRUYzWDJyTFduU00xQmFxZm1yb1NKTmtOY3NWMnlnKzV2MW1J?=
 =?utf-8?B?bWhGblorRXh5eUlBWVYxcGNkVjJVZHdkY3VJVkJJMmlEQ1p1VVhCamtSaElz?=
 =?utf-8?B?Y08wNzBldkYrYVpET3pINENLU2V5MnJKWWtJT2NLK1BDb2dzaW5SR3dZU1Iw?=
 =?utf-8?B?N2d2dGhtRjRheWFLZGF2MUVvOTFlQTMwV0xDdUlmbVRDanplSE84aUJRQTk5?=
 =?utf-8?B?bG1pSHVSbm85WGhxcThwellkd2Rva0J6UjNyd28xL2hKSjN6MHBTV0gvWktT?=
 =?utf-8?B?N1VFSXh4OUdwc0twMWZOUnV6UmppOXdXaVFoZzhKQmxiYzhyZHNqZTduUitz?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 969ab952-ff7f-4713-8740-08dc7c361312
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2024 21:11:27.0624 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wkUiAR47tFk8EWcIbR6Q2UZoFGcyZOu6q1qxLuMGaKwm/A2kCqERRfn010ubmsxXLn2OUkeW+I6zJVhd2Uh4Q4rhuEXZMdcPRsNL/rGKZRk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8431
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716585091; x=1748121091;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sE4pPB71a5RhvOU3VkkRNLGgwANDyhqYualhMmmdu8E=;
 b=Cr4ZcoHD1t+hEkXzp6eKa2PmJinhNGIxdJr5e86JwED1U78Lf/bjptts
 wWUYeCvUyjqNKiVbU+U/gN+/IQLRl3aiN+j17AHbaCyqcWP1FH29r1VSR
 wM9/zt1BVyzkbdETRBRfEIeX/6o+52oqAmddt2W7kv2GOpplCNhmaQ8PR
 UrDHfrYzapuak6eNajtUMtGGFtyLbY+FuuuCNyK65aajbLmjFC2Q2w2T/
 YBnegID7bdQTLrLCc1r8B8sl/HhhLK4QXxautN/7CY0emx9tmyKFlG2Tt
 lrLM0ZL1ybRozhpDhD28SoUMFdNP/jOvRVe0eirIoQbLWFn9WAE+0q6rS
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cr4ZcoHD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 0/3] ice:Support to dump
 PHY config, FEC
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
Cc: netdev@vger.kernel.org, leszek.pepiak@intel.com, lukasz.czapnik@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/24/2024 6:51 AM, Anil Samal wrote:
> Implementation to dump PHY configuration and FEC statistics to
> facilitate link level debugging of customer issues.  Implementation has
> two parts 
>   

What commit is this based off of? I believe we have slightly conflicting
work already queued in IWL next-queue, and the NIPA automation is unable
to apply this series for testing:

> [IWL-NIPA] Patch: https://patchwork.ozlabs.org/patch/1939088
> Pass: 1 Warn: 0 Fail: 1
> 
> Patch: https://patchwork.ozlabs.org/patch/1939088
> results path: results/408098/1939088
> 
> Test: apply
> Fail - Patch does not apply to next-queue
> 
> Test: tree_selection
> Okay - Clearly marked for next-queue

Normally, basing directly on net-next is fine. Unfortunately, I am
having trouble properly resolving the conflicts with the work on the
queue already.

If you could rebase this on top of dev-queue [1] that would be appreciated.

[1]:
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?h=dev-queue

