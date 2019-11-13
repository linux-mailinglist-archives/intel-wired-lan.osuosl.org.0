Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F04FB600
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Nov 2019 18:10:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 080AE87B6A;
	Wed, 13 Nov 2019 17:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Ao6DVH8Ui2T; Wed, 13 Nov 2019 17:10:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E8A387CD6;
	Wed, 13 Nov 2019 17:10:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9CD401BF84C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2019 17:10:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9927F81EE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2019 17:10:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dJz+3BzMCk0T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Nov 2019 17:10:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D64E381ECF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2019 17:10:14 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id z24so1764251pgu.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2019 09:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=y2EFycocOTFDQi5LnP6cTlfzgOXuhPysyRl3IXcjR+w=;
 b=Uq5hG/ATUyd8FTqcOWnWrUEJ7ak0tiKIWiY0eqGcusHG56t/DQJUWZNEtAFOzSwkPd
 Z6v3R+xQpvqOXMc9OikHlWSka4bThIFRuDjHXzFH9X/r/P4UT+qpybAVw6/B+tKcT6m/
 5y82M9KERoZ3urT1t+ybFvGhRoAihgXB34N//Oyi0nBHl0bO/+qQzF9QKoX9aeqVWm0E
 3H6LTdmfRqqAXKHFwHmgiKXJMbrEhNCmP8L4NtPhgnrOIFS9Cn1x4sD8PEZjULkymHq2
 cJqyT1Tq3Ty4XclBarG51ni8NFnsMA8X50KrWCteJARM9+ZWuwGmPMkqUquAVwYpg6OR
 hk8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=y2EFycocOTFDQi5LnP6cTlfzgOXuhPysyRl3IXcjR+w=;
 b=rPjR592EK7x5ZqVoNYhrS1I3LaPxCPlKONnzWJxFzTN2f+++tnvssHvg9eehgKDo35
 AoTXpfPXAPT9wLcxR6FOBz6Pd/tsDfLx3jPHN14YJB5LjLIIvbcBDF3yNHnZGexNYfdP
 gTZ8Zi09Y4Q5g4rMf5k1y2zlP8FoYtTY4F7GIbzW9OztJsldOcSg0Oz4sHQLJ4KvYFm6
 4sCQEYksmKcfPb2l5dywLordPeqLtkNiNyvE6LqlYBd6zgTjFUQxSjMUE9PFh7RkViC4
 gvNDCEo7XKXoS6XaqNgIaM5nEJhjaywwR64hqU9G3Zu/AGtrBYkn0HbnyenmDNw+rTGS
 NyZA==
X-Gm-Message-State: APjAAAU4f0P2DCtuUoqWpVIbX5+5JzrkXZ6pjy124VnOeaAgJJTeCgbV
 /CrPNhq6tHWHoG7LysC5394=
X-Google-Smtp-Source: APXvYqzU8Q4LrKMSUKbOLlL+2TDmP67CvgBmNGy76t1FwqQZC8uhYB381rk6dxgE6nld1D1zPemYHg==
X-Received: by 2002:a63:7cf:: with SMTP id 198mr4908885pgh.372.1573665014336; 
 Wed, 13 Nov 2019 09:10:14 -0800 (PST)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id u207sm4396691pfc.127.2019.11.13.09.10.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 09:10:13 -0800 (PST)
Date: Wed, 13 Nov 2019 09:10:11 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20191113171011.GA16997@localhost>
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
 <20191113015809.GA8608@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113015809.GA8608@localhost>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [net-next v3 0/7] new PTP ioctl fixes
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
Cc: netdev@vger.kernel.org, Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 12, 2019 at 05:58:09PM -0800, Richard Cochran wrote:
> There is still time before v5.4 gets released.  Would you care to
> re-submit the missing six patches?

Or, if you don't mind, I can submit these for you, along with the
STRICT flag checking for v2 ioctls that we discussed.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
