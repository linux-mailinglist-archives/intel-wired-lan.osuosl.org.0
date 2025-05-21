Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C221ABF7E9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 May 2025 16:34:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E125960B6A;
	Wed, 21 May 2025 14:34:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lt_iLLEO14BJ; Wed, 21 May 2025 14:34:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54ED56074F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747838050;
	bh=MMHwpfK/dx4bkPxI8KYOmFNyMUz6j0MRQFeBVjTxzvY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9GOWeTADtQYN+wFJcBi45Ag//F31rKTiLBByNV2hvUJabP60Tp0jqeVuABqSpxb9P
	 aVDZkY2PGSXJgTShVx8lMxZRcaC44+yptSrAvod3xwD2gRQFaIuehiz0UqMRQgiyAs
	 5Soou9iHAIwNm9Vi/wdW5hZbvhErBz2ORQ9tGkhYezlqp37c7jrR72z+OI+A/c8KgZ
	 dfxgpckHgpRdW171fJ8j8/8RD9ttEF/wc8F9EfgTMA43eMtIOsMhY/aXA19dJFNhcg
	 osU9uQaIJtsL/8/fVVCPITOwLE21uv8/jEKcBP+OJfYhpltRSpQieBwj6BWIvNciUT
	 QoWEcpCVk1X1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54ED56074F;
	Wed, 21 May 2025 14:34:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B8D761
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 14:34:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D9D5C60889
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 14:34:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OpcYIjIJVC6W for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 14:34:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1CBF06074F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CBF06074F
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1CBF06074F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 14:34:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id AC4F76111C;
 Wed, 21 May 2025 14:34:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 844E2C4CEE4;
 Wed, 21 May 2025 14:34:02 +0000 (UTC)
Date: Wed, 21 May 2025 07:34:01 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Stanislav Fomichev <stfomichev@gmail.com>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, skalluru@marvell.com, manishc@marvell.com,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 tariqt@nvidia.com, saeedm@nvidia.com, louis.peens@corigine.com,
 shshaikh@marvell.com, GR-Linux-NIC-Dev@marvell.com, ecree.xilinx@gmail.com,
 horms@kernel.org, dsahern@kernel.org, ruanjinjie@huawei.com,
 mheib@redhat.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 oss-drivers@corigine.com, linux-net-drivers@amd.com, leon@kernel.org
Message-ID: <20250521073401.67fbd1bc@kernel.org>
In-Reply-To: <20250520203614.2693870-3-stfomichev@gmail.com>
References: <20250520203614.2693870-1-stfomichev@gmail.com>
 <20250520203614.2693870-3-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747838043;
 bh=6P7mIPj7B7sJ/vEA58VPqJNIo45jgikPcikO/uSzLsk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ROoqVqcZH42CiPfobRxDgWMXSJf4HEuZ6B1czaH2zeQkFIBOACu3jK8u2NIUfuT6v
 cYl6uDa7GJEkHJsvzeCIYZcttLv4QoAEOf41rqvjb5Fi38bWgvQWJhiY0AT/e8LBp9
 Ac1NNbYgfSr6KOmglkrkgrTWucmupgDw+Cuh51tJnNGZgvSPRMUi2sTjnL0i4TGEhe
 xz78vjUlWFWZ09t83r11c+9EqGCDiQq4psW8ZeLppzE9UZohwQ42LIckZ9attzA8m+
 q+RLSpOQAhFx+hLxVAW3lVIvpDO79xY6PzqU2fXrwFGMN5nFPnW7Hz2Zl1D6e3X2pF
 yLD8HBwBPJVkQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ROoqVqcZ
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] udp_tunnel: remove
 rtnl_lock dependency
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

On Tue, 20 May 2025 13:36:13 -0700 Stanislav Fomichev wrote:
> Drivers that are using ops lock and don't depend on RTNL lock
> still need to manage it because udp_tunnel's RTNL dependency.
> Introduce new udp_tunnel_nic_lock and use it instead of
> rtnl_lock. Drop non-UDP_TUNNEL_NIC_INFO_MAY_SLEEP mode from
> udp_tunnel infra (udp_tunnel_nic_device_sync_work needs to
> grab udp_tunnel_nic_lock mutex and might sleep).

There is a netdevsim-based test for this that needs to be fixed up.

> diff --git a/include/net/udp_tunnel.h b/include/net/udp_tunnel.h
> index 2df3b8344eb5..7f5537fdf2c9 100644
> --- a/include/net/udp_tunnel.h
> +++ b/include/net/udp_tunnel.h
> @@ -221,19 +221,17 @@ static inline void udp_tunnel_encap_enable(struct sock *sk)
>  #define UDP_TUNNEL_NIC_MAX_TABLES	4
>  
>  enum udp_tunnel_nic_info_flags {
> -	/* Device callbacks may sleep */
> -	UDP_TUNNEL_NIC_INFO_MAY_SLEEP	= BIT(0),

Could we use a different lock for sleeping and non-sleeping drivers?

> @@ -554,11 +543,11 @@ static void __udp_tunnel_nic_reset_ntf(struct net_device *dev)
>  	struct udp_tunnel_nic *utn;
>  	unsigned int i, j;
>  
> -	ASSERT_RTNL();
> +	mutex_lock(&udp_tunnel_nic_lock);
>  
>  	utn = dev->udp_tunnel_nic;

utn and info's lifetimes are tied to the lifetime of the device
I think their existence can remain protected by the external locks

>  	if (!utn)
> -		return;
> +		goto unlock;
>  
>  	utn->need_sync = false;
>  	for (i = 0; i < utn->n_tables; i++)

> -	rtnl_lock();
> +	mutex_lock(&udp_tunnel_nic_lock);
>  	utn->work_pending = 0;
>  	__udp_tunnel_nic_device_sync(utn->dev, utn);
>  
> -	if (utn->need_replay)
> +	if (utn->need_replay) {
> +		rtnl_lock();
>  		udp_tunnel_nic_replay(utn->dev, utn);
> -	rtnl_unlock();
> +		rtnl_unlock();
> +	}
> +	mutex_unlock(&udp_tunnel_nic_lock);
>  }

What's the lock ordering between the new lock and rtnl lock?

BTW the lock could live in utn, right? We can't use the instance
lock because of sharing, but we could put the lock in utn?
