Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E65492F82F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2024 11:45:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC31F4143D;
	Fri, 12 Jul 2024 09:44:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ANxLHhktIOPJ; Fri, 12 Jul 2024 09:44:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E579E412D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720777499;
	bh=q2Kpn8DwmXNf6AjbqO9VoDhBJSUGmBOvy/GhoIvMLKQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IvUnwxLzYUQu/EE+oyF5NU51LxPKzZ4AxzNMP+MMrRi1rJQvpyTXIVlgA+9zpAat+
	 UaK9Sn2GNSTgafpmiJGBHvUXv6pXMQ0aHmtJZlNSXVvTC4oQ/x377lT5AGz+MzSrHM
	 Z2UV0jnVUBo5gcvfQReAFGI1jB1eZfuDAo2G8Bz7JaxlEIsKM/aksZm3vy0B24ZEYx
	 R6sYGjUmExpENJpFmWA75ziyKTvOqJtkIRKzX3MQZVL7TBwzxtROlaXlu5KJhDhyir
	 KjEFrJY1u8fGBAOgRIZFG+Zf4ocaSdfAK1/qsIS49MrX0vUi0PY+33Uf3EwsJY6Rjo
	 KD8MABiQhcdUw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E579E412D7;
	Fri, 12 Jul 2024 09:44:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2AB2F1BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 09:44:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8DB5B40A1E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 09:44:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LjuM7vpINUsk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jul 2024 09:44:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B73A54129B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B73A54129B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B73A54129B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 09:44:53 +0000 (UTC)
X-CSE-ConnectionGUID: /CjyKbKcQPC6bQqqjHwWrA==
X-CSE-MsgGUID: cgPNpkhQRbKht6jklOrtxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11130"; a="18076968"
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="18076968"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 02:44:53 -0700
X-CSE-ConnectionGUID: aywOp73iQoet+uQ2ePn+VQ==
X-CSE-MsgGUID: 3xygCHurSfW7mWIqbWhASg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="49524308"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa007.jf.intel.com with ESMTP; 12 Jul 2024 02:44:50 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2A1D31241E;
 Fri, 12 Jul 2024 10:44:48 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Jul 2024 05:32:47 -0400
Message-Id: <20240712093251.18683-3-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240712093251.18683-1-mateusz.polchlopek@intel.com>
References: <20240712093251.18683-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720777494; x=1752313494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=POev4s+Ksi1BGws715Coqmct4eY/UyjEjO3Tdt/94Hk=;
 b=Y2CJrjJ84FvUJCQ3eohoHQgZIMvjyuPhzFSCZfjYxKiJX0MRzx3KR0bK
 bwfFDV1Vvz2x+eftCCw2ncofOpdk0syu65VKgV0o6etSRmsnsJFbSZFFs
 1nzJblQBoVSNuSD0uPoAHIUSq2qNbDFFQ7HxaXxiKDrYwerflVW/9unK6
 Eju3x0HFvUMMD+cyB6tl3xDddLjyMHNmQjIYgB75MCb8b3jgAt24JkmWP
 EKCm/X1/dXKn9dxXz0ROEg8Qc0lqYVOJbnyFyK+62NZ5O+3X29qrFQSV0
 MEWVzxUBKBZDcNUv5JHHc+SbS/uGzmfMrvDlwjWMVanJ+DHka4lVoXcQi
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y2CJrjJ8
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/6] devlink: add
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
Cc: willemb@google.com, Wojciech Drewek <wojciech.drewek@intel.com>,
 dwaipayanray1@gmail.com, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, joe@perches.com, edumazet@google.com,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org, apw@canonical.com,
 lukas.bulwahn@gmail.com, akpm@linux-foundation.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Add devlink_fmsg_put() that dispatches based on the type
of the value to put, example: bool -> devlink_fmsg_bool_pair_put().

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
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
2.38.1

