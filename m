Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDBA790D5E
	for <lists+intel-wired-lan@lfdr.de>; Sun,  3 Sep 2023 19:58:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA57960ECF;
	Sun,  3 Sep 2023 17:58:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA57960ECF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693763927;
	bh=pvXXXUE3SLK2jcqdt+QvIylbF20hwZNI3JG326UfQxk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=chXnc3wcdY+j70QiCt0Rc0f9YxmKYNtpE/jSsNWqUB0qNrA5RgFUDYaMhLOtL+zH6
	 TOnyOBUEDWlLpMeHz2VXxp9exoGVfS5lFd06oNy0q8fCZNZWIv74+yRv03698UaStD
	 DhS1hn3M5wLRdIqXllcxgYnWEBhI9SPSHWtbuK77JC/+PIUMsTJN9fNMNhsxU1G50r
	 QxL4zGS3+SO8X7lv+scpSsm4wpP2YUZA/VDnbAgXX+s17aTVSMw46kcTehHlwC9V2l
	 7/HRKelduIKCjaoysfHeLdGMpe93UAskftojhyWTQ5GsvcmqlC3S/su2WWH/graK2L
	 wX7dX9n3m0Dbw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Aeoafn3AuDxd; Sun,  3 Sep 2023 17:58:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8ADB460B05;
	Sun,  3 Sep 2023 17:58:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8ADB460B05
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ADE531BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Sep 2023 17:58:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7B1C0408FC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Sep 2023 17:58:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B1C0408FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ECWRntO0mzzi for <intel-wired-lan@lists.osuosl.org>;
 Sun,  3 Sep 2023 17:58:38 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1F744408EC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Sep 2023 17:58:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F744408EC
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 915BC60E05;
 Sun,  3 Sep 2023 17:58:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8F2FC433C7;
 Sun,  3 Sep 2023 17:58:33 +0000 (UTC)
From: James Hogan <jhogan@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Sun, 03 Sep 2023 18:57:46 +0100
Message-ID: <2158798.irdbgypaU6@saruman>
In-Reply-To: <87zg2alict.fsf@intel.com>
References: <20220811151342.19059-1-vinicius.gomes@intel.com>
 <5962826.lOV4Wx5bFT@saruman> <87zg2alict.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1693763915;
 bh=HHN7TtKjh8/irZevGxQsYwPgVQottw+Irb2rc4Pquos=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=D0+CCUE4MWxM5MoC50KEbunQ3SXgwUzmAT89Di6mVbn6xGvE7TUDb+utwBS5brGAZ
 VLFYcyISHFNOluCKrDjvvUIM8jJapymwAB1zWhCPh4sCg6gbCyvVDMGkqkEMDwDxPm
 fixLEf+vrt4IHlc/Lcc73H5XPes7eyVIbBpoyeMZSSVWTZCSGFyeqi8nFE5EnYfvhQ
 vnbr6CPv+vQKG59Gs0wqgOtFS7BOV+pS2LIXDCxLnmq38s/TyWjc1zNSh7xae+Lz87
 UAHquydIaoCmvzho40EJIWzR2ZFUJC8Ae9+zYTRryTmxiNdG7dTkIdmfWWcewUZrau
 DsqfDmsRhcm5A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=D0+CCUE4
Subject: Re: [Intel-wired-lan] [WIP v2] igc: fix deadlock caused by taking
 RTNL in RPM resume path
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tuesday, 29 August 2023 02:58:42 BST Vinicius Costa Gomes wrote:
> James Hogan <jhogan@kernel.org> writes:
> > On Sunday, 2 October 2022 11:56:28 BST James Hogan wrote:
> >> On Monday, 29 August 2022 09:16:33 BST James Hogan wrote:
> >> > I'd be great to have this longstanding issue properly fixed rather than
> >> > having to carry a patch locally that may not be lock safe.
> >> > 
> >> > Also, any tips for diagnosing the issue of the network link not coming
> >> > back
> >> > up after resume? I sometimes have to unload and reload the driver
> >> > module
> >> > to
> >> > get it back again.
> >> 
> >> Any thoughts on this from anybody?
> > 
> > Ping... I've been carrying this patch locally on archlinux for almost a
> > year now. Every time I update my kernel and forget to rebuild with the
> > patch it catches me out with deadlocks after resume, and even with the
> > patch I frequently have to reload the igc module after resume to get the
> > network to come up (which is preferable to deadlocks but still really
> > sucks). I'd really appreciate if it could get some attention.
> 
> I am setting up my test systems to reproduce the deadlocks, then let's
> see what ideas happen about removing the need for those locks.
> 
> About the link failures, are there any error messages in the kernel
> logs? (also, if you could share those logs, can be off-list, it would
> help) I am trying to think what could be happening, and how to further
> debug this.

Looking through the resume log, the only network/igc related items are these:

