Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17581691682
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Feb 2023 03:09:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06CC340912;
	Fri, 10 Feb 2023 02:09:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06CC340912
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675994946;
	bh=N7lYDpR5RwUrCSxraY6KkCTBKEEfWOyykUt8tMULlok=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1MBJWJbLjDoWdEP9KE4a01CUm8JgDcBaDJvIAkUCju6KNSZuIGr83QPjjrEHlu5tl
	 e6/EsHlxy7v5u4XkPMdL99WR2zDUQyZOLVsmvVqmbhQAxxQKP3afZ2YEcuY7IdihHj
	 DczaQnt0sET4dzYImEWJa+vQa46IxT0Xftbe6rpDtDmO2VS5luHSMwFaJo90AQSG7w
	 ZXyDDvyHP+wmYrYLxLaoSRGBoSC/+hlXKnW/5EarSDhmcAv2qz1jcHSR2XeBGukaIR
	 XLgRg55wOYVytmzfHbhVPNq5vXuwlZSqcAD+RdpPbK1NwkkeYHzCMA3yBRzWJHFZOa
	 bd2EC5zLZ/TNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gw7lZ0y4s_oR; Fri, 10 Feb 2023 02:09:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CDB534048E;
	Fri, 10 Feb 2023 02:09:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDB534048E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA5061BF319
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 02:08:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B1C9A812D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 02:08:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1C9A812D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LQqMhATpOc6m for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Feb 2023 02:08:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4ABAE812CB
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4ABAE812CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 02:08:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="332453740"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="332453740"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 18:08:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="617742350"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="617742350"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 09 Feb 2023 18:08:56 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 9 Feb 2023 18:08:56 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 9 Feb 2023 18:08:56 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 9 Feb 2023 18:08:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e235dIBqacHbly4tC+7tFDJ65WINyBuAYxi/DOaKhMnUbyVvOo+XNwDCbjT0LK1KKsbfZHDmMPFH8727hrlxRZS4njTmcuSEtpJZ/aH/X5Vr+OGjR/WiGdG9ICribq2gbQO1fZ2mA8eCsBStdU6R/4dgv+vTERpa/EqXymgnebEu3WCABZZ30ITl09QUj8zoAmabo52vSI6dcL80Jh0tiD+PJYyt5IUZt9s8cA+XyUrpNNSf4XCXdo3X3IxsHfaMsrMHk8kLbLpnWCXeTu9oFy8Kb29wHe0ljFtE8o1k4fz+H0f5QWLDlG4gmPYrPkJEoED2E7yErV+4BCUD5vvKvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vck8BWwvU3XLe8QE4UkafrBYgRYRETzjrVey7IhaLZ8=;
 b=DgmwjN5drCjw8cKgaKIufJw0gWXMnRumxcyNs5hoPi1sFOVTUB38Zaae5YZfU1CdRGOaFPNTHKGhRa8S/fKMXU7EENoxCuoJFY423J77KwgXbyxM6h56TrN4vJPDcdlUicqMxK7kLXMybpx7/3oYtEZJsaabQ3SU32ZLJ5k2QFBYh3wvQ5Ffwu/AJWc2oqZlmTV5Dn9J4E1L7uGuHLbLdSECEC39Znn0g9vrHuMIxLPv6PjJ+Qcz+2/Zz991TdnacLstSSCZKDBzNWZ1P1efnDcySjhWnbDrADTaiyjAqPwPZKCMjkilYG3owd91/jxaI850CUNVSNcTTh8N14+fcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by CY5PR11MB6368.namprd11.prod.outlook.com (2603:10b6:930:38::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.17; Fri, 10 Feb
 2023 02:08:47 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e%5]) with mapi id 15.20.6064.036; Fri, 10 Feb 2023
 02:08:47 +0000
Message-ID: <030bb9a9-de44-215e-c274-f0a02b2d5cd5@intel.com>
Date: Thu, 9 Feb 2023 18:08:45 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
References: <20230206235436.2254802-1-jesse.brandeburg@intel.com>
 <Y+Oky4j0zDyfLp8r@localhost.localdomain>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <Y+Oky4j0zDyfLp8r@localhost.localdomain>
