Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 504E190C766
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2024 12:43:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73BB1404D9;
	Tue, 18 Jun 2024 10:43:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kw4y_QrhPNBV; Tue, 18 Jun 2024 10:43:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6E9C400DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718707408;
	bh=Zok3JduXsjL10XNxmk+KFj5PtAk+1MZDsdUREMUvESU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=km/yRpcZVVOf/wnYCqkRTxfV1N1ewRepb+Zic+THHGP8v751lb3E62X8NxV3sOzO9
	 gFyhtDWHandE7Bg+SPhML9d2MyIdhZzt/h/e8u1AQjq8j7YwlS2mUYnG4PJpwMypjb
	 5QHMAD21QzL/5kH+KQDC8tapTKLBIXWxOtAJDACxnO30rDsfnuNYHbv/z56iJuZGj8
	 BbBN7rtlQXoSYgTj2MhHGMci84lckkPJnKKmWKlfqT72IZGlwbqeeNzcGbQw2GiOcD
	 xn6KrzQDcTLXFkbd2OHWo+vscpOWlUH5PYsnTcEVsw0oE6nR0bdoSz3wHDrFueQxVP
	 jE4cGcIb0ZgHg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6E9C400DD;
	Tue, 18 Jun 2024 10:43:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1859B1BF280
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 10:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 048EF60B6D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 10:43:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cunST6YIRZhP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2024 10:43:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 11E7760730
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 11E7760730
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 11E7760730
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 10:43:24 +0000 (UTC)
X-CSE-ConnectionGUID: eK+HZwLdRQaFnPOD7JUj1A==
X-CSE-MsgGUID: OP657M6TTjukPWjXwvXT5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="15719449"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="15719449"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 03:43:24 -0700
X-CSE-ConnectionGUID: IIO7MdTHSwmyxJPnsO9T6w==
X-CSE-MsgGUID: FDi8uy0VQd+Ogs7+sNEyvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="42227736"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa007.jf.intel.com with ESMTP; 18 Jun 2024 03:43:23 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Jun 2024 12:41:35 +0200
Message-ID: <20240618104310.1429515-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718707406; x=1750243406;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N4IE9SOABOtfUY69/FLYKUX58ZwzA7fp3iH1LuVUuJ4=;
 b=KbHEMcsyxP8cPQgkrlvp/GSiU1+Goe9i9HfeLwa3fZYXFd3vwok/d2S7
 IDGXi1s2/1K5xwe9/4Y1aIkLwkANfhPGHXj4M0u2a2gb6ElTRTYCTiTMX
 bDRv6jbjzo3haKh+WinQSAeh2ePhbuUsOWmgJylwt1rl0mgElLz3oDAhH
 imc1QBGRTq8S4kWcTs5K8EnQ+UbW787kCkFXwKgHoHNuV9iWLjneJBOV4
 oVeFaw1tf2NB7VTFQD1Je0LSOi2LVvlBEaz1nyh99IDdQxPdphssUrtbx
 sVwXVaCCIO0Kg0R3yvpWq08XO0FAxiZsNsvtfLf8lT9Rz3eFe8mX2Xslk
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KbHEMcsy
Subject: [Intel-wired-lan] [PATCH iwl-net 0/3] ice: Fix incorrect
 input/output pin behavior
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch series fixes incorrect external timestamps handling, which
may result in kernel crashes or not requested extts/perout behavior.

Jacob Keller (2):
  ice: Don't process extts if PTP is disabled
  ice: Reject pin requests with unsupported flags

Milena Olech (1):
  ice: Fix improper extts handling

 drivers/net/ethernet/intel/ice/ice_ptp.c | 137 +++++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_ptp.h |   9 ++
 2 files changed, 113 insertions(+), 33 deletions(-)


base-commit: dea9bffd24e4d556bb05511d60ae78c302e66b4f
-- 
2.43.0

