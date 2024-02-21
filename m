Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE2A85E8DB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Feb 2024 21:16:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0600382209;
	Wed, 21 Feb 2024 20:16:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vKuixs2fHz-w; Wed, 21 Feb 2024 20:16:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2913281F6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708546606;
	bh=6W1GCioRTpiMErYa7ka8itrckRu5L9hWi2t4vsSqh7Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jqzEUMGYacag6rnkMMgokC1DrZ/M9dO4bvWVv0hP+kRq7aE4JHud7th+ongnugQzx
	 TMYpgsRnZsi2yBCcxa6jVBwu4D2qojc78jrihHud/hjES7bmZ1OUlh3BdKPcvAnITe
	 00Uvy9aa8lLu0MaFJG2+RcX11YvRg3mKFunZeb5WPnGJtj47fVo9p0WFY0z1ydohDz
	 I/xyjdf0EKT8++4m+hjN+UWYPZqkx4MAVPRpSDPhNj39lCP23vNvkB1ErGYRib1263
	 GTas1ijNpoYYTKpqS4EpphYF0HsDXdXWtey1vw67s/23zedSQ+V/3lQZgmPOBxgUWo
	 PtWOpqQhfymiQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2913281F6F;
	Wed, 21 Feb 2024 20:16:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 80C911BF41B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 20:16:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 795F4821F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 20:16:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fbs3EF0S8vG3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Feb 2024 20:16:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=alan.brady@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 94D5D81F6F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94D5D81F6F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 94D5D81F6F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 20:16:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2616886"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; 
   d="scan'208";a="2616886"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 12:16:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; 
   d="scan'208";a="5205728"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Feb 2024 12:16:41 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 21 Feb 2024 12:16:40 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 21 Feb 2024 12:16:40 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 21 Feb 2024 12:16:40 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 21 Feb 2024 12:16:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ELqmv+PnL9vGVTkc1HA0CVmn4tvO4gsWwRXuOMxOb5gWJ1VBKnH+DdP1fPkdBPSylOsYk7l5iuMU67uPOgMs7pZ989QOkgDgUyzoLCmrPsAGO6PPkWBg3BlinCVrmEFcUpjd0xvz+ChZoO/OsoaeaNXdGU4tdMmDsqMbVXTe7deCJXl4Xm0OecDa82fY+2dfx9mqoTKeRfIts52/SSeyGVS0Cx4aKCsae8fcWGx4HY8cVOodrUQ2sQMf0CzxMqpLHFXgBY/gG2M9BhGWh7dgQSkTbzzjOKjn1/7tce0Tnvd2DyZfCTdAnzAo55r9vMtxQUplNo7uH2Vad+5reaI6BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6W1GCioRTpiMErYa7ka8itrckRu5L9hWi2t4vsSqh7Y=;
 b=kW9tx6C6uJ9/rV0PfRtzMSXkloo1zFTfRWdrWTtZrunFk5XUNbMXdeh11UYXmDBkmOOb4zusMfHL4yI7zB92MmrZbbBSvfKSFFgS1dVMP2/neCLJzmn+EHtrQk4XktQ+8RO2YVAXYkE7SGNAbPfe6L9CwofeVoqyjzkmka6lHbsBv655JZn2zkJqaTGFHDTNPUK4ktYo672J1t14KmhWwwP3UquiFDhTPL+8/PTsz1Di71qSFg491YmmTOjNAfsUgWkwpejXs2dccx1a99bJEPNG3lQsWW7PGKCFk8AR2JWVDgZtu3UcOZ3iqhuA2zzVuVVQgiPKaRLCHULnNdm4jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:9b::24)
 by CO1PR11MB5060.namprd11.prod.outlook.com (2603:10b6:303:93::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Wed, 21 Feb
 2024 20:16:39 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::a8a4:121e:2b2c:7037]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::a8a4:121e:2b2c:7037%4]) with mapi id 15.20.7316.018; Wed, 21 Feb 2024
 20:16:39 +0000
