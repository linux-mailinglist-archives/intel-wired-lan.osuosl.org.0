Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E110A3DFA6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 17:01:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F96940DE2;
	Thu, 20 Feb 2025 16:01:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BXaLt7zIu0cM; Thu, 20 Feb 2025 16:01:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB8BB40DF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740067268;
	bh=XUvPfnQzE7lfY5mPUyEfWJL2c1rZL5vq75arq0rqCc8=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u7Z7W8sykFL+VfeEh3m6RHR3SECOY4akX/hqj9JCqc3cjLn4N6WTc6SnhK76UFEgH
	 OijwWVOSs/89DxHzNNlFwN/sdH/dASvmY9fyw2R7hUUGY4ZuQJPz6MCVrlZaPXV14m
	 nfmgUs69UCaFZnpCIuvP7DZIX1mcI1PZ5mbCVa02lZKonOh7HbmJKzNfLbwJibP1Yp
	 0qdaBOT5MS0XyP5YXZQQDDdfCu3a2XGghptcZFG/ZLCHoWM6eMSeHm2prFhPLC1m5s
	 snSTXmf7nr7CIosgvyY42wf75wKYJftCc3cLtY1QFXYQH+oscrRC7hTxxvZAzUFGRA
	 d9favgL7uSAkg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB8BB40DF1;
	Thu, 20 Feb 2025 16:01:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9CA83194
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 08:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8B87C411F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 08:14:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VYLhlEB6jRfh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 08:14:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=sdobron@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 85098411EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85098411EA
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 85098411EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 08:14:47 +0000 (UTC)
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-301-3r99LFdaOrG8Je5ZGssAKg-1; Thu, 20 Feb 2025 03:14:44 -0500
X-MC-Unique: 3r99LFdaOrG8Je5ZGssAKg-1
X-Mimecast-MFC-AGG-ID: 3r99LFdaOrG8Je5ZGssAKg_1740039284
Received: by mail-qv1-f70.google.com with SMTP id
 6a1803df08f44-6dfa69e6983so10149776d6.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 00:14:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740039284; x=1740644084;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XUvPfnQzE7lfY5mPUyEfWJL2c1rZL5vq75arq0rqCc8=;
 b=Ac4BUAD8iej93WHhnltIlR+u896Rsvo8TP2LUClu+h6GB7JAqTpXvAhej74gaWThb0
 lATpfSNudumF6TOXqvH4ubFDMtb1v3tOQSpkVVhhmFhvmt2zDVrZZ7BYcHt0OTcv5pqF
 aS7/Q3g909PRiS/OWrHAEJ3tX+4YLY6AVT2D2DfLp9upR+TGSGwoZpazGGCntNgOszus
 7sEqFEMfwaX/DDwwMEILfGunqvUgm5z2ByHA50uFU2iTBVooEsgG0Oi3xFmEDLJng3q2
 1j3zQg4+sxo9IAjU8yDlh8IwBy28dCFqUdnS9iEoHDoQBAYsp+gf815mbiR+4pxtjEvh
 D+iA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXVxSowkdB/Rb77NjQD2QiPNLUPQSMqTsShB7xRtjnmzxkbPUDqWmR+OslQZJl1Iwicc4OS+kVG+R/bKpHz5sc=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxa2V4R2FNX96FIwCaj9UZZYpbs0Q/CC3ltyVykov4XZ9+QS7fj
 a6bCsO4GalERNBoYh2h+caaAPgoML6cFJ2QtzsHd+950yKMEsNBCMs/XB3BQbrvfPb4YvnUVyeX
 QB5Z0hFwBI6x4aZ0QClNETWIqBYJpQMdiLLBJ4Rf8qWu6m4cdvhEdqoXNMowMJ4QVbEzHDNX0p3
 58Vixf6v5ifUxe98HWKsuG255Snt2v9JQRanTPnvfzUQ==
X-Gm-Gg: ASbGncuNQ80lwTWdlXUt4oC1CWFzY4A3yFA7jzI6QxMXWWSRHrzpSmI7wAbwImHzycW
 nr+Ze2L3K79CYtvJzl4HwYd7PCDhfTTfWnmgqcpeS/oynEHjwh3FepQhfL/gNjbI=
