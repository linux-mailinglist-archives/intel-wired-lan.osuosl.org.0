Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F277B886770
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Mar 2024 08:25:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F9048238C;
	Fri, 22 Mar 2024 07:25:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VrHhx7Q6ztZe; Fri, 22 Mar 2024 07:25:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 375E08238E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711092317;
	bh=ZlmxMcxkID2APtdDfuPjyw9p7ZsnzMLqcX7Pogi+DwM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TjHgO/siNmRZ7hoipyL6QrQNt7lJiZGrHrWQ1Wzuos3/i9gaZvjqJ5wFasUmC79MU
	 fRp8cQ9xFzpeuZX0ARtNR+IdzgrNYroyLJBbyIneWoDa2+LpfTbK+JuKcNm+P+BLhy
	 xc2kNIpGCTxoGH572gsfFFR367VS19H3UwQ7A8vrZ57098EsqKjtEK7TBkIIS456gq
	 TsffXwmCMHsGuvqfUT5BIxkJkOlfeU4c1pgQPitJVkX4iFmTM8dHAIi8ijxGL3i/SI
	 uHla5KRwk4tVZqEMuXaGrNXsPjaJmotGRU76eyunZKWus4hRDzMPPm3uU/GJOSiidc
	 16qRmMj9RttkQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 375E08238E;
	Fri, 22 Mar 2024 07:25:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 79A701BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 07:25:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 725B78238B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 07:25:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S87MZJyOA-6j for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Mar 2024 07:25:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.134.164.83;
 helo=mail2-relais-roc.national.inria.fr; envelope-from=julia.lawall@inria.fr;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0C8558238A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C8558238A
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0C8558238A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 07:25:13 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.07,145,1708383600"; d="scan'208";a="157923739"
Received: from 184-074-243-067.biz.spectrum.com (HELO [172.20.17.26])
 ([184.74.243.67]) by mail2-relais-roc.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Mar 2024 08:25:08 +0100
Date: Fri, 22 Mar 2024 03:24:56 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20240321184828.3e22c698@kernel.org>
Message-ID: <82b49991-eb5a-7e8c-67e0-b0fd932f40b4@inria.fr>
References: <e5172afb-427b-423e-877a-10352cf4a007@web.de>
 <F2FBADE8-EDF9-4987-A97B-CF4D2D1452E0@inria.fr>
 <b9dc2c7a-2688-4a7b-8482-1e762c39449c@intel.com>
 <20240321184828.3e22c698@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-551105037-1711092310=:3390"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inria.fr; s=dc;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=ZlmxMcxkID2APtdDfuPjyw9p7ZsnzMLqcX7Pogi+DwM=;
 b=S3gBIDuJwtLpODXitOZtu7d+JPZWfXlEKDDRrdpd91mZdDnU9XwPNv8W
 A/DxwGKelRp0rlpAxQ1BO9ZhYMblxfbkn2sIqF2ykNh785PtT94jrqPBV
 WFQKUyPTqj7gip27FdT+S/UnWpXzytrLuU2RB35RjvKHJ/0bs80Z9Xdlv
 0=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=inria.fr
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256
 header.s=dc header.b=S3gBIDuJ
X-Mailman-Original-Authentication-Results: mail2-relais-roc.national.inria.fr;
 dkim=none (message not signed)
 header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix freeing uninitialized
 pointers
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
Cc: kernel-janitors@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Kees Cook <keescook@chromium.org>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Julia Lawall <Julia.Lawall@inria.fr>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 David Laight <David.Laight@aculab.com>,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-551105037-1711092310=:3390
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 21 Mar 2024, Jakub Kicinski wrote:

> On Thu, 21 Mar 2024 15:27:47 -0700 Jesse Brandeburg wrote:
> > The gist of it is that we should instead be using inline declarations,
> > which I also agree is a reasonable style for this. It more clearly shows
> > the __free(kfree) and the allocation (kzalloc, kcalloc, etc) on the same
> > (or virtually the same) line of code.
> >
> > I'm curious if Jakub would dislike this less? Accept?
>
> At present I find this construct unreadable.
> I may get used to it, hard to say.
>
> Also I don't see the benefit of the auto-freeing construct,
> I'd venture a guess that all the bugs it may prevent would
> have been caught by smatch. But I'm an old curmudgeon stuck
> in my ways. Feel free to experiment in Intel drivers, and we'll
> see how it works out 🤷️

In my experiments with of_node_put, there seem to be many functions where
removing the frees makes the function much more readable.  But
kmalloc/kfree may be used in different contexts, where the management of
the memory is a smaller percentage of the overall code.  So the tradeoffs
may be different.

julia
--8323329-551105037-1711092310=:3390--
