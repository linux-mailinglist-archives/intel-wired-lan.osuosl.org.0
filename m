Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 25182D519B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Oct 2019 20:24:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF1AB85FB6;
	Sat, 12 Oct 2019 18:24:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LaCREcLS_5vZ; Sat, 12 Oct 2019 18:24:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 67FAF85F49;
	Sat, 12 Oct 2019 18:24:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A76F61BF28C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:24:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9ED0920119
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:24:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k2ES7blcmmym for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Oct 2019 18:24:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 806672000E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:24:12 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id b128so8015167pfa.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 11:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6QaCuB8+ewa1hushkq9gzE3hzCX5Oi/rv+NRbA2RpEc=;
 b=rza6HFcHty6NQZGFhQDs/nk9cAFjOUjkvRvnhUyu3rS0WbRKGWyBCe274zCKZPFWTl
 edSjOlptEh4ZIsEpN+5C8A/jUV2TKfMBsup6JOodPc1YhtQc22lqShSFBv+9BLW6/ae4
 wcdcEfzU/dcuH+8fT/9g10GJjVJWz8smDRUAZ4P7UwEhTVkY0vuUbu7v+N7Lr8cx54nX
 uHQde7QjKpcl+xmPkfRQckJIczKHYh7zDQDbZ1MUY5x0/2ZeKJXkWmoCwZwIyNZmTLOh
 qA11u8plkikjZIZzx4atYfo+YGnOebyap/4lmRqPc3BbzYtbO2zXlWQq71k96hN7nlsx
 eACg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6QaCuB8+ewa1hushkq9gzE3hzCX5Oi/rv+NRbA2RpEc=;
 b=DGx/CTBhUQ2EJ6RNfCKe77/y6DwRuM6Qi8Qg7HOJZYTTTXKAfo4KE90JNQKUqfto4i
 4k/ahbdKdogLjIBLGK9sjwDZ0Bma0pvppuSfS5LzxKJqYQmifVpnRyOxQmDbGEoYWrJr
 G/wJA2NQsjChGeJIIlXr9BC4CrYe+u8n8owk2ZD0qX9XF0iL4Ii480so9O/slXVM8ah2
 rUkff8BMlePhm5KqN0TyB/05ejv73cpjfNHYgq8xprxAmr6vQa2f1FHF45hi3QExgDJF
 TkkoOnewqjCQNBrjapXXmFjXbTvEllDG+liAd1lW+EekfwJbusLWoYzt3Bd85sW50AtX
 BiuA==
X-Gm-Message-State: APjAAAXeZBR+H8z9nPXFg7uJixPJuSkNrI6jNqk+/i7K7EGHC9OqXc2s
 uJoNga7ag7s3BgViHZWaT/A=
X-Google-Smtp-Source: APXvYqzcZO+iZEH6yEmVzubjeRTVxudnumFJRFmufyWgxWB6X5zXUdI2ZNg2O3RHNKhtkExqPqt2yA==
X-Received: by 2002:a17:90a:9416:: with SMTP id
 r22mr25439134pjo.20.1570904652089; 
 Sat, 12 Oct 2019 11:24:12 -0700 (PDT)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id j128sm13686611pfg.51.2019.10.12.11.24.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:24:11 -0700 (PDT)
Date: Sat, 12 Oct 2019 11:24:09 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20191012182409.GD3165@localhost>
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
 <20190926181109.4871-4-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926181109.4871-4-jacob.e.keller@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [net-next v3 3/7] mv88e6xxx: reject
 unsupported external timestamp flags
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
Cc: netdev@vger.kernel.org, Brandon Streiff <brandon.streiff@ni.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 26, 2019 at 11:11:05AM -0700, Jacob Keller wrote:
> Fix the mv88e6xxx PTP support to explicitly reject any future flags that
> get added to the external timestamp request ioctl.
> 
> In order to maintain currently functioning code, this patch accepts all
> three current flags. This is because the PTP_RISING_EDGE and
> PTP_FALLING_EDGE flags have unclear semantics

For the record, the semantics are (or should be):

  flags                                                 Meaning                   
  ----------------------------------------------------  -------------------------- 
  PTP_ENABLE_FEATURE                                    invalid                   
  PTP_ENABLE_FEATURE|PTP_RISING_EDGE                    Time stamp rising edge
  PTP_ENABLE_FEATURE|PTP_FALLING_EDGE                   Time stamp falling edge
  PTP_ENABLE_FEATURE|PTP_RISING_EDGE|PTP_FALLING_EDGE   Time stamp both edges   

> and each driver seems to
> have interpreted them slightly differently.

This driver has:

  flags                                                 Meaning                   
  ----------------------------------------------------  -------------------------- 
  PTP_ENABLE_FEATURE                                    Time stamp falling edge
  PTP_ENABLE_FEATURE|PTP_RISING_EDGE                    Time stamp rising edge
  PTP_ENABLE_FEATURE|PTP_FALLING_EDGE                   Time stamp falling edge
  PTP_ENABLE_FEATURE|PTP_RISING_EDGE|PTP_FALLING_EDGE   Time stamp rising edge
 
> Cc: Brandon Streiff <brandon.streiff@ni.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Richard Cochran <richardcochran@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
