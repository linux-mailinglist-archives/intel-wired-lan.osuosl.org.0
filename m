Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C57371655
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 May 2021 15:58:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3381B84195;
	Mon,  3 May 2021 13:58:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yx8SPEY_feFX; Mon,  3 May 2021 13:58:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6042383F21;
	Mon,  3 May 2021 13:58:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 35C8A1BF28C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 May 2021 12:32:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 23C7F60B1C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 May 2021 12:32:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7wAnTYUWEwrp for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 May 2021 12:32:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF55160B15
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 May 2021 12:32:41 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id l14so5359976wrx.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 03 May 2021 05:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8ZlZNvnRym2MDQbFd2HN5geIh0ymC5AhetOzMMU4oqI=;
 b=AzCU1KJg5/MOElK12MA/FlJUSqjOjFzj3GMw+afpkRNv7h2Ldrf9LE78zkdN9HMWqm
 zGYh6+DKToLWUsJraM14oJ/O6qYGGlJtfYls62DqsmeXHQYIgoCjeS+ogQc1BvRUWhu7
 jMlRdTcdN6eZrTp85y4rWeYnG1ORRPAyz3YoMvXq4JYnWuYLP2mfVs6/6R4gU0jMdiZO
 stz+DOr5s06pF/57lt9QRXgvouZEWEYNRDjKpgygDPI/V8nM73+IcM8wEa8TZ4UepIYM
 6cVOXQkD/L+Sc4GLJYMIE2bV+M3fghOPRRsp1br5lSFevKn2vouLF7PUNtWgNC0dbJTO
 t9yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8ZlZNvnRym2MDQbFd2HN5geIh0ymC5AhetOzMMU4oqI=;
 b=AaDyd5gobrtjbFGwC17S1ZKwVpeFtylbogLqaR1erlw0r5pdQ18ULqFVMjRVYe+vEE
 xGX0u+l6tJVKR46yZlVKjIBNGdWQhpoiy3HJA9E3V7HHfgpDyOkeC8lggj7nL5eHCeTr
 CkJvz+pZ5bekGAxQj/184OhianB61JW8/rks51N1P7tJLWM+9ZOn91i/AhTSuv+OenUh
 m1LgVaFK+cqNMQaf/fv/dO0V3W676kEKw4DqpNipeWJeJeQI9urEic+IzJU8exGHMb3L
 010txtgf2o30l4a8rShS6h1Lif67tjVsFVctxUYYQuiJkspuU1HgGz5hZ6p3l2IvrChJ
 wIaQ==
X-Gm-Message-State: AOAM533IZBvXFkwdPgZN64CmsvPDpVl6fS5fLQTofNuNyo7J3F1+n3mu
 xGmfQlPXbmFBKDqWdH+gINV+pByQInZGxcJqSOY=
X-Google-Smtp-Source: ABdhPJzXmQCqXWnlCtcTTIGowjDEsO2sYyajSabEJJz6+xQOL2wtqJIfyu8TA3bdE+ti0qDGZZ8gmC91Ju6KgtlClw4=
X-Received: by 2002:a5d:610c:: with SMTP id v12mr24879954wrt.57.1620045160042; 
 Mon, 03 May 2021 05:32:40 -0700 (PDT)
MIME-Version: 1.0
References: <20201221222502.1706-1-nick.lowe@gmail.com>
 <379d4ef3-02e5-f08a-1b04-21848e11a365@bluematt.me>
 <20210201084747.2cb64c3f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <a7a89e90bf6c3f383fa236b1128db8d012223da0.camel@intel.com>
 <20210201114545.6278ae5c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <69e92a09-d597-2385-2391-fee100464c59@bluematt.me>
 <CADSoG1vn-T3ZL0uZSR-=TnGDdcqYDXjuAxqPaHb0HjKYSuQwXg@mail.gmail.com>
 <20210201123350.159feabd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210201123350.159feabd@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Nick Lowe <nick.lowe@gmail.com>
Date: Mon, 3 May 2021 13:32:24 +0100
Message-ID: <CADSoG1sf9zXj9CQfJ3kQ1_CUapmZDa6ZeKtbspUsm34c7TSKqw@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Approved-At: Mon, 03 May 2021 13:58:31 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] igb: Enable RSS for Intel I211
 Ethernet Controller
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Matt Corallo <linux-wired-list@bluematt.me>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi all,

Now that the 5.12 kernel has released, please may we consider
backporting commit 6e6026f2dd2005844fb35c3911e8083c09952c6c to both
the 5.4 and 5.10 LTS kernels so that RSS starts to function with the
i211?

Best,

Nick
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
