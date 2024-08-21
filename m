Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 709A1959ECD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 15:37:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A96440499;
	Wed, 21 Aug 2024 13:37:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qaNuLQpHMZ3F; Wed, 21 Aug 2024 13:37:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 879F04048A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724247461;
	bh=jbX8EVIlqL+7QIe7FbfrM8VtYd/0ap0xliwxAVdSUTs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n3t/uI6DhBIkhcXf/93LgHXmZsju8PcqzqIsYNJjzqPTxE1SvNNWFoCubPDKpYFdm
	 RWS0+o1NowVpPPDPDLqsrKio06VL2ydRUcwi2KAF/NLOq4Gvs+68o2HY2wX/lv2OpY
	 NGdhUUPS8Y0H0rgZZklzSZLPJxV13RJPIJ7kuY2FVM1LB//6Aha5W/uVQ+hA/S64cJ
	 bw3NgeoXvl7YmRLQOedckVB50b/OAo7az0dUpln81jWQFKSee4IGBLRJqTTJAl/Cv0
	 Kb8pNOLSo51EPDn1KNzydXdOZaMQu9gETmAsLHf8eV4NEvWE+ti59mhpCQ2lNCpls+
	 n5y0VWsumc1GQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 879F04048A;
	Wed, 21 Aug 2024 13:37:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4D0821BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:37:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3BCE780F3D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:37:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gv1oVH_Cqgzx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 13:37:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8684E80F34
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8684E80F34
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8684E80F34
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:37:36 +0000 (UTC)
X-CSE-ConnectionGUID: j/edO+AKTMOeLQfaFyH/lA==
X-CSE-MsgGUID: 4I2gLXnCSlWAN9HGwMLcBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="45131435"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="45131435"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 06:37:36 -0700
X-CSE-ConnectionGUID: uTDmp3cfQ0iRcc1xjKBj9w==
X-CSE-MsgGUID: n51exEYgQSmLUuP2ZUxS+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="61071268"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 21 Aug 2024 06:37:32 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2A1D628793;
 Wed, 21 Aug 2024 14:37:30 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Jiri Pirko <jiri@resnulli.us>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 21 Aug 2024 15:37:10 +0200
Message-Id: <20240821133714.61417-3-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240821133714.61417-1-przemyslaw.kitszel@intel.com>
References: <20240821133714.61417-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724247457; x=1755783457;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qitX9JQl+WyawhjAqWcOOFfcGblZAsoaspxmb9DYPOA=;
 b=PG/vLyr0yNOShCMMQxUMufkH9Vqu+WlHpx1mXJaENLnEBVNxRrdUMBLl
 3MY7+3v7vUnUTZWGLEj3O9vilx9iFy2TAOXNd8cZjhXU+oGOiLlrJPng0
 KUnT5+SB53LSCxOeyLZ7J/mfqnIANc93JTSkh/wPHjdpVIfwDssGxgiV6
 6/H26BF4BuZp5Ip6P1kjZsqpCT/S4/S6sOumHVxQMI1zm/u1pA/CtlFfd
 L0jyb+pNXC60EPRQ7f/nHzVJ2aty0N03cU5ce7gmPj985TEi3Z2+nXNgr
 I784eECEsuGWkvyq9J9f9ohsLwWVUqXUOTuz01YO8+jYzEsdSzazG8uot
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PG/vLyr0
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/6] devlink: add
 devlink_fmsg_put() macro
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
Cc: lukas.bulwahn@gmail.com, willemb@google.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, dwaipayanray1@gmail.com,
 netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 joe@perches.com, Eric Dumazet <edumazet@google.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Simon Horman <horms@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 apw@canonical.com, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 akpm@linux-foundation.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add devlink_fmsg_put() that dispatches based on the type
of the value to put, example: bool -> devlink_fmsg_bool_pair_put().

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 include/net/devlink.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/net/devlink.h b/include/net/devlink.h
index db5eff6cb60f..85739bb731c1 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -1261,6 +1261,17 @@ enum devlink_trap_group_generic_id {
 		.min_burst = _min_burst,				      \
 	}
 
+#define devlink_fmsg_put(fmsg, name, value) (			\
+	_Generic((value),					\
+		bool :		devlink_fmsg_bool_pair_put,	\
+		u8 :		devlink_fmsg_u8_pair_put,	\
+		u16 :		devlink_fmsg_u32_pair_put,	\
+		u32 :		devlink_fmsg_u32_pair_put,	\
+		u64 :		devlink_fmsg_u64_pair_put,	\
+		char * :	devlink_fmsg_string_pair_put,	\
+		const char * :	devlink_fmsg_string_pair_put)	\
+	(fmsg, name, (value)))
+
 enum {
 	/* device supports reload operations */
 	DEVLINK_F_RELOAD = 1UL << 0,
-- 
2.39.3

