Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4014A02475
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 12:42:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 31469403E3;
	Mon,  6 Jan 2025 11:42:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A0z5-geqaVcg; Mon,  6 Jan 2025 11:42:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C643403AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736163777;
	bh=7YG3GOy+g/NwAsJ5y2aA9Pj10HoYNeBxwmK3RuNDKnA=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=n+V3lTNe/SR/3hdvcrv0/j5HJ0eJcB6z8GTkREEV29nsieWAwySNe3X1SoG0CRhWz
	 34MBZUqi7GdWdVl97IMkyKC7onoONku4OZ7Q+/g/ygaeuoECoIAwqxVPq+3FExCSIM
	 kzbmGVM6IejIa3S2fyjBvp9EduqWzKmYhLkgWOwtQTWmru/U7NsLKke5PMZSP7i7Cn
	 ZZRbfSZWCVRlSLcEld+S128+o+hFPmMZXC6h2OC8J4X0vUPZKIGuzXNHBeXjdf0OWO
	 F09/R1nH28X86Uuqzj2t3EAz3NKuEwTlU4UjzrV3gMvTEeop77r0g2pLHsf7MSFBkB
	 x8l5t6ylQXSqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C643403AC;
	Mon,  6 Jan 2025 11:42:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9BB856B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 96CD8400F9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:42:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pgt6wwsL4Dv9 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 11:42:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::430; helo=mail-wr1-x430.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D6E9A400B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D6E9A400B9
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D6E9A400B9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:42:53 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id
 ffacd0b85a97d-385e27c75f4so10279557f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 06 Jan 2025 03:42:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736163772; x=1736768572;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7YG3GOy+g/NwAsJ5y2aA9Pj10HoYNeBxwmK3RuNDKnA=;
 b=oGZUDHM/qbPQtDjuQavc8u8of3GovTI40fNsq180HpRyE7EH+qzJQcupa0eDRKfglu
 VaAB5zGbKHIo5iIxRSRe4Bwb4uLjnQPXwXT5cCphq6TBimck4bw6/JpIzfctTHcEhxVW
 XaxOvw7Yll6XOMi/MdWpma10fyL41NALx/0k4HBhL7KhwM+Aan+5ujZTIMECwflvQTdT
 oMGukadvIjiTOjLS4ME9/x73pwAKpw4gEweun95ekxjVkKLKm4qczYtRl9ppy69wl4Yo
 T71lyhxtA4p8YtcbsuN/e3tpVXuLz32UeSrR5zqzLQbzDKt6UWGPPQpiGMCSYc/Lz0+n
 MDiw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV3r5Bn9y7+Ltpo/2gYQhSm8dO8IZ22KAWd/8LrZJ4nyu4gvmRDLL1aO7wgATHo92YfMqJRYPrTUxwyzsPPjJM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxYhPXzuvRKWyTRRemxwmmqWRboP5uQoirrHNlAQGGzsVtL9dM8
 yWrAKHzj5PV3ExYaeeT9cITMUdJNqfwsNM4BqyaJ5oywPbKimbZnNV9Ee+6Kw5A=
X-Gm-Gg: ASbGncvt48vDYWMkb+tJ6yD4Cy2K2wtgwnGWGw58PPdjTBxevwwQbCYFKGk4VBUrBRG
 TKobgyN89+kyp9+6ce4/ygAY+pexm91aXQMb0/IuejB7+GndHy+JPvgB11Pkbf6/cMQcEQSGdgw
 9Trr6jf5US4pdMBTT9rtt6/rN+thvK4tt8RBtBnYRhi65UG0utJtE5ikOlvMZLmVMAw3TXukxlb
 dQq6adZWL+jHh7CGK+0RjmjerH+XN5c3f/4l/TgIwA3C1Fnh2srS0azg3K9GQ==
X-Google-Smtp-Source: AGHT+IG58q8cr4ocVDcWdFjGoPg3w6C7BABpHxOy8yDsyEhI0WRiV8e3ntHXum0mHI3s5vxK/9Yb1w==
X-Received: by 2002:a5d:584f:0:b0:386:399a:7f17 with SMTP id
 ffacd0b85a97d-38a221f2ed2mr38603926f8f.24.1736163771738; 
 Mon, 06 Jan 2025 03:42:51 -0800 (PST)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38a1c8a6abesm47655764f8f.90.2025.01.06.03.42.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2025 03:42:51 -0800 (PST)
Date: Mon, 6 Jan 2025 14:42:48 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Ahmed Zaki <ahmed.zaki@intel.com>,
 netdev@vger.kernel.org
Message-ID: <e602748b-4376-433f-b864-066afa11daf5@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250104004314.208259-4-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1736163772; x=1736768572; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=7YG3GOy+g/NwAsJ5y2aA9Pj10HoYNeBxwmK3RuNDKnA=;
 b=rSX/PpfMnK5Nvz1LB1PBrGR8C4D00J/g7zttoOnnl1DQ9FsxQ1vunIbbaZm7ApzNWE
 MFPsl/D+5P8Q57/0EJe1F+r64Y4KM15GBKkzdYl9GqRlVlCCj3D09Eu62Ld7fWd0x9ob
 MVrRDZ5ztzaineYvleSENZZXq0Al3ggqen3nen9TO/S4mRo8nhwcvY5kda00rKKolh1a
 MWOctILlXQyuICA3d+O0akw5jdjIvp6r4WQAFVckx8vteBaRv3GUZS1i/rxSZ9sFA2l4
 gZvFkbM9K9/heb7+wjOO2V7QlpzoddPIkd4mLkBlYOBaRODRfwvPuGxOgbecPhh7Dq3N
 YkJA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=rSX/PpfM
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 3/6] net: napi: add CPU
 affinity to napi_config
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
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, akpm@linux-foundation.org, tariqt@nvidia.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, andrew+netdev@lunn.ch, edumazet@google.com,
 shayd@nvidia.com, intel-wired-lan@lists.osuosl.org,
 oe-kbuild-all@lists.linux.dev, kuba@kernel.org, michael.chan@broadcom.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Ahmed,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Ahmed-Zaki/net-move-ARFS-rmap-management-to-core/20250104-084501
