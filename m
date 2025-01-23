Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 483BBA1AAA9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 20:49:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3AFE8405A;
	Thu, 23 Jan 2025 19:49:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kEGdKGnDmFoN; Thu, 23 Jan 2025 19:49:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 398B683FF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737661775;
	bh=/qLickY1e0ujLI7bpuAPKBg3ra7SxF8sIpaNTGdpk/E=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mTCc9jHdrSceS3AT/WCdSL9vBTBQZyNO4GBXw7f/Q9oQn6/s+tMnBiHQ6jJfj13+G
	 lekxSwi1IYZq5kKvxzPYYrelbDZHAo8wy7BKWZdq7LnAX/WwbysvW4U8fX3JsRfHS8
	 bYSZiUU5RslOXTFrnIWpA6G0V5gBL7gr44GwsNgBFaH2FkklbmAXRLZwyBGGXUj+3S
	 i7n1RiV7cFt/Es4pNx/us3i4CqiipKRj8/law1J1543NtPbfDmx/jd43G7Ah5TGaOF
	 jIgaWYRTJqgFCqyKzt3pHCMS52eTlcNIC7X0VxvkoWFQEv3GBcpCg6DJ3MCX8kAJvq
	 KTj3IfeGEBVcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 398B683FF8;
	Thu, 23 Jan 2025 19:49:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 15EDC959
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 19:49:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 03DE240296
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 19:49:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kJxkbrrANVDY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 19:49:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 06D0A40176
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06D0A40176
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 06D0A40176
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 19:49:31 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-2165cb60719so23307355ad.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 11:49:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737661771; x=1738266571;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/qLickY1e0ujLI7bpuAPKBg3ra7SxF8sIpaNTGdpk/E=;
 b=Jv/RTMrwpgYqpucV7cGLSHYo0IGP7VELoeBYmltoR1jBUnGaUxI2Hlthy7Ebv2CatM
 2iIN/M5gKMQF2y1FXzsYZ06xi0dvu7vsv0si5AD3qvSAhkNH7f889tD12qZvNABtTmkK
 l8PST1J+Ab/vGYrXPsNp+FlOExwZIaGEAAWMuEUpatLviRdYOkuRyKWN91IAv8K/0KAJ
 Toe8Nc67/U185y9mxVVpzEKp6vFPhFfFuc/v0BiyEvzbVKqkdsZlDznayMt65tPIOaTd
 V+4rotnvRYJEQsY3P+whE1b4yhm+/UmejeR1OI2Sm9aUgLTRCkBvLkA1xW8WX4R5zTbI
 zZqA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWO4e0JqT+Cbcc38qy5jV4z6NmsZGNFa8UQgy4fTdlGPdifZEFQGCmqxmOWcORnLgCEfijFQkqbEXCldpzqbko=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw9D+Tj2fj0SsJnvd5Glj41/qJ6Fv6P5+a1Tg1R7VTIX/jPGXM+
 eCNf7TlamLlOpBd3gPupGC6glyyRxlpXhyt1HNouVYosNC+TvLtzReMlNrE=
X-Gm-Gg: ASbGncsOfshLQ0ysIqVlrbsiAGQdQ1pBcag28FPZ4ym4yZt+KU0UFbX2RF0YWuMzUc0
 cBLyX6FjOQW/ApWDqXOzfWebRkqnoSmXkKNhb2KbNULhG3NEf2MbGhPaz7NPEPEhOi3rnVgEK0j
 2wiFyZ/jABKCm9GtL2JDFdLojA0IO/kytoPyRfUQGl2QwCap/3J0syHuS/Z2FN9fdcckOwqwXTR
 NnGw0qPmRcMLQxZ9dBzaUHpZKOyMXXmZ1FFmHHoy/s6ohq8jzIMIiLSJvdGV3nSd3NwGI66Y7or
 ZmVU
X-Google-Smtp-Source: AGHT+IESeNKwX2zcipFaXoMlvYsxaD0Oto3RCfSnVHPTxJyo13u3XHbde1U83PRnjPUOPMjYL0fFMw==
X-Received: by 2002:a17:903:988:b0:216:7ee9:220b with SMTP id
 d9443c01a7336-21c35530048mr461405425ad.22.1737661771206; 
 Thu, 23 Jan 2025 11:49:31 -0800 (PST)
Received: from localhost ([2601:646:9e00:f56e:123b:cea3:439a:b3e3])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21da4141436sm2728275ad.134.2025.01.23.11.49.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2025 11:49:30 -0800 (PST)
Date: Thu, 23 Jan 2025 11:49:30 -0800
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Florian Bezdeka <florian.bezdeka@siemens.com>
Cc: "Song, Yoong Siang" <yoong.siang.song@intel.com>,
 "Bouska, Zdenek" <zdenek.bouska@siemens.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Willem de Bruijn <willemb@google.com>,
 Donald Hunter <donald.hunter@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Bjorn Topel <bjorn@kernel.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 "Damato, Joe" <jdamato@fastly.com>, Stanislav Fomichev <sdf@fomichev.me>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Mina Almasry <almasrymina@google.com>, Daniel Jurgens <danielj@nvidia.com>,
 Andrii Nakryiko <andrii@kernel.org>, Eduard Zingerman <eddyz87@gmail.com>,
 Mykola Lysenko <mykolal@fb.com>,
 Martin KaFai Lau <martin.lau@linux.dev>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>
