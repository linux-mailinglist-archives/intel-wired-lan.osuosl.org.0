Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77477BDBD01
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Oct 2025 01:35:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1C0460A96;
	Tue, 14 Oct 2025 23:35:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZYzTOrUBOc_S; Tue, 14 Oct 2025 23:35:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39173611C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760484916;
	bh=fNeFEOfUOZVVJm8zrFxKc3lRrfCO7pVZbIyZXfxTnGs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=39+746Y+aNAQg1gTG1fz7DZC/QNpfgdv2sD7BwiMjaroZU0u1S8qiolUKECujHZ3/
	 BQF/emEwAQdCg1uRtCCaLOaEv6hzSnWZlrzOxzY4UPUm/QbpHkw3ZIbb1IY3tsd8NL
	 ntAUHVS5O4BisYee+i/cjN87njwOP+gAjQnJ1R9iItq5kIuejzzKyEDnDlUHZJwGgh
	 bkx0V/td2fUf6bN7iSJ0LKkblW2wqffUI0qk1BtIeklbaKqveF7ktE5RwvaKAsKF7I
	 Z7TheX+c6BX8EyaDu9jX3yUYfnnz4hzEoQYD0j0C/MrKcKamZgOSyoAlE6ylZhsREv
	 GL1LoGfxpvZJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39173611C8;
	Tue, 14 Oct 2025 23:35:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 72B9914B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 19:44:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BC36B40CB7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 19:43:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nr7L9hls2mjt for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Oct 2025 19:43:59 +0000 (UTC)
X-Greylist: delayed 903 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 09 Oct 2025 19:43:58 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BC8A840B0B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC8A840B0B
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=142.0.186.134;
 helo=s1-ba86.socketlabs.email-od.com;
 envelope-from=4504.82.a60bf0000afbacd.f7ea7add85cce5d8dbe3bcd2c7b13db1@email-od.com;
 receiver=<UNKNOWN> 
Received: from s1-ba86.socketlabs.email-od.com
 (s1-ba86.socketlabs.email-od.com [142.0.186.134])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC8A840B0B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 19:43:58 +0000 (UTC)
X-Thread-Info: NDUwNC4xMi5hNjBiZjAwMDBhZmJhY2QuaW50ZWwtd2lyZWQtbGFuPWxpc3RzLm9zdW9zbC5vcmc=
x-xsSpam: eyJTY29yZSI6MCwiRGV0YWlscyI6IltdIn0=
Received: from nalramli-fst-tp.. (d4-50-191-215.clv.wideopenwest.com
 [50.4.215.191])
 by nalramli.com (Postfix) with ESMTPSA id E79E42CE000D;
 Thu,  9 Oct 2025 15:28:40 -0400 (EDT)
From: "Nabil S. Alramli" <dev@nalramli.com>
To: anthony.l.nguyen@intel.com,
	przemyslaw.kitszel@intel.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, lishujin@kuaishou.com,
 xingwanli@kuaishou.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org,
 team-kernel@fastly.com, khubert@fastly.com, nalramli@fastly.com,
 dev@nalramli.com
Date: Thu,  9 Oct 2025 15:28:29 -0400
Message-ID: <20251009192831.3333763-1-dev@nalramli.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Tue, 14 Oct 2025 23:35:13 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; d=email-od.com;
 i=@email-od.com; s=dkim; 
 c=relaxed/relaxed; q=dns/txt; t=1760039039; x=1762631039;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:x-thread-info:subject:to:from:cc:reply-to;
 bh=fNeFEOfUOZVVJm8zrFxKc3lRrfCO7pVZbIyZXfxTnGs=;
 b=vKJATjAlcdVVvEyR8O2y64x8u96q7k96i75kvSyqaJGIEEtDfAe0oVtkV72Vx2hLvTa3FYrJsKgiSKUbVGyiXi6PSjV0fJ0D7nsU7/6wNImS8EvQt2kfqr8OeHWbhQJWjjYDsOHYLugiOy09ec3PPvkU3VOtf2DJHV63TuZk/2U=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=nalramli.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=email-od.com header.i=@email-od.com
 header.a=rsa-sha256 header.s=dkim header.b=vKJATjAl
Subject: [Intel-wired-lan] [RFC ixgbe 0/2] ixgbe: Implement support for
 ndo_xdp_xmit in skb mode and fix CPU to ring assignment
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

Hello Kyle,

Please take a look at this patch that I plan to submit upstream, let me
know if you agree.

Hello ixgbe maintainers,

This patch is a RFC to add the ability to transmit packets using
BPF_F_TEST_XDP_LIVE_FRAMES in skb mode to the ixgbe driver. Today this
functionality does not exist because the ndo_xdp_xmit operation handler,
ixgbe_xdp_xmit, expects a native XDP program in adapter->xdp_prog. This
results in a no-op essentially. To add this support, I use the tx_ring
instead of the xdp_ring and allocate a skb based on the xdpf, and then us=
e
dev_direct_xmit to queue the xdp for tansmission.

May I get feedback on the idea and the approach in this patch?

Thank you.

Nabil S. Alramli (2):
  ixgbe: Implement support for ndo_xdp_xmit in skb mode
  ixgbe: Fix CPU to ring assignment

 drivers/net/ethernet/intel/ixgbe/ixgbe.h      | 16 +++----
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 43 +++++++++++++++++--
 2 files changed, 47 insertions(+), 12 deletions(-)

--=20
2.43.0

