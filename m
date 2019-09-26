Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA4BBEAED
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Sep 2019 05:43:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E8FB4204FA;
	Thu, 26 Sep 2019 03:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6MCGny1Obfwo; Thu, 26 Sep 2019 03:43:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8B8692046F;
	Thu, 26 Sep 2019 03:43:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A411B1BF370
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 03:43:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9368785FC7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 03:43:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0WIVvprdUDS0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Sep 2019 03:43:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CE92885FA2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2019 03:43:48 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id i1so933567wro.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2019 20:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ti6ccZ5Qof3JA4rRR42TrR5os1w1D6TdLIcCGOCIc0c=;
 b=lMvHh5GXU0LjxIbnPzlXKiXgX0tSKAhNWfxswOASGPoCSuAS+8s4atAKNMxReJptGi
 YXn9yhk1+E1Zuy6FiEOI8mb6AvkqaInMqSEe2Fa7lMTjUzM1xmb+lTf1jRypWxd3HwAp
 55GCS4Z1/mfo3sk0/jVab83kc3+6O6b9D4B25jKKaujksseuoUZ4yrnLryHfHmPEbnXh
 2YDmD+U4yFvhJhWAL0kFrkvHmV5r/lvRP5QOjP1pUi9a13nunLBKyr1i/dRywmKkQlN/
 +1sVnpiQ3VsnZ7sHmefj16eS6bZmCpY87fgC4wrjOLXIA2/xjwDKvXKDkkcNhj6Wq6dY
 3+Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ti6ccZ5Qof3JA4rRR42TrR5os1w1D6TdLIcCGOCIc0c=;
 b=j+nj0+BvHa0AMFlHWoNrS9J5sOZLm2322mJUAogHVtg02q1m3Es/kDmoLR7PkGy9i8
 neumW6aaQ8G5k8+dshZI1oZtfl9NTTZNHxgLEcfavBC04YXVelW1DQNBp9+9oLE91RhB
 wh9I7PDf2kpYQBH47MsQFMF0/NoXQAEzeGUTFd3sfUl+6HEFAXuT6a2H0uW5gMKNIXNY
 sES6JUVW6CW3alL4BxFu58BAgH+wi7ldiDXNWLusFQZ3hXnN7Pq2oonT8PFHPkOdHqiL
 kCXFKRt6+wRyQcRsREWwWVQjCpsJ/viod3u6xyfH+gO2sU6RpUGmqVQaNQomrpT1ic8C
 np0g==
X-Gm-Message-State: APjAAAVfVtb3NC5awr4IDbVTmFyJ2sdS2usIbozsBahCiCNYuSGleT5B
 bAH8f9GoJ4M0ukpssIxDmmQ=
X-Google-Smtp-Source: APXvYqw0dsSjwy/YZsst2nmgxdBMSQIH/ZgIeJfb9jkDef1B5C+/IboSFkZOI1EOZibzQ/tjGRoslA==
X-Received: by 2002:adf:f404:: with SMTP id g4mr975991wro.353.1569469426940;
 Wed, 25 Sep 2019 20:43:46 -0700 (PDT)
Received: from localhost (195-70-108-137.stat.salzburg-online.at.
 [195.70.108.137])
 by smtp.gmail.com with ESMTPSA id c132sm850734wme.27.2019.09.25.20.43.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 20:43:46 -0700 (PDT)
Date: Wed, 25 Sep 2019 20:43:44 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20190926034344.GA21883@localhost>
References: <20190926022820.7900-1-jacob.e.keller@intel.com>
 <20190926022820.7900-2-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926022820.7900-2-jacob.e.keller@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [net-next v2 1/2] ptp: correctly disable
 flags on old ioctls
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
Cc: Christopher Hall <christopher.s.hall@intel.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>, netdev@vger.kernel.org,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 25, 2019 at 07:28:19PM -0700, Jacob Keller wrote:
> diff --git a/drivers/ptp/ptp_chardev.c b/drivers/ptp/ptp_chardev.c
> index 9c18476d8d10..67d0199840fd 100644
> --- a/drivers/ptp/ptp_chardev.c
> +++ b/drivers/ptp/ptp_chardev.c
> @@ -155,7 +155,7 @@ long ptp_ioctl(struct posix_clock *pc, unsigned int cmd, unsigned long arg)
>  			err = -EINVAL;
>  			break;
>  		} else if (cmd == PTP_EXTTS_REQUEST) {
> -			req.extts.flags &= ~PTP_EXTTS_VALID_FLAGS;
> +			req.extts.flags &= PTP_EXTTS_V1_VALID_FLAGS;

Duh, the bit wise negation was not the intention.  Thanks for catching
this, and introducing the "V1" set of flags makes sense.

@davem Please merge this patch as a bug fix.

Acked-by: Richard Cochran <richardcochran@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
