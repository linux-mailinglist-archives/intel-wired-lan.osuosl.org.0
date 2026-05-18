Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNIzKecMC2pN/gQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2026 14:58:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9989C56D301
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2026 14:58:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3ABD857EF;
	Mon, 18 May 2026 12:58:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qY11AE2ycnGc; Mon, 18 May 2026 12:58:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5E4685801
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779109091;
	bh=uXmZ6DA2CSOKR9KLF5LwpbaR1zZis6lRfYv3mLA+dnU=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rvCZ/ehlTPk1mNEgN3ZQe/YeCKqAUYcu9vmcADmI3+XhvGSk2xPODSFqdwlE69kPH
	 CzCS0AZtxpN9Uon2nn4Tup0MJ9Kf14h1jvaaO8cef/4jQF9KliBrWw6mnbkwWFPXdt
	 v76Mx50dtkIgDrYU7dAJYoAwOxcXZq2KUq2n7E9EocB0BQbKmGdkPriVlLdfbfXKfr
	 YXP6mWsdost1x0kwdPKJWxg3PlhbcdSBg++7c6/fW1AeqA1K098LWF8XutwSokQSRf
	 t/KzTRBsaTHrEvJs9oVLdMmiTCb38O1ctgh6EC0FzAH1yw7lVvo+9yD2macW8DYB8q
	 cusG+aiDz3zbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5E4685801;
	Mon, 18 May 2026 12:58:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E6F32265
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 12:58:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D85406117D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 12:58:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nlMX8KtKrSOi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 May 2026 12:58:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::e29; helo=mail-vs1-xe29.google.com;
 envelope-from=lorenz@monogon.tech; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BAE7D61176
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAE7D61176
Received: from mail-vs1-xe29.google.com (mail-vs1-xe29.google.com
 [IPv6:2607:f8b0:4864:20::e29])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BAE7D61176
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 12:58:08 +0000 (UTC)
Received: by mail-vs1-xe29.google.com with SMTP id
 ada2fe7eead31-63124a80693so728055137.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 05:58:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779109087; cv=none;
 d=google.com; s=arc-20240605;
 b=GX/DDWGovbOAdDgyFO0rxRTwMgyG9Pbh8dj/mOp0mPO8thuhJazefK9dZRjXMbfbpi
 usn0VTod6a/UJp7H5DecJ78ew/YRCd/dNdjE/hnIX8hE7Ia3lqihI65z9rSaupPJeXUX
 GmcNAbRkoXOKyaBZRB1AcTLa3O+INS11+/L/pKyZo9dDknHhKrXBPrQt6Lhu3vaTO+Ho
 RrUnK78c1nppMM0dmHrg6t3PPlUUrdFGlH1EUa2ryycD0C1xR3VkDVmYFZ8XPpqsB6GZ
 4BxrSyg61LWqlSGZhF1GLYCh0FIhvzJGndyjRGlgBPKGtki9Ax/vOBSsNHincg4vWBgy
 BS1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=uXmZ6DA2CSOKR9KLF5LwpbaR1zZis6lRfYv3mLA+dnU=;
 fh=0+c0/NLjZTltkLq+JKB9hfJ9iSQ2JtVXuMo793p5AV8=;
 b=Mo9DL9tM892qWONmnEwqk7JtNbNhT3PTw90O8kflV+n+JXC/Vt2FqN9CT9Uiw0q9s6
 pVGH2yfQiKAY/VlslR3S+3qgPjBoetYxQrWaH5xQTNZqiDW3HmXJ3xTlF6ij30RQBdoD
 d6xw6qG9wTdc57boMrlIPYK0aMreTHUEkaKVsM1IAHmjrBAZ+Ez0FsN/4FX6zW/CC/6X
 SQVmhbsZeyygHTp1rmTbaPAIeJ1U/mR0P3+AgB+eHOkoxaawPt6RUCojqCMhMLc48Bpy
 uqsjMX2fT7VnewtBEdHIyLNeA5j5WA9iU8LmaQjRglOb78nqPsVNepn3eVuZqmGSmhc9
 D2Xg==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779109087; x=1779713887;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uXmZ6DA2CSOKR9KLF5LwpbaR1zZis6lRfYv3mLA+dnU=;
 b=bxuY0Rh9xMVciXoe3PclhVrcKp0RhD4JTd9rTver/59Skp9cUFUB91vgS2eblklBzZ
 RWY1K5m8i9v7LFEqYand+TwJP7QyRK7Ao4T7cTwHVVmJrClnSjoANFLaF/CEqbxOnS0C
 9NFEkSV/DOxASWjdPuDjY7dMmrfZTbfamq4hx4JNZdeXRg/69KQVdnyzywYF75U+7zKN
 RheWhOd0EGwmX4JWsTQNmVWJDLGbUGFdf16sDqDtQCz7kBdAnlzcFyOzqKUOqeWyWJkN
 fRSYq/8YN6+1uMGNAHMVvwBAWRVQ5ZhIXhZ7Y1UMg4Clp+Lxy5mvKDld+w+ZHao0l300
 10gQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ9+L0amfH8kXnrURs/JLBQM0DnDqoYZ3AT5jCvoShDeBcIWleUArCiziMta3w5gOsbzg0bQW+jGetTgoG0OvdQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyTUAIg2Kqo0x5YhVs6QH7adOLgLrBoHgtRb6ZqG1Mkrfd1WuHo
 VBBARjEuJX06Ud4zuJP6NRbaCr5a99qJA7un1lR28isJiKOuBOPy4dJkuX/bnozuuLufev+4OoI
 CJmxqAedVXP4cxZ1BID2jr0ut+z0iGO+xt6gxVI9k8g==
