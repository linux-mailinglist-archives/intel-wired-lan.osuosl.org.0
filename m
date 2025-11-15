Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E93C60159
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Nov 2025 08:58:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E58FA8430C;
	Sat, 15 Nov 2025 07:58:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hcw81USlRV9q; Sat, 15 Nov 2025 07:58:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 308BC84303
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763193536;
	bh=MF0CNlB09dDx8CZgE5eg3pyjdHElMh021rKPfz1W410=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=My49dxpN6a5kTI+5G7ivZLGOnN1rPwxrZzM+V70ktTfd8ahtEc5YjLlMpsYgO+ysc
	 sZtH0ora85iCApuM2NuURhcxJkt4Oi/4TjbxQVafFC51Y0nyOtT9Ov+fTeV4rVs51j
	 4F+1XQ4/rR+d29nlKxCVsQL4XvqLCXgcckYBI94A7ceAXTLni4A6gupiyAi2ueoE30
	 u7Lo9O5H1i6QypNMocbwSup4htOmz2JxXw1KCrnW5oykP8EuZhtcmg8XAdAc12Ymg1
	 +/BOScam6kCvZJF4nAzzD4PZnfNPLIgB+PuGEIY8FV695kvmvpq8ysF7xkF/izlnjC
	 HAvFrc+iEnicA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 308BC84303;
	Sat, 15 Nov 2025 07:58:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 287EBD5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Nov 2025 07:58:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 196B5842F7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Nov 2025 07:58:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ABEicRyDvj3e for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Nov 2025 07:58:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1030; helo=mail-pj1-x1030.google.com;
 envelope-from=alessandro.d@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 511D084114
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 511D084114
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 511D084114
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Nov 2025 07:58:53 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 98e67ed59e1d1-343806688c5so2613522a91.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 23:58:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763193532; x=1763798332;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MF0CNlB09dDx8CZgE5eg3pyjdHElMh021rKPfz1W410=;
 b=rLGATZpVL1U5HzFkLIeYwn0bLtMnncwy9cFaMa1a9LAZY4ji/YejjMN2M6El42gO7o
 r0wakASmdZv43VKoA0uDOhRzNFUfP/vmxz+1jjZT1ruL8ZuFRyvRkxdxJ6EVn7GwZfgj
 5UaTIUEGS+x1C9IZ8rTW4s5784qccCMzKWB520+OvNkcW4IH6VNAlKVnd16lXtt1mAw+
 EwSoVVLtpD/AJNxQPiPEnERIec5T2a/wqHp6I4DofObYIRshW15kj+AyXCOQZxwM0zVk
 c1xukbEhV2O0ZjqN70pduYVFiIebcnZikd3PGBqsT2izfejZ/P0T8OAoa9Obk1uT0Bb9
 uUog==
X-Forwarded-Encrypted: i=1;
 AJvYcCVqWugjVU3NIfvMhqasxyNNcVp9kOekbtalKbRD1LlyDTzwLgfq/V39gTC/aaB8FYABgUa0SEMy5WWnyaLhA8M=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwJgaX3QXRMfdEI2UD/ZIJgSZzx/4BXZeHuAWi0tHfOOHqHoExY
 3huyf9e0D8E/RqsQJJziacso1sAkQh2zBE4MJGB6X/AGyjSdqUtDLiFq
X-Gm-Gg: ASbGncsWpNFOcBaor2U5hHmpjV1Ri5FNsq0RNaNyK9slcwCOxNrcvGvVqgHsP64ASTH
 9P7elXf3Hc8/61zGtGWBRbbtRVrJ7g0ECFUsykiNMdqIK86Bbp20FELGVmXN1byVPodmxKq7POK
 ilQY6Uff0MsbJ7b9pNB2O0NBZbyXibBALYaFAK5XzQb3o6iDHnJEnNW5lYXRpGvrVhNbP9dTiUJ
 KUpNaXIuG5wPoPAnzM9iDORSOeMtlKErcno900i+dkX4R0ETT+O4MGUbCoJabUi140KLUANVXdV
 srMaXsQA3cWyC6BeYUACxYqtXBb7CjQQVN7suCcvPF88+ElbJ5dN/4bzGqYvvoSPJr3vv+zQt9W
 wIVwXF91oYij3q5gtoGG0R54UOxDF4NLRnztZVcIiZviaf7bsZQkb+oxYdfplTK75hiUHpEmgft
 3ZDcJ9ypUQ5p/o9t9D6Isess4vLp9O42fnC8dHAw==
