Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 01934ACBC51
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Jun 2025 22:32:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3649B820EF;
	Mon,  2 Jun 2025 20:32:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rRak1F7N7jfG; Mon,  2 Jun 2025 20:32:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2AC8820E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748896354;
	bh=MKY0xpRlWescwikOdDS95zv4h4U6S+cJGZjjK2bypvc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9u/2Sthp9vNL9iyxUECBwHOy98W9Z5RKJwsv6FCJMIrM+iFeznmo8on3RpsdTkn3D
	 q0D1jgVcsSqfgDNTf4U+0zavaOvSXXBNQUsp0NzG5cLXMNSQ4CFbq+cTgnZukop5L8
	 4Li/NZohFqklTX3ZDjPXIKH+P3sWB+uSna6CKbSYer3ODc4MZr8H96DkWygIb+LWPr
	 UDkSDKD4jmKejNYgm5fMEv7WXXzSIcJkG1HJABwPnctH/qAeDXCgPeAMPDkof/mQTR
	 o1CMTGHaV54o44BsRdYwE+BJj38Yz3Oqm+L3wagFCoKQByJz6rtXd8p59iK2iVIMHQ
	 yVz3l3U9rjrqA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2AC8820E9;
	Mon,  2 Jun 2025 20:32:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E1F3DDA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Jun 2025 20:32:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D3D2840F49
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Jun 2025 20:32:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OR-rqyNIkJbt for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Jun 2025 20:32:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42e; helo=mail-pf1-x42e.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 45F944044B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45F944044B
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 45F944044B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Jun 2025 20:32:32 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id
 d2e1a72fcca58-745fe311741so5416769b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Jun 2025 13:32:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748896351; x=1749501151;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=MKY0xpRlWescwikOdDS95zv4h4U6S+cJGZjjK2bypvc=;
 b=DSgSSFkFrZjIeZ5RV61qE6Xllk+FfX8BQ+5YFxWy38/NjD7t0tNN14kAm2nEk29sWF
 FEnbBV9ts/BZEvAvvIVnDEcZS3Y6wr/dByWeJcgbNfEvOWuZpP+9QsRK18ETUH8aemgy
 6XgypikMZuMMjbOdfHf34noDdmwdGlW+RMxIcKs+j6+hSQgHdygZ8W/oLyAl8LX97Vwy
 Yu+H3UdHHR2M/wN8vHFEvo+9jJikPiU4FHjvq9nwoaXL7vnYIrHM3ZFDoXn4h9wtn9NP
 7k9CBeFXuNtkaNrVh3UKluvt3E7GTK0dk7jgsq6VZyjcu8Jd6LIUZq3Cq1Zp7WKU0uYn
 0ZfA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV1Wq8C2VK7JkVdH4Gphrkh6Bp3j5wpjKhl1OzfcmtVF3qbagOMhYR/h19EWTZobQL+sLcHvZ9RprCSqhFA6SI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzBPqjFOYUCW0b/aum4oALZltVGqspnQcxrrBvW6EZKpMg0rRtP
 pVAKdopRB8cuIo16mnWyyPvLDc+SF+qqVUuI1oPttg2+l8l1SNvdpIom4tXUOzOVg0E=
X-Gm-Gg: ASbGncuoBstRH8dM+byXCvPB1fTYLO6ruubh+kPef+nwIYNyH/6D4wXdXBA8CG3CbgD
 f2A7Vm1JcY3jIFuSy0NhSyBb6oSe6J0fV+quBAYEkKWREZAZOR/IcUAXppVVMZfYUljuGHH6TYZ
 cXg1UB0BlhHbeTSZ9E79RD84MvWoJrLUzC+H9/TjpJTiYS4vJrEDvQKZAKlkyxkDAfyGO1Jrtrp
 thAueJNN45PbF7uenUCBOfA9t4+1WMRJY+MTtOx6pyPDBymu74il5slEBPuQ3nkIUo97r2YF+DE
 ibIgeDhcs1v88Wf4tqtA/1IgYh76UJHdi+2NKntOOeD8mAKBZpad4NnseaojYbcNSe2Qxaur4Pm
 KK7h5byD1tFwOKjzlQg==
