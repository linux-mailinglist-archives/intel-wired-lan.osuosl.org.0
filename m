Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 264358B9D00
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 May 2024 17:02:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DB1960E31;
	Thu,  2 May 2024 15:02:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 27VptjagX2gg; Thu,  2 May 2024 15:02:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46AED60E44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714662173;
	bh=AgYbELQ6gtIAnsZhwql/Vj7FiSMAsbvYTgHu1HlyF0U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=d0iMQR4waPcc2OSk7iP2hqpkd7u27gzCOcEU2NClbAwW3wCGUf6vy49FvFsfKRoXW
	 gplvCx82TfIkzMOkOkrYAlUWxhU1skalmZs+bLc3TKjGEmWibjTWjqxZaY4fSrHu5H
	 mzjC6tSlvCl3QVJ1cg24DAMSsXpxvngYgnnAFOhqpO9F6fqbHRZ03QGpi6zW8J/rLe
	 Is+RieVkidIG+2KWZrYwkrB/yVJr7KFus5gqc0SK1PRI7E6iFJL4c9sdhkxMXfQQN4
	 XFl+4GWWCApdV0/Z/+FGcA6GiJ8+aiL94aU1yEiWFf/J6KYaDUD7Z/Tjzf04XZZUW5
	 ib0hRzBgvvVAA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46AED60E44;
	Thu,  2 May 2024 15:02:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5C9DA1BF863
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2024 09:19:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4795E403A4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2024 09:19:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BzRbmR-j81Ay for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 May 2024 09:19:38 +0000 (UTC)
X-Greylist: delayed 435 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 02 May 2024 09:19:37 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CA56840106
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA56840106
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=en-wei.wu@canonical.com; receiver=<UNKNOWN> 
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CA56840106
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2024 09:19:37 +0000 (UTC)
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id CB9414249B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 May 2024 09:12:18 +0000 (UTC)
Received: by mail-pl1-f200.google.com with SMTP id
 d9443c01a7336-1e417e43c13so82820185ad.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 May 2024 02:12:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714641137; x=1715245937;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=AgYbELQ6gtIAnsZhwql/Vj7FiSMAsbvYTgHu1HlyF0U=;
 b=hMBO/GZrLYkdwDZ95NUF1oOKu42ZRgKdSITvEOcLLls/3ObvrLa2gFdXEM8ITf7q8U
 nbWMhuKGlYU5S2BSzVhitfxyK2KngkSjNfdz+qqR7qosSMB8I1WJKb9OXKCS6xrxlaLH
 JPFA4KydCID41wEGJ9RJsJZbVgyTM7jzoNy3vhGngRPRH7TEsCWF/A7kacat3vXQijiQ
 brXJu0qpn6CNM94ou1ITBdDjrsoVEpGOyfJx5DFetKZric7f9IfCGsfjhh4qYj5MSwoE
 1Vk12PR4KSfz+EJTfUuXi4KzXYXiWFoCVzi9h6q8nm9GBzXTPm2o3YIKTKMXng2G6TIz
 Bydg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVZYOn7sRQnGMqs3g8yDy5NfTPcaI3R01IBpd8wZA3vUWe6+nHDI5R6UU65fU1b8BHN9tU0XqDlyCXXFkdmiaVCBwNF7mFv5dEL4rYdaw39CQ==
X-Gm-Message-State: AOJu0YxHMyA9/Qn+MiPZKnOL/8zMrc+9QGwzKKfh6CqeExoT8daPpLN4
 wJrG2z9FeyQIJnhY5juAie+n5z0fLIyp1rOTvQYAAh3WfYZoaSC/Vh45cb8x72GNsRUTAtoAmPR
 Fw/bzQbmZ9XqNoF5rvbbXff016IQxYx2R6awE+BBqefehFPYHY9mtoN+ge5Vb1DRSVFA4U2Ge5r
 wZBWxjfpg=
X-Received: by 2002:a17:903:2312:b0:1e3:dfdc:6972 with SMTP id
 d18-20020a170903231200b001e3dfdc6972mr6747436plh.9.1714641137321; 
 Thu, 02 May 2024 02:12:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGw1zAhwq5ZdDzzQKMd8+CBt/+8GW9Y3OXsgWotH06aOH7F9NJd6OIBnq5uXNr+zk5WDR2eEQ==
X-Received: by 2002:a17:903:2312:b0:1e3:dfdc:6972 with SMTP id
 d18-20020a170903231200b001e3dfdc6972mr6747417plh.9.1714641136990; 
 Thu, 02 May 2024 02:12:16 -0700 (PDT)
