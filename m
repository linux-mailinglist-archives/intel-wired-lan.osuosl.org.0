Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F9FAE8394
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 15:03:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E140B80F4E;
	Wed, 25 Jun 2025 13:03:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w70vrf_ISr0Y; Wed, 25 Jun 2025 13:03:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57CCD8105B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750856613;
	bh=R67vbOcUZfWm73DIVUMK1L7ghH4UOTOk4lzaOIIxPrs=;
	h=From:Date:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZT9Lq1vrFAiyvsmCeOpDxegjOnDEQ5A+NMH7hoczjbXb/xW5fBgzcGqIM0tyuLoED
	 Z02ZIkYThxznEvN3fMlkd7it8g8qBr9zdErbstCpMvmBb/mkjnxBpj0Nrph56TLLAU
	 qszSVijMiWndRNkm6uKiuNudrqPptg6ye9i/b7OzByW8HJi9SiiHCVuMRTpgtP45MB
	 S1Uxwh2ptWxeZj0pNSxYdjGmrK1cn7oUAIHitJsTZOG6TAhI2jKhyBYknc5dIAURMs
	 Ys93BYVEoPLETfnbGYBsepPtTwFZ+dXGZzLnmd3T1l4BoTg3oQ9414x591+8GTsF0p
	 CTJ5jk7r7+/iA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57CCD8105B;
	Wed, 25 Jun 2025 13:03:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 444DD43F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 13:03:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3528580F4E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 13:03:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ocqc2swlG9mO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 13:03:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::432; helo=mail-wr1-x432.google.com;
 envelope-from=jacek@jacekk.info; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5D03B80EE5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D03B80EE5
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D03B80EE5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 13:03:30 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id
 ffacd0b85a97d-3a50fc819f2so1432080f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 06:03:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750856608; x=1751461408;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=R67vbOcUZfWm73DIVUMK1L7ghH4UOTOk4lzaOIIxPrs=;
 b=VgVv/GIk/P+AeR9nulpBmvfCYYT2LHbp3BcKM3+2l2/FFrLR/aUWalUj0kaPzj0lPv
 XDh5HVliQddi2F/Ty/D+M4i2r/u9kv78Tox96U+gnJv8/dUqRsS7xSpDPZm6rpQ5GSaz
 LZjRkqFdNMvg9C9Dl9Ye7rM8mec5PVLBR1pqXFXTqERH/ALRxFXTWQHcoTMneTWLS/ee
 cypS40ATyUEF+sW2GUapHwwCKHm1qJMotZTR5ZOqKj0VF3SvpW3kq6hO1KI209I5p2Kb
 eWyIwJMO3i+LAxZVeK0gACID2dvgqXlG3AsdKe5ajHjS/MIi9CsYWY4+NDuC3+kG5B2A
 r4Tw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW408D7hgLFlE/sTDbgAG9Cnr3UfW/W8zI32Ze6r1m89OMqf/RZ+wEv03p24LG8yfTsdsDfu8yo2NZQuGp0cxc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwO0yiFsZOWMfK4JULhmHceCfQ7HiufEDFjpZCu0UIzNMbGsq4f
 G552qgCaa2oC+Py0qZvuwVtow3iRr4HBDF/VZP2BbcIwO2qK7rXEFXWq2x2EqEKW2Q==
X-Gm-Gg: ASbGnctcFzQ8PN96E9/Gc3hgGckklrKVVGnOnllGCAl7K9Uj2ClLya3VUgCQMkiGPli
 KYpxszuyBJCwJ8eObgp98QJrFpwj438EuH4g9hF4B9iKqvwT9fK4JLfo+NaQX0fIZDw9pyCtxHw
 P2PGWSpCvUMRLEopeO07icjzs6i0OhYkAjfdEn3uuHkqKVU6EJEErCGQbxOWjwEhpDXhNpxuvYj
 qREKRltylTWDvopKksBnlIs9sQbWJpthNumHoDQvE+Rr92iGcz2LdARsTHjxLxcA4zYJSG3C7s6
 huC3YV4T22PLmH983gLqKtNgyVL9IwoJW0un34f36/yq6rm2vxBTCZg9ZJIdhVSp
