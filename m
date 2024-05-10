Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B28D8C22BC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 13:05:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 28A4042389;
	Fri, 10 May 2024 11:05:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JAmz_BaYCG3F; Fri, 10 May 2024 11:05:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF80B42392
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715339145;
	bh=yIzMd3pmerCGCWxaOFrSvqqI66QCicZGgwtZuHgdqfA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q3Lr5b59I9xjSqFLQgBLuCcjZGetJXOiusdgJzp97KBze5SOQ3BuExP27wbSuKVou
	 mlkMPJdGm7t673tmxch5dao+iM2aoe3QeA2LnOym2KBJyBBClV225X12k18E18sKCH
	 Pn9FRJj62MTR8X41pDmTeooMVTGAnmSLigQTJOtAkvZ0vhQZvdq3kirue8dozSItxM
	 KFd4JWAYd43whwCArvFfRG1SWZoFI3RDQxb09K2lQFd0dt8SFhx6KUCLNuT+LgHp0O
	 kXo0TGhwrYu86S9kP1yfUBQsA3t9FAIL+78viD3L7xa2qIPotKih3XtkPYpXvgB4mb
	 6euo1Z1gqoZ2w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF80B42392;
	Fri, 10 May 2024 11:05:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 18E111BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 11:05:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 032E74238F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 11:05:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S91uPrBTQGFF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 11:05:41 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::330; helo=mail-wm1-x330.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BA24342389
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA24342389
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA24342389
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 11:05:38 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-41fc53252ceso13530515e9.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 04:05:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715339137; x=1715943937;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yIzMd3pmerCGCWxaOFrSvqqI66QCicZGgwtZuHgdqfA=;
 b=N4kB3vbXoCn+rXaiNUOFASbXaNrwYFELFBuWDBuDvt3AVpgkqU4rdDutqcnUfUQBPI
 jXiIgwfAnSKFyrWFtyscrk/sIuVTtXUv4sRLx92CSDtZCYCrNz+oGCmWqaG4fP/nhWAh
 i5aJL22LmUA4rvLF71J41lxi3wsu9K3QtnbpJGYL1UObOb1TGoOr01itqwDdIrhUgmRb
 8M6Yv+h8v0FNUcPcwscoxA3inpiERGsGWjnErdic2OmbJNDut8p7mwVnwGn2vB6nq31p
 gjS+Pef5O3Bh6nS/leL9Eevm/m9658vgKulsyjhjOJYUee5hE0fzksNmHbObaeMSnied
 HI5Q==
X-Gm-Message-State: AOJu0YwLjPCSt5iaRls/XZEXYXf9PO/YQ5m1DU8HMysoJ+ziQM8bXvsT
 6pisxlMUDG3NVKmK02W10WIu9v+DxOgFZLnqFyQ7ckzYzKC1KW8wKjuVVGqHRyI=
X-Google-Smtp-Source: AGHT+IGAvltDozpPCODHuDAohCnPruKVr3r91Fm6AKklrkFBI3T8y9GyCvQrTCwwbNIa/xKEYrxYHg==
X-Received: by 2002:a5d:618d:0:b0:34c:9393:4c29 with SMTP id
 ffacd0b85a97d-3504a737a07mr1720129f8f.21.1715339136535; 
 Fri, 10 May 2024 04:05:36 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3502b79bd09sm4244662f8f.14.2024.05.10.04.05.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 May 2024 04:05:35 -0700 (PDT)
Date: Fri, 10 May 2024 13:05:33 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Zj3_fVh2QD7awpWN@nanopsycho.orion>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
 <20240507114516.9765-4-michal.swiatkowski@linux.intel.com>
 <ZjyuTA_zMXzZSa7L@nanopsycho.orion> <Zj3JLw/mT/MZJu9G@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zj3JLw/mT/MZJu9G@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1715339137; x=1715943937;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=yIzMd3pmerCGCWxaOFrSvqqI66QCicZGgwtZuHgdqfA=;
 b=QVfqlpDkobS3lniEoPNEKoteM/vBsQP/JX61Umrpbfi48xRDSWga8tqr5Bu9ePl3YS
 IdSOlzw+yzHWLzcDuyy42p8ZWdyakGyfF39LEFg3OhiN+wU3f3IPlO21wwcFXQEqP0LM
 DXhagkQ1Msqd16CN+gGrrWhgjxCKZp349m4Z2ai1uor7FmwYJ2JdeMPpV2DMO+QXIfkK
 Y7Nm/PcL2ZONK05yaEnVyCET16VaKD7Rp2WEpJd1iKxBNBHNzoM8bOEStIK9cqQ0nBlP
 n8UfRuwvwiiFFgjWVdyv8O6oMhUkLNB+JauMIbTRUU6vkBHz1Y3n+8fsflGZDucuUO5A
 LW4A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=QVfqlpDk
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

