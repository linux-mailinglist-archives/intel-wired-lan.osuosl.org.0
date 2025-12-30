Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1DDCF4A09
	for <lists+intel-wired-lan@lfdr.de>; Mon, 05 Jan 2026 17:18:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90C21405BA;
	Mon,  5 Jan 2026 16:18:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e6tQEd_ZhP-b; Mon,  5 Jan 2026 16:18:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DEC14038D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767629909;
	bh=otefy10bqMQ6Rkz8jl3RITolqSd8NKK7YcepSO+lkXo=;
	h=Date:In-Reply-To:References:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=jV0xqOLSSWL07DdWzJm9CiYsP+2tPuaAKsDVKezvLKRYpmud6HiuLv2+dOZFoYbho
	 WZqKX21H5ZsloWdQr7Tjw3dU3KwzZF27Ia6vA1JkomKKDKWUNLyizRKoBPqNQGfzun
	 twYr15eWIVwO79fw9IzjObbo7IKDlzQAhRsAQBaR4kvx0B5d7Hj6PymXPFP38MG9cL
	 1CpV3eW7WQicJKKQECcSebNM6EhwRaCsl2j/BNqf44fisgwyhkL3DHLuOp/SesmKPu
	 y+CJ1qzQ3Tc7hmikQAC+vjN50bdD1rzP2FIjEiMgWViyeN4GZm/kSd5y8w2KYp3h1u
	 Zc2AJiN4OLk8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DEC14038D;
	Mon,  5 Jan 2026 16:18:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4A107277
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Dec 2025 23:24:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3ADF460BAC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Dec 2025 23:24:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E81TKS8cYioj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Dec 2025 23:24:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::64a; helo=mail-pl1-x64a.google.com;
 envelope-from=3kv9uaqkkd4orsq27+uw7u22uzs.q20w17sz-aw5sr-zo1zw676.26826z.25u@flex--decot.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2C67960BAA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C67960BAA
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com
 [IPv6:2607:f8b0:4864:20::64a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2C67960BAA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Dec 2025 23:24:25 +0000 (UTC)
Received: by mail-pl1-x64a.google.com with SMTP id
 d9443c01a7336-2a0dabc192eso238676855ad.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Dec 2025 15:24:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767137065; x=1767741865;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=otefy10bqMQ6Rkz8jl3RITolqSd8NKK7YcepSO+lkXo=;
 b=qlcwuTxmHmpJeR7c255IYXdCgkoN4oO+QxYSlG6XLxZbPBnSiY4OSsVS4LGBX2dqvP
 ac3KtKbMazk/wLGNMc5BZYLYBkKJV+BiZ7pw3APWKY7+CZKMq9dJg68fKfEHRjCAaQ4p
 HXh54QIN4SXs04p0nnsTYX56uud7zbzKHjZ8RcXZ2M680LvTI2bXqAXwBN8gwjwmNyzI
 Q2VPch3I0RaU6l19y8avnSQhPXxGXxRHamO6UplOOxYFC4QLqAxGw618lzltaL2/vLfq
 R0yhC5CVDzcN3u8+8CkwfnVUmNaowmoi18je8QIr7LUfxlFrz3VYnBz8r8y9bx3BSVxl
 T+dg==
X-Gm-Message-State: AOJu0YwX9GHjxojpDES0rP/jeaDri+O22qKRQMGkoaCADOiXyV2ukuwU
 wflzhIfbGdE7wXyIskj3ri6H7zpgqRIBVZ6Kys0XPRIAkuKMXaoVoQSTyApla8xENfSbiGUTtto
 AiloaYxMiwn5yJiePXsGBdNKTTB2i80lHxGoKXxtWyHyxmcl1J5VSF0UjQ6y714kS7s+mZKKBT4
 LefPeDnYkXTegK6xs2+eIQATAr8QVibqHEhIZqOJgihpNF
X-Google-Smtp-Source: AGHT+IHqR/6lsYHNU7FNcWu3yhSTAtOgs3q5BmJ4yTy19weMjJ3YUksVel4kP5W/QptL5Y2q7QbRD4Sv8Q==
X-Received: from plzu9.prod.google.com ([2002:a17:902:82c9:b0:2a0:8cbb:6431])
 (user=decot job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:903:3c6e:b0:2a0:c1e4:e25
 with SMTP id d9443c01a7336-2a2f293bdc3mr328462765ad.54.1767137065078; Tue, 30
 Dec 2025 15:24:25 -0800 (PST)
Date: Tue, 30 Dec 2025 15:23:46 -0800
In-Reply-To: <20251103212036.2788093-1-joshua.a.hay@intel.com>
Mime-Version: 1.0
References: <20251103212036.2788093-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.52.0.351.gbe84eed79e-goog
Message-ID: <20251230232400.3515704-1-decot+git@google.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, 
 David Decotigny <ddecotig@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Mon, 05 Jan 2026 16:18:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1767137065; x=1767741865; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=otefy10bqMQ6Rkz8jl3RITolqSd8NKK7YcepSO+lkXo=;
 b=k3x92C95OoPOBJKMsWaLw24gjDQ/Y/1VYdrBZbhra+NygaJTo5B4bPQmmv99AKXOSV
 T8wwG2NOW0fhIdnm7Qh+PYBc2u66XOLHE2QKpGUzFBpiKwHKhSfuORBgGKwcX1OVtlmt
 mQOPqmn8xOilK0Ko7lai7NfuE3smgtTh6n9JlKaikVXJivq7M9UeIdIrJyRzgEt4+R1A
 bDPrwveZdv4Zo7QC/r/X3q1Uv2TrTgItP/wdqS3sYm+BDNHk16xP59PBXKEwVjvEzUay
 2ToshZXXZuPyD+gCD1ZNBSO8Vh47M6Se3TTEH+oeuiOcNs687FzLGuk9XsSGYsnhAUrA
 jrwQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=k3x92C95
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: cap maximum Rx buffer
 size
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
From: David Decotigny via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: David Decotigny <decot+git@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/3/2025 1:20 PM, Joshua Hay wrote:
> The HW only supports a maximum Rx buffer size of 16K-128. On systems
> using large pages, the libeth logic can configure the buffer size to be
> larger than this. The upper bound is PAGE_SIZE while the lower bound is
> MTU rounded up to the nearest power of 2. For example, ARM systems with
> a 64K page size and an mtu of 9000 will set the Rx buffer size to 16K,
> which will cause the config Rx queues message to fail.
> 
> Initialize the bufq/fill queue buf_len field to the maximum supported
> size. This will trigger the libeth logic to cap the maximum Rx buffer
> size by reducing the upper bound.
> 
> Fixes: 74d1412ac8f37 ("idpf: use libeth Rx buffer management for payload buffer")
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Acked-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---

Reviewed-by: David Decotigny <ddecotig@google.com>
