Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DADA51C1DC0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 May 2020 21:18:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 86AE5203F8;
	Fri,  1 May 2020 19:18:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p3emh0nwRVEV; Fri,  1 May 2020 19:18:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6A7782001E;
	Fri,  1 May 2020 19:18:40 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2B1B41BF3BA
 for <intel-wired-lan@osuosl.org>; Fri,  1 May 2020 19:18:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2340088120
 for <intel-wired-lan@osuosl.org>; Fri,  1 May 2020 19:18:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m+V6-O7dlDU9 for <intel-wired-lan@osuosl.org>;
 Fri,  1 May 2020 19:18:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9F88288367
 for <intel-wired-lan@osuosl.org>; Fri,  1 May 2020 19:18:34 +0000 (UTC)
IronPort-SDR: YeASCYpXiorAXjFC5wyxY9wKFJbIMhkP//3NDrhLJJ04FXtz2/yCLtN3qdZQIAy4WLjQVIExWl
 NOLTBarYvPlA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 12:18:34 -0700
IronPort-SDR: 39CBwClAjZH4gBjgf+ahJN12WsGXnDBrb4cnGA0KugKMIn80/2h02wNNTlYjzcz7as13fd+SB2
 nKJiqgUKmisw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,340,1583222400"; d="scan'208";a="337692829"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga001.jf.intel.com with ESMTP; 01 May 2020 12:18:33 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 12:18:33 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX159.amr.corp.intel.com (10.22.240.24) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 12:18:33 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.56) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 1 May 2020 12:18:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=anlc/fxXV0D1j5lu60K5UEZ/9/HlZMuScYdgmKo7MNAmkwkBMU2ZF+IXrQiZMW5l11uNkqivBQc7XIN2VEzG8aPuF5JKWxvEgwQP01Hcg76LFDIipXj3oX84KLiaq9vv3sRbB0xzXE8NHpPjtw+Ce2vz4JSHrqXBw0341BIeZmeen+QPmxl4EiJHAYZDmEA6IzMPGMP1YDUyFAawG1HxDS2EnzeLRZ4VI6fAsjYD6k0zabMdE8h5RH9FjOnLA3kQ71E0qxhgUR0ZihSeNRFI0PIcOnDbkBCmGkm81G4Y9CGPzxGVAHVzCSMKSnKlKHgb0Trgvn4xSsghyaqylkzVLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mjhRXo/PYa30ATabDMYDuEHLYQim2R3MnL21odeAeLA=;
 b=bassijQ0Zq4nvCAOVsogzLCruqGWpbNW0+Edddv/GijcZZ604ZE0Snn4B0oHCgehszUeAukjykdWHZZgSs04fltf3AVyRUQQ8sgcATSlcMZt/iay+IJXZY15ihDQvy+E+mEOKBGi7/S/FlHsKvhN//+nnBtf8rj9PXUDJZ/G7ed+Py4/y7v0Ul+r5KDPyN4/q7ylWrIKr5yFhnPpwo6UmsvxxJbFiUlmEZlzDAapLNMU5bobsX6c5R8BobWR5sZNffQ9slxCwwKCpdbxP9kUpm7QNS+uYyYA48bJvIqvDm6tnNgN0hrSPt5n8VWW8SpOszqRaSRXwLyNX4MfAq06Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mjhRXo/PYa30ATabDMYDuEHLYQim2R3MnL21odeAeLA=;
 b=rDAsHCXDx/K19Cd/O3QtZzlB9VGbXiOgpiDBaNkID9DWcia7tqz+/NFA3C8KVaFH31QlNbSRftKovmlM0s5SbgaFkVSxPkS0Flz+j57ruiFhwjZLS7VtRedVCsf96bsIhnaWLdaiwG00ja1PPG6IHX2lAjnmaUcU/I9nZ90ojkE=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3339.namprd11.prod.outlook.com (2603:10b6:5:57::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.21; Fri, 1 May 2020 19:18:30 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 19:18:30 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4] igc: add support to interrupt,
 eeprom, registers and link self-tests
