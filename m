Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C83A3F3A4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 13:05:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71FC440CBA;
	Fri, 21 Feb 2025 12:05:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AfK-IPPRM9AP; Fri, 21 Feb 2025 12:05:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9BCEF4082C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740139513;
	bh=GTHMpgHTmp+1m5NE4IuQOO9/7miBUkNBiYjTuLn7ekA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M0MdZhsBLrans5x2qba3mVwf6GkM4iBgWtu9sDzyGE6D+Czjo4QC9nXd4EYXrt1ew
	 3jRDC7Sjhy6tlDR5CncTAJQ91ja8slEKKGPUqp5eNqz4kn0+xXeTdVYvXnh6DRoGBf
	 mZkvybIoT4PoLQInDqhpS4xnQQCrGfaZh+CiH4ulKxRnnlD873WYj8DnLydr4laEyC
	 4sue2rosgacs24Y3rhNNoenylVjhQwNifHsu8xWsvgH1LdT6Rjr+tXFctQjPtEYC9E
	 MrcIAJSJmzz234KNs9fYxMWYxHCywIrq+U1SrlLyNldM9E6aflKN1WZG4CMVUnHZZt
	 jXfuxKfleA9Pw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BCEF4082C;
	Fri, 21 Feb 2025 12:05:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1DB1E194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:05:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0DA8C811AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:05:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gSZKz_TjuSy2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 12:05:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 48C70811BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48C70811BA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48C70811BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 12:05:10 +0000 (UTC)
X-CSE-ConnectionGUID: HArdFRyxTuWAxLQCYITpsg==
X-CSE-MsgGUID: j0TVHfm9TOuPsNdoTMK1Zg==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="51598924"
X-IronPort-AV: E=Sophos;i="6.13,304,1732608000"; d="scan'208";a="51598924"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 04:05:10 -0800
X-CSE-ConnectionGUID: dbRgF8VaT2uMSof7HbhPpg==
X-CSE-MsgGUID: 4Q8BSlwtQDC4Cjexq+lBGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116260295"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa008.jf.intel.com with ESMTP; 21 Feb 2025 04:05:08 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 jiri@nvidia.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri, 21 Feb 2025 12:51:02 +0100
Message-Id: <20250221115116.169158-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250221115116.169158-1-jedrzej.jagielski@intel.com>
References: <20250221115116.169158-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740139510; x=1771675510;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hJhmGrRCE4BroX1OnJa+3A/+mjS9ayraqChALrdsUIo=;
 b=j+n1e2NrUJcRfHrr+DLPZvuUkWa4RBhX40UegtQHod3JpJU26iF6aGtr
 Ga+BjdbhXa6ItDCu+NU+9UaBuFiglI+bzJDwGSyvZEZg8v69o1gLI+5nE
 UutdNnGX4R83jcfFeQdGA31pd3icVvEtfSglgqJQ6yql4aT1g64sIEQ3r
 FWDCpApsfIwqnWU2p9556LoWsmUARE68zhQ7lHq2nSjUzI8eBUzqJ0v1G
 ZW4TQYNs+77wjvJj64UPlIsQv6rO4oggWssAbNE3hA0lXNoy7LI9m0kYl
 SSRidc+MXNRg7llxk2RPBJ7eLV0op3GOlpUQS23Gd5kKlUtJ4WsjcrfWk
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j+n1e2Nr
Subject: [Intel-wired-lan] [PATCH iwl-next v5 01/15] devlink: add value
 check to devlink_info_version_put()
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

Prevent from proceeding if there's nothing to print.

Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 net/devlink/dev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/devlink/dev.c b/net/devlink/dev.c
index d6e3db300acb..02602704bdea 100644
--- a/net/devlink/dev.c
+++ b/net/devlink/dev.c
@@ -775,7 +775,7 @@ static int devlink_info_version_put(struct devlink_info_req *req, int attr,
 		req->version_cb(version_name, version_type,
 				req->version_cb_priv);
 
-	if (!req->msg)
+	if (!req->msg || !*version_value)
 		return 0;
 
 	nest = nla_nest_start_noflag(req->msg, attr);
-- 
2.31.1

