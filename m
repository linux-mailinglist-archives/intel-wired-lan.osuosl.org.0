Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A1F8A8B37
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Apr 2024 20:38:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29C3A606E5;
	Wed, 17 Apr 2024 18:38:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s20yFzmSxAhT; Wed, 17 Apr 2024 18:38:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F86360591
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713379135;
	bh=Jg5xQSa/LyU+BmwVKQ5FqL6JZCnOCAcC5/rq20H/5t4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=htj/rtpiMqTRJlA4qxbC/wchaVsk6sDMqszfGLxLP640jlge72/GLH/hdxcdUpdrL
	 5g4myPE132KaP/XBbBh/0VjzxlFqsOcPkhJUNFJ9GzlKqRxS5hOwXrrTe1uQZcqT1S
	 yB3EB6hvr+wIdJsQXXuJZPP0B1g2HVao/oJIEel7ty+zQPyvQuCPai2u0lDKDt/3qM
	 FRbTBH0UxJyOaEY8xdij6HtYa3V2/9MbE3S45oRBgkyZ9iW/HLmYVvDQHFJ8FCzAXU
	 nZ13r32x13r6yGGFxJQla/+orWcvzUptWVRUYhz7bwFal1sqQcAvlyOhsW8Uxe6Lfl
	 CaWE24EThyyqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F86360591;
	Wed, 17 Apr 2024 18:38:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0DA1B1BF423
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 18:38:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB6FF402B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 18:38:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 996PufC1vuqZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Apr 2024 18:38:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C6A8240299
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6A8240299
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C6A8240299
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 18:38:51 +0000 (UTC)
X-CSE-ConnectionGUID: NTlUpwJ7QIaSJqCQ2jlRPA==
X-CSE-MsgGUID: 6uSsvcCgTxiLeuu/YygAsw==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8748671"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8748671"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 11:38:51 -0700
X-CSE-ConnectionGUID: dx2EIjO8QjOgdg/8avuT9A==
X-CSE-MsgGUID: sMuWqaHlT0SrMBzHem6lzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="23208515"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Apr 2024 11:38:51 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 11:38:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 11:38:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Apr 2024 11:38:49 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Apr 2024 11:38:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ec+1b+vKXOQJv2gTH/8+BlwPQ5bjJA3cNXbQ0dmHmNNe0J85WERZnTjHmk7yaXEqT/5BNKYw6Ffy+6VOFC8srykfk0GOUf0z8pjvxzzNYBagfpdZYzatPwvEw0P3yVOMNDyH+SK0N1dGK09kCNVoz8euz4DwwxC0pPIJgHy4sVxzwjF8hSDctwDTzN/QBytZ9qtPqnrY8ZC6MzoapsiBfvnF0rqCC7nAD1UBVVxp0bf4NNJSu9fZixoNSJyib15aEBLlZ2gLQotpIONFvVg5jgDSXln5GLFnqZ3TPPv0MU/bggeTgY3NsOmu0OlxEgmKqjEDsE/EH+LjcA8Q6W04mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jg5xQSa/LyU+BmwVKQ5FqL6JZCnOCAcC5/rq20H/5t4=;
 b=eYSSbQrjHdiO9n7M3yllTTCPEk8J50EblrHLepCuEZsOPWDBT4ixGch0Kg40BscON7ZF/Rvc5rNf5nLgjGoJCrATJgWUpdQESm5BQXNxzJlILZZfL50hhlW9D3xJRkUzatDsTKNCKsk9KOAk6cCjEUm74j0gT3BpniDhWwA6f5+0AwFck0JuFfC2KZxf6E0sx0SNNUEf+fDdOFKbzw1EbG9TLYuXMBTLIFT6NoYvr8NMk+4/uPXqxoR6C+/dXDFUDZ2Au6YUEDo2SvizfIoItKTt9ejkbFOe8IUsQ3ht9+b0Mo6sbCOURXTABAUCgyKN2FM4b572LBuij4PrTeHOvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by BY1PR11MB8030.namprd11.prod.outlook.com (2603:10b6:a03:522::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7430.46; Wed, 17 Apr
 2024 18:38:44 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::e538:89bf:f381:1ba8]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::e538:89bf:f381:1ba8%7]) with mapi id 15.20.7430.045; Wed, 17 Apr 2024
 18:38:42 +0000
