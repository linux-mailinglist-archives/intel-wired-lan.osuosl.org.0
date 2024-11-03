Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B83A19BA961
	for <lists+intel-wired-lan@lfdr.de>; Sun,  3 Nov 2024 23:51:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E32440357;
	Sun,  3 Nov 2024 22:51:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Ln4srb3TJmT; Sun,  3 Nov 2024 22:51:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88FA340354
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730674265;
	bh=vbZ+uzGqdW4hX03Xi3d7fgtT2grFuBySNiXCV4fiIF8=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=B+ld1B3uvG+olV82BErBX+ILOsuanUdjfWxhcmnqfco17U0Y+PoCBTbiYvtL5uM++
	 r/UxMrofKAQY2LDl0bpabTNUpq8trsjkOGy65Sc5bJiHoQNdN2U3LdJ3iYbqSDa1Tr
	 Sl2/ibQbIBva5+xQwbdFN7jKv2HLCBgexpOe1mmTicRtDQqNk+7oy1YRDBtUXI87j+
	 IIlF1LKT11XSRa+P5QWSc9CT8uxcrsWOCZlSb5BV27dm2h+OgdqkVEFxwk8wOyB4py
	 zg8AggFLRIIiNKc6oTDMb/G8BidGmXopxAp3OPfPmdZ4yLazHQA7hJcY6xe4UDUNMC
	 /e+2idKyqrj8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 88FA340354;
	Sun,  3 Nov 2024 22:51:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D0C4B962
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Nov 2024 22:51:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B235A80C1B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Nov 2024 22:51:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RaGQFtSCXTnA for <intel-wired-lan@lists.osuosl.org>;
 Sun,  3 Nov 2024 22:51:02 +0000 (UTC)
