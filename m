Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E1231982C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Feb 2021 03:05:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D424A875B2;
	Fri, 12 Feb 2021 02:05:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cgUZ9S-y9YvB; Fri, 12 Feb 2021 02:05:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 57BAF875A6;
	Fri, 12 Feb 2021 02:05:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 053601BF35A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 02:05:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 006728764A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 02:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id le2CnG257ckP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Feb 2021 02:05:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2DF9D87268
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 02:05:55 +0000 (UTC)
Received: by mail-lj1-f177.google.com with SMTP id v6so5174435ljh.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 18:05:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OiSkEcgchNsmSgBtf3fnMQzPIwmJ5tn4k1eUNo1HXyg=;
 b=ZBl8t/0TZL9DZivfE/IbgOPqpTHjguBG9nvWcvcI2fWez4rQfe6X4x3np/lGkOMV8d
 HN+C2nPfeG8ecfuKiA3rrSJMCkZuRuXivK6wzi3Gg1B8odvsfCp0DbhDpDAcflj170Yi
 v9kerAdvli1XESufLDKL5vZ2wJ1/m+MQSUB2Foc29vfhkiQyVxFaGMWyIVjdbMNJPbCC
 76LEPPhaDLD/2j/Q89DT6FZzt9Cm1JpyOP/Od+RpgNvDOawyVIKewDrnROnlaM6VMwNh
 t10A6jQDJSON+KrouGv/Eui7AIg9RmChd2KHXa0fucBiKJHEh6TNs7e4xKf7B2z8pizo
 whCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OiSkEcgchNsmSgBtf3fnMQzPIwmJ5tn4k1eUNo1HXyg=;
 b=fTNga8+61m+f6tNy/DsPVGNCEYsYL1iS/0rrGQj8kkv/Koe+VJlvNicqDI9oQ74k56
 Ioc8lF4g3hqsp86KYa7eqhDL0eDHQXQghATSkgzworpsTB2HcifsMLM/oq9Rs85H4Cor
 JAkmXE0qwhOx7D6qx8eo0BpSzrGAi744FE73afEgeyx9Bb7LBdcP0GLkW4Sb9ZfdNN/N
 0+YSEtZkJ9vQ1AzSIyg8XDxl7TKdmQhEmQDa0+9zk7u3bu6EgwNhnd5IBsMov1D4lbfM
 FuilpMNfb4pMvdMI6UT9lJnD0yOElJVmlrZxAn/dJL8NaaMM7B4KjjjWB806sZlSle0z
 GPiQ==
X-Gm-Message-State: AOAM533Yyugq4p5fezPriMv6O/7K06uTUIwDnvJooDawCeRdLJwhKCxr
 HWsz2Lx/Nkye9S794dFO6cytHHFR8Nd6kFlLhjo=
X-Google-Smtp-Source: ABdhPJwKXqZN2gQ+HMFhDevuqT9eVhQMLKz5LWoKxPET6Lm95PKNH0TkH+6IOxIe8x5GzJC32PyD42Jith/zeyTT4Wo=
X-Received: by 2002:a2e:700c:: with SMTP id l12mr371556ljc.236.1613095553180; 
 Thu, 11 Feb 2021 18:05:53 -0800 (PST)
MIME-Version: 1.0
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201209125223.49096d50@carbon>
 <e1573338-17c0-48f4-b4cd-28eeb7ce699a@gmail.com>
 <1e5e044c8382a68a8a547a1892b48fb21d53dbb9.camel@kernel.org>
 <cb6b6f50-7cf1-6519-a87a-6b0750c24029@gmail.com>
 <f4eb614ac91ee7623d13ea77ff3c005f678c512b.camel@kernel.org>
 <d5be0627-6a11-9c1f-8507-cc1a1421dade@gmail.com>
 <6f8c23d4ac60525830399754b4891c12943b63ac.camel@kernel.org>
 <CAAOQfrHN1-oHmbOksDv-BKWv4gDF2zHZ5dTew6R_QTh6s_1abg@mail.gmail.com>
 <87h7mvsr0e.fsf@toke.dk>
 <CAAOQfrHA+-BsikeQzXYcK_32BZMbm54x5p5YhAiBj==uaZvG1w@mail.gmail.com>
 <87bld2smi9.fsf@toke.dk>
 <20210202113456.30cfe21e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAAOQfrGqcsn3wu5oxzHYxtE8iK3=gFdTka5HSh5Fe9Hc6HWRWA@mail.gmail.com>
 <20210203090232.4a259958@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <874kikry66.fsf@toke.dk>
 <20210210103135.38921f85@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <87czx7r0w8.fsf@toke.dk>
 <20210211172603.17d6a8f6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210211172603.17d6a8f6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Thu, 11 Feb 2021 18:05:41 -0800
Message-ID: <CAADnVQJ_juVMxSKUvHBEsLNQoJ4mvkqyAV8XF4mmz-dO8saUzQ@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Andrii Nakryiko <andrii.nakryiko@gmail.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>, Saeed Mahameed <saeed@kernel.org>,
 Marek Majtyka <alardam@gmail.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, David Ahern <dsahern@gmail.com>,
 bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 11, 2021 at 5:26 PM Jakub Kicinski <kuba@kernel.org> wrote:
>
> Perhaps I had seen one too many vendor incompatibility to trust that
> adding a driver API without a validation suite will result in something
> usable in production settings.

I agree with Jakub. I don't see how extra ethtool reporting will help.
Anyone who wants to know whether eth0 supports XDP_REDIRECT can already do so:
ethtool -S eth0 | grep xdp_redirect

I think converging on the same stat names across the drivers will make
the whole thing much more user friendly than new apis.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
