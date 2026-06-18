Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ghpyMzEKNGpbLwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 17:09:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B8A6A120C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 17:09:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=hhWyvpqp;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DD19410E9;
	Thu, 18 Jun 2026 15:09:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D4aLb5LYvTPP; Thu, 18 Jun 2026 15:09:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 079B5410F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781795374;
	bh=d2GQquoF25X9dLn6UvJ6FJKZA2ZvYr3lj+HgGwvRQo8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hhWyvpqpwTcM5MXy4bZ4CAKz/ctxpEmCi2JlstybvUpFhKOmQo1gBBHADNso/xalb
	 cX+14EiKG8jwpnN/tYsNkmK8nJ4AxM7qn8vikicxDSkijsbwM7r5o70IDVm6rvfAHU
	 9hEIyLapkaI5WU8X5NeGmuJMGYv0kAW7L1SAnxy0twQSR7Z/Bpb2ydFFol4fK7V/VW
	 TE1orSv9W5FF62fPum9bzX4Fm8i2IShJthF/QW9H/LGYESYwvowkYbEjsMNGJtdkOu
	 /sw7mVibIk4UM0iu+7ADBGhNu/Vzsz4F/nOMhoYibsVmdalJnRxXTpaY73jHl3CX8h
	 tUaMl48LQA8wg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 079B5410F2;
	Thu, 18 Jun 2026 15:09:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 35457131
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 15:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2734083E63
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 15:09:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 04FHY2EPHI2v for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2026 15:09:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E52C283E5D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E52C283E5D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E52C283E5D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 15:09:31 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-471-F7pXjv84ONydh7f8q1T73g-1; Thu,
 18 Jun 2026 11:09:26 -0400
X-MC-Unique: F7pXjv84ONydh7f8q1T73g-1
X-Mimecast-MFC-AGG-ID: F7pXjv84ONydh7f8q1T73g_1781795364
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 695A81955F7A; Thu, 18 Jun 2026 15:09:24 +0000 (UTC)
Received: from ShadowPeak.redhat.com (unknown [10.44.32.243])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id CDA331800675; Thu, 18 Jun 2026 15:09:19 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 18 Jun 2026 17:09:10 +0200
Message-ID: <89efbea9831175e6f57e9fe8557f7a0e48e050b7.1781786935.git.poros@redhat.com>
In-Reply-To: <cover.1781786935.git.poros@redhat.com>
References: <cover.1781786935.git.poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-MFC-PROC-ID: VfgOyLDdLF8bGdZaqZlEQIO_-AemWAuguIeM9QhCjgI_1781795364
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1781795370;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=d2GQquoF25X9dLn6UvJ6FJKZA2ZvYr3lj+HgGwvRQo8=;
 b=b534DC5ZHt90d/+lyurqb89G9B0x7VbIi3vlZcYquTr1QwlLbKa+POV39ugr2sxRkFFCp8
 oK86wh5zXcBXmLOna/uNW/a1n4K3hmw7IjiTl/PghgJ3qR7stWLS1x2evCLFgmgsFWj2OX
 +7KQWj1vhbLyHC2IJPwofXVq4z/FBb8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=b534DC5Z
Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: skip per-VLAN promisc
 rules when default VSI Rx rule is set
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
Cc: Ivan Vecera <ivecera@redhat.com>, Alice Michael <alice.michael@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:alice.michael@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:michal.swiatkowski@linux.intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C2B8A6A120C

When an ice port is part of a vlan-filtering bridge with a wide VLAN
trunk and the netdev is in IFF_PROMISC (typical for bond slaves
attached to a bridge), the driver installs per-VLAN
ICE_SW_LKUP_PROMISC_VLAN entries (recipe 9) in addition to the broad
ICE_SW_LKUP_DFLT VSI Rx rule (recipe 5). Each per-VLAN rule consumes
one Flow Lookup Unit (FLU) entry from a fixed hardware pool of "up to
32K FLU entries" per device, documented in the E810 datasheet
(613875-009 section 7.8.10, Table 7-18, page 1015).