Fri, May 10, 2024 at 09:13:51AM CEST, michal.swiatkowski@linux.intel.com wrote:
>On Thu, May 09, 2024 at 01:06:52PM +0200, Jiri Pirko wrote:
>> Tue, May 07, 2024 at 01:45:04PM CEST, michal.swiatkowski@linux.intel.com wrote:
>> >From: Piotr Raczynski <piotr.raczynski@intel.com>
>> >
>> >Implement devlink port handlers responsible for ethernet type devlink
>> >subfunctions. Create subfunction devlink port and setup all resources
>> >needed for a subfunction netdev to operate. Configure new VSI for each
>> >new subfunction, initialize and configure interrupts and Tx/Rx resources.
>> >Set correct MAC filters and create new netdev.
>> >
>> >For now, subfunction is limited to only one Tx/Rx queue pair.
>> >
>> >Only allocate new subfunction VSI with devlink port new command.
>> >This makes sure that real resources are configured only when a new
>> >subfunction gets activated. Allocate and free subfunction MSIX
>> 
>> Interesting. You talk about actitation, yet you don't implement it here.
>> 
>
>I will rephrase it. I meant that new VSI needs to be created even before
>any activation or configuration.
>
>> 
>> 
>> >interrupt vectors using new API calls with pci_msix_alloc_irq_at
>> >and pci_msix_free_irq.
>> >
>> >Support both automatic and manual subfunction numbers. If no subfunction
>> >number is provided, use xa_alloc to pick a number automatically. This
>> >will find the first free index and use that as the number. This reduces
>> >burden on users in the simple case where a specific number is not
>> >required. It may also be slightly faster to check that a number exists
>> >since xarray lookup should be faster than a linear scan of the dyn_ports
>> >xarray.
>> >
>> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> >Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
>> >Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> >Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
>> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> >---
>> > .../net/ethernet/intel/ice/devlink/devlink.c  |   3 +
>> > .../ethernet/intel/ice/devlink/devlink_port.c | 357 ++++++++++++++++++
>> > .../ethernet/intel/ice/devlink/devlink_port.h |  33 ++
>> > drivers/net/ethernet/intel/ice/ice.h          |   4 +
>> > drivers/net/ethernet/intel/ice/ice_lib.c      |   5 +-
>> > drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +
>> > drivers/net/ethernet/intel/ice/ice_main.c     |   9 +-
>> > 7 files changed, 410 insertions(+), 3 deletions(-)
>> >
>> >diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> >index 10073342e4f0..3fb3a7e828a4 100644
>> >--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> >+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>> >@@ -6,6 +6,7 @@
>> > #include "ice.h"
>> > #include "ice_lib.h"
>> > #include "devlink.h"
>> >+#include "devlink_port.h"
>> > #include "ice_eswitch.h"
>> > #include "ice_fw_update.h"
>> > #include "ice_dcb_lib.h"
>> >@@ -1277,6 +1278,8 @@ static const struct devlink_ops ice_devlink_ops = {
>> > 
>> > 	.rate_leaf_parent_set = ice_devlink_set_parent,
>> > 	.rate_node_parent_set = ice_devlink_set_parent,
>> >+
>> >+	.port_new = ice_devlink_port_new,
>> > };
>> > 
>> >+
>
>[...]
>
>> >+/**
>> >+ * ice_devlink_port_fn_hw_addr_set - devlink handler for mac address set
>> >+ * @port: pointer to devlink port
>> >+ * @hw_addr: hw address to set
>> >+ * @hw_addr_len: hw address length
>> >+ * @extack: extack for reporting error messages
>> >+ *
>> >+ * Sets mac address for the port, verifies arguments and copies address
>> >+ * to the subfunction structure.
>> >+ *
>> >+ * Return: zero on success or an error code on failure.
>> >+ */
>> >+static int
>> >+ice_devlink_port_fn_hw_addr_set(struct devlink_port *port, const u8 *hw_addr,
>> >+				int hw_addr_len,
>> >+				struct netlink_ext_ack *extack)
>> >+{
>> >+	struct ice_dynamic_port *dyn_port;
>> >+
>> >+	dyn_port = ice_devlink_port_to_dyn(port);
>> >+
>> >+	if (hw_addr_len != ETH_ALEN || !is_valid_ether_addr(hw_addr)) {
>> >+		NL_SET_ERR_MSG_MOD(extack, "Invalid ethernet address");
>> >+		return -EADDRNOTAVAIL;
>> >+	}
>> >+
>> >+	ether_addr_copy(dyn_port->hw_addr, hw_addr);
>> 
>> How does this work? You copy the address to the internal structure, but
>> where you update the HW?
>>
>
>When the basic MAC filter is added in HW.

When is that. My point is, user can all this function at any time, and
when he calls it, he expect it's applied right away. In case it can't be
for example applied on activated SF, you should block the request.


>
>> 
>> >+
>> >+	return 0;
>> >+}
>
>[...]
>
>> > 
>> >@@ -5383,6 +5389,7 @@ static void ice_remove(struct pci_dev *pdev)
>> > 		ice_remove_arfs(pf);
>> > 
>> > 	devl_lock(priv_to_devlink(pf));
>> >+	ice_dealloc_all_dynamic_ports(pf);
>> > 	ice_deinit_devlink(pf);
>> > 
>> > 	ice_unload(pf);
>> >@@ -6677,7 +6684,7 @@ static int ice_up_complete(struct ice_vsi *vsi)
>> > 
>> > 	if (vsi->port_info &&
>> > 	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
>> >-	    vsi->netdev && vsi->type == ICE_VSI_PF) {
>> >+	    ((vsi->netdev && vsi->type == ICE_VSI_PF))) {
>> 
>> I think this is some leftover, remove.
>>
>
>Yeah, thanks, will remove it.
>
>> 
>> > 		ice_print_link_msg(vsi, true);
>> > 		netif_tx_start_all_queues(vsi->netdev);
>> > 		netif_carrier_on(vsi->netdev);
>> >-- 
>> >2.42.0
>> >
>> >
