Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB021A56539
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 11:28:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 335C94070F;
	Fri,  7 Mar 2025 10:28:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IR0cTS7YvOtj; Fri,  7 Mar 2025 10:28:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E597406E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741343332;
	bh=T1cIrBe7Ura9LTOFC9H3HdVhePICrfHd60ZZ0KZtTWU=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jqMQqUEcRdcqQgdnc6VUTqPYRUQYr8zl7vyckE5dd0Q/QN/15X9Q/7JMRJnxGqvfL
	 zOKcmLvSo3IjYETNLLQQgY8RlM27p1aiLi+r60NXYdiTeoFvE8oLUkWn0TkBPzgvGA
	 Tlq6AG+Bq1UZB3lwfuP1ZeDL+NLRG7ZaD8DkC+7dnou9MutOe5cHereMv1OAUtbx+/
	 rGP0K+UOBDT70khmT8Je5964AdMFpKyUoZDvhOr43j6mg/B4md12rIEU9+xNdJGzw/
	 wcyifOwrZ6vJPU0viK3SUYxhhMYs17G1acTiccexJpZfg+1UG6XJfv7N0I2huvNC0F
	 Ig4YXnSznOdXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E597406E3;
	Fri,  7 Mar 2025 10:28:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 63C3E1C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 52C9E80C9B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:28:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JLHgB5n0_rKp for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 10:28:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::830; helo=mail-qt1-x830.google.com;
 envelope-from=edumazet@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E771381297
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E771381297
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com
 [IPv6:2607:f8b0:4864:20::830])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E771381297
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:28:48 +0000 (UTC)
Received: by mail-qt1-x830.google.com with SMTP id
 d75a77b69052e-475162ce281so14620081cf.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Mar 2025 02:28:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741343327; x=1741948127;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=T1cIrBe7Ura9LTOFC9H3HdVhePICrfHd60ZZ0KZtTWU=;
 b=hkXtaDUc2dwbkIXrEBFibmk8W75VqFUJHimCWC7WS9gq6dknhe0bNqGZabo9Jt0eWg
 Pi5bG8BvH9YZmZuFmVijteSYWuuErA7W2+mGIH6tplOdT9OAap1R9A9jLNvolqNXlq+Y
 +D3NH2HMWH4FuF+hmWMgn00+X48INnPUti+FPpawKS7rkB9LVKSbZig5xtK3UX3V4vs/
 jMDh7EOP+Iqgo869rbgECLX8PAyzHkAJCGpA+1akVMAeE0FskKxtW9VQcHrnMcZKLpOi
 sJrHxkornp8kfc8NZCwboVqjpwazzhogl/GhjIBHh1dulUqyd6PSGljnQRYApTfKxjUz
 WVkQ==
X-Gm-Message-State: AOJu0YxTXE+hkT2c0KBrXnt3aDS85VPfxvt62kfu3o1rbReCK/uwG1zb
 ZbF6PIdBr3M5kgBquktCbRkx+CQzdSSFEAbl4h73EjXnlQximnqVc57ydN9kKv6A1/+MlXqp+dE
 DmknRPsd8qVdoxLXcztxKIes0h1c/n6o1S9xH
X-Gm-Gg: ASbGncsQfFxnLzD7ZhPNwTCrsILYqjKKYhOvspICNsgJac0dQR+5jj+yxg1jFqTLIjr
 2bppi+HM1Ev78XiWajr8kUotDVu5qc+V5ofVfO7ucStPKu8C2grCCss9YUIHbq9r3U0eUmIdkbd
 T1s90c24UXFZ2R7MHlPVu1d9r1w5A=
X-Google-Smtp-Source: AGHT+IE8nkI+68Qgy6NjKoLj8c3bNZ3NiejGqaGqUFj0R2IzQEXjAp1CYnixCzSBxrmxoIGwPlxGnmpYBlgSoMnz/mk=
X-Received: by 2002:ac8:5f96:0:b0:474:f1a6:c917 with SMTP id
 d75a77b69052e-47610976675mr39528601cf.4.1741343327418; Fri, 07 Mar 2025
 02:28:47 -0800 (PST)
MIME-Version: 1.0
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
 <20250305162132.1106080-8-aleksander.lobakin@intel.com>
In-Reply-To: <20250305162132.1106080-8-aleksander.lobakin@intel.com>
From: Eric Dumazet <edumazet@google.com>
Date: Fri, 7 Mar 2025 11:28:36 +0100
X-Gm-Features: AQ5f1Joxdy5jdJHG0g5b6zsYWVs36X3IvHqKfWtxWUE390Z99JJhbzv1OtAO1TI
Message-ID: <CANn89iKyyayTrepHuPbnkhVpu3trkRohdKxeT8RVefP95wognA@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Michal Kubiak <michal.kubiak@intel.com>, 
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, 
 Simon Horman <horms@kernel.org>, bpf@vger.kernel.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1741343327; x=1741948127; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=T1cIrBe7Ura9LTOFC9H3HdVhePICrfHd60ZZ0KZtTWU=;
 b=akpRsgvfSxPRrtI9neW9rGkG/QeONiPX6rnlRNZtBb9jIO1TA5bqUA3eaonXrbg92b
 RdU7bELBaQEYMm+nSXqR8FKMSezR6ls7RDdqGehefkcY3aSKwsmTrJnU+l0e6JmIyQvU
 ZLS3oDePkoll9fr7OeghsQduj2fbVXt6V2CN0IY71huOyPZTM/+voQ3Y65QGDYNyUQ/F
 MaEx3gjIkJkQTM6zJ38tP3CExMg4jpKTXxD2ghJGCTUcx6M93Ku5rRuQdNOzzAcKAy66
 f2DhepnRv+31OAPlalgVcwOJcgjFm35ozDdViI6DxWI6VXvNTbQhhi5UaHYN7IV53f3p
 l2Bw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=akpRsgvf
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/16] idpf: link NAPIs to
 queues
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

On Wed, Mar 5, 2025 at 5:22=E2=80=AFPM Alexander Lobakin
<aleksander.lobakin@intel.com> wrote:
>
> Add the missing linking of NAPIs to netdev queues when enabling
> interrupt vectors in order to support NAPI configuration and
> interfaces requiring get_rx_queue()->napi to be set (like XSk
> busy polling).
>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 30 +++++++++++++++++++++
>  1 file changed, 30 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/et=
hernet/intel/idpf/idpf_txrx.c
> index 2f221c0abad8..a3f6e8cff7a0 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -3560,8 +3560,11 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
>  static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
>  {
>         struct idpf_adapter *adapter =3D vport->adapter;
> +       bool unlock;
>         int vector;
>
> +       unlock =3D rtnl_trylock();

This is probably not what you want here ?

If another thread is holding RTNL, then rtnl_ttrylock() will not add
any protection.
