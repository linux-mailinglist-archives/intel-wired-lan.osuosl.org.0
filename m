Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB90E86B4F8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:31:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B4B360E94;
	Wed, 28 Feb 2024 16:31:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id egzww8JqW9ka; Wed, 28 Feb 2024 16:31:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 973016088E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709137887;
	bh=4Np5Q1IFAeL3gVqFgXL9N6s1o+4P8nHvPzIDBSXAmlk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nIPagTRJXJOcyRC/d986Q6lCuS4lK2d6nTLcTuGprGuyMwPUrllPYhth9Tem/dPhg
	 CF2ZfY0HA2IdXSPbBnkzYTbDUJjDtyksbnPHiAMebH4N/IDhqSsecQSDaImnCauuuF
	 BXM83ki1fHaXPh/IFrH1AE3jX2/QZK56Hn5dWoCsPVVEXw70tGah7aygnOMfDZwdRM
	 Ja5U8/jSNx3ibO21e3TStIjYk6Rh9dYeRTMSHishn7PrcDd6FslSV++VsGWaoy00ss
	 pEZGMI/Puf/82YBFBSyylCcTPBAjvhEsXSa3NWw/sAK4AdgvfSfpjzP6dud9uPhQBG
	 0Cr4nNw1y906A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 973016088E;
	Wed, 28 Feb 2024 16:31:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 62BE71BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:31:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4F9716088E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:31:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4WtYmFHRAPJ9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:31:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112f; helo=mail-yw1-x112f.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9162D60857
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9162D60857
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com
 [IPv6:2607:f8b0:4864:20::112f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9162D60857
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:31:24 +0000 (UTC)
Received: by mail-yw1-x112f.google.com with SMTP id
 00721157ae682-608959cfcbfso61199317b3.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 08:31:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709137883; x=1709742683;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4Np5Q1IFAeL3gVqFgXL9N6s1o+4P8nHvPzIDBSXAmlk=;
 b=tuaSjbjM0Wz21vRsPlFktx6lmU58B3b0etdtNlxZBpAV7YJp+7ajMUzAdPsSV9pAMC
 opRm+YPPL0If3ojd1BX/KR36HQAnyrjuazJ4YPU0Nmtw03jQBHM3wZ+Iahi2ggxdu4A1
 a22Eg/ELO/dNCDUY44454BnJkDWKslnEaoz10eyrQiTxRir+R9kSHjpN6POUcxFZL8Fg
 LsqMfuk0224Xze9v1wPPS5hTdneQw/6AIDJanwc4Q4vjIb77MjnWJ+UTyImmX1T4Mdgb
 Y2oTF/E+TlfV1DnjTyfIcukfELRDoFkEPCIIHknweW+BfTsFyKxyB637CoXEMZxPjFtb
 UxPA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUthMQk18XGj7n/CLG2tf/DDaEHJ1oNcmjDBMRjBkQG6fpGEILIE9dyOe1YR759icv+KWqWUMRYk3tnliiVAXvwkl4tvTZ6p+lsFqKnARLsrA==
X-Gm-Message-State: AOJu0YxkK32MHfEN1p/Vpm4VZLrZHA4lSsOzdVAEtjRBsgUmlkemL863
 sjHkUC2qEToJbLgtC83ZEyLhyzSybLGhOt1wYbADhuZKGQHZC8+M
X-Google-Smtp-Source: AGHT+IFpCUevzcdQnQRe5EFnA5eHKX981GcyRjFfNB3wwk2XmTFNTIpuoyEb4u6yxTYV7RM/GNdFHw==
X-Received: by 2002:a05:690c:fc5:b0:607:bfa6:7434 with SMTP id
 dg5-20020a05690c0fc500b00607bfa67434mr6942257ywb.20.1709137881926; 
 Wed, 28 Feb 2024 08:31:21 -0800 (PST)
Received: from localhost ([2601:344:8301:57f0:2256:57ae:919c:373f])
 by smtp.gmail.com with ESMTPSA id
 i184-20020a0dc6c1000000b00607e72b478csm2477866ywd.133.2024.02.28.08.31.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 08:31:21 -0800 (PST)
Date: Wed, 28 Feb 2024 08:31:20 -0800
From: Yury Norov <yury.norov@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <Zd9f2D6uhr3HgKt4@yury-ThinkPad>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-13-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240201122216.2634007-13-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709137883; x=1709742683; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=4Np5Q1IFAeL3gVqFgXL9N6s1o+4P8nHvPzIDBSXAmlk=;
 b=m2R4mZKc3Qq7lG/UYTt+uBiDQsK4ULF6SOwVmY7rLYTlQHTyyunCeFDUt9rbKicBuX
 jwHEqE5dfRv5x4o/a1VTCJ0LyYhtyh0RjcpoHXP8uNR1FW+3DmaS2N7IcOyxaY0zC8S/
 e71pAJ/yVPf6WJSte0fQuIXfBCS7bJtRajrTDFKn02W4EGTr8yhbx2GqJdXfcoGIunkq
 VWbjWqJMslNPEG83WLgbREjUgWoV7gl4ugJZZvb5BxEQ+4GGYQV7fZmU5PMx1vOnMjdV
 QcjEaEMcEgsqRGXl/yruYwvXSaAZoAn93J5HCi5+NAExuv1mzHn/ltbtQuni1BOD0aKP
 g53Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=m2R4mZKc
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 12/21] bitmap: introduce
 generic optimized bitmap_size()
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
Cc: Andy Shevchenko <andy@kernel.org>, linux-s390@vger.kernel.org,
 ntfs3@lists.linux.dev, Wojciech Drewek <wojciech.drewek@intel.com>,
 Ido Schimmel <idosch@nvidia.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dm-devel@redhat.com, linux-kernel@vger.kernel.org,
 Jiri Pirko <jiri@resnulli.us>, Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Alexander Potapenko <glider@google.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-btrfs@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 01, 2024 at 01:22:07PM +0100, Alexander Lobakin wrote:
