Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EPpvO/My3GlMOAkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 02:04:03 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD953E6701
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 02:04:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A03842463;
	Mon, 13 Apr 2026 00:04:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UyMsGpNp_GYy; Mon, 13 Apr 2026 00:04:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1C374246A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776038641;
	bh=bLZ2hGvxy/AXXUxBlYW4a7XQvCB2LmyGHSGavvwLlRA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ul6RfSr2oiZdvAjDAOHdIZ6HVtQ4fnno8eObb2ZJHPb5lseRl0WVTqaWVBaoJ6fI5
	 0VCKFrH3Jf8TiBuNLOhAYyrRlywA++a6/fIRpT/k1W7P9975LZQIHnPxEaDAEx9tFB
	 VkNmJ4HdI5QyOZfz7cr3qbm4dNV6Lr5pbqRWRwnMGfBgrXVWE76Tv2/E7s81yN2PyI
	 bsvnoW5gP1BKh2OVwEPC5MPMlcuHwJwOq+1cOCAQwaIGmYsD0+w2X4b/7zLijl7KCN
	 lkKVy2vBJpyN0AWUfIYSZMBpxIFBpxY5IZKYhzZdrLuuqMkyBKdApMsPKbNxfQJO0u
	 yGeijmypOSE3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1C374246A;
	Mon, 13 Apr 2026 00:04:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D558F237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 00:03:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6F90407A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 00:03:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FfbeK-UdGky9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 00:03:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1334; helo=mail-dy1-x1334.google.com;
 envelope-from=tactii@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 28CD0407A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28CD0407A1
Received: from mail-dy1-x1334.google.com (mail-dy1-x1334.google.com
 [IPv6:2607:f8b0:4864:20::1334])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 28CD0407A1
 for <intel-wired-lan@osuosl.org>; Mon, 13 Apr 2026 00:03:57 +0000 (UTC)
Received: by mail-dy1-x1334.google.com with SMTP id
 5a478bee46e88-2d868d014a5so536211eec.1
 for <intel-wired-lan@osuosl.org>; Sun, 12 Apr 2026 17:03:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776038637; x=1776643437;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bLZ2hGvxy/AXXUxBlYW4a7XQvCB2LmyGHSGavvwLlRA=;
 b=OFdimfm4O/W9vJrZqOMjnuJWFeVTp5958IJOZ3o8sCLumGnV6+7p0aRdqkEKJDTTuD
 BxENPUStqpYMPDDtJZl2vAH6EEj3FtCloNDSh41KE4a9TAo6sySSwubg/xqf7ekh5j4B
 2Ck229j9lnUnnU6r64iQ84EkVMy+UqZTKNmt48rVfccj0w3Q8r6skk2DquwZjY3pUsTI
 k6IhrFLPVpsEkLnxAP+tLJ1by5lTX5ybBBVSaKufI88n7umxC1kHT52gyI1hV2+73E1g
 3C2OJtugn/3znwviqeHNadC/Q888npWId2bzjgQwza5CkKIf+KTRoe5vVaPQQbqk+3O2
 Dxjg==
X-Gm-Message-State: AOJu0YzYc97whEREKRlhuL7hUoNZ18NvO8PlpRd/JipIpC10k4eTTnSm
 fWl5muUEqkCIaj5SeBaOG259UX5Ve2Tonwea5XSudJCrUE4P/aBHBiA01mbjWZLyYPg=
