Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A17A3C788
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2025 19:29:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8557C8123C;
	Wed, 19 Feb 2025 18:28:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EkqdtfcWKCLo; Wed, 19 Feb 2025 18:28:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAB2684856
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739989599;
	bh=zS5lBfnZIbCBDY/vb1qXtAT5T5oykbh/YMOcv30/j0E=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hIf/cBCEDDOJan8jM1/yHS8Oe6tP0hi7OseZ0JigzdcL09cyL5EDSPLyTSJXSyTOb
	 mkovyLhUX+jRL/u4BWhfQf9x0tFF+4QAeAyvIaYILL3QpChkvMh2vrEjVdOQ5agw7e
	 Rm7eoD0Jquj/euYIT/4OT6JK1GamOtW1c9KKGNE55wX2DYBwmTFhoGsz7yibL24nmn
	 FJjzX9G9AAaUdFKyc2tzK9ouoW+GHDwAMY0O6Ax6WNcEVHPum5EC67OCLV7XUXswEc
	 8wjJU4Z8mLt8/iVD77qBdBSrYTkrEnnpGhvAb0ms0Q0vOsu0NN/OARo9x9yp1h/OHs
	 2QinfV3Xhzfrg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAB2684856;
	Wed, 19 Feb 2025 18:26:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 18510CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 17:47:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 228FE81F31
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 17:47:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RCAg5R78O6F3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2025 17:47:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6AD99844AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6AD99844AF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6AD99844AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 17:46:12 +0000 (UTC)
X-CSE-ConnectionGUID: KfK2fNigSgeF2cLnGbfm2g==
X-CSE-MsgGUID: DcrJMQKaSr+uS269C7sInw==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="50952991"
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="50952991"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 09:46:12 -0800
X-CSE-ConnectionGUID: JfsQ4rI5SmOgRwqeVyN97g==
X-CSE-MsgGUID: WUiLLwANSHyTznJPs8d55Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119427318"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 19 Feb 2025 08:44:32 -0800
Received: from pkitszel-desk.intel.com (unknown [10.245.246.109])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C85EE33E9A;
 Wed, 19 Feb 2025 16:44:16 +0000 (GMT)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Jakub Kicinski <kuba@kernel.org>,
 Cosmin Ratiu <cratiu@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>
Cc: netdev@vger.kernel.org, Konrad Knitter <konrad.knitter@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, davem@davemloft.net,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew@lunn.ch>, linux-kernel@vger.kernel.org,
 ITP Upstream <nxne.cnse.osdt.itp.upstreaming@intel.com>,
 Carolina Jubran <cjubran@nvidia.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Wed, 19 Feb 2025 17:32:53 +0100
Message-ID: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739987174; x=1771523174;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OqS1vKlIpdTVaIkmp8i1OWbEscx84902VNdjPoE0Guk=;
 b=dAbnnDd3otoD8FwNLtptNQPPQboY64TMtCTi93Er76QLqYwCyeCUEFdH
 sn0USV2E3WCHuzFO3OMq8KVUWLUa6N+SFoUJamTNLRKiEXxoLGw/nXqQ/
 O7MT5LMRUr+AZxAJttPHicJpbl3Id/hauu/4ljweBt9z4aSxAJHgUV/gA
 /CNkImRk3Lu01ExeB0c4rizjd6l10dGF0/qAZdz8JkIp1Xm205gUFf0VB
 2axl+ZEXSWOkJEJKs4h0Z1UbBFKYq0FtS+zhLAHPWq2rC1Dw2swGVIebM
 kv11SIBV+4Kz7CCSndSXBqFT2/gwVQ0sFeHGmONUMo0ayiFG0BB1rNXZB
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dAbnnDd3
Subject: [Intel-wired-lan] [RFC net-next v2 0/2] devlink: whole-device,
 resource .occ_set()
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


I'm working on ice+iavf changes that utilize the two devlink patches
of this RFC series. The two are related in that I will group them anyway
for my actual submission.

Patch 1: add an option for drivers like ice (devlink instance per PF)
	to add a whole-device devlink instance, that wraps them together.

Patch 2: add resource occupation setter and a (better) mode of resource
	control for users

Przemek Kitszel (2):
  devlink: add whole device devlink instance
  devlink: give user option to allocate resources

 net/devlink/devl_internal.h | 14 +++---
 net/devlink/core.c          | 58 ++++++++++++++++++-----
 net/devlink/netlink.c       |  4 +-
 net/devlink/port.c          |  4 +-
 net/devlink/resource.c      | 94 +++++++++++++++++++++++++++++--------
 5 files changed, 132 insertions(+), 42 deletions(-)

-- 
2.46.0

