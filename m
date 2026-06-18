Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CXVyK1yfM2p5EQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 09:33:48 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FC969E19F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 09:33:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=dgKNvsUg;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEFF14132D;
	Thu, 18 Jun 2026 07:33:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B4rY4rDCorNP; Thu, 18 Jun 2026 07:33:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7854F4130A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781768022;
	bh=2ThiB77d7N7pxREshEF4WAMO6IHWL1PWSzLqjBsAI7o=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=dgKNvsUgFe95umjrnO1Jof3BN3APHJKGUCnxafDoRSJrUyC3+HwvHwWQuj3iDBcop
	 /QV+8oYslDHddPP3FBmO4TIJod2OMOVdP80mawWDi5iJITsZShKC/oGhWL4s0ikCUF
	 lCKDhTy2MNekHPl51kUMjyE1ZkeR9rIh4+Blej/+7N2qhNVgamZbLppZMNzOUK0AWO
	 bMdN/CDIPBln96MYCLOQcGQEOQD1WfkzlUKAqgLLaWDSpzGdoySZoXvzs4DOVkMThE
	 XJq578X5Hmee3E0GBQKwLS1/2w7+0BCCsyco8fRLNmP9k49pdKdgCKpQrU4+8IaXPc
	 EK4iSsUIuv/3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7854F4130A;
	Thu, 18 Jun 2026 07:33:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id AE8BB358
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 07:33:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC1B940D76;
 Thu, 18 Jun 2026 07:33:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pm9eA49Zxh-D; Thu, 18 Jun 2026 07:33:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52e; helo=mail-pg1-x52e.google.com;
 envelope-from=acelan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A557440D18
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A557440D18
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A557440D18
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 07:33:39 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id
 41be03b00d2f7-c897468a244so133500a12.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 00:33:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781768019; x=1782372819;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2ThiB77d7N7pxREshEF4WAMO6IHWL1PWSzLqjBsAI7o=;
 b=RlSTcu5oPpDPXbORtoqOxOtYi9SmN8KJPVIsnTatZyoYcCVb1TdBTgBJ+mDKncq2y6
 O/btHNVGDdn91n/fculEY5z/3h3kGLYU4MoWXE5BYAaKb0gLV3V8gXaSvDitYEHC3EdR
 zlhwBg7zsLgRdb3yH2ruLL/kdhvOLfNE7FdbfDJlD2O5caPiXiOVWn6Rrd34rPh4foBR
 PCX+8PSQfCyof1sYxm5+yaF8tDJMMEsZQJbytqSUl0wrDC3bydms31G3C9gPR3M06+ao
 4iKVOvEAI6LxfMVhM5ngTFcvA7MvApKwFwO1bXXH18KMfvkxNDgOcopW2UK3kzgrrkzY
 eQbQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ+GbzJUQTFjlXsgag5CbaSkrzJxxpKE4BuicSyr8saL6iEvGUiZn4RN/dwWBHeJUm7e1u8aAfpp+y5wdWLOG2A=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzx41hRH892rl4VS/zb8zxr7lri5aaKxASLv0/07N7W4HnkJqqV
 bXPLXCV3Ptn4jNslg7h22++Zh+2TKzvvT6SxYdSKxjP9bNGIaqUMMyNB
X-Gm-Gg: Acq92OGVzQTHrYR3OVA1siSFoBiX4g3GfLHk+x+3lOEjBfNiAGiqv/qD2URRct55Ah6
 cxLKRD30zzmasVJpScL1d74vmEiamybWdq3sAdy6UR+RZR1tQZcGDhID+4t+OOjGxnS6V0Twpww
 uMNEHQqK4Z4CkOTeIfvZChpst6Qj4GOkc7a3jqVLHySKE8fXL/wPLZVRSQs+2RnJ6mez2p+U0Iy
 FJVlW/+nnZakYvlVw7fuA3SdAeK/xmLmtFMe+3cPN3C/MeIGHX64xu+kQcUTqileUj/o3l0R4Ic
 r7faQlQJcEQq22RtzFIu9V838GggYi1QRFC05VmpiX+6GOhr7/Z8Vs0lVScpGlVdcFY43maUNG6
 L8TZe5o6gyy6PY8QRyz4WhfvVvb9SWM4kzL1NnCZ6m8YcLTQmJAKr9aWOj5h/ps7n5imlpd0Uzi
 dpV3He9/UY2dEKvswRLyoWAO7mZi5LQ+JyaBssnKDBRM+dtu+nGNjq/COa/QphvOqcJB4E
X-Received: by 2002:a05:6a00:3318:b0:842:655d:1232 with SMTP id
 d2e1a72fcca58-8452414d108mr7957295b3a.0.1781768018779; 
 Thu, 18 Jun 2026 00:33:38 -0700 (PDT)
