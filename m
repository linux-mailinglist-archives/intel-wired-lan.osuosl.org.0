Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF3B76FC05
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 10:29:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 110294018E;
	Fri,  4 Aug 2023 08:29:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 110294018E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691137767;
	bh=2XqJu+J+UZeTjd8DCSfCSZw1uYjDHbQlnlgPsoKEArs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qLBGbVQxVJh2+2JhxqL6ik/T1dpXUGd/QoYds9LzymTg5N7iwZZ4jIsVfM8iGzxFW
	 Sl1lUH+o1YKrSh5UNmBF5a1PkN7EM2dd+ucc/MXlrRPc9OelInXqoFt+lE12vQdoE5
	 uX2+o1ZqrmUXPQv3zzgZxMwQ6d/RvCsHSm0HjurGFJ6zZ5ijJ480DFGWHu2mqpUhkr
	 jJUEvXg6ZkgaTCLqdwFt761n2kYZFBfo+VMMCWNJ3DZrrBY2yctNwdb+uTAUciM/qu
	 MOigHKIL7fTxXk7HJKodoNCgFJ5j3Gpq7TPMRF0fcXvQkItQAfwEJhCXqjxdFD8uKQ
	 CFSQLG42QCxPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w64xHWh6cm_1; Fri,  4 Aug 2023 08:29:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B16D4086D;
	Fri,  4 Aug 2023 08:29:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B16D4086D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 159A51BF341
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 08:29:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA367400FE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 08:29:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA367400FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SgtBpMTl5Gpa for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 08:29:03 +0000 (UTC)
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3260B40538
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 08:29:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3260B40538
Received: by mail-pf1-x42c.google.com with SMTP id
 d2e1a72fcca58-68336d06620so1662583b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Aug 2023 01:29:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691137742; x=1691742542;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7Lzp3ZkP17GT5v8YT6Q8PsfBgtBwszbchO+h+FYy3w4=;
 b=AjStkuJiAF04HWDpoyqFS5VY9/7Gd0tKDNp/ec5R+o5AtMPOQY9ndNdqF6Ku+4nRB3
 64DDFQxOZ5hYbT5A8Z1SxcqnFkY2+mktwT+66TKnK4VBjdX//5XRFzhUMkljusVM1OVa
 aFqyogRUgIJifSp7LtAQbff0WfQ35MkVSYu+v0quztZVdBuB+YHJQdKil3gnByDQ2ckY
 MYMHPfJoOl3s8k2eKHXhUmhpaCi0Gd+ZqRnTjLUV6lQ7RkhX+NQvn8DxAWHrguS/kp83
 bGp587kZ61AKwGzKrY2XU12IF9128+0u48v30GcVr5ByOGxvAoG1hgP3d5EqwpjNb2Vf
 irOg==
X-Gm-Message-State: AOJu0Yx3FbIIzFQ/AomxC6gTAwAvDveyCvHiyLFkIn8YcgKBA4rzx/+1
 ZdUKHcvfd0D+PEOHEVIFnpqTRQ==
X-Google-Smtp-Source: AGHT+IEb8NJZukwkOLv+8X4gGyv5xuEMYnojzUqQ9CiQkM6If6hOvgmAM+Cd3GLl5BacdLQgN3RxVw==
X-Received: by 2002:a05:6a20:244f:b0:138:64d4:b040 with SMTP id
 t15-20020a056a20244f00b0013864d4b040mr1274551pzc.54.1691137742585; 
 Fri, 04 Aug 2023 01:29:02 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 v19-20020a62a513000000b006870721fcc5sm1101722pfm.175.2023.08.04.01.29.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Aug 2023 01:29:02 -0700 (PDT)
Date: Fri, 4 Aug 2023 01:29:01 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <202308040128.667940394B@keescook>
References: <20230728155207.10042-1-aleksander.lobakin@intel.com>
 <20230728155207.10042-3-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230728155207.10042-3-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1691137742; x=1691742542;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=7Lzp3ZkP17GT5v8YT6Q8PsfBgtBwszbchO+h+FYy3w4=;
 b=gz/zjWqM3uu/9WJf25raD3sRvhSeY7TJLSIXkLtJ5Q9CbU2Fg9UlZPPg31KTkF5Say
 h+zm8lyW0sWyiNhFbYjYNzovIj483N3sguC+1cDwqAfMGZm5likBeIBTtFQiZx7wjjw/
 6I+iYb810hAMUm38IIs4yM3G1df4qSUj79J1Q=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=gz/zjWqM
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] virtchnl: fix fake
 1-elem arrays in structures allocated as `nents + 1`
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 28, 2023 at 05:52:06PM +0200, Alexander Lobakin wrote:
> There are five virtchnl structures, which are allocated and checked in
> the code as `nents + 1`, meaning that they always have memory for one
> excessive element regardless of their actual number. This comes from
> that their sizeof() includes space for 1 element and then they get
> allocated via struct_size() or its open-coded equivalents, passing
> the actual number of elements.
> Expand virtchnl_struct_size() to handle such structures and replace
> those 1-elem arrays with proper flex ones. Also fix several places
> which open-code %IAVF_VIRTCHNL_VF_RESOURCE_SIZE. Finally, let the
> virtchnl_ether_addr_list size be computed automatically when there's
> no enough space for the whole list, otherwise we have to open-code
> reverse struct_size() logics.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

I remain a fan of _Generic uses. :)

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
