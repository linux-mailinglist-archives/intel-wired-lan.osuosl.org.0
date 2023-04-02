Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0DB6D3654
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Apr 2023 10:37:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C9F681FB9;
	Sun,  2 Apr 2023 08:37:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C9F681FB9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680424673;
	bh=4inbPSqgRo8RJSHzw6yJaVMO86B9DE5Lzo0+wkJpqSM=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gPE7SHbYlFvRW1FF613fYXwxUUYOFPj9Jspw+vQmK48zdiipqZdrFdbkXSWGAT7zZ
	 /FpLiDrvTz0K1uLLBse7fx5p1/x8Fks4zAVG9XOHWGNekj68Ckl6dbW7PXy+/F9avR
	 E6pPgTP/WIsAuUqEIH0ktOm2Iy3U63cAydUjAfHb4fhQlSi2isr+Sx4JF9PAYspM9F
	 dClIAA+LhQt3mm2gPzxn7qYaqh8+CL3vPjgFwJQEeoAnNwlv1i4CtbQz2BeBd2luuK
	 zJ4wxjB7KZCjRLFYh6Nci+R2I4cu72ROJ/ZvQY+O7cqu9qTZ0sbuOdt7TLbTKxBa6F
	 46nDM33s/6PuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id siKWKYApqkhL; Sun,  2 Apr 2023 08:37:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F05D81F8C;
	Sun,  2 Apr 2023 08:37:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F05D81F8C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EEE11BF57B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 08:37:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 61EE64168F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 08:37:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61EE64168F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xrgE9HP7iuH4 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Apr 2023 08:37:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41F594168A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 41F594168A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 08:37:40 +0000 (UTC)
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-365-w2xm3OZhMXubNHYGXyJ3lw-1; Sun, 02 Apr 2023 04:37:36 -0400
X-MC-Unique: w2xm3OZhMXubNHYGXyJ3lw-1
Received: by mail-lf1-f70.google.com with SMTP id
 o23-20020a05651205d700b004cc7af49b05so10489131lfo.10
 for <intel-wired-lan@lists.osuosl.org>; Sun, 02 Apr 2023 01:37:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680424654;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=i924t6g/U8Sz5oZNi8eHpwH9+wgHgEL8rUIeN7Yevhk=;
 b=JXg8Fs/B0lBTXUd3KLD/5nswqkM0aAS0LrRcQUXwwJL9oNcf5S8v96H3UnlPJFf6ts
 XR3/lNuM79qV8XBz2+k9ci4yFK44ECQldSyOjpvQGsQjmIw5AaL4yaKjPKX/QyxS+3j7
 xpjMQZJd2zoq2DGqzoGXGYhlXPQ7DIq754y/AvEY5I/7+IpWBuWbCGDiEbaYn8UELBq4
 LYvpWUJswagaEo6Uave1OspWpQpbYH5OSWqzFNt47RKXr/FV9aW4zOMCBuAXlDAV3ciw
 Rr5iGI0x0ajjm9qYEN2P0iKaltr4b1xg5Agv9WPdTO5XSm3gWOKtFG/AzrAZAQZBcg47
 mqkw==
X-Gm-Message-State: AAQBX9e6vOqAhCYVAz8tO2F+Dj08VSW2So/TsMuBuX5CX5ZNPCHyv9sZ
 Qa+jiWEzTuaeB+61BRu12iPkEszB3yaInevdt9thrtm94pFR/vJ852PfTRqqEAHMG6c8MeHLJaM
 apj2Qe6yh44YhwcO2bbpI38krMy1eSQ==
X-Received: by 2002:a19:7613:0:b0:4db:3e56:55c8 with SMTP id
 c19-20020a197613000000b004db3e5655c8mr9495426lff.59.1680424654643; 
 Sun, 02 Apr 2023 01:37:34 -0700 (PDT)
X-Google-Smtp-Source: AKy350YT4NdKfptHbUEwzqYe1WUNC6ROtPlFgUhwZhzhr8UJaaCb11s1bFmgFwrE8lhNBuBu1uo19g==
X-Received: by 2002:a19:7613:0:b0:4db:3e56:55c8 with SMTP id
 c19-20020a197613000000b004db3e5655c8mr9495407lff.59.1680424654319; 
 Sun, 02 Apr 2023 01:37:34 -0700 (PDT)
Received: from [192.168.42.100] (83-90-141-187-cable.dk.customer.tdc.net.
 [83.90.141.187]) by smtp.gmail.com with ESMTPSA id
 j18-20020a19f512000000b004eb2eb63144sm1114728lfb.120.2023.04.02.01.37.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 02 Apr 2023 01:37:33 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <df64f630-93e6-1ec3-83bc-4584f2856acb@redhat.com>
Date: Sun, 2 Apr 2023 10:37:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>
References: <168028882260.4030852.1100965689789226162.stgit@firesoul>
 <d4b3a22a-c815-a337-29b1-737efd9a7494@redhat.com>
In-Reply-To: <d4b3a22a-c815-a337-29b1-737efd9a7494@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680424659;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=i924t6g/U8Sz5oZNi8eHpwH9+wgHgEL8rUIeN7Yevhk=;
 b=VcaqYIgtcgBEs9Kucp2p6M0pjycG3Y5r3g9jo8yUkCiQwesGHLH5RSxi+rrOLjMuNvV9el
 lSszeT4pJAaKUdAOrhC9/fKYVGp6WrvE915Ahq5T5tx5DGg+2acJG3aOqzE4ehT/7uwWD5
 M2IuiVCPI5y4sM25qP6YFRG3rCv6BOg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=VcaqYIgt
Subject: Re: [Intel-wired-lan] [PATCH bpf V5 0/5] XDP-hints: API change for
 RX-hash kfunc bpf_xdp_metadata_rx_hash
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
 ast@kernel.org, tariqt@nvidia.com, linux-kernel@vger.kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, pabeni@redhat.com,
 yoong.siang.song@intel.com, brouer@redhat.com, boon.leong.ong@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net, edumazet@google.com, hawk@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 01/04/2023 18.47, Jesper Dangaard Brouer wrote:
> 
> Why have this patchset[1] been marked "Changes Requested" ?
> 
> Notice: The BPF test_progs are failing on "xdp_do_redirect", but that is
> not related to this patchset as it already happens on a clean bpf-tree.
> 
> [1] https://patchwork.kernel.org/project/netdevbpf/list/?series=735957&state=%2A

I've now sent V6:

  [2] 
https://patchwork.kernel.org/project/netdevbpf/list/?series=736141&state=%2A

--Jesper

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
