Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 932B34AE610
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Feb 2022 01:33:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26563408DF;
	Wed,  9 Feb 2022 00:33:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9LU0JiGCU6QS; Wed,  9 Feb 2022 00:33:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12D2140355;
	Wed,  9 Feb 2022 00:33:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D6381BF9AD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Feb 2022 00:33:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 06C5280BCA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Feb 2022 00:33:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vFBqT2WtLY3i for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Feb 2022 00:33:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F59B80BC4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Feb 2022 00:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644366827; x=1675902827;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5wYjPp1ZTVZKBr5wp13Yti+l8EigKANx7gpCrHhvrXk=;
 b=ikJHQVlfG+HLUEsikcRoNUBuVtvWBNDCDThJEWbNDv9fwfaEnhMr90Yi
 YAp7OkdocgH21iUqYES3mcqmd+u0K0crcGp6Vsh0CmACSPULgt2u2oZez
 Ljm1jVDm+kswey8FpUX0vNPXc/+voeKh3kWQZs6JCvsk8Ok5zudyvmX4Z
 du79npZw24hVWtSnxc+osHXdaH59E35zyx6+uzT26QQfotJDH89yIMWzJ
 zMrXD8QEeY54mWNzSBgwv+d2WsgCyNbSsHDRV+c1uwLMHoBD4y6Pexril
 YBgIb+LkqBUFgxWileJwNgmHbzeiItbHcucgbuIDHde8mUNqxgEH4Fw5X w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="232650422"
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="232650422"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 16:33:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="633036005"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga004.jf.intel.com with ESMTP; 08 Feb 2022 16:33:45 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 8 Feb 2022 16:33:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 8 Feb 2022 16:33:45 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 8 Feb 2022 16:33:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H/YcLpG3YAIg1ZViYL+5A00CY1A7EghnzGgxWIVN5YyS34zrudgg3m/8yvSxgf2wdUsUXQ/g2g93wKxmSAhQyz0RlavztA+I8u6pQqWoqH/nJRFWbpjBTfiLSCga1w6IxEmauxm6BNO0U3ekghxbv2apcsGGkAIGaXlIQCvmCcfq9SzX40ok+ocbvMh4HGkxqJ2ZM6A8uyuS8NxauwLiop+yXYpVHmPSI7cGSCBzG3aSDYY7cNG2LeebhL5Bv9oi9XQWi6L4uT+nMSZOTURHPaw/r2zdIZYVPPIcpW4ZzLmZtA8z5ZNv3pk9A2DnWiesz+uANdyuYu8o4e3bEqgW+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qInHflGLde8FrhOfQ5AQelzdy0DFthBTuztATBSZDrU=;
 b=Rk0d89N7kvWSMGfqvWMBa21uo9ftv/ZShL/NjaFSylqXBedO9zsVUmmsGOl3yICoQvSdGMBnaN1AbXR5XLkA2yoOM4zzmxQGvgbfjpvm+Ow5ow4HLCAUgixgIyOvtyL5yFuMrgvTvIm1aeWrUgblgXuYZv4Vfckq3oioKr8fnnJ9RuZW4lMJQMsqpAt+u8jlr/YvscYV4bceb6jrSG1nGNSGGKfnceh0IijJF4PafRPZGQusXBB7oRbpI9i04ZmwRBQkHc2y9dO/v0m6vavp7FiHmd1iaemCETO8RhqS2ooYf4AHs4Nxky9MIlat1KrnGdZJriBd1lKtGSKSiuP2Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by SN6PR11MB3087.namprd11.prod.outlook.com (2603:10b6:805:d3::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.17; Wed, 9 Feb
 2022 00:33:43 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::d016:68bf:aa12:d92d]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::d016:68bf:aa12:d92d%3]) with mapi id 15.20.4951.019; Wed, 9 Feb 2022
 00:33:43 +0000
Message-ID: <528f99c7-6cc7-39a3-bb94-fcb9de444746@intel.com>
Date: Tue, 8 Feb 2022 16:33:40 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
References: <e3926433-d05c-92b1-a37d-204cf54e270c@molgen.mpg.de>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <e3926433-d05c-92b1-a37d-204cf54e270c@molgen.mpg.de>
X-ClientProxiedBy: CO2PR05CA0003.namprd05.prod.outlook.com
 (2603:10b6:102:2::13) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 110ae3af-d180-4a53-5c29-08d9eb63d37c
