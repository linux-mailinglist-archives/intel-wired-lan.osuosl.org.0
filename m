Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7723F886F5E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Mar 2024 16:03:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7607D41889;
	Fri, 22 Mar 2024 15:03:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id STEe-ZG30HYx; Fri, 22 Mar 2024 15:03:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC0F641885
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711119830;
	bh=owkAnMBkUoxCLI7D2dOA/81nag9LNAHZCGU4v0LrBbQ=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FboX+l6/uiMowIFWd1DR/z/FmqYDbfX7hd88vBsex94Rid/oAgpNzkJ5hF1RIj8Ar
	 R0xorZREjoj8Ei0ekRQRCnV4nE2g87GOyDJJMxQ5eCLCJ6ExXkr19BoGL/TpRLPlpd
	 CJLXyeQ/Ek4SCmc+JwvBD2rRAlIKdSWQeDNRe4wyYn96PEYf4GFfqklSbWOl4d9+n/
	 WaIj2WSU32iQSY5t1lrELN0lm0NNPxsYGkZBjKjwpdo4ncqvx1UkY990BRX/LVXadc
	 fWtmbhaY9YmFfrC44v89zHTSO+n9/grlswdXq4WVwmh6RnQ7iOzX2GTMt29QpyeTZq
	 O15t1vO9KEY7Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC0F641885;
	Fri, 22 Mar 2024 15:03:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 772831BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 15:03:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 61DE6405F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 15:03:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CrCludU6ZK4l for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Mar 2024 15:03:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E80EF404E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E80EF404E8
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E80EF404E8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 15:03:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 51B57CE17F0;
 Fri, 22 Mar 2024 15:03:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 677EEC433C7;
 Fri, 22 Mar 2024 15:03:38 +0000 (UTC)
Date: Fri, 22 Mar 2024 08:03:37 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Julia Lawall <julia.lawall@inria.fr>
Message-ID: <20240322080337.77a10cfd@kernel.org>
In-Reply-To: <82b49991-eb5a-7e8c-67e0-b0fd932f40b4@inria.fr>
References: <e5172afb-427b-423e-877a-10352cf4a007@web.de>
 <F2FBADE8-EDF9-4987-A97B-CF4D2D1452E0@inria.fr>
 <b9dc2c7a-2688-4a7b-8482-1e762c39449c@intel.com>
 <20240321184828.3e22c698@kernel.org>
 <82b49991-eb5a-7e8c-67e0-b0fd932f40b4@inria.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711119819;
 bh=wLpygW9FYxva6ods0rOQA5KWZKfQ7KIT6Udekt7Xvzc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HsMClaxWIL79OYvoZ8cCAZo3NCiLqVUVbM8EsiW5QpNgi93yEvJawTHzns5ULfJCO
 n00xPAvdfP0vMk06wppenLie8WV1EIjMZueUVspAQwVEmI/p2+aA3KDQK1DUESxRaW
 1acKFSnQkigbvo4uCcwwFDlVPgBW7lZzMB4r0dLyKweS5jummg5uz+yUlwrXwf05ba
 bfd6ZO/dqMDWuKkXAUs209wP8DGJflrkBVylnANK/kTyBSK4eyPaKmoKxVbCor5lDs
 EPK2D8hNL7Qu/eF2buvDTZ13shSleFGNj79wORHDYxPPTtkgXskAfoagKcoA6d9A33
 WlEuxdWcIUeMQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=HsMClaxW
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, kernel-janitors@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, David Laight <David.Laight@aculab.com>,
 intel-wired-lan@lists.osuosl.org, Jonathan Cameron <jic23@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 22 Mar 2024 03:24:56 -0400 (EDT) Julia Lawall wrote:
> > At present I find this construct unreadable.
> > I may get used to it, hard to say.
> >
> > Also I don't see the benefit of the auto-freeing construct,
> > I'd venture a guess that all the bugs it may prevent would
> > have been caught by smatch. But I'm an old curmudgeon stuck
> > in my ways. Feel free to experiment in Intel drivers, and we'll
> > see how it works out =F0=9F=A4=B7=EF=B8=8F =20
>=20
> In my experiments with of_node_put, there seem to be many functions where
> removing the frees makes the function much more readable.  But
> kmalloc/kfree may be used in different contexts, where the management of
> the memory is a smaller percentage of the overall code.  So the tradeoffs
> may be different.

Good point! References are likely a very good use case for this sort
of thing. The act of bumping a counter lacks the feeling of lifetime
we get with an object :(
