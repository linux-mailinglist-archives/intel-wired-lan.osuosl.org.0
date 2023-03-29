Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C646CF581
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 23:46:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7334961599;
	Wed, 29 Mar 2023 21:46:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7334961599
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680126380;
	bh=e6qq3N0tMXYKF8vMK1/xP4BjETpKiUOZRjPQivfS/yE=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tN90S70v8AmTAayk1uCf+IolbvFwr9ngM3nkPRtyR0r/bo6skCjD2ASmbMjwfULrx
	 LhSSBRUlPbFVUzUd3gjSuZdagHjdGyodEx/0FDEABzAS8H7lXSK3oITOA7UAOf+Teg
	 K5xybC85wnfPKH6VVSAzWR9GONSbGMY26kUJFUF3i4PW1iyDLqWhr31ltb4h4DINLb
	 9LqcUV6oB/2QQkhKvKmDXKVwfDEIKM/Z7cfZvklGYpoLu6N2i6JSeW5vV2pM5Cq2TG
	 zOSqz2LCLgg5t4UfHV6fRSe2r5tVUB11Ij8cxo6CtjzCmmvsHXLVChdiXpIHdiFOzF
	 BlA5Mim8sbARg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GCNtc-oLbcbO; Wed, 29 Mar 2023 21:46:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77E3B61550;
	Wed, 29 Mar 2023 21:46:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77E3B61550
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED4A61BF852
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 21:46:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D2A5661550
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 21:46:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2A5661550
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RlmXacxJy6u3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 21:46:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 182D56145A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 182D56145A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 21:46:13 +0000 (UTC)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-298-xJa3mef3NY62W4HhtyixDw-1; Wed, 29 Mar 2023 17:46:11 -0400
X-MC-Unique: xJa3mef3NY62W4HhtyixDw-1
Received: by mail-ed1-f72.google.com with SMTP id
 s30-20020a508d1e000000b005005cf48a93so24009208eds.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 14:46:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680126370;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=TLdrrjYrVuiWJorDb/815Wq1wAW83zbfu/IRhqAaimY=;
 b=nU3eEXE5KH5tgntoWHBEDKpbvgXt3EH8ZYlQq0cfWfkkdW22kQQien5Rwx1lzqhSVJ
 lcl9V+1mWZvE+sFhXUvcXfK0XPGMvGMtAZ+8AlgtBy6gkdxuROxl9EIjVFEGRC2P0Una
 tunGLImKKOZt5n8qESAVTjg0zxj1S3ioC5KwCcjnsS8Nboqar6O2JBuRQ/4eH+aK4Ox+
 FNPeNvWsP73ns5+4nfg5Px3zL5atn6Ymb8LwksiAZdw6k6IpnoTOiMAHhRSuYNS+6DHY
 cmREoAhBplb8+fT7kXzErOcZRr5VuAh2AxYyvW8Hsg38tr3AHEQRFPw7cgAZ78/m6TZ0
 oEqQ==
X-Gm-Message-State: AAQBX9cZU7f4o2C/L/zfz5wpTyDeMQZPY3n7fl+win8UnnVO+9g4zgsm
 pYQlknMwbGkbNQ8nz7OHCZkZi0J1f1zketcrMW28qOtF6+ZEBxVGxO4k2wnQ/xLhD11KNvktiVl
 ulP3iJSBc96QnrBQizQWxhHmG5K6Pbw==
X-Received: by 2002:a17:907:7f86:b0:926:9c33:ea4 with SMTP id
 qk6-20020a1709077f8600b009269c330ea4mr23062354ejc.27.1680126370366; 
 Wed, 29 Mar 2023 14:46:10 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZGQUYQJeTXwnRV15le8g2e5F6QxBAZ5bivkYpLnhuEBXno6vpJg9RQt0C5heMRA6NQh8z/2A==
X-Received: by 2002:a17:907:7f86:b0:926:9c33:ea4 with SMTP id
 qk6-20020a1709077f8600b009269c330ea4mr23062308ejc.27.1680126369951; 
 Wed, 29 Mar 2023 14:46:09 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 z26-20020a17090674da00b009310d4dece9sm16869157ejl.62.2023.03.29.14.46.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Mar 2023 14:46:09 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 974C8A22B54; Wed, 29 Mar 2023 23:46:08 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>, bpf@vger.kernel.org,
 Stanislav Fomichev <sdf@google.com>
In-Reply-To: <168010734324.3039990.16454026957159811204.stgit@firesoul>
References: <168010726310.3039990.2753040700813178259.stgit@firesoul>
 <168010734324.3039990.16454026957159811204.stgit@firesoul>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 29 Mar 2023 23:46:08 +0200
Message-ID: <87355nnsdb.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680126373;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=TLdrrjYrVuiWJorDb/815Wq1wAW83zbfu/IRhqAaimY=;
 b=GDWEDXH8T0x7ENDjBWHR/dFjf0YudTt1/scSY26fC56uJvp1t7/n4pi9Bq/fo43+07hXyK
 Qk9NcvX7+t/SUEuP5C5zS3bZIwRQ+SdKbUyNGUciOELWy0LVb77rNTTOf6d88eArraUQyi
 ClWbbsNLWjhMdNCvvXA0fnoiYKLU6bQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=GDWEDXH8
Subject: Re: [Intel-wired-lan] [xdp-hints] [PATCH bpf RFC-V2 1/5] xdp: rss
 hash types representation
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
 Jesper Dangaard Brouer <brouer@redhat.com>, boon.leong.ong@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net, edumazet@google.com, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jesper Dangaard Brouer <brouer@redhat.com> writes:

> diff --git a/net/core/xdp.c b/net/core/xdp.c
> index 7133017bcd74..81d41df30695 100644
> --- a/net/core/xdp.c
> +++ b/net/core/xdp.c
> @@ -721,12 +721,14 @@ __bpf_kfunc int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ctx, u64 *tim
>   * @hash: Return value pointer.
>   *
>   * Return:
> - * * Returns 0 on success or ``-errno`` on error.
> + * * Returns (positive) RSS hash **type** on success or ``-errno`` on error.

This change is going to break any BPF program that does:

if (!bpf_xdp_metadata_rx_hash(ctx, &hash))
  /* do something with hash */


so I think adding a second argument is better; that way, at least
breakage will be explicit instead of being a hidden change in semantics
(and the CO-RE style checking for kfuncs Alexei introduced should
trigger correctly).

But really, what we should do anyway is merge this during the -rc phase
to minimise any breakage :)

-Toke

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
