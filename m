Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 980B4855858
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Feb 2024 01:36:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCF5D60845;
	Thu, 15 Feb 2024 00:36:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GIDkGz1jHKcJ; Thu, 15 Feb 2024 00:36:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1185D60865
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707957385;
	bh=QLph1JoyWcnqY2DB8EDKjrG11uusoT3vmoG/hX/6chU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rsrdwszgmWULtDC1tElDkMosdXXrvjzUm+AMkoHNdT17WVZA5DypNkouuatlAiiZ/
	 SGqpb3UWqzZUNxCSUYgkk6gcmlPo435Rdv+rHhbuoiWl80hYxpXtNqPW/YD+LSc+vw
	 9yRc7gTFGR3iwt//63KofZBEwDZU2cph5MD5U5KZzLKh5bn8eQcIwN+psxP+1DhCXO
	 AUvypZ7nkRSeEOYDpacsJ9YaE4xp7HEKzfwT3q4xWPYeMlm4dBy6NV6WMPv0juoIML
	 GWedOSen0kEicyoyXknkBH6jRA++9qM6tF5SJ5xQNjH/pinis31C/xkfHraxAceufr
	 R6j+GlzFY/enA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1185D60865;
	Thu, 15 Feb 2024 00:36:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 13B161BF321
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 00:36:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2D1440131
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 00:36:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2QjENIxKTzEN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Feb 2024 00:36:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 05E5240017
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 05E5240017
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 05E5240017
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 00:36:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C32B861879;
 Thu, 15 Feb 2024 00:36:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BA12C433C7;
 Thu, 15 Feb 2024 00:36:20 +0000 (UTC)
Date: Wed, 14 Feb 2024 16:36:19 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240214163619.522486a5@kernel.org>
In-Reply-To: <2e3001f8-a079-4d44-863f-979baca3b38c@intel.com>
References: <20240208004243.1762223-1-alan.brady@intel.com>
 <2e3001f8-a079-4d44-863f-979baca3b38c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1707957380;
 bh=yZXNywq+jH/3EcQoyJzddecCsyCJjxBPogPn3wRz2uw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=i9vsonBpx2wAuAlmBY9H4eDBR5bGQS/s05Nh33yEbBBlNqzqlJ9jbcBe5rjGoSWdy
 YutQ1F7QF72ileYdBJ7xQRYdWbUq2pJY9WuY+VAg2luZR+uATMTRbJEWCapV7Mv7pB
 kuLss72PPFr5Iodj6uOJUPj6AHsVXYCESG/J3d17e9lTJRIaQ08sw4iGJbY8DnGiFi
 m2E8Pf40bPLfJT7vSlDNCQJec8pcHCaryZzxq4ogmaVJRJIzfksiNJf33MHKIY8dKq
 rY05d4dOQuQB2ibY3D/pZ4zQQdDpGItuLjVhkWR1d8kQshESxlerhxwsH3DZTN0Hwk
 yz2V3L4LcQ02Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=i9vsonBp
Subject: Re: [Intel-wired-lan] [PATCH 1/1 iwl-net] idpf: disable local BH
 when scheduling napi for marker packets
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
Cc: Emil Tantilov <emil.s.tantilov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Alan Brady <alan.brady@intel.com>,
 netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 13 Feb 2024 14:16:47 +0100 Alexander Lobakin wrote:
> > Fix softirq's not being handled during napi_schedule() call when
> > receiving marker packets for queue disable by disabling local bottom
> > half.  
> 
> BTW, how exactly does this help?
> 
> __napi_schedule() already disables interrupts (local_irq_save()).
> napi_schedule_prep() only has READ_ONCE() and other atomic read/write
> helpers.
> 
> It's always been safe to call napi_schedule() with enabled BH, so I
> don't really understand how this works.

Sorry for late reply. IIRC the problem isn't a race but the fact that
local_irq_restore() does not have a hook for BH. IOW we may just set 
the bit that the BH is pending but never call into softirq.c to run it.
