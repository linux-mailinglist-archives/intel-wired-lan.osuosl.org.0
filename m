Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCAA96C2EC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 17:51:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E26C608BE;
	Wed,  4 Sep 2024 15:51:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KuNFYOWnEzap; Wed,  4 Sep 2024 15:51:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B124608AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725465091;
	bh=5bAOZ1AoBLPiYZFb02Mf1BCk6Xy/P6qaYEz9Fbs90as=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B6OFKz2R+qvUkUU1MtavYXfmAl0nnlulEGMc9xPHM8Kt5kdtA1e2eb+T1LBwyrofF
	 qO6fAt9sCt2feFD8jieBb2chkFdoKLT0Ylnc3pHufnD90WbYv5R1j08YeZoTQW+qhj
	 TeoaW63nwAocjz+KSSmLeTM3n7AvJoeRzrG0X22Clo+iIqMvdsASAskUVdWi1efFM/
	 vomindPwTWz/QHHxP4jQHjhPjctccWARM9vY/FnBH9EN/9xq79vFv19vA9X7q375Vh
	 mp+snfgTEtdSM2yO565HSXXWUzliruinpwOj49VrFU1aIVOVVcQF7lF4uaDYDih8vj
	 2JpaSpaRSYqcw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B124608AC;
	Wed,  4 Sep 2024 15:51:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AD3771BF40B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 15:51:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8EC33608B7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 15:51:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UPDSU0I_DE7q for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 15:51:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C0A13608AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0A13608AD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C0A13608AD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 15:51:28 +0000 (UTC)
X-CSE-ConnectionGUID: G3U91tHLRxuIqgyHOSHbhA==
X-CSE-MsgGUID: na+9wRP1QV62HwFqAOfREg==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="34737149"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="34737149"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 08:51:28 -0700
X-CSE-ConnectionGUID: pxtbhhcRTP+9Q15MkLb2DA==
X-CSE-MsgGUID: 7lnaK++/S6GXMqsvJ986HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="66041870"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 04 Sep 2024 08:51:26 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  4 Sep 2024 17:47:45 +0200
Message-ID: <20240904154748.2114199-4-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240904154748.2114199-1-aleksander.lobakin@intel.com>
References: <20240904154748.2114199-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725465088; x=1757001088;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jmwK4yTCSx8cWzeawW0xhX1HJ78yUrwNll7xu4Sspw4=;
 b=M+elsgxSiUSAbgDSsVscXnj39YDb2EWSQRAYT6QKD56cMmbR46FAB+3H
 0qKpWLjS1H/o0EHrwICoPgSz/mAHRwbvhGHpHu8znj79+VD7mCjXIH3OP
 +WflPDFN6zjN7AwJ8UtGmr8fLIG4ieo1LETzZSofLlsCXJTWcOnbASGOF
 rMMCE2p1mHK2pYAheC+XEbO00LChQErPsHtisco90FCRegeIejWbM7zc6
 MUBqMwRhQsSIxgTo/gxHxjeH6KKGrMO2vkldlP6qrXPDuVozSbO81wVZc
 9guYULL/+mVnRVhnIEhzoq6WGo9R+CWbPC87g+Z6IQF7EqEKjBWyKHxPK
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M+elsgxS
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/6] netdevice: add
 netdev_tx_reset_subqueue() shorthand
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a shorthand similar to other net*_subqueue() helpers for resetting
the queue by its index w/o obtaining &netdev_tx_queue beforehand
manually.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/linux/netdevice.h | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 4d6fb0ccdea1..4f37b01b3d5a 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -3599,6 +3599,17 @@ static inline void netdev_tx_reset_queue(struct netdev_queue *q)
 #endif
 }
 
+/**
+ * netdev_tx_reset_subqueue - reset the BQL stats and state of a netdev queue
+ * @dev: network device
+ * @qid: stack index of the queue to reset
+ */
+static inline void netdev_tx_reset_subqueue(const struct net_device *dev,
+					    u32 qid)
+{
+	netdev_tx_reset_queue(netdev_get_tx_queue(dev, qid));
+}
+
 /**
  * 	netdev_reset_queue - reset the packets and bytes count of a network device
  * 	@dev_queue: network device
@@ -3608,7 +3619,7 @@ static inline void netdev_tx_reset_queue(struct netdev_queue *q)
  */
 static inline void netdev_reset_queue(struct net_device *dev_queue)
 {
-	netdev_tx_reset_queue(netdev_get_tx_queue(dev_queue, 0));
+	netdev_tx_reset_subqueue(dev_queue, 0);
 }
 
 /**
-- 
2.46.0

