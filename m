Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 254E7606B5D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Oct 2022 00:40:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D0DE40483;
	Thu, 20 Oct 2022 22:40:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D0DE40483
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666305609;
	bh=AqKb5LKm8UNtaXy/ErWNKLBX6Runsef7leIrgmEDhdE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e5ynFnnxLR5ay8DuiQwdHTwMOt3Z3axppvWzRUJM3T/xHUvELxqOs57ddeGFs1flb
	 nJBf+zHKtD2j4PN9QTrntVs22HW9eeLY+wDNH9tqhmcQRoZQvY636F8cLxAujvjchb
	 /GH5XlAyqwvwIPAaSoPEhYMCj8/G3e9/taBBQCDPYOP8MJ0MZqzLa0h8TP5OuoA7pP
	 8GYYqAqr+z0rZauT2y204fDD303Z5tHU4DCfUO7SWrdB3a8Tj75bTDkBjaUMEo9Gb1
	 QFvN8y9xUBYiSfeFkKY5namhZ/ahstEhNQHsLX+hoVfxqQ4Meis36BTJ97gSOPWxXw
	 Y2nM8K2QnVdhg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zNIGAFVzn5cI; Thu, 20 Oct 2022 22:40:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1FD86408BF;
	Thu, 20 Oct 2022 22:40:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FD86408BF
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 346B81BF398
 for <intel-wired-lan@osuosl.org>; Thu, 20 Oct 2022 22:40:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0B14341675
 for <intel-wired-lan@osuosl.org>; Thu, 20 Oct 2022 22:40:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B14341675
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qIY-zaOy9olx for <intel-wired-lan@osuosl.org>;
 Thu, 20 Oct 2022 22:40:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFDC3415F8
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EFDC3415F8
 for <intel-wired-lan@osuosl.org>; Thu, 20 Oct 2022 22:39:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="371066100"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="371066100"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 15:39:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="624970894"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="624970894"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 20 Oct 2022 15:39:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 15:39:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 15:39:58 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 15:39:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WbEmRw4+3050EmEV1tVizsTblF6SX/JiqB9OIvnkOJiLYXzy5Prie/jckCTPVMs+9BjLytrIChNsJWocBUm8WTygChp4xwhhN6Wh2iS78n5nopeDwcscDOCSpG7mleiJIbUt7elRqvCV5ZBDNZMqS8Kqzi0DX8F4pF19rS5mRw98tQ1Lvvk7ZOuge5M6r3vhIrGLoU6clKJci0v1VLX+rYN8IPkQysuePpMPbPwf2tW2cujLL7JB1ZAlW34p5ufIZr3gHBRR0x2OUozdC6bu5a6e//pOsTU665qLGx8RlFd0P6zEsaJzN4PPMALWxZXyLLkYFGiQgs5GT8gafJlgsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i+h+v1Fsk3Iudm7FqEeH0Mwc+c4slNySqGIB2zBwz1c=;
 b=gJaicLop9w7LdzL5aWZ/WyRIDCw31e+9YqJ1JtAiYmBeM6ZLjSK8Z4IqxhPIspmWuL/Np6awl+eXagwhpomQf4rkwpG5ySPozTs1IH7IH7TlHebl+3UrJBfC77U4KLxHpeGs250HgnuyQfo86OGcA/Wnypia600p35bHOJkAO/6cU76oSuXUwf0u6Sazegt/Xsv0SFpyIVID5aCy2xpISzgE3iEHd2Z/opx3ALkY4h4jNtIMV3pvIVsozBROm+xfMAQ+aMM5U2ej1RGP2/zETeGk6eeDwbnmmDrJQYzCax6f5V9zHXS5EzHdvOhg8kNL+joF3g7dkmiM5rwYf/sNSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY5PR11MB6257.namprd11.prod.outlook.com (2603:10b6:930:26::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Thu, 20 Oct
 2022 22:39:50 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::e314:2938:1e97:8cbf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::e314:2938:1e97:8cbf%7]) with mapi id 15.20.5723.033; Thu, 20 Oct 2022
 22:39:50 +0000
Message-ID: <b06d116c-48db-238d-5327-8d22b31f0752@intel.com>
Date: Thu, 20 Oct 2022 15:39:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
 <20221018010733.4765-5-muhammad.husaini.zulkifli@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20221018010733.4765-5-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: SJ0PR13CA0138.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::23) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY5PR11MB6257:EE_
