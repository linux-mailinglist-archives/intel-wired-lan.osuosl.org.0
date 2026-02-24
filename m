Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIM4FAk7nWm8NgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 06:45:45 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A9E1822D1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 06:45:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D5F161370;
	Tue, 24 Feb 2026 05:45:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 70ZzcnHNtnsN; Tue, 24 Feb 2026 05:45:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EF8961369
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771911942;
	bh=Uq//eKnU0VIy+iDlWT3coRvXqAavfDjJ0UDudhoedEQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=LOfFA4VjPeeUb9CofmeyKrv9VEJXKcfJvK0mOY5GabRhwJB8bzAumBOIcv4NEYRda
	 ZR1cwsq9HfCroZ54ghaFHzD2qrBvTKTaKd3ogGBSM8d67VU6eibzPsZQTs6tOSk50U
	 JVhmVZWysd8+8iPMoNt5eEz5ybl/xjuv/QGNpLiyySp2XveSYW4f4jIcDdW8dI36yI
	 5IBggDGEACio2HPiwAQxDSKg1WJu7IQGVJDIBnyrzEKGO8ef42O08hHMHvUB9Qs9sD
	 WS1aPgaF6AN3Ece3fx7jIRxGQsOudkCzz4jUQw8x2XttoEtTwPO+bc4klXlfgOxbFV
	 5aS8OM66qOW4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4EF8961369;
	Tue, 24 Feb 2026 05:45:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 555CC249
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 05:45:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5207E402E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 05:45:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p2F3wMBNqyKj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 05:45:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62b; helo=mail-pl1-x62b.google.com;
 envelope-from=kmta1236@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6D63F400EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D63F400EA
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6D63F400EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 05:45:40 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-2a91215c158so33866105ad.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 21:45:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1771911939; x=1772516739;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Uq//eKnU0VIy+iDlWT3coRvXqAavfDjJ0UDudhoedEQ=;
 b=HR5fgTUbS7O0k1If/Y0a1p83WXcuhJxe3Nmkf/onqzjvP+OhPXdpbveC2zcp3Mp3Rc
 osJ7lxNCHoZpP+DM+4m8goiOoH7GPDN/Bm1Nmi1NsnLK/9cC+yfegAa2ldjMWIw4gPRI
 lOSRiXpy3CYeeHh9dYjN85qw/Gu79CuFkCLdRuXmsqs/kgAHqWv6/QdF6KpRhqMaACfw
 i/BEqU6hgQ9IqL8ccGVVF4OrzCpGPBuLdX1HeN2nw7Y6fGh9g/rCmKXdHoXh+54Zw2Y2
 mZ610K4EHTnnyhQS7WasPhMasDm2uLTGqHpEVL/YoCxCrsXzMP6AjFH8FnDzshVy7TT/
 csQw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUHqMItDJA4cfjhCznDfocYx0j0eRD+tCX0KBKT5v5Wq4hjwmm4Wu8Ddphlb4N0Ti7V+0W1G7U7uOLvevQ7eL0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy0kUIy81gk2JSx8of4UyB/dWIELbmktQfK0bvZAD+KeWz1FiDC
 ybkSE/TGFq3B+jLYroLozAMoh1jphKJzdmL8inPPW5+jOcP7Rg8lQP0c
X-Gm-Gg: ATEYQzzsJXDMHFnpM2VdgyWBG9+d3XCE5+ZBgLI5kqAWvF0WUbMfCE9VJzUwhpfpAq6
 LFhBqG10jA6favmW3VhMC29cGkKZtbpDDCfdNF3Vl5xcXkLrD5dxhnpE9ni8P6jARORgBDafBQv
 bL8RpP0LaQI8j2+ncBeaIkp3jaZ2t88N13qjwmupblGA4GNBXdJ9+HW5valZ/ZT35Tln6J9DGE4
 Tp1aeePqxJagf0Hp2NWJQGJEn5+gDnCv9CcW5V9+B0Y2IKaPTcP76FhdsoqE6Q+YBJFYwKMHwNf
 viiOYBIxqBwxiyi3V1/GVl2s4pxwWgI0ga6MZHB97I8rFWw+p+KdliycNx3WjKcQIZsqxC+TDhu
 gZTaJRVWdA3Ych7mbxx6Hpmb1OpmZ4eWn4cPHrQTEHUf+uls8VuhbCVcPBY8kOgQ4EQV2BN+UMC
 URT6WHaWzGPEBejrRtmuktg2DjRraOB8ZoKsnrdAuMko8q5L5VT9cJzElBJXzZRf3ZPU0ocBzFd
 ErCOTdhRqko
