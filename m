Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3637E36C786
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Apr 2021 16:07:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5457A405E9;
	Tue, 27 Apr 2021 14:07:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dkKgGaYxbO3k; Tue, 27 Apr 2021 14:07:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E8A5405E8;
	Tue, 27 Apr 2021 14:07:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 985E81BF404
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Apr 2021 06:57:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 86627607C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Apr 2021 06:57:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=natalenko.name
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g0Vl8zZbIryn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Apr 2021 06:57:21 +0000 (UTC)
X-Greylist: delayed 00:09:39 by SQLgrey-1.8.0
Received: from vulcan.natalenko.name (vulcan.natalenko.name
 [IPv6:2001:19f0:6c00:8846:5400:ff:fe0c:dfa0])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 36F7A6078C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Apr 2021 06:57:20 +0000 (UTC)
Received: from localhost (kaktus.kanapka.ml [151.237.229.131])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by vulcan.natalenko.name (Postfix) with ESMTPSA id B09E1A4F81D;
 Mon, 26 Apr 2021 08:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
 s=dkim-20170712; t=1619419657;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=hFtP1eOQddasIQX+cRuKOVejzwpAMEMFVa7yR+iwH4I=;
 b=L3ZsAqfUjUWgneNywT2x9J81/ncsgSJzdZrKsmkpSJOI2ZW8NXFvavseYFTF4bRJsIcrCY
 hk1gIisOhNWdd4LKvWzgOdOLAQsq9UPvVlWR4VRjButDwaCZ5K1lp1HYur1S0KyHX5h3xK
 wcwlTBb3d9XfYW1ElJgpdoNQLXyKLQg=
Date: Mon, 26 Apr 2021 08:47:36 +0200
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210426064736.7efynita4brzos4u@spock.localdomain>
References: <20210406123619.rhvtr73xwwlbu2ll@spock.localdomain>
 <20210406114734.0e00cb2f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210407060053.wyo75mqwcva6w6ci@spock.localdomain>
 <20210407083748.56b9c261@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAKgT0UfLLQycLsAZQ98ofBGYPwejA6zHbG6QsNrU92mizS7e0g@mail.gmail.com>
 <20210407110722.1eb4ebf2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAKgT0UcQXVOifi_2r_Y6meg_zvHDBf1me8VwA4pvEtEMzOaw2Q@mail.gmail.com>
 <20210423081944.kvvm4v7jcdyj74l3@spock.localdomain>
 <20210423155836.25ef1e77@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210423155836.25ef1e77@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Mailman-Approved-At: Tue, 27 Apr 2021 14:07:03 +0000
Subject: Re: [Intel-wired-lan] [igb] netconsole triggers warning in
 netpoll_poll_dev
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello.

On Fri, Apr 23, 2021 at 03:58:36PM -0700, Jakub Kicinski wrote:
> On Fri, 23 Apr 2021 10:19:44 +0200 Oleksandr Natalenko wrote:
> > On Wed, Apr 07, 2021 at 04:06:29PM -0700, Alexander Duyck wrote:
> > > On Wed, Apr 7, 2021 at 11:07 AM Jakub Kicinski <kuba@kernel.org> wrote:  
> > > > Sure, that's simplest. I wasn't sure something is supposed to prevent
> > > > this condition or if it's okay to cover it up.  
> > > 
> > > I'm pretty sure it is okay to cover it up. In this case the "budget -
> > > 1" is supposed to be the upper limit on what can be reported. I think
> > > it was assuming an unsigned value anyway.
> > > 
> > > Another alternative would be to default clean_complete to !!budget.
> > > Then if budget is 0 clean_complete would always return false.  
> > 
> > So, among all the variants, which one to try? Or there was a separate
> > patch sent to address this?
> 
> Alex's suggestion is probably best.
> 
> I'm not aware of the fix being posted. Perhaps you could take over and
> post the patch if Intel doesn't chime in?

So, IIUC, Alex suggests this:

```
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index a45cd2b416c8..7503d5bf168a 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -7981,7 +7981,7 @@ static int igb_poll(struct napi_struct *napi, int budget)
 						     struct igb_q_vector,
 						     napi);
 	bool clean_complete = true;
-	int work_done = 0;
+	unsigned int work_done = 0;
 
 #ifdef CONFIG_IGB_DCA
 	if (q_vector->adapter->flags & IGB_FLAG_DCA_ENABLED)
@@ -8008,7 +8008,7 @@ static int igb_poll(struct napi_struct *napi, int budget)
 	if (likely(napi_complete_done(napi, work_done)))
 		igb_ring_irq_enable(q_vector);
 
-	return min(work_done, budget - 1);
+	return min_t(unsigned int, work_done, budget - 1);
 }
 
 /**
```

Am I right?

Thanks.

-- 
  Oleksandr Natalenko (post-factum)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
