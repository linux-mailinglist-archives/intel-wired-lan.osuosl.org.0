Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8ADA89E02D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Apr 2024 18:18:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA8E381F85;
	Tue,  9 Apr 2024 16:17:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vXI_oAS5wNd9; Tue,  9 Apr 2024 16:17:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD3A381FD7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712679478;
	bh=VlcmHNsCwSvCc74TrBcs49hXKJM0udmD4CNSlCrF+Lo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yRfz3gfsHzAVbZs/haOHTya8bpTikH2laQXGeQ4B5lrNY/aucgbRdPXf9Zag5STXV
	 Y4G4ri203ImkCyTR6HBqcx5FJuUntmAlxBfQBeCdS0Q90R5hVPrMDaV6grwkRytImB
	 xU1SJO72grpiPS9nQ1hU1nfeWjt5pWXrBm5uBQMLPiqqxwI49WXZGc1JFU8VT2Tf58
	 NDNwd4S5mRoJOOku1wSwGx447BRbh4LUvab+R0Lj4ruDAVx/H5MoMW/TsmCTFiiKD7
	 rY1/WLjXpB+Sgp1yhKLEfM5pYggrYJm7ySpCIdl48kw+DOXPvM5HuY4ZprNOsT9yaZ
	 QZ00frOp3UKcQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD3A381FD7;
	Tue,  9 Apr 2024 16:17:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0673A1BF372
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 16:17:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F36E640B39
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 16:17:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 56uYC0tAp5OL for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Apr 2024 16:17:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::433; helo=mail-pf1-x433.google.com;
 envelope-from=keescook@chromium.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3762140571
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3762140571
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3762140571
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 16:17:54 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id
 d2e1a72fcca58-6ed627829e6so1561892b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 09 Apr 2024 09:17:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712679474; x=1713284274;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VlcmHNsCwSvCc74TrBcs49hXKJM0udmD4CNSlCrF+Lo=;
 b=UpGnNINg0egB4epjFkaJyeg99g3BFRL/QGg757d9fdjTNIymHeIgxWziccyKeRFtmG
 2C4yL7+LYHp7vYMhDhjiRFOC9iRbi12vUt3g1YUhBC0N3mGBfqG2OtY1y3y02vtvZxP7
 w1+W7bE8MG7h0W52fEJuFv0tvwEPEoSF5Ujm93y0JhoxWJG6YdgLelOKCKX8xOXEp+j3
 j65OyWi0Jl8n1l/Sq1yu3iHyB78pboMN/T1/BR3D6q3kvj3sZC/a/QXNu3hHMIEy4/nY
 jqbNT2/jchqoxWQlXAsUB3c2dYUBSm+aiDlufK6gbfYOGOdStKjJ4oL+NplI4uqG3Qrs
 5duA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXSAOZzTl9gAKx9DI+wE3UvwaQocvYYTlr8bCF9yadYSyLVvY0LqVS7ASkqCRKybVmwg2iGg+L+BVAlKw+fJI7NSfOHH3Q9kf6xPS0//eHZiA==
X-Gm-Message-State: AOJu0Ywdq0JzaRbx7iMbAC0RRRJxdIZni438IbJtyJiy9EQt30dAfrrh
 KhWKjqF1I90JrdxWMNA7oT/lVcB1J9+whBzxne9dNFgB9UwLhMZBzQwhm2oKcw==
X-Google-Smtp-Source: AGHT+IF+HuccTfimdnMNYhgaM6Pzx7wcEOoErnnFz7FQkS1gRTkWP5q8FoX5RgQ6dGyVfovJAJRQEA==
X-Received: by 2002:a05:6a20:244d:b0:1a7:a3ba:2bc1 with SMTP id
 t13-20020a056a20244d00b001a7a3ba2bc1mr405903pzc.15.1712679474281; 
 Tue, 09 Apr 2024 09:17:54 -0700 (PDT)
Received: from www.outflux.net ([198.0.35.241])
 by smtp.gmail.com with ESMTPSA id
 y16-20020aa78550000000b006ecda086db2sm8483699pfn.110.2024.04.09.09.17.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Apr 2024 09:17:53 -0700 (PDT)
