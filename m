Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJpANPr94Wn50AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 11:31:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 786E14194C2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 11:31:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F09360D71;
	Fri, 17 Apr 2026 09:31:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J7YiFM0DsddH; Fri, 17 Apr 2026 09:31:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB77460D72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776418290;
	bh=myc4KWXGdCq23rpNBCdywqKwO1hqEw81kR1mQTgOE50=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LhaHjAPMc9q2q0j6ArV//bMlpeSJZjMQHArTDq7DtN3c9GiwN4C0RmOSpeavVLvVi
	 m4/T0C9tOFyDzJ92Fl8u8hSXxqAkWLRN8BMmvaC3Sz40Rh5WyMD+1ffroYx5z0EK1+
	 wS6Pva0keRNbsBfxL6ibDdiPAYykTUNGFtCeQcBzHMXRGOTDF1jgTc6d6CM5n8YnY8
	 AnOS3U8WVUgBzBSYj8cVWun5wqNYzODpl3roJ012mOdAegCcQepxxBtH5+tHemf08n
	 JmLGoWeeNY36AI2SiVLZzgPhI1ZiTzgHhE2L2dGFD2RWSTsBk7CYqDO3tlztGisIwd
	 1JCtlGou0603A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB77460D72;
	Fri, 17 Apr 2026 09:31:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8E2C0259
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 09:31:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7FB3E40585
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 09:31:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ur3KmRAWHUWL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 09:31:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7A19440578
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A19440578
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A19440578
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 09:31:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id AB1AE41ABE;
 Fri, 17 Apr 2026 09:31:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E438FC19425;
 Fri, 17 Apr 2026 09:31:23 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: jtornosm@redhat.com
Cc: 'Simon Horman' <horms@kernel.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, przemyslaw.kitszel@intel.com
Date: Fri, 17 Apr 2026 10:31:05 +0100
Message-ID: <20260417093104.51561-2-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260414110006.124286-4-jtornosm@redhat.com>
References: <20260414110006.124286-4-jtornosm@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776418286;
 bh=wHJYU1iKI6iAbC5ISchoRkeWmMX7820CTrVZUNdaN4U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i+SaMp0D3QmY5OFztuvoXob/+d3M6isW2YfhVXDigP0FPISULl39HyMK12gdeCzwG
 8vOjhlickEeBiRsQtl0J5ov+z+BpH4L49F13k4gO5E3yzNeUtADtbPEvZcBiYRZeJQ
 GuY3VQUrwJk3noHDinPfuUN60xvMz5FjuDqZZwk5Dh9vA+VYas5wuyWAnoQVGhUldS
 a3rZTC8ZaE5OXQ5mjj7fFgQ+xt3iGQ42ZTurl+5AF3KcHEjsbISssDWeFesc4pgueW
 HmieKLMjrc1SPfz6fcF2reakS5Bajq9A7My83yqYuAd6U+Rbsfud5jNrlZcP6/jsVa
 oqyL/86S+mCZA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=i+SaMp0D
Subject: Re: [Intel-wired-lan] [PATCH net v3 3/5] iavf: send MAC change
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 786E14194C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
iavf: send MAC change request synchronously

This commit attempts to fix a deadlock scenario during MAC address
changes by sending the ADD_ETH_ADDR message directly and polling the
admin queue synchronously, avoiding reliance on the watchdog task.

> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
[ ... ]
> -void iavf_add_ether_addrs(struct iavf_adapter *adapter)
> +int iavf_add_ether_addrs(struct iavf_adapter *adapter)
>  {
[ ... ]
>  	adapter->current_op = VIRTCHNL_OP_ADD_ETH_ADDR;
>  
>  	len = virtchnl_struct_size(veal, list, count);
[ ... ]
>  	veal = kzalloc(len, GFP_ATOMIC);
>  	if (!veal) {
>  		spin_unlock_bh(&adapter->mac_vlan_list_lock);
> -		return;
> +		return -ENOMEM;
>  	}

If kzalloc() fails here, the function returns -ENOMEM but leaves 
adapter->current_op set to VIRTCHNL_OP_ADD_ETH_ADDR. Does this permanently
prevent any future virtchnl operations from running, as they will all
immediately fail with -EBUSY checks?

> +int iavf_poll_virtchnl_response(struct iavf_adapter *adapter,
[ ... ]
> +	do {
[ ... ]
> +		ret = iavf_clean_arq_element(hw, &event, &pending);
> +		if (!ret) {
> +			v_op = (enum virtchnl_ops)le32_to_cpu(event.desc.cookie_high);
> +			v_ret = (enum iavf_status)le32_to_cpu(event.desc.cookie_low);
> +
> +			iavf_virtchnl_completion(adapter, v_op, v_ret,
> +						 event.msg_buf, event.msg_len);

Unlike the legacy iavf_adminq_task() which explicitly checked for v_op == 0
before processing, this code appears to pass a 0 opcode directly to
iavf_virtchnl_completion() when fetching non-virtchnl admin queue events.

When v_op is 0, the completion handler hits the default switch case and
unconditionally clears adapter->current_op. Could this corrupt the state
machine by clearing the current operation state while a valid operation is
still pending?

[ ... ]
> +		usleep_range(50, 75);
> +	} while (time_before(jiffies, timeout));
> +
> +	if (iavf_virtchnl_done(adapter, condition, cond_data, v_opcode))
> +		ret = 0;
> +	else
> +		ret = -EAGAIN;
> +
> +out:
> +	kfree(event.msg_buf);
> +	return ret;
> +}

Similarly, if this polling loop times out, it returns -EAGAIN but does not
clear adapter->current_op. Will this also permanently block the control path
for the VF?

> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1047,6 +1047,46 @@ static bool iavf_is_mac_set_handled(struct net_device *netdev,
[ ... ]
> +static bool iavf_mac_change_done(struct iavf_adapter *adapter, const void *data)
> +{
> +	const u8 *addr = data;
> +
> +	return iavf_is_mac_set_handled(adapter->netdev, addr);
> +}

When promoting an existing secondary MAC to be the primary MAC,
iavf_replace_primary_mac() retrieves the existing filter which already has
f->add_handled set to true.

iavf_add_ether_addrs() sets f->add = false before dispatching. Because
iavf_is_mac_set_handled() checks (!f->add && f->add_handled), will this
cause iavf_mac_change_done() to immediately return true before the hardware
actually responds?

If so, this would cause iavf_set_mac() to prematurely evaluate the 
ether_addr_equal() check and fail with -EACCES.

> +static int iavf_set_mac_sync(struct iavf_adapter *adapter, const u8 *addr)
> +{
> +	int ret;
> +
> +	netdev_assert_locked(adapter->netdev);
> +
> +	ret = iavf_add_ether_addrs(adapter);
> +	if (ret)
> +		return ret;
> +
> +	return iavf_poll_virtchnl_response(adapter, iavf_mac_change_done, addr,
> +					   VIRTCHNL_OP_UNKNOWN, 2500);
> +}

If the MAC filter list has many pending filters, iavf_add_ether_addrs()
stops at IAVF_MAX_AQ_BUF_SIZE and sets "more = true", meaning the newly
requested MAC at the tail of the list might not be sent in the first chunk.

Since this function holds the netdev lock, the watchdog task cannot run to
send the remaining chunks. Does this cause the polling loop to wait
2.5 seconds and time out waiting for a MAC address that was never sent?

Additionally, this function exclusively dispatches iavf_add_ether_addrs().
If changing the MAC requires deleting the old one first, such as in
environments with a strict 1-MAC limit, the deletion is left for the
asynchronous watchdog. Does this cause the synchronous addition to fail
because the hardware rejects the new MAC before the old one is deleted?

> @@ -1067,26 +1107,13 @@ static int iavf_set_mac(struct net_device *netdev, void *p)
[ ... ]
>  	ret = iavf_replace_primary_mac(adapter, addr->sa_data);
> -
>  	if (ret)
>  		return ret;
>  
> -	ret = wait_event_interruptible_timeout(adapter->vc_waitqueue,
[ ... ]
> +	ret = iavf_set_mac_sync(adapter, addr->sa_data);
> +	if (ret)
>  		return ret;

If a background watchdog operation is active, iavf_set_mac_sync() will
immediately return -EBUSY because current_op is not VIRTCHNL_OP_UNKNOWN.

This causes iavf_set_mac() to return -EBUSY to the user. However,
iavf_replace_primary_mac() already successfully updated the software filter
lists. Won't the watchdog task eventually wake up and asynchronously change
the MAC address on the hardware, leaving the system in an inconsistent state
where a failed syscall still executes in the background?
