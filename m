Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D22F601A61
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Oct 2022 22:36:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E08FE82CFA;
	Mon, 17 Oct 2022 20:36:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E08FE82CFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666038992;
	bh=Vn5gULBJth26tb8JNCFC2OG+zC29JDLKZDdHe0W8Zng=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1ibl3seWixq8sTMbZpOlYCSmv8lFxaB11U4JaHRvuvNw8Ll+VC69ScQBBho94ZAZS
	 vnDuA9H/l8HhNXh+DhjdqOqautZRmf3GNsUFBC73j1uOuWCYh3kTQRW8LlxPZEjJVi
	 t250IGO2TVnliJgH5/56stltr69Dt67mHIu0ZIK+XK7QQut2GIzzrMGMgnmcBR5PTE
	 ExAaENrvBbYhsiODzy7tk3gQ4RWc7JKCJwK8aYmzUcahz74XBko47X2RmERCxpVyoD
	 epKQp21OVBnLMEGxc9Cf32glXHbROLmL2ahavJ0Lo/qLax+OEKi/UhtY50mdBQuoQF
	 uQTVrJSNLXWng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oky1yS7Ko-lQ; Mon, 17 Oct 2022 20:36:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5EEB82C9C;
	Mon, 17 Oct 2022 20:36:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5EEB82C9C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C0041BF313
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 20:36:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E96E982C84
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 20:36:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E96E982C84
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lpnwepfV3tf1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Oct 2022 20:36:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E83F82C9C
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E83F82C9C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 20:36:24 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id h185so11461672pgc.10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 13:36:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0aUWfNVyAb9vaQF2FsnyjOHdVA252Y6Vscje2rS+GNw=;
 b=yXBGP8NSrbP5y0LpC7oKk/C1RpugbFbpNZoeuNwanyqM71TCtzVcYWofUvpKtY+XAW
 FNTXiYzBrY+aZxv/QGK5p7ccuXVV+Mbx9EQKE1Ir1QJMQZV/E/GlMgA0qNb8tLC7HTDb
 iyP76uXqWY9xuJ3x1DIaTE9IavlKZrKX95GjGL1SbP6q1T5qSS2rdKyxGwHDfKePf1EA
 04q2XDCwsm34qR6H/nGcBDx3LlFDcg87nN/HFfUs8UZnNoLpPLZUaqLfOy5Rmq+4RnlD
 +43rOJQrUPs/C3Hq0VzgCQZl49xDaTXlN4pEqkJiEKiDJi5nwQsiZyNbHbCxJ9qsEXLP
 Xcow==
X-Gm-Message-State: ACrzQf2S4MiMag99NpOM2idIn7XsYkVWYcjsYZnUjv+WBepsLQpd/ZSE
 F3ejKtnxbDhZH6g+QdcJU2Oa0Q==
X-Google-Smtp-Source: AMsMyM68W5CzLd1Q4HNgZTGmwXm6VXlfe1tkL8GEiHKV7LnRsNxYCNpQ9c/sRs89ly6lFJjEFmffyA==
X-Received: by 2002:a63:d845:0:b0:44b:d074:97d with SMTP id
 k5-20020a63d845000000b0044bd074097dmr12442525pgj.32.1666038983936; 
 Mon, 17 Oct 2022 13:36:23 -0700 (PDT)
