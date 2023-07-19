Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 646B27598E4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jul 2023 16:57:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6BBE610F3;
	Wed, 19 Jul 2023 14:57:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6BBE610F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689778628;
	bh=8PHXwqUzvJMBGfuWMWgO+9rZUL3NNjQGU/kE2q6i928=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9A8JQM6tREutS8rKF3HZH/EvlxvjMWzmTFl2tzJrBTfYmj/8dfTfjxlxHfOXGU5D+
	 SCR7zvvmDPTFB5/xU1YRb9JTbgfNfTZuthClAepNziNpTfaLki6AlulHxISt1GgSAa
	 IXHqP5wkTD+J7bXqiauTvbhnNW36gGvWM7tctzDUxdBvTcUWG3BtumMnsD9B8J/kmG
	 lhV3JgZ5qTcgZsYX0jOk/HbWf/cFoVtNjBkO4SIowwyuylSARL69lXuMFZJgkPnPbu
	 0+EIKTy5/TjLiO48EP+paks5wl+NTiUqhOp3tNkub/ILZYUOhC7P8KsYyflEoX/Wtw
	 hP5TVAx9L/xhA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G_zFU34KCtsd; Wed, 19 Jul 2023 14:57:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5A33610E9;
	Wed, 19 Jul 2023 14:57:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5A33610E9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B577C1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 12:31:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 89857402D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 12:31:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89857402D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XE_NbkUMmU4S for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jul 2023 12:30:59 +0000 (UTC)
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com
 [IPv6:2607:f8b0:4864:20::12b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D7E05402A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 12:30:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7E05402A9
Received: by mail-il1-x12b.google.com with SMTP id
 e9e14a558f8ab-34896a1574dso10148055ab.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 05:30:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689769858; x=1692361858;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nyelAFhBqC7a6h8KFfAv2WQuGfH7nEdJ9cZtx3ZPD3w=;
 b=FqXgRe5pid92CDz5lTNWPCsUIh0a3X2dkMPn5hWsft/gEb8C4zO1Ve43uZJC5+ysmf
 RgciN4rzJCuODbzVrOzYJgfb+COXvHrV4X2t4wn75/67KU3g3uyqA5fz3A0wvT2tQC0W
 Gb/aq7rgNNojd9BO8iucJLh6GiQSc+al0W+6fGio2kk5WvUfjU0yAYYggM+pUjtdfw2J
 cYUn2kH0MD3Ia4eJtmN+yriw2fI3Slt3xODGH5weMVeMjuyA1VjRxy7I4rKdP4RFk9Ub
 Z0JgM9AIJDrCVTqe3KOPLXDxshHm4lYh1I2075i4eKmxCglUaF/SxHmssTy+4SMmevqO
 50/A==
X-Gm-Message-State: ABy/qLbqyNYrNIjzRIDgPCyJlLLjGZWhvkR7j31wlTRPozk61Vx95V5y
 rPO/mHXzuWWfODYcW/7qQEk=
X-Google-Smtp-Source: APBJJlEMyFO+3pdtjDtXrJi07Y2AVy0m52kCGiLm+w9lvt8THgUVqbEF3FDdma3ZuPO9yaElS6E6hw==
X-Received: by 2002:a05:6e02:1bc8:b0:348:90e2:750a with SMTP id
 x8-20020a056e021bc800b0034890e2750amr2650304ilv.8.1689769857778; 
 Wed, 19 Jul 2023 05:30:57 -0700 (PDT)
Received: from [192.168.0.104] ([103.131.18.64])
 by smtp.gmail.com with ESMTPSA id
 mr1-20020a17090b238100b002676e973274sm1211434pjb.0.2023.07.19.05.30.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Jul 2023 05:30:56 -0700 (PDT)
Message-ID: <4759e7d4-5a8c-8acb-1775-e049b9b06cc1@gmail.com>
Date: Wed, 19 Jul 2023 19:30:46 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Thorsten Leemhuis <regressions@leemhuis.info>,
 Andrzej Kacprowski <andrzej.kacprowski@linux.intel.com>,
 Krystian Pradzynski <krystian.pradzynski@linux.intel.com>,
 Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>,
 Jacek Lawrynowicz <jacek.lawrynowicz@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 hq.dev+kernel@msdfc.xyz
References: <e79edb0f-de89-5041-186f-987d30e0187c@gmail.com>
 <444d8158-cc58-761d-a878-91e5d4d28b71@leemhuis.info>
From: Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <444d8158-cc58-761d-a878-91e5d4d28b71@leemhuis.info>
X-Mailman-Approved-At: Wed, 19 Jul 2023 14:57:02 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1689769858; x=1692361858;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=nyelAFhBqC7a6h8KFfAv2WQuGfH7nEdJ9cZtx3ZPD3w=;
 b=VE7iNtpws7j28phGM9tm3pz1NUfmwVl2IllYO7nmxLTE1LTAnZYvR8lfo+6QeFbnc1
 Wg/Ot6iaw/8lS5AylTLNd818zyyDsQXk178XLYrRAS4FXB+fG3PduHE+8rdCfLyAbKOR
 gLFAQeKv7Qvo2u6+2/aEsu4FhZ4u3ROPSFYmNXi1UsVYgviHfKb/ehXra0xET61tuTdC
 Ob8vZhpQVnSqud6YGJKSt/fQXVlwQg4suNwwTQruBSlxeujuSdAb2oB0WNIiGamikdHK
 PneVoOCo22TaTlJ8bOK+SPd5zNFnFNxj2ginv4HSDuOmlrr6l8wwkdV2G3f6dgXR7Cce
 xAKA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=VE7iNtpw
Subject: Re: [Intel-wired-lan] Fwd: Unexplainable packet drop starting at
 v6.4
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
Cc: Linux Networking <netdev@vger.kernel.org>,
 Linux Intel Ethernet Drivers <intel-wired-lan@lists.osuosl.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux DRI Development <dri-devel@lists.freedesktop.org>,
 Linux Regressions <regressions@lists.linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/19/23 18:49, Thorsten Leemhuis wrote:
> On 18.07.23 02:51, Bagas Sanjaya wrote:
>>
>> I notice a regression report on Bugzilla [1]. Quoting from it:
>>
>>> After I updated to 6.4 through Archlinux kernel update, suddenly I noticed random packet losses on my routers like nodes. I have these networking relevant config on my nodes
>>>
>>> 1. Using archlinux
>>> 2. Network config through systemd-networkd
>>> 3. Using bird2 for BGP routing, but not relevant to this bug.
>>> 4. Using nftables for traffic control, but seems not relevant to this bug. 
>>> 5. Not using fail2ban like dymanic filtering tools, at least at L3/L4 level
>>>
>>> After I ruled out systemd-networkd, nftables related issues. I tracked down issues to kernel.
>> [...]
>> See Bugzilla for the full thread.
>>
>> Thorsten: The reporter had a bad bisect (some bad commits were marked as good
>> instead), hence SoB chain for culprit (unrelated) ipvu commit is in To:
>> list. I also asked the reporter (also in To:) to provide dmesg and request
>> rerunning bisection, but he doesn't currently have a reliable reproducer.
>> Is it the best I can do?
> 
> When a bisection apparently went sideways it's best to not bother the
> culprit's developers with it, they most likely will just be annoyed by
> it (and then they might become annoyed by regression tracking, which we
> need to avoid).
> 

I mean don't Cc: the culprit author in that case?

> I'd have forwarded this to the network folks, but in a style along the
> lines of "FYI, in case somebody has a idea or has heard about something
> similar and thus can help; if not, no worries, reporter is repeating the
> bisection".
> 

Aha! I missed that point. I already have networking folks in To: list.

Thanks!

-- 
An old man doll... just what I always wanted! - Clara

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
