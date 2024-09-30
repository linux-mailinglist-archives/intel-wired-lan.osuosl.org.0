Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFE498A08D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 13:28:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB1AF80ECF;
	Mon, 30 Sep 2024 11:28:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3PRh3bF4Dh42; Mon, 30 Sep 2024 11:28:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B225680ED0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727695721;
	bh=9JFHu5GN4m1ZIa7hFOr/S0cR7gAkAibwxtDh3yT9bKQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3huNmFc2SW8J3B5ghqUmnLUYHjJIfyTIb0FpWnHcau/wzYqmOeIue/NoqslFmY8vM
	 Urfg8tCQa05SzEv8HxUOAgfqO/hONIttQCoqmk5Y0psdtyIRAJrnFKJfDu9Mua2gcI
	 kZgPXq950FvU8dxb/WVX4GAsP3i0oZs5peEZ5BvZi8VAysl6iammi1eGZhPJciJLcv
	 HLufjW7NCte38zWea9eWP6/JSns7HmHP8U1F9YP9gKNvqmCGApMkMm+gYZ1RKW1c0S
	 6ybd18x2Z4aLyXJ0HSVjhQpZawkHruTyFDgMD3CEFOAsv14dA4Vba9KmlMd8dJDJkm
	 czGrKXPr4sq+A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B225680ED0;
	Mon, 30 Sep 2024 11:28:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A6C91BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 11:28:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 11FF34023C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 11:28:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NGV7e0WCBnzC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 11:28:39 +0000 (UTC)
X-Greylist: delayed 429 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 30 Sep 2024 11:28:38 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2C9B240230
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C9B240230
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.134.164.83;
 helo=mail2-relais-roc.national.inria.fr; envelope-from=julia.lawall@inria.fr;
 receiver=<UNKNOWN> 
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2C9B240230
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 11:28:37 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.11,165,1725314400"; d="scan'208";a="185956867"
Received: from i80.paris.inria.fr (HELO i80.paris.inria.fr.) ([128.93.90.48])
 by mail2-relais-roc.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Sep 2024 13:21:25 +0200
From: Julia Lawall <Julia.Lawall@inria.fr>
To: linux-gpio@vger.kernel.org
Date: Mon, 30 Sep 2024 13:20:46 +0200
Message-Id: <20240930112121.95324-1-Julia.Lawall@inria.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inria.fr; s=dc;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9JFHu5GN4m1ZIa7hFOr/S0cR7gAkAibwxtDh3yT9bKQ=;
 b=N5Crvn6Kq6KpHSPNN73aCiDy+RvsqlM0pHtSseTwUaXi/R+AUcNhRU/s
 cjlHPMFgIZOJllRTItDSSyRCzG1SoWucsK69kp3cC+hyWG6w77VR7U5lk
 50vSZgwZFWWTGfQ7neSTgSg1frKowyQAjCduh7p7sY9rw2OBXSFMSw4B2
 4=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=inria.fr
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256
 header.s=dc header.b=N5Crvn6K
X-Mailman-Original-Authentication-Results: mail2-relais-roc.national.inria.fr;
 dkim=none (message not signed)
 header.i=none; spf=SoftFail smtp.mailfrom=Julia.Lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
Subject: [Intel-wired-lan] [PATCH 00/35] Reorganize kerneldoc parameter names
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
Cc: nvdimm@lists.linux.dev, alsa-devel@alsa-project.org,
 Jan Kara <jack@suse.cz>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Neil Brown <neilb@suse.de>, linux-pci@vger.kernel.org,
 kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org,
 amd-gfx@lists.freedesktop.org, linux-leds@vger.kernel.org,
 drbd-dev@lists.linbit.com,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, dccp@vger.kernel.org,
 Dai Ngo <Dai.Ngo@oracle.com>, Christophe Leroy <christophe.leroy@csgroup.eu>,
 iommu@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 Robin Murphy <robin.murphy@arm.com>, Olga Kornievskaia <okorniev@redhat.com>,
 linux-arm-msm@vger.kernel.org, Naveen N Rao <naveen@kernel.org>,
 linux-sound@vger.kernel.org, maple-tree@lists.infradead.org,
 Tom Talpey <tom@talpey.com>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Nicholas Piggin <npiggin@gmail.com>, linux-omap@vger.kernel.org,
 Zhihao Cheng <chengzhihao1@huawei.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 audit@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-fsdevel@vger.kernel.org, Sanyog Kale <sanyog.r.kale@intel.com>,
 linux-trace-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Reorganize kerneldoc parameter names to match the parameter
order in the function header.

The misordered cases were identified using the following
Coccinelle semantic patch:

// <smpl>
@initialize:ocaml@
@@

