Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEnCBkL6gWk7NQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 14:38:10 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D575D9FBD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 14:38:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BE0B60752;
	Tue,  3 Feb 2026 13:38:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H_LX644qET9k; Tue,  3 Feb 2026 13:38:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3738E607D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770125885;
	bh=iOS7tpo+UZQJEwdA3wxEe6jwUqGIqBiJfHv1ZGaOoVI=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LXUebL7W3FuvhkHR3OhpFycoFXtAQ59ClDpkO42YRUqoct98bX7KPpuvBbabSrXIP
	 jRoTf0LNbp9rryrJjSRmwJH2d/r0EpX0MSH1/swmFVNVQYIsWsgT0y3N6EdIZ7edG4
	 UeF91c4ajgBxc6oPhlCegfMhAhauzZpao3NEycXBTGja1l2T/URjSyUlsuezx1DyNk
	 Kf/t5x2BWrDkLiUpfW2VuKMzV9NcwrexhqtSq+gmYIDtKLaI1xIBHS08gHUD2Ks6r9
	 O+U5Ofa3NBXygmQAb0biISzCFNN/IjzqRHszIGr+IRcOF3+0fAau8HHX78n0ZI2In2
	 74d/SmMEIToQw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3738E607D9;
	Tue,  3 Feb 2026 13:38:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5576613D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 13:38:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4275040B1A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 13:38:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HZQ9DSmCAhRg for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 13:38:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=toke@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E9D0540B04
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9D0540B04
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E9D0540B04
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 13:38:00 +0000 (UTC)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-31-PjcKHcvmN8CWujbnTLxt4Q-1; Tue, 03 Feb 2026 08:37:57 -0500
X-MC-Unique: PjcKHcvmN8CWujbnTLxt4Q-1
X-Mimecast-MFC-AGG-ID: PjcKHcvmN8CWujbnTLxt4Q_1770125877
Received: by mail-ed1-f69.google.com with SMTP id
 4fb4d7f45d1cf-659444abe90so233989a12.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Feb 2026 05:37:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770125876; x=1770730676;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ZtmJ0MecevVOkqmQ0sbIYbbzUt1IRFmbl82qHWlUp74=;
 b=PVIeFTjxpm4yRSi8R4zRrDg+MYdIg8E8YSxJr6t2Wt4RYZVB/IV5V06lvJ2lz7p2as
 C/RQhd3FQw7TCO2UUSVP/gS0i14RX0AbgLFc6iidvR6N4Y4zf0W85690/YYvyldJ2zYb
 J6HHqVKxjuyythq7etI61CeDO6WbzvDwFHaWJN+ku1tyMJgiaS43bvrpcCDLcnbf/aqX
 fvSFhTCt1QUwbJpsEjm3PNrLP9lNCyojBJXJYCpQJAIswKAIJyQXO2hwxXxh5Y/GJB/T
 sMz2YnQPoqgWsuNWQhYff1mLSSYRg1KA4W3/SN3J9l76AOlq4z2voR9XvwmXk/edJOdK
 1SUQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWmD00gVd0o3g1k47rNyAzQn9pgpdAVDxTixcCJc0Au7fHFb/M/g+ffbhrN+D8TOcjRosREI5JeVC/84AOInrs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxgmRob8UAH6Djev8VZs8138mOxW32c7LkUS4q+T48M/eKFfRaa
 KZnEeFSrmNSrBAK0mbg3zmxIZdblQQyECvP2oc2nfgvB//89MDHOHfrAEQQOj4wJ5HLirZXeY6w
 lr7v+wExSX8n2pAg1hvoEw56UcBWjbBltu75atyv8XIXwjC9S+synGBPOVksERMxwWppK218=
