Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A4A8FF7C4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jun 2024 00:47:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4A0141867;
	Thu,  6 Jun 2024 22:47:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BR49BAMQX9Ii; Thu,  6 Jun 2024 22:47:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6EC8417BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717714036;
	bh=PNxH2XjWJhLMq+/z00Npmviymv9bKOZgjtPosJEh+3Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=x68D3MqiVbGnrzLPcdKX7B5R1Ux+H/lrcv5PCn8P8uhqQEykW6j/NhWxocRzKQ6ms
	 oGVRZzkTVMvEkcZBAKk0fe4zJO8CffzsNHpx5+pdT21n+2yh3B+UM7E1/VBzKpZHlS
	 nPwfX9roBMFsnuvvckPyeyinWhQiuDkvHxLXBs1POduhTRuRLGAj4gUs+qd0lO042N
	 eXCOzz0DzwdkgshzjH5fVRlBqm/zdVsDxKYCFVb78u1lTo/0zpqlUvJBC0Xx1uZt5u
	 vlAHIcPuSVxlj4bnDWe7in4vQbZ4yhmZHP0eUbWubi1sJ22RVKDB4//lP8cAHVogxb
	 gZbpYv2x1bQMQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6EC8417BE;
	Thu,  6 Jun 2024 22:47:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1FA691BF94D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B26084987
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WGyvdCFpvLsi for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 22:47:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4BB58849C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BB58849C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4BB58849C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:12 +0000 (UTC)
X-CSE-ConnectionGUID: VVjZ3Ns2Qbm98ezSg/zzTw==
X-CSE-MsgGUID: BXnNhhXQQEy/YaSwQViDtA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14224003"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14224003"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 15:47:11 -0700
X-CSE-ConnectionGUID: hSq34+ReTMSf+Ga1+VM6uQ==
X-CSE-MsgGUID: GVlBoXQZQcKFnX4OC5EiAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38243833"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 15:47:11 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Jun 2024 15:46:55 -0700
Message-ID: <20240606224701.359706-2-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240606224701.359706-1-jesse.brandeburg@intel.com>
References: <20240606224701.359706-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717714032; x=1749250032;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JwHQnooLsYQJEJd80jekD4Sd5j4++MqVQNbMLJLcE+I=;
 b=PufJixHDkjeqDFsim3NV/wX8t4wiyWwqhg6wBEBurui5VHpKPygNAe1Q
 fFHtcw/M+4KJcWdACpvMv3aKPZ1eLsyWcMI7IMat0IEVXXC3k+p4pKM67
 cJrO5y0VqFFoDMpoa+sWKgyN48H1Odzh7GqH8Sv9kzw656izAWqSlQHwB
 3VGynR2yKlNOcnzKXDzTcrY4Y7dEj+YgZd5+EIRWUoIwXxKE9Js95qD8z
 aJUHt1JwNVxfd5wEoAWavpOyA5yYAWmT21qwUUIWVFyD8+dmAVKdvgRqy
 zQvvs0nBCdlDI6oWQxSiBuggyeSf9kN9C+AyJqDI8zErMEN5DcJTnFcfj
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PufJixHD
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/5] net: docs: add missing
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
Cc: linux-doc@vger.kernel.org, corbet@lwn.net,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

While trying to figure out ethtool -I | --include-statistics, I noticed
some docs got missed when implementing commit 0e9c127729be ("ethtool:
add interface to read Tx hardware timestamping statistics").

Fix up the docs to match the kernel code, and while there, sort them in
alphabetical order.

Cc: Rahul Rameshbabu <rrameshbabu@nvidia.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
Reviewed-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v2: fix up a mixup of backticks and quotes (Jakub)

I didn't add a Fixes: tag because this is not an urgent kind of fix that
should require backports.
---
 Documentation/networking/statistics.rst | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/networking/statistics.rst b/Documentation/networking/statistics.rst
index 75e017dfa825..06f01c0cd65a 100644
--- a/Documentation/networking/statistics.rst
+++ b/Documentation/networking/statistics.rst
@@ -184,9 +184,11 @@ Protocol-related statistics can be requested in get commands by setting
 the `ETHTOOL_FLAG_STATS` flag in `ETHTOOL_A_HEADER_FLAGS`. Currently
 statistics are supported in the following commands:
 
-  - `ETHTOOL_MSG_PAUSE_GET`
   - `ETHTOOL_MSG_FEC_GET`
+  - `ETHTOOL_MSG_LINKSTATE_GET`
   - `ETHTOOL_MSG_MM_GET`
+  - `ETHTOOL_MSG_PAUSE_GET`
+  - `ETHTOOL_MSG_TSINFO_GET`
 
 debugfs
 -------
-- 
2.43.0

