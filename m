Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAED0A4A0FB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 18:55:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6228D80E96;
	Fri, 28 Feb 2025 17:55:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 83hFBxSeYQnV; Fri, 28 Feb 2025 17:55:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3EBC819E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740765301;
	bh=qIScX6G1RamoApJoGxvhjX9qSLaNfMeqnBIhg09ZUm8=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kUbp1gKSftFWXLvvoLj0wbuO0Jeza/Ud2JpHes1eKWmXAeq4SRr/JP44ZtpXAxVoW
	 urNExhUJCjkNlLQkaA8pJFcCn7LxhtHR9Trvse4Okg0cSAsb4XW+knyzBbHduTlZhi
	 lizS6u4+aKJYj5yWVjaXdZuC0A5hAfUXDHMCol/gCPnOcCwUNkLzqqFQh05FBSpDGB
	 uLK4uMp33NmBoIoRAvaNPnKw4qMyAlFYRf74wRloKLKJw7Crr5K8JylLlptu1hlNA0
	 HNES8U9+p6+72booA6ShLZVv6BzdGmQRdcCqh4IRBFlh9sksV8mMipTw82SCpKiB5a
	 HMlwELNxPBKEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3EBC819E6;
	Fri, 28 Feb 2025 17:55:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5FA351CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:54:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4F5F660B34
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:54:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g0MksHUCPUOC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 17:54:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::630; helo=mail-pl1-x630.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9067960861
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9067960861
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9067960861
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:54:58 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-2212222d4cdso5155ad.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 09:54:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740765298; x=1741370098;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qIScX6G1RamoApJoGxvhjX9qSLaNfMeqnBIhg09ZUm8=;
 b=cNiujsiJsnUqt295EeQ34YPz8i6WbA3mg7pciss8AkfKH9Vj+YF99ygO9vhOy5NiUz
 RuOHBoLN/dlcG/ytaPMheT9YdrGuaThqK5pj/4Y/YvHpowqS1JxcSI31zOoEudZIqXAs
 bzlaq+tCUVhSBFGPyq48viO82UlOEIY6I2o6v/l3oznHnuYSzUGCAV8hxn1DeeArnvGN
 m+xhwoNd+jPiLahnIFT0GHMZ81Rm/kaauFEsMzjE7SLav8EWb7qwSFxSsB/Y/52Ntb0/
 IO7P8izTlsi8Qlvg1bteJoZP+ZMbCsAeQLFlwhvGNVq/GnTW91UGl76efW5EiJr5dm69
 S/FA==
X-Gm-Message-State: AOJu0YxRqhm/TALLIOQQ/tU5c6MsBQ1L7PwcMxgjdiUG6aKsFTfIpKRl
 bll4DbOnuqKyj5FRYJSQjGa4JW7i+9sNC6nUpsaH0erjj1zSogSKjwiIhOroSpN0X9lbtR9UfVX
 FYyTi9RnYQYXyHu38E8QRJmVCMJj9VV874BkE
X-Gm-Gg: ASbGncsK/GO8IKd5+Gf7hdO0ZnCTToHQzlPPQbBL+pxHG+14R/3QeGwCQDm+8vQtRSF
 UtPKM19o7CLXrqt9YgbHekVN1ONJOWcTB+FpZJkwbMriWYIDVnNYM3+kDdqYBQwwkrqY1RaI53w
 bbuMDLiJutyvgDAq0GI0VeFBsG9fDO1VUp15ZCKw==
X-Google-Smtp-Source: AGHT+IEQOJWoiHBLlY+OBSp+FfF2e6Vvh2SlU9XLXoOwfdT2K/cTBUorvtZo+79hZ09+O0XxYsR/0ZRUmHyHP1hbkN8=
X-Received: by 2002:a17:902:ced0:b0:223:4b4f:160c with SMTP id
 d9443c01a7336-2236cfd6f1cmr2562925ad.27.1740765296313; Fri, 28 Feb 2025
 09:54:56 -0800 (PST)
MIME-Version: 1.0
References: <20250227131314.2317200-1-milena.olech@intel.com>
 <20250227131314.2317200-5-milena.olech@intel.com>
In-Reply-To: <20250227131314.2317200-5-milena.olech@intel.com>
From: Mina Almasry <almasrymina@google.com>
Date: Fri, 28 Feb 2025 09:54:40 -0800
X-Gm-Features: AQ5f1JrjozivfMV_vs3SVqKxqI7bRsLayto22ccQ2rTXKesMaXJ_aBDF_IkzwUY
Message-ID: <CAHS8izMzi5G_tQW2h7RR2vvyPLwRV7vx-DQuPMnRypKCmh+x-w@mail.gmail.com>
To: Milena Olech <milena.olech@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Willem de Bruijn <willemb@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1740765298; x=1741370098; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qIScX6G1RamoApJoGxvhjX9qSLaNfMeqnBIhg09ZUm8=;
 b=lsnMiT4BYRN2B+SwqNEJp4z75onjuzeGqYcfT5LOBc58UiI2pr+2l23r5CYMsY8K8K
 J1QtgS0PW7Qo9oAHPehMTtGpxJmzNpVkbFDLydYOCrhmoMhTADnU+I5dWnok/sVX6vR+
 A/lkwcyK5QEU2vfQLZHCxUu4FCkkyZjkXFiP/pmE3qZIGAUII5r39595Un4ye+O+o2ie
 /ATkH+LVkNVhJZngOImf6yCGYoM2+AhPV1qHurldow9pghBT4ax/eF2wO5WWHF03LgeG
 RGpeHrFSJEwrcfmmHRhILNEI6AOWH7tfeoWtxrkby5HQNJ+C8/V7LCgz/gR8YLSXf1t0
 abFw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=lsnMiT4B
Subject: Re: [Intel-wired-lan] [PATCH v8 iwl-next 04/10] idpf: negotiate PTP
 capabilities and get PTP clock
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

On Thu, Feb 27, 2025 at 5:18=E2=80=AFAM Milena Olech <milena.olech@intel.co=
m> wrote:
>
> PTP capabilities are negotiated using virtchnl command. Add get
> capabilities function, direct access to read the PTP clock time and
> direct access to read the cross timestamp - system time and PTP clock
> time. Set initial PTP capabilities exposed to the stack.
>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> Tested-by: Willem de Bruijn <willemb@google.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>

Tested-by: Mina Almasry <almasrymina@google.com>

--=20
Thanks,
Mina
