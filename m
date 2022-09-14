Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 556BE5B8F1C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Sep 2022 21:04:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB26440C90;
	Wed, 14 Sep 2022 19:04:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB26440C90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663182242;
	bh=6ntfMpkG6MrLwrC/SsbOdGzTWmjZqj6lD9r9yy3o77k=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P6vRSauEHNVvJyE03nuseWa02bM2SZ6wFvx6wR48dxWPNxSvpWhEsOjQN18TcY943
	 XlDA1npSHGc4Ag9hGbbFmQD+TJtTvZautanDH471mUAm0rkqm/fAcpNRyudPGY+gYV
	 ppPbagHW7aBcOnlUmqPqTQJj9GZKKEvHZw+etENIKlPd5/Rg1x8OxeVlH4BgwCDuuU
	 ewEt+TYVYbHtP5YzjnRYMEZ0AKWmzMu4nEI4yNO23XvydZc6kTyi6A9q6/rzWzHgY6
	 49rM70TkUyeoE6UYKk303inA1D1IkhGbotiBWMexPvnob4xcWs0SFUFeI4DpBT/ljc
	 eFjbja1Z7jGUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6S3llG53LCVf; Wed, 14 Sep 2022 19:04:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 487C640C8C;
	Wed, 14 Sep 2022 19:04:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 487C640C8C
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7E1FF1BF33C
 for <intel-wired-lan@osuosl.org>; Wed, 14 Sep 2022 19:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 56AC160BA1
 for <intel-wired-lan@osuosl.org>; Wed, 14 Sep 2022 19:03:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56AC160BA1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id by_mgPPV3Atv for <intel-wired-lan@osuosl.org>;
 Wed, 14 Sep 2022 19:03:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFFD6607FE
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BFFD6607FE
 for <intel-wired-lan@osuosl.org>; Wed, 14 Sep 2022 19:03:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="324775567"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="324775567"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 12:03:52 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="568127082"
Received: from guoying1-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.109.148])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 12:03:52 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
In-Reply-To: <20220914144942.22700-1-muhammad.husaini.zulkifli@intel.com>
References: <20220914144942.22700-1-muhammad.husaini.zulkifli@intel.com>
Date: Wed, 14 Sep 2022 12:03:51 -0700
Message-ID: <87a6714w2w.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663182233; x=1694718233;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=99yjYtjOKasraJO+qSjpZQewL1rRgyOjVuI+lP0Pipo=;
 b=PcOBfcP70Jlla7Il0j5yNXrPWXrNpGlr3B2MeydkMrZiCODzjfF03COn
 2VAcbg94ssvklKc66CAOjiVzo1x1N9kRysRVDp3mxkvN79/UVrhEJExUn
 IdrFwfcxqoS2A/AKzhIiLe51APBxrToY19e0GAIi/fic5Q3zFxxfn1+Yq
 UaE7yalJWr3GOMYYhsz6kOT1QTB3D/vKsr7dp7wG6BbhvgM65mm+MqG5H
 EeFDFKzHZSOXfrd4YCnp0PJ4Vm8BgwMMOOMcyhkgDdRW4gvWAjLfKzgO0
 Uv3288vMiv5DWcq5dqIfssNFNtgsvBn1My6V0zCtN10P3U1riOsjVag4c
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PcOBfcP7
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Fix kernel NULL pointer
 dereference
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
Cc: muhammad.husaini.zulkifli@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Husaini,

Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com> writes:

> This patch fix the null pointer dereference when dereference the pointer
> that is expected to be valid but is NULL, typically will cause kernel
> crash as below:
>

This part of the message only repeats that you found NULL dereference
related crash, which is already clear from the splat below.

Can you give more details about how you manage to crash? What is
schedule that you tried to use, that kind of thing. Perhaps the problem
is somewhere else and we are only hiding the problem.

Also please CC the author (Kurt, I think) of the patch you are fixing.

