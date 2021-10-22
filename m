Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8846B438027
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Oct 2021 00:15:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D886B6064B;
	Fri, 22 Oct 2021 22:15:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id As-HwRlQeCF7; Fri, 22 Oct 2021 22:15:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D709760608;
	Fri, 22 Oct 2021 22:15:55 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2D1301BF3BF
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 22:15:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 28161605BE
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 22:15:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 23iqUoJNFa9F for <intel-wired-lan@osuosl.org>;
 Fri, 22 Oct 2021 22:15:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 375D5605B7
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 22:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1634940936;
 bh=yfuSBcU/BUHx3lr9cbwfnXBBcyGWpUsbDr0jlcjRENM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Tj/Sg/RHnJlx6SA/efg0SlnW2kME/xLw97Ket1nTI65TqX3Dwd5bVHmAhzVqfXY4y
 X95P+uLERPai+bYGdulKrinVHtIiR5C83mdcOj+OPOqAfqBJd63Enwy3l+ab9Ah8Yc
 lbrdhu4njKbrsc3t1bj/V8Ri4iYdm+ft8nJIt430=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [91.64.35.151] ([91.64.35.151]) by web-mail.gmx.net
 (3c-app-gmx-bs49.server.lan [172.19.170.102]) (via HTTP); Sat, 23 Oct 2021
 00:15:36 +0200
MIME-Version: 1.0
Message-ID: <trinity-7ec48fc1-b568-49df-8837-218ec2c431c4-1634940936574@3c-app-gmx-bs49>
From: Robert Schlabbach <robert_s@gmx.net>
To: Hisashi T Fujinaka <htodd@twofifty.com>
Date: Sat, 23 Oct 2021 00:15:36 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <392a6fe-e920-31b-42dc-a214e311233c@twofifty.com>
References: <trinity-58e35e17-0323-4cde-bbed-1582c3520822-1634891867291@3c-app-gmx-bap44>
 <9f4603a5-7811-c653-951b-777070f7ce54@molgen.mpg.de>
 <392a6fe-e920-31b-42dc-a214e311233c@twofifty.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:ceEDIy0Bpy19V4Uf1A75BNC/SbzoZ0iBaBcQ/SlPNuTzLYGiGVSDQXxCtHI7CRnhEp0K/
 aWI/1380gdzkBx8OyyUjjdP/Zon8azxo52lAK5JtZQLFdUBExXGRFP8BI6XU8Sn5XxEofxRK2X0M
 baau+Ct4hJJRNP6bMytHmV9szJ48+wYF8SdBGbhZSi9VwU9Pd+KN0C8ZpDaTt01fziX5Q0eJgZOh
 FxHjBopc6SAi/9ZKdMI8yMPvIp6vC+2USwus/Q8vX6J5rmj3lDxHu46dd8WTlYapWf6cc/66uzmZ
 zk=
X-UI-Out-Filterresults: notjunk:1;V03:K0:mpeXptIL95c=:cIuUnFHAEyu9Qx7npmePHr
 wKIIHZWiB/F8bxhS6HBJzLkEedCzmnBh64S0HLWhxXP8sHcJSxldXGAND8ZMZmdazpSeI6HwP
 4EYqFKkcWEMbYeZ2mzVpcJwcC7Qw0iGYdfs524wurY1h2MKKXwUMX9RD0I/keIHUDN1e/P3N3
 N+xbtH5R05fCfJtlNWLl+inVdXPaD7VMHh24b+kUquF3Jq6R4VZQprkDMF8yUG00F3gb+fTXu
 LjAoS9/EjRZAYo94g+ghITa4Erzp59k6SQD6OflVqXcySPmFidDGOuAAA4n1q25LtqO0GQlI/
 gcAQxKxHlsbnX7kw7f2CPB8f4pkNWEVoxT5obbJ6i92+Ve3OO50IcAfQFDOthTGvy0yQeFROS
 tRmcHswRK1CMioqk7C7XuUHqvWsu7L9oSi/GQQqjMMm5L4Hh5BQ6VIZGhMB3vYoXS6/fUq/gp
 qOiXhoXFvC9QnFlQ0OkAI3uBhBKB4E4PJH/hyMJBAJO0DCkFSuUhTjKXPtJw61bF7eYyWklBQ
 DnJyE7Q/Rb73Sn1l2tR6mvXuYW9eID2G0MpcweS+XrI90hfEl74otNkvx582EYFjW5t8Uv65p
 ehIuhbnWrWGHNrrUkEq5kitjqQLwmjoJcm0W+RZ7FBcRKVJYGI+bk/Ax69M4Jb5+hFqh+OZ99
 6doMqO/iELnWqGSHLZfi1L29nRDFHI/ziSHmaqpLSIBB01CiQeZ8XPvqB20LAzAWf3J46TbFK
 fVgrQ9f5G/Uhl3Wl8xm8z9Z1HAHz/zjgT8zTfR25PJdJ3DWUBuqAgVQNUZgPOvmI8opLjYj2Y
 byobpWa
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbe: Allow disabling NBASE-T
 suppression hack
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 22 Oct 2021, Hisashi T Fujinaka wrote:

> We're not likely to accept this patch because it adds a private module
> parameter and upstream will not accept it.

I don't understand. The module already has 3 parameters, so why is a 4th not acceptable?

> Also, why can't you set advertising for 2.5G and 5G on boot with ethtool?

Using ethtool to fix the advertised speeds after boot renegiotiates the link, meaning
additional time for the network to come back up. I don't see why I should have to put up
with inferior results just because others have faulty devices on their networks.

Note also that in the current documentation, the required ethtool command to do this is
not mentioned.

> Interoperability with existing hardware was more important than adding a
> feature that, honestly, hasn't been requested much (autoneg of 2.5G and
> 5G). The x550 is mainly being sold mainly into the server market and
> outside of the comms market, 2.5G and 5G has mainly been a "gamer"
> feature that's just coming out on normal motherboards now.

But to take a broader view: Competing multi-gigabit-speed-hardware devices like e.g.
Marvell/Aquantia's AQC107 do not have such interoperability hacks in their drivers. They
just work as expected in any network environment. This hack makes Intel's products
effectively inferior and seem problem-ridden, even though it was just unlucky to be earlier
to market.

> Also keep in mind that interoperability issues were reported by
> customers who maintain large data centers (pick a big bank and you'd
> probably get the idea here) and you'll see why we thought this was
> necessary.

Your reasoning is completely acceptable, but the way it was implemented is not.

> The fix was documented in my initial patch, but I see that as it worked
> through the company that was removed. It was not in any external
> documentation, and that is a failure on our part.

Yes, that patch change should never have passed approval like this. The regression fix
should have been a dedicated patch with proper documentation, also in the code. And there
should have been an option to disable it.

I've submitted a patch to right the wrongs. If you have a better patch, you're welcome to
submit it. If not, I do not think it is right to leave things in the half-baked state they
are now.

Best Regards,
-Robert Schlabbach
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
