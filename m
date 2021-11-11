Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B25244DD3F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Nov 2021 22:44:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0F4840584;
	Thu, 11 Nov 2021 21:44:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7CDu5Lj4brGW; Thu, 11 Nov 2021 21:44:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9D324057D;
	Thu, 11 Nov 2021 21:44:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C3F5A1BF388
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 21:44:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B2B7181B9A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 21:44:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lZgLHcNpwI3S for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Nov 2021 21:44:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3BFA281B98
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 21:44:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10165"; a="256731401"
X-IronPort-AV: E=Sophos;i="5.87,227,1631602800"; d="scan'208";a="256731401"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 13:44:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,227,1631602800"; d="scan'208";a="470942531"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 11 Nov 2021 13:44:33 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 11 Nov 2021 13:44:33 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 11 Nov 2021 13:44:33 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 11 Nov 2021 13:44:33 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 11 Nov 2021 13:44:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PW7JzvtmepafGA+GwFq25Z76rgRO59XZii3swDMIn6IR+UVXwwiL+TblQRUqlTB/pwDGYoR2K2Li2jJnrG05GHXUW2+YjNfZ4Q/1Zd2ZlE9pmG0/M3Y1HOVAr+U0qJlg1IJxkyvDe7olpPiMQuwRCkayZtDzACCYDcLtDc1NQO74TOFhKtC2WhhuEV1PPhO618S5QzPertPyLaUFvypT7OuMHQrfFI1o7goBV2jHsESUCbuhzAYw4NaoN7h+GfF4tzuqAc1U21gkX+Vm0GDMZPipr1LxKZ7xCW8zuGsxkTuvPGk/pZ/shr3OCJtkg94Uki3AQLh8tWi/kSaOD4w4ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2d86uhEJ0e5joJLao6VEs2h6ncZoNp5dM1XetbcXFzc=;
 b=F1HesLXlObJ6IE7RqLnJuB36iJGIv4mOfCkZQJYbU0xqUsldIDyBwQI62xgU3GIm5dM3LlMXGFYm4f1rhGho/SErQV9UdN9MR0SFBLha3hP0GKHA1btcalRMw7WHM937Ob/yCNzgfodwVmSKerKv+gnixphH7MfHc0L8MqGWvwFrZ9UrlXcMYWOL5+NFbx3xkF7bTkq0nIA8qBtemcQE/AUzqFhtBPtz8dRYQSqsiQJFJOhtw0+V8+Q0H4smhfMh7WW7ATRTLfHGE8TQPyWxz2sA1af9pxg+qADEJgZz3XnrKetx07+G0hpXlEk1dtRmJz+cuGlOC6OWhrKMsT23KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2d86uhEJ0e5joJLao6VEs2h6ncZoNp5dM1XetbcXFzc=;
 b=lrliSKmLCZUCFxDwT7yqPY5vahGjOyuEsFrqQIjKgqfE0JY7bih5RR1lMZe3kN/lHzYY9GE+rXLMzahAYF0Oc3amaDbHx0O5EhWIoqSfBwq3xpqUmRXTXLbaWJCRsx7LBgbszV8kAcIIcu7Gm145kJhyx2TTBLfLuXk+Dw0vG/8=
Authentication-Results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MW3PR11MB4762.namprd11.prod.outlook.com (2603:10b6:303:5d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.13; Thu, 11 Nov
 2021 21:44:31 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::3166:ce06:b90:f304]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::3166:ce06:b90:f304%4]) with mapi id 15.20.4690.020; Thu, 11 Nov 2021
 21:44:31 +0000
