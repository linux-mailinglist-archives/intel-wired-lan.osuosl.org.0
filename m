Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6161F40BC49
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Sep 2021 01:38:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C64D660ADD;
	Tue, 14 Sep 2021 23:38:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YjqFww9d5VSE; Tue, 14 Sep 2021 23:38:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0ADD607F8;
	Tue, 14 Sep 2021 23:38:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2AE6D1BF588
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:38:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 160C0607F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:38:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oF59zNleriEZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Sep 2021 23:38:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5390B6071C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:38:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="283160871"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="283160871"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 16:37:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="470508986"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 14 Sep 2021 16:37:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 16:37:59 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 16:37:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 14 Sep 2021 16:37:58 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 14 Sep 2021 16:37:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZJDYsAmEFxguLiTZ15OcTfXHvTXx8eyN1G6i8kld4pT8s1KeIjT3xJ9Fm/r1T2eZqn72OzrcFFistcqXAFrOr02bLGIfPBXub3MTQpr73H7w55E5alA3k8dHSM7RpiQhpz84q4M+sCCfhctDdnLX31ySXDkgU5QfboN0Wq631nyAlUVsMyS30FdGSm2k1RwXTpeTVrzBWMSNV737zKrJ0PzOGYXp7FW4e186661BnwVARPeTOMFtYLg48812oWSm4e3EhKFa0KPE1SALz3O6ru9XtleQk+VOxNWSfkENCd8FZPKe/k9iBepbJwMBvqouG/a/c7p6qjiwk8pUdRQ7cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=DKUwuB5L2h0EOPsIHSHH5/lhJkTOFAlUTdMNAQ9sotE=;
 b=WhRskv+SeETaCGJU6QaEDENV8PiI7R8hqmy7DwhGSz6W+DvOU8e2zULvETuci4vfXM+Ur39yRNhUgkePBbrAaYAJKFqn0I7qgP8FmWaUUSoCP8eL3/d73/KeEbJb+D/84UdP3l7nv+fwvMdr/gtPZC/VDEHbzFqfjScVGuf/Bg40gyL+rTrNXUUb5EXK7QndyBtP+RmHGR/yrX3kgHTJDqdVHYedFj0u/iRfKkr1hnBd6lWk6VGvi2OqOnDuObthFskmRHJVLtM0XPlZ2uSw4d2Fy5d4/VfHH3/uKKQqJv+Rze2x5gw4oLZw/4her/G3dmCrkrFqzwNbqK1QKuOu8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DKUwuB5L2h0EOPsIHSHH5/lhJkTOFAlUTdMNAQ9sotE=;
 b=vwIqeoWbdPDmpSLcL6M67Zu99gKDjTNhBtRniC/vIymzG5gvSbDP5PJULi6zjQb4ETcBh7zMht2YOYoKZReAKCIUVruMZ/gAA+SwgD59TwtTT4yVe+355hYWLqy7fbjji0NMHZde95NahjS7vKFewBUeU5XNSpuDgqrSp16QI0o=
Authentication-Results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MWHPR1101MB2350.namprd11.prod.outlook.com (2603:10b6:300:75::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Tue, 14 Sep
 2021 23:37:57 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::cd0a:aadf:cf9b:f2c3]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::cd0a:aadf:cf9b:f2c3%3]) with mapi id 15.20.4523.014; Tue, 14 Sep 2021
 23:37:57 +0000
