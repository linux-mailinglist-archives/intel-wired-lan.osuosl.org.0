Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9873B879196
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Mar 2024 11:02:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F709818C0;
	Tue, 12 Mar 2024 10:01:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1R2ziQ5JgyUC; Tue, 12 Mar 2024 10:01:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EFAB18186B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710237718;
	bh=K9vUiBbTWtmHXmSKNhHZl6zxhsHGRW6GQ88VFm4qdzA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VXIJJIPHIYTu/ftN/qnJc7pD/q4qleICv+PgQanVCDyAoVKlckgNjbcUAHThp44iT
	 IEWWb6yZdiR37eCNYReEJ45M59Q3x4ObTpwWUFgPHYF8kvKOjBncweRBFL5kQ8mmYm
	 WiLoF9LeqDVKGGKNBso3bW5rHIppz6cY6RVKp1yNnti3dLZLGEN+msbjaqeynGl4cc
	 FrU3ihuU213T2L4iLzDy1V9ja1qDBPxXDAjUScyDG4I3CyINj1AvwlOc7o2jxum4jc
	 SVE8E9/AjPXZEVXxpy/vluK08Y0osaKXLnUSEreEu8bFZfqpdiHpJX5UuImMUsvAcg
	 pBQONzkFVrbTg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EFAB18186B;
	Tue, 12 Mar 2024 10:01:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 857CC1BF286
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 10:01:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 70CEF8144C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 10:01:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9vXyDupVMYlp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Mar 2024 10:01:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 658A581443
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 658A581443
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 658A581443
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 10:01:54 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-160-jCsbhSSjODG9V_VgC1k1lw-1; Tue, 12 Mar 2024 06:01:51 -0400
X-MC-Unique: jCsbhSSjODG9V_VgC1k1lw-1
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-56827399088so919722a12.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 03:01:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710237710; x=1710842510;
 h=mime-version:user-agent:content-transfer-encoding:autocrypt
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YAJHhP3n6I2K3l6DHHJqd7XuLcnDmh4Em6R7NQKSbxo=;
 b=CiTv3IcoVYm9DDI+WTFreP/sVay5arA+Juo5G5Ricd2RoD2ezkSGMd+hbSEPrUS2Yg
 z8wzV8/KJPdFQ75TxP0qufShT20OP6nRV5lFZbH+ZnBFpPmdf5JltFeIye2l3yCAPPos
 nQCQcrYkFnOTAC6JBUgaJi51L9mi4V1cWR8IV+OiViJPHUnL29gEPdwzOfgzevG0DOhz
 gFZ3Z/Igsn+OUUNRAMOJsL7nVRvjOjp2mI0ZrXVwWMjt6vK1ZA1YZCP20UPyGj4+sz3q
 jNk0LcKOj10fuXSOVH+qD4QAWyFjKD9siFAb1gcugpY/lrGW4KJz/M3EyBoA4e6LlWVw
 Mk8g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXkyN/qdDwqzDjsVM1urihPePYuUYX4NRPpdK+6bbeqDK+jn2WJlP+3jSWEcuvDfbIzYkOYslYBghWY/ARV1mWUPY5A37wBNNisHgqGRCRGLg==
X-Gm-Message-State: AOJu0YwBzNdmJVPebPfX+kqaEpfqDG7rHvc5e9mHfLrwKOwkRAaTbBLV
 HMMmoUl0h2SAtjE7e/nY2C4HUSyLdNcKrTvKZ3HjJTZ0Gaivq1W88LfQNmagVtgpsmykY6iXvjK
 9jxN3OLxVGBWRs2Qn/bbPq7w6i1bzfNweKZT8JWF6WxqW1vCthLGMPwZI1tUH7cWk9xU=
X-Received: by 2002:a17:907:775a:b0:a45:bde4:c131 with SMTP id
 kx26-20020a170907775a00b00a45bde4c131mr5526280ejc.6.1710237710285; 
 Tue, 12 Mar 2024 03:01:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEHErV8A05Z61briuwjU0WpruwpyYfkia1exaT/QQBx5H5fXFFtxKuNe8QZhJ44luZFFr2a3Q==
X-Received: by 2002:a17:907:775a:b0:a45:bde4:c131 with SMTP id
 kx26-20020a170907775a00b00a45bde4c131mr5526251ejc.6.1710237709931; 
 Tue, 12 Mar 2024 03:01:49 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-226-128.dyn.eolo.it.
 [146.241.226.128]) by smtp.gmail.com with ESMTPSA id
 b24-20020a170906491800b00a464104e758sm549790ejq.85.2024.03.12.03.01.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Mar 2024 03:01:49 -0700 (PDT)
Message-ID: <7169b33e1e4487370a530fb60d97dc096a24acfc.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Erwan Velu <erwanaliasr1@gmail.com>
Date: Tue, 12 Mar 2024 11:01:48 +0100
In-Reply-To: <20240312094259.770554-1-e.velu@criteo.com>
References: <20240312094259.770554-1-e.velu@criteo.com>
Autocrypt: addr=pabeni@redhat.com; prefer-encrypt=mutual;
 keydata=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
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1710237713;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=K9vUiBbTWtmHXmSKNhHZl6zxhsHGRW6GQ88VFm4qdzA=;
 b=EyRK/6P/RZQui5aYoNV7wH75YNbt7+cc8v3O0whfwOgnr0BanXWjp97aqtRCR5RqkPHH3i
 8prLEQEFvl59Flh9bxqf9NwMpkKBeW4fm1eaVCfrrVZMp3jk7gqs3nOp3tzM/qzn17au/R
 Zujaxf3ZBtjAsIKvh6HCh6AKW0mBvgo=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=EyRK/6P/
Subject: Re: [Intel-wired-lan] [PATCH v3] i40e: Prevent setting MTU if
 greater than MFS
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
Cc: Erwan Velu <e.velu@criteo.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On Tue, 2024-03-12 at 10:42 +0100, Erwan Velu wrote:
> Commit 6871a7de705b6f6a4046f0d19da9bcd689c3bc8e from iPXE project is

Please use the checkpatch-friendly commit reference: <12char hash>
("<title>")

> setting the MFS to 0x600 =3D 1536.
>=20
> At boot time the i40e driver complains about it with
> the following message but continues.
>=20
> =09MFS for port 1 has been set below the default: 600
>=20
> If the MTU size is increased, the driver accept it but large packets will=
 not
> be processed by the firmware generating tx_errors. The issue is pretty
> silent for users. i.e doing TCP in such context will generates lots of
> retransmissions until the proper window size (below 1500) will be used.
>=20
> To fix this case, it would have been ideal to increase the MFS,
> via i40e_aqc_opc_set_mac_config, incoming patch will take care of it.
>=20
> At least, this commit prevents setting up an MTU greater than the current=
 MFS.
> It will avoid being in the position of having an MTU set to 9000 on the
> netdev with a firmware refusing packets larger than 1536.

This looks like a legit fix that should target the 'net' tree, @Tony:
do you agree?=20

If so, Erwan, please include a suitable fixes tag in the next revision.
Please include into the subj prefix a suitable target tree. I think
this should go first via the intel tree for testing, so 'iwl-net'
should fit.

In any case please respect the 24h grace period when posting on netdev:

https://elixir.bootlin.com/linux/latest/source/Documentation/process/mainta=
iner-netdev.rst#L399

Cheers,

Paolo

