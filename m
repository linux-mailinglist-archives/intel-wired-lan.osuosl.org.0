Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CA1975078
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2024 13:09:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61EC060ACC;
	Wed, 11 Sep 2024 11:09:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JthQtQ4j6ZuH; Wed, 11 Sep 2024 11:09:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD4EE60A61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726052993;
	bh=J6PAy07ffrhs9su8DY12aMKG2sW9GFpN9BbUeupN4cQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=L/N5FAcb7IA9TxMyRDUK+OJHlaWyHc35oAYMGo5rqVXo4HDAonit47KtNXWmw41EH
	 v2s9DFVAxgt5jurxATNYOTGppEDWFPVehykQkuRQZbmQ0q+n6ramPs+EPjL13oBFpf
	 4f7uCU/jkhsqWVvORyE2t3IXuToN1CQd/tl6XZJoyqv9N9KkQ+BMMsVKwQL26/Ozwj
	 CkNZeN7i9WdGjRvGqa5vC1jhzyVoyqznQ/rJ19VkjIoOzzscGsLwzgKyFnaEZoPXD8
	 POIwbGqA6nFx1qn1KfBf3ChIx7DrgDjd6qF3tt+qZuC6UHiNR5o/MaJn/nILaXrdSM
	 PMZRCeWe1vYhg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD4EE60A61;
	Wed, 11 Sep 2024 11:09:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE0CC1BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 11:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CC294812F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 11:09:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BtFxg-jf2gcy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Sep 2024 11:09:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0605780896
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0605780896
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0605780896
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Sep 2024 11:09:50 +0000 (UTC)
X-CSE-ConnectionGUID: 5HLLl2waTkiOjfiGaVDeDg==
X-CSE-MsgGUID: GETMgX01SI6/KMIPncKD0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="35437561"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="35437561"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 04:09:50 -0700
X-CSE-ConnectionGUID: 3Tar9uHoSt2jcFC8404p/w==
X-CSE-MsgGUID: M4VeTL/0Q8arXgjEoGN5EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="67352977"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 11 Sep 2024 04:09:49 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.246.145])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id F389327BAD;
 Wed, 11 Sep 2024 12:09:47 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 11 Sep 2024 13:07:31 +0200
Message-ID: <20240911110926.25384-4-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726052991; x=1757588991;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Nuj5SVtR8ZG4rAKfYptA07GXt7y+ssMEQhjvs1pTMZs=;
 b=TkMZGP1kH0egl0zTeD3KBmj29oGhDhcWuOYXVtauZTyCdz/3V5D26I5H
 +EI5gO9t0D/654TxgA2eZfkvyOMZt06hJKvoRwn60zxpq06vIdXe3wCGN
 qHpGGrd6GnhUnJQJV8mRNiJqiej0SA0I5EkM17GsvcHXSEjXFLaGMewzH
 JaJLO3haesDlg2xBHU3AIltUnmwYUC1T+y7tFed2sETWRbeK1Q+JPGITf
 QV3xIRQ5YmkEPJx+3ozW4KKVAswOyx45feB8WvAHyiQ3S+/RcTgu1rWqw
 NG2EStjZapEFkGu48RwEvFmG6ghs7kyEnE7sdt3olXnlfHdYdV8fJZnz6
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TkMZGP1k
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] Refactor sending DDP + E830
 support
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
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series refactors sending DDP segments in accordance to computing
"last" bit of AQ request (1st patch), then adds support for extended
format ("valid" + "last" bits in a new "flags" field) of DDP that was
changed to support Multi-Segment DDP packages needed by E830.

Paul Greenwalt (1):
  ice: support optional flags in signature segment header

Przemek Kitszel (1):
  ice: refactor "last" segment of DDP pkg

 drivers/net/ethernet/intel/ice/ice_ddp.h |   5 +-
 drivers/net/ethernet/intel/ice/ice_ddp.c | 292 ++++++++++++-----------
 2 files changed, 160 insertions(+), 137 deletions(-)


base-commit: bfba7bc8b7c2c100b76edb3a646fdce256392129
-- 
2.46.0

