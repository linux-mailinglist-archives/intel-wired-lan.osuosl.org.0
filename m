Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CB99FB652
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Dec 2024 22:43:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2302A812F9;
	Mon, 23 Dec 2024 21:43:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XEeNBkUzCHig; Mon, 23 Dec 2024 21:43:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64966812F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734990233;
	bh=eJINGdpDwCDG3ewzWN9k9REq0fQ7Kv+5EsDRsZO4yDQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sKbbG/Yvm8Pzh3lMRat2ijy40YtLf/XUjHsb4GtVHRVUO3AiCl9Bw4AHSiqDbBOko
	 B864mqKCBvEHUh/28hCzJkTqSS7JZ8u9vqAv3gkCeCZkcmFIl1AFX4ZMOITEN1Vz/A
	 D7HSUKJXOpwlw6oeGJYSlKFVrEMFn1X5wcjMv8XR0pghgDn1WUSy8DlU0rQEuVeZoH
	 0yjF7hwOu1ywqMYPjiaiaTfbtMikvZ7B99OPKsSBp9ST1kaE4Vxs6ltUD0Eo71D2tQ
	 uGyenO1mruF0FMnm47BKvEnbiGVlUMfJ9Z5aDcQLKuG0mf4O8WeVMomc6aWtZHWjiQ
	 0KkMcWeceaZww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64966812F3;
	Mon, 23 Dec 2024 21:43:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7BE90757
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 21:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 49DC0812F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 21:43:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XE0p6LpoABJC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Dec 2024 21:43:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32c; helo=mail-wm1-x32c.google.com;
 envelope-from=olteanv@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 34CC9812F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34CC9812F2
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 34CC9812F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 21:43:50 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-4361aa6e517so6407265e9.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Dec 2024 13:43:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734990228; x=1735595028;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eJINGdpDwCDG3ewzWN9k9REq0fQ7Kv+5EsDRsZO4yDQ=;
 b=lJEBmc+cYOfrS/wykkMCkKEdH+CXbxA78B4xbzDTuGB+xPUKuzqONzXiJqLvpDTN8J
 Hdj7JI0tQXfRlCjxWSAm8zXsTM2o/PvMdkNC8ESyZl/fc//sn27GGwajIMS82Wq5uJEg
 b+C9k2PMNstKy/yuWGdU0tqHJYrGyg12nRa6kZYV5QqLj6qhJDyNXBxF+5eHh4qYc405
 Loz5oWU3ZV4GW0w8HEumpJLP9FYRqHL6ZtQJevLHCAbGHvFfnA7JYmejzUT28seDC0zX
 Mc3hqNUGVbR3I6kSYO6tbWM3JxTb9N7GcW0pHJ9O2lwbez9evf4KUhelnJc0jdB+LNGZ
 hdhg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXOP1sjH057MsxDr0Q9Nf49KVa/rO0tyuwxa5tPIj6Sz1rkWNBwQNqykP8rfJ1MzplaTmX/jgPRgRV58wTgfWg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyU3ayBqZVnuqUA05YShR5tt3Jkwh1YH4w8s+e/X+/gHIogXXjP
 fx8Y/wrrZhM6/MmejCTnooytUDa/Ag3xBOen3//UoFw8VuRNFqp5
X-Gm-Gg: ASbGncsasF7sEPmLtZVUTOLX/ovN0XL9ewcbvvzctsvVLe0nuZ3hWu7CIGECo+SFbW/
 Oq/PGQn9kS2Pb/+1hL9iAEaZKq6Z9WOpD5SmUKLvPjXuByS7gLVq8XP5gxBXRl3Mw5iwAz29+Xa
 pO1SNipB3IlI47VkwKRlD5iWr1RJ4tPMOyL6o+t4fDZdrYiJzCU7hj5UHDHHFPilxaotb8Rk+Yi
 W/1ndsniC/0HbEG1JpNxfxmkp91UbfSDwAvMMYrOF/U
X-Google-Smtp-Source: AGHT+IHL4I7TGBfT9Dfs3U2q5y6UKuVcMOivINOhCJ4rodXMGa1Ob/wIQjBOw7XqflRGuJN4X3cDbA==
X-Received: by 2002:a05:6000:70a:b0:385:faaa:9cfe with SMTP id
 ffacd0b85a97d-38a223f82e8mr5051691f8f.12.1734990227688; 
 Mon, 23 Dec 2024 13:43:47 -0800 (PST)
