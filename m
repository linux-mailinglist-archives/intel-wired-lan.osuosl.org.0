Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 032FE277EC1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Sep 2020 05:57:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A2DD87569;
	Fri, 25 Sep 2020 03:57:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dS7oRI0rV2Z9; Fri, 25 Sep 2020 03:57:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF40B87560;
	Fri, 25 Sep 2020 03:57:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ED6141BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 03:57:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E8F9786B75
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 03:57:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RO8zJmJGY6nQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Sep 2020 03:57:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 125A286B5E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 03:57:41 +0000 (UTC)
Received: from mail-pg1-f199.google.com ([209.85.215.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1kLerc-00078t-1x
 for intel-wired-lan@lists.osuosl.org; Fri, 25 Sep 2020 03:57:40 +0000
Received: by mail-pg1-f199.google.com with SMTP id e28so1179117pgm.15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 20:57:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=1LdherrVFx5eJRxgEW9+dGdwxO9PmjDU56jtqG1BEPk=;
 b=e2jPBzhPTbUViux5I1FRSez5h1D6TGwQ03dIMMbIjbdpC06JVon810T0tHKplqzcIA
 oC3h75GveKkPMsqdqREcBo8kWB4ApVL12hp5553Aav9N2yMOQ/QqW4w+kYoxrve352ZA
 mSdvAcxoOYu0kdl9JensEAxnQU4IPacSDcBbiic9AJXQ0gcgEdD8RBzk2mzJAA3Fjtag
 FPOUKa6Js0imgE7o6jqyy1X/bAs0CObIsCWrCkvWj9giBMLgpwwO9dzg3GLPVtRDDnfR
 tWBS+EQPcNyAqYA4sHi8QFWhEGEzn+V1lPjCVifAo+QQaaJW7QOXjWBgXoFuokqrFCr+
 QCqg==
X-Gm-Message-State: AOAM532X6BUtfYWJQdQ9cyvU8EX6t8nSGhe+kJ1b61ADIS0GqeQRNurC
 3tpepZUIuwbXE//769H6Cya8FOwRxj3kspb5IdHr1YpTKMSgI2WLfKCEaQ9VwRPgHnA45vtLoWX
 TVI8r017Fvf3Ms+Wl32UL9N+1nZqa+SxxCCKfVY1IY5SKtJ0=
X-Received: by 2002:a17:90a:ec06:: with SMTP id l6mr849221pjy.66.1601006258428; 
 Thu, 24 Sep 2020 20:57:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy7pLxjFzkzosFKtVxO8GnnwK1Fol9HRjQArB4CvcP1EqjBodisTZUbT0khBqkmqeNntbJ60Q==
X-Received: by 2002:a17:90a:ec06:: with SMTP id l6mr849204pjy.66.1601006258035; 
 Thu, 24 Sep 2020 20:57:38 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id gb17sm627128pjb.15.2020.09.24.20.57.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 24 Sep 2020 20:57:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20200924195719.GF3821492@lunn.ch>
Date: Fri, 25 Sep 2020 11:57:34 +0800
Message-Id: <C35CA226-13B9-4116-92F8-01E1AFDAD821@canonical.com>
References: <20200924150958.18016-1-kai.heng.feng@canonical.com>
 <20200924164542.19906-1-kai.heng.feng@canonical.com>
 <20200924195719.GF3821492@lunn.ch>
To: Andrew Lunn <andrew@lunn.ch>
X-Mailer: Apple Mail (2.3608.120.23.2.1)
Subject: Re: [Intel-wired-lan] [PATCH v3] e1000e: Increase iteration on
 polling MDIC ready bit
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
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> On Sep 25, 2020, at 03:57, Andrew Lunn <andrew@lunn.ch> wrote:
> 
> On Fri, Sep 25, 2020 at 12:45:42AM +0800, Kai-Heng Feng wrote:
>> We are seeing the following error after S3 resume:
>> [  704.746874] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
>> [  704.844232] e1000e 0000:00:1f.6 eno1: MDI Write did not complete
>> [  704.902817] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
>> [  704.903075] e1000e 0000:00:1f.6 eno1: reading PHY page 769 (or 0x6020 shifted) reg 0x17
>> [  704.903281] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
>> [  704.903486] e1000e 0000:00:1f.6 eno1: writing PHY page 769 (or 0x6020 shifted) reg 0x17
>> [  704.943155] e1000e 0000:00:1f.6 eno1: MDI Error
>> ...
>> [  705.108161] e1000e 0000:00:1f.6 eno1: Hardware Error
>> 
>> As Andrew Lunn pointed out, MDIO has nothing to do with phy, and indeed
>> increase polling iteration can resolve the issue.
>> 
>> The root cause is quite likely Intel ME, since it's a blackbox to the
>> kernel so the only approach we can take is to be patient and wait
>> longer.
> 
> Please could you explain how you see Intel ME being responsible for
> this. I'm not convinced.

Some other occurrences:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d17c7868b2f8e329dcee4ecd2f5d16cfc9b26ac8
https://lore.kernel.org/netdev/20200323191639.48826-1-aaron.ma@canonical.com/

Of course we need an ACK from Intel this one is also related to ME.

Kai-Heng

> 
>      Andrew

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
