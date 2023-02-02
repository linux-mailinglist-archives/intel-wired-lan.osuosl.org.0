Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADA56889CA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Feb 2023 23:31:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C9850410D6;
	Thu,  2 Feb 2023 22:31:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C9850410D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675377070;
	bh=8BZp0vIzcYszhFE8CxuBsrOGPkjlAWCmRksttGlJ1pQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zMQAZ4NJgggKkKDZp/U8TuSm9BlAqtBLKiTGtR+g76301bb3Bu2AgH2/eaCxYiL4x
	 tIB9ywFfNfQpZ8DJa66oYpDKM3y7zlX++ouQqygrBbx/X//BjZfFpIk/LxicTdgGRQ
	 UyI4zVv0h/caFUtbbSTtQWSCHvWRzaGKFs7Ck8bDbdwS4+Q7dGWDpepov5BNBuN+0p
	 KdGknOOR9YHoViZzmx/pnKrO1FF0wc7d+eyY6xFVJIhYnv/6biSb09Yct2VeEsNEjF
	 8NWmNJEDm4bpG6bvT4xQCKSNBNmsGaHqxSzFL4m6JC/9KQRHjobbN+rt3878hIntnZ
	 VD2MiH9+Dg2xg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tiSjdNk8fU8I; Thu,  2 Feb 2023 22:31:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0506405F3;
	Thu,  2 Feb 2023 22:31:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0506405F3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D0E4B1BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 22:31:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B64F9418F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 22:31:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B64F9418F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OaQ5lboVZvsK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Feb 2023 22:31:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A989141881
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A989141881
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Feb 2023 22:31:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="326286181"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="326286181"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 14:31:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="789449703"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="789449703"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 02 Feb 2023 14:31:02 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 14:31:02 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 14:31:02 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 14:31:02 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 14:31:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MTTLjyAvflbOoegoa8+yU3PAAZDSF8J4yTqaKrnC3nWAz/9iPnCDejZ631UeNbrlgswNKQOwJRZ8uVEYu6+ds0s4YdKYNdqC8brZZ6WH2VkdurLdEZ8vcoIYq24YbxJ/ibaGtMLlN8iUkOFmVTRq87ONsvNnf2+gpSjXWkjZJTpqVOnmre0ebpcSmD2WSTXacxFViCNBdSglJbH6k1ct6o85o/2cR4qsnVBpjJoTWsqSM4kFIQkcDdtrjm8zrZVr0c8H0oUUgsLHa5aaEEHaVYWdgQwCMaEWTMy6L1EkpdSpFwSYXWrCrFK2AtKUQghBbgU3dA7Que3cEpcgLMl1cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iY4MUyUygZvfTOBuOUP3T/Y7yTI/TbLmRjWWd5SBXFY=;
 b=enMcN1F3Tcu/Ko2V/ZnHRDrrS3zeay7Nc/9ED6IWRh0NGdTw59or9T4bIyxHYmqjPu+LVAESn9+4a8hLLCNrVeJjFT4qFpWy34nb18YRbStPwtQPXqziVnhIgX4unOWLpgD1rQxujHBl5zOeHcilytbBrx+Qj/HUW+Ga43b42Z1ThE9nuXkSLG3xU1TdcHNcArOXFUdeuSvkwIiesWUaBADhd4sEY2rlHX6iwS5U2ftKWtT0FB6jFdmKSlTxhkz7F4/h14VN4U16kMrllG8yMGO63Tehu+qP7QYkbYre4vkw9UOIvUQZIvnEIgewVg2ZZXGIban6Lt/4invG1NfHNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN9PR11MB5321.namprd11.prod.outlook.com (2603:10b6:408:136::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.25; Thu, 2 Feb
 2023 22:30:59 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6064.023; Thu, 2 Feb 2023
 22:30:59 +0000
Message-ID: <0b919f58-b80a-6766-c583-dd645cbdea49@intel.com>
Date: Thu, 2 Feb 2023 14:30:56 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230131074951.2664690-1-jan.sokolowski@intel.com>
 <20230131074951.2664690-2-jan.sokolowski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230131074951.2664690-2-jan.sokolowski@intel.com>
X-ClientProxiedBy: SJ0PR13CA0031.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::6) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|BN9PR11MB5321:EE_
X-MS-Office365-Filtering-Correlation-Id: b7834095-3e9b-4a1d-2f2f-08db056d28a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ol+lvzuvorpNi4nT7UgLsCIPB4h4ERhAtLIzBZmpi3LplHauopXE4XsUNjfe9Ye3iS2F3ohfkV6CbyZylKnp7IDk6n7+QRn7bwrxi+BQ+XShIasQhb5aoco9e19tdY3wF31zub5X2r/WwjPxAgf4TeKOMQ3j/govgZrQ1ONTkiWW41hhdWCREzhfqfoBeBaj6cBDlerG0q5mY3re9OrSCLf5UYqt6Z2/mOkUDG2VxNEtL5nZrIxeKWgTMyR7k0OC6IwZd69YWJpRBgYfHuXFhr/RPjCzBKe72+6NwB25OK4j/ws8DCOQVR9oQ/SI5Ojl+Q8khGeQ8XReYyz4WCkcncd149PpToeyqQoO+fZhkmoad4yLhaQ5S1o2jorWOFnoxe/yUbaFbpoTIfQnLcABrZKbZms8s56CMsIWwCt53p/LxLiXAfsImXrWHE4Lg0EQPdChXoSo2Cgfb+WgIWHdACcIM9F/MSca6R5kBixIisqgFsSUHPGpqLb0wW/VZ5xdY2ubaXmd3CdTJoLENqqjCi5puAQs7RZXaVHYYFN2oZ6USzsiwWO9Ak3k4a0UL4oLoKRxp+m3Yd/z6E+WyuztvMNQAR6CyXUjbyNcO1O7NXmwD8bJCkwSjTb1QE5kVoqosrlByDCsxW+EMugFBkXnGCPIqMn7rwUyrnzrPNUuBAe9cvx3LqK+48okRVTbjXuXaI68Pg3ReP1SGYGob1AM7vP+y0bTLkaw+Hk1jKqPAx0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(136003)(39860400002)(396003)(366004)(346002)(451199018)(5660300002)(31686004)(41300700001)(8936002)(66556008)(478600001)(4326008)(31696002)(66476007)(66946007)(8676002)(6506007)(6512007)(53546011)(83380400001)(36756003)(6666004)(186003)(2616005)(26005)(2906002)(38100700002)(82960400001)(86362001)(316002)(6486002)(107886003)(54906003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MkZoVGtuemJSSy9ONzc0dlk1d2ppYkwxTzNjVUFoS0JXc3dFTzVVa05MbTMz?=
 =?utf-8?B?UWhZZDJQcnFhQVhEd0JWM1hnaEdwZGh6Y1dEMXkvQTVPZkV0THhBbnpFRjZJ?=
 =?utf-8?B?dmQvRk41TXA5OUQ5UVdIakxUVHBqNGFHT00rSSsyZWJHRUhVSURjQVJOYTFR?=
 =?utf-8?B?dXQrdXhodTBWRUV5RlpFZDJYR3J0Zzk2Sm83aDg2TmZZbHpLdVNBemNPYWdn?=
 =?utf-8?B?U2VuYVMrTk5nbTd1T2l3MnNPMEIwYUpnRitzTEE1Y3lxa3p6ZTIyZjE0My9p?=
 =?utf-8?B?akdCSEwzNVpJbXIxTThDZnNTLy9iMGxFdUMxVWxXMlk0bnRkSHN3d2lDT0JI?=
 =?utf-8?B?d0NyNDVFbFBJMHQyaVd3eWphTi82Qmd5MUZWUXBoL1FzNi9HN09GcFBma200?=
 =?utf-8?B?Q1BRTWoyMTBFa0VlVWRNTzR3QjF5UjVSL1VobHF4YVdLa3JacVFjMkg4M2d2?=
 =?utf-8?B?d1dwNnczK1crVmJJUkFOYXFGdXZFaXpkUW43ajFQdEQwaGFUekgyT1NwUkZ1?=
 =?utf-8?B?Mm1ISm1tOFg2YjQ3R0ZCNE1HZDhGT1V2eVNFUXZUU2YwTitLZ3Z1NERaZVor?=
 =?utf-8?B?ZVZoQnl1SmtORElKMHNPVjlMWFdFL2FKV01xaVBYZXZRbThOSzRCWGZGOXVI?=
 =?utf-8?B?cWZ2YVdYZTNPOGlxcDk4em5GNStJRXhSY0hQUTVKVklCOVdWNmcwQW9yV0k0?=
 =?utf-8?B?YnFkaGdmYSt2WXZvSFZpTWlMbnEvWFZSOXNCMWpsZUJhQmJTeis0T210dnZR?=
 =?utf-8?B?bGVpKzJjQUIxMHRJSFVieXJXbllKVHBuSjZXa2RERUpDWXZnQmtkdWw4b05i?=
 =?utf-8?B?MjhUSFNCWGJWSy96RlVCc0NVU211M2hNd3NUakx3UG9xWUIzbVJhakdQZFN2?=
 =?utf-8?B?OEVIMzVmL09ac1RyRGFiSXI4a1Vld0R6cGpKNGFGYkZaVlVVaUdRU1NwaGpm?=
 =?utf-8?B?dUJhUWxaalVhRTVDbEllWGlmSHBERm5YQS9vZnBWbnFVTXdnbG4xSS9jQ1Ns?=
 =?utf-8?B?Sm1ZTFNKcWpvYlJYNUtaQ3ZaN0pXaDdnMnhMZEw0YW0xbUpLSVh2RVBTS3Jr?=
 =?utf-8?B?UTlsSCtyNXZFbDBUOXhzYktBNE0vUnVqN3JTTm1UOFozVGxYNEZldGVBMWFo?=
 =?utf-8?B?UWk4RGtMTzg3eVROalcrWmhaOHBzYVh1YkJ5ZVVyYnY2Q2p2R29UMzFwZnV6?=
 =?utf-8?B?NDBJTG44MTd2TmVlUGxoUEFRQWxTdjd1bkdXam1OMktLMTV3Y1JTc0ZLMklI?=
 =?utf-8?B?MUdrWHdGbmE5WVR4MFdGT0xUS2R6cThJQzFUZmhHa1lzRHJmQldtUXdNSDZr?=
 =?utf-8?B?c3MxZlExRXc1MTV5NkxXb014UDg4YkIvY3dMWFNtYS8vVVhoWDlXU2tRLzhY?=
 =?utf-8?B?SE9VTlRhZzRHc2ZZTHFhQ2hqODg1UFJlRktNMnR3ZGtnOWpiNmx6ZnBnRW9J?=
 =?utf-8?B?N0NaZTVTNi9VN3FOdzBNYW5kTXc2NlhuU2NMN0JNUVM4bXBXbURuL2pzWTll?=
 =?utf-8?B?ZHloU0pXektPS2huMEJBTEpFYnRWUlNKcVJoWVRYOXNrWCtZZXRlanUyb2pQ?=
 =?utf-8?B?N2g2RTBPNmh3eTBxc1U3MVc5SDk4d0pkVnZNMGRnN3l2bmtXWDczZkpnM1R5?=
 =?utf-8?B?OHh3WFV5MVU4OVRSaUFRV21YbHFseWxDamtSeW0yOXF6NXdwaVlCSFF1Sk9I?=
 =?utf-8?B?dHROYmhnSktXaEdIaytWR1p3RERnOE9Fc1Z3Y2s1RC82ZDhuc0Y5SlBCcWh1?=
 =?utf-8?B?S0pPYks5V2EwRkxNTXJRL2lJd2gzRHBzU3UxNktiSy9HbTdZN0tNRDRWTnVC?=
 =?utf-8?B?Tk0zcFRJa3ZsbzgxTzF3eFNiOE1QMk05K2VnOVN2UklZRnBUYlo5NzBpRkF1?=
 =?utf-8?B?cW5QcE82b3U4WmxYQTFnd2x1cnBKeXUzcU5qdW5CZG56ZWZtYkVibnZzbTBi?=
 =?utf-8?B?M0FxNnBXWnQ3SVN6ZlNyMGxlWkRBbDczaXZhNDQySldmMFJETDNUdHRoNkpL?=
 =?utf-8?B?Y0x3djJoOWJkS0E2K0g3dG1Wd3JlVFJOMlUrV2laNmJDSnF3b0h0K0t1TDFR?=
 =?utf-8?B?VjZrYW4rT0QxdzFDS0xWRjhacXYrTTRKRGs2elRzTVRmTVo4M1lOdTRCVFBl?=
 =?utf-8?B?M3E1MnhyV0tTaTVNSk45eEkzTC9Pd0tGWEg3Z0NFTm5UREZNMHg4ZmwrQlZI?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b7834095-3e9b-4a1d-2f2f-08db056d28a0
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2023 22:30:59.6092 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a7EXhQ8MVwAVl/jjFkiHoJENOo3w+KU+5Ma0G9/hwr7AJ33YBJu66aP/YFiaFAcoT4YzK07woja/F+L8V/k97cZhGiimYLyAYTNSc12/DVY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5321
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675377063; x=1706913063;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t/0D0yYpVUXEvoA+nA2PdWt5QDXYxZA6qmtssgQan7c=;
 b=YilWuDf58hVxvpo047t1c5QxpAvBY88MGQ6MScSxtw0bonWR4FTc4BS6
 WFiu2lxZ9u+b0vGGX9NMiSw67icfFWCsNwkI3vrpGTs/jbg0HqkgA1AU3
 ON8WMLBFSdsNTFheblrhMWzzl4J4xTlsGeZqAS6uB1J3Ht3jCipTDZQUB
 pjedkZ9ofrBcebXukxQ45NLnc3gWQMZ3P7vVKT/Ya+GsALeewGW42T5z+
 2rWyaoZUyT1p65AxUH7nW/AqeOYz7TL0w/AnvkV1XptQ/gsfqcxef0C7L
 fHnkw0mi0l5qwu7xUJRUD9OnhHL/VAZL0/7YFqCAMd69TThF7VFA/0eJR
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YilWuDf5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/2] i40e: Only MACs from
 host must be preserved
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
Cc: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/30/2023 11:49 PM, Jan Sokolowski wrote:
> Only MACs assigned from host must be preserved after VF reset/reload.
> Added vm MAC list to filter vm MAC request from others then