To: Jiri Benc <jbenc@redhat.com>, <netdev@vger.kernel.org>
References: <4d94f7fbd9dd6476c5adc8967f3db84bc9204f47.1630319620.git.jbenc@redhat.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <b94eb5b1-04b7-a1ba-3040-a8f35d40f426@intel.com>
Date: Tue, 14 Sep 2021 16:37:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <4d94f7fbd9dd6476c5adc8967f3db84bc9204f47.1630319620.git.jbenc@redhat.com>
Content-Language: en-US
X-ClientProxiedBy: CO1PR15CA0077.namprd15.prod.outlook.com
 (2603:10b6:101:20::21) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.214] (50.39.107.76) by
 CO1PR15CA0077.namprd15.prod.outlook.com (2603:10b6:101:20::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 23:37:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6eb2eedd-0453-4721-b5d5-08d977d8ae3f
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2350:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR1101MB235096F1EC327B9BC42690C697DA9@MWHPR1101MB2350.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /hWDae2h+6qrck4RD1Z5N7pjtFDml3gsGxh/r+ap3FkTNGfU2bYrhNe0DqiyAE6RC2XsVXS5j0A4DoUnl5Ycq8GMTVeedkHyuq4vZ10u5l1yFXcR0U0H4XNXSFUSFXJr1Ev11TGHa/ul2B6CwAA5lR6A9B9Cjq1ghkR59CLpFZv9YWTfUZ1x40sxXLZVxG+66U99qDbUdyuL9iZg44BoJUS7WTOU03IVdp9YnABha2YyvjJTeeLrHaM6oNkaplvu+0OmN0125skDb9DzdYpjaDzqzsRJju8I9G4hk8k3E1SxNvvPQONVcBkKKTPTdIkyKKfAxBfXF/b1xuet234A4t44q8ufc3+kCAyqgNcC6/hwMcM/thECsAOWpnhWi/tb19qhOU3xn81LcF7Bc0P/FhWu/7GtWLzCefCDGvW4CesOx1AWFhFurRhyjkcdI9zW44BK+CxPlFSTHdGVK8HLRZWuWIDZDL4TBDHwwbcj6Cq2OC8Sz4a0E8yA6JiXSwbKpXV84+9VjtuWERq3h8gKq0lhJG1IKz5NQ9jmC2I6/aJEDEhwxv7glTXEHfCBg3GrZuq8vSbHBhDYzTo8xKFdqSQ8j6GzRGZW+xX8eyxBMNTyaVRENhl3wPTA52HGghAMtOgLttCg8OoiGGd2J6wkagmLbbSK09ZKcYL+ZkWoI80cESTOTRH8v2YJo9RkONxhgM9e0l/sd2iveRsY7k5iBZyCJ3rhhuMhNkTsavVvRHU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(346002)(376002)(39860400002)(366004)(136003)(8936002)(5660300002)(2616005)(6486002)(956004)(31696002)(54906003)(31686004)(478600001)(2906002)(44832011)(66946007)(316002)(86362001)(16576012)(4326008)(66476007)(66556008)(186003)(53546011)(8676002)(26005)(38100700002)(36756003)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WE1ycHJJcFhqV2NvR2Ewb2EyT0FtK3M5UWhLTFJSMjFpc25HU3lidEQ5UGdu?=
 =?utf-8?B?TmNySXdVREYzTVRMMFY1Y1dXYVdsYlhHcVlqRm16V0lsNTArclRxTUVDWGlN?=
 =?utf-8?B?M3RUVjN2U1VPRDRFTTZhaTFRdWhLWU9LK0pkNEFrTDlYQWV6S1o3cXRJelBw?=
 =?utf-8?B?YWFmZ1ZCNG10WFM4VFNNdWp2MXJuY0JKaXRidEYrMHBBU0RuT2xFVVRITnY4?=
 =?utf-8?B?bS82b084ZEx5WEdFWmptVmprNmdsRk16TXJUU1ZTRTlTNzhQcDdrUmhoNzFP?=
 =?utf-8?B?elJyUWpSWUtUaGZHVXJla3FlcHpESmh0b2J3S2hMWUQ4dUVXT3VwTEFocHBJ?=
 =?utf-8?B?Z0tzUGhpZ0xQUzIwcFNCVTcybSs4KzZYa3VPZ2I4ckE2SGloL0NvYjZyY3lq?=
 =?utf-8?B?cHBnUU1KVkVIdE16MEI5YWREUFZ0MHl5OHJBeVIxc3d5Z0h0YWE3QVhyOUFO?=
 =?utf-8?B?a3pBeHZjVzFWeU5hSVRQbDhGNkZjNWpJZVZFZmRtL1lJVkh5ZDk0R2cvOHVH?=
 =?utf-8?B?SmREN3gxTGx0NmJzS1d5d0lWUnUwQXdCNjhpTVpRZUphZ1hXOTFmQVlUbzFl?=
 =?utf-8?B?a0lyQS9LQk1kL3J4Y25zZXRUR1RRdzV0c2RickdVcmxSUXVicHlpRkt0MzFi?=
 =?utf-8?B?dlVuMDBrMjR0VjhKMlBoT3JOL3dEeEoydUpWc0V5emdpd05USnNMdXM2L3lu?=
 =?utf-8?B?Q1p6YTd2Qk9TTUlrZEw5UDhmczkwK05JYkdIZktjcjVSTzMyaTFRU0p3UHE2?=
 =?utf-8?B?bmJYM2lTb0hFUmptTmNMYVA2a1Ftdmg2N2piRlplWGF3bS85L016WDU5WHVk?=
 =?utf-8?B?YjdVcHp0ZU0yRytvRXdFeUY3VmJINTVBSXRZL0d4dUFmV3RkNHVrcVRrUy9X?=
 =?utf-8?B?cjQrT1BFbjRicU0vTGZMRStKdWpjOWtJclp4NXlVYjVnbWFMdklLNnE1SFBS?=
 =?utf-8?B?eFZ4aVJ2cGZnQ0VuVTF3eHBsUWJzRHRDUEo2TkhTV240TGtnU3luUkpMWWEw?=
 =?utf-8?B?a2ZITjhJajJHQzlUbWszZTBuc1pINkRHUFk2aktPc1lYWkJCOVR6OU9oRVV4?=
 =?utf-8?B?Wmk0c09SN3ZGNFRWbGxoYzBnYmY4bW1KNzlqdEdPSEd0c0hpTlRzV1NQVit3?=
 =?utf-8?B?d2R5YnBSK2NRbkdjcFFtYjdHbThzODA2Tmc1bDgzWlg1YWhXT1ZySWdETlNC?=
 =?utf-8?B?NkUzWEgxZW9BVXRYMFV1b3E1UElXQkFFaGViTSt2QXhjWGJDcCswdmsyc2I0?=
 =?utf-8?B?clYwMEdTTHdjRnVqUUgvOGxXNXA1TEVjRmh0cVQydzBMY2xldVU2Yk5nalNW?=
 =?utf-8?B?MDd0d0RLQS9aMWpSS0hMNXY3bkJuV284SGtsSUpUbXo1VGFQTTk5M1U4ZHVE?=
 =?utf-8?B?QWcwY1BlaHpGNWpncXNWUVE5ZEoycDh3Wlcya0JWZ3NiOGsyMHNHN0RlTWQ3?=
 =?utf-8?B?bHAzWHBpRXRBMEVWRjFTZXVlTnpicnF6MHZlVS9RMGZjdFhQanZWMG45MGZ2?=
 =?utf-8?B?cXZmOXBLa3JjcHI0aFRTZDlIbU1tdFliRUhIMHpabVB1UmltMGxucUpTV0k2?=
 =?utf-8?B?MXNlVFZKR3lxZ3d5Z0NaNitHOUtxVUE3Z0F2cVlEdmFMNkV6Vm45S1VvSEF3?=
 =?utf-8?B?SEpVYzVLY1B3RVNMOVBDOUhGdDJRa0dycU12VXlacHFXcyt5RllJNVVoditi?=
 =?utf-8?B?ejB5NWo5RWcvbEp4U3EwZmxRdVlVdWZ3MTlGekR5c1duQndWRFQxdzdDT0V5?=
 =?utf-8?Q?C1krZFRPY7llGGRxasxyiOKA7TjocUxqSva0XdC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6eb2eedd-0453-4721-b5d5-08d977d8ae3f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 23:37:57.1569 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gosU0ty+Jl3oWwW0efuK8arhlf9rDNZkVYVHCMOezfZTi63V2TW+UO4GbDZD9s7wjzxwJ/AS59/QZmJ2MJW9UrsRVivBI7hBaAH6KjtXOwY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2350
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: fix endless loop under rtnl
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

+intel-wired-lan list

On 8/30/2021 3:34 AM, Jiri Benc wrote:
> The loop in i40e_get_capabilities can never end. The problem is that
> although i40e_aq_discover_capabilities returns with an error if there's
> a firmware problem, the returned error is not checked. There is a check for
> pf->hw.aq.asq_last_status but that value is set to I40E_AQ_RC_OK on most
> firmware problems.
> 
> When i40e_aq_discover_capabilities encounters a firmware problem, it will
> enocunter the same problem on its next invocation. As the result, the loop
encounter

> becomes endless. We hit this with I40E_ERR_ADMIN_QUEUE_TIMEOUT but looking
> at the code, it can happen with a range of other firmware errors.
> 
> I don't know what the correct behavior should be: whether the firmware
> should be retried a few times, or whether pf->hw.aq.asq_last_status should
> be always set to the encountered firmware error (but then it would be
> pointless and can be just replaced by the i40e_aq_discover_capabilities
> return value).

If the firmware doesn't reply we have a lot of problems.

> However, the current behavior with an endless loop under the
> rtnl mutex(!) is unacceptable and Intel has not submitted a fix, although we
> explained the bug to them 7 months ago.

That's really frustrating, sorry! We are actively working to do better
by working with you more closely. This one must have slipped through the
cracks.


> This may not be the best possible fix but it's better than hanging the whole
> system on a firmware bug.
> 

The fix seems fine to me on initial review.
you can add my
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

but...
Missing Fixes: tag?

> Tested-by: Stefan Assmann <sassmann@redhat.com>
> Signed-off-by: Jiri Benc <jbenc@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 1d1f52756a93..772dd05a0ae8 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -10110,7 +10110,7 @@ static int i40e_get_capabilities(struct i40e_pf *pf,
>  		if (pf->hw.aq.asq_last_status == I40E_AQ_RC_ENOMEM) {
>  			/* retry with a larger buffer */
>  			buf_len = data_size;
> -		} else if (pf->hw.aq.asq_last_status != I40E_AQ_RC_OK) {
> +		} else if (pf->hw.aq.asq_last_status != I40E_AQ_RC_OK || err) {
>  			dev_info(&pf->pdev->dev,
>  				 "capability discovery failed, err %s aq_err %s\n",
>  				 i40e_stat_str(&pf->hw, err),
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