Thread-Index: AQHWC0QREoUAbYHST0SSVE06D42ahaiTvDIA
Date: Fri, 1 May 2020 19:18:30 +0000
Message-ID: <DM6PR11MB2890D9E46875A8F67733CBECBCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200405121604.36654-1-vitaly.lifshits@intel.com>
In-Reply-To: <20200405121604.36654-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7a9f7f91-f20a-4131-37d1-08d7ee046f22
x-ms-traffictypediagnostic: DM6PR11MB3339:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB33391B0C7CFB75648F628A95BCAB0@DM6PR11MB3339.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y4rucsJ6dxhfmutNJCMQGNlvhucGt57M6LgDa0gvFw+OXSznFNssaDlzOAaz/vVsCtuWxtw5/YTbTq1S6vo3IzDrN6njsk38cj7Auv0EpK6NphsCXcre0Yf0HTUZLndJDO8d90sdh2adbJ0hheQzFsEQSkcFbho5rY57zIpU7fizEvYRkKslNrk8xUxcQHBm+P+tIuQNhMPC8WXyqMzsSU1UZpyU680d98ryAmTmR1/lITMzM9jRVrs3snoXmvNx0BS+IHXBwuZlmoE5aQXdfAFMESsih8fEqaYy7lNyU50V8RX0x/HgNJUKYpb5XLiSELmZai+vuKKzsPrsypZVnpBR7RsEZSqrX8zzcg5rwyMOX8cFT4VFv2hSHQjTdey1Cn7cZA1EFJtKMEIf+IzJysnOWoSIq5s1sHOxFTngNxzrhJkYtaVyja2P8GdLg4ap
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(39860400002)(376002)(346002)(136003)(33656002)(30864003)(186003)(478600001)(52536014)(86362001)(7696005)(64756008)(8676002)(8936002)(45080400002)(71200400001)(2906002)(66946007)(66476007)(316002)(110136005)(26005)(53546011)(6506007)(76116006)(9686003)(5660300002)(55016002)(66556008)(66446008)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: IWYokQanoQGWMMQHx5IYu93FBWEcKcLCvDXNG5hES/h/N5nqjpFwxQl+iMe09Q4REhP1a/0iHaa3HCfaLQ3kzmKUBhLfN15dquE1UBT2XLzLdkB5PJDKQwSBaC+bPXhkeT/oePU7H0wi4TNt0gIdlKuemGRTwLxImPV3ZhTRFURKkHR8ubBT3DiLyvCxQQhTvznt4wGJ7I3nd1WsNPVE4Dmu/KOZOnAwu2OVvujJyJVv6wXOl2y2ri+RG1ah/MFPm0uGbiJHN/mW7L1NZ/HD0aDUfw7/hHVTQJcD4xyrhIhM2aOC4PmXhps0+F8ozl35pa++1rYmjMIOfCySHS7WMkvo76XsoIh+JBovpTGrHKhtTnjUxzK5aH4YARPMkOn1Rcnv1f4MDkUHDjrkUABL4MtGpZ7vrMNadlk1YvyaTLxmv0o8YhpGR0mDBzokiC9+b6plBUcVXNN8FZd6VvXS8jz6dazj9lsxuA1jf5Y1PbvEjmZEyjdTR+eWFTheD2CZ2bYr6ClEEehG7Tvy1tYIrzUokF8QMMHX8f3KwnuL2UBCQsQPxIFdwuOzzo52fYQKIYBlJQ+Ac7iP0ngWjeEhgaJvw0PPWuWaeIXenByDEOi7BeI0+Iyz5Z9U5fjRv1Lk5Z1zf9PECp36SGVq6WUjsVq9vlUE4hzGHk6FhWhZ+0L8LFZvZEAZgXyrb/+5WOduDqDtdMw/+GSoW8QFLDjsRmkuLNo8t55YvqY/bpCsVIyexslVu/d5jG2WXQ8p+MhCDF+IqFM7Fo//8bhFf1xuQctlsq7QNhtLYaFaFSt/CtKa9/irYXuaOyigMlBPVbZV
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a9f7f91-f20a-4131-37d1-08d7ee046f22
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 19:18:30.6668 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ohk05Agwi2XNvh5XdL6v/jLdbu4QFEqOu/0VVhXZ9FqndhgT9CtfKQO/JXARkFvd8Z2n0ZW5YQJrqU/Gwbn/7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3339
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v4] igc: add support to interrupt,
 eeprom, registers and link self-tests
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Vitaly
> Lifshits
> Sent: Sunday, April 5, 2020 5:16 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH v4] igc: add support to interrupt, eeprom,
> registers and link self-tests
> 
> Introduced igc_diag.c and igc_diag.h, these files have the
> diagnostics functionality of igc driver. For the time being
> these files are being used by ethtool self-test callbacks.
> Which mean that interrupt, eeprom, registers and link self-tests for
> ethtool were implemented.
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> v2: Fix return 0/1 to boolean value in igc_reg_test function
> v3: Address community comments
> v4: Fix interrupt test and address community comments
> ---
>  drivers/net/ethernet/intel/igc/Makefile      |   2 +-
>  drivers/net/ethernet/intel/igc/igc.h         |   4 +
>  drivers/net/ethernet/intel/igc/igc_diag.c    | 336
> +++++++++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_diag.h    |  37 +++
>  drivers/net/ethernet/intel/igc/igc_ethtool.c |  63 +++++
>  drivers/net/ethernet/intel/igc/igc_main.c    |   4 +-
>  drivers/net/ethernet/intel/igc/igc_regs.h    |   2 +
>  7 files changed, 445 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/igc/igc_diag.c
>  create mode 100644 drivers/net/ethernet/intel/igc/igc_diag.h
> 

This does enable ethtool diags tests to run and at first it looks fine and I was about to give my Tested-by: to when a "watchdog: BUG: soft lockup  - CPU#7 stuck" leading to a call trace popped up on one of my systems that had been running other tests for several days before running a last round of diags...  And then on it showed up on the other system I had been doing most the diags on...  

