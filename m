Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 675BE2D1FB7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 02:02:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0227C87BC4;
	Tue,  8 Dec 2020 01:02:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J181waaf+jlT; Tue,  8 Dec 2020 01:02:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 822E087B99;
	Tue,  8 Dec 2020 01:02:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 382F71BF327
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 01:01:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 32FF187FBF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 01:01:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QqAyaktNku5y for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 01:01:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7226587FBB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 01:01:06 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id k2so17661235oic.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Dec 2020 17:01:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=EGTq01zt+FGxGacY/8/eJqiCW+OUcVGtSBBVhTDlMIM=;
 b=tbewH1LbfmWSPPssjZ9fk72VGh8pnG9sjKi8hebInMnZ6uTNo3HR5UWExfMZTUL/au
 1aZYJayKPplg9tmHI2SAWZufD65S+zn0SpLHykGkxjTOnThGlyS2ZlPiXCV3pfCV0Eug
 tLAqh0qz164Oyh5M/xf/CF/Ngtq1we/If65o2U3uvqxHEJdh/+2YwhQ1YzbwoEfcWDQf
 regSaDYJPOWzy/l+yJyJ/Gb1c6l9Nj10t3RT687PWOJJw7dy4gJiyzZ4MbiyhSvrpRq6
 zn/IeQjDVtAYT+21tepkY34FpoJt5cBeVPwKVt4O5k0zgAs4Ubq1WzcU9F6YIbyEmmwJ
 /NLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EGTq01zt+FGxGacY/8/eJqiCW+OUcVGtSBBVhTDlMIM=;
 b=jGsCb3F1ob0M8GV0E3mfFlfY9ocV3yTKVYqPOvLA2uGYsGQ8lAl341M1YRYXiqW+O0
 JsAbNv7uQaJgEGujGWZ1F5Xmy4ie9Jp+GlyXfJx3Y5TULfne0AK0g6bpADvErg332cOw
 0CSGE9opYS92f4SemS5BIQ6BijSK995l1+/E+Fw+IprDm1IjZP2qgRIsT7Z7LTjYlZtp
 oWtLGz9wFGY4PPzBCJahwpbFQ0QPDCCG0fe7cuC3c3sawmq5HUbJMngtkS2miheWPS96
 vCqqa2SeV0WGTZQ6tvZnNfsfbdOcBKR9v+Q5N2l8jZOjwpaAxbeN1+tKR8xFV47YizJX
 tEVQ==
X-Gm-Message-State: AOAM531egcKNHIZ74Ei7eeOmHQSWioxry/JYppRQgevfKHIDhczAg6gU
 LoGG1Jkn0GRqQ7MuoxOEwoM=
X-Google-Smtp-Source: ABdhPJw0H04+oK5NlTzWb8Vv5QEDBjnp0rTZpRqCztSA8LiqqlN/nhCTVOVS2SKQMakoGePkp9f9Mw==
X-Received: by 2002:aca:df83:: with SMTP id w125mr1038406oig.165.1607389265684; 
 Mon, 07 Dec 2020 17:01:05 -0800 (PST)
Received: from Davids-MacBook-Pro.local ([8.48.134.51])
 by smtp.googlemail.com with ESMTPSA id n63sm3353769oih.39.2020.12.07.17.01.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Dec 2020 17:01:04 -0800 (PST)
To: John Fastabend <john.fastabend@gmail.com>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>,
 Daniel Borkmann <daniel@iogearbox.net>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com> <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
From: David Ahern <dsahern@gmail.com>
Message-ID: <431a53bd-25d7-8535-86e1-aa15bf94e6c3@gmail.com>
Date: Mon, 7 Dec 2020 18:01:00 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 08 Dec 2020 01:02:43 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf 1/5] net: ethtool: add xdp
 properties flag set
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
Cc: maciejromanfijalkowski@gmail.com, andrii.nakryiko@gmail.com,
 hawk@kernel.org, netdev@vger.kernel.org,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/7/20 1:52 PM, John Fastabend wrote:
>>
>> I think we need to keep XDP_TX action separate, because I think that
>> there are use-cases where the we want to disable XDP_TX due to end-user
>> policy or hardware limitations.
> 
> How about we discover this at load time though. Meaning if the program
> doesn't use XDP_TX then the hardware can skip resource allocations for
> it. I think we could have verifier or extra pass discover the use of
> XDP_TX and then pass a bit down to driver to enable/disable TX caps.
> 

This was discussed in the context of virtio_net some months back - it is
hard to impossible to know a program will not return XDP_TX (e.g., value
comes from a map).

Flipping that around, what if the program attach indicates whether
XDP_TX could be returned. If so, driver manages the resource needs. If
not, no resource needed and if the program violates that and returns
XDP_TX the packet is dropped.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
