Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D892AE9116
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jun 2025 00:32:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DEB261694;
	Wed, 25 Jun 2025 22:32:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XQ3iwI40z4qN; Wed, 25 Jun 2025 22:32:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9691D6160A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750890746;
	bh=a00fYei713D5b5jdKK50z5vUTnTuV8nq9hV/nY+k+vg=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KVKlMj/++pRotjbeySDS8SPjTm7kI5UlLXSGKI9NrOBmwju5qswNOZ6CqzRVtdTmL
	 nJUgAT3C6oaSZqmML5nHPk1npqBMnZd4wZoRz7V8k6sMQnJ98TvA/KiIlRqtcnEocm
	 5arXflTRkoxXlsvzxJlI8TJXROcCgFeNFMXY8yovyMEuByHgMTFSLypFMcCQqJGtCF
	 3UC1VslHaY1iQq6iUAW8nVfMItxXRIapxI6f3joopvoXlJG5ex6M/LksTE5SB1opro
	 C0c1hZzxuKvLg5RMLtWdvi+UBZW4p84p+q6nydcpTMKd1V+ZXgma9i13+XudvEW8vl
	 2FztJV1yDOJUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9691D6160A;
	Wed, 25 Jun 2025 22:32:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 78D5DE27
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 22:32:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F5C984F89
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 22:32:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c1JAFjFbFb4c for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 22:32:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9A6F684F4E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A6F684F4E
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9A6F684F4E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 22:32:23 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af7c6.dynamic.kabel-deutschland.de
 [95.90.247.198])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 415A661E64844;
 Thu, 26 Jun 2025 00:32:07 +0200 (CEST)
Message-ID: <c4f80a35-c92b-4989-8c63-6289463a170c@molgen.mpg.de>
Date: Thu, 26 Jun 2025 00:32:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Joshua Hay <joshua.a.hay@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250625161156.338777-1-joshua.a.hay@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250625161156.338777-1-joshua.a.hay@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net 0/5] idpf: replace Tx flow
 scheduling buffer ring with buffer pool
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

Dear Joshua,


Thank you for these patches. One minor comment, should you resend.

Am 25.06.25 um 18:11 schrieb Joshua Hay:
> This series fixes a stability issue in the flow scheduling Tx send/clean
> path that results in a Tx timeout.
>                                                                           
> The existing guardrails in the Tx path were not sufficient to prevent
> the driver from reusing completion tags that were still in flight (held
> by the HW).  This collision would cause the driver to erroneously clean
> the wrong packet thus leaving the descriptor ring in a bad state.
> 
> The main point of this refactor is replace the flow scheduling buffer

… to replace …?

> ring with a large pool/array of buffers.  The completion tag then simply
> is the index into this array.  The driver tracks the free tags and pulls
> the next free one from a refillq.  The cleaning routines simply use the
> completion tag from the completion descriptor to index into the array to
> quickly find the buffers to clean.
> 
> All of the code to support the refactor is added first to ensure traffic
> still passes with each patch.  The final patch then removes all of the
> obsolete stashing code.

Do you have reproducers for the issue?

> Joshua Hay (5):
>    idpf: add support for Tx refillqs in flow scheduling mode
>    idpf: improve when to set RE bit logic
>    idpf: replace flow scheduling buffer ring with buffer pool
>    idpf: stop Tx if there are insufficient buffer resources
>    idpf: remove obsolete stashing code
> 
>   .../ethernet/intel/idpf/idpf_singleq_txrx.c   |   6 +-
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 626 ++++++------------
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  76 +--
>   3 files changed, 239 insertions(+), 469 deletions(-)


Kind regards,

Paul Menzel