X-Google-Smtp-Source: AGHT+IGneH3ZjE1X55YkvRRC0w/esHFCwi1QDRyB+2Z4QhUh5mHCAaiOucMZE/mRoa8hbPYbxu9YFw==
X-Received: by 2002:a05:6a00:847:b0:740:a52f:9652 with SMTP id
 d2e1a72fcca58-747bd969f9cmr16919224b3a.6.1748896351553; 
 Mon, 02 Jun 2025 13:32:31 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-747affcfa0csm8279352b3a.131.2025.06.02.13.32.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Jun 2025 13:32:31 -0700 (PDT)
Date: Mon, 2 Jun 2025 13:32:28 -0700
From: Joe Damato <jdamato@fastly.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Stanislav Fomichev <stfomichev@gmail.com>, netdev@vger.kernel.org,
 john.cs.hey@gmail.com, jacob.e.keller@intel.com,
 syzbot+846bb38dc67fe62cc733@syzkaller.appspotmail.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>
Message-ID: <aD4KXAj0ZlZ5b42f@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Stanislav Fomichev <stfomichev@gmail.com>, netdev@vger.kernel.org,
 john.cs.hey@gmail.com, jacob.e.keller@intel.com,
 syzbot+846bb38dc67fe62cc733@syzkaller.appspotmail.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20250530014949.215112-1-jdamato@fastly.com>
 <aDnJsSb-DNBJPNUM@mini-arch> <aDoKyVE7_hVENi4O@LQ3V64L9R2>
 <20250530183140.6cfad3ae@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250530183140.6cfad3ae@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1748896351; x=1749501151; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MKY0xpRlWescwikOdDS95zv4h4U6S+cJGZjjK2bypvc=;
 b=wuw7G6Tw3+l5qoetASvBhipcuLaoxfMrtnO9/OjdjWATIViQ7zJiUesMq7fHjvfbY6
 DFR2XV4MKSE8fYl3i5LGsjlR5Wp1R5N65sWXhe2lAx7EwEf5d7is1oj/O37msjquaEg6
 FgB1McqZkDj1hTtnAlq0XsACbbiOIU1lOVPfs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=wuw7G6Tw
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] e1000: Move cancel_work_sync
 to avoid deadlock
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 30, 2025 at 06:31:40PM -0700, Jakub Kicinski wrote:
> On Fri, 30 May 2025 12:45:13 -0700 Joe Damato wrote:
> > > nit: as Jakub mentioned in another thread, it seems more about the
> > > flush_work waiting for the reset_task to complete rather than
> > > wq mutexes (which are fake)?  
> > 
> > Hm, I probably misunderstood something. Also, not sure what you
> > meant by the wq mutexes being fake?
> > 
> > My understanding (which is prob wrong) from the syzbot and user
> > report was that the order of wq mutex and rtnl are inverted in the
> > two paths, which can cause a deadlock if both paths run.
> 
> Take a look at touch_work_lockdep_map(), theres nosaj thing as wq mutex.
> It's just a lockdep "annotation" that helps lockdep connect the dots
> between waiting thread and the work item, not a real mutex. So the
> commit msg may be better phrased like this (modulo the lines in front):
> 
>    CPU 0:
>   , - RTNL is held
>  /  - e1000_close
>  |  - e1000_down
>  +- - cancel_work_sync (cancel / wait for e1000_reset_task())
>  |
>  | CPU 1:
>  |  - process_one_work
>   \ - e1000_reset_task
>    `- take RTNL 

OK, I'll resubmit shortly with the following commit message:

    e1000: Move cancel_work_sync to avoid deadlock

    Previously, e1000_down called cancel_work_sync for the e1000 reset task
    (via e1000_down_and_stop), which takes RTNL.

    As reported by users and syzbot, a deadlock is possible in the following
    scenario:

    CPU 0:
      - RTNL is held
      - e1000_close
      - e1000_down
      - cancel_work_sync (cancel / wait for e1000_reset_task())

    CPU 1:
      - process_one_work
      - e1000_reset_task
      - take RTNL

    To remedy this, avoid calling cancel_work_sync from e1000_down
    (e1000_reset_task does nothing if the device is down anyway). Instead,
    call cancel_work_sync for e1000_reset_task when the device is being
    removed.
