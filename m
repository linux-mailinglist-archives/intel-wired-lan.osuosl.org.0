Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 75232B2B96D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Aug 2025 08:30:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA4A6407BE;
	Tue, 19 Aug 2025 06:30:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ohljd-TlGSpq; Tue, 19 Aug 2025 06:30:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67A73407B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755585056;
	bh=8BGkXAg/cYyaOt9ZXSqAWIYIeP5RwAQroBA7qi3xxK8=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0hv86S0K5fl3Kc+dB4K7N9qX9feWaZdPp7ki2m7WemdjUDs4FPlA1o9dGXBiGObKv
	 yv3nJ0cL7TcsDRqkfgf2KslnrXMp1E2O4BHTfmvTSOeNS8gXb3b+fduqMbFwwzEMYr
	 1mR0PY0fuWbddI8SdCnydhXp7DyH/C9Gry+YIDGRK6SKKHBWFfJpjKmVbfl2ETtNC6
	 vGZ3RbrDt5WatUY0F7X3Z/zEE3FPgF6I2VH/9tiI63Jy/an2BGnY1G/SqPn3n6r8/K
	 2LZHprE22LnJ4e0FK3XHxN6ucGjwoz5OYjxVV75yeOhKcW2awJXr8eizKY0kGxueog
	 OZDZbsu4YNQmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67A73407B6;
	Tue, 19 Aug 2025 06:30:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3AE02E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 06:30:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 213AB80F6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 06:30:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wpyOyu9unVOd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Aug 2025 06:30:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4EBAA80F6B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4EBAA80F6B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4EBAA80F6B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 06:30:53 +0000 (UTC)
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com
 [209.85.160.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-655-AnvvHCgONoWwU1GtHJ17qA-1; Tue, 19 Aug 2025 02:30:51 -0400
X-MC-Unique: AnvvHCgONoWwU1GtHJ17qA-1
X-Mimecast-MFC-AGG-ID: AnvvHCgONoWwU1GtHJ17qA_1755585051
Received: by mail-oa1-f72.google.com with SMTP id
 586e51a60fabf-30ccecf6802so3016523fac.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 23:30:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755585051; x=1756189851;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8BGkXAg/cYyaOt9ZXSqAWIYIeP5RwAQroBA7qi3xxK8=;
 b=OH32SGnifqMKNdKAMmOlIOyMWviZDLaIq2BktSJSRl86nibRykgBZBXV7Qyt4vhiTR
 /R/D2AHu30D6KEPvDkjG1UoyMrDGG1S2ymW6m8Qs6rsWrlxkB20HBvubcrEleWr4gYTs
 aH7I3MZezp3hrTuN20EWDZr4eIefCdGuNWMsbicy/OP4R6sKM+9JCPg/cC+lK3Gj3Ga/
 S/Yt03i45GQJfKzTUXW6UOR2tXp4kkCkUdKTR/gW0ZVHFiuAwRZ6ltw1RUlPqYxiFCFL
 MC2aU9NFdPLs74UNjZgWk/ZZAdXcm5isD+tq/WK4tF2vCroTxz6+O1rTbkF+u2Tz4XE3
 CYIA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW/9dG4ZGQc/fy3U8JYkKstVq0klsAKuwKRrzYrWhuBjaEuusMSrBAUXLbNdQnAt4auJ0CClCD/7bTH9IRENCI=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx5JSieTUk93jQWtiiWttJskf8WnGt3kt/WVSWB8ifLhyBgLj6N
 nqBwjuhm2HOUZCnKscr0U/5dPdVA87/Qq4X0HPkoLYq1ck4OzYyyWU1g3lc02g22m8n/m/oSjdx
 MZonOKlg1zSn5IdPRmEg1mXpbBXi5cedyd9Nm++ds24OtrpyNwD6loJ46otcNbS1cEJF7AyV2Nm
 7+t56Ofizpqadf4nk+JJCLzSZesILWp6i3aCqTtiejkeS9gg==
X-Gm-Gg: ASbGncu6cN4Xng7DzMEFMs+d1drorKZJKkqsXHGhUS5y1qdD0JGtT8zcwTqfv4ae/19
 W6e10kYs892R8gGqYPR8fZf1EhrTlwpXDHt64L9r8uSWAYEWkJMCm/e2eIKzjXK7oueYfcdoypX
 lOaymTpM6UX9BETvnanOQ0
X-Received: by 2002:a05:6820:1e8b:b0:619:b57d:6673 with SMTP id
 006d021491bc7-61d919e9f83mr444117eaf.2.1755585050885; 
 Mon, 18 Aug 2025 23:30:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE2NruEB0PpTboIZlO1R+deeNOAfR6szAOH8EjGkxNqMd5bxJ1wqDFHy3nGmYHV3yaIaLn+9Z6/t+ostF1mqZI=
X-Received: by 2002:a05:6820:1e8b:b0:619:b57d:6673 with SMTP id
 006d021491bc7-61d919e9f83mr444109eaf.2.1755585050578; Mon, 18 Aug 2025
 23:30:50 -0700 (PDT)
MIME-Version: 1.0
References: <20250818153903.189079-1-mschmidt@redhat.com>
 <aKNU1YnfNbXYhUyj@opensource>
In-Reply-To: <aKNU1YnfNbXYhUyj@opensource>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Tue, 19 Aug 2025 08:30:38 +0200
X-Gm-Features: Ac12FXzQ5_CEpGP7NZNYa6OiUyYr-nwrNxzE9x55g1guU5BoPDYablJy0CT5lZc
Message-ID: <CADEbmW1ayx8dKUmE=ueYTVwBme=m1E9WGOmpcv1MCquZ1yBgHQ@mail.gmail.com>
To: Subbaraya Sundeep <sbhatta@marvell.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexander Duyck <alexander.h.duyck@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: hlKClA3T-ybBR-Ch5YAFk3DsR4ShBFOPW3EXAX9x5Mk_1755585051
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1755585053;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8BGkXAg/cYyaOt9ZXSqAWIYIeP5RwAQroBA7qi3xxK8=;
 b=Xbk92i5ASqaCpl1SBGlt6WVhcnpJWwRRGd4fcW1mn5HRJ2Owhc9825gWhgQxIQay6588i2
 1YO3SeUIi97NkGJYvFZpPmA8HNXW9RYBM18Xbk4OaOeqMciqPSSVOnaeXSKs9JxFwejrWC
 KpSOIfFYCi0tnJ5n9BSmQtPQIXcAoY0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Xbk92i5A
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: fix IRQ freeing in
 i40e_vsi_request_irq_msix error path
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

On Tue, Aug 19, 2025 at 8:05=E2=80=AFAM Subbaraya Sundeep <sbhatta@marvell.=
com> wrote:
> Hi Michal,
> On 2025-08-18 at 15:39:03, Michal Schmidt (mschmidt@redhat.com) wrote:
> > Use the same dev_id for free_irq() as for request_irq().
> >
> > I tested this with inserting code to fail intentionally.
> >
> Nice. Looks like changing this in i40e_vsi_request_irq_msix was missed
> during 493fb30011b3. Just a question isn't this not throwing any
> compilation warning all these days?

No warnings, because the type of the dev_id parameter is a void pointer.
Michal

