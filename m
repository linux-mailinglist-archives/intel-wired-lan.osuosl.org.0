Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D0492F82E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2024 11:45:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E1ADF412DB;
	Fri, 12 Jul 2024 09:44:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8EQiOMgwmQM9; Fri, 12 Jul 2024 09:44:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D9674129B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720777497;
	bh=1K72tDSO/u2W+TP1Q2vhaoO+7RwRbRTJs8MZk4XIR/c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7dh7k/A0mvUpGfyLqmAtujp9WRjK3HS+OOO82y3uonJRmrurbB24+EviyxP7Em0uv
	 oa+0oLSB+8eKe8IeBkG0mbRy/Rw50WKqzv9HCzTHOCknYDXhs7PZkgza4hUOcEDM/L
	 vjhYQyfs9slh/dJm0umT2ZLeZQRIRL05WVy3z/Ka+UPumhxuBslCkTsiR9ZztD14XX
	 M521CN4AbjmCbNvB614iUtAyEDDLkuMx55KTjruS1phZPopEHC5ePgUKAXpb1VzXRo
	 2Cr84jtKUIigVWKk6M1J9wRwZzVwkRRGdbBEXlTQTOTZXwHBd2sZQBvk08FofK8VrB
	 gkI89JRVJPBhQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D9674129B;
	Fri, 12 Jul 2024 09:44:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3CB0A1BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 09:44:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 28F9D412D7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 09:44:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ylL7sMrgtGD9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jul 2024 09:44:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E6AC240A1E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6AC240A1E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E6AC240A1E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 09:44:52 +0000 (UTC)
X-CSE-ConnectionGUID: 6bXluvyZRX6j3l7HDtJE1Q==
X-CSE-MsgGUID: XVZd5Y1WSHGEK94qV3m+KA==
X-IronPort-AV: E=McAfee;i="6700,10204,11130"; a="18076958"
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="18076958"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 02:44:52 -0700
X-CSE-ConnectionGUID: OkcfGZRFSjyr9FwohQgC5Q==
X-CSE-MsgGUID: UEfdgnPOQ9yCOCtsSqkHBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,202,1716274800"; d="scan'208";a="49524305"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa007.jf.intel.com with ESMTP; 12 Jul 2024 02:44:49 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 410E412417;
 Fri, 12 Jul 2024 10:44:47 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Jul 2024 05:32:46 -0400
Message-Id: <20240712093251.18683-2-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240712093251.18683-1-mateusz.polchlopek@intel.com>
References: <20240712093251.18683-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720777493; x=1752313493;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sQKpq1440VG+bHpu22o4DA2miwD/NHYAEoARj0gEpQw=;
 b=cXuMCsAa6l7o7CDQg9yN26kCmgamn4LjWvj7u9JdqnUXETpE9uWsPlf3
 oAQE8zppEjEvVX2zkSwfzZ05Sxtp1F54uu6hyAx0+9jw1420bBEEP9K6n
 6TcxqmrSumNqT1r8Bq5+rQTZIqI0Mu5kWTc253O2B86m/fVyVeR8s9LgB
 5DYVSTGkDaq8RRiJ65gpl5vLL9AdBHBoA5nhkhI9p+uplls+YQlkrnOG8
 PVs231x3gYPIyXjbBouvmezCjJkKEZEbe1fAdq4dUGFNSSv8RwABCxRS1
 F6fFMlcuvUFNCnUtUuXyuLBbN4dbtBidF7nvRVX1SHm1JFrfkTAnLQmwK
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cXuMCsAa
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/6] checkpatch: don't
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
Cc: willemb@google.com, Wojciech Drewek <wojciech.drewek@intel.com>,
 dwaipayanray1@gmail.com, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, joe@perches.com, edumazet@google.com,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org, apw@canonical.com,
 lukas.bulwahn@gmail.com, akpm@linux-foundation.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Improve CamelCase recognition logic to avoid reporting on
 _Generic() use.

Other C keywords, such as _Bool, are intentionally omitted, as those
should be rather avoided in new source code.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 scripts/checkpatch.pl | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 2b812210b412..c4a087d325d4 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -5840,6 +5840,8 @@ sub process {
 #CamelCase
 			if ($var !~ /^$Constant$/ &&
 			    $var =~ /[A-Z][a-z]|[a-z][A-Z]/ &&
+#Ignore C keywords
+			    $var !~ /^_Generic$/ &&
 #Ignore some autogenerated defines and enum values
 			    $var !~ /^(?:[A-Z]+_){1,5}[A-Z]{1,3}[a-z]/ &&
 #Ignore Page<foo> variants
-- 
2.38.1

