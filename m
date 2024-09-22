Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6160097E0A9
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Sep 2024 11:08:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D5BA4064B;
	Sun, 22 Sep 2024 09:08:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eYEP08EJKqi1; Sun, 22 Sep 2024 09:08:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 357F640648
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726996110;
	bh=1VHLsfNfIqLcFZ23vrbINoBQfbbGCd6neqC+brlrwbA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bzzfxqK0lVzTy/qO4P0mewxnL/4rqlRsxraaAJLbxTp5ekh96kWvSJBdmvBnihbAP
	 DP/ZPsQsiQNssemp2eUnllsmIT0TUJ5E9ZdGNh56iIrhfH7PRKa8eXMYOnUl8fRVM8
	 +gyv23piwnwVBWtobgStg5Y9wezEGV/zjzO8cql3f4kg0w//2cYN9Leze1hJ321noU
	 F+3XBez0zgzAbBlQjo61JUBXJPpPvt9+VMBxhWtZwsEaGNUCmU06/Bow9O1z2/FU4I
	 rkU8GWH3G3SigCka1BuChTx8ofIJO5eN4/gyyjR+9Lj5gfEJnu56uqgKfXm67ALYl0
	 NqWaYUXsCwauw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 357F640648;
	Sun, 22 Sep 2024 09:08:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB8DB1BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Sep 2024 09:08:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C5F66400CF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Sep 2024 09:08:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jX1bVWlB5qBc for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Sep 2024 09:08:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com;
 envelope-from=lorenzo.bianconi@redhat.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A6C9E40022
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6C9E40022
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6C9E40022
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Sep 2024 09:08:25 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-684-90prjLEVMoWvvRgzaM0siA-1; Sun, 22 Sep 2024 05:08:22 -0400
X-MC-Unique: 90prjLEVMoWvvRgzaM0siA-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-42cb6f3c476so26496415e9.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Sep 2024 02:08:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726996101; x=1727600901;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1VHLsfNfIqLcFZ23vrbINoBQfbbGCd6neqC+brlrwbA=;
 b=aCaCC86mStybN0eNf4IMgxmmBt2NjAA9tLSVETBLabQCQt7LA8cA3gKT8m1YfdRoYF
 atckU5R31uUG34mmTk+f/hS6ckKjdRoEsg0ct3orTI6jTDUqAvIyoHE6Mr7M8O8fRC1F
 sWe2/I70W7cC9y/jVbwk/BEBoV3Ev5h3gvnAnak3x+s/vmEY+ipY3tWGbDiJUm/c1OR3
 RecdRyMFedONoACd+F49kHpnd5FWNDSQ5YNVKNoEojF63HWyryctLr9PrUek9u6TeopF
 9TKu9TNC7/EtHDUJycfr+25kM/91d22lruOPZFeRDSMEPFEY2wRb61Vy0xpA3TGITKzt
 tM7A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUu3W30iM2/rEzqjoJdAiH2IUYB0HSl3r6K/C1VGDix3XZW+SCjLghWihgjzo5ogCIgPXWnX7ADmm1SzivWhXM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxZdS3fo0/lpanJa5YYEoOxHgi3wQHaAOlVEW4D7mx7DVFv7dlS
 pSA/GTfAECzRtWMarAQ4Ayxovd22gNfzaEogavJL6CWy84F1W4K4SNPzQwzNjCGNchle+XQn52J
 nhgsSghb/3A78O6ZiXWQWb2E4L1x/W/cewOMWFWrv+Q3R3ZWJoLGrkIubekfc1qs6Kp4=
X-Received: by 2002:a05:6000:1375:b0:374:b675:6213 with SMTP id
 ffacd0b85a97d-37a4235a0d5mr4342826f8f.45.1726996100959; 
 Sun, 22 Sep 2024 02:08:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJ792wGCd1MWhimTqAIbkaAYTvIoSbeWFq1FnVJvLvLdsklUapLCXxGhVVkH7LlMYgJ6lmNA==
X-Received: by 2002:a05:6000:1375:b0:374:b675:6213 with SMTP id
 ffacd0b85a97d-37a4235a0d5mr4342805f8f.45.1726996100388; 
 Sun, 22 Sep 2024 02:08:20 -0700 (PDT)