With three active PFs sharing one switch context and a bridge trunk of
vid 2-4094, the configuration would require roughly

  3 PFs * 4093 VLANs * 3 rules per VLAN per PF ~= 36,800 rules

which exceeds the 32K FLU budget. Firmware then responds to further
Add Switch Rules requests with AQ retval 0x10 (LIBIE_AQ_RC_ENOSPC) and
the user-visible failure surfaces as

  ice 0000:5c:00.1: Failed to set VSI 14 as the default forwarding
                    VSI, error -5
  ice 0000:5c:00.1 ens1f1: Error -5 setting default VSI 14 Rx rule

After a switch context has been driven into overrun, subsequent
retries can come back as AQ retval 0x2 (LIBIE_AQ_RC_ENOENT), which has
misled triage attempts toward a perceived recipe binding defect
rather than a capacity issue.

When the DFLT VSI Rx rule is in place it catches every packet on the
lport regardless of VLAN tag, so the per-VLAN PROMISC_VLAN expansion
is redundant. The recipe 4 VLAN prune entries are still installed
per VLAN and continue to track the allowed VID set, but the
IFF_PROMISC sync path disables their enforcement on the VSI via
vlan_ops->dis_rx_filtering() before ice_set_promisc() runs.
ena_rx_filtering() is restored when IFF_PROMISC is cleared.

Skip the per-VLAN expansion at the two call sites that drive it:
ice_set_promisc() falls through to ice_fltr_set_vsi_promisc() and
ice_vlan_rx_add_vid() omits the per-VLAN ICE_MCAST_VLAN_PROMISC_BITS
add. Plain IFF_ALLMULTI without an installed DFLT VSI rule is
unchanged and still installs per-VLAN multicast promisc rules.

Both checks use ice_is_vsi_dflt_vsi() which inspects the recipe
filter list for an installed DFLT rule on this VSI, not
netdev->flags & IFF_PROMISC. The HW-state predicate avoids two
regression vectors that a user-intent predicate would introduce:

1. ice_lag_is_switchdev_running() short-circuits ice_set_dflt_vsi()
   to return 0 without installing the DFLT rule for a PF in
   switchdev LAG mode. An IFF_PROMISC-only check would also
   suppress the per-VLAN fallback, leaving the PF with no rule.

2. When ice_set_dflt_vsi() returns a non-EEXIST error (FLU
   exhausted, switch context divergence), the driver clears
   IFF_PROMISC from vsi->current_netdev_flags but the netdev's own
   flags retain IFF_PROMISC. The user-intent predicate would still
   suppress the per-VLAN fallback even though DFLT failed to
   install.

The predicate is install-time only. The IFF_PROMISC off path closes
the lifecycle gap in ice_vsi_exit_dflt_promisc(): for an IFF_ALLMULTI
VSI with VLANs it reinstates the per-VID rules before clearing the
default rule, so multicast coverage never lapses. If that AQ call
fails the default rule is left in place, ice_vsi_exit_dflt_promisc()
returns the error, and the sync_fltr pass bails with
vsi->current_netdev_flags |= IFF_PROMISC; the current/netdev flag
mismatch re-fires the IFF_PROMISC off path on the next sync. Clearing
the default rule first would instead expose a window where neither
the default rule nor the per-VID rules carry multicast.

If ice_clear_dflt_vsi() fails after the per-VID rules were reinstated
they are deliberately not rolled back. Clearing the default rule is a
removal that frees an FLU entry rather than allocating one, so it
cannot fail for lack of space; a failure is a transient AdminQ error.
The per-VID rules are the steady state for an IFF_ALLMULTI VLAN VSI,
so the only redundant entry left behind is the single un-removed
default rule, not the per-VID set. The retry re-enters this path,
ice_fltr_set_vlan_vsi_promisc() returns -EEXIST for the rules that
already exist so nothing is reallocated, and the default rule is
removed on the next attempt. Rolling the per-VID rules back here would
instead churn thousands of removes and re-adds on every retry.

