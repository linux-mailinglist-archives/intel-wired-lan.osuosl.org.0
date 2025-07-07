Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA55AFB64E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Jul 2025 16:44:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0690F61448;
	Mon,  7 Jul 2025 14:44:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l6DKY4cCP00A; Mon,  7 Jul 2025 14:44:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5718561450
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751899441;
	bh=+pTtsBnfUPWKdwsnA4BbdtfvUaJxWCar1qlbSLwHves=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xHgyov1uwtlT9AhueqvXm3w7NfU3kBT5CuIXwq7g/bGnNF6pprsj5qS1T5/ipmOXW
	 r47dZvoUVFLk379VS0NSYfDZn2JeGVjLVRojbBJc2hQZghbaQh8ktcjHYxcuJZY1tL
	 E0vNH2Ufg6tH8mReaCUYqGqxtzeJ3n4eM5DsyEoH6+oQYRYXk6a4t+lpgTQJoMRgxp
	 hhJ8Ub3rJ7KfUO5JGitPTaP2CltxhSSrjBY6oEMVQquyS2u0YEVjlslUWisLhZH77Q
	 lOx+JvzH3pfLU5HyHre79oa7vxduRHEEq1g6P47n45ZGfUidoo/e8zuoMrS6vPblKV
	 xV2nYD4Aiq0Cg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5718561450;
	Mon,  7 Jul 2025 14:44:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E696812E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 14:43:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D8633810B5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 14:43:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VwdJAiBLPhp0 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 14:43:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::434; helo=mail-pf1-x434.google.com;
 envelope-from=brianvv@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 45C2980F47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45C2980F47
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 45C2980F47
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 14:43:57 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id
 d2e1a72fcca58-7399a2dc13fso3873544b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Jul 2025 07:43:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751899437; x=1752504237;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+pTtsBnfUPWKdwsnA4BbdtfvUaJxWCar1qlbSLwHves=;
 b=cv1PUyN5hPit4SLQh9+tdMmtMQi2QrMh+KpWpARWjQncz8dlQ4KcMnrqAr9eaouTeY
 MbxEaBBHuUopAO3h8KGcfGyJY4sij8IwI/es3L1dQaleKrRnkN+6IT4kwa8N+NSnJWIy
 /q9Gb7ROQMHWmyakKPRYxylYDiisF6AfuDLDnnXu2gc+NV545hMFwMNRPfCy383ScmvO
 IFGrjK6ntJ1cz4ZHE4iyeHzfqMPVYir6B6toG3sgnIoIT4AEwVkNUmgo5Ah9TeKL04za
 2EE3I++6NVzUqLI689rRQMuP13jSi6E7FfM45iXKs2cAiiwcfW7CEy2/lf7jiD73h3Aw
 XeJw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX+WHN4NRBWS6j/GmpVQqJa7NEvNW9S4Q/zn2okJrp1jk3k2KLB/YV7eWjiwNp9lLbSXXNnh2rCfphSo7KchZM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx/1GSSA7YNKf7h0IAx3FpklYJJtXHV74fTfb7ux23Fyd5jfYkr
 /9FtX9j9jqlJ+0D3CVoJQ7pfp4cVXGhmYDuEtd1x86FSmLqgbNoLXv3uBan+yzarDw==
X-Gm-Gg: ASbGncsQbtJA3Kbglrt3X0Uo5ZmqtoVXfWuqyrynF4JLLw1mtN+kIfHAcS6JXohMvul
 CoSR0NyY0n9v8vhaKC3Ba7AakTOigUw+jofEQVcuyPnaOE63JBHFvmgX2sikzB4afzgJ5Pt5E5G
 X2grqkKBQgp0AMjPmRZmx/i7cAUzqH2MFyRv9Z3Oeb28pXIHrqXSjfqqlOCiDjXO8MdS1KTzpXy
 z3FkCPtWo4U0Q+2RKtVa3TvV+20ufeQXwCBS6xfcto8SE4lTn7zJ4TKTNWd0h4I6cnF01S6yk1a
 mLgl9KYaRp/HyNDpP/lbzQ4p8y24WmoE/GipSOYFyNKqWrFFovKsZQag3affmL4O0QpKalcdG2G
 TsTeYMwyda3vm6NDhQPuh
X-Google-Smtp-Source: AGHT+IENvRRf5tUPo69YOT6uAn+DdF7ZOsJOzzGu9fBHcNFbHwWb7BTYa3THLSTaN4s2a43/eCH6ew==
X-Received: by 2002:a05:6a00:14c9:b0:748:eb38:8830 with SMTP id
 d2e1a72fcca58-74ce6669b0emr15965469b3a.13.1751899437039; 
 Mon, 07 Jul 2025 07:43:57 -0700 (PDT)
