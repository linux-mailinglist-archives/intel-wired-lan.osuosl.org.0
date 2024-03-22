Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7F2886624
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Mar 2024 06:30:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E205417DC;
	Fri, 22 Mar 2024 05:30:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rWIv38qWoLjp; Fri, 22 Mar 2024 05:30:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97C1340125
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711085436;
	bh=321mETi/Adac/ZBnxDuN0Y4/HnqrpGTboku9RcY+CYU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oy4I1o3V6zN6dIYbLLu5WEM3ayKPQbUMmK85Rj67nl0HDcn/42amMChNvmgffMfU7
	 BdgI9p4Q1vIFfumKkBFnXxaBG3IOB6YMpgfoZzZL4O8VM2VNj56YTTfivFpOfh+ZQQ
	 V8mXrWkSLzq7npL+8TAziutGAGroLEgEZ22u9YRa4RVcp+5mC4IZcdYUZYXWHzk+00
	 Cms9FIwzRToYHvwb+0GuP2DME/o3vPCnfIYNjZeC1RY1zlGptQqzlrBWrFzkZNwWfE
	 MLiqFq+Bj5voW34OSIEwphiK+tdCZ3gArXYz1doqbb4zm1rlZQXjSeTPtQSnD9PIp6
	 C2ST1cpweV5mQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97C1340125;
	Fri, 22 Mar 2024 05:30:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E29271BF421
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 05:30:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB7C48244D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 05:30:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9-cHNMO8NBLy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Mar 2024 05:30:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32e; helo=mail-wm1-x32e.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D12638232D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D12638232D
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D12638232D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 05:30:33 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-4140efa16caso12478865e9.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 22:30:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711085431; x=1711690231;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=321mETi/Adac/ZBnxDuN0Y4/HnqrpGTboku9RcY+CYU=;
 b=IGiQN04FvZD3DgR2ZfNl0QygiSVGAWqGL3BAaZTipIz6riwmA8nZCcSDubyXf/bt6g
 TJS52Y4gCf2ILMa+MuvzMrTjES2fsQuk/+Hd4T7kzdDpuijUwNuvIAnaqCYytk+p3ZDK
 SKHaCjjnb0BhnpTibmvOnxE7qvP1SX2+umS8BtFsT+e7m5HppifMfDL6wgiH9MMUutPl
 xJGhI95yvkJMUyJAyA45hQnMcmOLnYVQxQ3ypiD4Q88XL/fyqk4XTzh8M1pD3zCubjTb
 DQxP0VGWNkVXaitOkNXu1eAZPnJlk/Sg5MCh+aP97xIw4TPK6VdIeLjBhGB4Sqos7x5T
 sc7A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXI/K1VPMToLXNYz5SaxA0+ZYEWGIXoNAXaCVoOEcq4XjdtE3+QZ9lkNF0ZkWow2kKjJVATwh3O0pZPL3fUxIPQhrk4nw11BtgfPtH567wtcg==
X-Gm-Message-State: AOJu0YwMJKx7txX0149LCpbqPTWV37Fqc+SVDoMNrktzPUUKlbflgFPb
 kGj6VJ/STnirnpIwjHJeS7tO25o5TfmQp8tMrO0DCeizsbdfO1yfqzy6t8nfW4c=
X-Google-Smtp-Source: AGHT+IHkKxlHhdE6WoCQw6vjGFcdk5VzZZM3XWQTSj4P8n78wnFsREbl0RQB8AA7bcd6TncGfFNFEA==
X-Received: by 2002:a05:600c:4f89:b0:414:262:df45 with SMTP id
 n9-20020a05600c4f8900b004140262df45mr764816wmq.32.1711085431191; 
 Thu, 21 Mar 2024 22:30:31 -0700 (PDT)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 f9-20020a05600c4e8900b00413e79344b7sm1882713wmq.19.2024.03.21.22.30.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Mar 2024 22:30:30 -0700 (PDT)
Date: Fri, 22 Mar 2024 08:30:26 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Julia Lawall <Julia.Lawall@inria.fr>
Message-ID: <1655b591-1259-4d71-8f93-e840b1ccc22e@moroto.mountain>
References: <e5172afb-427b-423e-877a-10352cf4a007@web.de>
 <F2FBADE8-EDF9-4987-A97B-CF4D2D1452E0@inria.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <F2FBADE8-EDF9-4987-A97B-CF4D2D1452E0@inria.fr>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1711085431; x=1711690231; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=321mETi/Adac/ZBnxDuN0Y4/HnqrpGTboku9RcY+CYU=;
 b=AzoEf0gsYYvatbyr2kmYDUJGVB8/ESTzjOmbVXKQLEuiUA7P3RSigkSQ9U2KLRvuMt
 UWjq41xuWQVCqr/daAJ4EJj6tLeVzyzfjNAWg0X2X1FZOgAisHliDGDXPLi112HpPvXT
 tzQUsYx2BGpqJiOsm6liphtWmRWi4/ZIy0LW0HnTJP5tJSYq4BXXReL0lga8IEm08j9p
 VcOVwyzlqbQy8+/AzNVqp0dVOD+7mvhIlF56GmYepD4abCtdkGR2y4F1hc54pGTbU22O
 OdV/sur2Bi5BTotUVgUu0e7859Bkv7GAR4CdLLZ58dGuBMlLm7I7IQ7HTpegaC3HAEB/
 8K1w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=AzoEf0gs
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix freeing uninitialized
 pointers
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Kees Cook <keescook@chromium.org>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 David Laight <David.Laight@aculab.com>, Markus Elfring <Markus.Elfring@web.de>,
 Jakub Kicinski <kuba@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 21, 2024 at 04:20:09PM -0400, Julia Lawall wrote:
> Does one prefer an initialization of null at the top of the function
> or an initialization to a meaningful value in the middle of the
> function?

I prefer at the top, but it will be interesting to see where the
consensus is.  Kent Overstreet has said we should move away from
declarations at the top generally.  I don't know if anyone else agrees
with him though.

regards,
dan carpenter