After the default rule is gone the vid=0 PROMISC rule that paired
with it is redundant and is dropped, but only to reclaim a filter
entry, so a failure there is logged and does not abort the
transition.

ice_set_vsi_promisc() and ice_clear_vsi_promisc() dispatch the
recipe based on whether ICE_PROMISC_VLAN_RX/TX bits are present in
the mask: with the bits set, recipe ICE_SW_LKUP_PROMISC_VLAN is
used; otherwise ICE_SW_LKUP_PROMISC. The else branch in
ice_set_promisc() installs the vid=0 rule in ICE_SW_LKUP_PROMISC.
Because ice_clear_promisc() with VLANs present adds the VLAN bits
and would search ICE_SW_LKUP_PROMISC_VLAN, the recipe mismatch
would leave the vid=0 ICE_SW_LKUP_PROMISC rule orphaned when VLANs
are configured. This is a single stale rule, not a per-cycle leak:
re-adding it on the next promisc on returns -EEXIST rather than
allocating a new entry. The set-time recipe is not recorded, so
ice_clear_promisc() clears both recipes; clearing a rule that is not
present succeeds, both clears run unconditionally, and the first
error is returned.

The two VLAN-0 recipe transition blocks in ice_vlan_rx_add_vid()
and ice_vlan_rx_kill_vid() that promote / demote the vid=0 rule
between ICE_SW_LKUP_PROMISC and ICE_SW_LKUP_PROMISC_VLAN are
likewise guarded by !ice_is_vsi_dflt_vsi(). With DFLT in place the
vid=0 rule already covers every VID and a recipe swap would only
install a redundant rule.

Lab reproduction on an E810-C with the same firmware family (4.80,
NVM 1.3805.0, DDP 1.3.43.0) using four PFs in vlan-filtering bridges
with vid 2-4094 and the slaves brought to IFF_PROMISC before the
bridge VLAN bulk add:

  before fix:  ~12,279 AQ Add Switch Rules per PF, ENOSPC and ENOENT
               responses in dmesg, DFLT VSI Rx rule install fails on
               the affected PF
  after fix:   ~4,093 AQ Add Switch Rules per PF, no AQ errors, DFLT
               VSI Rx rule installs on every PF

The 66.7% reduction in installed switch rules per PF matches the
expected per-VLAN saving: a single DFLT rule replaces the per-VID
PROMISC_VLAN expansion.

