Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJgVLSKngGlNAAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 14:31:14 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCB9CCBE8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 14:31:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4FA34083E;
	Mon,  2 Feb 2026 13:31:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oN0fhyAfiAjG; Mon,  2 Feb 2026 13:31:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39FED40842
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770039070;
	bh=eBN4sgUDtqNg4GpSirkeIULyv0JMY2X6vXXcs8fqAFc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mlZnAMHjXBBFhm2ZAB102pB3ZEqWnaEi2zqe/aaHd9vOMTp7IisRM0PzTwY8BqNnL
	 xuYB0VPyF+nHdL+QMwtpbb6p9d/LnFdaC+kwURDWXLJ/JKYK9S+PpdS2BRnRP1AHpF
	 j/iIM5Gq944dwT1Jb9m9eOiFExKb5axLNps4tXpPFyRL+rXCQZgl1TI9O3sTBR/1QQ
	 vE9Y6p89Ddc2oRW3dMA0jq3bP6wj/SM2SrSLGKu0hBQJvSs0zES+XLqAZH+URgTWiU
	 4qpA7o+v/gmhmr2Tbfxkm3uLAFi6sPE7PR8kZOOa2mc8/+1QzwDqX7XjIFDF3jZi8T
	 lxkKF3DvGgHoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39FED40842;
	Mon,  2 Feb 2026 13:31:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 05CB1149
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 13:31:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F146B40817
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 13:31:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W7gZlp1ahhzg for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Feb 2026 13:31:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3805140815
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3805140815
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3805140815
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 13:31:05 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-189-BBHCiaKeNxGZckjG__3xLw-1; Mon,
 02 Feb 2026 08:31:00 -0500
X-MC-Unique: BBHCiaKeNxGZckjG__3xLw-1
X-Mimecast-MFC-AGG-ID: BBHCiaKeNxGZckjG__3xLw_1770039058
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 1E265195608A; Mon,  2 Feb 2026 13:30:58 +0000 (UTC)
Received: from [10.45.225.123] (unknown [10.45.225.123])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 5469518008FF; Mon,  2 Feb 2026 13:30:54 +0000 (UTC)
Message-ID: <1e28083b-691a-480b-bcf6-cd57222e08a1@redhat.com>
Date: Mon, 2 Feb 2026 14:30:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, netdev@vger.kernel.org
References: <20260202084820.260033-1-poros@redhat.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20260202084820.260033-1-poros@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1770039064;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eBN4sgUDtqNg4GpSirkeIULyv0JMY2X6vXXcs8fqAFc=;
 b=Oj9mq2RSwJb4K2h7kP6moYXQ16bsn6FbqLTyuVa+JGcCzqPIBPdV4trjkneVI80w1fPJoL
 8GT4rYRw89HT16Ah7JxwUkmFu4SG0vnnL7aORmcKMwYBYkw+eTJBongJThUbQi1eD4o94y
 Eq9eVTHscWeuFFdWkruQJFWIxJ/5rmA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Oj9mq2RS
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, Stanislav Fomichev <sdf@fomichev.me>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:sdf@fomichev.me,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_SENDER(0.00)[ivecera@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ivecera@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 8DCB9CCBE8
X-Rspamd-Action: no action

On 2/2/26 9:48 AM, Petr Oros wrote:
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

Reviewed-by: Ivan Vecera <ivecera@redhat.com>

