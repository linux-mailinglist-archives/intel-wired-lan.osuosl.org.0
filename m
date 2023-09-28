Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8D17B27A5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Sep 2023 23:42:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B2A2F4149F;
	Thu, 28 Sep 2023 21:42:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2A2F4149F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695937360;
	bh=c2O5mtDfya0i5Ivga3nTvqjo30WhB5luYrVazcl9Tfk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=phRCn3omjGZMfS4ZVQGcQtGulXd8hkcBHrHo1FykGlaI6iqNG1hMlg6YLvgRMgsAk
	 FbC2KpB7rnqfz1Vo6ct8yD0wb4Gk36gSOE2Rfsb+dV6kc7r+KJI56KRTyfZg7NvfKW
	 xx18aedkS59jGJZsXwbjUJhXB9qkeJ1mnEI2ea+pgoe6LQrSIul1oIzwnR12TObk6e
	 UM4o1yD6RkOioaoCldsQ5cF71Xbq1fzIlOrvNZrDzmiqZ8S7LQKOWuHjzMOlBXb7/c
	 J/kUaHkI5dbydughfrN8v9Btyz/FNagdMTM5as3db2IUXm4D1NpGC4ApqEcKSbHe7L
	 2fsZ4+0loRqdQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pv6j1OFwKZPn; Thu, 28 Sep 2023 21:42:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A4A7400D0;
	Thu, 28 Sep 2023 21:42:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A4A7400D0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 43A5A1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Sep 2023 21:42:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1332781F26
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Sep 2023 21:42:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1332781F26
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XhZHJ0Qdwv0W for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Sep 2023 21:42:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE5E881ED3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Sep 2023 21:42:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE5E881ED3
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="382083196"
X-IronPort-AV: E=Sophos;i="6.03,185,1694761200"; d="scan'208";a="382083196"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 14:42:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="865446026"
X-IronPort-AV: E=Sophos;i="6.03,185,1694761200"; d="scan'208";a="865446026"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Sep 2023 14:42:31 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 28 Sep 2023 14:42:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 28 Sep 2023 14:42:30 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 28 Sep 2023 14:42:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dM8mWW3c0bnJN4Ib7wlgFj+fZA3SgJucdnLEBZQFeqNu2h8bOlSX24WbOEuY3r7YSQLSOR+bygaeiDIRPjU0RMafsBV8d03GJ3sx2HrGw0uKwm8a+SIeOZF8FvT0hJcKF6x8tSvUn7gWE4Vv8IN9VNcVpfiHO64BpeG29kWqF+u7Syee4/rhCnMDIGZKz7oUMzzXvEaI9B1dZtXjZDy1pYyiU3k1ApFdS+UBfnAX5OCDDn0k4v9mdd1SEWZFb6ZGuHF4Y7FYXtfIBqzv+R80Vqfu5CU+xeRIKOwM/BEC26bCUBk9cHG3bVxes/cPuaZOIIXhA2tnkx098rw4OeAIsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=spSMlT1F1Q+ECmH+nWaEsAAno6mPJYGdiUD5ePBMbvY=;
 b=SwOLC9GlOvA98Xu015n8fkaPpRcaCdufkH2lhOqq+LuH29XWXi5ZhY3X7CzXYbbqR9w06gBORVMVvewFuafV5OBDBwdS1yLfmB7g2h34kBc8IKBcSjK+MwQlXdh5C8piAJ01NFCye7J8SGPJWZWbJCLarTcLRQyBF0ngLD1WYAt234XD/z/5q+91C4d6vnVRtSj+9W+Rg6hWrEvdrI4hvdXoH8owDZFTVgYxLx7E7aH18Ckr/fWqdNv4ztuDw/JxAiAGAEG0dgNsaM6sEvXq1y0/xHu/sNneIMg6HviFPY427M3ikevqYT/WlQKq+/c9aAFG2vYFFARxJLkOgU4x8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DS0PR11MB7972.namprd11.prod.outlook.com (2603:10b6:8:124::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.22; Thu, 28 Sep
 2023 21:42:11 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::ed7a:2765:f0ce:35cf]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::ed7a:2765:f0ce:35cf%5]) with mapi id 15.20.6813.017; Thu, 28 Sep 2023
 21:42:11 +0000
Message-ID: <e5cd09d8-9c67-6af2-6d1a-92cb037be994@intel.com>
Date: Thu, 28 Sep 2023 14:42:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Aniruddha Paul <aniruddha.paul@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230927104253.1729049-1-aniruddha.paul@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230927104253.1729049-1-aniruddha.paul@intel.com>
X-ClientProxiedBy: MW4PR04CA0059.namprd04.prod.outlook.com
 (2603:10b6:303:6a::34) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DS0PR11MB7972:EE_
