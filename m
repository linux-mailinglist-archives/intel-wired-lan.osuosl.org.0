Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8974FA4FF54
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 14:01:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B68540DA0;
	Wed,  5 Mar 2025 13:01:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XtIY3CQpXQW1; Wed,  5 Mar 2025 13:01:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C99240D57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741179686;
	bh=bpxFLpfsmRvI7k3Ct+avLYHj2g1KZU48ml1wFy0M9Fs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lyaZVzdK04TetY8t5TFZ9BMBuOiug+5EBJxfgAuYW4wBuPfhqs0LrdYBy/xeMLnNz
	 hHXuTqA1VeS2+T59pa4BoxPn7KUqiLP1W5kEQR+FH6BW/cQgAkp63v6kZ6gcapUKjI
	 9WGN+L2iMCwKMDGOmIOSQg0NO5XKYI3DJrWE1RnzYRk296uVSDQSNlTDmhV3aERMII
	 i0H/+KnXzOoJmDhJo+BG0ZrkPo9qxmu7uRYzJ1ZB431zTAORqPHZM+U74vyIouOgvU
	 /qXLP62NvJluhO9MajDKs7GRbD9/FSqsRHABhuC4dFa2GvgRhvJ9wfYtg7TrZJ2V3A
	 wmPmLH/G8RBXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C99240D57;
	Wed,  5 Mar 2025 13:01:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 813CB95F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 13:01:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 64AAF832E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 13:01:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CMZM20tNyWco for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 13:01:23 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B1F5983342
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1F5983342
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B1F5983342
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 13:01:23 +0000 (UTC)
X-CSE-ConnectionGUID: rmTcP1EPSAOapXIyw4MW4A==
X-CSE-MsgGUID: DHKkpd0ZTSSeBHfR1EWD9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="45794976"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="45794976"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 05:01:23 -0800
X-CSE-ConnectionGUID: 9mXuV+xOTeqFLxVCFnBCTA==
X-CSE-MsgGUID: yj4NzQiUSh+rtly7s9bQ+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="123277001"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by fmviesa005.fm.intel.com with ESMTP; 05 Mar 2025 05:01:16 -0800
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
Date: Wed,  5 Mar 2025 08:00:18 -0500
Message-Id: <20250305130026.642219-4-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250305130026.642219-1-faizal.abdul.rahim@linux.intel.com>
References: <20250305130026.642219-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741179684; x=1772715684;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Y//C+KyY9JDiVXwSEk627cRg7D/ALr5oNlQGwg/5vVQ=;
 b=mMlSoufqJwien0MgFABi0tFra/oc7ajKnIZh0NXzhrZj1fdiDQmtiKeI
 D5Jp0oZLHwIIIigeNyPRXS61k/tP6MszGd+TksQjDrzAKbuqaJ0iSOs7j
 PQwtiKgn7MLkxyjn3t0mbYf7JkaeXTBK131OBc4RYdYzn+fzqxN3Z75NF
 NEKQuffz9RsNXQD4vYKKjbzTZ/IB9iBe+ObunfebgOYI2wDVYr7irSkRA
 3JSNKiqbYW6cB90TxDl4DI+qYXwF1uOivw2u1SM4H6CQAsHGfob1xco1I
 tOfTHwJ3+xuPiA32IeqYjIuSn/xhnGuctCpfGU3y4iV8S1j4JvriB52Nh
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mMlSoufq
Subject: [Intel-wired-lan] [PATCH iwl-next v8 03/11] net: ethtool: mm: reset
 verification status when link is down
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

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 net/ethtool/mm.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/net/ethtool/mm.c b/net/ethtool/mm.c
index aa43df2ecac0..ad9b40034003 100644
--- a/net/ethtool/mm.c
+++ b/net/ethtool/mm.c
@@ -415,8 +415,9 @@ void ethtool_mmsv_link_state_handle(struct ethtool_mmsv *mmsv, bool up)
 		/* New link => maybe new partner => new verification process */
 		ethtool_mmsv_apply(mmsv);
 	} else {
-		mmsv->status = ETHTOOL_MM_VERIFY_STATUS_INITIAL;
-		mmsv->verify_retries = ETHTOOL_MM_MAX_VERIFY_RETRIES;
+		/* Reset the reported verification state while the link is down */
+		if (mmsv->verify_enabled)
+			mmsv->status = ETHTOOL_MM_VERIFY_STATUS_INITIAL;
 
 		/* No link or pMAC not enabled */
 		ethtool_mmsv_configure_pmac(mmsv, false);
-- 
2.34.1

