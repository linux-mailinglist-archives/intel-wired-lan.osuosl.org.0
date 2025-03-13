Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6581EA5F96E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Mar 2025 16:18:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8F3941964;
	Thu, 13 Mar 2025 15:18:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JOAHS-kz7Z1k; Thu, 13 Mar 2025 15:18:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34150418D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741879084;
	bh=yKGAoMy+atEl4pQDZO2bF9LBSmYiynCl9d3tUz46ZMM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uoOxU2BCe0YyeMQAwxaqmJmy/zD4zHBTQR1t1UeLjigz35QKTvQhpgi03vajXRg/H
	 ZbBmihzmSvhzbBmENc4B5vF4JZPFd3fed2z2HDoxxWf1euC3fS+n2ABiJMrujAiqCP
	 dFmUdphLc/nxDki6m5XHQNwe1wTk4bVlvV5yL0PxJ23gPw4ERIGc81dldh/35mLGZT
	 OkPRGkOj4PaI/9iJpCumwHjbYhnUxr9BK+M/OcI5yu+/IZ/mTPCv2AVH0v3YY5+AoL
	 KphNsB+onWM2WPQL8J2xi7GcpggVSYoaS0s+o7i4kPmnUR15hnDlgzXIS6IuU0MH8t
	 lTwXuUKMi1mDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34150418D6;
	Thu, 13 Mar 2025 15:18:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 50767E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 15:18:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 340EE4178F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 15:18:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MyCuqQb0ept8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Mar 2025 15:18:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 800B44174B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 800B44174B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 800B44174B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 15:18:00 +0000 (UTC)
X-CSE-ConnectionGUID: 8T2Eg58IS227/yNCxWQapg==
X-CSE-MsgGUID: RcfIUvBpTXKxru9l1yYG5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="43104803"
X-IronPort-AV: E=Sophos;i="6.14,245,1736841600"; d="scan'208";a="43104803"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 08:18:00 -0700
X-CSE-ConnectionGUID: zGCdisPsSa+/nup2KZmayg==
X-CSE-MsgGUID: WPacmbV/RUOoOdpn4UQCjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,245,1736841600"; d="scan'208";a="121917844"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa008.jf.intel.com with ESMTP; 13 Mar 2025 08:17:58 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, horms@kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Jiri Pirko <jiri@nvidia.com>,
 Kalesh AP <kalesh-anakkur.purayil@broadcom.com>,
 Bharath R <bharath.r@intel.com>
Date: Thu, 13 Mar 2025 16:03:32 +0100
Message-Id: <20250313150346.356612-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250313150346.356612-1-jedrzej.jagielski@intel.com>
References: <20250313150346.356612-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741879080; x=1773415080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Uo8WE5HynnA8wtxGTIBIqPd/UrNvxCk0dLM26vDYZuw=;
 b=LJUASGXUaH/++pf6M1/xzHm1dnDZrBBgJF05Xnyywczsy8H0lGebmVn6
 l+f+aL3yRc+ma4ZLGER5lPPnh+JjfxMfTDVHARPsb0+fYAbWLWSXh47Vz
 78w746bXs4S/P9t1mFKcO4W8WTyOvZY1203vlPXfsC1udU1ChPQHlMuBw
 YOWbYrp1UVQsDlqRsfdj4QR9wZcCbiegAkTgK6psB9H6VKoLKNY7znNqT
 8t48XIM7afpGCQGIz7edXCxzx6wM0Gyw5dENcT/M00KBPtt+faiREqi+y
 oBlZGwHNi6iTSmOdTkbAPIFyp6OI3IAYtCHzjJhivNRbIpzl+2xKpAtWs
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LJUASGXU
Subject: [Intel-wired-lan] [PATCH iwl-next v8 01/15] devlink: add value
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
Reviewed-by: Kalesh AP <kalesh-anakkur.purayil@broadcom.com>
Tested-by: Bharath R <bharath.r@intel.com>
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

