Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBD79B3C4E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 21:52:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 770946080F;
	Mon, 28 Oct 2024 20:52:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MiAPemEEUTBi; Mon, 28 Oct 2024 20:52:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74D95607D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730148769;
	bh=s04sjmmGuCizKi6CbVGKp7VPZvI59JwJP6GlfpsfBpY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lQCh/sektbpmzIeO3QjlpSYhwRlzi2PARQFUzaSCHaKiAeAP6Q3+uvswFrIVjLrl4
	 YXQrYr5Xo+MhWERUbwU0y/rsajcOL/Muq6hE3tconfgkH2QZ7tEUv+luxqaKKIgSzQ
	 lWPMCEIyMPBTxJCosUg3ugCs7QGhg3ZShkcaeN2gzix++c+OT0DpCmyN5J78C6c3QW
	 gVvzqbbUAg1hYX8vADceMlGkkIZxQOCKLGQV0mV833eraNqNWbexNaXXvqTggMKhBS
	 WT0DcDN/uv82RHFrfWQlIwoSs5S41t9/cPOxH6vs65SvzbZahPHhtRCycfHFeOmAuF
	 P7NUOXtIiX+Iw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74D95607D0;
	Mon, 28 Oct 2024 20:52:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 05B1A112A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 20:52:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E765340966
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 20:52:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aeuBt-i1kLSp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 20:52:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D943940015
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D943940015
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D943940015
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 20:52:45 +0000 (UTC)
X-CSE-ConnectionGUID: OQt661sDTi6rupEarAhn3Q==
X-CSE-MsgGUID: 2aGvFcLAT+mDyrOZx/rX3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="40343536"
X-IronPort-AV: E=Sophos;i="6.11,240,1725346800"; d="scan'208";a="40343536"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 13:52:45 -0700
X-CSE-ConnectionGUID: gJu44IRbQICm3vla+aOuxQ==
X-CSE-MsgGUID: gmvpQjH2SQOQVNio/Cey/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,240,1725346800"; d="scan'208";a="81358537"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa007.fm.intel.com with ESMTP; 28 Oct 2024 13:52:42 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Mon, 28 Oct 2024 21:47:53 +0100
Message-Id: <20241028204755.1514189-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730148766; x=1761684766;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YVZg364ptJ72Fklhh29w8DZbzdTPXGbfqRhiLiXk/xI=;
 b=DXS/iS/9qPK/hcqljU8DVAO77av/2LtdmwzCyTLwdRqiduloBZrHBT7g
 rrJ/tVJ+f8fz6yHZpJTOiFVU/pnZU7ABieCXSHxNOha2GXgqcMgLliEgn
 PIjTG4teMtzEjkm1AbxLDuMk2Sb4Jkk7OfIF/1FIq5M/Vtx4d0IjKXyfV
 3wz1dJbValdoSsKb/YWeTqKam4/YkNlXYExPDaZfSYwTB45h3s4PhvlFQ
 mpv4LZ9xfe5TwHtNzcClQepff2Vk68aiZvVEdLVAn4t9PQvPfIAL+y5m0
 dwYGrx6Erd3M2mGI/ELfC92Z4D5Aywq3kDt8eJekGKlGQBQ6qk2byaMNm
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DXS/iS/9
Subject: [Intel-wired-lan] [PATCH net-next v2 0/2] ptp: add control over HW
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

HW support of PTP/timesync solutions in network PHY chips can be
achieved with two different approaches, the timestamp maybe latched
either in the beginning or after the Start of Frame Delimiter (SFD) [1].

Allow ptp device drivers to provide user with control over the timestamp
latch point.

[1] https://www.ieee802.org/3/cx/public/april20/tse_3cx_01_0420.pdf

Arkadiusz Kubalewski (2):
  ptp: add control over HW timestamp latch point
  ice: ptp: add control over HW timestamp latch point

 Documentation/ABI/testing/sysfs-ptp         | 12 +++++
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 44 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 59 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  2 +
 drivers/ptp/ptp_sysfs.c                     | 44 +++++++++++++++
 include/linux/ptp_clock_kernel.h            | 30 +++++++++++
 6 files changed, 191 insertions(+)

-- 
2.38.1

