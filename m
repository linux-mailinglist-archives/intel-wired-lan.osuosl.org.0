Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7855178790C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 22:02:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6A6140913;
	Thu, 24 Aug 2023 20:02:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6A6140913
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692907339;
	bh=qTmiqePEbAC0NORWpMwCDYa4a9/RPK4/zUa57JrUqAg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eFd8LAA9ijMyMlH1KHNqyCimLsZ8hcYJJsRgDNfBRnkkLL/wQr4fZwGLYIFt15aKz
	 16+9M2LIar4FR9EI9JpJ7EYJYNI/KEkckgqtZ1bLKdzo+BQ9dherUgF7/JxB8Pmmlq
	 od6iJu1AaKovkZwivayo2SWjjEtiBo6VAspajM0bNkBRzpfk8yASXkJSWQWxnpK7r6
	 1yIoS6pElF86fZy6F4XT/nWlW8MHmJ89ArZ7KiYemQ3h4k5feTA+2jm9rTOETsMGTZ
	 AHYbnCjRVFAfYSc2B2Uuios/bhC9yfNhOaRjzO96tmkP1ap3MqvqZaMDRacKn5UHiq
	 QjyFOgFMfYDEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j4gPy5PvkkMm; Thu, 24 Aug 2023 20:02:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B517940608;
	Thu, 24 Aug 2023 20:02:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B517940608
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7106B1BF852
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:02:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4849840608
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:02:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4849840608
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yYKsYT8Bgksy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 20:02:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC4BB4058D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 20:02:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC4BB4058D
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="374524165"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="374524165"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:02:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="737187768"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="737187768"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 24 Aug 2023 13:02:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 13:02:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 13:02:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 13:02:09 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 13:02:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UV12cC9JBNB6hhyx8fHS4a8IekcHe3W5Il8a1zP6Zh1eoQLcu0uJox4Vg59yFNl4dBmXP0r1UF7tXlZZpDS/m81ybay1HMbn/Z79soJeOfX344Xs/JhZCDFlkyUeM8UNU+rdJO0lzUwCnhJUcxwg+pLhF5R++ujVL7szyLwfbqmVjXx5nfTuZNPNIs4EmE01FdFfjd+oPi2NSD0X7bAc1lBVx5BNyukQV33k4aeRDejeb4e83jpST05X3cK1cPiPZWBhGCzaiAbbV9N/Y/kTIidKHARDH7GEDFSE6Fo8s1MQC5iRYIOwsncoi5kKdjiKL/6Jjgqznm1lWFwSukCJRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5tjg1ylOF20hNtGGBiZAG6nLKXUBG7XjK/OobMLpzmk=;
 b=mYuO5uNSZlg/g1ybiq+790tf8fnxdX1ZIFmWeutGUhAl03yYHz/Jaadjew0cR9hSUpNuxsUCmTT8JUBnViinnNZDu6iWpPwKbUDEh1I6yLP3SUfvamcTgh4NM2EaUzJEZ3YZJJzOdVmuGyBjeYbv7xlY1lLxIc8g0StsGwxwIqi3NsBbmHR1oRyu3YUKwVJJlK4TnLIc3hd2oXDPSXda0TkJ7V0xnxzTznrPcmVz6bOGELXVa4cetgryOv+5IeDgx/WH3dCsxfLwwZExRHH9AqSf7sWi3el8MxuN4XqT4WRmEzx0+IrJtAmZ3HgOdgoxOwSJ6rYHV5QlVN9o6HqQdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SJ0PR11MB5630.namprd11.prod.outlook.com (2603:10b6:a03:3bb::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Thu, 24 Aug
 2023 20:02:07 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5ef8:e902:182c:c41e]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5ef8:e902:182c:c41e%4]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 20:02:06 +0000
Message-ID: <091272c2-4759-a5ae-403f-a967dbbed760@intel.com>
Date: Thu, 24 Aug 2023 22:01:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Ahmed Zaki <ahmed.zaki@intel.com>
References: <20230824122337.3300895-1-ahmed.zaki@intel.com>
 <bb334cef-1cd5-0aaf-6fe3-fd632b34d756@intel.com>
 <536c1d2d-d371-97ed-d550-26800c142274@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <536c1d2d-d371-97ed-d550-26800c142274@intel.com>
