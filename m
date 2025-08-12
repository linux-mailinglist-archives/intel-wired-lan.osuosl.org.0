Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C292B23A44
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 22:57:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AB4941F32;
	Tue, 12 Aug 2025 20:57:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DWLojsiMqASB; Tue, 12 Aug 2025 20:57:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9127041F7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755032238;
	bh=Rv51wVsr6kgwHTm4cKT5U3Xx/bVt9oEWFl3gthWVbV4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e+aIUnm2GmJaRsC1mSV7/JZVg63hqxGGaekU/BFxZj0QbyuOOjcpmO6a+bd/Y8uRS
	 TZ2PuhA6Ozyc2IyzqT2nKLHDJtan73VlYgsV6H+qIe2HYfW/l98wmkhRmHzBUvLdKs
	 fwp2LNiw0MUf66hp5I6EjYsH1M9wEFN79/SSx/AMUiGK3IVEmETlIfE5biYwI5bgXG
	 LA2+6xkj/t7pK2QyRjrUHsV24U0tbKIFoOkPJTfUwqjcaXyXqdA2qIvWMa8oxa9E+J
	 gsXnY+bgkMVx3lzrFMV7dmL0Pyagq5BhoESGxmM84yhB/nSbn2zNIr+uyH6nwr/MIg
	 X1NED40thi1Qw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9127041F7B;
	Tue, 12 Aug 2025 20:57:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A39E71C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 20:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 95939414B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 20:57:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3j-JOKEesIUs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 20:57:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C2B1741326
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2B1741326
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C2B1741326
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 20:57:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id DCA6EA57A2A;
 Tue, 12 Aug 2025 20:57:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24C30C4CEF0;
 Tue, 12 Aug 2025 20:57:15 +0000 (UTC)
Date: Tue, 12 Aug 2025 13:57:14 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org, Kuniyuki Iwashima
 <kuniyu@google.com>, stable@vger.kernel.org
Message-ID: <20250812135714.0e1a7ee0@kernel.org>
In-Reply-To: <20250812132910.99626-1-przemyslaw.kitszel@intel.com>
References: <20250812132910.99626-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1755032235;
 bh=LgWTKMMSUHAbzZLyp/LkRilxvvmP0YcvpZK3k+u1yfQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Yl2gobbNrue0nOUHZvQwKuB3wXGqab5YZ5mYn0tjT6ljrhZVg88xPAmI5LBcOSjWA
 ht6aFSwEKxTnJlyhpAPuUZzHX4jnBB3wDAnBKPiAzBmubJx3sCqdsYEh0v524dwkMz
 7uk03s8Dwg3TQfTTH2JMLPPPNgSJNAr5r+wqs1RaDw5NxVFaIeKcVwzCgTgzOf00rx
 ajLzz4lkDSdvKdAcfuLRStPj0MEIs6HVMjCm9+pGOp2LzMKb2tqYtYd+VOAqr/tw4E
 Br5SFsLZnXKiu28Jsivt8LXJZc30olyAS9vSzoXe+PzQLUTApgAhRDSb9dUDhK5z9i
 vCvYAjVPNUN1A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Yl2gobbN
Subject: Re: [Intel-wired-lan] [PATCH 00/12] ice: split ice_virtchnl.c
 git-blame friendly way
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 12 Aug 2025 15:28:58 +0200 Przemek Kitszel wrote:
> Summary:
> Split ice_virtchnl.c into two more files (+headers), in a way
> that git-blame works better.
> Then move virtchnl files into a new subdir.
> No logic changes.
> 
> I have developed (or discovered ;)) how to split a file in a way that
> both old and new are nice in terms of git-blame
> There were no much disscussion on [RFC], so I would like to propose
> to go forward with this approach.
> 
> There is more commits needed to have it nice, so it forms a git-log vs
> git-blame tradeoff, but (after the brief moment that this is on the top)
> we spend orders of magnitude more time looking at the blame output (and
> commit messages linked from that) - so I find it much better to see
> actual logic changes instead of "move xx to yy" stuff (typical for
> "squashed/single-commit splits").
> 
> Cherry-picks/rebases work the same with this method as with simple
> "squashed/single-commit" approach (literally all commits squashed into
> one (to have better git-log, but shitty git-blame output).
> 
> Rationale for the split itself is, as usual, "file is big and we want to
> extend it".
> 
> This series is available on my github (just rebased from any
> earlier mentions):
> https://github.com/pkitszel/linux/tree/virtchnl-split-Aug12
> (the simple git-email view flattens this series, removing two
> merges from the view).
> 
> 
> [RFC]:
> https://lore.kernel.org/netdev/5b94d14e-a0e7-47bd-82fc-c85171cbf26e@intel.com/T/#u
> 
> (I would really look at my fork via your preferred git interaction tool
> instead of looking at the patches below).

UI tools aside I wish you didn't cut off the diffstat from the cover
letter :/ It'd make it much easier to understand what you're splitting.

Greg, Sasha, I suspect stable will suffer the most from any file split /
movement. Do you have any recommendation on what should be allowed?