X-Gm-Gg: AeBDietp2jjH20qwUCV7z5ZTSoseghHba0s1mTUgpprvsalZeWNslQw6prArWiXhDnr
 pA/zeTlc6iBq+Wzsshvj97XcsQ8/g/6C4um7+sSM8zUI5s2FkcPPzPld3ulRYqIuuVPev1dGUFB
 NuX0RFSxK5N8K27XG1s/T3F+E76voaiOhv9861Hqzw9Uq6ZQUKvq+Sdsl2QXv7ZMG8C97VOsWZR
 NK1D63pMzBPKJ2HJevb9IyYFN1byteTCQ9s41SbYzG2xe1mt2UKK5xWehNUnZxA6PZeomO2WPOP
 3FK0TFUOsksou3Xc6yn008aPH/6rnEpHuHY9w9I/mQkKd2d55E6JhsJI/nWToCml4Pn3SkNUux+
 4bjjob/b6Zf5Y3njdon/d8v68zT12EXGSOACOY7XzC4qAg//WtVgvo4KFaR7aeo5JvKZaCA23F1
 GJEWo=
X-Received: by 2002:a05:7300:dc8b:b0:2d9:f0b3:1d98 with SMTP id
 5a478bee46e88-2d9f0b33952mr27219eec.7.1776038636511; 
 Sun, 12 Apr 2026 17:03:56 -0700 (PDT)
Received: from devobuntu.lan ([2600:6c5c:6b00:ba4::23])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2d561cd2a4esm18067085eec.16.2026.04.12.17.03.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Apr 2026 17:03:56 -0700 (PDT)
From: Matt Vollrath <tactii@gmail.com>
To: intel-wired-lan@osuosl.org
Cc: Matt Vollrath <tactii@gmail.com>, stable@vger.kernel.org,
 Avigail Dahan <avigailx.dahan@intel.com>
Date: Sun, 12 Apr 2026 20:03:25 -0400
Message-ID: <20260413000325.33379-1-tactii@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1776038637; x=1776643437; darn=osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=bLZ2hGvxy/AXXUxBlYW4a7XQvCB2LmyGHSGavvwLlRA=;
 b=W/Pq9fcLEwQR5nVig2Ym0dv8nHZNt4reHMdi8YExfmiZiO4nQBeRSLwdllHwhas1e1
 JhsqB11+psJouU0s9BHBpE00FqRr6WGLsxai7k/7x+f4ZTiqz7r4r1KiNFkooR1qLTeD
 mVmScWw38ez8wZIGDBVkzLG5bnZmZqtPCQEHS6l5751shRb/XCN7nbGKRddBJ6xGb20t
 tkaoNYjZpl2f9qz4la4BDo+fHzOr7BwZ9EP1NyIcml/d1PpQzX5/15dkqqriPJ7DiuuO
 OT6hyI3vrHB67CQApK4o+XREf4SjJf7FIFzVxDCQEA/R7v+mTeb30PgNDwo31oSbQVaa
 h5jA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=W/Pq9fcL
Subject: [Intel-wired-lan] [PATCH iwl-net v2] e1000e: Unroll PTP in probe
 error handling
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:intel-wired-lan@osuosl.org,m:tactii@gmail.com,m:stable@vger.kernel.org,m:avigailx.dahan@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[tactii@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,intel.com];
	NEURAL_HAM(-0.00)[-0.982];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EAD953E6701
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

If probe fails after registering the PTP clock and its delayed work,
these resources must be released.

This was not an issue until a 2016 fix moved the e1000e_ptp_init() call
before the jump to err_register.

Fixes: aa524b66c5ef ("e1000e: don't modify SYSTIM registers during SIOCSHWTSTAMP ioctl")
Signed-off-by: Matt Vollrath <tactii@gmail.com>
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 9befdacd6730..7ce0cc8ab8f4 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -7706,6 +7706,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 err_register:
 	if (!(adapter->flags & FLAG_HAS_AMT))
 		e1000e_release_hw_control(adapter);
+	e1000e_ptp_remove(adapter);
 err_eeprom:
 	if (hw->phy.ops.check_reset_block && !hw->phy.ops.check_reset_block(hw))
 		e1000_phy_hw_reset(&adapter->hw);
-- 
2.43.0

Changes:
v2:
* Apply the correct Fixes tag
* Target iwl-net
* Cc stable

