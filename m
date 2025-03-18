Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A33B0A666D6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 04:10:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5294D40D86;
	Tue, 18 Mar 2025 03:10:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sim0s9m4CyKz; Tue, 18 Mar 2025 03:10:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 615AC40D8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742267401;
	bh=Ij3VUskXFIGFRtoXzGBVOSnN2Qj7W10EcqQtu6jvq4k=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LceMvefcoSrr/ZZPB6rW84ZTSpJfUu3hDLUepZtNnocPL+tj5KaxZ4XCgtgW3593Z
	 rB6B/cQIYMlEKTyhfyHyDTtOsbM3U6v65VjbHWzmcHJcYe06Np9rA/lJUjfNEMNsmR
	 bcchkrqB+mTZNfly8rWkr+c5AdZNOym1IN+UddU9Z+UApwMZripU6YIDkoZAHh/ewT
	 ETuaRpkxXVD/z4kH9iuW1oDM/e5B8JwmnD856DlRUvWVejp8eHtqmF2Tb8MWZB5fLl
	 RjucIzInIj1uI6HLgCg+1Dt87IjSm/SzeHI3v9Or5qgFbEos1mIl/bOjRIAGupYitJ
	 Wjqxx8e8jnCIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 615AC40D8C;
	Tue, 18 Mar 2025 03:10:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 568BF16E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 03:09:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 471006077B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 03:09:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AluNIK70p9HU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 03:09:58 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8340860667
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8340860667
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8340860667
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 03:09:58 +0000 (UTC)
X-CSE-ConnectionGUID: OdOkq4JtT1aSoGgSk+fW2g==
X-CSE-MsgGUID: XdVL/+TkT460fV+yvdTUaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="54383230"
X-IronPort-AV: E=Sophos;i="6.14,255,1736841600"; d="scan'208";a="54383230"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 20:09:57 -0700
X-CSE-ConnectionGUID: YnI1J2mKQ2ielu1L2PHNDA==
X-CSE-MsgGUID: 22AG3oJXQ4yLx1T4dZ6HFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,255,1736841600"; d="scan'208";a="126313953"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by fmviesa003.fm.intel.com with ESMTP; 17 Mar 2025 20:09:50 -0700
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
Date: Mon, 17 Mar 2025 23:07:40 -0400
Message-Id: <20250318030742.2567080-13-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250318030742.2567080-1-faizal.abdul.rahim@linux.intel.com>
References: <20250318030742.2567080-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742267398; x=1773803398;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=eqmri3Iwl67FhzCmnSw7Lyi9yy0ti1/vr/CkBiBk4bg=;
 b=Mu4H9LEKti4B/1nEZdGHn9lRQuLvjMZLzSBHPWIrKw/BmwUbMaekGdjA
 HG14CY1Gb+gf7bUovJh8LoarlnJ/B8tYhsxOTWuYRH/Yj180qmT0SMYF9
 asAL8hhaO3gKDGbazLzAuaOoVoErVVX+ZueX1Ejg8OI21YrERYaCEiLke
 lulYixveJqmPDmVfzN7cRzSFm/cSqJgSpUUGB9u3KgEDeKdXfQXVLi459
 W8gKZiUfjkEtEWFG5yGP2xV2iYmg7HPhUU+gsUZLFQhPeA4Hvzw+WcJWi
 6MaB/wvD9EYG/W3rMB42DMt6NXnBDElzlmN4Z8AaaOTH0CHXlQl7wsKPO
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Mu4H9LEK
Subject: [Intel-wired-lan] [PATCH iwl-next v10 12/14] igc: block setting
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

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 71c377cb7a88..fc945c5b7c70 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6486,6 +6486,10 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
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

