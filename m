Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A7F30BDA4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Feb 2021 13:05:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F65385C9D;
	Tue,  2 Feb 2021 12:05:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jZ-m5MYdTIzn; Tue,  2 Feb 2021 12:05:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EBA6A86D52;
	Tue,  2 Feb 2021 12:05:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 97EDF1BF861
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 12:05:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 92757861D1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 12:05:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D8WRZEa+DiUp for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Feb 2021 12:05:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BAED685C9D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 12:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612267541;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=mehHJF+/Hp3KHLeMA4Z0N4YM6ZtdnidDiwvZxW1mKcE=;
 b=gORPh4Zwo/Ul5Hink3KdONJ3IWcvgq9GV+2J/zPAvPA8lTidrexUU7RIxwVvVaQex2HnZ8
 qAyxuXYZX7XAEC43Qvmi0D8YbLtqAPefaZdbZ8gg4SiHRcLifSw9b+2wIdmvf7ph166Pre
 0YuH73/q16P6KRzRCu/GIUb0AjpvKAE=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-277-ZkCy4Zx7PmWO6kP70-dn3A-1; Tue, 02 Feb 2021 07:05:37 -0500
X-MC-Unique: ZkCy4Zx7PmWO6kP70-dn3A-1
Received: by mail-ed1-f70.google.com with SMTP id bo11so2930939edb.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 02 Feb 2021 04:05:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=mehHJF+/Hp3KHLeMA4Z0N4YM6ZtdnidDiwvZxW1mKcE=;
 b=SSC+7TSLV7cjW1QyVkuqTzGIIRVkrUbmZvNMYd/85Qd2PPSdjaGzS4jsUXioCA6k8V
 UAeXv7WHmnAHjXM4+ylOR9nQYRIQYimT1KxoPrBPqM02QHkFPzwbQshhdy+LBrdjqoYy
 hx7D5MmN/aGVNpkkU2Q3/rR/l0Ej7pjbxBiMVloHGg0mHa7jVmblG7LviEJGigcahu8j
 LXEmnJmM4MPlauyBAjC+Vzlv/BeghRM4YAl/pzBfrfTu20b3Xjv7T/DehMrBqgum/Kfo
 cvBPfemlS6fvEf9AY4bbF6oE/wHNr5yimGtoZos+rJGRZxHBmWD6P4MHEKX4C/j+Wpoy
 /20A==
X-Gm-Message-State: AOAM5300iEdN8T2tQySblGHjTkweyJjzP5hLeyiVCSOVFFksPjxSOQ8U
 xvzoqHTwiQA8Kkyz5F/Xmcjayj53L9VnXPMGLPWxVjTt3KM/l7UhAThJR1UAqxGIiEy7hm2d0Uy
 5rqz+8YdBrYcFvF7oNxejFiYvKMeDNQ==
X-Received: by 2002:aa7:de19:: with SMTP id h25mr11597077edv.145.1612267536057; 
 Tue, 02 Feb 2021 04:05:36 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz+EBuBoDLfhwAot1dUjDT+O5gyu5qLkpgYj7zLuuSfOh78WjxxwcsOLudJAXo9hfBpiNAvzA==
X-Received: by 2002:aa7:de19:: with SMTP id h25mr11597042edv.145.1612267535765; 
 Tue, 02 Feb 2021 04:05:35 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id m20sm10416216edj.43.2021.02.02.04.05.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Feb 2021 04:05:35 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 9FBC8180367; Tue,  2 Feb 2021 13:05:34 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Marek Majtyka <alardam@gmail.com>
In-Reply-To: <CAAOQfrHA+-BsikeQzXYcK_32BZMbm54x5p5YhAiBj==uaZvG1w@mail.gmail.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk> <20201204124618.GA23696@ranger.igk.intel.com>
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
 <d5be0627-6a11-9c1f-8507-cc1a1421dade@gmail.com>
 <6f8c23d4ac60525830399754b4891c12943b63ac.camel@kernel.org>
 <CAAOQfrHN1-oHmbOksDv-BKWv4gDF2zHZ5dTew6R_QTh6s_1abg@mail.gmail.com>
 <87h7mvsr0e.fsf@toke.dk>
 <CAAOQfrHA+-BsikeQzXYcK_32BZMbm54x5p5YhAiBj==uaZvG1w@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 02 Feb 2021 13:05:34 +0100
Message-ID: <87bld2smi9.fsf@toke.dk>
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Andrii Nakryiko <andrii.nakryiko@gmail.com>, hawk@kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>, Saeed Mahameed <saeed@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 jeffrey.t.kirsher@intel.com, David Ahern <dsahern@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Marek Majtyka <alardam@gmail.com> writes:

> Thanks Toke,
>
> In fact, I was waiting for a single confirmation, disagreement or
> comment. I have it now. As there are no more comments, I am getting
> down to work right away.

Awesome! And sorry for not replying straight away - I hate it when I
send out something myself and receive no replies, so I suppose I should
get better at not doing that myself :)

As for the inclusion of the XDP_BASE / XDP_LIMITED_BASE sets (which I
just realised I didn't reply to), I am fine with defining XDP_BASE as a
shortcut for TX/ABORTED/PASS/DROP, but think we should skip
XDP_LIMITED_BASE and instead require all new drivers to implement the
full XDP_BASE set straight away. As long as we're talking about
features *implemented* by the driver, at least; i.e., it should still be
possible to *deactivate* XDP_TX if you don't want to use the HW
resources, but I don't think there's much benefit from defining the
LIMITED_BASE set as a shortcut for this mode...

-Toke

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
