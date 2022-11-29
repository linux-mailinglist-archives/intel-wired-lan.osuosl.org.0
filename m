Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EEB563BFB1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 13:05:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F6D1405B9;
	Tue, 29 Nov 2022 12:05:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F6D1405B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669723518;
	bh=eb+DInnSIiVbJ3i1YQ1o++R3lug5WdJyBMLmqRDIA94=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xxsPFeQwjr46rOHBShWpsXiUMHQV1XcUFhJISEK2U3T3h5ZVnW9/tG/6mJYIOc5sm
	 zAKKM0s7R9XcRgUVdDQOnQJp/xquvQRRXysNjfjAtQkLmCAlZnyFeXE18gfpQHEJsc
	 EcOfzmluDp00LuRuMVuISakiQEop1SySxIPgJznT4IoeD67vxObW+6pZ2XsPnYKTl7
	 18flc4ZUDyrKYwqTFe5UjW/i7ZKdYQykjUw8y4Il4j0NszO6zMX0HDnaKnKbCIew1n
	 ZPkvz5yoMJ5bQsdVYhv4JpAx2tn1zOCqTXOUtq+Y5cCP3JEDhrIM/7JBBxuuSkIsUw
	 Zs8QQIXdejMZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7m6G694l0hTG; Tue, 29 Nov 2022 12:05:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 616C1401D8;
	Tue, 29 Nov 2022 12:05:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 616C1401D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CCC6F1BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 12:05:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AA77E40863
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 12:05:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA77E40863
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GVzr5UjIC7do for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 12:05:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65E584089F
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 65E584089F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 12:05:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="377236847"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="377236847"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 04:05:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="786017032"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="786017032"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 29 Nov 2022 04:05:09 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 04:05:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 04:05:08 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 04:05:08 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 04:05:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JHG17Qw5wv4LznWDCLrBYg2I+TIo2/G681glDOuI4IULatOhTpynssHEFnyp85UtIq1812J9kbDsAM+ZnYsIfqdr6uHivu0bhygsQzY2lNZ7/HBHQgOJ5+l+DezKZQx7hzxx0dcFAk3rZxXmcvm5y/TRE4YfHwnPR42swlgTvwQdYAT5MqBeqgvho8bxxAQlRdagTiSXatljEPZ7gockglaiOSrWnWjbuSlh9ZBDgdb2uyuSuHFUQ5AcQWFOB6v2nbJInOuFjybifBZ7nlUSzZvECdSV1IimkjBDFyzOHkw9yzMFC6DD/BbXhkZUNrfm//mWjiMlD7DasHP6N9LRPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oCMf5lOLtZll5JXOzaPiH6UkOb02Cc7o4YPNiwrYfqQ=;
 b=CDDctm3lMAaCghBEU9tCnOp1P9dkYrk7T2Hs+465lmm+Z0VnOGCRIRaex1uRDq0if3rEI+uXT+BbcVoNhJG1e7lJyPXxr+5tmJ1i4EtrraoDza/hSg8eyt5tDSg8cEAf+BK15RpTvqsa8uq4AQuY75KBT5b1L97lzyvylkt68ThxoX8y+Mbo+bzl1ccaUsFe9ZMfV9Rc7yxhVWGdCCZexAMknyC3otLzkowBeugrBHxbRfDiP/fAbSsA3Sd4i+zrknCJb5rkK9rwkPRew6c5zDhOmim4yGzfLnuXKEvadEJzWQZSQxhYTeTO4AyK/rsiNKbkkUuzed1QCcNrvurIKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12)
 by DM4PR11MB6017.namprd11.prod.outlook.com (2603:10b6:8:5c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 12:05:07 +0000
Received: from CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::57ba:a303:f12f:95e9]) by CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::57ba:a303:f12f:95e9%3]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 12:05:07 +0000
Message-ID: <05ae38f4-2e9a-7d69-91b9-f983bfdbaaba@intel.com>
Date: Tue, 29 Nov 2022 13:05:01 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
 <20221128214749.110-5-paul.m.stillwell.jr@intel.com>
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
In-Reply-To: <20221128214749.110-5-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: FR2P281CA0041.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:92::12) To CO6PR11MB5603.namprd11.prod.outlook.com
 (2603:10b6:5:35c::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5603:EE_|DM4PR11MB6017:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ce7f493-7407-4ec4-919a-08dad201f4b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dooLE5yZsZZDeOkrHce3bsysQlOyicZ34y2JvoRb7auBridUN03hqZFawvpPcJVa/dr54NVGsnA1ifrzpLvYni3MJPZ97LwwYZ0RCKPjg9Ad6LT29hLOCjFnud004vK2jjmKUtOK1O+jefMNNftmDE8H5AIoUkyIs2mLpUza1RtVwpxsghknBHbr8obRghUUhwZGeFaScWu0kwaqUxptbwY7cas792xL6zY3lik5j/avAY9bhRxwGHrl4FsZP3l1U1jULlmc+zrOKVQ6Not1GZ/VeGnTO/nRRRj/1Rs6V3BjVJyBHu1EfBo64xUiFymuIWNZdnPJNQxgiZcz/2zqBpPLkbNwYcfYD/Yvb/YT1tDKImvrXzPJVgFW8x2AYV4Q1EOjkM8VOZTlYmw5TwUsocSHZGrSgStai/ZVsW099MHbtJ8Egygi5WOZdEhadgaPT/077aGicwcWQclFJsXLQS+GIK7k5WXYNqIRN4t15qKvAhgcMaHmfqpMPUEuyC2vzojHctB+eV/tcJo7aS3WACom8a9tSIHD+Q6zNZ5OigaUKQzorWkBF1+lPP//47mwJaF4slljibJAUMmUpGzClaQUWs5D4lgyhktP6WtL60md1Nq51oc1ZO6WtZ1NTxt6Bytgu+MvpaXsYsE8q1afzU6/PMGPliFmxBlcdt7GfEfbVnBoQO8HnwhKsdIQLdYKcBZYhxFgja1SD+bRQ+K9e3QVyb/SKpXkxBKH/GEdq8A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(396003)(376002)(136003)(39860400002)(451199015)(8936002)(186003)(5660300002)(8676002)(66556008)(66946007)(36756003)(66476007)(41300700001)(316002)(38100700002)(83380400001)(82960400001)(6486002)(2616005)(31696002)(6666004)(86362001)(26005)(6512007)(478600001)(53546011)(6506007)(2906002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bG13am92TVhzY3ZmTWNjS0NVZFlXOWsyQkNrUmZzZHAyakxrRnVkM05SVVBk?=
 =?utf-8?B?WEQ0NlJLMWdlTksvaTZVZDhsYW9ydjZDMFZldEZrZHNvclFDazVJVTh6dXg2?=
 =?utf-8?B?akdhcE5yaWRjeTI3bkpOTGdPaXErUW1SUHBsNTltR1ZyWGl1SHkrMVFacXB4?=
 =?utf-8?B?VjdlL2l2Rk9VU2RQNkw3MG0wNXB2ZHNFNXd0cEdGWVdYY2lZcDhaeGVhWDBt?=
 =?utf-8?B?Qnh2S0YzMzF6YlNHbG92WmFhb29oc3EzaGRnUW9iYVQ2dkppYmNpWGN3eksw?=
 =?utf-8?B?cDNTNTZ2cHVIWU9HY0ZaVzdJK3FtM0FJVUU3dVZRNlViUUJCdFJMK0FsNzFE?=
 =?utf-8?B?WVBVZFd4VjYwNVBlRSsyWkl0cnZEVm9BdzQyc1VFMWlzSUhIMkNSelluSUhx?=
 =?utf-8?B?eklKWWpGSVZsd2JhUnJLdnJ3M21GSkwzSExiK1ZLRmYzWFg3aUZXRHp6Ny9M?=
 =?utf-8?B?dHlKWlFlRVd3K2dNc1JxcWV2WUhQWVhva045RHlDVVRoZ0xQektmanZDT0tL?=
 =?utf-8?B?UGsyTnI1YndRdFZURHVZcDBMejdtd1RxNkxiYWUyaU5mVXdEM1E4d1VkcDdM?=
 =?utf-8?B?UE9nL0VCeUV0Um1hWDMzMnpQRm02cWVOZGxDb2E1ZkNEc3d6ZU9jUHFDL3RP?=
 =?utf-8?B?ZEM4dXEzRzJqRkdnVm9mcGMyaDNTL3VJWVpUcFlXL2hQKy9BN0NnV0dMZmtj?=
 =?utf-8?B?OVVwOFQwV2E0T3VmNm5ZS2lseWExa3NmOHdxbHRiOUdCbVdZSmxkVWUwWDh0?=
 =?utf-8?B?WjJJcGNZYXkwVW1NQ041QU9BNEZLV3djKy9jYU5vVzd6UjdVcXpzZzhremx4?=
 =?utf-8?B?UENKRmxjU1UxWDNndnJUN2NpbHYyVERNTkNtS0I4aFg4c2FuN0w4eEpCTlh6?=
 =?utf-8?B?R29vMlpmNEY0OVdXNFBCMGdVRXhPVVRDdEkyRUlOR0JXZkQwZnRRTUY4cjdN?=
 =?utf-8?B?VlpwRy9OTVRqUDZQRjhPWHI2WTJMQ0NsVjBsVC94YndGWUxnUklRdURrWHQw?=
 =?utf-8?B?bDJXN0tFZFZKdHJtYUk2WTVoZ0ZST01FZTBqdW4yaXJEOGIwU3VPTXl1RDdU?=
 =?utf-8?B?OC9ISExMOUlrN3NaSFNlZlpZTUxFcm95bkkzb3c0NHlUNGs5dTNRUjlnaUlx?=
 =?utf-8?B?Z2lML1J5RmcwOGxNc3h5RVpsRnFtVG05VzFiZFljQ3dDNXUvN21UTDZ1RUJZ?=
 =?utf-8?B?M0VBbVZRYWUxUTB5TnZlTW5KWWo5M3VKNmNvemxhbzFDL09wNFArdnUrYTJ5?=
 =?utf-8?B?QXNPa0lreVJRaW1tbElQRERJRU1DQm82eU5xNXN3cXUwdHVMcUZFTVNKMzRL?=
 =?utf-8?B?TUNHQmpBVlhCak54WXE2R2lMVmNDRnRBSTN6Rjk5WWRLNHZzdkJJNUxjb2ZU?=
 =?utf-8?B?czJYTFBTWXBCNDhiWG5ydDFRTnE5YjRINjZhamxRdEdKbnY3QTNCYWNFdk1p?=
 =?utf-8?B?Z1BvTU5GNXMrek0xZkVhUUl3SXdrdU5hV05BR0preUJYeW5GL0k2bkdTVUFY?=
 =?utf-8?B?Mk9hVW81OFNpbzRvZ201QlJWU0EwMVNLWjZMZk95WDl3bmJNOVBtTEtRNDIy?=
 =?utf-8?B?T1pKY1gxWmFGdTNTODI2ZktGa3FndDZYWGtLc1lIb1RkVXJiR0R4WERzT3VJ?=
 =?utf-8?B?MG5sZDkrVURtNWw2RVBGSEoxRmdCSm5idEZvSVhQTHRBSGdiZmIyeTdhb3RF?=
 =?utf-8?B?aG40cGpwbVlMN3dCRmIydGJJSFp1ZjBCNnRLU3dPaS8vMnBLWkdkUlkvaDNP?=
 =?utf-8?B?VEExU2hVaWYwK0xPbUZEZ05RNWJtejBsU2RDd2VBOVFlQ2Y5c1p2WEJsWjMr?=
 =?utf-8?B?ZlR4b293amlWdEM0cjFMRmt1aEk3KzdHamFkMVFqRjlKb3UxdkdVRHFEbnE1?=
 =?utf-8?B?ZUljd2FuMVdOclJNaG15RzRjS294aWoyVERkUzVGUzZuYS9QQ2VHWlRYY0R2?=
 =?utf-8?B?dHdwMGVoUjFqSFJhaVFsN3Y3a2dRd01EcFNhNjB3OXFFbWVRSWxnY0pwYWxO?=
 =?utf-8?B?MWZnVlhVWU5CZzR0RGRCTTRNd25YQ2gwb1BrRnR0eW0zeVhtaUtwRlVoNzZt?=
 =?utf-8?B?S05WU3Q4UUcySitHTER1OGlwNU5ybFJ1cU5DVnBkM203YllCR0lpdjhkYTE1?=
 =?utf-8?B?TmxISlAzZEdiT1NDSHNVbmhsY2JTcm5rS2RCbWtrTHVIMFdocGNFN09SRkxH?=
 =?utf-8?B?cnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ce7f493-7407-4ec4-919a-08dad201f4b5
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2022 12:05:07.1186 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VcADo/fwiKsi2oxIYTF7zArFtt5cx6/GAYdofEGnC48sh1L0+d5bULbaveiONBHv1ulXCfW0yKQ+5Gcyzj9VNGUg7Or+y05edHZQ9NvAZfc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6017
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669723511; x=1701259511;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=AJ8XVQuPbTkb5N5eGNY5W3BqZke6Uh1cZGDMgkxNRCI=;
 b=MshYrrvk3HkL0dGR/s7jGutXz5DS/2w7+eIF0L4gQdzlonVlwmIpBX1v
 +lBWWG18y3bRAAp8Z1bEPjlKuEN4vxn+ILAHoHgpPHAkX+AiOFmWDpaxq
 A4ersyyZ955+3rwHnhOLuK35SBrAokU6LAsKIIJv7kuQ78kKyec2U0IDR
 K/jzClcuZ9KH2cTwtBFHRamt/+719yDGR6gM9b+SwF46iRhLSHypJCPv8
 F2ozwGpAwVEfvtFHdzRSiFV/wm0ZOOWCwpWB5zduXPmXK4FCdDaHL50M1
 IF8GKcNJ9FcZrFtEqr00bkPep1LgYN4/bilr9Z2L+vRwaZYjrJ/mUVVrI
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MshYrrvk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/5] ice: disable FW logging
 on driver unload
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



