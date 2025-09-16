Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 510B0B5A12D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 21:17:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A7C7882798;
	Tue, 16 Sep 2025 19:16:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KxojSW8g7rXx; Tue, 16 Sep 2025 19:16:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7C2382786
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758050218;
	bh=kjkkgRhcr5Sea/dpDadHhu9zEPEQBGiAG48htW1Y90A=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Esq1uliCtMGOwaZ+ZvFG/wHgFzT2VN9BAqMgmMfrJmCtTvmHTTnDx4dD+mhYg8LIw
	 LOD2gsLm7PuEbnq52IgLYay/14TG2zH+omOMgUryWh8hD/HJvGNJ5QHZlTI3F3D+8D
	 MheZNkOegzVUxJLXxZEQrwHY6DrdmnXtgvX8y4wxM4DYLtTc3X9/Tw4mMpY+3Ql/cX
	 pP9Lq1Eo2PxkBf2BP/qNZHtW0j2GXv8bN6QL6f2wPAdgMgj5O4UAHhmDxOOBB+5yUv
	 iV0ypZ51mCiz482QxA27+ICTDuZ8XTGguXsvpDEzF7PyN0vXzQ3SEnZAH4NAUl6mUR
	 ZTX+tly+hbNHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7C2382786;
	Tue, 16 Sep 2025 19:16:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3367E279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:16:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D22C40D3C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:16:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tGrLUszoT7nW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 19:16:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6E44C40DB2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E44C40DB2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6E44C40DB2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:16:54 +0000 (UTC)
X-CSE-ConnectionGUID: LPEjpJ+lT2KePR/wF+UFYg==
X-CSE-MsgGUID: 3EH4y0JXTZimiEwn+AsYkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="60037580"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="60037580"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 12:16:54 -0700
X-CSE-ConnectionGUID: 6n+vR93nSqCTUNP7tKLnRw==
X-CSE-MsgGUID: J18ZnI/HQ1O3fJFO1fJTAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="174961755"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.70])
 ([10.166.28.70])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 12:16:53 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 16 Sep 2025 12:14:54 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-resend-jbrandeb-ice-standard-stats-v4-1-ec198614c738@intel.com>
References: <20250916-resend-jbrandeb-ice-standard-stats-v4-0-ec198614c738@intel.com>
In-Reply-To: <20250916-resend-jbrandeb-ice-standard-stats-v4-0-ec198614c738@intel.com>
To: Jesse Brandeburg <jbrandeburg@cloudflare.com>, 
 Jakub Kicinski <kuba@kernel.org>, Hariprasad Kelam <hkelam@marvell.com>, 
 Simon Horman <horms@kernel.org>, 
 Marcin Szycik <marcin.szycik@linux.intel.com>, 
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, netdev@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org, corbet@lwn.net, 
 Jacob Keller <jacob.e.keller@intel.com>
Cc: jbrandeburg@cloudflare.com
X-Mailer: b4 0.15-dev-cbe0e
X-Developer-Signature: v=1; a=openpgp-sha256; l=1472;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=tgbQu2OqsM4wvoaJ2Ac7Pu7HlNzbap0vQ4hGe758rUM=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhoyT2xfbrSpT5zhu5a/0JWHqvtk2sV6eCayXUrfY3Vn6M
 r9qjtO/jlIWBjEuBlkxRRYFh5CV140nhGm9cZaDmcPKBDKEgYtTACaSVsjIsHtekb7solp18/j5
 izKMWyTj6jwElhZdDrq7wujfJe2nuQz/w1ef9FZLjgzQsfayyGR60qqeuF5Ablac6eu/Wz5ZGcq
 yAQA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758050214; x=1789586214;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=U5LicZk3zOH+cfVm8UiDiYn2gNrNlZZkTJ30LuKTw3c=;
 b=Bgqfotht8a6VOyWEXyQc9wgDlrp4gtF9Afmpn9i6fVQPT9ED3Q5iwpEM
 ZEBV9O2b5HkC/vscv+JoPv2fjAutEjSl3RTzjvPjprMhOM1bxZV79C4CH
 v35ePr1IHcebXhq2WhAU2tgyjEYZ5EJbRAEFkUnOL3qCviXnPijCJPsUE
 kjsY/zaCxLosUXxYExIwOepbRDPPxa7kPKZ9NYKFoW5FM9cXxvQkqsRfj
 BXngerBv+KdhYUThThm3+49NsMg8ECgjqHLmuFZsDwclQ/a67NsCiZfeR
 xbiDLVGwFwQ8GP4zuJvUieDAFthSZsT60UA+Ib36CSkIXX58CqKoV5mS0
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bgqfotht
Subject: [Intel-wired-lan] [PATCH iwl-next v4 1/5] net: docs: add missing
 features that can have stats
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

While trying to figure out ethtool -I | --include-statistics, I noticed
some docs got missed when implementing commit 0e9c127729be ("ethtool:
add interface to read Tx hardware timestamping statistics").

Fix up the docs to match the kernel code, and while there, sort them in
alphabetical order.

Cc: Rahul Rameshbabu <rrameshbabu@nvidia.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
Reviewed-by: Jakub Kicinski <kuba@kernel.org>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 Documentation/networking/statistics.rst | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/networking/statistics.rst b/Documentation/networking/statistics.rst
index 518284e287b0..66b0ef941457 100644
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
2.51.0.rc1.197.g6d975e95c9d7