> The number of times yet another open coded
> `BITS_TO_LONGS(nbits) * sizeof(long)` can be spotted is huge.
> Some generic helper is long overdue.
> 
> Add one, bitmap_size(), but with one detail.
> BITS_TO_LONGS() uses DIV_ROUND_UP(). The latter works well when both
> divident and divisor are compile-time constants or when the divisor
> is not a pow-of-2. When it is however, the compilers sometimes tend
> to generate suboptimal code (GCC 13):
> 
> 48 83 c0 3f          	add    $0x3f,%rax
> 48 c1 e8 06          	shr    $0x6,%rax
> 48 8d 14 c5 00 00 00 00	lea    0x0(,%rax,8),%rdx
> 
> %BITS_PER_LONG is always a pow-2 (either 32 or 64), but GCC still does
> full division of `nbits + 63` by it and then multiplication by 8.
> Instead of BITS_TO_LONGS(), use ALIGN() and then divide by 8. GCC:
> 
> 8d 50 3f             	lea    0x3f(%rax),%edx
> c1 ea 03             	shr    $0x3,%edx
> 81 e2 f8 ff ff 1f    	and    $0x1ffffff8,%edx
> 
> Now it shifts `nbits + 63` by 3 positions (IOW performs fast division
> by 8) and then masks bits[2:0]. bloat-o-meter:
> 
> add/remove: 0/0 grow/shrink: 20/133 up/down: 156/-773 (-617)
> 
> Clang does it better and generates the same code before/after starting
> from -O1, except that with the ALIGN() approach it uses %edx and thus
> still saves some bytes:
> 
> add/remove: 0/0 grow/shrink: 9/133 up/down: 18/-538 (-520)
> 
> Note that we can't expand DIV_ROUND_UP() by adding a check and using
> this approach there, as it's used in array declarations where
> expressions are not allowed.
> Add this helper to tools/ as well.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Acked-by: Yury Norov <yury.norov@gmail.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Signed-off-by: Yury Norov <yury.norov@gmail.com>
