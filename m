Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC138634AA5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Nov 2022 00:03:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3BA7880C40;
	Tue, 22 Nov 2022 23:03:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BA7880C40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669158216;
	bh=KeEOp1GIVMFtpT8TTcm2FGcgZQysO/uxsxVOQ3HCLv0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Er2GwUBoMjJHAwSICMtMB2wWDKVy6A/fEIzvSRQPvc1nb3aONZQi91p0aITRgfkfe
	 jCmswKB6j0FeLhfzLTP2c/2NHWnqHFmlmEbXiUt8jrIv5Aj2By02nbRq5Af5PCNV/M
	 t5j7oTNfrpszBFy137QxdiSF9B2dMNxJ11/Tzd5GUFzijTKwKN2wWxTHUVgCJtfipg
	 2UJQrr9o4RMf6SBI6gIF9a9lJfD5yOlrlgDLfLUUSEkAuEHh/TpfJH8cVSvqgHbqmg
	 XGkpGtJhMbezOrGUhX1CnlxvBqXaN6zCM4WHka7kRtYka18zLnNEnVY/swi/ZHuSFd
	 QO3PDi8AXL44Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H6xeMSVi7Hrx; Tue, 22 Nov 2022 23:03:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43C9F80BD7;
	Tue, 22 Nov 2022 23:03:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43C9F80BD7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF0DA1BF46D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 23:03:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A681440358
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 23:03:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A681440358
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id byhRJ47yCGEK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 23:03:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 466434030A
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 466434030A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 23:03:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="378190408"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="378190408"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 15:03:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="816265655"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="816265655"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 22 Nov 2022 15:03:27 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 15:03:27 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 15:03:26 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 15:03:26 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 15:03:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q9+vZqyYM6xNMXe9cnw7pc3n91ll1JnazDzrFvDyyVN4MCzct6yEaukRevAlzw2vChOk73ZbLLZpUIywt3FAr9mpY4dFtBLemanC1qURcinX+cil3aUWm1BAWkHg3NOg7WB9DLlpCYUAZsTgCyzuI96wUyRRjrvNL3WIDxPopqluRM4qiu2RUwL8kO9SE/KkzUF+CIIWyM/6u34tVLqrHIMAnmiWW1R68DbbyTpNT4G2ZGBik4/PPpwpKC1IXiKbKKae/9RyiuX6FkqAGB7YhxQBDHyQAY0YtQPZ0nkr9c2H747/steJLlOHlnr4QVcaC002Wtdl4Ze9L8gSGp7iyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A2xxVIFryb9sTkbiDe5NdJPAhxK85FC89q8mKhnXW5U=;
 b=Q3tIYgoci1aZwK3Z6e4j9qx0OJc7T4UqEzbTpFTkDjIQoxoYKOcFweqzuzWGa993WZCc4rKEh33WV348NMpLgHURQn6UME5PcqF7JHkdl0+QvNu9Q3UkUmumJiM4KON4npwRRPEgNbEAv9nYiWW42Kh4pcxxwmO6r6Gnk4Sdm2/ho/EelaK+tEupcx8RI76Pef7xCLC28Eq8pnjt3u5LrL/DxkWRs56tJr+70Yrrhm3/4E0mSEZi3EBbtBPAVnjp4/i7DP24Dau1K8qJ16Ff2qaGl8at1Cf45LV0y4uuhWm5xwcvkXjuNUcdffgdGOWky0NOy+pxdKY9l+Om9Hsnsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB5195.namprd11.prod.outlook.com (2603:10b6:806:11a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 23:03:25 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 23:03:25 +0000
Message-ID: <67a58924-5c39-8d36-cb3a-0c90cf1c48be@intel.com>
Date: Tue, 22 Nov 2022 15:03:22 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Leonid Bloch <leonidb@asocscloud.com>, <intel-wired-lan@lists.osuosl.org>
References: <48e8a46e-2c74-22be-e95b-dd0d67ea2012@asocscloud.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <48e8a46e-2c74-22be-e95b-dd0d67ea2012@asocscloud.com>
X-ClientProxiedBy: BYAPR21CA0002.namprd21.prod.outlook.com
 (2603:10b6:a03:114::12) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SA2PR11MB5195:EE_
X-MS-Office365-Filtering-Correlation-Id: da7d3406-30a2-43b1-67ff-08daccddc280
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4cga4fMOJKmHThAI5riJ1KjzaKYLtRLbcQvPtLOIORQw3bRG0+bUY+RE9vpeA/+cQZA+WJDOJ91wDhppxbkgniEZQD64lRWsszbMVrAP9SyQFMWuTI8skzf7u4AL1/Jb4HgxE3eMur7vVxWgAeXL4ThQgcSfTxkP7KuFS8MiCwwaK8KwfNx1ZN8jjre5u6CfvdUIQ7P7yWGJSpZ+LRANHC3v5F42axo/EP1cPeIjG3mLt0ZtXeG//Mu1mzsRENWih7f+3JJuNVqkvQrIL3i2nL5CQPuFfiowN3LjBt/ihXAnUUilHPN6JsoVyF/oYaJdnNXubwpujkQZU01+8koqmJ2BR/EbeH3pnRX68ozbGnMW4TJWWL1FfA1CxglqIUhiJo5XVt0aA4XBpAfrWygGXdB3dQil/4oIT87otyj5v4LuiGd8iGjN97FWsG7sNHq8wksWX4SCdz5W2aEFNK1LY4lqzfAFj9emJ82VvSkNNftuXiCc1vM/xgU8ibS9xPwES0T9tjvUjC4CPMs/UMu0l+a0Zk3OrlYh88hVRQhc7Y7cRHpZREckwGZwrd+JaRHc06VdRgCUVHYCuyTCJWctyOcg8HHpXFMo6MLBF9HtlzKzT3aRCEvnrt+9lSssiOvl5rjj1RD3AHTX0OkGiI5Cv/DkVhg81poqlVExUF6sWjlwKrJHBprD+2oxUj055EbcnF490T+HhZhfF42gY76uHI7+whOziXE+TM5OTIKYVmmB5ACfTxXzvpa93UjiK0bHjrCsegagEx24pUw21ZWBNg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(366004)(39860400002)(346002)(136003)(451199015)(8936002)(4744005)(5660300002)(53546011)(2616005)(478600001)(6506007)(6486002)(31686004)(316002)(186003)(2906002)(86362001)(38100700002)(82960400001)(6512007)(8676002)(66476007)(36756003)(26005)(66556008)(4326008)(66946007)(41300700001)(107886003)(31696002)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXBNbWt3Ym8vNVkyVlZtdnRKaTFsaUZFTW9pekxrbmwwaXF1TzZrU1VRL3lH?=
 =?utf-8?B?bVE3RXpPOWlsRmxUUTZZQ01RQ3QvMnNFUng5bmExcC83OUk0YnhDaERhYWZ3?=
 =?utf-8?B?elFMZlNqOUpDc29SOVFUYnp1Z1dCRTNvamRaZWlTcTViOVdiTE11NC9VT1Vm?=
 =?utf-8?B?T1EzeUNjaURUOTdhR0ovdWVLd3g0ZUxCMk5vQVE0NktnWVVQY1lPK3hhU0J2?=
 =?utf-8?B?aTlRSkdGeHU4eUx3T05HS25UMG41U3dRQktEb0V2Um9pbjViTXBTZUQxTWhJ?=
 =?utf-8?B?YzhUUnl0ejhoajMyeC9yT29qaE5GcjFFc255eDI4VzJ2MjBickcydzZXYW9u?=
 =?utf-8?B?OEhuQmFBbEJHeEJVbE5TT3RzY25HbzdVTzJzSU5qS0hpR1B0Q003U0ZncFhG?=
 =?utf-8?B?Qk5TalcySHhsMXJvVGQvejM5c002TVJSS0JhZkRjOWJxR1pKUExuY3hLRk4v?=
 =?utf-8?B?WG42QlRydXdIWURzMFR5Y2Z0SjhVaUZNK0NqOTkyQWp2WEdwbkU0VGxlQXlU?=
 =?utf-8?B?Zjd6R010dU9VNkw3a3lkT1JSNWoxRlhaS0dmTnlHMmZBdVZiY3k4RGU1bk1z?=
 =?utf-8?B?VkN6NjVQN3kxdTV0SmZnRUxJakhDb2p4Ti9CWWI4ZXlGK0hiV0gvZEIzTzdJ?=
 =?utf-8?B?WWM4bFR0RE5jUFY4WjlrZHgrRHVZWUpGKzlna1JqN0tra3FVY0dFd3dPN2I3?=
 =?utf-8?B?L0hlNWpReTZlbmJVSDdIYkc4dFB2bm9tSVNXYk9ObC9LUmJrWC9tZHFWTEEx?=
 =?utf-8?B?cGd3VzBMdE1ENXFMcTVWTXJ2ZmVPUVJyemU0U25lLzJmU3JIQ3k1NkszcFp4?=
 =?utf-8?B?VHRxemdWUjNOMTJ6YStGcG4vZVNLV25qaXNXenZkL1B3bmtQN1U0RER4ZDNx?=
 =?utf-8?B?Vys5L0oxNHVCbVM4ME1MelN2UEJVS29GNmpMWERNa2Nsc2V4YzE1RHBpcFU1?=
 =?utf-8?B?ZnZZa2Y0TFp1bDVIeDZacjdvdmhUaDgrbVB3SW03eWdSdFBVUEtzUE9JT0Iw?=
 =?utf-8?B?ZVNkYWhtdFQrV1RmN3lFOW1BSFpMb1NORFpPRmVMKy85V1ZUTUxCUHF3WVIy?=
 =?utf-8?B?ZU5EY20yYUdFMjZCS1M2SVZiNFVhUlJqNjBVa0lLVmNRanROZnB3M3lyUVVz?=
 =?utf-8?B?WUh6TnFXbVBhSUhmRWk1TTlpZk9WT0JWT0ZQQUtoU1RHem02czUrallacjVO?=
 =?utf-8?B?VExHRFFwYXlJUTFETHJCZ1JEQzNoL1hubEg0MmdPKzk5UXBudG9UbjEzbEdS?=
 =?utf-8?B?WEh2dnIyZUZPTDkyRDJHb1A1aGhVbytmN2tDSGhOOGJPYU1DV1hFY2hWYTFs?=
 =?utf-8?B?ZVpPWHlMYXh4aFJrMmw5eHp6RHBZejZRN2xwcFBMQ3gybUN4SUNESUQ0TDhZ?=
 =?utf-8?B?dFJUNUR0b1B4b2ZCWWxXQ29IZFJkQjBzV2N2WVdVblpCYXRmTkM0RFI1OXp6?=
 =?utf-8?B?cUJUU0RQbnliUHM3Z1Z5ZHZ0Nmowc09ldFFXRDRiQ0ZZd1RkdTRVb0E1ckhz?=
 =?utf-8?B?M2VOckdILzdDQ0UvRnFKN05SeFFHK3doeGZRb01CTUprNDJKVE9uRzQySHha?=
 =?utf-8?B?NjI0bXVtektWN2FXREppSURsQ3VxUmlzcWlmZHFXZTBsMnFGUzhOenJhQ1M2?=
 =?utf-8?B?N3RNbVlMR1l6WWRaM2JudGlrV1R5VVFwWG9xcVh6NVRsZDd0eno1QU9DTU5Z?=
 =?utf-8?B?WUZnaUh2b3Q5a09KOGZNVHkwQUFmZGtTQkR0UFVKZVRwemlTb08rZXZnQlAx?=
 =?utf-8?B?T0k3VWg0bHBidmpQQVNQMkVnbU85YW1rajREZTR5VjRvVyt6Vm8wd1E5WXRZ?=
 =?utf-8?B?ejlGREJldzE4UllWTS9TeU4zSE1HTHRZVVBseHJnZEdNZ002SXNJSG1Nd1gy?=
 =?utf-8?B?MTdjenVFN2NkdUNSVEUzNW9XSEtRL2JMTjlDbDZPc1JMOEM1cW5EVEsrV0lS?=
 =?utf-8?B?aWNJdXF1MkFIMHNJSzlES1ZCb2ppQ2FQRUt2TGxhM1VwZWtqdkwrMmVpOHNr?=
 =?utf-8?B?QmlUOWZjVWQ5Z1RucG5HSUJ0Y1NRbWx6eVlmelZlZ1NHTWNTc0RHc0tGSnFH?=
 =?utf-8?B?QkNNbWFLbXBYTytYVHBoN0dBdWJsRVRNbEIvQm9POHNOYVZ3TEdxTnk2MFBi?=
 =?utf-8?B?SzI3R05OWW5BNkRrVlArVlh2Wk9kSG93cnc5SWk3bk9yU2FiV213cm1LYjZo?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: da7d3406-30a2-43b1-67ff-08daccddc280
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 23:03:25.1098 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RLh4W3MoA0mUwlewI9tvwCNEIxTfRSPsyzFU6kRROwapKCU86meEobjJ8EY9UzA1n/00NKQnF5K1bfCwgHP23NXSvWdVqw7x1jlrFEczIbI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5195
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669158208; x=1700694208;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+7rwl3pSrF4gkeTpb2IvVnboLSfJ6xxR/M1qvAoOb90=;
 b=jJFSlq592375CEHXhE0kXaR2p9tQ1GvYYuJh9VQ5EfKgcdfXWL24l2cR
 y1sL7Oh2Sx5UCLN65/g8BVoHcbtzNDa3pDcNu9Ao5dH+HGycRGJ+wBp53
 +y1z54ciU0Q/VytXVDnzrNni9T59sVk4X08KdgluzLyb08eGzY0n0gBBo
 UEz4yLJ0A5bH3SHIYroCXIz3njocnLFxAn/Pqaa/CBKmpFGog0ASQ5/s9
 gmpgrEq7YU+cRS9+pMhB3YzyaVcam44XsvTdzcmEj+K9b03vgI5RgpaFG
 zcl66sjDrCnI7omRFdq4HOHuYGzkLxvkSPcHkQNv4/xc+d881z+3kEH8B
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jJFSlq59
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] PTP hardware timestamping on E810 VF
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Leonid,

On 11/16/2022 6:39 AM, Leonid Bloch wrote:
> Hi,
> 
> I wonder how can I enable PTP HW timestamping on E810 *VF*. It is 
> supported on the PF, but looks like not on the VF. At the same time, 
> ESXi manual says that it is supported on VFs as well 
> (https://docs.vmware.com/en/VMware-Telco-Cloud-Automation/2.1.1/com.vmware.tca.userguide/GUID-57C099A3-78E7-4B94-BF54-AD0D6C2EF175.html)
> 
> Is it supported only on ESXi, but not on Linux? Any ideas?
That's correct, there's VF support on ESXi but nothing for in-kernel 
Linux. I did pass this question on to the team though to let them know 
there is interest in it.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
