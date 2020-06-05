Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBDD1F2175
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jun 2020 23:25:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 250B620C92;
	Mon,  8 Jun 2020 21:25:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hbYZ1AJ2WcJJ; Mon,  8 Jun 2020 21:25:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B6F13221C6;
	Mon,  8 Jun 2020 21:25:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 578D91BF30A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 11:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 533FC883B1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 11:19:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V6nEMyUGoBAG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jun 2020 11:19:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9023B8143A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 11:19:00 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id v79so9196326qkb.10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 05 Jun 2020 04:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=xKdIBK6vh4VrwRo6cjMZDF/++YitYxEh+O1ta8sFAX4=;
 b=J/5nO8J8aaJCA1OnfhlDWFWOO0giSgmnxwbUiwQi3BJLrGDhnZjG4OL+dx03rlhet3
 wEmGnXRe+JToSrrbUe+LVLxJfyPQ1N8FXK/arFqWGrV+vt/qkn9EJM++81aijnNsCzz8
 s6CRAIjvVEaz1jiz/BhTyka+rZUOplNEvohthX35NLIatoRPxh0AM9ufyc3htFeK4n+Q
 Q5wdPJ2H08JRWP8PR+l5WB2JmMdAVgG3WRbnPpcR2IGQtQaRYGjmfDUu35tGu7myR63h
 lBGu9SdDu0wH6LGAN/pOIgbIxmFZj8PxnggQPWmioglEEnaxfWudSjSlK4pBeiXQDh1Y
 CIHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=xKdIBK6vh4VrwRo6cjMZDF/++YitYxEh+O1ta8sFAX4=;
 b=neiq7Sh1zEpuRPHq+m9zJr/wCiF+h0SCB1ixzjcDDxBGmzoAbAit/x5xKFqS9a5PPw
 UvXl1RhG+uG5XBQpwdxFAROmjMOKui08AU9AlAj/LSLBV6H5d+P24pxe71GcR3MhyHjR
 ko81MxKi+rOaKeBsFiKfMgWo2UveiL5zFOkmWJxacjFBEysnfGlIFWkrazR7ebxmDuGs
 3do+0PUuQ48EabAXdSvZ4uLRL/uUTS015viQedcCtGxJSqvIEn8gF1jzsI7xyI0RPiXU
 Jc/yFcxNMak0i97W1BRkTlGhoYgIhLctJ0GDEKQrbkgXzcPfYhem+WtHSemzZEI3LCRk
 F3xw==
X-Gm-Message-State: AOAM5339gap+bNoqwG4/KTln3EwlbU6pj+rV48bzWx4lG589mFJJIqB9
 NT9Rp6QWgQJEW042c8iqAmC9ewGCdfxurD9mXOI=
X-Google-Smtp-Source: ABdhPJz/A8QiAlYMGPMyHDI/afZkGU7/ekTUJK8zlwR/wWh1AqC4BotbO4+uB+zikL/nBNrzygmIEAWFOTo7OtIPxJw=
X-Received: by 2002:a37:a789:: with SMTP id q131mr8956849qke.19.1591355939499; 
 Fri, 05 Jun 2020 04:18:59 -0700 (PDT)
MIME-Version: 1.0
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Date: Fri, 5 Jun 2020 16:18:48 +0500
Message-ID: <CAN_LGv1uTo2MNso8nT0adWXJ_wGbX5VoiNn9xKoJDR1q04g6FQ@mail.gmail.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, 
 Alexander Duyck <aduyck@mirantis.com>
X-Mailman-Approved-At: Mon, 08 Jun 2020 21:25:38 +0000
Subject: [Intel-wired-lan] VLAN-aware bridge and i40e driver problem
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

Hello,

We have some new servers with this kind of dual-port 40GbE network
cards, supported by the in-tree i40e driver:

21:00.0 Ethernet controller [0200]: Intel Corporation Ethernet
Controller XL710 for 40GbE QSFP+ [8086:1583] (rev 02)
21:00.1 Ethernet controller [0200]: Intel Corporation Ethernet
Controller XL710 for 40GbE QSFP+ [8086:1583] (rev 02)

On each server, the two network ports (exposed as enp33s0f0 and
enp33s0f1) are used as slaves of the "bond0" interface, which is
itself used as a port of a vlan-aware bridge (vmbr0). There are tap
interfaces for KVM virtual machines that are also in this bridge, and
assigned to different VLANs as needed. The bond0 interface carries all
VLANs, and is essentially used as a "trunk port".

This is Proxmox (a Debian-based system), so the VLANs are added to the
bond0 interface at boot time via the /etc/network/if-up.d/bridgevlan
script, which runs essentially this:

    port=bond0
    bridge vlan add dev $port vid 2-4094

And here is why this behaves badly.

The "bridge" command does send the whole "add vids" request as a
single netlink message, so there are no inefficiencies at this step.
Then, the bond driver attempts to pass down the VLAN filter down to
the underlying hardware (i.e. to the i40e driver), and that's where
things go downhill.

Apparently the driver attempts to add the VIDs to the hardware filter
one-by-one. And then, after adding 256 VIDs, it hits the hardware
limit and complains:

    i40e 0000:21:00.0: Error I40E_AQ_RC_ENOSPC, forcing overflow
promiscuous on PF

And then goes on to process the next VID, also noticing that it is
beyond the hardware limit, and so on. Result: 3839 lines of log spam
from each network port, and more than 1 minute spent fighting with the
hardware (i.e. slow boot). After that, VLAN filtering and dispatching
of packets to VMs are done in software, and done correctly.

In this setup, the hardware VLAN filtering capability of the card is
useless, because there is actually nothing to filter out from the
wire. However, the slow boot and the log spam annoy sysadmins here. It
would have been better if the i40e driver somehow saw beforehand that
the whole VLAN filtering request is beyond the abilities of the
hardware, and did not attempt to add, fruitlessly, the VID entries
one-by-one. After all, on other servers, with "Mellanox Technologies
MT27700 Family [ConnectX-4] [15b3:1013]" (mlx5_core driver), it takes
less than 1 second to add these VLANs to bond0. Is it because the
Mellanox card is somehow better, or is it just a gross inefficiency of
the i40e driver? Could anyone familiar with the card please try to fix
the i40e driver?

I have tried to force the VLAN filtering in software, via ethtool:

    ethtool -K enp33s0f0 rx-vlan-filter off

But it doesn't work, because (since at least commit
b0fe3306432796c8f7adbede8ccd479bb7b53d0a, which adds it to
netdev->features but not netdev->hw_features) this is not a
user-changeable option on i40e. Question to the driver maintainers:
why is it so?

P.S. We have finally found and adopted this workaround:

    ethtool -K bond0 rx-vlan-filter off

...and things work reasonably well: fast boot, no log spam, okay-ish
performance (14.5 Gbps per CPU core).

P.P.S. I suspect that it would have been better to use macvlan instead
of the VLAN-aware bridge, but for legacy reasons we can't do that.

-- 
Alexander E. Patrakov
CV: http://pc.cd/PLz7
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
