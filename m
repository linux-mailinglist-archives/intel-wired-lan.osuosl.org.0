Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cIDLOeaeo2lzIgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 01 Mar 2026 03:05:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 705831CCE62
	for <lists+intel-wired-lan@lfdr.de>; Sun, 01 Mar 2026 03:05:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 006778406A;
	Sun,  1 Mar 2026 02:05:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DAi5_gggAdb4; Sun,  1 Mar 2026 02:05:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0079A84066
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772330723;
	bh=UGzfgyzbW1nsJvIIMiksRTjx37TSJ/v+vosEHsdP80o=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=R/CqwtuEYvs1nNRxOX6tt+mObJDv0wgR2gVnQl3shQggk8a1iwqD8kdlnAT/Z2kgj
	 P9MyLbbry5SWc9ObXs1eYKYkmNDWGvM6fbH/+g55jseNS7LcnJzsWE5t/oIDnp0Uh9
	 UpmEJnoEuW8tc6Xba5xI47WfzuOI0CD0Up7BLxZPeqIp+7wtTBY0owTehMcnT6wmxh
	 ej92aBBSz//ZfzVopQB4x2SwKdvP2gUzNdQ7BdVftrDUM8Kv79yZXCqNR6zueNuzfZ
	 901UkAXhrOy5AMRX2tihR2TLK6GOGN7mvfGUjoqz/c8OeqMTaJ72ulcDHnO3LqgQO5
	 6c3soKklCUh6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0079A84066;
	Sun,  1 Mar 2026 02:05:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A2C51EB
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Mar 2026 02:05:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7BB2841C55
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Mar 2026 02:05:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FCxlF2HWNDSV for <intel-wired-lan@lists.osuosl.org>;
 Sun,  1 Mar 2026 02:05:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=sashal@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 24D6E41C4A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 24D6E41C4A
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 24D6E41C4A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Mar 2026 02:05:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A970743DE1;
 Sun,  1 Mar 2026 02:05:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7983C19421;
 Sun,  1 Mar 2026 02:05:18 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: stable@vger.kernel.org,
	enelsonmoore@gmail.com
Cc: Johannes Berg <johannes@sipsolutions.net>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org
Date: Sat, 28 Feb 2026 21:05:17 -0500
Message-ID: <20260301020517.1733972-1-sashal@kernel.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Patchwork-Hint: ignore
X-stable: review
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1772330719;
 bh=djFcnYcDM4zx77hWUyJrgolYMXmQg0/ObrXZM5RnnsY=;
 h=From:To:Cc:Subject:Date:From;
 b=P4djLiKHJcwpgsUQVxCiV6RiQ7Y3wgnNFt51Gz+YJeYLhJBn3nX/jwy0gCFokIiYV
 OpPmRiBoSISKDJQxjdwoqsm0qiGkPAEiN0s2ryHG0kn5KpZ5XOYzsvY7j94a2hwPGW
 PumMSeGDxGyv0V5jjEGYJh/ZZfDVbo0wM3OEc2T1iRsZbbJow3ZBCNQ+Wf/UCQQd3Z
 3rzlqO0ZF0dvH3C4gwECueVEwmMMFeIkskQuz2woDHv0Altsm5gBB2VaCaguV2dDmq
 HJlj89sR2S8gYzFbzs9kygq8u4i+MYNd4Svm89eAo5zFjNKHI7bynJU7M62vVe3QXS
 MbGJuljyqVd4Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=P4djLiKH
