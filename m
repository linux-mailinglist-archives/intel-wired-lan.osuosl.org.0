Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E32DE536636
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 May 2022 18:58:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77E2884ADF;
	Fri, 27 May 2022 16:58:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id niwqExj0nr1K; Fri, 27 May 2022 16:58:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67BF584AE5;
	Fri, 27 May 2022 16:58:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 69EE21BF27C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 16:58:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5721E417FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 16:58:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cC-WrP37mGWu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 May 2022 16:58:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 637AC417BC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 16:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653670687; x=1685206687;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qO6NkHshEM7MKfqFi0ODtT7fpkutnRApATEis3MdCQg=;
 b=GrTmrY+PTdqHr7CE2cFQNVLWTkIhuVjcJMWQNGjoXjIQTP8r2zRMMeq+
 rhMzOJkohV5o9/OTIcYpopQVtE5TV1UAlsqLwTEn2lTa/RzbkopS9dqtN
 Jh6bV08gK5BvdGoOAviIZMlEIQwZtxB1LXD47WUCa+z86rcJNUXtqHf/Q
 lJ+HzWTsRkEuhADFBKk+v+qrnHb/a9WfKYEpmrhqYSoFzA8/AQrO9um4/
 IRxhA6wlsMw3DT11c99mTVrC/eZN+B0aWoL/k6Ux5Eh5OfAm5Bh0pTMNo
 xkzPdN4khPSHv73q7uekysBhthgH7qbYxRV685fYMB4sdqUGcNYtogH7t A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="256599053"
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="256599053"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 09:58:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="550301119"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 27 May 2022 09:58:06 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 27 May 2022 09:58:05 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 27 May 2022 09:58:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 27 May 2022 09:58:05 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 27 May 2022 09:58:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NnnYbxbT5hfT3q58lVYAKHHnFpUIhX74JMlCIr9CiW/mxCGYdomLiW7cxemucr98ptJ8KBBRhybLIFO0QhxVqQDK2qV6uJ/YohBMrZuiyp80kzzwmAWa37kGyGO7V32QZRfUcvEj6RAdDlbLYkwJPUjLVTnJrLRsXJIDUoohWtBD5fQSZ59NPn7REI8Kz2G+rUXXqE17vZY0I+WAFTe5uiSbHEwfv1SoVtAI77zD0yEqs2Dd6w3FmuarbDSXwRymMcKc3x11Sa84ejZwbTFMnKD/PpKjikTP+4MOM4ZI/CBZ4VaFRppLMe2mfwZo1SlK9h2bcuqg5EAxY05d6gj3zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JqcfuWeFJoGGU/VgxOGrWcw4fKansAPcHqiv77YM20w=;
 b=HCQOJBru27MmcARFOoxTHvRMfngjeB0DTksT6tDvRYwGiaf7YVEk8DL5TbX4yHSWrSPRg+tLXG5x4CXZ1yMZL5vjw9JwJZWNyi54bsWX4ZIfG3VH8inUE+Y6rroiII85s+Je4lR/OZj++wRyok0GaNWxrHTbdkuxryHnELTdV+vizD2O1sX1g2Sc/C66vRqhaNN5ecqWr6jcGeLZm8bMK12cE08ECRcf2Jm/kXymmA+635opMHbGIONp9KKPTpDenxLbgkox9KQLbU82HVkI4JS9YwEi/F24eUWZX7FmF2QAqw8M2Fdh6WkhmymWwlB0Cuc89giQP55Y0abKK4Fyvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MN2PR11MB3934.namprd11.prod.outlook.com (2603:10b6:208:152::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Fri, 27 May
 2022 16:58:03 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5293.015; Fri, 27 May 2022
 16:58:03 +0000
Message-ID: <c5ff5e77-f1a0-c298-b747-e9058623002d@intel.com>
Date: Fri, 27 May 2022 09:58:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220527080919.2370640-1-jedrzej.jagielski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220527080919.2370640-1-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: MW4PR04CA0177.namprd04.prod.outlook.com
 (2603:10b6:303:85::32) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3fba30b3-c8f3-4c07-2d4f-08da40021000
X-MS-TrafficTypeDiagnostic: MN2PR11MB3934:EE_
X-Microsoft-Antispam-PRVS: <MN2PR11MB3934C2CB771177F949A3925AC6D89@MN2PR11MB3934.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /90BzNq4RQD5nA3tWKUGSEuFiyY2EeK0Ch0eOvQBZ/buQPB3pvfuDvgDF0VJOBkitEKkbYdmWFM783MoP89AC3TGa77M7mD2mGJDgyVVY5Jrj9km60tqcwm26kNyWLQNfHzXcJJ97buzx3CvfJm4v/4eYMojrXFjBCrI86dlKbGRWb9tzmNb18CRupwpYhalCJwMR1Zg1t5ZFyEALYuPktpDUwIkF964b0BfMppRII1SyIRP02sgCCG4T55p/2zy8sb/5XTJxabMY63r/VDOPY38FJv4A889MHL9vK5v0dW/HF68t1W+HwWu0gxyHa/8HDdofwmSkEtQkgygNqxx+X+fqPbjYJOnf4vz6tzWm4K8fe5xLFUA80XBOegw4idnTuTCA6cD7whVhTUCxF67rqtVuuFVDPkw3nggb3eM38uX7LoogsiGfS3yXQlGYtbEV0EHjgH6jsv7oq9W+BlkQWW2iOyHG4rpLFn1Xi7ylGC3ZUDtlUpAUQeIQP1U+yeCbSV5ltOUwaZHY1RuArmgyZakkdHs8qw9lTm00ASDu41ZM7z1xXmFEBLPPQVsFT47tl9MnM4tVd2lCZtVc4nFd3A08RqcY2Wz5eTpUI5OG3wsdTn5rKVJdf1veJPHejxqnQD5pZpArKYa6lYURVnLbAF/KOfxdCu+xxddRMLsCYoxK5gJZs13Onl6B6cupsMKcOcnHxcTV2NbuAJCrb2fEO0raPKTrq2EuUvtUpAXaLd8Onudqtb5vZ3akfA9S/1L
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(86362001)(8936002)(31686004)(31696002)(6486002)(26005)(66946007)(4326008)(4744005)(2906002)(38100700002)(66476007)(66556008)(82960400001)(8676002)(36756003)(316002)(508600001)(6506007)(107886003)(2616005)(6512007)(53546011)(186003)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UXBBY1V2TzFMeS9UWDVlODJrWDBnUVpiUjdYQXpyVXFOaCtYT2dFR2g3bmQ5?=
 =?utf-8?B?d29tMFFHTys0T2JOdW9GOVU2cFY4MFIyVzRpZ2tOb3diV1YzY3NvWGdPL3Fn?=
 =?utf-8?B?M0hNb0QrSjU1MUovaXZuU25qc040TDRqeTBzVG9xd1BBUGRQdDdKd2UrSWt6?=
 =?utf-8?B?c0lHd1h6VzVGM0NLOHA0S3kxcGhlTmU1MFVBRm1EOUJtQzl1aDRQVURuZ2lo?=
 =?utf-8?B?SGh3aEJHUXoxNnNXOTlpYzZDSUxFVDhCSjJtUm9qSGRIWlRxN2JmenphbzBJ?=
 =?utf-8?B?bUFqSGJzb21NZU03SjRhdUROMFkwQmFJcGExRWFsd2xUY0tSSWlJWW1Zby8z?=
 =?utf-8?B?SFRZaTVSbXhXQjZoUnExZ1BOVHdlVDhqandKcVhvZTQ2TlYwSFNSVEF1dGY0?=
 =?utf-8?B?Z2RPZUhwUnpyczdvQ3B2VXdkSFEvWktvOGdDS0tuQktod1lTd1hRbEtnY1VX?=
 =?utf-8?B?VDlETGE5YW1EVi9GL2ZSSUZrM0Nla0JoMFYwUDN5TzBFZDNRWkNiemYyNTlC?=
 =?utf-8?B?cUljR1F4ZSsyY3dUTnhyOFR0QndYR0s4cjBJdzRNeHZQcFVZUFNCQnNMSFgv?=
 =?utf-8?B?anF3Q3lBcExWM05aRHU0bndPWXNQL0dTNzFaTVZiT0FwbmV1RXA1SURuSHZX?=
 =?utf-8?B?Qk9kcnIzUHNlMWJ4VmVrdXpGdzl2RW9WMTNjTWdZRERxejVxd1Eva0xGa1Ry?=
 =?utf-8?B?OUtkdHIxdzErTmVwN0FIbFBPZDNqbmhnblJrdElDV3JERFhFa3FjNzYyMEls?=
 =?utf-8?B?QTRoNVFaSjZaRC92VVFIb1dYQi9WbjZ1WjhUQTI3OW10bGlJZ1djOUE5S3E3?=
 =?utf-8?B?cDZ1NVVINlI5VUdVUWV3cjViTW1GTVcyNHZ5OHI3TkM5ZnVud2V2amJCSk5t?=
 =?utf-8?B?eDJCcWM5cmp2T1doNjJNZDhxTTJjcC84R0VIL3UzYURsRm50VUF2OEcrNVk4?=
 =?utf-8?B?TUJXb3BINGpabGFxZ3dxWUhUMkxyL0ZibFlGL1JYMDRGOWtkVWMydmEvWnVw?=
 =?utf-8?B?enpPSVJwV2Fjei83c3V1cWZab1RsZDY5eWd6NzJzOElvQjMzWjlHUis1SHox?=
 =?utf-8?B?OS96SDZpY3Z2TWw4aWZTUkRHWkRaYyswY2h5WUhEUXpUUXhkdkZsZEF2VSs5?=
 =?utf-8?B?OVM5ZGREQWFVUFRXbjFDMHUvcVhKSGhlblQvMURES2thWmMvUFdSYTFKN1lX?=
 =?utf-8?B?aFpVOTUrNUR4Ujk0VityLzJVTDlkNEVabkJRWFBKUG1jQUlGU1lxc3FBV3Bt?=
 =?utf-8?B?S3lWN1F6NVZ6WFQ2aVJ3K2JKMlJlOTlFLzNZWkhNejRST04vWFR4UnpheXVW?=
 =?utf-8?B?YTMxMmx4WWJvNUcwWUhzbDVtRFhLWVh5SkFaMmJoV3hwd2Npd3VPMXBraWtZ?=
 =?utf-8?B?by9aU3VzZDFhRUZZMVVRcVNKaFdIQVVCOUR6RSswTDhmWHp5VDJLSTJVbEdQ?=
 =?utf-8?B?aGh5eFJPb0t2R0k3UlJCZjZUcUp2RmRIb1I2K0xkb29TL2xZRXBTUU1YUTBx?=
 =?utf-8?B?bC84Uk5ENkV1N1FIRHpHc3pCbjU4VHpSRWpZcjUvQitMVnQzblEwSXc3djZO?=
 =?utf-8?B?NUhWSkxwd253UDczc05rY0tlZkZUM2Z4SEh0NHlXWHN5aDJHdm9vaXJacnFJ?=
 =?utf-8?B?V3FCOXZCbCtFbTV1dlExbFpHeUJxWnV5SVNhZjE4NjZlUFNsRVQ3Vk1ZbXNH?=
 =?utf-8?B?WVhVMWdTVWlVSjJYNkxQRXl0dThudjVsNkMwRFNmUEhJeUFBaFNtRFg5NkY4?=
 =?utf-8?B?Y0ZwZlRZRTBFN3hJVmJTb3FQZzNtU3A5SC9OQksxVzFBNmIxZ25kdTcxNFRa?=
 =?utf-8?B?OTdESVdlRUEzU2t3OEp5SWdSNjRiVUxkbFhCSlpudXd6OCtWa0FyazhaeDQ3?=
 =?utf-8?B?eVdqOG9PVko4ZXEvS2U4cWNzakxYOXNZM0ZGZG9iWWJmbmZ0ZnI2K1JvZW1M?=
 =?utf-8?B?SXZ4WmNVdmozK29kcHNhbUpKOEJSdi9nYXN4TnNSU2g5eDRvdXJRVUNiZ0ti?=
 =?utf-8?B?M29jR2lZeVZnOE5ZMDNFdFo4YUZSWTFCU09vU0FjM2g5QnVKTVhqWk9MWGJx?=
 =?utf-8?B?ZFcyYU5jMDV0alRzSWNRSEprT3U3L2ZERmJlNGNLNVZXV3FwN1lCQkVrNEYy?=
 =?utf-8?B?Z3lCdEtiM2MzcjdNVVgxZ0pOR1BqYk0yWUVEeTRBUE4zUzJGeExzalhxcS9z?=
 =?utf-8?B?K2N2SDhQQTBRcTdwa0VDVzF4SFJmVlQrb0ZEeGNmUFljc0ljZXkySWpjR1R1?=
 =?utf-8?B?NlFoVTF0V3NMb3hnejBiLzZBYUE2QWlHTFF6T0xzTWhESlkrVVA1aEF5cExP?=
 =?utf-8?B?QUhyaXFWelhURW9FSk05TzZJSnJqZVNFY3MvMWRCbEhmOWt2b2tESDRMWUZh?=
 =?utf-8?Q?SBO3+vhhvMiNL5GU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fba30b3-c8f3-4c07-2d4f-08da40021000
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2022 16:58:03.0311 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zxc7KpWNnn3KQZWfifJ7ZmnO/PrnYokK8+cyvJ6q9k3jFFfJjQjKi42FdHZG7pNIeqoRX+sOUlJatbN75YP26UoBzJ73ft1NOdtik36Egus=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3934
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/2] iavf: Add helper to check
 if iavf_remove() is in progress
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/27/2022 1:09 AM, Jedrzej Jagielski wrote:
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently the driver checks if the __IAVF_IN_REMOVE_TASK bit is set in
> the adapter's crit_section bitmap. This is fine, but if the
> implementation were to ever change, i.e. a mutex was introduced all of
> the callers of test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)
> would have to change. Fix this by introducing the
> iavf_is_remove_in_progress() helper function.

As I mentioned in patch 2, this refactor should go to net-next, not net.

Thanks,
Tony

> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
