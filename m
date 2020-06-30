Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1954B20EA0D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2020 02:16:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B632F204C4;
	Tue, 30 Jun 2020 00:16:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q2WffrcZoEyW; Tue, 30 Jun 2020 00:16:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B8B0420498;
	Tue, 30 Jun 2020 00:16:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B98011BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2020 00:16:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A9F492046B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2020 00:16:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wxndel3gYxYW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jun 2020 00:16:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id D7BA5203FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2020 00:16:14 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EA4420780;
 Tue, 30 Jun 2020 00:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593476174;
 bh=YEvv5diFUttT1gpPIdbEXdjcPTFEm+AiupFO+TUtfH4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=XPXqq8DUdenZiS+DwJWNxHyP0PHSj5hz3BKC9AFazNswmFWU7b1djg3mXyCO/Jjy2
 cXWQivbSaTX2pfpK+vBr4skTWvNFQE8h++g5/b0OyHVCUWuBOrDSbWaVQabpOQ7shf
 z6d9vvOY40vIWl5AHdqhZq7XbdUDZ5SF3tXb7iiA=
Date: Mon, 29 Jun 2020 17:16:12 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: fruggeri@arista.com (Francesco Ruggeri)
Message-ID: <20200629171612.49efbdaa@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200629211801.C3D7095C0900@us180.sjc.aristanetworks.com>
References: <20200629211801.C3D7095C0900@us180.sjc.aristanetworks.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] igb: reinit_locked() should be called
 with rtnl_lock
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 29 Jun 2020 14:18:01 -0700 Francesco Ruggeri wrote:
> We observed a panic in igb_reset_task caused by this race condition
> when doing a reboot -f:
> 
> 	kworker			reboot -f
> 
> 	igb_reset_task
> 	igb_reinit_locked
> 	igb_down
> 	napi_synchronize
> 				__igb_shutdown
> 				igb_clear_interrupt_scheme
> 				igb_free_q_vectors
> 				igb_free_q_vector
> 				adapter->q_vector[v_idx] = NULL;
> 	napi_disable
> 	Panics trying to access
> 	adapter->q_vector[v_idx].napi_state
> 
> This commit applies to igb the same changes that were applied to ixgbe
> in commit 8f4c5c9fb87a ("ixgbe: reinit_locked() should be called with
> rtnl_lock") and commit 88adce4ea8f9 ("ixgbe: fix possible race in
> reset subtask").
> 
> Signed-off-by: Francesco Ruggeri <fruggeri@arista.com>

Thanks for the patch..

Would you mind adding a fixes tag here? Probably:

Fixes: 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet driver")

And as a matter of fact it looks like e1000e and e1000 have the same
bug :/ Would you mind checking all Intel driver producing matches for
all the affected ones?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
