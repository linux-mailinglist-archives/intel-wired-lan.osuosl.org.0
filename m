Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 594EBCABCD6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Dec 2025 03:08:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4D2783192;
	Mon,  8 Dec 2025 02:08:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l9pNsiRPvpEW; Mon,  8 Dec 2025 02:08:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FC1583196
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765159703;
	bh=YvaxHtspKDgGP89dgp8WLsgmB7jhldyXoyX4PG7HjWg=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ham5oW5TP4Gz/qKaW7+NGSVdW5PELAB8z72D3ZG+QK3/d1Cl4N9tbbvF8CJiO8Yj9
	 MmzorxMD2xEXp9fDKathapwTpaI4ttXmR1FSeD36EAZ5h4vCdeoSwvofd3TXqaaTOE
	 JltYQVe9PvOyHkBay/htQvan0njt3p6tTzw66D1C2sfkXjGfcy1GwVdNTaicp7gQ0H
	 pSS0wKEKIW84j9iGw58mP2dyuidLqU75wCag4CX8w7PoR5twcPbp3TacyesEqNmeE1
	 fAziYkls1GfrlA9u1DuOJrg2MUE1+qqTIEUSMz+LuZdnJYzRzZ7DL9IFNSqv73FheL
	 UFa/xhnyYfUMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FC1583196;
	Mon,  8 Dec 2025 02:08:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id AA341151
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 02:08:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B3EE60732
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 02:08:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3X6uihTtUBLF for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Dec 2025 02:08:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com; envelope-from=aaron.ma@canonical.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6683F6070F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6683F6070F
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6683F6070F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 02:08:19 +0000 (UTC)
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com
 [209.85.215.199])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C982B3F45C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 02:08:13 +0000 (UTC)
Received: by mail-pg1-f199.google.com with SMTP id
 41be03b00d2f7-b969f3f5bb1so6756598a12.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 07 Dec 2025 18:08:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765159690; x=1765764490;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=YvaxHtspKDgGP89dgp8WLsgmB7jhldyXoyX4PG7HjWg=;
 b=acRUGQT0aJ9Rb/dF6hrlYZNVoj7767dpQL2XrYy1GN4R50HUJCXJYNJ81F+i2NZb6V
 YCwNNeNlkENPW+D76pUKZjJu+2NzO74aBbaczeYxsKpzlDpoMBzMPb8RptFC1gZvbTrJ
 RmWlBJqy0z69uEFAN1iaNmvzWDcNRCs/DLODqONzYov8x8Va7C0aV30K27Qq71su2SBt
 RO5QsPTPL6xAPSXlJJsm2MVkgH+QLE9EPQRN8xAFgJsHVeX9Tg+Brm9xTYUynmCK/jWx
 rmuLN5H1T3FJ5s+xYszQkowdGF72aP+XTHlksUKRN5hjZxvmMmhfMstzjLifGtwfH8OC
 PqnA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVrJsWNvCyfG6nxNbgrwLenhVbrHwJVVBlpa6+5r8cOvM1AwExDnxkIX3J/fld5P3kdVFAILmdsd8vD2sDyUFg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yze6H5snFV+X+3NITPRU3K0QPX6zI1qt4G+uDImY8pBrJ7F5p2q
 4Bwe/H1Iztq7aGb0GelVOYZycbrl9AZ++RJRaJNIgD0QGkWu8bm8ljrMDG5ft4+UNKDM68ZZv5x
 JXQPG9jV/pjnqTGibVWLUspQAxlicXyDf3wtwGWXRjIewqCRp+vFbf31t14k0rvbgoaVHlDoSK8
 SHgI/G9DI5L2KS+cB3WFkr23phKAdaJC82xlGeoydPVC+zeJLwAAYc8JOLfLQY1A==
X-Gm-Gg: ASbGncu0FaYF3jRcIyIcCds7h/GIPxuldv4Se+F4FBQoEZr2NDigtAwZnHuRIcNuLGr
 GRUArLVNJ6b/TgS2ULcPVJfds5WE3Xljmi3PwhrchBXjTWM5vFzGNcK2ICJgMfZ7O3wo0romB/5
 7Vgl3mIzVsxnn2VBHxKQRLLIqb7TJRRFbOU1wcZpNkDBbTeFX/U8yT6w5H/tBU0Zv40cg=
