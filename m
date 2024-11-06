Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAC89BDAFC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 02:12:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B74180F27;
	Wed,  6 Nov 2024 01:12:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xzlvNwXa4WNd; Wed,  6 Nov 2024 01:12:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD38180F18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730855565;
	bh=eGaIu7FYuaBKpPR4/hUtgzDedTBU8wRdgHb9mbNcYPo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8EFtQty0oERXlKrF9KwIhVLZBgk5v6mMCRrWVgj4+nI7V5pXM0g1fZBFX/9x8jFCU
	 qxnKpncz7zFPvms3rLKFeMCS2osEU+jw/tU+59aFxF+iGQaRSGZe/f/i7tcIFfTHdd
	 /HvNUnjNDSYULcWYMIKvO3v/vGLJuWBGB5EpMLXofx+fjXZJ4PVZPEAsnUnzDI1pbm
	 phWiwvg28j3BKduM7rGA19aHPo2VkJxx2JLCt9aRY2PVpH/vVlnl8HCYPViElvwvnP
	 imAxRhVpC0H0Bt53NpfPno3xiZoK5ij8ms8RB7HiXPkVBWnHTkSN1R6x2ZExFUNRdA
	 W/WaL/cpw9xfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD38180F18;
	Wed,  6 Nov 2024 01:12:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B00A1B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:12:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A62760833
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:12:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jwn0aPO9-DMb for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 01:12:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8B31F606FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B31F606FF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8B31F606FF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 01:12:42 +0000 (UTC)
X-CSE-ConnectionGUID: oJO9ipy/SxafGv9JIPXGog==
X-CSE-MsgGUID: vRw+c2X7Rzu2B4p4sDjbaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="18254709"
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="18254709"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 17:12:40 -0800
X-CSE-ConnectionGUID: FTH7TveFTraT53GM97VNFA==
X-CSE-MsgGUID: sSRzoFA0TqeVnj31oFVmxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="84362754"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa008.fm.intel.com with ESMTP; 05 Nov 2024 17:12:38 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Wed,  6 Nov 2024 02:07:54 +0100
Message-Id: <20241106010756.1588973-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730855563; x=1762391563;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7uHxj0fPg50Fn1ZMXOTIZG4UKkbE2jcY9ppYJOvo7Ic=;
 b=B6bpjMOTObs8SaoxzBuIPBPC7wi3fzqcSAZujU52eVs5cLiZwt0i3xWs
 wbl5p9IBFFN3FmjUP1lOBqIcyBkYU9PqW20O/25INb6UpicaCOt16uyN7
 TLixDoi1wQPXXzy2SkJ191trACyzXRvAXtjFCpHnIR9XyAmBYaRDhMe/1
 d/Dfha5E4WkH/EIBxLBsGzoxpJZ6qcXrjdHfnsnyN4UOG2tNQGI8YAPn5
 Gqo5mE7qe76Uizad1h2f8a9V6BOc6LRqJ24xwmgoq0i6rc4K8QM5szW6/
 kU5Ar+qCb2dphwKAYAMrlsQW9IrLOopgpbQtH7SYm2iTZCg7WX3/4hKI3
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B6bpjMOT
Subject: [Intel-wired-lan] [PATCH net-next v3 0/2] ptp: add control over HW
 timestamp latch point
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

HW support of ptp/timesync solutions in network PHY chips can be
achieved with two different approaches, the timestamp maybe latched
either in the beginning or after the Start of Frame Delimiter (SFD) [1].

Allow ptp device drivers to provide user with control over the timestamp
latch point.

[1] https://www.ieee802.org/3/cx/public/april20/tse_3cx_01_0420.pdf

v3:
- move new enum ptp_ts_point to uapi ptp_clock.h and add NONE value to
  indicate that the timestamp latch point was not provided by the HW,
  allow further changes to ethtool netlink interface exstensions.

Arkadiusz Kubalewski (2):
  ptp: add control over HW timestamp latch point
  ice: ptp: add control over HW timestamp latch point

 Documentation/ABI/testing/sysfs-ptp         | 12 +++++
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 44 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 60 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  2 +
 drivers/ptp/ptp_sysfs.c                     | 44 +++++++++++++++
 include/linux/ptp_clock_kernel.h            | 12 +++++
 include/uapi/linux/ptp_clock.h              | 18 +++++++
 7 files changed, 192 insertions(+)

base-commit: 0452a2d8b8b98a5b1a9139c1a9ed98bccee356cc
-- 
2.38.1

