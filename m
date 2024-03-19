Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C90C987FBA3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 11:17:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6664740B84;
	Tue, 19 Mar 2024 10:17:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UhCTTG__zRdI; Tue, 19 Mar 2024 10:17:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7D2240B76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710843451;
	bh=+vYQuE4cmp5aqOHp2teOxW5ChzVfrnEdCOORJu5LYOE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=93slG2Y340bsK0jTDLR9nVNUUAE9MzdGmr2gPSHSQRiX9ipdphCZkFzzrwjnU6fub
	 YYUNyaiy/gLx4su1268UotKIig4qdZ8F6oNtlLh6IyoeYj1S+FiudgUuPgzSNjx+rU
	 oEsBZNJApq8DTyb1FjokL+pZPbk6qfRvq3at4mNjyOcnS8iDTgWouqQDAO5pkiCava
	 xBDCWmNRqaU5KKzNc/VlYNX9mrxXrcfRrq0nte/jw2UDbLNPRAVWXjWtdSuq+++uW0
	 iZCOvdIrkAYkz2CzN927818ZFfPCSKLJ3t7ZIbI6ovXv2JAnv5hQd43Ifn+wzEJSDH
	 JvefBQgaoZIIw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A7D2240B76;
	Tue, 19 Mar 2024 10:17:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5927B1BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 10:17:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 43B6B60A7B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 10:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1gsvCT5pRiBp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 10:17:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6E5B36074D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E5B36074D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E5B36074D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 10:17:28 +0000 (UTC)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-74-ImosqVAqPIOb4k7fo_NPVw-1; Tue, 19 Mar 2024 06:17:25 -0400
X-MC-Unique: ImosqVAqPIOb4k7fo_NPVw-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-4141087d9b4so3784445e9.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 03:17:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710843445; x=1711448245;
 h=mime-version:user-agent:content-transfer-encoding:autocrypt
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+vYQuE4cmp5aqOHp2teOxW5ChzVfrnEdCOORJu5LYOE=;
 b=hmCxdu1Mz3C/Cpbx+usKVo9cDLlRCAp9wcVQ9i6EFU5wmxk6fPe7OJn2WjbqhwJDuW
 MccUmcxF6GgNQehIKHeILk3X6Y8hiR1zvzUNuWu8DK9Lid0JcBynSRScc3Dq/fcrwpC2
 RpyyUtrT/0+2GnYMjxXVg+4DCKvBkek1TOsc8ue3eI+Co+vMry9Bs6QT0kopLzKYJNrn
 UQiTF0K/ZKlHE+EYd+eusHtHYdr+xYIWMiUuhYRVnENAqevaVmpEZs7Ncb1Qeatl9x9k
 z0xJnH/g8qLAIOP68Gy+HAVeB3mPCUNu+uWBPJEQhOT42OxrzwgEgmjaLMTocHQ1yPn7
 bOKw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUCg2dnIu78ixQNp6hTWKZWc/vChvBoH/FZYV382N1zH55n/YF2NMSwv6eovI/Az0Sh4NptjuO0Wkw6ofxxli2ShA9f60Y7YcJE2IXhNBhl+A==
X-Gm-Message-State: AOJu0YwrBxuzjPhtYwkao8qbeFm+CAtq1JQ68jSDZQy4F9Pa4vmlkX5X
 vx1zRchxECW3FQYZooU+STgHcdg/BOCzaw1zQuFMKBH6//C5IZ9CGmkg8YHhmiCBrxyewgNWFSn
 z538CWjUwr4Pw3o47JFvM3fC51EyaFIB7IlN4rialsv6wcfRGGMm01dF1Iir8P8VBWzw=
X-Received: by 2002:a5d:453c:0:b0:33e:4503:3ba4 with SMTP id
 j28-20020a5d453c000000b0033e45033ba4mr1206449wra.7.1710843444753; 
 Tue, 19 Mar 2024 03:17:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdn2WDMuJ0ENj52hlQsZAerS1NC2YHv+deowOx7596Wgkk+Z2m3oT0AzcYJXihtGvK3foxqQ==
X-Received: by 2002:a5d:453c:0:b0:33e:4503:3ba4 with SMTP id
 j28-20020a5d453c000000b0033e45033ba4mr1206441wra.7.1710843444383; 
 Tue, 19 Mar 2024 03:17:24 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-224-202.dyn.eolo.it.
 [146.241.224.202]) by smtp.gmail.com with ESMTPSA id
 p10-20020a5d638a000000b0033e206a0a7asm11905057wru.26.2024.03.19.03.17.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Mar 2024 03:17:23 -0700 (PDT)
Message-ID: <557e819bc6acdfc2311fe2254b1f382bad8368fc.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Ivan Vecera <ivecera@redhat.com>, intel-wired-lan@lists.osuosl.org
Date: Tue, 19 Mar 2024 11:17:22 +0100
In-Reply-To: <20240318143058.287014-6-ivecera@redhat.com>
References: <20240318143058.287014-1-ivecera@redhat.com>
 <20240318143058.287014-6-ivecera@redhat.com>
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
 s=mimecast20190719; t=1710843447;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=+vYQuE4cmp5aqOHp2teOxW5ChzVfrnEdCOORJu5LYOE=;
 b=FH51gcbGXDtrM/imgwQNpiqT8fa/3y3NnK08hrMSw2BlFcvgPKCcHe4io989JRaBsmWJW8
 MdMZfzbPeXcqscmKOUu7VSqqkw0nyKESW4o+MZi/RXp59/CA5+Yh9oGLtC/vHcV3K54lcm
 U//yCpAu/pDlDr1CpfNozSofJXZHCFA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=FH51gcbG
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/7] i40e: Consolidate checks
 whether given VSI is main
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2024-03-18 at 15:30 +0100, Ivan Vecera wrote:
> In the driver code there are 3 types of checks whether given
> VSI is main or not:
> 1. vsi->type =3D=3D/!=3D I40E_VSI_MAIN
> 2. vsi =3D=3D/!=3D pf->vsi[pf->lan_vsi]
> 3. vsi->seid =3D=3D/!=3D pf->vsi[pf->lan_vsi]->seid
>=20
> All of them are equivalent and can be consolidated. Convert cases
> 2 and 3 to case 1.

Minor nit: while at it, what about introducing an helper for such
check?

Reordering the patches you could use it also in i40e_pf_get_main_vsi()

Cheers,

Paolo