X-MS-Office365-Filtering-Correlation-Id: ff91b3c5-abca-4c7a-0186-08dab2ebff77
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dtNUayKiQSW/elsBzMQyriDXD4fKbWDco3cGlhy4NRCATQMTYtwY8vxmZdUZrURl4Fj7FsWrCzbtqtg543qNbu1yJfuyF+m7C5zXa5T4fEC2IMI+3UvnviOE3gzhnXBtWKZK1Be9CNnl6vszjv0/persMPcUQ8DBSSH64hoDfFFeuqOS4xtGtM33PLrfkeCBEPgSAyVdsj+zzgg/6lr/VmAvnvSTxJt9kW7k1Ye7VL8HAeqUp3flladssZvlx92uRfu/0y4o/B0ysrvabbv9WaKTMwAzWW9cE6TfLoK8q7JzUbiNKxNBJncbXdLvzUGDeS1UsfQnucN1QwejMq4fvYMv0l259D2m3Hk8nZeyBQ4r21PR0hdJn74GXp0wJXcnKNUjzfR9kjdyaLbiGOxp4Cq/KdrtK8ij/twLh2/fJArwb4Xu7GbvZy/UaVpX0VVCQWY9X8+PzdtC5m8iy5BlXKmuqiGUePvSAYiSYz6sABgZlzAmYB+REZxmk5USc3vCuScKQvHSkO8OKHWgcbPJO2DP7O5GnrGIyxwSlXJHxhstOxVZT+/FVBOUQiOPzgczCePfHfjBUY4J1S196lnMz6Xm+rifgIWDbTtVWhnMsBx5ZUdNW+rvKVKmelo1bjEDc6Vbd4zjbznW32iFiupIkAHiFkEg2ns8ykBnkFwAJSJUe4gGNeAIAEYFHL78DpqMfaX0VtPQy3OTB3/NZCgF9usFa/mKtF8Klha3uTluAN22yg216TyXeXDtJfQ/+hx4/EooJkb37QZSznUgT8sd0cuqsU0ro9m60suaYUoMyHU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(366004)(39860400002)(136003)(346002)(451199015)(36756003)(83380400001)(82960400001)(86362001)(38100700002)(478600001)(31696002)(31686004)(5660300002)(30864003)(6916009)(316002)(6666004)(2616005)(66946007)(6506007)(2906002)(186003)(8936002)(66476007)(8676002)(66556008)(6486002)(6512007)(41300700001)(26005)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RDR3RS9nMTRFS3UwZjR4OUI4NU1zRTh2TkkvemhNbEZDbmVZWi9iRHBjbFkz?=
 =?utf-8?B?b3g1V2NkeXBYQmJGbTJEOElOWWlETm10b0tudW9RL1JlZjNGZHZ4K2loVGJS?=
 =?utf-8?B?WVFVa1RjMmQ0L0ozVTAwbFFZZENzV0s5UG5ZOEw1MWZKd3ljTVVJQTlkakVO?=
 =?utf-8?B?cGF2SGdQVGI3SXZjVGt4eGdHMWJzSzc2VE5mSnVCbXlnQnRCMFZVaWhlMVhp?=
 =?utf-8?B?MjNFRm4zQ21oNlZZL0VxY0JSYmpmYmc3WTVrczB4OEpNVUt4bTNUNFhORkJR?=
 =?utf-8?B?L2tYREpYTXBzTjhaV1cvSDlYRnM5SGF5SEpSeU96M1BiclN3clZmQzRHdnNp?=
 =?utf-8?B?RkdjQ3B1dEcraXpLRDl2S05RQ1VCTitVYVd1YmpQZ3NPdGVscmM4QmJiUXFy?=
 =?utf-8?B?WVJrVnllbUFzVTZJOUIrc05MQzZPOVdUT2FDZlN2emxjZDZ5SlRJc0FkcEFv?=
 =?utf-8?B?WlhMNXpLRFlnZTFVbkpsdFZRb214eHh5c2hUUll3TWVRUTVVVFpPNnR1RWls?=
 =?utf-8?B?akNxR3FOckQxWUNlSGQrNkVVeEYyNUZzQ1g2ZVh3dXNkRjJVc2N0NGZHTCtq?=
 =?utf-8?B?bDM1UVVueEthdkd1RUwxUmdKb2NYVkpZREpHNHZJUmJkN01CQkx5SFMrMGJy?=
 =?utf-8?B?ZnlOWWo0R2c1bjYxQmVCeDBxOUhodWpVR3VXd1ZVczFPb1d4dlZPdUxJUEFy?=
 =?utf-8?B?RTBqYlB2UVFkek0vOWRiMnI3WUVqckw0MjdJc2VFNS9wNDNtN1pWajdYSDR3?=
 =?utf-8?B?VHVzZ080RHJKbjdFZ2hjeGxudkE3OHY4NHp5eW95VHY0ZFFLMENpcW1Tcm4v?=
 =?utf-8?B?VWZucU1uUVlIeFl2YWc4RkZOMzlWTXNqYVkyK3U3dklGVW1GZHo4aEl2bFBt?=
 =?utf-8?B?RitJMTc4RUk3RS9aZmhqS2JVK0kydTFDckRzdzJUbWVCT0JuYWt3YjJ3Qlk3?=
 =?utf-8?B?Y1pUQjQrbDdaY1c2bmtUVVNBeVo2c29teFhIS0o4dHZsaEFDNVdMOVJMVE42?=
 =?utf-8?B?THRTUnh1TllBc2llT3RNbHBpOGVzcWx5Sk1ueUZkdDlYMk5GWFZuYUw5MWRa?=
 =?utf-8?B?TDFQVEdZbjhOeFA0NSs2dzFRblE2ajU0NXRPckFCc0FNbFRnN0xLUlI3cFZY?=
 =?utf-8?B?QS9QYUxqWnRWbE01a242ZTcza3NNRVR1d3MreG1Kd01Ba1JlQlBSWHFzK2I2?=
 =?utf-8?B?aFhSUmhMenZTVkxLMEJsOWNucDZ2Smc1c0JMM3JMN1pZTk5vUHVOV2lWLzUv?=
 =?utf-8?B?MmRmMFhCQTNrMlRTdVAzMXYrZDFLVWY1c0dGV1RKNitubGl5QWZqRzlVdVNY?=
 =?utf-8?B?TFVWTE53VEFmenNndHRHZFczVkswcFRUdldSSi9RanRlbUdWY3VwdXF1T3FI?=
 =?utf-8?B?Y2dXWHluekl6elY0d3J4RDNXNkxzVHBzYW5MWWtHcjNzSFNEK0xYbWVYVnJ0?=
 =?utf-8?B?c3RZbXh3aUVPYVhTTEtiUVhwMlJTUFA2Qnc4MDNkUE9MdnY2K3Z2K1RxL0pi?=
 =?utf-8?B?eWlEa0RrS1hNamdNTjFUUzJnL2JhRzVQZ1U4bTNzMC9BSWVqN1lrVDFlWExw?=
 =?utf-8?B?L1VkNmVKN2czd3pBYzJXQ0RuVHJBbkJqL2VnbUpmWDBhaXZuUjJINmRUR1F0?=
 =?utf-8?B?QkE5MjFseFNOblRpN01jZzk3Q0xxeldjZXFpd0JYeXV5MlExTHZWdml6UE5W?=
 =?utf-8?B?R1JGVDdDaEtHQ213SlFxaFlqL1pJbkNPVTdpcFVlMzl4WXVBR1BGYk5wMlBJ?=
 =?utf-8?B?eWp3L2NlZG5iVmg5cHN0ZFpWNER3bXBWTk9idm1FZ0ZCN3JEUklNSWZWMDNl?=
 =?utf-8?B?WHFKbnlKa2Rac1AwckRhdUZDdGV1aDc4NFZrMjRxem5SVlEzZVdsOEU1UGQy?=
 =?utf-8?B?MzV5SXBrZ0VVUUNsaDVrdjVpMVg5Q0V1VTArUnBQaWt0Ym9pSkJFVjd5NnZ2?=
 =?utf-8?B?aUhVRHp4cG5VZWdFZHRrSWw4bVJuUXVQUFpZa3VjQWNhdFhWMXovc2hlMkdD?=
 =?utf-8?B?ZHQ2bmk0WnMycFJ4aUtuZm9kYlk1SGhFdTlZSCtNUW5oRWI1TGFsRFhLOGhz?=
 =?utf-8?B?SnBLaWdFOXJQNFhvbk1YNFFTVFMwV1RwOEQxNXlvdE96ckJ0b0ZWbGlRbGhz?=
 =?utf-8?B?TDMrRTh6di9MMzgrK0tHa0xFMmR1QTl1L1dkT3NMaTZ4UCtZSGRHbHNvbm1j?=
 =?utf-8?B?WEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ff91b3c5-abca-4c7a-0186-08dab2ebff77
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2022 22:39:50.0945 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L0zUCFwQ1UVgzTcF/uzlG1Im5DrHKlI9/U2ThYSR5Aa3Z87BdonaDdbz/HFJW8FlT+m8rMcQxIDLi4ZPgHW6wwL7e1xETNlCuHYvc+v73n0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6257
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666305599; x=1697841599;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+lnre065NnuqYqGxZt2xTh8tO4wdfNCc/SjNqf7Tqm4=;
 b=Vw9hb4h22cFaGysdw/80EtdV0QA2+/hJeHFHsln+vxHOgAJs2hn5vpKR
 GIeb2AptW115/RxuqL9eRBee6/cz9YNuZ7tt4rgi9IrlZFtk7hr4Tt1ae
 bqL42dD0xgTn7/LQrjF6ktHe8/ISQ/g49Z2foHpewtY48AWIWnz8t2Lyy
 McV4yRg8mNgPgRiDij7JI6jE5Ct6zGb9ZQXbviIUm6o+Sef1+X/QVIu94
 CJN6T6JuDmwJtPJLeSzGiNMeZeNxAXnGe46iKH6FpaJ5Jl44YpfDwe1r9
 9nhp4gV622L00EUpOI27CT6FGGsmOTQSlJ8oVxmJNfWKQ/UNJLRRMV9ZM
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vw9hb4h2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 4/5] igc: Add support for DMA
 timestamp for non-PTP packets
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



