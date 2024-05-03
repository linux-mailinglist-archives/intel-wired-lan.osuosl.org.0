Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DBF8BAFC1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 May 2024 17:28:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F54241FC5;
	Fri,  3 May 2024 15:28:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id olN_ZojEvFPs; Fri,  3 May 2024 15:28:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12A3A416CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714750094;
	bh=iB4OipaIfb/mZuInqSZh9H4ftbRwcDQwJzI2DOUWXIY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zYoZg4mJKScEvNjOY9O733zhOBvA3BnoA2/tJn6Q+jnFQttttkly4944A+f2HZ4VJ
	 3PdkSJcnSN4Ue6I05Ld3yDSsalMg8bw1jSGNpEQBHg9t6bGUYy3ic+Niz/7a0vCjzH
	 ql1EVQEFpb0Zq3ouealL37XBt/llxrdo/UHp0WeuvGCmdZadKaiCMGszDgqRxYHkxL
	 XKPdbaQkrOiAfw6Nx/QG1ujtLUGs5PmfRs61Zwoo4592TQw9uInBIObDqAtFJw9dHP
	 sEwyNQOV5HmkS6wg2ysQCDyQQcJeygBcqNpBMQEPMcI74u7OZDToFdqR9HYkL9hrep
	 XqMhji6u01XYQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12A3A416CA;
	Fri,  3 May 2024 15:28:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E5781BF282
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 10:18:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B2DF4013B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 10:18:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K8rhyTNYEk6A for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 May 2024 10:18:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=en-wei.wu@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 24DD540AFC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24DD540AFC
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 24DD540AFC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 10:18:45 +0000 (UTC)
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com
 [209.85.215.199])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9583B4249B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 10:18:43 +0000 (UTC)
Received: by mail-pg1-f199.google.com with SMTP id
 41be03b00d2f7-5cdfd47de98so8388179a12.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 May 2024 03:18:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714731522; x=1715336322;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=iB4OipaIfb/mZuInqSZh9H4ftbRwcDQwJzI2DOUWXIY=;
 b=sNS7gfTQ9AIHvQ87G1fY8URPg564nBzSSuqEcu3w+gUMAENzS18jUxYnnBh8AQ22jC
 96t12gDZZCPxmTIcey0lkeyV6cTEicmkShV/56Asf2PD0/PeG+cFoT8WCs241s1i2hZQ
 9+kcCNF6cl0fXTXG4wH7iZDC/7c0SgvNqs59IokL1NKVLGpdQSr/T9ZuD6MbbGa7qshK
 D2JLWR5xPS2iSrs4ug2mXvAoX//8sciMah3K4nx1QhRO+IeQMfJWycTrH3h+h6c6/cJ2
 dU8e43Wev4vMEJl/juumaBwtRrbovBsfUJCpbG7NYW+a1CaZsWQwvkS1VzcpX02OOo3o
 gCGA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW9m/9xO+X4Q9tGLiiJzrOJddpFurLD0EG3oB+NxK0NXTqCpDX5k2dDr+8WBRpR1TiSyI2y52xgdu+MjV2trBmlBdM7emtNEzIYayrkrQlBpA==
X-Gm-Message-State: AOJu0YyKRiaqRjE6v1cjmO1TieGag+iRejOM9ycE6x3Eir6ldIk0bXmY
 jJYqXezQ/lxTSxSr3hDt/I4QnHlmlIFp2/8AlmyP9rpGGsf2z/eGklzD0M+0oIYh/5gNXEsnu1l
 UpLo9P0/m0uvNT4IyT7bjHM5VJma0Us0knlTJvREqc8NYJIj3j2n9GNS8AqbQPaj6WE6+m8Au7W
 24dMmBJaY=
X-Received: by 2002:a17:902:8649:b0:1ea:cb6f:ee5b with SMTP id
 y9-20020a170902864900b001eacb6fee5bmr1940322plt.38.1714731521949; 
 Fri, 03 May 2024 03:18:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFwyUBeTmPsbqBwABOewqSgA4nrdN7o3IfMvwH8oa6fPK+omPARISGklOcYEFTjimrNDuy6hA==
