Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A714F95DA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Apr 2022 14:33:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E13D60AD5;
	Fri,  8 Apr 2022 12:33:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gr1wCBcdE51P; Fri,  8 Apr 2022 12:33:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04EA2607C0;
	Fri,  8 Apr 2022 12:33:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 730811BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 12:33:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6F46E84393
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 12:33:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DPYcwK-2pvbt for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Apr 2022 12:33:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 22FDC84392
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 12:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649421203; x=1680957203;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XRRTHcC3vib6U8pYsXScDVRRZguO7b/FSE9Su8vSm/M=;
 b=E6xFt5HHWsmdzSNjav+7vfLxy8KeKkzDCtwzYTLgbDImT3j8EcSsnFRZ
 vdODmIjeLs39allXXCsSYe/0s4oHC0qcCSJ8Q+Z9lnscKt1c0H7ssMPaj
 No3j9LO2RY0IUf5CEjYHp3z5WhrlWlyunwKUVfkzFKRGY4Ndc+mIFA1Us
 2AgQ9MlwHZ33ilYXHLSZNLUeRoJv/nlSo6RudhIgwOYlumXZ1buC5MTpn
 yBGsaBK50/UIWRbUgLSqqJZBWdr4OhRQsqTA3dZ1ipXpOgeo+fCf2+3XZ
 xj4riZyqndBoeXZzNPszlzVNuTdxdUYZ3UTv1MBoVOZIzr1dMHtjqbzt5 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="286571733"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="286571733"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 05:33:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="525361097"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga006.jf.intel.com with ESMTP; 08 Apr 2022 05:33:19 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 238CXHcv017340; Fri, 8 Apr 2022 13:33:17 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri,  8 Apr 2022 14:31:20 +0200
Message-Id: <20220408123120.1829671-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220404161509.3489310-1-alexandr.lobakin@intel.com>
References: <20220404161509.3489310-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ice: arfs: fix use-after-free
 when freeing @rx_cpu_rmap
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
Cc: Ivan Vecera <ivecera@redhat.com>, intel-wired-lan@lists.osuosl.org,
 Brett Creeley <brett@pensando.io>, linux-kernel@vger.kernel.org,
 Madhu Chittim <madhu.chittim@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin <alexandr.lobakin@intel.com>
Date: Mon, 4 Apr 2022 18:15:09 +0200

> The CI testing bots triggered the following splat:
> 
> [  718.203054] BUG: KASAN: use-after-free in free_irq_cpu_rmap+0x53/0x80
> [  718.206349] Read of size 4 at addr ffff8881bd127e00 by task sh/20834
> [  718.212852] CPU: 28 PID: 20834 Comm: sh Kdump: loaded Tainted: G S      W IOE     5.17.0-rc8_nextqueue-devqueue-02643-g23f3121aca93 #1
> [  718.219695] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0012.070720200218 07/07/2020
> [  718.223418] Call Trace:
> [  718.227139]
> [  718.230783]  dump_stack_lvl+0x33/0x42
> [  718.234431]  print_address_description.constprop.9+0x21/0x170
> [  718.238177]  ? free_irq_cpu_rmap+0x53/0x80
> [  718.241885]  ? free_irq_cpu_rmap+0x53/0x80
> [  718.245539]  kasan_report.cold.18+0x7f/0x11b
> [  718.249197]  ? free_irq_cpu_rmap+0x53/0x80
> [  718.252852]  free_irq_cpu_rmap+0x53/0x80
> [  718.256471]  ice_free_cpu_rx_rmap.part.11+0x37/0x50 [ice]
> [  718.260174]  ice_remove_arfs+0x5f/0x70 [ice]
> [  718.263810]  ice_rebuild_arfs+0x3b/0x70 [ice]
> [  718.267419]  ice_rebuild+0x39c/0xb60 [ice]
> [  718.270974]  ? asm_sysvec_apic_timer_interrupt+0x12/0x20
> [  718.274472]  ? ice_init_phy_user_cfg+0x360/0x360 [ice]
> [  718.278033]  ? delay_tsc+0x4a/0xb0
> [  718.281513]  ? preempt_count_sub+0x14/0xc0
> [  718.284984]  ? delay_tsc+0x8f/0xb0
> [  718.288463]  ice_do_reset+0x92/0xf0 [ice]
> [  718.292014]  ice_pci_err_resume+0x91/0xf0 [ice]
> [  718.295561]  pci_reset_function+0x53/0x80
> <...>
> [  718.393035] Allocated by task 690:
> [  718.433497] Freed by task 20834:
> [  718.495688] Last potentially related work creation:
> [  718.568966] The buggy address belongs to the object at ffff8881bd127e00
>                 which belongs to the cache kmalloc-96 of size 96
> [  718.574085] The buggy address is located 0 bytes inside of
>                 96-byte region [ffff8881bd127e00, ffff8881bd127e60)
> [  718.579265] The buggy address belongs to the page:
> [  718.598905] Memory state around the buggy address:
> [  718.601809]  ffff8881bd127d00: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc
> [  718.604796]  ffff8881bd127d80: 00 00 00 00 00 00 00 00 00 00 fc fc fc fc fc fc
> [  718.607794] >ffff8881bd127e00: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc
> [  718.610811]                    ^
> [  718.613819]  ffff8881bd127e80: 00 00 00 00 00 00 00 00 00 00 00 00 fc fc fc fc
> [  718.617107]  ffff8881bd127f00: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc
> 
> This is due to that free_irq_cpu_rmap() is always being called
> *after* (devm_)free_irq() and thus it tries to work with IRQ descs
> already freed. For example, on device reset the driver frees the
> rmap right before allocating a new one (the splat above).
> Make rmap creation and freeing function symmetrical with
> {request,free}_irq() calls i.e. do that on ifup/ifdown instead
> of device probe/remove/resume. These operations can be performed
> independently from the actual device aRFS configuration.
> Also, make sure ice_vsi_free_irq() clears IRQ affinity notifiers
> only when aRFS is disabled -- otherwise, CPU rmap sets and clears
> its own and they must not be touched manually.
> 
> Fixes: 28bf26724fdb0 ("ice: Implement aRFS")
> Co-developed-by: Ivan Vecera <ivecera@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>

Bah, forgot to mention in v2 that it's an urgent fix. Tony, are you
okay with posting it to netdev or allowing it to go directly to
-net? It's been tested by Ivan already (I had also asked Konrad, but
he hasn't replied yet).

> ---
> From v1[0]:
>  - remove the obsolete `!vsi->arfs_fltr_list` check from
>    ice_free_cpu_rx_rmap() leading to a leak and trace (Ivan).
> 
> [0] https://lore.kernel.org/netdev/20220404132832.1936529-1-alexandr.lobakin@intel.com
> ---

--- 8< ---

> -- 
> 2.35.1

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