Received-SPF: Permerror (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1030; helo=mail-pj1-x1030.google.com;
 envelope-from=csander@purestorage.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2916380C0E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2916380C0E
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2916380C0E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Nov 2024 22:51:00 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 98e67ed59e1d1-2e2b4110341so354475a91.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 03 Nov 2024 14:51:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730674260; x=1731279060;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vbZ+uzGqdW4hX03Xi3d7fgtT2grFuBySNiXCV4fiIF8=;
 b=bZEcSKQbhsNIGKBME+AOGfVBUjmVe30XhtKe0KpQ6W0ft1pUljOLl/nZ2YOk4JJ0mp
 MlVLZ41TSyBYK9fM1oCQQhQopCrpDS5X5d35sqgrVbYf3NEZ5lptkNgyCxSbn3Cx1KST
 uHvdHrl8TmXqKwwOzLlE2AxAqwRTzFU7a1TvcQ5V8lsNCZbEooFSfWKS1SNubG6SA9u0
 xOuYdqZ0GQ8TXgZdX09fNkTUzhL6cSpXawZqeAGfI0gRCf+dpMyoNDdVrR/bRsSaBXiR
 DskSLXT3BCbnAR6v1gOxg9bALQ2OlPzEQFFv2bMG4EbM+kNvSYkiIJh1nz95lJwQzXe8
 8UHg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVjrZGQuYc+Rimtq8v+h7Iso66K1cclNk1ok/U3vjXrzBtgNC+zv06ehJdU7MjHlHoNRk/290z5mI8lpPjnZ9M=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwVnuDzW4BAp7ifZed9vIeoC1xxO0g1HEkgNJPj0SbZERBomyFO
 H7Nf3pEbtQ1JeEpLZX5F7sV3hB7ONO5qy0y4vi2JZykYlbr8Kf4YQ7AFwSmQmgK85rzelHYBkS4
 WO9ni6O2igM+lxfWUqiMQZaHD+5LrvyR0FZoJwg==
X-Google-Smtp-Source: AGHT+IFUl1GCcoqWHoZYbz+qEG71KEMvn1Im+9ZYr+neR/oxPoOmgzFQQqZYN0kcHlFEkQf/7jeXNqXwpJVr9GMXuU8=
X-Received: by 2002:a17:90a:e511:b0:2e2:e139:447d with SMTP id
 98e67ed59e1d1-2e8f0d62425mr14589494a91.0.1730674259424; Sun, 03 Nov 2024
 14:50:59 -0800 (PST)
MIME-Version: 1.0
References: <20241031002326.3426181-1-csander@purestorage.com>
 <20241031002326.3426181-2-csander@purestorage.com>
 <20241103122138.6d0d62f6@kernel.org>
In-Reply-To: <20241103122138.6d0d62f6@kernel.org>
From: Caleb Sander <csander@purestorage.com>
Date: Sun, 3 Nov 2024 14:50:48 -0800
Message-ID: <CADUfDZpBfwGJwhUHCZk8AgZDY0QP3j2dEUHZfC1VkR+75jj2WA@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Arthur Kiyanovski <akiyano@amazon.com>, Brett Creeley <brett.creeley@amd.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, 
 David Arinzon <darinzon@amazon.com>, "David S. Miller" <davem@davemloft.net>, 
 Doug Berger <opendmb@gmail.com>, Eric Dumazet <edumazet@google.com>, 
 =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>, 
 Felix Fietkau <nbd@nbd.name>, Florian Fainelli <florian.fainelli@broadcom.com>,
 Geetha sowjanya <gakula@marvell.com>, hariprasad <hkelam@marvell.com>, 
 Jason Wang <jasowang@redhat.com>, Jonathan Corbet <corbet@lwn.net>,
 Leon Romanovsky <leon@kernel.org>, 
 Lorenzo Bianconi <lorenzo@kernel.org>, Louis Peens <louis.peens@corigine.com>, 
 Mark Lee <Mark-MC.Lee@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Michael Chan <michael.chan@broadcom.com>, "Michael S. Tsirkin" <mst@redhat.com>,
 Noam Dagan <ndagan@amazon.com>, Paolo Abeni <pabeni@redhat.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Roy Pledge <Roy.Pledge@nxp.com>,
 Saeed Bishara <saeedb@amazon.com>, Saeed Mahameed <saeedm@nvidia.com>, 
 Sean Wang <sean.wang@mediatek.com>, Shannon Nelson <shannon.nelson@amd.com>, 
 Shay Agroskin <shayagr@amazon.com>, Simon Horman <horms@kernel.org>, 
 Subbaraya Sundeep <sbhatta@marvell.com>, Sunil Goutham <sgoutham@marvell.com>, 
 Tal Gilboa <talgi@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, 
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>, intel-wired-lan@lists.osuosl.org, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linuxppc-dev@lists.ozlabs.org, linux-rdma@vger.kernel.org, 
 netdev@vger.kernel.org, oss-drivers@corigine.com, 
 virtualization@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google2022; t=1730674260; x=1731279060;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vbZ+uzGqdW4hX03Xi3d7fgtT2grFuBySNiXCV4fiIF8=;
 b=b9HbbapBptO6+WKuCQ9LOkDyAdfwxGZPywuM6p0G9AT7ywH0LavZ+20EantWYP16PC
 ZNTv0y2G/sc8o5ScTrfhvqbT11m1pu0ZDDl/l5zUjWTxq/cvcd48vGZWRlBTot5X3v1/
 zXWw14xPHPjo6gZj4v9rianBS1uorokYdjeaBbUGZTK2RKlbGkNjcQIHtTZITFWphWcq
 C7RMPRIdQpmJjfJJUxp3RWAVI7Ba2mwU0aNzVa16kFwSFjD6prHINWF4NtCA0aT6P/Gd
 vcvRxV4QT8cLj29Hb/dYMBrVZr8h849Cdo7jV3dB/o5eyBbvFCONE9kJuKm5EWn/2WuA
 bGyg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=purestorage.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=purestorage.com header.i=@purestorage.com
 header.a=rsa-sha256 header.s=google2022 header.b=b9HbbapB
Subject: Re: [Intel-wired-lan] [resend PATCH 2/2] dim: pass dim_sample to
 net_dim() by reference
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

On Sun, Nov 3, 2024 at 12:21=E2=80=AFPM Jakub Kicinski <kuba@kernel.org> wr=
ote:
>
> On Wed, 30 Oct 2024 18:23:26 -0600 Caleb Sander Mateos wrote:
> > In a heavy TCP workload, mlx5e_handle_rx_dim() consumes 3% of CPU time,
> > 94% of which is attributed to the first push instruction to copy
> > dim_sample on the stack for the call to net_dim():
>
> Change itself looks fine, so we can apply, but this seems surprising.
> Are you sure this is not just some measurement problem?
> Do you see 3% higher PPS with this change applied?

Agreed, this bottleneck surprised me too. But the CPU profiles clearly
point to this push instruction in mlx5e_handle_rx_dim() being very
hot. My best explanation is that the 2- and 4-byte stores followed
immediately by 8-byte loads from the same addresses cannot be
pipelined effectively. The loads must wait for the stores to complete
before reading back the values they wrote. Ideally the compiler would
recognize that the struct dim_sample local variable is only used to
pass to net_dim() and avoid duplicating it. I guess passing large
structs by value in C is not very common, so there probably isn't as
much effort put into optimizing it.
With the patches applied, the CPU time spent in mlx5e_handle_rx_dim()
(excluding children) drops from 3.14% to 0.08%. Unfortunately, there
are other bottlenecks in the system and 1% variation in the throughput
is typical, so the patches don't translate into a clear 3% increase in
throughput.

Best,
Caleb