X-ClientProxiedBy: FR0P281CA0076.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::6) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SJ0PR11MB5630:EE_
X-MS-Office365-Filtering-Correlation-Id: d3e31587-2159-4a5a-dc4b-08dba4dcfe15
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: i2ctJ7SX+l7ce5UptG2F7RBhjiQxBY21X6ySB4XH8Nc5dnXih0VfTYOksEMif2x5TyzuKAcPEjGJJtf3FRnCIqooVLxk7cXJxrp0ooCzxxBlGpAhSXtIjjBFy+cuB5suObSEHEb36Rd5OuvbdUWUyp2uzlEjoSWDUpRVTW6dgE6t2zTKjMG0/uHSjzIhjTEHr0Rmmn+d6mpCyTHfrHXm6S3ruiCi9bG4ZhSOTr4vph5BOvy27qQ7IM6MLGN37twXELXnzSVmFKvPWjWjNwvnBWdCmUL70rFaAf13EX4pfUsL8DwtFettQeinKMDXeYbaLzraLOfZkWLx5Kqw4t4XZdQNm2Bz4wYRz3M98G0PIWjV/W+N8RczMXQAk/HtJlhLCu6HQz1Rc1CwL3uSRxkzSh3vEeoNDznn2qzUp67OA/FQbC8RbzRICr85/c4VGgx6iAt83yElurAH4+AZ2I9CPZL+ARoNYxYedqfv3p9bVjxaP5XoiAkBiQXXWVc8B/nujI3GYtnZUgh3J/AoadLAwPT618CdevpGMPlmJvt9AAbct4onJPzgCcy5Ok8GIM2PGn+PZJCTs5YCXRlUnwfOeRCpzk0CCW6YBU6MHO0b8EO5Dedwx3RWSiwJqnjyDnWrlxHrRhrBBQrZL/Uf0oeTtg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(39860400002)(136003)(376002)(396003)(451199024)(1800799009)(186009)(2906002)(83380400001)(6506007)(53546011)(38100700002)(6486002)(5660300002)(26005)(31696002)(86362001)(31686004)(8676002)(8936002)(82960400001)(2616005)(4326008)(6862004)(37006003)(66476007)(6512007)(316002)(6636002)(66556008)(54906003)(66946007)(478600001)(6666004)(36756003)(41300700001)(966005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TjdFUkFpblp3UlZhd3FlLytsVkRENkxwNnpjbWsyOXNJbUhwZ293M2lKUVBn?=
 =?utf-8?B?dlUyNTFFd1l4cTdsVHZmaGs3WWdsVGV0aVdPZVlTV0ZhTFpoZXJIaHI2UFYz?=
 =?utf-8?B?blZBSURjUWVUU2U3S2czbVVOclp4RDA4c1hSVTJob1dueXR1eHNTVm5GWmRx?=
 =?utf-8?B?MitXcXQzUVFkUU85OTE3a21iMnRxNWsvQzRJOVdlZnJNdXR4UDYyWHFJeDFq?=
 =?utf-8?B?SmdHK29yOXdXUmRqMkNCVklUTStLUU5VL2plNkNBS0E1TjR0ZjRkMUkxTXhC?=
 =?utf-8?B?c1JIb2cyZjlnODA3T3ZWKy91MDh0d2RBVXpjcWt5eUY4WlVybEFkYWI0Zkox?=
 =?utf-8?B?WGxIeXZJQXJSVFc3YWhsM0xMM2t4elFtdVovRFArdmE3blFsZ2dNOG1YaC80?=
 =?utf-8?B?dHpVMjk4cWdjK0U5UHhvWnMwMFQxV2lWeWVkNERXQjZadmxaQ2ZxQjVqRG42?=
 =?utf-8?B?OHhvZ0I4akYraWJyd1NyMUlrWk9QNHJBdThETjViandJNnd3QU82MkVYZFUw?=
 =?utf-8?B?dElKVGl4R0ltYWREd2tzMDdmb0cxdmE0cVl6dmkzVkd1UFpMaVUwdmJvMVN0?=
 =?utf-8?B?b0k2S29VSkxLMTJNb29SR1NZc3VBZkdUYVBFSWtLZ2NOKytwd2Jacm1Fa1ZX?=
 =?utf-8?B?Wmd5TEc1SlVWOWxDdE1WOEZJRVk2RWRlS01tcHg5RzNPeUtYQ3ZNUDIyU2c5?=
 =?utf-8?B?MHdhbk9YWDJldnNZWlRwcFkzTUZvWFZCcWQyVHZXMThjV0pTTjRha3F4bkZG?=
 =?utf-8?B?R0JrSkR5UTBkMlpFN2EycWJzSVNSQnFnWnppdDhYcjRKMEtKUDFobm5pbFpQ?=
 =?utf-8?B?Y2V3UWpZOWNDUGJIUzNsNEhiRnBHVlViMjd5Q0tCS2pMY2hUenYrUGZjaU1z?=
 =?utf-8?B?UXArWHZ4SkpzN2VRTHNVRjJONUNYSFQ0ZVJPNm1pTys5YjNpYXNjZmxUR3Ey?=
 =?utf-8?B?TVEzQVg3ZmNjVlNzM2prZU0rLzVGbmNIN1RsS29YTWpudUF5TFhQQ1c2M0xr?=
 =?utf-8?B?NnZaMGx5RHBOOEtCVzUzdi83bnViVHFqZkxXWWU2S0V2Z1BqNEVMSUx5R21Z?=
 =?utf-8?B?TDZpU3M1alJ2dXJUaDgyZXNrdVdFWTd1aEZ1OGJOMkhEOFpRQktCc0NEK2Y5?=
 =?utf-8?B?alFWbVZkL1NURjFBOC9CUEl3ZFpuSGhRTHRqVWNMSzFuN1R5d1REY3FjZnBE?=
 =?utf-8?B?eit4OTAzMUxtcUs1Y3VuTWNvM1RhajBLWDdMSlRxSjZMTWQ4SnJISGZaSmU3?=
 =?utf-8?B?djRwWDJPWWs4KzZTZ0xCVWFLWlF0UzVBeUR5RjJBQ1BpOENJNU5maTAwSG1H?=
 =?utf-8?B?Qk5QS0U3emZjN0NrcU1mc2NPb2R0eHVPbERaajlaOWg3UGlOQnNldTRqYytn?=
 =?utf-8?B?Z0RsdzR4SWFZMG94UlhzWWc3cTJ1em44bWlTMkJ0NlFJTFM4SkJOQmNhMW9U?=
 =?utf-8?B?TTV2WG5sYmtKRDIxWXo4cGo4d09KSUdaTUlYZGt4Zm9FZUJiZm01aTBBTFVn?=
 =?utf-8?B?a1BZbTdzOWtrY3UxK3Vrc3FzKzZ2WEprd3Ria2dqdVZHakdwYk1PQjN1SDI2?=
 =?utf-8?B?UlduL0xFRllXMDR1Yk1EalFaNSsyQnJwL2dmNnM5Rmh1dFhVcnczVURqR2hm?=
 =?utf-8?B?UGgvNVFJNFhveHBHYlhjZUhoSThVdzZHOHlxTTFZQ1JsVWJML3VVdlZydW5S?=
 =?utf-8?B?MjljaG0vcWhMQmxMR25hOGN4Z2k5VnpXWlZJaUcrT1kyNHFqZWNiUm5wT3Jl?=
 =?utf-8?B?TVlmbVp4L2lkVG81MEJJSlMvSXhNNXFkZlQ5bEVUV2NEdUpWUmhlblNXUW04?=
 =?utf-8?B?YTZhcWxhMEFuQjgyUEZzSk42dlA5Ky9VREhHQnZ1amFHMnBlb2QyZnFVWG1S?=
 =?utf-8?B?dGlTVGM1NlBqQ2JSeUtUMFc2eDltT3pJVWpKNXIxZnJBV2M0RzFCOTRJM3k2?=
 =?utf-8?B?OGF1YzgzejJCVDBWL2NIekt0MHhnTVErS2xtYW16ZlRrdEsxOTh2RDZpU3RV?=
 =?utf-8?B?S2kvbysySWJCbG5WbCt0Z2d4R1FQSko0TjlNNXVkaWdQZ0pWckMwNHFYVk5U?=
 =?utf-8?B?d0JzNlNKSnFBbloyUWM1RXdpc3ZmREZiVE53UXVkcEE4eDBGWURYZTBsUzFG?=
 =?utf-8?B?WUkvY2FIVFpLaE9zR2E1aTRVRGhhOTdMZ2NjbldVcE1GYkllcm04d3V6cGk4?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3e31587-2159-4a5a-dc4b-08dba4dcfe15
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 20:02:06.8373 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OCGGECWAUZWYakIPqhDZN1WifE6Aqh2u6pqMtSzupzplja8898ABSiFPxVG96YkCvgw8/0DZK+z84383fVIb6p+LlfqgZGIjpD8B/yqtDeo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5630
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692907331; x=1724443331;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I0+WfZX+oM+9TAb85MLPzbYxaGgGVQ/tg2sDfCCrUYQ=;
 b=gKyZ72g55Y+J2BdSaZStfN+EbwpRjAAHj+GEUgoztuw2wIfahKGxec8T
 le28HlPwGNE533AJvqkpZ+olLecjcYY30k4ZhWf0xPgdPUOMdFVOLQw3G
 Qih6+/wNvArASGXsrY0PeDwWgdnZjsiCoOPKIg9A2MmMZImXNdypGbwUx
 3FV3AFxE3gV6KOvjHk9Yi3VdkxTKwvVVn8yvwQtVyiu6IWoUT1SOT51Dl
 lJRxHbui1/ZoZSb5zLAw43fZMbx+xzWLv50o21hBVuWh+vHS45SBNHYnK
 lhvsUQ9Ly8E4hehYcXcpkk4kT40OoKDWZdCzqS/syYMvAtxzRZiRMsrkh
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gKyZ72g5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] iavf: remove "inline"
 functions from iavf_txrx.c
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

