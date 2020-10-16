Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4382901FD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Oct 2020 11:35:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B56AE204AE;
	Fri, 16 Oct 2020 09:35:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I6xO3auQ6UJe; Fri, 16 Oct 2020 09:35:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 196712E3EB;
	Fri, 16 Oct 2020 09:35:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 113241BF32B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Oct 2020 09:35:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 03235204AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Oct 2020 09:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FahSOtpR3feZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Oct 2020 09:35:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
 [209.85.219.47])
 by silver.osuosl.org (Postfix) with ESMTPS id 6305420363
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Oct 2020 09:35:27 +0000 (UTC)
Received: by mail-qv1-f47.google.com with SMTP id 13so793370qvc.9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Oct 2020 02:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=kTL8KbBSI0PcS7UrUtEs69uV66CPRIVv/CKLzegyajI=;
 b=JZlZclLMtR+uBeAFY9HIUeNr913zwNSPbLEYoyqZ23tLEVSsq9YVR4M9dR8aA+dFQH
 UqvW9U987TFG4FuzSfbdlwNRwbwtZtqp2iSDvWXEwMXoLdv9E7OvBz/mdEYN9lyzb3Ke
 xlcjENCsHFAX+SlZkRYk84RjGHYnycoY+tixuTmH0rBh9dxOarSFNb0ouLzIXNzWRRJO
 QJ03f8aJh61B6ewPxVTKbTKBAbkcPWBJ3r79IV7ccBgY1dopk3fjOVUrpYry2fsUI6t9
 fMmMPlpjgsVypIL81b+Ll2ZZJXDqUHYeDe7sJrtG/jnEmB2n9Av2EkU1cpRrqFb7POwI
 7YXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=kTL8KbBSI0PcS7UrUtEs69uV66CPRIVv/CKLzegyajI=;
 b=KomcFhD0+qKCER1rvdgGzoctn3iDW6Zbc7pRJOWlLgt1N35v01ANCLx7bCBXugwYbO
 ZpThob2dswNwp9AutDaxq23vVYDnxc3AxuWEoG0h1c9OqxCHLbar+yLbQJEaX5RsEC7x
 yO19Rod4QZLJdZWt/r1VPXbGY5DPfkQF9dAqTi6SJx+iqF1ePTUr5XhmcjnQ1xXU3amJ
 jIA03t+Gzm/GdC+Y5WjOzFOYEbcqxnwuRDp9OGVhEZZHFxGOPlyxyLIErWTWZJmK2TuO
 OCJEtBasJoOi4/zRqoIv6rGkD5R3c8xXGv75imvKrM5nVfIUy/V1jPtjubs1LK6N/miq
 WSFg==
X-Gm-Message-State: AOAM532zoLBKtl/zhInslu1wF9IObbvcGojNkLXtsa8T9g77DgM1K7oV
 QZ7ygrYN7/P8EExe128HlIcc7cF0kryYSEPg/cU=
X-Google-Smtp-Source: ABdhPJyYkAIJ3d4kEo3kKj4YzGbkdy7mSbNbEei4GIHZrw8zOCDqaO9v1XNwdZlHSVLwY2uKHlTDQaLT180uLZ75nPI=
X-Received: by 2002:a0c:9e0e:: with SMTP id p14mr2895900qve.25.1602840926171; 
 Fri, 16 Oct 2020 02:35:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZv=13q8NXbjdf7+R=wu0Q5=Vj9covZ24e9Ew2DCd7S==A@mail.gmail.com>
In-Reply-To: <CAA85sZv=13q8NXbjdf7+R=wu0Q5=Vj9covZ24e9Ew2DCd7S==A@mail.gmail.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Fri, 16 Oct 2020 11:35:15 +0200
Message-ID: <CAA85sZs9wswn06hd7ien2B_fyqFM9kEWL_-vXQN-sjhqisizaQ@mail.gmail.com>
To: jeffrey.t.kirsher@intel.com, 
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, 
 Linux Kernel Network Developers <netdev@vger.kernel.org>