X-Google-Smtp-Source: AGHT+IFgMJIq/eGyoizczszmR53QE4J3SMmdHR+AgUSfMQ6K9taH4rprzgWuCxaybgUuO0JGEwa4hg==
X-Received: by 2002:a05:6000:2406:b0:3a1:fe77:9e1d with SMTP id
 ffacd0b85a97d-3a6ed5da5bdmr2064474f8f.16.1750856607388; 
 Wed, 25 Jun 2025 06:03:27 -0700 (PDT)
Received: from [192.168.0.114] ([91.196.212.106])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae0bddcc68asm151660966b.174.2025.06.25.06.03.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Jun 2025 06:03:26 -0700 (PDT)
From: Jacek Kowalski <jacek@jacekk.info>
X-Google-Original-From: Jacek Kowalski <Jacek@jacekk.info>
Message-ID: <41ea8706-ffb2-48c6-8a2f-5c4c51dc1a0e@jacekk.info>
Date: Wed, 25 Jun 2025 15:03:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <46b2b70d-bf53-4b0a-a9f3-dfd8493295b9@jacekk.info>
 <20250625121828.GB1562@horms.kernel.org>
Content-Language: en-US
In-Reply-To: <20250625121828.GB1562@horms.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jacekk.info; s=g2024; t=1750856608; x=1751461408; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=R67vbOcUZfWm73DIVUMK1L7ghH4UOTOk4lzaOIIxPrs=;
 b=Q77TlHjTuR8XVX6LgqB9F4XPpYxQifuw8UHz0mG03bXnUnd7SF3trCZP+KKKb+FVjj
 a0BH3/9+vcsjS84OPxomgUMIDqwutCoA7Qx+TM0AbTjBtgz9sAZ1DXnluVMBGrUaw/gG
 pwhA2dLwzUd9ClSHJqTVHHJG2AumXz2GhIKII7TEPhG7amP8kBdBQTZvq4tevsiyaF/4
 +fzk3jwJa7LJZSGYfVZswpBa3wcGnJniNsHliIj3jzElo7wHMf/q6cRu96DjfXCMEBVi
 GpqPNpdYlch322phvj+lTDjLGhvUeOF0Y3L78uHRWwNfFlSHkWU70asza0Iln0UVIasJ
 ejlw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jacekk.info
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=jacekk.info header.i=@jacekk.info
 header.a=rsa-sha256 header.s=g2024 header.b=Q77TlHjT
Subject: Re: [Intel-wired-lan] [PATCH 1/4] e1000: drop checksum constant
 cast to u16 in comparisons
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

Hey,

> 1. It's normal for patch-sets, to have a cover letter.
>    That provides a handy place for high level comments,
>    perhaps ironically, such as this one.

I'll add it in a second iteration.


> 2. Please provide some text in the patch description.
>    I know these changes are trivial. But we'd like to have something there.
>    E.g.
> 
>    Remove unnecessary cast of constants to u16,
>    allowing the C type system to do it's thing.
> 
>    No behavioural change intended.
>    Compile tested only.

Wilco.


> 4. Please make sure the patchset applies cleanly to it's target tree.
>    It seems that in it's current form the patchset doesn't
>    apply to iwl-next or net-next.

Just to be sure, iwl-next is this one:
git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/linux.git
refs/heads/for-next
?


> 5. It's up to you. But in general there is no need
>    to CC linux-kernel@vger.kernel.org on Networking patches

I've just followed get_maintainers.pl output to the letter.


> As for this patch itself, it looks good to me.
> But I think you missed two.

Rather: I have not touched subtraction on purpose.

But checking the compiler output - yes, it can be dropped as well.

I'll prepare an updated patch set with subtraction changes across Intel drivers included.

-- 
Best regards,
  Jacek Kowalski

