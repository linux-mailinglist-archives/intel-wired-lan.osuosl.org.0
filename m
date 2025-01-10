Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F2CA08FDE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2025 12:59:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63C2840865;
	Fri, 10 Jan 2025 11:59:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gNzBlbf8ChGf; Fri, 10 Jan 2025 11:59:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8353A40873
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736510374;
	bh=Ym96cUtVsZrmr8vhBFKTqmy5CSOVfwHXqXXJg02OPZ8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OeYfqWPBtxtGgOtW6qS9knzcPN1o64ZT07VL0gn+CpLtUsL8WRBamHDiF2XOMm1Ns
	 aqoAe8dL6bI4uvlvf86ym/tArxob5nuH2vs6ujdhGfN5iVCaMsaHZVrCbFTaFDxWZg
	 MveOHsvmLh7DXbXo0jfkX8t1UiYSJNFxEKp0ksv4L2ZXMDMgypmd0Wgxh1d84t7iAR
	 l1AFbGbZPFIG2Dv8fVpn2zflOfeJ9plJg5U424w0DyXgr077v0EkMOxNeeTnEBGTcC
	 vP/ryw52hr8xGUTcPBytpFc/Hl0xrG3hiNCcghtsHv+SLdhOH3L+oBXrCc5SjmrU4c
	 Yh/CxMlTzFVfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8353A40873;
	Fri, 10 Jan 2025 11:59:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 08605942
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 11:59:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E288E83506
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 11:59:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zxfFf3P_4ad5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jan 2025 11:59:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4385B8350A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4385B8350A
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4385B8350A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jan 2025 11:59:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id B52A2A41DB1;
 Fri, 10 Jan 2025 11:57:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B73F9C4CED6;
 Fri, 10 Jan 2025 11:59:26 +0000 (UTC)
Date: Fri, 10 Jan 2025 11:59:24 +0000
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jdamato@fastly.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com
Message-ID: <20250110115924.GC7706@kernel.org>
References: <20250109233107.17519-1-ahmed.zaki@intel.com>
 <20250109233107.17519-2-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109233107.17519-2-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736510369;
 bh=oIOGs5oxHSUKLXCpkdy+sMTpAoLL5Ee+yOgw2feXKVc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O6gQ2k1WwhAFLJusZlJ5Oq+2H4i3Tx07kJ2XknzV1uSztFv+1iATkKUXwtZ5GWY4m
 2EnvWxTh1E4HbxIv63SOnbgCquKcy548r6fTd+Dbc7ykwb4bmz2bb2pD7RmCfgumtQ
 jOK7FeKrx1E/vDKyoyfuXlOp+cKaYD8EuHWoR8a1xy6zJQgfBALFSKqzREHhOuyZi0
 Krw6n0soX70J2R8YlithM1QDM+CIPaqL+SQPY9Vgj1ML0PfzN/4rwckVL909z+pcHp
 aTnVzSl8quG8sJht5R6u5hMvwKtzdxBY7kE0ba/zJVJ9XPU9nKUrVW1QcqmfQJFTUV
 f3VKjrrZnDEvg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=O6gQ2k1W
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: move ARFS rmap
 management to core
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 09, 2025 at 04:31:02PM -0700, Ahmed Zaki wrote:
> Add a new netdev flag "rx_cpu_rmap_auto". Drivers supporting ARFS should
> set the flag via netif_enable_cpu_rmap() and core will allocate and manage
> the ARFS rmap. Freeing the rmap is also done by core when the netdev is
> freed.
> 
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

...

> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index 1812564b5204..acf20191e114 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -2398,6 +2398,9 @@ struct net_device {
>  	struct lock_class_key	*qdisc_tx_busylock;
>  	bool			proto_down;
>  	bool			threaded;
> +#ifdef CONFIG_RFS_ACCEL
> +	bool			rx_cpu_rmap_auto;
> +#endif

nit: rx_cpu_rmap_auto should also be added to the Kernel doc for
     struct net_device.

>  
>  	/* priv_flags_slow, ungrouped to save space */
>  	unsigned long		see_all_hwtstamp_requests:1;

...
