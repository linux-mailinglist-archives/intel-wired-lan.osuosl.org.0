Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJpqNgjM4GkdmAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 13:46:16 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A854E40D9E5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 13:46:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DE6A4084B;
	Thu, 16 Apr 2026 11:46:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cpPxhKvijsKC; Thu, 16 Apr 2026 11:46:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7831B40842
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776339973;
	bh=GtLBep4veGMaf+LZNsilLGz5p0/XIc0cvD6mQ+AZGPM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aFizyqgH1ZrjFBkqGIrCHVy0aRYhm8TscCtHrInhHPk+I3EoK7cfC9e0lO5IK6lbE
	 ipHnDjLakWS/ir+wvJgk7nxAItuQeCDTbU003ke/TeqXolsGiM0C1J1ULTXYf45Xki
	 RrPWiGOnb4CyeD+zyCuHRbOnYQHayVBAKQn/iGLn9xFNUrsj0bsBx4AdbkWBW3E6Vu
	 4lG0DVUD02mDB0cIAXL2BwEqiFmpSNlTUk1Ez/5Xto8uubeDDwU63u3kASOLpvnYQw
	 cUEi1fJkykgCwAyuY1SPF3O1b/vs/fBrAFVb0Kj1cMVEKSD/dJucAp4KIaRic3+md2
	 DqKPmcz2QumFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7831B40842;
	Thu, 16 Apr 2026 11:46:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E6D962CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 11:46:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD09F401FC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 11:46:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OtQSdt915_4U for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 11:46:11 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::331; helo=mail-wm1-x331.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9BAAF401F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BAAF401F1
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9BAAF401F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 11:46:09 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 5b1f17b1804b1-488b3f8fa2bso5352435e9.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 04:46:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776339968; x=1776944768;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GtLBep4veGMaf+LZNsilLGz5p0/XIc0cvD6mQ+AZGPM=;
 b=p6VIaQC7uqjd4DokdyZ5BdzBI5lkjd6Z5zRy+Z1soRvduYLJ7C92bM057jkKmvZP7u
 UVtD3vyfcHwpiN+cja6zYJbCoIzGrDWc0qcK7u5PMY8WVXFzDe0KtMpNiVM0+RmtLnbr
 7kGltAdz+xN3kXBXbw58IfUodG0Dh7zUhaf1AyGKzBBO9XK8pFHkpcdwuQ6+CR20jMj4
 huDSWygypKDuklL0p3E/S0GQm+3eaoWEolu5mu6+8g9MsjigmeV0Ib/JJ0V6kF1wGPta
 KxLECB08jJ4WWv7QiG1idTg94xBu2qUQeWKG+zrZY/7v4QmwdUV4nWgY00RVTSY8opjG
 BkwA==
X-Forwarded-Encrypted: i=1;
 AFNElJ+EMpe13yeJJSwmZUTVNoGixQcmRhwJmneatAPzEZd8KakNVR5B50o6u6Hci6RySb0hHDz8QmU38yJUF8/bFuc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwdO2FdDhePmnupbMeks5SGAPmqy8LIqmPyZO4NZeJB5BW6bvax
 FU1/MR2NENGUz14yHF+kqM+Y79xz8Se9A4aA5VIQ7qD7rRZ8MGSZBkXksUC01d07MIk=
X-Gm-Gg: AeBDies8mpmigfEKWZn2Fvy7njK18aa7uWEZcpViXOpVNopkTT/Yoex+Tcz7fQZFLD6
 z0sWqc77gbWi2P/Kzq2SOy4GetfMkHqD9NBtmJzRpIGhj8jqx0FI+5RQBwhoB7n8vim0RMbBvCI
 MZDK/C1f3QB2wr2IAzxYp7IK1GT338XrPwSJvr43jUA1Vvzfxr4ePMZ07Clb1zLBcYOmRGOned+
 pXhRwvG4mLRYXUTOWb3NR5U+HBMCT4hM58RYQs2i9Bg+fu1aFWF5O1baNC0pZBr5egj4+nBRaRg
 r9QfLFTaBAs/yZ+UjbBnM4JVS36D3KfKjDAvNJNAMOsQ3Hw2M8Ic+0DlOkDNT0055dyuqObRZ+y
 uKKrFoLx2VLSipA8Fw+j4VtycgW7kbDhGaq5q6RP6nf9rk60eNj3LIJcwgfGnHkzC6FAkHs1ykz
 DH74RD29Hp4nNoqp6WAhZ7ZpSgC/X+ANft5w==
X-Received: by 2002:a05:6000:2384:b0:43d:779e:afa8 with SMTP id
 ffacd0b85a97d-43fdbb4c547mr2401612f8f.16.1776339967967; 
 Thu, 16 Apr 2026 04:46:07 -0700 (PDT)
