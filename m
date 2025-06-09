Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D9FAD287C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jun 2025 23:11:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41FCE6154C;
	Mon,  9 Jun 2025 21:11:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v5KUXvpHnJER; Mon,  9 Jun 2025 21:11:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF3BD61553
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749503475;
	bh=MztmDK5MDwMGkK4wiB6ZKUi9u0b5TQPjmv+NE91jbe4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lo5LqXaK0MUNVnMTikxJFCUs/DnJOP/GFDliaYH4FVj2Wsi96C/GgGo7+RR5NVySH
	 cBqZe5QhrhdXRPSNfTYTnZueKCQXYWAbjurhK5+Uxw4USpDlY4K+h98baPZmsHfUYy
	 gEGhtbscnxBb5y/VNr6xbr0gOEOS0SrAV2NNtgDc0Whj0dm5lWKEhyvCxNFxrTY3UE
	 r76fCkdnFnqyEmQOauX1dJjpTqR4C96ZNhr6qY03ODBBHh3Aau6uHBKRS7boIg9YaE
	 wn12/f7VHPl7pDnzpMMgzOJrQtXqx1cx2049ABUfyWkIusWjtflMLwLi5hR0Kt4SiX
	 JSZeCn4EUdvFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF3BD61553;
	Mon,  9 Jun 2025 21:11:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 113F01A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 78FCC61530
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OylLCAlJmF-r for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 21:11:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E24F061539
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E24F061539
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E24F061539
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:10 +0000 (UTC)
X-CSE-ConnectionGUID: ttsJ/JocT7ileUqGlfIokw==
X-CSE-MsgGUID: vOoJ6lspSryqcbNoV3xjvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="50703107"
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="50703107"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 14:11:08 -0700
X-CSE-ConnectionGUID: STJOeSaxRwuX4wQ5lYqohg==
X-CSE-MsgGUID: dciJLqgpRi2LML+4PHo0wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="146540449"
Received: from dmert-mdev.jf.intel.com ([10.166.5.145])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 14:11:08 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Mon,  9 Jun 2025 15:11:38 +0200
Message-ID: <20250609131141.758051-7-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609131141.758051-1-david.m.ertman@intel.com>
References: <20250609131141.758051-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749503471; x=1781039471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vGZbQ5U3a4Vb36d08xxqd46J7T4GVTCl4Gi4nRWrJQU=;
 b=B9TV0SnKcOvhF+DlqMFdFGcOLfiSO+RPcivMzz8NY/PkmaWjv/x1gKJV
 eHj2+hxd8xVNsSOxg6LtI+7ygCZDmbWdKOK4+k3jgaKxyBXHQIRp0K8Jr
 Q6eciAuPRWAB0OyKAhBQX+xImXUiei3HzW3ZYTP4t18yPLynDpwVTTtMd
 Uv1EXSgb+7hLW29dp4AUrQqHH0HzQHcwt5rTjJ3xC+ImEl/OBhcJJIsGZ
 7RyWvAzUE3Z31sahum7FmWxGqR4DtWknBha4XVT+3uPrgYSmjd5pX4bQI
 X35JNJ0KF0tBlz0SJcILJKYi3PY8OGZJKlxB71c4Ibx946ThI/fFDHg4N
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B9TV0SnK
Subject: [Intel-wired-lan] [PATCH iwl-next v3 6/8] ice: cleanup capabilities
 evaluation
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
ICE_AQC_BIT_SRIOV_LAG defines were both not using the BIT operator, instead
simply setting a hex value that set the correct bits.  While not inaccurate,
this method is misleading, and when it is expanded in the following
implementation it becomes even more confusing.

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

