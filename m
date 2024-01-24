Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 637E583A4A7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jan 2024 09:56:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09E8343422;
	Wed, 24 Jan 2024 08:56:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09E8343422
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706086587;
	bh=kPp/GAzZVwAUR9vHijxX4z+k+otb1xET3AboSXDsuRo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cCHOtDb81LMwUMoytaV3FQXdXgBTVwe7HHQ7O+xkg3cKPMXX4Tp7royuahewjqykO
	 KC4JF9QmwgvOIdDLX9ItaP1jSf7ajbs0Z/dMpINtv4FAPOS/P+I21a8puHzKbwUr7p
	 6qwIk6I8xFNbYq3jBdl6l0VOcvIbcd4cRPxLL8xItXnwnyyMLgyzj8rAbATBCnyEb2
	 u6Z3j0dmZFUjTJJLPEKA/jB9ajiVuQckgU+XAAXJyKVhBsM5nrlcIRush92yGGEajM
	 JbSftt0ynjEN3vwmQ6rawVUnSUeICCmNsfpSj/sGJNl71bkJMNhf3imNqJVdCKVm6G
	 7lGau7JU45MKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rk2VdVxTWbkD; Wed, 24 Jan 2024 08:56:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6CE242FCA;
	Wed, 24 Jan 2024 08:56:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6CE242FCA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1ABF31BF339
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 08:56:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7408942FCB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 08:56:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7408942FCB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HujvOqUJUOrU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jan 2024 08:56:05 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2784B42FCF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 08:56:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2784B42FCF
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Wed, 24 Jan 2024 09:55:32 +0100
Message-Id: <20240124085532.58841-4-kurt@linutronix.de>
In-Reply-To: <20240124085532.58841-1-kurt@linutronix.de>
References: <20240124085532.58841-1-kurt@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1706086563;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kPp/GAzZVwAUR9vHijxX4z+k+otb1xET3AboSXDsuRo=;
 b=uFfhancB2J/PFjmfaDHHf4LguVOx++PDLyn3pgraHfLAHnXIJcGpHtvceddr4AhXNcqCc0
 YjsTNh5kF8LQRlekotu5YswL6HhYFn9rYhSbirzhifpfZVkBflrXfpPga7DmFF46NN4CXQ
 PXLSAv3G9lKgcy/pDvc4H5jmsBO/gLkOgWZer3Q0xIwo+2akk+SVD48OCD/n+gMDaCwCWS
 on4tZsUOOXlvg6ABu0ou5NgfH5HIRdGvYzlf9ZT2QDDPaU3RdaV2iqMTv4RW9OHKHhah7+
 jJs41mT0t+2hH7RTjgsKoBkB3M8j5kXmYCQvjqb9ajbgq5BpegA9fzxSSqcYYQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1706086563;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kPp/GAzZVwAUR9vHijxX4z+k+otb1xET3AboSXDsuRo=;
 b=55cjuQvqOP2lMJedsCpYr0aIw73IUJWo4bHquqqrE8FxxIqkE6zF+1U655/ej6Ow3Tk4rV
 NYP6+Yw320iLXFCg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=uFfhancB; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=55cjuQvq
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 3/3] igc: Unify filtering rule
 fields
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
Cc: netdev@vger.kernel.org, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

All filtering parameters such as EtherType and VLAN TCI are stored in host
byte order except for the VLAN EtherType. Unify it.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  2 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  4 ++--
 drivers/net/ethernet/intel/igc/igc_main.c    | 10 ++++++----
 3 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 45430e246e9c..158adb1594e9 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -585,7 +585,7 @@ enum igc_filter_match_flags {
 struct igc_nfc_filter {
 	u8 match_flags;
 	u16 etype;
-	__be16 vlan_etype;
+	u16 vlan_etype;
 	u16 vlan_tci;
 	u16 vlan_tci_mask;
 	u8 src_addr[ETH_ALEN];
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index b95d2c86e803..d31a6f027c83 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -981,7 +981,7 @@ static int igc_ethtool_get_nfc_rule(struct igc_adapter *adapter,
 
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_ETYPE) {
 		fsp->flow_type |= FLOW_EXT;
-		fsp->h_ext.vlan_etype = rule->filter.vlan_etype;
+		fsp->h_ext.vlan_etype = htons(rule->filter.vlan_etype);
 		fsp->m_ext.vlan_etype = ETHER_TYPE_FULL_MASK;
 	}
 
@@ -1249,7 +1249,7 @@ static void igc_ethtool_init_nfc_rule(struct igc_nfc_rule *rule,
 
 	/* VLAN etype matching */
 	if ((fsp->flow_type & FLOW_EXT) && fsp->h_ext.vlan_etype) {
-		rule->filter.vlan_etype = fsp->h_ext.vlan_etype;
+		rule->filter.vlan_etype = ntohs(fsp->h_ext.vlan_etype);
 		rule->filter.match_flags |= IGC_FILTER_FLAG_VLAN_ETYPE;
 	}
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 91297b561519..c3fe62813f43 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3614,10 +3614,12 @@ static int igc_add_flex_filter(struct igc_adapter *adapter,
 					  ETH_ALEN, NULL);
 
 	/* Add VLAN etype */
-	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_ETYPE)
-		igc_flex_filter_add_field(&flex, &filter->vlan_etype, 12,
-					  sizeof(filter->vlan_etype),
-					  NULL);
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_ETYPE) {
+		__be16 vlan_etype = cpu_to_be16(filter->vlan_etype);
+
+		igc_flex_filter_add_field(&flex, &vlan_etype, 12,
+					  sizeof(vlan_etype), NULL);
+	}
 
 	/* Add VLAN TCI */
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI)
-- 
2.39.2

