Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A366DA7F0D9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 01:20:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 555BE40DE2;
	Mon,  7 Apr 2025 23:20:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JxBbNwdH9i0f; Mon,  7 Apr 2025 23:20:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD72C40E02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744068038;
	bh=ebUC+KlKlacq+IddrXhZYNe7pmG3StuUDEBxTtCprws=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sdsAw0RePYLH7qifRWTKze+biGVWOsRz3Bg4cWRW/zP3E+cqCyqxw9pzykxZvvBYG
	 +z4H9BcuN1rcN7RW6fOPAmQA11LFVfikFmdcFJXvAeMcySXIaV2TbiMILNkfbo5CTB
	 SR4vsdJrSXWd408Acl1istaPWXwX61wiKOcbvrbXU2sAgj7ANXKjVNak86H/2WwbOY
	 LjSj6MXA8ynucFhbU9cFMzmPHBdv07SiQCPlhPvwAA818fjVH3X/BDvXzeaJtXxfJH
	 XFt4YRpv2G29yKzjiBNnnIdYu538OogxDuhSn6EcJSnHZVR65dnsWLGK4+E0XkGBFA
	 tKt/1bpuQxfvw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD72C40E02;
	Mon,  7 Apr 2025 23:20:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A92981F1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 23:20:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9307F40602
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 23:20:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dulB8NxotTa8 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 23:20:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=jbrandeb@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0CF7C40027
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CF7C40027
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0CF7C40027
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 23:20:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B0BB15C4A10;
 Mon,  7 Apr 2025 23:18:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E8DFC4CEE8;
 Mon,  7 Apr 2025 23:20:34 +0000 (UTC)
From: Jesse Brandeburg <jbrandeb@kernel.org>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Jesse Brandeburg <jbrandeburg@cloudflare.com>
Date: Mon,  7 Apr 2025 16:20:17 -0700
Message-ID: <20250407232017.46180-1-jbrandeb@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744068034;
 bh=H6EF47jVEqy+cvDreVeuUruvIlMBWpFynwKoMZADgn0=;
 h=From:To:Cc:Subject:Date:From;
 b=eTQU+6dKGVzOFylPxvuVYc3h+tDo7i0Y1OFNJPIgsmZ65rFRfyFcNHpMX32jyk5rz
 fUh9j+flMF4DG+pPSV0smKitvSF7SI5t7HHOZFEp58OQ1Al0Un7PcyimNt67qev7h7
 oxbfwO+VHPPgihNtLFe2uxjaAF4+DWMdXb0MGBKQPf3Uc/5meihx31aYJ4IzCIQQoF
 bpOA1pnvC+po3BQYWGsG2SsnCZAR0qIOHHOsEvzSuDTFYnYXArYc9jarO8yLdxLqEi
 zVSq2k2PF3D1GCNWG8svhlKucR3q7ji2GU1bydd33lMZ6jO8DuEaYCfo6tFPwfJ/dE
 z8D7jvl8veQrQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=eTQU+6dK
Subject: [Intel-wired-lan] [PATCH intel-next v1] ice: be consistent around
 PTP de-registration
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

From: Jesse Brandeburg <jbrandeburg@cloudflare.com>

The driver was being inconsistent when de-registering its PTP clock. Make
sure to NULL out the pointer once it is freed in all cases. The driver was
mostly already doing so, but a couple spots were missed.

Signed-off-by: Jesse Brandeburg <jbrandeburg@cloudflare.com>
---
NOTE: we saw some odd behavior on one or two machines where the ports
completed init, PTP completed init, then port 0 was "hot removed" via
sysfs, and later panics on ptp->index being 1 while being called by
ethtool. This caused me to look over this area and see this inconsistency.
I wasn't able to confirm any for-sure bug.
---
 drivers/net/ethernet/intel/ice/ice_main.c | 5 ++++-
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 4 ++--
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 049edeb60104..8c1b496e84ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3968,8 +3968,11 @@ static void ice_deinit_pf(struct ice_pf *pf)
 		pf->avail_rxqs = NULL;
 	}
 
-	if (pf->ptp.clock)
+	if (pf->ptp.clock) {
 		ptp_clock_unregister(pf->ptp.clock);
+		pf->ptp.clock = NULL;
+	}
+	pf->ptp.state = ICE_PTP_UNINIT;
 
 	xa_destroy(&pf->dyn_ports);
 	xa_destroy(&pf->sf_nums);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 1fd1ae03eb90..d7a5c3fb7948 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -3407,9 +3407,9 @@ void ice_ptp_init(struct ice_pf *pf)
 
 err_exit:
 	/* If we registered a PTP clock, release it */
-	if (pf->ptp.clock) {
+	if (ptp->clock) {
 		ptp_clock_unregister(ptp->clock);
-		pf->ptp.clock = NULL;
+		ptp->clock = NULL;
 	}
 	ptp->state = ICE_PTP_ERROR;
 	dev_err(ice_pf_to_dev(pf), "PTP failed %d\n", err);
-- 
2.43.0

