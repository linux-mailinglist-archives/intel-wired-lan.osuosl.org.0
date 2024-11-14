Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9109C9325
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 21:22:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0679B60894;
	Thu, 14 Nov 2024 20:22:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GkxfQ5HyXokr; Thu, 14 Nov 2024 20:22:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56F9360722
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731615762;
	bh=ZOlmB5J+6Xy6IyTceexxuS4n1USSRrI4Qc2Sw0owsjI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oV5ddSG/OmUGi8P+/VIG4g+DNVkov906lzv7q8xjsRVpKjN0bu2ppWOYQ9+QzlYdv
	 yELwQAZv1ol2XGpoNNuKblMBuNAS8GE+oWtL4dPPGAlbNvsyw8qUq4wS8L4of9IAK6
	 Fs5FZEWaJSaNVnBb7QqlFzOzc0qsdmIjBeS0JFPlcKTGbefEJCj+b3vPQzOZwEvvTN
	 NEaVu1RJujIAKxL5mzx4EEem8+BxnG8YFColxkpgZqJyE9rgyHjjpi6dfX/AuysMcx
	 V6rdpf14oVI9zAvvJQEoZCCwWDJKs0h2Ebn6fCfdTjfaQLgarvDb6NGWOrzh9jXn5W
	 J+T1h79NTNlEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56F9360722;
	Thu, 14 Nov 2024 20:22:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D9938968
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C7BF340792
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:22:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VjuDw6u5m1iL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 20:22:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::734; helo=mail-qk1-x734.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D933540791
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D933540791
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D933540791
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 20:22:39 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id
 af79cd13be357-7b1418058bbso64377585a.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 12:22:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731615758; x=1732220558;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ZOlmB5J+6Xy6IyTceexxuS4n1USSRrI4Qc2Sw0owsjI=;
 b=aI8I0P7/gIkGs+hxbCemnR7Q6glqKhWZ1HKnc+4xNA4zLzPvXaQfZ/Q01Qf0/Lxqo9
 98LGOdkq3tl8v26AO7w8nQh8pe49ZC/4RMCYNqwFDreDnnf9PBFw9UObJ8zowc7t3RtS
 9DTnne7tUfncXENFCBrMOqfn9pbZadrALhDuFV/xOkAYIg63irGTGmti1vDM8Cxd6YQ4
 xm5OR2Uuhhn+O1xtPZHbIG7GZGfy+nO9S59LbvbZkoyQn3yHu06qyAAmCTxtZLtz+Nru
 egkSbJk0Zwzv8EaKL0qAsYqo37PCxpni5K08MV29MlI4xyigIPo/CQ4qDYDfuJnqz/Ro
 zhTQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVU7bsJCvqf9zaQp5BWR2kgq5i2pFb5FKBA8UpMUoJ9mXFVbCUFkpmQInVTwV9vVqBpj2bjIyk3pRNUWK6iTkM=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyi/TONgoZssWueFf8jpxLrkPW2IftUrMRIra4HmNmioWHMHAk1
 ToPDgddrz68ObrnNWTE/BZQhAAd4DuyWDjf3NQ9gCqG4Jf/F8JOF/IY5eA==
X-Google-Smtp-Source: AGHT+IGgNCe6QFjw1pwFKlAztZ1U6aTC+kL7jmsJ5wY+36xmNtAQ/2ZtQwbp14b4fQTPSooDBN1QRQ==
X-Received: by 2002:a05:620a:1910:b0:7a9:b268:3655 with SMTP id
 af79cd13be357-7b362330b31mr28732385a.43.1731615758592; 
 Thu, 14 Nov 2024 12:22:38 -0800 (PST)
Received: from localhost (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-7b35ca50cfbsm86105485a.108.2024.11.14.12.22.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2024 12:22:38 -0800 (PST)
Date: Thu, 14 Nov 2024 15:22:37 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Milena Olech <milena.olech@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <67365c0dbd303_3379ce294df@willemb.c.googlers.com.notmuch>
In-Reply-To: <20241113154616.2493297-6-milena.olech@intel.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-6-milena.olech@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731615758; x=1732220558; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZOlmB5J+6Xy6IyTceexxuS4n1USSRrI4Qc2Sw0owsjI=;
 b=eBbRm/Kgk26z40fBUzgVLLIEKvig/kIoDIf9lP+th2cyhCOFhsL2TTNZjRRWcz+Cv0
 4lJquJntxGeq6OcbOFIVoqkkEGnYP6e09tv6kBSyicYcyuQn/SeDv1oSK7qaHI+BkVjk
 YdWe6ooykRlR9b4OFPU477xJT/Un7x/DOBaXP9+aWNo9jEmBSFrPZ+htlDp9Lz5xEWyh
 VpgqaAUo3VB12mXmdhrNWkiNt0LAbQQgp6Bl9Hf+/2qjhUEQBGcKnPWEh4WAB5upKNsi
 ryiJ65iTY8iHsePVs27ARHqnKT7s1I5DT7DEQlDTCtBk9zeMw2cyvsvKBM8sI6B61npE
 C55A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=eBbRm/Kg
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 05/10] idpf: add mailbox
 access to read PTP clock time
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
> When the access to read PTP clock is specified as mailbox, the driver
> needs to send virtchnl message to perform PTP actions. Message is sent
> using idpf_mbq_opc_send_msg_to_peer_drv mailbox opcode, with the parameters
> received during PTP capabilities negotiation.
> 
> Add functions to recognize PTP messages, move them to dedicated secondary
> mailbox, read the PTP clock time and cross timestamp using mailbox
> messages.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>

Reviewed-by: Willem de Bruijn <willemb@google.com>
