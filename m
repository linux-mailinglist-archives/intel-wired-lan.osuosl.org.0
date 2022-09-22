Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 705885E6462
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 15:56:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B7C440C3F;
	Thu, 22 Sep 2022 13:56:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B7C440C3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663855012;
	bh=3s1Z7mcPDACT386Sejr58Vk84L1tI3yfxXm8qkcx1cU=;
	h=From:To:References:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=msZ5XxrtwRl0qVpmHnfbA8qPDWhGxxcuJbY5HG7cT4vjd/nshnKEtMtD3ILo9fpBs
	 Ex868voDzCX2eybUE8o08jJqJE4JmFEfydSh4AogHXcxYGmuWCpd+Pm8CTYDaOkTnx
	 rCuFAyNseJxJKhDYOgEyo9k2zyrwQIkMXVOXexRA/9lO/FJzGYMgGkEj3pw+XUqWWI
	 +n66fLh5tJ8sH8Y7nEtQDUFnUM8nfoPfI2iiV5U9GPmP8Ug5L7Gc8h8lRUD+gO3I4J
	 LFovexzKEn3PRDKqdjK1gm+VO7LRo4pNo7M14OfsPxO+PNE6dkwd1zh6LDgVpIyiN9
	 cavTYH5vjoO4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Dnp2B0vI8Sx; Thu, 22 Sep 2022 13:56:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 40212402E0;
	Thu, 22 Sep 2022 13:56:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 40212402E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 121261BF36F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 04:19:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DF9A141899
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 04:19:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF9A141899
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Detu5SONAzfc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 04:19:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4B2A4189C
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C4B2A4189C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 04:19:05 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B54286338F;
 Thu, 22 Sep 2022 04:19:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C3BEC433D6;
 Thu, 22 Sep 2022 04:18:55 +0000 (UTC)
From: Kalle Valo <kvalo@kernel.org>
To: Kees Cook <keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <20220922031013.2150682-11-keescook@chromium.org>
Date: Thu, 22 Sep 2022 07:18:51 +0300
In-Reply-To: <20220922031013.2150682-11-keescook@chromium.org> (Kees Cook's
 message of "Wed, 21 Sep 2022 20:10:11 -0700")
Message-ID: <87fsgk6nys.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 22 Sep 2022 13:56:46 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1663820344;
 bh=8xodEWMTndBecZO1JG0sANGtdcIZJhdCKz1ZoOkxjMk=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=uW+exXsXSGrew87ZojaTnnu2Pv1UtGXzQqjjLX2b7oGph4+PQelJUJX11FgjpqatQ
 ELoqv5pR8bSV3/7535PDpBw6BVY4bi59s4BaKlJSIYVXzNRY6aDLmLKhJLPFtzieTO
 iB7297vU052/FKz0Dc21FYTixE1ykO1VrtaDUUK3SkYuK3biSXS0J7OKhhQjo/eWra
 7mj2sPUPAmfSHWCc1MV6VYkGtcRnMWzr/LNBb6lPibVdaMWLqUzHsztksp0W4hjZYv
 zIN6846mujkb0CwMdnKoomN+OWU5pYCeMqp4QWw7CJvtecSieKja+ya7GWiRyAj90B
 2nqT/vaz2aB1w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=uW+exXsX
Subject: Re: [Intel-wired-lan] [PATCH 10/12] iwlwifi: Track scan_cmd
 allocation size explicitly
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
Cc: linux-wireless@vger.kernel.org, llvm@lists.linux.dev,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Gregory Greenman <gregory.greenman@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Jacob Shin <jacob.shin@amd.com>, Marco Elver <elver@google.com>,
 Johannes Berg <johannes.berg@intel.com>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Yonghong Song <yhs@fb.com>,
 David Sterba <dsterba@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vlastimil Babka <vbabka@suse.cz>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, "David S. Miller" <davem@davemloft.net>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Kees Cook <keescook@chromium.org> writes:

> In preparation for reducing the use of ksize(), explicitly track the
> size of scan_cmd allocations. This also allows for noticing if the scan
> size changes unexpectedly. Note that using ksize() was already incorrect
> here, in the sense that ksize() would not match the actual allocation
> size, which would trigger future run-time allocation bounds checking.
> (In other words, memset() may know how large scan_cmd was allocated for,
> but ksize() will return the upper bounds of the actually allocated memory,
> causing a run-time warning about an overflow.)
>
> Cc: Gregory Greenman <gregory.greenman@intel.com>
> Cc: Kalle Valo <kvalo@kernel.org>
> Cc: Johannes Berg <johannes.berg@intel.com>
> Cc: linux-wireless@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>

Via which tree is this iwlwifi patch going? Normally via wireless-next
or something else?

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
