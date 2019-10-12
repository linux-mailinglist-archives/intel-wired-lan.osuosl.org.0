Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F6FD5189
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Oct 2019 20:09:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94EC68837F;
	Sat, 12 Oct 2019 18:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BYiQJRsVTPXM; Sat, 12 Oct 2019 18:09:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EECE888321;
	Sat, 12 Oct 2019 18:09:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8CD491BF28C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:09:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 892C385F5A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:09:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aTEwL7BybFn4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Oct 2019 18:09:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5E0AC85F59
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:09:00 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id q21so7961951pfn.11
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 11:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QuiDiQV6zWuTckoeUzNeF6DC2ybuOpZw11FEpf74/WY=;
 b=Ku5jaExXNyQ9Kl0v25TRbhncuqB44/pst1RT59tImkN/Ll88qIfkQBsPffCRj4tKFk
 kZYXYeVMkG7xf91M4WB47k4Fh0UiISKYZEUuAMSC//CyshQgZB9MEvqWsCRaAlZGnLu4
 N/nW5OXAvez6rSOiX3Am1N16NlqXcHKnufb9QIGzlqdyXX1Y/jikwDAsI168XBfzq0Lq
 sjdGA6gqwCeNf9Ht+Ai+AO6D1O3rie9QsQaYIUog4Eg6dze58zl7imq1PcvBI0X5V93I
 Mv7PbaL8NFYv4SGUM8yYOgQAi35TsjJq6a8DLDPeCRJBKzPoNwN5q+BmFhl0zRF29R7q
 PKkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QuiDiQV6zWuTckoeUzNeF6DC2ybuOpZw11FEpf74/WY=;
 b=Ck5gFiSsizrT7z32P6nfxyQhzmC8R86xPcdjb9zJIM6PMPqckzdnEq5gc6qVT+1WI2
 EeTUl8t7aSx+y1KEx95UssEWwMuOQ3HZuJMzm+nPVM1wRcpA/crtEu+xL3W2BxaQ7QEq
 84NfbX4a+6iJxOp4Udobnc7azhE0omNJp/Du9uuPeVX6FoDp4Op+xHi0NfFxS6UHS9YL
 y1j1tF3uL36ovwIn69gqRYwejWqtczpm2cMbLKq/zI8WPdjPJK3KAzOlrjnx4WAysW10
 Ys03rDIcF2zFFz7Sb9RXRb6El20FikeknKbzyglnRCZJFwtD2QiFa9BH4v31fqLKf2lP
 DwhQ==
X-Gm-Message-State: APjAAAVYBxOywTW9yEdmcKLSGi3flVWHJUIZvmm8aKaZgU7MSZybV/qk
 yq6UiOzpwbOGgQTPauaB6yE=
X-Google-Smtp-Source: APXvYqxMRRDwHGY+YMQLfntq8GcJZQhaST6LU4uGU8SUKDtmLe3jbuE5G1l0noruWom9zeZUkYJShg==
X-Received: by 2002:a62:1953:: with SMTP id 80mr23635170pfz.168.1570903739881; 
 Sat, 12 Oct 2019 11:08:59 -0700 (PDT)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id k6sm4337144pfg.162.2019.10.12.11.08.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:08:58 -0700 (PDT)
Date: Sat, 12 Oct 2019 11:08:56 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20191012180856.GC3165@localhost>
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
 <20190926181109.4871-3-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926181109.4871-3-jacob.e.keller@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [net-next v3 2/7] net: reject PTP periodic
 output requests with unsupported flags
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

On Thu, Sep 26, 2019 at 11:11:04AM -0700, Jacob Keller wrote:
> Commit 823eb2a3c4c7 ("PTP: add support for one-shot output") introduced
> a new flag for the PTP periodic output request ioctl. This flag is not
> currently supported by any driver.
> 
> Fix all drivers which implement the periodic output request ioctl to
> explicitly reject any request with flags they do not understand. This
> ensures that the driver does not accidentally misinterpret the
> PTP_PEROUT_ONE_SHOT flag, or any new flag introduced in the future.
> 
> This is important for forward compatibility: if a new flag is
> introduced, the driver should reject requests to enable the flag until
> the driver has actually been modified to support the flag in question.
> 
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: Felipe Balbi <felipe.balbi@linux.intel.com>
> Cc: David S. Miller <davem@davemloft.net>
> Cc: Christopher Hall <christopher.s.hall@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Richard Cochran <richardcochran@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
