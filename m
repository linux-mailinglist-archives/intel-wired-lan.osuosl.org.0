Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C872AD1E888
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jan 2026 12:50:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7678B44B8D;
	Wed, 14 Jan 2026 11:50:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VFeDtY_kl-fq; Wed, 14 Jan 2026 11:50:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D694244942
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768391407;
	bh=q8uX03BZl5AjAdWG8Y9fY1QPxmLXeoAmQaAzEsbqKH8=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vT+a9zLcyohHZsOBEfDPxx4f7qFFul1zNbsY5dKdrdDalEjeZSAXrOjNWwu/qXTzE
	 DPH9rq8mEYp0SAytTZtaPCuBXNdBwVPonIyKpJ+KwbB8iL3STzXNTqI1I1qbZlFKnB
	 LVAqxQwKOtORJz7ciYMoq9dMpy5bgE9e9oRf0wTpg8cDRwiGuTWCLJw1qofm22bWU2
	 K+UITQyE/xw/wpltBZzH+XOtpUhYlLr76Bv2a9gk8QQ28b1QQ7SShh538THNW4nw4D
	 iSUJ6Q7h2bOV6JXHYUHqbEvmvrxn+rlBJ1rdKl7fIWQjVS7/ed+SBu8vKLIGwrVgJZ
	 R4wkbyHZFIrEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D694244942;
	Wed, 14 Jan 2026 11:50:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 97C5E231
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 11:50:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7888D43906
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 11:50:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DKEMsDLTWWLB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jan 2026 11:50:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=toke@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6C0F542FC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C0F542FC7
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6C0F542FC7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 11:50:05 +0000 (UTC)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-65-j_KKVtt6OquvJMarWqAIDw-1; Wed, 14 Jan 2026 06:50:02 -0500
X-MC-Unique: j_KKVtt6OquvJMarWqAIDw-1
X-Mimecast-MFC-AGG-ID: j_KKVtt6OquvJMarWqAIDw_1768391401
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-b7fe37056e1so893472466b.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 03:50:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768391401; x=1768996201;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=q8uX03BZl5AjAdWG8Y9fY1QPxmLXeoAmQaAzEsbqKH8=;
 b=IvbpcZTghokV8QpK3oEf5YxWug8xJQq1H3QchR3Rmcsxo8fZGyIRJnXsYbIvFQqlfW
 Ft2zrhv6nCbOmWVLCfeA2ltLzrnu58m8lYyY4VSWX2x2M2sjXHjaDqcqmpUbIQmIVsXX
 3lHzc7ZGMXlpndzS+Z6ppGE3VH3S0HYRY/M6qAeMnUBa9xi9a6b8Olglc+edfpJSTb+5
 mwIR0h0IBEWYx4BnOpaUgEt6xEjhKrhFncYOSEBI/W3dN+cCiCzuO1WCftoG27usH6QM
 jBlas4ZSvEqfD9bSZ44+CMcgFpRGPXqoXvh2v/p92EkwA1Da3GMlfoC2S852ifuvBsOt
 S3VA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVfUqXIir/WMRGEaIhT9uSmHZEzmabbr8hvJsR8ZsurBrB3DrXVyOH31jKabpyo1umchzauTMRv9ycH+YSZQME=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyzNKPUV91EI273LF4MIZ7c4X5V15CDq50MK6W41ePnGSVtkABs
 WgWmgTKpjEGF1sXFALyVZi7XnfN945gmSQJH4cjLE2Q2crxiSreBvD7UGDjc530vP/8aEL9NEaf
 C+p9F1VR2CWkaoBXeeeKwxJLFws2KSZJKq9cZBqrG5vGnMgHEO8i7R/wiBv4O4ug6Pfagbj8=
X-Gm-Gg: AY/fxX4M+cuJvZj+x7mVuntOOosusP2ljKIYDLnACMMJB22wF8zlqriaRNpWM9oyO4F
 cdfvCrs4Ilh6ty5WAJNwVjE1r67oBgDCxI3g5m5lVUTTT34Bt/9c5F1Iu+Te8pfaHgbdzhrTx6A
 Fmw3ovFGNAzJkwtnLDg3WVwLsHWny7JhBVHQlaLQ22aqrc/XGgKhtpx75O0StCfSkwXPTrVfy9W
 7MD68xhmqFZk0G+IGO6weG6cBv8fUrEEBn/BD7sb8Bbpu/8F+HQwHtprRUnrHzxb2OKnvWltC/4
 EZJL/yhnnoEl+HmprV8dzkZThsGLLeMna9warTLqACZoGQqAZQW9O2809jBkJcKAeVz+S/NNhKX
 fx3kvgcGq1Clapb5dhTVVwX5DhZXvgFyMUA==
X-Received: by 2002:a17:907:94c4:b0:b87:2d0f:d417 with SMTP id
 a640c23a62f3a-b8760fe0baamr179682666b.14.1768391401381; 
 Wed, 14 Jan 2026 03:50:01 -0800 (PST)
