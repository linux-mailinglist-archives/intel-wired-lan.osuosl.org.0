Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CD6A78E1E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Apr 2025 14:21:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A6C383AE2;
	Wed,  2 Apr 2025 12:21:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CQhtNWJ-UMwo; Wed,  2 Apr 2025 12:21:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFD4081CDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743596469;
	bh=g6S1SZ66evHddI0d0mVypp923OoaFor/bIVE2U1Pgsc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZHPKynBr30KdCpBRE6na2VLmM4fQqw1/OQBWlM3VFu09vL0AxYwNO7hQSf/Yk4pOO
	 0LOXZx1daEgrizF/SVhbIpqnIyspg9URzC3RBVfEebR/rl5b7h8FDXxuNdFKaupGav
	 084TtHfudv/QhT7tt/shSl8xJb5FOkNwb0rju/6MKW16U6XGtSpzwvThZnfnBPrQi5
	 N3rKzVNjQgWPUKlS4GhCiMxTs4Y154mooH5Y/4vCPn5jrTjFYJWc3gatnaTlFTAswZ
	 ZpwpRDl90phtJtVk8hgCNKFuBrpy1WvCqBIl/ohZwGaVYXyDvp6KYylBM6V2QJMajD
	 Cp0WEeQjCop2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CFD4081CDC;
	Wed,  2 Apr 2025 12:21:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BAE3611F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 12:21:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A13DF41E78
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 12:21:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MFP6Qn6lHG2a for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Apr 2025 12:21:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=2001:8b0:10b:1236::1;
 helo=casper.infradead.org; envelope-from=peterz@infradead.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 06777400DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06777400DD
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 06777400DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 12:21:07 +0000 (UTC)
Received: from 77-249-17-252.cable.dynamic.v4.ziggo.nl ([77.249.17.252]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.98.1 #2 (Red Hat Linux))
 id 1tzx5c-00000009RmX-34Nr; Wed, 02 Apr 2025 12:21:04 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
 id 5614130049D; Wed,  2 Apr 2025 14:21:04 +0200 (CEST)
Date: Wed, 2 Apr 2025 14:21:04 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, vbabka@suse.cz,
 torvalds@linux-foundation.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Message-ID: <20250402122104.GK25239@noisy.programming.kicks-ass.net>
References: <20250401134408.37312-1-przemyslaw.kitszel@intel.com>
 <Z-0SU8cYkTTbprSh@smile.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z-0SU8cYkTTbprSh@smile.fi.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=g6S1SZ66evHddI0d0mVypp923OoaFor/bIVE2U1Pgsc=; b=ubXR4d7kUAA/nRulsdV6sYIsTB
 +PDpjYSpFirN3jL4jd9bRMNf0XfhGpR48ZyEjANimmVSMWEEKF7JDwybsWeISvFuyotquqibaFWoB
 jbGxsmk0VB3P3u2FcbGBpf9OpnFFFPINRHQcS/rR+Fj4a1KYNQWD3WWoVpXuQNyI+yj53O0Q3ete9
 xUwdzFsxTtV3DBENz3QyglkvwnEGH09ROHpUe8HFAIyNr+N1pCXa4mzhCQFkhClpJyB3OFsPDUIso
 PdqbLUIi1wz/xgrTZ968kjFaLEIBCk/d0FwYhkmGnOl2LrhsEne559XltLAvddTri0mdyOyJzvpjh
 YTDpBuXA==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=infradead.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org
 header.a=rsa-sha256 header.s=casper.20170209 header.b=ubXR4d7k
Subject: Re: [Intel-wired-lan] [RFC] slab: introduce auto_kfree macro
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

On Wed, Apr 02, 2025 at 01:32:51PM +0300, Andy Shevchenko wrote:
> What would be better in my opinion is to have it something like DEFINE_*()
> type, which will look more naturally in the current kernel codebase
> (as we have tons of DEFINE_FOO().
> 
> 	DEFINE_AUTO_KFREE_VAR(name, struct foo);

Still weird. Much better to have the compiler complain about the
obvious use of uninitialized.
