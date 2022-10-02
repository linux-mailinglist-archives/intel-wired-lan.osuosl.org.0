Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2D15F2278
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Oct 2022 12:00:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB6BB40E46;
	Sun,  2 Oct 2022 10:00:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB6BB40E46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664704841;
	bh=hEgp8ky5bKwmjTjtoJo+n/R197PTZGT93UF/4yTHsXc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s1NCHcdID732UcsdlPjR9BEjxlldhKqQE1UUhyH6Twx7R8X8G7HHTxI4ETBeaTwnM
	 T652U4ty0zRpDOT9EQ1BcWAjTYDRk9PX9h1h697gQFRB7rjlx9zwOBEheApqUQmvai
	 fPMD/ENVKf16O9tT75G27FmzjSnDETENEtOd3NvjDcjB+wMtGSGO0aMvPu+FNSKwAl
	 80xC1JHyFwe+ffwbkt4lOEAwaLgBV8vfjZvGZBmB5oW9SpxW6wcCKMsrTDvffKJ9L0
	 cAs3CYsY1ARWNLC2JRR52I1vU1MnTMYQ/m2gI7Ma6zyQmytfuCJhyJuDE1kPUnRE20
	 i1W5eHc4+yQDA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JM9leGV3Mrbe; Sun,  2 Oct 2022 10:00:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DD0140A01;
	Sun,  2 Oct 2022 10:00:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DD0140A01
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C7EE71BF283
 for <intel-wired-lan@osuosl.org>; Sun,  2 Oct 2022 10:00:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A254A60B8D
 for <intel-wired-lan@osuosl.org>; Sun,  2 Oct 2022 10:00:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A254A60B8D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tnK_i76HVNe7 for <intel-wired-lan@osuosl.org>;
 Sun,  2 Oct 2022 10:00:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB13F60B12
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB13F60B12
 for <intel-wired-lan@osuosl.org>; Sun,  2 Oct 2022 10:00:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="301183801"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="301183801"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2022 03:00:32 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="618441386"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="618441386"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.5])
 ([10.13.12.5])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2022 03:00:31 -0700
Message-ID: <6a7e7ea7-27d8-aa78-4646-5c46058c9326@linux.intel.com>
Date: Sun, 2 Oct 2022 13:00:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 intel-wired-lan@osuosl.org
References: <20220914144942.22700-1-muhammad.husaini.zulkifli@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220914144942.22700-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664704832; x=1696240832;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=+J13VLCkq1A+pxu84cRb2HUZ2HecShBcMNIBnWuGWFk=;
 b=HuupzNm4lGS/JrmK+3hHLFGiQ0KV3u1lZQp5ov+vSsJD5+9KcLnTR7Ze
 sxWfxEwty/erfGNCxqxRjV9puyL5Z9yjRqOIldFEDqpZN49m3YU+rQcoh
 L69k5L6SQqnxj9w5iQEaN6mPu383lMGj8MyjK84aAj9MvJ5zw6r4rzbJD
 W5ZWumoRqB+3fJN55tMVypuMruFOnBADtEuucQGvU4MsUpb2H4wGCp1Hn
 KYv1HZU6I23p+1QjtRSqUuEq3fmJkQP+8+Go5qpGXgUmVQYRq3tqGc8Qf
 tUQQ68K9dvX/ciOXSbRwYz5Hek6Zc8v/Cdm4rKE1V4MH7piqKwxCRnxq0
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HuupzNm4
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/14/2022 17:49, Muhammad Husaini Zulkifli wrote:
> This patch fix the null pointer dereference when dereference the pointer
> that is expected to be valid but is NULL, typically will cause kernel
> crash as below:
> 
>   45.369206] BUG: kernel NULL pointer dereference, address: 0000000000000004
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
>   drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