X-Received: by 2002:ad4:576b:0:b0:6d8:d84d:d938 with SMTP id
 6a1803df08f44-6e66ccf044cmr321011916d6.28.1740039283830; 
 Thu, 20 Feb 2025 00:14:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGtlPzw//q1hAwa2ePYztZsTCOpeskyG9v95G2Qts48RCBK8DZcFPadLubWbNjT1kvqJhdsEToBx472mGP79nI=
X-Received: by 2002:ad4:576b:0:b0:6d8:d84d:d938 with SMTP id
 6a1803df08f44-6e66ccf044cmr321011706d6.28.1740039283524; Thu, 20 Feb 2025
 00:14:43 -0800 (PST)
MIME-Version: 1.0
References: <87mserpcl6.fsf@toke.dk> <Z6yWa3ADgWmu+2TE@boxer>
 <87h64zpb5y.fsf@toke.dk>
In-Reply-To: <87h64zpb5y.fsf@toke.dk>
From: Samuel Dobron <sdobron@redhat.com>
Date: Thu, 20 Feb 2025 09:14:32 +0100
X-Gm-Features: AWEUYZm6qG-NEpMn7AVT-IN6n3WzJafLvL9EWsupwhFO4ww8G3ugL1W-uUwCaaM
Message-ID: <CA+h3auMzvFk6bA2AjFsz-+rmNuuLeULJYEK_PuiP_6tQAGCxRQ@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Jacob Keller <jacob.e.keller@intel.com>,
 Chandan Kumar Rout <chandanx.rout@intel.com>, 
 Yue Haibing <yuehaibing@huawei.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0AwZpkPuVwtT8FjsPC_K0cpL-0Fx3VqSe0i3Bu_fWs4_1740039284
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 20 Feb 2025 16:01:07 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1740039286;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XUvPfnQzE7lfY5mPUyEfWJL2c1rZL5vq75arq0rqCc8=;
 b=KxpIs/rnKmXUlz6NZ0UOy+npDHjVktvwTmFFRnFEnqwpQcSoaynKR9kray6hVRcpLkScAg
 GktcbVHF1haHnAiM1G8mBH6Ppzx98ZOEzgHmoLq/Sq4SIqh4BrBcHPHPUbDsRCB6Y/8MeE
 QIROg4xbO7sQqUi7C/nLGpX4mYWIQwk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=KxpIs/rn
Subject: Re: [Intel-wired-lan] [ixgbe] Crash when running an XDP program
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hey,

Thanks for cooperation. The issue seems to be fixed in
kernel-6.14.0-0.rc3.29.eln146.

Sam.

On Wed, Feb 12, 2025 at 2:04=E2=80=AFPM Toke H=C3=B8iland-J=C3=B8rgensen <t=
oke@redhat.com> wrote:
>
> Maciej Fijalkowski <maciej.fijalkowski@intel.com> writes:
>
> > On Wed, Feb 12, 2025 at 01:33:09PM +0100, Toke H=C3=B8iland-J=C3=B8rgen=
sen wrote:
> >> Hi folks,
> >>
> >> Our LNST testing team uncovered a crash in ixgbe when running an XDP
> >> program, see this report:
> >> https://bugzilla.redhat.com/show_bug.cgi?id=3D2343204
> >>
> >> From looking at the code, it seems to me that the culprit is this comm=
it:
> >>
> >> c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in ixgbe_run_xdp()")
> >>
> >> after that commit, the IS_ERR(skb) check in ixgbe_put_rx_buffer() no
> >> longer triggers, and that function tries to dereference a NULL skb
> >> pointer after an XDP program dropped the frame.
> >>
> >> Could you please fix this?
> >
> > Hi Toke,
> >
> > https://lore.kernel.org/netdev/20250211214343.4092496-5-anthony.l.nguye=
n@intel.com/
> >
> > can you see if this fixes it?
>
> Ah! I went looking in the -net and -net-next git trees to see if you'd
> already fixed this, but didn't check the list. Thanks for the pointer,
> will see if we can get this tested.
>
> > Validation in our company has always been a mystery to me, sorry for th=
is
> > inconvenience and that we were bad at reviewing :<
>
> No worries, bugs happen; thankfully we caught it early. Also mostly
> meant it as a nudge to try to give XDP testing a more prominent spot :)
>
> -Toke
>