Message-ID: <985b38e3-2188-490c-a112-b7b7c37ad503@intel.com>
Date: Wed, 17 Apr 2024 21:38:36 +0300
User-Agent: Mozilla Thunderbird
To: Hui Wang <hui.wang@canonical.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>, <dima.ruinskiy@intel.com>
References: <20240413092743.1548310-1-hui.wang@canonical.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20240413092743.1548310-1-hui.wang@canonical.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0018.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::17) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|BY1PR11MB8030:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a938a7d-8d9d-40ef-08dd-08dc5f0d9b1b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lvPhz4nKftPhnsf9cOXp+XPiRglzYHabXF/QrpQnDsbwdGZ7bw7uPnt2a66ghvF9nhT4GKbCli6Rq5P8WLW06GMoIyJsZ7Uf7WQSDnTwuUFhKoj1BpoLc4US+bf768fvMrbfZ4jXtFsUQNtSK/uhKX0Z30ZBnm4gQkPKAmnWxgyx1TisH4ZuWn261iPNEijdC+X8pSock/za7egRaprsE0UkT4Kl6xe1DJB9EdAaZ8yKTHLSm9PzPZ0RwubUlH58hQt+a1yfVuDG/Ka3UNNgxopQZG6INIn8budTCD21ZugngXb7MvmTxlvyT9Sr+3YpbjJnTiwQuvcSeN/idEFw9QviwEZQZpL6PG0w0R6Wp4NWyLGVPGHfTObUi/Q4w1qqjVx3ZQSai5S9i1oYsBSrUxwhLYVc2udrGCSOzJIuQUl5eN7oUvHROGx5F61J5x9zQOSZ4Gnrss+Hrue88zPwRuAd7jwOgY1i85ZYJ78tWF7u1NoZo8+lDWtZZoERYitAglmDJFNomGyPW6uM6aRjzLBAOllzqTibJPOjTD0enpaznCLZqDcBkX7d0xKqMWr4EMfTzDB9SfvRS2jHW+Nt/Vb57F7NPjN6+G07QIlgo1ygChHHQcm9lUKpGvjnbvrU1/Wf3udQHbGYQV89XgJnYhbvFebYhG9NI9vjrvOO5vo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2dyWEtOS3htMWFkNEdTMXVuVjhPTGZqeUhxQzMwUER2TjMxK1ZqNUQ4QTRt?=
 =?utf-8?B?VFUvTWNOZWdhZ3FRWHp3ZjROelJwc2pKNmg4VlRySGFIUkF4d2hmYUw3OUZ4?=
 =?utf-8?B?dEtPd1VYcXpwb0ppOVlzazdUa2J5aFBrdDcrYmVEdFpoSHpjNWZaRmc3bFVI?=
 =?utf-8?B?SVI2cVBLOVFydTdvT1lrWHFKMjNhUlJRN2IvZHZieE9idzI1cW1Ja1YrY2xK?=
 =?utf-8?B?QlQ4OGs0cFo1Qlcwa2ZQb0lrbEFIQWg5VEdZUk4rb05nOSs1M0ZLRklVNzdq?=
 =?utf-8?B?MEVHS0Y0ZktuTXdqWCsyZHdOSitsV2pXK0orS1RrN01BaGVQWi9kbWlNSEhs?=
 =?utf-8?B?cGdiWUI0MmE3VWVBa2tNZVhOSHZWSnJYNzA4TDVEbGk2ZFI0MVE1UEN0OEtX?=
 =?utf-8?B?elhuN3Jxdis0SDFDdjB6VjRmT2FQL05qK1FYaXFxOXUvbEZTanBpcTJMc2RL?=
 =?utf-8?B?UTdrcVpmTjNCaVdMbkF6WGplZXdsaFpXOCtzbUxDZk42MGQxaERVa0pyMDB0?=
 =?utf-8?B?UDl4OGRiVGtza2xPaFhZdU1tNnVhaUU4bURUUEJVcWM1cExMQzEwbDJUTnN3?=
 =?utf-8?B?VVZUNjFYVXFkQzg4TE9tY202bldqSHJsT01BK0UxK0JMU2YwOXBWZ3RCemVn?=
 =?utf-8?B?d1VBNWR4VU91N0tSOStDMzZOdVkxeWhZQjN1NzY2NmYrVWhITXpVejEwWEl2?=
 =?utf-8?B?THV4QVQ3ZEdPbDNlYkFmL2htZjJwZEpzWUxpN0tWZlNxOGI3OEF5azEvTGNQ?=
 =?utf-8?B?aDc3dlVjSWdJdTRmeWtJVTZicmlvL3RBZ2tuUkVVV0tkZmhWVVlXR3owdHNM?=
 =?utf-8?B?Qjdaa2RaeUZYand4Tk1hb0JhWXJRUVNxRlovcFBLWXExNVZQaFdQcGk5Zk5h?=
 =?utf-8?B?aXdtMkdBNngxeFdlUnBUcVpFaGlzWlpiUXJFU3NoV05ZMUtsZVVwQ3hFYks0?=
 =?utf-8?B?SEt0ZnprQWExSlBTMmhrRHVmdzhwdzFaLyt2OWJTZlFXOHdSYTlEN2lCQWNH?=
 =?utf-8?B?eXNLU0R0Sm15Qy9jR1FFZ29obkpXd2Z1V1puWmtTeE12TU5CamJTMW1mZFF3?=
 =?utf-8?B?b0VwYVNOajAzU2JXQ1NPNndPdm1ub3k3Vk9aRmh0YWRyWVBOTnFlOTFSTzJF?=
 =?utf-8?B?WjYvY3l4cnVpNk1Id3M3VjlKNVpKMXA2WHZzS0V5bWh0ZExCRHhjdTk3T002?=
 =?utf-8?B?bjQ4RGlSMnMrMFVWY2JmU2llSCtPZEJQM1BPTWROb0cra2JreEVqbUpuNnhl?=
 =?utf-8?B?Q1hjQTh5Yi9UUmQ5dHN6L1FJL25XODBOR2ZBTjVONXVtVWVCY3ptdEJTVE1W?=
 =?utf-8?B?R1VUaG1DRk9FNFdJUnVMdDBQSlBMbGdyZFBzODFFaHFYZk0wclM3K2U0ZUhM?=
 =?utf-8?B?WC9BSFkxZVN1NGFVOUVVdnpOdmZZa1RFeUR5b01oMU81Qnh5THJUTVltZFV1?=
 =?utf-8?B?akUzSnpVOWNycktpN0pJOUJaUDRWUUxVVDlZMVhlV0E3RFZ3TDNhK2xENFF5?=
 =?utf-8?B?WUhSK0pyWmpEQkd3Y2xYb2ZWeVEzYy8rREhyM0J2SnlEeGpqWTlwSHh0Wm12?=
 =?utf-8?B?d2tSb2c2K3lrQ0EwdHJsc2dSVzNjVmY5dzVDQ2ZUS0IzTURJb0NVTE5BdjZR?=
 =?utf-8?B?RkRNbHFWRE1lUXhFR3RqRDRFZklCVkdGTVJwbzhxYjFqU0ZZNTFwLy9lTmx5?=
 =?utf-8?B?VHBvak5DNm1keUd0dWFHNE94SHBGakdOeld2TXh6Q1l2ZGxZc0NTMlhpbjZu?=
 =?utf-8?B?VzJyc0R0azY4QlB2dnduNXZTMm9qSWhiMDdiV0c1aHROQTBWajVLc2JhQmF6?=
 =?utf-8?B?Y0JRbkpwN05QdFF0ZnpzSXpSazlGYXQ4cTA5SkhNeVFIQVhiSXhhVzc4MkxS?=
 =?utf-8?B?dlJiMzFqMzl3NHRsNTRsd2pndlFCUk4rR25GVWsvRmdmZkMwSEZtQ2R6bEZ3?=
 =?utf-8?B?OW9QMUJQMFpXMzgvVjVNb1FabUl5aHJUWndNN0RZZkJxQ296bW4xYi9QMTNI?=
 =?utf-8?B?YThJRXNGeTVlanNKQllST0M1SXo5WXlYYUxENFhhSUtOQ1RTc1pacWM2OEk3?=
 =?utf-8?B?MEhpK21vVlA1TjlwUDZtYkkyVitCbEpIc1dMMXhqbnZWUHlVdlMzRjJ2ajYv?=
 =?utf-8?Q?zA5HrrE5XQ+rVlCF1o02Q/RBZ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a938a7d-8d9d-40ef-08dd-08dc5f0d9b1b
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2024 18:38:42.4360 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SYliBo7kxscl2N0mIPTuoQ2TX/oC9oxj+KC2OlRDHjujOEOiDd5xAZaSKLrJs4+xvf49/vfRdeun4jyifCM9sFIiPWvDLO2QWyFy5mpRnqA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8030
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713379131; x=1744915131;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1L2xrVss33CUE5ryU7RmygqLKLxMTtxHZzbPV+0auuY=;
 b=TWWkGWC7kkqn9TtYYikNeHh2WWaRc8zVsKccuFNrPrAB8zlPgCHSg2L0
 i2OgH8r1CmGWu1UXr0NfXuzkW7TsEbaKX/ji0kGV5nKR3kRDXd2b7fVuB
 FgsijACYe1oqN0/nfUUpLKh/MEhOC0reD2V28wzfT07jndYRXTIYsKpaD
 d3CG+g8JidJZqJg2i6KYBpIt9sapp6XNvdancA8vH/Ec1QlXV/DQd8MoM
 tz8cbZJ8/A5vfUYjVL0gMV0+Eavv3uo9ysueKap1s9LZ2+AOLowxcZjAr
 s8yM3AVby2wnVgvB2ZYPYMC7Ex3Sh+kRbfoJKzBSLNULkFp+hvWmYuvDL
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TWWkGWC7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: move force SMBUS near the end
 of enable_ulp function
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