Date: Tue, 9 Apr 2024 09:17:53 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <202404090909.51BAC81A6@keescook>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
 <20240404154402.3581254-8-aleksander.lobakin@intel.com>
 <20240405212513.0d189968@kernel.org>
 <1dda8fd5-233b-4b26-95cc-f4eb339a7f88@intel.com>
 <755c17b2-0ec2-49dd-9352-63e5d2f1ba4c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <755c17b2-0ec2-49dd-9352-63e5d2f1ba4c@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1712679474; x=1713284274; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=VlcmHNsCwSvCc74TrBcs49hXKJM0udmD4CNSlCrF+Lo=;
 b=c5m3at4pMdGsuHxyRxJA5j0pgshKkBXbxdsYeApq0fmMRppsuW9SW7VexPfQE5VjBL
 u9sawtBZpaGGUD6Ho2SFfpbeqeVh54lPIJ2xynBUVHbZumxAs6eaRNZFvQ2xlvRQSg0Q
 STivWEaJkRii3AaeOYeuxMHsNYUne5gW0UsRY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=chromium.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=chromium.org header.i=@chromium.org header.a=rsa-sha256
 header.s=google header.b=c5m3at4p
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 7/9] libeth: add Rx buffer
 management
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Yunsheng Lin <linyunsheng@huawei.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Christoph Lameter <cl@linux.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Apr 08, 2024 at 11:45:32AM +0200, Alexander Lobakin wrote:
> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> Date: Mon, 8 Apr 2024 11:11:12 +0200
> 
> > From: Jakub Kicinski <kuba@kernel.org>
> > Date: Fri, 5 Apr 2024 21:25:13 -0700
> > 
> >> On Thu,  4 Apr 2024 17:44:00 +0200 Alexander Lobakin wrote:
> >>> +/**
> >>> + * struct libeth_fq - structure representing a buffer queue
> >>> + * @fp: hotpath part of the structure
> >>
> >> Second time this happens this week, so maybe some tooling change in 6.9
> >> but apparently kdoc does not want to know about the tagged struct:
> >>
> >> include/net/libeth/rx.h:69: warning: Excess struct member 'fp' description in 'libeth_fq'
> > 
> > Oh no, maybe we should teach kdoc to parse struct_group*()?
> 
> scripts/kernel-doc apparently can handle them...
> 
> + Kees
> 

Ah, hm, scripts/kernel-doc throws away the early arguments of
struct_group_tagged, but I suspect it needs to create a synthetic member
for the tag. i.e. instead of:

	struct_group_tagged(tag, name, members...)

becoming

	members...

it needs to become

	struct tag name;
	members...

It seems this is the first place anyone has tried to document the tagged
struct name! :)

Does this work? I haven't tested it...

diff --git a/scripts/kernel-doc b/scripts/kernel-doc
index 967f1abb0edb..64a19228d5dd 100755
--- a/scripts/kernel-doc
+++ b/scripts/kernel-doc
@@ -1151,7 +1151,8 @@ sub dump_struct($$) {
         # - first eat non-declaration parameters and rewrite for final match
         # - then remove macro, outer parens, and trailing semicolon
         $members =~ s/\bstruct_group\s*\(([^,]*,)/STRUCT_GROUP(/gos;
-        $members =~ s/\bstruct_group_(attr|tagged)\s*\(([^,]*,){2}/STRUCT_GROUP(/gos;
+        $members =~ s/\bstruct_group_attr\s*\(([^,]*,){2}/STRUCT_GROUP(/gos;
+        $members =~ s/\bstruct_group_tagged\s*\(([^,]*,)([^,]*,)/struct $1 $2; STRUCT_GROUP(/gos;
         $members =~ s/\b__struct_group\s*\(([^,]*,){3}/STRUCT_GROUP(/gos;
         $members =~ s/\bSTRUCT_GROUP(\(((?:(?>[^)(]+)|(?1))*)\))[^;]*;/$2/gos;
 

> > 
> >>
> >>> + * @pp: &page_pool for buffer management
> >>> + * @fqes: array of Rx buffers
> >>> + * @truesize: size to allocate per buffer, w/overhead
> >>> + * @count: number of descriptors/buffers the queue has
> >>> + * @buf_len: HW-writeable length per each buffer
> >>> + * @nid: ID of the closest NUMA node with memory
> >>> + */
> >>> +struct libeth_fq {
> >>> +	struct_group_tagged(libeth_fq_fp, fp,
> >>> +		struct page_pool	*pp;
> >>> +		struct libeth_fqe	*fqes;
> >>> +
> >>> +		u32			truesize;
> >>> +		u32			count;
> >>> +	);
> >>> +
> >>> +	/* Cold fields */
> >>> +	u32			buf_len;
> >>> +	int			nid;
> >>> +};
> 
> Thanks,
> Olek

-- 
Kees Cook
