Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2149B6AE3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2024 18:22:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7714F60A62;
	Wed, 30 Oct 2024 17:22:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4U1Pm6m3F8kl; Wed, 30 Oct 2024 17:22:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF48460A4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730308955;
	bh=jLSzACxmxEBRWv3ivBLDrfjxtKVv3eAM65wwzGJRUL8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4yTSKy0fwzDPI7uq5VL9YYmeRZ3ecFEBEN8ykCSPcc+lJL+iQ22AY0n6Ej48RTTAW
	 UOXuQF/VvigYUJ/kU8IF4Bh0rKxggpBYT8b5TdMJXZCUwsEMVlI/ymr/TynBofX1OT
	 Nxf3IyXkS60nJ0jimHdQitF+a+xoIo+HvN6NDBrtFml0N3VhChnDbsegqm5bou8QsI
	 PcjPNwHrtQpXMNTCPRj3//yBSs77zeWSczIUMUbQv7RloayjP0ZN4/LeGXXD8iLRHp
	 bCWMuBN+3TFXE6+JB7IukrlU3TsN9d1T6hufTWa849blJJEmaedE2Sd2jmkNBp+qFM
	 ikjYFKz8P3IYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF48460A4F;
	Wed, 30 Oct 2024 17:22:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 46AAD494E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 17:22:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 26F44407A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 17:22:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9hbqV3vWyzWr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2024 17:22:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.11.55.87;
 helo=james.theweblords.de; envelope-from=pegro@friiks.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BC7A340784
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC7A340784
Received: from james.theweblords.de (james.theweblords.de [217.11.55.87])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC7A340784
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 17:22:32 +0000 (UTC)
Received: (qmail 21095 invoked by uid 210); 30 Oct 2024 17:22:29 -0000
X-Qmail-Scanner-Diagnostics: from 129.233.181.227
 (petronios@theweblords.de@129.233.181.227) by james (envelope-from
 <pegro@friiks.de>, uid 201) with qmail-scanner-2.10st 
 (mhr: 1.0. spamassassin: 4.0.0. perlscan: 2.10st.  
 Clear:RC:1(129.233.181.227):. 
 Processed in 0.019699 secs); 30 Oct 2024 17:22:29 -0000
Received: from unknown (HELO james.theweblords.de)
 (petronios@theweblords.de@129.233.181.227)
 by james.theweblords.de with ESMTPA; 30 Oct 2024 17:22:29 -0000
From: pegro@friiks.de
To: intel-wired-lan@lists.osuosl.org, Paul Menzel <pmenzel@molgen.mpg.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: netdev@vger.kernel.org,
	=?UTF-8?q?Peter=20Gro=C3=9Fe?= <pegro@friiks.de>
Date: Wed, 30 Oct 2024 18:22:24 +0100
Message-Id: <20241030172224.30548-1-pegro@friiks.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cf6dd743-759e-4db9-8811-fd1520262412@molgen.mpg.de>
References: <cf6dd743-759e-4db9-8811-fd1520262412@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=friiks.de
Subject: [Intel-wired-lan] [PATCH iwl-net v2] i40e: Fix handling changed
 priv flags
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

From: Peter Große <pegro@friiks.de>

After assembling the new private flags on a PF, the operation to determine
the changed flags uses the wrong bitmaps. Instead of xor-ing orig_flags
with new_flags, it uses the still unchanged pf->flags, thus changed_flags
is always 0.

Fix it by using the correct bitmaps.

The issue was discovered while debugging why disabling source pruning
stopped working with release 6.7. Although the new flags will be copied to
pf->flags later on in that function, disabling source pruning requires
a reset of the PF, which was skipped due to this bug.

Disabling source pruning:
$ sudo ethtool --set-priv-flags eno1 disable-source-pruning on
$ sudo ethtool --show-priv-flags eno1
Private flags for eno1:
MFP                   : off
total-port-shutdown   : off
LinkPolling           : off
flow-director-atr     : on
veb-stats             : off
hw-atr-eviction       : off
link-down-on-close    : off
legacy-rx             : off
disable-source-pruning: on
disable-fw-lldp       : off
rs-fec                : off
base-r-fec            : off
vf-vlan-pruning       : off

Regarding reproducing:

I observed the issue with a rather complicated lab setup, where
 * two VLAN interfaces are created on eno1
 * each with a different MAC address assigned
 * each moved into a separate namespace
 * both VLANs are bridged externally, so they form a single layer 2 network

The external bridge is done via a channel emulator adding packet loss and
delay and the application in the namespaces tries to send/receive traffic
and measure the performance. Sender and receiver are separated by
namespaces, yet the network card "sees its own traffic" send back to it.
To make that work, source pruning has to be disabled.

Fixes: 70756d0a4727 ("i40e: Use DECLARE_BITMAP for flags and hw_features fields in i40e_pf")
Signed-off-by: Peter Große <pegro@friiks.de>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index c841779713f6..016c0ae6b36f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5306,7 +5306,7 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 	}
 
 flags_complete:
-	bitmap_xor(changed_flags, pf->flags, orig_flags, I40E_PF_FLAGS_NBITS);
+	bitmap_xor(changed_flags, new_flags, orig_flags, I40E_PF_FLAGS_NBITS);
 
 	if (test_bit(I40E_FLAG_FW_LLDP_DIS, changed_flags))
 		reset_needed = I40E_PF_RESET_AND_REBUILD_FLAG;
-- 
2.34.1