Received: from fastly.com (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 nm9-20020a17090b19c900b002071ee97923sm9975615pjb.53.2022.10.17.13.36.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Oct 2022 13:36:23 -0700 (PDT)
Date: Mon, 17 Oct 2022 13:36:21 -0700
From: Joe Damato <jdamato@fastly.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20221017203620.GA18251@fastly.com>
References: <1665701671-6353-1-git-send-email-jdamato@fastly.com>
 <20221017124555.5d79d3f7@kernel.org>
 <e1d1ed2b-76d6-9f17-5256-6246a3f8e012@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e1d1ed2b-76d6-9f17-5256-6246a3f8e012@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0aUWfNVyAb9vaQF2FsnyjOHdVA252Y6Vscje2rS+GNw=;
 b=RqmecjN1a274dMoS5AiB/PYlaI9BwNrkAqjfOyDLAVGvm4wNIfGWLZBCX8/QZRBBbU
 NhTBbos3s2SrejQiseGlAYdlO3zYm4tO5Rr5B5WiphqC21Gi+P3tc0dz52aQDYcV9JYN
 /HN89+d9REaNoLHET95VLKE73Qk4nE2F1jmuw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=RqmecjN1
Subject: Re: [Intel-wired-lan] [net-queue bugfix RFC] i40e: Clear
 IFF_RXFH_CONFIGURED when RSS is reset
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
Cc: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 17, 2022 at 01:25:39PM -0700, Jacob Keller wrote:
> 
> 
> On 10/17/2022 12:45 PM, Jakub Kicinski wrote:
> > On Thu, 13 Oct 2022 15:54:31 -0700 Joe Damato wrote:
> >> Before this change, reconfiguring the queue count using ethtool doesn't
> >> always work, even for queue counts that were previously accepted because
> >> the IFF_RXFH_CONFIGURED bit was not cleared when the flow indirection hash
> >> is cleared by the driver.
> > 
> > It's not cleared but when was it set? Could you describe the flow that
> > gets us to this set a bit more?
> > 
> > Normally clearing the IFF_RXFH_CONFIGURED in the driver is _only_
> > acceptable on error recovery paths, and should come with a "this should
> > never happen" warning.
> > 
> 
> Correct. The whole point of IFF_RXFH_CONFIGURED is to be able for the
> driver to know whether or not the current config was the default or a
> user specified value. If this flag is set, we should not be changing the
> config except in exceptional circumstances.
> 
> >> For example:
> >>
> >> $ sudo ethtool -x eth0
> >> RX flow hash indirection table for eth0 with 34 RX ring(s):
> >>     0:      0     1     2     3     4     5     6     7
> >>     8:      8     9    10    11    12    13    14    15
> >>    16:     16    17    18    19    20    21    22    23
> >>    24:     24    25    26    27    28    29    30    31
> >>    32:     32    33     0     1     2     3     4     5
> >> [...snip...]
> >>
> >> As you can see, the flow indirection hash distributes flows to 34 queues.
> >>
> >> Increasing the number of queues from 34 to 64 works, and the flow
> >> indirection hash is reset automatically:
> >>
> >> $ sudo ethtool -L eth0 combined 64
> >> $ sudo ethtool -x eth0
> >> RX flow hash indirection table for eth0 with 64 RX ring(s):
> >>     0:      0     1     2     3     4     5     6     7
> >>     8:      8     9    10    11    12    13    14    15
> >>    16:     16    17    18    19    20    21    22    23
> >>    24:     24    25    26    27    28    29    30    31
> >>    32:     32    33    34    35    36    37    38    39
> >>    40:     40    41    42    43    44    45    46    47
> >>    48:     48    49    50    51    52    53    54    55
> >>    56:     56    57    58    59    60    61    62    63
> > 
> > This is odd, if IFF_RXFH_CONFIGURED is set driver should not
> > re-initialize the indirection table. Which I believe is what
> > you describe at the end of your message:
> > 
> 
> Right. It seems like the driver should actually be checking this flag
> somewhere else and preventing the flow where we clear the indirection
> table...
> 
> We are at least in some places according to your report here, but
> perhaps there is a gap....

Thanks for the comments / information. I noticed that one other driver
(mlx5) tweaks this bit, which is what led me down this rabbit hole.

I'll have to re-read the i40e code and re-run some experiments with the
queue count and flow hash to get a better understanding of the current
behavior and verify/double check the results.

I'll follow-up with an email to intel-wired-lan about the current
(unpatched) behavior I'm seeing with i40e to double check if there's
a bug or if I've simply made a mistake somewhere in my testing.

I did run the experiments a few times, so it is possible I got into some
weird state. It is worth revisiting fresh from a reboot with a kernel built
from net-next.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