Subject: [Intel-wired-lan] FAILED: Patch "net: intel: fix PCI device ID
 conflict between i40e and ipw2200" failed to apply to 5.10-stable tree
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:stable@vger.kernel.org,m:enelsonmoore@gmail.com,m:johannes@sipsolutions.net,m:aleksandr.loktionov@intel.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:linux-wireless@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com];
	FORGED_SENDER(0.00)[sashal@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashal@kernel.org,intel-wired-lan-bounces@osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,sipsolutions.net:email,osuosl.org:dkim,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 705831CCE62
X-Rspamd-Action: no action

The patch below does not apply to the 5.10-stable tree.
If someone wants it applied there, or to any other stable or longterm
tree, then please email the backport, including the original git commit
id to <stable@vger.kernel.org>.

Thanks,
Sasha

------------------ original commit in Linus's tree ------------------

From d03e094473ecdeb68d853752ba467abe13e1de44 Mon Sep 17 00:00:00 2001
From: Ethan Nelson-Moore <enelsonmoore@gmail.com>
Date: Mon, 9 Feb 2026 18:12:34 -0800
Subject: [PATCH] net: intel: fix PCI device ID conflict between i40e and
 ipw2200

The ID 8086:104f is matched by both i40e and ipw2200. The same device
ID should not be in more than one driver, because in that case, which
driver is used is unpredictable. Fix this by taking advantage of the
fact that i40e devices use PCI_CLASS_NETWORK_ETHERNET and ipw2200
devices use PCI_CLASS_NETWORK_OTHER to differentiate the devices.

Fixes: 2e45d3f4677a ("i40e: Add support for X710 B/P & SFP+ cards")
Cc: stable@vger.kernel.org
Acked-by: Johannes Berg <johannes@sipsolutions.net>
Signed-off-by: Ethan Nelson-Moore <enelsonmoore@gmail.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Link: https://patch.msgid.link/20260210021235.16315-1-enelsonmoore@gmail.com
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c  | 8 +++++++-
 drivers/net/wireless/intel/ipw2x00/ipw2200.c | 8 +++++++-
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index d3bc3207054f9..02de186dcc8f5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -75,7 +75,13 @@ static const struct pci_device_id i40e_pci_tbl[] = {
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_10G_BASE_T4), 0},
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_10G_BASE_T_BC), 0},
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_10G_SFP), 0},
-	{PCI_VDEVICE(INTEL, I40E_DEV_ID_10G_B), 0},
+	/*
+	 * This ID conflicts with ipw2200, but the devices can be differentiated
+	 * because i40e devices use PCI_CLASS_NETWORK_ETHERNET and ipw2200
+	 * devices use PCI_CLASS_NETWORK_OTHER.
+	 */
+	{PCI_DEVICE(PCI_VENDOR_ID_INTEL, I40E_DEV_ID_10G_B),
+		PCI_CLASS_NETWORK_ETHERNET << 8, 0xffff00, 0},
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_KX_X722), 0},
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_QSFP_X722), 0},
 	{PCI_VDEVICE(INTEL, I40E_DEV_ID_SFP_X722), 0},
diff --git a/drivers/net/wireless/intel/ipw2x00/ipw2200.c b/drivers/net/wireless/intel/ipw2x00/ipw2200.c
index 09035a77e775f..b0e769da94156 100644
--- a/drivers/net/wireless/intel/ipw2x00/ipw2200.c
+++ b/drivers/net/wireless/intel/ipw2x00/ipw2200.c
@@ -11387,7 +11387,13 @@ static const struct pci_device_id card_ids[] = {
 	{PCI_VENDOR_ID_INTEL, 0x1043, 0x8086, 0x2754, 0, 0, 0},
 	{PCI_VENDOR_ID_INTEL, 0x1043, 0x8086, 0x2761, 0, 0, 0},
 	{PCI_VENDOR_ID_INTEL, 0x1043, 0x8086, 0x2762, 0, 0, 0},
-	{PCI_VDEVICE(INTEL, 0x104f), 0},
+	/*
+	 * This ID conflicts with i40e, but the devices can be differentiated
+	 * because i40e devices use PCI_CLASS_NETWORK_ETHERNET and ipw2200
+	 * devices use PCI_CLASS_NETWORK_OTHER.
+	 */
+	{PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x104f),
+		PCI_CLASS_NETWORK_OTHER << 8, 0xffff00, 0},
 	{PCI_VDEVICE(INTEL, 0x4220), 0},	/* BG */
 	{PCI_VDEVICE(INTEL, 0x4221), 0},	/* BG */
 	{PCI_VDEVICE(INTEL, 0x4223), 0},	/* ABG */
-- 
2.51.0




