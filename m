Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7A486ABF1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 11:12:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D849E60E15;
	Wed, 28 Feb 2024 10:12:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1gBgllxcPpxb; Wed, 28 Feb 2024 10:12:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB89260E09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709115153;
	bh=FYqUybZinlqZKKCqEpvFgd9fW/asnSztxhG3iU0XloY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xy8PW3Fxlj7ZEzVfxs8vcD7GC52Cn18ceDV+Wv8lQuz5P752GBGjZu+tPjlanIWm/
	 avMAYP+Kx2b8Vo07PNO+LgBCvsEThDjy8aysIIR6KNCcfWn825JLmoR2QqXbrKM0Ou
	 kX6wHPmB3QuHPRr4TqZezzL6+tKr8dl9BfCb1VcxxJoKznnCf2PRiaMmjmjDBoQknw
	 tIzp8PSmJ4NRAK9OgcXBwwJn+W/ZdmnPfvWNDrlSXGFVyAtPOLVcJiVQ5jmGWlASP5
	 2HhFrWTxalSgQfY/wEkRcSRGZvsI8ngrlTqfXvsCYtRMesueNKAtzaV+ovvnV8LBCi
	 Th1aiNHv0fZHg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB89260E09;
	Wed, 28 Feb 2024 10:12:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 10EE81BF59C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 10:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F0F2F60AA1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 10:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v0yYRM2QP6Xc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 10:12:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D904460A36
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D904460A36
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D904460A36
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 10:12:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 0064DCE20CC;
 Wed, 28 Feb 2024 10:12:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61A43C43394;
 Wed, 28 Feb 2024 10:12:20 +0000 (UTC)
Date: Wed, 28 Feb 2024 10:12:18 +0000
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20240228101218.GB292522@kernel.org>
References: <20240227143124.21015-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240227143124.21015-1-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709115142;
 bh=QFYQUoP97qt1SySTRyNAKrKSlup8Ut/g9RM8S9am1mM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n96fHgZoOdwmwYupMkJDHIcXKFSXtzfuPciA6Q42WzIjAQyyy5pHqrp4mmDiktMvD
 XmBa/boDMeU+a2wslPm1yJwkAavc1N3w7ZIxdZg4gKwzBJVQJbovMVGpcGxmSgCp/3
 pyzEoAr8fum7GOtxgFr/sWyqJG/z49bfpW0rkKsqWv9apEaND2hzEjpQOt4zuEodZM
 MpGNikI0U3z4djHIey7UyYG/LGLBdJSKJPRDfyUAhwGnlQq0pGrxqvSLT/ghrmrUbH
 frHRNk9eoVqaCj7WPme6IOFcYS/699pd7GMHJyuHoEo9ylWRavq+/gaib+VQ3BeQyo
 N8O+BlpjtjD1g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=n96fHgZo
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix stats being updated
 by way too large values
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
Cc: Nebojsa Stevanovic <nebojsa.stevanovic@gcore.com>, netdev@vger.kernel.org,
 lukasz.czapnik@intel.com, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 Christian Rohmann <christian.rohmann@inovex.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 27, 2024 at 03:31:06PM +0100, Przemek Kitszel wrote:
> Simplify stats accumulation logic to fix the case where we don't take
> previous stat value into account, we should always respect it.
> 
> Main netdev stats of our PF (Tx/Rx packets/bytes) were reported orders of
> magnitude too big during OpenStack reconfiguration events, possibly other
> reconfiguration cases too.
> 
> The regression was reported to be between 6.1 and 6.2, so I was almost
> certain that on of the two "preserve stats over reset" commits were the
> culprit. While reading the code, it was found that in some cases we will
> increase the stats by arbitrarily large number (thanks to ignoring "-prev"
> part of condition, after zeroing it).
> 
> Note that this fixes also the case where we were around limits of u64, but
> that was not the regression reported.
> 
> Full disclosure: I remember suggesting this particular piece of code to
> Ben a few years ago, so blame on me.
> 
> Fixes: 2fd5e433cd26 ("ice: Accumulate HW and Netdev statistics over reset")
> Reported-by: Nebojsa Stevanovic <nebojsa.stevanovic@gcore.com>
> Link: https://lore.kernel.org/intel-wired-lan/VI1PR02MB439744DEDAA7B59B9A2833FE912EA@VI1PR02MB4397.eurprd02.prod.outlook.com
> Reported-by: Christian Rohmann <christian.rohmann@inovex.de>
> Link: https://lore.kernel.org/intel-wired-lan/f38a6ca4-af05-48b1-a3e6-17ef2054e525@inovex.de
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