X-Received: by 2002:a17:907:94c4:b0:b87:2d0f:d417 with SMTP id
 a640c23a62f3a-b8760fe0baamr179679266b.14.1768391400849; 
 Wed, 14 Jan 2026 03:50:00 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b86ebfd007fsm1294372966b.31.2026.01.14.03.50.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jan 2026 03:50:00 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id CA9A8408B76; Wed, 14 Jan 2026 12:49:57 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Jakub Sitnicki <jakub@cloudflare.com>, Jesper Dangaard Brouer
 <hawk@kernel.org>, Alexei Starovoitov <ast@kernel.org>, Jakub Kicinski
 <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>, Michael
 Chan <michael.chan@broadcom.com>, Pavan Chebbi
 <pavan.chebbi@broadcom.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Tony
 Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Saeed Mahameed <saeedm@nvidia.com>, Leon
 Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>, Mark Bloch
 <mbloch@nvidia.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, kernel-team@cloudflare.com, Jesse Brandeburg
 <jbrandeburg@cloudflare.com>, Willem Ferguson <wferguson@cloudflare.com>,
 Arthur Fabre <arthur@arthurfabre.com>
In-Reply-To: <87wm1luusg.fsf@cloudflare.com>
References: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
 <20260112190856.3ff91f8d@kernel.org>
 <36deb505-1c82-4339-bb44-f72f9eacb0ac@redhat.com>
 <bd29d196-5854-4a0c-a78c-e4869a59b91f@kernel.org>
 <87wm1luusg.fsf@cloudflare.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 14 Jan 2026 12:49:57 +0100
Message-ID: <878qe01kii.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: zNROokL-mUW1x42FKY8Q0md_e8yX349SQ7dmzWmIEqs_1768391401
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768391403;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=q8uX03BZl5AjAdWG8Y9fY1QPxmLXeoAmQaAzEsbqKH8=;
 b=BpGURl9H+VWGUzBzXZpdz2X2LK3mv94Yn3K6+MssSKUSnswnwM0QiVH0G9DcaFSqB2rtPO
 fUt1s+S7sRz84vqvsfGivHzDBVx+9djiboP6oQl0gSUxmL+aI0v+S/ESZWI93uHWumilWJ
 Zkt7xbNuCRvFrlEx+nr7g6tW4iveZq0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=BpGURl9H
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/10] Call skb_metadata_set
 when skb->data points past metadata
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

Jakub Sitnicki via Intel-wired-lan <intel-wired-lan@osuosl.org> writes:

> On Tue, Jan 13, 2026 at 07:52 PM +01, Jesper Dangaard Brouer wrote:
>> *BUT* this patchset isn't doing that. To me it looks like a cleanup
>> patchset that simply makes it consistent when skb_metadata_set() called.
>> Selling it as a pre-requirement for doing copy later seems fishy.
>  
> Fair point on the framing. The interface cleanup is useful on its own -
> I should have presented it that way rather than tying it to future work.
>
>> Instead of blindly copying XDP data_meta area into a single SKB
>> extension.  What if we make it the responsibility of the TC-ingress BPF-
>> hook to understand the data_meta format and via (kfunc) helpers
>> transfer/create the SKB extension that it deems relevant.
>> Would this be an acceptable approach that makes it easier to propagate
>> metadata deeper in netstack?
>
> I think you and Jakub are actually proposing the same thing.
>  
> If we can access a buffer tied to an skb extension from BPF, this could
> act as skb-local storage and solves the problem (with some operational
> overhead to set up TC on ingress).
>  
> I'd also like to get Alexei's take on this. We had a discussion before
> about not wanting to maintain two different storage areas for skb
> metadata.
>  
> That was one of two reasons why we abandoned Arthur's patches and why I
> tried to make the existing headroom-backed metadata area work.
>  
> But perhaps I misunderstood the earlier discussion. Alexei's point may
> have been that we don't want another *headroom-backed* metadata area
> accessible from XDP, because we already have that.
>  
> Looks like we have two options on the table:
>  
> Option A) Headroom-backed metadata
>   - Use existing skb metadata area
>   - Patch skb_push/pull call sites to preserve it
>  
> Option B) Extension-backed metadata
>   - Store metadata in skb extension from BPF
>   - TC BPF copies/extracts what it needs from headroom-metadata
>  
> Or is there an Option C I'm missing?

Not sure if it's really an option C, but would it be possible to
consolidate them using verifier tricks? I.e., the data_meta field in the
__sk_buff struct is really a virtual pointer that the verifier rewrites
to loading an actual pointer from struct bpf_skb_data_end in skb->cb. So
in principle this could be loaded from an skb extension instead with the
BPF programs being none the wiser.

There's the additional wrinkle that the end of the data_meta pointer is
compared to the 'data' start pointer to check for overflow, which
wouldn't work anymore. Not sure if there's a way to make the verifier
rewrite those checks in a compatible way, or if this is even a path we
want to go down. But it would be a pretty neat way to make the whole
thing transparent and backwards compatible, I think :)

Other than that, I like the extention-backed metadata idea!

-Toke

