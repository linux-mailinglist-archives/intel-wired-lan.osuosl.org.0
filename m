Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DBB8AA108
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 19:25:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21ACD820B7;
	Thu, 18 Apr 2024 17:25:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Vo8CSwfMD4k; Thu, 18 Apr 2024 17:25:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A9DA820BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713461148;
	bh=mHecw+rzO+LWiL74K7/imim+VobAIrmgiBEeiSPPzs8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bWmidT47rei3DbHbyoEOgIB3EB3QSYtgZ8TdzEwKvey8Tw0p/viOgmH9qBTPMqp9w
	 2MUteDP1mC4rRXCZz08WCyecjuMqZW1L+l9Nbwj8OU+eWpDeFEUnMLhzyp2Hb/5N3g
	 EvNKbONwnfuiLw2834K0gzRxzUtmm/VUB8LtQv2DiDS8pp6lCSXwXqVEen7JVeKdv8
	 Dxg9Wz+CLetGLKD7RFMmx3t48dqmTFtoBgganOb88gOnOULeI57RQydqizH6k33R00
	 ZJdeg1AXVSetQAGR27bFLI7O6k/lQ+80xrPivMqFYZBxIq9wQIB7/sDkxfh6ZS6LNf
	 qi6LGbw/Ed2tg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A9DA820BD;
	Thu, 18 Apr 2024 17:25:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4B47E1BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 17:25:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 35BE74155E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 17:25:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SdtJbjqM7Grd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 17:25:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32c; helo=mail-wm1-x32c.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3C24D4155B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C24D4155B
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3C24D4155B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 17:25:42 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-415515178ceso8869115e9.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 10:25:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713461140; x=1714065940;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mHecw+rzO+LWiL74K7/imim+VobAIrmgiBEeiSPPzs8=;
 b=ixmZiX8dxNEjs2lfbGjNAho6PXOFZbCWUKxVHRT73BBrqrlrAoFhJkyaJCt8lp9p1h
 fpR4l8tVqY3BeMQf383M0Kkx7gXR6NzOPbQbynbXGwrLg7EZkVboGi/M88F6bquH61hR
 WRZTYMsGhaH0LFl+O2b65LT08AChgXwA8kiWHETS9ln04z3oCEwTRkSdTRAlZfwk6143
 flb1MfOSQMoNj1qnjcWjt4WD7cxTwoOTEn4+xYhTMeace5aONPvEZTxe1zMxi7wJSDU9
 gl7MbZRv7/xSxhRSLRBcPlvWinMRf7CdjBAtDme5rPxm9Y2JtKgUkuaKFuokry3McTkU
 TqYA==
X-Gm-Message-State: AOJu0Yy9hgtArwv+ZJXzYa3cauaPhT1XCZtXhYe+4+JlgdpF4gKcChuO
 evCaHXBtn/2+I5RmrjaX09H3MUZYKFkSQm8Vm0LxyPnikonk5PanN/1PBYfeVTU=
X-Google-Smtp-Source: AGHT+IGUnOs/6X+o4eoVm7vjfPWuKC7TcN0KjqK38tFoax52+2CFzsdhF0TDeQVPAqauerg+LGf+XQ==
X-Received: by 2002:a05:600c:1c91:b0:416:605b:5868 with SMTP id
 k17-20020a05600c1c9100b00416605b5868mr2314550wms.35.1713461140130; 
 Thu, 18 Apr 2024 10:25:40 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 p6-20020a05600c468600b0041563096e15sm7238238wmo.5.2024.04.18.10.25.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Apr 2024 10:25:39 -0700 (PDT)
