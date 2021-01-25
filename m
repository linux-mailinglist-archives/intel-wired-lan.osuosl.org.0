Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DCD302ED6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jan 2021 23:20:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5803C870F2;
	Mon, 25 Jan 2021 22:20:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LVwoUtmI47JL; Mon, 25 Jan 2021 22:20:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A8BDC870E5;
	Mon, 25 Jan 2021 22:20:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5670F1BF34D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 22:20:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5277285277
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 22:20:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5UYBF6-QPf6Y for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jan 2021 22:20:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
 [209.85.215.178])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A7E7E85259
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 22:20:19 +0000 (UTC)
Received: by mail-pg1-f178.google.com with SMTP id b21so3078807pgk.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 14:20:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=g/9DKh0ULPecggucPXnLdq3O/CxzusNUloqJvn3JPOs=;
 b=LuSxjB7clImr7UW8SpMc1WdkUtYmQq9iWLHL8AgJBA9t4kvdkAoaZGdAKNaRKDz2dm
 PvMhimdAFJW0fjAyO7e0EkivVpmsS2+ZhTiLIXWwjRQrdAGBlXoQBf60pP3jp05ZUSs7
 v7oovwP73SpBCp7srxyu2WknU90MwDefmozE6qCpalEt9QO7d7LTS6sJEd7wBaxwX2Ve
 mLJLQO39EcuvfD8fuQnnioHJVIM3u4Nth3UdF3B8IYoBe+gBC+9TTOlsjkZi4WIReKZe
 1oA+gyTiIBz7gb2J+eonJwFjbm905s8erjtjcYaxAh/BgXPOqK4nbhavMfpOD7dMf0no
 dleg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=g/9DKh0ULPecggucPXnLdq3O/CxzusNUloqJvn3JPOs=;
 b=tAPjPQX4CDhT6VOLCWZdiDf+c09diMngIoMR/jZ1NoPm+HxiI412/shfMlAuo2cXMu
 R2B97gtlKbGF6ZbtvA0RgY1ZM7FO+S9q+Uq+0EhWz9ltdPP1aoh5n0nfm/dQGwoteTuu
 rbVzIHw64+c+bc+MNdI8TBnpvBhmLpXCSMm6sANGvxKkWwKUZka9/1vBLboWth5BQfDF
 j8q3tcQktoB8m+bHR9WIvA716bn2bnwMwc2dxfet9yqjpSL+TsZMNJAO4rrEWIeKcoHN
 TxexmXV5DKC+4pmtCZFSnh2dsDOLBul15hp4G+K/S4Bxvwlk9OAdM0U+R4Hr4OfLwBeW
 0IcQ==
X-Gm-Message-State: AOAM531WRzsdWOH36qcyNsMR3KOfm68618MQ2XTUNafx7/76WiCMhf6K
 ec3dOk+0tnRZQSc9p9oVpQkMbYamHN1Rag==
X-Google-Smtp-Source: ABdhPJxM0j7jB0wxT974GA0zRsKzv1xX0tYiSTHNMnIAN+evGz0IkQc1/RS8Yo1Iu5oByE2tZmBaYA==
X-Received: by 2002:a63:4082:: with SMTP id n124mr2679077pga.340.1611613218546; 
 Mon, 25 Jan 2021 14:20:18 -0800 (PST)
Received: from hermes.local (76-14-222-244.or.wavecable.com. [76.14.222.244])
 by smtp.gmail.com with ESMTPSA id
 b14sm351647pju.14.2021.01.25.14.20.17
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Jan 2021 14:20:18 -0800 (PST)
Date: Mon, 25 Jan 2021 14:20:09 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: intel-wired-lan@lists.osuosl.org
Message-ID: <20210125142009.01b6278d@hermes.local>
MIME-Version: 1.0
Subject: [Intel-wired-lan] Fw: [Bug 211335] New: Network connectivity issues
 after hibernation
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



Begin forwarded message:

Date: Mon, 25 Jan 2021 08:41:52 +0000
From: bugzilla-daemon@bugzilla.kernel.org
To: stephen@networkplumber.org
Subject: [Bug 211335] New: Network connectivity issues after hibernation


https://bugzilla.kernel.org/show_bug.cgi?id=211335

            Bug ID: 211335
           Summary: Network connectivity issues after hibernation
           Product: Networking
           Version: 2.5
    Kernel Version: 5.10.10
          Hardware: x86-64
                OS: Linux
              Tree: Mainline
            Status: NEW
          Severity: high
          Priority: P1
         Component: Other
          Assignee: stephen@networkplumber.org
          Reporter: morfikov@gmail.com
        Regression: No

Created attachment 294843
  --> https://bugzilla.kernel.org/attachment.cgi?id=294843&action=edit  
hibernation log

I not sure where to put it, but whenever I hibernate my machine, the process is
interrupted with the two kernel warnings. One is "TPM returned invalid status"
and the other is "NETDEV WATCHDOG: eth0 (e1000e): transmit queue 0 timed out".
After this happens, I'm able to hibernate the machine again without this warns,
but when I resume the machine from sleep, the network doesn't seem to work well
-- I get bunch of errors when I try to visit some http/https pages in firefox. 

I attached the full hibernation log as well as lspci/lsusb. The machine is
Lenovo Thinkpad T430.

-- 
You may reply to this email to add a comment.

You are receiving this mail because:
You are the assignee for the bug.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
