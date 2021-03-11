Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D29383371C6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Mar 2021 12:51:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05A5683EB1;
	Thu, 11 Mar 2021 11:51:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FaGDN7P-QkBb; Thu, 11 Mar 2021 11:51:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CF1483E7B;
	Thu, 11 Mar 2021 11:51:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D8B6D1BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 11:51:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6A6F42D1D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 11:51:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=netronome-com.20150623.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WP6zP3RNMpV9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Mar 2021 11:51:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D795D414EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 11:51:18 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id p7so34256133eju.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Mar 2021 03:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6jJgRsc9AbnvyFi54h5qkcGvbSi01bvQLx+PXrG3JeI=;
 b=lAzhR7FB+TVU5CfPGOK3Uwmh61Z5rv+EDVzwNHK5BIca8CnXYcxrjgHltqGz61zPhu
 u/QY/EUCEg7PRh3nhW5196JD1gPIbIPXPGt6Pj1zjdoeeLYDRSD1ynsxCYRTlkuDkgTH
 nOeVShEXoz3ONrcPs9ll8KXqtTs2ZkDlHNc/XDpy/yOxMMPKIHk7EyqWaj+Z7npZzkp4
 7QBuWBZumKs0YeKPPJKtl9ryKr01akHkrVfnq3yq7xuLlfqj0/gBqBaSnqQTufKUxDeK
 2xVupkbffQHPwlRgyYAQ7gMKPHIJARoBz+wwcAMDAF9zkoXDiBPR1V7jdJ6Co/1IqTC1
 yg+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6jJgRsc9AbnvyFi54h5qkcGvbSi01bvQLx+PXrG3JeI=;
 b=SZrPyVSyH/l+kQRsWZ7NUYgZUeYBssWIw4X142FYpXCBaGCXyYPOwa5BavMU8hTQxb
 tpuiVkXchu9THvFU6KyE5np5hB1bW2frAOu3uQ+nmk53MFu/DAdyF2cdRIgNrI9JfkKx
 frpBccnFyVtc/lR11Q1sSy4xlG90o2Sy9YiXHwLYulWPgonJVv0zrn8XJ23dSRUvBpdz
 FkhX/2a2BURnjl7TfHIHXlUNrDTsKQEOIOtbyfJg+KlU0URHqfmooD0M8mzi+T+jE0SE
 EM1VhGlbcwuQsj594GmEBqLZFywqTiZxaU/1Js+1n2dGlr00XbpUQOCcgJ2UFxIzpAmI
 6G+w==
X-Gm-Message-State: AOAM531J9AgdSbjLmsGKorOCYYlMr/96Kz8qVgq/2emD7ySAV8YsCOJ6
 dvHI2ApgwFEfkmQHYNCUJbYfcw==
X-Google-Smtp-Source: ABdhPJzn/XjzNGGdMXUxH41H5kbhtdZmthjHjo2mmJt/bhStdyC4YUyQD0rauIelh2tO3GroDTk8Cg==
X-Received: by 2002:a17:906:53d7:: with SMTP id
 p23mr2728016ejo.140.1615463476876; 
 Thu, 11 Mar 2021 03:51:16 -0800 (PST)
Received: from netronome.com ([2001:982:7ed1:403:9eeb:e8ff:fe0d:5b6a])
 by smtp.gmail.com with ESMTPSA id x4sm1083598edd.58.2021.03.11.03.51.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Mar 2021 03:51:16 -0800 (PST)
Date: Thu, 11 Mar 2021 12:51:15 +0100
From: Simon Horman <simon.horman@netronome.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20210311115115.GA12530@netronome.com>
References: <161542634192.13546.4185974647834631704.stgit@localhost.localdomain>
 <161542653266.13546.11914667071718045956.stgit@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161542653266.13546.11914667071718045956.stgit@localhost.localdomain>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [RFC PATCH 03/10] nfp: Replace nfp_pr_et with
 ethtool_gsprintf
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
Cc: doshir@vmware.com, mst@redhat.com, oss-drivers@netronome.com,
 jasowang@redhat.com, alexanderduyck@fb.com, akiyano@amazon.com,
 wei.liu@kernel.org, sthemmin@microsoft.com, pv-drivers@vmware.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, yisen.zhuang@huawei.com,
 gtzalik@amazon.com, haiyangz@microsoft.com, drivers@pensando.io,
 salil.mehta@huawei.com, GR-Linux-NIC-Dev@marvell.com, rmody@marvell.com,
 netdev@vger.kernel.org, netanel@amazon.com, saeedb@amazon.com,
 snelson@pensando.io, skalluru@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 10, 2021 at 05:35:32PM -0800, Alexander Duyck wrote:
> From: Alexander Duyck <alexanderduyck@fb.com>
> 
> The nfp_pr_et function is nearly identical to ethtool_gsprintf except for
> the fact that it passes the pointer by value and as a return whereas
> ethtool_gsprintf passes it as a pointer.
> 
> Since they are so close just update nfp to make use of ethtool_gsprintf
> 
> Signed-off-by: Alexander Duyck <alexanderduyck@fb.com>

Reviewed-by: Simon Horman <simon.horman@netronome.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
