Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 847DC83CC20
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 20:31:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFA1C41E11;
	Thu, 25 Jan 2024 19:31:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFA1C41E11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706211113;
	bh=VCuI7PLi+xURF8hSdwWG6nXJUUwVHYcTBYYMEdda044=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s/OsGN2/r0ujgp1Z+E+QWC5Fj/voAjzVVBQ//uCapgldrLhmlPoiy+ULpLlPaCR2I
	 oOpmv6Nse6uZBVH8JrbzruFp4UB1PC3ZiLxumigm4wFbpiDfOXnDjBXci7PofePWwU
	 kMRxW2HOp42W+9ihXrFHeO9L/QLz85tVXBf4rRYRm3kV3RiG8zgP/oLlgkAX3BiLcg
	 nxwtpHdpDM9DcHbYloyXKSjjsC3aqtObiOjxspzJJWXKWTn9X3xe5Q4PDk6AN9U1Qf
	 mSKFiRmb4CM2OuCTSQt/LjoyLW/WAiTAxrR5RfiSl1kOoRwE7exccOcqn1njNco2xl
	 qK7gGKY4IRJDA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uEie9MUNgozl; Thu, 25 Jan 2024 19:31:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E69C741833;
	Thu, 25 Jan 2024 19:31:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E69C741833
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 213081BF329
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 19:31:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 03B114161C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 19:31:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03B114161C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PrTywcO7VnSE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 19:31:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 59BEC410D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 19:31:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59BEC410D4
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="1193789"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="1193789"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 11:31:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="1118042981"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="1118042981"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jan 2024 11:31:46 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Jan 2024 11:31:45 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Jan 2024 11:31:45 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Jan 2024 11:31:45 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Jan 2024 11:31:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gk0e0LVpyW4iKfmgC/gapufwTPaxLo+QDk52BVT+cMO7cb5flP+M/0pFRe8v4Xqfwt6VknCEcBA0wsz3d5uhju6T3+sy7UjJ4yJC/O7xrGpawhUpEfGxlZfJNKPtlS0+/D+wmznAiShuB+p9MxMfSnor2nXOC+3Y28Bw9aZbfiwn8wXootJ+thuV8iY3opbaV/mEav+oJ0PqjxHyed666R54xNs+056s1aa9Dv3fwiq6MBHVqqXzci5Ibkir+0P7oBT+J8+jPXXSi4eQfxU/QAIlHZWufzoGkXo5LwQCNEpRIkRgLopdNV6wFfkcPx7dBOTn7MwKT/PpatsO7TyIxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VCuI7PLi+xURF8hSdwWG6nXJUUwVHYcTBYYMEdda044=;
 b=lxaOnqLKLYMhaZzG77KTsVAzSJM5nv2sl3qomDNzH+rr1RZ5CjYYbByRT9j1RMXRoPnFhcuETYoQd4kIf6ttdpG2iMnxSdaQOGp4E8gdGarcvnLNQOQmtYxKizboRy0+AGLVUIMH3fyjt0yzgyfKTu1H1HyuFwdH5BK3oy7EwX0/liox3rd6w+o7LQOxKHE3YMpJMqNJhV3aQXa5LFVHv9ArtucyYdKpBhSWVfOCLlX0Xnj9PE3YrEQ9BH4OPwMzeIATnv+A4/WDpIsYtPFA3pStRvGlU1trq/WSX3gjzUzD95pxmPXsVHD4NubRbV6DvV2k2K4I/pmbvc40TzRevQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA1PR11MB7698.namprd11.prod.outlook.com (2603:10b6:806:332::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Thu, 25 Jan
 2024 19:31:43 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::c164:13f3:4e42:5c83]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::c164:13f3:4e42:5c83%7]) with mapi id 15.20.7228.022; Thu, 25 Jan 2024
 19:31:43 +0000