Message-ID: <Z5KdSlzmyCKUyXTn@mini-arch>
References: <20250116155350.555374-1-yoong.siang.song@intel.com>
 <20250116155350.555374-5-yoong.siang.song@intel.com>
 <AS1PR10MB5675499EE0ED3A579151D3D3EBE02@AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM>
 <PH0PR11MB583095A2F12DA10D57781D18D8E02@PH0PR11MB5830.namprd11.prod.outlook.com>
 <ea087229cc6f7953875fc69f1b73df1ae1ee9b72.camel@siemens.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ea087229cc6f7953875fc69f1b73df1ae1ee9b72.camel@siemens.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737661771; x=1738266571; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/qLickY1e0ujLI7bpuAPKBg3ra7SxF8sIpaNTGdpk/E=;
 b=fdb+j9FZ70S3LQK2S1OKdghi0VQ/hjdU/URZRTpRhfcfhrOfihqKHyxlRveXFD3Q6z
 4XPQzNoyI21grEySuO6fagFIOcbXpT6uDAcVttd0XXFBXCrHinb8ZbYDRtlp4eEh7+Tp
 O+8VKVmgIldE8r9n1az9+FN01dGv9MH0L1CxywILfyH3zOh/AuGYTsuWxij1kkO1EOEE
 IY8KvWuBvGIicuH8g7/jmmcRbTO0CV9z/60Or2KMHR6Ch1Xq2VpTYxR78rCcoezl8nFf
 IXy0D9niknl3RGang9vJZwnOMwNjZSZNMbql8xpJ0YS84QmmgFAG7TpOVQus7wnYUYu8
 HObQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=fdb+j9FZ
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 4/4] igc: Add launch time
 support to XDP ZC
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

On 01/23, Florian Bezdeka wrote:
> Hi all,
> 
> On Thu, 2025-01-23 at 16:41 +0000, Song, Yoong Siang wrote:
> > On Thursday, January 23, 2025 11:40 PM, Bouska, Zdenek <zdenek.bouska@siemens.com> wrote:
> > > 
> > > Hi Siang,
> > > 
> > > I tested this patch series on 6.13 with Intel I226-LM (rev 04).
> > > 
> > > I also applied patch "selftests/bpf: Actuate tx_metadata_len in xdp_hw_metadata" [1]
> > > and "selftests/bpf: Enable Tx hwtstamp in xdp_hw_metadata" [2] so that TX timestamps
> > > work.
> > > 
> > > HW RX-timestamp was small (0.5956 instead of 1737373125.5956):
> > > 
> > > HW RX-time:   595572448 (sec:0.5956) delta to User RX-time sec:1737373124.9873 (1737373124987318.750 usec)
> > > XDP RX-time:   1737373125582798388 (sec:1737373125.5828) delta to User RX-time sec:0.0001 (92.733 usec)
> > > 
> > > Igc's raw HW RX-timestamp in front of frame data was overwritten by BPF program on
> > > line 90 in tools/testing/selftests/bpf: meta->hint_valid = 0;
> > > 
> > > "HW timestamp has been copied into local variable" comment is outdated on
> > > line 2813 in drivers/net/ethernet/intel/igc/igc_main.c after
> > > commit 069b142f5819 igc: Add support for PTP .getcyclesx64() [3].
> > > 
> > > Workaround is to add unused data to xdp_meta struct:
> > > 
> > > --- a/tools/testing/selftests/bpf/xdp_metadata.h
> > > +++ b/tools/testing/selftests/bpf/xdp_metadata.h
> > > @@ -49,4 +49,5 @@ struct xdp_meta {
> > >                __s32 rx_vlan_tag_err;
> > >        };
> > >        enum xdp_meta_field hint_valid;
> > > +       __u8 avoid_IGC_TS_HDR_LEN[16];
> > > };
> > > 
> > 
> > Hi Zdenek Bouska, 
> > 
> > Thanks for your help on testing this patch set.
> > You are right, there is some issue with the Rx hw timestamp,
> > I will submit the bug fix patch when the solution is finalized,
> > but the fix will not be part of this launch time patch set.
> > Until then, you can continue to use your WA.
> 
> I think there is no simple fix for that. That needs some discussion
> around the "expectations" to the headroom / meta data area in front of
> the actual packet data.

By 'simple' you mean without some new UAPI to signal the size of that
'reserved area' by the driver? I don't see any other easy way out as well :-/
