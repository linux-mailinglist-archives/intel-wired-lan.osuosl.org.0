Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB9CA91006
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Apr 2025 02:13:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41BE242458;
	Thu, 17 Apr 2025 00:13:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NkvAWGo4RVBK; Thu, 17 Apr 2025 00:13:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8BBE417E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744848796;
	bh=H3O1/6RUG3DuP7F3e/a1vYh4XqtWkoDastPHR9QLzoc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IEr2wkgPYKYnySjh4t0O1GC5YLodFI3WvdRZK+zbJewrNoZZOUp5zsiPJ0fzo/mH9
	 3fCx2U43vPEYke5mMN885v418A8uvT41+tZSavXTbyXEPi8xZEM5lx6S2mm3voK4ay
	 bgzPDEIO12CEkp4Sb0cTsiLcCypbGVHxUzG7bMXfAMMaWF/quh+QilbfBHKLqAabld
	 ytKcDQTDIZEzYQugQHFPOgWe/2jOi8X+H8fexvUosPxkpHvbIN6UiC5W4Ko6tOssqW
	 eZhiVk0FDifkZ5h/V0MloLA7m9jpNEi9uXuJeB0GE0HW6Hy6FHAXA6vrrTSOKsW3ka
	 3wXgXVofle3cw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8BBE417E0;
	Thu, 17 Apr 2025 00:13:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A976711B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 00:13:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8FCD840BE1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 00:13:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jhzyxJbbCr9h for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Apr 2025 00:13:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EFCE5409F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFCE5409F2
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EFCE5409F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 00:13:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id E39FC68429;
 Thu, 17 Apr 2025 00:12:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DD50C4CEE2;
 Thu, 17 Apr 2025 00:13:12 +0000 (UTC)
Date: Wed, 16 Apr 2025 17:13:11 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Damato, Joe"
 <jdamato@fastly.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Igor Raits <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>, "Dumazet, Eric"
 <edumazet@google.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Michal Swiatkowski"
 <michal.swiatkowski@linux.intel.com>
Message-ID: <20250416171311.30b76ec1@kernel.org>
In-Reply-To: <CO1PR11MB5089365F31BCD97E59CCFA83D6BD2@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <4a061a51-8a6c-42b8-9957-66073b4bc65f@intel.com>
 <20250415175359.3c6117c9@kernel.org>
 <CAK8fFZ6ML1v8VCjN3F-r+SFT8oF0xNpi3hjA77aRNwr=HcWqNA@mail.gmail.com>
 <20250416064852.39fd4b8f@kernel.org>
 <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
 <CO1PR11MB5089365F31BCD97E59CCFA83D6BD2@CO1PR11MB5089.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744848792;
 bh=6SjWXyZeZ7k56pWGMKnGwNYjc5GwbN6XrG18Hplr6Bs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QXEavcoDyiRCE8Oe3BYIEQEl1xn2S9aSNUoBbbG8U05ZfAClSvQL6VG4onUpafULf
 haqlEocegnyxKjIBG8UPoeoj5uA7sh0zC59OVou3dtKInnna1YIElRgANpJkhGoG3k
 1aTG6v5lCaRRb8uQHppNys0+/NE7YTfUckmOJe3+Y8LQgiZIYEcan1W0od3/3xJQrB
 3k6NAEQE1HhWhh00zFU+5DKAp/tUWf722blWRQVamKooWOgXpRyWf/TNQ3rqTNvl1d
 sqTZNdN0E4gA2Yu/yyhFUBA02zunWTlr7RTP2bSdARNaEzjN9q2BpGpYR+1qwunn63
 sPm2FM38NMN1A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=QXEavcoD
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

On Wed, 16 Apr 2025 22:57:10 +0000 Keller, Jacob E wrote:
> > > And you're reverting just and exactly 492a044508ad13 ?
> > > The memory for persistent config is allocated in alloc_netdev_mqs()
> > > unconditionally. I'm lost as to how this commit could make any
> > > difference :(  
> > 
> > Yes, reverted the 492a044508ad13.  
> 
> Struct napi_config *is* 1056 bytes

You're probably looking at 6.15-rcX kernels. Yes, the affinity mask
can be large depending on the kernel config. But report is for 6.13,
AFAIU. In 6.13 and 6.14 napi_config was tiny.
