Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1D3C3C3DF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 06 Nov 2025 17:05:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C526B414B9;
	Thu,  6 Nov 2025 16:05:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xYuXsfaGVBD0; Thu,  6 Nov 2025 16:05:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22370414A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762445148;
	bh=iV/5B6HmWeJyKHU1V2F6K7SftQouTs2fm0Ng6BYBU90=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6vFi0+7HMEGtkN4gBM0iLgggKYgKNN21D2AhvSZf9wNXR9jp6AGyDEJ2kz6FmE/Wr
	 j2c7to+9GTD/YD7PZrD54TOFU0QQjg83xXQKgtPzDb2QYfUFZGlK8pqdEkJkmk7k0W
	 6HsL7+CFIFBynLZUO8pUWr08rRR7E7IFr2An5Aw9M1k3x7Hlm2B7dbCUASFUYgc9vi
	 rpJrc5d3A04Z1y/+7dOdsWJ37Z1XYK637n8Fs4WwdBhbrNvv+0j/WWSFOMvAPGJyD+
	 bijTwuTQoIhfxR2sD+AG/JFXekXpf0HY4s8IfWbpDjiARaGLON5NDYO3Cq8Zetn+7p
	 9JVo7VCv9AtUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22370414A2;
	Thu,  6 Nov 2025 16:05:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 41A15462
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 16:05:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2871F414A0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 16:05:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1D4K0v1-VfCq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Nov 2025 16:05:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52c; helo=mail-pg1-x52c.google.com;
 envelope-from=allyheev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7641F4149E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7641F4149E
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7641F4149E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 16:05:45 +0000 (UTC)
Received: by mail-pg1-x52c.google.com with SMTP id
 41be03b00d2f7-ba599137cf7so1013052a12.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Nov 2025 08:05:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762445144; x=1763049944;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=iV/5B6HmWeJyKHU1V2F6K7SftQouTs2fm0Ng6BYBU90=;
 b=kWknV4KUjJhtrxUchQIHH85BzwG8R2hanmshyiufo47DimAwXPQLo311seLa/gcjTp
 P/AuSIBUXKgeavkdcMKKvjgMumhccR14WNnB+vCD37TTKbcvZODNz6YfiAlbVI1DlgEe
 f9AyfC6CjzNx0g7Jmz9SANntADrm9Mp6V8LyZBLFbv63XJCGYxxVTAq5WkzJRBwU9m+O
 bd5WNuOltaG4tYuXWYD1OcXw6ZrFdkjl3XDxhBnBqJNzkNfzdIjOoa0UOXhAV8T5BD0F
 Y/p7BGKODqXHRDsdG57fWfXoYt87YIKP97k5rdrCeOC+og6inqHeEUaPhm9Eu+BLUWkq
 P0fA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVERLzlWBokRMN/Aywr9eWwfaJNFyU89CQMAGqEvY3PGLXhEnPWhMS1h5JSl8WBOL35TH/9pb49Ss8iKVUPOAM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzyo9BIFkWw2Rq6NkBA3LuBqHUI80txbSGZv6d89T/8Ifo2wrt8
 33B/RVEtQ/0WS4vs2aVx+7AMZafew1w26kJ/q5jVkSUt6HPEeUO4ENbz
X-Gm-Gg: ASbGncsmb49n/+2tx9gp0FN1VnJ+kVU3kppNKtRxBOGvs7sNGjp9yPH4Pz/o7nvSPH5
 hB3vB2rY40hP0wBUtmxSdMJ8CLZmXQpJCbz4WeVLNK0C1Km2cqKDU807nyb+X3vpudriaQ1UkE8
 5djSNT/ycgLJyadXkmJcPNxemxrsfKEDwJ4KpNJiU6vSFaZdFcCW8QzHg+q1j4Uvwh+p0FIstEy
 ko0I/lTXM1AUat1UsnHbd43+CYRHjXxDQ1nOzK+/cjBg9AUiNtAABar13pSIlee/QApFVtOvQWs
 6SFq3ln58d1qOZ6fD+VyBbqNPP74E5kOpPULGbjqcPvDYnO4v8QiGm/DKT1sLTLM2HrHTUHQ59I
 CnHDugBaK6sFu2SKpk5ljiP75WrzYkxNlxugui2A1B5eMq/6LUMpcLAPooTMtIf/wE8bb173hNT
 lPqe4sfS2dMayKaflXT76CVlI0yWu0TExWzO/hqgiNMAhCozwwGCHJvWC8Y4Tfjit5fNIHNw==
X-Google-Smtp-Source: AGHT+IEaemxYcUh/ny7vD1Nzf+YP+qnuQ8bT2tLL0qWHMb/e7UfQ0N9sVifekzAIwlTS01QOSneeow==
X-Received: by 2002:a17:902:c943:b0:295:21ac:352b with SMTP id
 d9443c01a7336-297c03ac555mr252575ad.15.1762445144171; 
 Thu, 06 Nov 2025 08:05:44 -0800 (PST)
Received: from ?IPv6:2401:4900:88f4:f6c4:12e8:f050:511d:31f3?
 ([2401:4900:88f4:f6c4:12e8:f050:511d:31f3])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-296509680fesm32629925ad.18.2025.11.06.08.05.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Nov 2025 08:05:43 -0800 (PST)
Message-ID: <00748f83a8ae688b7063f36844e38073d29b5e19.camel@gmail.com>
From: ally heev <allyheev@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel	
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>,  Paolo Abeni <pabeni@redhat.com>, "K. Y.
 Srinivasan" <kys@microsoft.com>, Haiyang Zhang	 <haiyangz@microsoft.com>,
 Wei Liu <wei.liu@kernel.org>, Dexuan Cui	 <decui@microsoft.com>, Aleksandr
 Loktionov <aleksandr.loktionov@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hyperv@vger.kernel.org, Dan Carpenter	
 <dan.carpenter@linaro.org>
