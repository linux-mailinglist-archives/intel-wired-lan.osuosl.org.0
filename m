Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BC45E69CA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 19:41:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6E6560B45;
	Thu, 22 Sep 2022 17:41:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6E6560B45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663868486;
	bh=NviBweVOduLDifpcXcXwTAPqZgAZVXrXA2zdZRayuCg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=w+jNO4VVHe+MBQFuHU6QauIAqUKJFKLq+2Y61LsIbYgLTLa6DgfAfiJWNBOcainvZ
	 U/X2T7SQyet36Zny5tXKWNf4f+ilvx3k7zEqVFUa37JXUCJAMP5x9BYFRXJUV1QmrB
	 wUPkcN314JXGGt5CVtPnk28aLkPNfn4hlowJqw4Y735mTAmiPehbAOIZ52ciWWdFDR
	 sq9/v83GeG2BLa+bZzCg49gIK4ZWqY4n9UbOcvkMFqNPNr1NbI5Go4f1JyLA9l3myB
	 bIl+AufUKn9ETIHIkCCAtfzLv6QFfBGjArzpznxG9y1Zqr7VLm0tHI87TzvMn5v7So
	 CL0/1Y00yyWNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gl8lxqnolHC6; Thu, 22 Sep 2022 17:41:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B27FD606C0;
	Thu, 22 Sep 2022 17:41:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B27FD606C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6D2321BF955
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 17:41:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5217A40457
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 17:41:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5217A40457
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vI_EUxTSURQd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 17:41:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7186B403A7
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com
 [IPv6:2607:f8b0:4864:20::12a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7186B403A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 17:41:19 +0000 (UTC)
Received: by mail-il1-x12a.google.com with SMTP id a2so1533204iln.13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 10:41:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=AsxpWsr5dzcIncNfx/+Sw1HyEwfMiBKVAKBEW7wNeQA=;
 b=xYg7eNH2E59ifGSKJ3gYbC9iEd9Gobl0j03aup9GarMlNYU+LGDaRf1vkMUJSwxVMt
 P9cnaMa8VkWJxEc/53fAyo+bQqm6Ywez2DzyISq1vf41DfQkqk8yEpk/gQZ4XrS+cm+o
 TWBtoUx8yStGo4K333CErzozRIqMVp8gFo4Xw8/dXs6MupgOA1iKPeFosmuLB6pqDXAs
 CAqwwTTLaVpp9s7ETpCGn0tiE6YRy7YybHprdllLncbM2D84EutjcykUC+mpCrDciNRQ
 WFYzEoCSj/1d6ffvX34wV+6OIxd1q0oysFZtdF7yXmXQzNqi8TXPq0+Qqig4lglE1q3T
 pmNg==
X-Gm-Message-State: ACrzQf2y3bUHYyCeq4g7N/4sg5L4455F+GcUUsSA9fxrUb5Umhzx6ExN
 Zb0kvAlue8flK4omz1ela+vnCdqCYOyxS3GIT8s=
X-Google-Smtp-Source: AMsMyM5Iawxjt3SoOGTNllk8NVk3tyvcsl1U/lS7sz1j/GB7JoPgBuMEGvT0T6zJ1tbupUccXP7nLvzrv1dgRwQijjQ=
X-Received: by 2002:a05:6e02:152a:b0:2f6:58ae:ff0c with SMTP id
 i10-20020a056e02152a00b002f658aeff0cmr2429401ilu.237.1663868478589; Thu, 22
 Sep 2022 10:41:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220922031013.2150682-1-keescook@chromium.org>
 <20220922031013.2150682-12-keescook@chromium.org>
 <CANiq72=m9VngFH9jE3s0RV7MpjX0a=ekJN4pZwcDksBkSRR_1w@mail.gmail.com>
 <202209220855.B8DA16E@keescook>
In-Reply-To: <202209220855.B8DA16E@keescook>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 22 Sep 2022 19:41:07 +0200
Message-ID: <CANiq72=unhDJOGTg+ja4UdVRp8sG7Wc+_rqQhvJideA=WNjbFA@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=AsxpWsr5dzcIncNfx/+Sw1HyEwfMiBKVAKBEW7wNeQA=;
 b=HG1BCa9aD7EruuXSP8vfBpl2xSAcB9NgvDE4n3t4WegezK8iPhrhfTbs3Xxfdxp/aP
 0j4XfOQ90rYJJLxvR5Fxutq+CKSR+3NwG5g3gHNWC0rGeSJkCPwM1qeiyt5MoX9kie1E
 Ogc+09wvN660uSYqTrtW/DY7BHEKikOuBqjuMNkdFuICid58Qmi9sfyROy/V1LgkIpE7
 e2Nv1gEo4Vp0GQpWl3bRqM1059jceqcIcZbW6os/ZnPJ8J1PnWKNgSi8e2+WYP/WJpYk
 +8abyMsCFGIX1fgDuD8Pv5kCGUDjVFxUFNtnD5auEWqa0LNmLWv9bnrrUipYT443cCtB
 +LNg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=HG1BCa9a
Subject: Re: [Intel-wired-lan] [PATCH 11/12] slab: Remove __malloc attribute
 from realloc functions
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
Cc: Feng Tang <feng.tang@intel.com>, linux-wireless@vger.kernel.org,
 llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Yonghong Song <yhs@fb.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Jakub Kicinski <kuba@kernel.org>,
 David Sterba <dsterba@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vlastimil Babka <vbabka@suse.cz>, Hao Luo <haoluo@google.com>,
 Alex Elder <elder@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 22, 2022 at 5:56 PM Kees Cook <keescook@chromium.org> wrote:
>
> I wasn't sure if this "composite macro" was sane there, especially since
> it would be using __malloc before it was defined, etc. Would you prefer
> I move it?

Hmm... On one hand, they end up being attributes, so it could make
sense to have them there (after all, the big advantage of that header
is that there is no `#ifdef` nest like in others, and that it is only
for attributes).

On the other hand, you are right that the file so far is intended to
be as simple as possible (`__always_inline` having an extra `inline`
and `fallthrough` would be closest outliers), so if we do it, I would
prefer to do so in an independent series that carries its own rationale.

So I would leave the patch as it is here.

Cheers,
Miguel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
