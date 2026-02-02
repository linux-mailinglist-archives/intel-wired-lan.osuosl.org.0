Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGF4JCzOgGkfBwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 17:17:48 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E509CCED0C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 17:17:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E6EC4072F;
	Mon,  2 Feb 2026 16:17:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sv8VlLBL4MhE; Mon,  2 Feb 2026 16:17:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1800440748
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770049057;
	bh=IAB7g4oOle0bWWJEkgpFGulKR8NRIdAGZJceBUD5WTc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FdPxHWaiXKtG3krdoCPe5LKkxD8m6fGxv4gCOdLIu+vhAJfnEg4pxVvQ8BHtBospp
	 nwsYnDGNgsg7Hs5Bi4RR9jCBcaXK2Wf7bHCvRXmtaaWSUuDATH6xmT3Z/G33zrivzF
	 lS5WQZDyaynK9SccclDZ8pNM8iYJhPmHD18DIouIhDZNLKOjs5DpuqFYBCt1893/hd
	 ftgxAcaH6PT/gTFB/Sj5+c6Q+xDukkWgBTTRkNsY+F+IN4ZJ+Wfcuz8CofUi0ZXvBO
	 Ha9d8hGRrii8URzWzI4Pg0sXnWhAsTELixfSu7XnH6KnoDoP1czc9DYAmHhxirFpNq
	 Uhq+M3UeMKD4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1800440748;
	Mon,  2 Feb 2026 16:17:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D52A23E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 11:14:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4AEE1402E9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 11:14:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id brPQ-SW9aVoZ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Feb 2026 11:14:02 +0000 (UTC)
X-Greylist: delayed 1196 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 02 Feb 2026 11:13:59 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7C8F1402DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C8F1402DF
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.187;
 helo=szxga01-in.huawei.com; envelope-from=shaojijie@huawei.com;
 receiver=<UNKNOWN> 
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C8F1402DF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 11:13:58 +0000 (UTC)
Received: from canpmsgout07.his.huawei.com (unknown [172.19.92.160])
 by szxga01-in.huawei.com (SkyGuard) with ESMTPS id 4f4Nkj5SLtz1BFpy
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 18:53:17 +0800 (CST)
Received: from mail.maildlp.com (unknown [172.19.163.163])
 by canpmsgout07.his.huawei.com (SkyGuard) with ESMTPS id 4f4Nf33M03zLlTg;
 Mon,  2 Feb 2026 18:49:15 +0800 (CST)
Received: from kwepemk100013.china.huawei.com (unknown [7.202.194.61])
 by mail.maildlp.com (Postfix) with ESMTPS id 4755F4048B;
 Mon,  2 Feb 2026 18:53:48 +0800 (CST)
Received: from [10.67.120.192] (10.67.120.192) by
 kwepemk100013.china.huawei.com (7.202.194.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.36; Mon, 2 Feb 2026 18:53:47 +0800
Message-ID: <df89d793-ee1a-4519-bc36-3a1580a33b12@huawei.com>
Date: Mon, 2 Feb 2026 18:53:46 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, <netdev@vger.kernel.org>
References: <20260202084820.260033-1-poros@redhat.com>
From: Jijie Shao <shaojijie@huawei.com>
In-Reply-To: <20260202084820.260033-1-poros@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.120.192]
X-ClientProxiedBy: kwepems100002.china.huawei.com (7.221.188.206) To
 kwepemk100013.china.huawei.com (7.202.194.61)