Received: from localhost (net-93-146-37-148.cust.vodafonedsl.it.
 [93.146.37.148]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-378e73e80c5sm21507653f8f.39.2024.09.22.02.08.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Sep 2024 02:08:19 -0700 (PDT)
Date: Sun, 22 Sep 2024 11:08:18 +0200
From: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <Zu_eghZAEoYBkThM@lore-desk>
References: <cover.1726935917.git.lorenzo@kernel.org>
 <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="pFkQmBWfCOwm/HFL"
Content-Disposition: inline
In-Reply-To: <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1726996104;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1VHLsfNfIqLcFZ23vrbINoBQfbbGCd6neqC+brlrwbA=;
 b=YQ63Xc7ApFF5C3M21YDdmseUSmUM8BgfPq4E2fkltpqyvOBLrIXR7DsYVbhIeB3RKIi1rb
 Cy0bfQssmasWVT5lV3eF6z+Rh/Om0wtQ5n2txsd9j425QNqMptjwHyORtsG4LGYjW+8rre
 Ib5yO9Zv1u1phPK/PusW+A0MLws8vek=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=YQ63Xc7A
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
Cc: toke@toke.dk, mst@redhat.com, jasowang@redhat.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 przemyslaw.kitszel@intel.com, john.fastabend@gmail.com, sdf@fomichev.me,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 Lorenzo Bianconi <lorenzo@kernel.org>, hawk@kernel.org,
 alexandre.torgue@foss.st.com,
 Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@kernel.org>,
 netdev@vger.kernel.org, tariqt@nvidia.com, mcoquelin.stm32@gmail.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--pFkQmBWfCOwm/HFL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> From: Lorenzo Bianconi <lorenzo@kernel.org>
> Date: Sat, 21 Sep 2024 18:52:56 +0200
>=20
> > This series introduces the xdp_rx_meta struct in the xdp_buff/xdp_frame
>=20
> &xdp_buff is on the stack.
> &xdp_frame consumes headroom.

ack, right.

>=20
> IOW they're size-sensitive and putting metadata directly there might
> play bad; if not now, then later.

I was thinking to use a TLV approach for it (so a variable struct), but then
I decided to implement the simplest solution for the moment since, using TL=
V,
we would need to add parsing logic and waste at least 2B for each meta info
to store the type and length. Moreover, with XDP we have 256B available for
headeroom and for xdp_frame we would use the same cacheline of the current
implementation:

struct xdp_frame {
	void *                     data;                 /*     0     8 */
	u16                        len;                  /*     8     2 */
	u16                        headroom;             /*    10     2 */
	u32                        metasize;             /*    12     4 */
	struct xdp_mem_info        mem;                  /*    16     8 */
	struct net_device *        dev_rx;               /*    24     8 */
	u32                        frame_sz;             /*    32     4 */
	u32                        flags;                /*    36     4 */
	struct xdp_rx_meta         rx_meta;              /*    40    12 */

	/* size: 56, cachelines: 1, members: 9 */
	/* padding: 4 */
	/* last cacheline: 56 bytes */
};

Anyway I do not have a strong opinion about it and I am fine to covert the
current implementation to a TLV one if we agree on it.

>=20
> Our idea (me + Toke) was as follows:
>=20
> - new BPF kfunc to build generic meta. If called, the driver builds a
>   generic meta with hash, csum etc., in the data_meta area.
>   Yes, this also consumes headroom, but only when the corresponding func
>   is called. Introducing new fields like you're doing will consume it
>   unconditionally;

ack, I am currently reusing the kfuncs added by Stanislav but I agree it is
better to add a new one to store the rx hw hints info, I will work on it.

> - when &xdp_frame gets converted to sk_buff, the function checks whether
>   data_meta contains a generic structure filled with hints.
>=20
> We also thought about &skb_shared_info, but it's also size-sensitive as
> it consumes tailroom.

for rx_timestamp we can reuse the field available in the skb_shared_info.

Regards,
Lorenzo

>=20
> > one as a container to store the already supported xdp rx hw hints (rx_h=
ash
> > and rx_vlan, rx_timestamp will be stored in skb_shared_info area) when =
the
> > eBPF program running on the nic performs XDP_REDIRECT. Doing so, we are=
 able
> > to set the skb metadata converting the xdp_buff/xdp_frame to a skb.
>=20
> Thanks,
> Olek
>=20

--pFkQmBWfCOwm/HFL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZu/eggAKCRA6cBh0uS2t
rIdLAP0R/dGPCXgseg1Iy65MrQgRuHzAgV36/bG2Weac6f4WwQEA8KXcwzorG0oU
nZx4Agc2TmA8ZFiQyO3aR9f63sZWrAA=
=hB8l
-----END PGP SIGNATURE-----

--pFkQmBWfCOwm/HFL--

