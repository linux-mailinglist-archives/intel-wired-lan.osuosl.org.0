Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8D67FE32C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 23:30:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB72C61AE1;
	Wed, 29 Nov 2023 22:30:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB72C61AE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701297018;
	bh=ONlSeu6D+A14EnVRO/QKVGEk6spU0s+OP7UZwMcWVrA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fEJKXXaPl81evl/If7fLW7kEwrQeoRq5w25pK2i0xTr3pu8DdEq4Vca96J4k2tzXX
	 g7ATVs+vIzbJE3rtuTvf2b7xpfl/bpe+CIxCi5/1+esOZ3KVteUtirF81WBnbOfh7o
	 7fcshItChDOppJ3Q8OMtWMF+1rP0wxfWZLuXyerSysJWgA/qE6+3ATiZqV1kiVX7qJ
	 TiiAHk/OyIoHyRE4z/o5tWDMPxiiK88ERfQfAqqyTfWyqPq86Pytoasb0NDTjoUQxY
	 UHYjjjEVIVpVPz5u9mGeZ/I9aQ23RBP9X9cRMdape7OzETq/dXchd7T+ukJVdAR4XQ
	 cSjflf2g6GoUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gHFtbfqnCmYj; Wed, 29 Nov 2023 22:30:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADDF161AE0;
	Wed, 29 Nov 2023 22:30:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADDF161AE0
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B0021BF356
 for <intel-wired-lan@osuosl.org>; Wed, 29 Nov 2023 22:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F28640116
 for <intel-wired-lan@osuosl.org>; Wed, 29 Nov 2023 22:30:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F28640116
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CeqZKQrD08JS for <intel-wired-lan@osuosl.org>;
 Wed, 29 Nov 2023 22:30:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 479AE401B7
 for <intel-wired-lan@osuosl.org>; Wed, 29 Nov 2023 22:30:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 479AE401B7
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="11938055"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="11938055"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 14:30:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="798072040"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="798072040"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 14:30:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 14:30:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 14:30:07 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 14:30:07 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 14:29:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K64ZOUUC+RcSbkzbTIn/wATyCm1b9aFSmKA5b8WC8d1pJWooDnY3RCGR4hq3EwTWuwNKYSbgID6OJR+IUwned7SuE6qV9Dnm5OUN8b+h5HqgAKR47PlXXEodCMf4nXGTNGpvMyW0HyS/T734LU4XMETq4iKEiomKLUn4Dt1TQ23jl1RoB1KE7oNOEMgLylN+ni8QQhmu/1Imblg8OF8kqXVLd3xWDIJ+V4VSoUIcCjb+WSCMwB/WfAIUgUdPq0zvfaubEPJw/LGM2be/phHz8onb7+5CPdvTY1bvb2SPiMNAi0IjzxFFNqaZ5yhM+4GfJ8hKh4/enEblVIihNaIIsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6ka0oXk6uoHmAkUq8xlmTywktdOVlVsk+msAODsA8Tc=;
 b=GyXKrcxeujdFO+ZvIAGSnlXj6Cz2UX5DrxPpbTuJqlEmBsvXD67e7olOG0Z1SKNisZGto4I7XdwPpg6YiYZ3I6tN0z2wtI44u6Z969Mj9YK9r7YuTBg+TAjVWYXSe/ZbqRBcVMqU3yqzVmkSPkdSpmbOYvLkdkheqqbXJYqXOLdCSIHEfoN/CoXS1jmNettEkF4XHdXA5r+ESV5hdQ4QCQIfiurSFri+HdEhYQZtHYZRaY/b1/jNJKfzgwhfGDSyBFLZaO4hbBVZB88lSOpwTmumyFMwIeYYX9Q7Uk1C1ytXJe0yh385CGOr8MOUtmPZpioS7faahoPXp1BotL17FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB6896.namprd11.prod.outlook.com (2603:10b6:806:2bd::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.26; Wed, 29 Nov
 2023 22:29:55 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5%4]) with mapi id 15.20.7046.023; Wed, 29 Nov 2023
 22:29:55 +0000
