Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEA1C0946C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Oct 2025 18:17:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6725C811C5;
	Sat, 25 Oct 2025 16:17:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dYQvlQlx9AK6; Sat, 25 Oct 2025 16:17:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E300811CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761409056;
	bh=7xrS0nESfCK0Sk19PT0mRizr5rekpG4Hlb8LeCRuS/Y=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RLpra/t0W6dAdA0gFAbJG2T2MB84vpIiMxMIIlAkTtQYkkMEVj9ijaBcJyGnY4U0D
	 oOk2k8f+MadUdecO+oT93Xjlnev6rtMyptWLhc3PF9oZY1aGI0bG2FUYE4TF1rm68N
	 kdV/XD1FB1MKpj0hvB0qPFwwyH6oIk+ycBQyniGAcfA8UN0hoigo2WeggcMnlN5SNq
	 He2wA6Fh7Am6XsL1r+nVjDv7KxvJS2pVxDz9hlDrWEtLbV+ZFSHtR2h2s6vriDiqAB
	 Cml3cptbrJS6Tpc2+AP59kOO+3zX85vLZ0hf/zbB0P7pjcWSiP4oE5YYx9UudMhu+G
	 PrzefGYqM1IUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E300811CE;
	Sat, 25 Oct 2025 16:17:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DEE8BD7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 16:17:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C55E580F84
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 16:17:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1SbY4rTVGJu2 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Oct 2025 16:17:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=sashal@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BE33C80F2B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE33C80F2B
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BE33C80F2B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 16:17:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 2993343EE1;
 Sat, 25 Oct 2025 16:17:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D31EC4CEFB;
 Sat, 25 Oct 2025 16:17:31 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Simon Horman <horms@kernel.org>, Paul Menzel <pmenzel@molgen.mpg.de>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Sasha Levin <sashal@kernel.org>, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org
Date: Sat, 25 Oct 2025 11:56:56 -0400
Message-ID: <20251025160905.3857885-185-sashal@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251025160905.3857885-1-sashal@kernel.org>
References: <20251025160905.3857885-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.17.5
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761409053;
 bh=D8G4IjAJAqWB3KeYAjtPUEUlzXJZkrngtoQG2vgZKB4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uw5SXbBiuIC44hv5UMxhha1tTW4F/h3uNFTjfgZTUTqrRBAZ2orcQT/vV+vSgJYDc
 NkrHJdghWAKGGy/tF+eLaPZEXoM/uFUK5f+dUWXWWE8g5Jo6JIk8q4avwaLOTwDL0L
 f9BOpCpQPfvOIMNeGnyrW1gZ5UcCR4Do+nAVj7Sf3+PjU1k2XFA+pIxdgdhVlbyvuX
 l+ad2CyqUoz+TKmJTjdSi5qTaF9J7BWZWw7US1UWmehYLwOy9TGn1fmFhBYDoyg635
 AOSPmVLKk+gOKJsNnQiM5ckNCHRjAwI8KlDJn0FVZKoQeUGvf6pT5YuLWaYrSDh937
 SniUliKLRKrmw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=uw5SXbBi
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.17-6.1] ice: Don't use %pK
 through printk or tracepoints
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

From: Thomas Weißschuh <thomas.weissschuh@linutronix.de>

[ Upstream commit 66ceb45b7d7e9673254116eefe5b6d3a44eba267 ]

In the past %pK was preferable to %p as it would not leak raw pointer
values into the kernel log.
Since commit ad67b74d2469 ("printk: hash addresses printed with %p")
the regular %p has been improved to avoid this issue.
Furthermore, restricted pointers ("%pK") were never meant to be used
through printk(). They can still unintentionally leak raw pointers or
acquire sleeping locks in atomic contexts.

Switch to the regular pointer formatting which is safer and
easier to reason about.
There are still a few users of %pK left, but these use it through seq_file,
for which its usage is safe.

Signed-off-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>
Acked-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Link: https://patch.msgid.link/20250811-restricted-pointers-net-v5-1-2e2fdc7d3f2c@linutronix.de
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

YES

- What changes: The patch replaces %pK with %p in a single debug printk
  and several tracepoint TP_printk format strings:
  - drivers/net/ethernet/intel/ice/ice_main.c:9112
  - drivers/net/ethernet/intel/ice/ice_trace.h:133, 161, 185, 208, 231

- Why it matters:
  - %p hashing is safe since v4.15: Commit ad67b74d2469 (“printk: hash
    addresses printed with %p”) ensures %p prints hashed addresses by
    default, avoiding raw pointer leaks.
    - See lib/vsprintf.c:837-848 for the %p default hashing path.
  - %pK is problematic in printk/tracepoints:
    - In IRQ/softirq/NMI when kptr_restrict==1 (a common distro
      hardening default), %pK deliberately refuses to operate and emits
      “pK-error” instead of a pointer, degrading trace readability and
      consistency in hot paths like TX/RX cleanups.
      - See lib/vsprintf.c:850 (kptr_restrict) and
        lib/vsprintf.c:864-871 (IRQ/softirq/NMI path to “pK-error”).
    - The restricted-pointer policy was never intended for
      printk/tracepoints; using %pK can also involve capability/cred
      checks that are inappropriate in atomic contexts.
  - ice tracepoints are often hit from NAPI/IRQ context. The current %pK
    usage in:
    - ice_trace.h:133, 161, 185, 208, 231 (ring/desc/buf/skb pointers)
    can produce “pK-error” under kptr_restrict==1 instead of hashed
