Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E06B3BDBD04
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Oct 2025 01:35:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44F7D41244;
	Tue, 14 Oct 2025 23:35:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UHiPaclB9W-E; Tue, 14 Oct 2025 23:35:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB74D41234
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760484915;
	bh=ofx1rW2+30KvORCW7saFUEf3E1N+8nsWWjpSDi6TtgA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3gIQ8X4PECCynfjTgY3H5E3GIlcyNxl6NXZhNQmX7T82s8LpaBKVmGxy5rTNtSZ8s
	 0Uq02TEFMhcndByhojaHyJa5we+eyaIxZ2682wzEwsc9Fy4bZN8W0P+72KuIHxtggD
	 MKkS0RjauFzAbGn4K3ThNOse9WVHrLgpLwRo48meBeP1C32Z7twG7vgdJ3hMK7/qgX
	 jmZUqkfTguAjmjJrZBvTRr8KwUfK0Q4GLTud9FkR9qkTL9vN+NexAKSX9BlnorQiYe
	 8oSyV9PSbfaDVqOemysBlaiQOBFSAzV7qsmuKa4gOi3BmI6lSzKXLszKbz/O8qX+i0
	 HuoTDjbFfdj+A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB74D41234;
	Tue, 14 Oct 2025 23:35:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 306D4119
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 19:43:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 171CF40E09
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 19:43:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BwpFhdq0ZYPC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Oct 2025 19:43:58 +0000 (UTC)
X-Greylist: delayed 903 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 09 Oct 2025 19:43:58 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 291D140CB7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 291D140CB7
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=142.0.186.134;
 helo=s1-ba86.socketlabs.email-od.com;
 envelope-from=4504.82.70a210000b07463.87fae0b6939c417be31225590b29ff7e@email-od.com;
 receiver=<UNKNOWN> 
Received: from s1-ba86.socketlabs.email-od.com
 (s1-ba86.socketlabs.email-od.com [142.0.186.134])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 291D140CB7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 19:43:58 +0000 (UTC)
X-Thread-Info: NDUwNC4xMi43MGEyMTAwMDBiMDc0NjMuaW50ZWwtd2lyZWQtbGFuPWxpc3RzLm9zdW9zbC5vcmc=
x-xsSpam: eyJTY29yZSI6MCwiRGV0YWlscyI6bnVsbH0=
Received: from nalramli-fst-tp.. (d4-50-191-215.clv.wideopenwest.com
 [50.4.215.191])
 by nalramli.com (Postfix) with ESMTPSA id 2AA012CE05A3;
 Thu,  9 Oct 2025 15:28:41 -0400 (EDT)
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
Date: Thu,  9 Oct 2025 15:28:31 -0400
Message-ID: <20251009192831.3333763-3-dev@nalramli.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251009192831.3333763-1-dev@nalramli.com>
References: <20251009192831.3333763-1-dev@nalramli.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Tue, 14 Oct 2025 23:35:13 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; d=email-od.com;
 i=@email-od.com; s=dkim; 
 c=relaxed/relaxed; q=dns/txt; t=1760039038; x=1762631038;
 h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:subject:cc:to:from:x-thread-info:subject:to:from:cc:reply-to;
 bh=ofx1rW2+30KvORCW7saFUEf3E1N+8nsWWjpSDi6TtgA=;
 b=Al+YjkAVq4Xg2kEezXx8Q+AuHN07rcnJNalol2aLR41pEgVZ08pbww+V1DQ2+eINSbEz9Y8mhQNU6DWMFBpZer48ZtDP5TSEfpMjRdvt7CCKPp8OGHatSiZVgbpqQHWdUK30XPO29OA6gjninahtE+RBt6jKIEUEBUmnPj082R0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=nalramli.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=email-od.com header.i=@email-od.com
 header.a=rsa-sha256 header.s=dkim header.b=Al+YjkAV
Subject: [Intel-wired-lan] [RFC ixgbe 2/2] ixgbe: Fix CPU to ring assignment
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

The ixgbe driver uses ixgbe_determine_*_ring to determine the CPU mapping
of transmit rings. Those helper functions have a hard-coded number of
rings equal to IXGBE_MAX_XDP_QS, which is set to 64. However, this does
not take into account the number of actual rings configured, which could
be lower. This results in NULL being returned, if the modulus operation
falls into a ring that is not configured. Instead, use the actual number
of configured rings.

Signed-off-by: Nabil S. Alramli <dev@nalramli.com>
Fixes: 4fe815850bdc ("ixgbe: let the xdpdrv work with more than 64 cpus")
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ether=
net/intel/ixgbe/ixgbe.h
index 26c378853755..e2c09545bad1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -830,18 +830,10 @@ struct ixgbe_adapter {
 	spinlock_t vfs_lock;
 };
=20
-static inline int ixgbe_determine_xdp_q_idx(int cpu)
-{
-	if (static_key_enabled(&ixgbe_xdp_locking_key))
-		return cpu % IXGBE_MAX_XDP_QS;
-	else
-		return cpu;
-}
-
 static inline
 struct ixgbe_ring *ixgbe_determine_xdp_ring(struct ixgbe_adapter *adapte=
r)
 {
-	int index =3D ixgbe_determine_xdp_q_idx(smp_processor_id());
+	int index =3D smp_processor_id() % adapter->num_xdp_queues;
=20
 	return adapter->xdp_ring[index];
 }
@@ -849,7 +841,7 @@ struct ixgbe_ring *ixgbe_determine_xdp_ring(struct ix=
gbe_adapter *adapter)
 static inline
 struct ixgbe_ring *ixgbe_determine_tx_ring(struct ixgbe_adapter *adapter=
)
 {
-	int index =3D ixgbe_determine_xdp_q_idx(smp_processor_id());
+	int index =3D smp_processor_id() % adapter->num_tx_queues;
=20
 	return adapter->tx_ring[index];
 }
--=20
2.43.0

