Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 676D6A5DD86
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 14:13:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60ED581FB0;
	Wed, 12 Mar 2025 13:13:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id clOp1lNhNm3D; Wed, 12 Mar 2025 13:13:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1AA881F5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741785180;
	bh=yKGAoMy+atEl4pQDZO2bF9LBSmYiynCl9d3tUz46ZMM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=btxBJKCVjL9hBv6ZfmtpMFOI+Dl+T3/cR9aqU0WTGdj3cwDpH0hllepSdbak6gnAj
	 hAxrWF2J+uABxSycCmEbvwuHOCCTew2Ebr3FllTbxxsIRscFoaJLJ1C5Cx9fnNT5HL
	 6mPiXtk56daw0avoQVaBdFgd92V78aBEe98eTyDY9CBxRVqcFQNwxVznN2oKmWYX2x
	 CX+X5WSNM9sbDvWvDh1AjVit1btqbHRX7wRghVA18NK2R81+3uB1YrkCEVlsauGbe4
	 Ycg45j3C8UQkNkdjkmZIA4RS0yJM4K/x8x+PQuqgOETZtm/lxogyouVSRww9dROX15
	 w3i95pBSe+9LQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1AA881F5C;
	Wed, 12 Mar 2025 13:13:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F26E1C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:12:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0EE2660852
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:12:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C41CUcGUF87Y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 13:12:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6476260831
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6476260831
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6476260831
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:12:56 +0000 (UTC)
X-CSE-ConnectionGUID: yVPMcEeCQK+QLKNtZ58wbw==
X-CSE-MsgGUID: cP2g+CK6TE+hEnhlci2jzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="53510663"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="53510663"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 06:12:56 -0700
X-CSE-ConnectionGUID: zX2oIiUQRBSHdPYmJo6rPg==
X-CSE-MsgGUID: F0JCe90MTVam3jgoxbqeDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="121542053"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa008.jf.intel.com with ESMTP; 12 Mar 2025 06:12:54 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Jiri Pirko <jiri@nvidia.com>,
 Kalesh AP <kalesh-anakkur.purayil@broadcom.com>,
 Bharath R <bharath.r@intel.com>
Date: Wed, 12 Mar 2025 13:58:29 +0100
Message-Id: <20250312125843.347191-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250312125843.347191-1-jedrzej.jagielski@intel.com>
References: <20250312125843.347191-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741785177; x=1773321177;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Uo8WE5HynnA8wtxGTIBIqPd/UrNvxCk0dLM26vDYZuw=;
 b=gfeR1rDSYz3Ju1XyC1xFJAhL92PwCgtDCr77PdQ90itT9jIi9HufIx37
 HClcNyPHjWFYNr9x96dkK8M7gHcqz4bqQmvd595Pg5uwQUXW4G5dycFAx
 0PQbdiY+D3iravGY6vcEtchW5J5m4VBl65V+Jq7nLzhCDPKdtSQKW1Lyr
 G96T0tOcJOKp2k03YL6bj2aAimPgdYVjiCnhRzOBZMXPIpGi+LIkRZnnU
 NI9tLAtUWNt8Qu2Wb+GsJwsXHY3rWAGJJrihqmN+HOi506OeWeTBCQ6dM
 u9m2C9aLnYauTA/pBrd/BKGCMVDPw62TDMsvF5FVeHnXQAgwH++7Hh+Ls
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gfeR1rDS
Subject: [Intel-wired-lan] [PATCH iwl-next v7 01/15] devlink: add value
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

