Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C80AE75804F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 17:02:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D76660FD2;
	Tue, 18 Jul 2023 15:02:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D76660FD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689692559;
	bh=4EzkJpd+4nnpntP11xPcuOR6u3EdpVajBYTRLFwO/Zw=;
	h=Date:To:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=r2a0wzB6Kj8JM5aGdjwonEmNfrLdba/tdKOHQZkvUctOU0SB56TjYLXtCe8tOsCW1
	 fEU5AONHcpkVNXrrkJpA22pc1XMqW/vlw5WmEW6KmPxkH/FA2sFHyL9RMUNKL6aFdH
	 AsABB8fakzE9mH31jPY+WrCfM6B0jKC/0zuOvr0U9Zpc8CDQGuJ3krxEnBAxUfEtP3
	 TBEIDXz8dYApVdhhfViHFVV6Ibmb+sNdQr0xgITkQtN3XE/46Ns+DboxKORTVp2o9s
	 V1xLydL2npDEUCl9qBfIa4lZsO6CT1rO76R1mWiz37ZQouGzFSRZz6I3pfhTVof8CF
	 DhYWRznbuAc8g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 94D6DJArJ2ti; Tue, 18 Jul 2023 15:02:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C004160BB2;
	Tue, 18 Jul 2023 15:02:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C004160BB2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 91B631BF95C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 00:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 68E7181DE7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 00:51:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68E7181DE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tOxSbicIfjmM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jul 2023 00:51:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C58681D7C
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com
 [IPv6:2607:f8b0:4864:20::22b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C58681D7C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 00:51:38 +0000 (UTC)
Received: by mail-oi1-x22b.google.com with SMTP id
 5614622812f47-3a1ebb79579so3628767b6e.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 17:51:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689641497; x=1692233497;
 h=content-transfer-encoding:subject:from:cc:to:content-language
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=lz+8CarDNbfuh8OfKKezu1WG0K0jECzwZysn86ImSis=;
 b=eR/tLKzlEACKWSkRliz3cfrvXWjostJm4kG13njiSNRXkk9ABrwc0SOLZYK/byE21V
 huljt7UdgHaNJ/xhbtnqqB6aY6XzuzeOH4rvfwMZAwZvBxA3cdh8PRUCdva0D90t6ckq
 oVEjRjnhGIzjFXge1Y+atBa6Env8itABHb9byT5mtP5neFNnVebf4RfCM8k87os/HHiA
 DuamGQlMtn2nILJLZJR8woMwLasGMSYLwZcQPA1k0yEt0UJWFfebnJhXVNfntFbjbEva
 VvHdhPXZh7w9IoMNmOcKhyPFkeSvm0aQz0USicKDM59IiA2qKhSNe88XUVuFjOaV4XkW
 E0BA==
X-Gm-Message-State: ABy/qLZvRnZkFnyj14igoTZN9vhN9inJr10Q5YHjXW8DPhxKdZwU82g+
 nuzeezaJCZS3bcaUcMVujDE=
X-Google-Smtp-Source: APBJJlGeBHqkRxL+zWXusQBpUdihf6v3b11hnUADferAFcbDtzk1JOfTMdtHdDSOktc+ANmDRfwJnQ==
X-Received: by 2002:a05:6358:6f97:b0:133:a8e:6feb with SMTP id
 s23-20020a0563586f9700b001330a8e6febmr9453004rwn.12.1689641496991; 
 Mon, 17 Jul 2023 17:51:36 -0700 (PDT)
Received: from [192.168.0.104] ([103.131.18.64])
 by smtp.gmail.com with ESMTPSA id
 j7-20020a62e907000000b00673e652985esm53912pfh.44.2023.07.17.17.51.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Jul 2023 17:51:36 -0700 (PDT)
Message-ID: <e79edb0f-de89-5041-186f-987d30e0187c@gmail.com>
Date: Tue, 18 Jul 2023 07:51:24 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Andrzej Kacprowski <andrzej.kacprowski@linux.intel.com>,
 Krystian Pradzynski <krystian.pradzynski@linux.intel.com>,
 Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>,
 Jacek Lawrynowicz <jacek.lawrynowicz@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "Linux regression tracking (Thorsten Leemhuis)" <regressions@leemhuis.info>,
 hq.dev+kernel@msdfc.xyz
From: Bagas Sanjaya <bagasdotme@gmail.com>
X-Mailman-Approved-At: Tue, 18 Jul 2023 15:02:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1689641497; x=1692233497;
 h=content-transfer-encoding:subject:from:cc:to:content-language
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lz+8CarDNbfuh8OfKKezu1WG0K0jECzwZysn86ImSis=;
 b=EZApaMs4gPJVrUIaeSPlMHa2Ubxx+ljVSgRceCanZxrxGNNKcrHVRdwxqf+J/i93eS
 bCVCmkZGoBTZIrpNuD7CYzc3Vd6qp+GujdSJoHFaZnudn11SQ22BfE3l/Rgd9in/Dlgq
 OxKFNtL93tIqLR/181oyic7HVL4EIEmsi6FsT2n1n8790US2gL6QHJke2g5bj7niI1YT
 47JlDZF/+b7YI7ApdN9OgTGyXQvEfGFHlRZ79pUoaS5fSUOdlnYK3KZN6KlM4PNB5G4D
 pZHZKTjVpoljidyzHjHOC6/wblYRuPi6qW6/WvfnrnEAP5HeSi57xsmv8NeKpRv+0OqW
 WVlw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=EZApaMs4
Subject: [Intel-wired-lan] Fwd: Unexplainable packet drop starting at v6.4
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
Cc: Linux Networking <netdev@vger.kernel.org>,
 Linux Intel Ethernet Drivers <intel-wired-lan@lists.osuosl.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux DRI Development <dri-devel@lists.freedesktop.org>,
 Linux Regressions <regressions@lists.linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

I notice a regression report on Bugzilla [1]. Quoting from it:

> Hi,
> 
> After I updated to 6.4 through Archlinux kernel update, suddenly I noticed random packet losses on my routers like nodes. I have these networking relevant config on my nodes
> 
> 1. Using archlinux
> 2. Network config through systemd-networkd
> 3. Using bird2 for BGP routing, but not relevant to this bug.
> 4. Using nftables for traffic control, but seems not relevant to this bug. 
> 5. Not using fail2ban like dymanic filtering tools, at least at L3/L4 level
> 
> After I ruled out systemd-networkd, nftables related issues. I tracked down issues to kernel.
> 
> Here's the tcpdump I'm seeing on one side of my node ""
> 
> ```
> sudo tcpdump -i fios_wan port 38851
> tcpdump: verbose output suppressed, use -v[v]... for full protocol decode
> listening on fios_wan, link-type EN10MB (Ethernet), snapshot length 262144 bytes
> 10:33:06.073236 IP [BOS1_NODE].38851 > [REDACTED_PUBLIC_IPv4_1].38851: UDP, length 148
> 10:33:11.406607 IP [BOS1_NODE].38851 > [REDACTED_PUBLIC_IPv4_1].38851: UDP, length 148
> 10:33:16.739969 IP [BOS1_NODE].38851 > [REDACTED_PUBLIC_IPv4_1].38851: UDP, length 148
> 10:33:21.859856 IP [BOS1_NODE].38851 > [REDACTED_PUBLIC_IPv4_1].38851: UDP, length 148
> 10:33:27.193176 IP [BOS1_NODE].38851 > [REDACTED_PUBLIC_IPv4_1].38851: UDP, length 148
> 5 packets captured
> 5 packets received by filter
> 0 packets dropped by kernel
> ```
> 
> But on the other side "[REDACTED_PUBLIC_IPv4_1]", tcpdump is replying packets in this wireguard stream. So packet is lost somewhere in the link.
> 
> From the otherside, I can do "mtr" to "[BOS1_NODE]"'s public IP and found the moment the link got lost is right at "[BOS1_NODE]", that means "[BOS1_NODE]"'s networking stack completely drop the inbound packets from specific ip addresses.
> 
> Some more digging
> 
> 1. This situation began after booting in different delays. Sometimes can trigger after 30 seconds after booting, and sometimes will be after 18 hours or more.
> 2. It can envolve into worse case that when I do "ip neigh show", the ipv4 ARP table and ipv6 neighbor discovery start to appear as "invalid", meaning the internet is completely loss.
> 3. When this happened to wan facing interface, it seems OK with lan facing interfaces. WAN interface was using Intel X710-T4L using i40e and lan side was using virtio
> 4. I tried to bisect in between 6.3 and 6.4, and the first bad commit it reports was "a3efabee5878b8d7b1863debb78cb7129d07a346". But this is not relevant to networking at all, maybe it's the wrong commit to look at. At the meantime, because I haven't found a reproducible way of 100% trigger the issue, it may be the case during bisect some "good" commits are actually bad. 
> 5. I also tried to look at "dmesg", nothing interesting pop up. But I'll make it available upon request.
> 
> This is my first bug reports. Sorry for any confusion it may lead to and thanks for reading.

See Bugzilla for the full thread.

Thorsten: The reporter had a bad bisect (some bad commits were marked as good
instead), hence SoB chain for culprit (unrelated) ipvu commit is in To:
list. I also asked the reporter (also in To:) to provide dmesg and request
rerunning bisection, but he doesn't currently have a reliable reproducer.
Is it the best I can do?

Anyway, I'm adding this regression to be tracked in regzbot:

#regzbot introduced: a3efabee5878b8 https://bugzilla.kernel.org/show_bug.cgi?id=217678
#regzbot title: packet drop on Intel X710-T4L due to ipvu boot fix

Thanks.

[1]: https://bugzilla.kernel.org/show_bug.cgi?id=217678

-- 
An old man doll... just what I always wanted! - Clara
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
