Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C9A96841C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Sep 2024 12:07:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D3EAB405FC;
	Mon,  2 Sep 2024 10:07:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3VEh6GOI6fbw; Mon,  2 Sep 2024 10:07:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D41A405F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725271639;
	bh=VadJH2ms1q8EaPkqqjbRvlwSJ3NWMZzkQQ/DtM+kzTs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8nd/5Mu3sYQ97k6z8QWYHDFNfWyVtgkllDuTi/XnkQuidimt2kadRF95HGjQp4TKR
	 GLxGhNZCE1wdbFvjSoggE2lDYqUjcze0DHb/vMv9yk4kLhqC7zGC5yW8ea+tBc42GC
	 urpncHUMBxSEMa4apFbXMrxijj48QY8VbEMUe4vP/N9HVFUXcStcD0hTam1ApHdI+a
	 vmQDUm22WY9X7NaldbjnjvncimR0FhhuHgX2e5gBgjGTnFLPndr5NgPiIJ10THq03Z
	 G3hPTElpdXSB4xddq67JyxEmpbCUZZdmVsZca0XCg2RJY2qAs036+ghQntNcZCdAQ+
	 hP3PAiMUFKR5w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D41A405F5;
	Mon,  2 Sep 2024 10:07:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7AE3A1BF279
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 10:07:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 669D281080
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 10:07:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lgjgPj5t_tEL for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Sep 2024 10:07:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 606FE81067
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 606FE81067
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 606FE81067
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 10:07:17 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-306-Um-XiOR0NliIVndgzN-xrw-1; Mon,
 02 Sep 2024 06:07:13 -0400
X-MC-Unique: Um-XiOR0NliIVndgzN-xrw-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id E9BFF1954B00; Mon,  2 Sep 2024 10:07:10 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.45.224.191])
 by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 044FA19560A3; Mon,  2 Sep 2024 10:07:04 +0000 (UTC)
From: Michal Schmidt <mschmidt@redhat.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>,
 Marcin Szycik <marcin.szycik@intel.com>,
 Timothy Miskell <timothy.miskell@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Petr Oros <poros@redhat.com>,
 Daniel Machon <daniel.machon@microchip.com>,
 Dave Ertman <david.m.ertman@intel.com>
Date: Mon,  2 Sep 2024 12:06:52 +0200
Message-ID: <20240902100652.269398-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725271636;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=VadJH2ms1q8EaPkqqjbRvlwSJ3NWMZzkQQ/DtM+kzTs=;
 b=ZI+ZAvJJhCXIGQgVlDcrmOX4lHh+P9nRluhXq5eXcqaiTyzfdLPFkRun+szh5tQY0g1MTE
 911cTFAmk9+BKYPRc11h5lX6rqvs46CynhCrMf5/Y+Cn42qX6GdTOq9E9rQ6ICHhbbh7q7
 BMjnlrINxBpuN8wDGm67MEA9NltkVzc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ZI+ZAvJJ
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix VSI lists confusion when
 adding VLANs
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
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
   There will be a filter rule for VLAN 0, refering to a VSI list
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

One thing I'm not certain about is the implications for the LAG feature,
which is another caller of ice_find_vsi_list_entry. I don't have a
LAG-capable card at hand to test.

Fixes: 25746e4f06a5 ("ice: changes to the interface with the HW and FW for SRIOV_VF+LAG")
Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
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

