Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5303AFB8F0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Nov 2019 20:34:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0027387D69;
	Wed, 13 Nov 2019 19:34:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K4JygCcGoRWx; Wed, 13 Nov 2019 19:34:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3711387D5A;
	Wed, 13 Nov 2019 19:34:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D59AB1BF41B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2019 19:34:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CC8F687D69
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2019 19:34:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sgAZHeeGVI4E for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Nov 2019 19:34:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 66A7187D5A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2019 19:34:41 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id a18so1475705plm.10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2019 11:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uFiiinmU7VuSwSjR0tRrB18CeSFkGpY08UzT3rIZvmc=;
 b=UV9Kf2gVOsBdO5ejOJwPlirMHT8i90Zaft/Qr8Sym9a1CDH8LOmJDq4yj6ly3qWye9
 4etKNUvzvDPo8y2j7RdURPvH6ix2mbxrxN1NE+WPudoYb0YJIKdl5BwxFnFb2zFaFpaV
 HsluNeyZV//JVobgKi2Q5sSVQUDzcSKn0orLWSVICaJry1hi9qY1/itnCEnY14kpGou4
 LKVxfn6NXOvy5JvxBXxG2f65zmwkYfp4uNZknGSiJCO4yCdW/Mw3eRNmf/PuL39nK2mo
 j79DfQrl/8SvGf6IRGHIwSf+gZJERJZkgxp0TZ6OwKSxlGBBccT5t3rheQgU5+j9fOUm
 zqjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uFiiinmU7VuSwSjR0tRrB18CeSFkGpY08UzT3rIZvmc=;
 b=r8OLrbeqSiOaw/qCYdDwsYaawpOcMyyWuJ4LdvmF+P7hngh5vUztDTNdTKWrp4TT2U
 QUdJg+MjNljEli97RSF9eNBTGIpsZY1Dq3dz/IvF/5kDVxI8rgkPLLZqypp+q+YnlFRp
 RT+vMMFTAkkMQq1gzS0+mPYkflRRaQtIbLLreADBAfrFKdbIfIq6yra9GJ11pERVPmUQ
 JSCqciTWO56T4PB0kiMlokX/mCrUY4kpXqnRcn5shnxNj1O58Ewg6XMJceYPa6CRe2x1
 BiaGjaNHPkvWIcRKZTupUuBw06bevHYgjxOUgNdcs7LWbaPugfQ0NEtlXqU1aGsGH+wL
 XAjA==
X-Gm-Message-State: APjAAAV+j4TirByLWrZRLRnIlRwgxUeSiaSTnWwSmWvLHX4zDd1epg3i
 4Xj0clZl/t8dYYWYiy0Nw6I=
X-Google-Smtp-Source: APXvYqyOyqRgk9XA/5nMpx3rETdHgxbSmmSKl9+Au45Vh3PNZ6EWoe3rmaZuJB5Kds9JvfGgTyiLPw==
X-Received: by 2002:a17:902:8491:: with SMTP id
 c17mr3123821plo.143.1573673680863; 
 Wed, 13 Nov 2019 11:34:40 -0800 (PST)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id z10sm3421558pgg.39.2019.11.13.11.34.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 11:34:40 -0800 (PST)
Date: Wed, 13 Nov 2019 11:34:38 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20191113193438.GA7551@localhost>
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
 <20191113015809.GA8608@localhost>
 <20191113171011.GA16997@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113171011.GA16997@localhost>
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

On Wed, Nov 13, 2019 at 09:10:11AM -0800, Richard Cochran wrote:
> On Tue, Nov 12, 2019 at 05:58:09PM -0800, Richard Cochran wrote:
> > There is still time before v5.4 gets released.  Would you care to
> > re-submit the missing six patches?
> 
> Or, if you don't mind, I can submit these for you, along with the
> STRICT flag checking for v2 ioctls that we discussed.

Okay, so I took the liberty of taking your series, picking up the
tags, and adding the new strict checking.  I'll post it later today or
early tomorrow after testing.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