X-MS-Office365-Filtering-Correlation-Id: b40ab487-0269-4fb7-5596-08dbc06bc55b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uHBWWNM56qkYoVhCucIfdHfUV2ADd2RlFpSMyUEUZUnFm5CIgnavmlaNQyPAMpbbEGP3mNeSwllY5LeqDy9vO0OOBIBuimqfZ8HjLamknA2QgbyRpXUaaNiUfg+rsOa1zwOGNuluQw8Eg0EcbR5uxmsqK4fVU0cTtp44xAdCnSPdjVqUgGABuN+762c7rD90AG8eKI1M6gDisF9WDpTsrVbuzLT4q4UKxsyqcwTh+Fj6HhASJTOLMIEoz9zMIJW10u4vRfoXJNf8dtGdfp0UcqzcKyqVDot0PVosAuWWZRV+YOHiisWscyHCSqEe5RFOgpO0L+B1pScENJk903OeiLCLJImjgGPM/SeQb9440MHKJ3LEMsG6xOMpSg+jtF4xsuox2EtRWqTsBsBD6fy+afpnoRoPcQQfzCiXvyrzrm1d1sQ3mlM9Itkp2lr6sdb0AIpid9QJfRJ29JEp/lznGkonGZ+/x3gCXkzRGtXiuukkfzKL3qBAo3bn7sxzNoLjImshd45kmqMlBmJ436EIfU6eL7gGGbPDrYjcQke1QuteCuA8haf/lZZu05Xj7nRibW6A/DPLPyS4jSBfPgq1Rvd6iF5Ttug2FCk8X4j5L/L2KtlxHXPHvt9ztGPa6pPUcawCexwF8fetYYcuEslvNw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(366004)(39860400002)(396003)(376002)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(2906002)(83380400001)(38100700002)(6512007)(478600001)(2616005)(6506007)(36756003)(26005)(86362001)(107886003)(53546011)(6666004)(31696002)(6486002)(41300700001)(31686004)(5660300002)(8936002)(4326008)(66476007)(8676002)(54906003)(66556008)(66946007)(82960400001)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2MyT01OZzFNVFZTQW0rQzRpSUdCS0M0L2ZoU214OGF3UG05WXNPNkV5ZFVH?=
 =?utf-8?B?em1MQ29vR3Mxd2k5aU9YbUQrQktMUWVRVTBhcm8zODRQT2lnWnN6T2xreTFt?=
 =?utf-8?B?Z0FiemcydTZDRFQ1elJMMGc3cHN5UDB3VjFFMEZ6RVArYjhQVFlFK25nbldK?=
 =?utf-8?B?enFMc2VITkVyOXRpZHFSRGhuZGxieE1WbzNBVkY1NWVuTnkvbm9vNXQ1Q2V5?=
 =?utf-8?B?dXRYdUNQWDhWaFJOY05vMkdPY0k2VTMvV1VmdlBxNjg5bXRKYUovTXJlWFlR?=
 =?utf-8?B?VlhWZEFtKzZSSTdzM3JMc2xmU3pieUpJeEpRVStITTludnFOdDJNLzMvQnor?=
 =?utf-8?B?cmRGOVhNYTd0a3FyNFhPTnNZTVNvWEF5Zzdrd2lRWXc1M2ZLYmJmUFdOeGor?=
 =?utf-8?B?RVhSRGovczdWZ3Y4Vi93UTR4ZS9LY2VmbS81b0F5bVFvZ1czdEh4b3R5SGtJ?=
 =?utf-8?B?aGJyTGkvUG05VU9ONVVQUzNETDR2WmNxNkRDNzZwZS90OEFUTVN1Mmt5eDJo?=
 =?utf-8?B?YmRMQ1ljOUtpekVjUVZLL2RpNFdOdVZyY0U2WVVEZHdpeFIxbzlLV0grMGpy?=
 =?utf-8?B?ZXlTTFpWeFFmUE1HUUt6TDc2dzdnSE1INW05NTVaUnZsbk5JRFlqcGdZQjI0?=
 =?utf-8?B?Wk5CeEVVWXA4TDBxQldyQ25KbW9Ubjl2eDlDNUZFTHdjdXNvQXF5TmZRNk9S?=
 =?utf-8?B?T0xjTSt6NG5ibHNDY2g0bjRNTjVkUTAwQU9YbFhBOTU1c0Q5V1Z3bUdsNUo4?=
 =?utf-8?B?bU9vQ0dicGh2bUYycVpJUkMyN1BYam9RQTcySkZJVEVya2tOeXpWMi96RXVZ?=
 =?utf-8?B?RXFDTFhycXNycWlpZTcxeFpqY3M0RDlhZ1VFUzlKNDlNbVp5NFN0Rkd0RDRN?=
 =?utf-8?B?Nlk2UEJ4RmlNMVUvaFE5aXFkMHlXNjB1MzdYNHVzQ2tBZkxWVzVrckJ3OGV4?=
 =?utf-8?B?MzJGUFpzL1RoTHRucHAwaDBzNjJzMm1uN1hORUdmZjZ3T01QSTBrVjh2ampM?=
 =?utf-8?B?bjNtTHNxNExER2VycEQ4Q3ZSOFpjVkNBNDVvOXNuYUxkQVltN1VJVDI0TXgv?=
 =?utf-8?B?b2dnNXpsZVZuK0pEWVN0LzM0dnQ1RkFvSTdRZ0JlNCtPUC9SMkFHU0hiZ2My?=
 =?utf-8?B?VTVMZ3YxSmdoV09BZkZpWUdRV3FWRVNsSWoybGdJdjFpQVhERGdLUXpSaXdz?=
 =?utf-8?B?NCtnaHd4UTFmQUZ0V0JKUFM1amE3dHlIUVR3TzFhNWV5M1VtQVlUQkxMd0VU?=
 =?utf-8?B?dGc3S1VOdzZGQ3JFT3NSN1gxRHVBZFNwSHV2eDZRanVaUVM5ZXFORTdORlk1?=
 =?utf-8?B?QWVCVmkyeU9kYWo5a3RCMHdxN051NGE4bUU0ajFEZzF1RW1BeU4wRU5UU0Nv?=
 =?utf-8?B?UjlyOXE5SnJTY1RiRnNjeEtnUkdRSUJiVW1JZHVSYWo3bG1zZStZMmtoOGpT?=
 =?utf-8?B?ZVd0QWEvc2lKWTh5eDk1TTNwRlgyM3JxeEtsV1RXeTQwSFErNXFLazhLcDJE?=
 =?utf-8?B?ZCtqQ1lsajNPRXZtRi90MkpnY1hhT2VvVGNxb0M4RjRuKzNQMUZZS05mTXox?=
 =?utf-8?B?KzJVVmY4RTNRRUwxZ0hWZzBFMlhleWtjVG5vZHRBN3BjdHNsZGxrTU1XWGha?=
 =?utf-8?B?NTRyRUJRcTB2aXNvNU45dXR1S1FJaDMxRTlRbzhyUXVyVTh0QUU4Sm9JZTNk?=
 =?utf-8?B?OWRSSFMxVmZvblpyNy9ZcUdycVRWQkwyR0Z5Z2UrallTejNXNWZBdE9sL2dl?=
 =?utf-8?B?RWl4ZXFqeGdxV2d1UE5OWjVGeTFTOWlGZFI0SUtXR0FtSmoreTlkcS96UWpT?=
 =?utf-8?B?RGZvVUdxRVNoczN5UzRoaEpLemNLT1l4MTZNR201ZFMrUVRFbkkzRVZXdUZq?=
 =?utf-8?B?ZkovOVJSMUJyVWFrbHU1YUloVFI4WGl1ejVaQTUvN0JqclRFMmk5Q2g1Q0ZW?=
 =?utf-8?B?MjNXdUxZRm10MWhZUEJWWjEzR1N4S09zeVVHZEpzNnprUHZUZStLT0dzaWhi?=
 =?utf-8?B?VjhHc3JRQkF4RTFqTXI0d3NpQ0NNVVdkVGNoRU5IS2hqNHFaajBPeXBKTm5N?=
 =?utf-8?B?Z3JybU1XRFcvcjRLTnlIS1VWa2M5ZGxjTG9HV3U3NmdncmZjNkN4NHVnMUEv?=
 =?utf-8?B?N1ROeW5teWdnZ2NSYXpZYkcxZnZBbm1MR1RObzZZNnRCcTZqRmZNeGNyMnpu?=
 =?utf-8?B?RHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b40ab487-0269-4fb7-5596-08dbc06bc55b
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2023 21:42:11.0177 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2C5GCI4Mzi/RFjMOp9IEsmI5mzeX/s1TQwpuuLMYkpX93bE/DWR8Z7/HgIx9qgzatdeFwNC+NTenVFnMcjxyMAPXxqG/a42ybP15Sbhih98=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7972
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695937352; x=1727473352;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zz6vF2MHvpIdCNRdUSoyA4n/d9MkW1A3mGGuK5eIMdU=;
 b=PrVcK91eqLnzuhAUBItdY7KDnbvgt/VHyIErq1fyBimI1lLrctWWgSm3
 wbDC7Oi1y/CkMl0UW6pIcWGOkf0Df2ku6JvvxRk/j9L3V4zi0sTJMH6Jw
 4aUGvgTqzP7zNvYe2Uv56FoeYgq3OzLAS9JZ0XuPdfjtzuPeBWoLh6Gz+
 54kPzKc4PtALvJdNNJMmdKOL0tDlt5aCKgn1+MeiPBiYNUz7HHhjAs1ux
 WoRwQIcBEhBDLA38vGr7UlgsOI7s9bLA2ooYPjmHalrw6Nd8+KG4qtqqg
 vwvcNZpewtmuuy1eYB8BC8h8PfOZkyuLMbofxCMV7rBLcVo8R1ln+t7Ps
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PrVcK91e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v1] ice: Fix VF-VF filter rules in switchdev mode
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
Cc: netdev@vger.kernel.org, Wojciech Drewek <wojciech.drewek@intel.com>,
 marcin.szycik@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/27/2023 3:42 AM, Aniruddha Paul wrote:
