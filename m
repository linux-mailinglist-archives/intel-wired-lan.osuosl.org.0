Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B1E9B0D7E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Oct 2024 20:39:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32A4260659;
	Fri, 25 Oct 2024 18:39:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XbzTZrrpLODb; Fri, 25 Oct 2024 18:39:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 991976064E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729881546;
	bh=NaK/hoDk2zK+E2vw6zUBdMXpgThpAOFeQTvpmc0t/fo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WvisyqcqxkisjG7A1MHRYH9wMJw3YznzKX+BqFwl5Pln93WsH575oVshP/4v4lGEe
	 RH2cPjuew1wl4j8iyQo/0Tb3F/pZp29JtL72bYu9MQaNGpLFGuD+O4wiDHa64qYMIV
	 Py5+FInTzpF7tAPkr9Ca0xDVLbNIOuCAeVp0JcvtVXZTsAqD8aWGplEm5FZw/r8xtg
	 G+4StPqyCc7gwWUuAFQzGhbKBa2tCTXGEEXFFFdPqYPGcGvKJa1ffcaRlC3wCCAoLu
	 F9X1P3k05CTH8Syu9bwGnGURnkMQN4CETLLv3zGgmBqZcn+tnX+6sNt85GNEGNp/+3
	 oh1fjCeAvabiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 991976064E;
	Fri, 25 Oct 2024 18:39:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2ACE3281F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 18:39:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 858A540C53
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 18:39:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3oHOhA2GkbU8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2024 18:39:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 93B6F40C0B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93B6F40C0B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 93B6F40C0B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2024 18:39:02 +0000 (UTC)
X-CSE-ConnectionGUID: x/p1B9jpT8ectm4xfmhGbA==
X-CSE-MsgGUID: rgks1AilRpq824I7lVXHFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="47043912"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="47043912"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 11:39:01 -0700
X-CSE-ConnectionGUID: Cvf2kGCFSn6ABUO5s1+uVg==
X-CSE-MsgGUID: Ryrfvuq1QZqUgMr9jf1lxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="111801062"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.24])
 by fmviesa001.fm.intel.com with ESMTP; 25 Oct 2024 11:39:01 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, horms@kernel.org,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Fri, 25 Oct 2024 11:38:41 -0700
Message-ID: <20241025183843.34678-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729881543; x=1761417543;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o3VmDNwDVed1ZPr8iIGkh6V+TiXqw1F1xyEiJ9QakhY=;
 b=gcI/gMHyFbgD4cbX0I6BSZuGBFOPX4piuQ4UXhTRnKrEZSWhZq4bZbgb
 j5SWRq0GWBL2Ay+3iLoQoL0L3RkeESDIgwod4f9IWAtogHZ+MFa3gsrhl
 7AAcpcCXyCwe7uMU3GMFHQYbHD/PNltr2tK7BeXsYOH68MEKUNzLBLj0t
 0qtAgLTqpkTDv6Sf6Z4PA8WYhCvZxHNdJJuX4vAti/6KYXzvUa/ROKRyd
 ShSqk+q7upH0GGU+DM/7axuAFNezvvXMX/lPFU/T6WoasgmaXYdw1GIYK
 xkyYwDo6lZ70P0WtXnc0/fkmiIxl+GZaKW2DcTlS3pmvm402U2afziTpu
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gcI/gMHy
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/2] fix reset issues
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
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c |  3 +--
 4 files changed, 9 insertions(+), 14 deletions(-)

-- 
2.43.0