X-Received: by 2002:a17:902:ea02:b0:2a9:602c:159 with SMTP id
 d9443c01a7336-2ad74438618mr91322915ad.19.1771911939394; 
 Mon, 23 Feb 2026 21:45:39 -0800 (PST)
Received: from dpc2500057.. (fsb6a9315e.tkyc502.ap.nuro.jp. [182.169.49.94])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2ad7500e062sm125920765ad.48.2026.02.23.21.45.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Feb 2026 21:45:39 -0800 (PST)
From: Keita Morisaki <kmta1236@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Cc: Alice Michael <alice.michael@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Keita Morisaki <kmta1236@gmail.com>
Date: Tue, 24 Feb 2026 14:45:33 +0900
Message-Id: <20260224054533.3372943-1-kmta1236@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1771911939; x=1772516739; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=Uq//eKnU0VIy+iDlWT3coRvXqAavfDjJ0UDudhoedEQ=;
 b=Bxq1KQw+jop6j46lMUyxdUvEGdRghGirhSFVF0YUBL3gLtT5jC2gb3yUJvqDyNspbL
 XjrGcsbC5S485//C7cp8or+GlC5uQMG2OLajXSmIViSt4893NF86uq2Lcn8/XEO1C6YM
 gwXmkL7SXfBRoYHfcA2b91apnDMYEJAvpjbg1hBMN78Ni41txke5deiekLofNXrugEiX
 A90ZKtJ1MUD7XlkTHhyRIDbx8FW5M1vuhfMLtQsJ8iSmfIaE2Ffm1rmMyggAJJrdVnZD
 WJQu8ngAyzZQmj6tfn4ib8ttf5wLH0RpR1bpQ9ScHLb8lxIKxqRig3kbTOKzq0GKiK9i
 EnTA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Bxq1KQw+
