Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DE7AEA3FA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jun 2025 19:06:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F132181EFC;
	Thu, 26 Jun 2025 17:06:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id liEeYrORQiRd; Thu, 26 Jun 2025 17:06:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82D7E81706
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750957610;
	bh=7TTTkxSEEtDGAJ6B5yivwWYIBaf9X+hMeLRgr9DVfbU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gB76Ar4rsz+cuXbeIVArx7j0v7XDLtopvvs669WhlINakZbD8Lm0XlStBaxYNghJk
	 b6ihDtm/r/8Au9OxGJtURyA2KjHWJ6UH8onXQjZ8w3hkyx9bwNgpeLnqVwtr2TbANZ
	 +IY4LW0g67q/SX5+cgJQe35WTIJxcm1axpl+sVwgn8stF/jdTqaroF9FQfaL10A64O
	 1vN6v9yPVRx1Vzdss+SAzKUWVCzDouxcVOPHsuOY4NJWtvZOBz4dI/nqbwYLJx5Uka
	 O6tyh2t1Z8XlJphl7CKTYG1TQCCMnilGt1a+p0E2EpBMfYuHdIIPSOXn5Vmnu0iCxp
	 S15JhhBBge03w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 82D7E81706;
	Thu, 26 Jun 2025 17:06:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A1FDC11A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 17:06:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8824B402DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 17:06:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xA1kuzUH_6e8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jun 2025 17:06:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112e; helo=mail-yw1-x112e.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D470C40261
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D470C40261
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com
 [IPv6:2607:f8b0:4864:20::112e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D470C40261
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 17:06:47 +0000 (UTC)
Received: by mail-yw1-x112e.google.com with SMTP id
 00721157ae682-70a57a8ffc3so14271537b3.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 10:06:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750957606; x=1751562406;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=7TTTkxSEEtDGAJ6B5yivwWYIBaf9X+hMeLRgr9DVfbU=;
 b=thzv0Lvh01qLqqLNExYnbIDv7aDpaad52mEBegxOIMihfhvtLDyacQC8z7ISBgk4YG
 gwglWwRY39w9sh9LKDpefKeSBvKMJu71D2TZZtSLz7pZE9FKWgX7UBgjwmNcBnQmSYf2
 n32a3rmxVKmnl0thzRsTgVDSmBd0U9reChDyL+4NjIr7WCBmJiOx8CznP+PLlUx+UNfL
 EgKmka0rWe3WYCQh6k77UuPanAjOfIi90pNTd4ulQNtl+uEqjWy7KSJ/gek12ekLkNAm
 mSvPxqHnzikfZpLMCj3Z2cUvxsdx8ofswGG14MXjmkrbwiMtbcuQ66EPrRRBaEJ+eKpV
 AVuQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU4dIp1q7YaiY+Pnr3hKua0dQmXy9WCs37QmoCCDjpqUSwhnZU2BD0kyCCcqq4YnZ4iTHDLzh/bxREqtiakT5Q=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw94EcVfNqT3sZniFKSSjuw+m6i9uAqEkluXv59MsJQaFqxKAXv
 v+Sev7RGGaFpdXzixp2KFLBTh/bTr8aiU+vqsEey3JTOTCn6/itDfJk0
X-Gm-Gg: ASbGnctAP96jWQpXIffMYQniVcrgsWw3WGXqu/20gwh2oPIzb868OHBv4ujJvV2VQzr
 5Yga4E0LHTerfiCRu2RxE7PdW6Prv7bEtqxe7r4Px8ApFsQgrx911CiWEAvOh9V1EBSgOAWm/Ao
 6e1B8eQ4tT9SEYqH4Qa1KYqa1lj+RsCFPriGd8rBdDZ6k13orK6WGEHRKZg1Th2PpUaL6EQXLMf
 Rok+VuTegoM/t/eq5SqtT1rrXx2zF4faOGMEvMSjpybo68THKm7bCGaBG8U3fmUjTk6LInTlSwV
 zo4x7KqupcB+F9/nSY3nNSy5J9IeWvkx3DGy5d0J7N0+82r2HMeq2pWTUUhpTmv6F42vZyjhBRV
 6wMZ4SIscnDCeaTESCrQkCfiBkjbn15X7nrFYYbyOAaiuy61t7X16
X-Google-Smtp-Source: AGHT+IGlNupejwX5w0S0KLmAxUztVIfamKDLRw/NaNOknE32E/z6XXHd3lQBNj+O5Kai3h56HI19Qg==
X-Received: by 2002:a05:690c:6205:b0:714:691:6d1d with SMTP id
 00721157ae682-71406dc6792mr111168647b3.24.1750957606395; 
 Thu, 26 Jun 2025 10:06:46 -0700 (PDT)
Received: from localhost (141.139.145.34.bc.googleusercontent.com.
 [34.145.139.141]) by smtp.gmail.com with UTF8SMTPSA id
 00721157ae682-71515c9028bsm658947b3.62.2025.06.26.10.06.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Jun 2025 10:06:45 -0700 (PDT)
Date: Thu, 26 Jun 2025 13:06:44 -0400
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Ahmed Zaki <ahmed.zaki@intel.com>, 
 Madhu Chittim <madhu.chittim@intel.com>
Message-ID: <685d7e2461181_2e676c294e@willemb.c.googlers.com.notmuch>
In-Reply-To: <20250620171548.959863-1-ahmed.zaki@intel.com>
References: <20250620171548.959863-1-ahmed.zaki@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750957606; x=1751562406; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7TTTkxSEEtDGAJ6B5yivwWYIBaf9X+hMeLRgr9DVfbU=;
 b=jldQveezHQaKXX5rRMU+wTPxj6txNi7SfxL5iImdYRNiRgWNeitL06FpYEuPUJcFuL
 SZVRH0pXetVEeTt8IeUoW4lMJr55OZ37VMnbugX8Hrj6XDf7vzbiizgbpfaUEp4ovHTE
 nSzZ/Hhg+xhqCh031Dg6BBf7LKJq36PEXTd6xrqgsSWOFGLSRd2seqpFmTbvUWLCw5TL
 cixM+aXEycb6SHizSWXNWP1nBng6n2v2SpFCYwNK3iZ5sa01YOini8DKbmuw4uCdHyKU
 Z/5Bl70IZvwgIX/PFY7iUECDKWbGOE2q6eiv4YsQ1wasLyiMbSSyW1Q+Bs+B4yWYb2pq
 ud4Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=jldQveez
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] idpf: preserve coalescing
 settings across resets
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

Ahmed Zaki wrote:
> The IRQ coalescing config currently reside only inside struct
> idpf_q_vector. However, all idpf_q_vector structs are de-allocated and
> re-allocated during resets. This leads to user-set coalesce configuration
> to be lost.
> 
> Add new fields to struct idpf_vport_user_config_data to save the user
> settings and re-apply them after reset.
> 
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

Reviewed-by: Willem de Bruijn <willemb@google.com>
