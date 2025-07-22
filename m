Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BDAB0E6F1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 01:08:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A923416B9;
	Tue, 22 Jul 2025 23:08:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id De_7Pm0SSmha; Tue, 22 Jul 2025 23:08:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57BDE4161A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753225687;
	bh=/mMoaMx1flIcD7eXqi/UL8Muxe2kEAD+s71uJxVYy2s=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MWwtuGQZcorBnP0WCUSouGFUcbaZGrU9QZ1eCe/2+BwLAMAyK/uxUKzuPYhoZFKoG
	 0pLXnVY9IfACsSlOY5/pqoFz6vx2RM5yXzZCXWz/kjC4JlUYu4bKQSj8V3zCm7qJLo
	 5JmxX8SPTHPRNXkqlogDt6COo/q9x1wm2FSR87d1YEjGkuGFOeVGVInTQP8uDlV26n
	 RKy/zJhri+iR27hcu8TFMunHBM4u0m4BQyzOZ4Ho/JDL1x8BQ5ve3iF/0gyUvrDIQA
	 U3dSv80d9tHIdHoTG0vdPprlylRSt0Cj4B9UjBlhsT9hFNkx3cZqygqBFyLxvnvcya
	 aQVpXRAVh3z6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57BDE4161A;
	Tue, 22 Jul 2025 23:08:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C2902CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 23:08:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B4A2860A86
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 23:08:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SW_j7cCwL_qR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 23:08:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::d2d; helo=mail-io1-xd2d.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 01886607C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01886607C4
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com
 [IPv6:2607:f8b0:4864:20::d2d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 01886607C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 23:08:04 +0000 (UTC)
Received: by mail-io1-xd2d.google.com with SMTP id
 ca18e2360f4ac-87c26c9e8d5so263152139f.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 16:08:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753225683; x=1753830483;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/mMoaMx1flIcD7eXqi/UL8Muxe2kEAD+s71uJxVYy2s=;
 b=NTKNaBgX8pyVk8gETb4Mv9OwXfYjiJ7n8vR383JaiPnezgocqe+sa2DbZy06aLgC1E
 qQfIIdP8dX+9UArdb+QkKx8ei0BTxh0By9ldoh3LbwfyYmnVRQ/XHCzBa4ZyI4jwf6jt
 /6ceukIgesvfylgGQ+uhOXWzoWuiwn7hssW2tkL2P+wt8Np3eK6IWvxigut/NIAs6syh
 yNM6HySuAjN+Ed2+N4R2m23QcspCQfefOE+oKSdoyfDv46QWmmqu0eIOLSD1yrdQw56Y
 sYI4lFPzXBBIye+tmKEk8faaiR1ljeaDTLC1RQ9kuGP98Nq8ihy3hrL72SDNdQbB6P6a
 OjUQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVxa5VHbg1osgS4m35ljbs0Qr3XB7b8QZnvXI1hOOzCl6obZul1nGsLN7ATXBIl0veG8WEBwiFtZFkGlkL77oo=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzSkFylm+GI0s0TTmJt35W9rAHK2FR663Xki8vFNB+f8nCICSjl
 MTy21XzJfA0GKwyos7oV/4NTauJvHi7U7VA9xbRYEbWv/5macQwec7U8cwOqK5HEMXg5XBje02L
 XvQDS6ntuGOrPA+qA20b2DQLC+568W+8=
X-Gm-Gg: ASbGncvRU6kRuGX8ZNPx6ndeRl2fdlZaidgSZxnZiXUOLS2j+bTwbxh/h0i3glIRfk8
 xBWAQNtWggHKkISR84WvR1Su1gYt4AUZaSCh8Gug0F4wkYcODo5AyIR52JQHBiaAW2Nau/ndMlf
 7KnHZt6xOBbe4FPOeBTQsyC5+dvLdkp08qtkF2epBn95a/p+sDbav4Y22k7594dWz7C7yK606Pv
 cCvyUbpPQdAS5PsUA==
X-Google-Smtp-Source: AGHT+IExMlR5MelabTRsOc2tClv7n4gVBPnDMaSvf1Cqj6owFiytP1LId1+eNzapFTXoQP/Io+nkVOuNBDaBzXzB1Gk=
X-Received: by 2002:a05:6e02:3499:b0:3e2:c345:17f2 with SMTP id
 e9e14a558f8ab-3e32fc7fa36mr18089175ab.3.1753225683585; Tue, 22 Jul 2025
 16:08:03 -0700 (PDT)
MIME-Version: 1.0
References: <20250722135057.85386-1-kerneljasonxing@gmail.com>
In-Reply-To: <20250722135057.85386-1-kerneljasonxing@gmail.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 23 Jul 2025 07:07:27 +0800
X-Gm-Features: Ac12FXza06BuAb0W28VQl1NaN6Z6Y25KJi_4nA0fzQz21BHQq_5MVFnMh8KihHA
Message-ID: <CAL+tcoAnB+8ZLPyWQ3XsvWTa=JO1yCKWvrKVp+2WCP=kGpfSPg@mail.gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org, 
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com, 
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org, 
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com, 
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com
Cc: linux-stm32@st-md-mailman.stormreply.com, bpf@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753225683; x=1753830483; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/mMoaMx1flIcD7eXqi/UL8Muxe2kEAD+s71uJxVYy2s=;
 b=YHYDdbG/WMgn8ZhrftOnG/V74JmI9CCZM97eCdj+bndyJEHSRTShLqxRrdiQdZc4UA
 SFU5bs1+qSfL6tIPV883862hiWp0VZ7uT7NG2KaS1oOPve3VPatufboGhCFqtRh/Eo54
 ++RFh1G+GtwXXuQPuq40KlU2448v+GY4gB2gS3QA0uESHPzFd/BAh7TwFkl2VK4JenAW
 RidDBXqjjlO34rSiqdxqPDItM5P2dTg25C87P5L/qPf50MS1C2gq2kK4AmufYub0qwXw
 5XTIqeo69tkHQ/HOkbmL8omPbWmIBRf4Zh637/wOrHsqU6c4amSHhRpScv8952mVQ8eQ
 XpXA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=YHYDdbG/
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/2] xsk: fix underflow issues
 in zerocopy xmit
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

On Tue, Jul 22, 2025 at 9:51=E2=80=AFPM Jason Xing <kerneljasonxing@gmail.c=
om> wrote:
>
> From: Jason Xing <kernelxing@tencent.com>
>
> Fix two underflow issues around {stmmac_xdp|igb}_xmit_zc().
>
> Jason Xing (2):
>   stmmac: xsk: fix underflow of budget in zerocopy mode
>   igb: xsk: solve underflow of nb_pkts in zerocopy mode

Willem has pointed out it's technically not underflow but the negative
overflow[1]. So I decided to send a V3 patch with this modified.

[1]: https://lore.kernel.org/all/687f9d4cf0b14_2aa7cc29443@willemb.c.google=
rs.com.notmuch/

Thanks,
Jason
