Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF896D0E9E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 21:22:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C5D361689;
	Thu, 30 Mar 2023 19:22:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C5D361689
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680204125;
	bh=h59/9ZeDsq45/jAC9AwNCyfdQ4l6CxbNezPmfbHEIko=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9wiPfSV4/LFd8GKnL/fZjKDqDGPIeanO/VV/e3u54e4xBJocialxO9Oe6Ydf0opd7
	 czGMp7BwjiKoJctDI/ODJ2buOBJSFEwaE1l3I68NRq1uCDHMlfvIrAG3qPOALSJQ/O
	 gYVdp6H7zadmeQZIlrJUT3Lehm3InoBN5EkUYiuy3KF+9AULWZ19IwMbmHWWa6oz03
	 H5afEHUG3/CmsGsg50ZL4drwJ95pM9jquonD3UV+hMlEcIDxMVUxJEoogorYGyI0Vn
	 2c7y16io1auBanLymtF3f/e7GyvViHJ8JM9oP+qsIQBcbhLjsm5uzkvolKexhuBCkQ
	 5Ty5XKzrq71Dg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ONHLiLpAZ_iS; Thu, 30 Mar 2023 19:22:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2081B60AC9;
	Thu, 30 Mar 2023 19:22:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2081B60AC9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CCDA71BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:21:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A46C384473
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:21:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A46C384473
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VihrnLnKj4SU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 19:21:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A1AF84472
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A1AF84472
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:21:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="338767638"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="338767638"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 12:21:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="684827564"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="684827564"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 30 Mar 2023 12:21:57 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 12:21:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 30 Mar 2023 12:21:56 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 30 Mar 2023 12:21:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mrGs6qmN+i2u03RUWeF6iCan+H14x6dAGSAtpjsvp/Tyb3OMuyjEIwoBhXu1pKCrrBggFaPmz3d7nKjmf9No8tkE6stwTBdr/cTLES+PEqpR8SjgYHbglJzkgaDZHECWv1dVFjJ/dafnvxxxA1HO0J2HcrzP4sKYpac978gUo7V5REh6+N348F8pZTj0duUM5QZrBXm5q5ZaZvhuelQtwNMV1oJVeESyQrd7UX5vKouUT7nNkrPxp+5V83WURDfTDDlgr3zSzkx3IdpAl9N7EbKEzoiYVCZLmcmZnBPLETbwLJbV5UV+OTpFgN5dX0rGoHYaUphmfPyUOVX9dM4pyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DhAigaa8j6YyQQaQH8t0kvVA+kTIOuOa/EnPGfHbP6w=;
 b=aBfm5oVbno1jMhKlwrJM79jJndoguvmzE+IbUGZ2GrbTmzQwIKH894MlLynMI3qd7E5cZGMMeHbFWBpmWgrHQ3hcBFocdhZ1vfQhEFnUgjVOCKA1F46+vuWOLObJe/daUb3NIWU0gtUPmXAUvIptNx+XpmgBProzvX9hG0HZSkHPOgYBkuRlk6ZEILL0R02CUm0X+MjMBTHjKfgmMrU3mrg5wCsZXvWB+btULo/t8U4Nu+/i7mJ6WgrUDlYdST/Np52fcUOK/CxfHBa/VENuh0Bf/NajznhBZCzG2THPD+bYgeescOWzvBzKqdKPf+gCOhM6v/DGKaw0UrLXwvufKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by LV2PR11MB5998.namprd11.prod.outlook.com (2603:10b6:408:17e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.28; Thu, 30 Mar
 2023 19:21:54 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c7d6:3545:6927:8493]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c7d6:3545:6927:8493%5]) with mapi id 15.20.6254.022; Thu, 30 Mar 2023
 19:21:53 +0000
