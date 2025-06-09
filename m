Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A41A8AD2A50
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 01:10:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EAEE61594;
	Mon,  9 Jun 2025 23:10:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HBa5cw2YdZ9f; Mon,  9 Jun 2025 23:10:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE1E56158D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749510643;
	bh=PpbBUu6SSZyVt0QVRVxpcDvaVws13pRZeXqmsm8G150=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qxCNXKB6fKYh/bF/Ex791Y3T8Xpt6tRta5TrKCpoHliSKL9FNZkl3R/EJ/PxjVa39
	 BdIFdvU9fDM+C5wduR33HqG8+pfWkprKUgl0X6sx3QXbo86q0HnRpNeDRUCRzrAwU4
	 BYiq+snycgCNY+0+dpUv3KdgOxmPaL4MBpDKRObW+raTjSVrXh1GYNV3tdXP2AOBY8
	 44vbgwAF13dkp5RM1wh5OOYbB9Y09CEuzjnZTjixvOmyNbWq2jymyIF5AXzJ4lSmwy
	 dR+n+k/dKWaYIk/EpiP2OkznAp+TIp/SA+sFZQyIMovUQ72BaJYPBCCI+FrGaO0J2P
	 nr4vgPiwag+iw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE1E56158D;
	Mon,  9 Jun 2025 23:10:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9DCC91F2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 23:10:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 841D66158B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 23:10:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ETnxCjc70y7R for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 23:10:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EA49161589
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA49161589
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EA49161589
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 23:10:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 92578A50C74;
 Mon,  9 Jun 2025 23:10:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4D5EC4CEEB;
 Mon,  9 Jun 2025 23:10:39 +0000 (UTC)
Date: Mon, 9 Jun 2025 16:10:39 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ian Ray <ian.ray@gehealthcare.com>
Cc: horms@kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek
 Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 brian.ruley@gehealthcare.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <20250609161039.00c73103@kernel.org>
In-Reply-To: <aEaAGqP-KtcYCMs-@50995b80b0f4>
References: <20250603080949.1681-1-ian.ray@gehealthcare.com>
 <20250605184339.7a4e0f96@kernel.org>
 <aEaAGqP-KtcYCMs-@50995b80b0f4>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749510640;
 bh=bx9NcLoyBc/X4erImU4fVAM54+jApjXbJj0OpnMy794=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SR9KNz5tad0b3KJYbda9lzbutOkP8U46tf7U4qOgAZvF5AVUIS+zSaK3VPCkwN2jl
 Pzu9ck8ArdBJcHVhaIuAoOQ3gW+u33fmwUUhtO01tBfXmVNtkmOh3t5SSIRW13du++
 7eduBFBZI09YSse0pD2gRf4gyP6zQY6QjmjZz6JSnIBdhD/dSEO/SQXKbrtb4CMv90
 kfjiAbLUiayqh+mdqac/AODWaid63bxPK6PwFs9eirJu1RWS73qzp4a3nJ1547UPpa
 MxSbOOm4umvTATwh8a88Drq3qZfPF5Q8XBohC5AcXbSLOpnJiquOb4Ml4yQGQ+cVye
 /T9ZvJzLscMhQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SR9KNz5t
Subject: Re: [Intel-wired-lan] [PATCH v2] igb: Fix watchdog_task race with
 shutdown
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

On Mon, 9 Jun 2025 09:32:58 +0300 Ian Ray wrote:
> On Thu, Jun 05, 2025 at 06:43:39PM -0700, Jakub Kicinski wrote:
> > On Tue,  3 Jun 2025 11:09:49 +0300 Ian Ray wrote:  
> > >       set_bit(__IGB_DOWN, &adapter->state);
> > > +     timer_delete_sync(&adapter->watchdog_timer);
> > > +     timer_delete_sync(&adapter->phy_info_timer);
> > > +
> > > +     cancel_work_sync(&adapter->watchdog_task);  
> > 
> > This doesn't look very race-proof as watchdog_task
> > can schedule the timer as its last operation?  
> 
> Thanks for the reply.  __IGB_DOWN is the key to this design.
> 
> If watchdog_task runs *before* __IGB_DOWN is set, then the
> timer is stopped (by this patch) as required.
> 
> However, if watchdog_task runs *after* __IGB_DOWN is set,
> then the timer will not even be started (by watchdog_task).

Well, yes, but what if the two functions run *simultaneously* 
There is no mutual exclusion between these two pieces of code AFAICT
