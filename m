Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFE991C59E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2024 20:25:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B76214177D;
	Fri, 28 Jun 2024 18:25:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MEvTfIfws9K1; Fri, 28 Jun 2024 18:25:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B738B417E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719599115;
	bh=rR45d/lZHGvOok3fJ8B3XHdpL43bL78+M4EQ/cx3AYo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kbY3ZDu8AkvkmY9O7D+LuQljRNCG8+H5I0xcezpr992J861+E45GZLp/x7phw/67L
	 dw2NBeKIlIHGB9gMcjV7OUt8D9PRAqhbxcDDS68960Id5cuKcpQNgybdtrWlIWl8Uu
	 1jYdDop/w5TjQfE16r7wlQqgN/XLBvMXUM572kQaaJ/PTyWC5xqQoNui1eWlsz+AX2
	 UzUsr+T1MLDNKixlZVfhWUZ0ufOjlj5iBJSEEqo40FxRoEmaukNZ6rp7XxUM+9y7AT
	 5S2OoNYp2ZsziBuAnsWN4b/GNbLgNndgyD0aAw0FbPYJ2PmjCf8vSAXA6VH9sVmzui
	 9iNCnNyJj6XtA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B738B417E8;
	Fri, 28 Jun 2024 18:25:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 54D341BF39A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 18:25:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 418AE830CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 18:25:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nAOk-CVx8ZEr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2024 18:25:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9FE02824DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FE02824DD
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9FE02824DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2024 18:25:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 858EB6205B;
 Fri, 28 Jun 2024 18:25:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22705C116B1;
 Fri, 28 Jun 2024 18:25:10 +0000 (UTC)
Date: Fri, 28 Jun 2024 19:25:09 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20240628182509.GF837606@kernel.org>
References: <20240618141157.1881093-1-marcin.szycik@linux.intel.com>
 <20240618141157.1881093-6-marcin.szycik@linux.intel.com>
 <20240628124409.GD783093@kernel.org>
 <5328363b-1ff0-439e-94f7-c6d3ca6039cd@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5328363b-1ff0-439e-94f7-c6d3ca6039cd@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719599112;
 bh=84F1j1O/PzUWmQC1iWnQz2NAnHWgc1MJHpiaRY3OPKM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lFICYDrQKIx7BTHu9tHllcKsW6lt0bEPpxzNSReN7qcjSJ0Hq5ZuaszVTw1W1LX/V
 2JrfwU2qVaou2JMtZvK3nfKzm1zoVqdSiMpl6dpaagE/RS7WqCwu7d4olslG4x3Zm8
 6i4Rr8agx62uQPR7d5fKqMksGIblmhSmmJkmxbi/MMLKGl8eU+wSz5h0TiS50d/p3l
 ZLHRaiVK15MT2PyD+Cafp+ehL4pqTIXTWLinI9e+XiBjP7OomYDowyJZOSD6n3eKmg
 v6KdM+1HwTgi8TSeYA4fs+W6ePH0lK5CCVUiMTmX1VwWWaQLFVNyYVP9/BT0UN7lZc
 j7M4Y19SBybuw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=lFICYDrQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/6] ice: Optimize switch
 recipe creation
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jun 28, 2024 at 03:56:55PM +0200, Przemek Kitszel wrote:
> On 6/28/24 14:44, Simon Horman wrote:
> > On Tue, Jun 18, 2024 at 04:11:56PM +0200, Marcin Szycik wrote:

...

> > I appreciate the detailed description above, it is very helpful.
> > After a number of readings of this patch - it is complex -
> > I was unable to find anything wrong. And I do like both the simplification
> > and better hw utilisation that this patch (set) brings.
> > 
> > So from that perspective:
> > 
> > Reviewed-by: Simon Horman <horms@kernel.org>
> > 
> > I would say, however, that it might have been easier to review
> > if somehow this patch was broken up into smaller pieces.
> > I appreciate that, in a sense, that is what the other patches
> > of this series do. But nonetheless... it is complex.
> > 
> > ...
> 
> all of the "bugs" that I have internally found for this patch were
> addressed by commit msg or comment changes ;)
> what about you reviewing also patch 7 from v3 of this series?

Right, sorry about accidently reviewing an old version of the patchset.
I will look at 7 from v3.
