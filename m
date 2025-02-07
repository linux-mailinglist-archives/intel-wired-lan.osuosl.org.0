Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 827C9A2B71D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 01:24:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D9AFC84951;
	Fri,  7 Feb 2025 00:24:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6ljYelra0b0z; Fri,  7 Feb 2025 00:24:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 493AC84948
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738887873;
	bh=41PEVxVSksJRZRsl2JkWcFebR9jMlRm3TEy4GCAbKvA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5E2OXM29Y5w4d3T9zFS+TFmQxQAdnKSX4KIzpHxRKIyETvO3ujty/2nU4G9SnjilT
	 pimJXCrMSxht9F/IjQYYFyf99Bd4apGZMdVn/hN4zMRkc4XwXHqSBwmvmXSyaWxx1j
	 x1Pu9vUETiVs3Hwnog8FzDKONiOGNoCisjmA5qaMlX16/rkDQsgtlRZcJPQttSd1ia
	 9kX5HEmA6v21lqdu+BwNq6ii0RnBWZ5QkzQJLD3OSr5JvRvpJreH1gAx5wf8um1VlD
	 5avqxknaX/U7AU+DeM5T1uNQjjUioy7nIy3jrzaNDZn8dNyN0oT/HMGTFcqQx43WDA
	 h/91cGGQ97fpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 493AC84948;
	Fri,  7 Feb 2025 00:24:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A853C5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 00:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0A83F84948
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 00:24:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lD8gRLT5pf9k for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 00:24:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::633; helo=mail-pl1-x633.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 31A9E84945
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31A9E84945
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 31A9E84945
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 00:24:29 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-21f48ab13d5so16660345ad.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Feb 2025 16:24:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738887869; x=1739492669;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=41PEVxVSksJRZRsl2JkWcFebR9jMlRm3TEy4GCAbKvA=;
 b=hIMK2HfQsG+fcLiGK4ClF2bH7kaJ3pyYtIcO7qpt5nTnU1fiYT/v45B8z1IzekDlq/
 uXrspM9kupA8BFWkeI+PDhe0c50L53HJ4CQBRHP1KGh0dtCYy2REUMxDcBe5U/qVAwH7
 yrAYIuJKbZXTgAHGJAFtjHTyfC+8ZI2zfIT7gBnMclJU7ZmUqNLXm9YUEoq+howTUrUZ
 kd05wlHW1PNr9xbhTqO4uFqLi+t7UGhtGbid8IPs8dC1QGaZOP+Biwh+G+6n0PBcmQmR
 4nVLZC6EDkn91Rs5pkMiz051g7ZZg+zBgBKIu66zjwvRKOoZyXmLySo7r6gL0WVcGTrT
 HEAA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUdkkh27CeiL6O/DRDguJTx6pFais2fEX7c8B1NnAfBrbxGNo/Mi64SLB238hXVhLNBBGjdf+MtHVnokI7lr4A=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzJ5PJWsQXL4V39l3P3AJO3ebhP5+m5/KqeMc1/T/e2YoOvq+Xc
 556dsJj56CK33XO03+OiJgCF1P7k0jKnG9HTDu9ic+DpcIkiIbmSBuj7F87ReBo=
X-Gm-Gg: ASbGncsyTk6Syc7iIYoc+SbyxFiNxRkMIaLFVJKlHdEybl9Q1e9EV0q+cdjxePrGZMK
 Xph/7GdmBO7WuWg521f8/ViZCwBvmYEJ2tZjXtvv7ie6nzjExqGlESU4lkgOI3TorKS5DqjU7t0
 ZtPBc+d/3ebi9y1T60qoTlUbLhQHKK8EF9b4HoqNk81mEcWx54LBVFnMwN2RQbxye0f9m1Pddnz
 uCBOA6Gf1hMUXoFbEffiJOITnM24GS4gFQHZXyWzPcV8h2ZhpG/J4htdiZKHFvQjCPK9QkZ2AsB
 oB89fDqJec+z1zPor5p3NJNh0voeXiWBr9Vmd+x6S96OTmegVtcNi3YoVg==
X-Google-Smtp-Source: AGHT+IH6rlyqvq0mOIskiuL2LEecsrtfK2Yt8yyBIbeL1ahoyqR4WobEEPc36Z+vAEHPsqoMCHNM4w==
X-Received: by 2002:a17:902:f710:b0:215:a96d:ec17 with SMTP id
 d9443c01a7336-21f4e6b8bf1mr19054735ad.14.1738887869339; 
 Thu, 06 Feb 2025 16:24:29 -0800 (PST)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21f3650e69fsm18941575ad.1.2025.02.06.16.24.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2025 16:24:28 -0800 (PST)
Date: Thu, 6 Feb 2025 16:24:26 -0800
From: Joe Damato <jdamato@fastly.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org,
 horms@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 shayd@nvidia.com, akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com
Message-ID: <Z6VSumnSnqa3wHfu@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com,
 tariqt@nvidia.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, shayd@nvidia.com,
 akpm@linux-foundation.org, shayagr@amazon.com,
 kalesh-anakkur.purayil@broadcom.com
References: <20250204220622.156061-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250204220622.156061-1-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1738887869; x=1739492669; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=41PEVxVSksJRZRsl2JkWcFebR9jMlRm3TEy4GCAbKvA=;
 b=in7c4nS+ltf7iLBdDqt5g9u6OL63hx6tNeDZoaK6pkZdpQGO8NQ3pKWvbEuX179ulk
 n8qR6iBPi64malW3aETy4EvHnC2vrJL1ZABPGkv5vLmUzET8LVd1bdXwKfah0b0PdII2
 64+jW6VK/22BzB09FtdI2oEqxGYK7UfenV1IM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=in7c4nS+
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 0/5] net: napi: add CPU
 affinity to napi->config
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

On Tue, Feb 04, 2025 at 03:06:17PM -0700, Ahmed Zaki wrote:
> Drivers usually need to re-apply the user-set IRQ affinity to their IRQs
> after reset. However, since there can be only one IRQ affinity notifier
> for each IRQ, registering IRQ notifiers conflicts with the ARFS rmap
> management in the core (which also registers separate IRQ affinity
> notifiers).   
> 
> Move the IRQ affinity management to the napi struct. This way we can have
> a unified IRQ notifier to re-apply the user-set affinity and also manage
> the ARFS rmaps. The first patch  moves the ARFS rmap management to CORE.
> The second patch adds the IRQ affinity mask to napi_config and re-applies
> the mask after reset. Patches 3-5 use the new API for bnxt, ice and idpf
> drivers.

If there's another version maybe adding this to netdevsim might be
good?

Was just thinking that if one day in the distant future netdev-genl
was extended to expose the per NAPI affinity mask, a test could
probably be written.