When it appears the system is still up and the trace gets dumped to /var/log/messages but the system is not responsive to the console or network connections.  The trace repeats every 30 seconds or so.

It's repeatable but generally takes hundreds of iterations to show up.  The soonest I've seen it appear (after creating an ethtool diag / print iteration / repeat script) was around 50 iterations.  The second soonest I counted was 730 iterations and an my last try int took 1713.  It can take hours to appear with nothing more than an endless `ethtool -t $iface` loop, but not days. 

Here's a trace capture (this shows igb and e1000e drivers loaded, but the issue triggers with just igc loaded as well.)
-----------------------------------------------------------------------
May  1 06:36:27 u1322 kernel: igc 0000:01:00.0 eth1: Offline testing starting
May  1 06:36:32 u1322 kernel: igc 0000:01:00.0 eth1: Register testing starting
May  1 06:36:32 u1322 kernel: igc 0000:01:00.0 eth1: EEPROM testing starting
May  1 06:36:32 u1322 kernel: igc 0000:01:00.0 eth1: interrupt testing starting
May  1 06:36:32 u1322 kernel: igc 0000:01:00.0 eth1: testing shared interrupt
May  1 06:37:00 u1322 kernel: watchdog: BUG: soft lockup - CPU#7 stuck for 23s! [ethtool:9111]
May  1 06:37:00 u1322 kernel: Modules linked in: igb igc e1000e rfcomm xt_conntrack nf_conntrack nf_defrag_ipv6 nf_defra
g_ipv4 ipt_REJECT nf_reject_ipv4 nft_counter nft_compat nf_tables nfnetlink tun stp llc cmac bnep iTCO_wdt iTCO_vendor_s
upport wmi_bmof intel_wmi_thunderbolt mxm_wmi x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel kvm snd_hda_codec
_hdmi snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio btusb irqbypass btrtl snd_hda_intel btbcm snd_intel_dspc
fg btintel snd_hda_codec bluetooth snd_hwdep snd_hda_core snd_seq crct10dif_pclmul snd_seq_device crc32_pclmul snd_pcm g
hash_clmulni_intel joydev pl2303 intel_cstate snd_timer intel_uncore snd ecdh_generic mei_me ecc soundcore pcspkr mei i2
c_i801 intel_rapl_perf rfkill sg wmi intel_pmc_core acpi_pad nfsd auth_rpcgss nfs_acl lockd grace sunrpc ip_tables xfs l
ibcrc32c sr_mod sd_mod cdrom t10_pi i915 intel_gtt drm_kms_helper syscopyarea sysfillrect sysimgblt fb_sys_fops cec drm
ahci libahci libata crc32c_intel dca i2c_algo_bit video
May  1 06:37:00 u1322 kernel: [last unloaded: bridge]
May  1 06:37:00 u1322 kernel: CPU: 7 PID: 9111 Comm: ethtool Not tainted 5.7.0-rc2_next-queue_dev-queue_c097661-00758-gc
097661edb2b #31
May  1 06:37:00 u1322 kernel: Hardware name: Gigabyte Technology Co., Ltd. Z370 AORUS Gaming 5/Z370 AORUS Gaming 5-CF, B
IOS F6 04/03/2018
May  1 06:37:00 u1322 kernel: RIP: 0010:__do_softirq+0x76/0x2ec
May  1 06:37:00 u1322 kernel: Code: 81 05 b2 7e e1 5d 00 01 00 00 c7 44 24 20 0a 00 00 00 44 89 74 24 04 48 c7 c0 40 b5
02 00 65 66 c7 00 00 00 fb b8 ff ff ff ff <48> c7 c6 00 51 a0 a2 0f bc 44 24 04 83 c0 01 49 89 f7 89 44 24 08
May  1 06:37:00 u1322 kernel: RSP: 0018:ffffaed900254f70 EFLAGS: 00000286 ORIG_RAX: ffffffffffffff13
May  1 06:37:00 u1322 kernel: RAX: 00000000ffffffff RBX: ffff96bb7e3d8640 RCX: 000000000000001f
May  1 06:37:00 u1322 kernel: RDX: 0000000000000043 RSI: 000000002819aad9 RDI: fffffffa31c219af
May  1 06:37:00 u1322 kernel: RBP: 0000000000000000 R08: 0000000000000002 R09: 000000000002b5c0
May  1 06:37:00 u1322 kernel: R10: 000167b91c1d8b72 R11: 000070ac2bd6bc76 R12: 0000000000000000
May  1 06:37:00 u1322 kernel: R13: 0000000000000000 R14: 0000000000000282 R15: 0000000000000000
May  1 06:37:00 u1322 kernel: FS:  00007ff4033ab740(0000) GS:ffff96bb7e3c0000(0000) knlGS:0000000000000000
May  1 06:37:00 u1322 kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
May  1 06:37:00 u1322 kernel: CR2: 00007fde63363000 CR3: 0000000fe1f1c004 CR4: 00000000003606e0
May  1 06:37:00 u1322 kernel: DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
May  1 06:37:00 u1322 kernel: DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
May  1 06:37:00 u1322 kernel: Call Trace:
May  1 06:37:00 u1322 kernel: <IRQ>
May  1 06:37:00 u1322 kernel: ? hrtimer_interrupt+0x12e/0x220
May  1 06:37:00 u1322 kernel: ? hrtimer_interrupt+0x12e/0x220
May  1 06:37:00 u1322 kernel: irq_exit+0xe3/0xf0
May  1 06:37:00 u1322 kernel: smp_apic_timer_interrupt+0x74/0x130
May  1 06:37:00 u1322 kernel: apic_timer_interrupt+0xf/0x20
May  1 06:37:00 u1322 kernel: </IRQ>
May  1 06:37:00 u1322 kernel: RIP: 0010:igc_rd32+0x16/0x80 [igc]
May  1 06:37:00 u1322 kernel: Code: e1 31 c0 c3 b8 fd ff ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 41 55 89
f0 41 54 55 53 48 8b 57 08 48 01 d0 8b 18 <83> fb ff 74 09 89 d8 5b 5d 41 5c 41 5d c3 85 f6 74 07 8b 02 83 f8
May  1 06:37:00 u1322 kernel: RSP: 0018:ffffaed906a57c48 EFLAGS: 00000282 ORIG_RAX: ffffffffffffff13
May  1 06:37:00 u1322 kernel: RAX: ffffaed901d00008 RBX: 0000000040380681 RCX: 0000000000000000
May  1 06:37:00 u1322 kernel: RDX: ffffaed901d00000 RSI: 0000000000000008 RDI: ffff96ac87278ae0
May  1 06:37:00 u1322 kernel: RBP: 0000000000000001 R08: 0000000000000010 R09: 000000000000fe6d
May  1 06:37:00 u1322 kernel: R10: 000000000000fe6d R11: 000070ac2bc77a36 R12: ffff96ac87278ae0
May  1 06:37:00 u1322 kernel: R13: ffff96bb71f30410 R14: 0000000000000001 R15: ffff96ac87278880
May  1 06:37:00 u1322 kernel: ? usleep_range+0x5c/0x80
May  1 06:37:00 u1322 kernel: igc_intr_test.cold.2+0x11d/0x279 [igc]
May  1 06:37:00 u1322 kernel: igc_ethtool_diag_test+0xe4/0x166 [igc]
May  1 06:37:00 u1322 kernel: dev_ethtool+0x1049/0x2a30
May  1 06:37:00 u1322 kernel: ? inet_ioctl+0x187/0x1d0
May  1 06:37:00 u1322 kernel: ? netdev_run_todo+0x5e/0x290
May  1 06:37:00 u1322 kernel: dev_ioctl+0xb5/0x550
May  1 06:37:00 u1322 kernel: sock_do_ioctl+0xa0/0x140
May  1 06:37:00 u1322 kernel: sock_ioctl+0x22a/0x380
May  1 06:37:00 u1322 kernel: ksys_ioctl+0x86/0xc0
May  1 06:37:00 u1322 kernel: __x64_sys_ioctl+0x16/0x20
May  1 06:37:00 u1322 kernel: do_syscall_64+0x55/0x1d0
May  1 06:37:00 u1322 kernel: entry_SYSCALL_64_after_hwframe+0x44/0xa9
May  1 06:37:00 u1322 kernel: RIP: 0033:0x7ff402b4bb2b
May  1 06:37:00 u1322 kernel: Code: 0f 1e fa 48 8b 05 5d a3 2c 00 64 c7 00 26 00 00 00 48 c7 c0 ff ff ff ff c3 66 0f 1f
44 00 00 f3 0f 1e fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 2d a3 2c 00 f7 d8 64 89 01 48
May  1 06:37:00 u1322 kernel: RSP: 002b:00007ffd006b7ef8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010May  1 06:37:00 u1322 kernel: ? hrtimer_interrupt+0x12e/0x220
May  1 06:37:00 u1322 kernel: irq_exit+0xe3/0xf0
May  1 06:37:00 u1322 kernel: smp_apic_timer_interrupt+0x74/0x130
May  1 06:37:00 u1322 kernel: apic_timer_interrupt+0xf/0x20
May  1 06:37:00 u1322 kernel: </IRQ>
May  1 06:37:00 u1322 kernel: RIP: 0010:igc_rd32+0x16/0x80 [igc]
May  1 06:37:00 u1322 kernel: Code: e1 31 c0 c3 b8 fd ff ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 41 55 89
f0 41 54 55 53 48 8b 57 08 48 01 d0 8b 18 <83> fb ff 74 09 89 d8 5b 5d 41 5c 41 5d c3 85 f6 74 07 8b 02 83 f8
May  1 06:37:00 u1322 kernel: RSP: 0018:ffffaed906a57c48 EFLAGS: 00000282 ORIG_RAX: ffffffffffffff13
May  1 06:37:00 u1322 kernel: RAX: ffffaed901d00008 RBX: 0000000040380681 RCX: 0000000000000000
May  1 06:37:00 u1322 kernel: RDX: ffffaed901d00000 RSI: 0000000000000008 RDI: ffff96ac87278ae0
May  1 06:37:00 u1322 kernel: RBP: 0000000000000001 R08: 0000000000000010 R09: 000000000000fe6d
May  1 06:37:00 u1322 kernel: R10: 000000000000fe6d R11: 000070ac2bc77a36 R12: ffff96ac87278ae0
May  1 06:37:00 u1322 kernel: R13: ffff96bb71f30410 R14: 0000000000000001 R15: ffff96ac87278880
May  1 06:37:00 u1322 kernel: ? usleep_range+0x5c/0x80
May  1 06:37:00 u1322 kernel: igc_intr_test.cold.2+0x11d/0x279 [igc]
May  1 06:37:00 u1322 kernel: igc_ethtool_diag_test+0xe4/0x166 [igc]
May  1 06:37:00 u1322 kernel: dev_ethtool+0x1049/0x2a30
May  1 06:37:00 u1322 kernel: ? inet_ioctl+0x187/0x1d0
May  1 06:37:00 u1322 kernel: ? netdev_run_todo+0x5e/0x290
May  1 06:37:00 u1322 kernel: dev_ioctl+0xb5/0x550
May  1 06:37:00 u1322 kernel: sock_do_ioctl+0xa0/0x140
May  1 06:37:00 u1322 kernel: sock_ioctl+0x22a/0x380
May  1 06:37:00 u1322 kernel: ksys_ioctl+0x86/0xc0
May  1 06:37:00 u1322 kernel: __x64_sys_ioctl+0x16/0x20
May  1 06:37:00 u1322 kernel: do_syscall_64+0x55/0x1d0
May  1 06:37:00 u1322 kernel: entry_SYSCALL_64_after_hwframe+0x44/0xa9
May  1 06:37:00 u1322 kernel: RIP: 0033:0x7ff402b4bb2b
May  1 06:37:00 u1322 kernel: Code: 0f 1e fa 48 8b 05 5d a3 2c 00 64 c7 00 26 00 00 00 48 c7 c0 ff ff ff ff c3 66 0f 1f
44 00 00 f3 0f 1e fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 2d a3 2c 00 f7 d8 64 89 01 48
May  1 06:37:00 u1322 kernel: RSP: 002b:00007ffd006b7ef8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
May  1 06:37:00 u1322 kernel: RAX: ffffffffffffffda RBX: 0000000000a92320 RCX: 00007ff402b4bb2b
May  1 06:37:00 u1322 kernel: RDX: 00007ffd006b7f40 RSI: 0000000000008946 RDI: 0000000000000003
May  1 06:37:00 u1322 kernel: RBP: 0000000000a92260 R08: 0000000000a92320 R09: 0000000000000003
May  1 06:37:00 u1322 kernel: R10: fffffffffffff6e6 R11: 0000000000000246 R12: 00007ffd006b7f30
May  1 06:37:00 u1322 kernel: R13: 0000000000000038 R14: 0000000000000001 R15: 0000000000000000
May  1 06:37:28 u1322 kernel: watchdog: BUG: soft lockup - CPU#7 stuck for 23s! [ethtool:9111]
May  1 06:37:28 u1322 kernel: Modules linked in: igb igc e1000e rfcomm xt_conntrack nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 ipt_REJECT nf_reject_ipv4 nft_counter nft_compat nf_tables nfnetlink tun stp llc cmac bnep iTCO_wdt iTCO_vendor_support wmi_bmof intel_wmi_thunderbolt mxm_wmi x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel kvm snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio btusb irqbypass btrtl snd_hda_intel btbcm snd_intel_dspcfg btintel snd_hda_codec bluetooth snd_hwdep snd_hda_core snd_seq crct10dif_pclmul snd_seq_device crc32_pclmul snd_pcm ghash_clmulni_intel joydev pl2303 intel_cstate snd_timer intel_uncore snd ecdh_generic mei_me ecc soundcore pcspkr mei i2c_i801 intel_rapl_perf rfkill sg wmi intel_pmc_core acpi_pad nfsd auth_rpcgss nfs_acl lockd grace sunrpc ip_tables xfs libcrc32c sr_mod sd_mod cdrom t10_pi i915 intel_gtt drm_kms_helper syscopyarea sysfillrect sysimgblt fb_sys_fops cec drm ahci libahci libata crc32c_int
 el dca i2c_algo_bit video