Date: Thu, 18 Apr 2024 19:25:35 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZiFXj-58u2shLL3g@nanopsycho>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
 <20240417142028.2171-6-michal.swiatkowski@linux.intel.com>
 <ZiEMRcP7QN5zVd8Z@nanopsycho> <ZiEWtQ2bnfSO6Da7@mev-dev>
 <ZiEZ-UKL0kYtEtOp@nanopsycho> <ZiEyP+t9uarUrLGO@mev-dev>
 <ZiE_nUEsGT8Cd3BK@nanopsycho> <ZiFGOkSMWs+/N2vI@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZiFGOkSMWs+/N2vI@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1713461140; x=1714065940;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=mHecw+rzO+LWiL74K7/imim+VobAIrmgiBEeiSPPzs8=;
 b=FWWqmv0mj6vfcANc2R5ML1CC/PA+6ZmF+K/qPRw3ACL+O/89qv887r8QTEzNocHLhf
 Wy6jNC1JF88SojxA2lvTezTR+KciRGGl5fCWBLUXAbt9ClnrpDwqI+PieTINUhq9An3L
 bODZcqCmZsr7xIAsK1UZ44s7pZtuxC9+kkZvpIvbz5NpQVXXpaDw1hnrjIsiR05xwb+3
 lrKNZo7jI1PZMZOtY53RWPH7yB5Q4sUYgijoWUiWn5/u1l6OQ/v8D5NjfbcZrjUc1ZeC
 3980mmOds0q7VWAbcI68KEi+QierF1XMpa86i4w+eouigjy5UtLUCkn+5yQmGqCfOtNh
 2iyg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=FWWqmv0m
Subject: Re: [Intel-wired-lan] [iwl-next v4 5/8] ice: allocate devlink for
 subfunction
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
Cc: maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Apr 18, 2024 at 06:11:38PM CEST, michal.swiatkowski@linux.intel.com wrote:
>On Thu, Apr 18, 2024 at 05:43:25PM +0200, Jiri Pirko wrote:
>> Thu, Apr 18, 2024 at 04:46:23PM CEST, michal.swiatkowski@linux.intel.com wrote:
>> >On Thu, Apr 18, 2024 at 03:02:49PM +0200, Jiri Pirko wrote:
>> >> Thu, Apr 18, 2024 at 02:48:53PM CEST, michal.swiatkowski@linux.intel.com wrote:
>> >> >On Thu, Apr 18, 2024 at 02:04:21PM +0200, Jiri Pirko wrote:
>> >> >> Wed, Apr 17, 2024 at 04:20:25PM CEST, michal.swiatkowski@linux.intel.com wrote:
>> >> >> >From: Piotr Raczynski <piotr.raczynski@intel.com>
>> >> >> 
>> >> >> [...]
>> >> >> 
>> >> >> >+/**
>> >> >> >+ * ice_allocate_sf - Allocate devlink and return SF structure pointer
>> >> >> >+ * @dev: the device to allocate for
>> >> >> >+ *
>> >> >> >+ * Allocate a devlink instance for SF.
>> >> >> >+ *
>> >> >> >+ * Return: void pointer to allocated memory
>> >> >> >+ */
>> >> >> >+struct ice_sf_priv *ice_allocate_sf(struct device *dev)
>> >> >> 
>> >> >> This is devlink instance for SF auxdev. Please make sure it is properly
>> >> >> linked with the devlink port instance using devl_port_fn_devlink_set()
>> >> >> See mlx5 implementation for inspiration.
>> >> >> 
>> >> >> 
>> >> >
>> >> >I am going to do it in the last patchset. I know that it isn't the best
>> >> 
>> >> Where? Either I'm blind or you don't do it.
>> >> 
>> >> 
>> >
>> >You told me to split few patches from first patchset [1]. We agree that
>> >there will be too many patches for one submission, so I split it into
>> >3:
>> >- 1/3 devlink prework (already accepted)
>> >- 2/3 base subfunction (this patchset)
>> >- 3/3 port representor refactor to support subfunction (I am going to
>> >  include it there)
>> 
>> Sorry, but how is this relevant to my suggestion to use
>> devl_port_fn_devlink_set() which you apparently don't?
>> 
>
>Devlink port to link with is introduced in the port representor part.
>Strange, but it fitted to my splitting. I can move
>activation/deactivation part also to this patchset (as there is no
>devlink port to call it on) if you want.

You have 7 more patches to use in this set. No problem. Please do it all
at once.


>
>> 
>> >
>> >[1] https://lore.kernel.org/netdev/20240301115414.502097-1-michal.swiatkowski@linux.intel.com/
>> >
>> >Thanks,
>> >Michal
>> >
>> >> >option to split patchesets like that, but it was hard to do it differently.
>> >> >
>> >> >Thanks,
>> >> >Michal
>> >> >
>> >> >> >+{
>> >> >> >+	return ice_devlink_alloc(dev, sizeof(struct ice_sf_priv),
>> >> >> >+				 &ice_sf_devlink_ops);
>> >> >> >+}
>> >> >> >+
>> >> >> 
>> >> >> [...]
