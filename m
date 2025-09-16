Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 84181B5A1EA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 22:10:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36F68411B7;
	Tue, 16 Sep 2025 20:10:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZTlT2vg6T22T; Tue, 16 Sep 2025 20:10:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2F47411DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758053408;
	bh=GJrrkdePGEJ1e+EIIrjEPjRAmNxNNV6EbVnKfP5/ov0=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HCge+4wkfDpdY79/o0UclnUIkjfBQFobfsoK99JNZ4HWzup8PeM0/WEvfhoOaUyL8
	 beAW+R0igqu8udHKRUAtGjA4wfVqjciaL9RoKUEAvbqP5CwPgTHazsXPDEW3BwGUNn
	 nFnFsUdJRX7fFwxcZgk+umExZepd+6S5sFVBI5IwLjBUQsXNC0fLMU08x+WdZAiokm
	 X+JzXcDQmKut6pj2/oD8Ozoa3tTVrzpHNuDFX4dmhBeWBDyTtlCR/udiwuNWb2xMLF
	 Ei7FbtGf/lLWFk8fCk0vbOiNlOJAGAaGFkkwIUdh5PNBvfOKuhQOYzI6SnkiNqbtRJ
	 dB2mSla7CSvKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2F47411DB;
	Tue, 16 Sep 2025 20:10:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 132BE12D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 20:10:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE13641916
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 20:10:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vpWoSZHGrrui for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 20:10:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 574C441906
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 574C441906
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 574C441906
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 20:10:06 +0000 (UTC)
X-CSE-ConnectionGUID: h97Pr0RQQ0i0KmpRdRIzLQ==
X-CSE-MsgGUID: wliXwxCkTyWObqepI/GwmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="85788644"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="85788644"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 13:10:05 -0700
X-CSE-ConnectionGUID: vn90qRE9QhSC/MRX6GTXUA==
X-CSE-MsgGUID: S98OtFRQQvm6Vf0Ma9eNNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="174606731"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.70])
 ([10.166.28.70])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 13:10:06 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 16 Sep 2025 13:09:20 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-jk-fix-missing-underscore-v1-1-a64be25ec2ac@intel.com>
X-B4-Tracking: v=1; b=H4sIAPDDyWgC/x2MzQ6CQAwGX4X0bBNYFMVXMR7M8i3Un0JaFRLCu
 7vxOMnMrOQwgdO5WMnwFZdRM1S7guJw0x4sXWYKZTiUbdXw/cFJFn6Ju2jPH+1gHkcDI6QUj6j
 bfX2i3E+GbP7fF5L5yYo3XbftB79OuVt0AAAA
X-Change-ID: 20250916-jk-fix-missing-underscore-e2ffc7e39438
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.15-dev-cbe0e
X-Developer-Signature: v=1; a=openpgp-sha256; l=1709;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=sG1UguvSYSALefbAtByxqgdIGq4a3+WwUJhHmXPgZfI=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhoyTRyQ/61pyhXNnxYsLe2xZ8/H+b/28r5bhKVP7CnsO2
 DmGqW3pKGVhEONikBVTZFFwCFl53XhCmNYbZzmYOaxMIEMYuDgFYCJyBgz/lHOuvAhMzrx5TLPe
 ULB0u8MWyWYNbkNPwRenhLd2a0jFMfzTfHx1y5XfhbuWBHc3qUZZvzv59cymewtSLubqqC9yNWl
 mAgA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758053406; x=1789589406;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=sG1UguvSYSALefbAtByxqgdIGq4a3+WwUJhHmXPgZfI=;
 b=BfoKt/L/J11MEDsQMKH2E2whppU0pmglb6YZ50qiSuPnCXVsgNocVhtF
 HXY+m7Lgb+Y4WFFg3oGtS5eeflzCSsnUhK8V8V/YzoQK7/VcS4Q+qJyG4
 zCDIyMR2djqsizmakBReqTIbNMeqoupDHPlrXrCkDNio6QJR5+qT5+ycB
 j5H8xeOmpMRzRBoIGnL47tbAUmTkdmP8Syj1u6e05DSJJpTJCUpVgl5UF
 HgZR6NScyQfdGd+udh+EP34h7FIJU6wb6WjqrRZXRB95nvx71Vamuleua
 DnGyITKPHbp7a+ubPaD4QxogPof9g1zTva91cfvNNYGGEubfd4IaTdx12
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BfoKt/L/
Subject: [Intel-wired-lan] [PATCH iwl-net] libie: fix string names for AQ
 error codes
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

The LIBIE_AQ_STR macro() introduced by commit 5feaa7a07b85 ("libie: add
adminq helper for converting err to str") is used in order to generate
strings for printing human readable error codes. Its definition is missing
the separating underscore ('_') character which makes the resulting strings
difficult to read. Additionally, the string won't match the source code,
preventing search tools from working properly.

Add the missing underscore character, fixing the error string names.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Fixes: 5feaa7a07b85 ("libie: add adminq helper for converting err to str")
---
I found this recently while reviewing the libie code. I believe this
warrants a net fix because it is both simple, and because users may attempt
to pass printed error codes into search tools like grep, and will be unable
to locate the error values without manually adding the missing '_'.
---
 drivers/net/ethernet/intel/libie/adminq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/libie/adminq.c b/drivers/net/ethernet/intel/libie/adminq.c
index 55356548e3f0..7b4ff479e7e5 100644
--- a/drivers/net/ethernet/intel/libie/adminq.c
+++ b/drivers/net/ethernet/intel/libie/adminq.c
@@ -6,7 +6,7 @@
 
 static const char * const libie_aq_str_arr[] = {
 #define LIBIE_AQ_STR(x)					\
-	[LIBIE_AQ_RC_##x]	= "LIBIE_AQ_RC" #x
+	[LIBIE_AQ_RC_##x]	= "LIBIE_AQ_RC_" #x
 	LIBIE_AQ_STR(OK),
 	LIBIE_AQ_STR(EPERM),
 	LIBIE_AQ_STR(ENOENT),

---
base-commit: 93ab4881a4e2b9657bdce4b8940073bfb4ed5eab
change-id: 20250916-jk-fix-missing-underscore-e2ffc7e39438

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