>  45.369206] BUG: kernel NULL pointer dereference, address: 0000000000000004
> [   45.376153] #PF: supervisor read access in kernel mode
> [   45.381281] #PF: error_code(0x0000) - not-present page
> [   45.386414] PGD 0 P4D 0
> [   45.388955] Oops: 0000 [#1] PREEMPT SMP NOPTI
> [   45.393311] CPU: 1 PID: 3290 Comm: tc Tainted: G     U  W          6.0.0-rc2-intel-ese-standard-lts+ #3
> [   45.402668] Hardware name: Intel Corporation Tiger Lake Client Platform/TigerLake U DDR4 SODIMM RVP, BIOS TGLIFUI1.R00.4204.A00.2105270302 05/27/2021
> [   45.415996] RIP: 0010:igc_setup_tc+0x2d4/0x602 [igc]
> [   45.420971] Code: 48 c7 c1 f0 a0 6b c0 48 c7 c7 10 c5 6b c0 48 89 54 24 08 e8 58 b6 cb cc 48 8b 54 24 08 41 b8 e7 16 00 00 48 c7 c1 f0 a0 6b c0 <41> 23 57 04 44 89 ee 48 c7 c7 d8 cf 6b c0 e8 33 b6 cb cc 44 8b 0c
> [   45.439655] RSP: 0018:ffffac2840f83850 EFLAGS: 00010246
> [   45.444875] RAX: 0000000000000025 RBX: 0000000000000000 RCX: ffffffffc06ba0f0
> [   45.451987] RDX: 0000000000000001 RSI: ffffffff8dc44719 RDI: 00000000ffffffff
> [   45.459106] RBP: ffffac2840f838d0 R08: 00000000000016e7 R09: ffffac2840f83700
> [   45.466224] R10: 0000000000000001 R11: 0000000000000001 R12: ffff9fc947765708
> [   45.473334] R13: 0000000000000000 R14: ffff9fc947765730 R15: 0000000000000000
> [   45.480450] FS:  00007f5139f4d740(0000) GS:ffff9fd090a80000(0000) knlGS:0000000000000000
> [   45.488515] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   45.494254] CR2: 0000000000000004 CR3: 0000000106588006 CR4: 0000000000770ee0
> [   45.501369] PKRU: 55555554
> [   45.504086] Call Trace:
> [   45.506542]  <TASK>
> [   45.508657]  taprio_change+0x4ef/0xba0 [sch_taprio]
> [   45.513537]  qdisc_create.isra.0+0x13b/0x510
> [   45.517806]  tc_modify_qdisc+0x121/0x7e0
> [   45.521728]  rtnetlink_rcv_msg+0x141/0x3c0
> [   45.525827]  ? _copy_to_iter+0x1ba/0x5a0
> [   45.529753]  ? rtnl_calcit.isra.0+0x140/0x140
> [   45.534109]  netlink_rcv_skb+0x4e/0x100
> [   45.537949]  netlink_unicast+0x197/0x240
> [   45.541869]  netlink_sendmsg+0x246/0x4a0
> [   45.545799]  sock_sendmsg+0x5f/0x70
> [   45.549293]  ____sys_sendmsg+0x20f/0x280
> [   45.553214]  ? copy_msghdr_from_user+0x72/0xb0
> [   45.557655]  ___sys_sendmsg+0x7c/0xc0
> [   45.561319]  ? __handle_mm_fault+0x937/0x1380
> [   45.565677]  __sys_sendmsg+0x59/0xa0
> [   45.569256]  do_syscall_64+0x40/0x90
> [   45.572836]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> [   45.577882] RIP: 0033:0x7f513a077707
> [   45.581461] Code: 0e 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b9 0f 1f 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 b8 2e 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 51 c3 48 83 ec 28 89 54 24 1c 48 89 74 24 10
> [   45.600143] RSP: 002b:00007ffc640095e8 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
> [   45.607693] RAX: ffffffffffffffda RBX: 000000006321873a RCX: 00007f513a077707
> [   45.614812] RDX: 0000000000000000 RSI: 00007ffc64009650 RDI: 0000000000000003
> [   45.621925] RBP: 0000000000000000 R08: 0000000000000001 R09: 0000000000000000
> [   45.629043] R10: 000055de7f26c960 R11: 0000000000000246 R12: 0000000000000001
> [   45.636161] R13: 000055de7ecfa476 R14: 000055de7ecfa48a R15: 000055de7ed21f40
> [   45.643273]  </TASK>
> [   45.645468] Modules linked in: sch_taprio bnep 8021q bluetooth ecdh_generic ecc ecryptfs nfsd sch_fq_codel uio uhid i915 x86_pkg_temp_thermal kvm_intel kvm hid_sensor_accel_3d hid_sensor_magn_3d hid_sensor_als hid_sensor_incl_3d hid_sensor_gyro_3d hid_sensor_trigger hid_sensor_iio_common dwmac_intel hid_sensor_custom hid_sensor_hub stmmac e1000e mei_wdt intel_ishtp_hid mei_hdcp dwc3 igc ax88179_178a mei_me atkbd usbnet udc_core libps2 pcs_xpcs vivaldi_fmap mii spi_pxa2xx_platform phylink mei tpm_crb irqbypass dw_dmac intel_ish_ipc ptp tpm_tis dw_dmac_core tpm_tis_core wdat_wdt pps_core igen6_edac i2c_i801 intel_ishtp intel_rapl_msr pcspkr i2c_smbus tpm edac_core thermal i8042 parport_pc intel_pmc_core dwc3_pci parport video drm_buddy ttm drm_display_helper fuse configfs snd_hda_intel snd_intel_dspcfg snd_intel_sdw_acpi snd_hda_codec snd_hda_core snd_pcm snd_timer snd soundcore
> [   45.722706] CR2: 0000000000000004
> [   45.726025] ---[ end trace 0000000000000000 ]---
>
> Fixes: a5fd39464a40 ("igc: Lift TAPRIO schedule restriction")
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index bf6c461e1a2a..128fabee4ace 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -5872,7 +5872,7 @@ static bool validate_schedule(struct igc_adapter *adapter,
>  			 * gate stays open. Check for it.
>  			 */
>  			if (queue_uses[i] > 1 &&
> -			    !(prev->gate_mask & BIT(i)))
> +			    prev && !(prev->gate_mask & BIT(i)))
>  				return false;
>  		}
>  	}
> -- 
> 2.17.1
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
