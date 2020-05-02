Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AFB1C27EF
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 21:08:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D82D4883F0;
	Sat,  2 May 2020 19:08:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id goXIP60VG3Dz; Sat,  2 May 2020 19:08:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A8CA883AE;
	Sat,  2 May 2020 19:08:36 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5EFB71BF3BE
 for <intel-wired-lan@osuosl.org>; Sat,  2 May 2020 19:08:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5AC7C86957
 for <intel-wired-lan@osuosl.org>; Sat,  2 May 2020 19:08:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R1F1Mb3ZNsJ1 for <intel-wired-lan@osuosl.org>;
 Sat,  2 May 2020 19:08:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com
 [209.85.166.182])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6850D8689C
 for <intel-wired-lan@osuosl.org>; Sat,  2 May 2020 19:08:33 +0000 (UTC)
Received: by mail-il1-f182.google.com with SMTP id t12so7445052ile.9
 for <intel-wired-lan@osuosl.org>; Sat, 02 May 2020 12:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3ZYMHysR0oi0cPOvz+Jdd3QfjHbQMymdjCr+/o0N/T4=;
 b=r3oZZOkXsUuR7YnRuuKVzN9/HPakZV+sy3sHqojho96HMOjobungziFjaqIA4OJTUX
 KjOoutVeDUQBVOCHzfQht3FYj4eLCf//9eoypjGIiX7XGA9iUp7t9vw5X55JJXov3XRC
 aJYqZVlqti3MHjxmm5nIyAHqbLS1uGmn0JyR53qEp8cdtdeRwaQhwjRtg9+S7rBhx0g9
 tbWeCuHUVhwMjZCRZc9x0P01rsMG5e3fKwU1kbqGZ3/vtf7VGQiR1cCmyV56y6/0uqck
 4Lw0lFdkWZSXm3y5CVR/rNS+ejBw2Ys/stXCIpkHB/53YJ991OSmXQcUrQgJ5DA8UmsW
 ZHLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3ZYMHysR0oi0cPOvz+Jdd3QfjHbQMymdjCr+/o0N/T4=;
 b=Yq/qCIMFzY93HHKKdIug9k+X3CUC7t2kx1oecEe6aAwPML0aWCcupFbxshidickAxe
 CGezzQv7HG2j9Qv2gcDT0kxylPtbHAGV8vtGZtB0/tPxIasr0i//MMtzBYDIRv4XFOQH
 FACjSwndbcY/8P3YtRClWyjUqMcpXyHboPIAKXrlzYfX1vmbsSXY0rTmPBTzfeZeqfXd
 5vj+Elj7KcvXUAAyAIFP7qiVH9Jbr3OuiQPbItePMI/JncnXEf2msiHYz7p+2jU6cfk5
 SjY5Y1N+kkcNfUI/yW/1ZJ+SYphfqtv6gmt1kjGHZp6PU8W49e3SpMNIARhTl8xaySjK
 xORQ==
X-Gm-Message-State: AGi0PubYz8AaunSsZ2xPEN8vhxsoKTWe1ztgK1MRdetZ/yh4w8Li9tAE
 leJrPEZqV67WeUht2UUneT87YRe6+nZ7TyVPOX77ck0UJ7M=
X-Google-Smtp-Source: APiQypIZ4dCPho/3p1JEfMZNAtlcOwZkqThOBcUBOINIGvZS9UsZJk2TX2Y9kWqZRCMZwj8SMa5+ISm6g1U8pIOeJEs=
X-Received: by 2002:a92:3dd5:: with SMTP id k82mr9504052ilf.237.1588446512531; 
 Sat, 02 May 2020 12:08:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200421133745.GA1557688@shell-202.tara.dn.lalufu.net>
 <20200502175541.GB7062@faith.camperquake.de>
In-Reply-To: <20200502175541.GB7062@faith.camperquake.de>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Sat, 2 May 2020 12:08:21 -0700
Message-ID: <CAKgT0Uf8+sTsc0HCmxvpjYNKpOivV3z0N36zmHJiYzWXtjMTtA@mail.gmail.com>
To: Ralf Ertzinger <ralf@camperquake.de>
Subject: Re: [Intel-wired-lan] i350 not coming out of D3 when link should be
 reestablished
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

On Sat, May 2, 2020 at 10:55 AM Ralf Ertzinger <ralf@camperquake.de> wrote:
>
> Hi,
>
> On Tue, Apr 21, 2020 at 01:37:45PM +0000, Ralf Ertzinger wrote:
>
> > I have a Supermicro board (M11SDV-4C-LN4F) which has one (or four? not
> > sure) i350 network cards, breaking out into four 1GB RJ45 ports:
>
> is this the right mailing list for these sort of issues? If not, where
> should I bring this up?

This is the right list

As far as the behavior I am fairly certain it is a bug. I suspect
there are some functions that aren't correctly taking the power saving
features into account and as a result they aren't working correctly.
Unfortunately I don't know how much testing takes place for the igb
parts with run time power management enabled.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