On 4/13/2024 12:27 PM, Hui Wang wrote:
> The commit 861e8086029e ("e1000e: move force SMBUS from enable ulp
> function to avoid PHY loss issue") introduces a regression on
> CH_MTP_I219_LM18 (PCIID: 0x8086550A). Without this commit, the
> ethernet works well after suspend and resume, but after applying the
> commit, the ethernet couldn't work anymore after the resume and the
> dmesg shows that the NIC Link changes to 10Mbps (1000Mbps originally):
> [   43.305084] e1000e 0000:00:1f.6 enp0s31f6: NIC Link is Up 10 Mbps Full Duplex, Flow Control: Rx/Tx
> 
> Without the commit, the force SMBUS code will not be executed if
> "return 0" or "goto out" is executed in the enable_ulp(), and in my
> case, the "goto out" is executed since FWSM_FW_VALID is set. But after
> applying the commit, the force SMBUS code will be ran unconditionally.
> 
> Here move the force SMBUS code back to enable_ulp() and put it
> immediate ahead of hw->phy.ops.release(hw), this could allow the
> longest settling time as possible for interface in this function and
> doesn't change the original code logic.
> 
> Fixes: 861e8086029e ("e1000e: move force SMBUS from enable ulp function to avoid PHY loss issue")
> Signed-off-by: Hui Wang <hui.wang@canonical.com>

After discussing this patch offline with Hui this solution is the 
safest, therefore, I suggest to accept it.

Acked-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