X-Gm-Gg: Acq92OE0i+2DDksFO8Eh1x6vFMCF4H7O0hUXhp7TekUAf039eD+JYbsBJKxU0M9hzVV
 HgptyDZjKIPZA+zI/lilLygyCw4mQSMTw26M+VZokaOGENypJTlpmyhl8yFerDhaRL9l8Vi0RVs
 detbVeqBCPlbHDsIdNjlMUOHAVKwA0KnbgSTQM/hSHdabHWeVIWpjTfl7UtD0YK41rxuZ7dlrA9
 Qxz8vh6bnhApXrle2K79TYQ8MCM3ThKFycMRXmBrddmtocUKZJKJodARCXT86edEzWMOQ6RaT+o
 Fb8ZaENnnbMIrzbGBoxh8VjCNdTp5Nbsv82R
X-Received: by 2002:a05:6102:6047:b0:631:4cd8:b6aa with SMTP id
 ada2fe7eead31-63a3d93b6edmr6378714137.13.1779109087067; Mon, 18 May 2026
 05:58:07 -0700 (PDT)
MIME-Version: 1.0
References: <20260512152658.2818805-1-lorenz@monogon.tech>
 <9c49ecf7-1d35-4b03-8a71-9d724562594d@intel.com>
In-Reply-To: <9c49ecf7-1d35-4b03-8a71-9d724562594d@intel.com>
From: Lorenz Brun <lorenz@monogon.tech>
Date: Mon, 18 May 2026 14:57:55 +0200
X-Gm-Features: AVHnY4KmAFH7SWcYKpSxBgfiVCiUuxFv1ES63sSXsCXW1j6V3gBDDffnv_CRq5o
Message-ID: <CAJMi0nQN+XB14Z81=W2reEGnax526-MB=Armx+f_miWMWUmRFw@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, 
 Stanislav Fomichev <sdf@fomichev.me>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, stable@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monogon-tech.20251104.gappssmtp.com; s=20251104; t=1779109087; x=1779713887;
 darn=lists.osuosl.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=uXmZ6DA2CSOKR9KLF5LwpbaR1zZis6lRfYv3mLA+dnU=;
 b=TRxEs7G+VPgBKMAM5eahueWgjWIRJXeup6a6Pv5GuQroj93chGSUrUUOUtndkupg23
 +IZkHl9BKkEs8PXBYDOaciGCupRYrYNjkS/9oJHvCGBu7Kg8BBFGN7dQuMRxhrfSLJwJ
 +HwFSYlYDx2zDcf3O/1yDkGjNPB6v5Dhknbi6N+w9w8YEIrmoXVLfDbx5WEUsfL8FySp
 Nc78QOhGvbHwcyLbkW9L5e8l/nIwlsPt3VA+YBn2j6x1IrzcVLwO3IzlIWko+tnB692V
 /n0Ow4mYu6ehoBAoHHBDi5OhD669bA6WthqFRuZe19AEPa9fAm42jzVxuoPw/bAuisOJ
 N82A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=monogon.tech
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=monogon-tech.20251104.gappssmtp.com
 header.i=@monogon-tech.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=TRxEs7G+
