Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3Tz3EV+fM2p6EQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 09:33:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0C569E1A5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 09:33:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=BtUWjgPY;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1046541322;
	Thu, 18 Jun 2026 07:33:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hokE6TMFDTzU; Thu, 18 Jun 2026 07:33:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8599D41338
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781768027;
	bh=HC8m00hNT/zsxkHYFRFPGw4zukh8ZUZXCbr2Z4/rGi8=;
	h=To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=BtUWjgPYIy9N7P4BOy9W1wUfqhHHNjRUXCcbq0887cxVaS3JaRDEDxbOXbvro0EjI
	 IOcds8h7iibXlFUHkDH/ItuK+bkUwfKPlkbfYiEMBT6WHAXOuf3nuox+bUYTvHPOqp
	 wwhodITALcAiA/As8dbPNodJLWfolP4X8mMuPSwntTumBNugQp4gDCADeFH3VoJ6Va
	 DJQiVvE/JOe9MCRZVeT2KoYKOSsJKLSvx46Ec7+8DOJprm6J9we0cxc7uXH5BNLtcy
	 tf9IoOg49+6ef1HAtDKurBDz0CWaq5E0HHM9k+eN1AlmFGFmnFECErbKYJrkTAO2OD
	 8WC9sJTKCvngQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8599D41338;
	Thu, 18 Jun 2026 07:33:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E882358
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 07:33:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 24DBA80C44;
 Thu, 18 Jun 2026 07:33:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FZRcLk0xS7RK; Thu, 18 Jun 2026 07:33:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::430; helo=mail-pf1-x430.google.com;
 envelope-from=acelan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 51C9780BB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51C9780BB3
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 51C9780BB3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 07:33:44 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id
 d2e1a72fcca58-8422f148dfcso323212b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 00:33:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781768023; x=1782372823;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=HC8m00hNT/zsxkHYFRFPGw4zukh8ZUZXCbr2Z4/rGi8=;
 b=I5GL6vUSgop8C+0t8kd8L0VRJjTQ8Mp+7Dpx7JviQ0OOHDrYpEWeifUR6KKz+eR01S
 ++R74ggDD5U3EDEgIiowow1WDfoDuLPJNQFfPb6QdmzFdpVpxltNWOfvc/KlQQ0ieQaA
 HaJF6xOqs2MtjfuN7zwHjCvVRBNkERjs8rsjI5Gx/Lgk6WHmErO0aQDqct6T2nCnYCKN
 yOXEM0bmfWGizfekxvwR9uFlubKjAyAD/uPVzZ/35eQjvqsw1yagStkVsJedWTrz9/qh
 WHe8c+QC1Zb9GKfN7n0iGR4Zi36y45HicOpXpViFmo93dCHkfCz9oLmMQEHC6I5HaYwp
 opJQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ+wM6LvOd1zTUGmMczGStGpjkIPJ+6hkw4st9/CAQ7Jgdh+37bn+jqT1RA+gZcHOgA90HI9RY45Mg3pmzE/1NU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxNCxy++azb7i77p77B6AlJxOjUkTEPFPO71PqnkQb4lGrojKnW
 rLy0G4qeoOiWbSD+522RdBN7/K0nViTq9HFk8bn1NPvmpTGNFOWbNeWv
X-Gm-Gg: AfdE7clFCjpRycUCh/SdzalLep0u7NUle+Y5rK6LbXuVfmjKJXq6Qe292KXNx1EaOIU
 aC8KqtpmaDtoYiJo26NiRcqy00Y/VefRwIUUb+82VRXBTcvM6h6hLookC8SH0VlgPf2Xt9lRZ/H
 4ECBpZmvqxqMqLB7Sq84Paj7RAWapXE96TBipIBBtXkUnMdrs4LfOX8EFp0fqIcWPDcqybsxNHm
 VeKAElyMTEhbCdgup0v1NGq8kpURgnV0NmeDHUJf7OnGivuxgbpnRPcKe2Um4fp34lugweub2nF
 mSTmQzU3snJD0lQrSUa9BM+ASX9yizWSKwTyiZIvzpX6dK0JVGywsWx1xK6nVCLM92WJp4KrqcT
 N7OHkm0bYjzm8h61pL1ivqKldR5tawdFVBRPzyjRgpBVINbbigUhE4OcDB9dFuk27QJE+B0VNN+
 bn2lemf/SJCyuEYPPitQjK9lGC2peiVsnuNHTK/i83LuWqcnTp9M6Xu7bkRetVMtOeP8BL
X-Received: by 2002:a05:6a00:124d:b0:842:5b63:6114 with SMTP id
 d2e1a72fcca58-8452447e116mr7603109b3a.13.1781768023376; 
 Thu, 18 Jun 2026 00:33:43 -0700 (PDT)
