Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLqdKvzADGqJlgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 21:58:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9342F584635
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 21:58:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 467BE60BB8;
	Tue, 19 May 2026 19:58:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RHqO2dqPOE4u; Tue, 19 May 2026 19:58:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D5A360BBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779220727;
	bh=5akoCTZztmBRRico1B1UJxTBZQxHDAVsHtATqtnVgJs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yDcnmO7vfsE8m8xWJiDIEyunJlGhO17Gnzhe1NGEgYAzzc6bEymgxIcImHJpBXt35
	 liDPZ6zuRGaMpwQOeNYuvc680iaGSzogUTQKeI0CFZnsx7QwNbRFxkL3NnLY5NwSqm
	 Vd4rcC9z+eg3j9/G6kzk8oTUi3XUbr+OiZgJ61Vse6NZA9WJHjEIKlX31Fg4OZxARX
	 QTjffqWiluHlyv4Bwds2poEQapIZB2ypcd1Ym5lUOMt/yyQwGtqDAcV+t7RywA/W7h
	 ta2pvmdx9AN39i7qu3ngPLondKg4ExIIqyBtc0hmSoUGQ4uchi/vxFPxyLJxQ0lKjq
	 xbDGjd5o6a/fw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D5A360BBA;
	Tue, 19 May 2026 19:58:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4BFB61B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 19:58:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E1D780E8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 19:58:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0E82NNCcv0jL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2026 19:58:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 74CD580D6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74CD580D6A
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 74CD580D6A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 19:58:45 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 653E160216;
 Tue, 19 May 2026 19:58:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A90B71F000E9;
 Tue, 19 May 2026 19:58:41 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: devnexen@gmail.com
Cc: 'Simon Horman' <horms@kernel.org>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Date: Tue, 19 May 2026 20:57:34 +0100
Message-ID: <20260519195734.982404-1-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260514183019.49527-1-devnexen@gmail.com>
References: <20260514183019.49527-1-devnexen@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1779220724;
 bh=5akoCTZztmBRRico1B1UJxTBZQxHDAVsHtATqtnVgJs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ntfySxbpJnvE3ptiwcsEh4kQid5dCi4+3r7kDcRZj2CGEWaHWW6MZc9df2LXps/N/
 fAhUl9cx5fLV2gUWnvaoEKJ3g2eJDD3y1hiuYxuIBzMlR79YmUOdm5y1DYkYSR+plS
 43asYLUT4mruH2FzdUzs/ockKtnctF4TAtX4tdPl1RlcNzkMcO9UOqupL48RI3nyul
 UCkOKL/OmAEWFh0tF9sOdwmK56R02MMiOlEYpJyY7+s09GKMtfesRLKcPxOpqIKixL
 8dU2jIX2ZM8/89s2+z8ehEeBV2LfK3vxlAxBCSlzIKp3FjKJ7bC+8KDzpfiMJ9ZF0S
 5xHgnbNa50H8A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=ntfySxbp
Subject: Re: [Intel-wired-lan] [PATCH net v2] idpf: handle NULL adev in
 idpf_idc_vdev_mtu_event
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
X-Spamd-Result: default: False [3.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:devnexen@gmail.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9342F584635
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
idpf: handle NULL adev in idpf_idc_vdev_mtu_event

This commit attempts to fix a NULL pointer dereference in the MTU event
handler by caching the auxiliary device pointer using READ_ONCE(). It avoids
dereferencing a NULL pointer if the device is cleared concurrently by
idpf_idc_vport_dev_ctrl().

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> index b7d6b08fc89e8..9f764135507c2 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> @@ -162,9 +162,12 @@ void idpf_idc_vdev_mtu_event(struct iidc_rdma_vport_dev_info *vdev_info,
>  
>  	set_bit(event_type, event.type);
>  
> -	device_lock(&vdev_info->adev->dev);
> -	adev = vdev_info->adev;
> -	if (!adev || !adev->dev.driver)
> +	adev = READ_ONCE(vdev_info->adev);
> +	if (!adev)
> +		return;
> +
> +	device_lock(&adev->dev);

The commit message indicates that idpf_idc_vport_dev_ctrl() and MTU changes
can run concurrently. Does caching the adev pointer with READ_ONCE() provide
enough protection against the device memory being freed?

If idpf_idc_vport_dev_ctrl() unregisters and frees the auxiliary device
immediately after READ_ONCE() reads a non-NULL pointer, could
device_lock(&adev->dev) then operate on a freed device?

Would it be necessary to increment the device's reference count, perhaps
using get_device() or holding a broader lock, before accessing adev->dev to
prevent a use-after-free regression?