X-Mailman-Approved-At: Mon, 02 Feb 2026 16:17:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; d=huawei.com; s=dkim;
 c=relaxed/relaxed; q=dns/txt; h=From;
 bh=IAB7g4oOle0bWWJEkgpFGulKR8NRIdAGZJceBUD5WTc=;
 b=kfX+EitIJx+3rT9MiKn70t2HWlc1bskbaNbNMHwrgMRMdUia76qxh81DRZIqQ9wEjeJNP2KG6
 0KfitBm7bVxhOACqRXqKy3oAIpiJj5vD3yoy1dPbESJRZmwrCLPZhfNbeNstAbFiYrSZjysmCeS
 J+RfqzGdoxE0Rroi83vvx5I=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; d=huawei.com; s=dkim;
 c=relaxed/relaxed; q=dns/txt; h=From;
 bh=IAB7g4oOle0bWWJEkgpFGulKR8NRIdAGZJceBUD5WTc=;
 b=kfX+EitIJx+3rT9MiKn70t2HWlc1bskbaNbNMHwrgMRMdUia76qxh81DRZIqQ9wEjeJNP2KG6
 0KfitBm7bVxhOACqRXqKy3oAIpiJj5vD3yoy1dPbESJRZmwrCLPZhfNbeNstAbFiYrSZjysmCeS
 J+RfqzGdoxE0Rroi83vvx5I=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key, unprotected) header.d=huawei.com header.i=@huawei.com
 header.a=rsa-sha256 header.s=dkim header.b=kfX+EitI; 
 dkim=pass (1024-bit key) header.d=huawei.com header.i=@huawei.com
 header.a=rsa-sha256 header.s=dkim header.b=kfX+EitI
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix deadlock in reset
 handling
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
Cc: ivecera@redhat.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, shaojijie@huawei.com,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[huawei.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:linux-kernel@vger.kernel.org,m:shaojijie@huawei.com,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:sdf@fomichev.me,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_SENDER(0.00)[shaojijie@huawei.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shaojijie@huawei.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.585];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	HAS_XOIP(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Queue-Id: E509CCED0C
X-Rspamd-Action: no action


on 2026/2/2 16:48, Petr Oros wrote:
> Three driver callbacks schedule a reset and wait for its completion:
> ndo_change_mtu(), ethtool set_ringparam(), and ethtool set_channels().
>
> Waiting for reset in ndo_change_mtu() and set_ringparam() was added by
> commit c2ed2403f12c74 ("iavf: Wait for reset in callbacks which trigger
> it") to fix a race condition where adding an interface to bonding
> immediately after MTU or ring parameter change failed because the
> interface was still in __RESETTING state. The same commit also added
> waiting in iavf_set_priv_flags(), which was later removed by commit
> 53844673d55529 ("iavf: kill "legacy-rx" for good").
>
> Waiting in set_channels() was introduced earlier by commit 4e5e6b5d9d13
> ("iavf: Fix return of set the new channel count") to ensure the PF has
> enough time to complete the VF reset when changing channel count, and to
> return correct error codes to userspace.
>
> Commit ef490bbb226702 ("iavf: Add net_shaper_ops support") added
> net_shaper_ops to iavf, which required reset_task to use _locked NAPI
> variants (napi_enable_locked, napi_disable_locked) that need the netdev
> instance lock.
>
> Later, commit 7e4d784f5810 ("net: hold netdev instance lock during
> rtnetlink operations") and commit 2bcf4772e45adb ("net: ethtool: try to
> protect all callback with netdev instance lock") started holding the
> netdev instance lock during ndo and ethtool callbacks for drivers with
> net_shaper_ops.
>
> The combination of waiting for reset and the new locking requirements
> creates a deadlock: the callback holds the lock and waits for reset_task,
> but reset_task is blocked waiting for the same lock:
>
>    Thread 1 (callback)               Thread 2 (reset_task)
>    -------------------               ---------------------
>    netdev_lock()
>    ndo_change_mtu() or ethtool op
>      iavf_schedule_reset()
>      iavf_wait_for_reset()           iavf_reset_task()
>        waiting...                      netdev_lock() <- DEADLOCK
>
> Reproducer:
>
>    # echo 16 > /sys/class/net/$PF/device/sriov_numvfs
>    # ip link set $VF up
>    # ip link set $VF mtu 5000
>    RTNETLINK answers: Device or resource busy
>
>    # dmesg | tail -1
>    iavf: MTU change interrupted waiting for reset
>
> Fix this by temporarily releasing the lock while waiting for reset to
> complete. This follows the pattern used elsewhere in the kernel (e.g.,
> do_set_master() releases rtnl_lock before calling ndo_add_slave()).
>
> Fixes: 7e4d784f5810 ("net: hold netdev instance lock during rtnetlink operations")
> Signed-off-by: Petr Oros <poros@redhat.com>


Reviewed-by: Jijie Shao <shaojijie@huawei.com>

> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 15 ++++++++++++---
>   1 file changed, 12 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 8aa6e92c16431f..d7738fb8fa60bc 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -189,13 +189,22 @@ static bool iavf_is_reset_in_progress(struct iavf_adapter *adapter)
>    * iavf_wait_for_reset - Wait for reset to finish.
>    * @adapter: board private structure
>    *
> + * The iavf driver selects NET_SHAPER, so callbacks that trigger reset are
> + * always called with netdev instance lock held, while reset_task also needs
> + * this lock. Release the lock while waiting to avoid deadlock.
> + *
>    * Returns 0 if reset finished successfully, negative on timeout or interrupt.
>    */
>   int iavf_wait_for_reset(struct iavf_adapter *adapter)
>   {
> -	int ret = wait_event_interruptible_timeout(adapter->reset_waitqueue,
> -					!iavf_is_reset_in_progress(adapter),
> -					msecs_to_jiffies(5000));
> +	struct net_device *netdev = adapter->netdev;
> +	int ret;
> +
> +	netdev_unlock(netdev);
> +	ret = wait_event_interruptible_timeout(adapter->reset_waitqueue,
> +					       !iavf_is_reset_in_progress(adapter),
> +					       msecs_to_jiffies(5000));
> +	netdev_lock(netdev);
>   
>   	/* If ret < 0 then it means wait was interrupted.
>   	 * If ret == 0 then it means we got a timeout while waiting
