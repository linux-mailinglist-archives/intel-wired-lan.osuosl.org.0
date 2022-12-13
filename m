Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A13264B90C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Dec 2022 16:58:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FDFF60F4C;
	Tue, 13 Dec 2022 15:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0FDFF60F4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670947108;
	bh=Tqn4mJEaRbhTlI8doOd0+cvouDPGRvQKI0kAbV1jDX0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZriLiE5ZQd476g1Hn7rCfk67mAvYbyIhhqdRxbU/3gD3LzwwRQcsZCI1Vvsp4y3+9
	 sNmfSYKGCocEE+8368Fw9YgfAavibFOpCVdOtNlsPbMVe6d9Ztk9JeMJlCbKR3jM2k
	 S+/+3hqAQPmjwY7KIakyKeWBp1uaGQtLPOTDnpylimdzeoTTRuxKXdEWYf1q2T93SK
	 PWp2Bw7n/tHU7ycyybdatDN0PIdVQs5URvLiBkpdlMhMX38ASF8Bf5FzVdwH0b7nY1
	 hOdCjJAYA6yy8M1u016S5BJfkMEimXQhJmOlnP9RhIYqrrd0k0KSPiFUqYhA1yEG+G
	 /qMQy1ljeE89g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rUN8DAmIJYHH; Tue, 13 Dec 2022 15:58:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25BFA60A8B;
	Tue, 13 Dec 2022 15:58:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 25BFA60A8B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 040491BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 15:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D238B60A8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 15:58:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D238B60A8B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HXD47Gpo1IX9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Dec 2022 15:58:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F09A607C7
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3F09A607C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 15:58:22 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id w23so172955ply.12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Dec 2022 07:58:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=L2KwEdJdz8SZz3waYhraeZmfXbWgedoNQcqshGcRjyQ=;
 b=mWOT1FySTkjktHwxGjT4qxQ5BwzLf/HjY7GEpxYIxR3kkN3dUzkz/oSCU9CZE6MBQx
 8Rry2YpAXSMzBpZwSQN9DTFgOibpZRlEPtfSTn1a55DxbaZWRr//FBxsJMtkbQhjRr6P
 +NtmKoH9X+ndr79y3GMU2LfIX8/vUnwSHWoBlneUZl0pftDdv89/NmZDjRaVI1zVnN1V
 fjpnNb+pUYP9HMlq80KdIw2Eu1IhLeaqEIwH5FIaAT5qiNys9riRa/3VyNyfgN9m5aJM
 WVSwmmdW1TNAMzvEJ6kOYJqWM9t79IMRm8UbAkxRRHnvkn8I7xSLuNpGIHgdeXqsLcOg
 X54Q==
X-Gm-Message-State: ANoB5pkOWNsI2oMDPlL+0ExFwZyoH6pLngJ3qJsc1/J8eY1fv5lUIKvs
 QpcM3Ik8WT8uoQX504PjGh8=
X-Google-Smtp-Source: AA0mqf4ASAm91c18uzbgdF0yT/tzLVd89/CZlvbaX4MOqMjsoYKxBEikl31a3JskKH0GZN9iwuRcgg==
X-Received: by 2002:a17:902:9a43:b0:187:16c2:d52c with SMTP id
 x3-20020a1709029a4300b0018716c2d52cmr19322313plv.50.1670947101435; 
 Tue, 13 Dec 2022 07:58:21 -0800 (PST)
Received: from [192.168.0.128] ([98.97.42.38])
 by smtp.googlemail.com with ESMTPSA id
 ix17-20020a170902f81100b001895f7c8a71sm71952plb.97.2022.12.13.07.58.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Dec 2022 07:58:21 -0800 (PST)
Message-ID: <cf6f03d04c8f2ad2627a924f7ee66645d661d746.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: Tirthendu Sarkar <tirthendu.sarkar@intel.com>, tirtha@gmail.com, 
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net,  edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, ast@kernel.org,  daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com,  intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Dec 2022 07:58:19 -0800
In-Reply-To: <20221213105023.196409-1-tirthendu.sarkar@intel.com>
References: <20221213105023.196409-1-tirthendu.sarkar@intel.com>
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=L2KwEdJdz8SZz3waYhraeZmfXbWgedoNQcqshGcRjyQ=;
 b=KnUh26J7JZRs5EIrjhCuhTh0mR4I4x0Ew2N5op3jpJnsa4Yw+nMuPEPNwrYmve9DTD
 mVQP6RtncAKCTBt/N9udvh3n2Qzj+/bV0YsglSLWzr1jOJzGDAAu4jCbHzIxoO5L/vOo
 bL0jAUFUW9baIcGA/BE9WAmdLJv6nCApYuhn5ngTkmwBewEjIK1QFFVlW1PHyDZ3/g2L
 p2M3F4A5vCD7qzRU9rger8MO4NszpALiP3uT4bDvSdrEtRF4eAFwjW1oL6uS0bHFrElt
 zIqvH2Dv7YdSjr/Sr0V/pdNih3GwgqcB6iHueHlz7D7VqIs92IBbm/lOTGO5+EFC34L7
 1bxw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=KnUh26J7
Subject: Re: [Intel-wired-lan] [PATCH intel-next 0/5] i40e: support XDP
 multi-buffer
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2022-12-13 at 16:20 +0530, Tirthendu Sarkar wrote:
> This patchset adds multi-buffer support for XDP. The first four patches
> are prepatory patches while the fifth one contains actual multi-buffer
> changes. 
> 
> Tirthendu Sarkar (5):
>   i40e: add pre-xdp page_count in rx_buffer
>   i40e: avoid per buffer next_to_clean access from i40e_ring
>   i40e: introduce next_to_process to i40e_ring
>   i40e: pull out rx buffer allocation to end of i40e_clean_rx_irq()
>   i40e: add support for XDP multi-buffer Rx
> 
>  drivers/net/ethernet/intel/i40e/i40e_main.c |  18 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 378 ++++++++++++++------
>  drivers/net/ethernet/intel/i40e/i40e_txrx.h |  13 +-
>  3 files changed, 280 insertions(+), 129 deletions(-)
> 

This approach seems kind of convoluted to me. Basically you are trying
to clean the ring without cleaning the ring in the cases where you
encounter a non EOP descriptor.

Why not just replace the skb pointer with an xdp_buff in the ring? Then
you just build an xdp_buff w/ frags and then convert it after after
i40e_is_non_eop? You should then still be able to use all the same page
counting tricks and the pages would just be dropped into the shared
info of an xdp_buff instead of an skb and function the same assuming
you have all the logic in place to clean them up correctly.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
