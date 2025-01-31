Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4633EA23E51
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2025 14:28:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBE2780DD7;
	Fri, 31 Jan 2025 13:28:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MafHBEOr-6QR; Fri, 31 Jan 2025 13:28:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32E6B80D8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738330086;
	bh=q5zli5sbBam6huIUaPZwryeAQeuziQG3iPUjtURsiDQ=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=60S0xawnK6oz0jzdz5KN6Yl/Glo4uv+ntTnTxatNPDFWc1CyM/y6NX6ijw9L5vICc
	 PO90ZR1YFVFjGC/RbObrT+y2QasaPiBvIAEdkK6KxGoaGdUeP2El8nY4hpSerXYrWO
	 b0fIkbdGZYQ/22I0E6a8xhIxLtY4uPDxrRvSJvr3KecUxmYc9fAIuq1wLBpf7uFLzF
	 z1mkY5ErGNw6wyDWjFhx1gr0msJJqchy30qojyKt8ezguEvTD6OAZhm59KMqsb6jAA
	 EkZwKuIbbhA4qfHyjrIE9aq94fjlvdAm6gRwx5fkQ09EVFji6PrpmgvUYBF2AUG3lN
	 T6pjFYcxFAwuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32E6B80D8B;
	Fri, 31 Jan 2025 13:28:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0883416C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 13:28:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 03D31402A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 13:28:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OYvSROWnFQcV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2025 13:28:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0544640294
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0544640294
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0544640294
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 13:28:02 +0000 (UTC)
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com
 [209.85.160.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-675-en8dDIfYPqmYBDoM8zfvwQ-1; Fri, 31 Jan 2025 08:28:00 -0500
X-MC-Unique: en8dDIfYPqmYBDoM8zfvwQ-1
X-Mimecast-MFC-AGG-ID: en8dDIfYPqmYBDoM8zfvwQ
Received: by mail-oa1-f72.google.com with SMTP id
 586e51a60fabf-29ff7861ae4so169769fac.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 05:28:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738330078; x=1738934878;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=q5zli5sbBam6huIUaPZwryeAQeuziQG3iPUjtURsiDQ=;
 b=VDGqIPNRyXeU3Dd6HaZdWqP0SpEJrIvptIoZV4FewtnUIZU73ATtVOr8dI2hHT3moo
 kKKFn31J95imJjY10mq00SB4kTYTNSxCw4qVXes+TXYdudHowXHkKvMxXy0toR7BcmEk
 vVa8Rgp9g7nkwjGNWXpaC0Wnl/oy+0rfrpKwPZfjL1mXKYKnBxosiHBdZZx/+TZlkZCC
 LuT+CwBwkGdPD5ynDAEGH4PelrwSwFE8Eo9LN7zBKAMM+Ez0VAcoSrfI14CuBRYEWrpS
 nY+z+AIcZT/MHJFCfuzt3hTdF9O967xm1T7QTQFtuvn9dSpAnBxCZ5jAiN9sz/MncteD
 0qog==
X-Gm-Message-State: AOJu0YwhH+g26rQknvI2SvAmLox/QDVfr+PZv2JuDUkSXSJG6g6sr8hd
 /3w7WgjmR8RxnKmvY7QP9jjNoizvgbQqSMd5kFO/NZMsQxnqdlIm8KabtssPk0BNS6qqzhdehf1
 m0+VlqwtnJ/W8FSaZKexMh4rebZ4YQYiwzozrfqbeACnq5gjefoU3sIQ0Ghgye1IbVxtL+KUwCF
 4t7p6NF0FLQIdiLN/alU5NMjFR0KdBWGQ7FmNRjoXD3g==
X-Gm-Gg: ASbGnct3JbNa+PIIPsW2MKiCHYjP1Y8nFMJuckryLVZ+2ppS8EFpqsdDLn9n9CbVAOR
 HP2lKeOTS9nAwsaMEZJHFYyW6xjNxZLRFxYzrKt2PEU2IoCd6a2+ICTZn8zhepg==
X-Received: by 2002:a05:6870:c8c:b0:29a:ec04:aa18 with SMTP id
 586e51a60fabf-2b32f0009d9mr2671389fac.5.1738330078121; 
 Fri, 31 Jan 2025 05:27:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG93EksIKrZqtMWs+m48+jA/C18Dv0pUbqMSAKHV6HtHbjlmRgex2rs3T6OoO3lWnjOnDMVXXIZ2S+GapQQk4w=
X-Received: by 2002:a05:6870:c8c:b0:29a:ec04:aa18 with SMTP id
 586e51a60fabf-2b32f0009d9mr2671384fac.5.1738330077761; Fri, 31 Jan 2025
 05:27:57 -0800 (PST)
MIME-Version: 1.0
References: <20250129005301.1689141-1-joshua.a.hay@intel.com>
In-Reply-To: <20250129005301.1689141-1-joshua.a.hay@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Fri, 31 Jan 2025 14:27:46 +0100
X-Gm-Features: AWEUYZke1vB0GHbtHv6r3gOBlYwZiKcSFFHY_uE1GRDxX3NrN2i70dtBMzmGpkk
Message-ID: <CADEbmW17j8w8MtqccNtTwRhVFdGeMnKg-qHaApwjs1SWHCiTag@mail.gmail.com>
To: Joshua Hay <joshua.a.hay@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Jordan Rhee <jordanrhee@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: PHZzTQ4BTQm6t3aR1jo7mZzPeYHCvALW4Zap6ZrDzU0_1738330079
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1738330081;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=q5zli5sbBam6huIUaPZwryeAQeuziQG3iPUjtURsiDQ=;
 b=Pisw9+9cvv3zN+3FIeVyG9rPGvpbKI5mNA1hpoljdohKXmSJqLp6wwuGLJDLjAvspHVFKk
 qpObgbQJebpzSRnRErGSkEYffN+VIJW99zwdlAbIfVvxRitM05XrYbaVE6icJauZXOdYGb
 mmnIAj78Ild6N1QNdThSxtt2xlYqEE8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Pisw9+9c
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: move set_real_num_queues to
 up_complete
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

On Wed, Jan 29, 2025 at 1:46=E2=80=AFAM Joshua Hay <joshua.a.hay@intel.com>=
 wrote:
> On initial driver load, alloc_etherdev_mqs is called with whatever max
> queue values are provided by the control plane. However, if the driver
> is loaded on a system where num_online_cpus() returns less than the max
> queues, the netdev will think there are more queues than are actually
> available. Only num_online_cpus() will be allocated, but
> skb_get_queue_mapping(skb) could possibly return an index beyond the
> range of allocated queues. Consequently, the packet is silently dropped
> and it appears as if TX is broken.
>
> Move setting real number of queues to idpf_up_complete so the netdev
> knows how many queues were actually allocated after any open flow.
>
> Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_lib.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/eth=
ernet/intel/idpf/idpf_lib.c
> index da2128686564..6df7f125ebde 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -1280,6 +1280,10 @@ static int idpf_set_real_num_queues(struct idpf_vp=
ort *vport)
>  static int idpf_up_complete(struct idpf_vport *vport)
>  {
>         struct idpf_netdev_priv *np =3D netdev_priv(vport->netdev);
> +       int err =3D idpf_set_real_num_queues(vport);
> +
> +       if (err)
> +               return err;

I dislike using the declaration&initialization section to call
functions with side effects, but there is no hard rule against it, so
be it.
There is a possibility for a future cleanup, outside of the scope of
the current fix: idpf_set_real_num_queues() can be replaced with just
a call to netif_set_real_num_queues().

I know Jordan tested the patch with success and he agrees to being
mentioned, so you can add:

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
Tested-by: Jordan Rhee <jordanrhee@google.com>

