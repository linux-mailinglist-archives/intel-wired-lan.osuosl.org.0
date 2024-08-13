Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 410F7950D0D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 21:20:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E41340B14;
	Tue, 13 Aug 2024 19:20:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G_igM5AUctP7; Tue, 13 Aug 2024 19:20:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E9EF40AF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723576801;
	bh=bXP2A7Yp0aLXfQfJVM0Q1xT0ky4rj4OjQsff/aI+tMU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Erbcx4akoXI1fp2OYsglIJIIFcWByRuUo12+B8Ctw4/FNJ24MBDbLEpTI8fioxQi7
	 M8dhzIY2K1anjY39e9ttYKdSvLcZYb/QsBBDZEnohDkeuYtcUkVWW9xJKETf0yzn9e
	 pnY3/kkwMtkKNojntLNtuGztUnnjhDn7wryyoP67xUmcBEdEUhvF4uVEu72ICcBhRs
	 dAgo/X+MxsRYkjaKyQlcEw5F5PUDQ3PHNX27Ke6wiTRkixpTXsMj5VSaW7r57v9wn0
	 BMvmEfAh/0y1DXGIPyRNvdylfxi4h3ukLnXjSwux/s23OJq2OVR0W1LbPvspkHlih6
	 ORnqCJKfrlO1w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E9EF40AF5;
	Tue, 13 Aug 2024 19:20:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 991621BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 19:19:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 85605401CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 19:19:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LOqhawLafJDE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 19:19:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f32; helo=mail-qv1-xf32.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8751040112
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8751040112
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com
 [IPv6:2607:f8b0:4864:20::f32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8751040112
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 19:19:58 +0000 (UTC)
Received: by mail-qv1-xf32.google.com with SMTP id
 6a1803df08f44-6bd6f2c9d52so25967976d6.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 12:19:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723576797; x=1724181597;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=bXP2A7Yp0aLXfQfJVM0Q1xT0ky4rj4OjQsff/aI+tMU=;
 b=XWVbyR9NFBT7fg7SLN3hZOFy7NEAK8NCklghnCcHeqDSlbYMDeLWcyiyU5De3e20l7
 NJXNWH8o1vvSPqAFfEBONFCiXWnGAgYBHbCPqBkv+dBM8gRq345rNQNAvVBuGUJ5yVPb
 ugRk9kP3vpCwnkAtCdE9GJ9NeQB9rC7zY9v21CKhDa6FQxJ2p/smiGpnwN+hb3QJgj/V
 jyILucT4EF2liqXjuJ9TJYCfvm43c4TW+Xu1z6Z2FE3v+kZnSeAr5dRP8uxaSNjnOHWD
 fLNkVDuNdTwyAkyRu9jf46ho3cf5re5TCtsK7FCUwoTY/jwzg12CT9RzP539yorWijYj
 vbpQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXNNYAQh97pD94qVuhpE5mn41VepwnJspmeDxi29sukCurPN6PKk5pMIT8QH+fTmzImJMHeZwxSjRsJTQ84jsFeEk8QhXlLQF0/oCOC2R+IKA==
X-Gm-Message-State: AOJu0Yzi1eafyR/DV5l4SkGKS5cVXsskTGEnZRztveciqVlU6qJ7qMZ8
 ll0VaH0fOao9422+i95bw3e06HWjIApgaxVmrW/+bQ0QU6S/M/ES
X-Google-Smtp-Source: AGHT+IE//BtTdgGtcjY8KsbsPDOzbBdfE4Wbq7FrqHt1qDrQehdsHgj5k0ppLZ6VyszfHnaXk9S6sA==
X-Received: by 2002:a05:6214:3a08:b0:6bb:3f92:13d with SMTP id
 6a1803df08f44-6bf5d24a89amr4791716d6.24.1723576796290; 
 Tue, 13 Aug 2024 12:19:56 -0700 (PDT)
Received: from localhost (73.84.86.34.bc.googleusercontent.com. [34.86.84.73])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6bd82c7d684sm36691996d6.33.2024.08.13.12.19.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2024 12:19:55 -0700 (PDT)
Date: Tue, 13 Aug 2024 15:19:55 -0400
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Manoj Vishwanathan <manojvishy@google.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <66bbb1db36a9c_8a56a29485@willemb.c.googlers.com.notmuch>
In-Reply-To: <20240813182747.1770032-6-manojvishy@google.com>
References: <20240813182747.1770032-1-manojvishy@google.com>
 <20240813182747.1770032-6-manojvishy@google.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1723576797; x=1724181597; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bXP2A7Yp0aLXfQfJVM0Q1xT0ky4rj4OjQsff/aI+tMU=;
 b=cfu1BdqbC6leWdWbEnWCsvKyEtsbkZcCxkhqgkYAtw71vnZg46R1zh9GT7p/zNglSH
 8QrEpZ3NYtyud6p26c3WbDjyvgbbo3fGcBReE0QCnUMmovbXuFAEnOqAvYbzDqT2ktSS
 QvICM8ny+gAyly1pzugptr3E2HqeDVx/yczwvzjnKICw6i7iv6phH7vcFfOmfI3K5ztN
 Eoijn9FwLXvpnjedEkA2pvnf4BVprHGdta07Yfx7ACMF8Ik1lQklCHY0zg016XhE9Fh/
 ckzu14EqBl3SElH7Z0c6WRNIA9UgHRVAKcZ5w5ca52Hrre9OFPlYUgAivh6PrPGLTmYW
 qCTQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=cfu1Bdqb
Subject: Re: [Intel-wired-lan] [PATCH v1 5/5] idpf: warn on possible ctlq
 overflow
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
Cc: netdev@vger.kernel.org, Willem de Bruijn <willemb@google.com>,
 Manoj Vishwanathan <manojvishy@google.com>, linux-kernel@vger.kernel.org,
 google-lan-reviews@googlegroups.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Manoj Vishwanathan wrote:
> From: Willem de Bruijn <willemb@google.com>
> 
> The virtchannel control queue is lossy to avoid deadlock. Ensure that
> no losses occur in practice. Detect a full queue, when overflows may
> have happened.
> 
> In practice, virtchnl is synchronous currenty and messages generally
> take a single slot. Using up anywhere near the full ring is not
> expected.
> 
> Tested: Running several traffic tests and no logs seen in the dmesg
> 
> Signed-off-by: Willem de Bruijn <willemb@google.com>

This was an internal patch. Not really intended for upstream as is.

> Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 07239afb285e..1852836d81e4 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -218,6 +218,15 @@ static int idpf_mb_clean(struct idpf_adapter *adapter)
>  	if (err)
>  		goto err_kfree;
>  
> +	/* Warn if messages may have been dropped */
> +	if (num_q_msg == IDPF_DFLT_MBX_Q_LEN) {
> +		static atomic_t mbx_full = ATOMIC_INIT(0);
> +		int cnt;
> +
> +		cnt = atomic_inc_return(&mbx_full);
> +		net_warn_ratelimited("%s: ctlq full (%d)\n", __func__, cnt);

A single static variable across all devices.

If this indeed should never happen, a WARN_ON_ONCE will suffice.
