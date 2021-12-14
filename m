Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 441F0474354
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 14:22:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A82C60BAB;
	Tue, 14 Dec 2021 13:21:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pnwmLKEfTv00; Tue, 14 Dec 2021 13:21:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5827D60BA1;
	Tue, 14 Dec 2021 13:21:58 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 443071BF33F
 for <intel-wired-lan@osuosl.org>; Tue, 14 Dec 2021 13:21:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2EA658141C
 for <intel-wired-lan@osuosl.org>; Tue, 14 Dec 2021 13:21:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jowNvOYxs3-N for <intel-wired-lan@osuosl.org>;
 Tue, 14 Dec 2021 13:21:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8C6658140A
 for <intel-wired-lan@osuosl.org>; Tue, 14 Dec 2021 13:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639488112;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Y5QcoZPB4r0DncX5cVyDz5WSqDvsPczW5pNNf0lK5R0=;
 b=h2aQtE2AEB2lF8E+nFHMVYcE/P6IZI7YS2EdlvV7ARu/4gFOfKQ9paFUBR6ZcZ7zDjENHF
 LloPR6ChBD9EFpQ6vmZFH8Joc+D/DrC7QPWnIVHI3uNJJyRBY+wWhg0uldnACZq0Ta+EdK
 IkcJ0WRrL9YeV4ynQv4vRHdOYszEWcc=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-306-99a2PiF9O_68y7SLoaZiHA-1; Tue, 14 Dec 2021 08:21:51 -0500
X-MC-Unique: 99a2PiF9O_68y7SLoaZiHA-1
Received: by mail-qt1-f197.google.com with SMTP id
 e2-20020ac84142000000b002b4bc4ffc49so26637067qtm.8
 for <intel-wired-lan@osuosl.org>; Tue, 14 Dec 2021 05:21:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Y5QcoZPB4r0DncX5cVyDz5WSqDvsPczW5pNNf0lK5R0=;
 b=Ct+4roWhPajOiWBH0O75TtVnhCx/Uxj4XBRJMQu3GoVaBrGsOvgZTO4BI0uEC7i7/H
 G9MIg63tiOw7UFQLvltUff1vioWxcPuounEMMlL+bkUUIXlT5MN2OQFV29fev6OoC5Hn
 WAEMVvEMrTw+RBD1zQk0gpYRae23TGEDEex/evsf5nbrbEG5tCd9k54CuMv/mDqGinfY
 I6496fUPWqTg4orZalEvPI65RS2A84SKtX3LYbCji7YcBOFZDuncsW0VDA+tbhLUPAzf
 8ub4hRYQPDwXObCoJhDD7YlupFcBpHgNfSrE/au4vdPxAadu5Gn0EgKVi0SKSdxx7NnD
 SNlg==
X-Gm-Message-State: AOAM533G2KvvEODbC90BsdpPrb0saDUPoGZFESAjGR5sehYn8XBV56x6
 t48lkSlyiaF8kBMTk2OIFTWOuCguA/c7kGhR/Wx9A7cZC41oTD7riLOqLwDDbcpJ68XV+lG+776
 VHiUkD1g/j6v2Rp4DDM4QebXbYlZR3chgIcu3vkKqaaA5GFy3rhZrnguRGym9Kzf75nc=
X-Received: by 2002:ac8:5f0c:: with SMTP id x12mr5743523qta.3.1639488110878;
 Tue, 14 Dec 2021 05:21:50 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzn+fhL6ittbVv1fxNTBij9OevQ9mfKJRLjT9b8dMG7iUeLSLpUwGz5+4m8gwHQZfp5H6Lygg==
X-Received: by 2002:ac8:5f0c:: with SMTP id x12mr5743500qta.3.1639488110652;
 Tue, 14 Dec 2021 05:21:50 -0800 (PST)
Received: from [192.168.1.121] ([69.73.103.33])
 by smtp.gmail.com with ESMTPSA id h22sm12444238qtb.86.2021.12.14.05.21.50
 for <intel-wired-lan@osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Dec 2021 05:21:50 -0800 (PST)
Message-ID: <da53dc2c-d35f-94a8-68d2-affe5bed30d9@redhat.com>
Date: Tue, 14 Dec 2021 07:21:49 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: intel-wired-lan@osuosl.org
References: <20211208102153.669338-1-jkc@redhat.com>
From: Ken Cox <jkc@redhat.com>
In-Reply-To: <20211208102153.669338-1-jkc@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jkc@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [Patch 0/2] iavf: Fix panics due to active
 work queues being freed in iavf_remove()
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/8/21 04:21, Ken Cox wrote:
> This series fixes panics that occur after iavf_remove() is called.
> 
> The panics occur because the iavf_adapter structure is freed at the end
> of iavf_remove(), but it is possible that new work has been scheduled using
> the work_struct's contained within the iavf_adapter structure.  If this occurs, the system will panic when it later tries to process the work queue.
> 
> Ken Cox (2):
>    iavf: Fix panic in iavf_remove
>    iavf: Prevent reset from being scheduled while adapter is being
>      removed
> 
>   drivers/net/ethernet/intel/iavf/iavf_ethtool.c  |  7 +++++--
>   drivers/net/ethernet/intel/iavf/iavf_main.c     | 17 +++++++++++------
>   drivers/net/ethernet/intel/iavf/iavf_virtchnl.c |  4 +++-
>   3 files changed, 19 insertions(+), 9 deletions(-)
> 
NAK for this series.

These patches were generated off of the wrong branch.  I will 
re-evaluate and re-submit if necessary.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
