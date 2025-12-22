Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE244CD5D83
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Dec 2025 12:48:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F83D4068D;
	Mon, 22 Dec 2025 11:48:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hww3KwA9P_nv; Mon, 22 Dec 2025 11:48:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD01040751
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766404102;
	bh=5OThu/IjAGzkBq+quJ/q8oM4R3JgY1MkWRoPROf/868=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jtI78BXiprtdl7Z1jDnb9C6c+fj5eXsdvIpFCpU44l37EQXzqEu2gGqMoBzZh75Pp
	 hezFzqPBO9CMGqGPro0akYeIBbuVRNv/c88YHDy8n4CmauO/FOMf36orbHxd6x9tQS
	 EZkL+4Qb3ycloO1cfnlfOaJeOxz7OuqSX93j/q5nNhOEcW7F8vwBTxqioxMHcCuOaa
	 CU8R2ThJiduJReQF2GNhAMICZlB4/bYjx7JC9I3Ad61rRgGakVutf358ptwlFgb5oi
	 JemyE5Hx3P5PyMDDVwYyX9ZVnUEnbg4X9KvZTgCt5k5uiQYcTFdHSF2kK/v/JeRU67
	 nVFnYTEDAvXPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD01040751;
	Mon, 22 Dec 2025 11:48:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EC408BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 11:48:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0D0882219
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 11:48:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E1c8dqq19nBs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Dec 2025 11:48:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CAB2F82213
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAB2F82213
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CAB2F82213
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 11:48:19 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-524-6SGhXY2JOXqjbYwPeLDhgQ-1; Mon, 22 Dec 2025 06:48:17 -0500
X-MC-Unique: 6SGhXY2JOXqjbYwPeLDhgQ-1
X-Mimecast-MFC-AGG-ID: 6SGhXY2JOXqjbYwPeLDhgQ_1766404096
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-47a97b719ccso21866115e9.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Dec 2025 03:48:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766404096; x=1767008896;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5OThu/IjAGzkBq+quJ/q8oM4R3JgY1MkWRoPROf/868=;
 b=merfYahkv62/F00ljqSXEErus8alqQmOwR5BHAZcZfTVzRpasFK8Y4WBm17goybl4w
 gnILlcTFnuuhofF76zonmyoBmm1B10bXSwquE1Azbm6UPCvEjup0iHon4yIfH1LCIQn4
 d35wEsgQlIjdLV6pjvnMG6PMCZu2Y/U0tae+1WnJ5++WNAd5aym6Qyg4mretT9YN76z8
 gSTC+6FejYq3myETAnrqNmbFawQlwY6l0QnHFth3k+7uUezI/vPx8Gb5FMSFsEBbUTji
 /u7WKIOBqkvO6ext5/RF4BncpD6os+4/Z/Q8d6NwZ42m6EranL4KGFXLT7d7Wdv6H2DE
 RKEw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVaTxo5xKAUmI5lZLkNuIBk9QT3NX27omSyQvUiw6UyYerovO7vcYqvWnOmxuHhD0MaNtia4VkJfu4xyE/VEa0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw4J8tAcN6QsctGxqVQm3LBfZ7UBVaZRz3ISHI4n7LdUr6WUS0x
 LZKsvUOSmE3xE/YXJI2sxHnwQ3wOj7f1bG8KUY/mU/WxhiTmprzfVGCdLyH84uDcpsDkrymdRq0
 UsSuBlVbk8bJUSyAqqZVd40NGM3W/gZuQdPE68IMkLF/av8eocSVx12q5mqsy+1oDgB2VuwY=
X-Gm-Gg: AY/fxX5++zWHROR9UOqH0TuedM8y15dusVpHxcgEq8uXqCwPZ8Z94xXb6hKhIDtktLs
 tOfrYTLQrWleUyxOMdJlggb72dyjLNpzsosp7dSJ6ZlI4j1IR18nstkUa56o+NOgySMnA6bC52r
 bg0+IJzkD01O5RB+aufM+ZrmX1XLi0DKup08YzOdH0h1yzCeq4FksHUARITcO9Yk3a0t+LnWD+l
 IEjQTiJN5PmvABO0bnnSnVLdjUH5uzQj8zjy3MBC0urAaHK1pzJ/Cg8TroqObYUKPzUj0OhqP6m
 YCycChG+ehW5cOjgeWUJdCbbkWTdOv1lkmhNCHMYMhCHajrKrEN1NQg94cBXsin4FHVj8S08Elj
 0QIy5NNKOLjkw
X-Received: by 2002:a05:600c:1d1d:b0:479:1348:c61e with SMTP id
 5b1f17b1804b1-47d1957d746mr102206315e9.20.1766404095686; 
 Mon, 22 Dec 2025 03:48:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEXcVpJ9XpL3tNS1cQvFyqPl/3DvxNFYL21GwwhDXV+oXv+RLFBPB9kKJPW2oylc2cqKXev9g==
X-Received: by 2002:a05:600c:1d1d:b0:479:1348:c61e with SMTP id
 5b1f17b1804b1-47d1957d746mr102206145e9.20.1766404095316; 
 Mon, 22 Dec 2025 03:48:15 -0800 (PST)
Received: from [192.168.88.32] ([216.128.11.164])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4324eab2ebfsm21330135f8f.40.2025.12.22.03.48.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Dec 2025 03:48:14 -0800 (PST)
Message-ID: <2ce23c9d-f348-45ce-a2e2-583c45b0fc31@redhat.com>
Date: Mon, 22 Dec 2025 12:48:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Mina Almasry <almasrymina@google.com>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: YiFei Zhu <zhuyifei@google.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 intel-wired-lan@lists.osuosl.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20251219202957.2309698-1-almasrymina@google.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20251219202957.2309698-1-almasrymina@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: dx158zClMCWleYPEk8yq8u1H3bUkeAvylpem4RpkpZI_1766404096
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1766404098;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5OThu/IjAGzkBq+quJ/q8oM4R3JgY1MkWRoPROf/868=;
 b=h2zMOafhSBS7dNcfXcVZSr/csE187+awzbXW/rNl/PQ+XAyQHRh1nTqYEnZgvk3/QGI7gN
 m6MRkw3XBvB75crwIoFaVURztPjEJJGEtgI5uRn2P/If1HAHmoo3HqFqrlvr7NrFBO+fTi
 BnFIzVb4X/5GY/HxqmpMCjutOI52U7Q=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=h2zMOafh
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] idpf: export RX hardware
 timestamping information to XDP
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

On 12/19/25 9:29 PM, Mina Almasry wrote:
> From: YiFei Zhu <zhuyifei@google.com>
> 
> The logic is similar to idpf_rx_hwtstamp, but the data is exported
> as a BPF kfunc instead of appended to an skb.
> 
> A idpf_queue_has(PTP, rxq) condition is added to check the queue
> supports PTP similar to idpf_rx_process_skb_fields.
> 
> Cc: intel-wired-lan@lists.osuosl.org
> 
> Signed-off-by: YiFei Zhu <zhuyifei@google.com>
> Signed-off-by: Mina Almasry <almasrymina@google.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

@YiFei and Mina: I believe this patch should go first via the intel
tree: please replace the 'net-next' tag prefix with 'iwl-next' on later
revision, if any.

Thanks,

Paolo

