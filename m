Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D987FB35F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 08:57:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BBCB140A5B;
	Tue, 28 Nov 2023 07:57:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBCB140A5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701158236;
	bh=m5bebBpdjUPJcA2pfu3EwQkiJJ3c2QZkkDKsSvqU/4g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=bxnEmQCoVfWXG2oKEfwm7QQbNEFNmSk22MywCCs8hVZo1FmhC/wEK3fzo2o05csQl
	 I070jTRe0RFHBovwWIXDCx3kdrfTHF1N3xfzinrbRbjaI3VI6cJeef7R61G9Cg9WDC
	 4y79Ziwmju0RAVmOInA42wY/2fs0Qfm0GVkV08RqrlKztoV0Oal53mv9Kr9/2fMPwh
	 zHcsBTE/KSb+xKHV0KqJ8TyPmTRxdZ1g5dQBtf2bswFuGTB7bePjEe+ogEX4j+0c8p
	 Xx36g5mayyflvLkY00xPsKuMScA4+5Et51al9tRB7UvwHKt439xPG0+vGvNjmgZm1+
	 ybltNghinbrEQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nJR-RFlpNF5R; Tue, 28 Nov 2023 07:57:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53B894011C;
	Tue, 28 Nov 2023 07:57:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53B894011C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4712F1BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0BE9760F81
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BE9760F81
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cIycTKvXUDf0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 07:56:49 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6170160FBB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6170160FBB
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Tue, 28 Nov 2023 08:48:44 +0100
Message-Id: <20231128074849.16863-1-kurt@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1701157749;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=XMKvs9k0lrDJpPKqiFsLE6VhMPcM38DJ/QVMxQep/fc=;
 b=Te2WRIGcjjGUtwN5hRVhm3KaaGBek33NGtt+/bT7r02EUUjMa+ROQ1mwL5JgOZaGZlIpPG
 APdR9VT6Tab/BEjsb2t8mF0sDc1tqQw4QMmxZZrCGnv00lD+YfAfVrbk//G9lu/nHsRa4M
 30LxdWkoil6gPYShCcMpKXBM9T5q3y35DAkn8EQI+XqMAVh2CK5ynM/rj42EJVzKhKr9hA
 RJLF783YE6XBTGE0WMjqd0I9v8oJhsDPRmQpQG01Fbn6RTTc3oQKb6jEt573vp3lhuO9Qv
 OGLjxN5h3gaw8W2vRUbV5C5YxgghtHl+fTvozOSIlI+qqCPrAnNMtFJg+l7yXw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1701157749;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=XMKvs9k0lrDJpPKqiFsLE6VhMPcM38DJ/QVMxQep/fc=;
 b=j/pWxzrzdjRvt/3dNVZNDx2lo7GvDHVoHpgZPS0scjrzysTB19kcqisA6VUHxIk7ivs8Ba
 gXCDIk/eIwsBQnDQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=Te2WRIGc; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=j/pWxzrz
Subject: [Intel-wired-lan] [PATCH net-next 0/5] igc: ethtool: Check VLAN TCI
 mask
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
Cc: netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

currently it is possible to configure receive queue assignment using the VLAN
TCI field with arbitrary masks. However, the hardware only supports steering
either by full TCI or the priority (PCP) field. In case a wrong mask is given by
the user the driver will silently convert it into a PCP filter which is not
desired. Therefore, add a check for it.

Patches #1 to #4 are minor things found along the way.

Kurt Kanzenbach (5):
  igc: Use reverse xmas tree
  igc: Use netdev printing functions for flex filters
  igc: Unify filtering rule fields
  igc: Report VLAN EtherType matching back to user
  igc: Check VLAN TCI mask

 drivers/net/ethernet/intel/igc/igc.h         |  3 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 36 +++++++++++++++++---
 drivers/net/ethernet/intel/igc/igc_main.c    | 21 ++++++------
 3 files changed, 45 insertions(+), 15 deletions(-)

-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
