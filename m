Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F5E3FBDE3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Aug 2021 23:06:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87085818AC;
	Mon, 30 Aug 2021 21:06:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z-N7a_sqBn-H; Mon, 30 Aug 2021 21:06:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D780818A1;
	Mon, 30 Aug 2021 21:06:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D27841BF86C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 21:06:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF74A403AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 21:06:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PXJs6bruMzO1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Aug 2021 21:06:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1E278400DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 21:06:15 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id e7so14668131pgk.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 14:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=l4mUL7KTlI0Cq3qGA1ysHUWbzUs7cEfmJVpqyyFGsp8=;
 b=ePChrhmbbjXl7+ObMyn+IvqZOrTyHT5tNsX2lranOL15xxrn+yMRAhiP1CezlFQoxr
 gPm1LSnikhBOcDhIrKuKlUTJ5hzEYyj1Q9N2QhgbFRXZdUXcPl6Zm//lAXjfbUjbcV2E
 zeFEdjI9LG5UegQkvgAl9yn9FTnJZAp8vCQWGJ9L1nQFeJNcd9G3j85DaPg41F2FRcGC
 BPCBpNXxZd0ykhWq3NBSl/w1FDef1evk7wo8lrtsoaQuhfD/JLnNFQ0gFEKJnKXTRRyR
 l2ULmtbP0uz7t2DzKZceQt/j+dX51ZsMJpHvQI2UPEhtP9Jr6jzOmj9XF87MKf/GYN/H
 NVXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=l4mUL7KTlI0Cq3qGA1ysHUWbzUs7cEfmJVpqyyFGsp8=;
 b=QKbI1jSBHrh2pDOlaB99V+EpTm+EfnrzovCowekW/tqbUQtViB94Y4rm1Iuv+GI85I
 XcUQkGKQpF6VmS6UL2+nbmL2g6DnOf2xhvTlxEyNbjGSD24SSbYaPXy7P2/prxoFOMB2
 H2v3s5uHbjl7MfcgiCALCenOQ4i7LOOmjafbY2v8K5AgCNu8x4l3G5eUeO7o7Xvs+yAT
 Z0mXZhaejc+s0g5NLACbYYQaQBBFasQRlRcAqf/EjQO6KzQ+BrEHSw1rxiSyxQG5AB02
 dt5aAUQ63t7WIoXvyzE9IJHlWY+LTNTIfDf67fWlaD/Uap3pX5Ohi06jPj3JIDXGOhoD
 4PRQ==
X-Gm-Message-State: AOAM532waaQOixSE1G9QGMzkWl5JM2R+vtW5LDSUfur7fzlK3Sq4C9Al
 pcLq6kErJOBRzqqHLam2qmM=
X-Google-Smtp-Source: ABdhPJyARgDzaEEd/8lorS/vMkvnCj3AXWAsnDYS5hXmLzHLF5RfQHRMPhy0sBoroUS55Mx/IwaJHg==
X-Received: by 2002:a63:d250:: with SMTP id t16mr23928547pgi.95.1630357574551; 
 Mon, 30 Aug 2021 14:06:14 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id j17sm16057194pfn.148.2021.08.30.14.06.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Aug 2021 14:06:13 -0700 (PDT)
Date: Mon, 30 Aug 2021 14:06:10 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20210830210610.GB26230@hoboy.vegasvil.org>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
 <20210816160717.31285-2-arkadiusz.kubalewski@intel.com>
 <20210816235400.GA24680@hoboy.vegasvil.org>
 <PH0PR11MB4951762ECB04D90D634E905DEAFE9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210818170259.GD9992@hoboy.vegasvil.org>
 <PH0PR11MB495162EC9116F197D79589F5EAFF9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210819153414.GC26242@hoboy.vegasvil.org>
 <PH0PR11MB4951F51CBA231DFD65806CDAEAC09@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210820155538.GB9604@hoboy.vegasvil.org>
 <PH0PR11MB49518ED9AAF8B543FD8324B9EAC19@PH0PR11MB4951.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR11MB49518ED9AAF8B543FD8324B9EAC19@PH0PR11MB4951.namprd11.prod.outlook.com>
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
Cc: "cong.wang@bytedance.com" <cong.wang@bytedance.com>, "Stanton,
 Kevin B" <kevin.b.stanton@intel.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "gustavoars@kernel.org" <gustavoars@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Bross,
 Kevin" <kevin.bross@intel.com>,
 "colin.king@canonical.com" <colin.king@canonical.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "nikolay@nvidia.com" <nikolay@nvidia.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "shuah@kernel.org" <shuah@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, Ahmad Byagowi <abyagowi@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 20, 2021 at 06:30:02PM +0000, Machnikowski, Maciej wrote:

> So to be able to control SyncE we need 2 interfaces:
> - Interface to enable the recovered clock output at the given pin
> - interface to monitor the DPLL to see if the clock that we got is valid, or not.
> 
> If it comes to ESMC (G.8264) messages, SyncE itself can run in 2 modes (slides 29/30 will give you more details):
> - QL-Disabled - with no ESMC messages - it base on the local information from the PLL to make all decisions
> - QL-Enabled - that adds ESMC and quality message transfer between the nodes.

How do you get the QL codes from this?

+enum if_eec_state {
+       IF_EEC_STATE_INVALID = 0,
+       IF_EEC_STATE_FREERUN,
+       IF_EEC_STATE_LOCKACQ,
+       IF_EEC_STATE_LOCKREC,
+       IF_EEC_STATE_LOCKED,
+       IF_EEC_STATE_HOLDOVER,
+       IF_EEC_STATE_OPEN_LOOP,
+       __IF_EEC_STATE_MAX,
+};

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
