Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ArpMH49aPmqmEQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 12:55:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E97776CC366
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 12:55:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=eoyrQj5e;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2ACE40E7D;
	Fri, 26 Jun 2026 10:55:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wcy51daKlo5F; Fri, 26 Jun 2026 10:55:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5359D40E52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782471308;
	bh=FDoLmRFdjTWaJPTg5Rz1/wyvQlw0NWoNDIzgPbuVeHs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eoyrQj5e8weQptvPFJP3RTahhYi0o0mCxW01v9Zh8aMApx6mExXLain2CWiDYi05j
	 VEmVcrZyz85HG1vnWqhz3rZj+jD5a9zDUXIQY4VviSOR+OWtApsw2rGXue/FhiqfSw
	 2SuedMotxXsz2jQjwsMp0PtHqKeW8cu8MQQV3ZEB5N1CBLQaC4gulL/a47waf0EYNG
	 8qym5E9EicB/+D86aO+vO6ROKPzYScH3usMhCLIOE1ROAaXdrC2HkvhErJGJ/uyy/b
	 l22SOyeYpMfcJlmNSWkWL6AdXdqd4HQEEUYG3f77o0FnbPHWVnKfYeQiynfmCv/rVu
	 KCyZutDNl3XTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5359D40E52;
	Fri, 26 Jun 2026 10:55:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B1644369
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 10:55:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8EFDA80E14
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 10:55:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e2VWYpy2wufa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2026 10:55:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=jtornosm@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7927580E00
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7927580E00
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7927580E00
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 10:55:03 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-258-QwSM5qfePAyDVLZIptudnw-1; Fri,
 26 Jun 2026 06:55:00 -0400
X-MC-Unique: QwSM5qfePAyDVLZIptudnw-1
X-Mimecast-MFC-AGG-ID: QwSM5qfePAyDVLZIptudnw_1782471298
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 2B72E1955F26; Fri, 26 Jun 2026 10:54:58 +0000 (UTC)
Received: from fedora.redhat.com (unknown [10.44.32.38])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 919EB1800361; Fri, 26 Jun 2026 10:54:54 +0000 (UTC)
From: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
To: horms@kernel.org
Cc: aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jacob.e.keller@intel.com, jtornosm@redhat.com, kuba@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, przemyslaw.kitszel@intel.com
Date: Fri, 26 Jun 2026 12:54:53 +0200
Message-ID: <20260626105453.215716-1-jtornosm@redhat.com>
In-Reply-To: <20260624163148.1146093-2-horms@kernel.org>
References: <20260624163148.1146093-2-horms@kernel.org>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: 2Aac4K6-9t_z1i-c3WRYrzGI3MZOIHHF3nK-mKAQ8jA_1782471298
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1782471302;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FDoLmRFdjTWaJPTg5Rz1/wyvQlw0NWoNDIzgPbuVeHs=;
 b=JM3OsAGrvgGhX7O95hAv/Ya0g4b/lEOsLanaOaZy/5kTdEJ1385SJka77X3pv7gU0D/4UK
 G/3t9k/oJrT3rjs0vNGB2+slz8RVyZ1Fvqf6dFdwB5ps5+OEAO9sk4w4wHxAJOEYjFwvb7
 wWBUWB4c2h2QRnIm4pkkxkKsqzdNVA8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=JM3OsAGr
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
X-Spamd-Result: default: False [1.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:jacob.e.keller@intel.com,m:jtornosm@redhat.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jtornosm@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E97776CC366

>>       if (!ether_addr_equal(netdev->dev_addr, addr->sa_data))
>>               return -EACCES;

> [Severity: High]
> Will this cause a persistent state mismatch if a timeout is followed by a
> retry?
>
> If iavf_set_mac_sync() times out, it returns -EAGAIN and bypasses this
> rollback, leaving adapter->hw.mac.addr updated but netdev->dev_addr at the
> old MAC.
>
> If the user then retries before the PF asynchronously completes the original
> request, iavf_add_ether_addrs() returns -EBUSY. Since -EBUSY != -EAGAIN,
> the rollback runs, forcibly reverting adapter->hw.mac.addr to the old MAC.
> 
> When the PF's delayed success response finally arrives,
> iavf_virtchnl_completion() sees the old MAC in both hw.mac.addr and
> netdev->dev_addr, bypassing the netdev MAC update. The PF hardware is now
> programmed with the new MAC, but the kernel retains the old MAC, dropping
> traffic.

This scenario requires an extremely narrow timing window: a 2.5s PF timeout
(rare in normal operation, PF typically responds much faster), followed by an
immediate retry before adminq_task clears current_op (microsecond window).

Even if this race occurs, it's recoverable - the retry fails with -EBUSY
and the user retries again successfully. This is a transient failure, not
permanent state corruption.

>>       if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
>>               /* bail because we already have a command pending */
>>               dev_err(&adapter->pdev->dev, "Cannot add filters, command %d pending\n",
>>                      adapter->current_op);
>> -             return;
>> +             return -EBUSY;
>>       }
>
> [Severity: High]
> Could routine background tasks cause MAC changes to frequently fail?
>
> The watchdog task routinely sets adapter->current_op for background commands
> like VIRTCHNL_OP_GET_STATS. If iavf_set_mac() is called during this window,
> iavf_set_mac_sync() will hit this check and immediately fail the MAC change
> with -EBUSY.
>
> Because there is no retry logic in iavf_set_mac(), this error propagates
> directly to userspace, making MAC address configuration randomly fail based
> on watchdog timing.