May  1 06:37:28 u1322 kernel: [last unloaded: bridge]
May  1 06:37:28 u1322 kernel: CPU: 7 PID: 9111 Comm: ethtool Tainted: G             L    5.7.0-rc2_next-queue_dev-queue_c097661-00758-gc097661edb2b #31
May  1 06:37:28 u1322 kernel: Hardware name: Gigabyte Technology Co., Ltd. Z370 AORUS Gaming 5/Z370 AORUS Gaming 5-CF, BIOS F6 04/03/2018
May  1 06:37:28 u1322 kernel: RIP: 0010:__do_softirq+0x76/0x2ec
May  1 06:37:28 u1322 kernel: Code: 81 05 b2 7e e1 5d 00 01 00 00 c7 44 24 20 0a 00 00 00 44 89 74 24 04 48 c7 c0 40 b5 02 00 65 66 c7 00 00 00 fb b8 ff ff ff ff <48> c7 c6 00 51 a0 a2 0f bc 44 24 04 83 c0 01 49 89 f7 89 44 24 08
May  1 06:37:28 u1322 kernel: RSP: 0018:ffffaed900254f70 EFLAGS: 00000286 ORIG_RAX: ffffffffffffff13
May  1 06:37:28 u1322 kernel: RAX: 00000000ffffffff RBX: ffff96bb7e3d8640 RCX: 000000000000001f
May  1 06:37:28 u1322 kernel: RDX: 0000000000000043 RSI: 000000002819aad9 RDI: fffffffa31c219af
May  1 06:37:28 u1322 kernel: RBP: 0000000000000000 R08: 0000000000000002 R09: 000000000002b5c0
May  1 06:37:28 u1322 kernel: R10: 000167b91c1d8b72 R11: 000070ac2bd6bc76 R12: 0000000000000000
May  1 06:37:28 u1322 kernel: R13: 0000000000000000 R14: 0000000000000282 R15: 0000000000000000
May  1 06:37:28 u1322 kernel: FS:  00007ff4033ab740(0000) GS:ffff96bb7e3c0000(0000) knlGS:0000000000000000
May  1 06:37:28 u1322 kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
May  1 06:37:28 u1322 kernel: CR2: 00007fde63363000 CR3: 0000000fe1f1c004 CR4: 00000000003606e0
May  1 06:37:28 u1322 kernel: DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
May  1 06:37:28 u1322 kernel: DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
May  1 06:37:28 u1322 kernel: Call Trace:
May  1 06:37:28 u1322 kernel: <IRQ>
May  1 06:37:28 u1322 kernel: ? hrtimer_interrupt+0x12e/0x220
May  1 06:37:28 u1322 kernel: irq_exit+0xe3/0xf0
May  1 06:37:28 u1322 kernel: smp_apic_timer_interrupt+0x74/0x130
May  1 06:37:28 u1322 kernel: apic_timer_interrupt+0xf/0x20
May  1 06:37:28 u1322 kernel: </IRQ>
May  1 06:37:28 u1322 kernel: RIP: 0010:igc_rd32+0x16/0x80 [igc]
May  1 06:37:28 u1322 kernel: Code: e1 31 c0 c3 b8 fd ff ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 41 55 89 f0 41 54 55 53 48 8b 57 08 48 01 d0 8b 18 <83> fb ff 74 09 89 d8 5b 5d 41 5c 41 5d c3 85 f6 74 07 8b 02 83 f8
May  1 06:37:28 u1322 kernel: RSP: 0018:ffffaed906a57c48 EFLAGS: 00000282 ORIG_RAX: ffffffffffffff13
May  1 06:37:28 u1322 kernel: RAX: ffffaed901d00008 RBX: 0000000040380681 RCX: 0000000000000000
May  1 06:37:28 u1322 kernel: RDX: ffffaed901d00000 RSI: 0000000000000008 RDI: ffff96ac87278ae0
May  1 06:37:28 u1322 kernel: RBP: 0000000000000001 R08: 0000000000000010 R09: 000000000000fe6d
May  1 06:37:28 u1322 kernel: R10: 000000000000fe6d R11: 000070ac2bc77a36 R12: ffff96ac87278ae0
May  1 06:37:28 u1322 kernel: R13: ffff96bb71f30410 R14: 0000000000000001 R15: ffff96ac87278880
May  1 06:37:28 u1322 kernel: ? usleep_range+0x5c/0x80
May  1 06:37:28 u1322 kernel: igc_intr_test.cold.2+0x11d/0x279 [igc]
May  1 06:37:28 u1322 kernel: igc_ethtool_diag_test+0xe4/0x166 [igc]
May  1 06:37:28 u1322 kernel: dev_ethtool+0x1049/0x2a30
May  1 06:37:28 u1322 kernel: ? inet_ioctl+0x187/0x1d0
May  1 06:37:28 u1322 kernel: ? netdev_run_todo+0x5e/0x290
May  1 06:37:28 u1322 kernel: dev_ioctl+0xb5/0x550
May  1 06:37:28 u1322 kernel: sock_do_ioctl+0xa0/0x140
May  1 06:37:28 u1322 kernel: sock_ioctl+0x22a/0x380
May  1 06:37:28 u1322 kernel: ksys_ioctl+0x86/0xc0
May  1 06:37:28 u1322 kernel: __x64_sys_ioctl+0x16/0x20
May  1 06:37:28 u1322 kernel: do_syscall_64+0x55/0x1d0
May  1 06:37:28 u1322 kernel: entry_SYSCALL_64_after_hwframe+0x44/0xa9
May  1 06:37:28 u1322 kernel: RIP: 0033:0x7ff402b4bb2b
May  1 06:37:28 u1322 kernel: Code: 0f 1e fa 48 8b 05 5d a3 2c 00 64 c7 00 26 00 00 00 48 c7 c0 ff ff ff ff c3 66 0f 1f 44 00 00 f3 0f 1e fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 2d a3 2c 00 f7 d8 64 89 01 48
May  1 06:37:28 u1322 kernel: RSP: 002b:00007ffd006b7ef8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
May  1 06:37:28 u1322 kernel: RAX: ffffffffffffffda RBX: 0000000000a92320 RCX: 00007ff402b4bb2b
May  1 06:37:28 u1322 kernel: RDX: 00007ffd006b7f40 RSI: 0000000000008946 RDI: 0000000000000003
May  1 06:37:28 u1322 kernel: RBP: 0000000000a92260 R08: 0000000000a92320 R09: 0000000000000003
May  1 06:37:28 u1322 kernel: R10: fffffffffffff6e6 R11: 0000000000000246 R12: 00007ffd006b7f30
May  1 06:37:28 u1322 kernel: R13: 0000000000000038 R14: 0000000000000001 R15: 0000000000000000
May  1 06:37:33 u1322 kernel: rcu: INFO: rcu_sched self-detected stall on CPU
May  1 06:37:33 u1322 kernel: rcu: #0117-....: (2 GPs behind) idle=4be/1/0x4000000000000004 softirq=180999/181000 fqs=14982
May  1 06:37:33 u1322 kernel: #011(t=60000 jiffies g=2095585 q=2857)
May  1 06:37:33 u1322 kernel: NMI backtrace for cpu 7
May  1 06:37:33 u1322 kernel: CPU: 7 PID: 9111 Comm: ethtool Tainted: G             L    5.7.0-rc2_next-queue_dev-queue_c097661-00758-gc097661edb2b #31
May  1 06:37:33 u1322 kernel: Hardware name: Gigabyte Technology Co., Ltd. Z370 AORUS Gaming 5/Z370 AORUS Gaming 5-CF, BIOS F6 04/03/2018
May  1 06:37:33 u1322 kernel: Call Trace:
May  1 06:37:33 u1322 kernel: <IRQ>
May  1 06:37:33 u1322 kernel: dump_stack+0x50/0x70
May  1 06:37:33 u1322 kernel: nmi_cpu_backtrace.cold.8+0x13/0x4f
May  1 06:37:33 u1322 kernel: ? lapic_can_unplug_cpu.cold.30+0x37/0x37
May  1 06:37:33 u1322 kernel: nmi_trigger_cpumask_backtrace+0xde/0xe0
May  1 06:37:33 u1322 kernel: rcu_dump_cpu_stacks+0xae/0xdc
May  1 06:37:33 u1322 kernel: rcu_sched_clock_irq.cold.87+0x10a/0x380
May  1 06:37:33 u1322 kernel: ? timekeeping_advance+0x371/0x5a0
May  1 06:37:33 u1322 kernel: ? tick_sched_do_timer+0x70/0x70
May  1 06:37:33 u1322 kernel: ? tick_sched_do_timer+0x70/0x70
May  1 06:37:33 u1322 kernel: update_process_times+0x24/0x50
May  1 06:37:33 u1322 kernel: tick_sched_handle+0x22/0x60
May  1 06:37:33 u1322 kernel: tick_sched_timer+0x37/0x70
May  1 06:37:33 u1322 kernel: __hrtimer_run_queues+0x100/0x280
May  1 06:37:33 u1322 kernel: hrtimer_interrupt+0x100/0x220
May  1 06:37:33 u1322 kernel: smp_apic_timer_interrupt+0x6a/0x130
May  1 06:37:33 u1322 kernel: apic_timer_interrupt+0xf/0x20
May  1 06:37:33 u1322 kernel: RIP: 0010:__do_softirq+0x76/0x2ec
May  1 06:37:33 u1322 kernel: Code: 81 05 b2 7e e1 5d 00 01 00 00 c7 44 24 20 0a 00 00 00 44 89 74 24 04 48 c7 c0 40 b5 02 00 65 66 c7 00 00 00 fb b8 ff ff ff ff <48> c7 c6 00 51 a0 a2 0f bc 44 24 04 83 c0 01 49 89 f7 89 44 24 08
May  1 06:37:33 u1322 kernel: RSP: 0018:ffffaed900254f70 EFLAGS: 00000286 ORIG_RAX: ffffffffffffff13
May  1 06:37:33 u1322 kernel: RAX: 00000000ffffffff RBX: ffff96bb7e3d8640 RCX: 000000000000001f
May  1 06:37:33 u1322 kernel: RDX: 0000000000000043 RSI: 000000002819aad9 RDI: fffffffa31c219af
May  1 06:37:33 u1322 kernel: RBP: 0000000000000000 R08: 0000000000000002 R09: 000000000002b5c0
May  1 06:37:33 u1322 kernel: R10: 000167b91c1d8b72 R11: 000070ac2bd6bc76 R12: 0000000000000000
May  1 06:37:33 u1322 kernel: R13: 0000000000000000 R14: 0000000000000282 R15: 0000000000000000
May  1 06:37:33 u1322 kernel: ? apic_timer_interrupt+0xa/0x20
May  1 06:37:33 u1322 kernel: ? hrtimer_interrupt+0x12e/0x220
May  1 06:37:33 u1322 kernel: irq_exit+0xe3/0xf0
May  1 06:37:33 u1322 kernel: smp_apic_timer_interrupt+0x74/0x130
May  1 06:37:33 u1322 kernel: apic_timer_interrupt+0xf/0x20
May  1 06:37:33 u1322 kernel: </IRQ>
May  1 06:37:33 u1322 kernel: RIP: 0010:igc_rd32+0x16/0x80 [igc]
May  1 06:37:33 u1322 kernel: Code: e1 31 c0 c3 b8 fd ff ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 41 55 89 f0 41 54 55 53 48 8b 57 08 48 01 d0 8b 18 <83> fb ff 74 09 89 d8 5b 5d 41 5c 41 5d c3 85 f6 74 07 8b 02 83 f8
May  1 06:37:33 u1322 kernel: RSP: 0018:ffffaed906a57c48 EFLAGS: 00000282 ORIG_RAX: ffffffffffffff13
May  1 06:37:33 u1322 kernel: RAX: ffffaed901d00008 RBX: 0000000040380681 RCX: 0000000000000000
May  1 06:37:33 u1322 kernel: RDX: ffffaed901d00000 RSI: 0000000000000008 RDI: ffff96ac87278ae0
May  1 06:37:33 u1322 kernel: RBP: 0000000000000001 R08: 0000000000000010 R09: 000000000000fe6d
May  1 06:37:33 u1322 kernel: R10: 000000000000fe6d R11: 000070ac2bc77a36 R12: ffff96ac87278ae0
May  1 06:37:33 u1322 kernel: R13: ffff96bb71f30410 R14: 0000000000000001 R15: ffff96ac87278880
May  1 06:37:33 u1322 kernel: ? usleep_range+0x5c/0x80
May  1 06:37:33 u1322 kernel: igc_intr_test.cold.2+0x11d/0x279 [igc]
May  1 06:37:33 u1322 kernel: igc_ethtool_diag_test+0xe4/0x166 [igc]
May  1 06:37:33 u1322 kernel: dev_ethtool+0x1049/0x2a30
May  1 06:37:33 u1322 kernel: ? inet_ioctl+0x187/0x1d0
May  1 06:37:33 u1322 kernel: ? netdev_run_todo+0x5e/0x290
May  1 06:37:33 u1322 kernel: dev_ioctl+0xb5/0x550
May  1 06:37:33 u1322 kernel: sock_do_ioctl+0xa0/0x140
May  1 06:37:33 u1322 kernel: sock_ioctl+0x22a/0x380
May  1 06:37:33 u1322 kernel: ksys_ioctl+0x86/0xc0
May  1 06:37:33 u1322 kernel: __x64_sys_ioctl+0x16/0x20
May  1 06:37:33 u1322 kernel: do_syscall_64+0x55/0x1d0
May  1 06:37:33 u1322 kernel: entry_SYSCALL_64_after_hwframe+0x44/0xa9
May  1 06:37:33 u1322 kernel: RIP: 0033:0x7ff402b4bb2b
May  1 06:37:33 u1322 kernel: Code: 0f 1e fa 48 8b 05 5d a3 2c 00 64 c7 00 26 00 00 00 48 c7 c0 ff ff ff ff c3 66 0f 1f 44 00 00 f3 0f 1e fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 2d a3 2c 00 f7 d8 64 89 01 48
May  1 06:37:33 u1322 kernel: RSP: 002b:00007ffd006b7ef8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
May  1 06:37:33 u1322 kernel: RAX: ffffffffffffffda RBX: 0000000000a92320 RCX: 00007ff402b4bb2b
May  1 06:37:33 u1322 kernel: RDX: 00007ffd006b7f40 RSI: 0000000000008946 RDI: 0000000000000003
May  1 06:37:33 u1322 kernel: RBP: 0000000000a92260 R08: 0000000000a92320 R09: 0000000000000003
May  1 06:37:33 u1322 kernel: R10: fffffffffffff6e6 R11: 0000000000000246 R12: 00007ffd006b7f30
May  1 06:37:33 u1322 kernel: R13: 0000000000000038 R14: 0000000000000001 R15: 0000000000000000
----
And it continues to occurs at roughly 30 second intervals until the system is rebooted.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
