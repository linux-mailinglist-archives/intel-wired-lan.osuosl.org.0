Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AEeQKD6/AWq7jQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 13:36:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2655E50CDBA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 13:36:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36B476087E;
	Mon, 11 May 2026 11:36:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id riMvnSI0-6KI; Mon, 11 May 2026 11:36:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B37B860879
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778499386;
	bh=HPZurc9+/xqmPXUOQk+tYxGrrKgq/zuz8+mWyO5VOBE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=71LufVfDzXRtdjRu5B/4SG3DtVYmZFhQ65qEovICasNXDNKDPJCgNCKQXEyB3NVzW
	 8X3oJ/tk/fKb6hgSnbJH5WIULW69gr3pehcGgesE8jAoWVQU+SamyqhBZk/bQtDnZ9
	 ojkb5KP3nsiiF0Lq6mFBxr/h9/2CQ7+1aEMcM5hSuTJsUoOG3XGttf+xNHTTjBGrS1
	 jVz/j8Vf04m/G4YOi2h+5s7LOQJIfQbEQLrF4dxPCjEYrBNb5TL+EnM9vOMMCaBaD6
	 sI3MRowADiZXa8Mw+4TmVOuyWcxN3gWNNXo1qbiuwdgCIX/Sw/+jFxwa3qzg7av1c9
	 DU1l6AGUiZ1lA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B37B860879;
	Mon, 11 May 2026 11:36:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F389223
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 11:36:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4FD9540336
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 11:36:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5-S8nLgcFXWR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 11:36:22 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::336; helo=mail-wm1-x336.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7DFD84032B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DFD84032B
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7DFD84032B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 11:36:19 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-4891e86fabeso49719415e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 04:36:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778499377; x=1779104177;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HPZurc9+/xqmPXUOQk+tYxGrrKgq/zuz8+mWyO5VOBE=;
 b=XKHhCDlLp8KMzYn1OqaVPqhi0KSCJZw507Aci2a+vousnesP7acywfQLVJOU3fy3fX
 BPADCuEky9Bh0g7/ydNaXtNFOp01yz9Zr0xVtkgf+NWLkPKI/9jvDYKPWaD9wYCm3QY1
 WHjm/5Yl0APVtuESllJFNUlzDGbjGvEjiNadYwB8j+UlVpR5qN2xEWotYFwC56Efjowi
 CekrDNVkcsmeSMeQ5h0qhJVhyii/Gpmq8FLZhga2deSfprD7yIXdnOWVgc2uU9DVRI4i
 yUPsHFxWq8z6JZOaTOeD9UGKfwpR9IbhbRptlZdsW1bXjPrrtTlCysKN/dY/FIiYvdr3
 qrYQ==
X-Gm-Message-State: AOJu0YyganEyanY9OoRJ+AflriRVcyjzjk/Xw0dhK8ceejJ36e6x5c60
 4o9FDhxs9+/e+sjIIGB80QiP+vbPVbFlxGyAd7Jfj4eZsy33+hE+C1H4BIhyPrjh9EM=
X-Gm-Gg: Acq92OHiLYD01TuKSwtZHb2NtW0mrQf6+EU2pK5rVAj3y0YBSWR7HbfnoU/wmTHc66X
 yu7ZBK6e1NAHzt7mQSlTF+IbAOuTs859C4MYJxSQKrkdjz81b5RGa1EhVlNsZZVNaOpXrzdteAq
 g/WBH8QCDzCbW5eHq/DibvvGg75gkfVjrCLyvJ/SN6xVnwP3M+KO9ZmrwspjIsm7ZXn0s7xiwfA
 yntMgSuJI6+6IVJ/yVrC4LqQ5zDeNtDy2jAp3TT3fP8OrazEB/fgMJbfAmhSvfIhq9YUNHk4i9f
 i2wxhyLxKxKh7+ZMgZWc79335Jl1OLuVaGzEijn4lRxQ9an+KDFZbK7Q2WyYX5Xv4ib9g9zyfOi
 Y8tI14/AQm9nQ7CLwKNUBhI7krpawo9Kg4DBI9NzocmKKO7jLL4bMmg0eu113UadtJ7nw/x3mr9
 5K2RpJQQoWWikSwRSu7YYpcdh3d4AHNC3i
X-Received: by 2002:a05:600d:18:b0:488:b811:51c4 with SMTP id
 5b1f17b1804b1-48e51f3c4f4mr312345655e9.25.1778499376887; 
 Mon, 11 May 2026 04:36:16 -0700 (PDT)
