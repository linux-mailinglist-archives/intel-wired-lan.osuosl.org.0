Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A80846235E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Nov 2021 22:32:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71E9F60BC5;
	Mon, 29 Nov 2021 21:32:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1gh8NM2IFDS6; Mon, 29 Nov 2021 21:31:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F14F60BAA;
	Mon, 29 Nov 2021 21:31:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 163F91BF38C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 21:31:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 119FD40465
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 21:31:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4MK204MCFMN7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Nov 2021 21:31:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3921E40461
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 21:31:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="233581145"
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="233581145"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 13:31:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="459329241"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 29 Nov 2021 13:31:32 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 29 Nov 2021 13:31:31 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 29 Nov 2021 13:31:31 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 29 Nov 2021 13:31:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WXOgA81EN0FWZEYkrM+SHe5SUPXQhgmB27oIxbj/+e6WQjfc2nFsIzD0IkxSMd7myHF3DLAwAtvHg9PZpMv2Ey8t4yoefYToE5gkn26Wiiz+kB1o8g8aHkWoz3S/+GNn08X9BwrbfQ4FzLo+gC56C7id8ycQ4cNFS9f/PzxHDjMFnhO1WoEdxl02qyqQS4qg+WV0F3a8MnPT0znYB62rgB5sIj0NL/IoH1S4DsdFb3IMmSvqFhx8HneHP/sjH/AaHXj/M7PJwkBTj5pY0l1RRnB7Nu+IpHdag5hN1GFNLeBWb/VUlcMbz82HKG7uxv6YXqR2Hq5zZQPr20Cy8ETKfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xK+NEbHlNLlWkDZaY+uHuHxKEeu0y6dCmL4UKOX8m6g=;
 b=FUOocZ/RFqLB80h1bFcH4zg88mvdwIQI0g735LjPQQzI9lnPwJ+Q3Hlky3OUqF9c/SzgYwg6xSH3bzoDP2PVV4J2Sij+N+NJnLIwDCOEeX3OFrg9T6BnTCpI7m/argvwiBSpjxh6/nGD4mQCog5Z0n7eHs8rxXavLWl7il/VihY1L/2vqmUOsb4wgylU7fOG9DHHWhEVrdaT0Jj2gMXKw6pjzrdLvyFda9tGKTyv+RnXcdEaDLkS02i62bOzZ698y5/RshSA2J5jX+b7oR995NKjO0WbFSonTho20F9WY7jGOoWsE6rbYSsEKRj6EKL/d3Or4KZp+Sdii2jWrkLIbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xK+NEbHlNLlWkDZaY+uHuHxKEeu0y6dCmL4UKOX8m6g=;
 b=qN/q7XbUuHOjq3WgXaRK9PsZJfcJTxEYmHiar8WX/BB0sMsk1B9QLlU8Dbp6SZozkkPTzPr9ChNn180EfVXBr1BC/UxSQbT0m6Bt9N9E+/r9Kml+XBQeIxKXE/0ecRAhFHiea4+1WpgUWz2YFOb8fiyF7wAi9/CUHS2YGnzsBd8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MWHPR11MB1631.namprd11.prod.outlook.com (2603:10b6:301:10::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Mon, 29 Nov
 2021 21:31:30 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::b0d7:d746:481b:103a]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::b0d7:d746:481b:103a%9]) with mapi id 15.20.4734.024; Mon, 29 Nov 2021
 21:31:30 +0000
Message-ID: <42f45779-a6e1-9033-376d-4dae36261873@intel.com>
Date: Mon, 29 Nov 2021 13:31:28 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>, Shiraz Saleem
 <shiraz.saleem@intel.com>
References: <20211124124136.1776-1-shiraz.saleem@intel.com>
 <20211124124136.1776-2-shiraz.saleem@intel.com>
 <6f95e1de-6c35-76e5-eb83-68b60dc55c05@molgen.mpg.de>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <6f95e1de-6c35-76e5-eb83-68b60dc55c05@molgen.mpg.de>
