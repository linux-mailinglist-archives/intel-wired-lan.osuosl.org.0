Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA79A5E719
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 23:16:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A6C260E31;
	Wed, 12 Mar 2025 22:16:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DhBXIxnlLopc; Wed, 12 Mar 2025 22:16:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A86EC60E48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741817773;
	bh=BbhCt20Mu0LR7cEG2jxFJTBDTk1pjGncLVodsQSWJPs=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l/UgfGJcB1o3KXk9AwXqv3PcWS2L8YDT/V87D76l5zaYXzIkzA558HQQBplAEYS1t
	 2pNbEppdc7BsKOX/JJse8pC8MS0fVvPHknoKwGPnf+qgBFkZpFa2Ar6BV5wRra/fn0
	 DHWc7U0AkIvpIRrjYa7tC9K+7OhM0qmo2l1q7kryxpX34RZNbxjb8Di3Iwl6WzXPow
	 dSl9CE9UUJknIGoGYm7siINRpmEHnBgKUDzSpIiI2EYlyxHS9jNRXkWeetIYfrEdFo
	 oaK0wqW/ALM+oPdAHvEIxhDZQuHz+tA9L5K0LIDR403mjOJNaULWyXhikJKxte7CCU
	 21XtxjhDcM4BA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A86EC60E48;
	Wed, 12 Mar 2025 22:16:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 08DF12375
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:16:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E12894133B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:16:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bVLYdHuPUfQA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 22:16:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ADF974133A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADF974133A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ADF974133A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 22:16:09 +0000 (UTC)
X-CSE-ConnectionGUID: kbersb23QrCMDHzlOwtW6g==
X-CSE-MsgGUID: hBxxhM/6R0OF+3E6pXXrOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="54288429"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="54288429"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 15:16:08 -0700
X-CSE-ConnectionGUID: n41JY1lQQdaoPy2xR1G+TQ==
X-CSE-MsgGUID: 7j8DIBiETSWs78ngq/acow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="125950251"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 15:16:07 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 12 Mar 2025 15:15:54 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250312-jk-net-fixes-supported-extts-flags-v2-5-ea930ba82459@intel.com>
References: <20250312-jk-net-fixes-supported-extts-flags-v2-0-ea930ba82459@intel.com>
In-Reply-To: <20250312-jk-net-fixes-supported-extts-flags-v2-0-ea930ba82459@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Richard Cochran <richardcochran@gmail.com>, Ruud Bos <kernel.hbk@gmail.com>, 
 Paul Barker <paul.barker.ct@bp.renesas.com>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
 Bryan Whitehead <bryan.whitehead@microchip.com>, 
 UNGLinuxDriver@microchip.com, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Jonathan Lemon <jonathan.lemon@gmail.com>, Lasse Johnsen <l@ssejohnsen.me>, 
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, 
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741817770; x=1773353770;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=dZtHQmHw2E/TNV4LhtJkvHxvd1dLBtC07ImShwyJx1c=;
 b=CklqUilD3pGPssGMlM2VQnZg8LdhaOvVKiRPP4jQNALarpEd4D1r8cOy
 E0ppH0Ll21mMxmt2msr5n6d80oxOlW334dfWIQiP83y+ZEugx3XtF9O06
 Sj75MTRjdkzJc3aRNeERawkgCQjOILKO8lSHrkZaROVQ3qTcH6fCkY4zj
 XquZqn+LauHQ2mL4kOFtT3fs3+SMR228iw1MRlhTI9gZozAfUcGZ4izmV
 uaf4CSFPDqVeLQQOFEgBYP+kKE/NLP6ZE3rP6+G/+XrfO7MNb9lyTaa0H
 VR6Rfod7I3DWxWBymZO8zAONKbrQ0NrWp4iP/qnd76VMHwCynfy1Q0+cC
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CklqUilD
Subject: [Intel-wired-lan] [PATCH net v2 5/5] ptp: ocp: reject unsupported
 periodic output flags
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

The ptp_ocp_signal_from_perout() function supports PTP_PEROUT_DUTY_CYCLE
and PTP_PEROUT_PHASE. It does not support PTP_PEROUT_ONE_SHOT, but does not
reject a request with such an unsupported flag.

Add the appropriate check to ensure that unsupported requests are rejected
both for PTP_PEROUT_ONE_SHOT as well as any future flags.

Fixes: 1aa66a3a135a ("ptp: ocp: Program the signal generators via PTP_CLK_REQ_PEROUT")
Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/ptp/ptp_ocp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/ptp/ptp_ocp.c b/drivers/ptp/ptp_ocp.c
index b651087f426f50a73229ca57634fc5d6912e0a87..4a87af0980d695a9ab1b23e2544f620759ccb892 100644
--- a/drivers/ptp/ptp_ocp.c
+++ b/drivers/ptp/ptp_ocp.c
@@ -2090,6 +2090,10 @@ ptp_ocp_signal_from_perout(struct ptp_ocp *bp, int gen,
 {
 	struct ptp_ocp_signal s = { };
 
+	if (req->flags & ~(PTP_PEROUT_DUTY_CYCLE |
+			   PTP_PEROUT_PHASE))
+		return -EOPNOTSUPP;
+
 	s.polarity = bp->signal[gen].polarity;
 	s.period = ktime_set(req->period.sec, req->period.nsec);
 	if (!s.period)

-- 
2.48.1.397.gec9d649cc640

