Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C75C2959ECC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 15:37:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0877C4025D;
	Wed, 21 Aug 2024 13:37:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iuc04l_e5dok; Wed, 21 Aug 2024 13:37:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 391CE40361
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724247460;
	bh=sENpLQwrB1k28DpfS8pVqNCy6R7EsuW33fsqBXwXUNU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2AznN18x+lH1siR1LMo/wpLuMOfifn0sjNzzP/jOcYGmwzEzu3+sFzYtHT/tDp/ig
	 qYfRopBSTmIj6AhI4CFaafKMSAZh8AnF6XkMoGLLm2iwib6Muc+xxNPhqoOAY/xtaA
	 nS9NpRovmSXWgciIv9kTtHu8+eLrooItbreY2mBzw5rYfTr1Og85Nz5qbh78DrQaKS
	 B2Ik5bHeTGBgwvE/MfSZwQxhCVvgJ/uzT8hElIQxcgacizcnRv6AsBVGVdX+TLYkJ6
	 DxadeU+s+A6MH5Q9KABmoaRaleylNlU2AmqN/8n1DZcEa6tLVbtlqnGeTFUamRBTdi
	 S3bgJnKxFU1eQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 391CE40361;
	Wed, 21 Aug 2024 13:37:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1EA151BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:37:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0BC084011A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:37:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6BHvBXG4G0_k for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 13:37:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A772B400F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A772B400F3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A772B400F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:37:35 +0000 (UTC)
X-CSE-ConnectionGUID: pud/lWkcSxW/sZjuQSWatw==
X-CSE-MsgGUID: /XP2xLhFR5eTTeL298ZEeQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="45131419"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="45131419"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 06:37:35 -0700
X-CSE-ConnectionGUID: fNRBsvOzQiqaDIwWjW+qyg==
X-CSE-MsgGUID: yBz4ED8wSNyTjDDGjTxQQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="61071255"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 21 Aug 2024 06:37:31 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id F2B782878D;
 Wed, 21 Aug 2024 14:37:28 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Jiri Pirko <jiri@resnulli.us>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 21 Aug 2024 15:37:09 +0200
Message-Id: <20240821133714.61417-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240821133714.61417-1-przemyslaw.kitszel@intel.com>
References: <20240821133714.61417-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724247456; x=1755783456;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C8ttAvSNO0SlJh14VqyZzsFEn/LBgTrhy1JJwP90Xqw=;
 b=YtMAH+1aQoJxw9FDl+kNrP6slZpO8i/NiQeCEwcjUYfr1KJZfoAD5kyo
 72FP2U+X/KWrljW34aM+rab1UHQYRJPnGHf3UqwJTx7dUmtblKs7LDK69
 Agjhog+X97pcp8qnw0ZtnnKG4F++C2aMZI6QGNggxxPxJrIBWp5TxFnNA
 VYJjrDEBC5oicnnF6cGwV78iH5CaRhIaAnxqGcERmlzhNWb3aJ9S6EXrs
 CKEWbVco7lA0MaqBIk4Rbq1R0hVwwL/EqTDC/5E1nR/vqDgO/wYKn73Hr
 7QguvH2fAKIRmr3RNHsesNAvATCvUefmhIt2SU2afyfRvyE4G3nlbAyGE
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YtMAH+1a
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/6] checkpatch: don't
 complain on _Generic() use
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

Improve CamelCase recognition logic to avoid reporting on
_Generic() use.

Other C keywords, such as _Bool, are intentionally omitted, as those
should be rather avoided in new source code.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 scripts/checkpatch.pl | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 39032224d504..d609d47144ff 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -5858,6 +5858,8 @@ sub process {
 #CamelCase
 			if ($var !~ /^$Constant$/ &&
 			    $var =~ /[A-Z][a-z]|[a-z][A-Z]/ &&
+#Ignore C keywords
+			    $var !~ /^_Generic$/ &&
 #Ignore some autogenerated defines and enum values
 			    $var !~ /^(?:[A-Z]+_){1,5}[A-Z]{1,3}[a-z]/ &&
 #Ignore Page<foo> variants
-- 
2.39.3

