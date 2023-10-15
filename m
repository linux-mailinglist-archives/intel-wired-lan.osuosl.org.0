Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6B17C9CA4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 01:51:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14FB6414EB;
	Sun, 15 Oct 2023 23:51:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14FB6414EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697413883;
	bh=7VJuDU9eYnuMr2LYzkH52GLOZ7RTpFBapNG7R8nDiu8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mpkJnlmpreA1P56/q6jonDs++IYNpM8MQ3YxM3XiPTgRqgaZxnYPI88XrTFIup4H2
	 2prn1cwntNyehzy7k/eapWoI1ZTEHR8APERpi+/P59UrIm/HOh+sEO3JNO9UXA8Bxu
	 bmnWr3pggRVtLJbjB7rytm3ZurwtyVAkmzwzNWVOl6Nd9KwBRcjvg/29IVVV+ydoIu
	 /4eCVEoAVa5vu+HOsTzzJMcviAWlWhUbkmPb8C7NKL8xcBwQMXwFh4Jtz8iNeX7liy
	 QNi91HVChf14jnfRzielTfkYe7WPUNKEY/KUC5g3iMCNyPXmxWyATBfGWgHspnsL9I
	 WKOJEN2VGYlKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id seZvLy4K6P6U; Sun, 15 Oct 2023 23:51:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9934A414E0;
	Sun, 15 Oct 2023 23:51:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9934A414E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 686DB1BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 23:51:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E89A60F3A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 23:51:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E89A60F3A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ENWB7VA5HGjp for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Oct 2023 23:51:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7593E60F09
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Oct 2023 23:51:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7593E60F09
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="370496103"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="370496103"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2023 16:51:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="929159779"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="929159779"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.144])
 by orsmga005.jf.intel.com with ESMTP; 15 Oct 2023 16:51:08 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: netdev@vger.kernel.org
Date: Sun, 15 Oct 2023 19:43:03 -0400
Message-ID: <20231015234304.2633-3-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231015234304.2633-1-paul.greenwalt@intel.com>
References: <20231015234304.2633-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697413869; x=1728949869;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qL/cYv4cctG+wJhKC41Uc/pRaqcu6nKaDJsXKDlAAoQ=;
 b=CS9FN6QpLggWhGT7v9mtk5m0DcnHVjCSrmnVz73vysqZMs6rHZO4QTTc
 EYoVVbez6xihILP5z6ZER3hJjkV5VwfukQoSWjS2AyDfgenNln52OOHxT
 quZ5kK3zLy4j19NfbE12+iMIV4gcumEyP9XOYt+u+4Lpwi7K1QMh8OS+z
 cITfdanee5ogoclWz5qtrDMv/F51fXECQSFVEytOS6zXkDAwGMoQqZUBv
 5k2XMp8M3mYvCqFnMW0yW5xNh5fypUCuksRqqbq+Io+0WYcsXbSkqJ8sC
 JnIGyRCXRaFCl8X2YOXFtHInfGn6YONeL7mhV8wX/4fgGMSkdxUHfY7bD
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CS9FN6Qp
Subject: [Intel-wired-lan] [PATCH net-next v5 2/3] qede: Refactor
 qede_forced_speed_maps_init()
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
Cc: jiri@resnulli.us, andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 vladimir.oltean@nxp.com, jdamato@fastly.com, pawel.chmielewski@intel.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 Paul Greenwalt <paul.greenwalt@intel.com>, horms@kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, kuba@kernel.org,
 d-tatianin@yandex-team.ru, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactor qede_forced_speed_maps_init() to use commen implementation
ethtool_forced_speed_maps_init().

The qede driver was compile tested only.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 .../net/ethernet/qlogic/qede/qede_ethtool.c   | 46 +++++--------------
 1 file changed, 12 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
index 95820cf1cd6c..b6b849a079ed 100644
--- a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
+++ b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
@@ -201,21 +201,6 @@ static const char qede_tests_str_arr[QEDE_ETHTOOL_TEST_MAX][ETH_GSTRING_LEN] = {
 
 /* Forced speed capabilities maps */
 
-struct qede_forced_speed_map {
-	u32		speed;
-	__ETHTOOL_DECLARE_LINK_MODE_MASK(caps);
-
-	const u32	*cap_arr;
-	u32		arr_size;
-};
-
-#define QEDE_FORCED_SPEED_MAP(value)					\
-{									\
-	.speed		= SPEED_##value,				\
-	.cap_arr	= qede_forced_speed_##value,			\
-	.arr_size	= ARRAY_SIZE(qede_forced_speed_##value),	\
-}
-
 static const u32 qede_forced_speed_1000[] __initconst = {
 	ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
 	ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
@@ -263,28 +248,21 @@ static const u32 qede_forced_speed_100000[] __initconst = {
 	ETHTOOL_LINK_MODE_100000baseLR4_ER4_Full_BIT,
 };
 
-static struct qede_forced_speed_map qede_forced_speed_maps[] __ro_after_init = {
-	QEDE_FORCED_SPEED_MAP(1000),
-	QEDE_FORCED_SPEED_MAP(10000),
-	QEDE_FORCED_SPEED_MAP(20000),
-	QEDE_FORCED_SPEED_MAP(25000),
-	QEDE_FORCED_SPEED_MAP(40000),
-	QEDE_FORCED_SPEED_MAP(50000),
-	QEDE_FORCED_SPEED_MAP(100000),
+static struct ethtool_forced_speed_map
+qede_forced_speed_maps[] __ro_after_init = {
+	ETHTOOL_FORCED_SPEED_MAP(qede_forced_speed, 1000),
+	ETHTOOL_FORCED_SPEED_MAP(qede_forced_speed, 10000),
+	ETHTOOL_FORCED_SPEED_MAP(qede_forced_speed, 20000),
+	ETHTOOL_FORCED_SPEED_MAP(qede_forced_speed, 25000),
+	ETHTOOL_FORCED_SPEED_MAP(qede_forced_speed, 40000),
+	ETHTOOL_FORCED_SPEED_MAP(qede_forced_speed, 50000),
+	ETHTOOL_FORCED_SPEED_MAP(qede_forced_speed, 100000),
 };
 
 void __init qede_forced_speed_maps_init(void)
 {
-	struct qede_forced_speed_map *map;
-	u32 i;
-
-	for (i = 0; i < ARRAY_SIZE(qede_forced_speed_maps); i++) {
-		map = qede_forced_speed_maps + i;
-
-		linkmode_set_bit_array(map->cap_arr, map->arr_size, map->caps);
-		map->cap_arr = NULL;
-		map->arr_size = 0;
-	}
+	ethtool_forced_speed_maps_init(qede_forced_speed_maps,
+				       ARRAY_SIZE(qede_forced_speed_maps));
 }
 
 /* Ethtool callbacks */
@@ -564,8 +542,8 @@ static int qede_set_link_ksettings(struct net_device *dev,
 				   const struct ethtool_link_ksettings *cmd)
 {
 	const struct ethtool_link_settings *base = &cmd->base;
+	const struct ethtool_forced_speed_map *map;
 	struct qede_dev *edev = netdev_priv(dev);
-	const struct qede_forced_speed_map *map;
 	struct qed_link_output current_link;
 	struct qed_link_params params;
 	u32 i;
-- 
2.40.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
