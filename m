Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF8349D078
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jan 2022 18:13:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86A578175F;
	Wed, 26 Jan 2022 17:13:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YSreDuZHe5th; Wed, 26 Jan 2022 17:13:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D78581417;
	Wed, 26 Jan 2022 17:13:43 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD67E1BF417
 for <intel-wired-lan@osuosl.org>; Wed, 26 Jan 2022 17:13:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 98B4A402EB
 for <intel-wired-lan@osuosl.org>; Wed, 26 Jan 2022 17:13:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8fJQu_7sli2e for <intel-wired-lan@osuosl.org>;
 Wed, 26 Jan 2022 17:13:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 48CEE400C8
 for <intel-wired-lan@osuosl.org>; Wed, 26 Jan 2022 17:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643217217; x=1674753217;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Gm+FfgFWZBrq3WACKyWlOt0mFvL4irV6PGVJCntaNGI=;
 b=jk9j3P6bJKO3PXHHFl3mZfWNJyLFjb2sKDSzV7XKEX4Z9wgttQyZUdS8
 UIEBgk6khxNJKcz+q8xObAVOICQrWgfj0lugCH7wIGQnMmaMVB6PjH4qq
 lTvam0U9yxIiAtsOrMBY5CQAYFpEfTFr8Wb2n/dJcVmVl1JID2bw+HTDL
 P3GACrmAgJpPwSdofxKo6hwdE1XnyTlgzsOD921+wAmT0aTvKijloJEOv
 nA5pA27Z7VoI5gere+CdinIibAiTjoP/YbdjZwruK/r12hFrunVWO7Ch7
 K2A1+usMiYh0ZJ9Y2AlbnaLqJk16d6xcRaqF9HF9gz2bz2eSBGiD9XHQN w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="227270794"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="227270794"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 09:13:17 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="495417755"
Received: from dglazex-mobl3.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.16.112])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 09:13:16 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Corinna Vinschen <vinschen@redhat.com>, intel-wired-lan@osuosl.org,
 netdev@vger.kernel.org
In-Reply-To: <20220119145259.1790015-2-vinschen@redhat.com>
References: <20220119145259.1790015-1-vinschen@redhat.com>
 <20220119145259.1790015-2-vinschen@redhat.com>
Date: Wed, 26 Jan 2022 09:13:16 -0800
Message-ID: <87zgnimndf.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 1/2 net-next v6] igc: avoid kernel
 warning when changing RX ring parameters
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Corinna Vinschen <vinschen@redhat.com> writes:

> Calling ethtool changing the RX ring parameters like this:
>
>   $ ethtool -G eth0 rx 1024
>
> on igc triggers kernel warnings like this:
>
> [  225.198467] ------------[ cut here ]------------
> [  225.198473] Missing unregister, handled but fix driver
> [  225.198485] WARNING: CPU: 7 PID: 959 at net/core/xdp.c:168
> xdp_rxq_info_reg+0x79/0xd0
> [...]
> [  225.198601] Call Trace:
> [  225.198604]  <TASK>
> [  225.198609]  igc_setup_rx_resources+0x3f/0xe0 [igc]
> [  225.198617]  igc_ethtool_set_ringparam+0x30e/0x450 [igc]
> [  225.198626]  ethnl_set_rings+0x18a/0x250
> [  225.198631]  genl_family_rcv_msg_doit+0xca/0x110
> [  225.198637]  genl_rcv_msg+0xce/0x1c0
> [  225.198640]  ? rings_prepare_data+0x60/0x60
> [  225.198644]  ? genl_get_cmd+0xd0/0xd0
> [  225.198647]  netlink_rcv_skb+0x4e/0xf0
> [  225.198652]  genl_rcv+0x24/0x40
> [  225.198655]  netlink_unicast+0x20e/0x330
> [  225.198659]  netlink_sendmsg+0x23f/0x480
> [  225.198663]  sock_sendmsg+0x5b/0x60
> [  225.198667]  __sys_sendto+0xf0/0x160
> [  225.198671]  ? handle_mm_fault+0xb2/0x280
> [  225.198676]  ? do_user_addr_fault+0x1eb/0x690
> [  225.198680]  __x64_sys_sendto+0x20/0x30
> [  225.198683]  do_syscall_64+0x38/0x90
> [  225.198687]  entry_SYSCALL_64_after_hwframe+0x44/0xae
> [  225.198693] RIP: 0033:0x7f7ae38ac3aa
>
> igc_ethtool_set_ringparam() copies the igc_ring structure but neglects to
> reset the xdp_rxq_info member before calling igc_setup_rx_resources().
> This in turn calls xdp_rxq_info_reg() with an already registered xdp_rxq_info.
>
> Make sure to unregister the xdp_rxq_info structure first in
> igc_setup_rx_resources.
>
> Fixes: 73f1071c1d29 ("igc: Add support for XDP_TX action")
> Reported-by: Lennert Buytenhek <buytenh@arista.com>
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> ---

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
