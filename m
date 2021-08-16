Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 989993EE092
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Aug 2021 01:54:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0487F607AF;
	Mon, 16 Aug 2021 23:54:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gTfwR7IawBrE; Mon, 16 Aug 2021 23:54:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E698607BF;
	Mon, 16 Aug 2021 23:54:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 210BB1BF34E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 23:54:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D2D0400DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 23:54:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kagGg_PfFo-X for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Aug 2021 23:54:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DDA5840012
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 23:54:04 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 fa24-20020a17090af0d8b0290178bfa69d97so3098048pjb.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BfKdf9a3hP34qKR/Mu7UQ/p8Ys9XbVUMS00Wm/SH9LQ=;
 b=UJFjdn57R6ZLNJdG0nVgoLuWUYaatE4olliznOIEMTOe4jP2jVkDNBSpyzoQPGFDR0
 w2Ikwnl1/uLRFDnkJsikom7nQtU17Wy909Rq+AzCda8uMx3ZhFfMEwWknBwZji7NzHfl
 uXM7X4JEcVRTetC57db52g7f/8h+sKJOgA4RAQcEJ1q72QkgWYbKUrk/EUIGxFHJ+dCx
 3Er17K7y9y+kYqJ0lJF3wGbLZK30ZhmOiA4gfhWJv/aYmydmvE2wCHKnWKYYBhFaerB6
 xAROqR8kQIscSZ2RFLm/njtx3CaJmWmA7c8tUJDyiXT7d8kGhw3G1xgFbFTAp+KsWL14
 whzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BfKdf9a3hP34qKR/Mu7UQ/p8Ys9XbVUMS00Wm/SH9LQ=;
 b=BzuXRowHpuMBBpkvmS8iLmWs+cD/U0OeMrv+rWj4UxrQrrPDER/vn9hTmU6RZmk0Hd
 bb/yX8Wy0tgde7hY1+dMsfkB76aaxuZgBtqzBHKVEwhR7LZGqB07xRaV38x1h5HHinTH
 7ffbv8jTSqpkdh2UIdQzw62Kvfuz6upKz7MRpt5bvSOraSvhgHXCOibtogihyuOLnOBl
 h7heli6uTsPwI9A747AB8/MOpzLhku15ECw/S7quTWr+n5sPDfO9pOfrMolVy2GMapun
 Dfiw0aT5vFyQFOMOeYMFXOGKmnFqIISNlpXjmqzOJ88iFbGBUkzkwPvf5vqZzOF8ZI81
 7uJA==
X-Gm-Message-State: AOAM532UKrf74SGTXPO/iYVrb8MX+TXv3K49MyfuAU+ddlK4DCPU7Fmi
 Ppm41XlbYbVV3zeq6n0hT44=
X-Google-Smtp-Source: ABdhPJzuObTX2O4HdVDdN2xZN1VLKtwH0j49aJ1LdWs7/hdHxR6rkYhccmayDtowJcSMryggNMIhXQ==
X-Received: by 2002:a17:90b:438e:: with SMTP id
 in14mr464775pjb.66.1629158044351; 
 Mon, 16 Aug 2021 16:54:04 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id j21sm267883pfj.66.2021.08.16.16.54.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Aug 2021 16:54:03 -0700 (PDT)
Date: Mon, 16 Aug 2021 16:54:01 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <20210816235400.GA24680@hoboy.vegasvil.org>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
 <20210816160717.31285-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210816160717.31285-2-arkadiusz.kubalewski@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [RFC net-next 1/7] ptp: Add interface for
 acquiring DPLL state
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
Cc: cong.wang@bytedance.com, arnd@arndb.de, gustavoars@kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, colin.king@canonical.com,
 nikolay@nvidia.com, linux-kselftest@vger.kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, shuah@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 16, 2021 at 06:07:11PM +0200, Arkadiusz Kubalewski wrote:
> Previously there was no common interface for monitoring
> synchronization state of Digital Phase Locked Loop.
> 
> Add interface through PTP ioctl subsystem for tools,
> as well as sysfs human-friendly part of the interface.
> 
> enum dpll_state moved to uapi definition, it is required to
> have common definition of DPLL states in uapi.

This has nothing to do with PTP, right?

So why isn't it a RTNL feature instead?

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
