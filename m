Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA732A4FF66
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 14:02:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80E3D40D64;
	Wed,  5 Mar 2025 13:02:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dnSmVDtAW9DG; Wed,  5 Mar 2025 13:02:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5D9F40D82
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741179730;
	bh=AvO8xqIVqtUd4T4sVzrj5VKAAjQMlRAFMZo/DBwxaL4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aq1iWDoyl9wiWcyPJFkqD95VS8x2ByjZfECHjA3sWJaYPDcENZawGNSskPGHXFQR1
	 1RLvTF5f8+Hcs57AymAZe636Ylns4Vc7I5yPCE6qkQDImpXNfkKh+4A1/PFEoBUUrf
	 X3A2iT0ApSaDaCbgrCcoeMiALnEikoHXQluxdDs7T/FEQ1fQIoL1URrlYCDraA/0H9
	 kUrwoI4eZkOoeI5EzIRZoFYzts6A5ONQUSXctxV6Wa+qGqiRN1dUDMCyMhpKcusrO4
	 AkwX66+kLs4/O9ynGrxIXelpqC3BA4IPpx7UPvhc5/q4/wZbP0Dr+qWCc0CcKMjcxe
	 bRpx3j5XI7dxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5D9F40D82;
	Wed,  5 Mar 2025 13:02:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F07F795F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 13:02:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DF9B540D64
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 13:02:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hriXRwzjxGYG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 13:02:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0C22140612
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C22140612
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0C22140612
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 13:02:08 +0000 (UTC)
X-CSE-ConnectionGUID: apmz8/YtQCmNKUsvJa/Tkg==
X-CSE-MsgGUID: 2AfNvZ+hQLGOkLpBJGYiCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="45795152"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="45795152"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 05:02:08 -0800
X-CSE-ConnectionGUID: 3nGwylJDTZm5Lp7qLCxNig==
X-CSE-MsgGUID: 6iBPBwpqR8iwZKDA+S9D8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="123277170"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by fmviesa005.fm.intel.com with ESMTP; 05 Mar 2025 05:02:00 -0800
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Date: Wed,  5 Mar 2025 08:00:24 -0500
Message-Id: <20250305130026.642219-10-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250305130026.642219-1-faizal.abdul.rahim@linux.intel.com>
References: <20250305130026.642219-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741179729; x=1772715729;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=39PvJib2PeOE5qnsHjLiceVW7xm5HXt73LMZb2qjEM8=;
 b=azrMaSiySLSziAkO7+1bKB7uo5pzm2DmBaUpcmJG5VJvXkM1dPfyPNqa
 LuapXvylb2L2dU+9tDQGg6fgdXCzd+W0biC3O76OS8OrqDglFn/CsxR91
 5b46j8R3Iake/TBclgHf9NqUnb8IU8CFFXmPtBHjPXFUwJBlfzaSquXps
 O4R+8Yq3QSW1bEuTmO+/MYoLWpBkxFQMmuu2xZ60fNnBhMlOFbnCy20g7
 pYDcBOvzD/vKhkPkC1H2+5o8ggU+fmldgRlpkY6wpzO/I/S8ymlIP1G+e
 RQ5R1JTCZqkJbicmTKbaksi71Ob6aLCwdB6gH3TcaMfDAjwtCvrJYUzFK
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=azrMaSiy
Subject: [Intel-wired-lan] [PATCH iwl-next v8 09/11] igc: block setting
 preemptible traffic class in taprio
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

Since preemptible tc implementation is not ready yet, block it from being
set in taprio. The existing code already blocks it in mqprio.

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index a9f40fffc4fd..6db926bc9d11 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6407,6 +6407,10 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	if (!validate_schedule(adapter, qopt))
 		return -EINVAL;
 
+	/* preemptible isn't supported yet */
+	if (qopt->mqprio.preemptible_tcs)
+		return -EOPNOTSUPP;
+
 	igc_ptp_read(adapter, &now);
 
 	if (igc_tsn_is_taprio_activated_by_user(adapter) &&
-- 
2.34.1

