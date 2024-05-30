Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D398D4D01
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2024 15:46:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 30C5A41414;
	Thu, 30 May 2024 13:46:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vj-8NzIfGJSD; Thu, 30 May 2024 13:46:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12B2C4140D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717076812;
	bh=JOMlhJdODi5S81vxmDzTXqQ87xqgKAfMMIbljNey/4I=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iuzgO5giuPuy5n7p6hXWNY3Mb3/fD4ilBEFTnEOdPQ/HqNWFWEFojfQS5BvbKFVv3
	 4f01vXd/jRzg9cYko0fA0smNf8BPamSuv/CIHaFPWS82ATr2hgyHKz3lyhw41sgEQq
	 el07nNDpEgA2ialJdwv2Q+Ugoqf3zhNXE64cX4g05eZSk42EId+LVA+HqldseZSfm6
	 bm5v7ehB4caip/wUxnrhUISKu4HQX0xmyTqWRXnEAU7mgr4JMj2QOFHR3+yRM3qdKU
	 CXILHc5Acp/xpb6o//oP6JpJ+7Ccq8Z3GhHW4hRlvijxwRYa3jcHekUIQs+0MRDTcW
	 pqKhb59GlQDwQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12B2C4140D;
	Thu, 30 May 2024 13:46:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 285F11D470A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 13:46:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 219AC4140B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 13:46:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NM3aC9Qaczzj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2024 13:46:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::72e; helo=mail-qk1-x72e.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 035F1413AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 035F1413AC
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com
 [IPv6:2607:f8b0:4864:20::72e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 035F1413AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 13:46:48 +0000 (UTC)
Received: by mail-qk1-x72e.google.com with SMTP id
 af79cd13be357-794ad6d2884so65410385a.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 06:46:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717076808; x=1717681608;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=JOMlhJdODi5S81vxmDzTXqQ87xqgKAfMMIbljNey/4I=;
 b=AZ9NQRnBRdgwKJ5n997d9YkzHF79vh9rh3orZHujklQd6L7iBZ0dFB7bIAvolVwH/1
 hU53B/hLa9bRmQ+PYZ6jU7AMGvIvrCZAdG30MTgrArceFNAf6pqMTroF144ST3tjaIa6
 XNXvkWhtlyKh7VmG5U0+9FMZc9TaoAtlaGIUHq6jZOkiSEqc6oay0QAUffrebeB1SNjw
 z4djofmtQvJ24OxyoXw9wK8olIWEBbJzPirKlYs/a/sf4I9nDCtPlUHCRfQhzK/Y0ikf
 68pp0NpwwKBZOe6ecOD3GqibePnG7HznbPmRurIxDRyK+NRmK1cpCs+H8uXpdu9HLxlj
 w7iQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWEe/a3/7xwclgWf/ZLZXBABxqynmgGk7RwN391196nHzwjJzfx6Ont/CnwgDC++9Q5LJ/ZMTQUgfJ82KvjdVrzbGlLNaLxRoCMECqjW7dB5w==
X-Gm-Message-State: AOJu0YyGyARUrQyR0nYwAfIrS39C4nAsB4eBj3tJt++9aY2zGqkLY+FM
 ATJK31KQYuYPyn3MToKOCVuTfYqOeieSnd/TnqapdepYB6hKei0c
X-Google-Smtp-Source: AGHT+IHk8gB06uYJcTbM0d3rugqg/RHxJxqiOL7lqKc4wBBMn8XEVJk0W8XYP5CGKnJP59Ao+hpJkw==
X-Received: by 2002:a05:620a:2017:b0:792:bd32:bba7 with SMTP id
 af79cd13be357-794e9da643amr230268885a.25.1717076807598; 
 Thu, 30 May 2024 06:46:47 -0700 (PDT)
Received: from localhost (112.49.199.35.bc.googleusercontent.com.
 [35.199.49.112]) by smtp.gmail.com with ESMTPSA id
 af79cd13be357-794abd08e8asm555462585a.87.2024.05.30.06.46.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 May 2024 06:46:47 -0700 (PDT)
Date: Thu, 30 May 2024 09:46:46 -0400
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Message-ID: <66588346c20fd_3a92fb294da@willemb.c.googlers.com.notmuch>
In-Reply-To: <20240528134846.148890-12-aleksander.lobakin@intel.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-12-aleksander.lobakin@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1717076807; x=1717681607; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JOMlhJdODi5S81vxmDzTXqQ87xqgKAfMMIbljNey/4I=;
 b=XZvMGoLVGqqKDlG7CGHBcGuatYRgMjwaWRv7ceQlF8LuCPQwrjTiMnh+/M8e9TC4Wl
 VyxfdntCxal3ofIRG0Gi8sdbCJqatgC6jsa7XLlBWDnqTSHaL2zfpQlCA7uRV3o0cF+e
 z/Y1l7uAcnCmi5wvNy5cNNzSjVg8Ti7iDtKidMf7mBV/VgJGLBZYhczjLGpbxQXMzWT6
 SC2ClVMD6N1UJSLHpLVMBFL3+BIeaf2UqUaitjCSn6MS3xpZjHEVKnzPg+HIDEjO1U2K
 acyY0Ggm7dYy4G+Xr4oPKnGJt6tPhARXNjrJeHMax8Ko1cmgGYxP46FL7nEAE3jY42ua
 uEAA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=XZvMGoLV
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 11/12] idpf: convert header
 split mode to libeth + napi_build_skb()
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
Cc: Mina Almasry <almasrymina@google.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Alexander Lobakin wrote:
> Currently, idpf uses the following model for the header buffers:
> 
> * buffers are allocated via dma_alloc_coherent();
> * when receiving, napi_alloc_skb() is called and then the header is
>   copied to the newly allocated linear part.
> 
> This is far from optimal as DMA coherent zone is slow on many systems
> and memcpy() neutralizes the idea and benefits of the header split. 

In the previous revision this assertion was called out, as we have
lots of experience with the existing implementation and a previous one
based on dynamic allocation one that performed much worse. You would
share performance numbers in the next revision

https://lore.kernel.org/netdev/0b1cc400-3f58-4b9c-a08b-39104b9f2d2d@intel.com/T/#me85d509365aba9279275e9b181248247e1f01bb0

This may be so integral to this patch series that asking to back it
out now sets back the whole effort. That is not my intent.

And I appreciate that in principle there are many potential
optizations.

But this (OOT) driver is already in use and regressions in existing
workloads is a serious headache. As is significant code churn wrt
other still OOT feature patch series.

This series (of series) modifies the driver significantly, beyond the
narrow scope of adding XDP and AF_XDP.

> Not
> speaking of that XDP can't be run on DMA coherent buffers, but at the
> same time the idea of allocating an skb to run XDP program is ill.
> Instead, use libeth to create page_pools for the header buffers, allocate
> them dynamically and then build an skb via napi_build_skb() around them
> with no memory copy. With one exception...
> When you enable header split, you except you'll always have a separate
> header buffer, so that you could reserve headroom and tailroom only
> there and then use full buffers for the data. For example, this is how
> TCP zerocopy works -- you have to have the payload aligned to PAGE_SIZE.
> The current hardware running idpf does *not* guarantee that you'll
> always have headers placed separately. For example, on my setup, even
> ICMP packets are written as one piece to the data buffers. You can't
> build a valid skb around a data buffer in this case.
> To not complicate things and not lose TCP zerocopy etc., when such thing
> happens, use the empty header buffer and pull either full frame (if it's
> short) or the Ethernet header there and build an skb around it. GRO
> layer will pull more from the data buffer later. This W/A will hopefully
> be removed one day.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
