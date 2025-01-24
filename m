Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F09E7A1B4F3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jan 2025 12:45:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BA4C81DF3;
	Fri, 24 Jan 2025 11:45:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h9xMdoYRu7Qw; Fri, 24 Jan 2025 11:45:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD50A81DF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737719152;
	bh=odeNkl2pdZWzjMRmLzJX8QVcRedjnH492ZzohS0yuak=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zCQAxRUI6Akk7yhIVTor5xzzS14jRH29FXrOI5XoghQAfbMubDig6ETlfu9hVL+Yv
	 9U5+tOL1vVFDsSi1J7rYPfEvE34ZF5Vh7MD00yv1xR+2n/2Zbgnw8ybnP+FqZiroR5
	 4XCrEU9L7Y1QVIORGTby99oRIzNYoKAQ3dJf5dUVSLEAsVA4p8hIyMc2IrGP0BtaEj
	 XiHaFJCMyWpGWYPCZ19Mad17ir/VkzALH0u9/Xkbl8UVQa80qfLs1xsnPwRkiDmOwj
	 1FKPl1A0mhs/SvymOa+Kj9dhoS3hH+a4o9tfSdBKU/QIqOLvqE+wVpnclP31ZJlTQT
	 Twy8R4PJHRXmw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD50A81DF4;
	Fri, 24 Jan 2025 11:45:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9893E941
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2025 11:45:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 78D7081DE5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2025 11:45:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xBund_zqCm_F for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jan 2025 11:45:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=toke@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 91DDC81DEF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91DDC81DEF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 91DDC81DEF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2025 11:45:48 +0000 (UTC)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-456-NJuNzL8TMKm7szMhOxhfrw-1; Fri, 24 Jan 2025 06:45:46 -0500
X-MC-Unique: NJuNzL8TMKm7szMhOxhfrw-1
X-Mimecast-MFC-AGG-ID: NJuNzL8TMKm7szMhOxhfrw
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-aa69c41994dso139692766b.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jan 2025 03:45:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737719145; x=1738323945;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=odeNkl2pdZWzjMRmLzJX8QVcRedjnH492ZzohS0yuak=;
 b=G73eZD7krpuYsaisnhsggNckFQK4TuUsDNfcHiKCrus8hjE8I/Uyxr276Qu2Itwc3D
 jTjTQ1gRnZIwVSVB2pTGPkGVYtCd407SAvQJ2OqoiL0vcxEMXWIthwt5djoVrZ1ARTPn
 ZjqZOPcS9E51WnheqjiM8EM6dkPdZNifWMroNFvRabbJQZfWzmQtXR6ZCSVDUynADpdm
 CiVxsenL0BSkWklI4Me3kKeRrQ1EOgOoFRLvrMNvyWn3rQfdKf8M/MfJaQLuxznf2p2q
 hx92G/qmUZNW97eUJFP04UcTITrlqfl5fromy0QkM9o7+cPAaG2isw05hvCKmwvSKJ7y
 lLYQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUlF2UCSV7zaWpr66iH/gMLDHWRte4+JiboYlMxVRZxeT4ll1qEJqx+l6/pKoGvebUpYIjGf5H0NY60+1h6Wf0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyItSAE58+1nkVUV9B5uHWa5Quu2PuFMtxkLkNoTEwW1Ay1igat
 c/Cyz3Ch/JTHPaDTPho5lkrU2VC+Zkml3W4NAQHwKLLcATGL4g1q4QJuqdmQPOhdCC7IiMeemWw
 R55j+85s1mvUEF7k3l+0CWbyjQmuYhE671WsSJm53logAON8lilxp7paPQND4/KEgYaM=
X-Gm-Gg: ASbGnct19rmzZmymEynLIMqmpikDop8Z2EZf5FAcXSpG2NoqJC6wMgoE0tfT03F39g2
 Xkl6HNhONa8DP7lG2wIUPDUW57dMSeYiUL4D7/n4vtGTnuIIOJx/BLGqtgCbptMNFLK62kIkily
 T5/AOrEiQlyfdnqyYzsvWHYPhsoPDiMKanC8pjVj2vTk0osRXf6+v8PzSiOZ5z3g+j/yzmZzYW/
 3Kk06IwEcV/c9R1A0dJNOm62ENzVgnVmrzdYaMx/hjhpT/w5bqtL2AMe3CG8E/OWhNW4GTejkfx
 Cv0lybSgk0NBbRyOXxA=
X-Received: by 2002:a05:6402:1e8e:b0:5dc:1059:6b2 with SMTP id
 4fb4d7f45d1cf-5dc105a5ec1mr11805759a12.7.1737719144959; 
 Fri, 24 Jan 2025 03:45:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGeWFYBPETVo309BerlvPgux0XnsYsjMKjnLErW6dJ05V2oA4Fpf2Q3nZFN4K3N5AK1bx4cSA==
X-Received: by 2002:a05:6402:1e8e:b0:5dc:1059:6b2 with SMTP id
 4fb4d7f45d1cf-5dc105a5ec1mr11805656a12.7.1737719144333; 
 Fri, 24 Jan 2025 03:45:44 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ab6760ab1d7sm117046766b.109.2025.01.24.03.45.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2025 03:45:43 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 9DF17180AA6E; Fri, 24 Jan 2025 12:45:42 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Stanislav Fomichev <stfomichev@gmail.com>, Florian Bezdeka
 <florian.bezdeka@siemens.com>
