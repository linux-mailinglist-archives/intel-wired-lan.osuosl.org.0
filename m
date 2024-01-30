Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E5B842C5E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 20:08:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 393B4612BE;
	Tue, 30 Jan 2024 19:08:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 393B4612BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706641697;
	bh=fGGcszYr2A37F9ZTQ0Fa30VPdXyf3vHqt0mO0IXss+g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sz6jVlMwQOQSIdxKbPD4gLThGA240W7Xmy6AosBYFtIMiZlw8eTex4daUFa2TobqI
	 3W8IzVhwHB9h/LVXKVHRjELCvwWrEihF09D54U5pQDg8V8af1ykMI5sJrXPFF638vw
	 pIVvlUVVPTkTOdXpJOfW7rLkvZvHLK50ZwSl8+34mhvsdKi7XWYjM+oidLjVnTkASZ
	 8FosJDsrh3JN4As65OnIAeXteX6/QE4NBr6FPCdH2t/vaXZ1n//rP7Zy1H3MKKr140
	 Y3eCtfeJqV5kcLJzbu8ZdP5XZe9SIDAHWEvZ6G5r2Oz5QzrnrFnB5GzL+UEEij57PX
	 cQJnud9TrJ3uw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OXH7Jl4s-2-v; Tue, 30 Jan 2024 19:08:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EC426059F;
	Tue, 30 Jan 2024 19:08:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EC426059F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E81F1BF287
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 16:59:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0520C82222
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 16:59:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0520C82222
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7AtuhWz7DlwN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 16:59:16 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B107C82110
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 16:59:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B107C82110
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6A7DE60EAD;
 Tue, 30 Jan 2024 16:59:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB936C433F1;
 Tue, 30 Jan 2024 16:59:14 +0000 (UTC)
Date: Tue, 30 Jan 2024 10:59:13 -0600
From: Seth Forshee <sforshee@kernel.org>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <Zbkq4cVJ1rEPda8i@do-x1extreme>
References: <ZbkE7Ep1N1Ou17sA@do-x1extreme>
 <47eea378-6b76-46a7-b70e-52bc61f5e9f0@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <47eea378-6b76-46a7-b70e-52bc61f5e9f0@molgen.mpg.de>
X-Mailman-Approved-At: Tue, 30 Jan 2024 19:08:12 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706633955;
 bh=Mj4Da6LVU0PiZoyN5sVh+aLJRNPeMl2eDUdxts+TfF4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qyYRTy97yA0ElaYGqojUuk3mlUDhWZhcIySYGJESaENSt4XOC8lnxh7Ui1fZMybEp
 XtCpZPmaB4Kd3CY556ia274mQysyFbea87plkvlHi5PEpX4n98p2S2zffgUTV4meaU
 Qqiwwj6eZC9M+UoVe+PeAHryhH4DHMIPF795QLRPyE9EPl+IsDNfmXtDz9oqBi8kRd
 +3fAQQ0Iy+W4oG+PJxBQm2te4uWW1mrd2A7vbVjy7qAPx2XeG4v46+IcUzou/4h3fe
 07+kGQ5jyoGR1rWzsfv2l/gxyL4/tPI7Vb11XJxmlD+Zj/3z4WmcuU9lLC++X/J//g
 xoEQuRTNWlwRw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=qyYRTy97
Subject: Re: [Intel-wired-lan] i40e XDP program stops transmitting after
 link down/up
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 30, 2024 at 05:14:23PM +0100, Paul Menzel wrote:
> Dear Seth,
> 
> 
> Thank you for bring this up.
> 
> Am 30.01.24 um 15:17 schrieb Seth Forshee:
> > I got a inquiry from a colleague about a behavior he's seeing with i40e
> > but not with other NICs. The interfaces are bonded with a XDP
> > load-balancer program attached to them. After 'ip link set ethX down; ip
> > link set ethX up' on one of the interfaces the XDP program on that
> > interface is no longer transmitting packets. He found that tx starts
> > again after running 'sudo ethtool -t ethX'.
> > 
> > There's a 'i40e 0000:d8:00.1: VSI seid 391 XDP Tx ring 0 disable
> > timeout' message in dmesg when disabling the interface. I've included
> > the relevant portions from dmesg below.
> > 
> > This was first observed with a 6.1 kernel, but we've confirmed that the
> > behavior is the same in 6.7. I realize the firmware is pretty old, so
> > far our attempts to update the NVM have failed.
> 
> Does that mean, the problem didn’t happen before Linux 6.1? If so, if you
> have the reproducer and the time, bisecting the issue is normally the
> fastest way to solve the issue.

No, sorry, I should have worded that better. I meant that they were
using 6.1 when they noticed the issue, not that kernels before 6.1 did
not have that issue. We've also tried a 5.15 kernel build now and still
see the issue there, we haven't tested anything older than that.

Thanks,
Seth