base:   net-next/main
patch link:    https://lore.kernel.org/r/20250104004314.208259-4-ahmed.zaki%40intel.com
patch subject: [Intel-wired-lan] [PATCH net-next v3 3/6] net: napi: add CPU affinity to napi_config
config: i386-randconfig-141-20250104 (https://download.01.org/0day-ci/archive/20250105/202501050625.nY1c97EX-lkp@intel.com/config)
compiler: clang version 19.1.3 (https://github.com/llvm/llvm-project ab51eccf88f5321e7c60591c5546b254b6afab99)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202501050625.nY1c97EX-lkp@intel.com/

smatch warnings:
net/core/dev.c:6835 napi_restore_config() warn: variable dereferenced before check 'n->config' (see line 6831)
net/core/dev.c:6855 napi_save_config() warn: variable dereferenced before check 'n->config' (see line 6850)

vim +6835 net/core/dev.c

86e25f40aa1e9e5 Joe Damato     2024-10-11  6829  static void napi_restore_config(struct napi_struct *n)
86e25f40aa1e9e5 Joe Damato     2024-10-11  6830  {
86e25f40aa1e9e5 Joe Damato     2024-10-11 @6831  	n->defer_hard_irqs = n->config->defer_hard_irqs;
86e25f40aa1e9e5 Joe Damato     2024-10-11  6832  	n->gro_flush_timeout = n->config->gro_flush_timeout;
5dc51ec86df6e22 Martin Karsten 2024-11-09  6833  	n->irq_suspend_timeout = n->config->irq_suspend_timeout;
                                                                                 ^^^^^^^^^
These lines all dereference n->config.

d6b43b8a2e5297b Ahmed Zaki     2025-01-03  6834  
d6b43b8a2e5297b Ahmed Zaki     2025-01-03 @6835  	if (n->irq > 0 && n->config && n->dev->irq_affinity_auto)
                                                                          ^^^^^^^^^
This code assumes it can be NULL

d6b43b8a2e5297b Ahmed Zaki     2025-01-03  6836  		irq_set_affinity(n->irq, &n->config->affinity_mask);
d6b43b8a2e5297b Ahmed Zaki     2025-01-03  6837  
86e25f40aa1e9e5 Joe Damato     2024-10-11  6838  	/* a NAPI ID might be stored in the config, if so use it. if not, use
86e25f40aa1e9e5 Joe Damato     2024-10-11  6839  	 * napi_hash_add to generate one for us. It will be saved to the config
86e25f40aa1e9e5 Joe Damato     2024-10-11  6840  	 * in napi_disable.
86e25f40aa1e9e5 Joe Damato     2024-10-11  6841  	 */
86e25f40aa1e9e5 Joe Damato     2024-10-11  6842  	if (n->config->napi_id)
86e25f40aa1e9e5 Joe Damato     2024-10-11  6843  		napi_hash_add_with_id(n, n->config->napi_id);
86e25f40aa1e9e5 Joe Damato     2024-10-11  6844  	else
86e25f40aa1e9e5 Joe Damato     2024-10-11  6845  		napi_hash_add(n);
86e25f40aa1e9e5 Joe Damato     2024-10-11  6846  }
86e25f40aa1e9e5 Joe Damato     2024-10-11  6847  
86e25f40aa1e9e5 Joe Damato     2024-10-11  6848  static void napi_save_config(struct napi_struct *n)
86e25f40aa1e9e5 Joe Damato     2024-10-11  6849  {
86e25f40aa1e9e5 Joe Damato     2024-10-11 @6850  	n->config->defer_hard_irqs = n->defer_hard_irqs;
86e25f40aa1e9e5 Joe Damato     2024-10-11  6851  	n->config->gro_flush_timeout = n->gro_flush_timeout;
5dc51ec86df6e22 Martin Karsten 2024-11-09  6852  	n->config->irq_suspend_timeout = n->irq_suspend_timeout;
86e25f40aa1e9e5 Joe Damato     2024-10-11  6853  	n->config->napi_id = n->napi_id;
d6b43b8a2e5297b Ahmed Zaki     2025-01-03  6854  
d6b43b8a2e5297b Ahmed Zaki     2025-01-03 @6855  	if (n->irq > 0 && n->config && n->dev->irq_affinity_auto)

Same

d6b43b8a2e5297b Ahmed Zaki     2025-01-03  6856  		irq_set_affinity_notifier(n->irq, NULL);
d6b43b8a2e5297b Ahmed Zaki     2025-01-03  6857  
86e25f40aa1e9e5 Joe Damato     2024-10-11  6858  	napi_hash_del(n);
86e25f40aa1e9e5 Joe Damato     2024-10-11  6859  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

