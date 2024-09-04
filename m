Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A0A96B704
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 11:40:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83364403B4;
	Wed,  4 Sep 2024 09:40:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ddySAapgFazP; Wed,  4 Sep 2024 09:40:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EED814027A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725442802;
	bh=7W9oltKFXttPL8GJSRJ98yRABp613Ij+tZra8U77GSo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=6BJ1v20U7YROzXyX8PbHjdkDxaMsVy4SldLQfQsMXWD6U6NLr2rytaFLaK/jUMo5l
	 iXNLJ6EmuUrazQAV/aJ+UCl4Coa71ZNgHVYr65rBXZk8wqySfr/zPvpJT1RJ4DMJR+
	 hJ+Az48cy7LmTDJlFziVC89z78PVjPmEtLf7Rq5kNGxFERC7rD+W1TiWUlOkA2vfRS
	 I3lJ+fAhMAnA+QMR1f4G/az/8wghGTb/WPr0e10vD9FlWz3GojY6yylbHKcdTSAsKW
	 ioK4OrrzCbPeOM93NYBN0gLkZpDgZkhDGHzKcdP+C9ePkkF7fsyqNC3GrGTPfy1nbM
	 +t8ln4l6OUI9Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EED814027A;
	Wed,  4 Sep 2024 09:40:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 496E41BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:40:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 34B0140A93
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:40:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lj18Bnb4zWQE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 09:39:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C1C56404C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1C56404C1
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C1C56404C1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:39:58 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-517-oxcLcZgzPCyf0KdeXNAYhA-1; Wed,
 04 Sep 2024 05:39:54 -0400
X-MC-Unique: oxcLcZgzPCyf0KdeXNAYhA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 71D2A195608B; Wed,  4 Sep 2024 09:39:51 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.45.224.188])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 6D00A19560AA; Wed,  4 Sep 2024 09:39:44 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>,
 Marcin Szycik <marcin.szycik@intel.com>,
 Timothy Miskell <timothy.miskell@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Dave Ertman <david.m.ertman@intel.com>,
 Daniel Machon <daniel.machon@microchip.com>
Date: Wed,  4 Sep 2024 11:39:22 +0200
Message-ID: <20240904093924.24368-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725442797;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=7W9oltKFXttPL8GJSRJ98yRABp613Ij+tZra8U77GSo=;
 b=Ibhhi6aX35fsDVIWJlRDwRY/l/SZDGVTj1o1qk9lz3TJtnv2y9+tE2BtahL1TvpNSnZ9SN
 9kNtOhvWc1i3/Py2lRnMDwLgL14zUdilTXbKWI1ubcPSm4GwH3JLokgaRlnJPlwUD1DzSd
 1FifXc3bYISGnkR0AGba1voB1jIQlOE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Ibhhi6aX
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix VSI lists confusion
 when adding VLANs
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The description of function ice_find_vsi_list_entry says:
  Search VSI list map with VSI count 1

However, since the blamed commit (see Fixes below), the function no
longer checks vsi_count. This causes a problem in ice_add_vlan_internal,
where the decision to share VSI lists between filter rules relies on the
vsi_count of the found existing VSI list being 1.

The reproducing steps:
1. Have a PF and two VFs.
   There will be a filter rule for VLAN 0, referring to a VSI list
   containing VSIs: 0 (PF), 2 (VF#0), 3 (VF#1).
2. Add VLAN 1234 to VF#0.
   ice will make the wrong decision to share the VSI list with the new
   rule. The wrong behavior may not be immediately apparent, but it can
   be observed with debug prints.
3. Add VLAN 1234 to VF#1.
   ice will unshare the VSI list for the VLAN 1234 rule. Due to the
   earlier bad decision, the newly created VSI list will contain
   VSIs 0 (PF) and 3 (VF#1), instead of expected 2 (VF#0) and 3 (VF#1).
4. Try pinging a network peer over the VLAN interface on VF#0.
   This fails.

Reproducer script at:
https://gitlab.com/mschmidt2/repro/-/blob/master/RHEL-46814/test-vlan-vsi-list-confusion.sh
Commented debug trace:
https://gitlab.com/mschmidt2/repro/-/blob/master/RHEL-46814/ice-vlan-vsi-lists-debug.txt
Patch adding the debug prints:
https://gitlab.com/mschmidt2/linux/-/commit/f8a8814623944a45091a77c6094c40bfe726bfdb
(Unsafe, by the way. Lacks rule_lock when dumping in ice_remove_vlan.)

Michal Swiatkowski added to the explanation that the bug is caused by
reusing a VSI list created for VLAN 0. All created VFs' VSIs are added
to VLAN 0 filter. When a non-zero VLAN is created on a VF which is already
in VLAN 0 (normal case), the VSI list from VLAN 0 is reused.
It leads to a problem because all VFs (VSIs to be specific) that are
subscribed to VLAN 0 will now receive a new VLAN tag traffic. This is
one bug, another is the bug described above. Removing filters from
one VF will remove VLAN filter from the previous VF. It happens a VF is
reset. Example:
- creation of 3 VFs
- we have VSI list (used for VLAN 0) [0 (pf), 2 (vf1), 3 (vf2), 4 (vf3)]
- we are adding VLAN 100 on VF1, we are reusing the previous list
  because 2 is there
- VLAN traffic works fine, but VLAN 100 tagged traffic can be received
  on all VSIs from the list (for example broadcast or unicast)
- trust is turning on on VF2, VF2 is resetting, all filters from VF2 are
  removed; the VLAN 100 filter is also removed because 3 is on the list
- VLAN traffic to VF1 isn't working anymore, there is a need to recreate
  VLAN interface to readd VLAN filter

One thing I'm not certain about is the implications for the LAG feature,
which is another caller of ice_find_vsi_list_entry. I don't have a
LAG-capable card at hand to test.

Fixes: 23ccae5ce15f ("ice: changes to the interface with the HW and FW for SRIOV_VF+LAG")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
---
v2: Corrected the Fixes commit ID (the ID in v1 was of a centos-stream-9
    backport accidentally).
    Added the extended explanation from Michal Swiatkowski.
    Fixed some typos.
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index fe8847184cb1..4e6e7af962bd 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -3264,7 +3264,7 @@ ice_find_vsi_list_entry(struct ice_hw *hw, u8 recp_id, u16 vsi_handle,
 
 	list_head = &sw->recp_list[recp_id].filt_rules;
 	list_for_each_entry(list_itr, list_head, list_entry) {
-		if (list_itr->vsi_list_info) {
+		if (list_itr->vsi_count == 1 && list_itr->vsi_list_info) {
 			map_info = list_itr->vsi_list_info;
 			if (test_bit(vsi_handle, map_info->vsi_map)) {
 				*vsi_list_id = map_info->vsi_list_id;
-- 
2.45.2

