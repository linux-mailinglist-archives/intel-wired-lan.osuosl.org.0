Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ANxJ5eIvWnQ+gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 18:49:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 988AC2DEE7F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 18:49:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C24C984958;
	Fri, 20 Mar 2026 17:49:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JyW6kEk6Uv1K; Fri, 20 Mar 2026 17:49:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B66F84959
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774028948;
	bh=x5coYV2m0Hrf853jK3AxLiJPMYhCiTplE5pkNnUBd3s=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7drqFmAhKqunPFpPVBFSmeWY8hNF9Sm56ZfyJ9xwnpZEbwIrcShxB3rSDpnUv9v2X
	 Y1P5oP+ia7LM/JtD+GUebtYAnaVPZnyPg0+SuCk+wxjK4KM23Mem0gS1n64JVLM4HX
	 8W+yQetqyuNqxS7DahsMxPna3kmjNxOaNEtr8znLniVyPyKosTbebKLHwYeIBEhHkz
	 JHWuoT63OFt+yKl2yVcZf7+7v0LwagFfG6+V4LODF3VTSKt9w/6pTHeOrnk9uXeHIO
	 CR+nTFYNlgOK7KRMt/heNqUppo3gwgbJjulZjSgxCZPS9l1SbRN4ReyktGIYWWzCN8
	 s5LMSCtD4KK5w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B66F84959;
	Fri, 20 Mar 2026 17:49:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D683021F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 17:49:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA9B084957
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 17:49:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id womcpQORCyjo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 17:49:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DE62784955
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE62784955
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DE62784955
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 17:49:05 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 6C9FA443D1;
 Fri, 20 Mar 2026 17:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4789CC2BC87;
 Fri, 20 Mar 2026 17:49:01 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: emil.s.tantilov@intel.com
Cc: Simon Horman <horms@kernel.org>, daniel@iogearbox.net, ast@kernel.org,
 willemb@google.com, stable@vger.kernel.org, decot@google.com,
 bpf@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, intel-wired-lan@lists.osuosl.org,
 edumazet@google.com, netdev@vger.kernel.org, pabeni@redhat.com,
 andrew+netdev@lunn.ch, kuba@kernel.org, davem@davemloft.net,
 sdf@fomichev.me, aleksandr.loktionov@intel.com,
 aleksander.lobakin@intel.com, john.fastabend@gmail.com, hawk@kernel.org
Date: Fri, 20 Mar 2026 17:48:43 +0000
Message-ID: <20260320174843.137651-1-horms@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260319224159.23885-1-emil.s.tantilov@intel.com>
References: <20260319224159.23885-1-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1774028945;
 bh=x5coYV2m0Hrf853jK3AxLiJPMYhCiTplE5pkNnUBd3s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pWQ++BbnJGdNK5Nxc684tR8zXPop5sbC7wcbUaQJcZwAaxn40MpVo0CpwrGGXb/Am
 vZSQm93CQ8talTNdSjhcYjj0kEHNyBzHzIQPGeWPatJHWnPZ/V7s8TEpxjZH1va++J
 TCZz5IVGrhhJtaZd3qCw8hByuO6gs0bPVESa+5eacXUd9J+e2fJnH9ZpqFvz29jlgw
 cFu0ZI4HUsFRcv8XF+nXoCFNLYTwffIajLtXbHumGG0COkbPKwtSSldZNtGYrNE8eh
 vH6nwITJIQaRTKYEHb50m4XI5Vdfnn/w/REc/HShm2WZr/Ksdi8r6Owinh4GQDS1Gu
 Z4Gd1uDSH3/4A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=pWQ++Bbn
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: fix xdp crash in
 soft reset error path
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
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:horms@kernel.org,m:daniel@iogearbox.net,m:ast@kernel.org,m:willemb@google.com,m:stable@vger.kernel.org,m:decot@google.com,m:bpf@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:kuba@kernel.org,m:davem@davemloft.net,m:sdf@fomichev.me,m:aleksandr.loktionov@intel.com,m:aleksander.lobakin@intel.com,m:john.fastabend@gmail.com,m:hawk@kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,osuosl.org:dkim];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[kernel.org,iogearbox.net,google.com,vger.kernel.org,intel.com,lists.osuosl.org,redhat.com,lunn.ch,davemloft.net,fomichev.me,gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.995];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 988AC2DEE7F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
idpf: fix xdp crash in soft reset error path

This commit fixes a NULL pointer dereference that occurs when
idpf_vport_open() fails during soft reset. The fix restores
vport->xdp_prog in the error path and updates the restart check in
idpf_xsk_pool_setup() to use IDPF_VPORT_UP instead of netif_running().

> Fixes: 3d57b2c00f09 ("idpf: add XSk pool initialization")

The Fixes: tag may not be targeting the correct commit. The primary bug
being fixed is the NULL pointer dereference crash in idpf_xdp_setup_prog()
that occurs when soft reset fails and vport->xdp_prog is not restored.

Looking at the git history, this missing restoration was introduced in
commit 705457e7211f ("idpf: implement XDP_SETUP_PROG in ndo_bpf for
splitq"), where idpf_xdp_setup_prog() was first implemented. While commit
3d57b2c00f09 introduced the secondary issue with the netif_running()
check, the main crash fix addresses code from commit 705457e7211f.

Should the Fixes: tag point to commit 705457e7211f instead?
