Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Wtk0KQgqMGorPQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:36:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A006886F9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:36:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=TxJkfRZT;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 937E240A6B;
	Mon, 15 Jun 2026 16:36:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HlbziHX8aXqZ; Mon, 15 Jun 2026 16:36:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11EB24071F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781541378;
	bh=FOjtmSzT3RN4Tr1FeLf4o+G99sWvrsBZEtIXPtsCwyI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TxJkfRZT5ALQUFCl579+8Sg37khyUsBzrWAJYbhM7U8WxuvpLEbbB0zbMd/i7SMEq
	 Ye2u2unFLo/TFNU5myBSyEm5spwVXUpxpdz71hTdrUHaBNnQ/nVyxG/FmlqE84+rVn
	 2DrPr2WYUlelWvgAEEHuRPaGc1QlRQ+gTlwSxBnrJxYZZiqDx2Rdrin3rVvrdijnR9
	 t3rvcRUickDg+amhp2J9y6Xk5Rojf7ldpG1DVLcqvWUAUJvqOlEL7sGqBsquw4VPrB
	 6qmVIP80P675FkHV5qd/1mtpuTc85GVVAwJfpPAgJDDx5zS+FghNPm5vAkM5F/HHPq
	 tltaAz65w6R3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11EB24071F;
	Mon, 15 Jun 2026 16:36:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id ACA50169
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 21:48:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9312B41172
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 21:48:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XDuPDBdlKtdh for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Jun 2026 21:48:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=deller@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AF57140137
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF57140137
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF57140137
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Jun 2026 21:48:14 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id F0AD86008A;
 Sun, 14 Jun 2026 21:48:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B8111F000E9;
 Sun, 14 Jun 2026 21:48:10 +0000 (UTC)
Date: Sun, 14 Jun 2026 23:48:08 +0200
From: Helge Deller <deller@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <ai8hmGQmXQu64Ld3@carbonx1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Approved-At: Mon, 15 Jun 2026 16:36:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1781473692;
 bh=FOjtmSzT3RN4Tr1FeLf4o+G99sWvrsBZEtIXPtsCwyI=;
 h=Date:From:To:Subject;
 b=dGwdeafqB2XGev+98jQdMr4LsTswXNS9LJJf72QpuSlLhxCKcgV8V48AAFb8tSmJh
 +/fwe8R+lpUwsev+E6Qq8GT8WgMbFVhPKzQo7VD7GS2h/thZpELQOgTIymc7NR6t1s
 S4JISqkxlk1op6Z0Twn2eKkQj7uLpfE6oeW0ly9s59/RIL4TaOhMRiPHF3sL5OPRhm
 HQkdaWc1zdjsdb/V0AEMzK7f5LZ8sDlBTjGxLT5kLJ/eer0oLquFj7KInvX2B90GxM
 Qz+QhV/4V3Odoain4X/GJNoumtNlCtdt5cFNTW8CH1rgLKXE29/v+CFRGmZlljOl8E
 BglYFjQxkpP8g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=dGwdeafq
Subject: [Intel-wired-lan] e1000e: Report link down after "Detected Hardware
 Unit Hang" ?
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
	SUBJECT_ENDS_QUESTION(1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[deller@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[deller@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 55A006886F9

I'm regularily facing the known "eno1: Detected Hardware Unit Hang:"
with my on-board intel e1000e NIC hardware.
Since none of he various tips on the internet helped, I had the idea
to setup a master/slave bond networking to fail over to another NIC when
the Intel chip hangs.

Sadly this doesn't work as intended, because the link of the intel NIC 
isn't reported "down", so the failover never happens, unless I manually
start "ifconfig eno1 down".

My question: Shouldn't the intel NIC ideally report Link Down if we know
it hangs? That way a fail-over should at least happen, right?

Below is a completely untested patch.
Does it make sense that I try to test and/or develop such a patch, or
are there things I miss?

Helge 


diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 7ce0cc8ab8f4..c6edcf4ac032 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -1157,6 +1157,10 @@ static void e1000_print_hw_hang(struct work_struct *work)
 
 	e1000e_dump(adapter);
 
+	/* The NIC hangs. Force link down in e1000e_has_link() such that a
+	 * failover can happen */
+	hw->phy.media_type = e1000_media_type_unknown;
+
 	/* Suggest workaround for known h/w issue */
 	if ((hw->mac.type == e1000_pchlan) && (er32(CTRL) & E1000_CTRL_TFCE))
 		e_err("Try turning off Tx pause (flow control) via ethtool\n");
