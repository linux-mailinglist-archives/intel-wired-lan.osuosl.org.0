Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1324C62A36
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 08:04:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED9C560BCE;
	Mon, 17 Nov 2025 07:04:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qm8FAx4q4DmQ; Mon, 17 Nov 2025 07:04:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 749AB60BC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763363071;
	bh=LEJybR14wkLO1i4rnzTeBGhcuJMu282pPu2izYb0f+0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Di/93oteU8MYIjEUGMPqNDUVaoz56vuyWkHr5FHwgqqukRqwi7asqyaEh3X63/ALk
	 XLdrwp/QFGlO8E5dHomuG01Qzvvrk9+rasad31tJ3ZzlRurYPWWdPiatcarmpC0LwZ
	 Q/bCZdTWGElLQmptYnxYwHjD7s3HHOQj5L5n6SKxcGzIHj14KD9kBlBQK25OH6u0Jw
	 BslBBLIn1h187hmhE2Rzb4ltuX0rffgVrB41Xom0IhmO9kymfaNS6FaTAERX6rj8dc
	 tK23kOYRWILyaPv4LiXEtFmNe6pHDDyzbf1jJyvlX4A7RayQ1KRUbQ8MuCkAO1hM2c
	 a7lGr0arT1IOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 749AB60BC7;
	Mon, 17 Nov 2025 07:04:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 173B7D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 07:04:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F18D860BC2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 07:04:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ul21bRlU0qvh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 07:04:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2665F60ACC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2665F60ACC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2665F60ACC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 07:04:28 +0000 (UTC)
X-CSE-ConnectionGUID: re3WYCCCTYW7J5356l8nvQ==
X-CSE-MsgGUID: Y2neXK93QFqHdtjt2Pm9gA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65508105"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65508105"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 23:04:28 -0800
X-CSE-ConnectionGUID: DR7IFLaZQWOwO9AuIQ7/3g==
X-CSE-MsgGUID: QGJntOxRQuiBvCqrUR6USg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="221265651"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 16 Nov 2025 23:04:25 -0800
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 87FE434334;
 Mon, 17 Nov 2025 07:04:23 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>
Date: Mon, 17 Nov 2025 08:03:49 +0100
Message-ID: <20251117070350.34152-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763363069; x=1794899069;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dAkB/zPq+9yCAeJRIc2n358wVTyQGSnb5GkGxbn5VtQ=;
 b=RsRuMAqmRGUVegpB1p/fLpxyXh/FIm+er1/dUE/RLztcPpd3ix6jnqxx
 CrKH+hAyiYkv3HRyfiiKKxOgKJfrfswg8n26orNwfWXcFm/oNE5UMHZME
 OeUygnoFFumnNVU5kBPK7gEyPg4OC5jWu/UF7nnDM4bSyb+3/ujsEjDUC
 s8x9YYfeLQcKkWkHPMgBq1mOD1ZUnsBRj38Sqsn0Jjsvq+veO1YbkcaqT
 4evVhswCgpx7mKxTf7DujxVDD4KhJM5Jx3SFrxvr+VeHtZgSh7cEwNoPs
 TiQct0wSAhWgQpphC0L8lmafG71FRaH7rfWepGYQlK7uvPehTyneN/9N7
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RsRuMAqm
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix aux device unplugging
 when rdma is not supported by vport
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

If vport flags do not contain VIRTCHNL2_VPORT_ENABLE_RDMA, driver does not
allocate vdev_info for this vport. This leads to kernel NULL pointer
dereference in idpf_idc_vport_dev_down(), which references vdev_info for
every vport regardless.

Check, if vdev_info was ever allocated before unplugging aux device.

Fixes: be91128c579c ("idpf: implement RDMA vport auxiliary dev create, init, and destroy")
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_idc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
index c1b963f6bfad..4b1037eb2623 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
@@ -322,7 +322,7 @@ static void idpf_idc_vport_dev_down(struct idpf_adapter *adapter)
 	for (i = 0; i < adapter->num_alloc_vports; i++) {
 		struct idpf_vport *vport = adapter->vports[i];
 
-		if (!vport)
+		if (!vport || !vport->vdev_info)
 			continue;
 
 		idpf_unplug_aux_dev(vport->vdev_info->adev);
-- 
2.47.0

