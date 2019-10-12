Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CFBD51A0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Oct 2019 20:31:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 787D320119;
	Sat, 12 Oct 2019 18:31:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QnpC-NVve8Me; Sat, 12 Oct 2019 18:31:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CDF3F203CE;
	Sat, 12 Oct 2019 18:31:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E2EEB1BF28C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:31:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DCCBD85EF3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:31:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R-a0TORW3v3C for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Oct 2019 18:31:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
 [209.85.214.176])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A589585EE9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:31:12 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id s17so6024102plp.6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 11:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=137/MKYT1FNFFjoBRY1hvbdAVT4qFoo7IGV1ZmT7Z30=;
 b=p512EEDiOKJEn1zLUYoyChNEx3ukY0XhFXn7e+dx+uT/79pKNgz1jJf1dpAb5GpAQl
 o6Md2fy4vIAyXAnvnmyoSZ7T1x/9deHRNrfBYzJNJRoUIimgYMBu9+h6RcIlvBvGRIJ4
 99IK3YolNZ3Vry9RryIXS7X2srRrDoEwcNTuzS8/uSUre8WNLKtbx3IAfov2hSDCxdDB
 FnaWpS2zFgKFehYIXspNrmQjLoJd83re1UjBqkObq8kQWMssh99wWAmDq2edBM0hbnJI
 8yb8CV1RlvOE3QkUEOG5mMFe449maHefEIYBn6H1sV1vfEA4WIKuEvaVsYY4jX4yirtl
 JeWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=137/MKYT1FNFFjoBRY1hvbdAVT4qFoo7IGV1ZmT7Z30=;
 b=nnKNSCPlXhsr5zKRef0/A1icQ/TpH6szWGbBPPVqfQBpdB2xYq6hrQ0L3TITnwidEe
 K3ooK6Rq5nKqrjyacrxlwLfM1sstZAEFI3wmpwolvU2kpH6LPVKLAUO42+sDast4r3nW
 Ou9rdC7p5lBksLECVsfJVsdxWw84FJ6eIWVTN9RgDm+yR2CNpW6Yor7gAuh3tobWJXus
 2urk6JKhICmZG650E/7TuoMlE2nYf1vaSUMYsqHIC+wfDL9DLSxkP2aFPBxMKdXEE5sB
 4d9k5VOmAH/PzN9kCispirl7QERsn5zkYrbzQSwR102y2VzBvSU+lUSgdUcGZTYmeFAG
 3wFQ==
X-Gm-Message-State: APjAAAXfWqudm3WXI/MO8JLsHGXXO9ORo44PaH514TM67ZkCEG2J+y4Z
 24oUZMn9gY9lQ5X6aGcsxT2mbiJU
X-Google-Smtp-Source: APXvYqzDqsXqHaKCHT3zjCUjLMxQjKFRCWgXFnj8igbBOEjJWqCmR9uCjD+AHpr/2SHo7yKtwAt8DQ==
X-Received: by 2002:a17:902:7b96:: with SMTP id
 w22mr21558132pll.40.1570905072120; 
 Sat, 12 Oct 2019 11:31:12 -0700 (PDT)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id m12sm16885687pff.66.2019.10.12.11.31.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:31:11 -0700 (PDT)
Date: Sat, 12 Oct 2019 11:31:09 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20191012183109.GF3165@localhost>
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
 <20190926181109.4871-6-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926181109.4871-6-jacob.e.keller@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [net-next v3 5/7] igb: reject unsupported
 external timestamp flags
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

On Thu, Sep 26, 2019 at 11:11:07AM -0700, Jacob Keller wrote:
> Fix the igb PTP support to explicitly reject any future flags that
> get added to the external timestamp request ioctl.
> 
> In order to maintain currently functioning code, this patch accepts all
> three current flags. This is because the PTP_RISING_EDGE and
> PTP_FALLING_EDGE flags have unclear semantics and each driver seems to
> have interpreted them slightly differently.

This HW always time stamps both edges:

  flags                                                 Meaning                   
  ----------------------------------------------------  -------------------------- 
  PTP_ENABLE_FEATURE                                    Time stamp both edges
  PTP_ENABLE_FEATURE|PTP_RISING_EDGE                    Time stamp both edges
  PTP_ENABLE_FEATURE|PTP_FALLING_EDGE                   Time stamp both edges
  PTP_ENABLE_FEATURE|PTP_RISING_EDGE|PTP_FALLING_EDGE   Time stamp both edges
 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Richard Cochran <richardcochran@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
