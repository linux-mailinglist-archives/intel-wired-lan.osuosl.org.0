Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4946D0E4A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 21:05:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 537BB60AD4;
	Thu, 30 Mar 2023 19:05:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 537BB60AD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680203115;
	bh=i+tqpqD9rG96kj1Mx9VVARXLiTun3IeHYitZQ79KleU=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jVdS4bY1bwKu4FfjixgjS4y8wMAsAKbhyn9F2f5usGdqIq0an/T4uAOlJtJCsaaVX
	 FhqnwC9NHqDcMTvMzmANskEFRLkjvT+EmgKnpqAHhqJiqqTJ/maw63ddsDC447UYyF
	 QLV4veZwQyBAC6qJowbURUQgMISx5s+11Kpp8uwjvmPjYeRqaaqO38W+1+ZZqfqg92
	 8KzHv8zKz7qR26QkUr/yUowPcYtul1LPcqqN2QbVD+moHREH1cbnUtsQfcQVA8wnVL
	 Frbf/zJmHp+XUrTXQKBudXaP0FiBtEi5+Bg/t/RH3+era9+m+9Slkja94TYIyRqHKw
	 +eJw69Wg5XuZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id saU4IgT4miKe; Thu, 30 Mar 2023 19:05:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34FBF607F1;
	Thu, 30 Mar 2023 19:05:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34FBF607F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 16ADA1BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:05:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E19BD41897
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:05:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E19BD41897
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bBvP64979mpz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 19:05:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B07541E19
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0B07541E19
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:05:07 +0000 (UTC)
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-586-jz6h6qFSNcqFvLZv_z45vA-1; Thu, 30 Mar 2023 15:05:02 -0400
X-MC-Unique: jz6h6qFSNcqFvLZv_z45vA-1
Received: by mail-lj1-f198.google.com with SMTP id
 bj25-20020a2eaa99000000b002a4c905cd3dso3731770ljb.22
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 12:05:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680203101;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=AjWL/5ulXSBNWvEtpYPDT+pUxocHBbNGFxfjDnuHH+M=;
 b=V18L7qKcT1zaTUNlwtomoJVMbdlYbJKoHsCsZPZcR9we/qLX4TgK6++Kbx8OrXWdIO
 Vj1ojT6Pn9IlFchFxj0hTXc7IYXXo/WedSjAXNk8lRl+vMb8pk0qELuIGkHpw2ZcMhyw
 SlHuGPrKowhXRSSyaBtH9ZJuBueDPo6WTQmB/yCDeI7YBgT6hbGZJfMy6cRp1MHbKD0k
 lYzSQ7LYc9X+dy7jlZgQAj5HQz4hQNLM/oTc+PIXj82KCV0mB9aoVemytRaZ4scmmG6Y
 Q9k1YF7XAJGpop5B6ErFzNEXOGE9f4sSqxPVua5pCH7ev1sHZDx1jfJKXHb5+Ar8fZlg
 nCjw==
X-Gm-Message-State: AAQBX9ee0gymK+oPhYHCc54UlZogczMc8LZFJczSZyxdKA63J688qbyG
 NrkotRHtMTj8XJBlGNWkNB06UMQwo1EVfyUZUuHeeuKFktyoriZLgZT3pe5b/Enr2Kqf/RljieB
 T040pqcepjlj7UUFt33WIwsrUtvb/dw==
X-Received: by 2002:ac2:596f:0:b0:4eb:e03:9e6c with SMTP id
 h15-20020ac2596f000000b004eb0e039e6cmr1997558lfp.33.1680203101214; 
 Thu, 30 Mar 2023 12:05:01 -0700 (PDT)
X-Google-Smtp-Source: AKy350aLpoXMI1x1xPT2ugdceXR972Lacx2zk/SiRRmV+Uf/xnP2xCALcA41ZMbTbuQxJnhXH31Y/w==
X-Received: by 2002:ac2:596f:0:b0:4eb:e03:9e6c with SMTP id
 h15-20020ac2596f000000b004eb0e039e6cmr1997548lfp.33.1680203100914; 
 Thu, 30 Mar 2023 12:05:00 -0700 (PDT)
Received: from [192.168.42.100] (83-90-141-187-cable.dk.customer.tdc.net.
 [83.90.141.187]) by smtp.gmail.com with ESMTPSA id
 v28-20020ac2593c000000b004e9b42d778esm57581lfi.26.2023.03.30.12.04.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Mar 2023 12:05:00 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <3423b37b-43d7-e9ee-6b1b-768b255a2773@redhat.com>
Date: Thu, 30 Mar 2023 21:04:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Stanislav Fomichev <sdf@google.com>
References: <168019602958.3557870.9960387532660882277.stgit@firesoul>
 <ZCXXIvvnTBch/0Oz@google.com>
In-Reply-To: <ZCXXIvvnTBch/0Oz@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680203106;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AjWL/5ulXSBNWvEtpYPDT+pUxocHBbNGFxfjDnuHH+M=;
 b=SzvVwGkcnaN8SMeJnaWqtuxV8JQMjux0rrCfEGQ8pShvHTe5CRCagSftF6Ngq13Cu2IAG8
 RVRh42pgYc0I0vQ0T+f330ZLBOPaJWMtQG6YDYjYKDM5lQJjJhHpG4PU9h/n6qRZ6D8SCG
 pDgciZ0NsD4wwG3mGjAkdzAYvDbs41U=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=SzvVwGkc
Subject: Re: [Intel-wired-lan] [PATCH bpf RFC-V3 0/5] XDP-hints: API change
 for RX-hash kfunc bpf_xdp_metadata_rx_hash
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, linux-kernel@vger.kernel.org, jesse.brandeburg@intel.com,
 kuba@kernel.org, pabeni@redhat.com, yoong.siang.song@intel.com,
 brouer@redhat.com, boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 edumazet@google.com, hawk@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 30/03/2023 20.38, Stanislav Fomichev wrote:
> On 03/30, Jesper Dangaard Brouer wrote:
>> Notice targeted 6.3-rc kernel via bpf git tree.
> 
>> Current API for bpf_xdp_metadata_rx_hash() returns the raw RSS hash value,
>> but doesn't provide information on the RSS hash type (part of 6.3-rc).
> 
>> This patchset proposal is to change the function call signature via adding
>> a pointer value argument for provide the RSS hash type.
> 
>> Alternatively we disable bpf_xdp_metadata_rx_hash() in 6.3-rc, and have
>> more time to nitpick the RSS hash-type bits.
> 
> LGTM with one nit about EMIT_BTF.
> 

Great, others please review, so I can incorporate for tomorrow.
I will send a official patchset V4 tomorrow.

--Jesper

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
