Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 060FA9C90CF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 18:29:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B685E84500;
	Thu, 14 Nov 2024 17:28:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a277StWVGmBJ; Thu, 14 Nov 2024 17:28:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16F7884501
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731605338;
	bh=EEF9eU09+Qb6BvC7qtMI4fadvfmR1JOTug6j8w0vouk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=76l4pvEap2gkWlQ1NXwiFUY/91tvSqOVL72FaX52lXNgztNeCCBG2D3lUiDZDB/uJ
	 IuKN6RTW08RhfEC4OarAT5Mvm4UyV5kOjEhEkwHVRy7o6TamSnM/3PWBiujl6KrhLp
	 p39t8uKKNNpuf/OUEaFcttH/xxi47m5PGj2UplBdu7dS2SZZf89Z4Yhk3FZf8OQ8aR
	 dXkN68IW8A6S5w410XGJchQmk2Vu9Ay9NLRBFqM5AErjJxFyXeZXdkgQAq6HRX+b9+
	 X/jpNQ+TuK2k6ACs2eVcGVzlSusjcgogwBc8fjernoR82OziQLqyIOqA8oAMY0u9zn
	 zi5a8qGOMD8mA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16F7884501;
	Thu, 14 Nov 2024 17:28:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D8D38BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 17:28:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C3B8F84500
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 17:28:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yC4Z4Lwzi6hs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 17:28:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::c2e; helo=mail-oo1-xc2e.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1679480B75
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1679480B75
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com
 [IPv6:2607:f8b0:4864:20::c2e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1679480B75
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 17:28:54 +0000 (UTC)
Received: by mail-oo1-xc2e.google.com with SMTP id
 006d021491bc7-5ebc27fdc30so417255eaf.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 09:28:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731605334; x=1732210134;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=EEF9eU09+Qb6BvC7qtMI4fadvfmR1JOTug6j8w0vouk=;
 b=vl0HZwSOfsYuUHS2m6t8gXPMHtGRP61rkeLiewJcl1aXEIe/iNcIcfC7fNJedaB0aE
 n8otAbLtPNjUhOklA3furJVX4HOSyf/H3I+if4HZOd38gaN7r16M4coET1TZkiC9xG8f
 L+1+MJWLoz7hpW/YkvMYpp6z4ghbzW8HDy0vftqa/9X2MaLPf/k0kQNzclxXkNbCKzuk
 qthRE9PgODYy5tgAyRV5d7L9ZJ2rt+dCI5Cf7y0kKeOZ6VS9YkRN9l0gG2bVPf68DjtX
 Mv9rb7O9ArfXlXg2S0mZ6ESwCa7Fj07j9kbmFZ9gkWyqpXG8Bv75vNqKsPLs2tChx+FH
 qwIA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWG+blGyG6GUzNdIdQtLckfz9MZzqNNI98gq59chySZanoxGrObMLWKC9KZsdcZQNyHXEH8MD1xut18TasUV7k=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwALH7Cx/jKafeaDI3Rm+vxhLe9tTIvL8NjmkCtSbsgD6O3Bvxl
 cIP3lJu2n2B/lmxh0NDP4alNgx2NlmWjP2GlRog7jjf3ixJNWgYI
X-Google-Smtp-Source: AGHT+IEO+viR92ZpwLR8rpkElqcZ3pZfjGvNKa05dgUWoumsIJYl0GTK81WtP6mzGleOLzmwUIWJMg==
X-Received: by 2002:a05:6358:5bc9:b0:1c6:99d:b832 with SMTP id
 e5c5f4694b2df-1c641ea6f9emr1347568655d.8.1731605333726; 
 Thu, 14 Nov 2024 09:28:53 -0800 (PST)
Received: from localhost (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6d3ee8c3d25sm7734416d6.74.2024.11.14.09.28.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2024 09:28:53 -0800 (PST)
Date: Thu, 14 Nov 2024 12:28:52 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Milena Olech <milena.olech@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <67363354c7ade_3244ed2943f@willemb.c.googlers.com.notmuch>
In-Reply-To: <20241113154616.2493297-3-milena.olech@intel.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-3-milena.olech@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731605334; x=1732210134; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EEF9eU09+Qb6BvC7qtMI4fadvfmR1JOTug6j8w0vouk=;
 b=nYixIqHMHb23jsyAse27Bbuu5B3o9h+FQ6KsTempg1WAE9N3nxqT407oHm6+9fCNGT
 AeOYuF8xd+GBfVh13axz8QSYN0u7qcm6RQKOXJ2ZRGSEaFApDyd1szCpHoyL0p33Ll6W
 rjHTpGOvQ/Jvfgtbwn7RB5LKyMdtBizgJNQUhM58maqXw41kWlSxmNnVP8a5pw5gtzCo
 TrMf34zrNz0qLT3V8Nk8sr/pioNl5q0T5/Ahsp1yfc6c+S8qNx0EpIBFT1uuMg3wF9py
 HW8wpWV/6W3NlpfOAxXLZFZI+3v0TBqTXZutiKGg4kCyu+enu9WAzS92ac2xtM/QqbKN
 iE9g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=nYixIqHM
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 02/10] virtchnl: add PTP
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

Milena Olech wrote:
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
> Signed-off-by: Milena Olech <milena.olech@intel.com>

minor issue, with that addressed

Reviewed-by: Willem de Bruijn <willemb@google.com>


> +/**
> + * struct virtchnl2_ptp_set_dev_clk_time: Associated with message
> + *					  VIRTCHNL2_OP_PTP_SET_DEV_CLK_TIME.
> + * @dev_time_ns: Device time value expressed in nanoseconds to set
> + *
> + * PF/VF sends this message to set the time of the main timer.
> + */
> +struct virtchnl2_ptp_set_dev_clk_time {
> +	__le64 dev_time_ns;
> +};
> +VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_ptp_set_dev_clk_time);
> +
> +/**
> + * struct virtchnl2_ptp_set_dev_clk_time: Associated with message
> + *					  VIRTCHNL2_OP_PTP_ADJ_DEV_CLK_FINE.

minor: virtchnl2_ptp_adj_dev_clk_fine

> + * @incval: Source timer increment value per clock cycle
> + *
> + * PF/VF sends this message to adjust the frequency of the main timer by the
> + * indicated scaled ppm.
> + */
> +struct virtchnl2_ptp_adj_dev_clk_fine {
> +	__le64 incval;
> +};
> +VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_ptp_adj_dev_clk_fine);