X-ClientProxiedBy: SJ0PR03CA0195.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::20) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|CY5PR11MB6368:EE_
X-MS-Office365-Filtering-Correlation-Id: e7dba0c2-a408-4d14-7fb8-08db0b0bbeaa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U7iriuwXrwzHpTvXS12n3aBKQsR7JKjGit4xMrD6Lfm6dBskJet4nfbSu98jz2iTE7xOsiMYIcwq9c7H0dw3/pey4L0hgTbKhzWoNLHQerpnKlsYOMnBL3RU75b7UBlUUT9MEwi2N57sicPc6mX5iua3p8ebkKWYQDj5EZEZmyQza5b9vIz8LOuHiFbNX4Siw7dwf58QAhr5jlhp9RMULKc0y3vLPsaPGRKDMWVs4mGHnDhqVH+76ju5jpp367zACs/xh+SgFILuuoVgAf4ZncNJzgJxUeE/1fQWj3R/dHw1yhG7T4KLcKU+fxAejViOyLEfqf/ZuC3dmlWC+DP8J2AomPOGxYBNE9g/LOnXQNDuqg54ObuGEA9+6FQeAP/sGlU/oBlqFPym1sePGsuHEXFssc54B57wunh3/MfHNcRNQ2K60nwIYH4pacTXyOq51Pb3U6KJ379hRUlqQ+U7pQTSqcuyLjR4vICX9vfu44x7Ek0vXFiuhT2rGWYYgnstmHlQaHojtd8GGFlWKp7BMcbjVKFfD5umHaaMKV4PgllFbq0ahd1q57L1Gxc/hNQNZwZ0V7Sm2w7JJnPFHV9V+2+ydU6sRv7QuOXYnRDdEl/W8loPPVT2YgWrLmt3ZeNIriLN5lTV1j6z3PM+ZpTjVmbHjqhMlPE1ko/hYrHcgBkVs6o9J30hRTC6s9LZlBzLZNxd2YKt4TQSmG9pOrOJXqjes1pijCVKZdn5mx8g0RU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(39860400002)(136003)(366004)(396003)(376002)(451199018)(5660300002)(31686004)(8936002)(6512007)(41300700001)(186003)(26005)(44832011)(38100700002)(86362001)(6916009)(31696002)(6506007)(53546011)(8676002)(4326008)(66556008)(66476007)(66946007)(82960400001)(2616005)(316002)(83380400001)(6486002)(36756003)(2906002)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eE5lMDlPd0tSR1o2VHZSSXJyVHcvN3hOOW5qYmpWcFYyUEwwNmVXTnJ2Y0RU?=
 =?utf-8?B?R21qallRdnI2eTY4VldaelB4WEhFYmRjc0YxNW11dnM4TTd5RFllWDQ1dXhp?=
 =?utf-8?B?T3BnS3hxMFVyMlBON3p1NEhnQWJBYSswTFdTZGFOb2w5NG5hODhPYXlyY0E1?=
 =?utf-8?B?OTBJRFlkNkxndWlnM09tVHM2L3ROY0NmNzl3RFQ1dmxwU3NpNVMwN3Nka0lJ?=
 =?utf-8?B?bXFkN2dMRWpvSlpOeG52SlNMNU5BbC8xcXYzMnYwUXpyUXZKQUpoTVpDd2Vw?=
 =?utf-8?B?VFBZOVpLbEZDRksxeFdEWGxmeGEwbFFDMndzMmM4d3ZyaVFKc3k2aHRhWEZL?=
 =?utf-8?B?TnFPdnNJbmNEeFNqQ0wzR0krVG9hSzh6SVpHZmtwSHp4djJZeFZJZTdmdSsv?=
 =?utf-8?B?UmcwM3RrMzFwUW1DVkNuMmJzZkFlbWdOZ1pYZUc2R2UxZis0RUg1SUZuc1pD?=
 =?utf-8?B?RTE3WUhPYTBJSUVwZnRVeGZjMDJIUFlsRExMa1hEUjRJNzZreFdRYStLdWNX?=
 =?utf-8?B?UVBqbmNQWXhKTGNpdUI1b05Jcmt4d2JPVGtzWSs5ckxvT2pSeXI2UmdvdnJM?=
 =?utf-8?B?cWMrUWg1SEdmQlBXTm5IdmZJb1lsNUdHTXZpV0Jod2FwVG9VQUtCNGh4alpT?=
 =?utf-8?B?VTVTV0U1dFgvQmJ1TkxETzV5S0VkMGxXWUNoVWR3OEJzRmk1SEd6NWo4RXgy?=
 =?utf-8?B?QW56cHg2UE84b0NaUS8rNXZycFFWOXVKcjYvalY3Q2RhZzJiU0FMNTIvOU9h?=
 =?utf-8?B?MVJpdG5aTHlZR1VmQ29IUzhvYkp1YU13clQ0Q21kbXB3Ti9tM3dEZHZ6TlAr?=
 =?utf-8?B?SC9uZzNoRE93SDZEeURvRW14SlM3MGlRRmhLMGx2Qm9QYUdaei83NERjQWU3?=
 =?utf-8?B?RkRpZ3Bhb0tPTXkzYzZVOERjVWp1VUZjTWx5VHRNbnZlWVNRSUdETjZiQ3J4?=
 =?utf-8?B?VStTaFVCaGt2amlRaktUbENTN1luNmpSbVZqQ2VNYkNOSSthR3RzREFoaWNs?=
 =?utf-8?B?V2FlRVB4bkVDdjZWN01LS0l3Z0FIbVJVNWtHQ294dFlTZU5wWEhpcWNrR3hl?=
 =?utf-8?B?UmZKV0pTOTkvQ3V0TTF5bUFOdUJPRTAzT3NkVmxVRnNwdFhuRlpsWFgrVkNx?=
 =?utf-8?B?cmhUQSt4MTRCZVIzNXl0TVV2aXlMZ1h6M1hQUS9ZZTYvbkJGcjF4UUpCQW80?=
 =?utf-8?B?S1NyMnpXcVcyaVZsWG0wQnJmWnFuN1VNZER0bVRaODNrU0tpZGRPUnpNWXJI?=
 =?utf-8?B?MWNOUG5WR1BEZkFERGh6TVlSODJ2eXhrUEFDcG16c0hkVkhCZWFJbE5CRmo0?=
 =?utf-8?B?RTE5QXQrSmdzK2FLY043OVJ5MUt2djFsUHNOdlIzTFBkdmovb25QdDdKdG9O?=
 =?utf-8?B?V0FDV1p1N2Y1RWU5aWlyLzBpT1pwRktmZ2s4K0dsaEl3ZWVFNS9vRU9PU3Fk?=
 =?utf-8?B?VlFGdVpqb3JlRkUybzVyRkRMRW10Q0tqZXN5ejJHcldZQ3ZmZUFhNFYzQ0ow?=
 =?utf-8?B?dWdva0V6ZXhmV0lFaW42TWg0b1hsNi9MRFVFbE12a21COFpxVnFrNHV4OXBx?=
 =?utf-8?B?SGo4ZVdRQU4zNTNRY3lEZ2l3d29CR3g3MDFab0tlTWs2NzUwQXJITFZ0YU91?=
 =?utf-8?B?eElqY29rM1g2dEhvY2cvT3I3R29mcThqUmRqRGw0QnI3YVpBWWljVFhBdkk4?=
 =?utf-8?B?VlRjYlk2MlpwZ3VpMkxOV3RpNExIQUpaUXNMQWdxd09OZmxmYnVzdjV2MmhD?=
 =?utf-8?B?bEZ1OGc3ZXA3ZEIzcGRaZWRWZWgvdEF1L1cvUUdweTRRWS8zNXZuT3E4aE1r?=
 =?utf-8?B?ek1sT0FZQXl2Z3VhckdJdVZuQ3dWV1hLcGc1NGZaempwZzVvdFRqK2xUWUhO?=
 =?utf-8?B?ZHNVTGJ1aERReWVVMjd6cFdRRGRwT25Kbml2bEt3ajk0RlY3NUNsNU9tNFpQ?=
 =?utf-8?B?b1pVcmp3UmUyZWpDbjE5V1dnWDM5bjB5UFZpeEtubjJYOS93c1pld1pjVTRB?=
 =?utf-8?B?c3ZCQXBudFl2eGVFazhLeTh5RmtNRG02aUJlOUF1N1ZWYmRnWFc4MzNFTmVV?=
 =?utf-8?B?aVZoWDlIalFjTHVKN2NuZStkZVVLNENyeHhMSW1hNElNTmR3bXJETHVoWDNL?=
 =?utf-8?B?b3hhVU0rbmxwYVdlZHZjcGdDMVpvT2Ywc09oa2VkaHRaaTlySTQyMkVWd3dN?=
 =?utf-8?B?dGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7dba0c2-a408-4d14-7fb8-08db0b0bbeaa
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2023 02:08:47.7259 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: buZBMVBGkxb2OGU5zeXBggImuAHJ7LLJ7AVkj2q3Mwl/O8W5xBNpAt9vxfRw/uLtUTxYV0LHqsdElJR0rXjgPHwyIn93VaktyyXs21ccCZU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6368
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675994938; x=1707530938;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yW1ibGfJcwJv3rSne8jLAVGmzeCA2dqxgLVTWzGqzbc=;
 b=HiMK9bY/d/rA9a4M1iQqiTU7l7ZHWqNg7clSzhSoQBf1cOuCitSDe/Q8
 DbRUbmSNsVCU0F+wN1IBQ7+cbLZPKeLnyvNNoaymGjPe9Y8H+ndHJLMTh
 wThm134UPZLpWg0tIWPTDpJhM8+c3FMpmGJMmcjsQqv0hgadwErtGS4y3
 kIGZZhGhm2ocdIqcZJxaSJ3WhZnM4E6/fcCaEFOmYN1Rym6fTHqWPqS+m
 nVr36PVrrvE3gGbSPR9dY/Wv2XV0epjGyZChuzCXijDAFbYahgywgGrcu
 0k7azOQrm8JYkX0th8Fga/pT6hQAQfm2X/pcuW51CrAoQXPH+LZ3zfG6G
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HiMK9bY/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix lost multicast
 packets in promisc mode
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/8/2023 5:34 AM, Michal Swiatkowski wrote:
>> @@ -414,6 +418,16 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
>>   				}
>>   				err = 0;
>>   				vlan_ops->dis_rx_filtering(vsi);
>> +
>> +				/* promiscuous mode implies allmulticast so
>> +				 * that VSIs that are in promiscuous mode are
>> +				 * subscribed to multicast packets coming to
>> +				 * the port
>> +				 */
>> +				err = ice_set_promisc(vsi,
>> +						      ICE_MCAST_PROMISC_BITS);
>> +				if (err)
>> +					goto out_promisc;
> Aren't we already doing the same thing in case of IFF_ALLMULTI?
> I wonder if our IFF_PROMISC handling is correct. Currently IFF_PROMISC
> means setting PF VSI as default -> all packets from switch that don't
                                                                   ^^^^^
that's the critical failure of the original code.

> match any active rule goes to this VSI. If there is a rule (like in case
> from the commit message) packet doesn't go to this VSI. Maybe it should
> replicate all packets to PF VSI even there is a matching rule?

That's what this code change does, turn on the MCAST_PROMISC_BITS flag 
which makes the hardware replicate all multicasts received with *other* 
destination VSIs to this PF one.

> 
> Basically, how IFF_PROMISC should work?

Yep, it's always how it should have worked, but it wasn't quite working 
right, and using bridge "fixed" it because bridge sets both PROMISC and 
ALLMULTI bits.


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
