Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A215A5088C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 19:09:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3461A60AE4;
	Wed,  5 Mar 2025 18:09:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cpCK1RlgHZf3; Wed,  5 Mar 2025 18:09:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C99760B78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741198153;
	bh=/JDOLyKKadEy+ulLyQr89yMyXan48P03nG7aI65rkLw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HD0bSYOuqktVXjIYSARQLZPHkwYTP7PZ0So0xf9Uh0n7N7B1fz0xJdUE+BrFAqV47
	 7tZbyvpfk9za8tlYkZJP3SZolxJ26eCDTGJK7sQOPuHSlyr5VBbKhDc9Sj/5Z1uDzo
	 atJWDSMDDzKbIKFy9ZFYEIz5I2TIH7KG3YsrmC2cuAQJCKf8cIbQVN/zFRCWAmZGbS
	 O/FdSHb41U79jTTYMM8/DjazBZufz2iHAhJNusR5LTuz7lRA56HMVAEcLuJccBLswH
	 kz38qh4jHGcOjRLaeP6uvTvEYhW3zntJnQIqp6mRaKQthC3oAvpG91uFJdNublxvbi
	 4P54SdKrkeGkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C99760B78;
	Wed,  5 Mar 2025 18:09:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 949CB194
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 18:09:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C05260AE4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 18:09:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PrmFziaBQz9A for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 18:09:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AD3D6606CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD3D6606CE
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD3D6606CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 18:09:10 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-2234e4b079cso133229145ad.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Mar 2025 10:09:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741198150; x=1741802950;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/JDOLyKKadEy+ulLyQr89yMyXan48P03nG7aI65rkLw=;
 b=uIritogw+lnwDD73Ma/q8Zp42WMIkzFf70QOufa40ATbidCxeImEOh86jc56cmooLR
 kerPSelPegCtLNrpUKdw7/6icX4VdrS19pq6U2HaOx98V/FMhycxPkMwnV6XhqmLOkXP
 dLPe7fB+C+U7mgwrnG4p2Ist48xyW8iSmvTbe31BoINGaVQxApeVViH42/1jtehacQjl
 CzGzXj1H+YT13eIwA/bfjtkqHl8uIZ2QgVclwGQCdhlTOKI0SScDd0g85T9UCuyz8rf2
 /OAH7NJEKUmVWdBKzuISJxXBQI9eVNLP6CMvKGaqPVczscanmU1BXcyPTYgmpdAJC235
 AkMw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWwrQFd+01vz4C8X5pj+nPHi+FIA/PkEwwEoePjHKTLSa7e/pm0grmlBDPFXJT9zhJ122BTCSP69QXiZsvlJKs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwUVCLvF732O/ZwCELN8RS8HzWRdMZgjKRePqbDTUFyiIzooYc5
 KM/bew+PVOldn7UR1eVutdjB0w1aa8ZNmXbbcc1j6FRAQHjHzRyXttgdTOZFmkg=
X-Gm-Gg: ASbGncu6NBwqEo5G0It3JepnNu2BOWsmY7qy/jhHfmHz51HR96r92xGiXjASkjZEdnT
 jh4TcXKKcqHuw47ks5fjXwO/tudO1kkJYCx92ZB7jal8hIOWlPDiC9DpTAsfJWkucD9KRPW9+7K
 aiHjvBa6D1u7O5uUX28F5ngDQ7B0vRA4R026Wc+SQ/VGKY7fdSrXozWPzEbo6mZ6y7Xhoz1ofAM
 U77GGMvJrehLtjbHWhXuLCsrxXxLTRgf8dAtUVrFxO5ymyZMeAJUiWuQ5Dkg9vAsAFV5RAhY07f
 E/PV0BdA7fOp9rj4usDXD2VQBRpnWDDynIRoJGwM9w37eflNai5Q
X-Google-Smtp-Source: AGHT+IHHP9qQRDNcIJ6SYkbk3gQTYwbtsOWJYWum8dEqxwJMevmC/aplCxv04Fpb3qqFTQ3JZrfYzA==
X-Received: by 2002:a17:902:ec89:b0:224:76f:9e59 with SMTP id
 d9443c01a7336-224076fa0damr12749675ad.10.1741198149933; 
 Wed, 05 Mar 2025 10:09:09 -0800 (PST)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-223504db77fsm115568055ad.162.2025.03.05.10.09.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Mar 2025 10:09:09 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Cc: vitaly.lifshits@intel.com, avigailx.dahan@intel.com,
 anthony.l.nguyen@intel.com, Joe Damato <jdamato@fastly.com>,
 stable@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>,
 bpf@vger.kernel.org (open list:XDP (eXpress Data Path)),
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 linux-kernel@vger.kernel.org (open list)
Date: Wed,  5 Mar 2025 18:09:00 +0000
Message-ID: <20250305180901.128286-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1741198150; x=1741802950; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=/JDOLyKKadEy+ulLyQr89yMyXan48P03nG7aI65rkLw=;
 b=vYmQn+Gm/yeIMdDa80hC9WVOGANB1nmOabmWRg/1iPI3VrC1DtvI+GIJYtxn65wXwz
 /Xp4TkmrYSiiyNJa/1tm108JyzZBGmG8a1E2Gx8PP7mbV8gjk2f2qql7VDB3t/GBBZco
 VbMbzu5U7TFaEsGpDxLyX37mIPpW7SNpFycuU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=vYmQn+Gm
Subject: [Intel-wired-lan] [PATCH iwl-net] igc: Fix XSK queue NAPI ID mapping
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

In commit b65969856d4f ("igc: Link queues to NAPI instances"), the XSK
queues were incorrectly unmapped from their NAPI instances. After
discussion on the mailing list and the introduction of a test to codify
the expected behavior, we can see that the unmapping causes the
check_xsk test to fail:

NETIF=enp86s0 ./tools/testing/selftests/drivers/net/queues.py

[...]
  # Check|     ksft_eq(q.get('xsk', None), {},
  # Check failed None != {} xsk attr on queue we configured
  not ok 4 queues.check_xsk

After this commit, the test passes:

  ok 4 queues.check_xsk

Note that the test itself is only in net-next, so I tested this change
by applying it to my local net-next tree, booting, and running the test.

Cc: stable@vger.kernel.org
Fixes: b65969856d4f ("igc: Link queues to NAPI instances")
Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/igc/igc_xdp.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
index 13bbd3346e01..869815f48ac1 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.c
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
@@ -86,7 +86,6 @@ static int igc_xdp_enable_pool(struct igc_adapter *adapter,
 		napi_disable(napi);
 	}
 
-	igc_set_queue_napi(adapter, queue_id, NULL);
 	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
 	set_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
 
@@ -136,7 +135,6 @@ static int igc_xdp_disable_pool(struct igc_adapter *adapter, u16 queue_id)
 	xsk_pool_dma_unmap(pool, IGC_RX_DMA_ATTR);
 	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &rx_ring->flags);
 	clear_bit(IGC_RING_FLAG_AF_XDP_ZC, &tx_ring->flags);
-	igc_set_queue_napi(adapter, queue_id, napi);
 
 	if (needs_reset) {
 		napi_enable(napi);

base-commit: 3c9231ea6497dfc50ac0ef69fff484da27d0df66
-- 
2.34.1

