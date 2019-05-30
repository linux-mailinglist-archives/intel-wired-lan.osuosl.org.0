Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 499393058F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2019 01:56:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5103F86A35;
	Thu, 30 May 2019 23:56:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EI87pcycpBtl; Thu, 30 May 2019 23:56:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C711C86A37;
	Thu, 30 May 2019 23:56:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B27191BF297
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2019 23:56:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ABC1F2041F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2019 23:56:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7lRztMUfz3t6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2019 23:56:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by silver.osuosl.org (Postfix) with ESMTPS id CD3CE20414
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2019 23:56:18 +0000 (UTC)
Received: by mail-pf1-f182.google.com with SMTP id c14so2554329pfi.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2019 16:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ci6z0DpBFa7HuJWAHxGdHuYnW8mClDBsdXXC0tted/Q=;
 b=MD0KhmNl+8nPftm4tU/0uii3Fi1m2zcXy7+Nk+4Vae1qpwqaE7vkkZHlor8ZGrc7nF
 KNvdGW3Bw65OsNoUFdE8pLIce3OzVcJW9+duoU+MsQ0AuQcKBOU2Ri4AjVDIU3kZyPw8
 denkj6wnL0oIQKXoEO1qQEBNFqdRkLw41FGgzeo3Wv7CA85+y24KC1oLsT5zo1I/y/tV
 R2+Qkfc6+E3Q4BM17qRSnkqQQNRFbfz95rmIIn+hkWtrSkPN7LtbaPEsrABp9+Y/6hjZ
 R01C1RVlSZmJYdxl4o/RYMdu9FlKgjAaYIpmLTi2Cj4Sz0ILXXAbech9rQJLa9GSuvnF
 yhRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ci6z0DpBFa7HuJWAHxGdHuYnW8mClDBsdXXC0tted/Q=;
 b=GwfQx2Ga2FOIR/RxX2fcyeACxzom56/igG8ThRTQwbUfGkjtJElqLA78HrZIUSVV7g
 Xskh9Mi2gcrJj/BVPt4QZUYajWX9zkuEIYRRTP9EE2kHPEUyxI1tB6YsciXo1Fs6rjvj
 evt846kPW90t53kJZzkDqwXLtdo317NyouZkVUd7EUHXFcbjgt2V1G1La8Bq0jYd7Fwe
 Ztv/3A4tq7BHjGZwCEEanVOKyvIAiJ0GAuQBoZCXZZUVeeRT6SpWj+1NS7hmS0Di9fc7
 Xxotj77cEcJXpgE7htO12vHzrvzUlL6d6jhfHFJLQfjrRyyKQPKCmpiN54zcoHGukZk9
 NWAw==
X-Gm-Message-State: APjAAAVKNxKKmuGkYa36xe/2blWP9RGOUbvWWlu4QlzUfuP7a4pKOTaz
 c+Ovb1Sx+Z9Cz9Ie+tMkqUs=
X-Google-Smtp-Source: APXvYqz8WkrdvsiTQenk5sYYRR2nwXJ5N2Xhb0SFlPDYaRQ6N2bxST9T1QkWN6c2DB31jNYNWR+x9Q==
X-Received: by 2002:a63:18e:: with SMTP id 136mr5987289pgb.277.1559260578504; 
 Thu, 30 May 2019 16:56:18 -0700 (PDT)
Received: from ?IPv6:2620:15c:2c1:200:55c7:81e6:c7d8:94b?
 ([2620:15c:2c1:200:55c7:81e6:c7d8:94b])
 by smtp.gmail.com with ESMTPSA id 124sm4830985pfe.124.2019.05.30.16.56.16
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 16:56:17 -0700 (PDT)
To: Alexander Duyck <alexander.duyck@gmail.com>,
 Stephen Hemminger <stephen@networkplumber.org>
References: <e070e241-fb65-a5b0-3155-7380a9203bcf@molgen.mpg.de>
 <8627ea1e-8e51-c425-97f6-aeb57176e11a@gmail.com>
 <eb730f01-0c6d-0589-36cc-7193d64c1ee8@molgen.mpg.de>
 <CANn89i+VvwMaHy2Br-0CcC3gPQ+PmG3Urpn4KpqL0P7XBykmcw@mail.gmail.com>
 <20190529093548.3df7ee73@hermes.lan>
 <CAKgT0UdWmu3GjeMd9jmA=5FGQ=5cLnFb51arf+zkX7omc-G1fg@mail.gmail.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <50261bc0-2732-5adb-1ff6-a4ac040e39b1@gmail.com>
Date: Thu, 30 May 2019 16:56:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKgT0UdWmu3GjeMd9jmA=5FGQ=5cLnFb51arf+zkX7omc-G1fg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Driver has suspect GRO implementation,
 TCP performance may be compromised.
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/30/19 3:52 PM, Alexander Duyck wrote:

> Actually I think there are some parts that don't have any receive
> limits that are supported by the e1000 part. What ends up happening is
> that we only drop the packet if it spans more than one buffer if I
> recall correctly, and buffer size is determined by MTU.
> 
> I always thought MTU only applied to transmit since it is kind of in
> the name. As a result I am pretty sure igb and ixgbe will be able to
> trigger this warning under certain circumstances as well. Also what
> about the case where someone sets the MTU to less than 1500? I think
> most NICs probably don't update their limits in such a case and
> wouldn't it also trigger a similar error?
> 


Linux does not have a notion of MRU, mtu is used for both tx and rx.

Most NIC drivers allocate skb of the maximal size (derived from netdev->mtu)
and program the NIC to drop packets bigger than X bytes  (X also derived from netdev->mtu)

Another interesting point is that Paul host is receiving big packets,
that means that one host in his local network is overriding the 1500 MTU :)

Eventually we could add a netdev->mru and allow few drivers to set
their maximal mru, if bigger than netdev->mtu.

e1000e would probably set netdev->mru to 2048 - sizeof(ethernet headers), if
the driver is operating at MTU = 1500

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
