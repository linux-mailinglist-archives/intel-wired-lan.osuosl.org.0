Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CFB192462
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2020 10:42:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B271E86C22;
	Wed, 25 Mar 2020 09:42:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GRMR2FD-CrDn; Wed, 25 Mar 2020 09:42:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 71BFA86C4F;
	Wed, 25 Mar 2020 09:42:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C7DC11BF37C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 09:42:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C01768872A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 09:42:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fTeR0i8mwajt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 09:42:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9153B88728
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 09:42:40 +0000 (UTC)
Received: from mail-pg1-f197.google.com ([209.85.215.197])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jH2YY-0008WT-Au
 for intel-wired-lan@lists.osuosl.org; Wed, 25 Mar 2020 09:42:38 +0000
Received: by mail-pg1-f197.google.com with SMTP id m25so1331928pgl.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 02:42:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=WEm/Oq7JATNH4WpMbMOCRGSUs1m+s06ist0t7Zd6Gyc=;
 b=VO0z5EppiovBJ59NWfLGnrSMQEn8iq0z89xJ7x9vNKKmsoX8HPStbPjDCdbfk8Mc6j
 Y4mCOi52doihBQEM8y213XPtYNAlpxT9SXs+EiGoPMOMf5d8Yp9HnQxTbWng9R7USXNr
 k5ibfFuaY1AyNSr7KtgJSsRx+kIX865kvXj8NjgxlMvLxpWvfXmUJZ4ya4eWrgqoCsWf
 3IsyoYZZcSJORN0fMy8I3RfgQ3tKDnFAGLBSsqt3bz9HbfSG5WGyTWqpN4vFCsq1YsZ0
 Lq/7NqUPJnIgHp31chvoEpl5FEzIeENRv0w+o1FdFZFYniuhT5DmQ48ltywllLzyMA6z
 3ISw==
X-Gm-Message-State: ANhLgQ2jmU4YOfCX5+Mo+qTrEF9Ah+frOdj7vmgbif+Oy1Gk7Pi32xJO
 44ME3z6EFd7cVlRReBu2SQrEHrVvySliJ+ew8mZYXlQgj9qB7PNAl8S/R7fMEjZYEn/gexD3GGO
 oq7KxSGVaNHI7KTKq8GZd1g6o/WaDh1EaB7xI+iX2qwK06TY=
X-Received: by 2002:a65:4544:: with SMTP id x4mr2187631pgr.388.1585129356916; 
 Wed, 25 Mar 2020 02:42:36 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvj90gfcJU2r68Oskg+mmyv4M+UId2JeQ2EkaQMMLSubnjDUsbz8zp/Sd05+Pt1LoN+2fiWQQ==
X-Received: by 2002:a65:4544:: with SMTP id x4mr2187604pgr.388.1585129356561; 
 Wed, 25 Mar 2020 02:42:36 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id c1sm4168751pje.24.2020.03.25.02.42.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Mar 2020 02:42:36 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <309B89C4C689E141A5FF6A0C5FB2118B97224361@ORSMSX103.amr.corp.intel.com>
Date: Wed, 25 Mar 2020 17:42:33 +0800
Message-Id: <4A655203-7609-434C-9225-269A39AD5B35@canonical.com>
References: <20200207101005.4454-1-kai.heng.feng@canonical.com>
 <309B89C4C689E141A5FF6A0C5FB2118B971F9210@ORSMSX103.amr.corp.intel.com>
 <3CA021B0-FEB8-4DAA-9CF2-224F305A8C8A@canonical.com>
 <309B89C4C689E141A5FF6A0C5FB2118B97224361@ORSMSX103.amr.corp.intel.com>
To: "Brown, Aaron F" <aaron.f.brown@intel.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Subject: Re: [Intel-wired-lan] [PATCH v3 1/2] igb: Use device_lock() insead
 of rtnl_lock()
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Aaron,

> On Mar 20, 2020, at 15:00, Brown, Aaron F <aaron.f.brown@intel.com> wrote:
> 
>> From: Kai-Heng Feng <kai.heng.feng@canonical.com>
>> Sent: Monday, February 24, 2020 3:02 AM
>> To: Brown, Aaron F <aaron.f.brown@intel.com>
>> Cc: davem@davemloft.net; mkubecek@suse.cz; Kirsher, Jeffrey T
>> <jeffrey.t.kirsher@intel.com>; open list:NETWORKING DRIVERS
>> <netdev@vger.kernel.org>; moderated list:INTEL ETHERNET DRIVERS <intel-
>> wired-lan@lists.osuosl.org>; open list <linux-kernel@vger.kernel.org>
>> Subject: Re: [Intel-wired-lan] [PATCH v3 1/2] igb: Use device_lock() insead of
>> rtnl_lock()
>> 
>> 
>> 
>>> On Feb 22, 2020, at 08:30, Brown, Aaron F <aaron.f.brown@intel.com> wrote:
>>> 
>>> 
>>> 
>>>> -----Original Message-----
>>>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>>>> Kai-Heng Feng
>>>> Sent: Friday, February 7, 2020 2:10 AM
>>>> To: davem@davemloft.net; mkubecek@suse.cz; Kirsher, Jeffrey T
>>>> <jeffrey.t.kirsher@intel.com>
>>>> Cc: open list:NETWORKING DRIVERS <netdev@vger.kernel.org>; Kai-Heng
>>>> Feng <kai.heng.feng@canonical.com>; moderated list:INTEL ETHERNET
>>>> DRIVERS <intel-wired-lan@lists.osuosl.org>; open list <linux-
>>>> kernel@vger.kernel.org>
>>>> Subject: [Intel-wired-lan] [PATCH v3 1/2] igb: Use device_lock() insead of
>>>> rtnl_lock()
>>>> 
>>>> Commit 9474933caf21 ("igb: close/suspend race in netif_device_detach")
>>>> fixed race condition between close and power management ops by using
>>>> rtnl_lock().
>>>> 
>>>> However we can achieve the same by using device_lock() since all power
>>>> management ops are protected by device_lock().
>>>> 
>>>> This fix is a preparation for next patch, to prevent a dead lock under
>>>> rtnl_lock() when calling runtime resume routine.
>>>> 
>>>> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
>>>> ---
>>>> v3:
>>>> - Fix unreleased lock reported by 0-day test bot.
>>>> v2:
>>>> - No change.
>>>> 
>>>> drivers/net/ethernet/intel/igb/igb_main.c | 14 ++++++++------
>>>> 1 file changed, 8 insertions(+), 6 deletions(-)
>>> 
>>> This patch introduces the following call trace / RIP when I sleep / resume (via
>> rtcwake) a system that has an igb port with link up:  I'm not sure if it introduces
>> the issue or just exposes / displays it as it only shows up on the first sleep /
>> resume cycle and the systems I have that were stable for many sleep / resume
>> cycles (arbitrarily 50+) continue to be so.
>> 
>> I can't reproduce the issue here.
>> 
> 
> I just got back to looking at the igb driver and  found a similar call trace / RIP with this patch.  Turns out any of my igb systems will freeze if the igb driver is unloaded while the interface is logically up with link.  The system continues to run if I switch to another console, but any attempt to look at the network (ifconfig, ethtool, etc...) makes that other session freeze up.  Then about 5 minutes later a trace appears on the screen and continues to do so every few minutes.  Here's what I pulled out of the system log for this instance:

Yes I can reproduce the bug by removing the module while link is up.
I am currently finding a fix for this issue.

Kai-Heng

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
