Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B70B21C67
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 06:54:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57CE041DF9;
	Tue, 12 Aug 2025 04:54:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LHrwq26ZfPuS; Tue, 12 Aug 2025 04:54:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C970841E1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754974468;
	bh=UTcIr1l8JKmEGFUTEFBRbDlRzR8+tE6HeHyLCYQhAvk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W3fFuV5V070xQGVuylChMTjCkj5/p10IHhTq0SkznbZ/Y+Bl1rdXDrMMtnxOyU1Aj
	 ZhAmSloNvI+CnffXeLDVkfkcUcYQ2emV58IA1r8H5DlyIWHztnf/mTUAhy+Ro81nK1
	 bLqVjxczDZZtWRYRi6+rJfdtL8Y3b2c/zN445KzHduJGHqHjjI7umUbEiJ9Hv5TXfZ
	 n2XuCqc29WUW/uZ+KH5GKiEg6ggGIMeXdV5kBKzh+MYkndWD86jK38iNvVSvPoDBpR
	 q3KoF9zUSnyfZnQRKlSWdKiFnHQbyNcSfyPb5R3KErWnGIXY/HEu0H7G3++pM8k4Hj
	 ha0wKziQBdzkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C970841E1D;
	Tue, 12 Aug 2025 04:54:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8E2BB158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 80596828DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ap1WQ6rXeT8a for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 04:54:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C54E082835
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C54E082835
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C54E082835
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 04:54:25 +0000 (UTC)
X-CSE-ConnectionGUID: QKWH3zDyR9aewtSJM9BaRg==
X-CSE-MsgGUID: lqual7TTRF6dz/jJzDQ1tw==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68612775"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68612775"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:47:20 -0700
X-CSE-ConnectionGUID: XGjQe3imQru8YrS1AcNfOQ==
X-CSE-MsgGUID: 7W2vNavqRxecXpUdX065uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165327922"
Received: from unknown (HELO os-delivery.igk.intel.com) ([10.102.21.165])
 by orviesa010.jf.intel.com with ESMTP; 11 Aug 2025 21:47:19 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com, horms@kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 12 Aug 2025 06:23:34 +0200
Message-ID: <20250812042337.1356907-14-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
References: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754974466; x=1786510466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UaUPbdCMu84U9XA3Acq479SpwOPQHptEGSZ2V1MPSHk=;
 b=L4sUY0nRTCytuWD0eM4FQfYOXDThsAHtnCR7g3v2lc42EC3z9SHv0zQ+
 Jq4KhSmhXQtJJODZRSus2GOT8i+MKfhZzyPh2Gzv50iL7hijpVLa328m0
 s1TBTAUouBTqYFIKTMxMILW9MPS7h3QaGAl7O39iD8+pplL1VdKrmP3s9
 h8BRarYEwphIxQ43FsmwuRVF7Pigi+YEeu9vHQAFAX7Xn1G7ZKT9yG7K/
 WZ0TbyasBeSkderKw5g1/08jmE/0hsutmA4dfOwu/NQiVv+Nfex+T+O19
 g59c2tfZuOKjRW8kN8IM+SYRmoLBZssocdWYFHr/MJfqpvEXcCBTYA6y2
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L4sUY0nR
Subject: [Intel-wired-lan] [PATCH iwl-next v2 13/15] ice: reregister fwlog
 after driver reinit
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

Wrap libie_fwlog_register() by libie_fwlog_reregister(), which checks
first if the registration is needed. This simplifies the code and makes
the former function static.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fwlog.c | 11 ++++++++++-
 drivers/net/ethernet/intel/ice/ice_fwlog.h |  2 +-
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
index 775581163e04..e76397ade68b 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
@@ -290,7 +290,7 @@ static int libie_aq_fwlog_register(struct libie_fwlog *fwlog, bool reg)
  * After this call the PF will start to receive firmware logging based on the
  * configuration set in libie_fwlog_set.
  */
-int libie_fwlog_register(struct libie_fwlog *fwlog)
+static int libie_fwlog_register(struct libie_fwlog *fwlog)
 {
 	int status;
 
@@ -1096,3 +1096,12 @@ void libie_get_fwlog_data(struct libie_fwlog *fwlog, u8 *buf, u16 len)
 		libie_fwlog_ring_increment(&fwlog->ring.head, fwlog->ring.size);
 	}
 }
+
+void libie_fwlog_reregister(struct libie_fwlog *fwlog)
+{
+	if (!(fwlog->cfg.options & LIBIE_FWLOG_OPTION_IS_REGISTERED))
+		return;
+
+	if (libie_fwlog_register(fwlog))
+		fwlog->cfg.options &= ~LIBIE_FWLOG_OPTION_IS_REGISTERED;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
index 3698759c8ebb..e534205a2d04 100644
--- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
+++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
@@ -79,6 +79,6 @@ struct libie_fwlog {
 
 int libie_fwlog_init(struct libie_fwlog *fwlog, struct libie_fwlog_api *api);
 void libie_fwlog_deinit(struct libie_fwlog *fwlog);
-int libie_fwlog_register(struct libie_fwlog *fwlog);
+void libie_fwlog_reregister(struct libie_fwlog *fwlog);
 void libie_get_fwlog_data(struct libie_fwlog *fwlog, u8 *buf, u16 len);
 #endif /* _LIBIE_FWLOG_H_ */
-- 
2.49.0

