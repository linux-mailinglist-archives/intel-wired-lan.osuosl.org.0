Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A8A2B11E6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Nov 2020 23:40:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6048620369;
	Thu, 12 Nov 2020 22:40:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LrTE8Lp43ApK; Thu, 12 Nov 2020 22:40:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BA7222038D;
	Thu, 12 Nov 2020 22:40:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3563A1BF41F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 22:38:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2CBB687839
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 22:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LdoKkjFm5bjq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Nov 2020 22:38:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
 [209.85.210.180])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D369387837
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 22:38:44 +0000 (UTC)
Received: by mail-pf1-f180.google.com with SMTP id w14so5885110pfd.7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 14:38:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/7kSb4NjVEecqOcEpqWVXn3fzJoOdZMutr7tqTcoPE0=;
 b=WTpJp7OkwSXn5pxNsZ/8p7lPR1MZA+FGFRoQJbIr0Adgh9sEpsQRyQGtsMx5RphZZ5
 mSlO31k9UgUr5BEQkbLhesPS1iX45oF2NKLvbfQdC/MGMR2D/EfJav1WkvkeNlK9KZ2B
 fidYDxm8XUYoPSagtHgAsCIVWZjIvWor8vOeH7Y8qlrQTbU3rwSgo5HWLDjDozB/Tkpm
 hruEnlri+mz1+gM6DJ81Uyhq7y3I1MZyzBq46pkHSg8aixZrX6ZoSniJ2t5YuGrWqEAd
 jIdlWO6fsesv7CBxv+/MRadsKv02vgO5t5+4CTP7mQfhMFX6HPsLyE3JzTN+/gbxvCAO
 0+DA==
X-Gm-Message-State: AOAM533AfD6zkalK9r89Lb7YryIjgDzMPaHINobhAVZYBrVJdNMbjcHk
 77IDfcjUCOlPCyKF3J6c+W8=
X-Google-Smtp-Source: ABdhPJwpQOtNqR82rm/Z71mcPK/Mt5O79eAy835UX8INoMEf5PtKGgLK2MZfh27gUnU14puUFWEddA==
X-Received: by 2002:a17:90a:f492:: with SMTP id
 bx18mr1425810pjb.123.1605220724465; 
 Thu, 12 Nov 2020 14:38:44 -0800 (PST)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id r73sm7747094pfc.20.2020.11.12.14.38.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Nov 2020 14:38:40 -0800 (PST)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 09C2940715; Thu, 12 Nov 2020 22:38:38 +0000 (UTC)
Date: Thu, 12 Nov 2020 22:38:37 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20201112223837.GH4332@42.do-not-panic.com>
References: <c21d1ef1ddb071eed868a96649b4edf0b61b4247.camel@codethink.co.uk>
 <20201107152827.GA90705@kroah.com>
 <CAB=NE6U=kTw_R+OkqLf0iT0Bwti8w=7RWjWgeQmVQssbZ4OL3w@mail.gmail.com>
 <20201108091214.GB44749@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201108091214.GB44749@kroah.com>
X-Mailman-Approved-At: Thu, 12 Nov 2020 22:40:30 +0000
Subject: Re: [Intel-wired-lan] [4.14] Security fixes (blktrace, i40e)
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
Cc: Sasha Levin <Alexander.Levin@microsoft.com>, Jens Axboe <axboe@kernel.dk>,
 Ben Hutchings <ben.hutchings@codethink.co.uk>,
 intel-wired-lan@lists.osuosl.org, stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Nov 08, 2020 at 10:12:14AM +0100, Greg Kroah-Hartman wrote:
> On Sun, Nov 08, 2020 at 03:04:14AM -0600, Luis Chamberlain wrote:
> > I'd like some more time for this, to review on older kernels. Don't think
> > it's the best yet
> 
> What is "this" and what is "the best yet"?  Which patch(s) here are you
> referring to in your context-less top-post?  :)

Sorry, I had to send the email as I did as I was not able to access a
computer to properly reply on time (local hurricane cut power off and
internet for a while), and in proper form, and so I figured it would be
more prudent to request to *yield* merging until I do proper review.

Given I am replying to patches which I authored I figured you could
at least infer the email was about blktrace... so you are really
exagerating contextless comment here.

Anyway, you can carry on with the fix for blktrace to be merged,
the concerne would be if you decide to backport the other important
fix "block: revert back to synchronous request_queue removal".

That is, do not merge that loosely, even if you don't see any issues.
This requires a bit more work to backport.

  Luis
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
