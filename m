Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Bv4LkYwxmnzHQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:22:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2429F3404E2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:22:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1A4C61275;
	Fri, 27 Mar 2026 07:22:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a8uF5td5aZFT; Fri, 27 Mar 2026 07:22:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04458611DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774596164;
	bh=sZ7xR3HoNQH6K+iAZyaEK0+hiE5rMrnu/Tn/iSpht/w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KkstmEe7NBUIMsi72kZppFmOC8Yl+j7J9RnCC/fx5HzfsGglaZx4l3UFFUugvF2IO
	 +F2qK3oJqVcAXOGW4FAdLa3gnemFunuYjqX9mQ/vkOFP8F28vHkWVsqjRR6YtjGhCe
	 9TBm1evRGcQ35AQ5SqNxvA62HTX3Ej4HR+5wt2b3MrBzAxmUD2FBi/iDLiA75liR56
	 4jU125Y3jkF0fn/qh1AAvsNwJzAqoRtDaQkKlQGKCXs1PFbuWYb0+sFU0FC3+sQ1B7
	 BtViJ19LPJm2AoolXWxqytTQoCdTehhI38kL3Jaxe70JXg6KYF3klfvCBlecXJZXPd
	 LBUqAkdfcpPAQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04458611DF;
	Fri, 27 Mar 2026 07:22:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 425B42D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:22:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 309A4611DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:22:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zd2UPB7bz7mm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 07:22:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3849961246
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3849961246
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3849961246
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:22:41 +0000 (UTC)
X-CSE-ConnectionGUID: nvNsZOv+SmCcMzgnPQjaTg==
X-CSE-MsgGUID: tkH+uQN9Q3iC+L3z3YqUHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="74848618"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="74848618"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 00:22:41 -0700
X-CSE-ConnectionGUID: 53a4fqgwSO+6KlqFPtqoqQ==
X-CSE-MsgGUID: pm6Mj2bZQZ+vkoomyH63yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="222359496"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa008.fm.intel.com with ESMTP; 27 Mar 2026 00:22:40 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri, 27 Mar 2026 08:22:34 +0100
Message-ID: <20260327072236.129802-3-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260327072236.129802-1-aleksandr.loktionov@intel.com>
References: <20260327072236.129802-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774596161; x=1806132161;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UG0TXdzOm7/f9TplyZuK66CItEUmN3gfFSEbWaZGIk4=;
 b=AMW2oAzn1kjb91j/wAqp4tv7Qo6hKCwI99EJblt9FRhU5IByFk8abDAi
 7WS3fRH2Xuia2D88NodQQDLtFbW6O/VjL1EVyurMoZ2Q5qQauryRhocO9
 WQq6/zK8g4qbrPRTl3hNH/oSEn11qzsL18yhIlJT1SjuFMDDfZGytMNCA
 m+FSIobsLkC4iEJdWGyTFWF8qTLXcNu0pJN3jdc5xamQdks3uxmg5EDYz
 HlxWFvl2x+js4hI5T0Xudtdbc8JR3g2fRKPHBOtvCjiEXCQ8hUE05nMK9
 CtbIdzmWzWco4EBj7fltdNgilIHE85f67QXSJxVemBCvZzRtSsnKw190E
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AMW2oAzn
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: check cross-timestamp
 timeout bits
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2429F3404E2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Karol Kolacinski <karol.kolacinski@intel.com>

Polling for cross-timestamp active bit depends on HW scheduling and
actual timeout may happen before the driver finishes polling.

Check cross-timestamp timeout bits to ensure that the driver finishes
the operation earlier when HW indicates timeout.

Fixes: 92456e795ac6 ("ice: Add unified ice_capture_crosststamp")
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---

 drivers/net/ethernet/intel/ice/ice_hw_autogen.h |  3 +++
 drivers/net/ethernet/intel/ice/ice_ptp.c        | 12 ++++++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 082ad33..8b4884e 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -499,6 +499,8 @@
 #define PRTRPB_RDPC				0x000AC260
 #define GLHH_ART_CTL				0x000A41D4
 #define GLHH_ART_CTL_ACTIVE_M			BIT(0)
