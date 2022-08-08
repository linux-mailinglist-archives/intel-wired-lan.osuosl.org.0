Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B02858CE11
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Aug 2022 20:55:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A23AF813E4;
	Mon,  8 Aug 2022 18:55:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A23AF813E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659984921;
	bh=bgkoKfZZi6gtCQHw8oABFnVElT1iAN1E9fCAW0c9tWA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d3xjX9uRSYArFmGzwm14B3mBrDJKSW6dvJ2DZRPDNAnmDKodNMPyolEtDfche3nDZ
	 pQmxIdGlYipW8g7rPrA0K5lnpbLnE1zBZwCjlfIv5MOgPGvyFIuPD5K6Cw8zl1+msR
	 jGfYydOL2lEaQ77igzU9T1nbV3WHWZNwVecL8FPmy9oVnxwgwdCd9qq1HeR8kbFJqR
	 xvCu7bXDZu6RvnZcB2RD9FWgDYgVIHGWREbk/Yu+NGytsZ5xvWznjj8LLYkXDzml9i
	 ToFfrW6w2n2jHJFWmbzIK327c/B10ACxnbZ6ov8THeSN79aB58uWD2+s6dpiujxTcb
	 Uq97Df+zMIaww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L9z5n2wwpGxJ; Mon,  8 Aug 2022 18:55:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A344813D5;
	Mon,  8 Aug 2022 18:55:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A344813D5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3942D1BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 18:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1ECFC408BA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 18:55:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1ECFC408BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sJnwE_Dsm62L for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Aug 2022 18:55:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B221840897
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B221840897
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 18:55:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 95D5261265;
 Mon,  8 Aug 2022 18:55:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F522C433C1;
 Mon,  8 Aug 2022 18:55:12 +0000 (UTC)
Date: Mon, 8 Aug 2022 11:55:11 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Lin Ma <linma@zju.edu.cn>
Message-ID: <20220808115511.5b574db2@kernel.org>
In-Reply-To: <20220808081050.25229-1-linma@zju.edu.cn>
References: <20220808081050.25229-1-linma@zju.edu.cn>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1659984913;
 bh=yff99Hl54xIWNYpq9yhdMz/cTBVGMhnzM72x5OvdS2I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lr2xrUztTk+UvlbkoQ8xdaOGPFwA6cmGaHiN802TxIQMgz4mp2+NoAxcYtIuoMPxm
 hZl4hn/lJbeUllnA30x+R8VUtG2ZQWNnC42uMY5HVBg378RuBJCs62pl86bwFAlxxJ
 p3+/ow+1G4fVi6aDGqW8Ls9gEP/nb3AR3AEEhjKb+Qasha5QvWXiZ3lIrMDLXhXaJH
 yiIhBymtEh3dH6djipRGVTNSiP38tidhKPqRewg/1CT4v3H4Dm1Rf+t657vMSMkQkv
 D8NwyWgU9ZWsnVTUWcnEmhXDi3cbaDp+13VDjgXbPAkQn6DymqvWDK6XHY6TZxxuZP
 YDmqQlgsWN82g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=lr2xrUzt
Subject: Re: [Intel-wired-lan] [PATCH v0] idb: Add rtnl_lock to avoid data
 race
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
Cc: hawk@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 john.fastabend@gmail.com, jesse.brandeburg@intel.com, ast@kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon,  8 Aug 2022 16:10:50 +0800 Lin Ma wrote:
> The commit c23d92b80e0b ("igb: Teardown SR-IOV before
> unregister_netdev()") places the unregister_netdev() call after the
> igb_disable_sriov() call to avoid functionality issue.
> 
> However, it introduces several race conditions when detaching a device.
> For example, when .remove() is called, the below interleaving leads to
> use-after-free.
> 
>  (FREE from device detaching)      |   (USE from netdev core)
> igb_remove                         |  igb_ndo_get_vf_config
>  igb_disable_sriov                 |  vf >= adapter->vfs_allocated_count?
>   kfree(adapter->vf_data)          |
>   adapter->vfs_allocated_count = 0 |
>                                    |    memcpy(... adapter->vf_data[vf]
> 
> In short, there are data races between read and write of
> adapter->vfs_allocated_count. To fix this, we can add a new lock to
> protect members in adapter object. However, we cau use the existing
> rtnl_lock just as other drivers do. (See how dpaa2_eth_disconnect_mac is
> protected in dpaa2_eth_remove function). This patch adopts similar
> fixes.
> 
> Fixes: c23d92b80e0b ("igb: Teardown SR-IOV before unregister_netdev()")
> Signed-off-by: Lin Ma <linma@zju.edu.cn>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index d8b836a85cc3..e86ea4de05f8 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -3814,7 +3814,9 @@ static void igb_remove(struct pci_dev *pdev)
>  	igb_release_hw_control(adapter);
>  
>  #ifdef CONFIG_PCI_IOV
> +	rtnl_lock();
>  	igb_disable_sriov(pdev);
> +	rtnl_unlock();
>  #endif
>  
>  	unregister_netdev(netdev);

What about the disable path coming from sysfs? This looks incomplete to
me. Perhaps take a look at commit 1e53834ce541 ("ixgbe: Add locking to
prevent panic when setting sriov_numvfs to zero") for some inspiration.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
