Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BB3987215
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Sep 2024 12:55:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2068041E3D;
	Thu, 26 Sep 2024 10:54:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0V4pE2smbaRE; Thu, 26 Sep 2024 10:54:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7C33423BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727348090;
	bh=nMAah5V6Hs369gZJo6DRHJeeBm1IDseuQxhG1iZY8ro=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X1DFcbwipiAq65/LUtBADLD0a4orNjAtlvzHIQSLF8ndx3zFJHQHnI/JaGvexl3ie
	 8LchRfSStjoY0IDvwZ7RkiPatM2TeHkWipyekwogrn7wW11/BP/D994WdpnZ7joF6M
	 dj84OHhHln/GsxTejA7NjgiLm3tgNjhOTTLZEaddIgK+8cFDqW+a8zc7Ebvfkd/U0A
	 z289id2fxWiIBv+g0mJXwUpwHYc3LXdj+n1ybAN2fqGhakEWNGXhkAzKkUZ8JpBhrt
	 sYirEyRo61iSaNmow2Y19n692vIfQiqc+mJfYNZAUgfAQp/WTo5wMiGtz52+SIDdIv
	 0Havlhgoqv8cA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7C33423BD;
	Thu, 26 Sep 2024 10:54:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B5C881BF35D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 10:54:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A3CE98455F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 10:54:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1H0IqlLFtWZH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Sep 2024 10:54:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=toke@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AC06B8455A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC06B8455A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AC06B8455A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 10:54:47 +0000 (UTC)
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-128-ZNelMSPQMdmmkp8CH5sm3g-1; Thu, 26 Sep 2024 06:54:45 -0400
X-MC-Unique: ZNelMSPQMdmmkp8CH5sm3g-1
Received: by mail-lf1-f69.google.com with SMTP id
 2adb3069b0e04-5365b801741so910902e87.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Sep 2024 03:54:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727348083; x=1727952883;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nMAah5V6Hs369gZJo6DRHJeeBm1IDseuQxhG1iZY8ro=;
 b=Edei3k+7Ud3s7wepyYgAQBfYh/5C5n3t/TOsjcMt0gT+Wuuc8mi1tPcLaXsAB1mtuK
 u+wa9Bewhd+C3VM2WlDeNJOUAaR1o290WPTF6Vz7uVbXIYgKt5IzuIa+eYzcVapUsfbP
 tMoV5ZaRclq/oqk/1FkLrTSCZSsHaZyzsaOOmGIiLOjntoS5GZy0MrxN1RR/i27AZH2v
 hTaROxZYwq167dpKcVwNqVyqFwEtMJ4tOYhvVsKkT21qw0onVxsTl0wb1B/manQCACTq
 TQmWOa1K0qTaOjKT2yMyuq4o+M1BDxhlfvoYEv5dkkoYtjqaXrRB8++hkrvuO41Hy7Xz
 0p1w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUe1d0q/sZJtGDVqmPPlgLLJM6SKcekVcM2pi/+umXuvJUFyoGPIj73uQKTDgm350fG31KmVRuwIkN1rfUhbrY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxlzTuK5gAzbYaU4AmC8rtKJGdAigw85NJuPXKx45B2qZrIJuYh
 kTXUreCcEkNSf05ULK1tyNW+LOiuCrH5oA0Hy3UbriulT2S2T16F5APwEPocfoquhpV4FvFb7wb
 sU4RNx46rODXlAshLiaD3RD0HagwAdbjm+nB979Gwfi45rIUh0FU1Mn00Wu6F4/pL1Ws=
X-Received: by 2002:a05:6512:12c3:b0:536:7362:5912 with SMTP id
 2adb3069b0e04-53877530ceemr5556742e87.30.1727348083438; 
 Thu, 26 Sep 2024 03:54:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPs6D/lrxvYcK40WRUY7e6VMRqpb6o1HwhSdRJSeV7mA2JYuu9QVeRQM49+yc5lijfGXDHEQ==
X-Received: by 2002:a05:6512:12c3:b0:536:7362:5912 with SMTP id
 2adb3069b0e04-53877530ceemr5556685e87.30.1727348082765; 
 Thu, 26 Sep 2024 03:54:42 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a93a5b82fbasm192615366b.103.2024.09.26.03.54.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2024 03:54:41 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id E1DD0157FC51; Thu, 26 Sep 2024 12:54:40 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
In-Reply-To: <ZvA6hIl6XWJ4UEJW@lore-desk>
References: <cover.1726935917.git.lorenzo@kernel.org>
 <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
 <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org>
 <Zu_gvkXe4RYjJXtq@lore-desk> <87ldzkndqk.fsf@toke.dk>
 <ZvA6hIl6XWJ4UEJW@lore-desk>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 26 Sep 2024 12:54:40 +0200
