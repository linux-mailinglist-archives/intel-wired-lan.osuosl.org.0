Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BF08794BC34
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 13:24:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76B7160A7A;
	Thu,  8 Aug 2024 11:24:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SjFr0ISUeAeS; Thu,  8 Aug 2024 11:24:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB68F60A71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723116285;
	bh=3J137hXaHLUP0UqIslpv4qHLbEO+ZrVB/3lo2QYLOUI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Gt1bmKVqsqrODutsoY9ypY0vpbDNFXsryydkNisBuT0/H98hPpFGLRKlQzp1eazJ1
	 +D/8UhfVD2ThqR1fjB7qKGz+z/ffau6qDk8vBafzXrygQNigogqHxs176f406BCEEH
	 9arkyiLn0LGG6+RAyYtRf+wH5+Rv3iqA/GWitMshS4FR9E9ojn1iBSsmeYtUnxhcfd
	 R7MHOXf3oADmcBK9yQ5DoP9PxDm2TpDItzpSV4EPCJt/KU3K3Ip+pmWU95xwWL9PHc
	 tB4zeGhpTQ8lXdtMDfiIs68+dJcuUj81xSYUdiTuZSga3uhs7oNMjED+jwQcjiHeKx
	 V+xKmPhCOeY6g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB68F60A71;
	Thu,  8 Aug 2024 11:24:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A33A1BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43CA6408F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:24:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1BbdvLIxpp5c for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 11:24:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7EAB24094D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EAB24094D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7EAB24094D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:24:42 +0000 (UTC)
X-CSE-ConnectionGUID: zlrp+NkuRBabE2FPvIw23A==
X-CSE-MsgGUID: Mu65j7BhTxGk8Exa68pLWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="38741855"
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="38741855"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 04:24:43 -0700
X-CSE-ConnectionGUID: I76V1HI1Q3OWX6GvvAJODw==
X-CSE-MsgGUID: 9Nb0zhylSnaniygqY41l2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="61574899"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa005.fm.intel.com with ESMTP; 08 Aug 2024 04:24:39 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org
Date: Thu,  8 Aug 2024 13:20:11 +0200
Message-Id: <20240808112013.166621-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723116284; x=1754652284;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FKhwymwtQp+7MFj4s4zUBHDLdUOsp81sRosDZ+m3lZI=;
 b=IWVlWqkkgzVT9lF+zmJYta9uzPDii+yUL8FncUfyh8Y+aW3nOSHjNoJ0
 G4gZpJIJuAfRev+73NrfNAlbd8H14OlOpH6nFzVRAg2QvxJYU0DD6+N9/
 abkpwrkInu2HescxGAF0urCSInfHP35wscVX55J7N8lLtyYn206uM85Bj
 DlAazRSxwK4J+oRJAI3d65TKqa7cDzfTHkN6RAxHFegnrSHVsImKoGnQ8
 M0RC4whZcHVL7vNdDPRTmF9UeY8pUQb1CpLrVmN7VVuJwwqwuC3HCqr05
 ksiDyas5doG0HofeAeOleNQksCQ+S3Qj15jTkyH23OmQF6LeaCYB7tD5a
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IWVlWqkk
Subject: [Intel-wired-lan] [PATCH net-next v1 0/2] Add Embedded SYNC feature
 for a dpll's pin
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
Cc: jiri@resnulli.us, corbet@lwn.net, przemyslaw.kitszel@intel.com,
 donald.hunter@gmail.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, vadim.fedorenko@linux.dev,
 pabeni@redhat.com, davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce and allow DPLL subsystem users to get/set capabilities of
Embedded SYNC on a dpll's pin.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Arkadiusz Kubalewski (2):
  dpll: add Embedded SYNC feature for a pin
  ice: add callbacks for Embedded SYNC enablement on dpll pins

 Documentation/driver-api/dpll.rst         |  21 ++
 Documentation/netlink/specs/dpll.yaml     |  41 ++++
 drivers/dpll/dpll_netlink.c               | 127 ++++++++++++
 drivers/dpll/dpll_nl.c                    |   5 +-
 drivers/net/ethernet/intel/ice/ice_dpll.c | 241 +++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h |   1 +
 include/linux/dpll.h                      |  10 +
 include/uapi/linux/dpll.h                 |  23 +++
 8 files changed, 464 insertions(+), 5 deletions(-)

-- 
2.38.1

