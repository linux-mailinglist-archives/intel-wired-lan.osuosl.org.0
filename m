Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CC4BA8377
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Sep 2025 09:10:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 586C760A65;
	Mon, 29 Sep 2025 07:09:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RW3okYxoFN9q; Mon, 29 Sep 2025 07:09:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6993760A66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759129790;
	bh=P7CGIM6sVYQJ1YShNzu6zi9xrjMxSkytDimapREvHXw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qDkphmRkQjRoU37MPMSb44L/ht+0r9qSmNGij6sKJEWvBi0FgnfPTU0XuSRU1c166
	 XieNJCpQOCR2OgPIWu5Q4RO2GVxAm6IjNvK2fk1oXiYb83PM7nhGYZhyDmCh+Ey2t9
	 Hfbiq0tXwYRCs7D1w1ioXyQKGdVy1j/vO3Woz4Ae04ILXuaM6mByQk8eJfVNUI88Fh
	 FI989KIPZENWghuKpMbYy91cRqNhyYIjLKW2F1modtcriAaYerm9dSCGHDVj55YNky
	 ++tdUgj2yrH4gj+KZXNfiAuRXdCP04sWrnIi3coy+EKSxfIi/R7H6KaE57axoCtIsC
	 SDXklIrRIpkng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6993760A66;
	Mon, 29 Sep 2025 07:09:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C7AF7194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 07:09:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AE51360A5E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 07:09:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tuJ-KuaK1DgG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 07:09:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.45;
 helo=mail-lf1-f45.google.com; envelope-from=timo.teras@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8068A60A61
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8068A60A61
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8068A60A61
 for <intel-wired-lan@osuosl.org>; Mon, 29 Sep 2025 07:09:47 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id
 2adb3069b0e04-579363a4602so4592474e87.0
 for <intel-wired-lan@osuosl.org>; Mon, 29 Sep 2025 00:09:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759129785; x=1759734585;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=P7CGIM6sVYQJ1YShNzu6zi9xrjMxSkytDimapREvHXw=;
 b=mL/hNADjLVbqoYmagSn/mnlKpdcd6nshSTnHjNkE3EdWDx2nTzA9fwjV6D1rDparG1
 VTEmLX8EtInEePWd8JQg0fdwVaV6FuUxTjUvYNZ4iPZ0L4+Abf3jbOvsKHgGcUZbfEX/
 /nABeDZupPzQFUaBzLvkZjfYH/CXNfMK+BZnLWn/pk+fd+Cl62cxK7r6gt66sVksCOof
 Gwvv6z4st3bITvojtwaOnywXmRTUenUVmn+nEqUKk1DNY50yy2NVLyb3k02cKjmS2son
 zekZrkNpl3alVLbjF0Sf/VmDUIq1j5dAg9af0iufy/s3CkjjYYEO7WDH/LOSAT4doKXZ
 tGmA==
X-Gm-Message-State: AOJu0YzSzJFxe4i4wYePIumM6wx52fAORyYAYLBq+JrOoWmQXxrooQfZ
 qS5pHMNvFR+UpJrnJWWgAW+19MmbMHRAODYjOYgR1hROppnrWhxufhWC
X-Gm-Gg: ASbGncvx0UZo3I3ldpLkGbi0YnQSEechkYYi75Odoa1xlBsn2zHNfB2mOQ/FgDYFVTO
 TF3ULwDFqzVQUydikqmq+Mgi8p4Z8q4o86RLd7FqY0rG86KtIAsNFuYyHcixFxFw3oC0Hk/4vpN
 mnwhk9Ia2G6RilwpgTA0YnL/bWKiGtzDzE2bH8huuiFQ+xy79lOQkGn5klRcqjiizoqtLRJDaCe
 q+75sdkDSkN3kEKTXj/ewG7pzoGskUKBOKK+H1fdQFnVqA51R8WgMHK+sumvA1RPnsqEzJnYCvr
 Sac8ELn1i6+7mS1et/diF8B0IdH3CHnx74KkAMMIp4onhiCwTaBFi1Xp4VexJI87G1VKewAYuSl
 FLnR/WhewJ7PKbFjYdSfzpjmaJ1hSXh1jSQ8LASXhBHDx7+AnFtmDYJTmvl2z4doFJfnzWlsNhl
 R4t/KzQaZkdbth0axWRwY0yQ==
X-Google-Smtp-Source: AGHT+IFAk4VjZAVTKLUABMF93LmPNGMYh4XqqGn0ex4PLHC/fDOdYMGR934l5r8I8ufRtL8QYvMc8A==
X-Received: by 2002:a05:6512:3b29:b0:57c:2474:372b with SMTP id
 2adb3069b0e04-582d37cbb9emr4658541e87.49.1759129784994; 
 Mon, 29 Sep 2025 00:09:44 -0700 (PDT)
Received: from onyx.my.domain (ne8sisizl43g7h6v0e0-1.v6.elisa-laajakaista.fi.
 [2001:99a:d2f:d700:9c77:7b4e:3d75:2db8])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-586048c815asm1711472e87.25.2025.09.29.00.09.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Sep 2025 00:09:44 -0700 (PDT)
Date: Mon, 29 Sep 2025 10:09:43 +0300
From: Timo Teras <timo.teras@iki.fi>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
Cc: intel-wired-lan@osuosl.org, marmarek@invisiblethingslab.com
Message-ID: <20250929100943.13b717fc@onyx.my.domain>
In-Reply-To: <20250928080040.6309-1-vitaly.lifshits@intel.com>
References: <20250928080040.6309-1-vitaly.lifshits@intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.50; x86_64-alpine-linux-musl)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=iki.fi
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/1] e1000e: Introduce
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

On Sun, 28 Sep 2025 11:00:40 +0300
Vitaly Lifshits <vitaly.lifshits@intel.com> wrote:

> The K1 state reduces power consumption on ICH family network controllers
> during idle periods, similarly to L1 state on PCI Express NICs. Therefore,
> it is recommended and enabled by default.
> However, on some systems it has been observed to have adverse side
> effects, such as packet loss. It has been established through debug that
> the problem may be due to firmware misconfiguration of specific systems,
> interoperability with certain link partners, or marginal electrical
> conditions of specific units.
>=20
> These problems typically cannot be fixed in the field, and generic
> workarounds to resolve the side effects on all systems, while keeping K1
> enabled, were found infeasible.
> Therefore, add the option for users to globally disable K1 idle state on
> the adapter.
>=20
> Additionally, disable K1 by default for MTL and later platforms, due to
> issues reported with the current configuration.
>=20
> Link: https://lore.kernel.org/intel-wired-lan/CAMqyJG3LVqfgqMcTxeaPur_Jq0=
oQH7GgdxRuVtRX_6TTH2mX5Q@mail.gmail.com/
> Link: https://lore.kernel.org/intel-wired-lan/20250626153544.1853d106@ony=
x.my.domain/
> Link: https://lore.kernel.org/intel-wired-lan/Z_z9EjcKtwHCQcZR@mail-itl/
> Link: https://github.com/QubesOS/qubes-issues/issues/9896
> Link: https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2115393
>=20
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v4: Revert changing the reconfiguring function from static
> v3: Removed disabling K1 in watchdog_task and change the private flag set=
ting
> v2: Add a missing semaphore acquiring and disable K1 on MTL by default
> ---
>...

Reviewed-by: Timo Ter=C3=A4s <timo.teras@iki.fi>
Tested-by: Timo Ter=C3=A4s <timo.teras@iki.fi>
