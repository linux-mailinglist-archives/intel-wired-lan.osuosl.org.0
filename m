Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A57DBB2CA45
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Aug 2025 19:10:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6590F40CA6;
	Tue, 19 Aug 2025 17:10:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZKY3QGi2pwir; Tue, 19 Aug 2025 17:10:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35E4940CB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755623444;
	bh=KqsN5UVNnabME4z0Wnbqn8rC+dl09PI867vvxN0oAZQ=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=A/UKw/I1HMcjJb7e65QG9OCJOZGJs7mP6nGgjTIOatAjqkQn1sG1drpGUX+9BWlAl
	 TBGAy0nrEan/Usmw621BWd8t2jpkkxSgh980p8d7TIJ5243PmyjmfLhRXFOVFKgzZY
	 y+MYAzxxnCPapHf8NnUrSnCUDU+jc0Gf/UcaX4sQHY9vKG6lYwdwQKCmTxLohH8aoT
	 mOK2kWWAzHosKSDZb37Ktl2zx9o74tpdgnS6D1O1IKpeOqadmt+3D1ZcxQPZZPeywj
	 6fJIKbFF3t5K9Zx+TILPh3ejnFZVWk7y8fQWq9C020qUsUSPfdpodLVAtVRA0l5grl
	 Tdjjjfg04dy4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35E4940CB5;
	Tue, 19 Aug 2025 17:10:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D792DE6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 17:10:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4EFDC8145A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 17:10:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QJ057Ns8PWzC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Aug 2025 17:10:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.54;
 helo=mail-lf1-f54.google.com; envelope-from=timo.teras@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D54A781457
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D54A781457
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D54A781457
 for <intel-wired-lan@osuosl.org>; Tue, 19 Aug 2025 17:10:40 +0000 (UTC)
Received: by mail-lf1-f54.google.com with SMTP id
 2adb3069b0e04-55ce4b9c904so124553e87.0
 for <intel-wired-lan@osuosl.org>; Tue, 19 Aug 2025 10:10:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755623439; x=1756228239;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KqsN5UVNnabME4z0Wnbqn8rC+dl09PI867vvxN0oAZQ=;
 b=LMZiwzORt3hPRmBdkxLFn4xoNVhiZ+QPcr59d3SoB9KBcO9eicg8H2tBR7r7p3FfgM
 JZ/q3jqzaIQTfK0zZ2w+ExD+eifA7AWIyEKETJLn+Rs/lgsnXC2VzYysIB4O/H5PV2v0
 f04BhICShIDYqyjdQUgXDG//+qi1szSLOnDvC3HPhChkpm06+RHLYaifZB3qD0A5IqST
 8s4qih3WbgZvSOO/4Xy8mWOcwJwnFcXfPnRFpN0wg0f4Ef8YrevKYfKyqA4EmjnXql2w
 sYGv5DrntmiqR6wKz7oL67lb/A0R2K15fkWLX1hMJkoLRkYowg2pw6ixBoy9tW+qx0nw
 rLIg==
X-Gm-Message-State: AOJu0YwAXdln+yekuH/E3CdLOVvUQO0NC1KhyVGtZISgtjj9t7bJLSy9
 L+RSMw3hwv5s9bDjwDAfyLmtSy0ByBkHBN8OJPl1YZOPS3d9/XkPzNMg
X-Gm-Gg: ASbGncuAtPuIgSvCAU8YiYYSuzfks6kj9MwasQK44Eo+lmMDogRSepHGLCpb7q86ESw
 jq/vLpDamCBpf4iOVnPwimWX/yjuVTcR/EO3ZlkARGTm6aiTZm25Yw0iZF7QvjjrzAB3YJlZpsi
 7/NNjAdg/ihXSDFyzpSOlDmXuiN9f3ms+FqmSpFlD5+Xy7/YVIKKDd45eyq+rVcsP/dTRBxGBqr
 h+2ZcVLasIdMvnS1THe79tFo/2afigwdZJ7PCg9y4McY2FR/eIPoE00IbGcFjZgjk4XLIB/UYa7
 Qf+PVVGTsJlSyvbF8WE6fl3aLSKSSQXZeMA6/YGqCblnus47skd/UyvPqADdw2n//EeIXSTei8y
 sXRQUrwnGzbZmklVhCluYo9r//cS+jnG2kSf/PzewFdrsZIAja9JJO5Oa
X-Google-Smtp-Source: AGHT+IHmvyRAV6ueiX3JMAUCWN2FuoQy3JfAYpMXlJz3ZUg9NdKHrY2u4l6lKQxV1h9DfssbnYDmew==
X-Received: by 2002:ac2:4f07:0:b0:55b:8285:3f31 with SMTP id
 2adb3069b0e04-55e00e87612mr972657e87.24.1755623438089; 
 Tue, 19 Aug 2025 10:10:38 -0700 (PDT)
Received: from onyx.my.domain (88-112-35-58.elisa-laajakaista.fi.
 [88.112.35.58]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-55e033fc2e8sm236718e87.59.2025.08.19.10.10.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Aug 2025 10:10:37 -0700 (PDT)
Date: Tue, 19 Aug 2025 20:10:32 +0300
From: Timo Teras <timo.teras@iki.fi>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
Cc: intel-wired-lan@osuosl.org, en-wei.wu@canonical.com,
 marmarek@invisiblethingslab.com
Message-ID: <20250819201032.3873c62b@onyx.my.domain>
In-Reply-To: <20250819124326.3346021-1-vitaly.lifshits@intel.com>
References: <20250819124326.3346021-1-vitaly.lifshits@intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-alpine-linux-musl)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=iki.fi
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: Introduce
 private flag to disable K1
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

On Tue, 19 Aug 2025 15:43:26 +0300
Vitaly Lifshits <vitaly.lifshits@intel.com> wrote:

> The K1 state reduces power consumption on ICH family network
> controllers during idle periods, similarly to L1 state on PCI Express
> NICs. Therefore, it is recommended and enabled by default.
> However, on some systems it has been observed to have adverse side
> effects, such as packet loss. It has been established through debug
> that the problem may be due to firmware misconfiguration of specific
> systems, interoperability with certain link partners, or marginal
> electrical conditions of specific units.
> 
> These problems typically cannot be fixed in the field, and generic
> workarounds to resolve the side effects on all systems, while keeping
> K1 enabled, were found infeasible.
> Therefore, add the option for users to globally disable K1 idle state
> on the adapter.

Thanks for adding this!

However, as a user, I find it inconvenient if the default setting
results in a subtly broken system on a device I just from a store.

Since this affects devices from multiple large vendors, would it be
possible to add some kind of quirk mechanism to automatically enable
this on known "bad" systems. Perhaps something based on the DMI or other
system specific information. Could something like this be implemented?

At least in my use case I have multiple e1000e using laptops on the
same link partner working, and only one broken device for which I
reported this issue. So at least on my experience the issue relates to
specific system primarily (perhaps also requiring a specific link
partner for the issue to show up).

Thanks!

> Link:
> https://lore.kernel.org/intel-wired-lan/CAMqyJG3LVqfgqMcTxeaPur_Jq0oQH7GgdxRuVtRX_6TTH2mX5Q@mail.gmail.com/
> Link:
> https://lore.kernel.org/intel-wired-lan/20250626153544.1853d106@onyx.my.domain/
> Link:
> https://lore.kernel.org/intel-wired-lan/Z_z9EjcKtwHCQcZR@mail-itl/
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
