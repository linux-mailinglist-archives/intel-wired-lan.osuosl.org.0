Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B028A31E9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 17:14:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21A7B40638;
	Fri, 12 Apr 2024 15:14:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1ZqXHKz5mbUS; Fri, 12 Apr 2024 15:14:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7072F405E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712934857;
	bh=fvTrRH4DLn5mnkphu1F/WSdXeIOZNYO5jK6aFD3PDrU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CYcJCyVaSZcHbRUszJd9cZMe6bguVVmFks9VtRunhf7KA5Wc6eEekIPbI7fpZGy77
	 VCeGxY0eBXFVO5QeeOsmg7//6CMri/+31jA3F1G2wpyxphZIEsEmpyAlvf1K3r7xTW
	 dRjVEXDzLdSED3JvWkyOarHr42LT588DtrOwrKoPni+FFIWPx/HeOr9xbXUr1vg+Hp
	 AZWbkejikMDtTOL5Dh1jeKxboyj/LcxLKS2Md/Jm3aWpRLs2WjN+HWrZXLEZfYvWnL
	 ZLWicTQ9t+zl09zIL6R5EttauZwv5FXs69P2CEIcgMuSEOmdUl0m9cg5qFcdn9B/rq
	 HTNIwn/F3iJdg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7072F405E3;
	Fri, 12 Apr 2024 15:14:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D6F781BF397
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 15:14:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C294560834
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 15:14:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yMq8oFNQbial for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 15:14:15 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::231; helo=mail-lj1-x231.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 865B960744
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 865B960744
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 865B960744
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 15:14:12 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id
 38308e7fff4ca-2da01cb187cso16875921fa.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 08:14:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712934850; x=1713539650;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fvTrRH4DLn5mnkphu1F/WSdXeIOZNYO5jK6aFD3PDrU=;
 b=iQm+7jzKg2G7N/z31lvLCmX4uzwNcFOzjETmsI1MRRUF1Ce4XHKF6+zyJj0xnJLZFd
 IY8WvlPP6Gp9ZlE8W+KvE4ioi5A7MXzhgAdEocLzqdqbw6Jkh6QZqgGbK1/uhzwGYXgS
 IlsjdfZk+hlvfVZKHEckLfRmVSHcNS7MPjg9FiS/SUczhgUD/38nRtbm0YB23APdD4eC
 I5p/k/RqjE488M5s/u1x7ILlVVZA786ejtyHm+UWVNMEsr1L94LRF2ajet/7t8RpiAYg
 +4Vols4js+HH9fhj+jwTMn+zuuWi77OVkYBsis9EKiIk8skjLlZINW9JU2vTHtJFI0GT
 WEpQ==
X-Gm-Message-State: AOJu0Yxx6dvtE8JAy2g3jZdp4gpV3mwuRWSwGbOx+j3BAla8FmieAu9+
 GEkafq7BO9c14/ya3AJKDr7h5ROG6MBkD8IEUngZpfKq6H9mIMWiMOOz1xb4rWE=
X-Google-Smtp-Source: AGHT+IHPT/AKg/d/ITeSjzS7RN63iEvKvshdq8COmNXww3i51Ic+ylC4bbdmh16DhAGtcTBWhnP/FA==
X-Received: by 2002:a2e:a0c3:0:b0:2d6:a609:9a33 with SMTP id
 f3-20020a2ea0c3000000b002d6a6099a33mr2054630ljm.0.1712934850280; 
 Fri, 12 Apr 2024 08:14:10 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 r2-20020a2e80c2000000b002d6daf3b41fsm513237ljg.101.2024.04.12.08.14.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Apr 2024 08:14:09 -0700 (PDT)
Date: Fri, 12 Apr 2024 17:14:07 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Dariusz Aftanski <dariusz.aftanski@linux.intel.com>
Message-ID: <ZhlPvx8YF3TR3yOV@nanopsycho>
References: <20240308105842.141723-1-dariusz.aftanski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240308105842.141723-1-dariusz.aftanski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1712934850; x=1713539650;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=fvTrRH4DLn5mnkphu1F/WSdXeIOZNYO5jK6aFD3PDrU=;
 b=GCebkX+8+Z1miVubBZBL5tDqzLcxYyvrHQqr65ddx8mrX5sutdyygb6F9DcVs31QgU
 pvtjtfM/9PqGEtGB2MXg9+7oc+74SLKwxhXcopLtUHjssLPT1PVL/L/vXzb9XabL4qEm
 G56uF/rq5GGBHUAHjM5vyNDqA+mRrFy+3hvlx6ZgaVxPJSeF6Z+PgfdCzDTvFZ7JiOI4
 er1Ul1EexN7IOONhpknLru0x7QHuTzYWr15L3lqMhvqcX8WODvLuc4sOW/vZznRr0MQd
 QiniSXiOoLrANaDQv2LVxoleAsph/MmGnA3Pm9iqjxBGNwGYghMixoODZFkVInWh+PvP
 bFqw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=GCebkX+8
Subject: Re: [Intel-wired-lan] [iwl-next v1] ice: Remove
 ndo_get_phys_port_name
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Mar 08, 2024 at 11:58:42AM CET, dariusz.aftanski@linux.intel.com wrote:
>ndo_get_phys_port_name is never actually used, as in switchdev
>devklink is always being created.
>
>Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>Signed-off-by: Dariusz Aftanski <dariusz.aftanski@linux.intel.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