> Any packet leaving VSI i.e VF's VSI is considered as
> egress traffic by HW, thus failing to match the added
> rule.
> 
> Mark the direction for redirect rules as below:
> 1. VF-VF - Egress
> 2. Uplink-VF - Ingress
> 3. VF-Uplink - Egress
> 4. Link_Partner-Uplink - Ingress
> 5. Link_Partner-VF - Ingress
> 
> Fixes: 0960a27bd479 ("ice: Add direction metadata")

Why iwl-next and not iwl-net? Also, this patch does not compile.

> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Aniruddha Paul <aniruddha.paul@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_tc_lib.c | 90 ++++++++++++++-------
>   1 file changed, 62 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> index 37b54db91df2..0e75fc6b3c06 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> @@ -630,32 +630,61 @@ bool ice_is_tunnel_supported(struct net_device *dev)
>   	return ice_tc_tun_get_type(dev) != TNL_LAST;
>   }
>   
> -static int
> -ice_eswitch_tc_parse_action(struct ice_tc_flower_fltr *fltr,
> -			    struct flow_action_entry *act)
> +static bool ice_tc_is_dev_uplink(struct net_device *dev)
> +{
> +	return netif_is_ice(dev) || ice_is_tunnel_supported(dev);
> +}
> +
> +static int ice_tc_setup_redirect_action(struct net_device *filter_dev,
> +					struct ice_tc_flower_fltr *fltr,
> +					struct net_device *target_dev)
>   {
>   	struct ice_repr *repr;
>   
> +	fltr->action.fltr_act = ICE_FWD_TO_VSI;
> +
> +	if (ice_is_port_repr_netdev(filter_dev) &&
> +	    ice_is_port_repr_netdev(target_dev)) {
> +		repr = ice_netdev_to_repr(target_dev);
> +
> +		fltr->dest_vsi = repr->src_vsi;
> +		fltr->direction = ICE_ESWITCH_FLTR_EGRESS;
> +	} else if (ice_is_port_repr_netdev(filter_dev) &&
> +		   ice_tc_is_dev_uplink(target_dev)) {
> +		repr = ice_netdev_to_repr(filter_dev);
> +
> +		fltr->dest_vsi = repr->src_vsi->back->switchdev.uplink_vsi;
> +		fltr->direction = ICE_ESWITCH_FLTR_EGRESS;
> +	} else if (ice_tc_is_dev_uplink(filter_dev) &&
> +		   ice_is_port_repr_netdev(target_dev)) {
> +		repr = ice_netdev_to_repr(target_dev);
> +
> +		fltr->dest_vsi = repr->src_vsi;
> +		fltr->direction = ICE_ESWITCH_FLTR_INGRESS;
> +	} else {
> +		NL_SET_ERR_MSG_MOD(fltr->extack,
> +				   "Unsupported netdevice in switchdev mode");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int ice_eswitch_tc_parse_action(struct net_device *filter_dev,
> +				       struct ice_tc_flower_fltr *fltr,
> +				       struct flow_action_entry *act)
> +{
> +	int err;
> +
>   	switch (act->id) {
>   	case FLOW_ACTION_DROP:
>   		fltr->action.fltr_act = ICE_DROP_PACKET;
>   		break;
>   
>   	case FLOW_ACTION_REDIRECT:
> -		fltr->action.fltr_act = ICE_FWD_TO_VSI;
> -
> -		if (ice_is_port_repr_netdev(act->dev)) {
> -			repr = ice_netdev_to_repr(act->dev);
> -
> -			fltr->dest_vsi = repr->src_vsi;
> -			fltr->direction = ICE_ESWITCH_FLTR_INGRESS;
> -		} else if (netif_is_ice(act->dev) ||
> -			   ice_is_tunnel_supported(act->dev)) {
> -			fltr->direction = ICE_ESWITCH_FLTR_EGRESS;
> -		} else {
> -			NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported netdevice in switchdev mode");
> -			return -EINVAL;
> -		}
> +		err = ice_tc_setup_redirect_action(filter_dev, fltr, act->dev);
> +		if (err)
> +			return err;
>   
>   		break;
>   
> @@ -696,10 +725,6 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
>   		goto exit;
>   	}
>   
> -	/* egress traffic is always redirect to uplink */
> -	if (fltr->direction == ICE_ESWITCH_FLTR_EGRESS)
> -		fltr->dest_vsi = vsi->back->switchdev.uplink_vsi;
> -
>   	rule_info.sw_act.fltr_act = fltr->action.fltr_act;
>   	if (fltr->action.fltr_act != ICE_DROP_PACKET)
>   		rule_info.sw_act.vsi_handle = fltr->dest_vsi->idx;
> @@ -713,13 +738,21 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
>   	rule_info.flags_info.act_valid = true;
>   
>   	if (fltr->direction == ICE_ESWITCH_FLTR_INGRESS) {
> +		/* Uplink to VF */
>   		rule_info.sw_act.flag |= ICE_FLTR_RX;
>   		rule_info.sw_act.src = hw->pf_id;
>   		rule_info.flags_info.act = ICE_SINGLE_ACT_LB_ENABLE;
> -	} else {
> +	} else if (fltr->direction == ICE_ESWITCH_FLTR_EGRESS &&
> +		   fltr->dest_vsi == vsi->back->switchdev.uplink_vsi) {
> +		/* VF to Uplink */
>   		rule_info.sw_act.flag |= ICE_FLTR_TX;
>   		rule_info.sw_act.src = vsi->idx;
>   		rule_info.flags_info.act = ICE_SINGLE_ACT_LAN_ENABLE;
> +	} else {
> +		/* VF to VF */
> +		rule_info.sw_act.flag |= ICE_FLTR_TX;
> +		rule_info.sw_act.src = vsi->idx;
> +		rule_info.flags_info.act = ICE_SINGLE_ACT_LB_ENABLE;
>   	}
>   
>   	/* specify the cookie as filter_rule_id */
> @@ -1745,16 +1778,17 @@ ice_tc_parse_action(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr,
>   
>   /**
>    * ice_parse_tc_flower_actions - Parse the actions for a TC filter
> + * @filter_dev: Pointer to device on which filter is being added
>    * @vsi: Pointer to VSI
>    * @cls_flower: Pointer to TC flower offload structure
>    * @fltr: Pointer to TC flower filter structure
>    *
>    * Parse the actions for a TC filter
>    */
> -static int
> -ice_parse_tc_flower_actions(struct ice_vsi *vsi,
> -			    struct flow_cls_offload *cls_flower,
> -			    struct ice_tc_flower_fltr *fltr)
> +static int ice_parse_tc_flower_actions(struct net_device *filter_dev,
> +				       struct ice_vsi *vsi,
> +				       struct flow_cls_offload *cls_flower,
> +				       struct ice_tc_flower_fltr *fltr)
>   {
>   	struct flow_rule *rule = flow_cls_offload_flow_rule(cls_flower);
>   	struct flow_action *flow_action = &rule->action;
> @@ -1769,7 +1803,7 @@ ice_parse_tc_flower_actions(struct ice_vsi *vsi,
>   
>   	flow_action_for_each(i, act, flow_action) {
>   		if (ice_is_eswitch_mode_switchdev(vsi->back))
> -			err = ice_eswitch_tc_parse_action(fltr, act);
> +			err = ice_eswitch_tc_parse_action(filter_dev, fltr, act);
>   		else
>   			err = ice_tc_parse_action(vsi, fltr, act);
>   		if (err)
> @@ -1856,7 +1890,7 @@ ice_add_tc_fltr(struct net_device *netdev, struct ice_vsi *vsi,
>   	if (err < 0)
>   		goto err;
>   
> -	err = ice_parse_tc_flower_actions(vsi, f, fltr);
> +	err = ice_parse_tc_flower_actions(netdev, vsi, f, fltr);
>   	if (err < 0)
>   		goto err;
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