Cc: "Song, Yoong Siang" <yoong.siang.song@intel.com>, "Bouska, Zdenek"
 <zdenek.bouska@siemens.com>, "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Willem
 de Bruijn <willemb@google.com>, Donald Hunter <donald.hunter@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Bjorn Topel <bjorn@kernel.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer
 <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, "Damato,
 Joe" <jdamato@fastly.com>, Stanislav Fomichev <sdf@fomichev.me>, Xuan Zhuo
 <xuanzhuo@linux.alibaba.com>, Mina Almasry <almasrymina@google.com>,
 Daniel Jurgens <danielj@nvidia.com>, Andrii Nakryiko <andrii@kernel.org>,
 Eduard Zingerman <eddyz87@gmail.com>, Mykola Lysenko <mykolal@fb.com>,
 Martin KaFai Lau <martin.lau@linux.dev>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>,
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Shuah Khan
 <shuah@kernel.org>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose
 Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "xdp-hints@xdp-project.net"
 <xdp-hints@xdp-project.net>
In-Reply-To: <Z5KdSlzmyCKUyXTn@mini-arch>
References: <20250116155350.555374-1-yoong.siang.song@intel.com>
 <20250116155350.555374-5-yoong.siang.song@intel.com>
 <AS1PR10MB5675499EE0ED3A579151D3D3EBE02@AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM>
 <PH0PR11MB583095A2F12DA10D57781D18D8E02@PH0PR11MB5830.namprd11.prod.outlook.com>
 <ea087229cc6f7953875fc69f1b73df1ae1ee9b72.camel@siemens.com>
 <Z5KdSlzmyCKUyXTn@mini-arch>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 24 Jan 2025 12:45:42 +0100
Message-ID: <87bjvwqvtl.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: wuP2U_-3KyTGAZq6faiA7wm8eL4u4WJCxLbIdBplb9Q_1737719145
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1737719147;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=odeNkl2pdZWzjMRmLzJX8QVcRedjnH492ZzohS0yuak=;
 b=CWBAJjAZyQwlmRFwm7JzOJC10iIvoLzLKD7cY7FBZNfkT3F8OE36kyYJvQHfDd9G/NbW4/
 BolTIDEcRRUnN36rV6Q/PuG+3mOCfaX7/QPqft4gjiaRyGoaPQfXEfwv5LaIY51Ggo5F6q
 1ahGwCoeazodd2cpMvgJkdHvDgzf32s=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=CWBAJjAZ
Subject: Re: [Intel-wired-lan] [xdp-hints] Re: [PATCH bpf-next v6 4/4] igc:
 Add launch time support to XDP ZC
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

Stanislav Fomichev <stfomichev@gmail.com> writes:

> On 01/23, Florian Bezdeka wrote:
>> Hi all,
>> 
>> On Thu, 2025-01-23 at 16:41 +0000, Song, Yoong Siang wrote:
>> > On Thursday, January 23, 2025 11:40 PM, Bouska, Zdenek <zdenek.bouska@siemens.com> wrote:
>> > > 
>> > > Hi Siang,
>> > > 
>> > > I tested this patch series on 6.13 with Intel I226-LM (rev 04).
>> > > 
>> > > I also applied patch "selftests/bpf: Actuate tx_metadata_len in xdp_hw_metadata" [1]
>> > > and "selftests/bpf: Enable Tx hwtstamp in xdp_hw_metadata" [2] so that TX timestamps
>> > > work.
>> > > 
>> > > HW RX-timestamp was small (0.5956 instead of 1737373125.5956):
>> > > 
>> > > HW RX-time:   595572448 (sec:0.5956) delta to User RX-time sec:1737373124.9873 (1737373124987318.750 usec)
>> > > XDP RX-time:   1737373125582798388 (sec:1737373125.5828) delta to User RX-time sec:0.0001 (92.733 usec)
>> > > 
>> > > Igc's raw HW RX-timestamp in front of frame data was overwritten by BPF program on
>> > > line 90 in tools/testing/selftests/bpf: meta->hint_valid = 0;
>> > > 
>> > > "HW timestamp has been copied into local variable" comment is outdated on
>> > > line 2813 in drivers/net/ethernet/intel/igc/igc_main.c after
>> > > commit 069b142f5819 igc: Add support for PTP .getcyclesx64() [3].
>> > > 
>> > > Workaround is to add unused data to xdp_meta struct:
>> > > 
>> > > --- a/tools/testing/selftests/bpf/xdp_metadata.h
>> > > +++ b/tools/testing/selftests/bpf/xdp_metadata.h
>> > > @@ -49,4 +49,5 @@ struct xdp_meta {
>> > >                __s32 rx_vlan_tag_err;
>> > >        };
>> > >        enum xdp_meta_field hint_valid;
>> > > +       __u8 avoid_IGC_TS_HDR_LEN[16];
>> > > };
>> > > 
>> > 
>> > Hi Zdenek Bouska, 
>> > 
>> > Thanks for your help on testing this patch set.
>> > You are right, there is some issue with the Rx hw timestamp,
>> > I will submit the bug fix patch when the solution is finalized,
>> > but the fix will not be part of this launch time patch set.
>> > Until then, you can continue to use your WA.
>> 
>> I think there is no simple fix for that. That needs some discussion
>> around the "expectations" to the headroom / meta data area in front of
>> the actual packet data.
>
> By 'simple' you mean without some new UAPI to signal the size of that
> 'reserved area' by the driver? I don't see any other easy way out as well :-/

Yeah, I don't think we can impose UAPI restrictions on the metadata area
at this point. I guess the best we can do is to educate users that they
should call the timestamp kfunc before they modify the metadata?

-Toke