Received: from google.com (20.25.197.35.bc.googleusercontent.com.
 [35.197.25.20]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-74ce417ddc9sm9936838b3a.105.2025.07.07.07.43.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Jul 2025 07:43:56 -0700 (PDT)
Date: Mon, 7 Jul 2025 14:43:48 +0000
From: Brian Vazquez <brianvv@google.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Joshua A Hay <joshua.a.hay@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Brian Vazquez <brianvv@google.com>
Message-ID: <yhluj2ljtv4qoq65zfqoagwdwshokfmzylf52numl26skxqfp4@k3dm7jrimuis>
References: <20250625161156.338777-1-joshua.a.hay@intel.com>
 <c4f80a35-c92b-4989-8c63-6289463a170c@molgen.mpg.de>
 <DM4PR11MB65024CB6CF4ED7302FDB9D58D446A@DM4PR11MB6502.namprd11.prod.outlook.com>
 <c6444d15-bc20-41a8-9230-9bb266cb2ac6@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c6444d15-bc20-41a8-9230-9bb266cb2ac6@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1751899437; x=1752504237; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=+pTtsBnfUPWKdwsnA4BbdtfvUaJxWCar1qlbSLwHves=;
 b=MO38IN6nyd+itHm8CdY8SabqVW64FvxryZrrBA52Bl0bleLx14ZNdKH4wYVvouA97S
 KArNm6yWlH/4md8+7mn+SSZwnz+XY7g+JJHmwiY5L0N2jkrhHcyBufxYo8X5cSkwTD0g
 mJVk1QDZ2BOU8x2l/o/9n0ywnLUFs5PIZQ7qbQbVvAQXpxJT0STFGbQAok+52cMb3KS4
 LEooVK9ytc2CnOk74mKEgsXOfekaXgm8UBnCYpgogmbJgicJ0GzYvwMFt1wd9RnpPx49
 A/xHXXgfmSVmLakh0sNkDanfQvDD8ZCwK9rJOW4Dj+fVkULvJIJsycyLkiWJNdFSggLK
 kKnQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=MO38IN6n
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

O Mon, Jun 30, 2025 at 06:22:11PM +0200, Paul Menzel wrote:
> Dear Josh,
> 
> 
> Am 30.06.25 um 18:08 schrieb Hay, Joshua A:
> 
> > > Am 25.06.25 um 18:11 schrieb Joshua Hay:
> > > > This series fixes a stability issue in the flow scheduling Tx send/clean
> > > > path that results in a Tx timeout.
> > > > 
> > > > The existing guardrails in the Tx path were not sufficient to prevent
> > > > the driver from reusing completion tags that were still in flight (held
> > > > by the HW).  This collision would cause the driver to erroneously clean
> > > > the wrong packet thus leaving the descriptor ring in a bad state.
> > > > 
> > > > The main point of this refactor is replace the flow scheduling buffer
> > > 
> > > … to replace …?
> > 
> > Thanks, will fix in v2
> > 
> > > > ring with a large pool/array of buffers.  The completion tag then simply
> > > > is the index into this array.  The driver tracks the free tags and pulls
> > > > the next free one from a refillq.  The cleaning routines simply use the
> > > > completion tag from the completion descriptor to index into the array to
> > > > quickly find the buffers to clean.
> > > > 
> > > > All of the code to support the refactor is added first to ensure traffic
> > > > still passes with each patch.  The final patch then removes all of the
> > > > obsolete stashing code.
> > > 
> > > Do you have reproducers for the issue?
> > 
> > This issue cannot be reproduced without the customer specific device
> > configuration, but it can impact any traffic once in place.
> 
> Interesting. Then it’d be great if you could describe that setup in more
> detail.
> 

Hey Paul,

The hardware can process packets and return completions out of order;
this depends on HW configuration that is difficult to replicate.

To match completions with packets, each packet with pending completions
must be associated to a unique ID.  The previous code would occasionally
reassigned the same ID to multiple pending packets, resulting in
resource leaks and eventually panics.

The new code uses a much simpler data structure to assign IDs that is immune to duplicate assignment, and also much more efficient at runtime.
> > > > Joshua Hay (5):
> > > >     idpf: add support for Tx refillqs in flow scheduling mode
> > > >     idpf: improve when to set RE bit logic
> > > >     idpf: replace flow scheduling buffer ring with buffer pool
> > > >     idpf: stop Tx if there are insufficient buffer resources
> > > >     idpf: remove obsolete stashing code
> > > > 
> > > >    .../ethernet/intel/idpf/idpf_singleq_txrx.c   |   6 +-
> > > >    drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 626 ++++++------------
> > > >    drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  76 +--
> > > >    3 files changed, 239 insertions(+), 469 deletions(-)
> 
> 
> Kind regards,
> 
> Paul