Sep 03 18:28:17 saruman kernel: igc 0000:06:00.0 enp6s0: NIC Link is Up 1000 Mbps Full Duplex, Flow Control: RX
Sep 03 18:28:17 saruman NetworkManager[1016]: <info>  [1693762097.7180] manager: sleep: wake requested (sleeping: yes  enabled: yes)
Sep 03 18:28:17 saruman NetworkManager[1016]: <info>  [1693762097.7181] device (enp6s0): state change: activated -> unmanaged (reason 'sleeping', sys-iface-state: 'managed')
Sep 03 18:28:17 saruman avahi-daemon[989]: Withdrawing address record for 192.168.1.239 on enp6s0.
Sep 03 18:28:17 saruman avahi-daemon[989]: Leaving mDNS multicast group on interface enp6s0.IPv4 with address 192.168.1.239.
Sep 03 18:28:17 saruman avahi-daemon[989]: Interface enp6s0.IPv4 no longer relevant for mDNS.
Sep 03 18:28:17 saruman NetworkManager[1016]: <info>  [1693762097.8202] manager: NetworkManager state is now CONNECTED_GLOBAL
Sep 03 18:28:17 saruman NetworkManager[1016]: <info>  [1693762097.8657] manager: NetworkManager state is now DISCONNECTED
Sep 03 18:28:17 saruman NetworkManager[1016]: <info>  [1693762097.8660] device (enp6s0): state change: unmanaged -> unavailable (reason 'managed', sys-iface-state: 'external')
Sep 03 18:28:17 saruman systemd[1]: Starting Network Manager Script Dispatcher Service...
Sep 03 18:28:17 saruman systemd[1]: Started Network Manager Script Dispatcher Service.
Sep 03 18:28:21 saruman NetworkManager[1016]: <info>  [1693762101.3075] device (enp6s0): carrier: link connected
Sep 03 18:28:21 saruman NetworkManager[1016]: <info>  [1693762101.3076] device (enp6s0): state change: unavailable -> disconnected (reason 'carrier-changed', sys-iface-state: 'managed')
Sep 03 18:28:21 saruman NetworkManager[1016]: <info>  [1693762101.3080] policy: auto-activating connection 'Wired connection 1' (f6634f16-77ca-34f7-846a-8c41e15a8ad1)
Sep 03 18:28:21 saruman NetworkManager[1016]: <info>  [1693762101.3082] device (enp6s0): Activation: starting connection 'Wired connection 1' (f6634f16-77ca-34f7-846a-8c41e15a8ad1)
Sep 03 18:28:21 saruman NetworkManager[1016]: <info>  [1693762101.3082] device (enp6s0): state change: disconnected -> prepare (reason 'none', sys-iface-state: 'managed')
Sep 03 18:28:21 saruman NetworkManager[1016]: <info>  [1693762101.3083] manager: NetworkManager state is now CONNECTING
Sep 03 18:28:21 saruman kernel: igc 0000:06:00.0 enp6s0: NIC Link is Up 1000 Mbps Full Duplex, Flow Control: RX
Sep 03 18:28:21 saruman kernel: IPv6: ADDRCONF(NETDEV_CHANGE): enp6s0: link becomes ready
Sep 03 18:28:21 saruman NetworkManager[1016]: <info>  [1693762101.3506] device (enp6s0): state change: prepare -> config (reason 'none', sys-iface-state: 'managed')
Sep 03 18:28:21 saruman NetworkManager[1016]: <info>  [1693762101.3512] device (enp6s0): state change: config -> ip-config (reason 'none', sys-iface-state: 'managed')
Sep 03 18:28:21 saruman NetworkManager[1016]: <info>  [1693762101.3515] policy: set 'Wired connection 1' (enp6s0) as default for IPv4 routing and DNS
Sep 03 18:28:21 saruman avahi-daemon[989]: Joining mDNS multicast group on interface enp6s0.IPv4 with address 192.168.1.239.
Sep 03 18:28:21 saruman avahi-daemon[989]: New relevant interface enp6s0.IPv4 for mDNS.
Sep 03 18:28:21 saruman avahi-daemon[989]: Registering new address record for 192.168.1.239 on enp6s0.IPv4.
Sep 03 18:28:22 saruman systemd[1]: systemd-rfkill.service: Deactivated successfully.
Sep 03 18:28:23 saruman NetworkManager[1016]: <info>  [1693762103.3544] device (enp6s0): state change: ip-config -> ip-check (reason 'none', sys-iface-state: 'managed')
Sep 03 18:28:23 saruman NetworkManager[1016]: <info>  [1693762103.3553] device (enp6s0): state change: ip-check -> secondaries (reason 'none', sys-iface-state: 'managed')
Sep 03 18:28:23 saruman NetworkManager[1016]: <info>  [1693762103.3554] device (enp6s0): state change: secondaries -> activated (reason 'none', sys-iface-state: 'managed')
Sep 03 18:28:23 saruman NetworkManager[1016]: <info>  [1693762103.3555] manager: NetworkManager state is now CONNECTED_SITE
Sep 03 18:28:23 saruman NetworkManager[1016]: <info>  [1693762103.3556] device (enp6s0): Activation: successful, device activated.
Sep 03 18:28:27 saruman NetworkManager[1016]: <info>  [1693762107.3532] device (enp6s0): state change: activated -> unavailable (reason 'carrier-changed', sys-iface-state: 'managed')
Sep 03 18:28:27 saruman avahi-daemon[989]: Withdrawing address record for 192.168.1.239 on enp6s0.
Sep 03 18:28:27 saruman avahi-daemon[989]: Leaving mDNS multicast group on interface enp6s0.IPv4 with address 192.168.1.239.
Sep 03 18:28:27 saruman avahi-daemon[989]: Interface enp6s0.IPv4 no longer relevant for mDNS.
Sep 03 18:28:27 saruman NetworkManager[1016]: <info>  [1693762107.5266] manager: NetworkManager state is now CONNECTED_LOCAL
Sep 03 18:28:27 saruman NetworkManager[1016]: <info>  [1693762107.5267] manager: NetworkManager state is now DISCONNECTED
Sep 03 18:28:27 saruman systemd[1]: NetworkManager-dispatcher.service: Deactivated successfully.

As mentioned previously, CONFIG_PROVE_LOCKING=y and I'm seeing splats during boot, notably RTNL assertion failed at net/core/dev.c (2877) and suspicious RCU usage.

Cheers
James


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
