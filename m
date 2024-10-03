Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E84B98F914
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2024 23:42:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44E6940B35;
	Thu,  3 Oct 2024 21:42:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XIHcdTywnl_s; Thu,  3 Oct 2024 21:42:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5431340598
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727991763;
	bh=HzgtiTV6lTE1Wys4pdgjVmRZDyN8/x6DeW7uwNqaMbM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=b+6sgrNt69+YLYsBIUKhY85OJQ7g8LjDViM1BRUh06FuCRyvIHOKQiL6BshcZvxqs
	 sOg4vTvAj2uf1VDlQLxRlUcOfZv8snzI7GbiV2CODzBQfnH+qLvJ7s5QVQ6NvoFY2k
	 m0WrrGyAEkM7vvPA1oOZ7Z7KrWlQgTGfvdNOBhNhr+JIeAD0+zpVIb/x0pcj3lkDdx
	 jvyXvaJopQUaf2wxeP63YYRAyakBE47tSOgXY604DC2WpU8Cxq1InpM6N/bAlAbFoR
	 NPwl5+HbOAKE7xuAEGGqZhspSp0wM8rESnkkgvdYHzCrATk3mbeTVy7CWHILUgiPyL
	 g4ltrtMOWqj5Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5431340598;
	Thu,  3 Oct 2024 21:42:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EEA051BF34E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 21:42:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D89AC40302
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 21:42:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cJAtNeT7k004 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 21:42:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 07722401ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07722401ED
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 07722401ED
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 21:42:38 +0000 (UTC)
X-CSE-ConnectionGUID: m+IIQ5gYQC6KNE3Crkxfhg==
X-CSE-MsgGUID: /+JLlqDLRXGh7kLrOMViiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27379819"
X-IronPort-AV: E=Sophos;i="6.11,175,1725346800"; d="scan'208";a="27379819"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 14:42:38 -0700
X-CSE-ConnectionGUID: XuuXMZiPTki47129Ddd60g==
X-CSE-MsgGUID: oEvwIaxaSq+e5GR0owYtNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,175,1725346800"; d="scan'208";a="111952979"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa001.jf.intel.com with ESMTP; 03 Oct 2024 14:42:36 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Thu,  3 Oct 2024 23:37:52 +0200
Message-Id: <20241003213754.926691-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727991759; x=1759527759;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TJiRZ1KiEkFkyQI8bb1tW621Tath3UYQnH3N2XGvdVQ=;
 b=F73ADI3F5B7E/lGLexEY53T73u3ep1DX6p3rAoDt56B0ku2DeKzL9AoB
 cdxa12nLFYqyS0Q0DzBYtUjG6n23wzckPql//FfO5K5WKUfVef4STp37Z
 PjOwTUImRC8G1Fw/nrhJCAQreT+mt6d67tCxcfO2sT778oPm7/C3xQsM/
 46u5qK0VaRbULlIoGJC3Ka/qxAGOzQw0WSUeC6kJBgk+BBPJszWkNSIDO
 ZybAlG4aUquTUhUaOkFXRVcybOuj+9Ak95M5/b86aIKrhi3GaqeS/+dap
 5UnBZLHU2L+x0k2rr8557wPpUuDHGFfhMt8wLG3Jep25KHKZpZYCE4272
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F73ADI3F
Subject: [Intel-wired-lan] [RFC PATCH 0/2] ptp: add control over HW
 timestamp latch point
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

HW support of PTP/timesync solutions in network PHY chips can be
achieved with two different approaches, the timestamp maybe latched
either in the beginning or after the Start of Frame Delimiter (SFD) [1].

Allow ptp device drivers to provide user with control over the timestamp
latch point.

Arkadiusz Kubalewski (2):
  ptp: add control over HW timestamp latch point
  ice: ptp: add control over HW timestamp latch point

 drivers/net/ethernet/intel/ice/ice_ptp.c    | 48 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 52 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  3 +-
 drivers/ptp/ptp_sysfs.c                     | 44 +++++++++++++++++
 include/linux/ptp_clock_kernel.h            | 26 +++++++++++
 5 files changed, 172 insertions(+), 1 deletion(-)

-- 
2.38.1

