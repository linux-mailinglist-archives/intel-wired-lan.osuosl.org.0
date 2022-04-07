Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 824354F7D79
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Apr 2022 13:03:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0560380CE3;
	Thu,  7 Apr 2022 11:03:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rpWC3xE8zWSi; Thu,  7 Apr 2022 11:03:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F20C080C50;
	Thu,  7 Apr 2022 11:03:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 48DEA1BF383
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Apr 2022 11:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 436F140891
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Apr 2022 11:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ACSxygOUigq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Apr 2022 11:03:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 37D5C40384
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Apr 2022 11:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649329406; x=1680865406;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=miYyAztJqm7fLqDMJzO0aJ2y0s7oZbgkcipZMgVEpt8=;
 b=OekpWyxtYthjEAftqTNF0lEOUb6SqScLK4jNzZNe1o/sqOiml+JcEj97
 Chg2dL/aVG246udERhDX4FCoKaL3vJLPec36DKJEQxuMWyl+ZXHkwNRD3
 AC0Age4e6fooof+dUi70PPrw15GMFqlF5FfFPjWyQmnKcxLkOZVxQkkPt
 DpHuIFM+zc1SdX4uO4Ifoq3QGqAoAy6Pi+2vATHmJLP7rbjE/Biz2M4KA
 OAPxXQ5sUbRehOgajJzIxEJqZ3A7m3AzI5K1Hu0FxToLpXAWz13Q+rJrl
 xVSPjEVQZMUwPcziwjqR/R65NlHI5oTICLPbyChWC0MVdniWcZK+eX0/C w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="324454400"
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="324454400"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 04:03:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="652775948"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga002.fm.intel.com with ESMTP; 07 Apr 2022 04:03:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 7 Apr 2022 04:03:24 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 7 Apr 2022 04:03:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 7 Apr 2022 04:03:24 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 7 Apr 2022 04:03:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YMMoO8CHJeR6VOtmvFYSkdpnaGBTFPf+08KVWAoQPkvBgE3PekWQ3YhPemJuCIsM2oUGAP5nlKbaY4WjrvuIVZT9Gr/+uVwLUrClPLkCYOLyINiZAPw5LbpfrSsV8v0jo6qbs+gTxjZ8nfxtxBiNqbljeUPrwOpXSXmYTPOmllxrVwTXjcNFL8MDj3zXlXlZCi57njvfeLlwpDRSXf/9cgCUPbZCK7TP/0ndEVxQsTRczr5Gz97jkBF+sKcepiOzVbmqLeHAYeTL1LrzUyrC0hZJzqhI28f5RWQ/YmyTx4gKsmQn32V7bb40AyM2Psvos4lKXYuD4zanfH0BJXMk9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kMnHO+WPJ9fWUJchJUB87GJ/w0BDlD3a9j1bqaiGbzI=;
 b=EK3Drj+E/Dw/rGBTGkgaZmdxsdrtqXUApTosnMRU9SybCZVjAGE8FcGfIxjuJMvGrRi1X1Gqeqc6djWkr7cASmYk6lh4mBb9mF0yBp82VVxJuUgv8/K6cXw/BHhZnz6s818xuo5v+0zjcAWe0LXlnmOxrwXp0CoYix0tEQqlpFfvNudXh9P9H7Zbth8f07nJ1RbFPMoH5QSbpEVZxrjbLLUVwxUfzPs0NNfP2RL3kMOBBk3kAm/h+iMTGvzGEemiutpEHifn8qaORe7zt4s1ZIKAiTiHhCFTLRzxEex6f8VPpr7WN2JZIaNw8XMSznOl24VHjFSH47rtium0SRn9Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:95::23)
 by MW4PR11MB5935.namprd11.prod.outlook.com (2603:10b6:303:18a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Thu, 7 Apr
 2022 11:03:23 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::463:fe6b:da1c:3594]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::463:fe6b:da1c:3594%6]) with mapi id 15.20.5144.022; Thu, 7 Apr 2022
 11:03:22 +0000
Message-ID: <9505bc04-edbd-ab64-bc95-a06150bbba38@intel.com>
Date: Thu, 7 Apr 2022 14:03:16 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.7.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>, <intel-wired-lan@lists.osuosl.org>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, "Fuxbrumer, Devora"
 <devora.fuxbrumer@intel.com>, naamax.meir <naamax.meir@linux.intel.com>
