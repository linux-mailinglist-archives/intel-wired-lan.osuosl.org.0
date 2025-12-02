Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6808EC9BBEF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Dec 2025 15:18:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C7B661386;
	Tue,  2 Dec 2025 14:18:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EBpfAMlzEn3M; Tue,  2 Dec 2025 14:18:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F4005613A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764685135;
	bh=oZkdykvJtHXWigOXU8GpVM5RcFKAy2Fn60LRXWVBZDw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XLlg3LkM0lm36r4fAIdSftJP7iTcvBWtUCBhpkmCL5FDirJ0gUveJ3IT7398AADE3
	 amw6e507pe1Pz9JdA0YGrhfuTrX9lawMPsSSXDHqGvxBf4iLIHu6ay3ILtwnp6UgI3
	 U3vKbQ4aXN00EMUxVz/woM4vo5GvYd4Zo4uK3mxFZD2z328Pgw3UHgTPZM3fUrERXR
	 HVwb5zlznkW+t6tHuBRA/x79Jhryv319C+Tt4dXH/QElf62icw+q5QpTyQXXVkBGNT
	 YVignHznVCGGDNe0rtSiqfQ7bBywsq3yXn2GIoEkHxTczZvM9HDHSbx6xTU39TufrL
	 ep+7imxheuvwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F4005613A9;
	Tue,  2 Dec 2025 14:18:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B0C1D3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 14:18:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 315B980E0B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 14:18:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bw-Oo_TbgYyS for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Dec 2025 14:18:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62b; helo=mail-pl1-x62b.google.com;
 envelope-from=allyheev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8DFC380D8E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DFC380D8E
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8DFC380D8E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 14:18:52 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-2956d816c10so57001955ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 02 Dec 2025 06:18:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764685132; x=1765289932;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oZkdykvJtHXWigOXU8GpVM5RcFKAy2Fn60LRXWVBZDw=;
 b=PbMKtNKLAx9cccYL6sYBSM9Ci/tPot52cdCkucgIygV1hFeU2qaWbNA0xHANeQ/wg5
 fbdO8xhGHVCcLUULXTIETUuizb0xxcdIN21PN8UAFjVlZcWRj8bneQPtZQa444Oe0FJg
 lcEs1XXa9NtIp3yhrimtr2dmybFWGNDmTvKxV7qcfPbg+eBh2isXPLN3OTtawGU8hlNI
 wm4mkf7pamzcJzmblQQnlQiwZdDpKo3exyC6TyyKGjO5gBaiQCSYgfK3LaDFgeIMFUcT
 f6Ym2ZOFdwKzQ3IfL3bzWMougGRx4HAv6+d5UoHZNLpA0YZ0ocbTHaZoruyv4bsQruu2
 MhfA==
X-Gm-Message-State: AOJu0YwqdijOYPA6Ifjznb/UxoTpB0VybibI/6OmaTFYBSsPYpWzwcV6
 DNbSWYMUDhBMYV8dZw/FLJLOL7YHItxNp0PlFIfGYgV7fMSjs5jpi0uX
X-Gm-Gg: ASbGncvx6scNv4Uwzz8O0aPixANHkJObGw7fZKpU/LU3h6/88Cv6D+HIkSPZKYln1Sl
 yYs8KHs26wiq6wkynCuECsw8IyIRT8dDsoUx+qw1uPkl8fsN8ZdYUYVEZhe3pQUNg9mYbubrft1
 pHkI5eh+TuthdvZa9kqf7OjlccXJEF+yCaXQppt0+rLZ6OD2Rf+9YzWHA98dreIWeLcKivXSI/s
 iGkGvr/Zh26ncVQuGhZBrBbKErJzLO3FzVGnrGyA+FW6Y9vzOmX+GGMvvP5sV7hb4D3M4vGL/YN
 H0M3vimqkVYvOuZvkk+5qXHY9eiqBMo77N6yN+00uUOsfc9JhCDvGxXXa4qJ6Ncq+L9AiJ1bxSJ
 bpEjbwUNXKO51XDi8UNbE4Vw3UrKFqyhaG9SB6HCMD60aWjKKCA0L1+TdBgIyLhy2gBlMI2OcVe
 OCIAOgrz9J/cOZ
X-Google-Smtp-Source: AGHT+IEXVjMF/gLtu0SpMkt//7+TIhu+AKR4+RCT2p7BygOrI2of0LrhuPfsmy4VQRAuo+vTWYeMvg==
X-Received: by 2002:a17:902:f60f:b0:295:5864:8009 with SMTP id
 d9443c01a7336-29b6bf5c885mr447803385ad.44.1764685131733; 
 Tue, 02 Dec 2025 06:18:51 -0800 (PST)
Received: from [192.168.1.4] ([106.215.171.188])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-be4fbde2350sm15354312a12.9.2025.12.02.06.18.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Dec 2025 06:18:51 -0800 (PST)
Message-ID: <ec570c6f8c041f60f1de0b002e61e5a2971633c5.camel@gmail.com>
From: ally heev <allyheev@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel	
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>,  Paolo Abeni <pabeni@redhat.com>, Alexander
 Lobakin <aleksander.lobakin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Simon Horman <horms@kernel.org>, Dan
 Carpenter	 <dan.carpenter@linaro.org>
Date: Wed, 03 Dec 2025 01:17:13 +0530
In-Reply-To: <81053279-f2da-420c-b7a1-9a81615cd7ca@intel.com>
References: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-a03fcd1937c0@gmail.com>
 <81053279-f2da-420c-b7a1-9a81615cd7ca@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764685132; x=1765289932; darn=lists.osuosl.org;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=oZkdykvJtHXWigOXU8GpVM5RcFKAy2Fn60LRXWVBZDw=;
 b=MUPtSvZijAGWuarVUX9AGW6AfrD7labp6WPGH186ZnYbQI0DSwFV9kQjBH/MizYxp9
 JQirkQTd9zYYcm/jU+jQVitX9VTPM49yYfw0meChQwoc0MUrXx++afXnolTfbuoMkTRZ
 dtJHEsAZibxnnOt1W0lN292zXnGbsDmJ2ovQTnhZP+4oB8w15FgXt/9EZ78UFX92sT5J
 BLJsYWka7/70grogON2vNrGIXTeiW/0arVknOVByd/cd35VWBnns5NaqcJQbz9+K2TBP
 pgePbdiqmo2AQWbUwkRZLUEb6Kr/ob29qgHUpPuLKCaRz1PjYxE+pJhqU6r2MV+0HxD4
 Daug==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=MUPtSvZi
Subject: Re: [Intel-wired-lan] [RFT net-next PATCH RESEND 0/2] ethernet:
 intel: fix freeing uninitialized pointers with __free
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

On Mon, 2025-12-01 at 13:40 -0800, Tony Nguyen wrote:
>=20
> On 11/23/2025 11:40 PM, Ally Heev wrote:
> > Uninitialized pointers with `__free` attribute can cause undefined
> > behavior as the memory assigned randomly to the pointer is freed
> > automatically when the pointer goes out of scope.
> >=20
> > We could just fix it by initializing the pointer to NULL, but, as usage=
 of
> > cleanup attributes is discouraged in net [1], trying to achieve cleanup
> > using goto
>=20
> These two drivers already have multiple other usages of this. All the=20
> other instances initialize to NULL; I'd prefer to see this do the same=
=20
> over changing this single instance.
>=20

Other usages are slightly complicated to be refactored and might need
good testing. Do you want me to do it in a different series?


Regards,
Ally
