Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E4E959ECE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 15:37:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A1CB40520;
	Wed, 21 Aug 2024 13:37:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id URHWuW6GtTx5; Wed, 21 Aug 2024 13:37:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BDC2402E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724247463;
	bh=NqIK+Pl/Rx4L751zM1qwlHqFEIJJlZQ2fspZDdevVhs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AA5mlh5tMT2PLNLEOlgVSKNn6P7jen1GxBBjeYlohS3DHhOI5VJtjhSkgcwGvebZk
	 FBfQLW9PAyxr4exgeYcUl9mkhZ+XapVXUhizM2GAFMWFVFStKIBUVOM08dhzbxRBtj
	 f6EV/DJCzXb5YqbNNLAwAcqlS+0sfsUUV4POagDiFiSotLp2B5+A0KGyq0PTzfXUUu
	 V/7tb8kTuW5AXF0seHb6t6x96V4xLBSFFfy50sD2+J25yq0LZYuMUzoSHyCLLqf3kC
	 Q4ugFViZ/c+Zy2w+A7PQQlX31fPzN8FPqGyqepAiEGDCNnAG+ulo/tXTlL04ge0/x8
	 Bb3CZcCMfokfg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BDC2402E6;
	Wed, 21 Aug 2024 13:37:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 46A221BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:37:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3FCC960747
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:37:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xY_F44YY4elj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 13:37:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 663326072D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 663326072D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 663326072D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:37:38 +0000 (UTC)
X-CSE-ConnectionGUID: uS1pARS6RvykNGuHccZaLw==
X-CSE-MsgGUID: JOUTKeOqRjqVWI+TkvneEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="45131455"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="45131455"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 06:37:37 -0700
X-CSE-ConnectionGUID: 13FzARkAQZiWZyP/3+xA2w==
X-CSE-MsgGUID: ilyMIsHpTLewkBXmH0UkPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="61071273"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 21 Aug 2024 06:37:33 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 545A828795;
 Wed, 21 Aug 2024 14:37:31 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Jiri Pirko <jiri@resnulli.us>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 21 Aug 2024 15:37:11 +0200
Message-Id: <20240821133714.61417-4-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240821133714.61417-1-przemyslaw.kitszel@intel.com>
References: <20240821133714.61417-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724247458; x=1755783458;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QPmskJAMY7kwcxg9T107P/LUn+rAvKsXQShM9Ol1yTE=;
 b=h3oNrNO6RNVwtFZvz6mdP5XC3Mv5HBjF/1z/jjUH2BzAVfj8cUVpeL+s
 nN9lWaRgADQqFvZ2YaGs5lLpqxUnXmwSlXBvR+GRZfTcFazpV+glNhu3S
 TS8CrYbo/CTij55c39DgKpTNJL+IoGf1K20n1DqMOADFRvFHu0iyLFfXw
 05n3zfRaJjh/TkdRkRT9f5Y2ROZQbldADesXWB/IXCgivEnvewEB5D6E0
 Xf5Ay2712ujBNXVbwcNE2MaA6aW5lupjtLX63+E/krj5UAT9tmyrpscbS
 uh4NrU9kCtbWO5aNlgdO5XXpZ2HdlpmTJLXRyD32VfCQnazh/7FvF4vH9
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h3oNrNO6
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/6] devlink: add
 devlink_fmsg_dump_skb() function
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
Cc: lukas.bulwahn@gmail.com, willemb@google.com, dwaipayanray1@gmail.com,
 netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 joe@perches.com, Eric Dumazet <edumazet@google.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, apw@canonical.com,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, akpm@linux-foundation.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Add devlink_fmsg_dump_skb() function that adds some diagnostic
information about skb (like length, pkt type, MAC, etc) to devlink
fmsg mechanism using bunch of devlink_fmsg_put() function calls.

Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 include/net/devlink.h |  2 ++
 net/devlink/health.c  | 67 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 69 insertions(+)

diff --git a/include/net/devlink.h b/include/net/devlink.h
index 85739bb731c1..7f5b36554778 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -1268,6 +1268,7 @@ enum devlink_trap_group_generic_id {
 		u16 :		devlink_fmsg_u32_pair_put,	\
 		u32 :		devlink_fmsg_u32_pair_put,	\
 		u64 :		devlink_fmsg_u64_pair_put,	\
+		int :		devlink_fmsg_u32_pair_put,	\
 		char * :	devlink_fmsg_string_pair_put,	\
 		const char * :	devlink_fmsg_string_pair_put)	\
 	(fmsg, name, (value)))