Message-ID: <0e247faf-77d3-c05b-88c3-515b612d0c3f@intel.com>
Date: Thu, 11 Nov 2021 13:44:29 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: <intel-wired-lan@lists.osuosl.org>
References: <20211111213722.606364-1-jesse.brandeburg@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20211111213722.606364-1-jesse.brandeburg@intel.com>
X-ClientProxiedBy: MW4PR04CA0284.namprd04.prod.outlook.com
 (2603:10b6:303:89::19) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.214] (50.39.107.76) by
 MW4PR04CA0284.namprd04.prod.outlook.com (2603:10b6:303:89::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.11 via Frontend Transport; Thu, 11 Nov 2021 21:44:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0171f20e-f3b3-4c13-508b-08d9a55c71ba
X-MS-TrafficTypeDiagnostic: MW3PR11MB4762:
X-Microsoft-Antispam-PRVS: <MW3PR11MB4762F5191DC700687B89B55397949@MW3PR11MB4762.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:913;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lrqVhZoNOcjHas8u6DeIsQjBP5BEVMMtJh+zmni/Rp7qiLKh8J6L207ybbS2aROZAHD7Uf7lw+wsMQfWMOVWb+cgiiYyBCddHaZVfglqaPFzSTbzS47aKrIQg3SsofPm/S5Iib7Y4PBxCe//NPtRey122c0VtFBfPTSKdn4DOnKbZIkA9FofppbgwWdJ5OX/5HnvTj8eO5I0NyxXSi4cfvuN4x42+NyqYYcaCPFYZNevt1CMH8Jj4SvMtStZ2PRUsawRJPg/d7REjAhF+3tmN91LKU8iPHLUZH3v6mlbeh/1ggscSPOrR1QjR17c1ZyBsxCqOWh6hVCOZLC9snXtS8wojJOCAFtF9s2VzO6Mk+YN1FIoVpSuU7KiXDwvHSwJUUens5XB3i6/5x9LC1ChQt/ZmCpFzM9t/hzDpNafOcJsbJVeIsNYVZVFzK4VsEX1AKcvP3RJj6fY1IDMmyYq5Rl8tbxODrhAX0aFdqS0f/Pto52dgKD9DlS3dO3ugUiZO6MzI0R8Waj7cDbempy+ZjD68gacDw10/qxqWVZnIKCfodde+grGBWlSRQYv9fSWtwWqDWWJs3P87frc8zadjTTrtHRNVtbMbZRmZ+yaXVolkTQCnYAatM3OIl2unq/QWWkBzFhUit1yf3RCqnl2iDerxJkSGvHEafsrXogfKXD/JGKmlNmJZKYxwwpFHIdZdn7R36hT7dqDjZq9URgTTLYQhbMF3j0FcS19aDYFrkDcc7PnJ1GlE6RQjCGVbMe0PUdbean0j2haSG48dHfCEYQ1tGxyEpIQG68s9meNqMiJW4gaG6OYr/GUw8j+jCsl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(86362001)(2906002)(44832011)(966005)(66946007)(6916009)(26005)(4744005)(8676002)(508600001)(16576012)(956004)(6486002)(8936002)(2616005)(66556008)(53546011)(4326008)(316002)(66476007)(83380400001)(186003)(38100700002)(36756003)(31696002)(31686004)(15650500001)(82960400001)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NjRCRnFDUm9KMDBGVnJVOGtBQm50Y2lkMFg1THNidklCek1RbVlBcE9Sekls?=
 =?utf-8?B?WUkwdExZWE9UYnI5NFhjaGZLcHVidEZuajlmNThKTEQxZGFPVHJoUTBnUHhD?=
 =?utf-8?B?Q015MnVESmVXbXc5bkxFT0ltM2pQaXdLVlRxV0h5RnJXS1JnTnU5ZVpjS2xi?=
 =?utf-8?B?SDdoV1ZnZmROQUMySmU0VkRSOVVwellkdG84UGt1ZHJ2bDByTUJaQ2VtWGJm?=
 =?utf-8?B?ekpwandpRkVLaHlxZ2NxdGMrM3FGUjJsWXd4dHRnbStocXY5bEYyK2hCcHNF?=
 =?utf-8?B?cy9kUmVnaFdiQWF3RVowU3Z5TTd3aFpmOWJEY3ZoZUwxdTlGcDk0OFA0R3BF?=
 =?utf-8?B?M3hpMmxrd1F2SWNobitmTjJ1eXNBWGp0NnhBa2NFcllNcVMycVp4Tk1uUmMv?=
 =?utf-8?B?QkVkWll1WnhsZnRGbXNpcFB1VHlhVWN5YXpHdkhiSnAwUkNRb3BMVjZzODIz?=
 =?utf-8?B?V0Yxd3N0Q2NpS0ljaVdqVXBLcE1LMDYrMkQvajdENE1TL25VYTVXdXhhVnNL?=
 =?utf-8?B?alNkb3p3VTNUcjVjVW9LU3QramdacWNRMWVhdlFaV0Z5T1ZPOEF1bWV5eVFO?=
 =?utf-8?B?TzhmMVFmZzR5cWM0TSsxWFZBaTZGUE9hc1cyQzZYdWREaytqTnlLaEtsYW41?=
 =?utf-8?B?cVZ1bG44cE5qT0tGa3BNckNoWUQ0UllrMGVwWXg0YVl2My9BNVFqWkR4Yy94?=
 =?utf-8?B?czd2UWdHYU5STi9OV2hjWnNTRXVLeUh2ZHV4dytMOHBVM3FoNm82WDN3RkYy?=
 =?utf-8?B?citTVHlOSkZVSUVORXhncUdBcG5lNHdjdmdiOEV0WkxVSFRhMCtLMUpxY0JQ?=
 =?utf-8?B?Y01lbC94d2pRdVRJMDdaTm5TY0tweDF4OE1Za2QxZ2JsblBCRWpZWUFoa2x5?=
 =?utf-8?B?UWlHRUM3c1YvTWFwbEV6UjlaYk1PZUZjb0R1RjNmVUxjc0creUFzVjlDSU8x?=
 =?utf-8?B?N2d1N0xmNHk3MUZOTnlQSlVvQjF0UGJFNW5BaTVPMHJqV21rRENvaWFXejky?=
 =?utf-8?B?Z1NaMGRRM2NSRFhENUx1cEVBRU9mMHdxSFdoTUo5bnNxc1VGcjJSUlZPc0pR?=
 =?utf-8?B?Q3B6MFE1UEg4NjdPQk1QN3o3UjQ4WEl3YytJQVNkVzVIVTViSXhUZTlZMzM0?=
 =?utf-8?B?bEY2RzFtSHNCRFdnRnREV1l6bHB6S2NJRnJYNG15Z3N6cU9sRkFyWDd1bTAy?=
 =?utf-8?B?TmtpakxEaGxnNlJVYzgrdDc4bUtMUXJXajMycktYVlJNQVNBdkpvVkpFbGE5?=
 =?utf-8?B?YTh3QXEzN3RiNWw3WEUzT2t5aE1xTlo5di9PbFhWRXVJK2prc1ZWWXg0NDFZ?=
 =?utf-8?B?YmIxWGNDVmZSRFIwVWVmWi9UdlUvQjNldlczZkhKNkZwWkhQUjRVTDF5bnJO?=
 =?utf-8?B?c2F6aVZwZkV1T3dEeFlGYW5JK1ZsM0Q5U2pGd0cvWWNnSERYRDhoY3JVaGFC?=
 =?utf-8?B?NXorM2tZVWhKWDByYytNcWEvN0JzTmFCTUxBd2hQRDRMRTc2eGJrY0VhNWVn?=
 =?utf-8?B?L3IyUXMxRFd5cTVBaTk5K0hQOXhOODA4T2JaazVWYUJmejRnc3NGR3o3RjJT?=
 =?utf-8?B?U0FwaWFHbWRZdXFQL2dqYXdWTE1LbzB6RVZpK0J1NUJvYVcxcDNRSmVUYm1k?=
 =?utf-8?B?bkowVDVxRm1yR2FDN3gwMEhPZ05iMWdveTJ3dU1Rak1jc212U3VOeDdrUXBS?=
 =?utf-8?B?SzA5cnU4bVR5K2RoeGtPSlFnNmxXcnNHNHpFdXM0VHE1T1RQdmVwR05IOFQ5?=
 =?utf-8?B?c1hvWitFNDF6NktqcjE1bDd0VzhhZ1lNMHBsakVwejlmemVYaXFrM1BWankx?=
 =?utf-8?B?aUJsN0JuSWFhRlEyWUFnT2I2NFVFNHVhMUdxTFU3ak01Q21WRURqZC9QVDIy?=
 =?utf-8?B?cmFFSGdnQmtVVzM4WVhKNnpaOFUvOTZzQWtyRWJPais0cGw5cElnNGxmZXVr?=
 =?utf-8?B?VlhlcUFMWkw3Ky9sUFk5RmFvQVI0a0VidlpwM0ZDQVpEUyt6ZThRRklDaHJn?=
 =?utf-8?B?ZlJBbDl1Ukg3R3MrRHYwS2lZK1RjSzA4UUNPdW1DeGhKQytNQzdtVDcrVmlC?=
 =?utf-8?B?MG1KSXFSSmVZL25IRGZYc3BrbkxCWVh6NTdxWXhQNG80M2NGVTcwZDhmdits?=
 =?utf-8?B?N3FPMzUrSW9lM0tsb05pbW0yRGwvRXZ0TC9leTBnY09DVDNPOEI4K0x0d3I5?=
 =?utf-8?B?c3NZNzdzMTRDMGcrZFZrZ0JNZkoreW5NNzhIcEQ3bW42Nll3Y0ZJYkhmQ3k5?=
 =?utf-8?B?UXN3emdiOXA3MEJCc0duNU95VmRBPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0171f20e-f3b3-4c13-508b-08d9a55c71ba
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2021 21:44:31.4072 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bIRgmZ9WloI4d3TeLv/Hh9JV+gRG5azqNRCoYK6HGWj891YXljlUvwL8KaBAVWsRvPtLQx3N9N8JC8KsLRfWQcOw6WRv+lVCFuMqL6U8uxE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4762
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] e100: fix device suspend/resume
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
Cc: Alexey Kuznetsov <axet@me.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/11/2021 1:37 PM, Jesse Brandeburg wrote:
> As reported in [1], e100 was no longer working for suspend/resume
> cycles. The previous commit mentioned in the fixes appears to have
> broken things and this attempts to practice best known methods for
> device power management and keep wake-up working while allowing
> suspend/resume to work. To do this, I reorder a little bit of code
> and fix the resume path to make sure the device is enabled.
> 
> [1] https://bugzilla.kernel.org/show_bug.cgi?id=214933
> 
> Reported-by: Alexey Kuznetsov <axet@me.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Please drop v1, v2 sent.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
