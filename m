Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 103CEB53F23
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 01:41:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3E0E421CB;
	Thu, 11 Sep 2025 23:41:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7ot5Zj6Rkey3; Thu, 11 Sep 2025 23:41:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFCD6423EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757634103;
	bh=kjkkgRhcr5Sea/dpDadHhu9zEPEQBGiAG48htW1Y90A=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AklwVQ3AOTkCTrFH+xH3e8buJ1UvHPrDv8t+CFd2inPEaZ8abBsMpLnTwprJHfZ2O
	 OVxdwE4qEbdLFjwwC0+NG/ixipzG5GgLLLwLqW0/yn1OiNiQacjqhjnmOClBQzHvb0
	 Ovx+IuBxWVkoEqsXVOrYF7+sig+AYvppZpS5ecyuZ4Sha7wuGoj982AFDnbjeBAcrD
	 6nZC155OPAIjrxpuYC4r/LXOH5J2LIqigtfpM54dQuw20j/XTdfMJFr3iHYomJKkvz
	 9bsUMmmiN9KyW0KlFDcw7KgZ0xplXtp4QtnfkJq0PnSwld4m4RZbRlpzL14YlfqERg
	 lnZwPoSeR/cBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFCD6423EC;
	Thu, 11 Sep 2025 23:41:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4BA2692E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 23:41:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C23E6F6C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 23:41:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1LY9Bq7hHTz1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Sep 2025 23:41:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B511B6F6BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B511B6F6BE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B511B6F6BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 23:41:40 +0000 (UTC)
X-CSE-ConnectionGUID: 8uJE1GB3TumyfOP2xYOQtg==
X-CSE-MsgGUID: KFNNI60cQlaVZW1TeEC2Bw==
X-IronPort-AV: E=McAfee;i="6800,10657,11550"; a="71354785"
X-IronPort-AV: E=Sophos;i="6.18,258,1751266800"; d="scan'208";a="71354785"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 16:41:38 -0700
X-CSE-ConnectionGUID: 1vJ9H64AR4mCT8ojLdObtg==
X-CSE-MsgGUID: itRUAuH3QRCRU3oHFa92Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,258,1751266800"; d="scan'208";a="204589490"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.70])
 ([10.166.28.70])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 16:41:37 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 11 Sep 2025 16:40:37 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-resend-jbrandeb-ice-standard-stats-v3-1-1bcffd157aa5@intel.com>
References: <20250911-resend-jbrandeb-ice-standard-stats-v3-0-1bcffd157aa5@intel.com>
In-Reply-To: <20250911-resend-jbrandeb-ice-standard-stats-v3-0-1bcffd157aa5@intel.com>
To: Jesse Brandeburg <jbrandeburg@cloudflare.com>, 
 Jakub Kicinski <kuba@kernel.org>, Hariprasad Kelam <hkelam@marvell.com>, 
 Simon Horman <horms@kernel.org>, 
 Marcin Szycik <marcin.szycik@linux.intel.com>, 
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, netdev@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org, corbet@lwn.net, 
 Jacob Keller <jacob.e.keller@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
X-Mailer: b4 0.15-dev-c61db
X-Developer-Signature: v=1; a=openpgp-sha256; l=1472;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=tgbQu2OqsM4wvoaJ2Ac7Pu7HlNzbap0vQ4hGe758rUM=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhozDcQbXAksf9db77ag6F7ovql4q7v4E+xaLOa0B1YG16
 /iYzWZ2lLIwiHExyIopsig4hKy8bjwhTOuNsxzMHFYmkCEMXJwCMJGqq4wM296Zvc6ck9N++PDy
 Sca/bc5IHFtgINLwq1t30UvV2TM4tBn+2VR9TMibXDqv+f9293kBi9c/yEgxv3ndtjP2TsSq9tV
 GnAA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757634101; x=1789170101;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=U5LicZk3zOH+cfVm8UiDiYn2gNrNlZZkTJ30LuKTw3c=;
 b=ge49x39Ma2g8CTEnkggNF5uPd9w0Zlqk4FoK/avN0WcCmxMovq9PPQpn
 ZqnUFYrzezaz7SCdltYBFEQnLjB+si5SrsjDo+AccYAfOCpZVJjMC20Xd
 YEKin4GqJ05RzjQ9mugq0tAzWglgPsinaS9p8oR0YAw8WDO0ecYzbInUC
 wDwkKhDABzuOed4iDZKldMeUQ4/bEXLRYhwyQECaeSVG1Md5ULYWL86dm
 /30YBZXOSfLxiIue99s3ut66KJncffzjss7G7JokitFLtGOEHX+zrO/1T
 MrH+gcSxJj46AP+zU0GHdHMl6zvNDNZe69ozt1Vt58pFKZgVjq3qqRD6I
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ge49x39M
Subject: [Intel-wired-lan] [PATCH v3 1/5] net: docs: add missing features
 that can have stats
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

