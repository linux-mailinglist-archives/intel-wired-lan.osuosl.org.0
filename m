Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 318AC35FFD2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Apr 2021 04:07:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B7AF184036;
	Thu, 15 Apr 2021 02:07:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NoPtF9huKpca; Thu, 15 Apr 2021 02:06:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05227840FE;
	Thu, 15 Apr 2021 02:06:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B30C01BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 02:06:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9C19E401EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 02:06:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1PAKxNZjLGxj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Apr 2021 02:06:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DA20C4000B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 02:06:53 +0000 (UTC)
IronPort-SDR: GDzA8vMHCM+cDs1CD90Otk/RPP2eq6ij+6llQBuY+EK202lx85x+gyRUHb4H51h+py28mRg3/0
 2C13+QRT8oxA==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="174879427"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="174879427"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 19:06:53 -0700
IronPort-SDR: XfNeBLI887Qp5AIn4Mtpvqr7TMGB4r1tIYsEOb/+S1DvwzmWZLsPyymzajdWHKDKLzvsRaQDpc
 FaMdnn/wDzVw==
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="383874988"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.19.126])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 19:06:52 -0700
Date: Wed, 14 Apr 2021 19:06:52 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: kerneljasonxing@gmail.com, davem@davemloft.net, kuba@kernel.org
Message-ID: <20210414190652.00006680@intel.com>
In-Reply-To: <20210414023428.10121-1-kerneljasonxing@gmail.com>
References: <20210413025011.1251-1-kerneljasonxing@gmail.com>
 <20210414023428.10121-1-kerneljasonxing@gmail.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: fix the panic when
 running bpf in xdpdrv mode
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
Cc: songliubraving@fb.com, Shujin Li <lishujin@kuaishou.com>, hawk@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, andrii@kernel.org,
 ast@kernel.org, kpsingh@kernel.org, yhs@fb.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kafai@fb.com, linux-kernel@vger.kernel.org,
 Jason Xing <xingwanli@kuaishou.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

kerneljasonxing@gmail.com wrote:

> From: Jason Xing <xingwanli@kuaishou.com>
> 
> Fix this panic by adding more rules to calculate the value of @rss_size_max
> which could be used in allocating the queues when bpf is loaded, which,
> however, could cause the failure and then trigger the NULL pointer of
> vsi->rx_rings. Prio to this fix, the machine doesn't care about how many
> cpus are online and then allocates 256 queues on the machine with 32 cpus
> online actually.
> 
> Once the load of bpf begins, the log will go like this "failed to get
> tracking for 256 queues for VSI 0 err -12" and this "setup of MAIN VSI
> failed".
> 
> Thus, I attach the key information of the crash-log here.
> 
> BUG: unable to handle kernel NULL pointer dereference at
> 0000000000000000
> RIP: 0010:i40e_xdp+0xdd/0x1b0 [i40e]
> Call Trace:
> [2160294.717292]  ? i40e_reconfig_rss_queues+0x170/0x170 [i40e]
> [2160294.717666]  dev_xdp_install+0x4f/0x70
> [2160294.718036]  dev_change_xdp_fd+0x11f/0x230
> [2160294.718380]  ? dev_disable_lro+0xe0/0xe0
> [2160294.718705]  do_setlink+0xac7/0xe70
> [2160294.719035]  ? __nla_parse+0xed/0x120
> [2160294.719365]  rtnl_newlink+0x73b/0x860
> 
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Co-developed-by: Shujin Li <lishujin@kuaishou.com>
> Signed-off-by: Shujin Li <lishujin@kuaishou.com>
> Signed-off-by: Jason Xing <xingwanli@kuaishou.com>

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

@Jakub/@DaveM - feel free to apply this directly.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
