Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC562D2A17
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 12:59:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29AC9855DF;
	Tue,  8 Dec 2020 11:59:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z3p9L7CAKQEN; Tue,  8 Dec 2020 11:59:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 573E0855EF;
	Tue,  8 Dec 2020 11:59:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E94C01BF23B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 11:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D497C8444F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 11:59:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DpqkPO86EGV9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 11:59:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C317C8644F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 11:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607428741;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=X3UiVLhoBn0QxGbQIaE3lfbb23sxxLlKxWSYI9eyG3I=;
 b=ZeDSW4CPzGdJi4bXnWMxMoerpkbmnRdXSMdi3LOuHLdzkitUdt3QuhZBGvC47/SwcmAoyx
 DZaKT4fj/USH8CsFfqzDtel+Gskv72gMLI4hQuNH05gkMj4sExrnpaWM0ShmRSYXSiFG/F
 Vbeaz0IoZmyJrLJwd36zst4NhHgqwcQ=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-293-Z4lO38niOeG7k3gGOqHC-Q-1; Tue, 08 Dec 2020 06:59:00 -0500
X-MC-Unique: Z4lO38niOeG7k3gGOqHC-Q-1
Received: by mail-wr1-f71.google.com with SMTP id v1so6065793wri.16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Dec 2020 03:59:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=X3UiVLhoBn0QxGbQIaE3lfbb23sxxLlKxWSYI9eyG3I=;
 b=iYuS4owWh4agIZpvipx1nFPVYnSh1vMeB2/lXqjmVauujxCESDykaHKYp5hwp1fB+k
 MVJurbU7TXLyv2vTm50NUqxp9DXouqjVZOLambuYgMTuXJ5eSazLJocE2mhSO1i3wD/N
 hds/rFK7K0oFJrA/sYM7u5FqJ2Yrt1XjI2akclzLaEuNhsGLgdGYzO8nthL0aT1j1weQ
 uyXI80DktZ0NyH8LdHu/OHNH5HuLM+dwGxaclEtGIpvpsBo9C1iShX2IOp1WF/Sz4C6Y
 1dTO3rKiKATT4J06iAM8xWvfyEuuYgl9Z7k+6+K0MdvhxKgKCS8d47I8bndELF5bOjpW
 bYnQ==
X-Gm-Message-State: AOAM530HQD6zckqq5i71W4ELtPo8ozzkp+dWIXIb6rpt1GkAKwZMcZj8
 tARyvDGf5rn9vNP8cTjqrl2VOo5I7FRztLcKx2zJ+Ahvsg2CPXOr0MYQ1kWIEr9ztOI5h9584qP
 FvWPYRk9czIdo55WecbEL98pyDwxqQA==
X-Received: by 2002:a7b:c145:: with SMTP id z5mr3532620wmi.164.1607428738541; 
 Tue, 08 Dec 2020 03:58:58 -0800 (PST)
X-Google-Smtp-Source: ABdhPJztnhlMopB/tBeUjOLv6knn4JP4rwNtEk3g6zzAXTDTjNarHkAPjHiVgYn2NYy0BbdBqs0ZzA==
X-Received: by 2002:a7b:c145:: with SMTP id z5mr3532576wmi.164.1607428737875; 
 Tue, 08 Dec 2020 03:58:57 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id 94sm11113339wrq.22.2020.12.08.03.58.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Dec 2020 03:58:56 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 6E42118060F; Tue,  8 Dec 2020 12:58:55 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>, David Ahern
 <dsahern@gmail.com>
In-Reply-To: <20201208092803.05b27db3@carbon>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk> <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
 <431a53bd-25d7-8535-86e1-aa15bf94e6c3@gmail.com>
 <20201208092803.05b27db3@carbon>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 08 Dec 2020 12:58:55 +0100
Message-ID: <87lfe8ik5c.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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
 netdev@vger.kernel.org, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jesper Dangaard Brouer <jbrouer@redhat.com> writes:

> On Mon, 7 Dec 2020 18:01:00 -0700
> David Ahern <dsahern@gmail.com> wrote:
>
>> On 12/7/20 1:52 PM, John Fastabend wrote:
>> >>
>> >> I think we need to keep XDP_TX action separate, because I think that
>> >> there are use-cases where the we want to disable XDP_TX due to end-user
>> >> policy or hardware limitations.  
>> > 
>> > How about we discover this at load time though. 
>
> Nitpick at XDP "attach" time. The general disconnect between BPF and
> XDP is that BPF can verify at "load" time (as kernel knows what it
> support) while XDP can have different support/features per driver, and
> cannot do this until attachment time. (See later issue with tail calls).
> (All other BPF-hooks don't have this issue)
>
>> > Meaning if the program
>> > doesn't use XDP_TX then the hardware can skip resource allocations for
>> > it. I think we could have verifier or extra pass discover the use of
>> > XDP_TX and then pass a bit down to driver to enable/disable TX caps.
>> >   
>> 
>> This was discussed in the context of virtio_net some months back - it is
>> hard to impossible to know a program will not return XDP_TX (e.g., value
>> comes from a map).
>
> It is hard, and sometimes not possible.  For maps the workaround is
> that BPF-programmer adds a bound check on values from the map. If not
> doing that the verifier have to assume all possible return codes are
> used by BPF-prog.
>
> The real nemesis is program tail calls, that can be added dynamically
> after the XDP program is attached.  It is at attachment time that
> changing the NIC resources is possible.  So, for program tail calls the
> verifier have to assume all possible return codes are used by BPF-prog.

We actually had someone working on a scheme for how to express this for
programs some months ago, but unfortunately that stalled out (Jesper
already knows this, but FYI to the rest of you). In any case, I view
this as a "next step". Just exposing the feature bits to userspace will
help users today, and as a side effect, this also makes drivers declare
what they support, which we can then incorporate into the core code to,
e.g., reject attachment of programs that won't work anyway. But let's
do this in increments and not make the perfect the enemy of the good
here.

> BPF now have function calls and function replace right(?)  How does
> this affect this detection of possible return codes?

It does have the same issue as tail calls, in that the return code of
the function being replaced can obviously change. However, the verifier
knows the target of a replace, so it can propagate any constraints put
upon the caller if we implement it that way.

-Toke

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
