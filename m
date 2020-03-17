Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2E11885D8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2020 14:34:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30232870EA;
	Tue, 17 Mar 2020 13:34:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UWlYA1LdUWIh; Tue, 17 Mar 2020 13:34:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E7F6870CF;
	Tue, 17 Mar 2020 13:34:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B4B3E1BF404
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2020 13:34:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B071F88AC5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2020 13:34:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VawPz4Y8qHq7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Mar 2020 13:34:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BEA3588ABD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2020 13:34:13 +0000 (UTC)
Received: from mail-pj1-f72.google.com ([209.85.216.72])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jECMF-0000wk-38
 for intel-wired-lan@lists.osuosl.org; Tue, 17 Mar 2020 13:34:11 +0000
Received: by mail-pj1-f72.google.com with SMTP id t7so13189687pjb.9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2020 06:34:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:cc:to;
 bh=rY9DGF1UFgwSu0WExhvnlinU6LE2TNzgw9ttTPXZxOA=;
 b=qNo0nxD7UMJM4h1VgvUScSF9kBto0+33b/DKb0E67Dy5ZjmX6sxNuAwPZA/8f0LES9
 Rnt1cd2PldjbG8QeC5TmEqht9FcFjturiKQhOYtiEStfS1byV+F3A5tfrDtunXoAUwa/
 LoJAr6+fPXMjkYKFxFQK+4ezpJL8A7Ka6MwSlwA91cnWKT4ZRDlF5oLiqb8sGfVHKaWw
 KO25STFKW5ajpmVlXzdmCwTmF8LwGPVveJ1Awxy8/2NKLSfqrjn1+RaJmetGshlUn7za
 EbQ2+ayjqLSv7L/qnaiET1XjGu0URMvOzu/HSjk9cKVo/OG1bdcDi8kMV/iL73MUVf1/
 c9OQ==
X-Gm-Message-State: ANhLgQ0g7kZsuLWTcLodKVPh2OQyfNMjEb9uvA97vtnF/G2JraTqoQ3U
 eCi6+A3W+WwT8m2jvYfKxks3d9iy5GgsokkJ4WzJcy9SX4BM5ncIWMwQcwwu+ZKBitnrZaQjYba
 0IX7gJeJcKvrH5VGY0T4vrrWKrqU7dDj3mxMI7olwLYrWFpQ=
X-Received: by 2002:aa7:9af8:: with SMTP id y24mr5423182pfp.91.1584452049773; 
 Tue, 17 Mar 2020 06:34:09 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vua4Z3qb2qexNcitBNw7wFA1idRMpGfeJhVsucGKMmTA71FdMIE7EIPYXc71P3AVb2RilzrOA==
X-Received: by 2002:aa7:9af8:: with SMTP id y24mr5423155pfp.91.1584452049464; 
 Tue, 17 Mar 2020 06:34:09 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id nh4sm2885680pjb.39.2020.03.17.06.34.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Mar 2020 06:34:07 -0700 (PDT)
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Message-Id: <0A7D1E37-88A4-4E5A-8522-B80A8AE679EE@canonical.com>
Date: Tue, 17 Mar 2020 21:34:01 +0800
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>,
 "Neftin, Sasha" <sasha.neftin@intel.com>, vitaly.lifshits@intel.com
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Subject: [Intel-wired-lan] [Regression] "e1000e: Add support for S0ix"
 breaks s2idle on Lenovo X1 Carbon 7th
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
Cc: Jason Yen <jason.yen@canonical.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Anthony Wong <anthony.wong@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Users reported that X1 Carbon 7th can only suspend once due of "e1000e 0000:00:1f.6 enp0s31f6: Hardware Error" [1] [2].
I managed to get one at hand and I can confirm the issue is 100% reproducible.

The error occurs at the first e1e_rphy() in e1000_copper_link_setup_82577() [3].

Reverting "e1000e: Add support for S0ix" makes suspend work again.
I also tried commit e1738282f6c6 "e1000e: fix S0ix flows for cable connected case" however the issue persists.

Kai-Heng

[1] https://bugs.launchpad.net/bugs/1865570
[2] https://bugs.launchpad.net/bugs/1866170
[3] https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git/tree/drivers/net/ethernet/intel/e1000e/phy.c?h=dev-queue&id=e1738282f6c6ad0ec56a15c4d5a3b657d90e4435#n630
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
