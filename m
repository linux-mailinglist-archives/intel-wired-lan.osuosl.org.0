Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A0760E5AD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Oct 2022 18:46:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49C2681259;
	Wed, 26 Oct 2022 16:46:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49C2681259
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666802766;
	bh=TYGtPMwmXM2yKMIpQqZppO86zKmc2m2/ggw2dRDldU8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bFK+qXtltSUJ7LiJ1WIW0CCfx4cvcQI+dffw2pqOD1yutJa7nen77f8gSnYD3hnD4
	 ghD9MIaiMzQttbyYGoPMsLReSx/7TuaZoRB5UxPEcXlwYeMrves3BIy6cwO0Ckqtfx
	 eLMOO5zn3Y4IbQUgvzEcbKDY2BNh6FhYj8+szF5xsYOgafZMsWimYw02Z4i/UfnP7y
	 9qyijkcjxruSlTvKaBiGblBO4JUkR1HwNCCfRYRL7f6VszVfhMc0pkSK3WfOSCXqWr
	 T50RY4ZXi72LnMaZnENYye4yTmlLSybrUSgjStoPkaps6VS28urbMarMx973EX0egw
	 T97P11tTjDWdw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KqZ6uk5D-WKN; Wed, 26 Oct 2022 16:46:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 353CA80C13;
	Wed, 26 Oct 2022 16:46:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 353CA80C13
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 40D491BF397
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Oct 2022 16:46:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 272DA401C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Oct 2022 16:46:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 272DA401C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N6vxsOUwvssO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Oct 2022 16:45:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D3CF401BE
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D3CF401BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Oct 2022 16:45:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="309692414"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="309692414"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 09:45:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="721332069"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="721332069"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Oct 2022 09:45:57 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 29QGjuSb032215; Wed, 26 Oct 2022 17:45:56 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Andrii Staikov <andrii.staikov@intel.com>
Date: Wed, 26 Oct 2022 18:44:45 +0200
Message-Id: <20221026164445.56155-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221025072705.1270255-1-andrii.staikov@intel.com>
References: <20221025072705.1270255-1-andrii.staikov@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666802759; x=1698338759;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T1DbA+cCN11hdniFhx5QavX9cscZboBqTIOifJh+Py8=;
 b=nHRoo5bteaQP9dWmsQMRpwY0HoWqCmmYfi3zgIqw5m1CP00krwxv4Arl
 UxR7wVnfquwqgzzu9Wi/G0Qsd85AXitq5ASHmaecV/INDOu+W2ctod9Ee
 Adedm90Tk4CNsiy/IC5gKZnfmhovTf8v/CGWSPjmpk0LkoQ344DFyua2b
 4EanbZDyG1wZrW+q96oRqY9x8agNHYabDnqgnoOzGQMnP/PtshmFHLYpa
 CWRUTxURwp0WKA+9OdyUVlIqnVzsg2nr+6Xcb3nyWyu57KN2Xb20efEgn
 4ddfapvcoYj+KePApJ6NmV0jZfo+MRtllbdUsxuzY5oy27FipICp/GUfk
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nHRoo5bt
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix crash when rebuild
 failed in i40e_xdp_setup
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andrii Staikov <andrii.staikov@intel.com>
Date: Tue, 25 Oct 2022 09:27:05 +0200

> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> When attaching XDP program on i40e driver there was a
> reset and rebuild of the interface to reconfigure the
> queues for XDP operation. If one of the steps of rebuild
> failed then the interface was left in incorrect state
> that could lead to a crash. If rebuild failed while
> getting capabilities from HW such crash occurs:
> 
> capability discovery failed, err I40E_ERR_ADMIN_QUEUE_TIMEOUT aq_err OK
> BUG: unable to handle kernel NULL pointer dereference at 0000000000000000
> Call Trace:
> ? i40e_reconfig_rss_queues+0x120/0x120 [i40e]
>   dev_xdp_install+0x70/0x100
>   dev_xdp_attach+0x1d7/0x530
>   dev_change_xdp_fd+0x1f4/0x230
>   do_setlink+0x45f/0xf30
>   ? irq_work_interrupt+0xa/0x20
>   ? __nla_validate_parse+0x12d/0x1a0
>   rtnl_setlink+0xb5/0x120
>   rtnetlink_rcv_msg+0x2b1/0x360
>   ? sock_has_perm+0x80/0xa0
>   ? rtnl_calcit.isra.42+0x120/0x120
>   netlink_rcv_skb+0x4c/0x120
>   netlink_unicast+0x196/0x230
>   netlink_sendmsg+0x204/0x3d0
>   sock_sendmsg+0x4c/0x50
>   __sys_sendto+0xee/0x160
>   ? handle_mm_fault+0xc1/0x1e0
>   ? syscall_trace_enter+0x1fb/0x2c0
>   ? __sys_setsockopt+0xd6/0x1d0
>   __x64_sys_sendto+0x24/0x30
>   do_syscall_64+0x5b/0x1a0
>   entry_SYSCALL_64_after_hwframe+0x65/0xca
>   RIP: 0033:0x7f3535d99781
> 
> Fix this by removing reset and rebuild from i40e_xdp_setup
> and replace it by interface down, reconfigure queues and
> interface up. This way if any step fails the interface
> will remain in a correct state.
> 
> Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")
> Title: i40e: Fix crash when rebuild failed in i40e_xdp_setup
> Change-type: DefectResolution
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 155 ++++++++++++++------
>  1 file changed, 112 insertions(+), 43 deletions(-)

[...]

-	old_prog = xchg(&vsi->xdp_prog, prog);
+	if (if_running && !test_and_set_bit(__I40E_VSI_DOWN, vsi->state))
+		i40e_down(vsi);

Please don't. Unconditional down-up was removed from i40e, we've
made XDP hotswap in ice in our recent patch queue and now you're
trying to effectively revert all that ._.
You don't need any interface actions when there is a prog and you
want to install a new one as well, just RCU the pointers and that's
it.

[...]

> -- 
> 2.25.1

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
