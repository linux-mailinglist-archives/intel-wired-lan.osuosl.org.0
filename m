Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B364ADB947
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 21:03:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D1D4608A8;
	Mon, 16 Jun 2025 19:03:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0TqZ2S2K_4kZ; Mon, 16 Jun 2025 19:03:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65D4D608A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750100584;
	bh=FctS/yxvbEvyzJIZYET6k2Fs0G8a9MU2fsYlGgp4CE0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UJasyW77P/Qt1rOqsjTHHjm5E7y3SUKsVktp8jsjnl/VTWXh0AnuK21uA4+YR0FYc
	 RrlnOCJwYHXNp3JbjtP4/Es78/A4+ZsoqIMQiOQAcyIvGQTbmfsgDlXYJbwYe5di9V
	 Dif0jixtGqGWDT0xA4v2QnqgC/YtTVAeyZX+WPzEqecCO3vfXfFHmno23blBC6QHrO
	 l0jxCaOxkn7g+GDOOExZ27RbO/+BJ5SHnyMpeo04sfuUEAXdhXeVIno4POJ07yLxBZ
	 tsRdVbkR82aXgBGWoGQI6BDNfduHE4WCz3k19cGa2gkKqhWMwf4KWU1PqL63O8BwP+
	 yguve+z6r36Xg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65D4D608A4;
	Mon, 16 Jun 2025 19:03:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1BAF8CA9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:03:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D5D8980885
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:02:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tSOVPhPEY5Ul for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 19:02:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4C01880890
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C01880890
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C01880890
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:02:58 +0000 (UTC)
X-CSE-ConnectionGUID: iHSepMTUQ+qVEBIo9HfotQ==
X-CSE-MsgGUID: ZtSWNA5lS5K5rtQMNuMwOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52122671"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="52122671"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 12:02:56 -0700
X-CSE-ConnectionGUID: dltxETTpTUa0POuPLFSIXA==
X-CSE-MsgGUID: pUBS7TVOR62v/xQ+bnS4Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="153513115"
Received: from dmert-mdev.jf.intel.com ([10.166.5.145])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 12:02:56 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Mon, 16 Jun 2025 13:03:21 +0200
Message-ID: <20250616110323.788970-7-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250616110323.788970-1-david.m.ertman@intel.com>
References: <20250616110323.788970-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750100578; x=1781636578;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pUaF7g0w2flcNpuK+sDmgradhhiPbSLFfmueegRrNZI=;
 b=NI4nO1g0C6AyCXU2zciPLGKaBf01TXn/FpXX8lKpJjUH29ZZaz2q9/iV
 XxaH9k6c05QnAL7GQFMeBRXIsGB08n0QnBoX1nMzZF2Xlc2f4WRrQOkWB
 +ptNmf/HK0ouZ9luLl/LI7OJDN4fMqP5FBBHplIZriegH1J/4MDpVhp6P
 3KzK15qHNqbOhsYbpSHaFfTZR0sRB5/De2loMM3JwGHDy1Aj6e6QyoKQ9
 6dWCXsidxAmkthjEUB9VbqxqCMiMPKYsSM/XnZXESZxkejHXxSXFQTFPD
 +1yoJMtCdixn2BALatScBmD1CN3+nlFBT8Ol0Ydlc16N0BAa4aH5JyCHg
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NI4nO1g0
Subject: [Intel-wired-lan] [PATCH iwl-next v4 6/8] [PATCH iwl-next v3 6/8]
 ice: cleanup capabilities evaluation
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

When evaluating the capabilities field, the ICE_AQC_BIT_ROCEV2_LAG and
ICE_AQC_BIT_SRIOV_LAG defines were both not using the BIT operator,
instead simply setting a hex value that set the correct bits.  While
not inaccurate, this method is misleading, and when it is expanded in
the following implementation it becomes even more confusing.

Switch to using the BIT() operator to clarify what is being checked.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 2eaa4ab8e791..b3298063f1bd 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -133,8 +133,8 @@ struct ice_aqc_list_caps_elem {
 #define ICE_AQC_CAPS_TX_SCHED_TOPO_COMP_MODE		0x0085
 #define ICE_AQC_CAPS_NAC_TOPOLOGY			0x0087
 #define ICE_AQC_CAPS_FW_LAG_SUPPORT			0x0092
-#define ICE_AQC_BIT_ROCEV2_LAG				0x01
-#define ICE_AQC_BIT_SRIOV_LAG				0x02
+#define ICE_AQC_BIT_ROCEV2_LAG				BIT(0)
+#define ICE_AQC_BIT_SRIOV_LAG				BIT(1)
 
 	u8 major_ver;
 	u8 minor_ver;
-- 
2.49.0

