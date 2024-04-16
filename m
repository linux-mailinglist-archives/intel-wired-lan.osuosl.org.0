Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C836F8A6F8B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 17:18:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F38D04034D;
	Tue, 16 Apr 2024 15:18:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id df-AdCGUZyYq; Tue, 16 Apr 2024 15:18:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2345E4019F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713280733;
	bh=yk/TJspO/P7VAVdOE3KdKe9ikU8GCQN8hXuVOsa9c0M=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ulmECBF1h4lpEfnK3oUUzvYyznzKcbuapidwOkQ6/MFffQYajDoACfWhBUPCGMBYJ
	 Vk63Dx4L9/k82XgwrPpqSL/Fj4QooTIbIVHQrY2Fr951yKtH2R/3GUROUtxpg6DBpa
	 aqPmu0j7XTNhPELtxZclHMjUnoKpV7W49ICs9zn2jWywGs7T/QHhHPq4964E4CkRtZ
	 e1HlQX8SZRsLzUYY3UteWVVeXT+uSFP3e63KozTNs4ooOKX2l/5rkSd4BKi5wblTj5
	 hkJjKy2gdVUnZiBsHFygkLUys9Kc5Lwth5pFcuEkdEvc425nVeELtzU5sTSbaeIE02
	 7AQveQhZjhtzg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2345E4019F;
	Tue, 16 Apr 2024 15:18:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 94FAD1BF377
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 15:18:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7F16080DC4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 15:18:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0yJxuKCCW5Aq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 15:18:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AFFFE80D4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFFFE80D4B
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AFFFE80D4B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 15:18:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 560D4CE1098;
 Tue, 16 Apr 2024 15:18:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11CD5C113CE;
 Tue, 16 Apr 2024 15:18:43 +0000 (UTC)
Date: Tue, 16 Apr 2024 08:18:42 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <20240416081842.35995b10@kernel.org>
In-Reply-To: <f4bd1573-400b-4b45-940a-e1dc5e19df45@intel.com>
References: <20240413092743.1548310-1-hui.wang@canonical.com>
 <f4bd1573-400b-4b45-940a-e1dc5e19df45@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1713280723;
 bh=OsA1Hb/7K7k+WfIl3baRz1mBWdPPkAUxFw6x9VhAQBw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jWHE2LeK6aaZlop2BB7LTRYtfpDOWAfkDkU0zBFYE+045BdnWaOCEa9J89t1beWv4
 iOO2LLxYkSKFC5TR4wo/TepDtvTksuyqwxDMLQQP+a/UYZ06FrXip2WvAbi9KWjpbx
 NBqHdFRsEgN+kx5GR6F/ysUyhmW3Y3263e+v9gNp2CBjFXe+jqu6mplp/2C9/NNe7F
 T/P45AF7Zgd+cOjm+Gl83pGLVLwADuJWWUYTHOi3id84aD6DUJBAm7e3RAHT5wkGvF
 FQfs95v6SB6TZJGPkhgKHkT+/84rrEGBdjd6MmywkW/AK5lCtTGTxn++ZOuNtJUj7Y
 MZ7KaNZrBe6RA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=jWHE2LeK
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: move force SMBUS near the end
 of enable_ulp function
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
Cc: netdev@vger.kernel.org, Hui Wang <hui.wang@canonical.com>,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 dima.ruinskiy@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 15 Apr 2024 13:15:41 +0300 Lifshits, Vitaly wrote:
> Thank you for this patch and this observation.
> I think that you found a real misbehaviour in the original patch.
> However, I still think that forcing SMBUS functionality shouldn't be 
> part of the ULP enabling flow, since they are two independent 
> configurations.
> 
> I will soon submit a patch where I wrap forcing SMBUS in e1000_shutdown 
> with an if that checks if the FWSM_FW_VALID bit it set.

Why are you submitting a patch instead of asking the author to change
theirs? This is not how code reviews work.