Received: from skbuf ([86.127.124.81]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38a1c8330d4sm12226921f8f.29.2024.12.23.13.43.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Dec 2024 13:43:46 -0800 (PST)
Date: Mon, 23 Dec 2024 23:43:43 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Message-ID: <20241223214343.dbmhbj7cr7pfbeub@skbuf>
References: <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-1-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-6-faizal.abdul.rahim@linux.intel.com>
 <20241216064720.931522-6-faizal.abdul.rahim@linux.intel.com>
 <20241216181339.zcnnqna2nc73sdgh@skbuf>
 <ef07ba7e-eb61-495b-8abc-a46d675302d4@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ef07ba7e-eb61-495b-8abc-a46d675302d4@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1734990228; x=1735595028; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=eJINGdpDwCDG3ewzWN9k9REq0fQ7Kv+5EsDRsZO4yDQ=;
 b=ipjka0Q+otUZkJ0+VlA8sQBX0WQeCjtkVUmYGq1ndEHhc/47aram8dgN7LnfuE62Xu
 D6pfGGprYyxtFvGRlpXS3FcBmArjExX8BBcPU7MS1HQ9pMosiJmwF+BmmEzgGkkA6vAZ
 +az44bWhDY1GeZBB5NdfOlX9z23rfNSVFOSwOEwaC2CiJKgToPEwtabh6f6iqPDKgHY2
 PWi4jQqdTj5b3CMGpLiTS0iW/D+V55AJQdlEE5EWKnuRFpgKqg4cJ+pG96EnV+VfRAeM
 5jh4OBgl4/ANVzGA8zfAaT5eqpEylqcUMZSgFlTdGCyRJTWOLuQBzRTZn8cynwaURogl
 CbLw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=ipjka0Q+
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/9] igc: Add support to set
 MAC Merge data via ethtool
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

Hi Faizal,

On Mon, Dec 23, 2024 at 05:23:27PM +0800, Abdul Rahim, Faizal wrote:
> To recap:
> 
> Standard range: 60, 124, 188, 252 (without mCRC).
> i226 range: 64, 128, 192, 256 (without mCRC).
> 
> The current IGC_TX_MIN_FRAG_SIZE is incorrectly set to 68 due to our
> misinterpretation of the i226 documentation:
> "The minimum size for non-final preempted fragments is 64 * (1 + MIN_FRAG) +
> 4 (mCRC)."
> 
> The calculation above is for the fragment size on the wire, including mCRC.
> For the TX preemption point and pure fragment size, mCRC should not be
> included, as confirmed by the hardware owner.
> 
> On RX, i226 can handle any size, even the standard minimum of 60 octets
> (without mCRC).
> 
> What would be ideal for i226:
> Min frag user set 60:64 → Multiplier = 0.
> Min frag user set 65:128 → Multiplier = 1.
> (And so on)
> 
> To make this work and reuse the existing code, we’d need to tweak these two
> functions:
> ethtool_mm_frag_size_add_to_min(val_min, xxx)
> ethtool_mm_frag_size_min_to_add(xx)
> 
> With the current code, if I pass 64 octets as val_min to
> ethtool_mm_frag_size_add_to_min(), it returns error.
> 
> Proposed modification:
> Add a new parameter to ethtool_mm_frag_size_min_to_add() - maybe let's call
> it dev_min_tx_frag_len.
> 
> Set dev_min_tx_frag_len = 64 for i226, 60 for other drivers.
> This field will be used to:
> (1) modify the calculation in ethtool_mm_frag_size_min_to_add()
> (2) as a warning prompt to user when the value is not standard, done in
> ethtool_mm_frag_size_add_to_min()
> 
> I was thinking (1) would modify the existing:
> u32 ethtool_mm_frag_size_add_to_min(u32 val_add)
> {
> 	return (ETH_ZLEN + ETH_FCS_LEN) * (1 + val_add) - ETH_FCS_LEN;
> }
> 
> To something like:
> u32 ethtool_mm_frag_size_add_to_min(u32 val_add, u32 dev_min_tx_frag_len)
> {
>     return dev_min_tx_frag_len + (val_add * 64);
> }
> 
> So this will yield:
> Standard range (dev_min_tx_frag_len = 60): 60, 124, 188, 252
> i226 range (dev_min_tx_frag_len = 64): 64, 128, 192, 256
> 
> But what's not so nice is, the rest of other drivers have to set this new
> param when calling ethtool_mm_frag_size_add_to_min().
> 
> Is something like this okay ? I'm open to better suggestion.

I'm taking a break probably for the rest of the year, and spending time
for the Christmas holidays mostly off lists.

I didn't look through all your replies. Just regarding the one quoted
above: just don't use the ethtool_mm_frag_size_add_to_min() and
ethtool_mm_frag_size_min_to_add() helpers if they aren't useful as-is.
They are designed for a standardized NIC implementation. They are opt-in
from driver code for a reason.