Message-ID: <9c4e9651-188b-4234-9467-66e594dcd39e@intel.com>
Date: Wed, 29 Nov 2023 14:29:53 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20231129161711.771729-1-ivecera@redhat.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231129161711.771729-1-ivecera@redhat.com>
X-ClientProxiedBy: MW4PR03CA0176.namprd03.prod.outlook.com
 (2603:10b6:303:8d::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB6896:EE_
X-MS-Office365-Filtering-Correlation-Id: 853d3b8b-6447-4401-27cb-08dbf12ab646
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1ZeU8yAj3Rpd05nIxk4K4cVHRvNAb9f5YS3dGwEumzgbNa8GPJEab4+YZd5hjuQhvQ7nxkypp4nQpYb0c/ImHmyeobG1ul0G8YuGsggtTEdVb9bfYigQl1ghC1/7pm2HjAD1bljEQoRVNG4VVhER2Dl9x0UC3fZ1m6UIiRj1Htp7aoML6c8GdQp9qTzIx2ZmRg/pDwldYIIt+kNTrf0++qu6OWCyJqMBX16IcNmVTRXokNmMwWiTmqClM5Jp7+LX+9Y2PwCK1KTTqqNxZHQUxzJkiYV8WMc3zfuGk5OYQDJzXVjih691zqFXZo75XZg+0yWWQiYJZPGWBwhEtf4XhBJCf3GEson/rIaW7Bu23atiGDhnhKmC6DZabjC0LTTkxvdUU9FEGwEPrDIKjQttm92uGGWilivnf5FDeetyN6LqNfqBfXZ7dGkulk62ZPeTyH+2Sn1tbrW5+oSt1Y2PJE3e3Em3MZtDAbLVWvKZrZMjk+8AwZhh9pEHtUMnQ+uovYEyrOGVxOGpqVCycsrRK9VHym3Ne5IBcdJ4gBcw4ZUna8HyV5m6W4/C2bCjg7mVBeRdmx3s2r9xEi9OMr0yv2k4bBvUiNOkuYCxh5zd5wACdw6x7ulnN6nhN+d2poqhiZtmY3MdltTZztltD/1Q7T9354XyelKEIpI09TZ9wSOrzqxyZHlEoTpQsJmAlncQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(376002)(396003)(346002)(39860400002)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(31696002)(82960400001)(86362001)(38100700002)(36756003)(66556008)(53546011)(26005)(2616005)(6512007)(6506007)(6486002)(8676002)(478600001)(5660300002)(31686004)(8936002)(41300700001)(2906002)(4744005)(6916009)(66946007)(202311291699003)(66476007)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1l1cTUyZUJuaEJhYzVndThPNmh0R1UzdlNmTElaMFBHTEJFWkVtZ1U0Y1Jz?=
 =?utf-8?B?V3RvSHBjYUJkbHY1ZXhBSlBYdmVyQlFiZDBFTzJQZEJNQStha2tDaG54ek1N?=
 =?utf-8?B?ZjB3TTR5WEZQNkhWcDNPSStIV0hvZCtmUHRGZnBycUFzbW44c2NITkZPZkc1?=
 =?utf-8?B?aDJkd00rUUhhbTJxL1drU2UxWTZwcTNPOTBoZHhmd1pYakJxK3BtbFVjNDBh?=
 =?utf-8?B?Z2xhNkZTV3hLNmJnMnpQMjJTQi85djJydWU0MHZZc041d1pOQ1lTdXFUdWpN?=
 =?utf-8?B?YkJHcVdlNkdKQXg5Z0dyTTV5dUgyb1VFRVQ5L3BuL3NSMGU3OGRqQTRtMjlm?=
 =?utf-8?B?S0pOWnhVbC81RzloSDRGRmIxY2psdWx2QVFodmRMd0dyWTB5SThhYzhxTjlM?=
 =?utf-8?B?c04rZW9aaXFrbjRwWWdVYUpXalJCNFF6U0pUbi91OFlYWHFBMjEvNVEzLzc0?=
 =?utf-8?B?OXRIS3BiRG5nUk4wOVZqNk4rbGlUSkpFNHBONStWWUljZXBvVjc1RjQ4VW9W?=
 =?utf-8?B?YVhrZkxVOVhWWml1ZThlOVBkUlpsaWVzZHRZM0FqR05sNUJVU0JMK2dYUzFa?=
 =?utf-8?B?QU5LTkhKb1NvYjgrM000TkxIeEZxY0UwSWM1aE1Nbmp5eUtVTlMwUFZrREE4?=
 =?utf-8?B?MkpCZzhOUHFPQm1tL28vbS9LM3FiNENKSVR4KzltQWFPdjlHZUE5N1N6bFVm?=
 =?utf-8?B?dkRBMlFlNmJneFNMTFcyakgxb0o2dG1TbytnN3BsTEZSNXNOVEhPN3VWTzdr?=
 =?utf-8?B?WUt6VnhEclFlYmNJSTVFbTJiY0NpSkx1ZHdPODY2ZDFYa3ZkQUpINFpRQ0ZU?=
 =?utf-8?B?QllBeDNETk9CYWU2Y1c4QzdpRStVVGpaWlRudnBqeGl1RG0rcFVMbFhVMGRU?=
 =?utf-8?B?U2Y2SVRwUUJPRkVLWmF0Unc2aE9kMnBUWFl6b1M2OXBoTVh0WFJEc2RpcWJq?=
 =?utf-8?B?UHkzOHRUUjRkZVdJdFAyQUNxZWd3N1lXYnlNQlRHYW9CUmdJcDNMZFl5RTRD?=
 =?utf-8?B?MXVISVJmb0lRVUpzc2FLeGxWWU5NRjgyeHdaOEwzV2J3akpRM2IvclloMGxX?=
 =?utf-8?B?QWFaVW9LYjkxYU42dnBwM29yb0Q4OWgwSDZVc05BdUxybERmTzhmUjJETWI0?=
 =?utf-8?B?Q0htV0RMSXlSNStGYXFMMU5BUWhUeVRnZFEwSlBWb1Nzd01kdmU5SHRRSld2?=
 =?utf-8?B?YnNPQ3pmT3BXQWJTWlBxdXhoN1E1Y3Y0Z0Fab1NLR2xaT1p4TlZ1cDFMQ2ly?=
 =?utf-8?B?YVpicjZVQlgrRDJ5S1lPSDVRdGtqM1BUamxwUXY3aEdLQ05Kb0dpUWh0YUMx?=
 =?utf-8?B?NXhZY0hGQ3Q5NUFYVGhLeE1ncGRISEwvZ3F4RExEbGVHY0hPdXU1dU5hRFdJ?=
 =?utf-8?B?Z2RCQkhBTGdlN2NNdDRrS29acVEvRFhxSUwwN1JGaGF0a1M3RVJKNnhhb2dQ?=
 =?utf-8?B?RHhJMDRaeE1UYUFyRElSQ3EySTdZOWtkMm1jQnN0U3N0M0ZMRk9XRGlZSm00?=
 =?utf-8?B?allmbmZVZ1daSnluM2k0QUhmTXJvRnRYK1NXOE5BdlRRc3hYUkFPckpXRkZP?=
 =?utf-8?B?dEFyN2M5YUxsT1pJNzYzY1BMemcxWkk2aC9VNHdpemNFUjF1RnRnWlpYM2JS?=
 =?utf-8?B?VENTVTRPUFNXMmhXMzljaTJXVmtkUXYzcHFuUjVyZzZzQzc2bk9kTTNVR2tq?=
 =?utf-8?B?Tlo4YTNsd0NYMVBmTHVOaEwxMHk3Y1RQYUJHVTMvT3NoZlFOdldFbHFPUzBQ?=
 =?utf-8?B?KytrS04reFpkNjVuS3NQRmJiWUlia2ZYTWh1SDkxeG11eVRJaTI5TEhsamUx?=
 =?utf-8?B?andvTmxBVmZOSVFkVWsraXh6MEpsZnlOOGJiZXZXNC9XRlBCMTlSUkhHdEh1?=
 =?utf-8?B?c0ZEQ0ZLYllnbllJUHZlV0pmQjZYLzZqTDVBaC9mdGloc0NrVjlzTmtmZXd2?=
 =?utf-8?B?T2ZDTmJrZ0Y0c0tCbzBicEdNeEdWQTBSeHZSSi9TTHo3S1dYQmdnZ2krbnV3?=
 =?utf-8?B?dXM0dEV2SHZYNXQxQUJIMWdyWE1BT3JmRjVjbWZFQUpnSmlrL2J4NEkybWlX?=
 =?utf-8?B?T2NwbHZvMTZWZG12cnRoc2ZtSGFOZ0NxQ0ljQ0UrMjhLK2RGVEhYeE1TdTVu?=
 =?utf-8?B?VFNhTGNJVitjMzhDNjNRWG01bG5DY3VxMVFUOHBaaE1ybWVOT1FCcmxlaUZC?=
 =?utf-8?B?aFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 853d3b8b-6447-4401-27cb-08dbf12ab646
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2023 22:29:55.2785 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z8Y7OWN6wW+upFSipk5/Hw0G1fpKb43bZLcEc3AOO1KEuJsnJAqNC6LYiwEkCEa4wK5umKupE5KyKByC31b8tpNA3McFXEKPPbiqF6P2k+o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6896
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701297009; x=1732833009;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=55De04Ew69AF2rqI/EYNH7M8HCLNKt/7Nqlyu8AbiJE=;
 b=F2fjeujRvpP7giyFDcUT625puw0CA+Ze94Xdqxl+MFRbhFUIvqwa5j+W
 br3y/faAnP5iPKkvPp/aMO9ae41kGwIZn47Yn6dQd3SkFUu7yDm/WT+r5
 765VLRtOM6n/ubrSOaygbo9ilHIWO+Axf9ToVX9HlyeUqj7ab5cEzyiEt
 1hnEGnmtnD5URmDzLg+Y9geiLptn7oAIxR/JrT/Me6Wf2Bt1zumK1rFIe
 ShiacoW3S3Jp9rhfQrX5bDt1RMBrGD7KnJsi/E6htgfK5Zb18wicOtM6M
 fvaWK8/xAliv6D4jBlIi3LA9GKsk6eiZaRlj+dZg3v7J/l47xFsQu1kuf
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F2fjeujR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix ST code value for
 Clause 45
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 11/29/2023 8:17 AM, Ivan Vecera wrote:
> ST code value for clause 45 that has been changed by
> commit 8196b5fd6c73 ("i40e: Refactor I40E_MDIO_CLAUSE* macros")
> is currently wrong.
> 
> The mentioned commit refactored ..MDIO_CLAUSE??_STCODE_MASK so
> their value is the same for both clauses. The value is correct
> for clause 22 but not for clause 45.
> 
> Fix the issue by adding a parameter to I40E_GLGEN_MSCA_STCODE_MASK
> macro that specifies required value.
> 
> Fixes: 8196b5fd6c73 ("i40e: Refactor I40E_MDIO_CLAUSE* macros")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
