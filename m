Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EFC9C1C63
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2024 12:44:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1796A42B42;
	Fri,  8 Nov 2024 11:44:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6M1U4fDAPICZ; Fri,  8 Nov 2024 11:44:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E16C42B3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731066279;
	bh=+lU6GBkmCPFmCNwxSrgrgIkwiITyF6fl4wchytIL1fU=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sMU9LK6LUe5LgU/B2ioClfjKbT/54S2dB9TVsMmkNTn2Uwac3cWAzbPKN+q7LCVMK
	 TWJG9R/TTOUir4GF3nuea53JHxVPbzJhkpg0ISe9OCZDDx9eHd8v51ewPdt4OH8lcQ
	 MSA3DvHPstDFxSNwj/i+g490/QKPHosPECIbVEgNr75Fe0u6vsJay+wCAikIsx5H/u
	 9SqjjJHjN2EUuOwDQnw7YOW8lpfG1mkw8akIODV+QVXUh5kYIHkoxbL2jFTTZPMwS+
	 IjISLx2TYvJL8BJzcpWyN0SdCJvKeoHObHZKj/857ule685a4qjogVp6tlPD3yaiQ+
	 kTaFEiJmRuicw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E16C42B3C;
	Fri,  8 Nov 2024 11:44:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E48A5C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 11:44:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C560080BB2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 11:44:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w13zrPHqLeOz for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2024 11:44:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=wcosta@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1A35D80BA2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A35D80BA2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1A35D80BA2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 11:44:35 +0000 (UTC)
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-197-ey4-Yz9_NEuNDQujhaUB5A-1; Fri, 08 Nov 2024 06:44:32 -0500
X-MC-Unique: ey4-Yz9_NEuNDQujhaUB5A-1
X-Mimecast-MFC-AGG-ID: ey4-Yz9_NEuNDQujhaUB5A
Received: by mail-pj1-f71.google.com with SMTP id
 98e67ed59e1d1-2e9b55686abso482760a91.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 08 Nov 2024 03:44:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731066272; x=1731671072;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+lU6GBkmCPFmCNwxSrgrgIkwiITyF6fl4wchytIL1fU=;
 b=Rbuhuus3z8B/KAHwcOvLyLxw5S+qkp/7sjQJHx1VkBKfm+UshYqZRBSF5grS25RBoh
 SqGuMh+gtio+k9fAmN39sSfShWpWQtOFPmMioTzWIEy1DGzIh6yccJcLHbhJ79dMgLi5
 OjkueRQxAvpj9PFYU583pN4Ux0eJS6oSJF+hKrF3IWWbDwUY8lXud4wrDG9/cpKLiTzC
 1zz+HXv3aISz/shuWn04/hCkvA6zaK2IParXlS0bmWS+OHPrFpNeyZ4sMXAh6iyTByDg
 fDJB8G6gEjK/KMCy/ezr92t5Rk7s6U6HBSDzlIC0ChPGlcaLDpn68ON0M23Lu9noziTT
 y+Dw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV8RbqrNnV4PR5/JJEQIM0A9o2xTNIYRYHm9ND1OZrBVWSnT6a8TOQ/wEyF/3j3wyCD8E11hWhDO9qSxL2Hzk8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwxDaKp2LFL9no7i36DLNgpOyK90biEbyUDGAOVr0Id6qUfbxHz
 b0R+qK3JSCOzR6FLAfM6j7/VqTBy8+fhc+wBnP+7XcZrICG5OcI6iSEooCNMLhbYwszjJeHALw1
 pt8Vfrv4wYDkf+cEku5XFv8H4aFLq/PhpVrO8BbmQmJX77gqE92/2VBq4fA1vbrXkK/xaHdvQHB
 pDfImL/6v3KI1GSvVcumCXUx2UJqsD0jnEm2JnvUB6TQ==
X-Received: by 2002:a17:90b:1f8f:b0:2e2:b02a:1229 with SMTP id
 98e67ed59e1d1-2e9b178fe37mr2922945a91.35.1731066271838; 
 Fri, 08 Nov 2024 03:44:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHxIMFhFEJaXhMKyQro+WyOM48KyqyrmXQzVcAxRO+eiRvB7RVIYRHANvMBBHAupPuqRNnBIAp5H2+HfwwyoV0=
X-Received: by 2002:a17:90b:1f8f:b0:2e2:b02a:1229 with SMTP id
 98e67ed59e1d1-2e9b178fe37mr2922923a91.35.1731066271591; Fri, 08 Nov 2024
 03:44:31 -0800 (PST)
MIME-Version: 1.0
References: <20241106111427.7272-1-wander@redhat.com>
 <20241108072003.jJDpdq9u@linutronix.de>
In-Reply-To: <20241108072003.jJDpdq9u@linutronix.de>
From: Wander Lairson Costa <wander@redhat.com>
Date: Fri, 8 Nov 2024 08:44:20 -0300
Message-ID: <CAAq0SUnrtYadVZb=2G5PW0dBJxovzS2F2841-gCHqSp_5VgsPg@mail.gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Clark Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>, 
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>, 
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, 
 "open list:Real-time Linux (PREEMPT_RT):Keyword:PREEMPT_RT"
 <linux-rt-devel@lists.linux.dev>, tglx@linutronix.de
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: n8YIYuFHlY9JcFiGMxKDM-rZHS_LzUVwXKe5c-6XCwo_1731066272
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1731066274;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+lU6GBkmCPFmCNwxSrgrgIkwiITyF6fl4wchytIL1fU=;
 b=hVSCtydwz50YxxfowPm7sHvuEl1gDU0HJpIJ/OmxOSVN5AA02m02JA9g/xdYSzWAfmzubl
 /pgvHRMG6njOy9eUE0SIFcrYuFLaatUgXpzuusN7G/mfuZ3uEFRldynarQx9RoYsYPXSTT
 BcFw4Mty8MqhbWh2aFEhLZcdRsu98WE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=hVSCtydw
Subject: Re: [Intel-wired-lan] [PATCH v2 1/4] Revert "igb: Disable threaded
 IRQ for igb_msix_other"
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

On Fri, Nov 8, 2024 at 4:20=E2=80=AFAM Sebastian Andrzej Siewior
<bigeasy@linutronix.de> wrote:
>
> On 2024-11-06 08:14:26 [-0300], Wander Lairson Costa wrote:
> > This reverts commit 338c4d3902feb5be49bfda530a72c7ab860e2c9f.
> >
> > Sebastian noticed the ISR indirectly acquires spin_locks, which are
> > sleeping locks under PREEMPT_RT, which leads to kernel splats.
> >
> > Fixes: 338c4d3902feb ("igb: Disable threaded IRQ for igb_msix_other")
> > Reported-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> > Signed-off-by: Wander Lairson Costa <wander@redhat.com>
>
> Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
>
> This is the only patch.

Hrm, I had other unrelated .patch files in my directory,
git-send-email might have gotten confused because of that.

>
> Sebastian
>

