Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE250603825
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Oct 2022 04:37:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE6BF61168;
	Wed, 19 Oct 2022 02:37:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE6BF61168
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666147041;
	bh=a/AVZYrVPiJJUTBII22b/67OyxWzt0Q4V/zP1y0RJ54=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wig7oive/t6r/sXutbJw+iHWr6h2vL+TqpzdUa+6bMGg6RQikuMVrNKEEVQKv87m9
	 kbViN4LMUa3FhcpeiaSptRu+mScrZaZtU0rFsbgUCoFJgyv8QgbHCwgOQydZQn9TmT
	 VkK2/TqTVGO/8XjJWU3qw9zY+RT7pCiRYS2DJd/qy3Iul1UhiNQ+OqOmpV5wmMV4t6
	 0xpRkpIFTVr/EtYylJLcfNF+oWlC/LKI8WNIL4CsMPaZ4D/oGqrtYWDVg5mlVm96VN
	 x9qBtlyr7LZvp99JPCRmB4YC9NyLWWKlDKfnrEw6xINgwDX7cZh7VmDgcnuk9X4nSs
	 HwF3UisbgO6cQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vwvKRLWnBkpN; Wed, 19 Oct 2022 02:37:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7F1561166;
	Wed, 19 Oct 2022 02:37:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7F1561166
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 402BE1BF995
 for <intel-wired-lan@osuosl.org>; Wed, 19 Oct 2022 02:37:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2793A40111
 for <intel-wired-lan@osuosl.org>; Wed, 19 Oct 2022 02:37:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2793A40111
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J58oNLgsxfqd for <intel-wired-lan@osuosl.org>;
 Wed, 19 Oct 2022 02:37:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A97A4019D
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5A97A4019D
 for <intel-wired-lan@osuosl.org>; Wed, 19 Oct 2022 02:37:15 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id h12so15842245pjk.0
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 19:37:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6IG9/RFyaFOl9Cq+FSbA8wz7vaNcYiGkDaJxfVPNrIg=;
 b=MexRx3TYoRui3j4r1VyUZQwiSXNiybIFZm1DsnDPZRptmngPSb03MmzEi6QWc3Un81
 O8h//w9NoQNT2n/Ca/MNDP/0fNMYhMJ4Fs4Dt2dVEny15s2xD/OzCtnzmAQZAJZe0TOu
 AT4tPERdyszfrAkj7ThuRJ6MbdeePB4Rmj85EY/Q8qYQVVkQ/We2GxVF2/YThiy3kaCX
 O4JivenoK+E6HF851Oclv+tWtLHkmjIQW2U6sKA1hQqRo0DHilk8Up6ECoJX93XUBVAW
 JI3UNoOa7mJ8LldqoYI6J9Gbdovaev/x0GDdbu7BToanfYB+Nlq8210EChBZ/pzdVRBq
 Tstw==
X-Gm-Message-State: ACrzQf2AZySLFxio5iNJNCG5uS02pz9jVGEt1/pwtn0lCFlA/NOV8tAu
 vVFHduhJPFlxZZsJxidt2cM=
X-Google-Smtp-Source: AMsMyM7Ex2Cimry4bYBF4Kw3FOFBlM/ipqcm9KUkHPuwr9heL2IBGtJ9wreLzq/wZjYf1T83XFojHg==
X-Received: by 2002:a17:902:a9c6:b0:178:b2d4:f8b2 with SMTP id
 b6-20020a170902a9c600b00178b2d4f8b2mr6045670plr.79.1666147034483; 
 Tue, 18 Oct 2022 19:37:14 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:640:8200:33:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id
 y16-20020a17090264d000b00176e6f553efsm9378315pli.84.2022.10.18.19.37.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Oct 2022 19:37:13 -0700 (PDT)
Date: Tue, 18 Oct 2022 19:37:11 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
Message-ID: <Y09i12Wcqr0whToP@hoboy.vegasvil.org>
References: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
 <Y06RzWQnTw2RJGPr@hoboy.vegasvil.org>
 <SJ1PR11MB618053D058C8171AAC4D3FADB8289@SJ1PR11MB6180.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB618053D058C8171AAC4D3FADB8289@SJ1PR11MB6180.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=6IG9/RFyaFOl9Cq+FSbA8wz7vaNcYiGkDaJxfVPNrIg=;
 b=fI7tJ2J5zZQpRI1htK67VCwUCG8MdUyUaqihf222F9NbYdPAIa+cXu4rfL+D7ZI0FY
 fAF46ADAMDakFDLaAZJqgGY/ofz+HJYg+6guPbNvpPzpsmBAPQNA0OF2L1+PATFD/qe7
 14WIIhw016APuN3vEHAVeJdYLBUB3Uu8wPtf+9iIKPGu+VO2y7heieWprlIL+oiQC+sL
 h/nK/80cpVDPC7rEs6QCMcIVqnzAscr6ZMe4uKe6W31UjFlH0S61KNIIqhxqGxJKjTP0
 KbM5EmluAiAZo5ybhhOhIkz4hRJbjYmsuPpZwQfTbHfLJWRDHIykQCNSJn8pwCsXr9pb
 3UbQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=fI7tJ2J5
Subject: Re: [Intel-wired-lan] [PATCH v2 0/5] Add support for DMA timestamp
 for non-PTP packets
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
Cc: "leon@kernel.org" <leon@kernel.org>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "gal@nvidia.com" <gal@nvidia.com>, "saeed@kernel.org" <saeed@kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "andy@greyhouse.net" <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 18, 2022 at 02:12:37PM +0000, Zulkifli, Muhammad Husaini wrote:
> > What is the use case for reporting DMA transmit time?

So the use case (mentioned below) is TSN?

> > How is this better than using SOF_TIMESTAMPING_TX_SOFTWARE ?
> 
> The ideal situation is to use SOF TIMESTAMPING TX SOFTWARE. 
> Application side will undoubtedly want to utilize PHY timestamps as much as possible. 

I'm asking about SOFTWARE not hardware time stamps.
 
> But if every application requested the HW Tx timestamp, especially during periods of high load like TSN, 
> in some cases when the controller only supports 1 HW timestamp, it would be a disaster.

But can't you offer 1 HW time stamp with many SW time stamps?

Thanks,
Rihcard

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