X-Google-Smtp-Source: AGHT+IF5RfVfdoSR8epRBvO25wL7MVlPY9GHcuOfhGeoJp77hSo38v+4EuRhPqUWE1eLEn1PhRthJQ==
X-Received: by 2002:a17:90b:1d0a:b0:32e:3552:8c79 with SMTP id
 98e67ed59e1d1-343fa73faebmr6776084a91.29.1763193532599; 
 Fri, 14 Nov 2025 23:58:52 -0800 (PST)
Received: from lima-default ([103.246.102.164])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-343e07156absm11518522a91.5.2025.11.14.23.58.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Nov 2025 23:58:51 -0800 (PST)
Date: Sat, 15 Nov 2025 18:58:41 +1100
From: Alessandro Decina <alessandro.d@gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Alexei Starovoitov <ast@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Daniel Borkmann <daniel@iogearbox.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Tirthendu Sarkar <tirthendu.sarkar@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Message-ID: <aRgysZAaRwNSsMY3@lima-default>
References: <20251113082438.54154-1-alessandro.d@gmail.com>
 <20251113082438.54154-2-alessandro.d@gmail.com>
 <aRcoGvqbT9V/HtoD@boxer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aRcoGvqbT9V/HtoD@boxer>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1763193532; x=1763798332; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=MF0CNlB09dDx8CZgE5eg3pyjdHElMh021rKPfz1W410=;
 b=PB8Ke3IsxUHeJ3vWyOLvDXl5exPKAjZV7/Ru0Yu+IZlpc8A1pM+p/caKzcux79B/EN
 FyxRbLjVWOyproT1Y2hTn7CNjyRHi3uyuAryMj21GSFz7ngTNy7uC1axNVxEO+AugakS
 mv0QFpy8MeACpSd5Ab/JtbHuNZoUWNeJ1Q7XjnrnHn+knEymGPUKSC6F9xxdvH03XVBh
 G+lU64NumLAIIfPOjwIIjTgtPjIwP/tX/4vx2xqJLCGcRwb2qHSjm+sv0fZ56tIQeERq
 I9AKrOU6jDY1UDrCo8DjrdJsa8j63i+hrS5YNwYcA1OzcEVCJY9t5GGZ3lbkzRo0Wm2t
 NZFg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=PB8Ke3Is
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/1] i40e: xsk: advance
 next_to_clean on status descriptors
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

On Fri, Nov 14, 2025 at 02:01:14PM +0100, Maciej Fijalkowski wrote:
> Woah, that's not what I had on mind...I meant to pull whole block that
> takes care of FDIR descriptors onto common function. That logic should be
> shared between normal Rx and ZC Rx. The only different action we need to
> take is how we release the buffer.
> 
> Could you try pulling whole i40e_rx_is_programming_status() branch onto
> function within i40e_txrx_common.h and see how much of a work would it
> take to have this as a common function?

Just before I send another rev, you mean something like this? 
https://github.com/alessandrod/linux/commit/a6fa91d5b5d1cc283a2f1faa378085c44bda8b4a

My rationale for i40e_inc_ntp_ntc was that _that_ is where the bug lies:
letting ntp and ntc get out of sync. By introducing a function that
forces you to _have_ to think about ntc and explicitly pass NULL if you
don't want to sync it, bugs like this become less easy to introduce.

That said I don't mind either way! Let me know if you want me to send v4
with the i40e_clean_programming_status() change.

Ciao,
Alessandro