Date: Thu, 06 Nov 2025 21:35:21 +0530
In-Reply-To: <575bfdb1-8fc4-4147-8af7-33c40e619b66@intel.com>
References: <20251106-aheev-uninitialized-free-attr-net-ethernet-v3-1-ef2220f4f476@gmail.com>
 <575bfdb1-8fc4-4147-8af7-33c40e619b66@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+deb13u1 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762445144; x=1763049944; darn=lists.osuosl.org;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=iV/5B6HmWeJyKHU1V2F6K7SftQouTs2fm0Ng6BYBU90=;
 b=BE3FsbjdXOEowp6uFlDMB2uflvMhijVguWQkuxxh/sH9oSdwGJwtn4d25MIdh3ZCmP
 Aiy7UzTXeYjvm9FNrhy42a0oCSvc9AkqsKr8NbjIhkZUUXyC7F0N6KyUiVOM1bI2aX8C
 53IPFE501hrgx8KPtQ+J8WUImjP7EgQhk291M5KgtJAvHQGV4qmkDO3bbF6JrudP6fzP
 i06MVm3b/04nqYaSkEwTnHAvq7Rc+1AWQFrQlgSZbiWkFxRYJYMTh/bSZPd3KRcg0a3M
 uw8GktZH1A951ku4bvnBYWx9mOpnX6DcA/VKQ1K1L4jQrfkc5goVlaZAk2nqsmQm4j3U
 Sh9g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=BE3Fsbjd
Subject: Re: [Intel-wired-lan] [PATCH v3] net: ethernet: fix uninitialized
 pointers with free attribute
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

On Thu, 2025-11-06 at 15:07 +0100, Alexander Lobakin wrote:
[..]
> >=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/et=
hernet/intel/ice/ice_flow.c
> > index 6d5c939dc8a515c252cd2b77d155b69fa264ee92..3590dacf3ee57879b3809d7=
15e40bb290e40c4aa 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_flow.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_flow.c
> > @@ -1573,12 +1573,13 @@ ice_flow_set_parser_prof(struct ice_hw *hw, u16=
 dest_vsi, u16 fdir_vsi,
> >  			 struct ice_parser_profile *prof, enum ice_block blk)
> >  {
> >  	u64 id =3D find_first_bit(prof->ptypes, ICE_FLOW_PTYPE_MAX);
> > -	struct ice_flow_prof_params *params __free(kfree);
> >  	u8 fv_words =3D hw->blk[blk].es.fvw;
> >  	int status;
> >  	int i, idx;
> > =20
> > -	params =3D kzalloc(sizeof(*params), GFP_KERNEL);
> > +	struct ice_flow_prof_params *params __free(kfree) =3D
> > +		kzalloc(sizeof(*params), GFP_KERNEL);
>=20
> Please don't do it that way. It's not C++ with RAII and
> declare-where-you-use.
> Just leave the variable declarations where they are, but initialize them
> with `=3D NULL`.
>=20
> Variable declarations must be in one block and sorted from the longest
> to the shortest.
>=20
> But most important, I'm not even sure how you could trigger an
> "undefined behaviour" here. Both here and below the variable tagged with
> `__free` is initialized right after the declaration block, before any
> return. So how to trigger an UB here?

It doesn't occur here. But, many maintainers/developers consider it a
bad practice because if the function returns before initialization or
use of `goto` can cause such behaviors.

Here though, the definitions are still at the top right? Maybe I could
just sort them

>=20
> > +
> >  	if (!params)
> >  		return -ENOMEM;
> > =20
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/=
net/ethernet/intel/idpf/idpf_virtchnl.c
> > index cbb5fa30f5a0ec778c1ee30470da3ca21cc1af24..368138715cd55cd1dadc686=
931cdda51c7a5130d 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > @@ -1012,7 +1012,6 @@ static int idpf_send_get_caps_msg(struct idpf_ada=
pter *adapter)
> >   */
> >  static int idpf_send_get_lan_memory_regions(struct idpf_adapter *adapt=
er)
> >  {
> > -	struct virtchnl2_get_lan_memory_regions *rcvd_regions __free(kfree);
> >  	struct idpf_vc_xn_params xn_params =3D {
> >  		.vc_op =3D VIRTCHNL2_OP_GET_LAN_MEMORY_REGIONS,
> >  		.recv_buf.iov_len =3D IDPF_CTLQ_MAX_BUF_LEN,
> > @@ -1023,7 +1022,9 @@ static int idpf_send_get_lan_memory_regions(struc=
t idpf_adapter *adapter)
> >  	ssize_t reply_sz;
> >  	int err =3D 0;
> > =20
> > -	rcvd_regions =3D kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
> > +	struct virtchnl2_get_lan_memory_regions *rcvd_regions __free(kfree) =
=3D
> > +		kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
> > +
> >  	if (!rcvd_regions)
> >  		return -ENOMEM;
>=20
> Same here, @rcvd_regions is initialized before the very first return, no
> idea how one can provoke an UB here.
>=20
> > =20
> >=20
> > ---
> > base-commit: c9cfc122f03711a5124b4aafab3211cf4d35a2ac
> > change-id: 20251105-aheev-uninitialized-free-attr-net-ethernet-7d106e4a=
b3f7
> >=20
> > Best regards,
>=20
> Thanks,
> Olek

Regards,
Ally