T24gOC8yNC8yMyAxNzo0NiwgQWhtZWQgWmFraSB3cm90ZToKPiAKPiBPbiAyMDIzLTA4LTI0IDA4
OjQ5LCBBbGV4YW5kZXIgTG9iYWtpbiB3cm90ZToKPj4gRnJvbTogQWhtZWQgWmFraSA8YWhtZWQu
emFraUBpbnRlbC5jb20+Cj4+IERhdGU6IFRodSwgMjQgQXVnIDIwMjMgMDY6MjM6MzcgLTA2MDAK
Pj4KPj4+IEZyb206IEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPgo+Pj4K
Pj4+IFRoZSBpQVZGIHR4cnggaG90cGF0aCBjb2RlIGhhcyBzZXZlcmFsIGZ1bmN0aW9ucyB0aGF0
IGFyZSBtYXJrZWQgYXMKPj4+ICJzdGF0aWMgaW5saW5lIiBpbiB0aGUgaWF2Zl90eHJ4LmMgZmls
ZS4gVGhpcyB1c2Ugb2YgaW5saW5lIGlzIGZyb3duZWQKPj4+IHVwb24gaW4gdGhlIG5ldGRldiBj
b21tdW5pdHkgYW5kIGV4cGxpY2l0bHkgbWFya2VkIGFzIHNvbWV0aGluZyB0byBhdm9pZAo+Pj4g
aW4gdGhlIExpbnV4IGNvZGluZy1zdHlsZSBkb2N1bWVudCAoc2VjdGlvbiAxNSkuCj4+Pgo+Pj4g
RXZlbiB0aG91Z2ggdGhlc2UgZnVuY3Rpb25zIGFyZSBvbmx5IHVzZWQgb25jZSwgaXQgaXMgZXhw
ZWN0ZWQgdGhhdCBHQ0MKPj4+IGlzIHNtYXJ0IGVub3VnaCB0byBkZWNpZGUgd2hlbiB0byBwZXJm
b3JtIGZ1bmN0aW9uIGlubGluaW5nIHdoZXJlCj4+PiBhcHByb3ByaWF0ZSB3aXRob3V0IHRoZSAi
aGludCIuCj4+IFRoZSBjb21waWxlcnMgc29tZXRpbWVzIGRvIHVuZXhwZWN0ZWQgdGhpbmdzLiBJ
IHdvdWxkbid0IGJsaW5kbHkgaG9wZS4KPj4gVGhpcyBtZWFucywgSSdkIGxpa2UgdG8gaGF2ZSBz
b21lIG9iamRpZmYgb3IgYXQgbGVhc3QgYmxvYXQtby1tZXRlcgo+PiBvdXRwdXQgaGVyZSB0byBw
cm92ZSB0aGlzIGNvbW1pdCBkb2Vzbid0IGh1cnQuCj4+IElmIHRoZXJlIGFyZSBjaGFuZ2VzIGlu
IHRoZSBvYmplY3QgY29kZSAtLSB0aGVuIHNvbWUgcGVyZiB0ZXN0cyBhcyB3ZWxsLgo+IAo+IE9L
LCBJIHdpbGwgYWRkIGEgYmxvYXQtby1tZXRlciBpbiB2Mgo+IAo+IAo+Pgo+Pj4gU2lnbmVkLW9m
Zi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+Cj4+PiBTaWduZWQt
b2ZmLWJ5OiBBaG1lZCBaYWtpIDxhaG1lZC56YWtpQGludGVsLmNvbT4KPj4+IC0tLQo+Pj4gwqAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3R4cnguYyB8IDQzICsrKysrKysr
KystLS0tLS0tLS0tLQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDIz
IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pYXZmL2lhdmZfdHhyeC5jIAo+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
YXZmL2lhdmZfdHhyeC5jCj4+PiBpbmRleCA4YzVmNjA5NmIwMDIuLjU2MmRhZmI4OWYxZCAxMDA2
NDQKPj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl90eHJ4LmMK
Pj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl90eHJ4LmMKPj4+
IEBAIC03LDggKzcsNyBAQAo+Pj4gwqAgI2luY2x1ZGUgImlhdmZfdHJhY2UuaCIKPj4+IMKgICNp
bmNsdWRlICJpYXZmX3Byb3RvdHlwZS5oIgo+Pj4gLXN0YXRpYyBpbmxpbmUgX19sZTY0IGJ1aWxk
X2N0b2IodTMyIHRkX2NtZCwgdTMyIHRkX29mZnNldCwgdW5zaWduZWQgCj4+PiBpbnQgc2l6ZSwK
Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdTMyIHRkX3RhZykKPj4+ICtzdGF0
aWMgX19sZTY0IGJ1aWxkX2N0b2IodTMyIHRkX2NtZCwgdTMyIHRkX29mZnNldCwgdW5zaWduZWQg
aW50IAo+Pj4gc2l6ZSwgdTMyIHRkX3RhZykKPj4+IMKgIHsKPj4+IMKgwqDCoMKgwqAgcmV0dXJu
IGNwdV90b19sZTY0KElBVkZfVFhfREVTQ19EVFlQRV9EQVRBIHwKPj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgICgodTY0KXRkX2NtZMKgIDw8IElBVkZfVFhEX1FXMV9DTURfU0hJ
RlQpIHwKPj4+IEBAIC0zNzAsOCArMzY5LDcgQEAgc3RhdGljIHZvaWQgaWF2Zl9lbmFibGVfd2Jf
b25faXRyKHN0cnVjdCBpYXZmX3ZzaSAKPj4+ICp2c2ksCj4+PiDCoMKgwqDCoMKgIHFfdmVjdG9y
LT5hcm1fd2Jfc3RhdGUgPSB0cnVlOwo+Pj4gwqAgfQo+Pj4gLXN0YXRpYyBpbmxpbmUgYm9vbCBp
YXZmX2NvbnRhaW5lcl9pc19yeChzdHJ1Y3QgaWF2Zl9xX3ZlY3RvciAqcV92ZWN0b3IsCj4+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGlhdmZfcmluZ19j
b250YWluZXIgKnJjKQo+Pj4gK3N0YXRpYyBib29sIGlhdmZfY29udGFpbmVyX2lzX3J4KHN0cnVj
dCBpYXZmX3FfdmVjdG9yICpxX3ZlY3RvciwgCj4+PiBzdHJ1Y3QgaWF2Zl9yaW5nX2NvbnRhaW5l
ciAqcmMpCj4+IE92ZXIgODAgY2hhcnMsIGFzIHdlbGwgYXMgaW4gYSBjb3VwbGUgb2Ygb3RoZXIg
cGxhY2VzIGJlbG93LCBwbGVhc2UKPj4gcmVjaGVjayB0aGUgcGF0Y2ggKHlvdSdyZSB0cnlpbmcg
dG8gZml4IGNoZWNrcGF0Y2ggaXNzdWVzIGFuZCBhdCB0aGUKPj4gc2FtZSB0aW1lIGludHJvZHVj
aW5nIG5ldz8gOkQpLgo+IAo+ICDCoC4vc2NyaXB0cy9jaGVja3BhdGNoLnBsIC0tc3RyaWN0IG5v
dCBzaG93aW5nIGFueSBlcnJvcnMuIE5vIGlkZWEgd2h5LiAKCkknbSB1c2luZyB0aGlzIHRoYW5r
cyB0byBNYXJjaW46Ci4vc2NyaXB0cy9jaGVja3BhdGNoLnBsIC0tc2hvdy10eXBlcyAtLWNvZGVz
cGVsbCAtLW1haWxiYWNrIC0taWdub3JlIApMT05HX0xJTkVfU1RSSU5HIC0tbWF4LWxpbmUtbGVu
Z3RoPTgwIC0tcGF0Y2ggJDEKCj4gSSB3aWxsIGJyZWFrIHRoaXMgYW5kIHJlc2VuZC4KPiAKPj4K
Pj4+IMKgIHsKPj4+IMKgwqDCoMKgwqAgcmV0dXJuICZxX3ZlY3Rvci0+cnggPT0gcmM7Cj4+PiDC
oCB9Cj4+IFsuLi5dCj4+Cj4+IFRoYW5rcywKPj4gT2xlawo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dAo+IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCj4gaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
