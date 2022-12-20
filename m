Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6883651D25
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Dec 2022 10:20:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 680E14013C;
	Tue, 20 Dec 2022 09:20:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 680E14013C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671528053;
	bh=+dsJGjSyUOYcT9DHigziOkFhVkC3wSjYS52d16ocdlQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FFeEjanNggKTch0dvDBom4IjshUTFU+DkxIHtFnRRGaHmVphb0O/I5rSyQ6mb9GDy
	 QMYKHeth1Qkyy9iDAmTj+IKvohhzUveikJ/JmVweTCLaIuNbJDNsa7zAO4JmzLQ4IC
	 Fw3l8NJtMsxqKd4v8TRhIgNHzOtUXxmV01/E9dx8bXloOykyUW6SKec0fbB0fNdoXF
	 7yuVEbL99Ji5FI0GQ9eXfTdnJ+OFQcnQmUt7iJlqP4KwclPDXeTQ0uAX3gyTLki+ks
	 e0nnbygxl5rr5OWcdor3aRn7nszEnIkyXUXcg0MHfnTyuV3bbO41Rm/jmKQ40Q5u+l
	 9rEBsiwipHBOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cT6q5cFVcilk; Tue, 20 Dec 2022 09:20:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 41ACF40134;
	Tue, 20 Dec 2022 09:20:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41ACF40134
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D65681BF421
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 09:20:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AFDE640134
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 09:20:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFDE640134
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ovj24LSXsQvb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 09:20:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70DEF400D9
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 70DEF400D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 09:20:42 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-631-XX-UxJ1NNzWAlBf4GECc5w-1; Tue, 20 Dec 2022 04:20:37 -0500
X-MC-Unique: XX-UxJ1NNzWAlBf4GECc5w-1
Received: by mail-wm1-f72.google.com with SMTP id
 bg25-20020a05600c3c9900b003cf3ed7e27bso6289328wmb.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 01:20:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ujmnLoyVJXLiCxEsBRx4BmSv6UWqVaJvSMF8bKF07KM=;
 b=NIeukQ7/E0NMAeQdaGnNDX72r4qpvu/yoiBFLwRynk2rTGFdxKKaBTWbPWc7DxOh6f
 zWeXPrbsHtuKTQVgTIaXIFCV3HShR60VkZMEdvUwB/qNYsqFNhiU/xY1mXeaz0/Co1fw
 9d30l0lsYfpfLqrIa7zkrDP2UXeeRW1okncH/MJmBmsFsqPwTlxdHMyYg1aiq6hDdxHC
 9aNXpVAus7gvqYoPTAnXjseIz0TBNt6KvKIkqkWwb0el3rpE8iJEGxFLyhnuaEd8WPJI
 Hz79+CAIEx3lkT43wvboHRUm+8emXr0oj4T0qGz+HGYG3Mt4dYVythpZRsZTszIHDPLG
 cpYA==
X-Gm-Message-State: AFqh2kpQyEe5K/6PY/HpVAtjt2567gk8QJdsJFjMqbTdlkzUV85FOYD1
 jxgI2i6F78HPrpZ1rW2m6iqTdNcJJPXG/s/ArRNW7pEpytbDnV/XxVi7z8JQB54t0EuMxrte0LG
 nXAq2WrbQqzV/FmOj0xmPLcDrX3B/kg==
X-Received: by 2002:a05:6000:883:b0:236:70ab:4bbb with SMTP id
 ca3-20020a056000088300b0023670ab4bbbmr14407711wrb.1.1671528036275; 
 Tue, 20 Dec 2022 01:20:36 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsivxyPNqa4ow7Gezj3o5cxRM8MurV1PJ518/If0yw9qu5gJmc6Iixr5Kz6J+CWQZYsy58Uaw==
X-Received: by 2002:a05:6000:883:b0:236:70ab:4bbb with SMTP id
 ca3-20020a056000088300b0023670ab4bbbmr14407667wrb.1.1671528035950; 
 Tue, 20 Dec 2022 01:20:35 -0800 (PST)
Received: from localhost (net-188-216-77-84.cust.vodafonedsl.it.
 [188.216.77.84]) by smtp.gmail.com with ESMTPSA id
 ck5-20020a5d5e85000000b00257795ffcc8sm12288226wrb.73.2022.12.20.01.20.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Dec 2022 01:20:34 -0800 (PST)