Message-ID: <52fa2a08-b39d-4ffe-80da-c9a71009a652@intel.com>
Date: Wed, 21 Feb 2024 12:16:37 -0800
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240221004949.2561972-1-alan.brady@intel.com>
 <20240221004949.2561972-2-alan.brady@intel.com>
 <369a78cd-a8ed-49ea-9f89-20fea77cc922@intel.com>
Content-Language: en-US
From: Alan Brady <alan.brady@intel.com>
In-Reply-To: <369a78cd-a8ed-49ea-9f89-20fea77cc922@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0138.namprd03.prod.outlook.com
 (2603:10b6:303:8c::23) To CO1PR11MB5186.namprd11.prod.outlook.com
 (2603:10b6:303:9b::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5186:EE_|CO1PR11MB5060:EE_
X-MS-Office365-Filtering-Correlation-Id: 42b4bfaa-6cac-499e-b3a1-08dc331a02cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9CokEE5V2tsbN7hkdSL1UYhm1ojiEeyjY3i5wgP9ywAz/pzXKRmMvFRZpIbllwoiAkFuGNGZNRPAAwEr84g08DIZdSUA3naqZgpNITdd86/NBVzG2R5kHTLTLCyRL6D8EtubQmTUdsj7yJ6WC4yf6kEZ1bP9vSRM7q958k5nA+Ohhjlold5Bgq0FlWwEn3zaW8WCJZvC3NHz5PNYZ48M2vWSxD58nc47FELDRtTpYhIAJlhd5hsIXGw787S2dbPuLMlS7yGkzBfcnl0w0ttP8NTVnmkNJ3YiPT4IHvqB1/4P3jZ1pDkJuYPKYi5Ca31NgrxzdHLWvSx8IB9FW98s0/dmSjeJp2FpPLrM+XV1jTgYbf3ftIJrI/M8JJ0RRoNaa7XDZLw8ICSPwwlHEtsLr6iVY5Y77NNaxVf6VbX2RoQb1Wsaa4ljEfntBY16FvZo9jkQ1i7Hn30MyYr8Y1tK9rKyDpoSSW85Ym6GS28PRBFhuLplzakQoyaGRUMimN19Zl4lFaTRh7w4rP0U0+mPJOsLEfgULkFhTFJlS5ahUfE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RlNZVFJTY2U4Wk5naW1DZjlxeFVDZVpJNGExSnRmZzlTU2NoaGx0NThDVEtl?=
 =?utf-8?B?dmFCdDJQMjZraGV0OXQyQWw4RDNGcnhCZUliYXhib256NGd5ZXBhOTl2RWdt?=
 =?utf-8?B?WGl2Q0owcWRuUHczYjlvMktBU0RQY1hLVlNFald0bndwSnpSZmpFcW45cHIx?=
 =?utf-8?B?UkZnYlIyaEdxTUwxTHhIWUN3TklDWE4wS093T0VHTkJ2VmFqeHBmaW9DSDJw?=
 =?utf-8?B?dlZjVVhjOGpYUk4vR3dLZVlJSGxSNXRKVjFFY2U0SjB1N2NERHhNcFFXZUp3?=
 =?utf-8?B?YkpWRkJxbjBSbFphRVI5VkIzNE5IZmZkdkc3RE1KMU9aVEZodjl4RHBSdzc5?=
 =?utf-8?B?NmxHZURlaUN6ZXo4TzhYQmQ5am1JY2xNOUVnWWRIZll3VEV6M0pFOHlkSjFt?=
 =?utf-8?B?YXE4UG53VDB1WmtsRjdJa2x3Y0VyOVlkUUc2N1ZMcjN5UkkyUlNING4xUGRl?=
 =?utf-8?B?NDNtZzJrS3ZOYWloOXdjN2Z6ZFNmeW5YUnZ3NlVibi9BaEVKODF5ZDJsdkRr?=
 =?utf-8?B?NjlXWENUQjFrWWNFYThiL0dyWkNPeUJxWlY0OUl5ODhPeTZPOTV0ZmxqdnRC?=
 =?utf-8?B?aFdPN0xuT1NBdEU2Qmg3R3lscHpOUDZpdmJzWG8zdmZsR2JScWhpZVdSeG1q?=
 =?utf-8?B?cE8yOWNHVTJ6Qnk4WC9nOWlZRjl4NnhObUxYUGxvWWI0RDRJS3ZkK2N4dXJU?=
 =?utf-8?B?ZnZKRmlVeGxzR016bjJ6RG9la3VsQ2FaWEQ0YWhjR0Z6a2szVmc1Z3MrR1RZ?=
 =?utf-8?B?aU1nMzdqanowZ05KaUl6NEZFaHgwUjdNaDdvczVXOVhNL3NSYzR4SFJqOG9p?=
 =?utf-8?B?dWNhSDIxMTdEZTlFQ1hoTnhsK2MwYWRDSUh5NXYxWEtaMHQ3elVLOEh2Rkdu?=
 =?utf-8?B?bkxhVWE3bU1RQy9yUmtTTWZmZmRrbzMwZkVEaDhhTmhNbnVHMGpSeUNINFNT?=
 =?utf-8?B?VFRmNHhkSXlmYmN2dDluWG5tcEU4ZDFaTUxlRFQ0RjcwSzhMeUZHeWM5bWpS?=
 =?utf-8?B?S09INlJyNmR4MC90V0w2aW44aEhjOXA0elR6RzlrQnFEMmFVaGVpT1hmMGlK?=
 =?utf-8?B?S0lib1I3blE0QzZ2Ymx6K3lIUHhxbnduWFdFa0twbzdpZzFybzFxTVhzcGJV?=
 =?utf-8?B?cExibWZ5YnNEOFZIdm5PQzZLL3hwTE1YaTBiWG12Syt0M1E4eG1GdXhRck9j?=
 =?utf-8?B?SzNtSlNhdmNLYWMrTHZzUlZaUGpudGJKQ0dSRE5pTWZBU09Ra2lvc1dLV2Fx?=
 =?utf-8?B?S0JySm5ZeXpwQnpQZ2pkelZyb0Q5NStGREJrZjRMeUQ1WWpySkRTUDBtbHZy?=
 =?utf-8?B?blJYdXNwTUh0VkVqdnF6UUQvSGhwMysra1h6MlQxZUtxOWdiK1QxNjBiVXAx?=
 =?utf-8?B?SldCa2NyMEVNMTVmSURRV2tyTkJDVVpNaGN2aHMwUW9oWXhHZDVPSGJndGVB?=
 =?utf-8?B?SjJmZEFHYXE3RkdkUWdTYzc0elVvQ3NURzR0WkpiWkRDL09IcE43TVNvUUFa?=
 =?utf-8?B?c2kwRkZmU3h3UFp6cjB6SlZSQWRqQlAvcHNXb1NMeERRTUw0UUdFYkRVKzdI?=
 =?utf-8?B?c1BsQTZQSm5MbHNVT2lIYnZXcTVJLzFSbCt6clZyZjZaNDV6ME1rRlJzS1Yv?=
 =?utf-8?B?TGxHampuYVZsNGZNcHpVcjVJdnlEc1RVb0QxYUNZWDkzRHh2SHpEWGJuQnBN?=
 =?utf-8?B?eE1nSldjWE1pVjNidDlaaS9jL0c4NnpOYUY4bWVXbUZqb2hOb1NQbnpJOEJw?=
 =?utf-8?B?VWtBQ3A5SE54SldJK2h5REhzMS91Z3Yxam9OYytCcnFWbmEvNTgzOHpSazVY?=
 =?utf-8?B?M3plakhnZDJjNGQ3KzNQY0dKVWl5b1ZrWnlQbGJja0U5OHlHSzAzaklUSDBT?=
 =?utf-8?B?MGZ0VERmSk9XNEZ4eHJDTGJENFM4dUxCSm1salJVbldmQ0hNd0l3YVhCUFpM?=
 =?utf-8?B?cVBHSlI2QlhzM09RUFNsZTRPUy9QeHNmRlRRK2hoVGNpT2thVExuTTl3VXJ3?=
 =?utf-8?B?SXowb0VtK0x5YkxEVUY4L2FKSWtNa3g5dWlFL2RzTWtDRWJqVGEyZU5GWEtC?=
 =?utf-8?B?RDVNVU0yOS9kVitXMlFqS3ZPSUYxbEFMbmRZYUNpaFBRQXdJaU5rY3J5TTBE?=
 =?utf-8?Q?Bnx5K42Jb7a0wZBCrTO3NVv9c?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 42b4bfaa-6cac-499e-b3a1-08dc331a02cd
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2024 20:16:38.9855 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eL4y78zTqxuz9G7PBSTLb+SqKng+uNBdM5ZSh2tDUy6YiSjln6wN+xzjKI5TTrOw+XFhlsvwKB2Tp8ywgm9E0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5060
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708546603; x=1740082603;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fzCz5u2z+aQ7FCszktT+QLX+/V35wJGX05ctjQEf8Oo=;
 b=ayKy80gf1xHFmHcDRUFfij3gBMUZBRJsJZTwtKcHTXmazlvloxrCP+Cl
 BHB009S+jwhakmrGCSliPa9lZKLc3QLqfT5pp9MHx42LkAm9VwyKd8r1Q
 MvmZpP7K9+rf+Y97X8hhGs04SsCOqtdC6Cy/K23FnWH66ccicKRDYYer1
 gzAojU1DrbddMoTwHOINK87IbaL6d6mx3mvs584oa7SyTV+Togak+yTqK
 +yORzc8QPr0+8sVAJjFGlIqQzykSOmJ0KFJAZ6dyBXzJxCqjTCv0BGrB6
 LE0CVLFlr+AzHZOIZmXVxQMyD9wXTwgf1TgNsDT7hFvwpqZl/bHWKmWas
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ayKy80gf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 01/10 iwl-next] idpf: implement
 virtchnl transaction manager
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
Cc: netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 intel-wired-lan@lists.osuosl.org, Igor Bagnucki <igor.bagnucki@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/21/2024 4:15 AM, Alexander Lobakin wrote:
> From: Alan Brady <alan.brady@intel.com>
> Date: Tue, 20 Feb 2024 16:49:40 -0800
> 
>> This starts refactoring how virtchnl messages are handled by adding a
>> transaction manager (idpf_vc_xn_manager).
> 
> [...]
> 
>> +/**
>> + * struct idpf_vc_xn_params - Parameters for executing transaction
>> + * @send_buf: kvec for send buffer
>> + * @recv_buf: kvec for recv buffer, may be NULL, must then have zero length
>> + * @timeout_ms: timeout to wait for reply
>> + * @async: send message asynchronously, will not wait on completion
>> + * @async_handler: If sent asynchronously, optional callback handler. The user
>> + *		   must be careful when using async handlers as the memory for
>> + *		   the recv_buf _cannot_ be on stack if this is async.
>> + * @vc_op: virtchnl op to send
>> + */
>> +struct idpf_vc_xn_params {
>> +	struct kvec send_buf;
>> +	struct kvec recv_buf;
>> +	int timeout_ms;
>> +	bool async;
>> +	async_vc_cb async_handler;
>> +	u32 vc_op;
>> +};
> 
> Sorry for not noticing this before, but this struct can be local to
> idpf_virtchnl.c.
> 

Nice catch, I can definitely move this. I'm also considering though, all 
of these structs I'm adding here are better suited in idpf_virtchnl.c 
all together. I think the main thing preventing that is the 
idpf_vc_xn_manager field in idpf_adapter. Would it be overkill to make 
the field in idpf_adapter a pointer so I can forward declare and kalloc 
it? I think I can then move everything to idpf_virtchnl.c. Or do you see 
a better alternative? Or is it not worth the effort? Thanks!

>> +
>> +/**
>> + * struct idpf_vc_xn_manager - Manager for tracking transactions
>> + * @ring: backing and lookup for transactions
>> + * @free_xn_bm: bitmap for free transactions
>> + * @xn_bm_lock: make bitmap access synchronous where necessary
>> + * @salt: used to make cookie unique every message
>> + */
> 
> [...]
> 
> Thanks,
> Olek