Received: from rickywu0421-ThinkPad-X1-Carbon-Gen-11..
 (2001-b400-e239-aa6a-7bb4-902b-1963-242d.emome-ip6.hinet.net.
 [2001:b400:e239:aa6a:7bb4:902b:1963:242d])
 by smtp.gmail.com with ESMTPSA id
 lc7-20020a170902fa8700b001e3e081dea1sm804157plb.0.2024.05.02.02.12.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 May 2024 02:12:16 -0700 (PDT)
From: Ricky Wu <en-wei.wu@canonical.com>
To: jesse.brandeburg@intel.co
Date: Thu,  2 May 2024 17:12:15 +0800
Message-Id: <20240502091215.13068-1-en-wei.wu@canonical.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 02 May 2024 15:02:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1714641138;
 bh=AgYbELQ6gtIAnsZhwql/Vj7FiSMAsbvYTgHu1HlyF0U=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=j2KimVi8S8taska1W+0x9oHYugfawfjhqGM+8nVC48X22wMqPfdXM2x40616Sluki
 A9fZepNwMNC6SZCn1o6P08CCiCz5WeB/MGFxmEogBSRjuDy3Ad/r3gngCyT2rohnqW
 7osEJqn7Y2c8mVkupznIyb31RDpmqterArtQdqN92PyLzkwcP0Kiyj6NY7+moZLclW
 922ULOCHboSxcnHhMNvq2n4IiCk4rwgBTWna28Bs7dbcwYfdvkUvoK84eZ4zDe+pF5
 aFOI0xqZCkXJwzYTyXHB5revwkMgGOvtSilrRinE7L9C4/Ooo2L4D6YAhou8qdS1s9
 W8tcFdt0dEkRA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=j2KimVi8
Subject: [Intel-wired-lan] [PATCH] e1000e: fix link fluctuations problem
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, rickywu0421@gmail.com, linux-kernel@vger.kernel.org,
 en-wei.wu@canonical.com, edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As described in https://bugzilla.kernel.org/show_bug.cgi?id=218642,
some e1000e NIC reports link up -> link down -> link up when hog-plugging
the Ethernet cable.

The problem is because the unstable behavior of Link Status bit in
PHY Status Register of some e1000e NIC. When we re-plug the cable,
the e1000e_phy_has_link_generic() (called after the Link-Status-Changed
interrupt) has read this bit with 1->0->1 (1=link up, 0=link down)
and e1000e reports it to net device layer respectively.

This patch solves the problem by passing polling delays on
e1000e_phy_has_link_generic() so that it will not get the unstable
states of Link Status bit.

Also, the sleep codes in e1000e_phy_has_link_generic() only take
effect when error occurs reading the MII register. Moving these codes
forward to the beginning of the loop so that the polling delays passed
into this function can take effect on any situation.

Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c |  5 ++++-
 drivers/net/ethernet/intel/e1000e/phy.c     | 10 ++++++----
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index f9e94be36e97..c462aa6e6dee 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -1427,8 +1427,11 @@ static s32 e1000_check_for_copper_link_ich8lan(struct e1000_hw *hw)
 	/* First we want to see if the MII Status Register reports
 	 * link.  If so, then we want to get the current speed/duplex
 	 * of the PHY.
+	 * Some PHYs have link fluctuations with the instability of
+	 * Link Status bit (BMSR_LSTATUS) in MII Status Register.
+	 * Increase the iteration times and delay solves the problem.
 	 */
-	ret_val = e1000e_phy_has_link_generic(hw, 1, 0, &link);
+	ret_val = e1000e_phy_has_link_generic(hw, COPPER_LINK_UP_LIMIT, 100000, &link);
 	if (ret_val)
 		goto out;
 
diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
index 93544f1cc2a5..ef056363d721 100644
--- a/drivers/net/ethernet/intel/e1000e/phy.c
+++ b/drivers/net/ethernet/intel/e1000e/phy.c
@@ -1776,7 +1776,13 @@ s32 e1000e_phy_has_link_generic(struct e1000_hw *hw, u32 iterations,
 	u16 i, phy_status;
 
 	*success = false;
+
 	for (i = 0; i < iterations; i++) {
+		if (usec_interval >= 1000)
+			msleep(usec_interval / 1000);
+		else
+			udelay(usec_interval);
+
 		/* Some PHYs require the MII_BMSR register to be read
 		 * twice due to the link bit being sticky.  No harm doing
 		 * it across the board.
@@ -1799,10 +1805,6 @@ s32 e1000e_phy_has_link_generic(struct e1000_hw *hw, u32 iterations,
 			*success = true;
 			break;
 		}
-		if (usec_interval >= 1000)
-			msleep(usec_interval / 1000);
-		else
-			udelay(usec_interval);
 	}
 
 	return ret_val;
-- 
2.40.1

