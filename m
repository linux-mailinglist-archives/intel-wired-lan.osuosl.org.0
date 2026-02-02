Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKPbFqd7gGnE8wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 11:25:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C13B3CADD3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 11:25:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEF1C80E1A;
	Mon,  2 Feb 2026 10:25:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fCXDMfc6KVE5; Mon,  2 Feb 2026 10:25:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F40580E28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770027939;
	bh=CMSaxGP3eIqKcu8euueIQtFERGGu7GUah0ApqSAjdjM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tNOd9GgP0RigAPmRF+3jV1NMh/ERwEiRqDCdJDv/TNk9iw+t6CSZnjlV+6PBGzjR6
	 vk9PmfMPnOJtT6IpU8YYnzJ7wSyDgC+fwvdoh3z/Eld3XLTnr8NZo60sTUE4Zk1hq4
	 5dSjJfa8CsbnkKYo3vKODckvF3OsAD72cCDrRzRzdNdBJIS8FRH/8liRow8nqGPAeI
	 pCOF20AuPSSAjVBCdZjFjSH9czIOax3w/yqs0norNPetGLnokugAmCN3nJAzlqbx5t
	 OivvP1UGahk2qVtEt3+30Pe4nltInxvRYmoyKOE3SG12IVuonnI4u6Hl734OukK3PZ
	 94Xt5RbgZlIag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F40580E28;
	Mon,  2 Feb 2026 10:25:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 01DBF149
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 10:25:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F05C040266
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 10:25:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HQhiJhMHg6Io for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Feb 2026 10:25:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 07817401FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07817401FE
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 07817401FE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 10:25:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 71EDC60008;
 Mon,  2 Feb 2026 10:25:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49F7EC116C6;
 Mon,  2 Feb 2026 10:25:31 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: takkozu@amazon.com
Cc: Simon Horman <horms@kernel.org>, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, aleksandr.loktionov@intel.com,
 przemyslaw.kitszel@intel.com, kuba@kernel.org, netdev@vger.kernel.org,
 enjuk@amazon.com, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 edumazet@google.com, piotr.kwapulinski@intel.com, pmenzel@molgen.mpg.de
Date: Mon,  2 Feb 2026 10:25:20 +0000
Message-ID: <20260202102520.1844644-1-horms@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260127085410.79645-8-takkozu@amazon.com>
References: <20260127085410.79645-8-takkozu@amazon.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770027934;
 bh=CMSaxGP3eIqKcu8euueIQtFERGGu7GUah0ApqSAjdjM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YzkJizAgZc+iayIvgmIYgUy/wRE0dWGjOOraVoCQzHW1iAXzeBVrIPZo2COX9bxAG
 hUx+cwqBm+6wVdbCnAFPpk60TcZgYEYzm+KqfXfcVG/06/BPIMhk3oKrNQ9Q6aT5W7
 F1J32sQ9AOvAuDr+tli6RfcS0yyLUQNbE8A0hsx14PLDKRP/rCxnOUHlVHkSeguhfm
 hMNKRom1K1G/30dDqbhfnFFyNjRrDfZ3B7ZBAOL4R37TenYu+RM4kY60FQm4NWbnXB
 FCkXSb+JNuBIAD67ep4b1bOsgs/GY4Yg/IZmubE9KmanbMB+iWyp1TSBLx8nJrX7RU
 KtL6x1hMHdjSw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=YzkJizAg
Subject: Re: [Intel-wired-lan] [iwl-next, v5,
 3/3] igb: allow configuring RSS key via ethtool set_rxfh
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
X-Rspamd-Server: lfdr
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
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:takkozu@amazon.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:enjuk@amazon.com,m:pabeni@redhat.com,m:edumazet@google.com,m:piotr.kwapulinski@intel.com,m:pmenzel@molgen.mpg.de,m:andrew@lunn.ch,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C13B3CADD3
X-Rspamd-Action: no action

This is an AI-generated review of your patch. The human sending this
email says "I'm releasing this report for completeness. And while I
do think it is correct. I don't think it needs to block progress"

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
igb: allow configuring RSS key via ethtool set_rxfh

This patch adds support for configuring the RSS key via ethtool's
set_rxfh interface. The change accepts a userspace-provided RSS key,
stores it in the adapter structure, and writes it to hardware registers.

> Change igc_set_rxfh() to accept and save a userspace-provided
> RSS key.

This isn't a code bug, but the commit message references "igc_set_rxfh()"
when the function being modified is actually igb_set_rxfh() in
drivers/net/ethernet/intel/igb/igb_ethtool.c. This typo was noted by
Aleksandr Loktionov in the v1 review:
https://lore.kernel.org/intel-wired-lan/IA3PR11MB89860A16782937C7E8C2E2DEE5A7A@IA3PR11MB8986.namprd11.prod.outlook.com/

Should this be corrected to igb_set_rxfh() to match the actual code?