X-Received: by 2002:a17:902:8649:b0:1ea:cb6f:ee5b with SMTP id
 y9-20020a170902864900b001eacb6fee5bmr1940302plt.38.1714731521584; 
 Fri, 03 May 2024 03:18:41 -0700 (PDT)
Received: from rickywu0421-ThinkPad-X1-Carbon-Gen-11..
 (2001-b400-e23f-5745-953d-200f-4ef8-798c.emome-ip6.hinet.net.
 [2001:b400:e23f:5745:953d:200f:4ef8:798c])
 by smtp.gmail.com with ESMTPSA id
 e11-20020a170902784b00b001e22e8a859asm2944031pln.108.2024.05.03.03.18.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 May 2024 03:18:41 -0700 (PDT)
From: Ricky Wu <en-wei.wu@canonical.com>
To: jesse.brandeburg@intel.com
Date: Fri,  3 May 2024 18:18:36 +0800
Message-Id: <20240503101836.32755-1-en-wei.wu@canonical.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 03 May 2024 15:28:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1714731523;
 bh=iB4OipaIfb/mZuInqSZh9H4ftbRwcDQwJzI2DOUWXIY=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=wXTqLfwBiP5yhXaY0KU8Ioj5I5QO6xGUjlHPJUlXGSSWM/rfq7i2bfOuocTffG8hA
 B32JmEraUQw7g+eMFInjTyaa6+rrAGTQwL7zxFLYhr5CFtLHPzQ72Cbd3lsxvcscML
 HAf3LMIkksD0nA21I6U338NUpblM/wqOX6xLyNkwDq9PqjlblbAUCu5+9ezyPBFEh+
 8JiY9lwJai9JXxSgCiQC9Na7MNibUb84nBryQGgABbj9uJaHgyyw5EQ+gUbh0v5Pz+
 Yy87zhwGIfPpaZlFHp/K0Up9e8BvmDBN1+dUm4xkXnq55sG+nZ+SECsVGmmzdtnty0
 EeU+NnTl2VL9A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=wXTqLfwB
Subject: [Intel-wired-lan] [PATCH v2 2/2] e1000e: fix link fluctuations
 problem
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
Intel I219-LM reports link up -> link down -> link up after hot-plugging
the Ethernet cable.

The problem is because the unstable behavior of Link Status bit in
PHY Status Register of some e1000e NIC. When we re-plug the cable,
the e1000e_phy_has_link_generic() (called after the Link-Status-Changed
interrupt) has read this bit with 1->0->1 (1=link up, 0=link down)
and e1000e reports it to net device layer respectively.

This patch solves the problem by passing polling delays on
e1000e_phy_has_link_generic() so that it will not get the unstable
states of Link Status bit.

Link: https://bugzilla.kernel.org/show_bug.cgi?id=218642
Fixes: 7d3cabbcc86 ("e1000e: disable K1 at 1000Mbps for 82577/82578")
Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
---

In v2:
* Split the sleep codes part into PATCHSET [1/2]
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index f9e94be36e97..68f5698a22b0 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -1428,7 +1428,17 @@ static s32 e1000_check_for_copper_link_ich8lan(struct e1000_hw *hw)
 	 * link.  If so, then we want to get the current speed/duplex
 	 * of the PHY.
 	 */
-	ret_val = e1000e_phy_has_link_generic(hw, 1, 0, &link);
+	/* We've seen that I219-LM sometimes has link fluctuations
+	 * (link up -> link down -> link up) after hot-plugging the cable.
+	 * The problem is caused by the instability of the Link Status bit
+	 * (BMSR_LSTATUS) in MII Status Register. The average time between
+	 * the first link up and link down is between 3~4 ms.
+	 * Increasing the iteration times and setting up the delay to
+	 * 100ms (which is safe) solves the problem.
+	 * This behavior hasn't been seen on other NICs and also not being
+	 * documented in datasheet/errata.
+	 */
+	ret_val = e1000e_phy_has_link_generic(hw, COPPER_LINK_UP_LIMIT, 100000, &link);
 	if (ret_val)
 		goto out;
 
-- 
2.40.1

