Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5618A3418A8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Mar 2021 10:44:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A83874ED46;
	Fri, 19 Mar 2021 09:44:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mWUzWaFPG7wo; Fri, 19 Mar 2021 09:44:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 631D54CA27;
	Fri, 19 Mar 2021 09:44:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 935AB1BF37A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 09:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8103F6070B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 09:44:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ua_k26WhY9v5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Mar 2021 09:44:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0CC366069B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 09:44:29 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id e18so8440542wrt.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 02:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rhxRypXWBIGPZjrBmwxPrS7jLVYj5CNzdKl7yMpzqmM=;
 b=FexAy/16+hK8OjOoSLGte9Qe4fJvNFt9faDiGxosrICvTyNd+oXDCf5Pce1f1phuu5
 x2ZctcpBE177seVihn4Skhl3Ndkbk/x7S/20SjryP85vDKCjbbeFp/wos0ISN/fd/TWR
 uIYNzFPqjDrDRSTiOnCJf//gXSY2VaooheMaD9FGA4IBzRnamMePIGYYfJfAY5yJOAnw
 SL1EISoxOS1tbDe1ytEwFL1CdlJ/+F/1okPgIex7RVXnm8e4paq8cqHLzhPwuMnCydt5
 2Da75Vd2nlpH6s/Lo+dUhJGyRymBTInlDv/KYdtj30mz9h7xyBSELFbuZdWMefr7VVSw
 hcEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rhxRypXWBIGPZjrBmwxPrS7jLVYj5CNzdKl7yMpzqmM=;
 b=fzrlm5uCmPbBVrfEloOh61COB5Ef2cPh0QUk7488fyyTMOSzJz8kkcj6swL6XREUWz
 Ldb+9IBFP7BXf4FZy82Qc0adqaHkLqHiEQ83CG6b7+9EcjRc0SNx6kT8OcNSQ0TPkkGk
 +6mhOYzODjM6vjNYQvK89qNNtDHUgt2qLS8HdywSN2xYOHpx85urrTI9wflrT8yXl+Rz
 gnagJ7r3Tk1yCIQIG7a0mPFD68QQ5mAbLo0oU/oH36OIGWcswn9SGI4Gdj33Pf6RUWh8
 jUpVbtX58rU0WyY0uIbfvQzAc3WVV24GB8vSCk5M/sw/s8zeBMc1z+b86u+Ywn9AzsqP
 9WTg==
X-Gm-Message-State: AOAM531u/kfKGu5cY4hCuQ0Bq1ZigFPQPPTb3WHMsaozeAkWCHBMy9EG
 En4BEdKX89AU9aMU36NEB/c=
X-Google-Smtp-Source: ABdhPJw9dEYESsiU51m9Wk69msQPQs66o+7Ai1vyt35Qn9RuP3YuQLrH3fj2TL1V8gTX4xAkyIQHRQ==
X-Received: by 2002:a5d:684d:: with SMTP id o13mr3696852wrw.235.1616147068126; 
 Fri, 19 Mar 2021 02:44:28 -0700 (PDT)
Received: from localhost.localdomain ([188.149.128.194])
 by smtp.gmail.com with ESMTPSA id e18sm7403139wru.73.2021.03.19.02.44.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Mar 2021 02:44:27 -0700 (PDT)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, maciej.fijalkowski@intel.com
Date: Fri, 19 Mar 2021 10:44:10 +0100
Message-Id: <20210319094410.3633-1-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net] i40e: fix receiving of single
 packets in xsk zero-copy mode
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
Cc: netdev@vger.kernel.org, Sreedevi Joshi <sreedevi.joshi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Magnus Karlsson <magnus.karlsson@intel.com>

Fix so that single packets are received immediately instead of in
batches of 8. If you sent 1 pss to a system, you received 8 packets
every 8 seconds instead of 1 packet every second. The problem behind
this was that the work_done reporting from the Tx part of the driver
was broken. The work_done reporting in i40e controls not only the
reporting back to the napi logic but also the setting of the interrupt
throttling logic. When Tx or Rx reports that it has more to do,
interrupts are throttled or coalesced and when they both report that
they are done, interrupts are armed right away. If the wrong work_done
value is returned, the logic will start to throttle interrupts in a
situation where it should have just enabled them. This leads to the
undesired batching behavior seen in user-space.

Fix this by returning the correct boolean value from the Tx xsk
zero-copy path. Return true if there is nothing to do or if we got
fewer packets to process than we asked for. Return false if we got as
many packets as the budget since there might be more packets we can
process.

Fixes: 3106c580fb7c ("i40e: Use batched xsk Tx interfaces to increase performance")
Reported-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index fc32c5019b0f..12ca84113587 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -471,7 +471,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
 
 	nb_pkts = xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, descs, budget);
 	if (!nb_pkts)
-		return false;
+		return true;
 
 	if (xdp_ring->next_to_use + nb_pkts >= xdp_ring->count) {
 		nb_processed = xdp_ring->count - xdp_ring->next_to_use;
@@ -488,7 +488,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
 
 	i40e_update_tx_stats(xdp_ring, nb_pkts, total_bytes);
 
-	return true;
+	return nb_pkts < budget;
 }
 
 /**

base-commit: c79a707072fe3fea0e3c92edee6ca85c1e53c29f
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
