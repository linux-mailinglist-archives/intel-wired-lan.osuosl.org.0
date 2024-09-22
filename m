Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA0C97E0AF
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Sep 2024 11:18:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49693402F4;
	Sun, 22 Sep 2024 09:18:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8bWtRqBDFRyT; Sun, 22 Sep 2024 09:18:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6A784057B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726996680;
	bh=NXAx1lyb+OHUcXTVhf/rtzN8Qm/38mHOyytwY0XpYps=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i4ruFXiW7XO8c16VZlVL1vbjfrPzu7nB4dqFtPNBwFENpBVS2XrC7E5dkxtLTGE+J
	 y+ZGXPuzv9icBRsmE3QIBrb3gkAwth8Qa83vNdN9T9bXrVwnNmzzafQoCPX/H4wA7e
	 3qStPiqWh586Dd0EouffchvbBOjNJOl2kj4lob5xX42tZdidIXs4Y2zUcz+p6dVLwJ
	 SQMP3Jyl7ONKGdfAarp+eHia+g9S+Iu2JgKW6WRVqPs8OoktuwH9L8XIDQcwwAz4Qx
	 0kFf8eQAf5SO1fqEEKYxm2+cdWzuxln3+7rr+TRDEf5VWiQ8wpcNs47ji1VfdJC6Qz
	 nj+s6Te/m1xlw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6A784057B;
	Sun, 22 Sep 2024 09:17:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B5A61BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Sep 2024 09:17:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 260E04025B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Sep 2024 09:17:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f8TArJrsZTpK for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Sep 2024 09:17:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com;
 envelope-from=lorenzo.bianconi@redhat.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 88E1140022
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88E1140022
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 88E1140022
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Sep 2024 09:17:56 +0000 (UTC)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-63-NC7cxT1qNfG0-flo-08N4A-1; Sun, 22 Sep 2024 05:17:53 -0400
X-MC-Unique: NC7cxT1qNfG0-flo-08N4A-1
Received: by mail-ed1-f69.google.com with SMTP id
 4fb4d7f45d1cf-5c2504ab265so1479023a12.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Sep 2024 02:17:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726996672; x=1727601472;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NXAx1lyb+OHUcXTVhf/rtzN8Qm/38mHOyytwY0XpYps=;
 b=qrwVGprifHteoEnYwBr6Dr1oMgp0jxpKZ3ygISR4rVx4VCkiQB08fQ07Dp56jeqnd8
 u0gajoZ1n5hnwNtHir8Ui62rkfVbOFCL1faSSSNoU/CLK0c2xa+V62Fv1uUkdEnXWKKH
 Ve6qQhlpZNR36GwbAqfNztoa3OahQGxas3WBB86JXgxTXMKeKcD18AtlpotMMClXiqUK
 W3+PQ63W/g9wFba7aSkcmpUGi4qR/JuCteBN47xGe3VlrXNlbE25GLHwWn9QSEY+dYre
 /0jTCSiZtR4HhjCSRXjxDPHZ98vofZ9k5YpQq+EAQxktFZ3qvgKaFXzSbx9inaU/49CC
 1msw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXVEb4ZJf7UQ2sfFYNjkfKbp/uCHvZfPezcvZLY1IfRaTylp22TB46niZ6eDAbvfaUYNIx3jbufxxtkro5AT+4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy7OYOjW4OcVqdmiOWm/V2q5LKVyXOX2/E8YkP2XVw2Pe2gj/T5
 jmX4zGd/RtoMNnZXUzjp7ZRyvLqD2EmS8LupbK0u4oTtV1MT377xt6YglFpDOAEVK8YotBPsQAx
 HWCUMP7Qvbnx9g6Ir/5tQ+wo/SViWAS8hN2frk356qmKHoNov1xF3yWPhL6o4zJb9EYg=
X-Received: by 2002:a50:8dc5:0:b0:5c4:64e6:55a4 with SMTP id
 4fb4d7f45d1cf-5c464e659b7mr8744671a12.12.1726996672230; 
 Sun, 22 Sep 2024 02:17:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEf9TMYT2IhPElc8dV5tR8Nn2xYHdfg3DTnHOp+UvWeEV68rpjCdJBZeyRvvMen4+MhNa6mbg==
X-Received: by 2002:a50:8dc5:0:b0:5c4:64e6:55a4 with SMTP id
 4fb4d7f45d1cf-5c464e659b7mr8744624a12.12.1726996671718; 
 Sun, 22 Sep 2024 02:17:51 -0700 (PDT)
