Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AF08C24C7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 14:25:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4FD8040B72;
	Fri, 10 May 2024 12:25:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KxAJq9y0h0YM; Fri, 10 May 2024 12:25:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3FA1242A4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715343939;
	bh=ZfJo5a15j/jbUSVNrvAZAP19JqAPlls7pAw79UXvW9Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a4QOoI5SsA4FmQGksWoQ8O58L4YZnLdCKsz7cMUkb4K4w24UTX1iBG2lVOy0r4zGP
	 hqTAMEv/+UtOqspcFH4Twc5NTaMUbRehnA1HwJOGtGQdKQAy8ZOjboM0uPH4JCGVYC
	 gI8P3pHQE4stsYRNfiTaB3PPbGilE8KpzzSCI85ZfVnzn1jvObWnqbkc9jlLbxjzx3
	 1Ghho+Tm6g6OtwSkq1Fpex1+G+FqbMBR/z6pEjaqmLeuQQQVTpQTpPKQ7eTheRiOjj
	 yMsxsidh+/b9puBEwO86NudNa3QOWtcLrgV0GrEpQCHBJ1u2hCQ/BRRjt0ZmepBKcW
	 UmTiWj5K3ctKQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3FA1242A4F;
	Fri, 10 May 2024 12:25:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D2B41BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 12:25:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 32BA584387
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 12:25:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1PFy0KviVI4x for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 12:25:36 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C537F8435A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C537F8435A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C537F8435A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 12:25:35 +0000 (UTC)
X-CSE-ConnectionGUID: aJ6oPWrORqmko7QZE5J67Q==
X-CSE-MsgGUID: H8KLiORRT++xS/8y1LsJUg==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="22727898"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="22727898"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 05:25:35 -0700
X-CSE-ConnectionGUID: ozavnAW1Rg2nU4/Jp2i3Rw==
X-CSE-MsgGUID: 8sxR48oGT4igDeuoRSIU7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="67079159"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 05:25:32 -0700
Date: Fri, 10 May 2024 14:25:00 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <Zj4SHGvuxZWQEYuN@mev-dev>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
 <20240507114516.9765-4-michal.swiatkowski@linux.intel.com>
 <ZjyuTA_zMXzZSa7L@nanopsycho.orion> <Zj3JLw/mT/MZJu9G@mev-dev>
 <Zj3_fVh2QD7awpWN@nanopsycho.orion>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zj3_fVh2QD7awpWN@nanopsycho.orion>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715343936; x=1746879936;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=BXzKstGzxPqlbeNoIsIzZuUUYPUJ1HgsI3/6KyW9ISs=;
 b=FRufVSVylAA/nTQVBo8S15J2o/CSk/RhOsG6MiINfbUnvnALOUy9Cwzy
 3mAC/2PGLoSXnBZYVooE/3uX2XdcAb2eqZMqqE3AESsn+ARR0a0cHi50u
 1xKxIcpE8x7t7cUKtB/TgORNvlnFIIcrs1Yb/tvcMFXQCmx9mDqv7hkhq
 PXgvJuiaGrEIYjToDrt+d6N17XhPX0NfG0uT2qPjCeQsHbRKOZX7dCOkj
 J659kyof9g2X5QPPad98x4XreqWowLikmAmjYNPgtzf2662RXcFT2Ul4n
 h+u5iUsUn0vuwHt4Wv6WzTYCkhSZZme40N5dv0/E5vmHl2fj7tqiPpFAO
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FRufVSVy
Subject: Re: [Intel-wired-lan] [iwl-next v1 03/14] ice: add basic devlink
 subfunctions support
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 10, 2024 at 01:05:33PM +0200, Jiri Pirko wrote:
> Fri, May 10, 2024 at 09:13:51AM CEST, michal.swiatkowski@linux.intel.com wrote:
> >On Thu, May 09, 2024 at 01:06:52PM +0200, Jiri Pirko wrote:
> >> Tue, May 07, 2024 at 01:45:04PM CEST, michal.swiatkowski@linux.intel.com wrote:
> >> >From: Piotr Raczynski <piotr.raczynski@intel.com>
> >> >
> >> >Implement devlink port handlers responsible for ethernet type devlink
> >> >subfunctions. Create subfunction devlink port and setup all resources
> >> >needed for a subfunction netdev to operate. Configure new VSI for each
> >> >new subfunction, initialize and configure interrupts and Tx/Rx resources.
> >> >Set correct MAC filters and create new netdev.
> >> >
> >> >For now, subfunction is limited to only one Tx/Rx queue pair.
> >> >
> >> >Only allocate new subfunction VSI with devlink port new command.
> >> >This makes sure that real resources are configured only when a new
> >> >subfunction gets activated. Allocate and free subfunction MSIX
> >> 
> >> Interesting. You talk about actitation, yet you don't implement it here.
> >> 
> >
> >I will rephrase it. I meant that new VSI needs to be created even before
> >any activation or configuration.
> >
> >> 
> >> 
> >> >interrupt vectors using new API calls with pci_msix_alloc_irq_at
> >> >and pci_msix_free_irq.
> >> >
> >> >Support both automatic and manual subfunction numbers. If no subfunction
> >> >number is provided, use xa_alloc to pick a number automatically. This
> >> >will find the first free index and use that as the number. This reduces
> >> >burden on users in the simple case where a specific number is not
> >> >required. It may also be slightly faster to check that a number exists
> >> >since xarray lookup should be faster than a linear scan of the dyn_ports
> >> >xarray.
> >> >
> >> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >> >Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
> >> >Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> >> >Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> >> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >> >---
> >> > .../net/ethernet/intel/ice/devlink/devlink.c  |   3 +
> >> > .../ethernet/intel/ice/devlink/devlink_port.c | 357 ++++++++++++++++++
> >> > .../ethernet/intel/ice/devlink/devlink_port.h |  33 ++
> >> > drivers/net/ethernet/intel/ice/ice.h          |   4 +
> >> > drivers/net/ethernet/intel/ice/ice_lib.c      |   5 +-
> >> > drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +
> >> > drivers/net/ethernet/intel/ice/ice_main.c     |   9 +-
> >> > 7 files changed, 410 insertions(+), 3 deletions(-)
> >> >
> >> >diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> >> >index 10073342e4f0..3fb3a7e828a4 100644
> >> >--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> >> >+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> >> >@@ -6,6 +6,7 @@
> >> > #include "ice.h"
> >> > #include "ice_lib.h"
> >> > #include "devlink.h"
> >> >+#include "devlink_port.h"
> >> > #include "ice_eswitch.h"
> >> > #include "ice_fw_update.h"
> >> > #include "ice_dcb_lib.h"
> >> >@@ -1277,6 +1278,8 @@ static const struct devlink_ops ice_devlink_ops = {
> >> > 
> >> > 	.rate_leaf_parent_set = ice_devlink_set_parent,
> >> > 	.rate_node_parent_set = ice_devlink_set_parent,
> >> >+
> >> >+	.port_new = ice_devlink_port_new,
> >> > };
> >> > 
> >> >+
> >
> >[...]
> >
> >> >+/**
> >> >+ * ice_devlink_port_fn_hw_addr_set - devlink handler for mac address set
> >> >+ * @port: pointer to devlink port
> >> >+ * @hw_addr: hw address to set
> >> >+ * @hw_addr_len: hw address length
> >> >+ * @extack: extack for reporting error messages
> >> >+ *
> >> >+ * Sets mac address for the port, verifies arguments and copies address
> >> >+ * to the subfunction structure.
> >> >+ *
> >> >+ * Return: zero on success or an error code on failure.
> >> >+ */
> >> >+static int
> >> >+ice_devlink_port_fn_hw_addr_set(struct devlink_port *port, const u8 *hw_addr,
> >> >+				int hw_addr_len,
> >> >+				struct netlink_ext_ack *extack)
> >> >+{
> >> >+	struct ice_dynamic_port *dyn_port;
> >> >+
> >> >+	dyn_port = ice_devlink_port_to_dyn(port);
> >> >+
> >> >+	if (hw_addr_len != ETH_ALEN || !is_valid_ether_addr(hw_addr)) {
> >> >+		NL_SET_ERR_MSG_MOD(extack, "Invalid ethernet address");
> >> >+		return -EADDRNOTAVAIL;
> >> >+	}
> >> >+
> >> >+	ether_addr_copy(dyn_port->hw_addr, hw_addr);
> >> 
> >> How does this work? You copy the address to the internal structure, but
> >> where you update the HW?
> >>
> >
> >When the basic MAC filter is added in HW.
> 
> When is that. My point is, user can all this function at any time, and
> when he calls it, he expect it's applied right away. In case it can't be
> for example applied on activated SF, you should block the request.
> 
> 

Good point, I will block the request in this case. The filter is added
during VSI configuration, in this case during SF activation.

> >
> >> 
> >> >+
> >> >+	return 0;
> >> >+}
> >
> >[...]
> >
> >> > 
> >> >@@ -5383,6 +5389,7 @@ static void ice_remove(struct pci_dev *pdev)
> >> > 		ice_remove_arfs(pf);
> >> > 
> >> > 	devl_lock(priv_to_devlink(pf));
> >> >+	ice_dealloc_all_dynamic_ports(pf);
> >> > 	ice_deinit_devlink(pf);
> >> > 
> >> > 	ice_unload(pf);
> >> >@@ -6677,7 +6684,7 @@ static int ice_up_complete(struct ice_vsi *vsi)
> >> > 
> >> > 	if (vsi->port_info &&
> >> > 	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
> >> >-	    vsi->netdev && vsi->type == ICE_VSI_PF) {
> >> >+	    ((vsi->netdev && vsi->type == ICE_VSI_PF))) {
> >> 
> >> I think this is some leftover, remove.
> >>
> >
> >Yeah, thanks, will remove it.
> >
> >> 
> >> > 		ice_print_link_msg(vsi, true);
> >> > 		netif_tx_start_all_queues(vsi->netdev);
> >> > 		netif_carrier_on(vsi->netdev);
> >> >-- 
> >> >2.42.0
> >> >
> >> >
