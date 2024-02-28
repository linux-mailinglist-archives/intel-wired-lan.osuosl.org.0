Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E9A86B465
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:14:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3592B4173E;
	Wed, 28 Feb 2024 16:14:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AqI9m_DXsNyF; Wed, 28 Feb 2024 16:14:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DFC540A7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709136844;
	bh=45YCxhrvUCz1KlVt7J4vAlQKroPfuxlv6s5YsGgz7tQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7BVXz8U+tdxo7yv1ztxHJANjo8JvPkquC6nQz7hVbAwspQDLMyxmXE9isdWZJ6QhJ
	 c4QN1RyceZ7UIcmysoOjGmxUySuHUH8UEhBIwAOnM815o0kWbpx/SqgfQw5rb4rpwP
	 veREMyWzgjgOG6iwLYQh1xFYPXlv+RgYc0s9JnLmKCWaaA+6k0pCuU2RmCiQ1jokJn
	 9xSSvzotLOegqZ45257Taa0QAVT7jAILwfJ47WLgerxpyDdfLvXfneuTuFjbsLqTZn
	 K2FtTkdvla7YoiE5Na4orlI5gVQvQjO9h56eRfC/pxR69xXIUVuuMq7B3L7ZxSYXmj
	 OH0JDhmG4HyJw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DFC540A7A;
	Wed, 28 Feb 2024 16:14:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F6C81BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:14:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9885B822C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:14:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dJbHLhvnj0hf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:14:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112d; helo=mail-yw1-x112d.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CAE29821A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAE29821A4
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com
 [IPv6:2607:f8b0:4864:20::112d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CAE29821A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:14:01 +0000 (UTC)
Received: by mail-yw1-x112d.google.com with SMTP id
 00721157ae682-60821136c5aso40309697b3.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 08:14:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709136840; x=1709741640;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=45YCxhrvUCz1KlVt7J4vAlQKroPfuxlv6s5YsGgz7tQ=;
 b=NOA6wWtFwXU+gSlgLUHd2o0Fh//KVNhjp3gMoirLLMiCtXKwMrLQM/F41TruXeqRIR
 d4p+iQvReFMNlbysmGKfKJtbz5X881K2M8Pl5nZ66vB1Uy6E65G4kwmaD5bi9PcN+mfX
 2rNX4w17tbqUlu2b6l23qsKXmeDCuD9faoqkU0m2XSpI/7SEfC03WCQzNj0P7ZH9L/4O
 +WWd+8NohDoBSAmGKHUgVCQ8OJwUczs4Oj518DQRNwUNkthccsZ75pt07j9rCnzMI3Ln
 j7xQNrAI5GLR4TLrAGwSBk2Kjd65TktI8ih7vrIlGFCsNwiw03/trSOhpf1ZYN7yYWZI
 Ri5A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWXUJ82HKLJXr16tJkePkRBWGugPMkroT/C2zNHgn2jOp5J47tYA2CknPgfnb+8SDfOVxPEByLGgcsi2tZXBnsFdc8Khgcv+zRLcTvnntW4hg==
X-Gm-Message-State: AOJu0Yxtkg6keqO1/0z80t+cam3ieLhLHIaOPr62wL6QzGU7x7r2J9bE
 KP50XbqMcWDi4CWcMB4ThuGUlwygzMnQ+QaRYCG4CQBjuA/ob0NB
X-Google-Smtp-Source: AGHT+IF/XdTViG4nS4Tgw4GzisgwWwhJcP/ftilWPL2A7fbswfOIesX+rYdfS2+pLR0JyM0z6TybVg==
X-Received: by 2002:a81:f903:0:b0:608:e694:ffcd with SMTP id
 x3-20020a81f903000000b00608e694ffcdmr4873054ywm.43.1709136840492; 
 Wed, 28 Feb 2024 08:14:00 -0800 (PST)
Received: from localhost ([2601:344:8301:57f0:2256:57ae:919c:373f])
 by smtp.gmail.com with ESMTPSA id
 w65-20020a817b44000000b00604198c3cafsm2438101ywc.61.2024.02.28.08.13.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 08:14:00 -0800 (PST)
Date: Wed, 28 Feb 2024 08:13:59 -0800
From: Yury Norov <yury.norov@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <Zd9bxxRQboZI98KX@yury-ThinkPad>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-3-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240201122216.2634007-3-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709136840; x=1709741640; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=45YCxhrvUCz1KlVt7J4vAlQKroPfuxlv6s5YsGgz7tQ=;
 b=OxjWWAxPVSzaLQPPQma0qHh9PALd0PiDadHLCqDRB7AIrXoI/ZaJ3ACtZasOLd0aju
 M7YiDXPbUz8njuvStrwMiRAxY69BF4IkbJrAMICQu0qVqjUeNCq/XY6y3IlkrBgmfQSx
 9KiHKRuMHCBrLn0zHpebSpvX56uxtmmYYmRabg0QPMF77Oc9dmH9qcvPvJ5nMSwbhQ0F
 00J1NeX1aCwPLZp81QmKeMMetqA9pRvfkPUhiIZUULwDiH8Mjyaml24TQttQPUh+c+i/
 fhscrbGdlnjZhpB7e7TowsgIp4v9qHFLgl5eo+bkJ4d2UvZu+m5iJJJVD2Im8VAqyVht
 vqJg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=OxjWWAxP
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 02/21] lib/test_bitmap:
 add tests for bitmap_{read, write}()
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, dm-devel@redhat.com,
 Alexander Potapenko <glider@google.com>, Jiri Pirko <jiri@resnulli.us>,
 linux-s390@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wojciech Drewek <wojciech.drewek@intel.com>,
 Ido Schimmel <idosch@nvidia.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, ntfs3@lists.linux.dev,
 "David S. Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 01, 2024 at 01:21:57PM +0100, Alexander Lobakin wrote:
> From: Alexander Potapenko <glider@google.com>
> 
> Add basic tests ensuring that values can be added at arbitrary positions
> of the bitmap, including those spanning into the adjacent unsigned
> longs.
> 
> Two new performance tests, test_bitmap_read_perf() and
> test_bitmap_write_perf(), can be used to assess future performance
> improvements of bitmap_read() and bitmap_write():
> 
> [    0.431119][    T1] test_bitmap: Time spent in test_bitmap_read_perf:	615253
> [    0.433197][    T1] test_bitmap: Time spent in test_bitmap_write_perf:	916313
> 
> (numbers from a Intel(R) Xeon(R) Gold 6154 CPU @ 3.00GHz machine running
> QEMU).
> 
> Signed-off-by: Alexander Potapenko <glider@google.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Acked-by: Yury Norov <yury.norov@gmail.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Signed-off-by: Yury Norov <yury.norov@gmail.com>
