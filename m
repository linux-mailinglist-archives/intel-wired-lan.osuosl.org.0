Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B37FCF5C2A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Nov 2019 01:01:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 669EF86D7A;
	Sat,  9 Nov 2019 00:01:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tSqwmCtJZJzb; Sat,  9 Nov 2019 00:01:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87BE186F74;
	Sat,  9 Nov 2019 00:01:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F3F431BF863
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2019 00:01:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EEF6986DCA
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2019 00:01:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HqwYggycspEQ for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Nov 2019 00:01:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2BDDD86D7A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2019 00:01:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 16:01:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; d="scan'208";a="201833092"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga007.fm.intel.com with ESMTP; 08 Nov 2019 16:01:30 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 8 Nov 2019 16:01:30 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 8 Nov 2019 16:01:30 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Fri, 8 Nov 2019 16:01:30 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 1/2] i40e: need_wakeup flag might
 not be set for Tx
Thread-Index: AQHVlm8DL7SgHsr26k+raanthf8ROqeB9LQA
Date: Sat, 9 Nov 2019 00:01:29 +0000
Message-ID: <b168cadcfda241fdad05b6919b075333@intel.com>
References: <1573243090-2721-1-git-send-email-magnus.karlsson@intel.com>
In-Reply-To: <1573243090-2721-1-git-send-email-magnus.karlsson@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDdjMjU2YWYtMTM2Yy00NjA4LTgzZDUtNDdlNTkxYjkzMDRjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiU2I5UE5mcmxcL0lNU3B5cXFkcWNqMDFsYkx1Nmt1VWt3VEZHcjFZQ0ZVWE8xSm1ybWU1bDJ0U3NVZWdoTHJOTysifQ==
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 1/2] i40e: need_wakeup flag might
 not be set for Tx
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Magnus Karlsson
> Sent: Friday, November 8, 2019 11:58 AM
> To: Karlsson, Magnus <magnus.karlsson@intel.com>; Topel, Bjorn
> <bjorn.topel@intel.com>; intel-wired-lan@lists.osuosl.org
> Cc: maciejromanfijalkowski@gmail.com; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net 1/2] i40e: need_wakeup flag might not
> be set for Tx
> 
> The need_wakeup flag for Tx might not be set for AF_XDP sockets that are
> only used to send packets. This happens if there is at least one outstanding
> packet that has not been completed by the hardware and we get that
> corresponding completion (which will not generate an interrupt since
> interrupts are disabled in the napi poll loop) between the time we stopped
> processing the Tx completions and interrupts are enabled again. In this case,
> the need_wakeup flag will have been cleared at the end of the Tx
> completion processing as we believe we will get an interrupt from the
> outstanding completion at a later point in time. But if this completion
> interrupt occurs before interrupts are enable, we lose it and should at that
> point really have set the need_wakeup flag since there are no more
> outstanding completions that can generate an interrupt to continue the
> processing. When this happens, user space will see a Tx queue
> need_wakeup of 0 and skip issuing a syscall, which means will never get into
> the Tx processing again and we have a deadlock.
> 
> This patch introduces a quick fix for this issue by just setting the
> need_wakeup flag for Tx to 1 all the time. I am working on a proper fix for
> this that will toggle the flag appropriately, but it is more challenging than I
> anticipated and I am afraid that this patch will not be completed before the
> merge window closes, therefore this easier fix for now. This fix has a
> negative performance impact in the range of 0% to 4%. Towards the higher
> end of the scale if you have driver and application on the same core and issue
> a lot of packets, and towards no negative impact if you use two cores, lower
> transmission speeds and/or a workload that also receives packets.
> 
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
