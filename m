Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8622B7DE9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Nov 2020 13:55:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A486520459;
	Wed, 18 Nov 2020 12:54:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NYoOi6GuIHTt; Wed, 18 Nov 2020 12:54:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2B73620426;
	Wed, 18 Nov 2020 12:54:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E53A1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Nov 2020 12:54:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 36E3E87153
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Nov 2020 12:54:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AAVrSZR+kaM3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Nov 2020 12:54:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9C5C687117
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Nov 2020 12:54:54 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id h12so1004940pjv.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Nov 2020 04:54:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Wy/KEppnAdk/cNOgtsabIIPwjqGYS6CaxiiJ4TMK5i8=;
 b=o3bTqWP+TZ6TijALWjM2TG4Nt4leqd6UyHEbZEHS3zmgNBhbotf9NwQf/wUDONyJ+z
 uF3pGFjnrjPQmCCix8o7sCCPacZGz7QdRSCibdXY59vRNYdNT2cxlLBNlswwTHwh+i4m
 057MmUeMzex70xACaYwprcXTs0w2cWmZVwqJrOjo0ehhXv2gfLCWMdBgu9Ab8NGYKdn+
 mHmGc0dklaUGgegLLjmIzjwtTNLUO437szgfypD9E/MYGiFgKHOds3GiP1QHoE43OUSr
 JQWxeCnNryeB7SO7hGJE20goJZewE9XfPPy1xxk7QJjYJlbR9WssytuKLX6gB3+eQ2HR
 /oNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Wy/KEppnAdk/cNOgtsabIIPwjqGYS6CaxiiJ4TMK5i8=;
 b=gR/CkTGY/2shlh7+cJyxOoXrFNp51o7Fg3eUMGCSkSlnZ7nNVD06+gmp7IPXy3JXpz
 Ytxuxlx+vBZm1NuSpjW6t8sSsyrkGlwRvuEkg63zZCK6qYv+IQkTZvZVWaZu2/gpjdNy
 d6Gwl88ok+02YhzyGeOrHOKBHBPPzEZXcaSk6GpO8M0vF8ijBga2aq569dbCYpwotr5f
 VJ3TBHrsYK1WLxKBBXVWNF5V80yljZijFUV/EPo7yFuioiXyXaC0UcZQIDapdv/4v6TY
 oliOyJWrOmfZ28qnKdykEQbo3tuCO4sVH3MP6eLHozb+BKTBVnodwcG9K8SBj+17wbsZ
 4uyA==
X-Gm-Message-State: AOAM531DzjZaSu+DljRtmeY0lmXTk+CIAom72mq3dEUc/WJJRoWwLO+/
 h2irK8gqbUp1xuiloQAqzss=
X-Google-Smtp-Source: ABdhPJymCFNey6f4iesj7Ck4E+dXHQMDg5Y6qwOw35FTo8NqA7iy/BgTEAB3A040esLfdt2ku8wwKQ==
X-Received: by 2002:a17:90a:fb54:: with SMTP id
 iq20mr1929878pjb.111.1605704094325; 
 Wed, 18 Nov 2020 04:54:54 -0800 (PST)
Received: from hoboy.vegasvil.org (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id t200sm3692106pfc.143.2020.11.18.04.54.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Nov 2020 04:54:53 -0800 (PST)
Date: Wed, 18 Nov 2020 04:54:51 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20201118125451.GC23320@hoboy.vegasvil.org>
References: <20201114025704.GA15240@hoboy.vegasvil.org>
 <874klo7pwp.fsf@intel.com>
 <20201117014926.GA26272@hoboy.vegasvil.org>
 <87d00b5uj7.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d00b5uj7.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support
 for PTP getcrosststamp()
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
Cc: andre.guedes@intel.com, linux-pci@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, bhelgaas@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 17, 2020 at 05:21:48PM -0800, Vinicius Costa Gomes wrote:
> Agreed that would be easiest/simplest. But what I have in hand seems to
> not like it, i.e. I have an earlier series implementing this "one shot" way
> and it's not reliable over long periods of time or against having the
> system time adjusted.

Before we go inventing a new API, I think we should first understand
why the one shot thing fails.

If there is problem with the system time being adjusted during PTM,
then that needs solving in any case!

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