X-ClientProxiedBy: CO2PR04CA0159.namprd04.prod.outlook.com
 (2603:10b6:104:4::13) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.211] (50.39.107.76) by
 CO2PR04CA0159.namprd04.prod.outlook.com (2603:10b6:104:4::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.22 via Frontend Transport; Mon, 29 Nov 2021 21:31:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 05994d8f-5eb4-40c0-2ada-08d9b37f9b92
X-MS-TrafficTypeDiagnostic: MWHPR11MB1631:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <MWHPR11MB1631E1E3D64C830E0935882D97669@MWHPR11MB1631.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:409;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BdITE5kEvnMuPk/2AHB7CW9ZilLWNJMDDdEckeOABgnArIu+Aces2y+eN59eGwUiLXWiFVve2qNdu2NAhwRk8duMy8YTD8/KFO97l1M1YPC51DxZ30FbAXDL/tWbeKXFQ6PjHCfIROwgcvVkuHp8KvcqpenXZ4Ev3cEavIFGFEpNOrvgmMuFNISCEW+rkcs5AP0DwkgKHiveuMHX6TQ6RIA4hP4kgEsAnaltsTfMEbZ2jFTLG/oHSSN/C9DTAPTIn/8II2o/6vkC/0pM720WT6YL0Sy10XoFd/QmR3igN6SLTpPCpTNIGFh2VXvmPrpOmI4n+RC6KbYKXiIIPCZhRkoIpUTTLms9U3mmTVO2Exbe/e9NEISRjyJwP73AA9uuKIiM9+F63716bM8V8Y9Dp9FwCZITnPNSsDvmVWe9BQsDeluxJeO7F4di4tHFjI7VZkjqj5K/Kzn113mT1ON+ZLRUZ1456uUrG7V8R4uLd4jCTXkHgxbpZBfSQQCslMrisgddrfLrghi0G57YTLQasKv/ERWSmuQV9CTpWKrPyVorOR7avbdpkWxetpK8fpiEU+wRsvhnPtNSAJUZLdaM3ikraMtSVaXwFmhN0acMaUkinv2RklYPbWBhPOMRjWhcHb7tnVvzLl59rMDf9ZbihbQ6mIOvp/pXIS6uz7xj3cTioU9TBdgo8Ot7IARCTCi2S5aLVqIW7s7KD9jT4l20JnAyLhUizvKOY9zz1JBOmvk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66476007)(5660300002)(38100700002)(66556008)(110136005)(31696002)(31686004)(8936002)(316002)(66946007)(83380400001)(16576012)(86362001)(6636002)(53546011)(508600001)(4326008)(4744005)(36756003)(8676002)(26005)(2616005)(44832011)(6486002)(956004)(2906002)(186003)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Rk5ZT0RheWdKUkxtbHZPeFdNN3BpRFd6M0RUUXdVakZCNDB4V1pZS2xLbHY1?=
 =?utf-8?B?anFiSnc5NXJYeTFtVHRUeC9ad3JqeXpjVFMwaUN2dDBBSGF4aDFQV1dodFZX?=
 =?utf-8?B?U3RVaFhMckx2czJkWWdRbWkwZUFDWGtrMW1ySWtaSUMyVWdRbHZiOUJ2ZmFH?=
 =?utf-8?B?Mm8wejhxYW04WVdvRGh2aFFrSE1raTVXNXBhOWdPaTZRMEo2ZXdVaS9rUjhR?=
 =?utf-8?B?SW1wMm44YXZ4ZUJNb3c1R3FRMDJCZUg5NHgrYWV4a3pEZ1ppOXRURlBiUFFY?=
 =?utf-8?B?d05JSXNOK0ZWMVdQZVFkYjBhZW1ZUXRRWlV1czZQSXd6Z3YrMjgzcVJWTmQy?=
 =?utf-8?B?STIvM0Q4YUkwejFrN1FOc0NKMERwa2FCQnlvZFZXV1hrWjFsNFp6UXFIeW5S?=
 =?utf-8?B?ZlNHb1BVRUlaSUdNOWNwYjZlckgvWmZ6U2I4d1h4b2pOZy9SZEpldzFrQ21Y?=
 =?utf-8?B?NXp4TzJyWGxVZDVKbTQvUVNnRDcrZVpWNGlKVko2WW05RG1hYmdMSUJCOFRG?=
 =?utf-8?B?SmRlc21tZlBkc01TVU1vSjZTMTBrNkVrNnd0dk9sd2hUL2ZIZDM4V1FqNkd6?=
 =?utf-8?B?bXg4SFI5ZWpmT1U4S0VjOW5zbmFGWXdWSlVxVk5Mak9JMU1mNk9vTjJzZm9N?=
 =?utf-8?B?bUU0ZjRDUG9WRHRnaWNmU2JRVXNRQzFadEJySHBnWWZZMklLQ3lWZitxTTdp?=
 =?utf-8?B?dEM4WVFsZUtGUDFXdEF1c012OVlYL2VFVjNoelF1SnFJa3FBdUV2NDBLNDhF?=
 =?utf-8?B?M2kvMHVHSkNGR2plQXFkOWpGdnRCakw1b1liUU1hbW5sK0hBL0MyVFc2Nit2?=
 =?utf-8?B?c2QwSU4xakRYSjU5RG5ObkNqQ05lVGRub1FITktLc2xGV1RPeXZMVW5YZTcz?=
 =?utf-8?B?Y20vbVNKOFd2dHZCNFgwRTRLT3dhMXhwenBKZTFIK3JRd0hmQ29LZW9rd2Z3?=
 =?utf-8?B?NEI5Y1V2czFNUWpZWGNTUW1MVS92R0RLNUxDdGdZUkJ4Ky9oMkVXWWp3YUQ0?=
 =?utf-8?B?VllQMUFkRVJyNG9OdjY4Vk00enFuVEYyTVFMVXNWZTBGQU5KcUg1ZkpDVktZ?=
 =?utf-8?B?WmlkQmEzaTkvbzZraWNoRHFPVFlKWU5XZWRzVy94cFNvdGlqWFh6ZlY1ZHJz?=
 =?utf-8?B?bDlLZW1wdnhlYW5hdUIveVZhekdnSHNDWVNMdHBYWG1IRnVoSkpyWU92djIy?=
 =?utf-8?B?KzZ3Yld2RUlHSGpJdThQYXpyZVB5ZUFOUEZreE9mUkMvc0x4VndxNG9EczNO?=
 =?utf-8?B?cmdNV09VdnJXT1dsUzBDeHpwZnhZUVFIYXoxVEdEaEVmUWVmaDRrVlh6S3B5?=
 =?utf-8?B?Rm1pZHpzV1lxa2MydlJQN3BDdmpkREUydmwxMDVpVmNaWjlrNTF0WU9yU2JR?=
 =?utf-8?B?MzJzMDdwU05ZMkZrdjFEUHlpYnowOWx5a0dYZU5ZdkRmcmEvNWZVak56cTg4?=
 =?utf-8?B?STdFcGF0ZGM0Y3ByZFlLU21KT1NoVUc1VXNVd2dtWW4xSTBHS1gyV2x6RnI4?=
 =?utf-8?B?TGlucUhyRFNQQTdTRVpqU1dDTDNvVk5aSU5nc0RBMUcrOEFKNmorMHFOYmFp?=
 =?utf-8?B?UVZvbUxHR0FlMVZJRy9LUHRnSmxaWmV2dDNpT0k0aUYwTTMycWpmOERQelkx?=
 =?utf-8?B?NTFRdFBZVHFINm9yU1l0UTBUOXQ1RnlIbzhzRDdjdnVFRjJQUDVEbzdBZnZj?=
 =?utf-8?B?MjBQc2tQZEJFamxkMGVRVE5TZ0xiWk5qd3VWaEY1N3MrWUlzdWRXK09nNnV1?=
 =?utf-8?B?b2EyWFJSMGtxS2hJeTFSSmc3K2U4MDFQYkUzcVZ3SkMreUlLa1NPSWpMaDZJ?=
 =?utf-8?B?aVJpdklEc0k0Ykhyb1RxWG9Ja2pqaCtvSElYRHlrb1VzQk5FRlBmQk8zdVlN?=
 =?utf-8?B?bGpxS2xGOUxQWjFrWUw2K0dBbXl3N2lGMldVM3RQL2ZBNUd4VDVwVUkyeXBV?=
 =?utf-8?B?WGwxcjVDeE1QbTVKNEE5MTRZVHNhTjBQWGZtN0dpYkZmOWJDVGppQnZWeE9N?=
 =?utf-8?B?YnZPTFhZWDV6RzRoYjJnaEl3MU5zTk9nYW15SnlJTGNJS2dlQ2h6NmJsRFZ2?=
 =?utf-8?B?bEJFVjVFaThQT2xXZG8vcU1lMmJDVlQwR0hYRjV2Z3hIcy9McndCN3pLZnU1?=
 =?utf-8?B?K200V0x6TEQvOXpwY3hiZnMvYklNdEZ3UDg3SzEwd25YWTF1NG9uOUVYU1k5?=
 =?utf-8?B?MTlwcHdPbnNUWW1KeG1LejBoNDlUbnlCU0RCWFNaNkdYNGhwcmlkK2NhSlM3?=
 =?utf-8?B?L2FERzBCTWlmL2VHcmZBOFNpS1lBPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 05994d8f-5eb4-40c0-2ada-08d9b37f9b92
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2021 21:31:30.3704 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pq577bPtkoQOwZHlYzbszn13Mfzk1xvXy+gzBzTD0x6ksIcMBIKOjFEsPRBHZ73oY+uPblITuTwp8Hn0R8hae828wHWfcPFX/2fJUazMOxg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1631
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 2/2] net/ice: Remove unused enum
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
Cc: Parav Pandit <parav@nvidia.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/24/2021 4:47 AM, Paul Menzel wrote:
> Dear Shiraz,
> 
> 
> Am 24.11.21 um 13:41 schrieb Shiraz Saleem:
>> From: "Shiraz Saleem" <shiraz.saleem@intel.com>
>>
>> Remove ice_devlink_param_id enum as its not used.
> 
> Please add the name `ice_devlink_param_id` to the commit message summary.

Hi Paul, I don't think that is necessary, is this just personal 
preference or are you following some style guideline that I don't know 
about or maybe just don't remember?

I'd argue that the subject line has a different bug, it should be:
[PATCH net-next] ice: Remove unused enum

But I see no reason to add the long string of the actual enum removed to 
the subject.

Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