@@ -2018,6 +2019,7 @@ int devlink_compat_switch_id_get(struct net_device *dev,
 
 int devlink_nl_port_handle_fill(struct sk_buff *msg, struct devlink_port *devlink_port);
 size_t devlink_nl_port_handle_size(struct devlink_port *devlink_port);
+void devlink_fmsg_dump_skb(struct devlink_fmsg *fmsg, const struct sk_buff *skb);
 
 #else
 
diff --git a/net/devlink/health.c b/net/devlink/health.c
index acb8c0e174bb..b98ca650284c 100644
--- a/net/devlink/health.c
+++ b/net/devlink/health.c
@@ -1241,3 +1241,70 @@ int devlink_nl_health_reporter_test_doit(struct sk_buff *skb,
 
 	return reporter->ops->test(reporter, info->extack);
 }
+
+/**
+ * devlink_fmsg_dump_skb - Dump sk_buffer structure
+ * @fmsg: devlink formatted message pointer
+ * @skb: pointer to skb
+ *
+ * Dump diagnostic information about sk_buff structure, like headroom, length,
+ * tailroom, MAC, etc.
+ */
+void devlink_fmsg_dump_skb(struct devlink_fmsg *fmsg, const struct sk_buff *skb)
+{
+	struct skb_shared_info *sh = skb_shinfo(skb);
+	struct sock *sk = skb->sk;
+	bool has_mac, has_trans;
+
+	has_mac = skb_mac_header_was_set(skb);
+	has_trans = skb_transport_header_was_set(skb);
+
+	devlink_fmsg_pair_nest_start(fmsg, "skb");
+	devlink_fmsg_obj_nest_start(fmsg);
+	devlink_fmsg_put(fmsg, "actual len", skb->len);
+	devlink_fmsg_put(fmsg, "head len", skb_headlen(skb));
+	devlink_fmsg_put(fmsg, "data len", skb->data_len);
+	devlink_fmsg_put(fmsg, "tail len", skb_tailroom(skb));
+	devlink_fmsg_put(fmsg, "MAC", has_mac ? skb->mac_header : -1);
+	devlink_fmsg_put(fmsg, "MAC len",
+			 has_mac ? skb_mac_header_len(skb) : -1);
+	devlink_fmsg_put(fmsg, "network hdr", skb->network_header);
+	devlink_fmsg_put(fmsg, "network hdr len",
+			 has_trans ? skb_network_header_len(skb) : -1);
+	devlink_fmsg_put(fmsg, "transport hdr",
+			 has_trans ? skb->transport_header : -1);
+	devlink_fmsg_put(fmsg, "csum", skb->csum);
+	devlink_fmsg_put(fmsg, "csum_ip_summed", (u8)skb->ip_summed);
+	devlink_fmsg_put(fmsg, "csum_complete_sw", !!skb->csum_complete_sw);
+	devlink_fmsg_put(fmsg, "csum_valid", !!skb->csum_valid);
+	devlink_fmsg_put(fmsg, "csum_level", (u8)skb->csum_level);
+	devlink_fmsg_put(fmsg, "sw_hash", !!skb->sw_hash);
+	devlink_fmsg_put(fmsg, "l4_hash", !!skb->l4_hash);
+	devlink_fmsg_put(fmsg, "proto", ntohs(skb->protocol));
+	devlink_fmsg_put(fmsg, "pkt_type", (u8)skb->pkt_type);
+	devlink_fmsg_put(fmsg, "iif", skb->skb_iif);
+
+	if (sk) {
+		devlink_fmsg_pair_nest_start(fmsg, "sk");
+		devlink_fmsg_obj_nest_start(fmsg);
+		devlink_fmsg_put(fmsg, "family", sk->sk_type);
+		devlink_fmsg_put(fmsg, "type", sk->sk_type);
+		devlink_fmsg_put(fmsg, "proto", sk->sk_protocol);
+		devlink_fmsg_obj_nest_end(fmsg);
+		devlink_fmsg_pair_nest_end(fmsg);
+	}
+
+	devlink_fmsg_obj_nest_end(fmsg);
+	devlink_fmsg_pair_nest_end(fmsg);
+
+	devlink_fmsg_pair_nest_start(fmsg, "shinfo");
+	devlink_fmsg_obj_nest_start(fmsg);
+	devlink_fmsg_put(fmsg, "tx_flags", sh->tx_flags);
+	devlink_fmsg_put(fmsg, "nr_frags", sh->nr_frags);
+	devlink_fmsg_put(fmsg, "gso_size", sh->gso_size);
+	devlink_fmsg_put(fmsg, "gso_type", sh->gso_type);
+	devlink_fmsg_put(fmsg, "gso_segs", sh->gso_segs);
+	devlink_fmsg_obj_nest_end(fmsg);
+	devlink_fmsg_pair_nest_end(fmsg);
+}
+EXPORT_SYMBOL_GPL(devlink_fmsg_dump_skb);
-- 
2.39.3

