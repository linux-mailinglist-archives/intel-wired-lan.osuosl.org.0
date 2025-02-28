Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA7CA4A0FD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 18:55:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84C4D8348C;
	Fri, 28 Feb 2025 17:55:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Y9Ov2UEpwQS; Fri, 28 Feb 2025 17:55:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E43728202E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740765325;
	bh=BDtIVOH1NfH7H9DNGCl9q3I0lK9HndnLOPEmc4jcEnA=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Im/zL2+D7ufbXowj8xMiwOpNASxCXOFy5PumDD6mSaZhl9bsjTGdb7BxKb3p8ZXsJ
	 Vn4P7AofaSXhZlYdX8MeqBiWmlTyHKusMhSsJnRIcsQ/DfqIEXSxQSZFG8tC63IJvr
	 HREgL9h5cqesfawfwcNnANrWiwjrwP5FvLj1KCkyNQAhfEoKwza2nXYRVGTepZv5HM
	 J9OgJU0UWCusDv50lNdguWCDsJVrX/zAfYs0CPog5Y+obd4utkaUIrmBLjpzJjhtdc
	 eRDm/hdF/cIOCMzRCYEy/RSBWU2YhqoYrIKhkT+Edxnbv10/HVNkmmTTrS4he+Q7dz
	 m40KNvUihihXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E43728202E;
	Fri, 28 Feb 2025 17:55:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id F1FE21DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:55:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EDCC5821E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:55:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f8KOT4ZCM3Bq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 17:55:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::630; helo=mail-pl1-x630.google.com;
 envelope-from=almasrymina@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 596CA8202E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 596CA8202E
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 596CA8202E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 17:55:22 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-2237a32c03aso2585ad.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 09:55:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740765322; x=1741370122;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=BDtIVOH1NfH7H9DNGCl9q3I0lK9HndnLOPEmc4jcEnA=;
 b=uYH/NdRDYdDRIlrWDcAd3Hm/8InGBFlbi1ySem89J+B61fgX6ryb9jQ7rtD5TALl/C
 IQSuOHTnZoQKXspDo73GYnYjV5ynVaHxvX5d146ygmbLDom1IJLUmIWDmbY4dvjLrfoo
 Mb1yhl4Rjkq8Uhv+OhKWNi/K5oVV04wGXjWFQxmURLvsdnHLOb2oXVQDJMmxOqFlJ6oZ
 j3ofgIxBkazTWRq790Y62/0wGNIG4aSO/oNXWi+vFoI8aOD/ArueNSNfAEA4HOCW4fJ5
 0OVLYPwQr33CFGeY+k/4VR821Yd17S3XN0cQ0Ow2LktsodfnA9AMzdoj18Kf1I/oR1Uy
 Ehdg==
X-Gm-Message-State: AOJu0YzkU9Cr9xapYeropitBfK6k5gSyF+/GtgmmlWwzoN46CiP69BvW
 fWTltpr3UzaINWK+30dYPxk5G6Jpfypq7do/lo26UC4crkockP9K2rzfq9IVRS38RC4eCMmmSd+
 qfcAEQcAHUkpBGFERIlamTXAE31sm9YDtT+uo
X-Gm-Gg: ASbGncuzzXF438evvxyiHmES2FQkE4HwwHlJXskm6DVJ0ePRyUrMmOR4zzf+9zjhNV2
 CeZGEdmCMpT7hJ3gGNpwYVUKaCA2/V+0lhcwLa+Z8CzlzzdD8J1+EwhCxE3TSKsT4gZBkXNCu2t
 yneQB0oCJeakjxPcWH/9viPrCpVMw0R40oyGkN+g==
X-Google-Smtp-Source: AGHT+IHVrC0pf9G9pIx2c46zefAYiMfkRUSi7NauTktyEJjZAXF+yeXwRiO6V0ljRkibON+xuJpNZQI1ZGCBBAVHyRA=
X-Received: by 2002:a17:903:2585:b0:220:c905:689f with SMTP id
 d9443c01a7336-2236cfce369mr2628425ad.25.1740765321373; Fri, 28 Feb 2025
 09:55:21 -0800 (PST)
MIME-Version: 1.0
References: <20250227131314.2317200-1-milena.olech@intel.com>
 <20250227131314.2317200-7-milena.olech@intel.com>
In-Reply-To: <20250227131314.2317200-7-milena.olech@intel.com>
From: Mina Almasry <almasrymina@google.com>
Date: Fri, 28 Feb 2025 09:55:08 -0800
X-Gm-Features: AQ5f1JpQ9GjXK9nTa6t7O6sgvQFQLlYjz5k2ufAERyY9SiAfVcW512dCoRInuyc
Message-ID: <CAHS8izONszMaV1Sq7RMYApzo+nFNK377dq_9Up_o9UVJAUf=yg@mail.gmail.com>
To: Milena Olech <milena.olech@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Willem de Bruijn <willemb@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1740765322; x=1741370122; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BDtIVOH1NfH7H9DNGCl9q3I0lK9HndnLOPEmc4jcEnA=;
 b=X1Jvto4PBGCIX5BDgenC0n4qLQB3v4MYgfzoTnjYOf5GhOkeHKxYh7W1kFNCNu1hn4
 BLkRd+0QXHg57p92ejLOtHgvT1RnpHbVt1jjaFWNO73ETYQFBl4gRBeqy1MILK3Otkvq
 nWXtBhhODkmCgx2g0YxjIPC8ibwMEnSU11xdjkNnoOBoSSKONsZS9MIX90YoSlFVhkvT
 rb+R9Gmnj/Abxev8j0MZUh/4Vnkb/+FfRfznzZ92H5DzZx05UxErdRN5Q99X2E5UuGxD
 B0nCGcNZH1ENj4RHIw63tE8D4xzUyhghjBh2yxPqkvQbYVaUTRZb/MOyV32hJpzULdi1
 CPFA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=X1Jvto4P
Subject: Re: [Intel-wired-lan] [PATCH v8 iwl-next 06/10] idpf: add PTP clock
 configuration
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
> PTP clock configuration operations - set time, adjust time and adjust
> frequency are required to control the clock and maintain synchronization
> process.
>
> Extend get PTP capabilities function to request for the clock adjustments
> and add functions to enable these actions using dedicated virtchnl
> messages.
>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>

Tested-by: Mina Almasry <almasrymina@google.com>

--=20
Thanks,
Mina
