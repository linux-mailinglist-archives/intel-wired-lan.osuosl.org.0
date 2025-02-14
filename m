Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEB9A35F20
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 14:30:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5922848DB;
	Fri, 14 Feb 2025 13:30:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IzY5iAwDHEom; Fri, 14 Feb 2025 13:30:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BEF6848A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739539832;
	bh=GTHMpgHTmp+1m5NE4IuQOO9/7miBUkNBiYjTuLn7ekA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gF7Kr2GQRkInljgoIeyMNx6OuAnq5r3SRWbLcqvseDx19VwcmVXqeN+IzMpLyfoDe
	 nl7sz1Q3ljIzl7UFFK12Ey5SHu7FUhJGLGtth8NOUvizrtAohPw+/RHJGXILP7RitR
	 /Mf56N7Hz0F8RjeeTTOvMnWFJWJgvGJZ2vDyA/mK9n+NcyHWVNPkT+CBqxDl2WYL9I
	 X6l+tgKSqSkMyWeZXkIkS+0cBjap9WAimD5tC7Ltwllh17iRykqH0LwOPadMdtMc+0
	 rMFo8e4/EqrIJwwjO4u7UvXuOeTnj+jxVkXTdpMbSaBBigA1czKB+dj4MlqbvcBT3s
	 d6Y7NB4HYCDVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3BEF6848A1;
	Fri, 14 Feb 2025 13:30:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5712AC2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 13:30:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B2828488B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 13:30:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zk0JkM6lnof7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 13:30:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7FAEA84882
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FAEA84882
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7FAEA84882
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 13:30:29 +0000 (UTC)
X-CSE-ConnectionGUID: 6DPFBPoNTZSuWnSlvsqlEQ==
X-CSE-MsgGUID: RUQiTl5tQFi9uPskXaGWBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="40159283"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="40159283"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 05:30:29 -0800
X-CSE-ConnectionGUID: c6ukSG9ZR7q7wtCcCWuPUA==
X-CSE-MsgGUID: mi9XpYG4RuS7O/HfIcAHoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="114094306"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa009.fm.intel.com with ESMTP; 14 Feb 2025 05:30:27 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 mailto:przemyslaw.kitszel@intel.com, jiri@nvidia.com, horms@kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri, 14 Feb 2025 14:16:32 +0100
Message-Id: <20250214131646.118437-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250214131646.118437-1-jedrzej.jagielski@intel.com>
References: <20250214131646.118437-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739539829; x=1771075829;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hJhmGrRCE4BroX1OnJa+3A/+mjS9ayraqChALrdsUIo=;
 b=aa0PpLjpLCZOROoPmfH1JzPsewaokaoupSfJFJYQq9fpbkVyIX+hvDxN
 UfllxfEirFbNxSJBAWpub46fIi/Bi3yqJZMXZccAEYKZdoRNIl0S1gzJq
 6LXETsUuSeeXGi3KAozo5qFmJekuJJEzmbu1rMDNGG86mE5M6HREVMZeh
 AI+yHZF1ggiuqqnmn2fMKtt/jsfTjZc4wqppMWJkoNKXnUa5tQ9UbdLEe
 /U9Wy0LJ7Aic/0JRgPwiiFAWu8wvbEkepKm7PJ/UC17FWNnULO1FHa9rO
 tHybGM3T4Zzq7PG3tjzanOM+c7Mzf8iOS/YJ4PU5yhfbMXg6H9HZxcSso
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aa0PpLjp
Subject: [Intel-wired-lan] [PATCH iwl-next v4 01/15] devlink: add value
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

