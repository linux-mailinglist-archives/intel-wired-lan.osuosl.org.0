Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D99FCED1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 20:38:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B17B587FB4;
	Thu, 14 Nov 2019 19:38:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SON5qAQtOn3O; Thu, 14 Nov 2019 19:38:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4946187FAD;
	Thu, 14 Nov 2019 19:38:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 187321BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 19:38:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 037DC1FC71
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 19:38:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hpr8bEXO7HS7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 19:38:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id CE0D823B2B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 19:38:09 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id f19so4421267pgk.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 11:38:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ap64xGuQZSeSJr3SeCeY6K4NgvAXKseMGFJ4MAefoZU=;
 b=QgwBx3q2RTBjWCypRcjCAiybB56HkofV5Nj1iE9QMeSXuVZIxJ+z3gm7Y/URXm5FOS
 fbACu9mpPK2TnPOkWPcKN+XIiKMc+6VG+rEF2hYSzm49c4rXDwGQk8ws0Xlx3FWHU9gh
 r6rmbHRzWgmrY+tlbMVTqLVnBUKB20s5qpIclXh+7s2ABK7LVaV80ThNAxt9Fc2DR8iX
 2fQAz1iddqwSCmjKi+Ida7Z4G2ptjMq8Yg/kmDfxEt9dwSmbTsX+TkQQPcWC7QGTWFfK
 RP066OY9+HlynlHFy8f8uqT63N6fA3esx4iTbApW5V9aiqGfGlo2mazpbBsrbBNErbXJ
 9PCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ap64xGuQZSeSJr3SeCeY6K4NgvAXKseMGFJ4MAefoZU=;
 b=YKQFwzc4srYCX7XG8/pePRG6OsQhDdjiky/bHAY9i/5aCqkNLCz5FLVdjlyxagORI6
 UhfdlOx54eUGnGTJrU9/iOnJKZl7Nsd21i+dtQ/WuS5SQSuj3bk5xdWXhPmvQh5O2wbQ
 7dxwsf3etE6AjOLFvAWgJBbVJeN2Q0UxB4NLa37TkQUN8yl3aLzy+gEMkIkJI3InVZ5V
 FVLs+LxIPKP8+KseLglmZyQEWAuFXV/WPrZVW7QkwTWAuREcvrtmDaITcqmXgOBRZUvT
 8yX6LKFrPT1k/xfRNSzY6PjNdH8+nSKRRUisCp5T8lzNU5VnjNRCG5OR7w2lLCG9NDfd
 KycQ==
X-Gm-Message-State: APjAAAV3gqzRyGd26Tw+evZM9vjReEQzELEy1EFfPSd2XFOzwOXqL0W3
 KvgWBfYVqDDOYgj48rfrH/Q=
X-Google-Smtp-Source: APXvYqxIhxXcaBjEiOcvwiOwcZY5TpTm7qD9JrZ8ismHkMgxf0CIXrV9w9YAiqx8X87i+Re8aqp6pQ==
X-Received: by 2002:a17:90a:c68f:: with SMTP id
 n15mr14700507pjt.20.1573760289509; 
 Thu, 14 Nov 2019 11:38:09 -0800 (PST)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id y24sm8658470pfr.116.2019.11.14.11.38.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 11:38:08 -0800 (PST)
Date: Thu, 14 Nov 2019 11:38:06 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <20191114193806.GA19147@localhost>
References: <20191114184507.18937-2-richardcochran@gmail.com>
 <02874ECE860811409154E81DA85FBB589698F67E@ORSMSX121.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <02874ECE860811409154E81DA85FBB589698F67E@ORSMSX121.amr.corp.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH net 01/13] ptp: Validate requests to
 enable time stamping of external signals.
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
Cc: "Hall, Christopher S" <christopher.s.hall@intel.com>,
 Brandon Streiff <brandon.streiff@ni.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Feras Daoud <ferasda@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Eugenia Emantayev <eugenia@mellanox.com>, David Miller <davem@davemloft.net>,
 Stefan Sorensen <stefan.sorensen@spectralink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 14, 2019 at 07:06:58PM +0000, Keller, Jacob E wrote:
> Just to confirm, these new ioctls haven't been around long enough to be concerned about this change?

The "2" ioctls are about to appear in v5.4, and so I want to get the
flag checking in before the release if possible.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
