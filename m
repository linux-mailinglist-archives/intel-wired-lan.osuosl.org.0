Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8729C189BFE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2020 13:30:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 317E0220CA;
	Wed, 18 Mar 2020 12:30:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ylUFLRvw3N2k; Wed, 18 Mar 2020 12:30:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 124FD204E9;
	Wed, 18 Mar 2020 12:30:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9878C1BF368
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 12:30:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 945B786D8B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 12:30:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wGCPEUeeXgjx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 12:30:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 68DE286813
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 12:30:07 +0000 (UTC)
Received: from mail-pl1-f197.google.com ([209.85.214.197])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jEXpl-0003zA-84
 for intel-wired-lan@lists.osuosl.org; Wed, 18 Mar 2020 12:30:05 +0000
Received: by mail-pl1-f197.google.com with SMTP id t12so14809694plo.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 05:30:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=XfJwVlenay0HN5OMqWoEIHAFt25822DzMOKcklkYG7Q=;
 b=fy2iFFrCZ/Z1c9wAGUOK87NFtRb3bV1XXT8AOINjUw98Vu2wabGtHL7lpW2Rh6rcgN
 /NEwqsxN4TzO39m0aUDWhyKkzaf4GLMf3MRjWX0VMtvr1s2ZGvb87w5YH/dhQEco6Wxc
 qFkHxRIj6Jb26+X8KdqUq5egp5gu2jNxd95Sd4OGgFYI5BMUCm7PQ3KpvkNoZ9qtI8QN
 otgXhFRBz+saNixNv+2burdMYZ2Jv33K/Ix9fllnLJURYxFhJ+t7/eOktKisF250cGZH
 OxxjjrLhWdChmZu50r6BeeCWmCou56bUA6W7BiGTmL1FLUBwWqJ7YY5nvNI2KiFJ00Gh
 cnog==
X-Gm-Message-State: ANhLgQ3stQbfUIAh2YlhJ1X/8rS/RfDQackCmnK1j0nslzqLUbDA16Av
 fdeFF5mXs7bdBcR7FRLHHr2/ZIjPFwgXjBdr6MTjJ/7r/8arwk+z5J5bTF01XHumW6Wrg6Jo7X3
 d2mMhadRtSPBi9jea5ZfjloBUxcvlK9eQT5WLCpQduxnvIGA=
X-Received: by 2002:a62:7911:: with SMTP id u17mr3942209pfc.305.1584534128216; 
 Wed, 18 Mar 2020 05:22:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vves6Ly0Qzx0fhMTX9fq5VC+PnkrV2hpzodWoCszyTS+ZkBD8WonlcEGfphBJQwIkgL/mzvYQ==
X-Received: by 2002:a62:7911:: with SMTP id u17mr3942182pfc.305.1584534127864; 
 Wed, 18 Mar 2020 05:22:07 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id z20sm5947364pge.62.2020.03.18.05.21.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Mar 2020 05:21:58 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <6c1bcb34-a713-a6ea-7def-8a0e553ea0bb@intel.com>
Date: Wed, 18 Mar 2020 20:21:55 +0800
Message-Id: <C9A08D85-D64B-44DD-8460-3405F2547D53@canonical.com>
References: <0A7D1E37-88A4-4E5A-8522-B80A8AE679EE@canonical.com>
 <8c0032bd-15be-734b-1b52-dedba72a8da3@intel.com>
 <897C8B9E-839A-4FC1-9411-B3CB141890BC@canonical.com>
 <540fd2d3-9187-1dba-185a-58d94c4c5b69@intel.com>
 <BA29B851-8765-4F47-AC98-E2D604595EA6@canonical.com>
 <38766b04-eec3-f4ce-5fe5-6352562b271c@intel.com>
 <FFE42849-4E95-4ADC-9B46-7A0F5B58508B@canonical.com>
 <6c1bcb34-a713-a6ea-7def-8a0e553ea0bb@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Subject: Re: [Intel-wired-lan] [Regression] "e1000e: Add support for S0ix"
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
Cc: "Shalev, Avi" <avi.shalev@intel.com>, Jason Yen <jason.yen@canonical.com>,
 Anthony Wong <anthony.wong@canonical.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Sasha,

> On Mar 18, 2020, at 16:50, Neftin, Sasha <sasha.neftin@intel.com> wrote:

[snipped]

> ok, let's understand where is PHY location.

Lenovo confirmed the PHY is inside the laptop.

> Since no docking connected why driver should run?

Because the SoC in the laptop has an I219 device?

> There is no RJ45 port on laptop.

The Lenovo ethernet dongle wires the RJ45 to the I219 device.

> S0ix flow same (I got confirmation from our architecture team) and should haven't impact on Sx.
> if PHY located externally... during S0ix flow we try access to the PHY and it can be problem. Since laptop have no RJ45 connector driver not expected to run I though.

But the I219 device is always on the PCI bus so e1000e should bind to it?

Kai-Heng
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
