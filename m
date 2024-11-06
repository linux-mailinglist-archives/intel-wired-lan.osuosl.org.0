Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 457E79BE25E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 10:24:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6DB36084B;
	Wed,  6 Nov 2024 09:24:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xN88hnvBjIuP; Wed,  6 Nov 2024 09:24:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A1D260612
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730885077;
	bh=Ifsgo/swLiHCjkNXnfnF/KO9mWKBLrLWscpKyGAm++E=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZPRYK637P1e7pF3b+i563NkOha30d0UccyaVRGEbmAQhRaAnmZoIvFdk7gIFnTQKL
	 WXB+sFCkh2bHobXF8Hc8p+B0sJsaiB5zm43syyWwCls8Jw+csFkKDgSKgQL0wt7Jb2
	 JyTUSkElnx/1LZes3BbKI2uCYyqVXl9u4Oc55beMT7zRgvaktW21W6q58MbkIjzBc3
	 FDyEhCRkHUMB01A29L/HNh0Zk7CtzhDHsebqtviHEf/T0cJ9otbVhvpYDxB5dniHnF
	 0Lbd288GPQrnOPsgbgKP1rG5i+yhQ309bKMiWjOl1EGzbvCGoRaKJxMEEeWTUfdZW1
	 UV5suZ2yiTu5w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A1D260612;
	Wed,  6 Nov 2024 09:24:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1B3DC3B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 09:24:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 06EDF607DC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 09:24:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z_v4o20hIbVw for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 09:24:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=konrad.knitter@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 46BB1605EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46BB1605EB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 46BB1605EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 09:24:33 +0000 (UTC)
X-CSE-ConnectionGUID: UbTkss8XTsGv2ce4vCQzZg==
X-CSE-MsgGUID: Swlpo9RrSwSWjdqVoaWo4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="34368391"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="34368391"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 01:24:33 -0800
X-CSE-ConnectionGUID: UvcYAVK8TsO38gRbR87bwg==
X-CSE-MsgGUID: rLO9vz0hQOmdSHrVJtXe4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="115221974"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 06 Nov 2024 01:24:11 -0800
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id F36F02877B;
 Wed,  6 Nov 2024 09:24:09 +0000 (GMT)
From: Konrad Knitter <konrad.knitter@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: jacob.e.keller@intel.com, netdev@vger.kernel.org, jiri@resnulli.us,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, linux-kernel@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Konrad Knitter <konrad.knitter@intel.com>
Date: Wed,  6 Nov 2024 10:36:40 +0100
Message-Id: <20241106093643.106476-1-konrad.knitter@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730885074; x=1762421074;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lSx6RpfxeZDBlJRdZ14NbzOHSwa0eAELlC3WjgXjqSM=;
 b=Vzjy73SR8pkXBEc7+s9rk7jWm+da1acF+LF8r7YBk+G62PSHnb4Dp9vI
 NaBtQaDFJMd/qI1SUsVYppO/PCIMUfLK2m8kL5QnF2kGeL7yFu+KrFiR4
 0addY0lk0c5J9JOK5UAngFhL/hHbls+k5ZZCLrr7X3e+Z1E1gpf2hcLAk
 Sdp1TKqMOAc4swJyh8PhLO27YXDQCGfI4mGK6rlre7wl0cnEtjLIvy5i/
 ofKsYUAONpm9v9HfRg9jplX77kxFfofNnv5OXai/QTeOFu+/vUGeoGwda
 AfCdbus46rSn+vepdx4djugX1qU8KkRUVjaJ1o8MLqS5Av07nQhoyYoU4
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Vzjy73SR
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/3] support FW Recovery Mode
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

Enable update of card in FW Recovery Mode

v2: Update pldmfw commit description

Konrad Knitter (3):
  pldmfw: enable selected component update
  devlink: add devl guard
  ice: support FW Recovery Mode

 .../net/ethernet/intel/ice/devlink/devlink.c  |  8 ++-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
 .../net/ethernet/intel/ice/ice_fw_update.c    | 14 ++++-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  6 +++
 drivers/net/ethernet/intel/ice/ice_lib.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 53 +++++++++++++++++++
 include/linux/pldmfw.h                        |  8 +++
 include/net/devlink.h                         |  1 +
 lib/pldmfw/pldmfw.c                           |  8 +++
 9 files changed, 97 insertions(+), 3 deletions(-)

-- 
2.38.1

