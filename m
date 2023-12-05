Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D60F78059DB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Dec 2023 17:18:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 548224359F;
	Tue,  5 Dec 2023 16:18:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 548224359F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701793108;
	bh=dSR52hpnTH/0I74TB7TZAMYKL2/+pfcpCM73zTOeIww=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oFstkCWyQZeD26s6Ad3Kuml8zzlzuG6EtDsOkUwr7xu3feBQWGAJR81MiV+lIWmns
	 S4JsWcFE7PPw1OCHkdcnX3LnpSkwOsykSX5hMIoD4VSrAqPHGN3Dk5OO4YYOVoUBSK
	 aZSCfFNTDzsq84fUa7ALSwroykZWzXua2O1wjQ7KPhhqepX9rQiAYzZgPHiQRoAA2K
	 WOjP+tfjpEaG2/QWnLxQ77xUlE5pQrY0rV2fhuHtKAG0MvTSrsrQQwT98liV0AQ0cQ
	 sqOPqdabFvwB+bVM/n77XcFl9ly0ECRvzvt+tjmCROXIJtyZCavSTlYotFbjvvUqYm
	 DWUj6Fp6AHN7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M8Nftkk85YHc; Tue,  5 Dec 2023 16:18:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB1F54356B;
	Tue,  5 Dec 2023 16:18:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB1F54356B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF79C1BF2F7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 02:47:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B7C5782241
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 02:47:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B7C5782241
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VTJRtshFGOto for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Dec 2023 02:47:01 +0000 (UTC)
Received: from mail1.merlins.org (magic.merlins.org [209.81.13.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B564B8141B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 02:47:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B564B8141B
Received: from c-76-132-34-178.hsd1.ca.comcast.net ([76.132.34.178]:35894
 helo=sauron.svh.merlins.org) by mail1.merlins.org with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim
 4.94.2 #2)
 id 1rALSX-0004fN-AP by authid <merlins.org> with srv_auth_plain;
 Mon, 04 Dec 2023 18:46:53 -0800
Received: from merlin by sauron.svh.merlins.org with local (Exim 4.92)
 (envelope-from <marc@merlins.org>)
 id 1rALSW-0006YL-TJ; Mon, 04 Dec 2023 18:46:52 -0800
Date: Mon, 4 Dec 2023 18:46:52 -0800
From: Marc MERLIN <marc@merlins.org>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <20231205024652.GA12805@merlins.org>
References: <20231204200710.40c291e60cea.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <20231204200038.GA9330@merlins.org>
 <a6ac887f7ce8af0235558752d0c781b817f1795a.camel@sipsolutions.net>
 <20231204203622.GB9330@merlins.org>
 <24577c9b8b4d398fe34bd756354c33b80cf67720.camel@sipsolutions.net>
 <20231204205439.GA32680@merlins.org>
 <20231204212849.GA25864@merlins.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231204212849.GA25864@merlins.org>
X-Sysadmin: BOFH
X-URL: http://marc.merlins.org/
X-SA-Exim-Connect-IP: 76.132.34.178
X-SA-Exim-Mail-From: marc@merlins.org
X-Mailman-Approved-At: Tue, 05 Dec 2023 16:18:20 +0000
Subject: Re: [Intel-wired-lan] [RFC PATCH] net: ethtool: do runtime PM
 outside RTNL
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
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 04, 2023 at 01:28:49PM -0800, Marc MERLIN wrote:
> sauron:~# iwconfig wlp9s0
> wlp9s0    IEEE 802.11  ESSID:"magicnet"  
>           Mode:Managed  Frequency:5.2 GHz  Access Point: E0:63:DA:28:03:67   
>           Bit Rate=866.7 Mb/s   Tx-Power=22 dBm   
>           Retry short limit:7   RTS thr:off   Fragment thr:off
>           Encryption key:off
>           Power Management:off
>           Link Quality=70/70  Signal level=-40 dBm  
>           Rx invalid nwid:0  Rx invalid crypt:0  Rx invalid frag:0
>           Tx excessive retries:0  Invalid misc:992   Missed beacon:0
> 
> sauron:~# lspci | grep -i net
> 09:00.0 Network controller: Intel Corporation Wi-Fi 6 AX210/AX211/AX411 160MHz (rev 1a)
> 0b:00.0 Ethernet controller: Intel Corporation Ethernet Controller I225-LM (rev 03)

Probably not related and probably ok, but getting these bug workaround
messages:
[ 2448.505576] iwlwifi 0000:09:00.0: Detected RF GF, rfid=0x10d000
[ 2448.578917] iwlwifi 0000:09:00.0: base HW address: f4:4e:e3:fb:7f:93
[ 2448.601421] iwlwifi 0000:09:00.0 wlp9s0: renamed from wlan0
[ 2448.695483] iwlwifi 0000:09:00.0: WRT: Invalid buffer destination
[ 2448.863729] iwlwifi 0000:09:00.0: WFPM_UMAC_PD_NOTIFICATION: 0x20
[ 2448.863785] iwlwifi 0000:09:00.0: WFPM_LMAC2_PD_NOTIFICATION: 0x1f
[ 2448.863812] iwlwifi 0000:09:00.0: WFPM_AUTH_KEY_0: 0x90
[ 2448.863837] iwlwifi 0000:09:00.0: CNVI_SCU_SEQ_DATA_DW9: 0x0
[ 2448.971242] iwlwifi 0000:09:00.0: Registered PHC clock: iwlwifi-PTP, with index: 1
[ 2449.063668] iwlwifi 0000:09:00.0: WRT: Invalid buffer destination
[ 2449.232085] iwlwifi 0000:09:00.0: WFPM_UMAC_PD_NOTIFICATION: 0x20
[ 2449.232143] iwlwifi 0000:09:00.0: WFPM_LMAC2_PD_NOTIFICATION: 0x1f
[ 2449.232169] iwlwifi 0000:09:00.0: WFPM_AUTH_KEY_0: 0x90
[ 2449.232188] iwlwifi 0000:09:00.0: CNVI_SCU_SEQ_DATA_DW9: 0x0
[13323.572484] iwlwifi 0000:09:00.0: TB bug workaround: copied 152 bytes from 0xffffff68 to 0xfd080000
[13328.000825] iwlwifi 0000:09:00.0: TB bug workaround: copied 1272 bytes from 0xfffffb08 to 0xff42c000
[13367.278564] iwlwifi 0000:09:00.0: TB bug workaround: copied 1328 bytes from 0xfffffad0 to 0xfec41000
[13389.737971] iwlwifi 0000:09:00.0: TB bug workaround: copied 572 bytes from 0xfffffdc4 to 0xff091000
[13389.860480] iwlwifi 0000:09:00.0: TB bug workaround: copied 148 bytes from 0xffffff6c to 0xfe412000
[13393.435354] iwlwifi 0000:09:00.0: TB bug workaround: copied 360 bytes from 0xfffffe98 to 0xfedcd000
[13409.827199] iwlwifi 0000:09:00.0: TB bug workaround: copied 1348 bytes from 0xfffffabc to 0xfd057000

The other good news is that it now shuts down ok, which is
understandable with the deadlock fixed.

The only thing I'm still seeing is this, I'm not too sure how avad it
is, or whether it's ok-ish.
I understand it's likely totally unrelated, although there are some
iwlwifi lines below if that's helpful
Otherwise, laptop is still working ok so far.

[ 1879.679720] pcieport 0000:00:07.1: power state changed by ACPI to D0
[ 1879.679727] pcieport 0000:00:07.1: ACPI _REG connect evaluation failed (5)
[ 1879.691616] pcieport 0000:00:07.1: restore config 0x2c: 0x00000064 -> 0x00000064
[ 1879.691624] pcieport 0000:00:07.1: restore config 0x28: 0x00000064 -> 0x00000064
[ 1879.691627] pcieport 0000:00:07.1: restore config 0x24: 0x4bf13001 -> 0x4bf13001
[ 1879.691959] pcieport 0000:00:07.1: PME# disabled
[ 1879.691967] pcieport 0000:00:07.1: pciehp: pciehp_check_link_active: lnk_status = 1001
[ 1879.803706] pcieport 0000:00:07.0: power state changed by ACPI to D0
[ 1879.803714] pcieport 0000:00:07.0: ACPI _REG connect evaluation failed (5)
[ 1879.815840] pcieport 0000:00:07.1: save config 0x00: 0x9a2d8086
[ 1879.815847] pcieport 0000:00:07.1: save config 0x04: 0x00100407
[ 1879.815849] pcieport 0000:00:07.1: save config 0x08: 0x06040005
[ 1879.815851] pcieport 0000:00:07.1: save config 0x0c: 0x00810000
[ 1879.815852] pcieport 0000:00:07.1: save config 0x10: 0x00000000
[ 1879.815854] pcieport 0000:00:07.1: save config 0x14: 0x00000000
[ 1879.815856] pcieport 0000:00:07.1: save config 0x18: 0x00795000
[ 1879.815858] pcieport 0000:00:07.1: save config 0x1c: 0x00006060
[ 1879.815859] pcieport 0000:00:07.1: save config 0x20: 0x9e109200
[ 1879.815861] pcieport 0000:00:07.1: save config 0x24: 0x4bf13001
[ 1879.815863] pcieport 0000:00:07.1: save config 0x28: 0x00000064
[ 1879.815864] pcieport 0000:00:07.1: save config 0x2c: 0x00000064
[ 1879.815866] pcieport 0000:00:07.1: save config 0x30: 0x00000000
[ 1879.815868] pcieport 0000:00:07.1: save config 0x34: 0x00000040
[ 1879.815869] pcieport 0000:00:07.1: save config 0x38: 0x00000000
[ 1879.815871] pcieport 0000:00:07.1: save config 0x3c: 0x000202ff
[ 1879.815954] pcieport 0000:00:07.1: PME# enabled
[ 1879.816250] pcieport 0000:00:07.0: restore config 0x2c: 0x00000064 -> 0x00000064
[ 1879.816253] pcieport 0000:00:07.0: restore config 0x28: 0x00000064 -> 0x00000064
[ 1879.816256] pcieport 0000:00:07.0: restore config 0x24: 0x2bf11001 -> 0x2bf11001
[ 1879.816540] pcieport 0000:00:07.0: PME# disabled
[ 1879.816546] pcieport 0000:00:07.0: pciehp: pciehp_check_link_active: lnk_status = 1001
[ 1879.827631] pcieport 0000:00:07.1: ACPI _REG disconnect evaluation failed (5)
[ 1879.827765] pcieport 0000:00:07.1: power state changed by ACPI to D3cold
[ 1879.939979] pcieport 0000:00:07.0: save config 0x00: 0x9a2b8086
[ 1879.939986] pcieport 0000:00:07.0: save config 0x04: 0x00100407
[ 1879.939988] pcieport 0000:00:07.0: save config 0x08: 0x06040005
[ 1879.939989] pcieport 0000:00:07.0: save config 0x0c: 0x00810000
[ 1879.939991] pcieport 0000:00:07.0: save config 0x10: 0x00000000
[ 1879.939993] pcieport 0000:00:07.0: save config 0x14: 0x00000000
[ 1879.939995] pcieport 0000:00:07.0: save config 0x18: 0x00492000
[ 1879.939996] pcieport 0000:00:07.0: save config 0x1c: 0x00005050
[ 1879.939998] pcieport 0000:00:07.0: save config 0x20: 0xac10a000
[ 1879.940000] pcieport 0000:00:07.0: save config 0x24: 0x2bf11001
[ 1879.940001] pcieport 0000:00:07.0: save config 0x28: 0x00000064
[ 1879.940003] pcieport 0000:00:07.0: save config 0x2c: 0x00000064
[ 1879.940005] pcieport 0000:00:07.0: save config 0x30: 0x00000000
[ 1879.940007] pcieport 0000:00:07.0: save config 0x34: 0x00000040
[ 1879.940008] pcieport 0000:00:07.0: save config 0x38: 0x00000000
[ 1879.940010] pcieport 0000:00:07.0: save config 0x3c: 0x000201ff
[ 1879.940093] pcieport 0000:00:07.0: PME# enabled
[ 1879.951532] pcieport 0000:00:07.0: ACPI _REG disconnect evaluation failed (5)
[ 1879.951665] pcieport 0000:00:07.0: power state changed by ACPI to D3cold
[ 2085.430089] pci 0000:00:00.0: save config 0x00: 0x9a268086
[ 2085.430118] pci 0000:00:00.0: save config 0x04: 0x00900106
[ 2085.430131] pci 0000:00:00.0: save config 0x08: 0x06000005
[ 2085.430144] pci 0000:00:00.0: save config 0x0c: 0x00000000
[ 2085.430156] pci 0000:00:00.0: save config 0x10: 0x00000000
[ 2085.430167] pci 0000:00:00.0: save config 0x14: 0x00000000
[ 2085.430178] pci 0000:00:00.0: save config 0x18: 0x00000000
[ 2085.430189] pci 0000:00:00.0: save config 0x1c: 0x20000000
[ 2085.430200] pci 0000:00:00.0: save config 0x20: 0x00000000
[ 2085.430211] pci 0000:00:00.0: save config 0x24: 0x00000000
[ 2085.430222] pci 0000:00:00.0: save config 0x28: 0x00000000
[ 2085.430233] pci 0000:00:00.0: save config 0x2c: 0x22de17aa
[ 2085.430244] pci 0000:00:00.0: save config 0x30: 0x00000000
[ 2085.430255] pci 0000:00:00.0: save config 0x34: 0x00000000
[ 2085.430265] pci 0000:00:00.0: save config 0x38: 0x00000000
[ 2085.430276] pci 0000:00:00.0: save config 0x3c: 0x00000000
[ 2085.465583] xhci_hcd 0000:00:0d.0: save config 0x00: 0x9a178086
[ 2085.465609] xhci_hcd 0000:00:0d.0: save config 0x04: 0x02900402
[ 2085.465622] xhci_hcd 0000:00:0d.0: save config 0x08: 0x0c033005
[ 2085.465631] xhci_hcd 0000:00:0d.0: save config 0x0c: 0x00800000
[ 2085.465642] xhci_hcd 0000:00:0d.0: save config 0x10: 0x4d170004
[ 2085.465652] xhci_hcd 0000:00:0d.0: save config 0x14: 0x00000064
[ 2085.465663] xhci_hcd 0000:00:0d.0: save config 0x18: 0x00000000
[ 2085.465673] xhci_hcd 0000:00:0d.0: save config 0x1c: 0x00000000
[ 2085.465683] xhci_hcd 0000:00:0d.0: save config 0x20: 0x00000000
[ 2085.465693] xhci_hcd 0000:00:0d.0: save config 0x24: 0x00000000
[ 2085.465703] xhci_hcd 0000:00:0d.0: save config 0x28: 0x00000000
[ 2085.465712] xhci_hcd 0000:00:0d.0: save config 0x2c: 0x22de17aa
[ 2085.465722] xhci_hcd 0000:00:0d.0: save config 0x30: 0x00000000
[ 2085.465732] xhci_hcd 0000:00:0d.0: save config 0x34: 0x00000070
[ 2085.465742] xhci_hcd 0000:00:0d.0: save config 0x38: 0x00000000
[ 2085.465752] xhci_hcd 0000:00:0d.0: save config 0x3c: 0x000000ff
[ 2085.465920] xhci_hcd 0000:00:0d.0: PME# enabled
[ 2085.477664] thunderbolt 0000:00:0d.2: save config 0x00: 0x9a1f8086
[ 2085.477685] thunderbolt 0000:00:0d.2: save config 0x04: 0x00100407
[ 2085.477694] thunderbolt 0000:00:0d.2: save config 0x08: 0x0c034005
[ 2085.477701] thunderbolt 0000:00:0d.2: save config 0x0c: 0x00000000
[ 2085.477709] thunderbolt 0000:00:0d.2: save config 0x10: 0x4d100004
[ 2085.477717] thunderbolt 0000:00:0d.2: save config 0x14: 0x00000064
[ 2085.477725] thunderbolt 0000:00:0d.2: save config 0x18: 0x4d18b004
[ 2085.477732] thunderbolt 0000:00:0d.2: save config 0x1c: 0x00000064
[ 2085.477739] thunderbolt 0000:00:0d.2: save config 0x20: 0x00000000
[ 2085.477746] thunderbolt 0000:00:0d.2: save config 0x24: 0x00000000
[ 2085.477753] thunderbolt 0000:00:0d.2: save config 0x28: 0x00000000
[ 2085.477760] thunderbolt 0000:00:0d.2: save config 0x2c: 0x22de17aa
[ 2085.477767] thunderbolt 0000:00:0d.2: save config 0x30: 0x00000000
[ 2085.477774] thunderbolt 0000:00:0d.2: save config 0x34: 0x00000080
[ 2085.477781] thunderbolt 0000:00:0d.2: save config 0x38: 0x00000000
[ 2085.477789] thunderbolt 0000:00:0d.2: save config 0x3c: 0x000001ff
[ 2085.478239] thunderbolt 0000:00:0d.2: PME# enabled
[ 2085.478864] xhci_hcd 0000:00:0d.0: ACPI _REG disconnect evaluation failed (5)
[ 2085.479107] xhci_hcd 0000:00:0d.0: power state changed by ACPI to D3cold
[ 2085.486600] pci 0000:00:14.2: save config 0x00: 0x43ef8086
[ 2085.486624] pci 0000:00:14.2: save config 0x04: 0x00100000
[ 2085.486634] pci 0000:00:14.2: save config 0x08: 0x05000011
[ 2085.486642] pci 0000:00:14.2: save config 0x0c: 0x00000000
[ 2085.486651] pci 0000:00:14.2: save config 0x10: 0x4d184004
[ 2085.486659] pci 0000:00:14.2: save config 0x14: 0x00000064
[ 2085.486668] pci 0000:00:14.2: save config 0x18: 0x4d18a004
[ 2085.486675] pci 0000:00:14.2: save config 0x1c: 0x00000064
[ 2085.486683] pci 0000:00:14.2: save config 0x20: 0x00000000
[ 2085.486691] pci 0000:00:14.2: save config 0x24: 0x00000000
[ 2085.486699] pci 0000:00:14.2: save config 0x28: 0x00000000
[ 2085.486706] pci 0000:00:14.2: save config 0x2c: 0x22de17aa
[ 2085.486714] pci 0000:00:14.2: save config 0x30: 0x00000000
[ 2085.486722] pci 0000:00:14.2: save config 0x34: 0x00000080
[ 2085.486730] pci 0000:00:14.2: save config 0x38: 0x00000000
[ 2085.486738] pci 0000:00:14.2: save config 0x3c: 0x000000ff
[ 2085.490056] thunderbolt 0000:00:0d.2: ACPI _REG disconnect evaluation failed (5)
[ 2085.518094] pci 0000:00:1f.0: save config 0x00: 0x43898086
[ 2085.518119] pci 0000:00:1f.0: save config 0x04: 0x00000407
[ 2085.518129] pci 0000:00:1f.0: save config 0x08: 0x06010011
[ 2085.518137] pci 0000:00:1f.0: save config 0x0c: 0x00800000
[ 2085.518145] pci 0000:00:1f.0: save config 0x10: 0x00000000
[ 2085.518154] pci 0000:00:1f.0: save config 0x14: 0x00000000
[ 2085.518162] pci 0000:00:1f.0: save config 0x18: 0x00000000
[ 2085.518169] pci 0000:00:1f.0: save config 0x1c: 0x00000000
[ 2085.518177] pci 0000:00:1f.0: save config 0x20: 0x00000000
[ 2085.518184] pci 0000:00:1f.0: save config 0x24: 0x00000000
[ 2085.518192] pci 0000:00:1f.0: save config 0x28: 0x00000000
[ 2085.518200] pci 0000:00:1f.0: save config 0x2c: 0x22de17aa
[ 2085.518208] pci 0000:00:1f.0: save config 0x30: 0x00000000
[ 2085.518215] pci 0000:00:1f.0: save config 0x34: 0x00000000
[ 2085.518223] pci 0000:00:1f.0: save config 0x38: 0x00000000
[ 2085.518230] pci 0000:00:1f.0: save config 0x3c: 0x00000000
[ 2085.524402] thunderbolt 0000:00:0d.2: power state changed by ACPI to D3cold
[ 2085.533410] i801_smbus 0000:00:1f.4: save config 0x00: 0x43a38086
[ 2085.533435] i801_smbus 0000:00:1f.4: save config 0x04: 0x02800003
[ 2085.533448] i801_smbus 0000:00:1f.4: save config 0x08: 0x0c050011
[ 2085.533458] i801_smbus 0000:00:1f.4: save config 0x0c: 0x00000000
[ 2085.533469] i801_smbus 0000:00:1f.4: save config 0x10: 0x4d188004
[ 2085.533479] i801_smbus 0000:00:1f.4: save config 0x14: 0x00000064
[ 2085.533490] i801_smbus 0000:00:1f.4: save config 0x18: 0x00000000
[ 2085.533500] i801_smbus 0000:00:1f.4: save config 0x1c: 0x00000000
[ 2085.533509] i801_smbus 0000:00:1f.4: save config 0x20: 0x0000efa1
[ 2085.533520] i801_smbus 0000:00:1f.4: save config 0x24: 0x00000000
[ 2085.533529] i801_smbus 0000:00:1f.4: save config 0x28: 0x00000000
[ 2085.533539] i801_smbus 0000:00:1f.4: save config 0x2c: 0x22de17aa
[ 2085.533549] i801_smbus 0000:00:1f.4: save config 0x30: 0x00000000
[ 2085.533559] i801_smbus 0000:00:1f.4: save config 0x34: 0x00000000
[ 2085.533568] i801_smbus 0000:00:1f.4: save config 0x38: 0x00000000
[ 2085.533578] i801_smbus 0000:00:1f.4: save config 0x3c: 0x000001ff
[ 2085.540270] pci 0000:00:1f.5: save config 0x00: 0x43a48086
[ 2085.540292] pci 0000:00:1f.5: save config 0x04: 0x00000402
[ 2085.540302] pci 0000:00:1f.5: save config 0x08: 0x0c800011
[ 2085.540311] pci 0000:00:1f.5: save config 0x0c: 0x00000000
[ 2085.540320] pci 0000:00:1f.5: save config 0x10: 0x90800000
[ 2085.540329] pci 0000:00:1f.5: save config 0x14: 0x00000000
[ 2085.540337] pci 0000:00:1f.5: save config 0x18: 0x00000000
[ 2085.540345] pci 0000:00:1f.5: save config 0x1c: 0x00000000
[ 2085.540352] pci 0000:00:1f.5: save config 0x20: 0x00000000
[ 2085.540360] pci 0000:00:1f.5: save config 0x24: 0x00000000
[ 2085.540367] pci 0000:00:1f.5: save config 0x28: 0x00000000
[ 2085.540375] pci 0000:00:1f.5: save config 0x2c: 0x22de17aa
[ 2085.540383] pci 0000:00:1f.5: save config 0x30: 0x00000000
[ 2085.540391] pci 0000:00:1f.5: save config 0x34: 0x00000000
[ 2085.540398] pci 0000:00:1f.5: save config 0x38: 0x00000000
[ 2085.540406] pci 0000:00:1f.5: save config 0x3c: 0x00000000
[ 2085.555233] snd_hda_intel 0000:01:00.1: save config 0x00: 0x228b10de
[ 2085.555260] snd_hda_intel 0000:01:00.1: save config 0x04: 0x00100006
[ 2085.555276] snd_hda_intel 0000:01:00.1: save config 0x08: 0x040300a1
[ 2085.555289] snd_hda_intel 0000:01:00.1: save config 0x0c: 0x00800000
[ 2085.555301] snd_hda_intel 0000:01:00.1: save config 0x10: 0xae000000
[ 2085.555315] snd_hda_intel 0000:01:00.1: save config 0x14: 0x00000000
[ 2085.555328] snd_hda_intel 0000:01:00.1: save config 0x18: 0x00000000
[ 2085.555341] snd_hda_intel 0000:01:00.1: save config 0x1c: 0x00000000
[ 2085.555353] snd_hda_intel 0000:01:00.1: save config 0x20: 0x00000000
[ 2085.555365] snd_hda_intel 0000:01:00.1: save config 0x24: 0x00000000
[ 2085.555377] snd_hda_intel 0000:01:00.1: save config 0x28: 0x00000000
[ 2085.555389] snd_hda_intel 0000:01:00.1: save config 0x2c: 0x22de17aa
[ 2085.555401] snd_hda_intel 0000:01:00.1: save config 0x30: 0x00000000
[ 2085.555412] snd_hda_intel 0000:01:00.1: save config 0x34: 0x00000060
[ 2085.555425] snd_hda_intel 0000:01:00.1: save config 0x38: 0x00000000
[ 2085.555437] snd_hda_intel 0000:01:00.1: save config 0x3c: 0x000002ff
[ 2085.578054] pci 0000:01:00.0: save config 0x00: 0x24b610de
[ 2085.578079] pci 0000:01:00.0: save config 0x04: 0x00100003
[ 2085.578093] pci 0000:01:00.0: save config 0x08: 0x030000a1
[ 2085.578106] pci 0000:01:00.0: save config 0x0c: 0x00800000
[ 2085.578119] pci 0000:01:00.0: save config 0x10: 0xad000000
[ 2085.578131] pci 0000:01:00.0: save config 0x14: 0x0000000c
[ 2085.578144] pci 0000:01:00.0: save config 0x18: 0x00000060
[ 2085.578157] pci 0000:01:00.0: save config 0x1c: 0x0000000c
[ 2085.578170] pci 0000:01:00.0: save config 0x20: 0x00000064
[ 2085.578181] pci 0000:01:00.0: save config 0x24: 0x00003001
[ 2085.578193] pci 0000:01:00.0: save config 0x28: 0x00000000
[ 2085.578205] pci 0000:01:00.0: save config 0x2c: 0x22de17aa
[ 2085.578217] pci 0000:01:00.0: save config 0x30: 0xfff80000
[ 2085.578228] pci 0000:01:00.0: save config 0x34: 0x00000060
[ 2085.578240] pci 0000:01:00.0: save config 0x38: 0x00000000
[ 2085.578252] pci 0000:01:00.0: save config 0x3c: 0x000001ff
[ 2085.578322] pcieport 0000:00:01.0: save config 0x00: 0x9a018086
[ 2085.578337] pcieport 0000:00:01.0: save config 0x04: 0x00100507
[ 2085.578350] pcieport 0000:00:01.0: save config 0x08: 0x06040005
[ 2085.578362] pcieport 0000:00:01.0: save config 0x0c: 0x00810000
[ 2085.578374] pcieport 0000:00:01.0: save config 0x10: 0x00000000
[ 2085.578386] pcieport 0000:00:01.0: save config 0x14: 0x00000000
[ 2085.578398] pcieport 0000:00:01.0: save config 0x18: 0x00010100
[ 2085.578411] pcieport 0000:00:01.0: save config 0x1c: 0x20003030
[ 2085.578423] pcieport 0000:00:01.0: save config 0x20: 0xae00ad00
[ 2085.578434] pcieport 0000:00:01.0: save config 0x24: 0x01f10001
[ 2085.578446] pcieport 0000:00:01.0: save config 0x28: 0x00000060
[ 2085.578458] pcieport 0000:00:01.0: save config 0x2c: 0x00000064
[ 2085.578470] pcieport 0000:00:01.0: save config 0x30: 0x00000000
[ 2085.578482] pcieport 0000:00:01.0: save config 0x34: 0x00000040
[ 2085.578494] pcieport 0000:00:01.0: save config 0x38: 0x00000000
[ 2085.578506] pcieport 0000:00:01.0: save config 0x3c: 0x000201ff
[ 2085.578650] pcieport 0000:00:01.0: PME# enabled
[ 2085.590082] pcieport 0000:00:01.0: ACPI _REG disconnect evaluation failed (5)
[ 2085.826081] pcieport 0000:00:01.0: power state changed by ACPI to D3cold
(...)
[ 2153.122300] igc 0000:0b:00.0: enabling bus mastering
[ 2158.299859] igc 0000:0b:00.0: save config 0x00: 0x15f28086
[ 2158.300357] igc 0000:0b:00.0: save config 0x04: 0x00100002
[ 2158.300859] igc 0000:0b:00.0: save config 0x08: 0x02000003
[ 2158.301362] igc 0000:0b:00.0: save config 0x0c: 0x00000020
[ 2158.301874] igc 0000:0b:00.0: save config 0x10: 0xae400000
[ 2158.302361] igc 0000:0b:00.0: save config 0x14: 0x00000000
[ 2158.302445] igc 0000:0b:00.0: save config 0x18: 0x00000000
[ 2158.302453] igc 0000:0b:00.0: save config 0x1c: 0xae500000
[ 2158.302462] igc 0000:0b:00.0: save config 0x20: 0x00000000
[ 2158.302470] igc 0000:0b:00.0: save config 0x24: 0x00000000
[ 2158.302478] igc 0000:0b:00.0: save config 0x28: 0x00000000
[ 2158.302486] igc 0000:0b:00.0: save config 0x2c: 0x22d817aa
[ 2158.302494] igc 0000:0b:00.0: save config 0x30: 0x00000000
[ 2158.302502] igc 0000:0b:00.0: save config 0x34: 0x00000040
[ 2158.302510] igc 0000:0b:00.0: save config 0x38: 0x00000000
[ 2158.302518] igc 0000:0b:00.0: save config 0x3c: 0x000001ff
[ 2158.302596] igc 0000:0b:00.0: PME# enabled
[ 2158.313996] pcieport 0000:00:1c.4: save config 0x00: 0x43bc8086
[ 2158.314045] pcieport 0000:00:1c.4: save config 0x04: 0x00100407
[ 2158.314080] pcieport 0000:00:1c.4: save config 0x08: 0x06040011
[ 2158.314113] pcieport 0000:00:1c.4: save config 0x0c: 0x00810000
[ 2158.314121] pcieport 0000:00:1c.4: save config 0x10: 0x00000000
[ 2158.314154] pcieport 0000:00:1c.4: save config 0x14: 0x00000000
[ 2158.314187] pcieport 0000:00:1c.4: save config 0x18: 0x000b0b00
[ 2158.314219] pcieport 0000:00:1c.4: save config 0x1c: 0x200000f0
[ 2158.314252] pcieport 0000:00:1c.4: save config 0x20: 0xae50ae40
[ 2158.314284] pcieport 0000:00:1c.4: save config 0x24: 0x0001fff1
[ 2158.314292] pcieport 0000:00:1c.4: save config 0x28: 0x00000000
[ 2158.314324] pcieport 0000:00:1c.4: save config 0x2c: 0x00000000
[ 2158.314357] pcieport 0000:00:1c.4: save config 0x30: 0x00000000
[ 2158.314389] pcieport 0000:00:1c.4: save config 0x34: 0x00000040
[ 2158.314416] pcieport 0000:00:1c.4: save config 0x38: 0x00000000
[ 2158.314448] pcieport 0000:00:1c.4: save config 0x3c: 0x000201ff
[ 2158.314541] pcieport 0000:00:1c.4: PME# enabled
[ 2167.722083] wlp9s0: deauthenticating from e0:63:da:28:03:67 by local choice (Reason: 3=DEAUTH_LEAVI
[ 2167.997820] iwlwifi 0000:09:00.0: Unregistering PHC clock: iwlwifi-PTP, with index: 1
[ 2168.045860] iwlwifi 0000:09:00.0: vgaarb: pci_notify
[ 2168.414051] iwlwifi 0000:09:00.0: save config 0x00: 0x27258086
[ 2168.414255] iwlwifi 0000:09:00.0: save config 0x04: 0x00100406
[ 2168.414462] iwlwifi 0000:09:00.0: save config 0x08: 0x0280001a
[ 2168.414670] iwlwifi 0000:09:00.0: save config 0x0c: 0x00000000
[ 2168.414791] iwlwifi 0000:09:00.0: save config 0x10: 0xae300004
[ 2168.414929] iwlwifi 0000:09:00.0: save config 0x14: 0x00000000
[ 2168.415119] iwlwifi 0000:09:00.0: save config 0x18: 0x00000000
[ 2168.415257] iwlwifi 0000:09:00.0: save config 0x1c: 0x00000000
[ 2168.415448] iwlwifi 0000:09:00.0: save config 0x20: 0x00000000
[ 2168.415569] iwlwifi 0000:09:00.0: save config 0x24: 0x00000000
[ 2168.415689] iwlwifi 0000:09:00.0: save config 0x28: 0x00000000
[ 2168.415828] iwlwifi 0000:09:00.0: save config 0x2c: 0x00208086
[ 2168.416018] iwlwifi 0000:09:00.0: save config 0x30: 0x00000000
[ 2168.416139] iwlwifi 0000:09:00.0: save config 0x34: 0x000000c8
[ 2168.416260] iwlwifi 0000:09:00.0: save config 0x38: 0x00000000
[ 2168.416380] iwlwifi 0000:09:00.0: save config 0x3c: 0x000001ff
[ 2168.417051] pcieport 0000:00:1c.5: save config 0x00: 0x43bd8086
[ 2168.417089] pcieport 0000:00:1c.5: save config 0x04: 0x00100407
[ 2168.417126] pcieport 0000:00:1c.5: save config 0x08: 0x06040011
[ 2168.417162] pcieport 0000:00:1c.5: save config 0x0c: 0x00810000
[ 2168.417197] pcieport 0000:00:1c.5: save config 0x10: 0x00000000
[ 2168.417233] pcieport 0000:00:1c.5: save config 0x14: 0x00000000
[ 2168.417269] pcieport 0000:00:1c.5: save config 0x18: 0x00090900
[ 2168.417304] pcieport 0000:00:1c.5: save config 0x1c: 0x200000f0
[ 2168.417340] pcieport 0000:00:1c.5: save config 0x20: 0xae30ae30
[ 2168.417376] pcieport 0000:00:1c.5: save config 0x24: 0x0001fff1
[ 2168.417412] pcieport 0000:00:1c.5: save config 0x28: 0x00000000
[ 2168.417447] pcieport 0000:00:1c.5: save config 0x2c: 0x00000000
[ 2168.417483] pcieport 0000:00:1c.5: save config 0x30: 0x00000000
[ 2168.417517] pcieport 0000:00:1c.5: save config 0x34: 0x00000040
[ 2168.417553] pcieport 0000:00:1c.5: save config 0x38: 0x00000000
[ 2168.417626] pcieport 0000:00:1c.5: save config 0x3c: 0x000202ff
[ 2168.417876] pcieport 0000:00:1c.5: PME# enabled
[ 2168.421126] pci 0000:09:00.0: vgaarb: pci_notify
[ 2173.389773] pcieport 0000:00:1c.4: restore config 0x2c: 0x00000000 -> 0x00000000
[ 2173.389829] pcieport 0000:00:1c.4: restore config 0x28: 0x00000000 -> 0x00000000
[ 2173.389869] pcieport 0000:00:1c.4: restore config 0x24: 0x0001fff1 -> 0x0001fff1
[ 2173.390080] pcieport 0000:00:1c.4: PME# disabled
[ 2173.402003] igc 0000:0b:00.0: PME# disabled
[ 2173.402110] igc 0000:0b:00.0: save config 0x00: 0x15f28086
[ 2173.402133] igc 0000:0b:00.0: save config 0x04: 0x00100002
[ 2173.402142] igc 0000:0b:00.0: save config 0x08: 0x02000003
[ 2173.402151] igc 0000:0b:00.0: save config 0x0c: 0x00000020
[ 2173.402159] igc 0000:0b:00.0: save config 0x10: 0xae400000
[ 2173.402168] igc 0000:0b:00.0: save config 0x14: 0x00000000
[ 2173.402176] igc 0000:0b:00.0: save config 0x18: 0x00000000
[ 2173.402184] igc 0000:0b:00.0: save config 0x1c: 0xae500000
[ 2173.402192] igc 0000:0b:00.0: save config 0x20: 0x00000000
[ 2173.402200] igc 0000:0b:00.0: save config 0x24: 0x00000000
[ 2173.402207] igc 0000:0b:00.0: save config 0x28: 0x00000000
[ 2173.402215] igc 0000:0b:00.0: save config 0x2c: 0x22d817aa
[ 2173.402223] igc 0000:0b:00.0: save config 0x30: 0x00000000



Marc
-- 
"A mouse is a device used to point at the xterm you want to type in" - A.S.R.
 
Home page: http://marc.merlins.org/  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
