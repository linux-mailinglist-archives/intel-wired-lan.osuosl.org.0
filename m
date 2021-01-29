Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77865308F11
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jan 2021 22:16:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0674386A5B;
	Fri, 29 Jan 2021 21:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Er9YxfX7RhB; Fri, 29 Jan 2021 21:16:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 43EDF86A3D;
	Fri, 29 Jan 2021 21:16:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B7A01BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:16:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 84D1887499
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:16:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ysWca95Elc-j for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jan 2021 21:16:04 +0000 (UTC)
X-Greylist: delayed 05:34:49 by SQLgrey-1.7.6
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
 (mail-eopbgr750048.outbound.protection.outlook.com [40.107.75.48])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3204787495
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:16:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R9caPmra79x9pathip+WomI3eL8unzsYduDikiA4R9MVnCrUTXPdBLLRGF9iNn4GCGNyid282RIw9WgPPs2ek0Ow/JMsKkylyCylpuV4PTSTASVtLQwR8H4+/yaEL2GTMQEPp/2vhtk+IDRecPuUIFHzD1ntymJocs3wqomGqbUehoxXifwyXFrVmTdPbTqRhts0wER8D/U9aTYHaIJom1lUXmEci1cLA52DBnRqPy/En2KWXNUWwveiD9hh1eQQIUzu6vOoxH2FwWMJfGOQSBiWRvWa38hlydzg0jX6eYJzyFHTu4oI8KpqQFsXlc59o/RMZfoh73+rUm8XHa1EvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CYPaqNQihELI5mdGpuRXopAwVqidPYLcuSBQ0nfwpiY=;
 b=j8+YsdF55VqObz9TfEVE9PsgaqvxycmRDkW7XiWFbb/HXP1OrkEHDdHs+DBX3Le/H1xD54jxQmfxQKUVkPhHy42ZuCYiJfyGdnPliEgIh1vRqfj3qKfwfoEU7ITtA9tl+7qpadQAJW2XjKRB79qYi/SxN0inh8k2kI/LdIu80xYU3ZZGMIKIWPfQnCrMd4W2tTZ9BEFJm/su5bH1wf0tkock1WUakAR2wvm2ZVScEFFwJwEu5qMtEGupaSwrN4XbHzcvpGwtCkViptNMRhS8yN1v3dCPlq/ehPVl0kd+DmEm1ZSh+HlTSGmHeFlyCrZmxZP1ObKYCaAEtzYUe6fFMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CYPaqNQihELI5mdGpuRXopAwVqidPYLcuSBQ0nfwpiY=;
 b=cH9mPQTL0zbEw4I/tS7y8FNCW6FvAF70GJMzhHn/oa3x9YwMfhWxkj/2lmcGYbEFHXPR5o1ZTbs6zFVGJZMY6UtV+QAl8jUH9/9v9Ygeb4QkRsZXYV7F7gxEPr/PyNf3wd/EwCFtVj1OLSgFcCP2o9Gyr22rkVG1JE9mezzMCCY=
