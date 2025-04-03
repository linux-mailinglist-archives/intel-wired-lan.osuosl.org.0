Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B380A7A91C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Apr 2025 20:16:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25C028356C;
	Thu,  3 Apr 2025 18:16:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IdD-VY3iUXwA; Thu,  3 Apr 2025 18:16:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A30E8470F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743704168;
	bh=FJlcXXP2FukqGEHv0z1cQI88EHr2Dv5R3LlDfDt2A4c=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TZuenGNO3xL/6stLbsns4hicBWBs6xKMO5qkydrHVx47BZOwGfoAyDy0DRL6J/faF
	 I9JMNWe4Z7SYGJubUpVSCrpn+JAr5CNkaZYjWcfrZmEMRMQEKz2+C1LcFCxBSsYB0Z
	 u+hOxdaH4rldZ2aBjavV74+0cyq9sN6dV5HQF3OKaIpVkbYv6sohUNaZXpIPQZfpPR
	 HV/ptTDXb9EwEi/u4FivWhajMaX0/3b6bo8d34zgvmbsN0h6tTsfMBadwJSIofR92q
	 Z90MirQc6iCJKRNJhUKK37MjwOj61/kV7RVfILrcGjtXGvhCGKFDlM2r8Rqc5sFmis
	 qSgfSsuJpf2XA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A30E8470F;
	Thu,  3 Apr 2025 18:16:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 24A24119
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 18:16:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 06431411B3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 18:16:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z-z8JSU6UGrj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Apr 2025 18:16:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::636; helo=mail-ej1-x636.google.com;
 envelope-from=torvalds@linuxfoundation.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1DE9E40592
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DE9E40592
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1DE9E40592
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Apr 2025 18:16:04 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-ac2c663a3daso226566366b.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Apr 2025 11:16:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743704163; x=1744308963;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FJlcXXP2FukqGEHv0z1cQI88EHr2Dv5R3LlDfDt2A4c=;
 b=nsCVBdR4mFUpi97Z6F6Q54UHhpZCge5uzLMjZjxsyklU8m/0I2LwKo98IzS0sxj41q
 QU3bWRSWdDHAFQOFpwdfMOdXt27tWRWV6JwdwVJh/q6Vz++4fA1u4+rKyFXMm4TSUEVe
 YOuPbEyTe6EAl3kUpE+nFZ/aKsLHmJOF0JOm9UmdwQpho3qftX/1dSQHu8W2ac5/wuFl
 f10E+I1lJbXviv29ssv15JfoIKasLOZFM4nBhi5sYdYizVdP98L0pWi7Pf8j59nFNy5H
 Jj7/SP8Fd3cAtIP8jTqvsEKo3IECYIzrJS6LwDuStnKMxLbEDgAItofvSX+8TNVjOzLY
 zoWA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW5jfPDcs0m4lvn7bKmd+mqGR2/T2MJCGzQJCFuJ6WTAqmWWmXCQLCFgD4SyUxQGrTrygKqk+RvZRzj7l9hnL4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwCYcmTt/PU3SWwvwe2vn494mSRlH3PUt76S6WAHM03HGy6elQ/
 tf6fMYe8Gl8JV/pBXfe1tz5z7oOMTFsuuFRwVcq3y8/KUsWQS7ocSDarBFK69AkLUqW/+wlVegg
 dTSU=
X-Gm-Gg: ASbGncvxY682QraeVcaTPXJXcWHDnDhAZPYdUZf7YrpPlvQ2TUNAofptM9fpAItI68p
 wTbbSY8NspoZHY5ckLXv2M3+pPijdRS16+AXY+AggVNT5v4bz7g31FZFrCAeDbLLgJ0KnUTFlnL
 3hwEOvQ4e60BovKN+/BCzvF09bqZZcyo96K4nXqULKz5fL9v29ASpFreQtW2E5WcfHjoMuhTirE
 CRMOFCIizF/c2xP4QGIeCQYF15AfDo/sQgeaY8La1cH4v6z7/Ei6gOPqWP/Q2hBK377FI5SWYta
 iTqv+SyxpivdyXYXKvVtDqyns6LxX2O6gGYpWtxD69OtQNuICkRSa+zoX7SsBjZj2PuWDl2t4tw
 QSN33aQb8CioSJhd+/W8=
X-Google-Smtp-Source: AGHT+IEfAXO24Q9RnuRExL1MrU+0Mn5craghi3V3toQ5rF1YL7PCTLWSHdrgA2YlLd1fbhrROz7Crg==
X-Received: by 2002:a17:907:7211:b0:ac7:b621:762e with SMTP id
 a640c23a62f3a-ac7d1854af2mr60659466b.4.1743704162667; 
 Thu, 03 Apr 2025 11:16:02 -0700 (PDT)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com.
 [209.85.218.46]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ac7c018b26asm130891366b.146.2025.04.03.11.16.01
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Apr 2025 11:16:01 -0700 (PDT)
Received: by mail-ej1-f46.google.com with SMTP id
 a640c23a62f3a-ac339f53df9so211924166b.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Apr 2025 11:16:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCXsEy/oQ90DGk7911YHt8Gds25UAMrbbWu7eoJSbICYo6/72c6xr+GJNI0rGBcUZqXfEcMlNyhatjlgrTG1Byk=@lists.osuosl.org
X-Received: by 2002:a17:907:9728:b0:ac7:41c:748d with SMTP id
 a640c23a62f3a-ac7d1b27f38mr53718566b.38.1743704161358; Thu, 03 Apr 2025
 11:16:01 -0700 (PDT)
MIME-Version: 1.0
References: <20250401134408.37312-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250401134408.37312-1-przemyslaw.kitszel@intel.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 3 Apr 2025 11:15:44 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjvh_LUpa=864joG2JJXs3+viO-kLzLidR2JLyMr4MNwA@mail.gmail.com>
X-Gm-Features: AQ5f1Jqqq_S2O0OJpyEjcg88KSOkVuR9PdTbHkE7So44nAp-S1DtNbZhUbWjRJI
Message-ID: <CAHk-=wjvh_LUpa=864joG2JJXs3+viO-kLzLidR2JLyMr4MNwA@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: linux-kernel@vger.kernel.org, linux-mm@kvack.org, vbabka@suse.cz, 
 peterz@infradead.org, andriy.shevchenko@linux.intel.com, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1743704163; x=1744308963;
 darn=lists.osuosl.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=FJlcXXP2FukqGEHv0z1cQI88EHr2Dv5R3LlDfDt2A4c=;
 b=RuloVwWA4dbKuFi6PrhjB4VnA4uZqE6vOi7RMKlNIfgaJtcAQtAv6sZ1qHwGYTzYSI
 I/RhxMFctIKhThadzItx3by3IGs4I3gnJit1qzpqzTJ/rsTdEYQRn374PYl/SUSUTQ96
 hDPxOfkyO50Kwjuocm6sEjcfcaUCMn/1L4xIk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux-foundation.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org
 header.a=rsa-sha256 header.s=google header.b=RuloVwWA
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

On Tue, 1 Apr 2025 at 06:50, Przemek Kitszel
<przemyslaw.kitszel@intel.com> wrote:
>
> With new auto_kfree, we simply will start with
>         struct my_dev_foo *foo auto_kfree;
> and be safe against future extensions.

Honestly, I'd much rather just see any auto-freeing *always* assigning
the value.

We used to have a rule that declarations had to be at the top of a
block, which made that not an option, but that rule went out the
window exactly because you can't do that with the cleanup macros.

So just make the rule be that __free() without an assignment is simply a bug.

               Linus
