Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9710E9AB533
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 19:37:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE3BE60831;
	Tue, 22 Oct 2024 17:37:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rmJl0AUYQt2U; Tue, 22 Oct 2024 17:37:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10BF16082C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729618656;
	bh=+ZhRxqOy8L42YG1BxeKIl7hLhpsXhP07VMHkz1+P9II=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fBMCffqjjdSbhURQDtTL7peKrTYraJ8fuLcXYyebC+DGrE/VLJLcWXi54K/a6BLv7
	 s+njP9RyWwv38d06I/Y5bQUn+Rzkg9knQwoKWLBBCeNGxP2Ka8Bs32jZbiyNPBRe7u
	 fV4W85SLNvGJVEqMqNPeddsMhwaOsZA4UQCREV7N5lFMVMCaZl0JkIbgwk5+hUjzXu
	 I23GnJBHsfGudSZwUL2HzeJQoidwKnB9cqJuQXV6dRlQ1TOis/BzJgjwz+gxnbRlRm
	 q86XbAB6qG8gk/swS8Co8UobPmlQC0d2TAIGACpK3kyqxa6t0GsJebmG444SlNMjqC
	 K2sT0EnYuOmiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10BF16082C;
	Tue, 22 Oct 2024 17:37:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 77F3A5126
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 17:37:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 54ECE40992
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 17:37:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ll52ViR9DCmn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 17:37:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1761440990
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1761440990
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1761440990
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 17:37:32 +0000 (UTC)
X-CSE-ConnectionGUID: jVzJDAxCRbGqSDvnl67CoQ==
X-CSE-MsgGUID: 6KMWWZ8MQ/a4HLngX9AY9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39721920"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39721920"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 10:37:27 -0700
X-CSE-ConnectionGUID: zb2j2B31Reqqft+hnQL9/A==
X-CSE-MsgGUID: H/ZfjSAFQBmLav2F2Ey/YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="79862534"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.24])
 by orviesa009.jf.intel.com with ESMTP; 22 Oct 2024 10:37:27 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Tue, 22 Oct 2024 10:35:25 -0700
Message-ID: <20241022173527.87972-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729618654; x=1761154654;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fG792TU8ikDhDDaKB7aPcrZ4hTCvyyR233chf+BttXE=;
 b=EBsAD0cmMKvIOeuQvGxNgHcKhHTJ+tlr1Zmbw25hLKX/aD8NfNPgvTH6
 yKSqjPBu53xD7GTvus3AW1GrUy1nPRMKykTGwuQbL9Tl80gGAzUQuu5zt
 YGBtBbV3dAYxkI0nsDtyo1lDwMfBp7nNupe4GZkML4p9OGhQTNR9ywfzd
 CrldFV/OscOFtyCDPxsXIb42md9k07I40fMZYzIGb+JIzitoVtei+msSL
 hLzizbIGU1/uASOoCBYPosofk8M32gYsUS2vVTxW7kVzEhiPnHlSP8Hvi
 iJUcdyG+ZCJg5zecXLVW5lA+MVVN21oT6aJ9ul4HrlcbOovtTfJ/CatPn
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EBsAD0cm
Subject: [Intel-wired-lan] [PATCH iwl-net 0/2] fix reset issues
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

This series fixes reset related issues, especially the case
where the idpf is running on the host and the platform running
the device control plane is rebooted. The first patch fixes the
link_ksettings and the second patch fixes the error path in
idpf_vc_core_init function.

Pavan Kumar Linga (2):
  idpf: avoid vport access in idpf_get_link_ksettings
  idpf: fix idpf_vc_core_init error path

 drivers/net/ethernet/intel/idpf/idpf.h          |  4 ++--
 drivers/net/ethernet/intel/idpf/idpf_ethtool.c  | 11 +++--------
 drivers/net/ethernet/intel/idpf/idpf_lib.c      |  5 +++--
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c |  9 +--------
 4 files changed, 9 insertions(+), 20 deletions(-)

-- 
2.43.0

