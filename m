Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1078299FFDC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2024 06:03:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C3B980ECB;
	Wed, 16 Oct 2024 04:02:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SxJoU9BiM8po; Wed, 16 Oct 2024 04:02:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6FA6080ECC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729051377;
	bh=ntsHHgsKKirQ6ZAZrxHrp2nW0QPmelrzaOWFkgE7yAU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PnX4PXrvU7hBcrm1W39/ejXnEpDT0uY0XlukmYy+6BBYgSJQR8E7db5GvV4Qj6usZ
	 TXf+8+Elv8RtDpsSdKniDfqGnyRABaM+XGGrboE8sF06Y5aDUfda0g8NOq3JJs6MvZ
	 R7zsBFL4hGtiTi7HMKeE2ps96VHhYvKetzTwAuNlfntA0jQgz2YRTpmoaKNwF8xWHh
	 604LjQ7EnCAuUhtqiDz+/ZRwc5D7fmEqFrL/6nMEQCm0qkM3Cp44h4QjT2v6+4ZdiD
	 /eNEldpQmqTpShAhXbjlj8USlXX5fsO4gb0t9Ch7NKTbLuHJMO56dpP5FO1pWYdoQt
	 yMq2/Z7sKGlNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FA6080ECC;
	Wed, 16 Oct 2024 04:02:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7EB202072
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 04:02:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 792EA40619
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 04:02:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RxSoEHf81GKd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2024 04:02:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::634; helo=mail-pl1-x634.google.com;
 envelope-from=pjohnny0508@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5F4654060E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F4654060E
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F4654060E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 04:02:53 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-20ce65c8e13so24796765ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2024 21:02:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729051373; x=1729656173;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ntsHHgsKKirQ6ZAZrxHrp2nW0QPmelrzaOWFkgE7yAU=;
 b=pAV2CBum4uJyrPgRvHxwcyjmAxsrqdX9J/d8JDR1n6A3h51P0ZKD0A8FPJZglfwpk5
 ADlxWif+fPgIexD9VK5wsxpnuPHz4nLjYdb+K47rhi/c4q8Oo/Tq8jjI+mkrvmNvZYV/
 FlX2ZHpS+SWbSmFacZUqBDgLNh87gIQulc6EFjaQF5aPss6K7iYIWSYefODKJvEOiVIN
 UYL7tjcIJ2fSLcqa2eMkch0kkDvSsfO9+fuBQax5HoWQvhilja2R0EKipxaV4fs/7pEO
 le7SYItMdhMUB8bALK1QAYoTfh3nROxhcVo03AcGmuvrxUfYsALGGOeGgwS/jpd1Zygt
 z9mw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVFPPtQc80zkYW0WUiKBcKL+Yg6mrdi84FVH1MmmrIhHV/VlQ8Qnzlwbw13NQAs848r57Pzm+Uxm+07SfxP3dU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzKm3aJ5utIP71tlpPY6sZKiP3627CZPzHyhzBJHAJbmYLwEh5/
 UeNB6fa8BxY9Coz55wzlaykBpjy0Jq0ogq3ded3VqnjVApqWPcT+
X-Google-Smtp-Source: AGHT+IEE+gmw+5w0f4YcSUcAKGq5Xdyra0HmV91k0/Fsm+itmUFGK2zWKtURAkx6foMhV4Jj3f87uA==
X-Received: by 2002:a17:902:fc8f:b0:20b:5231:cd61 with SMTP id
 d9443c01a7336-20ca14732d9mr227299045ad.24.1729051372491; 
 Tue, 15 Oct 2024 21:02:52 -0700 (PDT)
Received: from Fantasy-Ubuntu ([2001:56a:7eb6:f700:d7a1:e36a:e9c7:6c4b])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20d17f82c7csm20226785ad.16.2024.10.15.21.02.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2024 21:02:51 -0700 (PDT)
Date: Tue, 15 Oct 2024 22:02:49 -0600
From: Johnny Park <pjohnny0508@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <Zw866aMO9sfBXRsm@Fantasy-Ubuntu>
References: <Zw2mTeDYEkWnh36A@Fantasy-Ubuntu>
 <20241015174607.6c29bb8d@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241015174607.6c29bb8d@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729051373; x=1729656173; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ntsHHgsKKirQ6ZAZrxHrp2nW0QPmelrzaOWFkgE7yAU=;
 b=B/2QO7nJVeaGF/zp5lNXDlaXViV8QYISWYXFrT43pebupv210ghGj77HNVT0Xb8obL
 78p8iKuQaPToEWlFOXDkRU3+FtU8QlxMzHHKl+7JmEb/sRV+Si1kIWcWeSBb6eIicyiZ
 oLMF4KBlCKh4kR0tyTQlY72rrFCe7p2hbKn7QA6dKMsIkJw34981kPJAIlGN73fHMz3w
 rG22emekLYhkdIz8HufXVw5qHZMBxTOOiPV9KvOa90taj3v3E35yVfriLGNO6FMVIzi7
 DJVHuIYnI1F+ihccyeMhnyNoqAsan4YKjDLRNcjALNyPftlwM2zIviG8os8rmtGBK+92
 Krgw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=B/2QO7nJ
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix styling in enable/disable
 SR-IOV
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

On Tue, Oct 15, 2024 at 05:46:07PM -0700, Jakub Kicinski wrote:
> On Mon, 14 Oct 2024 17:16:29 -0600 Johnny Park wrote:
> > This patch fixes the checks and warnings for igb_enable_sriov and
> > igb_disable_sriov function reported by checkpatch.pl
> 
> Quoting documentation:
> 
>   Clean-up patches
>   ~~~~~~~~~~~~~~~~
>   
>   Netdev discourages patches which perform simple clean-ups, which are not in
>   the context of other work. For example:
>   
>   * Addressing ``checkpatch.pl`` warnings
>   * Addressing :ref:`Local variable ordering<rcs>` issues
>   * Conversions to device-managed APIs (``devm_`` helpers)
>   
>   This is because it is felt that the churn that such changes produce comes
>   at a greater cost than the value of such clean-ups.
>   
>   Conversely, spelling and grammar fixes are not discouraged.
>   
> See: https://www.kernel.org/doc/html/next/process/maintainer-netdev.html#clean-up-patches
I see. Apologies for the inconvenience, I'm new to this area so I must have missed that portion of documentation.
