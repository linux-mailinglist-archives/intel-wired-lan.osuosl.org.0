Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB29D18A37
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 13:09:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A871683B62;
	Tue, 13 Jan 2026 12:09:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nrRJgveHXP_0; Tue, 13 Jan 2026 12:09:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C854783B6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768306195;
	bh=bsGcz1WvRRNjaeiS8L2jAs44Dq1ERVZgiS9YT2RR8qE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xcN5C3pVRjk/v/1B5yaXC+TlnIZRTICZdxoq1AiE53uxMVRyl1J6ZXjGAOPMDzpeF
	 l9Mp6vbqSCIuPfJ7bwiCSMsdND6fQN2vmJg9ucL+QCGQAkkPR+93+NuKyEfL5fL+RI
	 ScFO77vqF1LRfxQsRTUEukgLnyAU8Yr16L8Kkz9hiKRcuPsBk9hHC/x1gAxulvkywA
	 6X1Ody1bdsp4uDr1WhT0TkipxAnEzBVUAQsRj+IXHTlQO/u/i7CR/fFyKg3JhQQPRS
	 eAu3rkAwhrI060LQTFGZ985U5/qryIVrR0rcAFeniy+WwQGa1c+8fMklxHLlO38qMR
	 UvuKqxcK+tzTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C854783B6A;
	Tue, 13 Jan 2026 12:09:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id ABE111C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 913F36F670
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:09:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TAhuLzo5u5i1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 12:09:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6E9A66F66F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E9A66F66F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E9A66F66F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:09:52 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-377-y_4QTZPCPzmodm0jgIR-Xw-1; Tue, 13 Jan 2026 07:09:49 -0500
X-MC-Unique: y_4QTZPCPzmodm0jgIR-Xw-1
X-Mimecast-MFC-AGG-ID: y_4QTZPCPzmodm0jgIR-Xw_1768306188
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-4779ecc3cc8so52027415e9.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 04:09:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768306188; x=1768910988;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=bsGcz1WvRRNjaeiS8L2jAs44Dq1ERVZgiS9YT2RR8qE=;
 b=gx4Pc2nYsXVdQd3k1WjA597bJ2Rjgz7QgxgHQv4RVwwGnvKmo9T99eQxfIyRbXWJL1
 rpOPZLYegVmnjARffxPS7XePYDl/z9G0hgn7dui4MAyKvtlh3kPpk/nLAYhijObHrWDs
 iat4xPMl22BMel/fxZl4qbPsVcqHvvS4ETKU+7Dp6RHXRAHuYJUmDSTugabOVqjxvRtG
 90H6BdMt+W1UTQEeZh2VnKmzdDTlC3DOSLUAn8LZ8B9TAyEKcP9W8/OuxC15pyzWVZGZ
 nviUcjRPt6ZruwYXHmGU+36JaReMl3xJa3go7TyRgRXGivpPsVDL76vGMzItVa3oahJh
 2YNg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVrxb6ga6+RY1N/5S6g3BBg3LvGaLbNEVQ32g/L9VRdOkIJlWcc0dV1CxX2feqa/lX3L30bg6gHd+SjifJzcfM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzIwhZnpeFVsD+bWrjLLU+DiT24O6vhUwOhSOSDGkTvslNzTA9o
 7k2hHHMgNqvasWXTpiWO9aF4ANhD4UHWEJbikBquQSjIl2j7KAwlyXAsYhVA3X0JBtP2VLy3m96
 dfyMjUzj50YkNy4v1ncnlNm/vcO3SM+mO/0+VAuEdahoFrNzGbXBnXnM4GMBjw+bNTcvbPlY=
