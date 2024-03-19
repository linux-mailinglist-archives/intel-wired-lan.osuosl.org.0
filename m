Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F43880612
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 21:33:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 022C480BCE;
	Tue, 19 Mar 2024 20:33:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g11Pm03wBvmj; Tue, 19 Mar 2024 20:33:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D27E80BEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710880423;
	bh=cByx4L78HrI+q9+ftgKqt0OD/TKAEi7X6IOL5E+ueqo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ot17ZiKwGTIzVVjuuiQtAxpQuck1j/KJdYT5FufBbGozX4My0ICGm0NIP4e0XzZVn
	 GMdBQBla+Bv8IhiosFOkUeJZT2UvFXYrfliKO82QVbrmeW23Ebx9Pg5cgbntwwUMu9
	 TbEBHkH1NYuPDAgPGyAEs4Z7HDVLExGBEKXhqIE14EUxGJtITgJRU2la9XtrJDZveG
	 3EyRFvLQdpVCSNXNQ8lc5M2y2yHVLkhV5GbasliwI50J+fiwejID+Kw9ScMi5Z8EOq
	 VXYsVT+bwIGtTbsXui9kqh8q/Tg3ExmZAUfy7UcfQII2j7wczGWVPTLIU+a7Gu2QoS
	 PzvWjiXvSpxmg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D27E80BEC;
	Tue, 19 Mar 2024 20:33:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AAC691BF834
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 20:33:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95F75606CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 20:33:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aQbEOA5G8hP8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 20:33:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D05326059A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D05326059A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D05326059A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 20:33:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="5899782"
X-IronPort-AV: E=Sophos;i="6.07,138,1708416000"; 
   d="scan'208";a="5899782"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 13:33:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,138,1708416000"; d="scan'208";a="18578754"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 13:33:33 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 19 Mar 2024 13:33:26 -0700
Message-ID: <20240319203328.890350-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.44.0.53.g0f9d4d28b7e6
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710880420; x=1742416420;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6y+7kqwfeH8UeaCHBT0/T2nNjDhxJ2hziz5vDIMEk4M=;
 b=lmCmYqVV+s5UdNZekU1YNIkR1RTzN1Upjz0U5twVvz/BWeiqvTwareKC
 g93Vti03ce+SFJb8g4izqaUSSnS5lhRloUjDNWC3/RBT84We2YS/xn4I2
 n69J5kApxCx7zZzRvihd9vpVmKI9HI+IpxauM9FXqU6kHCt2j7/uAZEa4
 HGPuaU9dYFozjK+p+cjEk4JBqHo+SgPFyGYwRhdCltGqtcHUzmgFwHD4a
 VY9YByCaoQ9EI0zFfXnhhx+qEUU8j2tMeOaBwn0GCfwgit9X9GFb/On/z
 +gRigUfzCPfI2ItbQsr0GjOrKXVOwK3rr6Gjv79sAsczzecPj88/mhK7q
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lmCmYqVV
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] ice: minor cleanups for VF
 IRQ logic
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>, jesse
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

While working on implementing Scalable IOV support for the ice driver, I
found a few minor gotchas in the VF logic where the existing code is not
ready to handle Scalable VFs.

First, the recent support to allow programming the VF MSI-X count
initialized some values in ice_sriov.c in the for loop for creating VFs
using the sriov_numvfs interface. We will need to initialize these values
for Scalable VFs as well, and this should belong in
ice_initialize_vf_entry().

Second, when programming the VF IRQs in response to virtchnl commands, the
current virtchnl logic hardcodes the assumption that hardware IRQ indexes
are VF relative. This is true for Single Root IOV, but is not true for
Scalable IOV where the interrupts come from the PF space. Cleanup the logic
to look up the IRQ index from the q_vector, making this flow more agnostic
of the VF functionality type.

Neither of these changes is critical for current SR-IOV support, but they do
prepare the way for Scalable IOV VF support. I'd rather have these cleanups
already taken care now instead of carrying them until the Scalable IOV code
is submitted.

Jacob Keller (2):
  ice: set vf->num_msix in ice_initialize_vf_entry()
  ice: look up VF MSI-X index from q_vector->irq.index

 drivers/net/ethernet/intel/ice/ice_base.c     |  6 ++++++
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  5 -----
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  5 ++++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 12 +++++-------
 4 files changed, 15 insertions(+), 13 deletions(-)


base-commit: 237bb5f7f7f55ec5f773469a974c61a49c298625
-- 
2.44.0.53.g0f9d4d28b7e6

