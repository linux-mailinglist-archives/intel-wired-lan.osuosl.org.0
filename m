Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 138402D4618
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Dec 2020 16:58:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45C5386D4C;
	Wed,  9 Dec 2020 15:58:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i46QP3aBwjfk; Wed,  9 Dec 2020 15:58:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E45D86C39;
	Wed,  9 Dec 2020 15:58:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E90451BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 15:44:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E466C870DC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 15:44:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ztf9VVGR-pdj for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Dec 2020 15:44:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4C7B786C50
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 15:44:37 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id f16so1747862otl.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Dec 2020 07:44:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=L9Pq6BNyXG8ajxZyez3wZsQ0mKu/8ydF/Z7laX598Co=;
 b=sn11wMPpiZyhhkIWsiIm01K/deqwOxQ5hJ3ajWCWQ0rjiAhA9iuHbUrzz4PiSP/KIN
 gQ6bU2F0CYPk9f5AZHuPamZlk1giLV3ZzMEsY+56niIQbjnitaBHta+t145GUDQbvqJI
 D02+U/LYN1/g9pExDtsEAT1LBGm1p6Oa8TqF+rsv9DXS2O/AMrU1ZKDZjGq0m86YFzt1
 eEXlyQFAog26HzPxIkhad8O0mo3dcXHaL2noTuPPDz6h/PZif8mCc1lqD16uHg43mwwZ
 C0xrVS6NU95pKKzi1MN1UY+VWl+nV4ZSNMd1fSq8L9bh7YdbylHIY6vtds/+wciLT6aC
 uDbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=L9Pq6BNyXG8ajxZyez3wZsQ0mKu/8ydF/Z7laX598Co=;
 b=o22BBl2mnbavQjqNN1mJVz9mOq1RR5ZjcAMRDuOwKZr+aE11BRELItrjY2vpWYT1os
 K7oRYzzGGUyE5i9cPCH44QUrn8sPff/bKI/C7tGGqQUdHkKlg0sBRjcEZ2x2ow1E/s6V
 xiXOtlorFHUMH2zkZy6f+HbsLSzFLpkVyz0/+4rZIGBSsa9dZ1b8yWsNcM51psPbNHdg
 2HEW8c3RIkT1cdjdNIWfWe/fOtV5ADiDPDa7liLvVae04RgpGrVMKShbZLqu8Uo5Dpva
 oraa29mVUcZdBJeCATgWf5vuEywFLW7+O1UVTTXpi4zbV9aX0phIrj0reqdzJuwq3wgy
 p/AA==
X-Gm-Message-State: AOAM531v7050/DIXM5hxkg0FTLe9Tzwf2YKGUsJlpT2b29XlN3wgNwHq
 pacHTCbHNm4pbm0XK6Ef/IQ=
X-Google-Smtp-Source: ABdhPJwf3/fYJzlqB2LPqMIKJHGAdXaozX1tdzHebBwDewhAxnnjKAvPoU3ss3ZqGK6l69aHoKypNg==
X-Received: by 2002:a05:6830:1b7b:: with SMTP id
 d27mr2393689ote.132.1607528676657; 
 Wed, 09 Dec 2020 07:44:36 -0800 (PST)
Received: from Davids-MacBook-Pro.local ([8.48.134.51])
 by smtp.googlemail.com with ESMTPSA id v13sm381328ook.13.2020.12.09.07.44.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Dec 2020 07:44:36 -0800 (PST)
To: Jesper Dangaard Brouer <jbrouer@redhat.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com> <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
 <20201207230755.GB27205@ranger.igk.intel.com>
 <5fd068c75b92d_50ce20814@john-XPS-13-9370.notmuch>
 <20201209095454.GA36812@ranger.igk.intel.com>
 <20201209125223.49096d50@carbon>
From: David Ahern <dsahern@gmail.com>
Message-ID: <6913010d-2fd6-6713-94e9-8f5b8ad4b708@gmail.com>
Date: Wed, 9 Dec 2020 08:44:33 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201209125223.49096d50@carbon>
Content-Language: en-US
X-Mailman-Approved-At: Wed, 09 Dec 2020 15:58:32 +0000
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
 hawk@kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/9/20 4:52 AM, Jesper Dangaard Brouer wrote:
> But I have redesigned the ndo_xdp_xmit call to take a bulk of packets
> (up-to 16) so it should not be a problem to solve this by sharing
> TX-queue and talking a lock per 16 packets.  I still recommend that,
> for fallback case,  you allocated a number a TX-queue and distribute
> this across CPUs to avoid hitting a congested lock (above measurements
> are the optimal non-congested atomic lock operation)

I have been meaning to ask you why 16 for the XDP batching? If the
netdev budget is 64, why not something higher like 32 or 64?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