Message-ID: <0ac35203-d067-faa9-ef6c-227143b5ab14@intel.com>
Date: Thu, 25 Jan 2024 11:31:40 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20240118134332.470907-1-jedrzej.jagielski@intel.com>
 <e1fc9c7e-20fd-76ac-15e5-b50dcfc1ae9d@intel.com>
 <DS0PR11MB778565E31D41DF8F8129E1E0F07A2@DS0PR11MB7785.namprd11.prod.outlook.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <DS0PR11MB778565E31D41DF8F8129E1E0F07A2@DS0PR11MB7785.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0332.namprd04.prod.outlook.com
 (2603:10b6:303:8a::7) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA1PR11MB7698:EE_
X-MS-Office365-Filtering-Correlation-Id: e2375b8e-8a57-4fc1-226a-08dc1ddc42b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mZtpb5TIfk90elwH/HPotJdrX+y9u9TRqcZNPddG3mV2vdse3txpWhp6XCrcxmatdKP3mh1Mmrg72GYQaIfArPa1up/OLR17MGrjpA3SLivUon6o14DH7j93GhPJwwy8GP3v6TkeCzhTdpKk8K8xzecVzpn4c3iqBF8dopzu2F9eLxTqTOgwGNZV62j5RAmLIAwfblL3iH3KfXtp2tvvYW/Zea5SCRe8XOsyMzK0b7Fc52BDpLvdn7mUyLREGNMYfd0Klv1Mc8tOk+Cma/XKpSqpNeEnXgI7CxWd+hp/TQ9KTK3TUYM8Az5Kox8y5lk1+g9QrvgiH35PMWCtEluw5UOkhBOEcrgL7m5Qj5IuTMGifVPZSavk/7p7HJ2lCS9A0CBJKo4ZsL8NwuQ0E+OGnIn0kjI/vl+UGCeBsQCwvQYupi33RFuCWxElpmT4PqHP1jBh9wAOf+0pvoeSGQaMJDyDwwIoxG9kRp0oUni9CImPgd0zEru27Yuveo04/RfQyg7SMml6VNonQ4fu/0j2HZQuS2CBx8m6cKN3cAz9+YVsLxn28M8Ep8bd7WjUo2VAbRk+9QsME5aMPDqbZqZ5+o612xQ7b1Io3C41OeFcnDPhuD6J/BDAGZ8KlLrxcdnb76S9RkgYfaZrUdW+zptftJ+LnWmHMZf+Wz7LR6h1KHmweQJUG6dgXYFpfYmOXi4U
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(396003)(376002)(39860400002)(346002)(230922051799003)(230273577357003)(230173577357003)(64100799003)(451199024)(186009)(1800799012)(478600001)(6486002)(2616005)(26005)(38100700002)(82960400001)(31696002)(86362001)(83380400001)(41300700001)(36756003)(6506007)(53546011)(6512007)(5660300002)(8676002)(8936002)(4326008)(2906002)(31686004)(66556008)(66946007)(110136005)(316002)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SCtjYi9WbFRTWlE2S2xFdzNLb0prUE1YVW41cmZrN3ZjTzgrMUM2bmJHemhJ?=
 =?utf-8?B?T0tUYmZRMHVvYVhRSHl4QWRrcjNNcjd6bExNNlAzdHRmZ2I1bVc1RklwVlBk?=
 =?utf-8?B?UlRIeUlSYXEvRWZlV202YUhmSjFaaEI1S3JOZ3lBNThQckdhcXFWSFdDa2wx?=
 =?utf-8?B?ZjRyb0lWMlpXZHNyTTJjSzFIdVorK3V2bFppalZSWTZmL1R0OXA3U2xWM084?=
 =?utf-8?B?bUFGeHFvUzY3SWpHSHpQcTJuS3NyNEZ5UysrTWRwKzlMejQ4dDgybmx6QlpW?=
 =?utf-8?B?VVBaRVcyeTRvL2kvVFR4bms0NW1mbWZRSFNtdGxGWkVRbWluQnNyOGxacFlO?=
 =?utf-8?B?b2liSytDOTk2N2JrbjlFL1lyaXZFcFoyR1RLVENiQTN1dFdCSXR4blFhSGIv?=
 =?utf-8?B?R1JLd1ZSbElZdWY3Z0xBdDJWYWlyb0p0dktEeXJTejMxb2crVUlWdlV1ZSs0?=
 =?utf-8?B?TUNUblNMOUhMTjJ2NStjZFZBYVdxTGF3WGVkU3d3bjQreVE3MCtYU2t2aUFr?=
 =?utf-8?B?bWRxWko5MzhRRHpTckJRR3REQitTL2t4eEFlbHhqWnpQaHFydHZ5SnVEUkwr?=
 =?utf-8?B?bXJWdGRQaUQvTG9jZjliQ1NMclpSTS9qQVRoSW5VYTg2MVZHdTZKMkMySEtE?=
 =?utf-8?B?Z2R5V0plczdBTjRSSVphZjFvUnNEVkU5TzFPMnUwZUdtSVdpclZ2LzgxYXVC?=
 =?utf-8?B?RWtrQklvL0VxMk5XTFpyUTJoUEU2SWJDUW8rOUtZK3VneC8rNEJtNmw1RmlP?=
 =?utf-8?B?bk1ja0pISjl6ZGREVHdVZ2NscG15RE9vNkMwU3U0eWZwZEQvUE1ibVE4QjFr?=
 =?utf-8?B?UFU5RDl4UFFYL0xlaDRHSHJmRmhKS1VVTVBoMWN4elVsK3pRek5JcFhOUGlW?=
 =?utf-8?B?VkRkTDIxWkh4VWRwQkV6R2xwU0RENFc5aHBkZGg1R1c5VW55Z2F2N2puWGV0?=
 =?utf-8?B?Q29Nb0RyMkdKZXUvajQ5SkNjOE9yanNpTGFrOHVkdDBTKy95T3pMbWNoNUlM?=
 =?utf-8?B?RFlZdEVLbXo2dlpYYnphZVlDRjQya2JuNFZpbTdVa2I2bWxQSFQ4Z3FZVmZu?=
 =?utf-8?B?SUJCOHZlQmlvcU82d3lQTE5EaVlycHQvWjNPMHRJTmhMUmpTd3U1aEUxK1Zy?=
 =?utf-8?B?TUpveXVUT09EbFhPRDJPdVhBZWlkdmw0WndSNzZjNzNhanNjOXQwQ3RnYm5h?=
 =?utf-8?B?SkREQ2JZODB1bUZYRUQwMW5MbFh6aC9YVWJmTjZJODlaWUVXY0xBcFU3Q28x?=
 =?utf-8?B?UXRTL0NGcjNyVWRrUTJRd2Zha3RNTmZVQXQ3cExnMDRXY1kzam9yRVNwQWd1?=
 =?utf-8?B?OVpUeHFGVEFJOFVSbWVjMVJkTTEyUVQ4ZmxoRjNBcW53ckM1cnVONnBIVno3?=
 =?utf-8?B?ditnekZKOHlxWmNQdWt6Ung1UHhXRGhsNk5pT2VNMTBHaDUwaFJlQ0pISVRH?=
 =?utf-8?B?eGRhLytBc0RLdmJkUlk5UHpyajdwdVVXMzZJQm1pZlo5WjV4eGppVkJ1Z0dC?=
 =?utf-8?B?eVBsRXF6VFp5YTIvWW9yTHBIeEFMUjhOYmdIZlR4c3VRSC9mSXZUTWZaNE9I?=
 =?utf-8?B?Q0N6Mnk2ZjB4czgyZWdyak9hOHBETWhRdHdKd1FXSitnZHVhbnFkWGZiK0dT?=
 =?utf-8?B?ek5Kai93bWxCOVMydFhoOHA1Rk9sTjVqMUszUXRPNkYzV0pVZGkxRmlqb1Z3?=
 =?utf-8?B?UVBNd0tSRFFVdnBKVlMvVi9IVVlyeUtWNzVpNzRMUzZTMlhpRk1hbVBrdnBN?=
 =?utf-8?B?R0xFSDRFQ3I0M2ZjMDZ4MFBoRk1yODBZdVJ2cU1lUTI4ZzNFZWR6eVAyTkVQ?=
 =?utf-8?B?VEtNbjZ1WEgvZ01GNGJ4QXMrNDRad24wUlJxSXlCMG00Wkt2RFpnUVByaTRL?=
 =?utf-8?B?RDdhRGZ2aGRheEUxMVBOTFFBYTljdE1jbzkzZnE5V3RyTE5KcGF1K0VXMFNo?=
 =?utf-8?B?UXRvTlJGYytBR1VSQkRaT3lKY2lOY3BPN2lVcng0ZlpsWUsvWkhoRG0vSFRC?=
 =?utf-8?B?UWt4cVFNNWJ1cGVPL2N1WjVtSyt3dEUrS3hLQndXMkxyKzljWXVNSlpOZEVV?=
 =?utf-8?B?dTVoSFZCVXJxdmc2TG1IMGVXSWg2VDhrOHZFTGtueldmOWphZHpYN251U2Rp?=
 =?utf-8?B?ZGVSVHFIVXg1OVo5ZnQ5aHRQaks4MDlYUVJHM1I1ZGN6V09pMVVFbk9waEdu?=
 =?utf-8?B?YWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e2375b8e-8a57-4fc1-226a-08dc1ddc42b8
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2024 19:31:43.0989 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DhGmqxMfSVp6gmNqvFiHHXT5tHk9FNaFcUYHQhOQCN5cVidQpAvX5qQyENYGFVE6C4PYcKtGchlK7cKMGglz7pfB+C9UcNvCTCYGctx/y+M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7698
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706211107; x=1737747107;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8pMsHMH9Qp6szWyT4YBAKd645I3/aor23gJk3NDLabY=;
 b=QTO6n+1ntMCAjgl2xGpsUSk3RBg+ErA8KQHpRHCdstDWTB4XRLGwS14I
 YxTAr3ap7oWosWc7+d8sba8lXpYivlcs8n21A2iW0NDBWEXrzUOiRWPbU
 Nih7Fi4Dem/BbGX97Zeo8Ej5Vtm1NAuFMb87vB8EPxGxqdArcknN63e/I
 wDb+ZbswAEPKmF2jZmyt1FI4FOV46nqBVwh26WwXm1F6zuciK24GIBAEy
 l4mIVTklcFrKK+YjI7kLgpwQjmWzV9s2f6nj50OitEwXsqWijYPaExDXu
 7J/ga1sEu1SmzY+usbtfJj49T+A7VmRrd3sRXVSe3tw1H1duZ8pTc1QUG
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QTO6n+1n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/3] ixgbe: Convert ret
 val type from s32 to int
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/25/2024 2:16 AM, Jagielski, Jedrzej wrote:
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Monday, January 22, 2024 10:19 PM
> 
>> On 1/18/2024 5:43 AM, Jedrzej Jagielski wrote:
>>> Currently big amount of the functions returning standard error codes
>>> are of type s32. Convert them to regular ints as typdefs here are not
>>> necessary to return standard error codes.
>>>
>>> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
>>> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>>
>> There's various checkpatch issues being reported:
>>
>> CHECK: Alignment should match open parenthesis
>> ERROR: space prohibited before that ',' (ctx:WxW)
>> WARNING: please, no space before tabs
>>
>> Seems like a number of these can be remedied.
> 
> Can they be addressed in the separate, already existing clean up patch.
> Or obligatorily they must be remedied in this patch?

We shouldn't introduce anything new to be cleaned up later, which is 
hard to tell with everything that pops up. My thought would be to have a 
cleanup patch before this to preemptively resolve what we can, then it 
would be easier to review anything that pops up here.

Thanks,
Tony
