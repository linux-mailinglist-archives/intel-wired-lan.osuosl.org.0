Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 831E93F8DBD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Aug 2021 20:19:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DCCC361426;
	Thu, 26 Aug 2021 18:19:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HnHnmuXsQ-M0; Thu, 26 Aug 2021 18:19:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75EE96143F;
	Thu, 26 Aug 2021 18:19:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F34311BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 18:19:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DFA914014E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 18:19:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s1PruLyt6T31 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Aug 2021 18:19:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 01F9C40111
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 18:19:38 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 j4-20020a17090a734400b0018f6dd1ec97so2975127pjs.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 11:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=I292LG7vgq4KTBMOuKIuywhwI+2Z6jzDy4c1Rs1ZsBs=;
 b=qyea7EjeRrSDeFXhvwdwxYyD/cUxfn1B6lygpMv/gXzWpbGsTcAqk7HzMg6wXqYcwQ
 5bR5a3Pz11vSPm7t6lf1TmMYWr5TIeb7mUOw+iboqosrFSDjxGar5DcXrw6Mqr3w8z0W
 tIeAFju4JmZkddCN1KPygTJy1R0eaidvWCDBDw6tHtLmv6wC0T0FwKLvXr53+EsElStx
 4WhhHqHDCWUsUw3f8jrY6U9YwjzEUYcwVuHlpVO11WYdudNqyF0GGgcTf/RUHPAHJznj
 Q5XCjyHLv0xpP4ZcsopcWUPHly6q4qeWw61NxwSRlPR8u7fpw+L1THZV48e5iI9DlYF7
 fMDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=I292LG7vgq4KTBMOuKIuywhwI+2Z6jzDy4c1Rs1ZsBs=;
 b=kasfXeGuzL7CummSMD5e9yHaZP2fELR+l7/9sEFsxLDc1JchrH6UU9n+b2PT5uPUIc
 dIbzbuIRbWjJcsci8YNzmWXSgL1O0DocXEsI2HLYcbr9kbm+JNovX6sRY0hm/Kxeww3P
 m7PFM6LIOayAHnbdon1C937duvNuGxS04o0aBrLOJwfVFXfj2D/1UG40U+cS6ppES5QK
 gMbYYYXhw53zm/qNF+UQNpup8vNNSIsMQQyg2oy5To0JnBVI3MjMYwjX53HSQvwGRzqV
 De5/DWXiSk5HVwqJ30zSDQKZlfdy9rHh7IgiLO42CAI17AUE8vmVsGIrwiKu9klcYO7s
 dmVg==
X-Gm-Message-State: AOAM530Mi7D4rblX47VP7kw3t9dNKeNUL5z11Ymj21Exkwj3ixVmQCjV
 o5b34NVdg9OanHjv89ZIm9A=
X-Google-Smtp-Source: ABdhPJwFev7mmxVJjjbNg7QurgKuXmBlTrzeC1J5XHsCkxZhqkXm1xBULzhHSJ7NG7icBkuFOUFitQ==
X-Received: by 2002:a17:902:e744:b029:12d:6479:83a3 with SMTP id
 p4-20020a170902e744b029012d647983a3mr4868681plf.30.1630001978448; 
 Thu, 26 Aug 2021 11:19:38 -0700 (PDT)
Received: from [192.168.86.235] (c-73-241-150-58.hsd1.ca.comcast.net.
 [73.241.150.58])
 by smtp.gmail.com with ESMTPSA id s15sm6758253pjk.21.2021.08.26.11.19.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Aug 2021 11:19:38 -0700 (PDT)
To: Jason Xing <kerneljasonxing@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20210826141623.8151-1-kerneljasonxing@gmail.com>
 <00890ff4-3264-337a-19cc-521a6434d1d0@gmail.com>
 <860ead37-87f4-22fa-e4f3-5cadd0f2c85c@intel.com>
 <CAL+tcoCovfAQmN_c43ScmjpO9D54CKP5XFTpx6VQpwJVxZhAdg@mail.gmail.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <da5da485-9dc7-e731-a8d9-f5ad7c7dffde@gmail.com>
Date: Thu, 26 Aug 2021 11:19:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAL+tcoCovfAQmN_c43ScmjpO9D54CKP5XFTpx6VQpwJVxZhAdg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v4] ixgbe: let the xdpdrv work with
 more than 64 cpus
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
Cc: songliubraving@fb.com, kafai@fb.com, Eric Dumazet <eric.dumazet@gmail.com>,
 daniel@iogearbox.net, Jason Xing <xingwanli@kuaishou.com>,
 netdev <netdev@vger.kernel.org>, ast@kernel.org, andrii@kernel.org,
 Shujin Li <lishujin@kuaishou.com>, yhs@fb.com, kpsingh@kernel.org,
 kuba@kernel.org, bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 David Miller <davem@davemloft.net>, LKML <linux-kernel@vger.kernel.org>,
 hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/26/21 10:03 AM, Jason Xing wrote:

> 
> Honestly, I'm a little confused right now. @nr_cpu_ids is the fixed
> number which means the total number of cpus the machine has.
> I think, using @nr_cpu_ids is safe one way or the other regardless of
> whether the cpu goes offline or not. What do you think?
> 

More exactly, nr_cpu_ids is the max number cpu id can reach,
even in presence of holes.

I think that most/many num_online_cpus() in drivers/net are simply broken
and should be replaced by nr_cpu_ids.

The assumptions of cpus being nicely numbered from [0 to X-1],
with X==num_online_cpus() is wrong.

Same remark for num_possible_cpus(), see commit
88d4f0db7fa8 ("perf: Fix alloc_callchain_buffers()") for reference.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
