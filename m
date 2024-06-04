Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DE78FBE93
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jun 2024 00:13:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3448842C4;
	Tue,  4 Jun 2024 22:13:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wd6OJlgP7mf6; Tue,  4 Jun 2024 22:13:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02C70842B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717539225;
	bh=vH0nHotNZU0Hk2/ZxcxhyLW93W+sAR0jcugjGZRHm/U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B4RZwvhZQ4LEN7Mr9clfDzauTKrX+aaAcyW5SCAL6vCBhGPwkbrdNaUpNpEcD1MwD
	 0agctcifL/9T/3fs2bVd3S4sLnlf0L3Ezr8ReBstAYi5RCcstFVk+LSuJAxtrQngQF
	 WpDZgFpEJSYZKdtHAkosJijVa+QjcV0h9vptUAcuRKbMZkUTqX1ZMBcmjpVjw6Kn6F
	 XzEHKvRIrJGBvEdWiChjl4O9YZwvFvFiPEnLEU8TI9vzz6lvH79n79ev0veFm1gUbO
	 BEguVsyCKe+9d9iSC8Ec6P+IxJNeo2bwenl/V7TYFge/FQc7R0NRrlp8LjRSNpJqgg
	 COk0jNKTmBfaw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02C70842B0;
	Tue,  4 Jun 2024 22:13:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C8DDF1BF409
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 22:13:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D743840267
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 22:13:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Y61WYBm1D3y for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 22:13:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D89AF40227
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D89AF40227
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D89AF40227
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 22:13:35 +0000 (UTC)
X-CSE-ConnectionGUID: tyATlQGnTAGfY2r4Y/rNnw==
X-CSE-MsgGUID: lDA9OsMlSUWEv58K2D8wUg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="36635256"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="36635256"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 15:13:33 -0700
X-CSE-ConnectionGUID: kKp/BzTuQsaTHfbLTqH4WA==
X-CSE-MsgGUID: WiCz+YyNQ2++ZuhmAYwhZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37503235"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 15:13:32 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Date: Tue,  4 Jun 2024 15:13:21 -0700
Message-ID: <20240604221327.299184-2-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240604221327.299184-1-jesse.brandeburg@intel.com>
References: <20240604221327.299184-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717539216; x=1749075216;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NH0e1gv30FCCZJHwSEekSafzctrL119woZPwilJfxY8=;
 b=bkKyOmEapoKpx0601SDWFpNfX6YjAHal+2JWFjE3k0y7AtJCqDU2ncs6
 yFAoqS9OmBi7PC/aDZbUAq8Mt5svbvGKQZB1qDMA+7K8Ew8s0Gz3ZuDMs
 pN2Tt8uCI2z2RyLDHUW5EBY99iygCoGiqNKhZrbzQHQ5mTR7PxTlOeizQ
 lKWkc9wYFbhZ8KGXYXkd2qMxQaYMwKRg8v5XPwUfIuTWVsRTdAXhuua8V
 62fl+JYkOlWkSHme050w4iI9Q+YKXPCjCmHmC1nOoQoqM9+eo3obEfCOW
 Us/rswYv6o4DK4dAMoeb+dl5BuATvfh0ixdlEfKl7DHxAGMTEhBqm/jnW
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bkKyOmEa
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/5] net: docs: add missing
 features that can have stats
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, linux-doc@vger.kernel.org,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, corbet@lwn.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

While trying to figure out ethtool -I | --include-statistics, I noticed
some docs got missed when implementing commit 0e9c127729be ("ethtool:
add interface to read Tx hardware timestamping statistics").

Fix up the docs to match the kernel code, and while there, sort them in
alphabetical order.

Cc: Rahul Rameshbabu <rrameshbabu@nvidia.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
I didn't add a Fixes: tag because this is not an urgent kind of fix that
should require backports.
---
 Documentation/networking/statistics.rst | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/networking/statistics.rst b/Documentation/networking/statistics.rst
index 75e017dfa825..22503a90e369 100644
--- a/Documentation/networking/statistics.rst
+++ b/Documentation/networking/statistics.rst
@@ -184,9 +184,11 @@ Protocol-related statistics can be requested in get commands by setting
 the `ETHTOOL_FLAG_STATS` flag in `ETHTOOL_A_HEADER_FLAGS`. Currently
 statistics are supported in the following commands:
 
-  - `ETHTOOL_MSG_PAUSE_GET`
   - `ETHTOOL_MSG_FEC_GET`
+  - 'ETHTOOL_MSG_LINKSTATE_GET'
   - `ETHTOOL_MSG_MM_GET`
+  - `ETHTOOL_MSG_PAUSE_GET`
+  - 'ETHTOOL_MSG_TSINFO_GET'
 
 debugfs
 -------
-- 
2.43.0

