Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CABDF97EF78
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Sep 2024 18:46:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ED0D940A40;
	Mon, 23 Sep 2024 16:46:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0ovxVZqx75rx; Mon, 23 Sep 2024 16:46:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1597340A3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727109984;
	bh=CBaBcZjvSjE2uqo1qSHWS8BMthhUAEogThtkqQHzEvQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UbyVCJcDurL9nob9ahODDMWGQ3wot3/wxFEldtSkcGqm56ldvo0GTwSGKxp085EFc
	 2U5aZLchD/jz/YF1Xz8hKOVeYbaQk/mXb8qFuAI1WUEJ4LZUYVHbg5DYA0Qfx1n//b
	 IzlRzWrNeMnNQvnwRpj5DyiBdFk+H7t/zUMprkKJnboscJm1gD9oAN/L1J5Mt2tbH+
	 XMsdbubdy52lIR45JyIJoCtQ1MzzObOFShka+IjcDcOw57vijZAZ4quX+ydJaQgP9L
	 3YHUll7QM497yL7LTRn8CgD3W3E+FehezGcwhUZvOSr0jV3sATRrJqzwJqyYGZa6oY
	 F8Sq7SvVrLEHg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1597340A3B;
	Mon, 23 Sep 2024 16:46:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A8AE31BF355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 16:46:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A353240395
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 16:46:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hds1L7BRrxMy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Sep 2024 16:46:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=wcosta@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B9FDE40332
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9FDE40332
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B9FDE40332
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 16:46:21 +0000 (UTC)
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-330-eDnNApHoOTe3y2bluzugOg-1; Mon, 23 Sep 2024 12:46:16 -0400
X-MC-Unique: eDnNApHoOTe3y2bluzugOg-1
Received: by mail-lj1-f198.google.com with SMTP id
 38308e7fff4ca-2f760cbd9deso31456321fa.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Sep 2024 09:46:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727109974; x=1727714774;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=CBaBcZjvSjE2uqo1qSHWS8BMthhUAEogThtkqQHzEvQ=;
 b=bvvkEsYMtUi+ZBZHk7z8FqoPoBjpogJ/YnMoXoClKY76MdiboPctZ4mTp15yybIUk8
 zrOwkIPaic4FlQXGMoIVh+mj/rt8MM8cI5cYjjRL/1PlAW/+BeiGdVnJ90nxrP82QW74
 tWdpJriY3RLmtW0AtQo2Y6/zOxiz0u721Ax5PTeRTWV2t46s4MDQPVNHbbtI9+Ob1Mpz
 A2qt2ibiHRqXXeKkV27r5TjQuJta8oT0rzyrLkiHgim5C0iSGJmGMBkbysDHcBO18amg
 P7unQ2Esc9C+tVKB4zu3jiqEQNuYCNnmv67/9akBqZNumAoIh8BC4Z9/yDgtTWU8BQa6
 yz4g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUI78HRmmTkU4cb8GgKsOJuR3eY44neL1LggW5mc3RqIKaZNwBYROS5quDLHy+dQh7tr2K/dBEwLf+AYkVEPB0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz5yjeY64v0xRmruX2rOuE0hWbTHIxZfVRK9eRkj6z6ysD7y/Va
 2tWrhXvmXufoBm4ny4QfrJCvMeCn5nt4f/XD1YJtv1+EnnbXTBKpUrEUuWHU1Kg0ettDOUj/Rtz
 Td7Y/Nc3VbQsyo3C5dONOO+YnnXxBmgWwQ6jpm8Fl6owjDMCYob9pdm4TrglqLQ/6a3Yu9/TNZq
 VY3rvHO5PT6tt2ZDaozpQoa3taVDrY1sOn8n1UFuLwOA==
X-Received: by 2002:a2e:824e:0:b0:2f6:6029:c63e with SMTP id
 38308e7fff4ca-2f7cc375a2dmr47198661fa.23.1727109974358; 
 Mon, 23 Sep 2024 09:46:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6qm7m3hWwtODGuDM1oa5WQCLNv0Y3IKoTB111Cx49PEhbpDmWp9BFnvuAJKnx3CHurDhFPWigvS/XiFS0BxM=
X-Received: by 2002:a2e:824e:0:b0:2f6:6029:c63e with SMTP id
 38308e7fff4ca-2f7cc375a2dmr47198471fa.23.1727109973965; Mon, 23 Sep 2024
 09:46:13 -0700 (PDT)
MIME-Version: 1.0
References: <20240920185918.616302-1-wander@redhat.com>
 <20240920185918.616302-3-wander@redhat.com>
 <7e2c75bf-3ec5-4202-8b69-04fce763e948@molgen.mpg.de>
 <02076f9d-1158-4f3e-85cc-83ee4d41091e@intel.com>
In-Reply-To: <02076f9d-1158-4f3e-85cc-83ee4d41091e@intel.com>
From: Wander Lairson Costa <wander@redhat.com>
Date: Mon, 23 Sep 2024 13:46:03 -0300
Message-ID: <CAAq0SUkeVkiit383065nhfCibn-CG701uvaM6UHpWu9RaZE83g@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1727109980;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CBaBcZjvSjE2uqo1qSHWS8BMthhUAEogThtkqQHzEvQ=;
 b=FRr4ALZOpyQpnWv+lbKtDlKIlkmFmyAB13JaKm0RT7k0mAeP+jpYLTE9XSj4nCj67rSrOx
 Xr4iZIGiq4rWjmNvlbw6GP2cVjh1oKvOcHr5dsPQ/O6QU1g6b5vm6pXclCsQYaPVs1C3Ui
 6xMK0QsUUhaljhD4Gqu8psPxOKr7vgw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=FRr4ALZO
Subject: Re: [Intel-wired-lan] [PATCH 2/2] igbvf: remove unused spinlock
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 23, 2024 at 6:04=E2=80=AFAM Przemek Kitszel
<przemyslaw.kitszel@intel.com> wrote:
>
> On 9/21/24 14:52, Paul Menzel wrote:
> > Dear Wander,
> >
> >
> > Thank you for your patch.
> >
> > Am 20.09.24 um 20:59 schrieb Wander Lairson Costa:
> >> tx_queue_lock and stats_lock are declared and initialized, but never
> >> used. Remove them.
> >>
> >> Signed-off-by: Wander Lairson Costa <wander@redhat.com>
> >
> > It=E2=80=99d be great if you added a Fixes: tag.
>
> Alternatively you could split this series into two, and send this patch
> to iwl-next tree, without the fixes tag. For me this patch is just
> a cleanup, not a fix.
>
> >
>

Should I send a new version of the patches separately?

> [...]
>
> >
> > With that addressed:
> >
> > Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> >
> >
> > Kind regards,
> >
> > Paul
>

