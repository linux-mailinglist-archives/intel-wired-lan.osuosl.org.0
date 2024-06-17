Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 129D190BA89
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jun 2024 21:04:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC3AE404DE;
	Mon, 17 Jun 2024 19:04:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yGtT0l3lX_F6; Mon, 17 Jun 2024 19:04:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B02C404EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718651057;
	bh=lvqHTo7jJRrqO8hQIcu9jIXohsIeVKXBgS8kSIqaPhE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hKMyY1c5B76i4ahPPP3ZRobKJmsYIo8U5k6aFS4iE5KQug6syGha9wuNV2NLRUa/U
	 3r0ecFOEwaBqJFMlkBG7OHVory2c3mQ6vWiIi8AAiA/Ab3XPlb+CsVLyrKnt6gNDhP
	 rn1Zph4hd/0pU3Dc7oBqMyxYVuzWloDvI1eproQRxwFPQX6FhlgiaKK0+w3c50JdP4
	 4bFN/CC/07T/tS+OC/vmGh5gzFJZTu8ZyxmUocNvUF83WQdluon2W9OBaizyZblrtL
	 8ukktKqvZ7F5Z728e+acseuAcbmZdUtz7SisJMcBGQIx/Gx0T1R5y+ph8dPAGSaDKi
	 q9Xjj5n+DUvOg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B02C404EB;
	Mon, 17 Jun 2024 19:04:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D9391BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 19:04:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 15BA1403DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 19:04:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id enNDMrteauvL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jun 2024 19:04:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E4BE9403C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4BE9403C7
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E4BE9403C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 19:04:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 5C39ECE12DE;
 Mon, 17 Jun 2024 19:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 819EFC2BD10;
 Mon, 17 Jun 2024 19:04:05 +0000 (UTC)
Date: Mon, 17 Jun 2024 20:04:03 +0100
From: Simon Horman <horms@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240617190403.GZ8447@kernel.org>
References: <20240614094338.467052-1-poros@redhat.com>
 <20240615151641.GG8447@kernel.org>
 <da984106-43eb-42cc-a8c0-be859c6e84e9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <da984106-43eb-42cc-a8c0-be859c6e84e9@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718651048;
 bh=qfyso2qMLybGpX61RQ+fiugcmyG5+ZY0OPKYZo3IQ9o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WApkWx4txrab+zq2C/BuIEtSPTivz+0RK+P5RujtU3kVXXD3t6kFum+m+jy8HP9/w
 s3qMMurypPbijMf/uTOCuVVZAgi/z/741/W/vNt01AS7M1a+WLSfXAOIfgfXOX1wXh
 TGRB1x6E+Re7m2sI1p6AFczzloFBy7fEE7/lIHZGNCbxC2EeA7BKXIzJZwmW0bzPSg
 YKyPj+CPGcx66uyy2WdriIKLDuH6lK5mIhPmJ21T9bwXRAubD/qsE4e1Z+Lc1/VBij
 XAN42v0bX0RplsVUGoLQhBfNV0ZrHnR2ToDUmbj4Qwu1xdtDvQTj4sNUMo2u/h/aPm
 GxT2bN9f+/t0w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=WApkWx4t
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: use proper macro for
 testing bit
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
Cc: ivecera@redhat.com, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Marcin Domagala <marcinx.domagala@intel.com>,
 Konrad Knitter <konrad.knitter@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, przemyslaw.kitszel@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 17, 2024 at 02:58:59PM +0200, Alexander Lobakin wrote:
> From: Simon Horman <horms@kernel.org>
> Date: Sat, 15 Jun 2024 16:16:41 +0100
> 
> > On Fri, Jun 14, 2024 at 11:43:38AM +0200, Petr Oros wrote:
> >> Do not use _test_bit() macro for testing bit. The proper macro for this
> >> is one without underline.
> > 
> > Hi Petr,
> > 
> > it might be nice to include a brief explanation as to
> > why test_bit() is correct.
> 
> Let me explain this as the author of all those bitops wrappers :D
> Petr is free to include either this or his own brief into v2.
> 
> _test_bit() is what test_bit() was prior to my const-optimization. It
> directly calls arch_test_bit(), i.e. the arch-specific implementation
> (or the generic one). It's strictly _internal_ and shouldn't be used
> anywhere outside the actual test_bit() macro.
> 
> test_bit() is a wrapper which checks whether the bitmap and the bit
> number are compile-time constants and if so, it calls the optimized
> function which evaluates this call to a compile-time constant as well.
> If either of them is not a compile-time constant, it just calls _test_bit().
> test_bit() is the actual function to use anywhere in the kernel.
> 
> IOW, calling _test_bit() avoids potential compile-time optimizations.
> 
> >From what I see in the code, &sensors is not a compile-time constant,
> thus most probably there are no object code changes before and after
> the patch. But anyway, we shouldn't call internal wrappers instead of
> the actual API, so this fix is correct.

Thanks for this very comprehensive description, now I know :)

> >> Fixes: 4da71a77fc3b ("ice: read internal temperature sensor")
> >> Signed-off-by: Petr Oros <poros@redhat.com>
> >> Acked-by: Ivan Vecera <ivecera@redhat.com>
> 
> To be added to v2:
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> 
> Thanks,
> Olek
> 
