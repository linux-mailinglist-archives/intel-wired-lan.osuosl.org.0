Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBD28F5D6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 22:38:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CB4D185F6E;
	Thu, 15 Aug 2019 20:38:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1yVZRJhNodlm; Thu, 15 Aug 2019 20:38:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 694FC86155;
	Thu, 15 Aug 2019 20:38:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD4551BF40D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 11:12:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B5B4520465
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 11:12:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kqNsCZBeTMas for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2019 11:12:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by silver.osuosl.org (Postfix) with ESMTPS id CE42420450
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 11:12:40 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id w20so1827846edd.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 04:12:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=ntIsD69DO/hO6b75AtxLAE4j1t2W0/fwbe66EmMsreM=;
 b=C76qkDd6rf/iuSuV7HUpviPpENgm/ld4b/iJvLtJ3R0Q9pUOWkPwSlmF9TSdWaAWeM
 VeBgpMgQLyKlWsDrmGV33TCjvxNpPb09kgx3wGmn2aMeuXR1DcSIdFxXn3tpdUfRPSsH
 i3IMhOJwwh4EyEUlhth5CuHJ29dFEmt2pnFAcdQxBy3eUmSon68Yno9bWjFEj8cm520Z
 TY9Pa4g8C2lzRjB9uR61rdPv08Ud1wbZ0WS75WKoDQvYOpNqZrws+zulx1nBZMqDq1wo
 Td0dhuKBwWFh5E1xCYawhknTenzr/HHA/LiO8rw9i9srv+HPmo6ebPj8tH09US+li/wm
 AKtw==
X-Gm-Message-State: APjAAAW7fbFWUEsNtY2ZPWhcQ9LX0K31OxDnRloswYm4iurl1H2FlhZo
 pSZv3nxcz2tIm39UuuT4wHZaXg==
X-Google-Smtp-Source: APXvYqySmryfwFB28Qyo1faZoMqbuRI9iUKmVaJDkDfpefaX3OWKGu+Vwl+P/M8P9UMOyLYn7wa1rA==
X-Received: by 2002:aa7:d755:: with SMTP id a21mr4711292eds.295.1565867559112; 
 Thu, 15 Aug 2019 04:12:39 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id c15sm505684edf.37.2019.08.15.04.12.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 04:12:38 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 00332181C2E; Thu, 15 Aug 2019 13:12:37 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Sridhar Samudrala <sridhar.samudrala@intel.com>, magnus.karlsson@intel.com,
 bjorn.topel@intel.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 sridhar.samudrala@intel.com, intel-wired-lan@lists.osuosl.org,
 maciej.fijalkowski@intel.com, tom.herbert@intel.com
In-Reply-To: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
References: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 15 Aug 2019 13:12:37 +0200
Message-ID: <87ftm2adi2.fsf@toke.dk>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 15 Aug 2019 20:38:54 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/5] Add support for SKIP_BPF
 flag for AF_XDP sockets
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sridhar Samudrala <sridhar.samudrala@intel.com> writes:

> This patch series introduces XDP_SKIP_BPF flag that can be specified
> during the bind() call of an AF_XDP socket to skip calling the BPF 
> program in the receive path and pass the buffer directly to the socket.
>
> When a single AF_XDP socket is associated with a queue and a HW
> filter is used to redirect the packets and the app is interested in
> receiving all the packets on that queue, we don't need an additional 
> BPF program to do further filtering or lookup/redirect to a socket.
>
> Here are some performance numbers collected on 
>   - 2 socket 28 core Intel(R) Xeon(R) Platinum 8180 CPU @ 2.50GHz
>   - Intel 40Gb Ethernet NIC (i40e)
>
> All tests use 2 cores and the results are in Mpps.
>
> turbo on (default)
> ---------------------------------------------	
>                       no-skip-bpf    skip-bpf
> ---------------------------------------------	
> rxdrop zerocopy           21.9         38.5 
> l2fwd  zerocopy           17.0         20.5
> rxdrop copy               11.1         13.3
> l2fwd  copy                1.9          2.0
>
> no turbo :  echo 1 > /sys/devices/system/cpu/intel_pstate/no_turbo
> ---------------------------------------------	
>                       no-skip-bpf    skip-bpf
> ---------------------------------------------	
> rxdrop zerocopy           15.4         29.0
> l2fwd  zerocopy           11.8         18.2
> rxdrop copy                8.2         10.5
> l2fwd  copy                1.7          1.7
> ---------------------------------------------

You're getting this performance boost by adding more code in the fast
path for every XDP program; so what's the performance impact of that for
cases where we do run an eBPF program?

Also, this is basically a special-casing of a particular deployment
scenario. Without a way to control RX queue assignment and traffic
steering, you're basically hard-coding a particular app's takeover of
the network interface; I'm not sure that is such a good idea...

-Toke
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