Subject: [Intel-wired-lan] [PATCH net v2 RESEND] ice: fix race condition in
 TX timestamp ring cleanup
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:alice.michael@intel.com,m:aleksandr.loktionov@intel.com,m:maciej.fijalkowski@intel.com,m:paul.greenwalt@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:kmta1236@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[kmta1236@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,lists.osuosl.org,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kmta1236@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A8A9E1822D1
X-Rspamd-Action: no action

Fix a race condition between ice_free_tx_tstamp_ring() and ice_tx_map()
that can cause a NULL pointer dereference.

ice_free_tx_tstamp_ring currently clears the ICE_TX_FLAGS_TXTIME flag
after NULLing the tstamp_ring. This could allow a concurrent ice_tx_map
call on another CPU to dereference the tstamp_ring, which could lead to
a NULL pointer dereference.

  CPU A:ice_free_tx_tstamp_ring() | CPU B:ice_tx_map()
  --------------------------------|---------------------------------
  tx_ring->tstamp_ring = NULL     |
                                  | ice_is_txtime_cfg() -> true
                                  | tstamp_ring = tx_ring->tstamp_ring
                                  | tstamp_ring->count  // NULL deref!
  flags &= ~ICE_TX_FLAGS_TXTIME   |

Fix by:
1. Reordering ice_free_tx_tstamp_ring() to clear the flag before
   NULLing the pointer, with smp_wmb() to ensure proper ordering.
2. Adding smp_rmb() in ice_tx_map() after the flag check to order the
   flag read before the pointer read, using READ_ONCE() for the
   pointer, and adding a NULL check as a safety net.
3. Converting tx_ring->flags from u8 to DECLARE_BITMAP() and using
   atomic bitops (set_bit(), clear_bit(), test_bit()) for all flag
   operations throughout the driver:
   - ICE_TX_RING_FLAGS_XDP
   - ICE_TX_RING_FLAGS_VLAN_L2TAG1
   - ICE_TX_RING_FLAGS_VLAN_L2TAG2
   - ICE_TX_RING_FLAGS_TXTIME

Fixes: ccde82e909467 ("ice: add E830 Earliest TxTime First Offload support")
Signed-off-by: Keita Morisaki <kmta1236@gmail.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
Changes in v2:
- Convert tx_ring->flags from u8 to DECLARE_BITMAP() and use atomic
  bitops (set_bit(), clear_bit(), test_bit()) for all flag operations
  instead of WRITE_ONCE() for flag updates
- Rename flags from ICE_TX_FLAGS_RING_* to ICE_TX_RING_FLAGS_* to
  distinguish from per-packet flags (ICE_TX_FLAGS_*)

 drivers/net/ethernet/intel/ice/ice.h         |  4 ++--
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     |  4 ++--
 drivers/net/ethernet/intel/ice/ice_txrx.c    | 23 ++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_txrx.h    | 16 +++++++++-----
 5 files changed, 31 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 00f75d87c73f9..5baeca824cd99 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -753,7 +753,7 @@ static inline bool ice_is_xdp_ena_vsi(struct ice_vsi *vsi)
 
 static inline void ice_set_ring_xdp(struct ice_tx_ring *ring)
 {
-	ring->flags |= ICE_TX_FLAGS_RING_XDP;
+	set_bit(ICE_TX_RING_FLAGS_XDP, ring->flags);
 }
 
 /**
@@ -778,7 +778,7 @@ static inline bool ice_is_txtime_ena(const struct ice_tx_ring *ring)
  */
 static inline bool ice_is_txtime_cfg(const struct ice_tx_ring *ring)
 {
-	return !!(ring->flags & ICE_TX_FLAGS_TXTIME);
+	return test_bit(ICE_TX_RING_FLAGS_TXTIME, ring->flags);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 9fc8681cc58ea..bd74344271f3f 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -943,7 +943,7 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_tx_ring *tx_ring,
 		/* if this is not already set it means a VLAN 0 + priority needs
 		 * to be offloaded
 		 */
-		if (tx_ring->flags & ICE_TX_FLAGS_RING_VLAN_L2TAG2)
+		if (test_bit(ICE_TX_RING_FLAGS_VLAN_L2TAG2, tx_ring->flags))
 			first->tx_flags |= ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN;
 		else
 			first->tx_flags |= ICE_TX_FLAGS_HW_VLAN;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d47af94f31a99..55ff0708d136e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1412,9 +1412,9 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 		ring->count = vsi->num_tx_desc;
 		ring->txq_teid = ICE_INVAL_TEID;
 		if (dvm_ena)
-			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG2;
+			set_bit(ICE_TX_RING_FLAGS_VLAN_L2TAG2, ring->flags);
 		else
-			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG1;
+			set_bit(ICE_TX_RING_FLAGS_VLAN_L2TAG1, ring->flags);
 		WRITE_ONCE(vsi->tx_rings[i], ring);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index ad76768a42323..564e4e33ecbc3 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -190,9 +190,10 @@ void ice_free_tstamp_ring(struct ice_tx_ring *tx_ring)
 void ice_free_tx_tstamp_ring(struct ice_tx_ring *tx_ring)
 {
 	ice_free_tstamp_ring(tx_ring);
+	clear_bit(ICE_TX_RING_FLAGS_TXTIME, tx_ring->flags);
+	smp_wmb();	/* order flag clear before pointer NULL */
 	kfree_rcu(tx_ring->tstamp_ring, rcu);
-	tx_ring->tstamp_ring = NULL;
-	tx_ring->flags &= ~ICE_TX_FLAGS_TXTIME;
+	WRITE_ONCE(tx_ring->tstamp_ring, NULL);
 }
 
 /**
@@ -405,7 +406,7 @@ static int ice_alloc_tstamp_ring(struct ice_tx_ring *tx_ring)
 	tx_ring->tstamp_ring = tstamp_ring;
 	tstamp_ring->desc = NULL;
 	tstamp_ring->count = ice_calc_ts_ring_count(tx_ring);
-	tx_ring->flags |= ICE_TX_FLAGS_TXTIME;
+	set_bit(ICE_TX_RING_FLAGS_TXTIME, tx_ring->flags);
 	return 0;
 }
 
@@ -1519,13 +1520,20 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
 		return;
 
 	if (ice_is_txtime_cfg(tx_ring)) {
-		struct ice_tstamp_ring *tstamp_ring = tx_ring->tstamp_ring;
-		u32 tstamp_count = tstamp_ring->count;
-		u32 j = tstamp_ring->next_to_use;
+		struct ice_tstamp_ring *tstamp_ring;
+		u32 tstamp_count, j;
 		struct ice_ts_desc *ts_desc;
 		struct timespec64 ts;
 		u32 tstamp;
 
+		smp_rmb();	/* order flag read before pointer read */
+		tstamp_ring = READ_ONCE(tx_ring->tstamp_ring);
+		if (unlikely(!tstamp_ring))
+			goto ring_kick;
+
+		tstamp_count = tstamp_ring->count;
+		j = tstamp_ring->next_to_use;
+
 		ts = ktime_to_timespec64(first->skb->tstamp);
 		tstamp = ts.tv_nsec >> ICE_TXTIME_CTX_RESOLUTION_128NS;
 
@@ -1553,6 +1561,7 @@ ice_tx_map(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first,
 		tstamp_ring->next_to_use = j;
 		writel_relaxed(j, tstamp_ring->tail);
 	} else {
+ring_kick:
 		writel_relaxed(i, tx_ring->tail);
 	}
 	return;
@@ -1812,7 +1821,7 @@ ice_tx_prepare_vlan_flags(struct ice_tx_ring *tx_ring, struct ice_tx_buf *first)
 	 */
 	if (skb_vlan_tag_present(skb)) {
 		first->vid = skb_vlan_tag_get(skb);
-		if (tx_ring->flags & ICE_TX_FLAGS_RING_VLAN_L2TAG2)
+		if (test_bit(ICE_TX_RING_FLAGS_VLAN_L2TAG2, tx_ring->flags))
 			first->tx_flags |= ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN;
 		else
 			first->tx_flags |= ICE_TX_FLAGS_HW_VLAN;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index e440c55d9e9f0..d35ffdc3dc84d 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -181,6 +181,14 @@ enum ice_rx_dtype {
 	ICE_RX_DTYPE_SPLIT_ALWAYS	= 2,
 };
 
+enum ice_tx_ring_flags {
+	ICE_TX_RING_FLAGS_XDP,
+	ICE_TX_RING_FLAGS_VLAN_L2TAG1,
+	ICE_TX_RING_FLAGS_VLAN_L2TAG2,
+	ICE_TX_RING_FLAGS_TXTIME,
+	ICE_TX_RING_FLAGS_NBITS,
+};
+
 struct ice_pkt_ctx {
 	u64 cached_phctime;
 	__be16 vlan_proto;
@@ -333,11 +341,7 @@ struct ice_tx_ring {
 	u32 txq_teid;			/* Added Tx queue TEID */
 	/* CL4 - 4th cacheline starts here */
 	struct ice_tstamp_ring *tstamp_ring;
-#define ICE_TX_FLAGS_RING_XDP		BIT(0)
-#define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
-#define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
-#define ICE_TX_FLAGS_TXTIME		BIT(3)
-	u8 flags;
+	DECLARE_BITMAP(flags, ICE_TX_RING_FLAGS_NBITS);
 	u8 dcb_tc;			/* Traffic class of ring */
 	u16 quanta_prof_id;
 } ____cacheline_internodealigned_in_smp;
@@ -349,7 +353,7 @@ static inline bool ice_ring_ch_enabled(struct ice_tx_ring *ring)
 
 static inline bool ice_ring_is_xdp(struct ice_tx_ring *ring)
 {
-	return !!(ring->flags & ICE_TX_FLAGS_RING_XDP);
+	return test_bit(ICE_TX_RING_FLAGS_XDP, ring->flags);
 }
 
 enum ice_container_type {

base-commit: 18f7fcd5e69a04df57b563360b88be72471d6b62
-- 
2.34.1