Background virtchnl operations (like GET_STATS) complete quickly, typically
within milliseconds. The collision window is very small.

Fail-fast with -EBUSY is semantically correct and allows user-space retry.
If a collision occurs, it's spurious and recoverable immediately on retry.
This is acceptable compared to the complexity and deadlock risks of queuing
or waiting for background operations to complete while holding netdev_lock.

>> -static void iavf_mac_add_reject(struct iavf_adapter *adapter)
>> + */
>> +void iavf_mac_add_reject(struct iavf_adapter *adapter)
>>  {
>>       struct net_device *netdev = adapter->netdev;
>>       struct iavf_mac_filter *f, *ftmp;
>
> [Severity: Medium]
> Does exporting and reusing iavf_mac_add_reject() for local rollback cause
> unintended background MAC changes?
>
> When the user requests a MAC address that is already in the filter list
> (e.g., a secondary MAC), iavf_add_filter() sets f->is_new_mac = false and
> f->add = true, and flags IAVF_FLAG_AQ_ADD_MAC_FILTER.
>
> If the synchronous operation fails locally (like the -EBUSY return above),
> iavf_set_mac() calls this function. However, iavf_mac_add_reject() only
> clears the pending state and removes the filter if f->is_new_mac is true:
>
>    if (f->is_new_mac) {
>        list_del(&f->list);
>        kfree(f);
>    }
>
> Reused filters are ignored, leaving f->add = true and the
> IAVF_FLAG_AQ_ADD_MAC_FILTER flag active. The background watchdog task will
> eventually process this flag and blindly send the MAC configuration to the
> PF, even though the VF already aborted the operation locally.

This scenario only occurs when setting the primary MAC to an address that
already exists as a secondary MAC in the filter list - an extremely rare
configuration.

Even if this occurs and the watchdog later sends the MAC to the PF, it is
harmless: the MAC is already configured on the PF (as a secondary), so the
redundant ADD_ETH_ADDR message has no adverse effect.

The common case - changing primary MAC to a new address - uses is_new_mac =
true and is handled correctly by the rollback logic.



These concerns represent theoretical edge cases that are extremely unlikely
in practice. The synchronous approach fixes a reproducible deadlock affecting
all users in production, allowing the user to retry and complete the
operation. The trade-off is justified.

