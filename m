Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB45B67ECC1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 18:53:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8719083224;
	Fri, 27 Jan 2023 17:53:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8719083224
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674841994;
	bh=aIowHYyOgF7WwnkCEnqXjWAziFff1s4czkcfQvk5h+0=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tlvRMcK7F/QNw/REVx2TczHmmu2wPVw2HtziUiJUXzy1Q0vdeqnOX8mcME5hO9XVM
	 bpd520auVm7ZPPZTRDoRmuAEjRJOHJ3Tzvoc5nPSGrmJPTS9/9jcbxab56Xt3gjFA3
	 Y3Xv2f6nvoY9f4qC7CeEF64SJKNxQOSVAnNuBxkjaRSfP/JAWOMmXBloD3M7F5Vy94
	 lTiDuD+8ckJfjCiUQrS7vwqErPFqFiJG/dpqP/vwYgSTr3y6XMppqtM2PT8wTnE5dX
	 yy0NUlrVuobi9TzztHlvP+qYjvcTSok5zpWCDSDo0ontlM6uUW4oozUmD9rpRrMFX+
	 VT7LQSUcM6X8Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id leMP72xvdNQq; Fri, 27 Jan 2023 17:53:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7535883112;
	Fri, 27 Jan 2023 17:53:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7535883112
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D77C61BF239
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:53:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8656A4053D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:53:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8656A4053D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6hAD3Ns6f3G2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 17:53:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 544E5404DF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 544E5404DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:53:06 +0000 (UTC)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-108-iMNfVsIhNVCF6Xr-HPiUKg-1; Fri, 27 Jan 2023 12:53:04 -0500
X-MC-Unique: iMNfVsIhNVCF6Xr-HPiUKg-1
Received: by mail-ed1-f71.google.com with SMTP id
 q20-20020a056402519400b0049e5b8c71b3so4032874edd.17
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 09:53:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rKC47YNfQPmpTC1HZekwMO/bf8rZVo8OHet19IfMNEs=;
 b=0I3+lIF3N3Nni1skwoQgJwM7/XglfSZky+498yiPB6l7hHCfRTz/W8B+nFXGrUgylA
 Ulo+30mZWvRG6tTT7bvsZzOXikFg2+k4j1gpNhA2viXeGgo4iHtQDaCADq6lnO/SoGsh
 xwpFdnBISc0/0/wuj71aXBQPaghhgTnSKR7e41EzE0bD28G3EPpQbxnhTwrIxYaOgJYC
 8f/JwK8ZbLaFpEl5PWqmaSTbGt3zAQy6zGU7YXTJNoSc3i5M4oxAOE31Ln5tJemWpdyd
 ihfBCfUyeua66JJZSSsSf7N8eRKAe4ASYJOMcJLj+Q0pm80rkXBYRI9Y3aH4vti1QzF8
 b4JA==
X-Gm-Message-State: AFqh2kqlCsJAWS/y1BZP7sZFpe1EbesaUid48L8KrUtYWpmM6t+p+rFJ
 rguAHYM3nmvNG1YWyfm06x6p5u7iZTcJPPoeEdVk3tTfee1YIrQoQ4fSH7wN7/QSA3udt14n2I9
 i4Bm9hPrzKQTuw9aquhdOqS6gYQLkFw==
X-Received: by 2002:a17:907:8d16:b0:84d:43a0:7090 with SMTP id
 tc22-20020a1709078d1600b0084d43a07090mr50279973ejc.77.1674841982781; 
 Fri, 27 Jan 2023 09:53:02 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtz3MxYIlvPyPf9mUsF+PDiLoQbsxPO6j/w9Te366IA2aVOkHxok3btTGqEGgbwfSU12QO3XQ==
X-Received: by 2002:a17:907:8d16:b0:84d:43a0:7090 with SMTP id
 tc22-20020a1709078d1600b0084d43a07090mr50279930ejc.77.1674841982527; 
 Fri, 27 Jan 2023 09:53:02 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 n5-20020a1709061d0500b007ae693cd265sm2589832ejh.150.2023.01.27.09.52.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Jan 2023 09:53:02 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 64FB59432A2; Fri, 27 Jan 2023 18:52:58 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Stanislav Fomichev <sdf@google.com>, Lorenzo Bianconi <lorenzo@kernel.org>
In-Reply-To: <CAKH8qBv9wKzkW8Qk+hDKCmROKem6ajkqhF_KRqdEKWSLL6_HsA@mail.gmail.com>
References: <cover.1674737592.git.lorenzo@kernel.org>
 <0b05b08d4579b017dd96869d1329cd82801bd803.1674737592.git.lorenzo@kernel.org>
 <Y9LIPaojtpTjYlNu@google.com> <Y9QJQHq8X9HZxoW3@lore-desk>
 <CAKH8qBv9wKzkW8Qk+hDKCmROKem6ajkqhF_KRqdEKWSLL6_HsA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 27 Jan 2023 18:52:58 +0100
Message-ID: <874jsblv9h.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1674841985;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rKC47YNfQPmpTC1HZekwMO/bf8rZVo8OHet19IfMNEs=;
 b=RhDSmgPcTjfchQXBMMWFa1LB2XBTxDR0H45Xo2+4niDnxisWFIuTjEqNSlOQzeyszYsq2N
 VI6XL8YdPWj8KQUMRNaXcDN65miZATuiC1u3/vxEXL7LYr9OYTPCW5glEzOizy+FlfB5mg
 JHNAh190D6rRJCLIVE7SMLDhU7CJ4rA=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=RhDSmgPc
Subject: Re: [Intel-wired-lan] [PATCH v3 bpf-next 8/8] selftests/bpf:
 introduce XDP compliance test tool
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com,
 leon@kernel.org, netdev@vger.kernel.org, martin.lau@linux.dev,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Stanislav Fomichev <sdf@google.com> writes:

>> > > +
>> > > +   ctrl_sockfd = accept(sockfd, (struct sockaddr *)&ctrl_addr, &len);
>> > > +   if (ctrl_sockfd < 0) {
>> > > +           fprintf(stderr, "Failed to accept connection on DUT socket\n");
>> > > +           close(sockfd);
>> > > +           return -errno;
>> > > +   }
>> > > +
>>
>> [...]
>>
>> >
>> > There is also connect_to_fd, maybe we can use that? It should take
>> > care of the timeouts.. (requires plumbing server_fd, not sure whether
>> > it's a problem or not)
>>
>> please correct me if I am wrong, but in order to have server_fd it is mandatory
>> both tester and DUT are running on the same process, right? Here, I guess 99% of
>> the times DUT and tester will run on two separated devices. Agree?
>
> Yes, it's targeting more the case where you have a server fd and a
> bunch of clients in the same process. But I think it's still usable in
> your case, you're not using fork() anywhere afaict, so even if these
> are separate devices, connect_to_fd should still work. (unless I'm
> missing something, haven't looked too closely)

Just to add a bit of context here, "separate devices" can refer to the
hosts as well as the netdevs. I.e., it should also be possible to run
this in a mode where the client bit runs on a different physical machine
than the server bit (as it will not be feasible in any case to connect
things with loopback cables).

-Toke

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
