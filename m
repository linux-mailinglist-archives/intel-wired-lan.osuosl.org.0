Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DC08535EE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 17:25:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FE2360B8A;
	Tue, 13 Feb 2024 16:25:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fje9N5vjbhLj; Tue, 13 Feb 2024 16:25:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9709460BBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707841499;
	bh=v6NrxM1eJN7Z7yzkWSBTKUltm5dbJ2HTXi9hG2LMSTA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZndhrfW2y6mLsltvSoitAlFtf3WBolxAYMpiPl5z3mgldJIRwpJ9n6LeydWl14RyT
	 Oo3QswVi2FyGcLgBTK30zGg/GZdHO5612fq5wQ3N7Z+CIcFt0kr+0kTIrsoBNNHTlI
	 cAAOQ/kS4HM6Ae77S7xx8+v2xKGgQ6VFuFElrJbAGq6ao7WxJWeB5W6YnJmdxZrauz
	 dW2oulMccUYBGEiestxchoI1OzyqBN/GFj3E5gW8m0KfhALdWWsKs01JnBUt2KSr4Y
	 wnWBKt998v4Q6TTB6pu9tKt1JaDqEbhPKyjdkHtDPIwyCheAirwfIrvKFX7Pxro4rz
	 Ior7Ah/FhpScA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9709460BBC;
	Tue, 13 Feb 2024 16:24:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A2E2F1BF354
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 14:54:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9BAB0410C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 14:54:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NKm6xlAuHHey for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 14:54:08 +0000 (UTC)
X-Greylist: delayed 530 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 13 Feb 2024 14:54:06 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3AC73410BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3AC73410BC
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=94.231.106.210;
 helo=smtp-out3.simply.com; envelope-from=andreas@gaisler.com;
 receiver=<UNKNOWN> 
Received: from smtp-out3.simply.com (smtp-out3.simply.com [94.231.106.210])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3AC73410BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 14:54:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp.simply.com (Simply.com) with ESMTP id 4TZ3yd4Dj4z681k;
 Tue, 13 Feb 2024 15:45:13 +0100 (CET)
Received: from [192.168.0.25] (h-98-128-223-123.NA.cust.bahnhof.se
 [98.128.223.123])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 by smtp.simply.com (Simply.com) with ESMTPSA id 4TZ3yH6LD4z67wS;
 Tue, 13 Feb 2024 15:44:54 +0100 (CET)
Message-ID: <4582ff28-a443-4b0f-ba92-f48c414e2248@gaisler.com>
Date: Tue, 13 Feb 2024 15:44:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert@linux-m68k.org>, 
 linux-kernel@vger.kernel.org
References: <CAHk-=wiB4iHTtfZKiy5pC24uOjun4fbj4kSX0=ZnGsOXadMf6g@mail.gmail.com>
 <20240123111235.3097079-1-geert@linux-m68k.org>
 <d03e90ca-8485-4d1b-5ec1-c3398e0e8da@linux-m68k.org>
 <0229fa60-2d87-4b1c-b9f0-6f04c6e4dbdd@app.fastmail.com>
From: Andreas Larsson <andreas@gaisler.com>
In-Reply-To: <0229fa60-2d87-4b1c-b9f0-6f04c6e4dbdd@app.fastmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 13 Feb 2024 16:24:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gaisler.com; s=unoeuro; t=1707835513;
 bh=v6NrxM1eJN7Z7yzkWSBTKUltm5dbJ2HTXi9hG2LMSTA=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To;
 b=fxRUG6+yBSU+BFXn6+rebuuiiuqqWopqe29Vz2GaIf78w+V69ZIB+Af31iKeLr62p
 qpQdz7sWHzQ58CP3tqsZon5MfZ78+Sms5m4nebpjjUITGZQ1A2ZnKMsF4BxSh1OMBa
 S898RixpmWtD3+3XqXRY4JGgZ7I8bBk64Oy1wp1k=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=gaisler.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=gaisler.com header.i=@gaisler.com header.a=rsa-sha256
 header.s=unoeuro header.b=fxRUG6+y
Subject: Re: [Intel-wired-lan] Build regressions/improvements in v6.8-rc1
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
Cc: Chris Zankel <chris@zankel.net>, linux-scsi@vger.kernel.org,
 linux-sh@vger.kernel.org, Netdev <netdev@vger.kernel.org>,
 mpi3mr-linuxdrv.pdl@broadcom.com, qat-linux@intel.com,
 dri-devel@lists.freedesktop.org, Max Filippov <jcmvbkbc@gmail.com>,
 linux-mtd@lists.infradead.org, linux-hardening@vger.kernel.org,
 sparclinux@vger.kernel.org,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 linuxppc-dev@lists.ozlabs.org, intel-xe@lists.freedesktop.org,
 linux-crypto@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024-01-23 15:21, Arnd Bergmann wrote:
>>>  + /kisskb/src/arch/sparc/include/asm/floppy_64.h: error: no previous prototype for 'sparc_floppy_irq' [-Werror=missing-prototypes]:  => 200:13
>>>  + /kisskb/src/arch/sparc/include/asm/floppy_64.h: error: no previous prototype for 'sun_pci_fd_dma_callback' [-Werror=missing-prototypes]:  => 437:6
>>
>> sparc64-gcc{5,11,12,13}/sparc64-allmodconfig
> 
> Andrew Morton did a patch for the sparc warnings, and Andreas Larsson
> is joining as a maintainer, so hopefully he can pick that up soon.
Which patch do you refer to here? I can not seem to find a patch fixing
these ones in particular on lore.kernel.org.

Thanks,
Andreas