Please use imperative mood

> vm MACs do not preserved by host during VF reset/reload.
> This list is used to filter the MAC addresses list restored after reset.
> Without this patch host automatically restore all the MAC addresses
> after VF reset/reload.

How is the code doing what's described here?

Also, patch #1 is allocating/adding to the list, but it's not being 
freed until this patch? There should be no leaking memory in-between 
patches; each one should be able to stand alone without any issues.

> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Co-developed-by: Kamil Maziarz <kamil.maziarz@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
> v4: Moved some functions to earlier patch to fix compilation errors
> ---
>   .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 22 +++++++++++++++++++
>   1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index f6b5d61cc9a7..b9ebfd724f54 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1085,6 +1085,25 @@ static void i40e_del_vmmac_from_list(struct i40e_vf *vf, const u8 *macaddr)
>   	}
>   }
>   
> +/**
> + * i40e_free_vmmac_list
> + * @vf: pointer to the VF info
> + *
> + * remove whole list of MAC addresses for VM
> + **/
> +static void i40e_free_vmmac_list(struct i40e_vf *vf)
> +{
> +	struct i40e_vm_mac *entry, *tmp;
> +
> +	if (list_empty(&vf->vm_mac_list))
> +		return;
> +
> +	list_for_each_entry_safe(entry, tmp, &vf->vm_mac_list, list) {
> +		list_del(&entry->list);
> +		kfree(entry);
> +	}
> +}
> +
>   /**
>    * i40e_free_vf_res
>    * @vf: pointer to the VF info
> @@ -1160,6 +1179,9 @@ static void i40e_free_vf_res(struct i40e_vf *vf)
>   		wr32(hw, reg_idx, reg);
>   		i40e_flush(hw);
>   	}
> +
> +	i40e_free_vmmac_list(vf);
> +
>   	/* reset some of the state variables keeping track of the resources */
>   	vf->num_queue_pairs = 0;
>   	clear_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
