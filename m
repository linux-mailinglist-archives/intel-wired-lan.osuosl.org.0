Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A84E887F3DB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 00:15:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 19D9F40B26;
	Mon, 18 Mar 2024 23:15:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k4oTXPwrfAix; Mon, 18 Mar 2024 23:15:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AFD840B17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710803729;
	bh=nXMR1FCsrUhKFpyVvzZjuepPGDVSJhviOw6VBxNUnww=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JdeicVhDpiv7WaFaY942W8iRjDh6gY40x8fRKonj4YNzt/hMva/FmD7/JENYT2ITP
	 INnZj+oncDeZA/EhGtRbsMEIXf+hgNssgiZNrkQnkqOINdxgxYGCE2k/Rs/az1BZih
	 cA4/OSl484CiyxllgCVHlU48mhDsFpyi8hCUfYlkYKBjGwvrkMaPnbZip/gHnXuFSd
	 bBp2MVseBV7XF34WOkpfC8X+Xesy7q/w/3PHes4tTcLyCL8u8TXMs9Dgy4JYaDtamt
	 vMYcxn4i75QUQA8Qs2US2MkTV7hi4RTEiM+cHY/lhdaS7WscIL2cnO25RCoOBhHnVQ
	 cMHBRSy+JTdhQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4AFD840B17;
	Mon, 18 Mar 2024 23:15:29 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 35D9C1BF2C1
 for <intel-wired-lan@osuosl.org>; Mon, 18 Mar 2024 19:06:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 20E7D404D9
 for <intel-wired-lan@osuosl.org>; Mon, 18 Mar 2024 19:06:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 26x0BrhlQoty for <intel-wired-lan@osuosl.org>;
 Mon, 18 Mar 2024 19:06:23 +0000 (UTC)
X-Greylist: delayed 408 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 18 Mar 2024 19:06:23 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5E7614042F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E7614042F
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a02:6b8:c0e:500:1:45:d181:d502; helo=forward502a.mail.yandex.net;
 envelope-from=me@0upti.me; receiver=<UNKNOWN> 
Received: from forward502a.mail.yandex.net (forward502a.mail.yandex.net
 [IPv6:2a02:6b8:c0e:500:1:45:d181:d502])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E7614042F
 for <intel-wired-lan@osuosl.org>; Mon, 18 Mar 2024 19:06:22 +0000 (UTC)
Received: from mail-nwsmtp-smtp-production-main-39.vla.yp-c.yandex.net
 (mail-nwsmtp-smtp-production-main-39.vla.yp-c.yandex.net
 [IPv6:2a02:6b8:c0d:1c00:0:640:7760:0])
 by forward502a.mail.yandex.net (Yandex) with ESMTPS id B283860FD5
 for <intel-wired-lan@osuosl.org>; Mon, 18 Mar 2024 21:59:30 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-39.vla.yp-c.yandex.net
 (smtp/Yandex) with ESMTPSA id TxIUs2BIZiE0-pGRABrCg; 
 Mon, 18 Mar 2024 21:59:30 +0300
X-Yandex-Fwd: 1
Message-ID: <5f3a02e1-4311-4a94-a5ae-d93c1f8c8370@0upti.me>
Date: Mon, 18 Mar 2024 21:59:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: intel-wired-lan@osuosl.org
References: <3179622f-7090-4a57-98ba-9042809a0d2a@its-lehmann.de>
 <9cf005c3-913f-47e2-a354-cba2ce968c48@its-lehmann.de>
From: Ilya K <me@0upti.me>
In-Reply-To: <9cf005c3-913f-47e2-a354-cba2ce968c48@its-lehmann.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 18 Mar 2024 23:15:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=0upti.me; s=mail; 
 t=1710788370; bh=nXMR1FCsrUhKFpyVvzZjuepPGDVSJhviOw6VBxNUnww=;
 h=In-Reply-To:From:Date:References:To:Subject:Message-ID;
 b=nhhkJbY79x5jW1cqlceFJADmnMN/c3RCJk7P7j779SItYPzyilno+WvQM9HHBJ/nE
 UJjFevJnucW+Dc2X0ExHCItd9j5SriHaSh7t17Zh749KPtivu4hxhZmDJFo8Ci1Gfq
 VxBLf/rRUHVEnFvHlVNXpxnF3tlZz4xOXzeZTF+A=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=0upti.me
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=0upti.me header.i=@0upti.me header.a=rsa-sha256
 header.s=mail header.b=nhhkJbY7
X-Mailman-Original-Authentication-Results: mail-nwsmtp-smtp-production-main-39.vla.yp-c.yandex.net;
 dkim=pass header.i=@0upti.me
Subject: Re: [Intel-wired-lan] intel i225 NIC loses PCIe link,
 network becomes unusable)
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024-02-26 17:10, Arno Lehmann wrote:
> Hi all,
> 
> I couldn't see any replies to this issue (but I'm also not subscribed to the list, probably something I should consider...) but I have another instance of the issue reported.
> 
> Now cc'ing other parties in the hope to get indication this is already solved (somehow) or will be looked into.
> 
Hi! Another affected user here, and it still happens pretty consistently on my Asus motherboard.

There are also more cases of this reported online:

- https://bugzilla.kernel.org/show_bug.cgi?id=216652
- https://forums.unraid.net/topic/133803-intel-ethernet-adapter-sporadically-losing-connectivity-until-reboot/
- https://forums.unraid.net/topic/138177-6115-igc-000009000-eth0-pcie-link-lost-ryzen-9-7950x-solved/
- https://www.reddit.com/r/buildapc/comments/xypn1m/network_card_intel_ethernet_controller_i225v_igc/
- https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2043307

I've tried every workaround (which mostly involve fiddling with power settings), but the card still locks up under load occasionally. I am also running a dual boot system with Windows 11, and this does not happen on the Windows side, so presumably it has something to do with software.

Is there any information I can provide to help debug this? It is extremely annoying.

Thanks in advance,
K
