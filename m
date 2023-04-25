Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 800E46EDE5D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Apr 2023 10:43:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20397404E5;
	Tue, 25 Apr 2023 08:43:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20397404E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682412211;
	bh=x/MwvDLAhd7Io5qmK9GeDYavpdD+/nFo0Hwnm5QCTgE=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hct9JWfQ1VnFCOD5hDIeeaVvXVKkjy/EPWmrH3P0ol5hGriq80k+9NOva+SR978Ra
	 pw4oan0gsSd02MQBy+p9pD9O+E6xaB655tI0By/oZky73A01r8iBbT2Q4vj7UC6yqG
	 9lsVI7b3Ahm3kkUBoqJr4YWkj9WP2OaXQR/3CA6P8Efp2FDh0FOEmGHhwaMOIgeyAP
	 T6QMSdiJ17X5IdZlTsrTFt7BwfQM+FXPh1EYcvbwaXnowmHO507Rx0KLyLFyvpmSMr
	 9B9NQn4HJMD7+ZO13sqrrnQC4jMY0RoCAEHEiMNG9s26eRBIkbnafKJQ7S6T1LrCcG
	 7D5Lk32lD3nhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q87zlh2O42E1; Tue, 25 Apr 2023 08:43:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 111E4404D4;
	Tue, 25 Apr 2023 08:43:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 111E4404D4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 88DE41BF32C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 08:43:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D9584026A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 08:43:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D9584026A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ILYrUgfT6R3w for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Apr 2023 08:43:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A5B0400D1
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A5B0400D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 08:43:24 +0000 (UTC)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-338-ogScTgUbMxiRdamb4sSiNA-1; Tue, 25 Apr 2023 04:43:14 -0400
X-MC-Unique: ogScTgUbMxiRdamb4sSiNA-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-94a341efd9aso616622766b.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 01:43:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682412193; x=1685004193;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Z0zVDpGNPOtgS6OZt5Y/hC+DSyVwR0iNEJU4rcM7cZw=;
 b=ENiYez4wG/puuXNmhQ/VSQdTVV0Csc9nlYOiO6cV09ixzhyQNsxvOfUTq6/SrXsyGC
 xLopIDbvXUH9MZGIFYDQdOzhAd3mb6ddNVQN4QiZBHN83FZLdR/WS2UZYYaLbIh9MX7k
 pImMKBzpVB0RVG9LvtQY8QG83ZK1MzJWk3YOsXNf3csAZoj91qE+j711Di3QiheoeHdw
 NrKF1LceYU5Y/HBWi9hIfygu6ocPzvnzqspSHgus1lvO/TZBk/jtiv4ZrmKPI2Y2/weE
 5Kg1ON0/nAh2NTxqMpN8TlB6q+Fdf9+X+RJ9FBSJ/ZEVFE+LeZFVRqVULjVJ9El22WC5
 PW6w==
X-Gm-Message-State: AAQBX9d4sZhzjW6Z/hYjFi6OYI/mhw74rnNtC30V0QyP2NqHNK4b9sMC
 fcH43QfckO+mnukwhY+z3b8mu4X6GHFL/Px/nsG9wwz0D7zuuqzw8mq3BcEMTPPmrgZq9Cv7mIB
 3u1IGSw6iMHBx9bjwLM5j6LuxHWqQJg==
X-Received: by 2002:a17:907:a688:b0:953:4d9e:4dc5 with SMTP id
 vv8-20020a170907a68800b009534d9e4dc5mr11371467ejc.22.1682412193248; 
 Tue, 25 Apr 2023 01:43:13 -0700 (PDT)
X-Google-Smtp-Source: AKy350bMzEkeOJ+lrxIh0zBcCHx4TX83ikBmu1uOT+zXFM5ixyoq1CeTkKqu+M7H2eyoLrpcS9oLHw==
X-Received: by 2002:a17:907:a688:b0:953:4d9e:4dc5 with SMTP id
 vv8-20020a170907a68800b009534d9e4dc5mr11371436ejc.22.1682412192893; 
 Tue, 25 Apr 2023 01:43:12 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 bh20-20020a170906a0d400b0094fbb76f49esm6589052ejb.17.2023.04.25.01.43.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Apr 2023 01:43:12 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <e6bc2340-9cb5-def1-b347-af25ce2f8225@redhat.com>
Date: Tue, 25 Apr 2023 10:43:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: davem@davemloft.net, bpf@vger.kernel.org, daniel@iogearbox.net
References: <168182460362.616355.14591423386485175723.stgit@firesoul>
 <168182464270.616355.11391652654430626584.stgit@firesoul>
 <644544b3206f0_19af02085e@john.notmuch>
 <622a8fa6-ec07-c150-250b-5467b0cddb0c@redhat.com>
 <6446d5af80e06_338f220820@john.notmuch>
In-Reply-To: <6446d5af80e06_338f220820@john.notmuch>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1682412203;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Z0zVDpGNPOtgS6OZt5Y/hC+DSyVwR0iNEJU4rcM7cZw=;
 b=T3Vj+8d8Qc/NxPlmxioNxSFu8dwXAOaoHnxK6WC/bdUd+f4kT8sOi5oVcjzBcSYQPwcoH7
 HuIied1sWs+hMLl5gzJmtbpOZS6WuvX1PNvnRI8tTscu+OdlHxhcZYnaEBF8JKLDJ+wGmy
 OevWGYw3UvmQfGBqQqOtCGDVFl84L3E=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=T3Vj+8d8
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V2 1/5] igc: enable and fix
 RX hash usage by netstack
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, larysa.zaremba@intel.com,
 netdev@vger.kernel.org,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 John Fastabend <john.fastabend@gmail.com>, ast@kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, edumazet@google.com,
 pabeni@redhat.com, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, brouer@redhat.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 hawk@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 24/04/2023 21.17, John Fastabend wrote:
>>> Just curious why not copy the logic from the other driver fms10k, ice, ect.
>>>
>>> 	skb_set_hash(skb, le32_to_cpu(rx_desc->wb.lower.hi_dword.rss),
>>> 		     (IXGBE_RSS_L4_TYPES_MASK & (1ul << rss_type)) ?
>>> 		     PKT_HASH_TYPE_L4 : PKT_HASH_TYPE_L3);
>> Detail: This code mis-categorize (e.g. ARP) PKT_HASH_TYPE_L2 as
>> PKT_HASH_TYPE_L3, but as core reduces this further to one SKB bit, it
>> doesn't really matter.
>>
>>> avoiding the table logic. Do the driver folks care?
>> The define IXGBE_RSS_L4_TYPES_MASK becomes the "table" logic as a 1-bit
>> true/false table.  It is a more compact table, let me know if this is
>> preferred.
>>
>> Yes, it is really upto driver maintainer people to decide, what code is
>> preferred ?
 >
> Yeah doesn't matter much to me either way. I was just looking at code
> compared to ice driver while reviewing.

My preference is to apply this patchset. We/I can easily followup and
change this to use the more compact approach later (if someone prefers).

I know net-next is "closed", but this patchset was posted prior to the
close.  Plus, a number of companies are waiting for the XDP-hint for HW
RX timestamp.  The support for driver stmmac is already in net-next
(commit e3f9c3e34840 ("net: stmmac: add Rx HWTS metadata to XDP receive
pkt")). Thus, it would be a help if both igc+stmmac changes land in same
kernel version, as both drivers are being evaluated by these companies.

Pretty please,
--Jesper

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