X-Gm-Gg: AZuq6aLUGyVhm+j/UzbSJNTOBJ9dzLmx3y5+cNohkF0m8ZPhb0d38+DQMXEnh6PY7cx
 SohRkvxfcmcZM1ALNbuDInlNYeAcg6LXWQcu/BmrvjuPyDmW04GJZhrv7CtzdZ01/eTthFkXS46
 4Ofx+rJSwMohFmpb3CQR5c3Skhp6Mf6lfS1r7cG7ZCpJGe8VRXU7XJp2Fd3cdQ/fDLTAlPscr0N
 CCR2VHfIIw05Zz0xNGBT1MHusYwighM6YTJ0zc6ZoJwMWHRPPaWjXa+on9EQnvOiyjy/145pB1r
 O7mUn9jefBJbqPyEknhOmQq+ZeY7I7SbL2K7ZdkBrZd41ZduD0B7lwYc2R/39T1Ps942xoSIQVO
 sUFNrXXGT0lgf52VdGFGsdZKzAJndoEM4BA==
X-Received: by 2002:a05:6402:520b:b0:64b:416a:cb48 with SMTP id
 4fb4d7f45d1cf-658de5ac5b8mr9740680a12.19.1770125876459; 
 Tue, 03 Feb 2026 05:37:56 -0800 (PST)
X-Received: by 2002:a05:6402:520b:b0:64b:416a:cb48 with SMTP id
 4fb4d7f45d1cf-658de5ac5b8mr9740648a12.19.1770125875931; 
 Tue, 03 Feb 2026 05:37:55 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-658b4691d0asm9527874a12.18.2026.02.03.05.37.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Feb 2026 05:37:55 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id B21574D0E3A; Tue, 03 Feb 2026 14:37:54 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: bpf@vger.kernel.org, Claudiu Manoil <claudiu.manoil@nxp.com>, Vladimir
 Oltean <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer
 <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Stanislav
 Fomichev <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>, Martin
 KaFai Lau <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>,
 Song Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>, KP
 Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>, Jiri Olsa
 <jolsa@kernel.org>, Simon Horman <horms@kernel.org>, Shuah Khan
 <shuah@kernel.org>, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, "Bastien Curutchet
 (eBPF Foundation)" <bastien.curutchet@bootlin.com>, Tushar Vyavahare
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>,
 =?utf-8?Q?Ricardo_B=2E_Marli=C3=A8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 imx@lists.linux.dev, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
In-Reply-To: <aYHwDlDwN0ZniMev@soc-5CG4396X81.clients.intel.com>
References: <20260203105417.2302672-1-larysa.zaremba@intel.com>
 <20260203105417.2302672-2-larysa.zaremba@intel.com>
 <87zf5q109e.fsf@toke.dk>
 <aYHqtxtg3uNXO668@soc-5CG4396X81.clients.intel.com>
 <87o6m60zoo.fsf@toke.dk>
 <aYHwDlDwN0ZniMev@soc-5CG4396X81.clients.intel.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 03 Feb 2026 14:37:54 +0100
Message-ID: <87fr7i0wy5.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: yd3xEWYRzFNo4VOB8Ql6sTSdphOU9lAzvVeaFc0vzwE_1770125877
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1770125879;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iOS7tpo+UZQJEwdA3wxEe6jwUqGIqBiJfHv1ZGaOoVI=;
 b=A7JUff2nK4nxmHkkuBeHxGKh3c1LcE57RO9QE4dOkmRfaWZiYx4OcHXoLeX//2GDu8qlfz
 T1S2fOXM1+bCyQylDTQ+QV2WfcCTTbL+fOz4fZp09QtwQy/HNcE14MLKh/XHX84EjyVsyQ
 g8Erq1nrkP9lppLCGERnhTIO/NhJ9+g=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=A7JUff2n
