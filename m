Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E3FD1C2A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2019 00:48:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EB0C123735;
	Wed,  9 Oct 2019 22:48:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cfh5XtptQGG4; Wed,  9 Oct 2019 22:48:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 111A42342E;
	Wed,  9 Oct 2019 22:48:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A88781BF3CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:48:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 96345204CD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:48:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BtzJALeIqFb6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 22:48:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by silver.osuosl.org (Postfix) with ESMTPS id D09EE204C9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 22:48:20 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id c21so5816847qtj.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Oct 2019 15:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=Z+3EdhKE+AeW2xdFzbCTybbKxG5jLxRNaHCmlepKnCw=;
 b=tPiQH17p72YrZtxFr1LqCPf01LguDgjeCPY7Ev5YfqIPrJ/jRhim9woLkOrLDv86X4
 /aTnTOeJ/t7E8+CWY4V1sCiZYSC0UHo+oyNlRfWZdzCIY98M1Nnf4MHw4wkL2zzQW/S/
 zw4SffqEqQHWaJ9Cj9mIgAzY3aMgpsd0+8CQH/3dmVd5Xt3ED0VnDQNuWzgAmkntww3b
 0sLsxRb5azzyG1iR14POYl4Z2x4ImSvxfU85iuQUVs5nD4C6PdRuUJvuYrd1xElpvJGy
 ZESG2CHc7o63RVUq95aRQ1wFXbsJ6UMNw0XEbffHkKP+h5m4racXVPILlsoVpCcNsU0G
 Eu2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=Z+3EdhKE+AeW2xdFzbCTybbKxG5jLxRNaHCmlepKnCw=;
 b=Be7xGo2HHZff8d0gvJAhTwk51bYPpNmULl/XxZpa5sLxKJfO/jslhggQol7bSaTz/z
 HlPUYjIYKqAfMXDgE6mEUfh3LUM1SV1VDNVZi7ej+YBwNJNV+5V+CjxIRgmqH5YugQz3
 9Xnz0pyrp0dq0B5I40nS4B+hVYER4qZV+nEpwk/B7DQB7t3b1erTnmIo99OB+hy/fK74
 GKPHWqkcBoOXsL8exNT6Acaf/oou7TMRTUPcgqvFzjjnp4bFDPpghgg2UKfFJRpSH2Xl
 4QsIyVfwv0u7SjeGcqdYQCA2lJlZECzTPwcRRqzJi5CQfqj6vvmbP/+teBVXPk9B8dOU
 35Ew==
X-Gm-Message-State: APjAAAWYabSKi3rmrb3/3nSaIIfUZfevb76w7oi3cEoiUNgtF49AMuBM
 MbVgGB3rnWh/Uhcnh1xctr0BRg==
X-Google-Smtp-Source: APXvYqzbI6LUeO5TJ+8XMFJemSA1dYxl8UN4xKPjlcsfjqpVjIN2lEJW3zfkTDGY3/sCKeE6Lff2vw==
X-Received: by 2002:ac8:682:: with SMTP id f2mr6557906qth.149.1570661298493;
 Wed, 09 Oct 2019 15:48:18 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id s16sm1414725qkg.40.2019.10.09.15.48.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 15:48:18 -0700 (PDT)
Date: Wed, 9 Oct 2019 15:48:03 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20191009154803.34e21bae@cakuba.netronome.com>
In-Reply-To: <20191003082953.396ebc1a@lwn.net>
References: <20191002150956.16234-1-j.neuschaefer@gmx.net>
 <20191002.172526.1832563406015085740.davem@davemloft.net>
 <20191003082953.396ebc1a@lwn.net>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] Documentation: networking: device
 drivers: Remove stray asterisks
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
Cc: linux-doc@vger.kernel.org, netdev@vger.kernel.org, j.neuschaefer@gmx.net,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 drivers@pensando.io, snelson@pensando.io, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 3 Oct 2019 08:29:53 -0600, Jonathan Corbet wrote:
> On Wed, 02 Oct 2019 17:25:26 -0700 (PDT)
> David Miller <davem@davemloft.net> wrote:
> 
> > Jon, how do you want to handle changes like this?  
> 
> In whatever way works best.  Documentation should make our lives easier,
> not get in the way :)
> 
> > I mean, there are unlikely to be conflicts from something like this so it
> > could simply go via the documentation tree.
> > 
> > Acked-by: David S. Miller <davem@davemloft.net>  
> 
> OK, I'll go ahead and apply it, then.

Hi Jon, I think Dave intended a few more patches to go via the doc
tree, in particular:

 docs: networking: devlink-trap: Fix reference to other document
 docs: networking: phy: Improve phrasing

Looks like those went missing. Would you mind taking those, or
would you prefer for them to land in the networking trees?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
