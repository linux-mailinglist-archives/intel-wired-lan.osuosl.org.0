Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E7E7620CF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 20:01:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A86EC610E0;
	Tue, 25 Jul 2023 18:01:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A86EC610E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690308072;
	bh=wa6bA7wGD68CPQ2/EvIp5xc5jEmdeU0EGIcDvmY+QRo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MrCwH05MLIpYz/6HzukFKP++cf/1n0FZWEULvYTTFT2UdyhHXFIJiG3dugHrIzDyE
	 F+EmUitIlVSbrWiOMDcPKkoLCRp1aLgqBrNMo/Ojo5PAXg6idc1PR8bJOA583UujtS
	 CXMJie8nhGAq07Q4zwekHNcf30Kexv5suvIzlXtWT7Dkw4R6dT8lfL7N5NdWrAxrJH
	 Oj7nRHckQBuwZzvjbnhwFCgaNq/hzl7SKo0enNJtx7a4ZwiXh/8ggO1OlUW2elZ+9I
	 ff85njOhrhxZ1Gjk5LTE7/UCCPpCE/5PTwMjo0r2Pf/tScOnB7JICAA956gqqR35wp
	 wjMaxyRV3lt1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wipGKQPjYmam; Tue, 25 Jul 2023 18:01:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69C1B607F5;
	Tue, 25 Jul 2023 18:01:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69C1B607F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D681F1BF317
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 18:01:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BA2CC60F6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 18:01:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA2CC60F6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6hHxxFtHDKIu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 18:01:05 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 73CE9607F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 18:01:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73CE9607F5
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="352706304"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="352706304"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 11:00:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="703393979"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="703393979"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 25 Jul 2023 11:00:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 11:00:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 11:00:38 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 11:00:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UCA9C0Xbm1SqPKLF3ZwPgOpb6qI3K6c6JYo+vIo69D3IgM7oERVHlQwjuLAy6oCDNmOVydPZIDTZ2Iqt0Q/7yEo62zV2eUrB1N36yBWxsA+2NOQK+fbD+BADby6IE2gc42udgOXch8PuX46yLBb/mDv2COMOolTNgZ29J8UkS7D1dyOsGV9p3cZIVEB4sZnT1ttJXWKnIUJZq+lTomaNT/7X6UskMcVetDNplfgji60UzoGdXrvCBzGTfBdOZa4bRn152tHBcPL7WGJZAChxqKu/83HDsCRF/ETIr4Co+5LgBJxHm3pERYGYYkER+bykvdJ7Tfp4U/+rPL9pljG1BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2pG+JvsKYNmmluPXkwasgE8Bo8smo28VYLVnhKKZSfs=;
 b=E4nKymoDCoPcMWmYCmwI2isZ+R1dsv+vlXhP+tN9M98e4V622yYbI7W4XlpuJofLh3+7xNFWcyMNBa9sW0OhI6O2yW0a0ZhNzh+PPCi7RVXgm/jlVeUwUryDyqOqM6jpvAZMgPI6a2otQ09Ekyo3+Q/H6kcXmxI4iwwQyCto+OL8R6K9JrR0qqlCs77lSPP7tsiRO+pDdnCwEUxUxnBFioCbSjMtxXWA+FgTE0oLu5aCbG9gZyhBsdpUCDyqz9wIJv8QQeP0ZF0heY2V2ihTpBUSVInEaSZZcbGdZKpcUw1dkQfDF3NwmJaouTgxxDyoomcr5iLMvra1aPOUIw0Owg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4828.namprd11.prod.outlook.com (2603:10b6:806:110::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Tue, 25 Jul
 2023 18:00:35 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6609.031; Tue, 25 Jul 2023
 18:00:35 +0000
Message-ID: <fd27e730-d740-1c90-53eb-9e8b20acd978@intel.com>
Date: Tue, 25 Jul 2023 11:00:31 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Michal Michalik <michal.michalik@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230721154424.11834-1-michal.michalik@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230721154424.11834-1-michal.michalik@intel.com>
X-ClientProxiedBy: MW3PR06CA0008.namprd06.prod.outlook.com
 (2603:10b6:303:2a::13) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SA2PR11MB4828:EE_
X-MS-Office365-Filtering-Correlation-Id: 8076559c-fe25-4a5b-1cd8-08db8d390b88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 35LVEbwOa4LKUdfRcZb40d2BAHIwU79NUPHycLdHGzcInrX6kEWoNqF7U/dui+6w5gOx6j+EypYqB3fHAN/rVmZ2GfKScPrmvGkz4Sq0CgFvr/IJSMYbHQZGLCV1xs09pHtS2Tgxwuhy7XXKU5rp4hy04fdNi2bfaVslJkfSCpespOLsvujnSKUq8rO1l+3dphHgdpsZVt9eUvG5u91XQBVWdHupa34HXggrdIuqFpFIUhvunOByrWsBvo5TxgIFjkBuu03al3cqPTPM+N5ABF3T6ZA37LmMCWs0PUdTV8voOyLNykQpSxMPfQH1pQ+Sc01HIykcLqpuo3qZ91bUD8ulfrGUY/jhTPksub+sqxUzDPfDhUQn53/zPeJYxWb9q8C+1V0ENOiSmE0/m4JZ6j6uP/nOL8kxE5nFtv5UBbtZXh1xwzgn1gYqCjVz8TnypqTXwEkJWcEfdCv+6yMxHUrxe7CnnQpAcfXiB3IhollZhpdi6khQuvJwCCYWEKQ+KmRq0cZpgdg1qn/6yvRN/emgGFuvtrtqOHY+nhDj2PNuiqAMIkLzVXYoAXxIPzeEh5tZXJ8tuHE1rDnhUXtQFNvIROd7D5NpYZHb3ZFWOmU8CpHleUi7NFAvqJpXhv6BOnwnLPfzaC2iUBcXi0SFmw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(39860400002)(366004)(396003)(136003)(451199021)(31686004)(8936002)(8676002)(5660300002)(41300700001)(316002)(4326008)(2906002)(4744005)(6486002)(66476007)(66556008)(66946007)(6512007)(107886003)(26005)(186003)(53546011)(6666004)(6506007)(478600001)(31696002)(82960400001)(86362001)(36756003)(2616005)(83380400001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVYrTTdzR3Jab0VQZ1NuOWZNWXZqL2NUR25BcTFaTTRIWWI1aGJIN1lNWHF6?=
 =?utf-8?B?SHpGWkNETDJsVkFSczUwVzllRVZkd29zQ3ZNdXR2QjBYMHhQd1c0a0VFbElB?=
 =?utf-8?B?K2NpSllWTjVXOHlzYWZIU0R1WkNYMHFndFdMb0R5V3ptTDlVdFlaU0hncDhX?=
 =?utf-8?B?Z2ROQjN5Ym5nb1FjNTQwaEp3cnJnTTVYMitXVHRZcEFvOVNHc2hGSGNKMWxU?=
 =?utf-8?B?TVc3ckh5ZEV3Y2JwcVY3SzZCaUdrVUJJMmFWN1QzcVkycFZobFZrL2RzR3Nk?=
 =?utf-8?B?Q3RXWGdNOE9NZEtSbWErRHkyVHNueGtFNjVnemt2WFNDbWFyS0U2V0RqY29p?=
 =?utf-8?B?WWs2dC9xSkgzaHM1c3E0d3QvczFEdTJSdWlOZis1YlFKQU1JNk5MZDliQ1hH?=
 =?utf-8?B?RkREWGFJcktyK2Q0OEZHRmtNUWhYR0xpa0FwenRxOGJFU0Q0NTBxNmdwakxa?=
 =?utf-8?B?d3B0bENtM2F5ejBVQ0puNTdVMm5uMWdyOTRvaFdZZ3ZtV081T1F4SXRIdEZy?=
 =?utf-8?B?SUxBNHF0WTN4MHRqVWRUcDl4dnFzdVRYOTVLNE1iQW5HaU10KzkwT3I3ZGZB?=
 =?utf-8?B?TGpCVlZsb2JJZVpRSURGNExDZmNxdktucXlvK3B1dzRHeTRLcmRIcno3MWVO?=
 =?utf-8?B?c1VYdzJpd1BtWEpsV1UxZjBuK3lFWkF1TERaWDQ4VDZKeitmVnd3KzdUM0dn?=
 =?utf-8?B?SzlWUlNEYXc2U3lPQ3lzTXNvWWx2ck92TFhSN0N1aXVsUnkrY0xUejlPMmlY?=
 =?utf-8?B?d0FPZ3I5R01kU2ZJZzZEeVBuaFNQeGhRa1JONCtTdnlqbE1jNmFuL1YzUWk1?=
 =?utf-8?B?K2p4LzRGcVZCd3J5aTh5aGczaUlMVk0zU2hoVElxcmt2bTNBZ253eWh0cmJF?=
 =?utf-8?B?Wnl5T2lrQnZUNWszSXpzYWpzdExxZE5nZVZtUVk3dVhCZ0tXSVpFRHRaWVRy?=
 =?utf-8?B?blFtVGt1R2pIMTUyQ0Y3Yy9GWU5SOUlVUDREWXZqNFE1OVpVYzRUQnFiVXlm?=
 =?utf-8?B?WlY0TEoyZTU3SXRRZkJEM3NxRjVhL1lGbHArR3pEVEczaU85M0NGTkUrQXpx?=
 =?utf-8?B?Kzg2VmtHZHcvY1Y2SkRDcXRJZmRSbmZDOGROOEpWQnVFWDUxVkRrQVhveVF1?=
 =?utf-8?B?cDhuQ0VnYnMxZ3FCRkVUTGQwV2JPeVo0SzE5a0NuZVAvUkNyTHdlMUN4Mmto?=
 =?utf-8?B?MGhoZGlzckZBVU1aL1c5SUJqSkJiUFlZZjE5U2xSM3J3TlQ5T3pQOG1sdE5a?=
 =?utf-8?B?bnZhMzhyLzZZVlV1SC9uLy9ybnZMUTRmUWp1VzQzeTV6blFNaEhmK3MxRExL?=
 =?utf-8?B?bzJIVzRPenMySFpyanRsVEF5Q3pxVGhnZTJjWVF1a0dLL0tUMXliNlZhL0px?=
 =?utf-8?B?K283V09rdjl1aU8wZllvcVhqRGt0YXlvbGppazZyTkJ2WFFPenBEbTBYZTd6?=
 =?utf-8?B?KzBMZ1lXclFmd2tGOE9JZVdGY3RoQ1Y2c1BCUURRVEN2ZXNKcUJSWEJTZ3p6?=
 =?utf-8?B?RUlGOVNxZ3JSZUdBVWdsWVRuNGROT2ZPd01nckN0a1p2enJIY1BINmlubnBR?=
 =?utf-8?B?NWI2d21EOGhaMFRrNjdYMEs1UTdYcFpUaTN1QmcxN3RteGVlcHZuRjR1YmpO?=
 =?utf-8?B?a3g0TnM4eEJxcGhjdHE1VXhuY0tMbU9rM2M2ajF5bnNxNi9nTm54RDBodlp5?=
 =?utf-8?B?NXY4UnhmN0tVWHpvMHUxc3M1czk1UERrbk9hNlpNbjB6dUFJMW8xTmlFMElq?=
 =?utf-8?B?Q04xS2hnRVVZS0xnRTVXbHlHQjl3MTMraU00dHRwdGx0emREaVRqdkQxN0Nw?=
 =?utf-8?B?aUJhUFV0cDAyZEZDS295WjJTd2pZOFpPSnBsbDVmTjBUYXN6REZBKzk5cHJx?=
 =?utf-8?B?bVlDVG5kaTRNMHVWSWUxYXFEODJvZVIzdXBMaTh6L0FPSlc0cjBPcndkS0pk?=
 =?utf-8?B?eVhHRFlWL1JlRWdyOG9iTmVmOEI3Qi9yMzNZQjJWSVJ1cGxHcWd4b0hoZ1JE?=
 =?utf-8?B?NVFUREVsM2w1bUdvSWY2MUlYVWpxYVVoYVV3ZnVyVVBHOHpaK3BqbE82b1hB?=
 =?utf-8?B?cWZBazVndkhiTlA4YVpydmZBVEg4TGQvaTVTeVo5eWlpL2MxYk9LL1gvREd4?=
 =?utf-8?B?cTZLQzB2aFdUNmFCdGl3K2k4ZXBvc1pEK1NYY0V6RTRqaXpKZlhSdnVmRnFQ?=
 =?utf-8?B?aXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8076559c-fe25-4a5b-1cd8-08db8d390b88
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2023 18:00:35.1063 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hZltu891n51XEShcpPLJcASe2ojF/qQpUJfIUHKpB8cM73J/EOyser7ejQ/8DXwbtqCieK96ro+Nt1pR6tdMIgi2wqW5GGyoHu6PukJayzU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4828
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690308065; x=1721844065;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wwaEigVMNfX49N+f/ic4j4O4v4Cw6L9GlPWejUO1uW4=;
 b=fZwxr28Ueq5hnls9/EDZfGfLXUV0xe7xeFW9hjDFF+AjtXe0CgSPMq/l
 cut+NNxsppO9gbNFJ74hY3wWJZzjeO382kpN+pWd69C+0cuNrHcJxnwRo
 HRPvBbIp3i/64PVbvgAofuZhfRjQBOu50w+XiqQBkITyX+/sVyi1RNhhx
 7q00Ezrrh8lxPEstTMTdz/e30AgbY9QQ53NOsv7ShhbTK6qhPbZHCEJLc
 mH2hbVie7NgKmhcG9K/TOqhCXElJEHotATKSBMvd9oK1axnsN8P9trwfe
 u43vKVMvhGfZxmsdjgl/wGZyF4xWVpzMcfWUJsZAfkog4vLZLFDRFe+8B
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fZwxr28U
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/3] ice: add PTP
 auxiliary bus support
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
Cc: karol.kolacinski@intel.com, jesse.brandeburg@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/21/2023 8:44 AM, Michal Michalik wrote:

One last thing I just noticed: s/net-next/iwl-next

> Auxiliary bus allow exchanging information between PFs, which allows
> both fixing problems and simplifying new features implementation.
> The auxiliary bus is enabled for all devices supported by ice driver.
> 
> Michal Michalik (3):
>    ice: Auxbus devices & driver for E822 TS
>    ice: Use PTP auxbus for all PHYs restart in E822
>    ice: PTP: add clock domain number to auxiliary interface
> 
>   drivers/net/ethernet/intel/ice/ice.h            |  14 +
>   drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |   5 -
>   drivers/net/ethernet/intel/ice/ice_ethtool.c    |   2 +-
>   drivers/net/ethernet/intel/ice/ice_hw_autogen.h |   1 +
>   drivers/net/ethernet/intel/ice/ice_main.c       |  11 +-
>   drivers/net/ethernet/intel/ice/ice_ptp.c        | 582 +++++++++++++++++-------
>   drivers/net/ethernet/intel/ice/ice_ptp.h        |  41 +-
>   7 files changed, 489 insertions(+), 167 deletions(-)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