Subject: Re: [Intel-wired-lan] [PATCH bpf 1/6] xdp: produce a warning when
 calculated tailroom is negative
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andr
 ew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[toke@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[toke@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Queue-Id: 5D575D9FBD
X-Rspamd-Action: no action

Larysa Zaremba <larysa.zaremba@intel.com> writes:

> On Tue, Feb 03, 2026 at 01:38:47PM +0100, Toke H=C3=B8iland-J=C3=B8rgense=
n wrote:
>> Larysa Zaremba <larysa.zaremba@intel.com> writes:
>>=20
>> > On Tue, Feb 03, 2026 at 01:26:21PM +0100, Toke H=C3=B8iland-J=C3=B8rge=
nsen wrote:
>> >> Larysa Zaremba <larysa.zaremba@intel.com> writes:
>> >>=20
>> >> > Many ethernet drivers report xdp Rx queue frag size as being the sa=
me as
>> >> > DMA write size. However, the only user of this field, namely
>> >> > bpf_xdp_frags_increase_tail(), clearly expects a truesize.
>> >> >
>> >> > Such difference leads to unspecific memory corruption issues under =
certain
>> >> > circumstances, e.g. in ixgbevf maximum DMA write size is 3 KB, so w=
hen
>> >> > running xskxceiver's XDP_ADJUST_TAIL_GROW_MULTI_BUFF, 6K packet ful=
ly uses
>> >> > all DMA-writable space in 2 buffers. This would be fine, if only
>> >> > rxq->frag_size was properly set to 4K, but value of 3K results in a
>> >> > negative tailroom, because there is a non-zero page offset.
>> >> >
>> >> > We could return -EINVAL and be done with it in such case, but due t=
o
>> >> > tailroom being stored as an unsigned int, it is reported to be some=
where
>> >> > near UINT_MAX, resulting in a tail being grown, even if the request=
ed
>> >> > offset is too much (it is around 2K in the abovementioned test). Th=
is later
>> >> > leads to all kinds of unspecific calltraces.
>> >> >
>> >> > [ 7340.337579] xskxceiver[1440]: segfault at 1da718 ip 00007f4161ae=
ac9d sp 00007f41615a6a00 error 6
>> >> > [ 7340.338040] xskxceiver[1441]: segfault at 7f410000000b ip 000000=
00004042b5 sp 00007f415bffecf0 error 4
>> >> > [ 7340.338179]  in libc.so.6[61c9d,7f4161aaf000+160000]
>> >> > [ 7340.339230]  in xskxceiver[42b5,400000+69000]
>> >> > [ 7340.340300]  likely on CPU 6 (core 0, socket 6)
>> >> > [ 7340.340302] Code: ff ff 01 e9 f4 fe ff ff 0f 1f 44 00 00 4c 39 f=
0 74 73 31 c0 ba 01 00 00 00 f0 0f b1 17 0f 85 ba 00 00 00 49 8b 87 88 00 0=
0 00 <4c> 89 70 08 eb cc 0f 1f 44 00 00 48 8d bd f0 fe ff ff 89 85 ec fe
>> >> > [ 7340.340888]  likely on CPU 3 (core 0, socket 3)
>> >> > [ 7340.345088] Code: 00 00 00 ba 00 00 00 00 be 00 00 00 00 89 c7 e=
8 31 ca ff ff 89 45 ec 8b 45 ec 85 c0 78 07 b8 00 00 00 00 eb 46 e8 0b c8 f=
f ff <8b> 00 83 f8 69 74 24 e8 ff c7 ff ff 8b 00 83 f8 0b 74 18 e8 f3 c7
>> >> > [ 7340.404334] Oops: general protection fault, probably for non-can=
onical address 0x6d255010bdffc: 0000 [#1] SMP NOPTI
>> >> > [ 7340.405972] CPU: 7 UID: 0 PID: 1439 Comm: xskxceiver Not tainted=
 6.19.0-rc1+ #21 PREEMPT(lazy)
>> >> > [ 7340.408006] Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), =
BIOS 1.17.0-5.fc42 04/01/2014
>> >> > [ 7340.409716] RIP: 0010:lookup_swap_cgroup_id+0x44/0x80
>> >> > [ 7340.410455] Code: 83 f8 1c 73 39 48 ba ff ff ff ff ff ff ff 03 4=
8 8b 04 c5 20 55 fa bd 48 21 d1 48 89 ca 83 e1 01 48 d1 ea c1 e1 04 48 8d 0=
4 90 <8b> 00 48 83 c4 10 d3 e8 c3 cc cc cc cc 31 c0 e9 98 b7 dd 00 48 89
>> >> > [ 7340.412787] RSP: 0018:ffffcc5c04f7f6d0 EFLAGS: 00010202
>> >> > [ 7340.413494] RAX: 0006d255010bdffc RBX: ffff891f477895a8 RCX: 000=
0000000000010
>> >> > [ 7340.414431] RDX: 0001c17e3fffffff RSI: 00fa070000000000 RDI: 000=
382fc7fffffff
>> >> > [ 7340.415354] RBP: 00fa070000000000 R08: ffffcc5c04f7f8f8 R09: fff=
fcc5c04f7f7d0
>> >> > [ 7340.416283] R10: ffff891f4c1a7000 R11: ffffcc5c04f7f9c8 R12: fff=
fcc5c04f7f7d0
>> >> > [ 7340.417218] R13: 03ffffffffffffff R14: 00fa06fffffffe00 R15: fff=
f891f47789500
>> >> > [ 7340.418229] FS:  0000000000000000(0000) GS:ffff891ffdfaa000(0000=
) knlGS:0000000000000000
>> >> > [ 7340.419489] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> >> > [ 7340.420286] CR2: 00007f415bfffd58 CR3: 0000000103f03002 CR4: 000=
0000000772ef0
>> >> > [ 7340.421237] PKRU: 55555554
>> >> > [ 7340.421623] Call Trace:
>> >> > [ 7340.421987]  <TASK>
>> >> > [ 7340.422309]  ? softleaf_from_pte+0x77/0xa0
>> >> > [ 7340.422855]  swap_pte_batch+0xa7/0x290
>> >> > [ 7340.423363]  zap_nonpresent_ptes.constprop.0.isra.0+0xd1/0x270
>> >> > [ 7340.424102]  zap_pte_range+0x281/0x580
>> >> > [ 7340.424607]  zap_pmd_range.isra.0+0xc9/0x240
>> >> > [ 7340.425177]  unmap_page_range+0x24d/0x420
>> >> > [ 7340.425714]  unmap_vmas+0xa1/0x180
>> >> > [ 7340.426185]  exit_mmap+0xe1/0x3b0
>> >> > [ 7340.426644]  __mmput+0x41/0x150
>> >> > [ 7340.427098]  exit_mm+0xb1/0x110
>> >> > [ 7340.427539]  do_exit+0x1b2/0x460
>> >> > [ 7340.427992]  do_group_exit+0x2d/0xc0
>> >> > [ 7340.428477]  get_signal+0x79d/0x7e0
>> >> > [ 7340.428957]  arch_do_signal_or_restart+0x34/0x100
>> >> > [ 7340.429571]  exit_to_user_mode_loop+0x8e/0x4c0
>> >> > [ 7340.430159]  do_syscall_64+0x188/0x6b0
>> >> > [ 7340.430672]  ? __do_sys_clone3+0xd9/0x120
>> >> > [ 7340.431212]  ? switch_fpu_return+0x4e/0xd0
>> >> > [ 7340.431761]  ? arch_exit_to_user_mode_prepare.isra.0+0xa1/0xc0
>> >> > [ 7340.432498]  ? do_syscall_64+0xbb/0x6b0
>> >> > [ 7340.433015]  ? __handle_mm_fault+0x445/0x690
>> >> > [ 7340.433582]  ? count_memcg_events+0xd6/0x210
>> >> > [ 7340.434151]  ? handle_mm_fault+0x212/0x340
>> >> > [ 7340.434697]  ? do_user_addr_fault+0x2b4/0x7b0
>> >> > [ 7340.435271]  ? clear_bhb_loop+0x30/0x80
>> >> > [ 7340.435788]  ? clear_bhb_loop+0x30/0x80
>> >> > [ 7340.436299]  ? clear_bhb_loop+0x30/0x80
>> >> > [ 7340.436812]  ? clear_bhb_loop+0x30/0x80
>> >> > [ 7340.437323]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
>> >> > [ 7340.437973] RIP: 0033:0x7f4161b14169
>> >> > [ 7340.438468] Code: Unable to access opcode bytes at 0x7f4161b1413=
f.
>> >> > [ 7340.439242] RSP: 002b:00007ffc6ebfa770 EFLAGS: 00000246 ORIG_RAX=
: 00000000000000ca
>> >> > [ 7340.440173] RAX: fffffffffffffe00 RBX: 00000000000005a1 RCX: 000=
07f4161b14169
>> >> > [ 7340.441061] RDX: 00000000000005a1 RSI: 0000000000000109 RDI: 000=
07f415bfff990
>> >> > [ 7340.441943] RBP: 00007ffc6ebfa7a0 R08: 0000000000000000 R09: 000=
00000ffffffff
>> >> > [ 7340.442824] R10: 0000000000000000 R11: 0000000000000246 R12: 000=
0000000000000
>> >> > [ 7340.443707] R13: 0000000000000000 R14: 00007f415bfff990 R15: 000=
07f415bfff6c0
>> >> > [ 7340.444586]  </TASK>
>> >> > [ 7340.444922] Modules linked in: rfkill intel_rapl_msr intel_rapl_=
common intel_uncore_frequency_common skx_edac_common nfit libnvdimm kvm_int=
el vfat fat kvm snd_pcm irqbypass rapl iTCO_wdt snd_timer intel_pmc_bxt iTC=
O_vendor_support snd ixgbevf virtio_net soundcore i2c_i801 pcspkr libeth_xd=
p net_failover i2c_smbus lpc_ich failover libeth virtio_balloon joydev 9p f=
use loop zram lz4hc_compress lz4_compress 9pnet_virtio 9pnet netfs ghash_cl=
mulni_intel serio_raw qemu_fw_cfg
>> >> > [ 7340.449650] ---[ end trace 0000000000000000 ]---
>> >> >
>> >> > The issue can be fixed in all in-tree drivers, but we cannot just t=
rust OOT
>> >> > drivers to not do this. Therefore, make tailroom a signed int and p=
roduce a
>> >> > warning when it is negative to prevent such mistakes in the future.
>> >> >
>> >> > Fixes: bf25146a5595 ("bpf: add frags support to the bpf_xdp_adjust_=
tail() API")
>> >> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> >> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
>> >> > ---
>> >> >  net/core/filter.c | 3 ++-
>> >> >  1 file changed, 2 insertions(+), 1 deletion(-)
>> >> >
>> >> > diff --git a/net/core/filter.c b/net/core/filter.c
>> >> > index 616e0520a0bb..9715d957e3c5 100644
>> >> > --- a/net/core/filter.c
>> >> > +++ b/net/core/filter.c
>> >> > @@ -4149,12 +4149,13 @@ static int bpf_xdp_frags_increase_tail(stru=
ct xdp_buff *xdp, int offset)
>> >> >  =09struct skb_shared_info *sinfo =3D xdp_get_shared_info_from_buff=
(xdp);
>> >> >  =09skb_frag_t *frag =3D &sinfo->frags[sinfo->nr_frags - 1];
>> >> >  =09struct xdp_rxq_info *rxq =3D xdp->rxq;
>> >> > -=09unsigned int tailroom;
>> >> > +=09int tailroom;
>> >> > =20
>> >> >  =09if (!rxq->frag_size || rxq->frag_size > xdp->frame_sz)
>> >> >  =09=09return -EOPNOTSUPP;
>> >> > =20
>> >> >  =09tailroom =3D rxq->frag_size - skb_frag_size(frag) - skb_frag_of=
f(frag);
>> >> > +=09WARN_ON_ONCE(tailroom < 0);
>> >> >  =09if (unlikely(offset > tailroom))
>> >> >  =09=09return -EINVAL;
>> >> > =20
>> >>=20
>> >> Why can't we do both? I.e., WARN_ON_ONCE() *and* return -EINVAL?
>> >>=20
>> >> -Toke
>> >>=20
>> >
>> > It would be redundant, offset is always >=3D 0 here, so with tailroom =
now being a=20
>> > signed int, offset is always bigger and -EINVAL is returned.
>>=20
>> Oh, I see. OK, may be worth calling out; I read this paragraph in your
>> commit message to mean "we don't bother returning EINVAL in this case,
>> we just warn":
>
> Worth changing 'could' to 'are supposed to', if there will be v2.

Yeah, that would be better, thanks!

Other than that,

Reviewed-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>

