Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A74D2996F80
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 17:17:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C34C40698;
	Wed,  9 Oct 2024 15:17:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qWnyfKJeEUF3; Wed,  9 Oct 2024 15:17:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D72AC40722
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728487047;
	bh=KHelbyKfe1KqMaDYz5U30dKCVRor9a2oE/nrHDPVLLU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ULSNhiVUJ1fy5mwB2YNUOIeXLyVp6c//Wp5agZ/Q7IhSpVBZhl9++hK2U14YZ4erj
	 YcyVWqyrEtQbN/GBEaVzMdiHnYs/+LKLofYpVdAf1fVFJ6lm+QIES1kOyCk373SmcW
	 p+G/tVoEBdLqn+5kuehtOxlCnEpprnddV0FOd5EnUIIhlo2ZUilQQeJjfldXBr2jRx
	 Ud2VCXjPhL3hdeSDRKwSl3H7bvY8T2j66QqPrK1z1v4s6pckOZg+zLq+hCtpmbokOq
	 RkjKTafkssVHdGB5ol8E+shW/1M8JdxHnq3rMUogIzxFcctVpd8m5/ajtMA2Pz5Q3L
	 qwnVuCKBM9LjQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D72AC40722;
	Wed,  9 Oct 2024 15:17:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3AD4E1BF396
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 15:17:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 29405605C3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 15:17:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 022I6UciaJdS for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 15:17:24 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F3B2D6062D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3B2D6062D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F3B2D6062D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 15:17:23 +0000 (UTC)
X-CSE-ConnectionGUID: 67dC4M/YSdmOeDKuTKuQxA==
X-CSE-MsgGUID: sezcTZ+SRpCJSkIkKRxyEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27272940"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="27272940"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 08:17:23 -0700
X-CSE-ConnectionGUID: aB/ciRaIQ8+reIotUQ5HEg==
X-CSE-MsgGUID: 46SAPP+gQheSoruV2rrMsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="76744430"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa007.jf.intel.com with ESMTP; 09 Oct 2024 08:17:21 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 5BEA32FC5B;
 Wed,  9 Oct 2024 16:17:19 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Oct 2024 17:18:35 +0200
Message-ID: <20241009151835.5971-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728487044; x=1760023044;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dmk/apIGRnSDL5xBcTWe4gL2fhF7Op6JH5roKVU2tkk=;
 b=a4HXVmiph4/dWFoyre6N9mqlawPMTVBUQp2TE8s9WwunfgfYa6FUu9ga
 jU88NT02sf+mlV5o8Y8F0TBD4R4epSOsHZlaq/1VngPvBwx6xhB8xKTz3
 L2wZ1tIoa32kmxD/q2Y0lP/hIY126bnDOMYDqCzXyj1FF0QHZlsNlqS9w
 MR1pV8d940VVbX2mrjtm7PJqpgUKT5AwK17fgPcP/T2rUR/z5gpbChZNr
 BPxrD3u3t3raXhmLt83Lua1korwsnRTGi2yqqfk5B59oFHAOSEahRYtFW
 2VlqL7fHhsLUbQb7lWQhAUmhIrj6GTGw3Nqa+Nn6tjGonmcmFwDB1WTj2
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a4HXVmip
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix use after free during
 unload with ports in bridge
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
Cc: netdev@vger.kernel.org, Paul Menzel <pmenzel@molgen.mpg.de>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Unloading the ice driver while switchdev port representors are added to
a bridge can lead to kernel panic. Reproducer:

  modprobe ice

  devlink dev eswitch set $PF1_PCI mode switchdev

  ip link add $BR type bridge
  ip link set $BR up

  echo 2 > /sys/class/net/$PF1/device/sriov_numvfs
  sleep 2

  ip link set $PF1 master $BR
  ip link set $VF1_PR master $BR
  ip link set $VF2_PR master $BR
  ip link set $PF1 up
  ip link set $VF1_PR up
  ip link set $VF2_PR up
  ip link set $VF1 up

  rmmod irdma ice

When unloading the driver, ice_eswitch_detach() is eventually called as
part of VF freeing. First, it removes a port representor from xarray,
then unregister_netdev() is called (via repr->ops.rem()), finally
representor is deallocated. The problem comes from the bridge doing its
own deinit at the same time. unregister_netdev() triggers a notifier
chain, resulting in ice_eswitch_br_port_deinit() being called. It should
set repr->br_port = NULL, but this does not happen since repr has
already been removed from xarray and is not found. Regardless, it
finishes up deallocating br_port. At this point, repr is still not freed
and an fdb event can happen, in which ice_eswitch_br_fdb_event_work()
takes repr->br_port and tries to use it, which causes a panic (use after
free).

Note that this only happens with 2 or more port representors added to
the bridge, since with only one representor port, the bridge deinit is
slightly different (ice_eswitch_br_port_deinit() is called via
ice_eswitch_br_ports_flush(), not ice_eswitch_br_port_unlink()).

Trace:
  Oops: general protection fault, probably for non-canonical address 0xf129010fd1a93284: 0000 [#1] PREEMPT SMP KASAN NOPTI
  KASAN: maybe wild-memory-access in range [0x8948287e8d499420-0x8948287e8d499427]
  (...)
  Workqueue: ice_bridge_wq ice_eswitch_br_fdb_event_work [ice]
  RIP: 0010:__rht_bucket_nested+0xb4/0x180
  (...)
  Call Trace:
   (...)
   ice_eswitch_br_fdb_find+0x3fa/0x550 [ice]
   ? __pfx_ice_eswitch_br_fdb_find+0x10/0x10 [ice]
   ice_eswitch_br_fdb_event_work+0x2de/0x1e60 [ice]
   ? __schedule+0xf60/0x5210
   ? mutex_lock+0x91/0xe0
   ? __pfx_ice_eswitch_br_fdb_event_work+0x10/0x10 [ice]
   ? ice_eswitch_br_update_work+0x1f4/0x310 [ice]
   (...)

A workaround is available: brctl setageing $BR 0, which stops the bridge
from adding fdb entries altogether.

Change the order of operations in ice_eswitch_detach(): move the call to
unregister_netdev() before removing repr from xarray. This way
repr->br_port will be correctly set to NULL in
ice_eswitch_br_port_deinit(), preventing a panic.

Fixes: fff292b47ac1 ("ice: add VF representors one by one")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v2: Added trace excerpt
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index c0b3e70a7ea3..fb527434b58b 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -552,13 +552,14 @@ int ice_eswitch_attach_sf(struct ice_pf *pf, struct ice_dynamic_port *sf)
 static void ice_eswitch_detach(struct ice_pf *pf, struct ice_repr *repr)
 {
 	ice_eswitch_stop_reprs(pf);
+	repr->ops.rem(repr);
+
 	xa_erase(&pf->eswitch.reprs, repr->id);
 
 	if (xa_empty(&pf->eswitch.reprs))
 		ice_eswitch_disable_switchdev(pf);
 
 	ice_eswitch_release_repr(pf, repr);
-	repr->ops.rem(repr);
 	ice_repr_destroy(repr);
 
 	if (xa_empty(&pf->eswitch.reprs)) {
-- 
2.45.0

