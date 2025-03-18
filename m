Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDF7A666C0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 04:08:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2742660B07;
	Tue, 18 Mar 2025 03:08:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iScuRfHXhF3v; Tue, 18 Mar 2025 03:08:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7485160AEA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742267331;
	bh=W9jQaTb5CsffvduHafwuL2MW5ezniOSQBOlGo1IpeIs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=d+I41yNvObpY3DmH3S96XTmAODqnOJvx+H64VGZdvHm7MuqTdz1fHNVrOIA1/pOa9
	 JJG72KK54U8ZLVhRgr1RoEXyEa3oPlthlJZJEWdWLAdun2zUtxRc65Y7PmalNvxjfx
	 CZUFeGFLxcAsd78BhsYATjk5WHdcwxY0o7dojrI09A7U/JQpttRNwrWH0EIPhxESqs
	 kMLhNbADWeC/ROJxtOqt8uFQ0NN69rnZMS6+S99TqRteyeP8SSn3jvtWQOdF9GgZ8c
	 T2m0tSx3KOv2fsMpsw10owgV/fI009T06wgqMjk1qAwCOUWAlkzKR4BC6EHzg+5r9E
	 +FKr5WHZLm5jg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7485160AEA;
	Tue, 18 Mar 2025 03:08:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 14E6216E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 03:08:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 039CD4023A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 03:08:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lj7UB3gXXjTw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 03:08:48 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 016A1400F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 016A1400F6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 016A1400F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 03:08:47 +0000 (UTC)
X-CSE-ConnectionGUID: ElXT/h0DQhabkiYO0dvURQ==
X-CSE-MsgGUID: bbSpAOa2TQebUAx7EiIBqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="54382934"
X-IronPort-AV: E=Sophos;i="6.14,255,1736841600"; d="scan'208";a="54382934"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 20:08:47 -0700
X-CSE-ConnectionGUID: /qfjgyHdSmaLQk0bcjHiFQ==
X-CSE-MsgGUID: NQxLXbvgRFW/wb8W1q+nrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,255,1736841600"; d="scan'208";a="126313753"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by fmviesa003.fm.intel.com with ESMTP; 17 Mar 2025 20:08:40 -0700
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Russell King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Hariprasad Kelam <hkelam@marvell.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-stm32@st-md-mailman.stormreply.com,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Serge Semin <fancer.lancer@gmail.com>
Date: Mon, 17 Mar 2025 23:07:31 -0400
Message-Id: <20250318030742.2567080-4-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250318030742.2567080-1-faizal.abdul.rahim@linux.intel.com>
References: <20250318030742.2567080-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742267328; x=1773803328;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PJHnS41RUykAMZDQTME6227bQeCUwgkT8h6G/tRYcm0=;
 b=Sir6qyGBAkCkoazKPty28bwCLfmFKB1oynqoMvCj7obD0aWTnlHxxi3Z
 8UbV+HTtvTtpbnMqJKLBzAcY1IA0fBvf+HWIfV/roxDfklOUlw6WqUZ94
 2b3cNKdkCZFJgp0uHvmAtJ1rLsme220kqOqHlLbhGywVLIdeJFY4szZ6z
 NjQiUu+wNR1Ts79l8LplNeL+59ntgucIS03zPH3quJLszsOVjHFQYBH38
 EpjAbZ64KPD6+cKWyaopxNBsxdwZVvs8NyqVcAc2HPw2TTk5yZlrt5UX5
 VaqBCuPZvl9TOMbeMj5copi1Mnf1YQdCaQ/1pmqekwu6VdEgOfNfrVZes
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sir6qyGB
Subject: [Intel-wired-lan] [PATCH iwl-next v10 03/14] net: ethtool: mm:
 reset verification status when link is down
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

When the link partner goes down, "ethtool --show-mm" still displays
"Verification status: SUCCEEDED," reflecting a previous state that is
no longer valid.

Reset the verification status to ensure it reflects the current state.

Reviewed-by: Furong Xu <0x1207@gmail.com>
Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 net/ethtool/mm.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/ethtool/mm.c b/net/ethtool/mm.c
index bfd988464d7d..ad9b40034003 100644
--- a/net/ethtool/mm.c
+++ b/net/ethtool/mm.c
@@ -415,6 +415,10 @@ void ethtool_mmsv_link_state_handle(struct ethtool_mmsv *mmsv, bool up)
 		/* New link => maybe new partner => new verification process */
 		ethtool_mmsv_apply(mmsv);
 	} else {
+		/* Reset the reported verification state while the link is down */
+		if (mmsv->verify_enabled)
+			mmsv->status = ETHTOOL_MM_VERIFY_STATUS_INITIAL;
+
 		/* No link or pMAC not enabled */
 		ethtool_mmsv_configure_pmac(mmsv, false);
 		ethtool_mmsv_configure_tx(mmsv, false);
-- 
2.34.1

