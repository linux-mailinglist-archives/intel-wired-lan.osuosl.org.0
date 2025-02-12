Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0A8A32680
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 14:04:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D4074178F;
	Wed, 12 Feb 2025 13:04:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kNWt2LXMVpoG; Wed, 12 Feb 2025 13:04:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DCEC417A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739365451;
	bh=74uMcT1ATA8oesZ4RLJWJmWWQE0dfyr1iZfLrPNytuQ=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V1sQ+dvH6vxPr8uOVYDLNyHmBilctSLyC7CEPqRaC2vdWaBq9Ms7KMe7PC6WR/9tf
	 CGfYdzXGR1pIfRPS45V5nT1RVWFr3pG1h1lAprE/zKskjUYFmFzAbYsuWiFjELCgyP
	 2iNY4HAycbG230O8eUNhxpdBa6YbYcd5VQTKz4SRuteFUlJpGZCcRuGCJv7vXOKHlD
	 W+ayXHHMb/V1k9hOHuoVib+ts9OnPTsXk8A9BFJ07odQTJ2E95A+UqLI4C0cEuARpN
	 7GzQ7bhcehdbfoYUHDw4fRTMF1wTj4I073zF76b9x+nzNsbZFjiKudIkYDoIGkyhrw
	 PgAb50RX1YtcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DCEC417A2;
	Wed, 12 Feb 2025 13:04:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9813AC2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:04:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8723F84777
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:04:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qMvDlkOY-UYG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 13:04:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=toke@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 779BD84773
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 779BD84773
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 779BD84773
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:04:06 +0000 (UTC)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-172-14KbzWGhOHOI6WAkry336A-1; Wed, 12 Feb 2025 08:04:02 -0500
X-MC-Unique: 14KbzWGhOHOI6WAkry336A-1
X-Mimecast-MFC-AGG-ID: 14KbzWGhOHOI6WAkry336A_1739365441
Received: by mail-ed1-f69.google.com with SMTP id
 4fb4d7f45d1cf-5de3d2a3090so5817071a12.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 05:04:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739365441; x=1739970241;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NudN7JR4Wq1LwIjLqH5NKmHgW3zPzUDP7fyxBk8SYR0=;
 b=LAKKC2Nz8yM+EgUSq5oktlxZS6C34bhif1/Nh7wBoRaNvdcBrJXVC9mSYnPXT3aBsa
 fYmRRftYqDVqaaR4Ee4EDRI68oIRxafvyxacZUIx211KEzqp2zBgwPp2iVPY833iexRo
 gLB0/DqP3WL+sB8HZe6dLezfDbDZI5PXvOqbzGInhnxOc3p0yXCKnY9c3MlU6n7ri75E
 nxvNPy3oaCBbevtb4H9dtfE/jWfYZ31DnGjs0uydoO8LuLvlwp207kKKs/djbxIT9wsk
 /uGDy4/i57zxA+dbYW2sXyooGRqrNueboBj6Hl+UDLtbMzKmpk/FMlq/QM3VClwJzgZb
 XINw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUEvGgB1+0Lc2Fj5Std7ucLDbAFNOvmo+5b8I1pZGabjMt0/k/Dk3QrQo2MsLQ3VDKVZhGVvueNNQ8s/QyhOJ8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YySrHr6xATytkDBnP1ocoECJJDnJIilAT6io+GW5CeeKqvAG4MR
 96DEvDQKKIR9VEm9cZUDQ85WwRxEVzwjPnbWS/8MSvmfqkRs5Gmd9vKzlfVIEv5npbmNTxb+SXX
 FYuV2q5BwtyVHvP8Gz7co/JWJOMhhM1R8cNaf7grLjXOyMA1Ci/9HdNkRLOFWR0ImIU4=