Date: Tue, 20 Dec 2022 10:20:32 +0100
From: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Y6F+YJSkI19m/kMv@lore-desk>
References: <cover.1671462950.git.lorenzo@kernel.org>
 <43c340d440d8a87396198b301c5ffbf5ab56f304.1671462950.git.lorenzo@kernel.org>
 <20221219171321.7a67002b@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20221219171321.7a67002b@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1671528041;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ujmnLoyVJXLiCxEsBRx4BmSv6UWqVaJvSMF8bKF07KM=;
 b=CxuFmB+h66cP3Iy9GqPotuBXQEXy4eY6+6JYGrNV7btDGlpuOTA4K3I+ZXszNwAfHENADb
 zyDofUTEPxX7MsaNQ4we9+1VRGNsawCVBt1dXtcFXVIrk6U6aPuOPBMuuwfh1QYzADvi6w
 pHliB1Xe86LIVUAmHx6l8xPoXMEgQHc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=CxuFmB+h
Subject: Re: [Intel-wired-lan] [RFC bpf-next 2/8] net: introduce XDP
 features flag
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 pabeni@redhat.com, Lorenzo Bianconi <lorenzo@kernel.org>,
 grygorii.strashko@ti.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com,
 leon@kernel.org, netdev@vger.kernel.org, toke@redhat.com,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: multipart/mixed; boundary="===============4780419319838906862=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============4780419319838906862==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GGYTRaTKhvn+rvn6"
Content-Disposition: inline


--GGYTRaTKhvn+rvn6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Mon, 19 Dec 2022 16:41:31 +0100 Lorenzo Bianconi wrote:
> > +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > +Netdev XDP features
> > +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > +
> > + * XDP FEATURES FLAGS
> > +
> > +Following netdev xdp features flags can be retrieved over route netlink
> > +interface (compact form) - the same way as netdev feature flags.
>=20
> How likely is it that I'll be able to convince you that cramming more
> stuff in rtnl is a bad idea? I can convert this for you to a YAML-
> -compatible genetlink family for you in a jiffy, just say yes :S
>=20
> rtnl is hard to parse, and already overloaded with random stuff.
> And the messages are enormous.

Hi Jakub,

I am fine to use YAML for this, but I will let Marek comment since he is the
original author of this patch.

>=20
> > +These features flags are read only and cannot be change at runtime.
> > +
> > +*  XDP_ABORTED
> > +
> > +This feature informs if netdev supports xdp aborted action.
> > +
> > +*  XDP_DROP
> > +
> > +This feature informs if netdev supports xdp drop action.
> > +
> > +*  XDP_PASS
> > +
> > +This feature informs if netdev supports xdp pass action.
> > +
> > +*  XDP_TX
> > +
> > +This feature informs if netdev supports xdp tx action.
> > +
> > +*  XDP_REDIRECT
> > +
> > +This feature informs if netdev supports xdp redirect action.
> > +It assumes the all beforehand mentioned flags are enabled.
> > +
> > +*  XDP_SOCK_ZEROCOPY
> > +
> > +This feature informs if netdev driver supports xdp zero copy.
> > +It assumes the all beforehand mentioned flags are enabled.
>=20
> Why is this "assumption" worth documenting?

I guess we can remove it.
@Marek: any comment?

>=20
> > +*  XDP_HW_OFFLOAD
> > +
> > +This feature informs if netdev driver supports xdp hw oflloading.
> > +
> > +*  XDP_TX_LOCK
> > +
> > +This feature informs if netdev ndo_xdp_xmit function requires locking.
>=20
> Why is it relevant to the user?

Probably not, I kept it since it was in Marek's original patch.
@Marek: any comment?

>=20
> > +*  XDP_REDIRECT_TARGET
> > +
> > +This feature informs if netdev implements ndo_xdp_xmit callback.
>=20
> Does it make sense to rename XDP_REDIRECT -> XDP_REDIRECT_SOURCE then?

yes, naming is always hard :)

>=20
> > +*  XDP_FRAG_RX
> > +
> > +This feature informs if netdev implements non-linear xdp buff support =
in
> > +the driver napi callback.
>=20
> Who's the target audience? Maybe FRAG is not the best name?
> Scatter-gather or multi-buf may be more widely understood.

ack, fine. I will rename it in the formal series.

Regards,
Lorenzo

>=20
> > +*  XDP_FRAG_TARGET
> > +
> > +This feature informs if netdev implements non-linear xdp buff support =
in
> > +ndo_xdp_xmit callback. XDP_FRAG_TARGET requires XDP_REDIRECT_TARGET is=
 properly
> > +supported.
>=20

--GGYTRaTKhvn+rvn6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY6F+YAAKCRA6cBh0uS2t
rDNnAP9RoSpPR93+gszTrBsVMLSSp5AzTlLLx7YHUTxLsyMxxgD+IN8mb+rWF7B+
XNQZPdvh0IgYgn1cKAUKey2wbHrjrAw=
=5s7n
-----END PGP SIGNATURE-----

--GGYTRaTKhvn+rvn6--


--===============4780419319838906862==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4780419319838906862==--

