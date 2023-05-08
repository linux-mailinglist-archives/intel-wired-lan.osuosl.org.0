Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 058B06FB909
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 May 2023 22:56:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1698942084;
	Mon,  8 May 2023 20:56:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1698942084
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683579373;
	bh=K6Q/XBd1IymDeJnktayc0A9mmyVS526+insq1jppF94=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=28lDkI59sm+evWFFTkKgPh89TjhGSbFIU4WmRAt99Jmn4AG8V9wURX/NxECDr+Gb6
	 h2da/iPjhkFQOYi/apSTKOH9jY1JVX0ByoY2/9H5yuX7F6zIr4c7b7QHVGR87Fcqrs
	 WBckgsbyxvHJH21xP5MWYdvRlxXLNfL23FrLOxwSGgq7b1unYghedXxEL4H06GmfBU
	 zMnSz5h6w9SWxUY5YbB4AakxMHSTJImDSywdWidW19OtDBcNnXe7kNqgCIx0R2VUom
	 lOfwhz0Q5PqL/fnEFyovbKPeax5T4yxoE1cniUQu9Fqf97m3PpT/zJrHJfkKaalFJV
	 Ct6WSb9FUMw0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AHZgpQuFyYjt; Mon,  8 May 2023 20:56:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABB064202E;
	Mon,  8 May 2023 20:56:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ABB064202E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C68FD1BF34E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 20:56:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 97AA561150
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 20:56:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97AA561150
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x5gjIxWR1r7r for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 May 2023 20:56:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8C1D61308
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B8C1D61308
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 20:56:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="436073554"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="436073554"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 13:56:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="944999850"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="944999850"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 08 May 2023 13:56:04 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 13:56:03 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 13:56:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 13:56:03 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 13:56:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JhRN0M/W/k2fomIHrb0yg0MhIHz6fqMDQ6iy37mOVTm68H0a0vBs2Mb0SCXa8lHP435YBZxsOvwgmZ3nm0D7sBviVfKoxO8TK7ULgM5sNabY2Z2aY9KRTlqNrPH66tXo4xo6GbIaXv7ORNmTgKYDuwE+ZWVIBmJ1X4Bop5M2SacTldxOjyGnH1WEViorUyNgMQLqk6MvnqKm2vDCLowRQD6p15anU5wbLFP7qMTh3KD88brQ2X9wYwXMQQ5z7J1pBchm6vxNBtj4RySLOf1CDdr/GjLRHK9RASc0M1hfkPKDSow0eWuamiYaqbY9AF834SK+XiCGDi7mmkl0F8DDxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sr36PrtZexKvnrGIM6+sTZOcyseJVqiNn5bmWjEjIxE=;
 b=VQ6KPyOtr77OctCkdMCHeEstMuxACQpCbi0KkfJ1P94JBfvtEUqGUm4LWqskuhey4drwzYfge9TJ/qIlFJy8ElAVOl/HRbz+d/lCNuSdUUgLCR6oDncJZ5cyigSuMxIaI3UTsqGso/dofms+Xv4djJLcTdTBSlIAmiQyK0sJL2IEOYox4L7ZEwAe4ZLLI6kuugF6LIPwMqESKVLa7mH3O/NnW7Zfg0AtzB9vUT8ElKhdxNGxKHCco55zBMStWDru0G2P62Xbw4qMZqYk25t1w8omixyQWMk6/YOquexodj21R8MCPo3HdF/1yUCfAg6S1PAVRgh0RoeSThsKXmrVvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SJ0PR11MB8293.namprd11.prod.outlook.com (2603:10b6:a03:44f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Mon, 8 May
 2023 20:56:01 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cb9c:7293:63e7:17d9]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cb9c:7293:63e7:17d9%6]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 20:56:00 +0000
