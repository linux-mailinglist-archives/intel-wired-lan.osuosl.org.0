Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D1926700B4C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:20:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DAA242C8D;
	Fri, 12 May 2023 15:20:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DAA242C8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683904841;
	bh=M96y1+7/uziUSDLhhq+air+HzNVLyxiEGolFDu4m+lY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tf766s+vJGbzOBNHPdY3VbUBXWHsXj19g2sz1CBBD8BN6SCRcJI6zD1t2urXS3coo
	 c2/6PAr3PHBc3H6wA9rGC+bf8UdWqXudFXXm0o/kdCKZAKwwt4CwCiMEGZwYt+inAv
	 VyfkYzNV4rc1wLbwsKof3YPRG3OlqWj/ubsHqPMW9YDK2CU2YbDrj4rt/ok0bAePFj
	 DoICiybzWr0AfKjmpTwTz6/KCFCkog483VNIRYnbYi4o5+IMYRyHT6cITQnGVHQ2uq
	 FvACTSqWjJ+ql5rKExQ/9sapulFChMacRw5Y7AcUOFAcfc+ATc33EDYycUisuxX/cz
	 fpVGWCClyktbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QvXXu-fIYBM3; Fri, 12 May 2023 15:20:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0084D42AAE;
	Fri, 12 May 2023 15:20:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0084D42AAE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A759A1BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:20:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7AA1142D50
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:20:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7AA1142D50
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xoBp8AyXlAI7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 15:20:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C968F4018B
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C968F4018B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:20:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="331173905"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="331173905"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:20:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="765196753"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="765196753"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 12 May 2023 08:20:19 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 205123636E;
 Fri, 12 May 2023 16:20:17 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Date: Fri, 12 May 2023 17:16:31 +0200
Message-Id: <20230512151639.992033-8-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230512151639.992033-1-larysa.zaremba@intel.com>
References: <20230512151639.992033-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683904832; x=1715440832;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ynXUbQUJe03NooZ616yUWLrjPVP0WvqkB8CkcIAxiJ8=;
 b=RqPqAhcbpz+i+RP1Oe5++OJ9oxT2hRUUljLbgOhW9esXTZhTeOpNKV0L
 PXCfscUkwmmqzFAFDSkqdO+ElqR8w+k0NmslAEXX/jbfhq4ahtmqw7aGg
 tCHU0DG8lhmGM4wzWMiRm0BxnqhhJMUg/pBKJQpPZMaUY17/5VYTE335c
 Qpfn6hoPBhWWsvOTzkT/8RNs9a2Y5vZgqGxt7Xfh7u4WDu5XRIGVdewTq
 OfcwE2Hv4qp2E7XSw7O0yEQ+7Mv+AJ6V0XqHbCqDYnDtdRwov2+Q9RdT8
 JB/eTsCz4peHxfDpQElQwvZDLlkW9g+JserjQZ7JVAG6VpaF6n93vEPpr
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RqPqAhcb
Subject: [Intel-wired-lan] [PATCH 07/15] ice: Support RX hash XDP hint
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, Larysa Zaremba <larysa.zaremba@intel.com>,
 KP Singh <kpsingh@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jiri Olsa <jolsa@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RX hash XDP hint requests both hash value and type.
Type is XDP-specific, so we need a separate way to map
these values to the hardware ptypes, so create a lookup table.

Instead of creating a new long list, reuse contents
of ice_decode_rx_desc_ptype[] through preprocessor.

Current hash type enum does not contain ICMP packet type,
but ice devices support it, so also add a new type into core code.