Received: from FV6GYCPJ69 ([128.77.52.126]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48e6fffba5fsm173243735e9.2.2026.05.11.04.36.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2026 04:36:16 -0700 (PDT)
Date: Mon, 11 May 2026 13:36:11 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <agG-09NEyj4r_INc@FV6GYCPJ69>
References: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
 <20260508124208.11622-2-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260508124208.11622-2-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20251104.gappssmtp.com; s=20251104; t=1778499377; x=1779104177;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=HPZurc9+/xqmPXUOQk+tYxGrrKgq/zuz8+mWyO5VOBE=;
 b=H60LgBlULExiVfWvDm2WMJmIS7R7DW0M3MBLku7Xh9wmM193Ws1mDjTgnS4+q306HQ
 JxjWRnyNTIxoFEMBNPT6nm4sI3aCFhW1586KDKbac7i4EgDzz/JQGIyvTiCBeYRX/wvV
 zEC2ZBKdA5D7v2pqfHZuV/2plT8aMv5W9oDWVPenbO9nVE6aTbD6BJr8qiidQ1CydPSy
 dlP17ChCxrmAt3klAQpT/gKyMOSzfNwjs/EXx+UCa3HNPcgjhppdmAbsgEERoQ+W6Mn+
 k6bTLms75l67FA1xYwEuNtMCoPnrkv6zgDCZ76Up3cnuGT1j3Y37t1Cm5RXAwMtujda6
 UKQQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20251104.gappssmtp.com
 header.i=@resnulli-us.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=H60LgBlU
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 01/15] devlink,
 mlx5: add init/fini ops for shared devlink
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
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, ananth.s@intel.com,
 Leon Romanovsky <leon@kernel.org>,
 Vladimir Medvedkin <vladimir.medvedkin@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, timothy.miskell@intel.com,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, bruce.richardson@intel.com,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, padraig.j.connolly@intel.com,
 netdev@vger.kernel.org, Mark Bloch <mbloch@nvidia.com>,
 Tariq Toukan <tariqt@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 2655E50CDBA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:ananth.s@intel.com,m:leon@kernel.org,m:vladimir.medvedkin@intel.com,m:aleksandr.loktionov@intel.com,m:timothy.miskell@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:bruce.richardson@intel.com,m:lukasz.czapnik@intel.com,m:padraig.j.connolly@intel.com,m:netdev@vger.kernel.org,m:mbloch@nvidia.com,m:tariqt@nvidia.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:michal.swiatkowski@linux.intel.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	DMARC_NA(0.00)[resnulli.us];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Fri, May 08, 2026 at 02:41:54PM +0200, przemyslaw.kitszel@intel.com wrote:
>Add .shd_init() and .shd_fini() ops, that will be called for the first
>devlink_shd_get() (to initialize driver' priv data) and on the last
>devlink_shd_put() (to allow for the cleanup). Both ops are optional.
>
>.shd_init() could return an error, which will stop creation of shd
>instance. The initializer also gets an additional, optional param,
>that driver could use for any needs.
>
>If any of the callbacks will need to get devlink instance, it could
>be accessed by shd_priv_to_devlink().
>
>Both callbacks are called with devl_lock held and devlink registered.
>
>Next commit will make use of the callbacks, another one will make use also
>of the non-null additional param (outside of this series).
>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>---
>(v0) first discussed at:
>https://lore.kernel.org/netdev/20260325063143.261806-3-przemyslaw.kitszel@intel.com
>
>v1: remove redundant added blank line (Jiri)
>---
> include/net/devlink.h                         | 26 +++++++++++++
> .../ethernet/mellanox/mlx5/core/sh_devlink.c  |  2 +-
> net/devlink/sh_dev.c                          | 38 ++++++++++++++++++-
> 3 files changed, 63 insertions(+), 3 deletions(-)
>
>diff --git a/include/net/devlink.h b/include/net/devlink.h
>index bcd31de1f890..5d3a1337bfa1 100644
>--- a/include/net/devlink.h
>+++ b/include/net/devlink.h
>@@ -1586,6 +1586,30 @@ struct devlink_ops {
> 				    struct devlink_rate *parent,
> 				    void *priv_child, void *priv_parent,
> 				    struct netlink_ext_ack *extack);
>+
>+	/**
>+	 * shd_init: Shared devlink instance initializer
>+	 * @priv: shd_devlink' priv
>+	 * @init_param: additional param to pass to driver callback

The "param" word still pokes me to the eye. Could we figure out some
different name? "init_ctx" perhaps?

[...]