Message-ID: <970e057f-eed9-69ae-b321-ff78049e33ac@intel.com>
Date: Mon, 8 May 2023 13:55:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230504235233.1850428-1-vinicius.gomes@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230504235233.1850428-1-vinicius.gomes@intel.com>
X-ClientProxiedBy: BYAPR02CA0002.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::15) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SJ0PR11MB8293:EE_
X-MS-Office365-Filtering-Correlation-Id: 2cf70b7b-b4a6-4202-033d-08db5006a106
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D7PJyb0jRv5r8VHxdoZOy7VBsklHBRgFRSShVqHAdY1YVyEabaUBfOPKQ56UBApJHlK5UAOGXOaV54VJi2QBIaU4jDzw3WIPcR+0Dmo0LhobZvyqBXTQsIgdg/kJfRi1k6fXnBfbx2cPvqxrBBlJGJ4PBo6Jbrw7jpHphiacg2/uN0dzVll7TtjlaMrms08/vrGEAL/UT1erfVA3t4E3YWCYLzy+4Y69E3ABtE2wBR2mJtuXhSpfuWF/eP6LsyuePAwANeW1SYqlKYhDjo05PJf7gHuHb4G2peycLtSogE4ouKEgD9iK09+Xjzq3efh1NtJxmwEuvfYQGX2S3Fw1Ur+SAthjmvTm0pIVoOa4OHO7ujTQsgFq1mG5FA3uJn/IEvqlk5YzEzSAuvezH8lQmUmap9Z1FueNWxhlLCSBk7qKzPRldy6LsKLjY2RRsbeLKHRkBQ8F8N14zUT1UKJzOGn0yjNcDxpRRVTzR3WqHJXbQPBg7CDOmyDfDQSA3monlvwePOTV5vrnsImuigSB+7VL0a8Hnx5udR5fdRwAFRZcyZJqw1I7+qNi/qUQYS/tLy/yX7p4OuvLjPHaCvXs+L1AuUyaKNTZg0QM4rQfDhhSdMYwnck4TrYNojaryD2harpk+LfnCNixpzazuHfSTA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(366004)(136003)(346002)(39860400002)(451199021)(31686004)(36756003)(38100700002)(2906002)(316002)(86362001)(8936002)(31696002)(5660300002)(8676002)(66476007)(4326008)(66946007)(66556008)(82960400001)(41300700001)(966005)(186003)(53546011)(26005)(6512007)(6506007)(6666004)(478600001)(6486002)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mk5Sazh3dCtKQStPZXk0c0t6NEZZYkJtNjhQWXBpWnpWOUNpUXFqWllxVHdS?=
 =?utf-8?B?YTJFMUF5U0VkWVVqTjFQSkdFQWNPWmwzZTdlVUs3RkpsUUR2ZytST1VCWnlI?=
 =?utf-8?B?SERmRDRPNnpaOW9CVll0em9uYkNQYWI5ZWN4RitYMjM3Vm84alVMN0lTaEF2?=
 =?utf-8?B?SHRsWStuU2ZkQUtKdm9EbFh0STc4MExtM3FIOXU3MmdNTU54ZUgwZE1zOVhk?=
 =?utf-8?B?YW5NczVNZWVhbU9BUWZMRzdTcjBEMWVtS1dDSU4wRkJPdWJvQVh5YjlrZFQx?=
 =?utf-8?B?UDN4UlRPR0xXTDdvYkRrbGtVZHJWeHFDMWV5cXV6djRucDFnRWE5U0VGTTR5?=
 =?utf-8?B?MkthcXpZaHNBUXFLVVNLTXZkMTlGOS9yUEdwNWxTdERpYUY5TU8zdzU5czN2?=
 =?utf-8?B?Sk9BOXNFeDFwRU84VmRkM3RmU0VDYVFId1psSFN2b0crNGlyK29ySXY3OWJy?=
 =?utf-8?B?TWlsWkZkQ0ZjWitkS3hkK0F6RTRyVUR6MkFRZ3Z3OUt6Z3J2YnlDRG5JUDVX?=
 =?utf-8?B?azlWbUdDTjJYOTI2U2x2R0RUeHA5Q3pybXBlZ0h6clZXRStacFp0VkpHYU1z?=
 =?utf-8?B?eEVKZUlvcDdsWnR5dDZOVXBVOE01N08weGgrRnRram5GcHZkQS91eElpZ3pZ?=
 =?utf-8?B?a1pURkxjYmhQd1FwMVVpOXFjN0hDT1R1dXdhQ3U4YkdTMVk1S3VGYWhYMU1q?=
 =?utf-8?B?bm1RRmVGVmhOVUxXZVN3dFFEMEhvM01hOEFZTVFpRC9kNWswVXVEUERLWlQw?=
 =?utf-8?B?UFp5WCtJSGV4NWVGYThXNGovWTNaa0dDK204bTBqUTdUdUF1UFk4Q0pZUE9n?=
 =?utf-8?B?VnZWbTd5QXB0WHRHSTVxZlBoQzlJTng1MVVVL2tBMHV0bkJwQzZWeHd3Y1RQ?=
 =?utf-8?B?bk80MUppNlpoeFovMUh4RXVPOHllcUovRTladCszRVFTdkhoZ2RkclE1UFhG?=
 =?utf-8?B?RmxvbDd6K2pGRy91bDhyem9lck9FSmFnNDVZMVdvTHhFK3FiZjRDVUduQnIz?=
 =?utf-8?B?WVlMSUpiWmtaY05KNEtnMjZwR0FOWHRrcnRpNlB6NFQ5TEJNd3JiOU1pa3Rl?=
 =?utf-8?B?aXFNK3V2REx1WDZCcnlocDg5aHFDR05iL0YyY2dFWHg3M3dXNjc3Y2FjNlI5?=
 =?utf-8?B?UFE3Q0JoMTJKdCtzeFY1czRHVVVBOU03OWF1eDU5TzBXbU9mSUpwSU5qY0ZD?=
 =?utf-8?B?YUNZWm1aTFRvS2xZeEplQzRoeEg4ZlhtODhoU1VIM3RQeDZnVzFlc0drb3Ex?=
 =?utf-8?B?bzBSYXhrQ2hnSXVsVmdmVHVNMXdYSWd4RnFGdVBtU05kK3ZsaFY2L2xhczh1?=
 =?utf-8?B?aWlyalZMY0RwTjZVTnQ0cjFXSHJBNFlTZG9qTlVXTzBzbW56VTNSNmpTRG9a?=
 =?utf-8?B?ZVVwOEdST3I2by9adkVLc3hTWlBIS2JjR2JhdVFmL1YvSUlJaW9qK1h5RUox?=
 =?utf-8?B?QmRSNmkyS1g5cE9SWjIzYjZIaVRHZEhCRDFsc0ZNNHUzcmU5Y3lGNEVsNUlN?=
 =?utf-8?B?QjVVbkNIaEEvaW1Jak9NMHpDWmV0TVFjelp2Zjg0RnRZSmxsRGUwSUtaZVJF?=
 =?utf-8?B?UGpoeEFid1V1OGorc1JDczJreCtwenM3aHQxeGY1NWREaFhqMG50cHNCR283?=
 =?utf-8?B?MG9KYUZJVStnVTZpdE9pd3BxclJubFQ2WnArSjNwUC94Q3JjMnBKckpWUFBT?=
 =?utf-8?B?Nkcwdm9yRTBGampicEFYTFlwVXkwaDdHZTB6b0FyU2JkY290NjE3UE9iZmY4?=
 =?utf-8?B?Y0FzSWxROGVEZXQvckFMYW1FUnNqd0p1Zmt1RWVHVW1NY084OXRvdHB5ekx0?=
 =?utf-8?B?MVdZRDBHc0dRWk5qOEpuMkhCT3kwam1BenpVZ0Myc0UzeXNaOW5IVlpZSkc3?=
 =?utf-8?B?Y0lFdFVRWTYwUGZpNXNtajV2WmdLbWtnWDRVM2E3Q2VvRTNlRmVrVDl4cU5n?=
 =?utf-8?B?U0lCeDJSY0dyTDhFM2lXZklPcWJUSE1qaWFjRGVSWVB5QkpncmJFM2pNR0dI?=
 =?utf-8?B?ajVHVjY4dmZaNDNJelQzOG1pQk95YmpSVURueUxveHZIMTNxQ3Bqd1dCaXBn?=
 =?utf-8?B?dVBSaTR0WWRabm80c0VFMmRWK2N6ZEVwdjV4R29rWTBldFFDN1pvOWhXU2Nv?=
 =?utf-8?B?bXlOQmRlVHNaNThlK0ViZHFZT3hRRXAzd0tucElEKytPbVJaQ0l2M3pJb2tW?=
 =?utf-8?B?QVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cf70b7b-b4a6-4202-033d-08db5006a106
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2023 20:56:00.7770 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: exwzR8q6Mlh1BYJPYzD6dwRM2cinCl4k2gUfVtUA4ilP6ENRtCYN4b51rMrMN6hXTaaBAMLEc6kBTMdIQcGLHOM+H0kPs7jMMck+NQ2liCg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8293
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683579364; x=1715115364;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=giqIv1beJ3xk5ceVpmt9zttXRvOaSdItRh8Nn8H7oO4=;
 b=KwiaDk3elh1VenWRCWg/kLW6ZK6JCP1O1FKpDbiB3WAjLCChtUAPFSOQ
 166A34prl7Ik8hJCytFyU1Zi6s2JlbjruNo4Iq2KhfkqPT4hRL0s9mxq7
 mxKBKnBB3GHbuG+4k0XZJWAHXjiThZS8UsgiQr9RBPK8aTqd5T6Z0xELA
 xXYKbzw7nTV88wA92Eu1NqnSEYAXK3R5n6HleFl6PJvvEF9AN1KH27xYB
 P4KQ873gLvAbXekXstknwPGWv/n5VAyC+Oo11uNU1DL/Ml2d71icsV/xt
 1EdmSnZ0XeszXnBhuEmBvTJmy5/aPQNB3WHX1bkhYc/2kcEp7iPxNf8K7
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KwiaDk3e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl v1 0/5] igc: TX timestamping fixes
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
Cc: kurt@linutronix.de, vladimir.oltean@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/4/2023 4:52 PM, Vinicius Costa Gomes wrote:
> Hi,
> 
> Changes from the "for-next-queue" version:
>   - As this is intended for the iwl/net-queue tree, removed adding
>     support for adding the "extra" tstamp registers;
>   - Added "Fixes:" tags to the appropriate patches (Vladimir Oltean);

In most cases, net patches should have Fixes: tags to them. Patches 3 
and 5 don't have them and it seems like it would be applicable to them.

Patch 4 seems more like an improvement than a bug fix? If so, -next 
would seem a better path for that patch. Based on the 'for-next-queue 
version' link, there are still some patches remaining that will go 
through -next? Perhaps this can go with them.

>   - Improved the check to catch the case that the skb has the
>     SKBTX_HW_TSTAMP flag, but TX timestamping is not enabled (Vladimir
>     Oltean);
>   - Ony check for timestamping timeouts if TX timestamping is enabled
>     (Vladimir Oltean);
> 
> for-next-queue version link:
> https://lore.kernel.org/intel-wired-lan/20230228054534.1093483-1-vinicius.gomes@intel.com/

...

> BTW: I hope this is the correct usage of the "iwl" subject prefix.

If you could also add -net|-next for the (eventual) target tree
i.e.
     net : iwl-net
     net-next : iwl-next

in this case 'iwl-net'

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
