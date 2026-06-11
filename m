Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aLrYEY4YKmrNigMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 04:08:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 441FE66DBE7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 04:08:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=SQ55QZD6;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=seu.edu.cn (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E715F40812;
	Thu, 11 Jun 2026 02:08:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 95BuitvbaKfo; Thu, 11 Jun 2026 02:08:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC4D640810
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781143690;
	bh=LsfLRl7OuI64QZa7FWNmdbCqTIV71pSU3+SydKKbDjw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SQ55QZD65SQE6MnqAv7nS93dS1PqM6gm1TIXsE/r9yPDdhP4R7bGiYJOPW4Hfb4mV
	 TVLmOl/DSzZYa6/2nG4BPRUCLZ45qKNtzf0hCd+wqglaOaBlTi+wqUUqvpWNdUfcyQ
	 M1pj1endYzMTZ3D4y5H6XDwHpUJKvs9QbRlytey0Qe/yRRybKbC8tAdVm7oIs5JXgi
	 GrGVjNsbgAGIZsNfheozXRqnWh7TJXFlezkLN/C9OqgV5jt+1NtyfkmedTa99vFOT8
	 pywOx547R/DYjjiCXO7Zyx3Yr8hMkInbpA8q1MYyb++cu+xF/uSdEqVq9LufpSkN39
	 fU8/6j7yK5QuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC4D640810;
	Thu, 11 Jun 2026 02:08:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A57B237
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 02:08:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7BCE140119
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 02:08:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S_us5bRwn4ry for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2026 02:08:07 +0000 (UTC)
X-Greylist: delayed 305 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 11 Jun 2026 02:08:05 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 31B5A40108
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31B5A40108
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.209.128.204;
 helo=mail-m128204.netease.com; envelope-from=dawei.feng@seu.edu.cn;
 receiver=<UNKNOWN> 
Received: from mail-m128204.netease.com (mail-m128204.netease.com
 [103.209.128.204])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 31B5A40108
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 02:08:04 +0000 (UTC)
Received: from DESKTOP-SUEFNF9.taila7e912.ts.net (unknown [221.228.238.82])
 by smtp.qiye.163.com (Hmail) with ESMTP id 41eb56573;
 Thu, 11 Jun 2026 10:02:53 +0800 (GMT+08:00)
From: Dawei Feng <dawei.feng@seu.edu.cn>
To: jacob.e.keller@intel.com
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 dawei.feng@seu.edu.cn, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, jianhao.xu@seu.edu.cn, kuba@kernel.org,
 linux-kernel@vger.kernel.org, marcin.szycik@linux.intel.com,
 netdev@vger.kernel.org, pabeni@redhat.com, przemyslaw.kitszel@intel.com,
 stable@vger.kernel.org, zilin@seu.edu.cn
Date: Thu, 11 Jun 2026 10:02:54 +0800
Message-Id: <20260611020254.308446-1-dawei.feng@seu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <00f5f6e3-e80f-4c16-8d2f-f8148bcddfa8@intel.com>
References: <00f5f6e3-e80f-4c16-8d2f-f8148bcddfa8@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9eb46b072103a2kunm4f921c24193a19
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDTkJKVh9NGkkZSE4aHRlJHlYeHw
 5VEwETFhoSFyQUDg9ZV1kYEgtZQVlJSUpVSUlDVUlIQ1VDSVlXWRYaDxIVHRRZQVlPS0hVSktISk
 9ITFVKS0tVSkJLS1kG
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 b=PUswkuEQxvP5C6A3S2B092O9Wh4MekFk1hfTk5VwxKgi1I6czgSuBzRYEDnO3wZPmVmONgPCZ4AGzHDYk1dfkYVv1DZD/mfu2tnfMqQIIfFJapZp5LsCaqa9M5WJ/fvP9OOLyNBoPWxn97LZswaohUtIGp3sHHY2AM5J88n9z2o=;
 c=relaxed/relaxed; s=default; d=seu.edu.cn; v=1; 
 bh=LsfLRl7OuI64QZa7FWNmdbCqTIV71pSU3+SydKKbDjw=;
 h=date:mime-version:subject:message-id:from;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=seu.edu.cn
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=seu.edu.cn header.i=@seu.edu.cn header.a=rsa-sha256
 header.s=default header.b=PUswkuEQ
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix memory leak in
 ice_lbtest_prepare_rings()
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[seu.edu.cn : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[dawei.feng@seu.edu.cn,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:dawei.feng@seu.edu.cn,m:edumazet@google.com,m:jianhao.xu@seu.edu.cn,m:kuba@kernel.org,m:linux-kernel@vger.kernel.org,m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:stable@vger.kernel.org,m:zilin@seu.edu.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dawei.feng@seu.edu.cn,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 441FE66DBE7

Hi Marcin,

Thanks for your review.

On Tue, 9 Jun 2026 at 16:27:20 Marcin Szycik wrote:
> IMO last two paragraphs should not be included in commit message,
> rather after ---.

The reason the manual inspection and testing commentary was placed above
the `---` line is that we were strictly following the example template
provided in Documentation/process/researcher-guidelines.rst. 

In the researcher-guidelines[1], the example explicitly places the build
and hardware testing disclaimer before the Signed-off-by tags, which is
why we included it directly in the commit message.

Please let me know if you would like a v2 to adjust the position of the
mentioned commit log details.

> Correct me if I'm wrong, but looks like unroll order is reversed:
> ice_vsi_stop_lan_tx_rings() unrolls ice_vsi_cfg_lan()
> ice_vsi_free_rx_rings() unrolls ice_vsi_setup_rx_rings()
> (was reversed before this patch too, but since we're fixing it, might as well)

You are right. I'll update it in v2.

[1] https://docs.kernel.org/process/researcher-guidelines.html

Best regards,
Dawei