Functional regression test with vid 2-100 trunk between two ice
ports through the lab switch (40/40 PASS, 0 AQ errors, 0 ENOSPC
at 4093-VID customer scale):

  vid 50 unicast, vid 100 unicast, vid 50 broadcast ARP,
    vid 100 multicast IPv6 ND
  vid 200/500/1500/4000 isolation (out-of-trunk) and untagged not
    leaked: 0 packets reach any bridge endpoint
  IGMP/MLD snooping, Jumbo MTU 9000, reserved-multicast STP BPDU
  IFF_PROMISC + IFF_ALLMULTI transition (off while allmulti stays)
  Regression reproducer for commit 1273f89578f2 ("ice: Fix broken
    IFF_ALLMULTI handling"): allmulti on -> add vid -> allmulti off
    -> allmulti on plus the orphan-rule Scenario 2; both converge
    with no stale rules
  100-VID, 1000-VID, 4093-VID stress cycles (5/3/2 iterations each)
  switchdev mode toggle preserves IFF_PROMISC pruning state across
    the session (vid 999 multicast received before and after the
    legacy -> switchdev -> legacy cycle)
  SR-IOV: VFs unaffected because ice_set_promisc() early-returns
    for non-PF VSI and VF representors do not register
    ndo_vlan_rx_add_vid

Fixes: 1273f89578f2 ("ice: Fix broken IFF_ALLMULTI handling")
Signed-off-by: Petr Oros <poros@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 90 ++++++++++++++++++-----
 1 file changed, 70 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6d24056c247cf4..af8df81fc45623 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -274,7 +274,8 @@ static int ice_set_promisc(struct ice_vsi *vsi, u8 promisc_m)
 	if (vsi->type != ICE_VSI_PF)
 		return 0;
 
-	if (ice_vsi_has_non_zero_vlans(vsi)) {
+	/* skip per-VID expansion; the DFLT Rx rule already covers every VID */
+	if (ice_vsi_has_non_zero_vlans(vsi) && !ice_is_vsi_dflt_vsi(vsi)) {
 		promisc_m |= (ICE_PROMISC_VLAN_RX | ICE_PROMISC_VLAN_TX);
 		status = ice_fltr_set_vlan_vsi_promisc(&vsi->back->hw, vsi,
 						       promisc_m);
@@ -304,9 +305,19 @@ static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m)
 		return 0;
 
 	if (ice_vsi_has_non_zero_vlans(vsi)) {
-		promisc_m |= (ICE_PROMISC_VLAN_RX | ICE_PROMISC_VLAN_TX);
+		int vid0_status;
+
+		/* set time used either recipe (per-VID PROMISC_VLAN, or vid=0
+		 * PROMISC via the ice_set_promisc() else branch), so clear
+		 * both; clearing an absent rule succeeds
+		 */
 		status = ice_fltr_clear_vlan_vsi_promisc(&vsi->back->hw, vsi,
-							 promisc_m);
+				promisc_m | ICE_PROMISC_VLAN_RX |
+				ICE_PROMISC_VLAN_TX);
+		vid0_status = ice_fltr_clear_vsi_promisc(&vsi->back->hw,
+							 vsi->idx, promisc_m, 0);
+		if (!status)
+			status = vid0_status;
 	} else {
 		status = ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
 						    promisc_m, 0);
@@ -317,6 +328,49 @@ static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m)
 	return status;
 }
 
