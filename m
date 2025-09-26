Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E927BA38E0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Sep 2025 13:58:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A56E84B9F;
	Fri, 26 Sep 2025 11:58:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yD2icNGFg3Rk; Fri, 26 Sep 2025 11:58:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 686BD84C35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758887900;
	bh=NhLI8ivMsRQl48fjRfQzFPxYaKc+TpjybY+SoQT+bt8=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mD4yFPaGTB+ql7E+tJnjG/ROXtGxjeLxZlMBtsHCtc1E4bXIUTsseAPqQ8Y4Kptfd
	 QPUNrk7ezVsawZWdEa86IQ23gdc57vXHLYkrvc0v7UE5LDzqfx1S6g7F7fpedo9jvI
	 SFIn+XbmvN6FrEAdVJyF6aOXHfIbGiE5WFgtdLkGT8mbVZ5k8qxZMkF+HlrB4t1S1p
	 j6x3LQB0bBUIL3L52k2nIK3LjTdyv3gTQzjRWB3icrcDbpaQW4GMPEh/ztU47/UH9s
	 cnjItok/Z6F8dzZ7xpR43d/EP6jwFFByJXaW5M1Mkh0y8xuoTpb6RU9ugndywtBoaY
	 0LzXwA8Djig/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 686BD84C35;
	Fri, 26 Sep 2025 11:58:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 348CF177
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 11:58:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 25A3C84B40
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 11:58:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id stH1dK4a-TdC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Sep 2025 11:58:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::531; helo=mail-ed1-x531.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 34CE584C3B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34CE584C3B
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 34CE584C3B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 11:58:16 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id
 4fb4d7f45d1cf-63163a6556bso4343733a12.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 04:58:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758887895; x=1759492695;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NhLI8ivMsRQl48fjRfQzFPxYaKc+TpjybY+SoQT+bt8=;
 b=AZ2RQBVnMezX6eAXiGLIBHf5k2UlIavzTCZepG5IekTy53Xt+JSYShVj6q78SBRu6g
 /alkHOktWyPh5MLUy4Kd0TWnxmR5DVSfybXtyATVIYBesw2vu3s0ZfRJtFKHvO+VPnLq
 DYN0sVO4oAtlvRNLhsHUSlqmAOSn+VJhY3sp8Fp1n6UbAxnMyn2v7uMIPshQv+AVjk3B
 snPmkS5lAept1gtDZg5VKplexuP4P+8YYzvyH0891SL+JSTsgtOQu6KsFbM8Bi/F9qGj
 5Ousxtej+L7mv3RyA0GsWC+UtAPtLPrC/snhfi84t5n+3PEuh6dGHfdRN22aNW9GS/Ke
 5MQg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVIFAEKALruGSex+rdUccJSVmgkCBd5lAS+ox+TvhoZ21pByBd3EEFjGVPnBPqKKic+WKc8bs2apRoO15bt8ps=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyVtczemF8RP4qU6j9SUB64sR7XlVFQzn8Ao+vZIcP0sW2fJ6+P
 tQU1c6mUKP9sFtK8KUufBnJE6nOGHrduLGjwJkgGqAuh7G5QjqC7m947EOfhkSJ+P/c=
X-Gm-Gg: ASbGncv1UUiJCEo/o35l1EbaWCPRw1ieQ0DGfgl0b208FdfMvqyYSEAGeJYwC5Tw35/
 IwmXVqYfKaISHTTV836Jpa8Qakk+4t//1QG2J1hPPBVLqMc6zj/XFR2ANExTHqOdxbGRPaRPhbL
 Vo/TR/hFiBX0TrgiKaIarqhevpO30WbTpu2ymrqBwXKJJ75crZ+MLXPmFNhVbLWvhmI4X+NjKN+
 8XAaK2hbHA3f27tedZgd3B1rnraWlmt+Zxqm3m1w8BhTxIEE14YMrG0QHOJcbjebTJsznsvE86y
 eHj4NeIzl0KSADjpbdJFCet2onyN+oBOyJSA0hhhpvSoXDqtfvONX5LYlpeZzXoEWy4WjHJE4Ht
 ldhI5F8ssHEsf1xYVpy5rBKw20hr2GREQIBF8
X-Google-Smtp-Source: AGHT+IE0bLaqZdtQDLm/EmSUUSAQEnVG+IpP4KDEPB31YjhAVBRnkD0HRDZydO+g+SV5KeYq1VqP2g==
X-Received: by 2002:a05:6402:68f:b0:632:930c:ed60 with SMTP id
 4fb4d7f45d1cf-6349fa95a69mr4361644a12.30.1758887895005; 
 Fri, 26 Sep 2025 04:58:15 -0700 (PDT)
