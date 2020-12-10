Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0452D6044
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Dec 2020 16:47:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 79F7C20505;
	Thu, 10 Dec 2020 15:47:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5+GM2vznCeSF; Thu, 10 Dec 2020 15:47:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8C0A720503;
	Thu, 10 Dec 2020 15:47:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3366D1BF332
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 03:34:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2E2F287B3D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 03:34:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7A8xSgIeXXQQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Dec 2020 03:34:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 63CD587B3F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 03:34:52 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id 15so4234635oix.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Dec 2020 19:34:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=y1+dVCzQPF0KymNAnO7YyR5jmkfWoYWWIbPSsgMPYLA=;
 b=EnbmGH79WOZ62PwDLomNtwuOxaxkeklUHmggDWLdKBkrX9fttVRYl1Q3PwS6Ivgeoi
 lCDs2I8VSbMsXqX4sQDpnMLgqwdnMF7toP0juXHPGP35ppEVwoSDi5rG4olkfpOkVkZK
 QwCSoMHmxQmXiaJH78lvnpjO4pzkct4NcEnvjoR2ZMP8xVn3ixfk/0YBphO24R/g69tH
 xgcWJpeGMQ8SUiamyg/dCHeeJBAUvdRYp+JF0MRhuntqPHWbQo4Tcx7VctIRIqHu19yq
 G0LDYjpqL0RflKnxBWXvel5gtqKGwAQojZWngU1cyTBLmpFeB94BhOibcZNJnQtLipYF
 421g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=y1+dVCzQPF0KymNAnO7YyR5jmkfWoYWWIbPSsgMPYLA=;
 b=Ijuf9cCTcnhilMkWCUV+Nj4XDHsda2Vw3lYB+bOuMdiXrR4NGXPszaLPujFUVVuSnt
 fN6gBuxNfh6YT3ZUTmfdac3cD7yqR7Hn/vQPsogIaR7syacpS6v6E0+6OjIQSdmZZn9n
 BBlFntOZaRuXgmWWqJcBdpIkvK36JB00v5iUIvO1teGb6qbUPy5Bywjp3OZovxfd3/EP
 WcmHeyzbhAt9ouJNNICbiSv/xiFIlvaJLodFNw+3wtq1B+854Qnvx/DNdaXlcokgsoD0
 qHg86i5S4hy4zBYUireH9bIbdIgsU0F1VjnxHUCFSMAvIc6hSnACTPOs1MKZNGuWisHf
 DMgw==
X-Gm-Message-State: AOAM532hhZ/Gdq9HtZH+mxrQ2EpQZXe/2lb67cL/Cwys7KDnbtF7Os4p
 QTu2CCUIXIyVGcw7ppIiV64=
X-Google-Smtp-Source: ABdhPJzvkIhOSVedyOxoxH8BUW/CNlgcIw8xGfoa7nq64uZje5/VqHunyhjnc2jL+lVivqKAwTHbsw==
X-Received: by 2002:aca:dd08:: with SMTP id u8mr4079603oig.85.1607571291718;
 Wed, 09 Dec 2020 19:34:51 -0800 (PST)
Received: from Davids-MacBook-Pro.local ([8.48.134.51])
 by smtp.googlemail.com with ESMTPSA id t26sm170715otm.17.2020.12.09.19.34.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Dec 2020 19:34:50 -0800 (PST)
To: Saeed Mahameed <saeed@kernel.org>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>,
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
 <e1573338-17c0-48f4-b4cd-28eeb7ce699a@gmail.com>
 <1e5e044c8382a68a8a547a1892b48fb21d53dbb9.camel@kernel.org>
From: David Ahern <dsahern@gmail.com>
Message-ID: <cb6b6f50-7cf1-6519-a87a-6b0750c24029@gmail.com>
Date: Wed, 9 Dec 2020 20:34:48 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <1e5e044c8382a68a8a547a1892b48fb21d53dbb9.camel@kernel.org>
Content-Language: en-US
X-Mailman-Approved-At: Thu, 10 Dec 2020 15:46:59 +0000
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

On 12/9/20 10:15 AM, Saeed Mahameed wrote:
>> My personal experience with this one is mlx5/ConnectX4-LX with a
>> limit
> 
> This limit was removed from mlx5
> https://patchwork.ozlabs.org/project/netdev/patch/20200107191335.12272-5-saeedm@mellanox.com/
> Note: you still need to use ehttool to increase from 64 to 128 or 96 in
> your case.
> 

I asked you about that commit back in May:

https://lore.kernel.org/netdev/198081c2-cb0d-e1d5-901c-446b63c36706@gmail.com/

As noted in the thread, it did not work for me.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
