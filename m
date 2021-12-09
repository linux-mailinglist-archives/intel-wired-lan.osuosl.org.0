Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F17BD46E42F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Dec 2021 09:27:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47F8C40394;
	Thu,  9 Dec 2021 08:27:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2u7M8_R59gu5; Thu,  9 Dec 2021 08:27:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00ABB40183;
	Thu,  9 Dec 2021 08:27:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E9401BF578
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 08:27:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 76CC640183
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 08:27:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qMlFXvw2mUxd for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Dec 2021 08:27:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B0F664011B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 08:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639038462;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vI6c58+KogxxW+mn2T8IAIamTxq7omRdilnleuHfMf8=;
 b=XrjiLaDDdgTPjMwvLczD57/jRgNPUfOOAyJzWI9KqvwP+OZwp0OJ6qORnb+XtbpGd7mHIz
 pGGgOTbUKxOETVDJ/L4t/19nvyebf4AbVm6p/8sQ6thbjYtLme8+Nm/bs8U+mZ5+9gwmQ8
 H/EVIDP8zBcGeuuDWGJKEUOcVIT7gsI=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-221-gaF1fCBFNMK8_2SCiwfXjQ-1; Thu, 09 Dec 2021 03:27:41 -0500
X-MC-Unique: gaF1fCBFNMK8_2SCiwfXjQ-1
Received: by mail-lj1-f200.google.com with SMTP id
 b14-20020a05651c0b0e00b0021a1a39c481so1541664ljr.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 09 Dec 2021 00:27:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:message-id:date:mime-version:user-agent:cc
 :subject:content-language:to:references:in-reply-to
 :content-transfer-encoding;
 bh=vI6c58+KogxxW+mn2T8IAIamTxq7omRdilnleuHfMf8=;
 b=dxcQ7lGxcAEpPDJxsk6kN6JbIHD/7BOSTKCisRu09lGtRgWXDbhY346Jc/YRPVu0sg
 P+H+pMMvhK94SvPVesh5cQCOQJOiSLRUlwPuWVuOLMi1W+oZaBBcaTuiZfj8fuhImOmr
 sLSPRkd2zXc2W9YNoP+6l+frRc3JTOiMm6Olg3KE/lpngP7TnnA2SiMDXJI23KKwxgo3
 SlvRRXOiokmU06OzBWNbcc6otTMJ8hNXcg+u1bnPfeNpM6SO5oBZlcHGnuYgydbygRHo
 /ciowgavbYPhXxTn01DdGCfZdLJXOVJQYDnHrDW4bS4JVOZKfpT16zEamWLFqKF3+le7
 8IZQ==
X-Gm-Message-State: AOAM530eA4anypFQklQbgUkoN3VlKmSSyJGmCh03Ylk8q+EdBzfWFp6B
 GfJpCU0QrXzahrKgtYyVBsVGHfVW1DLopXRCNL+Tu2w8aVD1jMyKidA+Z+ITA3PPykxtkCgRYk1
 Ur8+WwaqfWUYs+J45PDu2KwrnmE/w9g==
X-Received: by 2002:ac2:58c3:: with SMTP id u3mr4511467lfo.103.1639038460010; 
 Thu, 09 Dec 2021 00:27:40 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxKqCqbVpt51CaUwHpbqJX0HXKDsb6ux7hU+HGfDgbZtG4GXp/sOpGTWxlKjSvSjzEtXMq55A==
X-Received: by 2002:ac2:58c3:: with SMTP id u3mr4511426lfo.103.1639038459683; 
 Thu, 09 Dec 2021 00:27:39 -0800 (PST)
Received: from [192.168.0.50] (87-59-106-155-cable.dk.customer.tdc.net.
 [87.59.106.155])
 by smtp.gmail.com with ESMTPSA id i3sm462850lfu.156.2021.12.09.00.27.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Dec 2021 00:27:38 -0800 (PST)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <2811b35a-9179-88ce-d87a-e1f824851494@redhat.com>
Date: Thu, 9 Dec 2021 09:27:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Alexander Lobakin <alexandr.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20211208140702.642741-1-alexandr.lobakin@intel.com>
 <20211208140702.642741-3-alexandr.lobakin@intel.com>
In-Reply-To: <20211208140702.642741-3-alexandr.lobakin@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jbrouer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 2/9] i40e: respect
 metadata on XSK Rx to skb
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
Cc: Song Liu <songliubraving@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, netdev@vger.kernel.org,
 brouer@redhat.com, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 08/12/2021 15.06, Alexander Lobakin wrote:
> For now, if the XDP prog returns XDP_PASS on XSK, the metadata will
> be lost as it doesn't get copied to the skb.

I have an urge to add a newline here, when reading this, as IMHO it is a 
paragraph with the problem statement.

> Copy it along with the frame headers. Account its size on skb
> allocation, and when copying just treat it as a part of the frame
> and do a pull after to "move" it to the "reserved" zone.

Also newline here, as next paragraph are some extra details, you felt a 
need to explain to the reader.

> net_prefetch() xdp->data_meta and align the copy size to speed-up
> memcpy() a little and better match i40e_costruct_skb().
                                      ^^^^^^xx^^^^^^^^^

You have a general misspelling of this function name in all of your 
commit messages.

--Jesper

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