values, while %p provides consistent, safe hashed output.
  - The dev_dbg change in drivers/net/ethernet/intel/ice/ice_main.c:9112
    similarly aligns with the policy of avoiding %pK in printk; %p
    remains non-leaky (hashed).

- Risk assessment:
  - Minimal and contained: only format strings change; no functional
    logic, state, or ABI changes to tracepoint fields (the field layout
    defined by __field/__string is unchanged; only TP_printk’s human-
    readable text changes).
  - No cross-subsystem dependencies or architectural impact.
  - Improves safety/observability without adding new features.

- Precedent in stable: Multiple similar “Don’t use %pK through printk”
  patches have already been accepted into stable trees, citing the same
  rationale:
  - bpf: b2131336289fa
  - timer_list: 3fb9ee05ec15f
  - spi loopback-test: e0bdc3d17b388
  Each includes a Sasha Levin Signed-off-by indicating stable
backporting.

- Stable policy fit:
  - Fixes a real issue for users who rely on trace readability under
    hardened kptr_restrict settings and removes a misuse of %pK in
    printk/tracepoints.
  - Small, self-contained, low regression risk, no new features,
    confined to a driver.

- Compatibility note: All maintained LTS series (>= v4.19) already
  include %p hashing from v4.15, so this change is safe across active
  stable kernels.

Conclusion: Backporting this patch improves correctness and safety of
diagnostic output in the ice driver with negligible risk and clear
precedent.

 drivers/net/ethernet/intel/ice/ice_main.c  |  2 +-
 drivers/net/ethernet/intel/ice/ice_trace.h | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 77781277aa8e4..92b95d92d5992 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -9125,7 +9125,7 @@ static int ice_create_q_channels(struct ice_vsi *vsi)
 		list_add_tail(&ch->list, &vsi->ch_list);
 		vsi->tc_map_vsi[i] = ch->ch_vsi;
 		dev_dbg(ice_pf_to_dev(pf),
-			"successfully created channel: VSI %pK\n", ch->ch_vsi);
+			"successfully created channel: VSI %p\n", ch->ch_vsi);
 	}
 	return 0;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_trace.h b/drivers/net/ethernet/intel/ice/ice_trace.h
index 07aab6e130cd5..4f35ef8d6b299 100644
--- a/drivers/net/ethernet/intel/ice/ice_trace.h
+++ b/drivers/net/ethernet/intel/ice/ice_trace.h
@@ -130,7 +130,7 @@ DECLARE_EVENT_CLASS(ice_tx_template,
 				   __entry->buf = buf;
 				   __assign_str(devname);),
 
-		    TP_printk("netdev: %s ring: %pK desc: %pK buf %pK", __get_str(devname),
+		    TP_printk("netdev: %s ring: %p desc: %p buf %p", __get_str(devname),
 			      __entry->ring, __entry->desc, __entry->buf)
 );
 
@@ -158,7 +158,7 @@ DECLARE_EVENT_CLASS(ice_rx_template,
 				   __entry->desc = desc;
 				   __assign_str(devname);),
 
-		    TP_printk("netdev: %s ring: %pK desc: %pK", __get_str(devname),
+		    TP_printk("netdev: %s ring: %p desc: %p", __get_str(devname),
 			      __entry->ring, __entry->desc)
 );
 DEFINE_EVENT(ice_rx_template, ice_clean_rx_irq,
@@ -182,7 +182,7 @@ DECLARE_EVENT_CLASS(ice_rx_indicate_template,
 				   __entry->skb = skb;
 				   __assign_str(devname);),
 
-		    TP_printk("netdev: %s ring: %pK desc: %pK skb %pK", __get_str(devname),
+		    TP_printk("netdev: %s ring: %p desc: %p skb %p", __get_str(devname),
 			      __entry->ring, __entry->desc, __entry->skb)
 );
 
@@ -205,7 +205,7 @@ DECLARE_EVENT_CLASS(ice_xmit_template,
 				   __entry->skb = skb;
 				   __assign_str(devname);),
 
-		    TP_printk("netdev: %s skb: %pK ring: %pK", __get_str(devname),
+		    TP_printk("netdev: %s skb: %p ring: %p", __get_str(devname),
 			      __entry->skb, __entry->ring)
 );
 
@@ -228,7 +228,7 @@ DECLARE_EVENT_CLASS(ice_tx_tstamp_template,
 		    TP_fast_assign(__entry->skb = skb;
 				   __entry->idx = idx;),
 
-		    TP_printk("skb %pK idx %d",
+		    TP_printk("skb %p idx %d",
 			      __entry->skb, __entry->idx)
 );
 #define DEFINE_TX_TSTAMP_OP_EVENT(name) \
-- 
2.51.0

