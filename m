Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6CBB38579
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 16:52:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D79040923;
	Wed, 27 Aug 2025 14:52:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id th588XoBMbOg; Wed, 27 Aug 2025 14:52:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE939407E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756306360;
	bh=MxRCCkSRqJcngS/slXYCxgTJdRxKJD1cF5L2xZWjfZ4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pAjt79HILEPVinSfUoUR+bxjtupCEumJxSQfnnEeQjb0qAIHj3MCgE05PggRsmboL
	 zmDLEXda2r2pWAQpJ1RmRSNPvnAq6QCveF9Y8Af0fh7bihpO2i+Q5/loV/E5hxnIMw
	 5i4ISJsrWo+bPQJ1RsU8GZTj1B10/DOATP4Ruy9kB4oRIXINsf3fVHsltLHQpXDzkO
	 0pv3z7KhGKH+hSaAZnhXn14HxYT3HqIbDp1h7MTitFFb1eUD2WXxiQYwmvG/7+dwhx
	 mi7ihBpzvuQt5fR7IMuVcYyCcuu+AgByJEiXBAxHAmBFEZBW9rWSTZefYDVF6XWyBu
	 3/Q6mNkhp37KA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE939407E5;
	Wed, 27 Aug 2025 14:52:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 51AC1B8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:52:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 30C6960E37
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:52:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sTwJeywo5LpW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 14:52:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=bigeasy@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9471060BED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9471060BED
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9471060BED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:52:38 +0000 (UTC)
Date: Wed, 27 Aug 2025 16:52:35 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Miroslav Lichvar <mlichvar@redhat.com>
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250827145235.6ph_Wzn8@linutronix.de>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de>
 <87ldna7axr.fsf@jax.kurt.home>
 <02d40de4-5447-45bf-b839-f22a8f062388@intel.com>
 <20250826125912.q0OhVCZJ@linutronix.de>
 <aK8OrXDsZclpSQzF@localhost>
 <20250827141047.H_n5FMzY@linutronix.de>
 <aK8ZBWokfWSNBW70@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aK8ZBWokfWSNBW70@localhost>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1756306356;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=MxRCCkSRqJcngS/slXYCxgTJdRxKJD1cF5L2xZWjfZ4=;
 b=saZsgGmD9mDwgub5tAXABac82czs1gY48hcYT0+m0FTGgLmwtj/T6dQ2XwT7sLXJDTS0U8
 ZgYMWlHCoTHOmMqGcwlLgTirYou++kyohmhXCaEqZj/cIm+5mDCUZwL2guoU8zoqfVcFs5
 2CvEf4IG5zJXhYtr1MpAqza06jjc9370YuXWLvensjcXMhGpTLA9FXKHHtqVnSbu/gttpx
 072VzDY3YS+V8gV1iV+ulzDLrdRH+8JDYWHuW7Hnoi/QyzPugrE3kDn5naOp+U2M0NesNe
 ZEkw1m6DIqRwX125f53h2qbtEtWoAn4lIar3zXfQ2eedqX26hOETIp6ah7xIdw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1756306356;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=MxRCCkSRqJcngS/slXYCxgTJdRxKJD1cF5L2xZWjfZ4=;
 b=miQ70fycbgi+MmREHUINC3TBuRSbJ/r5WImarMVu/vuQaowb0u3ACOKJwZUiujxCC3vvo2
 SCgF/xDg7zPoWKDQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=saZsgGmD; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=miQ70fyc
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
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

On 2025-08-27 16:41:09 [+0200], Miroslav Lichvar wrote:
> From the results I posted before, the machine (CPU Intel E3-1220) with
> the I350 NIC can provide about 59k HW TX timestamps per second without
> any of the patches, about 41k with the original patch, and about 52k
> with this patch and pinned aux worker.

I might have similar hardware with a i350 to give it a try.
The old worker approach and the pinned AUX worker are identical from
software design (or: I am not aware of any significant differences worth
to mention here). Therefore I don't understand why the one had 59k and
the other 52k.

Sebastian
