Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D588FF46F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 20:14:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB44341720;
	Thu,  6 Jun 2024 18:14:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QHPB5dKeXvWe; Thu,  6 Jun 2024 18:14:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 241F340567
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717697660;
	bh=v6OkUYHTDnK30eTulYuTKHOA0EMuuGUmEQIuIvevXFE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lKW9Bp3I27RqSZSr4QC7PJtWE8+yw0QJK/RSc//Unho4DMxMD2iQyryLkUd+U/l97
	 JdkpwbNU+s+CJnLU61QrGpfCh9KneImjEa6TgEscZuHLRwcyrRUoP/iknla6F1QoxY
	 KH81K2v8mMxcgRwgF3QX+U0lDeBu09Jwj03zEkMjstJY7qOqzIXohMep4z2g1yBdlG
	 QyP0kaxtrewRsGTVKqXR5eqkTnyt+3732aq6pMCYj26psJWt5zuarSWDsApqEIL25+
	 LmT4Zggb3g929GXLllgEYoYIxcItcj7g7L5UCaoBpbXr30vZtLnVSvDU/8IqrTsDwn
	 sbXxkzKofsgBA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 241F340567;
	Thu,  6 Jun 2024 18:14:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 66A6F1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 12:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 51A7F61080
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 12:09:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0J5oPIv50H22 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jun 2024 12:09:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b2b; helo=mail-yb1-xb2b.google.com;
 envelope-from=mikhail.v.gavrilov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 96A026104A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96A026104A
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com
 [IPv6:2607:f8b0:4864:20::b2b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 96A026104A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 12:09:53 +0000 (UTC)
Received: by mail-yb1-xb2b.google.com with SMTP id
 3f1490d57ef6-dfa8394d3f4so509401276.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Jun 2024 05:09:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717589392; x=1718194192;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=v6OkUYHTDnK30eTulYuTKHOA0EMuuGUmEQIuIvevXFE=;
 b=Kz2TKok3vPPjUXFQSep8fKxfX5hTsOe3a72ODeR7CM0N1Hg5ntwV+hV/idpO11LwMA
 buNwdEmHHiEQfc1c4rI1JXZFiP8XPC2SHqH6/UEKIsflBiyW2V9QVoezaTd7AlGosGqQ
 OnmCs1f/T8wlAj45/WXwE5wOL1njQ93UsDC1HmWTXRH7zH4/4hyepA3Wr2McwOzs0dsI
 7baBoe+cVYLaeUZCXDhwwimQMlpiO0oxegyAc1VWOdwTItRRBTY4HFygGn0ncqhSfIM6
 Z6kXBvO6TrYeJmWhmDPJsVV0W1XGNsLUK620Ccy4s4/oV7yhr2U340mcxVDs5ipNUESt
 5h0w==
X-Forwarded-Encrypted: i=1;
 AJvYcCXz9cm+vs9LOxT7Vu5vEG6H1VDseIRJjijm2PlRI6NkOMxRhpdCC70YzC1ukqiw4Y0HYe+6XjgpP2Yseo5n/zyxDAb4B1ude/fordYogqOkQA==
X-Gm-Message-State: AOJu0Yw6XCpkSACRAbPJJi42iVeZ0oXqZmfYs1qMwZk0+dyQ0sGodIWE
 LA0AOtSGCle/Rmyz+VW9tw4z0LwnKBAZk7l/X2GOo+peysZEp2MYUq27u831rQTd10oLVXJyzxP
 gcSB/hvxudTXpx6yGrbBUAzME64c=
X-Google-Smtp-Source: AGHT+IFutQyTj0+V5BeNMKPgv6bKnZ2VEqST1PWMxEl6FvshfTzXV2urEFBL/wOmjSW7uaTvLYelQHMwWtqnN9amCXg=
X-Received: by 2002:a05:6902:260c:b0:dee:6ffb:b3ab with SMTP id
 3f1490d57ef6-dfacacca5a5mr1897470276.4.1717589392287; Wed, 05 Jun 2024
 05:09:52 -0700 (PDT)
MIME-Version: 1.0
References: <CABXGCsOkiGxAfA9tPKjYX7wqjBZQxqK2PzTcW-RgLfgo8G74EQ@mail.gmail.com>
 <87zfso6tfk.fsf@intel.com> <8fb634f8-7330-4cf4-a8ce-485af9c0a61a@intel.com>
In-Reply-To: <8fb634f8-7330-4cf4-a8ce-485af9c0a61a@intel.com>
From: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
Date: Wed, 5 Jun 2024 17:09:41 +0500
Message-ID: <CABXGCsPAdzVnSpT65NkMTi=jS1c0-bz=2XjnZWUkOxhrnkpgEQ@mail.gmail.com>
To: Sasha Neftin <sasha.neftin@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 06 Jun 2024 18:14:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1717589392; x=1718194192; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=v6OkUYHTDnK30eTulYuTKHOA0EMuuGUmEQIuIvevXFE=;
 b=W3r1rcy7MQOjXlvGXA7C8tiSrvtg+FwH6jhyPe4ikiMUurXtgXLbcDUVFzds8B306i
 HUWrrd+z1XgCSULvHNE0dePKAbDeeJsR5DL6TIre+trZ4ACQ1+T3wvmmJ+NuXt6AQEHq
 gaE+aBGCYTgXYpQZHBQBpWrR1F9dj98UlcNJxh2YI6fYdCbbIxKiKrKS8rqJxb0PIbQr
 KBoYIAXweLcv5iy2JzcRFESODm+r8xqu8YUaDODW9d3brsDZ43J3vTK4H3yfvyb5eHVI
 KkpU1cIxfJwV4HFWfC5AxSVVcYR2atHSpmIHx6Ry2vb2X+CVirEXxU8i7GVnfrD+P/vu
 DAZg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=W3r1rcy7
Subject: Re: [Intel-wired-lan] 6.10; regression;
 bisected - commit 86167183a17e cause info msg "trying to register
 non-static key"
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
Cc: vinschen@redhat.com, naamax.meir@linux.intel.com,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>, hkelam@marvell.com,
 anthony.l.nguyen@intel.com, "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 21, 2024 at 10:34=E2=80=AFAM Sasha Neftin <sasha.neftin@intel.c=
om> wrote:
>
> Any thought? Revert?
>

Sorry for the noise. Is there any solution?

--=20
Best Regards,
Mike Gavrilov.
