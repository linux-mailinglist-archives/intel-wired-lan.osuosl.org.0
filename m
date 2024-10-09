Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C048A996A79
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 14:46:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 815C5404D7;
	Wed,  9 Oct 2024 12:46:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nG6JTmevtPdB; Wed,  9 Oct 2024 12:46:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAE6F40352
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728477976;
	bh=CiM4E7Sgx+HxTPaQyLCnUhhQx86jx608QNcALjG4ztM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=cS/cYfS54AmMy6+f+1dXR0xesMzgxLhFZwdOpZjg+RU7YLRQVqqLqPaGJ01Hn9fVZ
	 aJM726QgkmEWn+CxYSwSBlSFGlr7OUpnCkZAJmM7lRcZ/7pXvlDqncLSUPPPev5CU/
	 kmN/pQFGXkDfPXsXdgoWkpsh1yn9Q0rR5vqtq4EjL++22hsnoH7kZP7RWF03PnKC+r
	 hFz9j1sXw8rJqigqGbkhe0Z0u0/ibEP2FtAzoOObCOgfdlFuqhllK3/X0umLh/UdL6
	 RsbfKTEmjCEfCycaEBHtinXE6ODxl6o+O8a8VRdOzo2bjqPs+D8vXzLmDF/eR8aEqA
	 qd4yx7Aob5v/Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAE6F40352;
	Wed,  9 Oct 2024 12:46:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EDA241BF476
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 12:46:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E8CDA6074F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 12:46:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BHBJdaukcTxg for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 12:46:13 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 93DBF60740
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93DBF60740
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 93DBF60740
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 12:46:13 +0000 (UTC)
X-CSE-ConnectionGUID: liurCWMLQ5a0bsRcDRf/sQ==
X-CSE-MsgGUID: 5YQ0xQCnR/2/X24pcyIZSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="45241187"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="45241187"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 05:46:13 -0700
X-CSE-ConnectionGUID: QC3WmvJjQRCsXM3siUSuFw==
X-CSE-MsgGUID: gGEiIZb0St+khCqQIFHqsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="77060050"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 09 Oct 2024 05:46:12 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 03A1E28791;
 Wed,  9 Oct 2024 13:46:10 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Oct 2024 14:49:13 +0200
Message-ID: <20241009124912.9774-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728477973; x=1760013973;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FJ82jUYIaMAoHpd7HZHgd374WFsVyl57GTMYJb7O/tw=;
 b=iq6gn0lRUDjWZlDaEgCxsJyvTz5jmshWmXzESnXDJGlor6KTRD1UaCHq
 FHp080qbd20uNZkqqbwfMoxorg6rkB9Um/YKOyOsuvUUihW7r05UimvMa
 kKBEKB8UhS+GD9We4cvcrg3wkMCb6O5mTw+c/6zryjJeCoiI6IkON15Hy
 6+Jsg8d4YU1QdH+KN1yC/83nVkDIUjyRxCjk91HodtUFNYrMzT4h3EX8L
 5nqiJ0kFk1DjG+GpAc2qJy82eEh+L8aPyHVeByQ1Uc0S6Z19YO8PS8N2+
 CikuX9aDOrRzFxQHEWu36nhZnyaQYkH1txzq8V0LuXZVrn8OvAbWIyEQJ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iq6gn0lR
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix use after free during
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
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

A workaround is available: brctl setageing $BR 0, which stops the bridge
from adding fdb entries altogether.

Change the order of operations in ice_eswitch_detach(): move the call to
unregister_netdev() before removing repr from xarray. This way
repr->br_port will be correctly set to NULL in
ice_eswitch_br_port_deinit(), preventing a panic.

Fixes: fff292b47ac1 ("ice: add VF representors one by one")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
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

