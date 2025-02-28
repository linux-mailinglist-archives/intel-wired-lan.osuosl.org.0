Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A491A4A0F4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 18:54:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D55C283196;
	Fri, 28 Feb 2025 17:54:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HHUL4Ns6CjgY; Fri, 28 Feb 2025 17:54:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3231180E4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740765256;
	bh=u1+7MTEmNylFc5L9CoXkBtTmEDDPTyP3nTJh0lf/FAc=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Dkskl6nH/2pEZ1DXyydsLKAaIYZB/jgcjXt2pRvjKYLnI+SBPI1HDRqx3bBtRx4Fu
	 i2NzNmkR/cgf6zSjLRuMSqj2QvoWdYafsCp0NogIHatYgCnPSmcIW403f2p+k6qucw
	 XeIM8Jr5JfprsYo8G1QFIwvk3rYtWrhsThW+ubNrrG1t/IrQX75v9VvDXPKAtlex9u
	 eB3lJbDMi3N2GkhbOv77/HjveLRKHrQAs8GocLCHG7i2zWjs6Kb1V1QRBbMQW71dzE
	 DkdZfUvzKWskApg2M2HLbxmF9jtz8VXYYOzgU9j8xthsPdIt3dkX8TRKmZVFzcEhIQ
	 C2zbTVCs5zwvw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3231180E4D;
	Fri, 28 Feb 2025 17:54:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id EBBDA1DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:54:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DAF2C4071C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:54:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PwVVNHJ6-vPT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 17:54:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::635; helo=mail-pl1-x635.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 218764070B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 218764070B
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 218764070B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:54:13 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id
 d9443c01a7336-2212222d4cdso4935ad.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 09:54:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740765253; x=1741370053;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=u1+7MTEmNylFc5L9CoXkBtTmEDDPTyP3nTJh0lf/FAc=;
 b=dlSTGJqbVmQ0ouezniCQX1O3YMxPYXYrx/ECBIx69erGBoJWjR+3rge42jgbmeSEQz
 clLMWzkZMq5hgbRH7ifo1oKMAQxif6er5wXbfqpj8wJ/sgyWhi/yd4ASvkGp+fI4UsIC
 L+PeMsS27f6OMgQTL/mKeXICXth7a7P4ZKbQr8FqhtseEmnjpjfZd+9/B6gUzfFY7isa
 4Qhj+HrAfJBu/XsguInt8ppPxF1ALiPxLP9m7/t0FQxcRLmHeqef/6o+ZhfpwkJ8I+K4
 +0HEpWeYEWBEyepqM9VbRNmr3q0QtVQT0fZD3ewkxscWFCpSfCluBUXNAbWm5zB5psaG
 uafg==
X-Gm-Message-State: AOJu0Yz/QxiOLiOet4JL2g56iCqW4CdUGTk/420uQFD0K6aWoAmZrKzq
 mwg2uLPf9GBQr3WuzzAcib2lHfwJoIMtzt/Thdisw9d4hn77wwYHedbenpYXemwBx4t6wBplmSC
 r03JZMO4gpttxH+KclR7CtIg7yTNb+SeGQ00s
X-Gm-Gg: ASbGnct0LzGbQ10fxdAPKyJBFcHjPxCG4o2zR27+HJXHTnWcl7B0ukussaYksm4i6UM
 h26Fm3I+RwIvHqHDaWqSVIaqyzhgqcOxa0BR2gtc3u4sOv/gSyeDJF7MH4ypNV5q6g1j9sOluKI
 pQxgx4j2R07+PG6ZxZysRlhqg+hj8QBvlOPdNyHg==
X-Google-Smtp-Source: AGHT+IEvTaXlDasEqbeEQGkrtVNWGlGALAci/M96gPscJI/Q4KdgYr6oOPPlkSKal1HsW+odkXQc7CCR/1T+AEUYwRM=
X-Received: by 2002:a17:902:cec8:b0:223:5696:44f5 with SMTP id
 d9443c01a7336-223696de90cmr3320855ad.12.1740765253140; Fri, 28 Feb 2025
 09:54:13 -0800 (PST)
MIME-Version: 1.0
References: <20250227131314.2317200-1-milena.olech@intel.com>
 <20250227131314.2317200-3-milena.olech@intel.com>
In-Reply-To: <20250227131314.2317200-3-milena.olech@intel.com>
From: Mina Almasry <almasrymina@google.com>
Date: Fri, 28 Feb 2025 09:53:58 -0800
X-Gm-Features: AQ5f1JrO0hjup0i30Abxv6Jk8dkcSZFXP0H5NDUSmK79wgbylwsq--nAdPO1I44
Message-ID: <CAHS8izMXC-ZigZG+R1jrd4i=ZDe_cgUjgBhZa6px2JUryGTN8g@mail.gmail.com>
To: Milena Olech <milena.olech@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Willem de Bruijn <willemb@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1740765253; x=1741370053; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=u1+7MTEmNylFc5L9CoXkBtTmEDDPTyP3nTJh0lf/FAc=;
 b=L5oZP/fXg2WXwH9rBDtn2tuWB+P8YoWZngRZCl2KVG4/En+8I2PRp9oOImtBXATEe3
 Zd0omX1gNEInFcVOpDBd2UCgyKibBp7ogP2ChypyTAldDA9VTDT7X1TWxTOxaQS42PFy
 cWv3GTL8zY3Xqgow2i2TInb9d2+m7T1ELKapP4M3Bo959yXrEugl2QifazWXYK0tHQtv
 27IxOuqdQVsBGiqVBNEYtgbF1+joadnrZixFrDzisk+xRPlGfjTSmWI6yvXAEbasSVHS
 M1D/i122oFExuODc6O4FKhxHadQXjQXQRJkMv8PVgwCkkEctjmxcVJXQfN+RCp78wKDV
 DQWg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=L5oZP/fX
Subject: Re: [Intel-wired-lan] [PATCH v8 iwl-next 02/10] virtchnl: add PTP
 virtchnl definitions
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
> PTP capabilities are negotiated using virtchnl commands. There are two
> available modes of the PTP support: direct and mailbox. When the direct
> access to PTP resources is negotiated, virtchnl messages returns a set
> of registers that allow read/write directly. When the mailbox access to
> PTP resources is negotiated, virtchnl messages are used to access
> PTP clock and to read the timestamp values.
>
> Virtchnl API covers both modes and exposes a set of PTP capabilities.
>
> Using virtchnl API, the driver recognizes also HW abilities - maximum
> adjustment of the clock and the basic increment value.
>
> Additionally, API allows to configure the secondary mailbox, dedicated
> exclusively for PTP purposes.
>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>

Tested-by: Mina Almasry <almasrymina@google.com>

--=20
Thanks,
Mina
