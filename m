Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B148743A0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Mar 2024 00:15:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B7BD441689;
	Wed,  6 Mar 2024 23:15:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tW9nmooVCid0; Wed,  6 Mar 2024 23:15:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D9AC414BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709766931;
	bh=xktJZzNkbePo7P16lF5aQ5UaJ9HCgGqURImmi5ZIWeQ=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=bfHx3d15hFuXxanJe+gtYDEosBKm6zrp7UL3LpYoSq4UBmMSlhNkGgJVmV/FETPQT
	 I+vAD31iCBa5Gn9eSzzlchgrFyppT9YXeRwB3JrvfCqdbXGqLJOoQ0vNLl1EpXeP5c
	 2gsCVBi5WYC/QIAws74fkFaR+N/+t/bH5e3eX9TfSpC7KiLK5K5TIJeNvXUx3E8qLy
	 oy1vlfxHhvutZCWzeB1YPu4QaR33vjjJAYMlZYb8A9I3SYNHYeCmDwfm2rPO9MoZQi
	 OVKuvMqkD7XJV0tWe+FDGuVIJIN2EMwV3wDxxeYw3kSsWOGlqwP3c5+SDK9Rf6vnjE
	 z0l4skc/JVV3A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0D9AC414BD;
	Wed,  6 Mar 2024 23:15:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 95A251BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 23:15:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8D7B9417CB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 23:15:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M_FjR0OI_gYI for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 23:15:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=helgaas@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 721E64179A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 721E64179A
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 721E64179A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 23:15:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 72186CE2373;
 Wed,  6 Mar 2024 23:15:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CC72C433F1;
 Wed,  6 Mar 2024 23:15:20 +0000 (UTC)
Date: Wed, 6 Mar 2024 17:15:18 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20240306231518.GA589712@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240306231410.GA589078@bhelgaas>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709766920;
 bh=6XH6cYTm8FuFdceO5emvTfn73LPBy8xch0Zz/xWXHCA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=Urqo3xJH7drgVjvd8paUSycjD7iLX+IlzADgOv8vRcCNNEQi5FzlU4RCI/4aZvX15
 EhvgzggLJlmLYAPlUIRAyBA6B3INfPHth6AszYfZrw2SuUrK4OntCQtZsEczkfJSzv
 jBMgS34ysXG3n2XVsoGI7y2CZQ8sEkl64tQO2utisasz1TLsMZAarmRxi9vbFOHHGB
 IGDOD4kTczzF8rEAHWoXxjOXHnri5RB89UC/XA2NaN8Vk4cnSRx3N14T2ownvyol68
 O+rFaY5/bTsfL0nghkLPYxl8W1ubjH3kosTQ6JHAdDxPOUlXbw7KoN5DsTYfsWRRTK
 GPobCkWXF4TdQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Urqo3xJH
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] igb: simplify pci ops
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Alan Brady <alan.brady@intel.com>,
 horms@kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 06, 2024 at 05:14:12PM -0600, Bjorn Helgaas wrote:
> [+cc Paul for __maybe_unused cleanup]
> 
> On Tue, Mar 05, 2024 at 06:50:21PM -0800, Jesse Brandeburg wrote:
> > The igb driver was pre-declaring tons of functions just so that it could
> > have an early declaration of the pci_driver struct.
> > 
> > Delete a bunch of the declarations and move the struct to the bottom of the
> > file, after all the functions are declared.
> 
> Nice fix, that was always annoying.
> 
> Seems like there's an opportunity to drop some of the __maybe_unused
> annotations:
> 
>   static int __maybe_unused igb_suspend(struct device *dev)
> 
> after 1a3c7bb08826 ("PM: core: Add new *_PM_OPS macros, deprecate old ones").
> 
> I don't know if SET_RUNTIME_PM_OPS() makes __maybe_unused unnecessary
> or not.

Sorry, should have read 2/2 first ;)
