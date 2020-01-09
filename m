Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 234E3135387
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2020 08:08:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A623087534;
	Thu,  9 Jan 2020 07:08:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W3op1gyv4r2g; Thu,  9 Jan 2020 07:08:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D685787DAA;
	Thu,  9 Jan 2020 07:08:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B68861BF25B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 07:08:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8AC65800C4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 07:08:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9fp5oxcbfQ9j for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2020 07:08:50 +0000 (UTC)
X-Greylist: delayed 00:07:52 by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 05AC2864F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 07:08:47 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id c14so6129796wrn.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Jan 2020 23:08:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VQ9Syd41XlUnkyQ80kZYH0FYpIf/ubBBu8DyRcPmj2Q=;
 b=Os5/Y+I78xWIPKszD7zOWRy04LKuDlis/LCWsymwd3emu+p2zk8wDh6SQxYscX7Z/M
 W0IgrLCaxLz2Ej26TCypyZFeZe+K46rdwl9qPGvey1UWfbkB0HEYGsXyx5G2ssP+S/2q
 m22aOu3+2jxiu/ZX4r5Gp5R5EGmr257YeucarVyPqAnxc8xqnf5/G10w1B/PvzZXqiXj
 lou3f2XIJvN8CecUTk2Vy7NNoDBSwE/hYN6jCfDz+K79XLgWYkGWBHTcWSNsoOGnP+i/
 yAh3Y5DOobI6YM2sbJoWIntFGU4tz41+/RNtIkoHGZCnObR7fDX6Z5oea8CcysA0bAO6
 qASQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VQ9Syd41XlUnkyQ80kZYH0FYpIf/ubBBu8DyRcPmj2Q=;
 b=NHmfqCnXHjHJNu9K/uSdVu6FT749GwfwXxLY+gnkm9afh9oZ1wbj+NHeOkAldjuced
 OneV2gz85xXKVVT45QbE4BGcIIurN62oxnoQcACY30HGa3SoLjt1b/VXLmiOLWHpDyue
 WRZsKyURgSE4SzzewwJHRdL0DO9ahtNjI1tvY+3v2PXaDgBTrtc7wFPLnDvbwx/a0D+Z
 hxlXIVCCyODBQ5Ycsv64NXLdBnvaJr2qAX/709CjPn/LxhEPUdXIqkcaGdxhi1QAnKin
 4XgeyGZPqixEYRt20K/6fU6IxuboEjSlpQn5/m2rzg7+QXRSIE3abgHLDqUaj/krjYze
 F+NQ==
X-Gm-Message-State: APjAAAWzgcoUmpcHGpU8ujHWM+dYshCYWztWFyxSNgJ2uvn/yqYVQu4p
 yEasRRn1chXld/7TYIt7Fu52iQ==
X-Google-Smtp-Source: APXvYqwHKc0aR0Em4H03BFtKWRdcbCpus4Lev/p/rE0ue+w1iWt3C5oYQElimKN81QFhBEzfwtG+DQ==
X-Received: by 2002:adf:8150:: with SMTP id 74mr9446727wrm.114.1578553307634; 
 Wed, 08 Jan 2020 23:01:47 -0800 (PST)
Received: from localhost (jirka.pirko.cz. [84.16.102.26])
 by smtp.gmail.com with ESMTPSA id t125sm1825444wmf.17.2020.01.08.23.01.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 23:01:47 -0800 (PST)
Date: Thu, 9 Jan 2020 08:01:46 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20200109070146.GB2235@nanopsycho.orion>
References: <20200109010818.1326575-1-jacob.e.keller@intel.com>
 <20200109010818.1326575-3-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109010818.1326575-3-jacob.e.keller@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 2/4] doc: fix typo of snapshot in
 documentation
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, valex@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Jan 09, 2020 at 02:08:17AM CET, jacob.e.keller@intel.com wrote:
>A couple of locations accidentally misspelled snapshot as shapshot.

This does not have anything to do with the rest of the set.

>
>Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>---
> Documentation/admin-guide/devices.txt    | 2 +-
> Documentation/media/v4l-drivers/meye.rst | 2 +-
> 2 files changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/Documentation/admin-guide/devices.txt b/Documentation/admin-guide/devices.txt
>index 1c5d2281efc9..2a97aaec8b12 100644
>--- a/Documentation/admin-guide/devices.txt
>+++ b/Documentation/admin-guide/devices.txt
>@@ -319,7 +319,7 @@
> 		182 = /dev/perfctr	Performance-monitoring counters
> 		183 = /dev/hwrng	Generic random number generator
> 		184 = /dev/cpu/microcode CPU microcode update interface
>-		186 = /dev/atomicps	Atomic shapshot of process state data
>+		186 = /dev/atomicps	Atomic snapshot of process state data
> 		187 = /dev/irnet	IrNET device
> 		188 = /dev/smbusbios	SMBus BIOS
> 		189 = /dev/ussp_ctl	User space serial port control
>diff --git a/Documentation/media/v4l-drivers/meye.rst b/Documentation/media/v4l-drivers/meye.rst
>index a572996cdbf6..dc57a6a91b43 100644
>--- a/Documentation/media/v4l-drivers/meye.rst
>+++ b/Documentation/media/v4l-drivers/meye.rst
>@@ -95,7 +95,7 @@ so all video4linux tools (like xawtv) should work with this driver.
> 
> Besides the video4linux interface, the driver has a private interface
> for accessing the Motion Eye extended parameters (camera sharpness,
>-agc, video framerate), the shapshot and the MJPEG capture facilities.
>+agc, video framerate), the snapshot and the MJPEG capture facilities.
> 
> This interface consists of several ioctls (prototypes and structures
> can be found in include/linux/meye.h):
>-- 
>2.25.0.rc1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