Received: from acelan-Precision-5480 (211-75-139-220.hinet-ip.hinet.net.
 [211.75.139.220]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-8434a934a97sm18630390b3a.0.2026.06.18.00.33.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2026 00:33:37 -0700 (PDT)
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2026 15:33:22 +0800
Message-ID: <20260618073324.1843310-1-acelan.kao@canonical.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1781768019; x=1782372819; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=2ThiB77d7N7pxREshEF4WAMO6IHWL1PWSzLqjBsAI7o=;
 b=TGZPowBAj+XOULHOhGW3Dqtp0w/x7J0dD4iJmkd4dRmrrfLjfDjjOBv/yDE/0m4rTP
 SpicUy8XoGc9CW4lzOI0kcz6Vu/FckGTpAl4fKDE9/ePCPQYmwa30q+6u+2hG5JzBoBw
 eHbxeui2Q0iOrBlu0agInKiiEI1XP6TiGl6IvZJFhw9j6c4Qfd6xTv3tTtApfBMcbj1g
 PHVu1a5lSah1kL/+0AusX8OL93TfZSFjDVQL/MsNJvqe25qN2jRRWRBQjPgPFoz8W6Zi
 ZzRvBuX87rQi4bvp1oNXCWsl1jSKb58OuY1PQPkoxxDH1cYDUcsm2kFfN0APk9xFoEId
 MH1g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=fail (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=TGZPowBA
Subject: [Intel-wired-lan] [PATCH 1/2] igc: Wait for MAC passthrough after
 reset
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
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 17FC969E19F

Some systems support MAC passthrough for dock Ethernet controllers by
having firmware rewrite the receive address registers after the controller
reset completes.

igc resets the controller before reading RAL0/RAH0, so that reset can
restore the controller native MAC address temporarily. If the driver reads
the registers immediately, it can race the firmware rewrite and keep the
native dock MAC instead of the host passthrough MAC.

For LMVP devices, poll RAL0/RAH0 after reset and before reading the MAC
address. Stop once the address registers change to another valid Ethernet
address, allowing firmware a bounded window to complete the passthrough
update.

Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 48 +++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 2c9e2dfd8499..fa9752ed8bc5 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -11,6 +11,7 @@
 #include <net/pkt_sched.h>
 #include <linux/bpf_trace.h>
 #include <net/xdp_sock_drv.h>
+#include <linux/etherdevice.h>
 #include <linux/pci.h>
 #include <linux/mdio.h>
 
@@ -69,6 +70,52 @@ static const struct pci_device_id igc_pci_tbl[] = {
 
 MODULE_DEVICE_TABLE(pci, igc_pci_tbl);
 
+static void igc_read_rar0(struct igc_hw *hw, u8 *addr, u32 *ral, u32 *rah)
+{
+	*ral = rd32(IGC_RAL(0));
+	*rah = rd32(IGC_RAH(0));
+
+	addr[0] = *ral & 0xff;
+	addr[1] = (*ral >> 8) & 0xff;
+	addr[2] = (*ral >> 16) & 0xff;
+	addr[3] = (*ral >> 24) & 0xff;
+	addr[4] = *rah & 0xff;
+	addr[5] = (*rah >> 8) & 0xff;
+}
+
+static bool igc_is_lmvp_device(struct pci_dev *pdev)
+{
+	switch (pdev->device) {
+	case IGC_DEV_ID_I225_LMVP:
+	case IGC_DEV_ID_I226_LMVP:
+		return true;
+	default:
+		return false;
+	}
+}
+
+static void igc_wait_for_lmvp_mac_passthrough(struct pci_dev *pdev,
+					      struct igc_hw *hw)
+{
+	u8 addr[ETH_ALEN] __aligned(2);
+	u32 orig_ral, orig_rah;
+	u32 ral, rah;
+	int i;
+
+	if (!igc_is_lmvp_device(pdev))
+		return;
+
+	igc_read_rar0(hw, addr, &orig_ral, &orig_rah);
+
+	for (i = 0; i < 100; i++) {
+		msleep(100);
+		igc_read_rar0(hw, addr, &ral, &rah);
+		if ((ral != orig_ral || rah != orig_rah) &&
+		    is_valid_ether_addr(addr))
+			return;
+	}
+}
+
 enum latency_range {
 	lowest_latency = 0,
 	low_latency = 1,
@@ -7259,6 +7306,7 @@ static int igc_probe(struct pci_dev *pdev,
 	 * known good starting state
 	 */
 	hw->mac.ops.reset_hw(hw);
+	igc_wait_for_lmvp_mac_passthrough(pdev, hw);
 
 	if (igc_get_flash_presence_i225(hw)) {
 		if (hw->nvm.ops.validate(hw) < 0) {
-- 
2.53.0