On 10/17/2022 6:07 PM, Muhammad Husaini Zulkifli wrote:
> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> 
> For PTP traffic, timestamp is retrieved from TXSTMP register.
> For all other packets, DMA time stamp field of the Transmit
> Descriptor Write-back is used.
> 
> If the TXSTAMPO register is used for both PTP and non-PTP packets,
> there is a significant possibility that the time stamp for a PTP packet
> will be lost when there is a lot of traffic.
> 
> This patch introduce to use the DMA Time Stamp for non PTP packet to
> solve the current issue. User application can add new SOF_TIMESTAMPING flag
> SOF_TIMESTAMPING_TX_HARDWARE_DMA_FETCH when configure the
> hwtstamp_config for the socket option if require DMA Time Stamp.
> 
> Before:
> 
> ptp4l: rms    2 max    5 freq  -3404 +/-   3 delay     1 +/-   0
> ptp4l: rms    3 max    6 freq  -3400 +/-   3 delay     1 +/-   0
> ptp4l: rms    2 max    4 freq  -3400 +/-   3 delay     1 +/-   0
> ptp4l: timed out while polling for tx timestamp
> ptp4l: increasing tx_timestamp_timeout may correct this issue,
> but it is likely caused by a driver bug
> ptp4l: port 1 (enp170s0.vlan): send peer delay response failed
> ptp4l: port 1 (enp170s0.vlan): SLAVE to FAULTY on FAULT_DETECTED
> ptp4l: port 1 (enp170s0.vlan): FAULTY to LISTENING on INIT_COMPLETE
> ptp4l: port 1 (enp170s0.vlan): LISTENING to MASTER on
> ANNOUNCE_RECEIPT_TIMEOUT_EXPIRES
> ptp4l: selected local clock aa00aa.fffe.00aa00 as best master
> ptp4l: port 1 (enp170s0.vlan): assuming the grand master role
> ptp4l: port 1 (enp170s0.vlan): new foreign master 22bb22.fffe.bb22bb-1
> ptp4l: selected best master clock 22bb22.fffe.bb22bb
> ptp4l: port 1 (enp170s0.vlan): MASTER to UNCALIBRATED on RS_SLAVE
> ptp4l: port 1 (enp170s0.vlan): UNCALIBRATED to SLAVE on
> MASTER_CLOCK_SELECTED
> ptp4l: rms   39 max   66 freq  -3355 +/-  45 delay     1 +/-   0
> ptp4l: rms   20 max   36 freq  -3339 +/-  12 delay     1 +/-   0
> ptp4l: rms   11 max   18 freq  -3371 +/-  11 delay     1 +/-   0
> ptp4l: rms   10 max   16 freq  -3384 +/-   2 delay     1 +/-   0
> ptp4l: rms    1 max    2 freq  -3375 +/-   2 delay     1 +/-   0
> ptp4l: rms    3 max    6 freq  -3373 +/-   4 delay     0 +/-   0
> 
> After:
> 
> ptp4l: rms    3 max    4 freq  -3386 +/-   4 delay     0 +/-   0
> ptp4l: rms    3 max    7 freq  -3380 +/-   3 delay     0 +/-   0
> ptp4l: rms    3 max    6 freq  -3380 +/-   3 delay     0 +/-   0
> ptp4l: rms    1 max    3 freq  -3381 +/-   2 delay     0 +/-   0
> ptp4l: rms    3 max    5 freq  -3377 +/-   2 delay     0 +/-   0
> ptp4l: rms    2 max    3 freq  -3377 +/-   2 delay     0 +/-   0
> ptp4l: rms    3 max    6 freq  -3375 +/-   4 delay     0 +/-   0
> ptp4l: rms    2 max    4 freq  -3380 +/-   2 delay     1 +/-   0
> ptp4l: rms    4 max    7 freq  -3385 +/-   3 delay     0 +/-   0
> ptp4l: rms    2 max    3 freq  -3384 +/-   2 delay     0 +/-   0
> ptp4l: rms    4 max    7 freq  -3376 +/-   2 delay     0 +/-   0
> ptp4l: rms    3 max    5 freq  -3376 +/-   4 delay     0 +/-   0
> ptp4l: rms    3 max    5 freq  -3382 +/-   2 delay     0 +/-   0
> ptp4l: rms    5 max    7 freq  -3389 +/-   2 delay     0 +/-   0
> ptp4l: rms    3 max    4 freq  -3388 +/-   3 delay     1 +/-   0
> ptp4l: rms    3 max    5 freq  -3387 +/-   4 delay     1 +/-   0
> ptp4l: rms    5 max    8 freq  -3395 +/-   3 delay     1 +/-   0
> ptp4l: rms    5 max    8 freq  -3399 +/-   4 delay     0 +/-   0
> ptp4l: rms    2 max    5 freq  -3397 +/-   3 delay     1 +/-   0
> ptp4l: rms    2 max    4 freq  -3397 +/-   3 delay     1 +/-   0
> ptp4l: rms    2 max    3 freq  -3397 +/-   2 delay     1 +/-   0
> ptp4l: rms    3 max    5 freq  -3391 +/-   2 delay     2 +/-   0
> 
> Test Setup:
> back-to-back communication between Host and DUT. Host will act as
> transmitter and DUT will become receiver. Host will generate the
> packet using sample application with timestamping_flag of
> SOF_TIMESTAMPING_TX_HARDWARE_DMA_FETCH and hwtstamp_config flag of
> HWTSTAMP_FLAG_DMA_TIMESTAMP.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Co-developed-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> Co-developed-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         | 10 +++
>  drivers/net/ethernet/intel/igc/igc_base.h    |  2 +-
>  drivers/net/ethernet/intel/igc/igc_defines.h |  2 +
>  drivers/net/ethernet/intel/igc/igc_ethtool.c |  5 +-
>  drivers/net/ethernet/intel/igc/igc_main.c    | 24 ++++--
>  drivers/net/ethernet/intel/igc/igc_ptp.c     | 83 ++++++++++++++++++++
>  6 files changed, 119 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 1e7e7071f64d..38a24b5260d1 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -348,6 +348,12 @@ extern char igc_driver_name[];
>  #define IGC_I225_RX_LATENCY_1000	300
>  #define IGC_I225_RX_LATENCY_2500	1485
>  
> +/* Transmit latency (for DMA timestamps) in nanosecond */
> +#define IGC_I225_TX_DMA_LATENCY_10	13100
> +#define IGC_I225_TX_DMA_LATENCY_100	1410
> +#define IGC_I225_TX_DMA_LATENCY_1000	285
> +#define IGC_I225_TX_DMA_LATENCY_2500	1485
> +
>  /* RX and TX descriptor control thresholds.
>   * PTHRESH - MAC will consider prefetch if it has fewer than this number of
>   *           descriptors available in its onboard memory.
> @@ -410,6 +416,8 @@ enum igc_tx_flags {
>  	/* olinfo flags */
>  	IGC_TX_FLAGS_IPV4	= 0x10,
>  	IGC_TX_FLAGS_CSUM	= 0x20,
> +
> +	IGC_TX_FLAGS_DMA_TSTAMP	= 0x200,
>  };
>  
>  enum igc_boards {
> @@ -627,6 +635,8 @@ void igc_ptp_reset(struct igc_adapter *adapter);
>  void igc_ptp_suspend(struct igc_adapter *adapter);
>  void igc_ptp_stop(struct igc_adapter *adapter);
>  ktime_t igc_ptp_rx_pktstamp(struct igc_adapter *adapter, __le32 *buf);
> +void igc_ptp_tx_dma_tstamp(struct igc_adapter *adapter,
> +			   struct sk_buff *skb, u64 tstamp);
>  int igc_ptp_set_ts_config(struct net_device *netdev, struct ifreq *ifr);
>  int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr);
>  void igc_ptp_tx_hang(struct igc_adapter *adapter);
> diff --git a/drivers/net/ethernet/intel/igc/igc_base.h b/drivers/net/ethernet/intel/igc/igc_base.h
> index ce530f5fd7bd..672cf2d92165 100644
> --- a/drivers/net/ethernet/intel/igc/igc_base.h
> +++ b/drivers/net/ethernet/intel/igc/igc_base.h
> @@ -16,7 +16,7 @@ union igc_adv_tx_desc {
>  		__le32 olinfo_status;
>  	} read;
>  	struct {
> -		__le64 rsvd;       /* Reserved */
> +		__le64 dma_tstamp;
>  		__le32 nxtseq_seed;
>  		__le32 status;
>  	} wb;
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index f7311aeb293b..baedf48b4e2e 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -312,6 +312,7 @@
>  #define IGC_TXD_CMD_DEXT	0x20000000 /* Desc extension (0 = legacy) */
>  #define IGC_TXD_CMD_VLE		0x40000000 /* Add VLAN tag */
>  #define IGC_TXD_STAT_DD		0x00000001 /* Descriptor Done */
> +#define IGC_TXD_STAT_TS_STAT    0x00000002 /* DMA Timestamp in packet */
>  #define IGC_TXD_CMD_TCP		0x01000000 /* TCP packet */
>  #define IGC_TXD_CMD_IP		0x02000000 /* IP packet */
>  #define IGC_TXD_CMD_TSE		0x04000000 /* TCP Seg enable */
> @@ -520,6 +521,7 @@
>  /* Transmit Scheduling */
>  #define IGC_TQAVCTRL_TRANSMIT_MODE_TSN	0x00000001
>  #define IGC_TQAVCTRL_ENHANCED_QAV	0x00000008
> +#define IGC_TQAVCTRL_1588_STAT_EN	0x00000004
>  
>  #define IGC_TXQCTL_QUEUE_MODE_LAUNCHT	0x00000001
>  #define IGC_TXQCTL_STRICT_CYCLE		0x00000002
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 8cc077b712ad..7d198fb6d619 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1532,7 +1532,8 @@ static int igc_ethtool_get_ts_info(struct net_device *dev,
>  			SOF_TIMESTAMPING_SOFTWARE |
>  			SOF_TIMESTAMPING_TX_HARDWARE |
>  			SOF_TIMESTAMPING_RX_HARDWARE |
> -			SOF_TIMESTAMPING_RAW_HARDWARE;
> +			SOF_TIMESTAMPING_RAW_HARDWARE |
> +			SOF_TIMESTAMPING_TX_HARDWARE_DMA_FETCH;
>  
>  		info->tx_types =
>  			BIT(HWTSTAMP_TX_OFF) |
> @@ -1541,6 +1542,8 @@ static int igc_ethtool_get_ts_info(struct net_device *dev,
>  		info->rx_filters = BIT(HWTSTAMP_FILTER_NONE);
>  		info->rx_filters |= BIT(HWTSTAMP_FILTER_ALL);
>  
> +		info->flag = HWTSTAMP_FLAG_DMA_TIMESTAMP;
> +
>  		return 0;
>  	default:
>  		return -EOPNOTSUPP;
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 671255edf3c2..daa6ca5acab3 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1415,6 +1415,7 @@ static int igc_tso(struct igc_ring *tx_ring,
>  static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>  				       struct igc_ring *tx_ring)
>  {
> +	struct igc_adapter *adapter = netdev_priv(tx_ring->netdev);
>  	u16 count = TXD_USE_COUNT(skb_headlen(skb));
>  	__be16 protocol = vlan_get_protocol(skb);
>  	struct igc_tx_buffer *first;
> @@ -1445,16 +1446,14 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>  	first->bytecount = skb->len;
>  	first->gso_segs = 1;
>  
> -	if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
> -		struct igc_adapter *adapter = netdev_priv(tx_ring->netdev);
> -
> +	if (unlikely((skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP) &&
> +		     !(skb_shinfo(skb)->tx_flags & SKBTX_HW_DMA_TSTAMP))) {
>  		/* FIXME: add support for retrieving timestamps from
>  		 * the other timer registers before skipping the
>  		 * timestamping request.
>  		 */

What are the semantics of asking for both SKBTX_HW_TSTAMP vs
SKBTX_HW_DMA_TSTAMP? I guess we can only support one? and if both are
set we're going t prever SKBTX_HW_DMA_TSTAMP?

>  		if (adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON &&
> -		    !test_and_set_bit_lock(__IGC_PTP_TX_IN_PROGRESS,
> -					   &adapter->state)) {
> +		    !test_and_set_bit_lock(__IGC_PTP_TX_IN_PROGRESS, &adapter->state))	{
>  			skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
>  			tx_flags |= IGC_TX_FLAGS_TSTAMP;
>  
> @@ -1463,6 +1462,14 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>  		} else {
>  			adapter->tx_hwtstamp_skipped++;
>  		}
> +	} else if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_DMA_TSTAMP)) {
> +		if (adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON &&
> +		    adapter->tstamp_config.flags == HWTSTAMP_FLAG_DMA_TIMESTAMP) {
> +			skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
> +			tx_flags |= IGC_TX_FLAGS_DMA_TSTAMP;
> +		} else {
> +			adapter->tx_hwtstamp_skipped++;
> +		}
>  	}
>  
>  	if (skb_vlan_tag_present(skb)) {
> @@ -2741,6 +2748,13 @@ static bool igc_clean_tx_irq(struct igc_q_vector *q_vector, int napi_budget)
>  		if (!(eop_desc->wb.status & cpu_to_le32(IGC_TXD_STAT_DD)))
>  			break;
>  
> +		if (eop_desc->wb.status & cpu_to_le32(IGC_TXD_STAT_TS_STAT) &&
> +		    tx_buffer->tx_flags & IGC_TX_FLAGS_DMA_TSTAMP) {
> +			u64 tstamp = le64_to_cpu(eop_desc->wb.dma_tstamp);
> +
> +			igc_ptp_tx_dma_tstamp(adapter, tx_buffer->skb, tstamp);
> +		}
> +
>  		/* clear next_to_watch to prevent false hangs */
>  		tx_buffer->next_to_watch = NULL;
>  
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index 8dbb9f903ca7..631972d7e97b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -432,6 +432,29 @@ static void igc_ptp_systim_to_hwtstamp(struct igc_adapter *adapter,
>  	}
>  }
>  
> +static void igc_ptp_dma_time_to_hwtstamp(struct igc_adapter *adapter,
> +					 struct skb_shared_hwtstamps *hwtstamps,
> +					 u64 systim)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +	u32 sec, nsec;
> +
> +	nsec = rd32(IGC_SYSTIML);
> +	sec = rd32(IGC_SYSTIMH);
> +

Why are we reading systime register in the hotpath?

> +	if (unlikely(nsec < (systim & 0xFFFFFFFF)))
> +		--sec;
> +
> +	switch (adapter->hw.mac.type) {
> +	case igc_i225:
> +		memset(hwtstamps, 0, sizeof(*hwtstamps));
> +		hwtstamps->hwtstamp = ktime_set(sec, systim & 0xFFFFFFFF);
> +		break;

This seems to take the seconds from IGC_SYSTIML/H but the lower 32 bits
from the systim value passed in which is the DMA timestamp I guess?

If that value is a u64 why can't we simply directly convert it?

Wouldn't we rather be using something like timecounter_cyc2time here
instead of directly reading the clock in the hotpath? How does this
handle things like rollover where the DMA timestamp was just captured
before a rollover and now we put the wrong seconds value..

If we already get a 64bit value from the DMA timestamp why do we even
need to read seconds here? is it the wrong time format?

What does the datasheet say for these fields?

Thanks,
Jake

> +	default:
> +		break;
> +	}
> +}
> +
>  /**
>   * igc_ptp_rx_pktstamp - Retrieve timestamp from Rx packet buffer
>   * @adapter: Pointer to adapter the packet buffer belongs to
> @@ -549,6 +572,28 @@ static void igc_ptp_enable_tx_timestamp(struct igc_adapter *adapter)
>  	rd32(IGC_TXSTMPH);
>  }
>  
> +static void igc_ptp_disable_dma_timestamp(struct igc_adapter *adapter)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +	u32 tqavctrl;
> +
> +	tqavctrl = rd32(IGC_TQAVCTRL);
> +	tqavctrl &= ~IGC_TQAVCTRL_1588_STAT_EN;
> +
> +	wr32(IGC_TQAVCTRL, tqavctrl);
> +}
> +
> +static void igc_ptp_enable_dma_timestamp(struct igc_adapter *adapter)
> +{
> +	struct igc_hw *hw = &adapter->hw;
> +	u32 tqavctrl;
> +
> +	tqavctrl = rd32(IGC_TQAVCTRL);
> +	tqavctrl |= IGC_TQAVCTRL_1588_STAT_EN;
> +
> +	wr32(IGC_TQAVCTRL, tqavctrl);
> +}
> +
>  /**
>   * igc_ptp_set_timestamp_mode - setup hardware for timestamping
>   * @adapter: networking device structure
> @@ -562,9 +607,14 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
>  	switch (config->tx_type) {
>  	case HWTSTAMP_TX_OFF:
>  		igc_ptp_disable_tx_timestamp(adapter);
> +		igc_ptp_disable_dma_timestamp(adapter);
>  		break;
>  	case HWTSTAMP_TX_ON:
>  		igc_ptp_enable_tx_timestamp(adapter);
> +
> +		/* Ensure that flag only can be used during HWTSTAMP_TX_ON */
> +		if (config->flags == HWTSTAMP_FLAG_DMA_TIMESTAMP)
> +			igc_ptp_enable_dma_timestamp(adapter);
>  		break;
>  	default:
>  		return -ERANGE;
> @@ -683,6 +733,39 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
>  	dev_kfree_skb_any(skb);
>  }
>  
> +void igc_ptp_tx_dma_tstamp(struct igc_adapter *adapter,
> +			   struct sk_buff *skb, u64 tstamp)
> +{
> +	struct skb_shared_hwtstamps shhwtstamps;
> +	int adjust = 0;
> +
> +	if (!(skb_shinfo(skb)->tx_flags & SKBTX_IN_PROGRESS))
> +		return;
> +
> +	igc_ptp_dma_time_to_hwtstamp(adapter, &shhwtstamps, tstamp);
> +
> +	switch (adapter->link_speed) {
> +	case SPEED_10:
> +		adjust = IGC_I225_TX_DMA_LATENCY_10;
> +		break;
> +	case SPEED_100:
> +		adjust = IGC_I225_TX_DMA_LATENCY_100;
> +		break;
> +	case SPEED_1000:
> +		adjust = IGC_I225_TX_DMA_LATENCY_1000;
> +		break;
> +	case SPEED_2500:
> +		adjust = IGC_I225_TX_DMA_LATENCY_2500;
> +		break;
> +	}
> +
> +	shhwtstamps.hwtstamp =
> +		ktime_add_ns(shhwtstamps.hwtstamp, adjust);
> +
> +	/* Notify the stack and free the skb after we've unlocked */
> +	skb_tstamp_tx(skb, &shhwtstamps);
> +}
> +
>  /**
>   * igc_ptp_tx_work
>   * @work: pointer to work struct
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