Received: from acelan-Precision-5480 (211-75-139-220.hinet-ip.hinet.net.
 [211.75.139.220]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-8434a934a97sm18630390b3a.0.2026.06.18.00.33.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2026 00:33:42 -0700 (PDT)
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2026 15:33:23 +0800
Message-ID: <20260618073324.1843310-2-acelan.kao@canonical.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260618073324.1843310-1-acelan.kao@canonical.com>
References: <20260618073324.1843310-1-acelan.kao@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1781768023; x=1782372823; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HC8m00hNT/zsxkHYFRFPGw4zukh8ZUZXCbr2Z4/rGi8=;
 b=Z/00BW1lfmF+qPhf/jAvfK40Y9DUXj8z6Vmb2uM4t5PbiHm+5OmAbppQzw54ONXSe/
 71DHFwSdj7RFDqAQGhetIn3P8hLZYPdXv6FOqdYw7ZnNmkIoz0uci+tgkO1LzS8ewNL0
 ooQwcf2qDy/NuO+cYmfP10jx8nQymLOqD76zva8Oo5Tb7caREC2wvFanMuJZKIGehEMb
 TG8XHmBafyUbfYlbbJTzUmwsEBuModshCG0h/vZOc+Pl7qAGQVrN09Sc5JEjs91yEhs7
 ODljUZsqY/XrgIYjqhv3sG3vYRlwc1fcNZl+v6+qEHJzCbTLUUNw42l0lDA+VXDqIupr
 0JlA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=fail (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=Z/00BW1l
Subject: [Intel-wired-lan] [PATCH 2/2] igc: Cache MAC passthrough address
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
From: "Chia-Lin Kao \(AceLan\) via Intel-wired-lan"
 <intel-wired-lan@osuosl.org>
Reply-To: "Chia-Lin Kao \(AceLan\)" <acelan.kao@canonical.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[acelan.kao@canonical.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB0C569E1A5

Remember the MAC address that firmware writes into RAL0/RAH0 after reset.
On later probes, wait for that cached passthrough address instead of using
any valid register change as the completion condition.

This keeps the first probe conservative and lets later dock replug cycles
use the known passthrough address once the platform has already shown that
firmware can rewrite the address registers.

Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 41 +++++++++++++++++++++--
 1 file changed, 39 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index fa9752ed8bc5..cf87a82f1bf8 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -12,6 +12,7 @@
 #include <linux/bpf_trace.h>
 #include <net/xdp_sock_drv.h>
 #include <linux/etherdevice.h>
+#include <linux/mutex.h>
 #include <linux/pci.h>
 #include <linux/mdio.h>
 
@@ -70,6 +71,32 @@ static const struct pci_device_id igc_pci_tbl[] = {
 
 MODULE_DEVICE_TABLE(pci, igc_pci_tbl);
 
+static bool igc_mac_passthrough_cached;
+static u8 igc_mac_passthrough_addr[ETH_ALEN] __aligned(2);
+static DEFINE_MUTEX(igc_mac_passthrough_lock);
+
+static bool igc_get_mac_passthrough_addr(u8 *addr)
+{
+	mutex_lock(&igc_mac_passthrough_lock);
+	if (!igc_mac_passthrough_cached) {
+		mutex_unlock(&igc_mac_passthrough_lock);
+		return false;
+	}
+
+	ether_addr_copy(addr, igc_mac_passthrough_addr);
+	mutex_unlock(&igc_mac_passthrough_lock);
+
+	return true;
+}
+
+static void igc_cache_mac_passthrough_addr(u8 *addr)
+{
+	mutex_lock(&igc_mac_passthrough_lock);
+	ether_addr_copy(igc_mac_passthrough_addr, addr);
+	igc_mac_passthrough_cached = true;
+	mutex_unlock(&igc_mac_passthrough_lock);
+}
+
 static void igc_read_rar0(struct igc_hw *hw, u8 *addr, u32 *ral, u32 *rah)
 {
 	*ral = rd32(IGC_RAL(0));
@@ -97,22 +124,32 @@ static bool igc_is_lmvp_device(struct pci_dev *pdev)
 static void igc_wait_for_lmvp_mac_passthrough(struct pci_dev *pdev,
 					      struct igc_hw *hw)
 {
+	u8 cached_addr[ETH_ALEN] __aligned(2);
 	u8 addr[ETH_ALEN] __aligned(2);
 	u32 orig_ral, orig_rah;
 	u32 ral, rah;
+	bool cached;
 	int i;
 
 	if (!igc_is_lmvp_device(pdev))
 		return;
 
+	cached = igc_get_mac_passthrough_addr(cached_addr);
 	igc_read_rar0(hw, addr, &orig_ral, &orig_rah);
+	if (cached && ether_addr_equal(addr, cached_addr))
+		return;
 
 	for (i = 0; i < 100; i++) {
 		msleep(100);
 		igc_read_rar0(hw, addr, &ral, &rah);
-		if ((ral != orig_ral || rah != orig_rah) &&
-		    is_valid_ether_addr(addr))
+		if (cached) {
+			if (ether_addr_equal(addr, cached_addr))
+				return;
+		} else if ((ral != orig_ral || rah != orig_rah) &&
+			   is_valid_ether_addr(addr)) {
+			igc_cache_mac_passthrough_addr(addr);
 			return;
+		}
 	}
 }
 
-- 
2.53.0

