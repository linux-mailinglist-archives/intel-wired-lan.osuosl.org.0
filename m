Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7017B44B95
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 04:21:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6405E4035B;
	Fri,  5 Sep 2025 02:21:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FKZxvW_aQr_g; Fri,  5 Sep 2025 02:21:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85AE640259
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757038864;
	bh=dNlvqJpLT0tt4Xb3yht/THJRTNEhTx28a/97adw00xc=;
	h=Date:To:From:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2TBlfUZrLuSkF/BJs5RkuLM8gBl1lY6gp2brGq2RQzAp4D2SF2Iv+cmtraUr+Xa/I
	 uQOzs/ocnAgMKj4uYehaPmULIH6gRQzmsUs/VT34FiFtFPMAuEX4KLy4y8OTpCTwpO
	 B/nf2uXTCqiUtYS1TyVcVFEE/f5HiAwgduY6A/keYkZZv+J8OS8V+5l9v78iuh0Qrp
	 7qfn/Ccv6dniQO3C33YfZ9M7E9uXjFInNpriwfjBoGT38/hdGlOr70PWFUqBWwHlrp
	 E3C/ozNHnmhzuMrtbOM+8+l6u2KZACqsEul0l2LPp2uGOVfDUZ4UXbMkyRLiz/j/1q
	 d1jlvcCEKcPlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85AE640259;
	Fri,  5 Sep 2025 02:21:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4660AB69
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 02:21:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3868640396
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 02:21:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GgC0W8OspBOJ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 02:21:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=79.135.106.102;
 helo=mail-106102.protonmail.ch; envelope-from=preindl@protonmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 488DA40392
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 488DA40392
Received: from mail-106102.protonmail.ch (mail-106102.protonmail.ch
 [79.135.106.102])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 488DA40392
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 02:21:00 +0000 (UTC)
Date: Fri, 05 Sep 2025 02:20:52 +0000
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
From: Preindl <preindl@protonmail.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Message-ID: <odmZKRDZji6TR3elLw5LCOtSjE9Rz3-lHt0d3MZyoGurOniENhlrc7s08W9HN3VgOJG4lSPyAYAnwc4rt5NyZyS0PHO9kCrCjk2GlYxGHDo=@protonmail.com>
In-Reply-To: <re7_7zYnqyVPXjEEGmJepF9vbNV8u8ul2Cspq1ZrUmrc3gXuEgwm9Wi8Jk6kY63HpRYK3hJzyt0N0f-430xyADYxkeyaR3vAb-YVhsE0u6k=@protonmail.com>
References: <re7_7zYnqyVPXjEEGmJepF9vbNV8u8ul2Cspq1ZrUmrc3gXuEgwm9Wi8Jk6kY63HpRYK3hJzyt0N0f-430xyADYxkeyaR3vAb-YVhsE0u6k=@protonmail.com>
Feedback-ID: 18974102:user:proton
X-Pm-Message-ID: c9347241893b4efe84c0169ef4587e7a2f310ea6
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=protonmail.com; 
 s=protonmail3; t=1757038856; x=1757298056;
 bh=dNlvqJpLT0tt4Xb3yht/THJRTNEhTx28a/97adw00xc=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=irt9XxFF4OT4GwUlKTB3NlL77QvLX6JZvhkGQoJbcmwzA7c1TsCIcTeuO43NrgObz
 KUglmfl2DzY0J7v263OhCnryI57sfngOIQhhMCv2b6ITycxVtYkCPP5DSRZPn9TOp2
 fARJTv4fvb64dVBsiu5Ieia375lWa2D2/f+6WqpxWwuvcqMMcImt+wwt3PG9Czr1DC
 zRuTeLDBJw4xWPUQZnsfbFE0g3vK+zRnvf3meNDiQqvuM6oZDz+NBh6iOH2pwMsMzA
 2ZGOvWMGamNH7zUBAy2/CduTqPA9Um82jtuXYHP+anpsXgU4rAnGA30LtqMV2M6AJV
 oUhZ8/+Tml4Cw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=protonmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=protonmail.com header.i=@protonmail.com
 header.a=rsa-sha256 header.s=protonmail3 header.b=irt9XxFF
Subject: Re: [Intel-wired-lan] [BUG] igc: ASPM causes I226-V NIC to drop
 after idle
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello,
I'd like to add the following information/correction.

The issue can be traced to the following error that appears typically after=
 a period of inactivity
igc: Failed to read reg 0xc030!


The kernel parameter=C2=A0pcie_aspm=3Doff does not solve the issue.
I am now testing the parameters=C2=A0pcie_port_pm=3Doff and pcie_aspm.polic=
y=3Dperformance that mitigates the above error for some users.

This issue seems to be more common with Asus motherboards and may be reprod=
ucible with Intel I225-V NICs, see also
https://bbs.archlinux.org/viewtopic.php?id=3D288371https://forum.proxmox.co=
m/threads/network-card-drop-igc-0000-09-00-0-eno1-pcie-link-lost.121295/
https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethern=
et_controller_i225v_igc/
On Monday, September 1st, 2025 at 4:45 PM, Preindl <preindl@protonmail.com>=
 wrote:


> Hello,
>=20
> I am seeing an issue with the Intel I226-V Ethernet controller on an ASUS=
 ProArt X870E motherboard. When PCIe Active State Power Management (ASPM) i=
s enabled, the NIC becomes unavailable after a period of inactivity. Disabl=
ing ASPM avoids the problem.
>=20
> This looks like a hardware/firmware issue, but since it is easily reprodu=
cible (there are several forum discussions), it may warrant a kernel quirk =
in the igc driver to disable ASPM for this firmware (or device?).
>=20
> ---
>=20
> Hardware:
> - Motherboard: ASUS ProArt X870E
> - NIC: Intel I226-V [8086:125c] (rev 06)
> - Subsystem: [1043:8867]
> - Firmware version (from ethtool -i): 2023:889d
>=20
> Software:
> - OS: Debian GNU/Linux 13 (trixie)
> - Kernel: Linux 6.12.41+deb13-amd64
> - Driver: igc
>=20
> ---
>=20
> Steps to reproduce (logs attached)
> 1. Boot system with default PCIe ASPM enabled.
> 2. Leave the box/NIC idle for some time.
> 3. NIC disappears (reappears after reboot)
>=20
> Workaround:
> - Booting with pcie_aspm=3Doff (or disabling ASPM in BIOS) keeps the NIC =
stable.
>=20
> Expected:
> - NIC should remain functional with ASPM enabled.
>=20
> Actual:
> - NIC crashes at/after idle when ASPM is enabled.
>=20
> ---
>=20
> Please let me know if additional information or testing would help.


