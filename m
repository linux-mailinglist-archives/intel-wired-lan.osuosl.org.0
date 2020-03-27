Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 734EE194F9C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2020 04:15:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26CF588C35;
	Fri, 27 Mar 2020 03:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eKlju7jqWrq7; Fri, 27 Mar 2020 03:15:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CEACC8940C;
	Fri, 27 Mar 2020 03:15:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 138B61BF9C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2020 03:15:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0F38988C35
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2020 03:15:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NwqJnE6N3Wrz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2020 03:15:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3209889421
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2020 03:15:07 +0000 (UTC)
Received: from mail-pl1-f198.google.com ([209.85.214.198])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jHfSa-0004rl-Qu
 for intel-wired-lan@lists.osuosl.org; Fri, 27 Mar 2020 03:15:05 +0000
Received: by mail-pl1-f198.google.com with SMTP id k10so5981472plx.17
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2020 20:15:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:cc:to;
 bh=bU/0YSRz23aAgKMuKbXHgM8W4/PkPCXxvRTMfZMlxQQ=;
 b=U88eSCqOAewm2oQW5xiGaKwLLCW/OT7Ec9bpuDbYg5S7hnMK+hSRa7XOyVHHmuMuos
 plZGOmXqKV1xINIOet04PuzMBURnCIykkt1j2cWcl3FlfniAWUj47dj5EEeusjsv9wsF
 n8JtMa83nJmkNO2W66d3OfBCdHn8i5PkHwGYtpjkDhYUYFz2J9aWcqFA+zW3eTy8qXNu
 IjId/MbTe+qXAHi1ya7e1r4ChnnCH2/Si9ijUfCzK+e70YREmIlWFDKe0RL/G/wGfQVs
 8evFwNDCOiSZvU3+FrU874yvi0dhlyrHmwFXYMuWiaRhTU6AJNqyhLX59OZXaQZlN6dE
 QoyQ==
X-Gm-Message-State: ANhLgQ2pVTS7vvRAFbjSnzV+DpTmE4K/0zVDST7xjCPvH4+QhgJPKTiU
 6vQJY2FBqVSjJ9OuLashQZqFpUe5fnKBSU+qwhV61IA+IcWeT0qmlvc+LLZotULQY+1sGG8pls0
 QBo70Ad4YE0Tjh+pLM139E59wRewew/A7IM+3CxPjjvZ9d4s=
X-Received: by 2002:a63:6bc1:: with SMTP id
 g184mr11339489pgc.404.1585278903541; 
 Thu, 26 Mar 2020 20:15:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsZ5NTPbaQIyueUb6jW6/8rnXyNdOl6YC4p8Si0D1ZDgjFs9iX6ID3U/76fiPfw/TM8+KeoEA==
X-Received: by 2002:a63:6bc1:: with SMTP id
 g184mr11339471pgc.404.1585278903203; 
 Thu, 26 Mar 2020 20:15:03 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id f6sm2990496pfk.99.2020.03.26.20.15.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Mar 2020 20:15:02 -0700 (PDT)
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Message-Id: <79788C8C-D645-4D67-87E7-F02F15DC4DDE@canonical.com>
Date: Fri, 27 Mar 2020 11:15:00 +0800
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Subject: [Intel-wired-lan] Please drop "igb: Use device_lock() insead of
 rtnl_lock()" "e1000e: Disable s0ix flow for X1 Carbon 7th"
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
Cc: "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jeffrey,

"igb: Use device_lock() insead of rtnl_lock()" caused a regression, and I am taking a different approach as Alexander suggested.
"e1000e: Disable s0ix flow for X1 Carbon 7th" is superseded by "e1000e: bump up timeout to wait when ME un-configure ULP mode"

So please drop both of them from dev-queue, thanks!

Kai-Heng
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
