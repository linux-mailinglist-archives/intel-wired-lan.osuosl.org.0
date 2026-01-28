Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id A4CEEKAxemlp4gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 16:56:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E528DA4C00
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 16:56:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8513F60758;
	Wed, 28 Jan 2026 15:56:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kpMoGOroxDYZ; Wed, 28 Jan 2026 15:56:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30BDC6076D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769615770;
	bh=z0fXNHa2s+Zw7mPnBkiC3vEH2KqwsQ9+3Z5zzcD4aDk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P6EJr6M/eFXZIi+fDVOP+6Bqoy1i17zG78hpL8AfCZZJSJXMYp7m3dkDwLXNNDZiF
	 l0OPtYxsQ2+yDZ9qtqoP0w1RP19o7fNLz2O6M1uoYVnLt6WEOXDOKwEMICATr/oUCx
	 htqa328oEDYwNFNyZutNvRw56bZN8X5e0KcJ5fFZs1ccFmeVgly5ANrauvQLPN+MrV
	 8JnBpMZZE2q4tEs8PgW4TFxrdLUHez9NDKOI1kkZvvMOozN+mSEH4X15srTh1xgsMt
	 G8NEbGM8DjSAjaVvbngR04Gjv3Egj6T/8dpErdh4P+FyzJN0DWfAgU3ua/0TSEKLvy
	 Gd3ult802lT8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30BDC6076D;
	Wed, 28 Jan 2026 15:56:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 53359118
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 15:56:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 417D340808
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 15:56:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lm_FCGnLJSSz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 15:56:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=gregkh@linuxfoundation.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3A56D40806
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A56D40806
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3A56D40806
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 15:56:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 9A003429C3;
 Wed, 28 Jan 2026 15:56:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDEABC116C6;
 Wed, 28 Jan 2026 15:56:01 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, patches@lists.linux.dev,
 lrizzo@google.com, namangulati@google.com, willemb@google.com,
 intel-wired-lan@lists.osuosl.org, milena.olech@intel.com,
 jacob.e.keller@intel.com, Shachar Raindel <shacharr@google.com>,
 Mina Almasry <almasrymina@google.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Samuel Salin <Samuel.salin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Sasha Levin <sashal@kernel.org>
Date: Wed, 28 Jan 2026 16:22:32 +0100
Message-ID: <20260128145348.320547320@linuxfoundation.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260128145344.331957407@linuxfoundation.org>
References: <20260128145344.331957407@linuxfoundation.org>
User-Agent: quilt/0.69
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1769615762;
 bh=ilH5ktigD/fqM5H6RQuAD0zhPjo9H9ZHtzSh1cKzKho=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0GIDuZh2Nzu1oDRm0yGrXWVndAV1ZMQDlm5y8BHYTTNgprn3M9CmKvSTy4zvKyYZI
 oBf8oiPQZLheovsXxjwuaDehGsrFZe0j19ZCB6HBzzen+UHzEK3/T3ikGVKM3GaWVT
 WOkU4xcOKBjSjq7UGNFT/tBlCKscZlHEx00Kg5vQ=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=0GIDuZh2
Subject: [Intel-wired-lan] [PATCH 6.18 107/227] idpf: read lower clock bits
 inside the time sandwich
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[linuxfoundation.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:stable@vger.kernel.org,m:gregkh@linuxfoundation.org,m:patches@lists.linux.dev,m:lrizzo@google.com,m:namangulati@google.com,m:willemb@google.com,m:milena.olech@intel.com,m:jacob.e.keller@intel.com,m:shacharr@google.com,m:almasrymina@google.com,m:aleksandr.loktionov@intel.com,m:Samuel.salin@intel.com,m:anthony.l.nguyen@intel.com,m:sashal@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[gregkh@linuxfoundation.org,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E528DA4C00
X-Rspamd-Action: no action

6.18-stable review patch.  If anyone has any objections, please let me know.

------------------

From: Mina Almasry <almasrymina@google.com>

[ Upstream commit bdfc7b55adcd04834ccc1b6b13e55e3fd7eaa789 ]

PCIe reads need to be done inside the time sandwich because PCIe
writes may get buffered in the PCIe fabric and posted to the device
after the _postts completes. Doing the PCIe read inside the time
sandwich guarantees that the write gets flushed before the _postts
timestamp is taken.

Cc: lrizzo@google.com
Cc: namangulati@google.com
Cc: willemb@google.com
Cc: intel-wired-lan@lists.osuosl.org
Cc: milena.olech@intel.com
Cc: jacob.e.keller@intel.com

Fixes: 5cb8805d2366 ("idpf: negotiate PTP capabilities and get PTP clock")
Suggested-by: Shachar Raindel <shacharr@google.com>
Signed-off-by: Mina Almasry <almasrymina@google.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Tested-by: Samuel Salin <Samuel.salin@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/idpf/idpf_ptp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index 3e1052d070cfd..0a8b50350b860 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -108,11 +108,11 @@ static u64 idpf_ptp_read_src_clk_reg_direct(struct idpf_adapter *adapter,
 	ptp_read_system_prets(sts);
 
 	idpf_ptp_enable_shtime(adapter);
+	lo = readl(ptp->dev_clk_regs.dev_clk_ns_l);
 
 	/* Read the system timestamp post PHC read */
 	ptp_read_system_postts(sts);
 
-	lo = readl(ptp->dev_clk_regs.dev_clk_ns_l);
 	hi = readl(ptp->dev_clk_regs.dev_clk_ns_h);
 
 	spin_unlock(&ptp->read_dev_clk_lock);
-- 
2.51.0



