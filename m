Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB13FCBBF9C
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Dec 2025 20:35:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39E9D60D9B;
	Sun, 14 Dec 2025 19:35:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OQeS30NkIKQN; Sun, 14 Dec 2025 19:35:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 381F760D9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765740912;
	bh=53Dg3Sp+SPbyyHv/BS5tbreySysTYN5lmfvfOPxilvg=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=N+a3Pjz7CzTiFfiL4RvMuw0J/K1/pMXU9FhIjmz3aUc3ieWgQ4GyHJnhz7xCxYcKy
	 hbNhdGLNucscI/6bguRbMd4J4UFpDQgNmrZlfSUvhl28dBNe5zeddR4EnREoa+2s3N
	 Uzr5GcVJ3SFFllBgCu/42iiZl7l+RBheK3PNtvzlImYmaVNslK85uP3k+AV9TXyq9R
	 EMgXmdEf+MBo8tZ2BUp0vUbpg4meEoTDF5GrHtHKZN2hy8SlsX/PN0PcvWb+z0Jy1X
	 qBOYph7XsAjA6H6QYmSITDRByu2JELM56eOTUaD+oKf4jpvl6YcAFKhyGZXbs1Mg/O
	 BB5oLixHgEuxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 381F760D9E;
	Sun, 14 Dec 2025 19:35:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BA58C2C1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Dec 2025 19:35:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC2B940358
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Dec 2025 19:35:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r5QhwGsWtiVz for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Dec 2025 19:35:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BEDB94002D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BEDB94002D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BEDB94002D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Dec 2025 19:35:08 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-237-dJMAHK7WNWelxnGxwNC0yw-1; Sun, 14 Dec 2025 14:35:05 -0500
X-MC-Unique: dJMAHK7WNWelxnGxwNC0yw-1
X-Mimecast-MFC-AGG-ID: dJMAHK7WNWelxnGxwNC0yw_1765740904
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-430fcf10280so146195f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Dec 2025 11:35:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765740904; x=1766345704;
 h=content-transfer-encoding:mime-version:message-id:references
 :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=H4mZnR7UJNODpWMmXymB0wDsddpATfsL+KraTcKuGLw=;
 b=wzgytS3O1gLD0OAoUtd3lkPc8yDIMy5/Edcbak2it7oZip2gSr+bHatXO66h24FVPy
 cPjmeuDBb5qDFOSVn3Sb1k/uAaQ41Z701M4cSK2UrGUv6dooNzv5jd40TlxKxfQ6WV/d
 j0VTso+QrZjOOPw/I/2aaRzDX8DtX6XF2ypV+4SKlm8duYZLh+ElkJzhi8DaDuuCuX5z
 hdkcKvwcKafCx79HgPY6eI/yDHxvAXol3jp83glN54sNWq0hH3b8MLIrwNPsznbRxqZn
 HyrbdpV5mkac8cbu1XDA5hHWxSR0zlXKT51DMmg70ygHJCe7Q6UGOXnwnrOhzLmeooNv
 vU7Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCWOlAtyjITBsvJ5oeVdcHi5JrZlyr6VEkdpUTAkO+AuDyUBPYjJWbriPR9nQnpuAyAnh0ar3qMBT87e3z9vChw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyRde2nTF49TFr/Z8vr+NuWwG4qQB+gdk/9ebuTo8hnlbRZZyZV
 zc7GCGVwZgdyeMChRLEgIb3hlA7wNFpxccmhT5CbjCyVKYMLNBKqI1ouwR+uYwS7Ohwn438N/D0
 Et3txJ9j/jSzEcCZs3jj/UslOX515TS0vd5PhKUxwSr/pt9EVQ8J2fE5jS4fGNvu5/Kkd8dA=
X-Gm-Gg: AY/fxX5DD9KJ/Sbl5vAtCQjr1UF2GiW8HX4FH7RyIAZe/qKTbDx0u7lwF1ybb1/LjpV
 AaUjh8NmA8ACYci3A6Bo7iGHnx8XE0ZhaZkWDXp3N6oyihar2etipXsGZj2SCeKKL0DXCVDQb6G
 tjQnGLUHGdBEfKo+iqjYItNr76i2Ppg+wT9YbO6DSvJMUEXISzVbYwbCLGl85IqxwB0gxZcPGto
 U0TLhdM/EoDngiy/0833SzMIZ7q+75nKoxlomCglBGTc0y1P18hRnfgwZkHly4hUWGBGzrg1D3C
 8xwPJ/oJ2yTTWEtq3I2EL4kOdvSPYz/sSyf6COJc6zF9/9Sv9dO/ZFdvu/4IZXL+UAcs4XcWlLR
 qQyZsAf+mBUqmbAW9