Then use previously refactored code and create a function
that allows XDP code to read RX hash.

Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 412 +++++++++---------
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  72 +++
 include/net/xdp.h                             |   3 +
 3 files changed, 283 insertions(+), 204 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index 89f986a75cc8..d384ddfcb83e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -673,6 +673,212 @@ struct ice_tlan_ctx {
  *      Use the enum ice_rx_l2_ptype to decode the packet type
  * ENDIF
  */
+#define ICE_PTYPES								\
+	/* L2 Packet types */							\
+	ICE_PTT_UNUSED_ENTRY(0),						\
+	ICE_PTT(1, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),			\
+	ICE_PTT_UNUSED_ENTRY(2),						\
+	ICE_PTT_UNUSED_ENTRY(3),						\
+	ICE_PTT_UNUSED_ENTRY(4),						\
+	ICE_PTT_UNUSED_ENTRY(5),						\
+	ICE_PTT(6, L2, NONE, NOF, NONE, NONE, NOF, NONE, NONE),			\
+	ICE_PTT(7, L2, NONE, NOF, NONE, NONE, NOF, NONE, NONE),			\
+	ICE_PTT_UNUSED_ENTRY(8),						\
+	ICE_PTT_UNUSED_ENTRY(9),						\
+	ICE_PTT(10, L2, NONE, NOF, NONE, NONE, NOF, NONE, NONE),		\
+	ICE_PTT(11, L2, NONE, NOF, NONE, NONE, NOF, NONE, NONE),		\
+	ICE_PTT_UNUSED_ENTRY(12),						\
+	ICE_PTT_UNUSED_ENTRY(13),						\
+	ICE_PTT_UNUSED_ENTRY(14),						\
+	ICE_PTT_UNUSED_ENTRY(15),						\
+	ICE_PTT_UNUSED_ENTRY(16),						\
+	ICE_PTT_UNUSED_ENTRY(17),						\
+	ICE_PTT_UNUSED_ENTRY(18),						\
+	ICE_PTT_UNUSED_ENTRY(19),						\
+	ICE_PTT_UNUSED_ENTRY(20),						\
+	ICE_PTT_UNUSED_ENTRY(21),						\
+										\
+	/* Non Tunneled IPv4 */							\
+	ICE_PTT(22, IP, IPV4, FRG, NONE, NONE, NOF, NONE, PAY3),		\
+	ICE_PTT(23, IP, IPV4, NOF, NONE, NONE, NOF, NONE, PAY3),		\
+	ICE_PTT(24, IP, IPV4, NOF, NONE, NONE, NOF, UDP,  PAY4),		\
+	ICE_PTT_UNUSED_ENTRY(25),						\
+	ICE_PTT(26, IP, IPV4, NOF, NONE, NONE, NOF, TCP,  PAY4),		\
+	ICE_PTT(27, IP, IPV4, NOF, NONE, NONE, NOF, SCTP, PAY4),		\
+	ICE_PTT(28, IP, IPV4, NOF, NONE, NONE, NOF, ICMP, PAY4),		\
+										\
+	/* IPv4 --> IPv4 */							\
+	ICE_PTT(29, IP, IPV4, NOF, IP_IP, IPV4, FRG, NONE, PAY3),		\
+	ICE_PTT(30, IP, IPV4, NOF, IP_IP, IPV4, NOF, NONE, PAY3),		\
+	ICE_PTT(31, IP, IPV4, NOF, IP_IP, IPV4, NOF, UDP,  PAY4),		\
+	ICE_PTT_UNUSED_ENTRY(32),						\
+	ICE_PTT(33, IP, IPV4, NOF, IP_IP, IPV4, NOF, TCP,  PAY4),		\
+	ICE_PTT(34, IP, IPV4, NOF, IP_IP, IPV4, NOF, SCTP, PAY4),		\
+	ICE_PTT(35, IP, IPV4, NOF, IP_IP, IPV4, NOF, ICMP, PAY4),		\
+										\
+	/* IPv4 --> IPv6 */							\
+	ICE_PTT(36, IP, IPV4, NOF, IP_IP, IPV6, FRG, NONE, PAY3),		\
+	ICE_PTT(37, IP, IPV4, NOF, IP_IP, IPV6, NOF, NONE, PAY3),		\
+	ICE_PTT(38, IP, IPV4, NOF, IP_IP, IPV6, NOF, UDP,  PAY4),		\
+	ICE_PTT_UNUSED_ENTRY(39),						\
+	ICE_PTT(40, IP, IPV4, NOF, IP_IP, IPV6, NOF, TCP,  PAY4),		\
+	ICE_PTT(41, IP, IPV4, NOF, IP_IP, IPV6, NOF, SCTP, PAY4),		\
+	ICE_PTT(42, IP, IPV4, NOF, IP_IP, IPV6, NOF, ICMP, PAY4),		\
+										\
+	/* IPv4 --> GRE/NAT */							\
+	ICE_PTT(43, IP, IPV4, NOF, IP_GRENAT, NONE, NOF, NONE, PAY3),		\
+										\
+	/* IPv4 --> GRE/NAT --> IPv4 */						\
+	ICE_PTT(44, IP, IPV4, NOF, IP_GRENAT, IPV4, FRG, NONE, PAY3),		\
+	ICE_PTT(45, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, NONE, PAY3),		\
+	ICE_PTT(46, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, UDP,  PAY4),		\
+	ICE_PTT_UNUSED_ENTRY(47),						\
+	ICE_PTT(48, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, TCP,  PAY4),		\
+	ICE_PTT(49, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, SCTP, PAY4),		\
+	ICE_PTT(50, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, ICMP, PAY4),		\
+										\
+	/* IPv4 --> GRE/NAT --> IPv6 */						\
+	ICE_PTT(51, IP, IPV4, NOF, IP_GRENAT, IPV6, FRG, NONE, PAY3),		\
+	ICE_PTT(52, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, NONE, PAY3),		\
+	ICE_PTT(53, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, UDP,  PAY4),		\
+	ICE_PTT_UNUSED_ENTRY(54),						\
+	ICE_PTT(55, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, TCP,  PAY4),		\
+	ICE_PTT(56, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, SCTP, PAY4),		\
+	ICE_PTT(57, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, ICMP, PAY4),		\
+										\
+	/* IPv4 --> GRE/NAT --> MAC */						\
+	ICE_PTT(58, IP, IPV4, NOF, IP_GRENAT_MAC, NONE, NOF, NONE, PAY3),	\
+										\
+	/* IPv4 --> GRE/NAT --> MAC --> IPv4 */					\
+	ICE_PTT(59, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, FRG, NONE, PAY3),	\
+	ICE_PTT(60, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, NONE, PAY3),	\
+	ICE_PTT(61, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, UDP,  PAY4),	\
+	ICE_PTT_UNUSED_ENTRY(62),						\
+	ICE_PTT(63, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, TCP,  PAY4),	\
+	ICE_PTT(64, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, SCTP, PAY4),	\
+	ICE_PTT(65, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, ICMP, PAY4),	\
+										\
+	/* IPv4 --> GRE/NAT -> MAC --> IPv6 */					\
+	ICE_PTT(66, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, FRG, NONE, PAY3),	\
+	ICE_PTT(67, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, NONE, PAY3),	\
+	ICE_PTT(68, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, UDP,  PAY4),	\
+	ICE_PTT_UNUSED_ENTRY(69),						\
+	ICE_PTT(70, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, TCP,  PAY4),	\
+	ICE_PTT(71, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, SCTP, PAY4),	\
+	ICE_PTT(72, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, ICMP, PAY4),	\
+										\
+	/* IPv4 --> GRE/NAT --> MAC/VLAN */					\
+	ICE_PTT(73, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, NONE, NOF, NONE, PAY3),	\
+										\
+	/* IPv4 ---> GRE/NAT -> MAC/VLAN --> IPv4 */				\
+	ICE_PTT(74, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, FRG, NONE, PAY3),	\
+	ICE_PTT(75, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, NONE, PAY3),	\
+	ICE_PTT(76, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, UDP,  PAY4),	\
+	ICE_PTT_UNUSED_ENTRY(77),						\
+	ICE_PTT(78, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, TCP,  PAY4),	\
+	ICE_PTT(79, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, SCTP, PAY4),	\
+	ICE_PTT(80, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, ICMP, PAY4),	\
+										\
+	/* IPv4 -> GRE/NAT -> MAC/VLAN --> IPv6 */				\
+	ICE_PTT(81, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, FRG, NONE, PAY3),	\
+	ICE_PTT(82, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, NONE, PAY3),	\
+	ICE_PTT(83, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, UDP,  PAY4),	\
+	ICE_PTT_UNUSED_ENTRY(84),						\
+	ICE_PTT(85, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, TCP,  PAY4),	\
+	ICE_PTT(86, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, SCTP, PAY4),	\
+	ICE_PTT(87, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, ICMP, PAY4),	\
+										\
+	/* Non Tunneled IPv6 */							\
+	ICE_PTT(88, IP, IPV6, FRG, NONE, NONE, NOF, NONE, PAY3),		\
+	ICE_PTT(89, IP, IPV6, NOF, NONE, NONE, NOF, NONE, PAY3),		\
+	ICE_PTT(90, IP, IPV6, NOF, NONE, NONE, NOF, UDP,  PAY4),		\
+	ICE_PTT_UNUSED_ENTRY(91),						\
+	ICE_PTT(92, IP, IPV6, NOF, NONE, NONE, NOF, TCP,  PAY4),		\
+	ICE_PTT(93, IP, IPV6, NOF, NONE, NONE, NOF, SCTP, PAY4),		\
+	ICE_PTT(94, IP, IPV6, NOF, NONE, NONE, NOF, ICMP, PAY4),		\
+										\
+	/* IPv6 --> IPv4 */							\
+	ICE_PTT(95, IP, IPV6, NOF, IP_IP, IPV4, FRG, NONE, PAY3),		\
+	ICE_PTT(96, IP, IPV6, NOF, IP_IP, IPV4, NOF, NONE, PAY3),		\
+	ICE_PTT(97, IP, IPV6, NOF, IP_IP, IPV4, NOF, UDP,  PAY4),		\
+	ICE_PTT_UNUSED_ENTRY(98),						\
+	ICE_PTT(99, IP, IPV6, NOF, IP_IP, IPV4, NOF, TCP,  PAY4),		\
+	ICE_PTT(100, IP, IPV6, NOF, IP_IP, IPV4, NOF, SCTP, PAY4),		\
+	ICE_PTT(101, IP, IPV6, NOF, IP_IP, IPV4, NOF, ICMP, PAY4),		\
+										\
+	/* IPv6 --> IPv6 */							\
+	ICE_PTT(102, IP, IPV6, NOF, IP_IP, IPV6, FRG, NONE, PAY3),		\
+	ICE_PTT(103, IP, IPV6, NOF, IP_IP, IPV6, NOF, NONE, PAY3),		\
+	ICE_PTT(104, IP, IPV6, NOF, IP_IP, IPV6, NOF, UDP,  PAY4),		\
+	ICE_PTT_UNUSED_ENTRY(105),						\
+	ICE_PTT(106, IP, IPV6, NOF, IP_IP, IPV6, NOF, TCP,  PAY4),		\
+	ICE_PTT(107, IP, IPV6, NOF, IP_IP, IPV6, NOF, SCTP, PAY4),		\
+	ICE_PTT(108, IP, IPV6, NOF, IP_IP, IPV6, NOF, ICMP, PAY4),		\
+										\
+	/* IPv6 --> GRE/NAT */							\
+	ICE_PTT(109, IP, IPV6, NOF, IP_GRENAT, NONE, NOF, NONE, PAY3),		\
+										\
+	/* IPv6 --> GRE/NAT -> IPv4 */						\
+	ICE_PTT(110, IP, IPV6, NOF, IP_GRENAT, IPV4, FRG, NONE, PAY3),		\
+	ICE_PTT(111, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, NONE, PAY3),		\
+	ICE_PTT(112, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, UDP,  PAY4),		\
+	ICE_PTT_UNUSED_ENTRY(113),						\
+	ICE_PTT(114, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, TCP,  PAY4),		\
+	ICE_PTT(115, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, SCTP, PAY4),		\
+	ICE_PTT(116, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, ICMP, PAY4),		\
+										\
+	/* IPv6 --> GRE/NAT -> IPv6 */						\
+	ICE_PTT(117, IP, IPV6, NOF, IP_GRENAT, IPV6, FRG, NONE, PAY3),		\
+	ICE_PTT(118, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, NONE, PAY3),		\
+	ICE_PTT(119, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, UDP,  PAY4),		\
+	ICE_PTT_UNUSED_ENTRY(120),						\
+	ICE_PTT(121, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, TCP,  PAY4),		\
+	ICE_PTT(122, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, SCTP, PAY4),		\
+	ICE_PTT(123, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, ICMP, PAY4),		\
+										\
+	/* IPv6 --> GRE/NAT -> MAC */						\
+	ICE_PTT(124, IP, IPV6, NOF, IP_GRENAT_MAC, NONE, NOF, NONE, PAY3),	\
+										\
+	/* IPv6 --> GRE/NAT -> MAC -> IPv4 */					\
+	ICE_PTT(125, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, FRG, NONE, PAY3),	\
+	ICE_PTT(126, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, NONE, PAY3),	\
+	ICE_PTT(127, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, UDP,  PAY4),	\
+	ICE_PTT_UNUSED_ENTRY(128),						\
+	ICE_PTT(129, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, TCP,  PAY4),	\
+	ICE_PTT(130, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, SCTP, PAY4),	\
+	ICE_PTT(131, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, ICMP, PAY4),	\
+										\
+	/* IPv6 --> GRE/NAT -> MAC -> IPv6 */					\
+	ICE_PTT(132, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, FRG, NONE, PAY3),	\
+	ICE_PTT(133, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, NONE, PAY3),	\
+	ICE_PTT(134, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, UDP,  PAY4),	\
+	ICE_PTT_UNUSED_ENTRY(135),						\
+	ICE_PTT(136, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, TCP,  PAY4),	\
+	ICE_PTT(137, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, SCTP, PAY4),	\
+	ICE_PTT(138, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, ICMP, PAY4),	\
+										\
+	/* IPv6 --> GRE/NAT -> MAC/VLAN */					\
+	ICE_PTT(139, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, NONE, NOF, NONE, PAY3),	\
+										\
+	/* IPv6 --> GRE/NAT -> MAC/VLAN --> IPv4 */				\
+	ICE_PTT(140, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, FRG, NONE, PAY3),	\
+	ICE_PTT(141, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, NONE, PAY3),	\
+	ICE_PTT(142, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, UDP,  PAY4),	\
+	ICE_PTT_UNUSED_ENTRY(143),						\
+	ICE_PTT(144, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, TCP,  PAY4),	\
+	ICE_PTT(145, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, SCTP, PAY4),	\
+	ICE_PTT(146, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, ICMP, PAY4),	\
+										\
+	/* IPv6 --> GRE/NAT -> MAC/VLAN --> IPv6 */				\
+	ICE_PTT(147, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, FRG, NONE, PAY3),	\
+	ICE_PTT(148, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, NONE, PAY3),	\
+	ICE_PTT(149, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, UDP,  PAY4),	\
+	ICE_PTT_UNUSED_ENTRY(150),						\
+	ICE_PTT(151, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, TCP,  PAY4),	\
+	ICE_PTT(152, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, SCTP, PAY4),	\
+	ICE_PTT(153, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, ICMP, PAY4),
+
+#define ICE_NUM_DEFINED_PTYPES	154
 
 /* macro to make the table lines short, use explicit indexing with [PTYPE] */
 #define ICE_PTT(PTYPE, OUTER_IP, OUTER_IP_VER, OUTER_FRAG, T, TE, TEF, I, PL)\
@@ -695,212 +901,10 @@ struct ice_tlan_ctx {
 
 /* Lookup table mapping in the 10-bit HW PTYPE to the bit field for decoding */
 static const struct ice_rx_ptype_decoded ice_ptype_lkup[BIT(10)] = {
-	/* L2 Packet types */
-	ICE_PTT_UNUSED_ENTRY(0),
-	ICE_PTT(1, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
-	ICE_PTT_UNUSED_ENTRY(2),
-	ICE_PTT_UNUSED_ENTRY(3),
-	ICE_PTT_UNUSED_ENTRY(4),
-	ICE_PTT_UNUSED_ENTRY(5),
-	ICE_PTT(6, L2, NONE, NOF, NONE, NONE, NOF, NONE, NONE),
-	ICE_PTT(7, L2, NONE, NOF, NONE, NONE, NOF, NONE, NONE),
-	ICE_PTT_UNUSED_ENTRY(8),
-	ICE_PTT_UNUSED_ENTRY(9),
-	ICE_PTT(10, L2, NONE, NOF, NONE, NONE, NOF, NONE, NONE),
-	ICE_PTT(11, L2, NONE, NOF, NONE, NONE, NOF, NONE, NONE),
-	ICE_PTT_UNUSED_ENTRY(12),
-	ICE_PTT_UNUSED_ENTRY(13),
-	ICE_PTT_UNUSED_ENTRY(14),
-	ICE_PTT_UNUSED_ENTRY(15),
-	ICE_PTT_UNUSED_ENTRY(16),
-	ICE_PTT_UNUSED_ENTRY(17),
-	ICE_PTT_UNUSED_ENTRY(18),
-	ICE_PTT_UNUSED_ENTRY(19),
-	ICE_PTT_UNUSED_ENTRY(20),
-	ICE_PTT_UNUSED_ENTRY(21),
-
-	/* Non Tunneled IPv4 */
-	ICE_PTT(22, IP, IPV4, FRG, NONE, NONE, NOF, NONE, PAY3),
-	ICE_PTT(23, IP, IPV4, NOF, NONE, NONE, NOF, NONE, PAY3),
-	ICE_PTT(24, IP, IPV4, NOF, NONE, NONE, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(25),
-	ICE_PTT(26, IP, IPV4, NOF, NONE, NONE, NOF, TCP,  PAY4),
-	ICE_PTT(27, IP, IPV4, NOF, NONE, NONE, NOF, SCTP, PAY4),
-	ICE_PTT(28, IP, IPV4, NOF, NONE, NONE, NOF, ICMP, PAY4),
-
-	/* IPv4 --> IPv4 */
-	ICE_PTT(29, IP, IPV4, NOF, IP_IP, IPV4, FRG, NONE, PAY3),
-	ICE_PTT(30, IP, IPV4, NOF, IP_IP, IPV4, NOF, NONE, PAY3),
-	ICE_PTT(31, IP, IPV4, NOF, IP_IP, IPV4, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(32),
-	ICE_PTT(33, IP, IPV4, NOF, IP_IP, IPV4, NOF, TCP,  PAY4),
-	ICE_PTT(34, IP, IPV4, NOF, IP_IP, IPV4, NOF, SCTP, PAY4),
-	ICE_PTT(35, IP, IPV4, NOF, IP_IP, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv4 --> IPv6 */
-	ICE_PTT(36, IP, IPV4, NOF, IP_IP, IPV6, FRG, NONE, PAY3),
-	ICE_PTT(37, IP, IPV4, NOF, IP_IP, IPV6, NOF, NONE, PAY3),
-	ICE_PTT(38, IP, IPV4, NOF, IP_IP, IPV6, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(39),
-	ICE_PTT(40, IP, IPV4, NOF, IP_IP, IPV6, NOF, TCP,  PAY4),
-	ICE_PTT(41, IP, IPV4, NOF, IP_IP, IPV6, NOF, SCTP, PAY4),
-	ICE_PTT(42, IP, IPV4, NOF, IP_IP, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv4 --> GRE/NAT */
-	ICE_PTT(43, IP, IPV4, NOF, IP_GRENAT, NONE, NOF, NONE, PAY3),
-
-	/* IPv4 --> GRE/NAT --> IPv4 */
-	ICE_PTT(44, IP, IPV4, NOF, IP_GRENAT, IPV4, FRG, NONE, PAY3),
-	ICE_PTT(45, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, NONE, PAY3),
-	ICE_PTT(46, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(47),
-	ICE_PTT(48, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, TCP,  PAY4),
-	ICE_PTT(49, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, SCTP, PAY4),
-	ICE_PTT(50, IP, IPV4, NOF, IP_GRENAT, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv4 --> GRE/NAT --> IPv6 */
-	ICE_PTT(51, IP, IPV4, NOF, IP_GRENAT, IPV6, FRG, NONE, PAY3),
-	ICE_PTT(52, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, NONE, PAY3),
-	ICE_PTT(53, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(54),
-	ICE_PTT(55, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, TCP,  PAY4),
-	ICE_PTT(56, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, SCTP, PAY4),
-	ICE_PTT(57, IP, IPV4, NOF, IP_GRENAT, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv4 --> GRE/NAT --> MAC */
-	ICE_PTT(58, IP, IPV4, NOF, IP_GRENAT_MAC, NONE, NOF, NONE, PAY3),
-
-	/* IPv4 --> GRE/NAT --> MAC --> IPv4 */
-	ICE_PTT(59, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, FRG, NONE, PAY3),
-	ICE_PTT(60, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, NONE, PAY3),
-	ICE_PTT(61, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(62),
-	ICE_PTT(63, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, TCP,  PAY4),
-	ICE_PTT(64, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, SCTP, PAY4),
-	ICE_PTT(65, IP, IPV4, NOF, IP_GRENAT_MAC, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv4 --> GRE/NAT -> MAC --> IPv6 */
-	ICE_PTT(66, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, FRG, NONE, PAY3),
-	ICE_PTT(67, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, NONE, PAY3),
-	ICE_PTT(68, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(69),
-	ICE_PTT(70, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, TCP,  PAY4),
-	ICE_PTT(71, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, SCTP, PAY4),
-	ICE_PTT(72, IP, IPV4, NOF, IP_GRENAT_MAC, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv4 --> GRE/NAT --> MAC/VLAN */
-	ICE_PTT(73, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, NONE, NOF, NONE, PAY3),
-
-	/* IPv4 ---> GRE/NAT -> MAC/VLAN --> IPv4 */
-	ICE_PTT(74, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, FRG, NONE, PAY3),
-	ICE_PTT(75, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, NONE, PAY3),
-	ICE_PTT(76, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(77),
-	ICE_PTT(78, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, TCP,  PAY4),
-	ICE_PTT(79, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, SCTP, PAY4),
-	ICE_PTT(80, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv4 -> GRE/NAT -> MAC/VLAN --> IPv6 */
-	ICE_PTT(81, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, FRG, NONE, PAY3),
-	ICE_PTT(82, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, NONE, PAY3),
-	ICE_PTT(83, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(84),
-	ICE_PTT(85, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, TCP,  PAY4),
-	ICE_PTT(86, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, SCTP, PAY4),
-	ICE_PTT(87, IP, IPV4, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, ICMP, PAY4),
-
-	/* Non Tunneled IPv6 */
-	ICE_PTT(88, IP, IPV6, FRG, NONE, NONE, NOF, NONE, PAY3),
-	ICE_PTT(89, IP, IPV6, NOF, NONE, NONE, NOF, NONE, PAY3),
-	ICE_PTT(90, IP, IPV6, NOF, NONE, NONE, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(91),
-	ICE_PTT(92, IP, IPV6, NOF, NONE, NONE, NOF, TCP,  PAY4),
-	ICE_PTT(93, IP, IPV6, NOF, NONE, NONE, NOF, SCTP, PAY4),
-	ICE_PTT(94, IP, IPV6, NOF, NONE, NONE, NOF, ICMP, PAY4),
-
-	/* IPv6 --> IPv4 */
-	ICE_PTT(95, IP, IPV6, NOF, IP_IP, IPV4, FRG, NONE, PAY3),
-	ICE_PTT(96, IP, IPV6, NOF, IP_IP, IPV4, NOF, NONE, PAY3),
-	ICE_PTT(97, IP, IPV6, NOF, IP_IP, IPV4, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(98),
-	ICE_PTT(99, IP, IPV6, NOF, IP_IP, IPV4, NOF, TCP,  PAY4),
-	ICE_PTT(100, IP, IPV6, NOF, IP_IP, IPV4, NOF, SCTP, PAY4),
-	ICE_PTT(101, IP, IPV6, NOF, IP_IP, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv6 --> IPv6 */
-	ICE_PTT(102, IP, IPV6, NOF, IP_IP, IPV6, FRG, NONE, PAY3),
-	ICE_PTT(103, IP, IPV6, NOF, IP_IP, IPV6, NOF, NONE, PAY3),
-	ICE_PTT(104, IP, IPV6, NOF, IP_IP, IPV6, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(105),
-	ICE_PTT(106, IP, IPV6, NOF, IP_IP, IPV6, NOF, TCP,  PAY4),
-	ICE_PTT(107, IP, IPV6, NOF, IP_IP, IPV6, NOF, SCTP, PAY4),
-	ICE_PTT(108, IP, IPV6, NOF, IP_IP, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT */
-	ICE_PTT(109, IP, IPV6, NOF, IP_GRENAT, NONE, NOF, NONE, PAY3),
-
-	/* IPv6 --> GRE/NAT -> IPv4 */
-	ICE_PTT(110, IP, IPV6, NOF, IP_GRENAT, IPV4, FRG, NONE, PAY3),
-	ICE_PTT(111, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, NONE, PAY3),
-	ICE_PTT(112, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(113),
-	ICE_PTT(114, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, TCP,  PAY4),
-	ICE_PTT(115, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, SCTP, PAY4),
-	ICE_PTT(116, IP, IPV6, NOF, IP_GRENAT, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT -> IPv6 */
-	ICE_PTT(117, IP, IPV6, NOF, IP_GRENAT, IPV6, FRG, NONE, PAY3),
-	ICE_PTT(118, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, NONE, PAY3),
-	ICE_PTT(119, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(120),
-	ICE_PTT(121, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, TCP,  PAY4),
-	ICE_PTT(122, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, SCTP, PAY4),
-	ICE_PTT(123, IP, IPV6, NOF, IP_GRENAT, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT -> MAC */
-	ICE_PTT(124, IP, IPV6, NOF, IP_GRENAT_MAC, NONE, NOF, NONE, PAY3),
-
-	/* IPv6 --> GRE/NAT -> MAC -> IPv4 */
-	ICE_PTT(125, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, FRG, NONE, PAY3),
-	ICE_PTT(126, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, NONE, PAY3),
-	ICE_PTT(127, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(128),
-	ICE_PTT(129, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, TCP,  PAY4),
-	ICE_PTT(130, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, SCTP, PAY4),
-	ICE_PTT(131, IP, IPV6, NOF, IP_GRENAT_MAC, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT -> MAC -> IPv6 */
-	ICE_PTT(132, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, FRG, NONE, PAY3),
-	ICE_PTT(133, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, NONE, PAY3),
-	ICE_PTT(134, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(135),
-	ICE_PTT(136, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, TCP,  PAY4),
-	ICE_PTT(137, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, SCTP, PAY4),
-	ICE_PTT(138, IP, IPV6, NOF, IP_GRENAT_MAC, IPV6, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT -> MAC/VLAN */
-	ICE_PTT(139, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, NONE, NOF, NONE, PAY3),
-
-	/* IPv6 --> GRE/NAT -> MAC/VLAN --> IPv4 */
-	ICE_PTT(140, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, FRG, NONE, PAY3),
-	ICE_PTT(141, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, NONE, PAY3),
-	ICE_PTT(142, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(143),
-	ICE_PTT(144, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, TCP,  PAY4),
-	ICE_PTT(145, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, SCTP, PAY4),
-	ICE_PTT(146, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV4, NOF, ICMP, PAY4),
-
-	/* IPv6 --> GRE/NAT -> MAC/VLAN --> IPv6 */
-	ICE_PTT(147, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, FRG, NONE, PAY3),
-	ICE_PTT(148, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, NONE, PAY3),
-	ICE_PTT(149, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, UDP,  PAY4),
-	ICE_PTT_UNUSED_ENTRY(150),
-	ICE_PTT(151, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, TCP,  PAY4),
-	ICE_PTT(152, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, SCTP, PAY4),
-	ICE_PTT(153, IP, IPV6, NOF, IP_GRENAT_MAC_VLAN, IPV6, NOF, ICMP, PAY4),
+	ICE_PTYPES
 
 	/* unused entries */
-	[154 ... 1023] = { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
+	[ICE_NUM_DEFINED_PTYPES ... 1023] = { 0, 0, 0, 0, 0, 0, 0, 0, 0 }
 };
 
 static inline struct ice_rx_ptype_decoded ice_decode_rx_desc_ptype(u16 ptype)
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index e9589cadf811..1caa73644e7b 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -556,6 +556,78 @@ static int ice_xdp_rx_hw_ts(const struct xdp_md *ctx, u64 *ts_ns)
 	return 0;
 }
 
+/* Define a ptype index -> XDP hash type lookup table.
+ * It uses the same ptype definitions as ice_decode_rx_desc_ptype[],
+ * avoiding possible copy-paste errors.
+ */
+#undef ICE_PTT
+#undef ICE_PTT_UNUSED_ENTRY
+
+#define ICE_PTT(PTYPE, OUTER_IP, OUTER_IP_VER, OUTER_FRAG, T, TE, TEF, I, PL)\
+	[PTYPE] = XDP_RSS_L3_##OUTER_IP_VER | XDP_RSS_L4_##I | XDP_RSS_TYPE_##PL
+
+#define ICE_PTT_UNUSED_ENTRY(PTYPE) [PTYPE] = 0
+
+/* A few supplementary definitions for when XDP hash types do not coincide
+ * with what can be generated from ptype definitions
+ * by means of preprocessor concatenation.
+ */
+#define XDP_RSS_L3_NONE		XDP_RSS_TYPE_NONE
+#define XDP_RSS_L4_NONE		XDP_RSS_TYPE_NONE
+#define XDP_RSS_TYPE_PAY2	XDP_RSS_TYPE_L2
+#define XDP_RSS_TYPE_PAY3	XDP_RSS_TYPE_NONE
+#define XDP_RSS_TYPE_PAY4	XDP_RSS_L4
+
+static const enum xdp_rss_hash_type
+ice_ptype_to_xdp_hash[ICE_NUM_DEFINED_PTYPES] = {
+	ICE_PTYPES
+};
+
+#undef XDP_RSS_L3_NONE
+#undef XDP_RSS_L4_NONE
+#undef XDP_RSS_TYPE_PAY2
+#undef XDP_RSS_TYPE_PAY3
+#undef XDP_RSS_TYPE_PAY4
+
+#undef ICE_PTT
+#undef ICE_PTT_UNUSED_ENTRY
+
+/**
+ * ice_xdp_rx_hash_type - Get XDP-specific hash type from the RX descriptor
+ * @eop_desc: End of Packet descriptor
+ */
+static enum xdp_rss_hash_type
+ice_xdp_rx_hash_type(union ice_32b_rx_flex_desc *eop_desc)
+{
+	u16 ptype = ice_get_ptype(eop_desc);
+
+	if (unlikely(ptype >= ICE_NUM_DEFINED_PTYPES))
+		return 0;
+
+	return ice_ptype_to_xdp_hash[ptype];
+}
+
+/**
+ * ice_xdp_rx_hash - RX hash XDP hint handler
+ * @ctx: XDP buff pointer
+ * @hash: hash destination address
+ * @rss_type: XDP hash type destination address
+ *
+ * Copy RX hash (if available) and its type to the destination address.
+ */
+static int ice_xdp_rx_hash(const struct xdp_md *ctx, u32 *hash,
+			   enum xdp_rss_hash_type *rss_type)
+{
+	const struct ice_xdp_buff *xdp_ext = (void *)ctx;
+
+	*rss_type = ice_xdp_rx_hash_type(xdp_ext->eop_desc);
+	if (!ice_copy_rx_hash_from_desc(xdp_ext->eop_desc, hash))
+		return -EOPNOTSUPP;
+
+	return 0;
+}
+
 const struct xdp_metadata_ops ice_xdp_md_ops = {
 	.xmo_rx_timestamp		= ice_xdp_rx_hw_ts,
+	.xmo_rx_hash			= ice_xdp_rx_hash,
 };
diff --git a/include/net/xdp.h b/include/net/xdp.h
index d1c5381fc95f..6381560efae2 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -417,6 +417,7 @@ enum xdp_rss_hash_type {
 	XDP_RSS_L4_UDP		= BIT(5),
 	XDP_RSS_L4_SCTP		= BIT(6),
 	XDP_RSS_L4_IPSEC	= BIT(7), /* L4 based hash include IPSEC SPI */
+	XDP_RSS_L4_ICMP		= BIT(8),
 
 	/* Second part: RSS hash type combinations used for driver HW mapping */
 	XDP_RSS_TYPE_NONE            = 0,
@@ -432,11 +433,13 @@ enum xdp_rss_hash_type {
 	XDP_RSS_TYPE_L4_IPV4_UDP     = XDP_RSS_L3_IPV4 | XDP_RSS_L4 | XDP_RSS_L4_UDP,
 	XDP_RSS_TYPE_L4_IPV4_SCTP    = XDP_RSS_L3_IPV4 | XDP_RSS_L4 | XDP_RSS_L4_SCTP,
 	XDP_RSS_TYPE_L4_IPV4_IPSEC   = XDP_RSS_L3_IPV4 | XDP_RSS_L4 | XDP_RSS_L4_IPSEC,
+	XDP_RSS_TYPE_L4_IPV4_ICMP    = XDP_RSS_L3_IPV4 | XDP_RSS_L4 | XDP_RSS_L4_ICMP,
 
 	XDP_RSS_TYPE_L4_IPV6_TCP     = XDP_RSS_L3_IPV6 | XDP_RSS_L4 | XDP_RSS_L4_TCP,
 	XDP_RSS_TYPE_L4_IPV6_UDP     = XDP_RSS_L3_IPV6 | XDP_RSS_L4 | XDP_RSS_L4_UDP,
 	XDP_RSS_TYPE_L4_IPV6_SCTP    = XDP_RSS_L3_IPV6 | XDP_RSS_L4 | XDP_RSS_L4_SCTP,
 	XDP_RSS_TYPE_L4_IPV6_IPSEC   = XDP_RSS_L3_IPV6 | XDP_RSS_L4 | XDP_RSS_L4_IPSEC,
+	XDP_RSS_TYPE_L4_IPV6_ICMP    = XDP_RSS_L3_IPV6 | XDP_RSS_L4 | XDP_RSS_L4_ICMP,
 
 	XDP_RSS_TYPE_L4_IPV6_TCP_EX  = XDP_RSS_TYPE_L4_IPV6_TCP  | XDP_RSS_L3_DYNHDR,
 	XDP_RSS_TYPE_L4_IPV6_UDP_EX  = XDP_RSS_TYPE_L4_IPV6_UDP  | XDP_RSS_L3_DYNHDR,
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