Authentication-Results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none;lists.osuosl.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SA2PR11MB5116.namprd11.prod.outlook.com (2603:10b6:806:fa::9)
 by SN6PR11MB2734.namprd11.prod.outlook.com (2603:10b6:805:59::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.13; Fri, 29 Jan
 2021 15:41:12 +0000
Received: from SA2PR11MB5116.namprd11.prod.outlook.com
 ([fe80::407a:951f:97c:f70e]) by SA2PR11MB5116.namprd11.prod.outlook.com
 ([fe80::407a:951f:97c:f70e%6]) with mapi id 15.20.3805.019; Fri, 29 Jan 2021
 15:41:12 +0000
To: intel-wired-lan@lists.osuosl.org
From: Chris Friesen <chris.friesen@windriver.com>
Message-ID: <aa48b21f-c8da-0b9c-b7de-f100069ccba2@windriver.com>
Date: Fri, 29 Jan 2021 09:41:09 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
Content-Language: en-US
X-Originating-IP: [70.64.74.82]
X-ClientProxiedBy: SJ0PR05CA0171.namprd05.prod.outlook.com
 (2603:10b6:a03:339::26) To SA2PR11MB5116.namprd11.prod.outlook.com
 (2603:10b6:806:fa::9)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.39.5] (70.64.74.82) by
 SJ0PR05CA0171.namprd05.prod.outlook.com (2603:10b6:a03:339::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.8 via Frontend
 Transport; Fri, 29 Jan 2021 15:41:12 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1960538d-3403-4df3-3cb4-08d8c46c4e66
X-MS-TrafficTypeDiagnostic: SN6PR11MB2734:
X-Microsoft-Antispam-PRVS: <SN6PR11MB27341B3C504B024A2E4EC435F6B99@SN6PR11MB2734.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YPP23OEEzrLUWO+OIn8tuew1hnVM25wn9ou0HsbVvgm064woF4THlzJKnu34xiuaWnQo0Yx9kXOo+EuoVuUJj/URHuniyhYjQAN9XE8J9TmxJzoiYxDH3hQM95qXwuHNHy99yyGAgBZjl30wCvv5x5ZTtLImKuasHAmAib1jYiaLJEzSXXpB38FqiQ+ZCtKYTzb2+Z9bszmPXGbVjbw5BNoh4FR6QrwNi8iaAP+wobATbXo0veuQFtaq88Upp4ZchwCtwvQY5rwjEKzInNQfM5B9e0ylc/1goNyJv6XaQwurAclfRsOoJrTC5VU8DXXx0UjZNs8VnNa5lrpN0SuYBvdsQn3k5UrHVrrblqWFoww/3nfFPswMU1QcdpK8l6IeX2fSo05bIcHHBO8jAV4ngUgK8Bn91IAkWkl2fy4KtySKKRA9idTfD9CTYKlUrQ5HmtJTKyNs71yM4ZrO+G3IyffOLuknM36EFQUJtsOdQamcBk2RLAI1WZQdEa3+o2XaqApn411CGyYYng1KHnLE4rx/eDckXeLnvMg3PPEi82mSd5NqLQ80ytDNHxrLpb/gjf6DufTkYpKCMYrzdy//x8zgRhu8lWPvPGUMA6Mk3AM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB5116.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(39850400004)(346002)(366004)(396003)(52116002)(8676002)(6486002)(36756003)(956004)(2616005)(316002)(5660300002)(8936002)(44832011)(31696002)(31686004)(16576012)(16526019)(186003)(26005)(86362001)(6666004)(66476007)(66556008)(66946007)(6916009)(2906002)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?TTRIbnNQVitMS1ptckhCWXpDNk5DdXpuTjFyazIvREZyOEJFSXZaVTdLZklx?=
 =?utf-8?B?ZFRYOUswZWJMRWR1Z0V1VStvditwUFI2SnVINXFpWVZYdjJXSnRWa3BEQkV0?=
 =?utf-8?B?blV3aGt1TFVlY3BackNTQlI5M0NaRkZtQzJnS2Y5YjVJaU52R3ltMTFISDB5?=
 =?utf-8?B?dzJGNlErdlpZQXlVYTh1cGpxdGpJWFhnQitUc3dORUtqVG1kWjM4ck5PYW1F?=
 =?utf-8?B?YjBjZjZ1clNvRkFnRUhMcjY0NlZ5SU9ySDc3S0FoYi95WkxLLzkyczBTNlE4?=
 =?utf-8?B?a3BmZkJoY1JrNi9vMkdLd0Z1T0NreWIvYXBPTllMWHRvMUxOUzh2RW1vY1BH?=
 =?utf-8?B?bHlsbTJ1WGxmOVVJcjB2dmlJZzlxUVJkNXZGQWNzaEY4L3lZei9vMllIelZZ?=
 =?utf-8?B?Y291TFZ3U2NnaTlidkN4Ykxxb1M0Tzc3QTNpVzRDMmNTY0VEbHZVS0wxT0ZO?=
 =?utf-8?B?UTQyRE5WeWYvNVpydTNOVUtTeEowL0ZEaUU5TzFtMjdINWdqcmorNU8xOHJi?=
 =?utf-8?B?dEdNQ2xaN08wVFZlUEpXbnRub2Y5UERVMi8wajhORFJjZGxtbFVEL3FJeTE4?=
 =?utf-8?B?dzIxU0lvWW9oNjBsWFBSS0d6K0VWazliYVBBZW4wZWRMcktRTG9xb2Nubkdp?=
 =?utf-8?B?UGNId1phRUJNaFV0MmxwOExtQ1lIUi84TWF3K1p0d2xtZ1dKV3BjQm1uS0pN?=
 =?utf-8?B?SVErZXNoNHdFTTZpbndoUDk3RURvVk9RUmFqYlpibDdXVmJWUkRsamxFYnBT?=
 =?utf-8?B?Q0pCQTR0MzVlN1VHUHJOV1RWelN1bGtPbktNQTZ6MEFJaWFjZlRiOU9ndk5P?=
 =?utf-8?B?a01rMXBTbDRON2l2MGlpV3lpN2NEeGxsc3B5YTV4QWhiYW40bGdJd25KQ3NF?=
 =?utf-8?B?eldwL0FielRaa3lBUVlIWThrYTRxYUREdStHWFpjcWlVYnNXU1BDMnhXQ01z?=
 =?utf-8?B?Mkl2K2E0RTAvdVE2bm5iWjlqLzR6OUpneTR2TFJJaWFlQThhZzRhKytMTlJ4?=
 =?utf-8?B?YzV6REVkWmQzNTlSZVB2QzV0aUFmK21OaTcvWXZMaFFTNXNwS1k4OEZLeXlh?=
 =?utf-8?B?UEZIUDd4S1FyTEhGQVFlcFpOcW5PQno0aGU5MkJ0R3lZOUF5QVEzVjJFdE81?=
 =?utf-8?B?Uy9YSGZBeWhzK1BRK1JxM092Rk1RRndGZWNNNkthQTNlZHlYYmQybFhrSERa?=
 =?utf-8?B?RW10MnhjbG5LS1JHMTdobVJYK2krak9uMXNhN1BOQ2o4SFh0ZnM1a0RYMW5D?=
 =?utf-8?B?YWp2V1ZKQkpSNTY0dC9NL2RHenBRd3BnRzNveFhHUjZLNXNkMjB0OHp1Y2FD?=
 =?utf-8?B?TTd3NklZaHJuZWRBRmNoakg4OUtQWUw3d0RjSzA0Vjg2cGNKcVVMRHEvbGF0?=
 =?utf-8?B?UjVMVFNyOVkvd2g1MXpSdUFNYmY5VGFYMWN0WFJGa29oWm95SE5CZUJSbUZv?=
 =?utf-8?Q?nuztNhEf?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1960538d-3403-4df3-3cb4-08d8c46c4e66
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB5116.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2021 15:41:12.5821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BXgGLaK81lKEHK6AHdgJEnypF7djjHBuoLvOXJvfYuHJum0Y/szJ1Jh6hC32ngskmSBVP2DarLXVOAPq2XHzeZlAz4xm91+dLZVtaLbBB7U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2734
Subject: [Intel-wired-lan] IRQ affinity not working properly?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

I have a CentOS 7 linux system with 48 logical CPUs and a number of 
Intel NICs running the i40e driver.  It was booted with 
irqaffinity=0-1,24-25 in the kernel boot args, resulting in 
/proc/irq/default_smp_affinity showing "0000,03000003".   CPUs 2-11 are 
set as "isolated" in the kernel boot args.  The irqbalance daemon is not 
running.

The iavf driver is 3.7.61.20 and the i40e driver is 2.10.19.82

The problem I'm seeing is that /proc/interrupts shows iavf interrupts on 
other CPUs than the expected affinity.  For example, here are some 
interrupts on CPU 4 where I would not expect to see any interrupts given 
that "cat /proc/irq/<NUM>/smp_affinity_list" reports "0-1,24-25" for all 
these interrupts.  (Sorry for the line wrapping.)

cat /proc/interrupts | grep -e CPU -e 941: -e 942: -e 943: -e 944: -e 
945: -e 961: -e 962: -e 963: -e 964: -e 965:

              CPU0       CPU1       CPU2       CPU3 CPU4       CPU5
941:          0          0          0          0 28490          0 
   IR-PCI-MSI-edge iavf-0000:b5:03.6:mbx
942:          0          0          0          0 333832         0 
   IR-PCI-MSI-edge      iavf-net1-TxRx-0
943:          0          0          0          0 300842         0 
   IR-PCI-MSI-edge      iavf-net1-TxRx-1
944:          0          0          0          0 333845         0 
   IR-PCI-MSI-edge      iavf-net1-TxRx-2
945:          0          0          0          0 333822         0 
   IR-PCI-MSI-edge      iavf-net1-TxRx-3
961:          0          0          0          0 28492         0 
  IR-PCI-MSI-edge iavf-0000:b5:02.7:mbx
962:          0          0          0          0 435608         0 
   IR-PCI-MSI-edge      iavf-net1-TxRx-0
963:          0          0          0          0 394832         0 
   IR-PCI-MSI-edge      iavf-net1-TxRx-1
964:          0          0          0          0 398414         0 
   IR-PCI-MSI-edge      iavf-net1-TxRx-2
965:          0          0          0          0 192847         0 
   IR-PCI-MSI-edge      iavf-net1-TxRx-3

There were IRQs coming in on the "iavf-0000:b5:02.7:mbx" interrupt at 
roughly 1 per second without any traffic, while the interrupt rate on 
the "iavf-net1-TxRx-<X>" seemed to be related to traffic.

Is this expected?  It seems like the iavf and/or the i40e aren't 
respecting the configured SMP affinity for the interrupt in question.

Anyone have any ideas?

Thanks,

Chris
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