References: <bff5f4d7-bb85-e3fa-b8b1-76d1b8e0133a@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <bff5f4d7-bb85-e3fa-b8b1-76d1b8e0133a@molgen.mpg.de>
X-ClientProxiedBy: ZR0P278CA0081.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:22::14) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:95::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3fb96591-f1ad-4257-033e-08da18863b47
X-MS-TrafficTypeDiagnostic: MW4PR11MB5935:EE_
X-Microsoft-Antispam-PRVS: <MW4PR11MB59350F63A91EA8E0F96ACC5697E69@MW4PR11MB5935.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /Fl4mWZAsQC3OHodaip6Ah/QdkkzW3VxoiqHTybcbT7ayRD1GpNjow4mDyK3PDws+1W7l7YbR22T9w7XUNSQubbFfnZBzFsLFwiTPWwr77Myz6m/bjoHWkoKd38VRlNlMIsV53ONK95KpeBjDkl4blF7gfbFIET5r7lVa6x/4NAWyxzpbUa570IkZGdZ61g2hm7VD88TyW34VoffPuOTk7RoQvuW6TvmFWCuoc+aBIbjq7S97YCWc4+2T/L5ID8kePyiHcg8yLRxcKd8hSROP/1CZVWoVOJhA+V2e88wfWhiPA1n2MlLiDB+tgtZorCu42oWDcqwb2Fd1IHbL3WmOgP0xFPOPlfusiPamjNA7v+BsOEuQNqX57WP6zUsqXJq8iNAutEAlhL6ODwXbeqs+y80IIqp1d7YqI3i6+oJjmDnleRTqRxybUZBqlKFapzWQF/Oufc8FsPHeBWOlT2dUU4kuw6i0S56Y2F4/rgusppuW/GnA1XPdZHpEV2MC5jZaY4YyDNfi59DifNZV/FASWjFpMyFhwIOGS/M5HKycCZyUADUVmzqYi8f4x7F8w1vFp8IyArRWH/XmtzW0dt5cDpvXwiamfHru7kiHJWkH9B9e7nYpj8/oPDxEH9Yb2/NMfLvfl+S+fXsNDbMC7/WIjQPZ+kT3IpQGKOhOFRfZxQMvOSoNmXZCJqKd1O/lst3Rv0uKdyakBGn24yGU9fDm9MO6oz6L/H7NBb0nPyBJxqQ5toPKxI0/3uBU81ev0fiDBg31b1AN01oawpfUhjqP/lSpc2xGmDEg9jr+09xG6t5JMxKp7GdWRAQosIjoxG3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66476007)(66946007)(38100700002)(8676002)(31686004)(316002)(186003)(82960400001)(36756003)(66556008)(26005)(110136005)(83380400001)(8936002)(5660300002)(2906002)(966005)(6666004)(2616005)(508600001)(6506007)(6486002)(86362001)(53546011)(6512007)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TjJsZlB1QXJEdHEvY3pIc0tUemFUTkRxc0VrSit5TUluQVREWUVwTFIzYzBq?=
 =?utf-8?B?VjZtbldEVGlmeG1lQkxnVEdMT2JOd2hXUHVBZVRtelNtUTg4SVBDU1lWc0ZH?=
 =?utf-8?B?dGJmU1pXeExiamU4YURuTGlyNXFKY29NVW0xTTM0NytNRTIrTkl1WWRCMzVR?=
 =?utf-8?B?eFMwQ3hGQWsxbUQ5eitTOWd3cTVKbWlJV1FXQ3JZS0V3SXpwMVVmN3dPNU16?=
 =?utf-8?B?UGJTZHFNMFNramFIM3czbnEvMTl0NG5iWlJUV21UZmhVM1BBQ21JYzlHOG42?=
 =?utf-8?B?Tk5NWXI3WWR6NHplQ0xTdFo0NVUwN0c0cVU1alh6N1UyTnd2YnVLb2FiUk5I?=
 =?utf-8?B?RHBBL2g0MThCRGllUndZcVFPOEpZcEdJNUMyZGVWRHN1TFg2YWM2NjRxUnJo?=
 =?utf-8?B?aWZyUFAvWGl6NHFSeDRHZGlHMjB5anlvUnNHazc1NGkrd2l1UEs3SWhtSklL?=
 =?utf-8?B?aE5TUFZxdG55ZlNuL1hDLzk3QS90MjVab3kvRnJmaWpzR1BBdTRTZFlMK0tu?=
 =?utf-8?B?Qy82ZGxkY0U4U0YzcXB3am1YYnZXRStYdUJwUDE2RFo3TVk2MzJZbWdEbkRM?=
 =?utf-8?B?U0JkU0pZTmlJa3RzdmlxbWJYakc2WUE0NVRwUVF0QnBUMmg1MkJRZjl2NTc0?=
 =?utf-8?B?Vlp3V3EvMnNDWjJxdWRJeHdiSDRIMnZSS08wVjVrRzlCMDErTW9ZNUFKbFZp?=
 =?utf-8?B?NEJGT1ljUEUySWZYcmVORzJCQkh2UkN0enJRd3lRejI1cjJjY2IzUGpWb2VT?=
 =?utf-8?B?WlIxRG9YQkV4U3cvdHhFNFp3M1R5bFUrRzUwM21BcVZiSkVIdGoxaWgrbyty?=
 =?utf-8?B?VUxXVEYxWUN1ajUyOHVTZ0plM3NmMHloQ01WQUJoTld5M2IwbHNQYzJWM2px?=
 =?utf-8?B?QXZtMGxIbWFBcnA0UGRYaHlWOVNldFJkN3Z6YmJiUGVWYWdwY2hueTQ2RnVx?=
 =?utf-8?B?SXZENkhXMUdwNWpvaXFUTmE3TEt1cDJzc3FGUXZ2eDFYalpVYnJYbmN4N2py?=
 =?utf-8?B?aGlWWGNLMjVXUWhyTVBkekRZR2Y0MThGMFlMak9QWTZ6TDdRN2NEbUJ0bHNx?=
 =?utf-8?B?MFE2OU5WMHhHYU5lYjlLRGxIbTZYVWJxZ0lxQ1VOUUF0V0N3Uy9PSlBkMU96?=
 =?utf-8?B?enRCaGJrYVRlc3A5RTZhdUVSWm1RemtEVW41S2d0WVU3T2x6RittRjBHRDk0?=
 =?utf-8?B?aXQrWENOSUJBWDZsZ2xDWFgwZTUxY2c5Wm9sU0xVZE1jZ2J4byt1b0YwbDhC?=
 =?utf-8?B?cktKY0tBa1I1T1ArZEpjenJqdmtSZWUxS09yanNieCt6Z0tRZGhrei81TW5G?=
 =?utf-8?B?aURFMlpUckRmQUZXTXFOWWpsVlJHUTVRdmsrTm9SVWVSWDI5UUxrdVpYL0NZ?=
 =?utf-8?B?bHJpT0dlUnNYSllTaXpUMDlGaERUUUFuSzBLSmphMFErRGhUamI2MEoySnBF?=
 =?utf-8?B?d0lDbkw1N3dTMmVWZnNNblY5QUdNZW9JQjRCcnBDTmJ1V013TElBTVpiN1hQ?=
 =?utf-8?B?ZnFIQmZubFJLZFZJTUlodjlKUkVGVW1tWnVNeU5yY3JYUFZZTEYzUXE1RGp2?=
 =?utf-8?B?TjBVSE5tV0syMmc1OEphY3NaTjlXdzlCQXdCSHg0N3F2d0k4bEh1K2VRZGdh?=
 =?utf-8?B?dkpUbFFXZ0VmWkl6UjhxazJ2SEE3aWtBVEx5aTN5b09pWDU1K3BUTDBuL29w?=
 =?utf-8?B?Qytrb2ozVGNDVm4vaGJ2elBZZ2xOMmV6eTJSS2RQRXZsNnY3VzlhYldWaVpC?=
 =?utf-8?B?eGJVN09jbVo0eWw1aU1EN2d3cVVla0tZZlhrd0FUcXZYWjBhK0VIcEFZblBZ?=
 =?utf-8?B?UHZGNlZ3elhjWnBtbVF5aFFtSXlidVJXWnR2OHNYYUMxalFMb0dUTXJzOWxt?=
 =?utf-8?B?TzhxZll0Wll1Zm9yMENPTVVtQU9US0Z0eWRwcVJjUHdIYVFCWHh4N3hsRXl6?=
 =?utf-8?B?VkkvU3RuVlNXY3lLMVpKR3pMcCttZE9CN0VzQzFPTTNlUGVVaWFUSlFUaUZ4?=
 =?utf-8?B?TCtUSkc2NlIvM0Fvem4yekMyUjVLUm9POFQ0cEV6QTJMZWg1NWM3MnhUeGxP?=
 =?utf-8?B?Z01sVjdMaEdma1B0V29pZ0V1RzVxWWRUZGxLYUt4WWVTVURVaCtaYlFOcXVi?=
 =?utf-8?B?QUJOVkxTbEJ5bytWcG5tRWhKWUI5THNTMUxyZXM2Rjg4K01kdGdtVFNHbkNX?=
 =?utf-8?B?VmdiY3ZtL3FVYVdNSTFEQ0lYYnRIdzRjMXp3NFRSV3pmM0Urbi83eTdoRk9r?=
 =?utf-8?B?WXNhaE01UVVhZmFvd0JYa2JkL0N4WFFtalo0aHc0TWZaS21Ncm12SkdXcGdt?=
 =?utf-8?B?Y3NxRDd6b0RqNlNldmV6RWRRQU1sMWFnWDZld1gvRjdEQXBoS1dWTitXKzQy?=
 =?utf-8?Q?c9ShZHhEUFP7dky0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fb96591-f1ad-4257-033e-08da18863b47
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2022 11:03:22.8184 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a5xQzzdX+ugA54A+uvyUa2WELlw1ADSlNm41UI+JnHgtt+lAFjD0yF7foMWABALyNfFk++juDm0uU8QSi7kDrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5935
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] I218-LM uses > 1 W with low traffic
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNC82LzIwMjIgMTM6MDksIFBhdWwgTWVuemVsIHdyb3RlOgo+IERlYXIgTGludXggZm9sa3Ms
Cj4gCj4gCj4gT24gYSBEZWxsIExhdGl0dWRlIEU3MjUwIHdpdGggRGViaWFuIHNpZC91bnN0YWJs
ZSwgUG93ZXJUT1AgMi4xNCByZXBvcnRzIAo+IHRoZSBuZXR3b3JrIGRldmljZSB1c2VzIG92ZXIg
MS41IFdhdHQsIHdoaWNoIGlzIGFsbW9zdCB0ZW4gcGVyY2VudCBvZiAKPiB0aGUgd2hvbGUgc3lz
dGVtLgo+IAo+ICDCoMKgwqDCoMKgIDEuNjIgV8KgwqDCoCA0MzUsOSBwa3RzL3PCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgRGV2aWNlIAo+IE5ldHp3ZXJrc2Nobml0dHN0ZWxsZTogZW5v
MSAoZTEwMDBlKQo+IAo+ICDCoMKgwqAgJCBsc3BjaSAtbm4gfCBncmVwIEV0aGVyCj4gIMKgwqDC
oCAwMDoxOS4wIEV0aGVybmV0IGNvbnRyb2xsZXIgWzAyMDBdOiBJbnRlbCBDb3Jwb3JhdGlvbiBF
dGhlcm5ldCAKPiBDb25uZWN0aW9uICgzKSBJMjE4LUxNIFs4MDg2OjE1YTJdIChyZXYgMDMpCj4g
IMKgwqDCoCAkIHVuYW1lIC1hCj4gIMKgwqDCoCBMaW51eCBlcnNhdHogNS4xNy4wLXRydW5rLWFt
ZDY0ICMxIFNNUCBQUkVFTVBUIERlYmlhbiA1LjE3LjEtMX5leHAxIAo+ICgyMDIyLTAzLTI5KSB4
ODZfNjQgR05VL0xpbnV4Cj4gCj4gIEZyb20gYXRvcDoKPiAKPiAgwqDCoMKgIE5FVCB8wqAgZW5v
McKgwqDCoMKgwqAgMCUgfMKgIHBja2nCoMKgwqAgMjQyMSB8wqAgcGNrb8KgwqDCoCAyMTk0IHzC
oCBzcCAxMDAwIE1icHMgCj4gfMKgIHNpIDE1MDEgS2Jwc8KgIHwgc2/CoCAxNDAgS2Jwc8KgIHwg
ZXJyacKgwqDCoMKgwqDCoCAwwqAgfCBlcnJvwqDCoMKgwqDCoMKgIDDCoCB8IGRycG8gCj4gIMKg
wqDCoMKgIDDCoCB8Cj4gCj4gU28gSSByZWNlaXZlIDEuNSBNYnBzLCBhbmQgc2VuZCAwLjE0IE1i
cHMuCj4gCj4gSXMgc3VjaCBoaWdoIGVuZXJneSB1c2FnZSBleHBlY3RlZCBvZiB0aGUgbmV0d29y
ayBoYXJkd2FyZT8KSGVsbG8gUGF1bCwKSXQgaXMgbm90IHRoZSBwb3dlciBjb25zdW1wdGlvbiB3
ZSBleHBlY3RlZC5Ib3cgZG8geW91IG1lYXN1cmUgaXQ/IChhcyBJIAprbm93IHBvd2VydG9wIGRv
ZXMgbm90IHNob3cgaXQpCldlIHdpbGwgdHJ5IHRvIGZpbmQgb3V0IGFib3V0IHBvd2VyIGNvbnN1
bXB0aW9uLgo+IAo+IAo+IEtpbmQgcmVnYXJkcywKPiAKPiBQYXVsClRoYW5rcywKU2FzaGEKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKPiBJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwo+IGh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
