Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6B18A024D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 23:42:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E098C605B5;
	Wed, 10 Apr 2024 21:42:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fJk92--ewOJ3; Wed, 10 Apr 2024 21:42:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAD2960EAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712785373;
	bh=rdQoqdQaX1sN8iPEH6WMX2czg/lasITlEbkoOin2hhU=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cB1gpuBljF0d97E2WP9vIFh3hg95p9ly015KCscyegLwbcDaoKjtabcdYGOfhCcKz
	 rZbiABOedyuy4ANAC6nx8NLJwe21FnmeE3A3V+X14jpWCesdum2Yqt7yvJaN1OKuBu
	 j8eHj2vzgxa5RqiqWpREFCRyc7vheHbxec3M7hethff1rGtR8diIq9/iyggLrfWtxS
	 Tsjr+WLddabnTVzUJpMgKiLNVRlQRWm5A0df586coowXJXiGkOXTYirWsQXsd8T0Fn
	 Ab6coAfEFLCzVAf84TFhyI5z7VBG8/FG2+HUagYXieL4TXYOqT3CAyEadwHIsB3JEb
	 lszzka1OGE+EA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAD2960EAA;
	Wed, 10 Apr 2024 21:42:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D22391BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 21:42:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BDA3D4036A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 21:42:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qFH2ZlzBjaFP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 21:42:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=tglx@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EC9B740359
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC9B740359
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EC9B740359
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 21:42:50 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
To: lakshmi.sowjanya.d@intel.com, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
In-Reply-To: <20240410114828.25581-3-lakshmi.sowjanya.d@intel.com>
References: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
 <20240410114828.25581-3-lakshmi.sowjanya.d@intel.com>
Date: Wed, 10 Apr 2024 23:42:47 +0200
Message-ID: <87a5m03ne0.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1712785368;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rdQoqdQaX1sN8iPEH6WMX2czg/lasITlEbkoOin2hhU=;
 b=M+Otz7iD2X7C7p2fY68ZTuik9R515LqrBKtqAZe6YCNUOZtN/nHgE7pYjhpf3qmDe6hDFw
 lbC792tw2Fw1wnHsCNbBwhqrTkIKTstTt0wZOWCZKueTtpaXQMPtHo3hzhpp9PdpK5/ShU
 37Wxw53BaVttssXwZ84yEo86NTI3R5FM+UytgoGXGfdGyPOBN3877MF0hzkFknridrK62J
 fEtKH1uG/GdsdioeORAfX3cAgfiXSGDRJzJYMiKFx5oKsZ++HiN5tUvooCVFF6cmkQazqT
 xPdcxkMqKv487i45rSFGLy8mF3bKj+iQcqLc8R66tyljSjI6byoJh07ylE1vHg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1712785368;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rdQoqdQaX1sN8iPEH6WMX2czg/lasITlEbkoOin2hhU=;
 b=BNRsZNUG+yDoiRPlzWN5GV3sdRog8UFLhJTyU3KDRjgQQqg0buZ1FDEKyc7FWZDvPBQdhi
 1ljTRyGix0KZ1vAw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=M+Otz7iD; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=BNRsZNUG
Subject: Re: [Intel-wired-lan] [PATCH v6 02/11] e1000e: remove
 convert_art_to_tsc()
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
Cc: christopher.s.hall@intel.com, subramanian.mohan@intel.com,
 lakshmi.sowjanya.d@intel.com, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org, pandith.n@intel.com, x86@kernel.org,
 eddie.dong@intel.com, linux-sound@vger.kernel.org,
 alexandre.torgue@foss.st.com, peter.hilber@opensynergy.com,
 joabreu@synopsys.com, intel-wired-lan@lists.osuosl.org,
 mcoquelin.stm32@gmail.com, thejesh.reddy.t.r@intel.com, perex@perex.cz,
 anthony.l.nguyen@intel.com, andriy.shevchenko@linux.intel.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 10 2024 at 17:18, lakshmi.sowjanya.d@intel.com wrote:
> From: Thomas Gleixner <tglx@linutronix.de>
>
> Remove convert_art_to_tsc() function call, Pass system clock cycles and
> clocksource ID as input to get_device_system_crosststamp().

This is wrong as this does not pass anything as input. The function is
called from get_device_system_crosststamp() and the data is passed back
via the system_counterval pointer. It also lacks context.

. Something like this:

   "The core code provides a mechanism to convert the ART base clock to
    the corresponding TSC value without requiring an architecture
    specific function.

    All what is required is to store the ART clocksoure ID and the
    cycles value in the provided system_counterval structure.

    Replace the direct conversion via convert_art_to_tsc() by filling in
    the required data.

    No functional change intended."

Hmm?

Thanks,

        tglx


 
