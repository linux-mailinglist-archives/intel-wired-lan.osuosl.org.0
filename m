Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 625CC98A577
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 15:39:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8FCAA4056D;
	Mon, 30 Sep 2024 13:39:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fYiE7c5HhtK9; Mon, 30 Sep 2024 13:39:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B749A4052D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727703559;
	bh=/TJJUK1amW81Sp0xKOi0h2QAjz1rfzx6Vp2jlzsidxs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5qtu3qWCRmUV98lG1O/AYqjgSU9pLCGbVyPoKa3Q0uPyFVvrEskHdZb7A1egfgUOX
	 i6IZnAByz8Zlfrgjyl6Dc+QwNQB8TxHsvekdfb5IWhlhDTcGNV2cXbWB1JJzWeXZas
	 RNDbUev+0mCoEua9VAwsYZMz3wntrmHg1bCYm72z8KjVeJPmmQOndIVPrYXBYjBqTx
	 SmmcuKu5tJrcpAM/xxDsuHguAfV7LdPElAR1ObTHhj6qk9VWRfQuVtTBMV91PdeQcz
	 ESFf4tu06vcqkKPhOristuL0g+vsyYqzXNMgkZ3xBr79OCzWVOsMPTVoEjXofTBxyl
	 dWidBBawyBoDw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B749A4052D;
	Mon, 30 Sep 2024 13:39:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3D2EF1BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:39:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2BB254052D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:39:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ICYdkq1HbqwX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 13:39:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 690C84056D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 690C84056D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 690C84056D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:39:16 +0000 (UTC)
X-CSE-ConnectionGUID: dk3slLysSuOuBGuWudJa8Q==
X-CSE-MsgGUID: i0Xbck+TRD6GhD+baFbcww==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="26600984"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26600984"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 06:39:16 -0700
X-CSE-ConnectionGUID: c8+ntKJJTruGv1qR3GiFsw==
X-CSE-MsgGUID: R5U3TOHXSQiszy+ipYX0lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="104109623"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 30 Sep 2024 06:39:12 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9AF9328195;
 Mon, 30 Sep 2024 14:39:10 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 30 Sep 2024 15:37:19 +0200
Message-Id: <20240930133724.610512-3-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240930133724.610512-1-przemyslaw.kitszel@intel.com>
References: <20240930133724.610512-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727703556; x=1759239556;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n/mLZYq5jt13yyR5gu6Fi389pXb+dS+E37pYL96U2UA=;
 b=b8VOUVacc/TTVSQI8rUKhQsTEewIke/aaNRzXHduami+lqP9IBx7hXYQ
 8ZDjmZmUhbv8+BhKjzSxWXKSIelmEAEoebm5grEH9XjHa8a06Zsk9OcRV
 iUC1bYSJUdXUgFUmU3E4dxHPli8QzOb8tyM25gkk8gjsWKKaTqQx5+Usk
 icHQ96ExGorDsm9lDjr5ycSFWQcQ2O1mHUx17CO5KXd3kJ/qYxQcraAfy
 8y3sohVRpeEQTwOoQtCDC7ntf+lyHz+Zpzkve+pNMeyVrbEi7s2T4VBaY
 753TztSnysgeFuysF+AYJa2L/M38koZv4rmqjB3D992N7rILcX+Zc+saO
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b8VOUVac
Subject: [Intel-wired-lan] [PATCH 2/7] devlink: add devlink_fmsg_put() macro
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>,
 Jakub Kicinski <kuba@kernel.org>, Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Andy Whitcroft <apw@canonical.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add devlink_fmsg_put() that dispatches based on the type
of the value to put, example: bool -> devlink_fmsg_bool_pair_put().

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
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