X-Received: by 2002:adf:f28a:0:b0:42f:bbc6:eda2 with SMTP id
 ffacd0b85a97d-42fbbc6ee74mr6356760f8f.40.1765740903906; 
 Sun, 14 Dec 2025 11:35:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHJZygD2dMeXeBlBMcgy1R2+96hGcPhzeLpTRtqAJ2YkZxU6045KWmRjFUtryqBP6cetFCKMQ==
X-Received: by 2002:adf:f28a:0:b0:42f:bbc6:eda2 with SMTP id
 ffacd0b85a97d-42fbbc6ee74mr6356744f8f.40.1765740903457; 
 Sun, 14 Dec 2025 11:35:03 -0800 (PST)
Received: from ehlo.thunderbird.net ([2a00:e580:bf11:1:11d6:cade:a15:8421])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-42fa8b9b6bfsm24464587f8f.43.2025.12.14.11.35.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 14 Dec 2025 11:35:03 -0800 (PST)
Date: Sun, 14 Dec 2025 20:35:01 +0100
From: Ivan Vecera <ivecera@redhat.com>
To: Jiri Pirko <jiri@resnulli.us>
User-Agent: Thunderbird for Android
In-Reply-To: <ahyyksqki6bas5rqngd735k4fmoeaj7l2a7lazm43ky3lj6ero@567g2ijcpekp>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-3-ivecera@redhat.com>
 <ahyyksqki6bas5rqngd735k4fmoeaj7l2a7lazm43ky3lj6ero@567g2ijcpekp>
Message-ID: <3E2869EC-61B3-40DA-98E2-CD9543424468@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: KhXr6FRbHxFFVd_5CMYhdUPZffnBOSW8YiWKFEp0dyA_1765740904
X-Mimecast-Originator: redhat.com
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1765740907;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=53Dg3Sp+SPbyyHv/BS5tbreySysTYN5lmfvfOPxilvg=;
 b=Il3TYXMuT6Bho8cB+Z7Or7tlGx+mB3cUt5/uOUZ8Azbg2PQ043iL0V1GI518S9QCt09pWq
 ZeJeRIcJW1lQqCGJT+89cebDsjurRce63lLFnqjtOOvHO3465aLi+srZ2ntCBclLEBKctr
 YbsV40H+lPEzFUYCET3NT+CmXpEmoXQ=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Il3TYXMu
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 02/13] dpll: Allow
 registering pin with firmware node
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
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
 Leon Romanovsky <leon@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Willem de Bruijn <willemb@google.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, netdev@vger.kernel.org,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms@kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On December 12, 2025 12:25:12 PM GMT+01:00, Jiri Pirko <jiri@resnulli.us> w=
rote:
>Thu, Dec 11, 2025 at 08:47:45PM +0100, ivecera@redhat.com wrote:
>
>[..]
>
>>@@ -559,7 +563,8 @@ EXPORT_SYMBOL(dpll_netdev_pin_clear);
>>  */
>> struct dpll_pin *
>> dpll_pin_get(u64 clock_id, u32 pin_idx, struct module *module,
>>-=09     const struct dpll_pin_properties *prop)
>>+=09     const struct dpll_pin_properties *prop,
>>+=09     struct fwnode_handle *fwnode)
>> {
>> =09struct dpll_pin *pos, *ret =3D NULL;
>> =09unsigned long i;
>>@@ -568,14 +573,15 @@ dpll_pin_get(u64 clock_id, u32 pin_idx, struct modu=
le *module,
>> =09xa_for_each(&dpll_pin_xa, i, pos) {
>> =09=09if (pos->clock_id =3D=3D clock_id &&
>> =09=09    pos->pin_idx =3D=3D pin_idx &&
>>-=09=09    pos->module =3D=3D module) {
>>+=09=09    pos->module =3D=3D module &&
>>+=09=09    pos->fwnode =3D=3D fwnode) {
>
>Is fwnode part of the key? Doesn't look to me like that. Then you can
>have a simple helper to set fwnode on struct dpll_pin *, and leave
>dpll_pin_get() out of this, no?

IMHO yes, because particular fwnode identifies exact dpll pin, so
I think it should be a part of the key.

