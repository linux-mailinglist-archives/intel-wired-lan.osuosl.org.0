Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 188AD497737
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jan 2022 03:23:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1609881400;
	Mon, 24 Jan 2022 02:23:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tPS2uaKWZeow; Mon, 24 Jan 2022 02:23:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9FB48139D;
	Mon, 24 Jan 2022 02:23:52 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 172FE1BF3C1
 for <intel-wired-lan@osuosl.org>; Sat, 22 Jan 2022 17:35:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F3966401A3
 for <intel-wired-lan@osuosl.org>; Sat, 22 Jan 2022 17:35:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0M_Ge9SPq7Oc for <intel-wired-lan@osuosl.org>;
 Sat, 22 Jan 2022 17:35:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1DE1B400CE
 for <intel-wired-lan@osuosl.org>; Sat, 22 Jan 2022 17:35:26 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id n8so11649778plc.3
 for <intel-wired-lan@osuosl.org>; Sat, 22 Jan 2022 09:35:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=NC00FQZkPli1D1BtoEsY+PBdGpejLpQef7FGAXlHrnM=;
 b=no0m2TPoYcZjENA4FAoSXOR7ubvflzAe76nWYingaYdAYRGEfg+Xneu4gLHzRtJZUK
 uNFoHi1g6s7M6xTfvm1MbfZTiA6AehAG2KdFc8OlLhvs94ohxSW6MVJDMDWik6XQTydk
 R9z7WVkwH8FmGy9jj6d6iLsuzlP5xIC59GuV2t/JuC0xzwsK9DHf5PlxV0JQDVpCqyzs
 6ClE3DJe5Fvjlh/8d6JZzS+12rBIBk89WHM1U9h0GqxqpvYyPrF9LpOxhDxepWPiMEK+
 Lb5e50kNarSS1V6NYe1p5xQC/iJlhshge13MAbpyt4ZcujocjDcIht0KdI35DmoidHnc
 5zCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=NC00FQZkPli1D1BtoEsY+PBdGpejLpQef7FGAXlHrnM=;
 b=yXb9UQM20co24psfOpjDg1tteJmQyq6byoj+FCHMIBDJyf9erh0V8yfD33ZkqX7zaX
 pllC6iElxK+PcgBem0aXQkn5MxyN/uIpI2L+gaTLdy5RaqDwD0IB7zeejBgylMvzCb6C
 WBLVMd88yw0mJsjO1nlpf19daBaPhJId0P7yK+0qBgakN6V+Z1IdQhVAoDeA5Ms5/bIg
 SUQuENxrjMEJvone6D2EBHFYYY9HAwA+1UtBG1T2OdKkeNFMckqKYxJhkxvdo2c7aiXD
 8KvBsBRij5X8hXz5jJbqhsOmhQ1uNM4f1QEqO8+LFZE4Cc/m++T677Ge4F+5d8+8QPZP
 Wy4Q==
X-Gm-Message-State: AOAM533RPdGnAhlbzOHv7YsBD8p7Kute1h3ufyHXUm6AMVXaUSue+MXd
 dbBd3nx+IWHbkqh5zDRYgvJLaX++jNFqO8z0vK4ACxk2
X-Google-Smtp-Source: ABdhPJwYePl0qfLGIAXm41JGyC9JQy2q3GZR81FkZL/Girn6GvDge0OaCQOQWtTNWQu9zrsqi90OC5eGtWZTf6NFbZU=
X-Received: by 2002:a17:903:18b:b0:14b:2aa6:d36 with SMTP id
 z11-20020a170903018b00b0014b2aa60d36mr4985803plg.127.1642872926173; Sat, 22
 Jan 2022 09:35:26 -0800 (PST)
MIME-Version: 1.0
References: <CALidq=UDYtC08Y0v+jsmkuro16CgBggW=B1PHmhn=6NyTN+G=Q@mail.gmail.com>
In-Reply-To: <CALidq=UDYtC08Y0v+jsmkuro16CgBggW=B1PHmhn=6NyTN+G=Q@mail.gmail.com>
From: Martin Zaharinov <micron10@gmail.com>
Date: Sat, 22 Jan 2022 19:35:15 +0200
Message-ID: <CALidq=UTiDv6V0psq0CxJ8vqmEC8JxjAtY=u88oKcahNbB342w@mail.gmail.com>
To: intel-wired-lan@osuosl.org, jacob.e.keller@intel.com, 
 jedrzej.jagielski@intel.com, gurucharanx.g@intel.com, 
 jesse.brandeburg@intel.com, Eric Dumazet <edumazet@google.com>
X-Mailman-Approved-At: Mon, 24 Jan 2022 02:23:48 +0000
Subject: [Intel-wired-lan] Fwd: Intel i40e driver problem when is enable
 rx-vlan-filter: on [fixed]
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

Hello Intel Team

We found one big problem(Bug) in intel i40e driver .

test kernel is 5.16.2
Card : INtel XL710 (AOC-S40G-i2Q (Supermicro))

this is ethtool -i :

driver: i40e
version: 5.16.2
firmware-version: 7.20 0x80008322 1.2585.0
expansion-rom-version:
bus-info: 0000:02:00.0
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes

Problem is this :

[   42.267788] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   42.304230] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   42.343222] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   42.383900] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   42.424674] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   42.465541] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   42.507650] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   42.551789] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   42.598153] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   42.645146] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   42.693241] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   42.741304] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   42.789719] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   42.839720] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   42.890856] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   42.943083] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   43.058643] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   43.110952] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   43.163266] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   43.215573] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   43.267887] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   43.320205] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   43.372544] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   43.424854] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   43.477162] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   43.529498] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   43.581811] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   43.634122] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   43.686429] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   43.738745] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   43.791061] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on
[   43.908556] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcing
overflow promiscuous on PF
[   43.960581] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcing
overflow promiscuous on PF

......

[  233.152055] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcing
overflow promiscuous on PF
[  233.205430] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcing
overflow promiscuous on PF
[  233.258777] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcing
overflow promiscuous on PF
[  233.312141] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcing
overflow promiscuous on PF
[  233.365493] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcing
overflow promiscuous on PF
[  233.420367] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC, forcing
overflow promiscuous on PF
[  233.473951] i40e 0000:02:00.0: Error I40E_AQ_RC_ENOSPC adding RX
filters on PF, promiscuous mode forced on


Problem is flood dmesg and networking stop work on this time of message .

do you have any idea how to fix or patch i40e driver to fix this problem.

on machine is configured this interface only :

1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN
group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP
group default qlen 10000
    link/ether 0c:c4:7a:19:70:18 brd ff:ff:ff:ff:ff:ff
3: eth1: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN group
default qlen 1000
    link/ether 0c:c4:7a:19:70:19 brd ff:ff:ff:ff:ff:ff
4: eth0.0101@eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc
noqueue state UP group default qlen 1000
    link/ether 0c:c4:7a:19:70:18 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.2/27 scope global eth0.0101
       valid_lft forever preferred_lft forever

Normaly problem stop when make this :

ethtool -K eth0 rx-vlan-filter off
Actual changes:
rx-vlan-filter: on [requested off]
Could not change any device features

But in this card this options is hard set on ON and i not found
options to disable.


Best regards,
Martin
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
