Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 279ECA4A0D9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 18:51:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74AFA83546;
	Fri, 28 Feb 2025 17:51:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HB7ssybHOfh2; Fri, 28 Feb 2025 17:51:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D71E382F51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740765077;
	bh=i90O7/FHVyjR7MxsQSaYgobcsFdF6N1pl357JzY65Cc=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=k3TGBod5o1VRK6uy7/bAYJR5NUTgim/MVQQ2RdQig8USMCrfCYZlbldOH5Ik3kqP1
	 DC5LZ6M1kjJ5czG5IThJ1Sbn0bQ4OdfcZSTiRb5tWTr2KxGO+t+YZDHAwH1Ckm+BY3
	 qAEZ+23W8PHG0b2tsur38/ViSB0Q4axXJxqPhBP10cAXjEjtYX6O/0SznmucNGQb0z
	 enM7entvulFqjq6l0b2H8epxws7sUOEY1HGVcLXmj0LJ7LRXNxNyMEjNRD5rZi7xNs
	 H6QwtUFt430+f0/x31jqfBmCDwxN72swu++CfTGVv6+A5FV5lQqf+jl6XYtRPUm1Q6
	 ZPbFPecbv0KvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D71E382F51;
	Fri, 28 Feb 2025 17:51:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3C5C71CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:51:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A0E382A72
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:51:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kt46dHJbj_YE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 17:51:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C9F9D80FA9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9F9D80FA9
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C9F9D80FA9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:51:14 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-22342c56242so5005ad.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 09:51:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740765074; x=1741369874;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=i90O7/FHVyjR7MxsQSaYgobcsFdF6N1pl357JzY65Cc=;
 b=hLIpV7ulserD1zWqW9FZy0LHAro2u4dSprCHuv2jpY3jDMcZEF+nX1ZrETe3ILmQVR
 aZBjxVCE/xoAVnnAtOTmhM5JUpb0/j2+iZXmzl4F4SRb8O/2GA2HpTiMrMTNQq7J+ygW
 jdfBv1MZ8x561UJM8ad7McmMCHatlanocV1GIf1G6Ccx2yIS896RlgPDDgSFs3l99iTG
 td0t6ujIekLQS1/SmDwxV6uiBy4Sdt+OUqhlZBDHa32NXI7eSWZ+MD37XsH6188VA4G+
 ghFszepJIM+SJkQQ/gYD5vbOcsGPSQA/6buCOusR9J58FypkhxyqlLzbvv/9C5065PJC
 JDSQ==
X-Gm-Message-State: AOJu0Yzdqqpds2xmkaWZL4kZBkbIvAMuhnNBnWIcBn6rzuFm/teRYw4Q
 jxPSmhMQf2uv6XxqwOVvmzfz6u9Q+vXfmcKyZoYqeF8YxkIsU8Z5UUqojXQZ+MVqAPsrIhn0DCC
 PsJfAMgT3hblxG+k0uqtrz3fDQ3z7gisKVedf
X-Gm-Gg: ASbGncsThSA+pxxC12mu/fR/e3gD3ZPAD9f980DJCuC8pdS9xNyBJsbDrA2/xHbVtKn
 z7tH6TaOGtYzXPMlU2ZkiMZRffUKLYps8gpPUf+jFVFmIcl7o/vY9OOPEfm9XrdjgGgeEDkdt9K
 c6qMNipabrLmpeYQZJsGbXLPXgBOIUY1aqcEMDpg==
X-Google-Smtp-Source: AGHT+IFIdw83qwu5qQ7M0jSYLWA4Olvd7iOt6Uf+OiCdfuQjWjOsUe1tAjJCuFfQTQUfhDBz6gbEFI54iOYT2Q9LP8Q=
X-Received: by 2002:a17:902:f693:b0:216:21cb:2e06 with SMTP id
 d9443c01a7336-2236cfcbb24mr2629715ad.19.1740765073781; Fri, 28 Feb 2025
 09:51:13 -0800 (PST)
MIME-Version: 1.0
References: <20250227131314.2317200-1-milena.olech@intel.com>
 <20250227131314.2317200-2-milena.olech@intel.com>
In-Reply-To: <20250227131314.2317200-2-milena.olech@intel.com>
From: Mina Almasry <almasrymina@google.com>
Date: Fri, 28 Feb 2025 09:50:58 -0800
X-Gm-Features: AQ5f1JofnhFYf0RWrJwwbqdsiCN-tSJuCWfQ9-QLmtpIZzBiaBKZMC9Rgc5PCZU
Message-ID: <CAHS8izMCExz_8Hnz3-Hg8EdyqoiJY8viMShKeRAsRC4iqGsLBA@mail.gmail.com>
To: Milena Olech <milena.olech@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, 
 Willem de Bruijn <willemb@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1740765074; x=1741369874; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=i90O7/FHVyjR7MxsQSaYgobcsFdF6N1pl357JzY65Cc=;
 b=Rw73Ib1uXjec88aG69sdbN/PXNeTT8naVEkjK+nJi2HtSZpTOVmxLrwZU3lciAfPsz
 rr8JG+qmCDvBBkMAxMAwccQ3MktZUvSJco2jhR/zwlEtVlSepSuJwxqOgso3lP5AYq3e
 YZfMe2cj1r3raZK8oWCNkUFnrPFQe3pRjzPPmrug8VPiLgDO6Wf8kZjR/mcyV3Ka/1uq
 +TceMp0fC/IRXcDXZuFbeuzNeoZZmTA1Zpt4r/qB3NpmF8dcipCqlf5q6WntT7H6BW3Y
 3AlLUhNF28cWt9XXg2Xesc/uPrU/qoasBPhwEFuc6JmehTMqc7DeTyPxBZjkmCMnUsJo
 FoPg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=Rw73Ib1u
Subject: Re: [Intel-wired-lan] [PATCH v8 iwl-next 01/10] idpf: add initial
 PTP support
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

On Thu, Feb 27, 2025 at 5:16=E2=80=AFAM Milena Olech <milena.olech@intel.co=
m> wrote:
>
> PTP feature is supported if the VIRTCHNL2_CAP_PTP is negotiated during th=
e
> capabilities recognition. Initial PTP support includes PTP initialization
> and registration of the clock.
>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>

Thanks Milena!

Tested-by: Mina Almasry <almasrymina@google.com>

--=20
Thanks,
Mina
