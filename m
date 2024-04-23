Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 630308AF3D7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 18:24:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4A1F401FC;
	Tue, 23 Apr 2024 16:24:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fk4uBRClbtCE; Tue, 23 Apr 2024 16:24:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFD46401DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713889441;
	bh=IcWew+Gwzj9UZnTfMXEtGwHUtxrDpXjkBp5Yin9IBLw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fao7B0QOKaygSt2HzbzvUf9r5Dssdf6m82NjBil6NvEqeaMia8LaFpV+5mVS5xbgg
	 1ivFBUdD05HQXnfdQL0OV008e6SC1DhdK26W9flHYwH6hB2S9PHET7Hp76L/qY+nxQ
	 x2Te5Hh2Irf5IaA39r5Ro8WAPFFTC/qn5pNfuP+BUmFd8eK+mRWPht4zkHqMT/576s
	 npzWmChyDv8AF6bUP5FXfproKuqmwFgqWkapJDu0yQegPrcl0L9i+TSOvpPE2sHRK5
	 ReD+T0d8v+05WZVtAJm7XQ+jmqS3t/oSIeHaZStsWEJb02+AeL0HZTdc66gLe7w4dE
	 Jex7EL5aUzv3A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFD46401DC;
	Tue, 23 Apr 2024 16:24:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E2731BF20D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 16:23:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 76AA64017B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 16:23:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0GCIymCcxR9x for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 16:23:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=gregkh@linuxfoundation.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D737C4012A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D737C4012A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D737C4012A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 16:23:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5909F615C9;
 Tue, 23 Apr 2024 16:23:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 801D2C116B1;
 Tue, 23 Apr 2024 16:23:55 +0000 (UTC)
Date: Tue, 23 Apr 2024 09:23:46 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: =?iso-8859-1?B?Suly9G1l?= Carretero <cJ-ko@zougloub.eu>
Message-ID: <2024042328-footprint-enrage-2db3@gregkh>
References: <a7eb665c74b5efb5140e6979759ed243072cb24a.camel@zougloub.eu>
 <dff8729b-3ab6-4b54-a3b0-60fabf031d62@intel.com>
 <2259bbeb9a012548779e3bf09a393fdb7d62dd0c.camel@zougloub.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2259bbeb9a012548779e3bf09a393fdb7d62dd0c.camel@zougloub.eu>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1713889435;
 bh=3rE8iCzACJ3xQrQo2n7+k+pI9IyJWXmBfSTaEbZ8Wjc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nThVN82Kxi0XgxvS273sJ4SetvM8MeSKZouTlFVsenVzlc1/VrdZZgIJrVhWcdZmX
 5WhQ51oV4EBJq/gZUbuesH0JENAYYo+IuK0cCGG8r+whTh4eAIrs7PlS9jlzZrUB8c
 nq3oGE4gtw/xO/KFmMH7+7ybYSTvHxN6zEKd8Bqo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=nThVN82K
Subject: Re: [Intel-wired-lan] [BUG] e1000e, scheduling while atomic (stable)
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
Cc: netdev@vger.kernel.org, Sasha Neftin <sasha.neftin@intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 19, 2024 at 12:20:05PM -0400, Jérôme Carretero wrote:
> Hi Sasha,
> 
> 
> Thank you, sorry for the delay but I coudln't reboot.
> 
> Adding Greg KH because I don't know if stable will receive my e-mail
> (not subscribed) but the regression was integrated in stable:
>  commit 0a4e3c2d976aa4dd38951afd6267f74ef3fade0e
> so they should get the fix ASAP too.

The fix needs to show up in Linus's tree, is it on its way there?

thanks,

greg k-h
