Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 504B5877CB4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Mar 2024 10:28:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D87F140620;
	Mon, 11 Mar 2024 09:28:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DGGbGklKpxjt; Mon, 11 Mar 2024 09:28:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 983D4405D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710149309;
	bh=NCVYMTwJZyIqoI4MUjZNCPXzX4i3g9vXHKJ35Jwv+W8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zA3u7qVy5vUQceO9UesqRr6DQj42OwdaB6qqedo1Qv4ilkjZE4F6jxAqZeoT2ncNm
	 w57y68YFfkvNkA69meS9VPG2TJJzVNniJSPxTVkFwZevsWjyaGzJsQzihSm5ZvE5th
	 CuWTmlILgWvcw//Ot6N27d+wPOLzBDvwiLKss6/XXLM2fYBbxJgMk7r5m8eB4Vitf0
	 NmLNpLIdgx5WGFGMQImlZxxkWjtOl7D/73adtW4/B4FIvWxBZliZCrnejiwGbMZXjY
	 VcTbUzsZfH4t6mKcVlbRYDS4MxtByuF98y/TuR4StuSi4CSVJZRe28WnSe9g7ZjgIY
	 xEqHFQ4RQnjiA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 983D4405D9;
	Mon, 11 Mar 2024 09:28:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 170841BF39E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 09:28:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E3A381A4E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 09:28:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3bi-D_ARGDO1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Mar 2024 09:28:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 841548144B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 841548144B
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 841548144B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Mar 2024 09:28:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 2A944CE0E5C;
 Mon, 11 Mar 2024 09:28:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C3B3C433F1;
 Mon, 11 Mar 2024 09:28:17 +0000 (UTC)
Date: Mon, 11 Mar 2024 09:28:13 +0000
From: Simon Horman <horms@kernel.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20240311092813.GJ24043@kernel.org>
References: <20240306235128.it.933-kees@kernel.org>
 <20240308202018.GC603911@kernel.org>
 <202403091230.ACF639521@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <202403091230.ACF639521@keescook>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1710149302;
 bh=CZz1SStjRYa5gA+pzYzI6DScrjzAK34yLiBd3eSn7OM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tjhv/ZpoX12XOo2I3gSu3TeIMfANUFWUOVc4WeeGSxZgUmENDriqsmt0LHKJPQahW
 5+cqskLul9dHqf4b/MnLh+nEYmlfzIBHSi6LBIbobzryCARnp8/7w/4y4zR2UkUCwu
 +3kTbnD9Egt084iRhv/Ymlzaip7ektKyhNzaLvrm2+z6Y1yrYxMxB4PTZL4bRKQCFR
 HYy0eP1kmXTrboVGrG8wwVY8lLnqtr21SIm6JY2LzTpZVTGXprB8FN9sX1vv3SOOrL
 bKm7+dwwemS/fvVDUhFInhTUWMNUKx7Tsh+Tlgzm431kz4m9jyf7U7FAytxvdXdA2F
 mBBiA+qZ6w0dw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tjhv/Zpo
Subject: Re: [Intel-wired-lan] [PATCH v2] overflow: Change DEFINE_FLEX to
 take __counted_by member
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, linux-hardening@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Mar 09, 2024 at 12:32:45PM -0800, Kees Cook wrote:
> On Fri, Mar 08, 2024 at 08:20:18PM +0000, Simon Horman wrote:
> > On Wed, Mar 06, 2024 at 03:51:36PM -0800, Kees Cook wrote:
> > > The norm should be flexible array structures with __counted_by
> > > annotations, so DEFINE_FLEX() is updated to expect that. Rename
> > > the non-annotated version to DEFINE_RAW_FLEX(), and update the
> > > few existing users.
> > > 
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > 
> > Hi Kees,
> > 
> > I'm unclear what this is based on, as it doesn't appear to apply
> > cleanly to net-next or the dev-queue branch of the iwl-next tree.
> > But I manually applied it to the latter and ran some checks.
> 
> It was based on v6.8-rc2, but it no longer applies cleanly to iwl-next:
> https://lore.kernel.org/linux-next/20240307162958.02ec485c@canb.auug.org.au/
> 
> Is this something iwl-next can take for the v6.9 merge window? I can
> send a rebased patch if that helps?

Thanks Kees,

I think that would help in the sense that from my POV it would
be more in fitting with the usual workflow for netdev patches.

But if the iwl maintainers think otherwise then I have no objections.

> 
> > > @@ -396,9 +396,9 @@ static inline size_t __must_check size_sub(size_t minuend, size_t subtrahend)
> > >   * @name: Name for a variable to define.
> > >   * @member: Name of the array member.
> > >   * @count: Number of elements in the array; must be compile-time const.
> > > - * @initializer: initializer expression (could be empty for no init).
> > > + * @initializer...: initializer expression (could be empty for no init).
> > 
> > Curiously kernel-doc --none seems happier without the line above changed.
> 
> I've fixed this up too:
> https://lore.kernel.org/linux-next/202403071124.36DC2B617A@keescook/
> 
> -- 
> Kees Cook
> 
