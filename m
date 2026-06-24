Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KyqiMo8IPGrOiwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2026 18:40:47 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 071E66C0082
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2026 18:40:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="dSKZHv/v";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D3BC40B2C;
	Wed, 24 Jun 2026 16:40:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mtGNiGzw5OYo; Wed, 24 Jun 2026 16:40:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF0E440AB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782319244;
	bh=Vn4fFZoy5PlSeydUMxpIJV+IuqKhUGEhHOXrG3ACH98=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dSKZHv/vZjs8XgfDK5dYy7js3DnL0+Wsh+F/TiKZRH3n0EPwrCqxl7rilbcX4vSY9
	 IxQEhs6e90J+7rmcj8wudNDwb7XkRVb+ZNWLWxoZmzTPBX7tbx49IfaxnnvchdGy/G
	 2oCdMjjstJJZcQhRT/plSDTZi1KgxubsIcQdxZHAvwMPSpNAstJS5I/ch4LwQOuY9k
	 mcOsFhTYx0BVoAYvdsWdh8Z8ddI6AdnKIwAMlb2Y5e5LRVbhv0nt8gRjU3WXcrfIpL
	 snE6cEIAsJxHdL3hhTAIwNOJf85Wo1MrRlKsgMuOzfahgygdTRnNWYJPmWeQNUM6Gq
	 TwHgRuQdBCfjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF0E440AB5;
	Wed, 24 Jun 2026 16:40:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E07C367
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 16:40:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 249B2812F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 16:40:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kmGKqF4P187D for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2026 16:40:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2436581204
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2436581204
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2436581204
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 16:40:41 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 9A0E560018;
 Wed, 24 Jun 2026 16:40:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1401D1F00A3A;
 Wed, 24 Jun 2026 16:40:37 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: jtornosm@redhat.com
Cc: Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 aleksandr.loktionov@intel.com, jacob.e.keller@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Date: Wed, 24 Jun 2026 17:31:49 +0100
Message-ID: <20260624163148.1146093-2-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260623101800.991293-4-jtornosm@redhat.com>
References: <20260623101800.991293-4-jtornosm@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1782319240;
 bh=Vn4fFZoy5PlSeydUMxpIJV+IuqKhUGEhHOXrG3ACH98=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=YKXSriNJ2iEGZzOocLfUXXQEv0axYK9sWp7ILG6hS3ZRG9dkoH/OqQLvQ/2oWSQfg
 NyNiIGXaczJ2H/5073TQJ7IaHIvYUTgSpfAxJFOXN656nAqWpLw/hJHKZtyW8hQUW1
 EhCJ3s+bbTpATKV+Yy20Etj0zAm89cYf1T0jtFYWitIHCN7jmWW28E1aEokea2+dzH
 iDYaBnp+phUcbiF/pzivdX6oN7Adi/OFt6gN+TphZKQOuThfOudQQrbWKKsap8QKdT
 bs1U4u7HsnpPCXWXsEeIAR3iJsp5KHt3aV8yxY/gZAj7Ok+MmBa93iMndgR4FHhriH
 85uoMQq+pGAiw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20260515 header.b=YKXSriNJ
Subject: Re: [Intel-wired-lan] [PATCH net v7 3/4] iavf: send MAC change
 request synchronously
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 071E66C0082

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
iavf: send MAC change request synchronously

