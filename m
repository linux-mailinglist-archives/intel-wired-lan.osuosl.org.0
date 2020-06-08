Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A32D1F220E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jun 2020 01:06:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 116FA860C6;
	Mon,  8 Jun 2020 23:06:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pU6PxFNEpckP; Mon,  8 Jun 2020 23:06:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 076AB85D68;
	Mon,  8 Jun 2020 23:06:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F2EE51BF381
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:06:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D846922767
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:06:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J2oapQDBJLVS for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2020 23:06:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 17245204FB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:06:21 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1628E2076A;
 Mon,  8 Jun 2020 23:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657580;
 bh=BL5eAXPRlC1IBRiuQcN180O4CGnUQWKkqqkqjGc2e78=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QrQ/jl+8BmC9KzK7tx4QXEj5RT5haS7ZFaWIQOW+fhDuVBZHPdvVV2Pnq2R6TEGp9
 P1KR8DCyQvxqsL1URqbFQ9UHLDGfoonRr1pUmEnegW0acXxnCpEPzMYy+KaTftL5JH
 jzJ2s+FMQVTREHOOEZWZa01BnSEFD4q0sq29ZLeY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  8 Jun 2020 19:01:43 -0400
Message-Id: <20200608230607.3361041-10-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.7 010/274] igc: Fix default MAC
 address filter override
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
Cc: Sasha Levin <sashal@kernel.org>, Andre Guedes <andre.guedes@intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andre Guedes <andre.guedes@intel.com>

[ Upstream commit ac9156b27564a089ec52f526bfcb59f61c34e7c6 ]

This patch fixes a bug when the user adds the first MAC address filter
via ethtool NFC mechanism.

When the first MAC address filter is added, it overwrites the default
MAC address filter configured at RAL[0] and RAH[0]. As consequence,
frames addressed to the interface MAC address are not sent to host
anymore.

This patch fixes the bug by calling igc_set_default_mac_filter() during
adapter init so the position 0 of adapter->mac_table[] is assigned to
the default MAC address.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 69fa1ce1f927..c7020ff2f490 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2325,7 +2325,9 @@ static void igc_configure(struct igc_adapter *adapter)
 	igc_setup_mrqc(adapter);
 	igc_setup_rctl(adapter);
 
+	igc_set_default_mac_filter(adapter);
 	igc_nfc_filter_restore(adapter);
+
 	igc_configure_tx(adapter);
 	igc_configure_rx(adapter);
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
