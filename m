Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE9B8B45CB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Apr 2024 13:14:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7EE4415A8;
	Sat, 27 Apr 2024 11:14:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P97bLreKZir7; Sat, 27 Apr 2024 11:14:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D16A8415C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714216473;
	bh=4jHbxH+OEtC/g4tjReTeZmhGVpfAHX1LINuxtHSuHok=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E8ROJAEXVQlZa4JTbmvqeTa/aBNlAjLJ5kLbjJHnZSS76+nsmv8fZnCgTgNJtIzFn
	 DFYAYbaj+WnxZct8YlScL+fotU5MBkQVFKSUltRMAbWppTHXH4V4i5wNdAKSJhumcu
	 mOaJ0c1P+lMvkYcl/R3hzVQQ9u2N8JVHD4DYVevJwH9EL704iZrtTq1KKUUMMh2e36
	 09AfaKLavIw70KSWLhcc/VQZTP2zp88AGtTaYXfiB6mcrtIw/YT1x3GPcN9h73OUJY
	 wnq8y8IMXIr5hFpsJF9vigDoPjiw8KHXgCFFl79AwayPibFnbuQ4eOliC3hiqj6vK5
	 vI/7qGG3vfUdQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D16A8415C9;
	Sat, 27 Apr 2024 11:14:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3DDE11BF852
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 11:14:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 35936415A8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 11:14:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZYfA_MC3pEke for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Apr 2024 11:14:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=gregkh@linuxfoundation.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 30FBA4158F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30FBA4158F
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 30FBA4158F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Apr 2024 11:14:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id ECBEF60A0B;
 Sat, 27 Apr 2024 11:14:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B383C113CE;
 Sat, 27 Apr 2024 11:14:28 +0000 (UTC)
Date: Sat, 27 Apr 2024 13:14:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Artem S. Tashkinov" <aros@gmx.com>
Message-ID: <2024042756-lushness-cupped-f19b@gregkh>
References: <2024042328-footprint-enrage-2db3@gregkh>
 <2330c23c-e99b-454a-b195-32c5b4332071@gmx.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2330c23c-e99b-454a-b195-32c5b4332071@gmx.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1714216468;
 bh=xeinqVWxnJpqr39fv+hN4qsXVFFJei/zTwxenlJPoyU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kBUZgizrlegY/eGOA2Z+Kthv6Ru+FjKS53peUwzXhhZras1cRwHYxUt6gwl+Jb4FC
 2z2RoAOQnQ3ZmEbuljPmULKuQz2/LdA0ZOBmDQaUZMvJEoAL+TYZX1I7rgwUPlp7nM
 RF6ISo/d28NvZkeqbNwRRAdB0+4o3GuaoK5PXkFo=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=kBUZgizr
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Apr 27, 2024 at 10:54:23AM +0000, Artem S. Tashkinov wrote:
> Hello,
> 
> This fix is still not queued in 6.8 stable:

What fix?

> https://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git/tree/queue-6.8
> 
> Why?

What is the git id of the change in Linus's tree?

thanks,

greg k-h