Subject: Re: [Intel-wired-lan] ixgbe - only presenting one out of four
 interfaces on 5.9
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

Adding netdev, someone might have a clue of what to look at...

On Mon, Oct 12, 2020 at 9:20 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
>
> Hi,
>
> I was really surprised when i rebooted my firewall and there was
> network issues, I was even more surprised when
> only one of the four ports of my ixbe (x553) nic was available when booted.
>
> You can actually see it dmesg... And i tried some basic looking at
> changes to see if it was obvious.... but..
>
> anyway, on v5.8.14:
> dmesg |grep ixgbe
> [    1.355454] ixgbe: Intel(R) 10 Gigabit PCI Express Network Driver -
> version 5.1.0-k
> [    1.355455] ixgbe: Copyright (c) 1999-2016 Intel Corporation.
> [    1.711629] ixgbe 0000:06:00.0: Multiqueue Enabled: Rx Queue count
> = 12, Tx Queue count = 12 XDP Queue count = 0
> [    1.838170] ixgbe 0000:06:00.0: MAC: 6, PHY: 27, PBA No: 030000-000
> [    1.838173] ixgbe 0000:06:00.0: 0c:c4:7a:fa:3d:4a
> [    1.882060] ixgbe 0000:06:00.0: Intel(R) 10 Gigabit Network Connection
> [    1.882196] libphy: ixgbe-mdio: probed
> [    2.234835] ixgbe 0000:06:00.1: Multiqueue Enabled: Rx Queue count
> = 12, Tx Queue count = 12 XDP Queue count = 0
> [    2.361374] ixgbe 0000:06:00.1: MAC: 6, PHY: 27, PBA No: 030000-000
> [    2.361377] ixgbe 0000:06:00.1: 0c:c4:7a:fa:3d:4b
> [    2.405281] ixgbe 0000:06:00.1: Intel(R) 10 Gigabit Network Connection
> [    2.757541] ixgbe 0000:07:00.0: Multiqueue Enabled: Rx Queue count
> = 12, Tx Queue count = 12 XDP Queue count = 0
> [    2.884104] ixgbe 0000:07:00.0: MAC: 6, PHY: 27, PBA No: 030000-000
> [    2.884107] ixgbe 0000:07:00.0: 0c:c4:7a:fa:3d:4c
> [    2.928022] ixgbe 0000:07:00.0: Intel(R) 10 Gigabit Network Connection
> [    3.280728] ixgbe 0000:07:00.1: Multiqueue Enabled: Rx Queue count
> = 12, Tx Queue count = 12 XDP Queue count = 0
> [    3.407274] ixgbe 0000:07:00.1: MAC: 6, PHY: 27, PBA No: 030000-000
> [    3.407276] ixgbe 0000:07:00.1: 0c:c4:7a:fa:3d:4d
> [    3.451155] ixgbe 0000:07:00.1: Intel(R) 10 Gigabit Network Connection
> [    4.648725] ixgbe 0000:07:00.0 eno3: renamed from eth2
> [    4.659827] ixgbe 0000:06:00.0 eno1: renamed from eth0
> [    4.674272] ixgbe 0000:07:00.1 eno4: renamed from eth3
> [    4.685838] ixgbe 0000:06:00.1 eno2: renamed from eth1
> [    6.070294] ixgbe 0000:06:00.0: registered PHC device on eno1
> [    7.178307] ixgbe 0000:07:00.0: registered PHC device on eno3
> [    7.421199] ixgbe 0000:07:00.1: registered PHC device on eno4
> [    7.662712] ixgbe 0000:06:00.1: registered PHC device on eno2
> [    9.587640] ixgbe 0000:06:00.0 eno1: NIC Link is Up 1 Gbps, Flow
> Control: RX/TX
> [   10.605594] ixgbe 0000:07:00.1 eno4: NIC Link is Up 1 Gbps, Flow
> Control: RX/TX
> [   10.754615] ixgbe 0000:07:00.0 eno3: NIC Link is Up 1 Gbps, Flow
> Control: RX/TX
> [   10.768586] ixgbe 0000:06:00.1 eno2: NIC Link is Up 1 Gbps, Flow
> Control: RX/TX
>
> on 5.9:
> dmesg |grep ixbge
> [    1.570400] ixgbe: Intel(R) 10 Gigabit PCI Express Network Driver
> [    1.570401] ixgbe: Copyright (c) 1999-2016 Intel Corporation.
> [    1.928030] ixgbe 0000:06:00.0: Multiqueue Enabled: Rx Queue count
> = 12, Tx Queue count = 12 XDP Queue count = 0
> [    2.054554] ixgbe 0000:06:00.0: MAC: 6, PHY: 27, PBA No: 030000-000
> [    2.054556] ixgbe 0000:06:00.0: 0c:c4:7a:fa:3d:4a
> [    2.098404] ixgbe 0000:06:00.0: Intel(R) 10 Gigabit Network Connection
> [    2.098541] libphy: ixgbe-mdio: probed
> [    2.453350] ixgbe 0000:06:00.1: Multiqueue Enabled: Rx Queue count
> = 12, Tx Queue count = 12 XDP Queue count = 0
> [    2.579938] ixgbe 0000:06:00.1: MAC: 6, PHY: 27, PBA No: 030000-000
> [    2.579941] ixgbe 0000:06:00.1: 0c:c4:7a:fa:3d:4b
> [    2.623783] ixgbe 0000:06:00.1: Intel(R) 10 Gigabit Network Connection
> [    2.987339] ixgbe 0000:07:00.0: Multiqueue Enabled: Rx Queue count
> = 12, Tx Queue count = 12 XDP Queue count = 0
> [    3.113864] ixgbe 0000:07:00.0: MAC: 6, PHY: 27, PBA No: 030000-000
> [    3.113867] ixgbe 0000:07:00.0: 0c:c4:7a:fa:3d:4c
> [    3.157635] ixgbe 0000:07:00.0: Intel(R) 10 Gigabit Network Connection
> [    3.529503] ixgbe 0000:07:00.1: Multiqueue Enabled: Rx Queue count
> = 12, Tx Queue count = 12 XDP Queue count = 0
> [    3.656041] ixgbe 0000:07:00.1: MAC: 6, PHY: 27, PBA No: 030000-000
> [    3.656043] ixgbe 0000:07:00.1: 0c:c4:7a:fa:3d:4d
> [    3.699856] ixgbe 0000:07:00.1: Intel(R) 10 Gigabit Network Connection
> [    4.646247] ixgbe 0000:06:00.0 eno1: renamed from eth0
> [    6.183074] ixgbe 0000:06:00.0: registered PHC device on eno1
> [    9.570382] ixgbe 0000:06:00.0 eno1: NIC Link is Up 1 Gbps, Flow
> Control: RX/TX
>
> lspci....
> 06:00.0 Ethernet controller: Intel Corporation Ethernet Connection
> X553 1GbE (rev 11)
> 06:00.1 Ethernet controller: Intel Corporation Ethernet Connection
> X553 1GbE (rev 11)
> 07:00.0 Ethernet controller: Intel Corporation Ethernet Connection
> X553 1GbE (rev 11)
> 07:00.1 Ethernet controller: Intel Corporation Ethernet Connection
> X553 1GbE (rev 11)
>
> ethtool -i eno1 and eno2
> driver: ixgbe
> version: 5.1.0-k
> firmware-version: 0x80000877
> expansion-rom-version:
> bus-info: 0000:06:00.0 (and 0000:06:00.1)
> supports-statistics: yes
> supports-test: yes
> supports-eeprom-access: yes
> supports-register-dump: yes
>
> while eno3 and eno4 gives:
> driver: ixgbe
> version: 5.1.0-k
> firmware-version: 0x8000087c
> expansion-rom-version:
> bus-info: 0000:07:00.0 (and 0000:07:00.1)
> supports-statistics: yes
> supports-test: yes
> supports-eeprom-access: yes
> supports-register-dump: yes
> supports-priv-flags: yes
>
> Any ideas?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
