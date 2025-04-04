Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF22A7C068
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Apr 2025 17:17:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B8E740DA8;
	Fri,  4 Apr 2025 15:17:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iVMb5uaEGZlD; Fri,  4 Apr 2025 15:17:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72B14411C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743779829;
	bh=EULONde+eAu9B+Vu7ZbRkaj2yQsdB6BaOde6KnVIdgw=;
	h=Date:From:To:Cc:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From;
	b=9GYiMgYYrWrP31SrwMjRtT80Uv9Ms8c36YCoo8vPoU8MX/B23gP0poA6vwN1zLZK6
	 9EPJTKOz6an0kThx+UbRG+Y6YmEPlXDpHqBuc43PZkTJ2Pg7+7CPtzPigVRBUGkMXD
	 4R+Fz9WNWfNt2ASOwyUSJvs0AYAMC/xzb017FoKCanTDFcMMGVq/eLPluY64hWxrEq
	 euMun4nOiDtwJiLnhIDhZIyi0G466+MtpOG2+S6kfqiUHUlL1Isg5MxUMQLmg7/cqV
	 Y+6luw7r3FEiecSbcdF1USiUaq68SrefE13GXmF8njT2QU+JZxwFpCa/dNuFM9gOWo
	 fNc5a2HhPw4OA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72B14411C6;
	Fri,  4 Apr 2025 15:17:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 30631117
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 03:40:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1649D60B12
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 03:40:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mCR9UHSV_QSi for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Apr 2025 03:40:49 +0000 (UTC)
X-Greylist: delayed 2080 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 04 Apr 2025 03:40:48 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4AD0D60881
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AD0D60881
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=144.6.53.87;
 helo=abb.hmeau.com; envelope-from=herbert@gondor.apana.org.au;
 receiver=<UNKNOWN> 
Received: from abb.hmeau.com (abb.hmeau.com [144.6.53.87])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4AD0D60881
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 03:40:48 +0000 (UTC)
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
 by formenos.hmeau.com with smtp (Exim 4.96 #2 (Debian))
 id 1u0XNI-00Ci7R-1K; Fri, 04 Apr 2025 11:05:45 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation);
 Fri, 04 Apr 2025 11:05:44 +0800
Date: Fri, 4 Apr 2025 11:05:44 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Peter Zijlstra <peterz@infradead.org>
Cc: andriy.shevchenko@linux.intel.com, przemyslaw.kitszel@intel.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, vbabka@suse.cz,
 torvalds@linux-foundation.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-toolchains@vger.kernel.org
Message-ID: <Z-9MiJ0nuBxYCaV2@gondor.apana.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250402121935.GJ25239@noisy.programming.kicks-ass.net>
X-Newsgroups: apana.lists.os.linux.kernel,apana.lists.os.linux.netdev
X-Mailman-Approved-At: Fri, 04 Apr 2025 15:17:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=hmeau.com; 
 s=formenos; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EULONde+eAu9B+Vu7ZbRkaj2yQsdB6BaOde6KnVIdgw=; b=PLLOeVPCiEoRmTAy3V+XWdfKbz
 MtLQ4ECjLWfSgKRowAkLnJJ+mUeei24k7Xe8qgAwyXziEOu0KHy8QpiPte+WLsYgdUb42vr3q0B8C
 jovztRg5dbvuyLeRg8ykOyzg3Q1k8aapoh2hQke1irk4/z4a9oVDrPG5HakgJQgjW8KIe0a7k6Vca
 tAZrZASU+q4V2rONS+17ksOLelT1FjV/eCKCB0XtUSJAV8WmzcCURGzFiUfSYg4Ztu0bhW5xWIsBY
 +iUte5VlcfyFvCxWkUdGyiJI0PE4tkbRqiXf34bXa6YK8+wyOJgD6JE15VGkYAmLsZwwOSh9uNE1X
 715mazCQ==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=gondor.apana.org.au
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=hmeau.com header.i=@hmeau.com header.a=rsa-sha256
 header.s=formenos header.b=PLLOeVPC
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

Peter Zijlstra <peterz@infradead.org> wrote:
>
> The compiler *should* complain. But neither GCC nor clang actually
> appear to warn in this case.

Linus turned that warning off in 2020:

commit 78a5255ffb6a1af189a83e493d916ba1c54d8c75
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Sat May 9 13:57:10 2020 -0700

    Stop the ad-hoc games with -Wno-maybe-initialized

You need to enable it by hand to see the warning:

make KBUILD_CFLAGS_KERNEL=-Wmaybe-uninitialized CFLAGS_MODULE=-Wmaybe-uninitialized

W=2 enables it too but it also enables lots of other crap so it's
useless.

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt
