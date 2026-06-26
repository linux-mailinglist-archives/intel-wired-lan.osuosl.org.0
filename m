Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4LiwGVf9Pmr9NwkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Jun 2026 00:29:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3EC6D06F0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Jun 2026 00:29:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=ZX6IdD8c;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BBCC610EF;
	Fri, 26 Jun 2026 22:29:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n6GR62TsrtcA; Fri, 26 Jun 2026 22:29:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74A636106D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782512980;
	bh=z/KOQXjMCL4+K9L12WXoB3UQ4LGC1afxPFJA9hVfjDA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZX6IdD8cfowCbDUHiThRF0axyH7+02qbG0afJIKXQwJdhx20mLP0ZE1dA2++lITpU
	 85pem8UV0r/YlkeJvYwM7ic3y21GLX8bNtmk9M1LoVPoBLjRjmctK35HFjbfN9vI+o
	 ft0IAbQkw8g2EcD87iiBKZIsccxyiHgsSc6ezIgx76qAJBA47AnqbqgIGAhpzxYhMs
	 VlKl5k6i2pCPjv8FFvvN4ebXy58t4KUpxcR8mhePGsCWRbu7BgduuYgchHr1rWOo7s
	 K5hu39ZEaGsNCaGEbEDYXCd29gB3FGgwX/uE6//y2mu9TjE/lnyCIkvkhPqROpuPPg
	 DXHOOUVAJGnjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74A636106D;
	Fri, 26 Jun 2026 22:29:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CB95528A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 22:29:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BDCEA813AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 22:29:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7TWXxLKBTOXj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2026 22:29:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D3389813A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3389813A9
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D3389813A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 22:29:37 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 899D84193B;
 Fri, 26 Jun 2026 22:29:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 453C21F000E9;
 Fri, 26 Jun 2026 22:29:37 +0000 (UTC)
Date: Fri, 26 Jun 2026 15:29:36 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20260626152936.7359509f@kernel.org>
In-Reply-To: <20260626054730.1126969-2-aleksandr.loktionov@intel.com>
References: <20260626054730.1126969-1-aleksandr.loktionov@intel.com>
 <20260626054730.1126969-2-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1782512977;
 bh=z/KOQXjMCL4+K9L12WXoB3UQ4LGC1afxPFJA9hVfjDA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References;
 b=k2bFpxlt7Wm9C/8eujHy5dBqsKHRHfE+7Phr5425P0zVcZf5P3HfIXdwiYDsF7S7n
 49W4wkBiHrCnY8cvl0dQxC+7KyTCydr35Ro8E/qX0lh0b9t+xlGntowCX4gcgTATnD
 4XAeKALM4iLKt/KtufF8mdsu8Pq8JerCU9/JKGg6HNv0be+XBKiTzDMmPI6u/4qIA6
 H9kMoLRPfq9ptcoD1NvFbRw37q590Hzog7+m1e3atx5xbiDGFmsznRYj4hxW4mbGTO
 kTu1BWK6XIfWmKkWp6dSUpR8sTaTyh55Hos3O11SlyMAs0+Skdi5SdIwk4uc1H2rhB
 QA09f1cdtAzIw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=k2bFpxlt
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 1/2] ethtool: treat
 RXH_GTP_TEID as intrinsically symmetric
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
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,paloaltonetworks.com:url];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DA3EC6D06F0

On Fri, 26 Jun 2026 07:47:29 +0200 Aleksandr Loktionov wrote:
> A GTP tunnel uses the same TEID value in both directions of a flow;
> including TEID in the hash input does not break src/dst symmetry.
> 
> ethtool_rxfh_config_is_sym() currently rejects any hash field bitmap
> that contains bits outside the four paired L3/L4 fields.  This causes
> drivers that hash GTP flows on TEID to fail the kernel's preflight
> validation in ethtool_check_flow_types(), making it impossible for
> those drivers to support symmetric-xor transforms at all.
> 
> Strip RXH_GTP_TEID from the bitmap before the paired-field check so
> that drivers may honestly report TEID hashing without blocking the
> configuration of symmetric transforms.

I don't know much about GTP, but "the Internet" does not seem to agree
with your claim:

  The TEID uniquely identifies the GSN tunnel endpoints. The tunnels 
  for an uplink and a downlink are separate and use a different TEID.

https://docs.paloaltonetworks.com/service-providers/10-1/mobile-network-infrastructure-getting-started/gtp/mobile-network-protection-profile

So I don't think this will fly..
