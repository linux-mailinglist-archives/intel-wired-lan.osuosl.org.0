Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC362D6043
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Dec 2020 16:47:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E621787676;
	Thu, 10 Dec 2020 15:47:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iYMaas6nSIiU; Thu, 10 Dec 2020 15:47:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E49E786D76;
	Thu, 10 Dec 2020 15:47:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 05B311BF834
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 15:30:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0085920503
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 15:30:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OIfSVVgInwX1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Dec 2020 15:30:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 1CA3320500
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 15:30:44 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id 11so5198701oty.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 07:30:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1ZS8BvFesU0nu0mbqUrnRelgrjsauGCLLXcNS4r+2pw=;
 b=gNyiVR5UMSakuT65wXidT0LrxLPuDeSjAyngwUD07lf0al/RBUTySgD+jeTKmI0Mmz
 t+pg1fHc0lgPQCKOwxH3bWF2zxJajfJd0HY3iV2BPNh2c4BY6GXoJf7syH7aF3DrInjX
 AXQ7m2bIoP3R5IAvgv9IExTBMMKf1S5bjUcs9xL1/IWldDDVb5dDfQccneiT4PCqohyp
 NjLjIu2juvY172aOjefDtswLkxFF0ah+TgTAAW2vsgbrYWJrXysBudKCH0VZk6/o9S5W
 stMdY1NUPOCNQfi9zSb3fEgONE9mznG9PeoN7hbBgroN7fBHWaeJyTm9w0gacHXTD9Zh
 eJYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1ZS8BvFesU0nu0mbqUrnRelgrjsauGCLLXcNS4r+2pw=;
 b=RT5L6uHScZhvqFBol6oyGHmA07Sh4elSvGLnMfZQ2/IRnn/7fNArM5epaN8UG4OkjN
 1ay96xiISy4JtM62WHSCd1pWWW6M8tkGG6jQh98xhvqCxFtgbR2mZDukYDuk7KnTI7T3
 yCcAx06EuykyNKtD/tU5qPn6gVYl/HzVkLmlbGX9I6xcmzQWGY79JmL68tG0H/I4Odlm
 B4BJh8WIaMuxnfdsmNAPPh+GV8ezp5oTcj53IpPQMwkG4LJKwiE1w5CGz4lSqI4jwD0J
 ArtPrqXlrhdQxByTqR8MpwFPDieuPbZLhv6TCME7nULPkm5TNKxw2OggIEHaKcw42gEN
 pYPA==
X-Gm-Message-State: AOAM530q4vkpIGodKJROcjNkDkk8Jb7Elft0sZVqnMhVviIKUxd8yOYT
 ns836w2YVz5unK0Ni+PKQZU=
X-Google-Smtp-Source: ABdhPJx2p0KZlAN9MAgb/XqZTVkmhi03Pyai0QbZFWPRdUmo5UA4Oco3GVkGXE6HnVjCFqYoLIwtMg==
X-Received: by 2002:a9d:590c:: with SMTP id t12mr6121703oth.308.1607614243369; 
 Thu, 10 Dec 2020 07:30:43 -0800 (PST)
Received: from Davids-MacBook-Pro.local
 ([2601:282:800:dc80:6139:6f39:a803:1a61])
 by smtp.googlemail.com with ESMTPSA id z12sm1204207oti.45.2020.12.10.07.30.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Dec 2020 07:30:41 -0800 (PST)
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
 <cb6b6f50-7cf1-6519-a87a-6b0750c24029@gmail.com>
 <f4eb614ac91ee7623d13ea77ff3c005f678c512b.camel@kernel.org>
From: David Ahern <dsahern@gmail.com>
Message-ID: <d5be0627-6a11-9c1f-8507-cc1a1421dade@gmail.com>
Date: Thu, 10 Dec 2020 08:30:39 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <f4eb614ac91ee7623d13ea77ff3c005f678c512b.camel@kernel.org>
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

On 12/9/20 11:48 PM, Saeed Mahameed wrote:
> On Wed, 2020-12-09 at 20:34 -0700, David Ahern wrote:
>> On 12/9/20 10:15 AM, Saeed Mahameed wrote:
>>>> My personal experience with this one is mlx5/ConnectX4-LX with a
>>>> limit
>>>
>>> This limit was removed from mlx5
>>> https://patchwork.ozlabs.org/project/netdev/patch/20200107191335.12272-5-saeedm@mellanox.com/
>>> Note: you still need to use ehttool to increase from 64 to 128 or
>>> 96 in
>>> your case.
>>>
>>
>> I asked you about that commit back in May:
>>
> 
> :/, sorry i missed this email, must have been the mlnx nvidia email
> transition.
> 
>> https://lore.kernel.org/netdev/198081c2-cb0d-e1d5-901c-446b63c36706@gmail.com/
>>
>> As noted in the thread, it did not work for me.
> 
> Still relevant ? I might need to get you some tools to increase #msix
> in Firmware.
> 

not for me at the moment, but it would be good to document what a user
needs to do - especially if it involves vendor specific tools and steps.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