Message-ID: <02ffbd42-e713-4b1f-b94b-aaa50b7984f0@intel.com>
Date: Thu, 30 Mar 2023 12:21:51 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: <intel-wired-lan@lists.osuosl.org>
References: <20230330191813.18429-1-jesse.brandeburg@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20230330191813.18429-1-jesse.brandeburg@intel.com>
X-ClientProxiedBy: BY3PR05CA0034.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::9) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|LV2PR11MB5998:EE_
X-MS-Office365-Filtering-Correlation-Id: 00309100-13b3-4056-2976-08db3154052a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XxedWrNuV1Qd/pFNud8giOyyvwl+UkPRyjXww1flIEh+t1X2g/mfN9hHZNtmkwY9Iulzvc06FF6Ot4OvgVpBz7somgUJvVpXYsl2yfiCdM5FDaMebeoi241l+U6FaINT/9WYIbm8XXuoRgzJJ10dCpmS+9TROdc0zxeZwkXlPdD5O199FV+ZpqWAOPgpxk9NuTg0wN/HEXjc/LnKDXIAdKh4Lg8Xla9k38tSiCZMQjNHMEwLb4h7bS6YpxmO84EYwiUMTrbqDbfhQwH63eDz6tem/kwnIsZyRBHaFef2HZEbavUmu5/jCuKfPDwEspsGB2X01Z3I+qL4J01XK+A0RWQSQEFbOL2NSYlMoAsOw3VmArn2YVepp26ISYBmXMVtuE4NX6hcNRzBHuD1A5AqcOtn75FiUZxqMNtgG2CRlHy/MjnzBAxzeapQtJNhb8tds6sLJP4api507RkEWrhHSUuz4XKCl4FcrXRlQGH/GRqYwa1h7tG6F+f4doencpiFu9GsJwxymUXn8oKNxKubkH9pIr4d86V3j7gGWy+MQlgW/yDFmUzSCs4rAeFe77kL8YsyT9cLQL+vZIMH5gWISJg4Awd9gpVKviX+ZByCifmz6zCLq5EUEUaEDMbR/4fOdBdk7M6EYIkNVsmmKcHLiw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(136003)(396003)(346002)(39860400002)(451199021)(6916009)(6512007)(2906002)(2616005)(83380400001)(66476007)(66556008)(66946007)(8676002)(478600001)(26005)(316002)(6506007)(53546011)(44832011)(186003)(36756003)(86362001)(38100700002)(31696002)(6486002)(82960400001)(5660300002)(41300700001)(31686004)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?djdUM2xrenJiMm45bWNWaHVEcTBEa1Bhbmw3azJ2bkkwQ1pLSU9KdTVOSzZm?=
 =?utf-8?B?dDRqS21TSldJLzNqRmZDbmN5TUJIWStZekZMRHY2VURQelZBViswZHBZb2Jk?=
 =?utf-8?B?L2lxZ3BncGdzN3E3cHhuUVQ4Z3ZmVlJzTmxzWGxCbklZT05KNklWK3I1d25Y?=
 =?utf-8?B?MTIxUVRFaHYvKzdCanNlcXk2N3dvMWdLcmhlODd6OFFXM1lOZkhFa0haaSt4?=
 =?utf-8?B?bWtjSThCRWQwdkJHMnN1UHdsbzUrSVc1REtYdUxHVk5kNjdIUU9TL0t0YXAz?=
 =?utf-8?B?VlExOXJkWXVKaXBJNy9sVWVuRjNrMDBaUzY3R0Z4MEQyc1dUcCtXQkd4YnFM?=
 =?utf-8?B?YjAwNE5CdU94ZWpINmdFYnZDTGpjUDdEc0k4NUdzL3NKOGIrRStCK3N2aW42?=
 =?utf-8?B?ekJXaXJHY1gwclZXOFVSMGFnRFpubnRpSGJtNVZvL2dyR2hXeVZCbHFPcGs4?=
 =?utf-8?B?dmhGeTRLTWR6MjNsUUNFWFJJcE9DRE5vY3JWclA1dFRVT09VMllsM1A1VnRO?=
 =?utf-8?B?TXI0M3ZMbjhCaTFCS0xua2dxRDJ1MnhRdXcwdXkzOXhDcUp5ZFdySVlNczds?=
 =?utf-8?B?UjFvR2dZVHVOUVJrdTM1eFRVcitRZFF4S1RIQ3JlRGIwZ3o5SjNPelMvUW1F?=
 =?utf-8?B?bXp0TkxUWlN1M0FGSXlmbmNPY3RuY2tBS0d0bXZjVEl5bWZkTU9kMEY5ODJq?=
 =?utf-8?B?MGladTRqbU5qVVlBMm1vcjVheWRLWi8vR1Q1c0ttZXJlbXVjQVdyQkFhWEZ4?=
 =?utf-8?B?bm5pY0F0a1k5Q2F4Nm1GU0ozOW8vcGNtUHEzb21kNVNIZVp1Skt5S1Y3Qkk1?=
 =?utf-8?B?WWRHRW1hMGN4bjU5MXhxOERZTWY5bW5vSnh5TkNXbEh4MlBvTU9ubkVhdUR3?=
 =?utf-8?B?M3VlUFZ3eUNzMlRGcldpbHE5Mk9INFFSOW9Sc3F4REJ4MSs2Z0FCTTBRUVdX?=
 =?utf-8?B?U1cyTEZFWTVVUmNVNnpNQy8xaW9jVWFqbTZOdG14N08vRjNydWwwQzlwRVhR?=
 =?utf-8?B?dm94emxZd0ZhWE0xWnE1bW5ZekgzZjZMVXArQmcwV0pGRnFFOUw0ek5RK0RB?=
 =?utf-8?B?bnBkR1dEMnVuWUVodEc0bnJ4WTNKMk5HM25oWHFtWTRra3c5am5ZWkkrVXlr?=
 =?utf-8?B?aGc3MG9FM0t1c0V4MnZ1ZlZmazdQN3Z2S2p3UE11V2x0MUphU1MreTNWOEhQ?=
 =?utf-8?B?Y3N4NmFqK0tIVElQcVNYM3lPQzhtVlgzcjlJMWJFV3ZOaEVzRzZnM0Y4Z25V?=
 =?utf-8?B?THp6aWxWSkpHcm9EMlZmc3J6SnBYQ3haOSt2WDZYNHN2aERqKzJFUWpwRG03?=
 =?utf-8?B?MjFqUnU4Q1pQWnZ3WitPMzRWemVmc3JEMmhtQ2JZa0cxSTdUVnFycnMxdFFU?=
 =?utf-8?B?eWZNeFJnaU9pc2d6MzNZbSswRWh3Nml5RWwyc2VpS2xLYnBtREFsckdjVmR3?=
 =?utf-8?B?WXBjbVllbjFtWDNHMVdrczlIdEdPTnRsb0g5TkVYNkJOQy93aEhYS1FvZklC?=
 =?utf-8?B?U1JSZERvOS85SXlVVitPd3ptVDErYTczTTY5VjNaUnRmM2dHbmo0Z3lNV2RE?=
 =?utf-8?B?dXFEeW40d2MzbWhqWDVGNDYrMHhwdFdBY2Vzc25FeFJ5bzJGN2w1cnVVZEFY?=
 =?utf-8?B?OS95LzJOd09yUHYrQ2hsNy80R3hBeW4wSnBldzJ1QTZLQ25uWEF5c2oyWUY2?=
 =?utf-8?B?TTFYTjkvR3hGTjhCRXIyeW1NL0tUMk9ldm1qYzBsYVh2dUFvUlVwNkM0c2NG?=
 =?utf-8?B?ZHljeEpjTWVJU0d6ZzRSYlJMUnNxWHU5VExKN080M3hkNGt0clRlZys1R1k3?=
 =?utf-8?B?R3BGT3V2QTNqR1RUZWRNT3ZtenRCbEp2SHVPTlRMVjUzZ0hjMm5vTnZ4SDZ4?=
 =?utf-8?B?S2luTXVTYzJ0SE5Nc3I3dCtaL2xCSkczZytRNjQ0c3RkYys4UWgxdFdnZ2VH?=
 =?utf-8?B?UlVWR2UvU3NaL1BaZXRNOWVsTkVzbHEzWlNaZVpTNHNaTlNydmF0OEx4WkN2?=
 =?utf-8?B?bzcyOC8vR1BqeDREQ01ZWWpRTnRvYmZHcW4zcUp0WlhEK0hVZEU3cVlDdjNW?=
 =?utf-8?B?Vlh0eEtCaTlmWHM0dmx6dmpXNlp1WWVKSmVZbnArVi91V0lPM3dUblZCaEQ5?=
 =?utf-8?B?cUhSdjF6eS9Ud3BvbUpERU5qcDZUVWJLUExGeUs0VFFGL29SUzRhUGN4ckdy?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 00309100-13b3-4056-2976-08db3154052a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2023 19:21:53.8689 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rq7+TyfrJLWYQSjQJ3+bYMfT44xWpgvUOLr8xZzof87GAQ7282kZAtRI/m7ToLnrGSqEl1nTTuEWn6Q5bA316ZUH1/wTdM5/zuY4FI4/vXU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5998
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680204118; x=1711740118;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tWStC7h56laBVKmSmnO0jjJV9Wjx6WhS/Yi+mO7xZK8=;
 b=EXu1LeaNC+Un0vQbQUckZqgzts5Oy4HnG7B0GLQDRX14wLyK79yjRbKi
 ytnDYGwtHxU7skir7lXPmtXyy6stPAT/WNgyf2/6SR22TgfA4WPh2tXbZ
 kmbzx+cr+nLg8WVq2PSJabzFIcm8p9ca++l8YboP6yIppNbZcKXoRnIGh
 /uc8fw+ZkzPx5pCdsBIv8EysrNIcE1ShyidGXZWVazFbdWU0W3UQDf5UP
 2J++wYQ6kK3i9n/yh2b/wvUILag7YdcoUkdl+2i2Fwz6FS+Z/6RaMMCMa
 HqOsGkcPNpAL1oAcLuQoy0CtDADcG1WPO3m6XN7wxRj/tRA9sRCYrQxHe
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EXu1LeaN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: refactor to remove
 not needed packing
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMy8zMC8yMDIzIDEyOjE4IFBNLCBKZXNzZSBCcmFuZGVidXJnIHdyb3RlOgo+IEFmdGVyIHRo
ZSBjaGFuZ2VzIHRvIHRoZSBzdHJ1Y3R1cmVzIHRvIG1ha2UgdGhlbSBmbGV4IGFycmF5IHNhZmUs
Cj4gcGFja2luZyBpcyBubyBsb25nZXIgbmVjZXNzYXJ5Lgo+IAo+IHRvIHJlcHJvZHVjZToKPiBt
YWtlIEVYVFJBX0NGTEFHUz0tV3BhY2tlZCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlLmtvCj4gCj4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfY29udHJvbHEuaDo3LAo+ICAgICAgICAgICAgICAgICAgZnJvbSBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R5cGUuaDoxNCwKPiAgICAgICAgICAgICAgICAg
IGZyb20gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZS5oOjU5Ogo+IGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYWRtaW5xX2NtZC5oOjYxODoxOiB3YXJuaW5nOiBw
YWNrZWQgYXR0cmlidXRlIGlzIHVubmVjZXNzYXJ5IGZvciDigJhpY2VfYXFjX3N3X3J1bGVzX2Vs
ZW1faGRy4oCZIFstV3BhY2tlZF0KPiAgIDYxOCB8IH0gX19wYWNrZWQgX19hbGlnbmVkKHNpemVv
ZihfX2xlMTYpKTsKPiAgICAgICB8IF4KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX2FkbWlucV9jbWQuaDo3MDU6MTogd2FybmluZzogcGFja2VkIGF0dHJpYnV0ZSBpcyB1bm5l
Y2Vzc2FyeSBmb3Ig4oCYaWNlX3N3X3J1bGVfbGt1cF9yeF90eOKAmSBbLVdwYWNrZWRdCj4gICA3
MDUgfCB9IF9fcGFja2VkIF9fYWxpZ25lZChzaXplb2YoX19sZTE2KSk7Cj4gICAgICAgfCBeCj4g
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9hZG1pbnFfY21kLmg6NzY3OjE6IHdh
cm5pbmc6IHBhY2tlZCBhdHRyaWJ1dGUgaXMgdW5uZWNlc3NhcnkgZm9yIOKAmGljZV9zd19ydWxl
X2xnX2FjdOKAmSBbLVdwYWNrZWRdCj4gICA3NjcgfCB9IF9fcGFja2VkIF9fYWxpZ25lZChzaXpl
b2YoX19sZTE2KSk7Cj4gICAgICAgfCBeCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9hZG1pbnFfY21kLmg6Nzc5OjE6IHdhcm5pbmc6IHBhY2tlZCBhdHRyaWJ1dGUgaXMgdW5u
ZWNlc3NhcnkgZm9yIOKAmGljZV9zd19ydWxlX3ZzaV9saXN04oCZIFstV3BhY2tlZF0KPiAgIDc3
OSB8IH0gX19wYWNrZWQgX19hbGlnbmVkKHNpemVvZihfX2xlMTYpKTsKPiAgICAgICB8IF4KPiAK
PiBGaXhlczogNmUxZmY2MTg3MzdhICgiaWNlOiBmaXggYWNjZXNzLWJleW9uZC1lbmQgaW4gdGhl
IHN3aXRjaCBjb2RlIikKPiBTaWduZWQtb2ZmLWJ5OiBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5i
cmFuZGVidXJnQGludGVsLmNvbT4KCnBsZWFzZSBpZ25vcmUgdGhpcyBvbmUsIEkgc2VudCBpdCB0
byB0aGUgd3JvbmcgYmFzZSB0cmVlIChuZXh0IGluc3RlYWQKb2YgbmV0KQoKc2VlIHYyLi4uCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