Message-ID: <874j62u1lb.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1727348086;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nMAah5V6Hs369gZJo6DRHJeeBm1IDseuQxhG1iZY8ro=;
 b=b1d66e2x+yPex92dqM6cdyh7uzyIOt7e0y6WeU9MdqTunmI36kjHcUk8bvDnkZfLr60Bce
 oAG2+R0y21Hy2eJeXkreECQUWnPw4KbtjxIeyUE0xMhTLiftasuTFEiQWCSxerzmLfI/3k
 TZjt8yx4Psnz5fjHn+movE6VPftq+tU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=b1d66e2x
Subject: Re: [Intel-wired-lan] [RFC bpf-next 0/4] Add XDP rx hw hints
 support performing XDP_REDIRECT
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
Cc: mst@redhat.com, jasowang@redhat.com, ast@kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, Yan Zhai <yan@cloudflare.com>,
 Jakub Sitnicki <jakub@cloudflare.com>, daniel@iogearbox.net,
 kernel-team <kernel-team@cloudflare.com>, przemyslaw.kitszel@intel.com,
 john.fastabend@gmail.com, sdf@fomichev.me, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, pabeni@redhat.com, Lorenzo Bianconi <lorenzo@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>, alexandre.torgue@foss.st.com,
 Arthur Fabre <afabre@cloudflare.com>, netdev@vger.kernel.org,
 tariqt@nvidia.com, Alexander Lobakin <aleksander.lobakin@intel.com>,
 mcoquelin.stm32@gmail.com, bpf@vger.kernel.org, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Lorenzo Bianconi <lorenzo.bianconi@redhat.com> writes:

>> I'm hinting at some complications here (with the EFAULT return) that
>> needs to be resolved: there is no guarantee that a given packet will be
>> in sync with the current status of the registered metadata, so we need
>> explicit checks for this. If metadata entries are de-registered again
>> this also means dealing with holes and/or reshuffling the metadata
>> layout to reuse the released space (incidentally, this is the one place
>> where a TLV format would have advantages).
>
> I like this approach but it seems to me more suitable for 'sw' metadata
> (this is main Arthur and Jakub use case iiuc) where the userspace would
> enable/disable these functionalities system-wide.
> Regarding device hw metadata (e.g. checksum offload) I can see some issues
> since on a system we can have multiple NICs with different capabilities.
> If we consider current codebase, stmmac driver supports only rx timestamp,
> while mlx5 supports all of them. In a theoretical system with these two
> NICs, since pkt_metadata_registry is global system-wide, we will end-up
> with quite a lot of holes for the stmmac, right? (I am not sure if this
> case is relevant or not). In other words, we will end-up with a fixed
> struct for device rx hw metadata (like xdp_rx_meta). So I am wondering
> if we really need all this complexity for xdp rx hw metadata?

Well, the "holes" will be there anyway (in your static struct approach).
They would just correspond to parts of the "struct xdp_rx_meta" being
unset.

What the "userspace can turn off the fields system wide" would
accomplish is to *avoid* the holes if you know that you will never need
them. E.g., say a system administrator know that they have no networks
that use (offloaded) VLANs. They could then disable the vlan offload
field system-wide, and thus reclaim the four bytes taken up by the
"vlan" member of struct xdp_rx_meta, freeing that up for use by
application metadata.

However, it may well be that the complexity of allowing fields to be
turned off is not worth the gains. At least as long as there are only
the couple of HW metadata fields that we have currently. Having the
flexibility to change our minds later would be good, though, which is
mostly a matter of making the API exposed to BPF and/or userspace
flexible enough to allow us to move things around in memory in the
future. Which was basically my thought with the API I sketched out in
the previous email. I.e., you could go:

ret = bpf_get_packet_metadata_field(pkt, METADATA_ID_HW_HASH,
                                    &my_hash_vlaue, sizeof(u32))


...and the METADATA_ID_HW_HASH would be a constant defined by the
kernel, for which the bpf_get_packet_metadata_field() kfunc just has a
hardcoded lookup into struct xdp_rx_meta. And then, if we decide to move
the field in the future, we just change the kfunc implementation, with
no impact to the BPF programs calling it.

> Maybe we can start with a simple approach for xdp rx hw metadata
> putting the struct in xdp_frame as suggested by Jesper and covering
> the most common use-cases. We can then integrate this approach with
> Arthur/Jakub's solution without introducing any backward compatibility
> issue since these field are not visible to userspace.

Yes, this is basically the gist of my suggestion (as I hopefully managed
to clarify above): Expose the fields via an API that is flexible enough
that we can move things around should the need arise, *and* which can
co-exist with the user-defined application metadata.

-Toke