Received: from cloudflare.com ([2a09:bac6:d677:2432::39b:a2])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-634a3af53basm2838609a12.41.2025.09.26.04.58.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Sep 2025 04:58:14 -0700 (PDT)
From: Jakub Sitnicki <jakub@cloudflare.com>
To: Jesper Dangaard Brouer <hawk@kernel.org>
Cc: Lorenzo Bianconi <lorenzo@kernel.org>,  Donald Hunter
 <donald.hunter@gmail.com>,  Jakub Kicinski <kuba@kernel.org>,  "David S.
 Miller" <davem@davemloft.net>,  Eric Dumazet <edumazet@google.com>,  Paolo
 Abeni <pabeni@redhat.com>,  Simon Horman <horms@kernel.org>,  Alexei
 Starovoitov <ast@kernel.org>,  Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,  Stanislav Fomichev
 <sdf@fomichev.me>,  Andrew Lunn <andrew+netdev@lunn.ch>,  Tony Nguyen
 <anthony.l.nguyen@intel.com>,  Przemek Kitszel
 <przemyslaw.kitszel@intel.com>,  Alexander Lobakin
 <aleksander.lobakin@intel.com>,  Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,  Eduard Zingerman
 <eddyz87@gmail.com>,  Song Liu <song@kernel.org>,  Yonghong Song
 <yonghong.song@linux.dev>,  KP Singh <kpsingh@kernel.org>,  Hao Luo
 <haoluo@google.com>,  Jiri Olsa <jolsa@kernel.org>,  Shuah Khan
 <shuah@kernel.org>,  Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 netdev@vger.kernel.org,  bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,  linux-kselftest@vger.kernel.org,
 kernel-team <kernel-team@cloudflare.com>
In-Reply-To: <fdb8a364-a12d-4c1f-9591-9dac3e27b321@kernel.org> (Jesper
 Dangaard Brouer's message of "Fri, 26 Sep 2025 13:45:29 +0200")
References: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
 <87bjmy508n.fsf@cloudflare.com> <aNUb2rB8QAJj-aUX@lore-desk>
 <87tt0q3ik9.fsf@cloudflare.com>
 <fdb8a364-a12d-4c1f-9591-9dac3e27b321@kernel.org>
Date: Fri, 26 Sep 2025 13:58:13 +0200
Message-ID: <87ldm12zoq.fsf@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1758887895; x=1759492695;
 darn=lists.osuosl.org; 
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=NhLI8ivMsRQl48fjRfQzFPxYaKc+TpjybY+SoQT+bt8=;
 b=anKp1acEeA4KfEwrGs8LNv72zJTiXtem9Yxe5Ug3upa3+HH4Xmoy1LVPqWtkR50Hkh
 Z9EWst5Q7/Ug3BlfaAEHQZd/IwlHHgZ7CoShXWKNAprqSn4ndJHeWcVXsAGerZIbXuEE
 J7yZCVqFy7FurNkOX/AgjfpLno7X25gk667vLfxoAhl3IPs9WD1yIAnp7SX+9jxXnUu/
 JXv/kO26dOLdOD7JkqaTR2g8qpNKLodOjKPRgFcHlmHahJXO+jq1QkJ1tOMs+/y4K3V+
 mV8RJGBWwlZ6cRdoxK/CDpHUEIqOKmqU0GNJzmdbuTESHACpbZTeq/piUCZm/gmMxleV
 Du8Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=anKp1acE
Subject: Re: [Intel-wired-lan] [PATCH RFC bpf-next v2 0/5] Add the the
 capability to load HW RX checsum in eBPF programs
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

On Fri, Sep 26, 2025 at 01:45 PM +02, Jesper Dangaard Brouer wrote:
> On 25/09/2025 12.58, Jakub Sitnicki wrote:
>> On Thu, Sep 25, 2025 at 12:39 PM +02, Lorenzo Bianconi wrote:
>>>> On Thu, Sep 25, 2025 at 11:30 AM +02, Lorenzo Bianconi wrote:
>>>>> Introduce bpf_xdp_metadata_rx_checksum() kfunc in order to load the HW
>>>>> RX cheksum results in the eBPF program binded to the NIC.
>>>>> Implement xmo_rx_checksum callback for veth and ice drivers.
>>>>
>>>> What are going to do with HW RX checksum once XDP prog can access it?
>>>
>>> I guess there are multiple use-cases for bpf_xdp_metadata_rx_checksum()
>>> kfunc. The first the I have in mind is when packets are received by an af_xdp
>>> application. In this case I think we currently do not have any way to check if
>>> the packet checksum is correct, right?
>>> I think Jesper has other use-cases in mind, I will let him comment
>>> here.
>> Can you share more details on what the AF_XDP application would that
>> info?
>
> Today the AF_XDP application need to verify the packet checksum, as it
> gets raw xdp_frame packets directly from hardware (no layer in-between
> checked this).  Getting the RX-checksum validation from hardware info
> will be very useful for AF_XDP, as it can avoid doing this in software.
>
>
>> Regarding the use cases that Jesper is trying to unlock, as things stand
>> we don't have a way, or an agreement on how to inject/propagate even the
>> already existing NIC hints back into the network stack.
>> 
>
> This patchset have its own merits and shouldn't be connected with my
> use-case of (optionally) including hardware offloads in the xdp_frame.
> Sure, I obviously also want this RX-checksum added, but this patchset is
> useful on it's own.
>
>> Hence my question - why do we want to expose another NIC hint to XDP
>> that we can't consume in any useful way yet?
>> 
>
> Well here *are* useful ways to use this RX-checksum info on its own.
> See my explanation of the DDoS use-case here[1] in other email.
>
> Cloudflare actually also have a concrete use-case for needing this.
> Our XDP based Unimog[2] load-balancer (and DDoS) encapsulate all
> packets when they are XDP_TX forwarded. The encap receiving NIC lacking
> inner-packet checksum validation make us loose this hardware offload.
> This would allow us to save some checksum validation or even just DDOS drop
> based on hardware checksum validation prior to encap (as in [1]).

Thanks for filling in the blanks, Jesper. That's the context that I was
missing.

Lorenzo, this motivaton seems worth including in the cover letter.