X-Gm-Gg: ASbGncuyWuUyDBPZ0w/atsU1W8iFeydvC9eoEq8PPgnx42Nqz94gvkR7OUxLse4sYY6
 u2Z5RJSMi/cft5HfQQJM1FGC10iIW73Z6YsdNAF2OeJBm8+s79xfQpf8L9MRq3YhOVu6sVGlPPz
 oqpuC/icjlWcm9RsMCIPdkVml6YFVJ3xyyOLOEFOdaxIfciDjFWEwPTaS8Zkt0Oo8nC5XjwFcwN
 5aHu13Nl15G2wM4/ZExmToEcYbjxkgXlbHvgAv4TmGTYhxJo5Ts6zj0a3R183jFII1nKpyGX6qS
 lpOUjabpJ2bXUMDx0tyvckzwLZT7zg==
X-Received: by 2002:a05:6402:40d1:b0:5dc:7fbe:72ff with SMTP id
 4fb4d7f45d1cf-5deadd7b87fmr2623930a12.2.1739365440618; 
 Wed, 12 Feb 2025 05:04:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG/y6y8dqS+DDKRdgSCgtCqa6BcY3yBhSY2BkNK6IDJjKq+bMXCcDrtFZbw+JMsWeiLibntWg==
X-Received: by 2002:a05:6402:40d1:b0:5dc:7fbe:72ff with SMTP id
 4fb4d7f45d1cf-5deadd7b87fmr2623444a12.2.1739365435416; 
 Wed, 12 Feb 2025 05:03:55 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5dcf9f6c1d6sm11253675a12.65.2025.02.12.05.03.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2025 05:03:54 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 0005A184FE69; Wed, 12 Feb 2025 14:03:53 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Jacob Keller
 <jacob.e.keller@intel.com>, Chandan Kumar Rout <chandanx.rout@intel.com>,
 Yue Haibing <yuehaibing@huawei.com>, Simon Horman <horms@kernel.org>,
 Samuel Dobron <sdobron@redhat.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <Z6yWa3ADgWmu+2TE@boxer>
References: <87mserpcl6.fsf@toke.dk> <Z6yWa3ADgWmu+2TE@boxer>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 12 Feb 2025 14:03:53 +0100
Message-ID: <87h64zpb5y.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Gd0sslBcORUw-ybz-1O00FaNp1cmlirC1WKnE4JaN4w_1739365441
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1739365445;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=74uMcT1ATA8oesZ4RLJWJmWWQE0dfyr1iZfLrPNytuQ=;
 b=H5x+5MnuQixiyo5jhOoKiDxv5MI15deuAifrmcuQhabNShzexRAvhZ6Li5F2pOqtU4tdEd
 JKl3En1IgqBg7b8lz9JfkSjpBmpu+sIh1MbuATQT8uHQilg4UCIjEsNSRrq79LGY8goNzl
 SwnzSfadT7vVAKa7Pf7TpUayofFBVcU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=H5x+5Mnu
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

Maciej Fijalkowski <maciej.fijalkowski@intel.com> writes:

> On Wed, Feb 12, 2025 at 01:33:09PM +0100, Toke H=C3=B8iland-J=C3=B8rgense=
n wrote:
>> Hi folks,
>>=20
>> Our LNST testing team uncovered a crash in ixgbe when running an XDP
>> program, see this report:
>> https://bugzilla.redhat.com/show_bug.cgi?id=3D2343204
>>=20
>> From looking at the code, it seems to me that the culprit is this commit=
:
>>=20
>> c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in ixgbe_run_xdp()")
>>=20
>> after that commit, the IS_ERR(skb) check in ixgbe_put_rx_buffer() no
>> longer triggers, and that function tries to dereference a NULL skb
>> pointer after an XDP program dropped the frame.
>>=20
>> Could you please fix this?
>
> Hi Toke,
>
> https://lore.kernel.org/netdev/20250211214343.4092496-5-anthony.l.nguyen@=
intel.com/
>
> can you see if this fixes it?

Ah! I went looking in the -net and -net-next git trees to see if you'd
already fixed this, but didn't check the list. Thanks for the pointer,
will see if we can get this tested.

> Validation in our company has always been a mystery to me, sorry for this
> inconvenience and that we were bad at reviewing :<

No worries, bugs happen; thankfully we caught it early. Also mostly
meant it as a nudge to try to give XDP testing a more prominent spot :)

-Toke