X-MS-TrafficTypeDiagnostic: SN6PR11MB3087:EE_
X-Microsoft-Antispam-PRVS: <SN6PR11MB30871A3FBC6724ACF14A7C1C972E9@SN6PR11MB3087.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5lCnL5xE+zOMMg29GCkA6ebRG15HFe/mrn89F9Vy+7uvdTaxPi+sF8h6afx3MeHbfC92J9OqFEB8RnQ2f5LH2aMe2sAY3dzKhCWwAPwKzEhJRmxyhZPEP6NuEd1hPWH2cOh/F1gO+hNgS8pZyZgug1wMScRGUx9y2U6zClZ5ooDW83TFLFPkXjBR2vY+fE2GRByc2UbK/d3nDs+5QF/TM7viEy1DD1pacG/4wkvtYYM/polDg7e8B10ojN8w3lWNg38C7QU+fHYOc7udiTHImvRRk/KMJV0pkE0IdSTR07XWd7Wc++LfA851BPTj14faEEPsPLPSCZBiGjn9rfJxxLVecfiYdEtPMPDbpRAklTXAOS1Iay9e99rgOQC4HvKxqTBvSgpScUBGVP57H68m7jSejyzqqu5ruiTpZ95QZifg+MMgll2ne3o+XxPtz5xuw4ku2dc9IUTXIlvwNETsWTIqeheli6Mu7fOudQSvhWdBEveAms/wMLM0O57HjLD4dt92tZLYfw0xgNhb7fUh59SrpJOVdW4iInJL3pj1OA/rvo0XEGE+JKll24q04dStf41bwifpN2L6RbaIO/PWkC4TxlXbNwUUu6rvd8u10vKAekyriQV+Ltv7/Cqose3kMgUfN7MrZ5NZGKxbSnSRJMBXkc3+3vcefG6vipzjtTl4JVWTOVYEeff07FjAykTCs1Y6Q3OfBlZlAKizbYbla+TO+yEnavJaIxtngmZW0kk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(8936002)(36756003)(4326008)(8676002)(2906002)(44832011)(508600001)(66476007)(31696002)(66556008)(26005)(186003)(82960400001)(2616005)(5660300002)(86362001)(31686004)(6486002)(6506007)(66946007)(53546011)(110136005)(83380400001)(6636002)(316002)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?djZCTmpjY2RtVDhLazVjU2ZLc1ZNWnJabEJaK3NpbTZoZnd5UkZtM0FsNnF0?=
 =?utf-8?B?dVNwTmNUS001a1Q1Sk52WHlTVUdLSHlmbC8rUFd3bzJvL08yZi94SWRXZFM4?=
 =?utf-8?B?RkJsQ3JWKzRaT2owM3N6RjhxQkdvTldJdk9iT1g2M0praElNRU5UbFl0Q1RJ?=
 =?utf-8?B?TUVFVmUxd3FlT2tRVEl3cmJoN0lOeWFVODFuTzk2QzlRTyt3ZWF5VUZlSFlQ?=
 =?utf-8?B?d0p5ZEp6M1dRWFlkM1hvbVl6Si9CRHlyWVdmbElrb1BjZGNtYmlFNm5uK3pq?=
 =?utf-8?B?bE4xbDI3ckNtbE1xaFpTUnppMXNPcE00cG5rL0UvTTBwbWo2L1JYUHd5eVl5?=
 =?utf-8?B?YkdsYllxRmxKVDNRWitnN1U4a0NQN2c2S1lwWGphNWpnSDhFNG9ONlpXelJa?=
 =?utf-8?B?ZWhxN1RjS1BZWWx6dE9QVTJYeVM4RGVBNTlYdG1XUG9sc3J4SE92clQ3K09U?=
 =?utf-8?B?OWh0WjhwQ0hha1FycWw0dlkwRWNwRDBHalFYWUdYNllENStsTy9YeExEdE5F?=
 =?utf-8?B?SGdWTkpFMlFscTI0RENXNU5HcmQ2aWRNZFRlbHNYM3JMQk1BOGNXVk5zWlFu?=
 =?utf-8?B?Nm9rYXVyOERqR0JVN2dJNk4xM3kxY1lkTGpqa044M3c0RkJIcmZHSHZkeXRu?=
 =?utf-8?B?TVZtVkJqdHI0WkV3a2VabFdvUHRYN0ZqK0JUektrUVpsYk1IRDY3Y1FLWUtV?=
 =?utf-8?B?cFR2c2pqeHFXdGQ1OHZER1g3ZTE5RDdqRm14S3J2YVlHbXNBQ2RIOUxYWG1p?=
 =?utf-8?B?YXNPMVVSZUZPWXBzNnJ5dDVlcWNQblR1TVRHTzZ2eWkzZTRoQ3FZUUtGdlZS?=
 =?utf-8?B?d1hGVkZRUGFLaDZYV3o5Riswc3IxK1lNYzNFVHdBOVR2NGlRSHNlejA3Y3pt?=
 =?utf-8?B?bkkzSEpKNCs4T1RGTnVGV1YrclhITEEyeVBVNU9UaG1uT24yYXpjR2RqZXV5?=
 =?utf-8?B?NC9lRWNTWnpwNVRvTzBtMEpUL2ROY3ZjSHdTUVBNQW9DNkkzRSs2aWt5RlNW?=
 =?utf-8?B?QzF2NW41T0xlSWpidTd5YmVLVDFGN0dBUTNzMnRBR3kyUER5cU9TSVJSWndp?=
 =?utf-8?B?MG0wTXNHWm5UT3hTVFNnRXh4YUltWWpJL3lOVzhZcTg4SXF0WnRVQW9KTnMy?=
 =?utf-8?B?bVZJMW5EalJ2eFkzRjVRNnFWN3ZwaWxaZDF4dzZhamhmSjFmMHU4ZmFwQWs4?=
 =?utf-8?B?RnVPYlRKQnhFdmJtNnZnOWc2SjNmY3kxODZYK25GR3ZGZHdFVVV1TmtqYmFo?=
 =?utf-8?B?cnBPMzRjNmZlQjBEblhmS1NmdTdvNVpIbWtneWFkcnhvbGxDTzNTdnRQMWlE?=
 =?utf-8?B?bDFHNGF3bHRWemlKWEJKMWlYM0ZFR09ZL3dCWlVBZ1BsOEFreU55ZVV4QTg3?=
 =?utf-8?B?NFZVdnRPVGhaUDJPdTdRRkhLSGsyZGwxNnlMVG5NTkFvV0xKN0x4MWNybU5I?=
 =?utf-8?B?UmxkM2lzS0JjRm81SjU2MjN5L09rN1loVDhBUStsOC8vU3NkQ2hoUVdZdS9G?=
 =?utf-8?B?d0FCc1hxL3Y0bUhiMm9pQWNaT01DSWhpN0x0MHFPc3lGUVBCZG1SSFphbFlk?=
 =?utf-8?B?NE1LbUxYUldLT01JbC9SVTZ4cFB6bUF6cEFvZ1pIWjFqRTJyTTlVakl3bHJj?=
 =?utf-8?B?YlVvdTM2WmZqa1lNMmFIMzdHVnBUcktFa2tyRWNndHI3UHE1SndFNTBJb1Fl?=
 =?utf-8?B?c2l0N3dPVWxlaEIyWEhIa29mdVZrQUM3TExyLy9hZ1Ntclo1V0xYK3AxVUdu?=
 =?utf-8?B?Y2ZSbHNUUCtJZ3Y4VU9SUkxMbS9NMWxlUThLNE9UeWxiZ290MHZhbnM2L0Nl?=
 =?utf-8?B?Y1lML21CTmNZclVoVUplMStIVXZhbFppSTBKUUZxSDFvZktpbEtPOE1SWFYr?=
 =?utf-8?B?OFo0QVVRR0lNMk9tenpmNWdRNUh4ajlybTFKcnZCdE1oRmtMQTBLZEtyRUdJ?=
 =?utf-8?B?VUNMemxLdzJMRDd2NGhGa0VwT1VVcEpJWkh0M3k2bW93SllzbEhzS0hFYTA1?=
 =?utf-8?B?NHhPdzFkczhNaWVtdDZ6cmNvUy9rOHpoaDlrcnR6eUtDNHNBT01WNXNsN3h3?=
 =?utf-8?B?WlBjSWxsb0tocTgyeHZtZUFHdE9iUDJYc0dmTFQ3RU5WS3hqVjd1cVhyTkJt?=
 =?utf-8?B?NUhKbUh0T0d2N3B1OHlkYTUzMzRRMmRKUjUzTEVlbVpMZkpCTmRHbE9DYVF1?=
 =?utf-8?B?b0Z1ZGNkZVZVK3hFanluZTlZV3dUakFuYi8xYmFsZTNtOFZVL0hqWGpnQ0tB?=
 =?utf-8?B?aVlKTVYzMmhzY0FXaC82WU9jNFB3PT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 110ae3af-d180-4a53-5c29-08d9eb63d37c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2022 00:33:43.3956 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +YsNFuuuQTrp+fE+YhwPOTy2+tGESnL35GnqJwJJ2VW3ccO7ScjMvnVWl66hieL7eHl2dvpPxrAxMN+4VjUR3mUCOX1JE9960oAzcMvJd6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3087
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] BUG: KCSAN: data-race in
 e1000_clean_rx_irq+0x330/0x870
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMi83LzIwMjIgODowOCBBTSwgUGF1bCBNZW56ZWwgd3JvdGU6Cj4gRGVhciBMaW51eCBmb2xr
cywKPiAKPiAKPiBSdW5uaW5nIExpbnV4IDUuMTctcmMyKyB3aXRoIEtDU0FOIGluIFFFTVUsIGl0
IHJlcG9ydHMgdGhlIHJhY2UgYmVsb3c6Cj4gCj4gYGBgCj4gW8KgwqDCoCAwLjAwMDAwMF0gTGlu
dXggdmVyc2lvbiA1LjE3LjAtcmMyLTAwMzUzLWc5MGM5ZTk1MGMwZGUgCj4gKHBtZW56ZWxAaW52
aWRpYS5tb2xnZW4ubXBnLmRlKSAoZ2NjIChHQ0MpIDExLjEuMCwgR05VIGxkIChHTlUgQmludXRp
bHMpIAo+IDIuMzcpICMzNCBTTVAgUFJFRU1QVCBTdW4gRmViIDYgMTM6MTE6MTMgQ0VUIDIwMjIK
PiBbwqDCoMKgIDAuMDAwMDAwXSBDb21tYW5kIGxpbmU6IHJvb3Q9L2Rldi92ZGExIHJ3IHF1aWV0
Cj4gW+KApl0KPiBbwqAgNDEwLjI5NTg5MF0gCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4gW8KgIDQxMC4yOTc0NzVd
IEJVRzogS0NTQU46IGRhdGEtcmFjZSBpbiBlMTAwMF9jbGVhbl9yeF9pcnErMHgzMzAvMHg4NzAK
PiAKPiBbwqAgNDEwLjI5OTcyMl0gcmFjZSBhdCB1bmtub3duIG9yaWdpbiwgd2l0aCByZWFkIHRv
IDB4ZmZmZjhhNTU0NTg0ZDNlYyAKPiBvZiAxIGJ5dGVzIGJ5IGludGVycnVwdCBvbiBjcHUgMDoK
PiBbwqAgNDEwLjMwMTUyNF3CoCBlMTAwMF9jbGVhbl9yeF9pcnErMHgzMzAvMHg4NzAKPiBbwqAg
NDEwLjMwMTUzNF3CoCBlMTAwMF9jbGVhbisweDRhNS8weGM0MAo+IFvCoCA0MTAuMzAxNTQxXcKg
IF9fbmFwaV9wb2xsKzB4NWMvMHgyODAKPiBbwqAgNDEwLjMwMTU1MF3CoCBuZXRfcnhfYWN0aW9u
KzB4NGZmLzB4NWIwCj4gW8KgIDQxMC4zMDE1NTldwqAgX19kb19zb2Z0aXJxKzB4ZTQvMHgyZDkK
PiBbwqAgNDEwLjMwMTU2N13CoCBydW5fa3NvZnRpcnFkKzB4MjEvMHgzMAo+IFvCoCA0MTAuMzAx
NTc3XcKgIHNtcGJvb3RfdGhyZWFkX2ZuKzB4MjZiLzB4MzYwCj4gW8KgIDQxMC4zMDE1OTVdwqAg
a3RocmVhZCsweDE2ZC8weDFhMAo+IFvCoCA0MTAuMzAxNjA0XcKgIHJldF9mcm9tX2ZvcmsrMHgy
Mi8weDMwCj4gCj4gW8KgIDQxMC4zMDI0NzhdIHZhbHVlIGNoYW5nZWQ6IDB4MDAgLT4gMHgwNwo+
IAo+IFvCoCA0MTAuMzA0NTY0XSBSZXBvcnRlZCBieSBLZXJuZWwgQ29uY3VycmVuY3kgU2FuaXRp
emVyIG9uOgo+IFvCoCA0MTAuMzA1NzU3XSBDUFU6IDAgUElEOiAxMiBDb21tOiBrc29mdGlycWQv
MCBOb3QgdGFpbnRlZCAKPiA1LjE3LjAtcmMyLTAwMzUzLWc5MGM5ZTk1MGMwZGUgIzM0Cj4gW8Kg
IDQxMC4zMDU3NzZdIEhhcmR3YXJlIG5hbWU6IFFFTVUgU3RhbmRhcmQgUEMgKGk0NDBGWCArIFBJ
SVgsIDE5OTYpLCAKPiBCSU9TIDEuMTUuMC0xIDA0LzAxLzIwMTQKPiBbwqAgNDEwLjMwNTc4OF0g
Cj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09Cj4gYGBgCj4gCj4gUGxlYXNlIGZpbmQgdGhlIG91dHB1dCBvZiBgZG1lc2dg
IGF0dGFjaGVkLgo+IAo+IAo+IEtpbmQgcmVnYXJkcywKPiAKPiBQYXVsCgpUaGFua3MgZm9yIHRo
ZSBidWcgcmVwb3J0LCBJIGRvbid0IGV2ZW4gaGF2ZSBhbnkgZTEwMDAgdGhlc2UgZGF5cyB0byAK
dGVzdCBvbiwgc28gSSBoYWQgdG8gaW5zdGFsbCBhIFZpcnR1YWwgbWFjaGluZS4KClRoaXMgaXMg
cHJvYmFibHkgYmVjYXVzZSB3ZSBhY2Nlc3MgcnhfZGVzYy0+c3RhdHVzIGluIGEgd2hpbGUgbG9v
cCBhbmQgCnRoZW4gdHJ5IHRvIGFjY2VzcyBpdCBhZ2FpbiBhZnRlciBkbWFfcm1iKCkgYW5kIGl0
J3MgY2hhbmdlZC4gVGhpcyBpcyAKa2luZCBvZiBleHBlY3RlZCB0byBoYXBwZW4sIGJ1dCB0aGUg
Y2xlYW5fcnggcm91dGluZSBjYW4gYmUgdXBkYXRlZCB0byAKYmUgbW9yZSBsaWtlIG91ciBuZXdl
ciBkcml2ZXJzLCBhbmQgc2hvdWxkIGhvcGVmdWxseSBhdm9pZCB0aGUgZGF0YSAKZGVwZW5kZW5j
eS4KCkkgaGF2ZSBhIHBhdGNoIHRvIHRyeSB0aGF0IG91dCwgSSdsbCBzZWUgaWYgSSBjYW4gZ2V0
IGl0IHRvIHJ1biBpbiBteSAKVk0uIElmIGl0IGdldHMgdG9vIG1lc3N5LCBJIG1heSBqdXN0IHNl
bmQgdGhlIHBhdGNoIHRvIHlvdS90aGlzIGxpc3QgYW5kIApzZWUgaWYgb3RoZXJzIGNhbiBnaXZl
IGl0IGEgZ28gdG8gaW5kaWNhdGUgaWYgSSBicm9rZSBzb21ldGhpbmcuCgpUaGUgY29kZSBpcyBh
IGJpdCBtZXNzeSBvbiBwdXJwb3NlIGJ1dCBoYXMgc2hvd24gaXRzZWxmIHRvIGJlIHJlc2lsaWVu
dCAKb24gbW9zdCBwbGF0Zm9ybXMgd2UndmUgdHJpZWQgaXQgb24gYWxsIHRoZXNlIHllYXJzLiBI
b3dldmVyIEknZCBsaWtlIApmb3IgdXMgdG8gbm90IGJlIGRpc2N1c3NpbmcgdGhpcyBpc3N1ZSBm
b3IgeWVhcnMgZ29pbmcgZm9yd2FyZCwgc28gSSdsbCAKc3BlbmQgYSBsaXR0bGUgdGltZSBvbiBp
dC4KCkplc3NlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