Received: from FV6GYCPJ69 ([140.209.217.211]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43ead2decafsm11733648f8f.0.2026.04.16.04.46.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2026 04:46:07 -0700 (PDT)
Date: Thu, 16 Apr 2026 13:46:04 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Petr Oros <poros@redhat.com>
Message-ID: <ac7iry5ffmiecu2oefmcxgso2mkgbfcdpfeefz4564ecg4ikhl@2zerhrznznvk>
References: <20260416113952.389405-1-poros@redhat.com>
 <20260416113952.389405-3-poros@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260416113952.389405-3-poros@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20251104.gappssmtp.com; s=20251104; t=1776339968; x=1776944768;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=GtLBep4veGMaf+LZNsilLGz5p0/XIc0cvD6mQ+AZGPM=;
 b=sNk8AiZ0KdTwASX4GcnyYfajEVMUP5y23k4KlOmGrYap0Qq8FHzRZHrOr5bafosdN5
 bRJPaB4HVE9K1yi3hH9PqHTxly4l3DGtcv14oDKt/iZ1OWmFrpypuP/Wus3f0+2FKrw2
 0Pnsv1HBKx10R1CCp1T3n3MCABFx6oaXVtKfJ95QKv7jFZytS1XUjW65eh5U6sk+LGKa
 iDgy6Z7t3bzMiPHb3mN8nQJ/L+aUeyxdxfq7pSzKXR78kA88pmlr+V9RO8i5p5s9nl5b
 jfxND8/VKJDdkBFdW+LLLlQksWgEtimc+Sb+UwxY+P/5NzbuyVlPK/tm9H5lw+VUm91r
 eJ2A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20251104.gappssmtp.com
 header.i=@resnulli-us.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=sNk8AiZ0
Subject: Re: [Intel-wired-lan] [PATCH net v6 2/2] ice: fix missing dpll
 notifications for SW pins
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
Cc: Ivan Vecera <ivecera@redhat.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Rinitha S <sx.rinitha@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:sx.rinitha@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	FORGED_SENDER(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	DMARC_NA(0.00)[resnulli.us];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A854E40D9E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thu, Apr 16, 2026 at 01:39:52PM +0200, poros@redhat.com wrote:
>The SMA/U.FL pin redesign (commit 2dd5d03c77e2 ("ice: redesign dpll
>sma/u.fl pins control")) introduced software-controlled pins that wrap
>backing CGU input/output pins, but never updated the notification and
>data paths to propagate pin events to these SW wrappers.
>
>The periodic work sends dpll_pin_change_ntf() only for direct CGU input
>pins.  SW pins that wrap these inputs never receive change or phase
>offset notifications, so userspace consumers such as synce4l monitoring
>SMA pins via dpll netlink never learn about state transitions or phase
>offset updates.  Similarly, ice_dpll_phase_offset_get() reads the SW
>pin's own phase_offset field which is never updated; the PPS monitor
>writes to the backing CGU input's field instead.
>
>On top of that, when SMA or U.FL pin state changes via PCA9575 GPIO
>write, the paired pin's state also changes because they share physical
>signal paths, but no notification is sent for the peer pin.
>
>Fix by introducing ice_dpll_pin_ntf(), a wrapper around
>dpll_pin_change_ntf() that also notifies any registered SMA/U.FL pin
>whose backing CGU input matches.  Replace all direct
>dpll_pin_change_ntf() calls in the periodic notification paths with
>this wrapper.  Fix ice_dpll_phase_offset_get() to return the backing
>CGU input's phase_offset for input-direction SW pins.  Add
>ice_dpll_sw_pin_notify_peer() to send a notification for the paired
>SW pin after PCA9575 writes.  The peer notification is called from
>the dpll_pin_ops callback wrappers after pf->dplls.lock is released,
>because dpll_pin_change_ntf() sends a netlink message that invokes
>driver callbacks which acquire the same lock.
>
>Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
>Signed-off-by: Petr Oros <poros@redhat.com>
>---
>v6:
> - fix deadlock reported by Michal Schmidt: dpll_pin_change_ntf() in
>   peer notification was called with dpll_lock held, causing deadlock.
>   Move the peer notification calls out of ice_dpll_sma_direction_set()
>   and ice_dpll_ufl_pin_state_set() into their dpll_pin_ops callback
>   wrappers, after pf->dplls.lock is released, and use
>   __dpll_pin_change_ntf() because dpll_lock is still held by the dpll
>   netlink layer (dpll_pin_pre_doit).
>v5: https://lore.kernel.org/all/20260409102501.1447628-1-poros@redhat.com/
> - add ice_dpll_sw_pin_notify_peer() for SMA/U.FL peer notification
>   when PCA9575 routing changes affect the paired pin (reported by
>   Intel test: SMA state change did not log U.FL status change in
>   subscribe monitor)
>v4: https://lore.kernel.org/all/20260319205256.998876-1-poros@redhat.com/
>v3: https://lore.kernel.org/all/20260220140700.2910174-1-poros@redhat.com/
>v2: https://lore.kernel.org/all/20260219131500.2271897-1-poros@redhat.com/
>v1: https://lore.kernel.org/all/20260218211414.1411163-1-poros@redhat.com/
>---
> drivers/net/ethernet/intel/ice/ice_dpll.c | 80 +++++++++++++++++++----
> 1 file changed, 68 insertions(+), 12 deletions(-)

Can this patch be split to 2? Looks like 2 fixes to me.