let parse_doc l =
  let pieces = List.map String.trim (String.split_on_char '*' l) in
  let l = String.concat " " pieces in
  match String.split_on_char ':' l with
    x::xs -> x
  | _ -> ""

let params ps =
  List.rev
    (List.fold_left
       (fun prev (pm,_) ->
	 let ty =
	   String.trim(Pretty_print_c.string_of_fullType pm.Ast_c.p_type) in
	 if ty = "void" && pm.Ast_c.p_namei = None
	 then prev
	 else
	   let name =
	     match pm.Ast_c.p_namei with
	       Some name -> name
	     | None -> failwith "function parameter has no name" in
	   (String.trim (Pretty_print_c.string_of_name name),ty)::prev)
       [] ps)

@r@
comments c;
identifier fn;
position p;
parameter list ps;
type T;
@@

T@c fn@p(ps) { ... }

@script:ocaml@
p << r.p;
c << r.c;
(_,ps) << r.ps;
@@

let isdoc c ps =
  List.length ps > 1 &&
  (let c = String.trim c in
  String.length c > 3 && String.sub c 0 3 = "/**" && String.get c 3 != '*') in

let subset l1 l2 =
  List.for_all (fun x -> List.mem x l2) l1 in

let (cb,cm,ca) = List.hd c in
match List.rev cb with
  c::_ when isdoc c ps ->
    let pieces = String.split_on_char '@' c in
    (match pieces with
      _::tl ->
	let d_names = List.map parse_doc tl in
	(* check parameters *)
	let p_names = List.map fst (params ps) in
	if d_names <> [] && not(d_names = p_names)
	then
	  begin
	    if List.sort compare d_names = List.sort compare p_names
	    then Coccilib.print_main "out of order" p
	    else if subset d_names p_names
	    then Coccilib.print_main "doc is missing a parameter" p
	    else if subset d_names p_names
	    then Coccilib.print_main "doc has an extra parameter" p
	  end
    | _ -> ())
| _ -> ()
// </smpl>

---

 arch/arm/mach-omap2/prm2xxx_3xxx.c              |    1 -
 arch/powerpc/platforms/ps3/interrupt.c          |    2 +-
 arch/powerpc/platforms/ps3/repository.c         |    2 +-
 drivers/base/firmware_loader/main.c             |    2 +-
 drivers/comedi/drivers/comedi_8254.c            |    2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c          |    2 +-
 drivers/gpu/drm/amd/display/dc/core/dc.c        |    2 +-
 drivers/gpu/drm/drm_gem_framebuffer_helper.c    |    3 +--
 drivers/gpu/drm/drm_gpuvm.c                     |    2 +-
 drivers/gpu/drm/radeon/radeon_ib.c              |    2 +-
 drivers/iommu/iommu.c                           |    2 +-
 drivers/leds/leds-gpio-register.c               |    2 +-
 drivers/mfd/atmel-smc.c                         |    4 ++--
 drivers/misc/mei/bus.c                          |    2 +-
 drivers/mtd/ubi/eba.c                           |    2 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c  |    2 +-
 drivers/net/ethernet/intel/e1000/e1000_hw.c     |    2 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c   |    7 +++----
 drivers/net/ethernet/intel/ice/ice_common.c     |    2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_common.c |    2 +-
 drivers/nvdimm/dimm_devs.c                      |    2 +-
 drivers/pci/hotplug/pci_hotplug_core.c          |    2 +-
 drivers/pinctrl/pinmux.c                        |    2 +-
 drivers/slimbus/messaging.c                     |    2 +-
 drivers/soc/qcom/qmi_interface.c                |    2 +-
 drivers/soundwire/stream.c                      |    2 +-
 drivers/usb/gadget/config.c                     |    4 ++--
 fs/char_dev.c                                   |    2 +-
 fs/dcache.c                                     |    4 ++--
 fs/seq_file.c                                   |    2 +-
 kernel/audit.c                                  |    2 +-
 kernel/resource.c                               |    2 +-
 kernel/sysctl.c                                 |    1 -
 kernel/trace/ring_buffer.c                      |    2 +-
 lib/lru_cache.c                                 |    2 +-
 lib/maple_tree.c                                |    2 +-
 mm/mmu_notifier.c                               |    2 +-
 net/dccp/feat.c                                 |    2 +-
 net/mac80211/mesh_hwmp.c                        |    6 +++---
 net/mac80211/mesh_pathtbl.c                     |   10 +++++-----
 net/socket.c                                    |    2 +-
 net/sunrpc/xprt.c                               |    2 +-
 net/tipc/link.c                                 |   14 +++++++-------
 net/tipc/msg.c                                  |    2 +-
 sound/pci/hda/hda_codec.c                       |    2 +-
 45 files changed, 60 insertions(+), 64 deletions(-)