Received: from localhost (net-93-146-37-148.cust.vodafonedsl.it.
 [93.146.37.148]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a9061328bb0sm1060048066b.193.2024.09.22.02.17.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Sep 2024 02:17:51 -0700 (PDT)
Date: Sun, 22 Sep 2024 11:17:50 +0200
From: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
To: Jesper Dangaard Brouer <hawk@kernel.org>
Message-ID: <Zu_gvkXe4RYjJXtq@lore-desk>
References: <cover.1726935917.git.lorenzo@kernel.org>
 <1f53cd74-6c1e-4a1c-838b-4acc8c5e22c1@intel.com>
 <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="inD87LbY/R9ETazn"
Content-Disposition: inline
In-Reply-To: <09657be6-b5e2-4b5a-96b6-d34174aadd0a@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1726996675;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=NXAx1lyb+OHUcXTVhf/rtzN8Qm/38mHOyytwY0XpYps=;
 b=PVplGF+8jddLvH0PnKjLEjQLy86tJVtZJs0dApWa6/9gLwH+6FkxqVrsHE53XacbWoWfRY
 zBZvssdS/KfxgKglEUqzh3M9g1nBfW5gFcj6Nn/uPwm2VDzjb67qQMJuTuSCDJxk/LU7yy
 mIW5hgAAwt1uC/m+pemRJAnHBwMNCLM=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=PVplGF+8
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
 kernel-team <kernel-team@cloudflare.com>, przemyslaw.kitszel@intel.com,
 john.fastabend@gmail.com, sdf@fomichev.me, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, pabeni@redhat.com, Lorenzo Bianconi <lorenzo@kernel.org>,
 Yan Zhai <yan@cloudflare.com>, alexandre.torgue@foss.st.com,
 Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@kernel.org>,
 netdev@vger.kernel.org, tariqt@nvidia.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>, mcoquelin.stm32@gmail.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--inD87LbY/R9ETazn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

>=20
>=20
> On 21/09/2024 22.17, Alexander Lobakin wrote:
> > From: Lorenzo Bianconi <lorenzo@kernel.org>
> > Date: Sat, 21 Sep 2024 18:52:56 +0200
> >=20
> > > This series introduces the xdp_rx_meta struct in the xdp_buff/xdp_fra=
me
> >=20
> > &xdp_buff is on the stack.
> > &xdp_frame consumes headroom.
> >=20
> > IOW they're size-sensitive and putting metadata directly there might
> > play bad; if not now, then later.
> >=20
> > Our idea (me + Toke) was as follows:
> >=20
> > - new BPF kfunc to build generic meta. If called, the driver builds a
> >    generic meta with hash, csum etc., in the data_meta area.
>=20
> I do agree that it should be the XDP prog (via a new BPF kfunc) that
> decide if xdp_frame should be updated to contain a generic meta struct.
> *BUT* I think we should use the xdp_frame area, and not the
> xdp->data_meta area.

ack, I will add a new kfunc for it.

>=20
> A details is that I think this kfunc should write data directly into
> xdp_frame area, even then we are only operating on the xdp_buff, as we
> do have access to the area xdp_frame will be created in.

this would avoid to copy it when we convert from xdp_buff to xdp_frame, nic=
e :)

>=20
>=20
> When using data_meta area, then netstack encap/decap needs to move the
> data_meta area (extra cycles).  The xdp_frame area (live in top) don't
> have this issue.
>=20
> It is easier to allow xdp_frame area to survive longer together with the
> SKB. Today we "release" this xdp_frame area to be used by SKB for extra
> headroom (see xdp_scrub_frame).  I can imagine that we can move SKB
> fields to this area, and reduce the size of the SKB alloc. (This then
> becomes the mini-SKB we discussed a couple of years ago).
>=20
>=20
> >    Yes, this also consumes headroom, but only when the corresponding fu=
nc
> >    is called. Introducing new fields like you're doing will consume it
> >    unconditionally;
>=20
> We agree on the kfunc call marks area as consumed/in-use.  We can extend
> xdp_frame statically like Lorenzo does (with struct xdp_rx_meta), but
> xdp_frame->flags can be used for marking this area as used or not.

the only downside with respect to a TLV approach would be to consume all the
xdp_rx_meta as soon as we set a single xdp rx hw hint in it, right?
The upside is it is easier and it requires less instructions.

>=20
>=20
> > - when &xdp_frame gets converted to sk_buff, the function checks whether
> >    data_meta contains a generic structure filled with hints.
> >=20
>=20
> Agree, but take data from xdp_frame->xdp_rx_meta.
>=20
> When XDP returns XDP_PASS, then I also want to see this data applied to
> the SKB. In patchset[1] Yan called this xdp_frame_fixup_skb_offloading()
> and xdp_buff_fixup_skb_offloading(). (Perhaps "fixup" isn't the right
> term, "apply" is perhaps better).  Having this generic-name allow us to
> extend with newer offloads, and eventually move members out of SKB.
>=20
> We called it "fixup", because our use-case is that our XDP load-balancer
> (Unimog) XDP_TX bounce packets with in GRE header encap, and on the
> receiving NIC (due to encap) we lost the HW hash/csum, which we want to
> transfer from the original NIC, decap in XDP and apply the original HW
> hash/csum via this "fixup" call.

I already set skb metadata converting xdp_frame into a skb in
__xdp_build_skb_from_frame() but I can collect all this logic in a single
routine.

Regards,
Lorenzo

>=20
> --Jesper
>=20
> [1] https://lore.kernel.org/all/cover.1718919473.git.yan@cloudflare.com/
>=20
> > We also thought about &skb_shared_info, but it's also size-sensitive as
> > it consumes tailroom.
> >=20
> > > one as a container to store the already supported xdp rx hw hints (rx=
_hash
> > > and rx_vlan, rx_timestamp will be stored in skb_shared_info area) whe=
n the
> > > eBPF program running on the nic performs XDP_REDIRECT. Doing so, we a=
re able
> > > to set the skb metadata converting the xdp_buff/xdp_frame to a skb.
> >=20
> > Thanks,
> > Olek
>=20

--inD87LbY/R9ETazn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZu/gvgAKCRA6cBh0uS2t
rBMGAQCny4oFrmk5dJWIQ0C1+/9UKb9+b/klnvNkYgQWGI7uwgD/Qn+xWmGdaRXY
s4/PVtYfv9dsYkKnnnco+8sDesjq9Ao=
=rOzF
-----END PGP SIGNATURE-----

--inD87LbY/R9ETazn--