+/**
+ * ice_vsi_exit_dflt_promisc - drop the default VSI Rx rule on promisc off
+ * @vsi: the VSI leaving promiscuous mode
+ *
+ * For an IFF_ALLMULTI VSI with VLANs the per-VID multicast rules are
+ * reinstated before the default rule is cleared so coverage never lapses;
+ * the then redundant vid=0 rule is dropped best-effort. The callees log
+ * their own failures, so error returns are not re-logged here.
+ *
+ * Return: 0 on success, negative on error with the default rule left in place.
+ */
+static int ice_vsi_exit_dflt_promisc(struct ice_vsi *vsi)
+{
+	struct ice_vsi_vlan_ops *vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
+	struct net_device *netdev = vsi->netdev;
+	struct ice_hw *hw = &vsi->back->hw;
+	bool restore_mc;
+	int err;
+
+	restore_mc = (vsi->current_netdev_flags & IFF_ALLMULTI) &&
+		     ice_vsi_has_non_zero_vlans(vsi);
+
+	if (restore_mc) {
+		err = ice_fltr_set_vlan_vsi_promisc(hw, vsi,
+						    ICE_MCAST_VLAN_PROMISC_BITS);
+		if (err && err != -EEXIST)
+			return err;
+	}
+
+	err = ice_clear_dflt_vsi(vsi);
+	if (err)
+		return err;
+
+	if (netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER)
+		vlan_ops->ena_rx_filtering(vsi);
+
+	if (restore_mc)
+		ice_fltr_clear_vsi_promisc(hw, vsi->idx, ICE_MCAST_PROMISC_BITS,
+					   0);
+
+	return 0;
+}
+
 /**
  * ice_vsi_sync_fltr - Update the VSI filter list to the HW
  * @vsi: ptr to the VSI
@@ -442,17 +496,12 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
 		} else {
 			/* Clear Rx filter to remove traffic from wire */
 			if (ice_is_vsi_dflt_vsi(vsi)) {
-				err = ice_clear_dflt_vsi(vsi);
+				err = ice_vsi_exit_dflt_promisc(vsi);
 				if (err) {
-					netdev_err(netdev, "Error %d clearing default VSI %i Rx rule\n",
-						   err, vsi->vsi_num);
 					vsi->current_netdev_flags |=
 						IFF_PROMISC;
 					goto out_promisc;
 				}
-				if (vsi->netdev->features &
-				    NETIF_F_HW_VLAN_CTAG_FILTER)
-					vlan_ops->ena_rx_filtering(vsi);
 			}
 
 			/* disable allmulti here, but only if allmulti is not
@@ -3676,10 +3725,9 @@ int ice_vlan_rx_add_vid(struct net_device *netdev, __be16 proto, u16 vid)
 	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state))
 		usleep_range(1000, 2000);
 
-	/* Add multicast promisc rule for the VLAN ID to be added if
-	 * all-multicast is currently enabled.
-	 */
-	if (vsi->current_netdev_flags & IFF_ALLMULTI) {
+	/* skip the per-VID rule when the DFLT Rx rule already covers this VID */
+	if ((vsi->current_netdev_flags & IFF_ALLMULTI) &&
+	    !ice_is_vsi_dflt_vsi(vsi)) {
 		ret = ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx,
 					       ICE_MCAST_VLAN_PROMISC_BITS,
 					       vid);
@@ -3697,11 +3745,12 @@ int ice_vlan_rx_add_vid(struct net_device *netdev, __be16 proto, u16 vid)
 	if (ret)
 		goto finish;
 
-	/* If all-multicast is currently enabled and this VLAN ID is only one
-	 * besides VLAN-0 we have to update look-up type of multicast promisc
-	 * rule for VLAN-0 from ICE_SW_LKUP_PROMISC to ICE_SW_LKUP_PROMISC_VLAN.
+	/* On the first non-zero VLAN, promote the VLAN-0 multicast promisc
+	 * rule from ICE_SW_LKUP_PROMISC to ICE_SW_LKUP_PROMISC_VLAN. Skip when
+	 * the DFLT Rx rule is installed; it already covers every VID.
 	 */
 	if ((vsi->current_netdev_flags & IFF_ALLMULTI) &&
+	    !ice_is_vsi_dflt_vsi(vsi) &&
 	    ice_vsi_num_non_zero_vlans(vsi) == 1) {
 		ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
 					   ICE_MCAST_PROMISC_BITS, 0);
@@ -3764,11 +3813,12 @@ int ice_vlan_rx_kill_vid(struct net_device *netdev, __be16 proto, u16 vid)
 					   ICE_MCAST_VLAN_PROMISC_BITS, vid);
 
 	if (!ice_vsi_has_non_zero_vlans(vsi)) {
-		/* Update look-up type of multicast promisc rule for VLAN 0
-		 * from ICE_SW_LKUP_PROMISC_VLAN to ICE_SW_LKUP_PROMISC when
-		 * all-multicast is enabled and VLAN 0 is the only VLAN rule.
+		/* Last non-zero VLAN gone: demote the VLAN-0 multicast promisc
+		 * rule back to ICE_SW_LKUP_PROMISC. Skip when the DFLT Rx rule
+		 * is installed; no recipe swap is needed.
 		 */
-		if (vsi->current_netdev_flags & IFF_ALLMULTI) {
+		if ((vsi->current_netdev_flags & IFF_ALLMULTI) &&
+		    !ice_is_vsi_dflt_vsi(vsi)) {
 			ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
 						   ICE_MCAST_VLAN_PROMISC_BITS,
 						   0);
-- 
2.53.0