This commit fixes a deadlock in iavf_set_mac() by making the MAC
address change synchronous. It introduces iavf_poll_virtchnl_response()
to directly poll the admin queue instead of waiting on the watchdog task.

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 630388e9d28cb..3fa288e3798ae 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
[ ... ]
> @@ -1049,25 +1103,23 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
>  		return -EADDRNOTAVAIL;
>  
>  	ret = iavf_replace_primary_mac(adapter, addr->sa_data);
> -
>  	if (ret)
>  		return ret;
>  
> -	ret = wait_event_interruptible_timeout(adapter->vc_waitqueue,
> -					       iavf_is_mac_set_handled(netdev, addr->sa_data),
> -					       msecs_to_jiffies(2500));
> -
> -	/* If ret < 0 then it means wait was interrupted.
> -	 * If ret == 0 then it means we got a timeout.
> -	 * else it means we got response for set MAC from PF,
> -	 * check if netdev MAC was updated to requested MAC,
> -	 * if yes then set MAC succeeded otherwise it failed return -EACCES
> -	 */
> -	if (ret < 0)
> +	ret = iavf_set_mac_sync(adapter, addr->sa_data);
> +	if (ret) {
> +		/* Rollback only if send failed (message never reached PF).
> +		 * Don't rollback on timeout (-EAGAIN) because the message was
> +		 * sent and PF will eventually respond. When the response arrives,
> +		 * iavf_virtchnl_completion() will handle rollback (on PF error)
> +		 * or acceptance (on PF success) automatically.
> +		 */
> +		if (ret != -EAGAIN) {
> +			iavf_mac_add_reject(adapter);
> +			ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
> +		}
>  		return ret;
> -
> -	if (!ret)
> -		return -EAGAIN;
>  
>  	if (!ether_addr_equal(netdev->dev_addr, addr->sa_data))
>  		return -EACCES;

[Severity: High]
Will this cause a persistent state mismatch if a timeout is followed by a
retry?

If iavf_set_mac_sync() times out, it returns -EAGAIN and bypasses this
rollback, leaving adapter->hw.mac.addr updated but netdev->dev_addr at the
old MAC.

If the user then retries before the PF asynchronously completes the original
request, iavf_add_ether_addrs() returns -EBUSY. Since -EBUSY != -EAGAIN,
the rollback runs, forcibly reverting adapter->hw.mac.addr to the old MAC.

When the PF's delayed success response finally arrives,
iavf_virtchnl_completion() sees the old MAC in both hw.mac.addr and
netdev->dev_addr, bypassing the netdev MAC update. The PF hardware is now
programmed with the new MAC, but the kernel retains the old MAC, dropping
traffic.

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index ec234cc8bd9db..e6b7e8f82c7c1 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
[ ... ]
> @@ -555,20 +556,23 @@ iavf_set_mac_addr_type(struct virtchnl_ether_addr *virtchnl_ether_addr,
>   * @adapter: adapter structure
>   *
>   * Request that the PF add one or more addresses to our filters.
> - **/
> -void iavf_add_ether_addrs(struct iavf_adapter *adapter)
> + *
> + * Return: 0 on success, negative on failure
> + */
> +int iavf_add_ether_addrs(struct iavf_adapter *adapter)
>  {
>  	struct virtchnl_ether_addr_list *veal;
>  	struct iavf_mac_filter *f;
>  	int i = 0, count = 0;
>  	bool more = false;
>  	size_t len;
> +	int ret;
>  
>  	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
>  		/* bail because we already have a command pending */
>  		dev_err(&adapter->pdev->dev, "Cannot add filters, command %d pending\n",
>  			adapter->current_op);
> -		return;
> +		return -EBUSY;
>  	}

[Severity: High]
Could routine background tasks cause MAC changes to frequently fail?

The watchdog task routinely sets adapter->current_op for background commands
like VIRTCHNL_OP_GET_STATS. If iavf_set_mac() is called during this window,
iavf_set_mac_sync() will hit this check and immediately fail the MAC change
with -EBUSY.

Because there is no retry logic in iavf_set_mac(), this error propagates
directly to userspace, making MAC address configuration randomly fail based
on watchdog timing.

[ ... ]
> @@ -712,8 +724,8 @@ static void iavf_mac_add_ok(struct iavf_adapter *adapter)
>   * @adapter: adapter structure
>   *
>   * Remove filters from list based on PF response.
> - **/
> -static void iavf_mac_add_reject(struct iavf_adapter *adapter)
> + */
> +void iavf_mac_add_reject(struct iavf_adapter *adapter)
>  {
>  	struct net_device *netdev = adapter->netdev;
>  	struct iavf_mac_filter *f, *ftmp;

[Severity: Medium]
Does exporting and reusing iavf_mac_add_reject() for local rollback cause
unintended background MAC changes?

When the user requests a MAC address that is already in the filter list
(e.g., a secondary MAC), iavf_add_filter() sets f->is_new_mac = false and
f->add = true, and flags IAVF_FLAG_AQ_ADD_MAC_FILTER.

If the synchronous operation fails locally (like the -EBUSY return above),
iavf_set_mac() calls this function. However, iavf_mac_add_reject() only
clears the pending state and removes the filter if f->is_new_mac is true:

    if (f->is_new_mac) {
        list_del(&f->list);
        kfree(f);
    }

Reused filters are ignored, leaving f->add = true and the
IAVF_FLAG_AQ_ADD_MAC_FILTER flag active. The background watchdog task will
eventually process this flag and blindly send the MAC configuration to the
PF, even though the VF already aborted the operation locally.
