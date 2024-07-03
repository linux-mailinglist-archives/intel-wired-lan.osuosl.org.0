Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73925926180
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 15:12:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26A6C60EF1;
	Wed,  3 Jul 2024 13:12:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Xzbwh192sx0; Wed,  3 Jul 2024 13:12:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D1B660EE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720012368;
	bh=Vzl0FcN97y2mYYNoAIyZCBF7x9Vv7Gk3m/uIV1aQA7s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qnt/zFp7ef6UzgWrISV4YCnrr/U1vyIc5Vs8WyBAPjK40fPnW2Gcfb4eMjXi3qcPl
	 ryVnxpYjF5x0MxoT+yVxxJf06wI3D59oeUN/yTcGqqMj8WThBRstqNvjmTccOHCXIh
	 BrltbEeHJlT9FeCRCIjnzyzdRZn7LYb1/loAObLipp0xbH1aLx+3Dce07JhCK+lGaY
	 Itg6cNRgCupDnbBbmI3SC4UBvETNlLBhjFZL5rKH+3fuyjDlqe+2pUy8Rw6POQ5sv9
	 Eyk/RcEWg7IEq74tTkq3PbOHYzcpmC3tBkIOr5+YuiB0JD/ralX71YTj1Lax+ifXwx
	 6lWRJ7judt03g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D1B660EE5;
	Wed,  3 Jul 2024 13:12:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D08D1BF31B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 13:12:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 79F3F40359
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 13:12:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2-cSetKo52rc for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 13:12:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5569E40498
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5569E40498
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5569E40498
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 13:12:40 +0000 (UTC)
X-CSE-ConnectionGUID: iH2AqNXpTt+PxSF669m6Bw==
X-CSE-MsgGUID: gu68RwQ/QIqsCfzDC11nuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="27857103"
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="27857103"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 06:12:32 -0700
X-CSE-ConnectionGUID: wGi9JZcbS0KE/MV3OggP2g==
X-CSE-MsgGUID: FshCUYNJTqKk6J4RMxP/Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="46321569"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa010.fm.intel.com with ESMTP; 03 Jul 2024 06:12:28 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A18C428779;
 Wed,  3 Jul 2024 14:12:26 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Jul 2024 08:59:18 -0400
Message-Id: <20240703125922.5625-3-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240703125922.5625-1-mateusz.polchlopek@intel.com>
References: <20240703125922.5625-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720012361; x=1751548361;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TjSxyaf3Cir+Qz6O6R1xqKNcZgjVvLcFv4QVgnNtdf8=;
 b=GUn2OZjMhTgXzpYpGvAA7yjfdrOwJKUKLCGRQN3fXBNtvi77zRfZMEug
 dL5cCagyIhS8Zk/K1fnh0k5l+SB6KgmiAlydlAVGPLi4WKG2aewFD8x0/
 DKXdKbnF06TNuus3DC85Jqo4S6eBUHZh/1vEYDN6UGzKeJF9w1fOhAoTM
 WMtXGLKGnJafSmJLcp4Hh4oJyOhdr8Wka5WSkLDif90I06yBU4Jyu8l/a
 33fSOrVHc1V7LtxU44XPeZ9OUm2hsY0HJ4GboS2MrTEIwO3BAiwWoRdqN
 JOCpwRnb6ys7gnVfiOllV/Wxg6SMGt/pBYF7r0+gvrPMUc0NrB9QsrcLZ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GUn2OZjM
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/6] devlink: add
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
 netdev@vger.kernel.org, apw@canonical.com, lukas.bulwahn@gmail.com,
 akpm@linux-foundation.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Add devlink_fmsg_put() that dispatches based on the type
of the value to put, example: bool -> devlink_fmsg_bool_pair_put().

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
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