X-Gm-Gg: AY/fxX4/uCrrQvzmFp3RATvo1AGz3gHK8OUJ+cxsubygsX9u8kXUhn1kKIEW+2Ek0KQ
 VBJuDzTR4X7Btr0DQdMe0Cq3JOHnqB16cEEB8IVCDEs/k4Kwyp/y42MzXWl7CzJzAbcPvIo4EEO
 6ZfV1idqrNFf1tvtXYYwQccXq4a2DsTa0PlRb4r+k/QUbJcLB92oFTkU/rwasc4TQMSUBhxSiMO
 UbyxaX/bk7oE7qFUgZaoBquhWBuSer1hSMI6lBJZYtvH3DcS0eu8r5t3pPiyEnqB83eatp5HIdZ
 GmtOJ8wS5ARGTRFotseDS4ZCgVKz2Igiaz6o8ZFyGHt2rhSLdvPv7WdeCOTyppFVspcVvV+1qJc
 vTwt5u+BV8hZY
X-Received: by 2002:a05:600c:500d:b0:477:b642:9dc1 with SMTP id
 5b1f17b1804b1-47d84b3baa1mr178881715e9.20.1768306188259; 
 Tue, 13 Jan 2026 04:09:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFbuQTgjpKPcD3xlT3gcWAoP5ISZy4bXMwf1kvmiWmEM/sGrJ6JqtEl7Khb8z0QKPsiYSNlnw==
X-Received: by 2002:a05:600c:500d:b0:477:b642:9dc1 with SMTP id
 5b1f17b1804b1-47d84b3baa1mr178881355e9.20.1768306187854; 
 Tue, 13 Jan 2026 04:09:47 -0800 (PST)
Received: from [192.168.88.32] ([212.105.155.93])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-432bd5ee893sm43465294f8f.37.2026.01.13.04.09.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 13 Jan 2026 04:09:47 -0800 (PST)
Message-ID: <36deb505-1c82-4339-bb44-f72f9eacb0ac@redhat.com>
Date: Tue, 13 Jan 2026 13:09:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Jakub Sitnicki <jakub@cloudflare.com>
Cc: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, kernel-team@cloudflare.com
References: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
 <20260112190856.3ff91f8d@kernel.org>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20260112190856.3ff91f8d@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Hg-8QNZkXgFV3g1GV6hQo6URTrcQEN0mMTb9bFv3yaY_1768306188
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768306191;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bsGcz1WvRRNjaeiS8L2jAs44Dq1ERVZgiS9YT2RR8qE=;
 b=AJrLH5vDCYMeWDVuz/XQeT6Q31k4MT7kVEmoCqJzGKuZFcJFwkdjUHVFcSUMnrEiNw5xt+
 q0ZHu+uIvyYTxRIEbjpWIRwPGtDjWRA7g2nmHRzT/RRunXMndCx2YfgH1ZfZPNi8FPhWGd
 p9b2oGhWsLcxDDYSOHzbrHZVlbg0PSE=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=AJrLH5vD
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/10] Call skb_metadata_set
 when skb->data points past metadata
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

On 1/13/26 4:08 AM, Jakub Kicinski wrote:
> On Sat, 10 Jan 2026 22:05:14 +0100 Jakub Sitnicki wrote:
>> This series is split out of [1] following discussion with Jakub.
>>
>> To copy XDP metadata into an skb extension when skb_metadata_set() is
>> called, we need to locate the metadata contents.
> 
> "When skb_metadata_set() is called"? I think that may cause perf
> regressions unless we merge major optimizations at the same time?
> Should we defer touching the drivers until we have a PoC and some
> idea whether allocating the extension right away is manageable or 
> we are better off doing it via a kfunc in TC (after GRO)?
> To be clear putting the metadata in an extension right away would
> indeed be much cleaner, just not sure how much of the perf hit we 
> can optimize away..

I agree it would be better deferring touching the driver before we have
proof there will not be significant regressions.

IIRC, at early MPTCP impl time, Eric suggested increasing struct sk_buff
size as an alternative to the mptcp skb extension, leaving the added
trailing part uninitialized when the sk_buff is allocated.

If skb extensions usage become so ubicuos they are basically allocated
for each packet, the total skb extension is kept under strict control
and remains reasonable (assuming it is :), perhaps we could consider
revisiting the above mentioned approach?

/P

