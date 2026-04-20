Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PjmDmgo5mnesgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 15:21:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 029EC42B95A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 15:21:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A66661116;
	Mon, 20 Apr 2026 13:21:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FDcvCj0ucKqy; Mon, 20 Apr 2026 13:21:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1A1861113
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776691296;
	bh=8IuLowldQlM5vyWZuim0L4vboYvqDtLOcLj9YZir9p0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BXU0frIOv8YtZIsIGujfsVqF7OxJCrYCPlUuqNkUrDlirtjBsw1Tjd0eu1hf0jJpQ
	 P7IDdpQ1+jnRyFqSiFk6KfKed82LckGnyffcA2UhOL8qPLYLXIsfT5pcc1bphxlRYv
	 jwPzuBna41BnQ/1ZXK+Tyau3zxXJCkG0QM14YcNl6wH93SADDeUsbxPkkOUnVd8YRm
	 FCYbFxro3xCISmumScjCDkB2VWurMAm1KTAM903IEIteSsRKgZEmzMj7ZKLlZcukJ6
	 ybjQePCfn7OeNO7p/JSHTnxIRiRw10qQQWdZqH21gr+8QSBX+gcsoVpI58hFX7Q4AJ
	 qoxARuIafAnww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1A1861113;
	Mon, 20 Apr 2026 13:21:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 36EE4259
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 13:21:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 22D1461111
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 13:21:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zXvnYDKbUCr2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Apr 2026 13:21:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=sashal@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3833961110
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3833961110
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3833961110
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 13:21:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E0F3D440C1;
 Mon, 20 Apr 2026 13:21:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D1ECC2BCB8;
 Mon, 20 Apr 2026 13:21:33 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: Rajani Kantha <681739313@139.com>
Cc: Sasha Levin <sashal@kernel.org>, stable@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 20 Apr 2026 09:21:15 -0400
Message-ID: <20260420-stable-reply-ice-ringparam-6-6@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260417091753.4175-1-681739313@139.com>
References: <20260417091753.4175-1-681739313@139.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1776691293;
 bh=8IuLowldQlM5vyWZuim0L4vboYvqDtLOcLj9YZir9p0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aDY+ARWH1AAOTewzlMTOCw8oR3nNf6Y0BU8tpzfAckxv8UXMXT51gJf9cOJ4baJEW
 VIIGei11nEIKd9hQNiom5ePem7feNRd3nyuUcqcq9zx5CEAv+w2ahWmKkf/s/1Os7R
 afs/BS9PHcOHzMNwKKByNVvhCTdaDL+4W+AvccM4v4c/N9qFrd7yuhxcX/DZ3/7f96
 eN8UCjh7J7UGnmRQA3vL9ctid3bZ7mKqH/CT23hWzNtGKVYQ3wX5VnmlQif9HheocF
 ASclRseiBg391luF4YQ/8NftLJ/C09Q3DgavDBeQW8hBFYykgYIZrivn8R70ZClD9E
 esxo73A+u4zcQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=aDY+ARWH
Subject: Re: [Intel-wired-lan] [PATCH 6.6.y] ice: Fix memory leak in
 ice_set_ringparam()
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
X-Spamd-Result: default: False [1.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:681739313@139.com,m:sashal@kernel.org,m:stable@vger.kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashal@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_TO(0.00)[139.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[sashal@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 029EC42B95A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 17, 2026, Rajani Kantha wrote:
> Backport of fe868b499d16 ("ice: Fix memory leak in
> ice_set_ringparam()") to 6.6.y.

Queued for 6.6, thanks.

--
Thanks,
Sasha