+#define GLHH_ART_CTL_TIME_OUT1_M		BIT(1)
+#define GLHH_ART_CTL_TIME_OUT2_M		BIT(2)
 #define GLHH_ART_TIME_H				0x000A41D8
 #define GLHH_ART_TIME_L				0x000A41DC
 #define GLTSYN_AUX_IN_0(_i)			(0x000889D8 + ((_i) * 4))
@@ -564,6 +566,7 @@
 #define E830_PRTTSYN_TXTIME_L(_i)		(0x001E5000 + ((_i) * 32))
 #define E830_GLPTM_ART_CTL			0x00088B50
 #define E830_GLPTM_ART_CTL_ACTIVE_M		BIT(0)
+#define E830_GLPTM_ART_CTL_TIME_OUT_M		BIT(1)
 #define E830_GLPTM_ART_TIME_H			0x00088B54
 #define E830_GLPTM_ART_TIME_L			0x00088B58
 #define E830_GLTSYN_PTMTIME_H(_i)		(0x00088B48 + ((_i) * 4))
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 6848b1c..8b0530b 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2011,6 +2011,7 @@ static int ice_ptp_adjtime(struct ptp_clock_info *info, s64 delta)
  * @lock_busy: Bit in the semaphore lock indicating the lock is busy
  * @ctl_reg: The hardware register to request cross timestamp
  * @ctl_active: Bit in the control register to request cross timestamp
+ * @ctl_timeout: Bits in the control register to indicate HW timeout
  * @art_time_l: Lower 32-bits of ART system time
  * @art_time_h: Upper 32-bits of ART system time
  * @dev_time_l: Lower 32-bits of device time (per timer index)
@@ -2024,6 +2025,7 @@ struct ice_crosststamp_cfg {
 	/* Capture control register */
 	u32 ctl_reg;
 	u32 ctl_active;
+	u32 ctl_timeout;
 
 	/* Time storage */
 	u32 art_time_l;
@@ -2037,6 +2039,7 @@ static const struct ice_crosststamp_cfg ice_crosststamp_cfg_e82x = {
 	.lock_busy = PFHH_SEM_BUSY_M,
 	.ctl_reg = GLHH_ART_CTL,
 	.ctl_active = GLHH_ART_CTL_ACTIVE_M,
+	.ctl_timeout = GLHH_ART_CTL_TIME_OUT1_M | GLHH_ART_CTL_TIME_OUT2_M,
 	.art_time_l = GLHH_ART_TIME_L,
 	.art_time_h = GLHH_ART_TIME_H,
 	.dev_time_l[0] = GLTSYN_HHTIME_L(0),
@@ -2051,6 +2054,7 @@ static const struct ice_crosststamp_cfg ice_crosststamp_cfg_e830 = {
 	.lock_busy = E830_PFPTM_SEM_BUSY_M,
 	.ctl_reg = E830_GLPTM_ART_CTL,
 	.ctl_active = E830_GLPTM_ART_CTL_ACTIVE_M,
+	.ctl_timeout = E830_GLPTM_ART_CTL_TIME_OUT_M,
 	.art_time_l = E830_GLPTM_ART_TIME_L,
 	.art_time_h = E830_GLPTM_ART_TIME_H,
 	.dev_time_l[0] = E830_GLTSYN_PTMTIME_L(0),
@@ -2123,9 +2127,13 @@ static int ice_capture_crosststamp(ktime_t *device,
 	ctl |= cfg->ctl_active;
 	wr32(hw, cfg->ctl_reg, ctl);
 
-	/* Poll until hardware completes the capture */
-	err = rd32_poll_timeout(hw, cfg->ctl_reg, ctl, !(ctl & cfg->ctl_active),
+	/* Poll until hardware completes the capture or timeout occurs */
+	err = rd32_poll_timeout(hw, cfg->ctl_reg, ctl,
+				!(ctl & cfg->ctl_active) ||
+				(ctl & cfg->ctl_timeout),
 				5, 20 * USEC_PER_MSEC);
+	if (ctl & cfg->ctl_timeout)
+		err = -ETIMEDOUT;
 	if (err)
 		goto err_timeout;
 
-- 
2.52.0

