Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEBC85D5B0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Feb 2024 11:35:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D09881871;
	Wed, 21 Feb 2024 10:35:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VUR3l9ceaEsP; Wed, 21 Feb 2024 10:35:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAC7881991
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708511741;
	bh=vHVAKE8zhw1A1zbDlTVjj9PTZ593tg8WZE/hTvKfFkw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7ymxXB5hPDLFfcZdBw/pKprkBz6lukyfnA+IEaHmOky3leNeiM9/Rq+uWae4njq3H
	 5/CibFNfQjTdSlLftoDjZmAF8JsMGiBuD6cmGRWeWU2ExWN601Z/xAQKNc4zKrOnyu
	 Y4tYRh+++nykLfMT1hxJl1hiLDWLM0UYbWqvnTGc78Q3dLxG/t3hTgwCCuBH9uFvFP
	 R8Oe9kGaIlKSZ0FXFPgNCNzNt+qkxDf1fJ4U8yE1LopoR7xovQbejZ54DNI0ZTvqOe
	 enFkqpFaQlLUNjxnXKngYN666jct9hYWX+1FfjEYVIM1f68n172VnlNhRwWLgM9kAn
	 4WUFO8VblagXQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAC7881991;
	Wed, 21 Feb 2024 10:35:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 321391BF82F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 10:35:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2B0A260DFA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 10:35:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7zAkO97KFsZI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Feb 2024 10:35:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C92126071A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C92126071A
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C92126071A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Feb 2024 10:35:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 42536CE1A93;
 Wed, 21 Feb 2024 10:35:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FE0FC43390;
 Wed, 21 Feb 2024 10:35:27 +0000 (UTC)
Date: Wed, 21 Feb 2024 10:35:25 +0000
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20240221103525.GC352018@kernel.org>
References: <20240210220109.3179408-1-jesse.brandeburg@intel.com>
 <20240210220109.3179408-2-jesse.brandeburg@intel.com>
 <20240219091542.GS40273@kernel.org>
 <823fdfe2-7c8c-4440-bc6a-3896c542f0e4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <823fdfe2-7c8c-4440-bc6a-3896c542f0e4@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1708511729;
 bh=mhJpWUQj49VExZo/egSI7ARpDJ9XVpQJjU1eFfu6WAY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OJUa3/J8MGAw6s4WTgXenUe7troxj1F/WNCxCchzoxeb5OXJbU7BgvcPyGsW1sR1X
 t3MtP5CB6e/WMXqcC2vm5r2Zg/uLpglGoQ68O5PLuHhTvGc+l5UxKmYlYA5TCvGuHJ
 81heOE4e+F3sE3DfyVlE5/WN0yLxdjLRDx/2vvHqfZPVSBw4gyZMChSbtpfUf2xOQN
 Eohb+HESWUg8ptcxLpnT/0EVtstZlzBP/6wavP67QMH03rD1n3U6C2E/W9lpFuKtNS
 vM41aRE7R+3C6f4W5WUoNzyKOCPZ75JTAqcS/VhLjT6DdVddeu7xlNITsbf9vV1TTl
 tHUy7DiXxs1iA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=OJUa3/J8
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/2] igb: simplify pci ops
 declaration
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Alan Brady <alan.brady@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 20, 2024 at 08:48:28AM -0800, Jesse Brandeburg wrote:
> On 2/19/2024 1:15 AM, Simon Horman wrote:
> > On Sat, Feb 10, 2024 at 02:01:08PM -0800, Jesse Brandeburg wrote:
> >> The igb driver was pre-declaring tons of functions just so that it could
> >> have an early declaration of the pci_driver struct.
> >>
> >> Delete a bunch of the declarations and move the struct to the bottom of the
> >> file, after all the functions are declared.
> >>
> >> Reviewed-by: Alan Brady <alan.brady@intel.com>
> >> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> >> -	.probe    = igb_probe,
> >> -	.remove   = igb_remove,
> >> -#ifdef CONFIG_PM
> >> -	.driver.pm = &igb_pm_ops,
> >> -#endif
> >> -	.shutdown = igb_shutdown,
> 
> 
> >> +	.probe    = igb_probe,
> >> +	.remove   = igb_remove,
> >> +	.driver.pm = &igb_pm_ops,
> > 
> > Hi Jesse,
> > 
> > the line above causes a build failure if CONFIG_PM is not set.
> 
> Hi Simon, thanks!
> 
> Yeah I missed that, but do we care since patch 2/2 then fixes it?

Right. TBH I wrote the above before noticing 2/2.
And I guess it is not a big deal either way.