Subject: Re: [Intel-wired-lan] [PATCH] xsk: switch xdp_build_skb_from_zc()
 to napi_alloc_skb()
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
X-Rspamd-Queue-Id: 9989C56D301
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[monogon.tech : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:maciej.fijalkowski@intel.com,m:stable@vger.kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[lorenz@monogon.tech,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org,lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenz@monogon.tech,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

On Wed, 13 May 2026 at 17:21, Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> From: Lorenz Brun <lorenz@monogon.tech>
> Date: Tue, 12 May 2026 17:26:56 +0200
>
> > xdp_build_skb_from_zc() allocated xdp->frame_sz bytes from the per-cpu
> > system_page_pool and built the skb head with napi_build_skb(). The
> > latter places skb_shared_info at the tail of the buffer, but the
> > helper sized the allocation as if the whole frame_sz were usable for
> > data. Whenever the packet plus reserved headroom approached frame_sz,
> > the head memcpy overran shinfo with packet content, corrupting
> > ->flags (SKBFL_ZEROCOPY_ENABLE) and ->nr_frags, which then drove
> > skb_copy_ubufs() off the end of frags[] on the RX path:
> >
> >   UBSAN: array-index-out-of-bounds in include/linux/skbuff.h:2541
> >   index 113 is out of range for type 'skb_frag_t [17]'
> >    skb_copy_ubufs+0x7da/0x960
> >    ip_local_deliver_finish+0xcd/0x110
> >    ice_napi_poll+0xe4/0x2a0 [ice]
> >
> > The overrun bytes come from the packet, so an on-wire sender can
> > corrupt kernel memory remotely whenever the XDP program returns
> > XDP_PASS.
> >
> > Rather than patch the sizing math, switch to the pattern used by other
> > in-tree AF_XDP zero-copy drivers like mlx5 and i40e which use
> > napi_alloc_skb() sized to the actual packet plus skb_put_data().
> > This sizes the head exactly for the data being copied, drops the
> > system_page_pool local_lock from this path, and removes the
> > structural mismatch between frame_sz and the skb head buffer. Frags
> > are allocated with alloc_page() per frag, matching the other drivers.
>
> I used napi_build_skb() + system page_pool to enable PP recycling
> improving XSk XDP_PASS performance a lot.
> Are you sure there's no other way to approach this?
>
> napi_alloc_skb() used in other drivers works, but it's sorta old
> approach which is way slower.
>
> System page_pools always allocate a full page, why can it create an skb
> prone to overruns?
>
> >
> > Fixes: 560d958c6c68 ("xsk: add generic XSk &xdp_buff -> skb conversion")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Lorenz Brun <lorenz@monogon.tech>
> Thanks,
> Olek

Hi Olek

I looked at the code again. While your approach is indeed faster, it
is only faster for traffic bypassing AF_XDP, which is generally not
that relevant for performance.

More critically, it currently corrupts kernel memory and panics the
kernel very quickly when running with frame-size set to 2048, 1500
MTU, and passing received packets. To be honest, I'm not familiar
enough with the XSK subsystem to know exactly what specific sizing
assumption was violated here. By comparison, the approach taken by the
other drivers is a lot more obviously correct and works perfectly.

If you want to preserve the current approach, I'm perfectly happy with
that. However, I don't feel comfortable sending patches for it, as I
don't understand exactly what the expectations of the various data
blocks are.

AFAIK, reproduction should be fairly easy. You just need to run a TCP
connection to the receiving node (which gets passed to the kernel)
while receiving some UDP packets via AF_XDP at the same time. As
mentioned, it also needs frame-size 2048 to reproduce quickly.

I checked if I could get you an easy reproducer, but xdp-tools is
quite limited. If you want to keep your approach and can't reproduce
the panic yourself, let me know and I can see if I can synthesize a
minimal reproducer.

Regards,
Lorenz
