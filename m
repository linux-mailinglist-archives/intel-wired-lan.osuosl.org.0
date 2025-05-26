Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 13846AC3D18
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 May 2025 11:42:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E72B607DE;
	Mon, 26 May 2025 09:42:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d6hlA4lfxJID; Mon, 26 May 2025 09:42:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C2AC607E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748252529;
	bh=27+HxxD+Nnzh7/t8b6hLfpxekNp9wQ15a2r2Zx2hs2E=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ofy9cMRSJ21RxOr8VycnQZqidHp6PVi2ZexOlJTuICLLXoFiXlnQCkuoHQzQrQQxm
	 N9EqIDR4+kpU6kXX09Wba8zn6LYWfKRoG8oTZn+/bJH/GkkG+uYn4l/We4vlFu20lA
	 fLJ66ndhEmQLZQiXAxhdK069Bo8uOI6K8SFk6U7fuZbZll3naCvlO0DipDbhFnH040
	 egtxI1evbzQAgFwsr+zDRAjPK1JLLo3JVPIuKtH5XRogvkFLiPTUOVKAssuVbkGp/R
	 hD89TXnPTldYpAT097uKeq40931fALibjfW/KV/vFD8UjkwPfxMiG+r7Xl6V6W5RWX
	 OLOZawFk+/GLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C2AC607E0;
	Mon, 26 May 2025 09:42:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 09BCE68
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 09:42:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EF80D401D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 09:42:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EjojhWfzpUBV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 May 2025 09:42:07 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D5D3D401D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5D3D401D4
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D5D3D401D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 09:42:06 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-441d437cfaaso12108385e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 02:42:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748252524; x=1748857324;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=27+HxxD+Nnzh7/t8b6hLfpxekNp9wQ15a2r2Zx2hs2E=;
 b=Bsy93abgAH2AgLFI3owZstHv/Tsh9+zI8OLUMeBhc7aFXh1qs4qmm+1Yasu6cwyQ2A
 jkduVd+y/J+e0kcLL1lGGGMf9LGHVHA/KNBKrNgKnj3ULmJIwrJ6NwzU/EnpGk5wSxRt
 LbEmNNOSIXObZEeGxr3DPQcixAeCfRCdNMLNlIE9646Q72nSHE4M+N90IGNf0z/VExgJ
 V45oRlsNJ+i7cAptZ2UP8H6QHn272aMH3fjMu0U0omGaUqO9gCvjaiGDvPAGkZizHnAY
 E2KtGmNePDTxVMojscjJxoxyErMuQKvsN6fW3Ip5lCmUisXX5qEt/mi0d3lyYUp/0mxy
 OquA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV8QstxV94U2TOqlWr8cEVuPnI1eZ0sMoOamq+4yxBzGTkZVBPAVLCxdwQ73yfspW3R+NFIiEkpcE3Q4Ib9+/w=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw8lSuL6KDnBYb2Y1V6mnX6oFdHvZRipkyq2K+Ie81ng8Dp7yHq
 cqtXjwdso47BOFnNci9QpFpyPkTJw4qMlb8Gf+a3MVymBsXHJQe2hPI9nNXEMQ8V3pI=
X-Gm-Gg: ASbGnct1zmHv9paw3g2YkovaQxSBfyC5tGHUABPWT+8EM2L0I8XUN6unm3M47FgnDP1
 6Ld7CmFXiLMFtBg/1oZLLoyNI2LRt4IAEVZfBUlh1DXleh3+j10Zaacb0PNZb7dxDCoprt1qB4z
 rosfK7c0MvYyb5Me3itP6caIYrq7El/4z2zgpvXKDyvHFa0ZcSiRVuXwQEFjTfPVDM6CUjayOyc
 qRaCdQAbWytC9cT4MlkgyGPMSA+wkHExBR6x5YdFH8uY68m12sMRiO/V4+hHvOxb9I7zH0ft5j4
 n/3l4jufLrURLpG5d3X9YLuXqltX6SUZ7aBuruXHFtcHYLPk58FGgXt5SsNQ8Ht/ROGiBdMf/e8
 LuDk=
X-Google-Smtp-Source: AGHT+IGj/TCuJ1rymJwAmhwD9hEHb2YavTmDlg3uKm0ah5yuR6f/5Sm9EUvqo4UPAzGWQCJs2xZcoA==
X-Received: by 2002:a05:600c:3c84:b0:442:d9f2:c6ef with SMTP id
 5b1f17b1804b1-44c9301660cmr86938965e9.2.1748252524118; 
 Mon, 26 May 2025 02:42:04 -0700 (PDT)
Received: from jiri-mlt (37-48-1-197.nat.epc.tmcz.cz. [37.48.1.197])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-447f6b29619sm242667995e9.7.2025.05.26.02.42.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 May 2025 02:42:03 -0700 (PDT)
Date: Mon, 26 May 2025 11:42:01 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net, 
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, corbet@lwn.net, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, 
 linux-doc@vger.kernel.org, Milena Olech <milena.olech@intel.com>
Message-ID: <pu6s2lvqaulyurarklqxumdtcd3tql7djhyun3ylgvyv3lmsf7@oun62hhb5hkk>
References: <20250523172650.1517164-1-arkadiusz.kubalewski@intel.com>
 <20250523172650.1517164-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523172650.1517164-2-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1748252524; x=1748857324;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=27+HxxD+Nnzh7/t8b6hLfpxekNp9wQ15a2r2Zx2hs2E=;
 b=yIRasTD6Y4vBUU60cG+gomQwZLvOTBONo6srpEPaTNePrnpzGHlKpCE5tf1fzZqgEf
 ZKsc8PHipLwCX/sNUdBz1TsncFKjZU8hWblIxnAMLYxjPjE3Y7gPVJ4bV59bCHjUW5mC
 yl2RvT8OLFcGf7/KFvEDFnBgnFaGzYU0sdesXPTrO8kaWZihLiVpA+6bCPKnI/3wH0uJ
 w9NxEvP3pr6TA9brlcU6BotGzNH7jVahfpa5RSLpl3cpLqitVGoHR9fYQcEY9SqNLXtw
 +ca4Bd/sXReq8S/5CZh7AUGVofpwO9K86+czTlRnMMyGMNpT0m5H8raTYKE0zZjTDzcj
 PBdQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=yIRasTD6
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/3] dpll: add
 reference-sync netlink attribute
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

Fri, May 23, 2025 at 07:26:48PM +0200, arkadiusz.kubalewski@intel.com wrote:
>Add new netlink attribute to allow user space configuration of reference
>sync pin pairs, where both pins are used to provide one clock signal
>consisting of both: base frequency and sync signal.
>
>Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>Reviewed-by: Milena Olech <milena.olech@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
