Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D3846188B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Nov 2021 15:29:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C11F40490;
	Mon, 29 Nov 2021 14:29:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lyF7u-UI52jO; Mon, 29 Nov 2021 14:29:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A5C44054E;
	Mon, 29 Nov 2021 14:29:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D24EE1BF36F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 14:29:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BEC5480B91
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 14:29:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DCT8OTARajOr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Nov 2021 14:29:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EA078801DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 14:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638196152;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rf8O5ctAw0vGE3sOZEtvXA5okWE5nRdwUi7RWsMQCzw=;
 b=Z3MWlBzCpZaXMjZ6HytNUHJzQRDfNsaTwknuq7MhwCWZXbZYh9f4DrWN+JDm9S1cDGnhRF
 25cClBBlSWIrV7cTecf6F09hiD3clUznN1asy9H6dSpzMm5eZSRgEM3OqaehtTVnk4vgoz
 muaJl4qyxmq4OM3KsruAGS40ZEJ2wpc=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-13-Iq6OczoyNg-WwX_7qBCpLA-1; Mon, 29 Nov 2021 09:29:11 -0500
X-MC-Unique: Iq6OczoyNg-WwX_7qBCpLA-1
Received: by mail-ed1-f70.google.com with SMTP id
 bx28-20020a0564020b5c00b003e7c42443dbso13836459edb.15
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 06:29:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:message-id:date:mime-version:user-agent:cc
 :subject:content-language:to:references:in-reply-to
 :content-transfer-encoding;
 bh=rf8O5ctAw0vGE3sOZEtvXA5okWE5nRdwUi7RWsMQCzw=;
 b=om2MFOMbN8YiFUTJdcQsn923HkeIsfxEk9ZfFVl894KHUnmXYCeGcyu3XJ7jEpUi0u
 FYo3mnmR/VsIm9MYXCMdSghvzaMQHSRPk5cR/YCfvmz1dZou3JiUg0c7IT3ehVY7hCmx
 tP76ART6yPqqtc1yZZzbvtoDHydJ8icfRhnw0d4Ax8tnyvmwtgonw68+RdljnJYYZ+vn
 kHNDpQtv5V13W4P+9BTpjtzoix9AdBF2qYy6Ve087BTQg3qRUAlsxFefsAso9icKbjcP
 p/yrixOuL82bY0l4WrGzfc+GRi7i/GqaY22yAZHRjFw7acab8SwZCXs3h465L0LoFSVw
 fb0w==
X-Gm-Message-State: AOAM532nE7RYkOS2PEKG3PnoMf/CMF4yZSiW2wBSn9YPdIfQRz8lg664
 IjHO7OvgbgnJ60tn+8lMfv0ce1WyG+Rwj2fkFeQFgXTJnkOVa85CFf6oQyDBuHtr2YzVNj34B+e
 PKzNrd1tHxmT4gJmO0iSUGkTJOwW5Dg==
X-Received: by 2002:a17:907:e86:: with SMTP id
 ho6mr62462251ejc.209.1638196150080; 
 Mon, 29 Nov 2021 06:29:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy5srlFAN9dumOiSNmAAdhgitW5lf/zV1A0C1Mxkj4ak17HFZsRXxea9V+nJ/LVfKWv7yl4OA==
X-Received: by 2002:a17:907:e86:: with SMTP id
 ho6mr62462210ejc.209.1638196149799; 
 Mon, 29 Nov 2021 06:29:09 -0800 (PST)
Received: from [192.168.2.13] (3-14-107-185.static.kviknet.dk. [185.107.14.3])
 by smtp.gmail.com with ESMTPSA id
 qz24sm7393876ejc.29.2021.11.29.06.29.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Nov 2021 06:29:09 -0800 (PST)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <de14fefc-a8c1-ff6c-5354-8cce4a3f66f9@redhat.com>
Date: Mon, 29 Nov 2021 15:29:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Alexander Lobakin <alexandr.lobakin@intel.com>
References: <163700856423.565980.10162564921347693758.stgit@firesoul>
 <20211129141047.8939-1-alexandr.lobakin@intel.com>
In-Reply-To: <20211129141047.8939-1-alexandr.lobakin@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jbrouer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/2] igc: driver change to
 support XDP metadata
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
Cc: netdev@vger.kernel.org, bjorn@kernel.org, intel-wired-lan@lists.osuosl.org,
 brouer@redhat.com, Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Daniel Borkmann <borkmann@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 29/11/2021 15.10, Alexander Lobakin wrote:
> From: Jesper Dangaard Brouer <brouer@redhat.com>
> Date: Mon, 15 Nov 2021 21:36:20 +0100
> 
>> Changes to fix and enable XDP metadata to a specific Intel driver igc.
>> Tested with hardware i225 that uses driver igc, while testing AF_XDP
>> access to metadata area.
> 
> Would you mind if I take this your series into my bigger one that
> takes care of it throughout all the Intel drivers?

I have a customer that depend on this fix.  They will have to do the 
backport anyway (to v5.13), but it would bring confidence on their side 
if the commits appear in an official git-tree before doing the backport 
(and optimally with a SHA they can refer to).

Tony Nguyen have these landed in your git-tree?

--JEsper

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