On 11/28/2022 10:47 PM, Paul M Stillwell Jr wrote:
> The FW is running in it's own context irregardless of what the driver
> is doing. In this case, if the driver previously registered for FW
> log events and then the driver unloads without informing the FW to
> unregister for FW log events then the FW still has a timer running to
> output FW logs.
>
> The next time the driver loads and tries to register for FW log events
> then the FW returns an error, but still enables the continued
> outputting of FW logs. This causes an IO error to devlink which isn't
> intuitive since the logs are still being output.
>
> Fix this by disabling FW logging when the driver is being unloaded.
>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 32 +++++++++++++++-----
>  1 file changed, 24 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index ca67f2741f83..923556e6ae79 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -378,6 +378,10 @@ static int ice_devlink_info_get(struct devlink *devlink,
>  enum ice_devlink_param_id {
>  	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>  	ICE_DEVLINK_PARAM_ID_TX_BALANCE,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,

My understanding was the the community doesn't like private devlink params.
Was some investigation done whether the FW logging can be done using some
generic API ? I believe we had a discussion about this a long time ago. Maybe
I'm a bit out of a loop at this point :)

>  };
>  
>  /**
> @@ -1484,14 +1488,6 @@ ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
>  	return 0;
>  }
>  
> -enum ice_devlink_param_id {
> -	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
> -	ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
> -	ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
> -	ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
> -	ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
> -};
> -
>  static int
>  ice_devlink_fwlog_supported_get(struct devlink *devlink, u32 id,
>  				struct devlink_param_gset_ctx *ctx)
> @@ -1743,6 +1739,26 @@ void ice_devlink_register(struct ice_pf *pf)
>   */
>  void ice_devlink_unregister(struct ice_pf *pf)
>  {
> +	struct ice_hw *hw = &pf->hw;
> +
> +	/* make sure FW logging is disabled to not put the FW in a weird state
> +	 * for the next driver load
> +	 */
> +	if (hw->fwlog_ena) {
> +		int status;
> +
> +		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
> +		status = ice_fwlog_set(hw, &hw->fwlog_cfg);
> +		if (status)
> +			dev_warn(ice_pf_to_dev(pf), "Unable to turn off FW logging, status: %d\n",
> +				 status);
> +
> +		status = ice_fwlog_unregister(hw);
> +		if (status)
> +			dev_warn(ice_pf_to_dev(pf), "Unable to unregister FW logging, status: %d\n",
> +				 status);
> +	}
> +
>  	devlink_unregister(priv_to_devlink(pf));
>  }
>  

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
