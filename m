Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F90584233D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 12:36:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A392742470;
	Tue, 30 Jan 2024 11:36:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A392742470
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706614590;
	bh=z589ah/E+arRK+98FIzjabP+mwM/CT6Cv5/SEuddldo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KfzTCl/r+wCok/9x72s0j6BG5UQZhyuYYle4Qi01U08DIY6QtiG+m8aRK4MDCv6Wd
	 cRqIcFMc07nhUl9YNRBktXu+FS5E2R3HsyO/RZyD4V46bbHwwNfmtIazLTHugbaohI
	 mppjJVDJ43PXea8rZHJyFpGoCVjj56dVQ91qG0CAmdJjDnd/ZgLzS3UoO2ZOyf0cTA
	 7nIKox91MqqD++zWyOwi307iIWQScpJ0eCO1ZxeEHAIciw9+wFQZcYYwUYq1a2nLNX
	 Q02Vr5vds+Dexretim3DrM4TPNJbaPLFYVWxf+09cFJ6YrnIZFBkGYEgQihl1aO9K1
	 2p9q0kBYYiM0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q0xLCXqZjtV4; Tue, 30 Jan 2024 11:36:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 204A542468;
	Tue, 30 Jan 2024 11:36:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 204A542468
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F0171BF681
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 11:36:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 23F91610BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 11:36:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23F91610BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AlfLR_8B5Bw5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 11:36:19 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5DDF9610AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 11:36:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DDF9610AF
Received: by mail-lf1-x133.google.com with SMTP id
 2adb3069b0e04-5102e2ab56eso3323035e87.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 03:36:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706614577; x=1707219377;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=z589ah/E+arRK+98FIzjabP+mwM/CT6Cv5/SEuddldo=;
 b=PZAaNSjFMe84JXpoZwKtYyvnXWIpIAxuNWunQPmuSPFzX2BKavQn+q4C5BuRe2DoJm
 hh2aglluqR/QbYj1tY3tQ4jjZD8ueiPiCM6W2xpbPuVvtSDLDpjXdEV9RxlhnJtKZNNt
 /i6730GTDi+LKpGYKereQIigd0VaXVHX8p89goNE1X8aGRO4k1sGN8Zq1Kyscz9zsIYD
 j63xI/AwQ66DKGeCle+KyGTCNHlfnICA3ql66zb63nt4LSPNTXjhCVvOm6smNxa5oCv+
 BT++R10mLGGpIbqtV9CXcUbdxb1tMLOboCqUGkizXWYEJ3kpPXyrO1AcoiD0vbQ4kY/z
 Ixfw==
X-Gm-Message-State: AOJu0Yy/e9E8wTPeHhCP8rIQiQZAf2M62XF2THVtxy34qLYkzAtZ1ng6
 BLrustJ0GSvp03PRsiThq18qcbTJwkxIn7gkZctoacEJQ0KXCm9EHA+3B+p00Sw=
X-Google-Smtp-Source: AGHT+IGPy0uAw1buNJJZrWt9XnskuJ7XWCPeSlguGsvrKZhuhRZxrERWaw+BR+NwHlRl4eEuwszBng==
X-Received: by 2002:a19:4316:0:b0:510:1624:d78a with SMTP id
 q22-20020a194316000000b005101624d78amr5164645lfa.48.1706614576641; 
 Tue, 30 Jan 2024 03:36:16 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCVe/u7U2u9Ln/gA3oj6ap3ovswULcaPor+4WIElnNSdl+h+6A880MWIFKr9qsIHLFnjEiU21Dzd2p7Yv37/fXKTvF4Fxm6Je3rSg+qcyMHLCnrho5ZxB3pMElQs3jzG5V7gxzMFNTn0Qi0VTS+M6qusiHzPm1UvYbYs+/O0pZHE2lo6HI0z30GETvvhtV5++qPJQcK784hHRzoWVUz10QoOGkA2er0hnJxK+x6B0lo0CHcuZltn/nP6Qp0Njr+JsqCYGw==
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 a13-20020a05600c348d00b0040f032787casm1518334wmq.38.2024.01.30.03.36.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 03:36:16 -0800 (PST)
Date: Tue, 30 Jan 2024 12:36:13 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <ZbjfLTeXRA3-UzDW@nanopsycho>
References: <20240130103101.88175-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240130103101.88175-1-wojciech.drewek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1706614577; x=1707219377;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=z589ah/E+arRK+98FIzjabP+mwM/CT6Cv5/SEuddldo=;
 b=yuFEMT3liqa2s/skf2Eol6kSj/V2zvcQiFqgZM13hksniKbgdl2EYOLqRWBeCYWsT+
 GviVjA1jtvYnvoJd1/p2f01RRK7xbldU2K8+5jJto/DogvY3pdqSSevsBBIs0WzSH8P4
 3DBlJwrnSsAEJUY/C/WOUl+jw4rEUV3pxpuyQvpiw2qTJ+xVdMo7rhPd27yXLVM1DqGW
 0gfh3e+aqXSv4P7U3zvtBqnR/R7qFjPiFfyZez/HDJnXFhXhHowA6vI/VvrgTWsjJSXj
 A62FGNxCK6w9ATvK6UzdE0yyM3uVPNB9l0QgFsQbj+xzw9gMNfTRGoybZEQGVmnh/oK0
 waSw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=yuFEMT3l
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ice: Remove and readd
 netdev during devlink reload
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: bcreeley@amd.com, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 paul.m.stillwell.jr@intel.com, przemyslaw.kitszel@intel.com,
 vadim.fedorenko@linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Jan 30, 2024 at 11:31:01AM CET, wojciech.drewek@intel.com wrote:
>Recent changes to the devlink reload (commit 9b2348e2d6c9
>("devlink: warn about existing entities during reload-reinit"))
>force the drivers to destroy devlink ports during reinit.
>Adjust ice driver to this requirement, unregister netdvice, destroy

s/netdvice/netdevice/

>devlink port. ice_init_eth() was removed and all the common code
>between probe and reload was moved to ice_load().
>
>During devlink reload we can't take devl_lock (it's already taken)
>and in ice_probe() we have to lock it. Use devl_* variant of the API
>which does not acquire and release devl_lock. Guard ice_load()
>with devl_lock only in case of probe.
>
>Introduce ice_debugfs_pf_deinit() in order to release PF's
>debugfs entries. Move ice_debugfs_exit() call to ice_module_exit().

Sounds something like 3 patches to me :)


>
>Suggested-by: Jiri Pirko <jiri@nvidia.com>
>Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>Reviewed-by: Simon Horman <horms@kernel.org>
>Reviewed-by: Brett Creeley <brett.creeley@amd.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
>v2: empty init removed in ice_devlink_reinit_up
>v3: refactor locking pattern as Brett suggested
>v4: fix wrong function name in commit message
>---
> drivers/net/ethernet/intel/ice/ice.h         |   3 +
> drivers/net/ethernet/intel/ice/ice_debugfs.c |  10 +
> drivers/net/ethernet/intel/ice/ice_devlink.c |  68 ++++++-
> drivers/net/ethernet/intel/ice/ice_fwlog.c   |   2 +
> drivers/net/ethernet/intel/ice/ice_main.c    | 189 ++++++-------------

Yeah. Would be better to split. But up to you.
