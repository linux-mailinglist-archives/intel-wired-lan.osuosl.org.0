Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4363A1B1DA9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Apr 2020 06:51:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AFA4D8807A;
	Tue, 21 Apr 2020 04:51:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GvBZgBXL8ACH; Tue, 21 Apr 2020 04:51:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 83D398830F;
	Tue, 21 Apr 2020 04:51:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC5771BF44A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 04:50:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5BEDB8831E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 04:50:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id inA9YOc2frRi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Apr 2020 04:50:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 30A5C8830F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 04:50:21 +0000 (UTC)
Received: from mail-pl1-f200.google.com ([209.85.214.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jQkrS-0005jT-Ff
 for intel-wired-lan@lists.osuosl.org; Tue, 21 Apr 2020 04:50:18 +0000
Received: by mail-pl1-f200.google.com with SMTP id bc2so4656133plb.8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2020 21:50:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=iS1UqusYi3xL6rontdMWpTi7+P7gRt1tPUDk5laBrGI=;
 b=aWKEDie0A0cxnFG0V+yNjLvFR075hHAocanbDN+HQ1RSNqY5JZ9BqZ2h2XE3XstbTZ
 tc5xiOsY1Ygfe9Itc32GyrEIdKSBCcXCNGJfHQ8xO4j85dvyKwiQAFE9upw6h2g8jB82
 3TdjPHGqFgALVFPIhFAPQGLCFbF8X7TiHzKyA16I/w6mZRBgEDC5kTGmX3qTZnU/QprL
 Zz/gKPGBZjT20b3eMZhGyo9apAkiYu4U33wRVXk+MvLs3sHnPV8BZFgO4vXhUHzKrnOz
 eqp7+7abtr1z99yyPCXmsBUZ3xBRGQKq6hjboyfqW/SfUrP2UqdBNTpY7DyQ5+lmmHU0
 tc3Q==
X-Gm-Message-State: AGi0PuYA0621hZOCcC53hoWfqfrpaHfjSSrrrZ8lhnQ7z5prD2ZedOMo
 hNKa/eLYuTSmxQt4cETEtVZKODNlzjPkvi+JfXzOwVHJhepLaBcayABxTVcul7qkF8B9gUtCSlN
 hE/e7cD+Z+W8oDWTW2z5+n14z4bsEWcBJptni4KmBn5+fnNU=
X-Received: by 2002:a17:90a:f0d0:: with SMTP id
 fa16mr3510962pjb.33.1587444616959; 
 Mon, 20 Apr 2020 21:50:16 -0700 (PDT)
X-Google-Smtp-Source: APiQypKfsgLW5biYAE7aJIxYYYswHrd1wjHYn1DgSe813w7otCrIz5NawzqPd2rFsLGlvqqwbtuFfg==
X-Received: by 2002:a17:90a:f0d0:: with SMTP id
 fa16mr3510934pjb.33.1587444616480; 
 Mon, 20 Apr 2020 21:50:16 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id o1sm1007174pjs.39.2020.04.20.21.50.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 Apr 2020 21:50:15 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <DM6PR11MB2890E32FBCE91DF33D252087BCD40@DM6PR11MB2890.namprd11.prod.outlook.com>
Date: Tue, 21 Apr 2020 12:50:12 +0800
Message-Id: <B58AFDD4-7153-40A0-88E0-5490EF2919A2@canonical.com>
References: <20200319052629.7282-1-kai.heng.feng@canonical.com>
 <DM6PR11MB2890E32FBCE91DF33D252087BCD40@DM6PR11MB2890.namprd11.prod.outlook.com>
To: "Brown, Aaron F" <aaron.f.brown@intel.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
Subject: Re: [Intel-wired-lan] [PATCH 1/1] e1000e: Disable s0ix flow for X1
 Carbon 7th
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

> On Apr 21, 2020, at 04:27, Brown, Aaron F <aaron.f.brown@intel.com> wrote:
> 
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Kai-
>> Heng Feng
>> Sent: Wednesday, March 18, 2020 10:26 PM
>> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
>> Cc: open list:NETWORKING DRIVERS <netdev@vger.kernel.org>; Kai-Heng Feng
>> <kai.heng.feng@canonical.com>; moderated list:INTEL ETHERNET DRIVERS
>> <intel-wired-lan@lists.osuosl.org>; David S. Miller <davem@davemloft.net>;
>> open list <linux-kernel@vger.kernel.org>
>> Subject: [Intel-wired-lan] [PATCH 1/1] e1000e: Disable s0ix flow for X1 Carbon
>> 7th
>> 
>> The s0ix flow makes X1 Carbon 7th can only run S2Idle for only once.
>> 
>> Temporarily disable it until Intel found a solution.
>> 
>> Link: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-
>> 20200316/019222.html
>> BugLink: https://bugs.launchpad.net/bugs/1865570
>> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
>> ---
>> drivers/net/ethernet/intel/e1000e/netdev.c | 16 ++++++++++++++--
>> 1 file changed, 14 insertions(+), 2 deletions(-)
> 
> I do not have access to the "X1 Carbon 7th" this patch targets, but from a regression perspective against a number of other e1000e based parts:

This patch can be superseded by "e1000e: bump up timeout to wait when ME un-configure ULP mode". 
So it's better to drop this patch in favor of a more generic solution.

Kai-Heng

> Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
