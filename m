Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 873DE55C05B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 12:45:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 97D6382D04;
	Tue, 28 Jun 2022 10:45:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 97D6382D04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656413134;
	bh=Gm/ijKamyBlUiOc/gLa1P1ePiKzFZCnvi8tONO8JYYA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5TYUSvkXEzAST3CjgCqCd3SLznN224LabP4zrSIvAwfdq6kSms9hUL8ilWpVAjKNF
	 Xavk+ma5mdXID/p7TwaAkC9QwHvmUS/jS4pahOGErZiUWTYBuyT66wTicmUvL3/4Tm
	 ePUVbZfQvkZIU5QRqXftBeoZoWBty/wMWCdsoM/93PRzMVIZ5bd+oWPkSN9LXBL3F7
	 tfQsFiDywiYcGG/EUDo0bUYG8D1qxkSCYeUh4tKvQetYPMqtjTNkwoDsd+8LYkJMVZ
	 oYcMmm+zj3vzXhCr+dEjmKFX1+tHjYFoimqjzHduaAt2QW8j55yJgZDhGguL5OOHaA
	 6NOHI6S9jzXsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LnoNW-NbAX0v; Tue, 28 Jun 2022 10:45:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D7B082B97;
	Tue, 28 Jun 2022 10:45:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D7B082B97
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DF7BA1BF599
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 10:45:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C771960C0F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 10:45:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C771960C0F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iTvF_I03UUWk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 10:45:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AE0B6072A
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1AE0B6072A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 10:45:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="343396624"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="343396624"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 03:45:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="693060041"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga002.fm.intel.com with ESMTP; 28 Jun 2022 03:45:11 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 Jun 2022 12:43:54 +0200
Message-Id: <20220628104354.4195-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656413126; x=1687949126;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MlnVECHpanFIAvylX3pdvylTQ8wxY0xueSEXp/jma2s=;
 b=bgEtLUFpHgP3FgeVxtjEEpKVrEqCUiPbo8Oa9f6G2SOjbF361bR/xRnX
 EJY54eJi+j0fkSg3q8RCWwB+bP4P9gTOdCvJuwwOruhL5L54dVa1t7b0V
 a4b+OV2eX0S6V2P5i7bKyE0Gqd4F8SyJ658paixccfZ/sCejIC9z6d9Et
 gFuCRi7a8qJ3ty28Jno/7MPCYyQzLNY1Va6YoEM+qg2cTkcrybpyfjvJu
 tXz/2CCASiO6VTWZ6rUBPZ3N/2Pz+OD4GPjU3ZZZ0A/jRz20Opd/PbkC1
 wScttOtry4MsOfkGTAjk2RfP6QhWavkiSCjvfnQ9Tl6AjTAZqDy+pN4WC
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bgEtLUFp
Subject: [Intel-wired-lan] [PATCH net-next 0/2] ice: FCS/CRC stripping
 control
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement possibility to change FCS/CRC stripping feature using
ethtool command.

Having FCS/CRC could be useful for:
- network sniffers to inspect FCS/CRC correctness
- for benchmarking use cases
- XDP programs

Anatolii Gerasymenko (1):
  ice: Implement FCS/CRC and VLAN stripping co-existence policy

Jesse Brandeburg (1):
  ice: Implement control of FCS/CRC stripping

 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_base.c    |  2 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  5 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     | 21 ++++++
 drivers/net/ethernet/intel/ice/ice_lib.h     |  2 +
 drivers/net/ethernet/intel/ice/ice_main.c    | 73 ++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_txrx.h    |  3 +-
 7 files changed, 96 insertions(+), 11 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