X-Received: by 2002:a05:7022:493:b0:11a:2f10:fa46 with SMTP id
 a92af1059eb24-11e0310f71cmr5415109c88.0.1765159690134; 
 Sun, 07 Dec 2025 18:08:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEp69C5bU55mcpJen9vbrbnGd0qeI5z5AXJUcTCrX9qLG+52iEleATqKQsNYar5yV0d75Ix4tWv1jDJrED771c=
X-Received: by 2002:a05:7022:493:b0:11a:2f10:fa46 with SMTP id
 a92af1059eb24-11e0310f71cmr5415092c88.0.1765159689746; Sun, 07 Dec 2025
 18:08:09 -0800 (PST)
MIME-Version: 1.0
References: <20251205082459.1586143-1-aaron.ma@canonical.com>
 <aTL2GcF6CTXRU5Wt@horms.kernel.org>
In-Reply-To: <aTL2GcF6CTXRU5Wt@horms.kernel.org>
From: Aaron Ma <aaron.ma@canonical.com>
Date: Mon, 8 Dec 2025 10:07:58 +0800
X-Gm-Features: AQt7F2pi71plrHHekMBysUBnP2iTaJL6T7l11RLt0u5pBbsJa8laRZGcz_outWg
Message-ID: <CAJ6xRxX3=1f9WMFdAs8-dU8_AvtTv+RDxpL5B16KJTCe0EO4nQ@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1765159693;
 bh=YvaxHtspKDgGP89dgp8WLsgmB7jhldyXoyX4PG7HjWg=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=fOwMXC7KZvH7jpqGuKYe0k7R9ogAhvGKSC20IY0TE6Va6xCDGTgCcyItUnl4Pqkgq
 ouIm7j59EsUroOg/XWjI/H383VmWrnJH7mnI+8W6BbdP89ayH22oFYfVbzj3BP1cfZ
 fs6LPPM6dtun7Td4T1jbsA7YKkQASJ9BZn9HdpTONxxkqhiK0oqeuCPyb0UoE0U6Hb
 8DeMePoLLrtDPmYqSeixXhxUNB/2e7pXGXp6YSjoi7usW1syNC3Er9Jb2xDXaEWrhC
 IUFZqRyCF83v9pjFCsFO3k0NNr/CkPlML++Fph8xgIS6nBsx0/CHoDN1ud/WDGbMQD
 CaYQ4jmqXy2XPocATov7aBhEQfSIU+wsy1UjawtyjkR9zl9TrtgmQrQ5eV44vrKafv
 +4medcf1b+pPYPNWf0kS+i6dcDrT+HU0rkmD1U7rNDR7plulb7241QzM/UcOkNUuUY
 w0NHR/Y2nxmEyIJj7cJy2+3rhYFR6Im+meck3evlIOO0HALs9nrdmPHL68SDP+nJfR
 v9nHpARIDEAshGxKPJ4JZtrXLu8Sj/jFzaCDW8Cz8DMQUoYwTxlB0PbPyyyYupp8cd
 ZVn4GFBdCNoWv614nNA/NA/LxlxA6Gf51I6DUm0lpbb92pxCzmsgQB2WcfclKqFL13
 udQmHpWKdb35wbpDpt4on1bw=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=fOwMXC7K
Subject: Re: [Intel-wired-lan] [PATCH v2 1/2] ice: Fix NULL pointer
 dereference in ice_vsi_set_napi_queues
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

On Fri, Dec 5, 2025 at 11:11=E2=80=AFPM Simon Horman <horms@kernel.org> wro=
te:
>
> On Fri, Dec 05, 2025 at 04:24:58PM +0800, Aaron Ma wrote:
> > Add NULL pointer checks in ice_vsi_set_napi_queues() to prevent crashes
> > during resume from suspend when rings[q_idx]->q_vector is NULL.
>
> Hi Aaron,
>
> This is not a review. But a request for the future:
> please don't post revised patchsets to netdev more than once every 24h.
>
> Reasons for this include: allowing allow time for review; and reducing
> load on shared CI infrastructure.
>
> Link: https://docs.kernel.org/process/maintainer-netdev.html
>

Thanks, and I will keep it in mind.
Aaron

> Thanks!
