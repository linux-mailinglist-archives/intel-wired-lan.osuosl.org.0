Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6911F780E91
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 17:06:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD1FC41808;
	Fri, 18 Aug 2023 15:06:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD1FC41808
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692371191;
	bh=qhrIDDDacx3dC/OD2DDXepg55FpW9xnSdG6irlK5c00=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y37k1zNdI//A3mxNPqZXKfWglzxv9rJkvqOnmwxt20XoElD3PLg0AbFa0kLre4N3r
	 IfCN318KNp1iz5/qnuwmEZlVcfJAbAOaGhg5QK0swQsKtW89Haj87TAhR+8xLk5/Gu
	 5Ami3lFyzQw9C9lR7mZtJcVPo5D69Lyx1BhLstVwu7mklcGsfzbH1Eo5HTI72iZOIv
	 6iDKY7CWsx78tYJneQZuAR/Lq2OrTmFRlhAqSi5OLeycE5ZZQf6Azur7sJ/pIm2hdc
	 nd29WIFRIsiyF6pjcD84id7ousJl3OZ6uC1meiPRokx1r2Tl+1jABelqrjpGXbAwBP
	 OjnDPr8g9ViNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oJ10MHMkaecu; Fri, 18 Aug 2023 15:06:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D5D3410EA;
	Fri, 18 Aug 2023 15:06:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D5D3410EA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 772AE1BF362
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 12:08:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5C2DF40327
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 12:08:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C2DF40327
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q7o8TI4rcpBe for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 12:08:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1489340004
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 12:08:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1489340004
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="373066795"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="373066795"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 05:08:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="764545249"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="764545249"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 18 Aug 2023 05:08:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 05:08:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 05:08:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 18 Aug 2023 05:08:14 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 18 Aug 2023 05:08:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XQ0wietqb7qEEGSLfkcQOn6sSAo1wIPzVweJxJL6VqHvSU+ds5Ms2Koidf1Tw22onwglpZdx7gr5nz75CspVSAqcB6wEQibhuRlaGy3i/cCz858IwAcyPcrqFt+iK33ej8jkXH660pg5y0AOl8VEZKUJ1aRBZK33DwL2pmeDWrShPnxjDFeXxImnQQU3GJr2e0O1NDH+a98vuEkZYh6wvRVtNMH5I2LXM3pyeI0qUWCxJkQRJDduQe9DoDOk3ryX208ueYfIXEvmUMbM/n8ZPzUnVBNJjHxsUH3Qto8jB/E14F/AN62DNvWCjFgItX0IbUE//Q4+Nn7jy/73sWp0+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HP4TlWA7+ZOb2BkE44DRSNThJ3eSovnPvg5EtaFi+vc=;
 b=BpBru7LGGGSo6gld5zUuLZKczRZ25nZe1qPzPi/0yQSXXUMCYG6ViFewHYmiC7HwrFhcBpXLINBou8kRNvuDiLmwygKhES3AxvXu0RZUW3WDY6Ie7y1/OXuLAkpocX48njpdJ7mxuUogNtRIJF8XFb7xJUzUZi3tBKw0ZHK4e5pLCTcTi9MxXpboutHiJ232G+kFocFd5PmPjHCW5o4gtXhQZB6R9TmAyufCTQeej4V1PyQYQbk7JD4VdosnG68FAdCHIIjngca3B9qDYK8D11wcif5WAIH+ozu0A8VB6nyE3CfVgdSGSnd5obKisCJFMKmrwnGLflif0xrmldwDyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB2995.namprd11.prod.outlook.com (2603:10b6:208:7a::28)
 by PH0PR11MB7660.namprd11.prod.outlook.com (2603:10b6:510:26f::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Fri, 18 Aug
 2023 12:08:07 +0000
Received: from BL0PR11MB2995.namprd11.prod.outlook.com
 ([fe80::589b:22b8:e509:c001]) by BL0PR11MB2995.namprd11.prod.outlook.com
 ([fe80::589b:22b8:e509:c001%4]) with mapi id 15.20.6678.022; Fri, 18 Aug 2023
 12:08:07 +0000
Date: Fri, 18 Aug 2023 20:07:55 +0800
From: Philip Li <philip.li@intel.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Message-ID: <ZN9fG8rPmdFO0kLK@rli9-mobl>
References: <20230816140623.452869-2-przemyslaw.kitszel@intel.com>
 <202308170000.YqabIR9D-lkp@intel.com>
 <cfc29063-9e20-5101-d70b-62b5423d2d10@intel.com>
 <CANiq72m9ZEVkP76FMFOnPYkA8ih4Mq72HtW9AbrJ-JPy9ku3jw@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CANiq72m9ZEVkP76FMFOnPYkA8ih4Mq72HtW9AbrJ-JPy9ku3jw@mail.gmail.com>
X-ClientProxiedBy: SG2PR04CA0154.apcprd04.prod.outlook.com (2603:1096:4::16)
 To BL0PR11MB2995.namprd11.prod.outlook.com (2603:10b6:208:7a::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2995:EE_|PH0PR11MB7660:EE_
X-MS-Office365-Filtering-Correlation-Id: f106fe94-b6ec-4fbb-6c79-08db9fe3c850
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BuuLKPfbge5MixQ3rrFItk37sSuw/t4R/x4Zr/V+nylY+Hx60ftQ5XCwc9JOeyk5J+QcNXoDMaLbLANs/cazBADWUlezMgENFBLvp16OAZVsVH/pl0oBLsWjqONmhZ6DK2bqtg291BZyZ7bdSi+JxTkB3h8cqkj+iPapGgSWoR4THC3LAA21S8YdW4oI4Os9jXGOt8RxLpARDzIZbGdITTTCP50JVbJvHh78WdwwlxN6fS7l+qKlobRqFXXyUMnCpsfAWCS1vqUwUhbCk6JENHZpfclq5z3rGCM6C7EbUiG8oAS08MASbtRKOHxkNpGhULf0F+uyFmCDlxqo0ayh5GDV3L1eN695IKDAk4MVKUj5I0XtsPHIsISqss+n5d3bCacATpfGC8pXZjq/K/60B4IAftKAyMz0zV18LMtDijl2/RVxwVPp5VhT6sSIKArKJcXqi+G3My+mXnDq7qQh8n2a69+TZlEX8Iv24v1yWCy1uOvFNLKEtm70VeTTdbVCxQcTSMR51WKPQ2bGBUxalFMo6R24P1CLrcLz+w3VymJvtwrJkJ7QM6ChyIkU9OvS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2995.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(136003)(39860400002)(366004)(376002)(396003)(186009)(1800799009)(451199024)(6666004)(6486002)(6506007)(38100700002)(9686003)(6512007)(53546011)(82960400001)(86362001)(26005)(83380400001)(33716001)(2906002)(54906003)(66946007)(66476007)(66556008)(316002)(6916009)(41300700001)(44832011)(5660300002)(8676002)(4326008)(8936002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUNqQTgwcHgzcmIyaDAvMFk1Z3JKR1VWeWZrR3ZEbm5abXd3MzZvR0ZBNUw0?=
 =?utf-8?B?QkJUVHVlZlJESnBHNTdFR1RpeGcwQjY0blFBOTVNbDJ2SlhvNlRTMWlYRUV2?=
 =?utf-8?B?WHdlTDEzaHZOOVkwd0VibURzSlYzRDA2YVZVSDBSVXR2cDd3ejZMYmQ5T1Vr?=
 =?utf-8?B?U013NlJhZ0lRb3VzbXoxWjJMUW5FTnVhZnA1UUZQOUxXVGZ4ajhSd2ZpUStl?=
 =?utf-8?B?Qit5RFdiOUNBbkpDTTMxamdVZDRiV1FmNFBLZWcrNGYzdzRtNnE2SUdkdksr?=
 =?utf-8?B?UzlydngvekVTTGF6VWxhVy96TGZ1aTkzMEZiMnZnSzM4MXZqWmRDS1c3Z1Bk?=
 =?utf-8?B?UjRMZDd1NWdWRzNOdCtyM3hXUUhDc2s4eG0xU1lyY3JDMStmSEx5YmFvNGtP?=
 =?utf-8?B?Tys5dEduUlFJTEtvc3E3MlpHNWtTRlJWNGNrQkZEcGMxeUh0M2FFa1BIalk0?=
 =?utf-8?B?a29ZakJ6WXFlQkdoWXVDUE01Qlg5ZXRtWm9oSFhydFN5cVlYNHdsUUhxRThL?=
 =?utf-8?B?b00zd0c0b2xFTk5tMElRcGdacTVhZC8yNm5XdloyNzNvY2lZTmFmZm83Mzk2?=
 =?utf-8?B?dkF5aDhqbzg0dHRRN2ZCem5JeU9ycUpmMUVyYmpkRTM3d3ZEQmgxTFRLQWNV?=
 =?utf-8?B?WnMwZkxucXY3L0M2QjhnSUFWaThVOStKaG9WSFpDd29CU1NkQ05Xb0pMd3Ur?=
 =?utf-8?B?SERrbEpqL01nWXY0TVVhNmYwY04rQkJYV0M0eTRXMjVJWTlQMG5sd3phTGZ1?=
 =?utf-8?B?T1pLb0JyTDg2V3Z2Z0ZuU2tpWk9mV2Y5MFB2QkJlZzNlVlVTV0VIQk1XQklY?=
 =?utf-8?B?bFZhZ3JqWmNFSWZlankyUmZRbzJ0LzZRQzhWSEZ4UmIvZHIzRFJqSTZOWE1Y?=
 =?utf-8?B?dWZzSTJxa1JNSVVLMCt6K2RsenE3eVQzd00zTmFsQ1MwaDl0SXZvNS8wN3hB?=
 =?utf-8?B?bXZmMEtZWCt4VGhIemtROEJCTUQxTkJQN2xVNTExc3oyN09qZW9rWUNaSXBj?=
 =?utf-8?B?anJ5ZDNMOHdGcGxROWkwb3B4bzJGSTVOdEg1dk1zYkpKTjRLSnI5NUEwMkRD?=
 =?utf-8?B?alhSa3pCeU5YSjdjSi90OWd1SGVWOU5tNUc1T2dmbFlLNGxJT2tnUzhWQWRp?=
 =?utf-8?B?SnpaN2JlYTlUc3lQSFNTWE9uWHNteFVWK2NWeVNUdXMzbnVtK1lWcnN0SGly?=
 =?utf-8?B?TjM0NzRmeE43VlF5T24xVlVlR0Y1VzNyQmtNNVFtSzM5V3lwTTc3OVo4cFF5?=
 =?utf-8?B?VTZwcmlaM1Z0NFNTS0JuLzRIZklEaFNXdWFJd3NsazNMbUg2UVl3L0lUeEcz?=
 =?utf-8?B?OE53TkN6NlcrMUtsWFBlb2RaZEFKcGJNMXFHU0x2TjRCQmFVVFk4M1c2NEJv?=
 =?utf-8?B?R1k5UVo4Sy9sdVpLMmtldHY1SFk3akZtSU9EYmV1R3J2cjhRVTc4U2ZkZG1n?=
 =?utf-8?B?Q1J6ZXFseVF6QzgrZlczVUdieEVrZmhDaXZWM2NFMGpjY2tiV2pITUFObHRP?=
 =?utf-8?B?QUIyMDZFVGJmZEYrMzFmQVhFbHpZUWgzN0ZWZ3Zmc0M3dGVza0FCNUpOcUYv?=
 =?utf-8?B?QmpwaUZsWklLRHAzMkhJbVJnQTVpS25icTNwYzFjcDZKb2dwMnpNMmR5dzU5?=
 =?utf-8?B?aTk4UzVsZTU5TXQzTDl2VjJHVW5zZkFwL1BSVSs4aU02eWpmaHJwS0ZBY1VU?=
 =?utf-8?B?d0FCWmlBM0JxK1Y4VWMzQk9STjB0Mk1vYUZNaXp3MGo3Z1k3WHJnc3ljbk9w?=
 =?utf-8?B?NnMwdnNtczlxbmdJSDJGWW03ajJEWGxvRmJnajMrYWVydHJKeURoNHErV2s4?=
 =?utf-8?B?RUxSUThmUnRWYkNyNFpDUkg5Y2E5RnB2Sm1weWlZQ3luay9DQU02ZkdnYzFt?=
 =?utf-8?B?M21Ld05rNlpJc2xQUWtoMjJlcDd5YkVVdWwvTE9jdGxZV3hla3M0bThZUEdL?=
 =?utf-8?B?cE9FWmo5UU9xeHg5Slk4WWdwNUtscElqNXdYVVZrOTk1dk9yVjZGelczQUd5?=
 =?utf-8?B?bzlmSlNUL0tQQk5zQ2l4NGw2NExKTFliNGV0Skl3N0dIYmFzY2Y0U0labVVN?=
 =?utf-8?B?UzVyeHJvRUp2OFRBSmp2MG9WdCtIejBDMHNtYXdhZUJJcStSQURORS9JYkg5?=
 =?utf-8?Q?q5DHiDiTQcezFSr0ge1Oiesyv?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f106fe94-b6ec-4fbb-6c79-08db9fe3c850
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2995.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2023 12:08:07.3694 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PzCO+RxzdWs+LVnSfaDx/Id8J4CqTj+O5/VpBNgNe6RARzrR+mC7+sefnqxaDjRO3biu/TyEUuxyqq1cZLPoYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7660
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Fri, 18 Aug 2023 15:06:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692360499; x=1723896499;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=z3yev7QeNzfKGTN+peWa+yf32WONzEhWgq/tgKqLkXM=;
 b=WPsOaFFpWQIg26l2S+yFhpWX3GRLdXg1kvPIUEf0Cyl5WQI69YtkYRdU
 dPA/jkAcIUi5gQFoRsuaarVORyEhQKjxVg/oUpOljrXtXwIMKWeiKsIPh
 7WwSJaFFC8BdxqO5T4FKSzIEqJv7ktylzBTh7Zrnz8dd2GsjKRilZox5V
 Gkae86aD3RAJMFLBMp4+DRqLi/rWwzJKs2UeEfgft6plIHrW8Ys8hGgWN
 V7lbwvIVwN+BLE/4BikytzJbjLlW4ZeLdEpuCEMAcFOelCk6hguipbnPb
 TJv7i15nCF/5VRIWb0iPov5UY+OpZ8EVaaTMAPh8aFMG9rbHtFuQ12viG
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WPsOaFFp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/7] overflow: add
 DEFINE_FLEX() for on-stack allocs
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
Cc: Yujie Liu <yujie.liu@intel.com>, rust-for-linux@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, llvm@lists.linux.dev,
 oe-kbuild-all@lists.linux.dev, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 Greg KH <gregkh@linuxfoundation.org>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBBdWcgMTgsIDIwMjMgYXQgMDE6MTA6MDdQTSArMDIwMCwgTWlndWVsIE9qZWRhIHdy
b3RlOgo+IE9uIEZyaSwgQXVnIDE4LCAyMDIzIGF0IDEyOjM44oCvUE0gUHJ6ZW1layBLaXRzemVs
Cj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+IHdyb3RlOgo+ID4KPiA+IFJ1c3QgZm9s
a3MsIGNvdWxkIHlvdSBwbGVhc2UgdGVsbCBtZSBpZiB0aGlzIGlzIHNvbWV0aGluZyBJIHNob3Vs
ZCBmaXgsCj4gPiBvciBJIGp1c3QgdW5jb3ZlcmVkIHNvbWUgZXhpc3RpbmcgYnVnIGluICJ1bnN0
YWJsZSIgdGhpbmc/Cj4gPgo+ID4gUGVyaGFwcyBpdCBpcyB3b3J0aCB0byBtZW50aW9uLCBkaWZm
IG9mIHYzIHZzIHYyIGlzOgo+ID4gbW92ZSBkdW1teSBpbXBsZW1lbnRhdGlvbiBvZiBfX2hhc19i
dWlsdGluKCkgbWFjcm8gdG8gdGhlIHRvcCBvZgo+ID4gY29tcGlsZXJfdHlwZXMuaCwganVzdCBi
ZWZvcmUgYCNpZm5kZWYgQVNTRU1CTFlgCj4gCj4gTm90aGluZyB5b3UgbmVlZCB0byB3b3JyeSBh
Ym91dCwgaXQgaXMgYW4gaXNzdWUgd2l0aCBvbGQgYGJpbmRnZW5gIGFuZAo+IExMVk0gPj0gMTYs
IGZpeGVkIGluIGNvbW1pdCAwOGFiNzg2NTU2ZmYgKCJydXN0OiBiaW5kZ2VuOiB1cGdyYWRlIHRv
Cj4gMC42NS4xIikgd2hpY2ggaXMgaW4gYHJ1c3QtbmV4dGAgYXQgdGhlIG1vbWVudC4gU29ycnkg
YWJvdXQgdGhhdCwgYW5kCj4gdGhhbmtzIGZvciBwaW5naW5nIHVzIQo+IAo+IExLUCAvIFl1amll
IC8gUGhpbGlwOiBzaW5jZSB3ZSBnb3QgYSBmZXcgcmVwb3J0cyBvbiB0aGlzLCB3b3VsZCBpdCBi
ZQo+IHBvc3NpYmxlIHRvIGF2b2lkIExMVk0gPj0gMTYgZm9yIFJ1c3QtZW5hYmxlZCBidWlsZHMg
Zm9yIGFueSBicmFuY2gKPiB0aGF0IGRvZXMgbm90IGluY2x1ZGUgdGhlIG5ldyBgYmluZGdlbmAg
b3IgYXQgbGVhc3QgMDhhYjc4NjU1NmZmPyBPciwKCkdvdCBpdCwgd2Ugd2lsbCB1cGRhdGUgdGhl
IGJvdCB0byBoYW5kbGUgdGhpcyB0byBhdm9pZCBmdXJ0aGVyIGZhbHNlCnBvc2l0aXZlLgoKPiBp
ZiBHcmVnIGlzIE9LIHdpdGggdGhhdCwgSSBndWVzcyB3ZSBjb3VsZCBhbHNvIGJhY2twb3J0IHRo
ZSB1cGdyYWRlLAo+IGJ1dCBwZXJoYXBzIGl0IGlzIGEgYml0IHRvbyBtdWNoIGZvciBzdGFibGU/
Cj4gCj4gQ2hlZXJzLAo+IE1pZ3VlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
