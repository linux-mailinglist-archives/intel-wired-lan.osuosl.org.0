Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF5E831B06
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jan 2024 15:02:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB16361AF8;
	Thu, 18 Jan 2024 14:02:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB16361AF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705586570;
	bh=20bX/XFWinF8o/RfO/KBZGAkxhlss84UAKlLhQSztPg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GBiI0CNg1Moxf3YSUiuNoaPFinH8z0TwEwe9dekZKgPGJnjxCHj8u8oTR4nLPeAdF
	 Os7wXno/knqVSdSkCxv+9ZSZgiGUIurfXa2RuCuTA7CTYxfJX2DLW3T90CY6RerZZ0
	 7F1ig1lG6u1WxgwNh25SBa71XAP1PfEeQZOIR8v5XOpgrHbzgzmZaPdzVR1aexexOf
	 X7viv/zlwOu1sPO+/wmW3I5JW5AdSvvJxrqOJxKdAh755EgayIPBoYBATQY0IxPJ5x
	 FBLi8G7NmFMRC9HF/SkUBAcH6C4wyeQsdv0mWUj8Ezr8zeHBhzdJosNtDTaiQybp1e
	 12zaGsr6LMpyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EFhYrQae_Wvw; Thu, 18 Jan 2024 14:02:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9E8C60D59;
	Thu, 18 Jan 2024 14:02:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9E8C60D59
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA90D1BF429
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 14:02:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B46A5437F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 14:02:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B46A5437F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LlTXZ8i5EhXI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jan 2024 14:02:42 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6A06140484
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 14:02:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A06140484
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-40e80046264so44552615e9.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 06:02:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705586560; x=1706191360;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=20bX/XFWinF8o/RfO/KBZGAkxhlss84UAKlLhQSztPg=;
 b=PMmrRvoYFUhaOf2xzFoyv9j4dS7q7CiwI3NQVkvZDUE9aCrtW17oJFwK4ppurxLrgh
 sQSeq/lwdFGAGfX2BNp29db6lzdHZtXQb8HTpWIKgVwZM7qBX8wBBqGzGp0NLaH0Iudi
 LFCvWasYqbvszTFercl6z61U1WVohZV1boW1EPavBipfKvpK2CkiqZoOYqKUTye+EG5j
 4GzLHx8onR9N+qgJwnCUxk5sl8YMnCjs1j9AQrGrdPhfHwupiQAFpvPlOJAaciTvVb/H
 mPt10Fj5VrD68wQisSwN/wlxrnWBir0oFA2un8XrXtakyi9dmO2FoQFRzA2ATT6PyhGk
 KuZg==
X-Gm-Message-State: AOJu0Yz8MjDBIpEGImBqqHbUc/9KgXbiDHgFlt6tVP2/CG+0XPbpN30c
 jUOcq8p6Z2iXcRxv35XAf8WqrrRKJ1OuTEkNErXZRmYaNNGrBQtilVlchBcO6ZM=
X-Google-Smtp-Source: AGHT+IHWI//6laMgHdYMGjsOTaEMH9f1zk20uprry/MLMWjdw5OyhiMBKxMuHGUcyVloSb3CWRNThw==
X-Received: by 2002:a05:600c:ac5:b0:40e:9007:5cf1 with SMTP id
 c5-20020a05600c0ac500b0040e90075cf1mr613691wmr.19.1705586560394; 
 Thu, 18 Jan 2024 06:02:40 -0800 (PST)
Received: from localhost ([102.140.209.237]) by smtp.gmail.com with ESMTPSA id
 j28-20020a05600c1c1c00b0040e6726befcsm22212876wms.10.2024.01.18.06.02.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jan 2024 06:02:40 -0800 (PST)
Date: Thu, 18 Jan 2024 17:02:36 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <1a2bbad4-f5c6-4a46-8dc1-ff853987bd59@moroto.mountain>
References: <20240118134332.470907-1-jedrzej.jagielski@intel.com>
 <20240118134332.470907-2-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240118134332.470907-2-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1705586560; x=1706191360; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=20bX/XFWinF8o/RfO/KBZGAkxhlss84UAKlLhQSztPg=;
 b=Wz/LTwSHe4mjviaXg62DZd6jWc8KBH5eyDPljOsBKBzku5OOXsVZnc7h6akROljxzn
 xx1AVYqd7/IKtofApGzPoWP3ZRndSxSTKiEq/i68oUbK+Aa5wFk3zp/gEs/OM0VKe10z
 93Mhq3u0+avzmZ18asu/lGpvdRGeah9q6/1MolCXCYhyQCdc6pNQuUCSL/2bgygnVooS
 00UkdSoi4fTjclY6WEmXzgZGiGcrq4TZTWHY8QqlYldwpjnlspI1fY8pAqU/4OoSZpMN
 99PhNHZ/JLck/cf9kY2JEcX0NlIt/9i/FjdEE6WeYM7EhJhp8TuB501/LUfutbMWMo4k
 T8pA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=Wz/LTwSH
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/3] ixgbe: Fix smatch
 warnings after type convertion
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
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thanks for this patch!

On Thu, Jan 18, 2024 at 02:43:31PM +0100, Jedrzej Jagielski wrote:
> Converting s32 functions to regular int in the patch 8035560dbfaf caused
> trigerring smatch warnings about missing error code. The bug predates
> the mentioned patch.

It's not really a bug, just some suspicous code.  Especially the
"If 10G disabled for LPLU via NVM D10GMP, then return no valid LCD"
return.  But it's actually all fine so this patch is really just a
cleanup.

> 
> New smatch warnings:
> drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:2884 ixgbe_get_lcd_t_x550em() warn: missing error code? 'status'
> drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:3130 ixgbe_enter_lplu_t_x550em() warn: missing error code? 'status'
> 
> Old smatch warnings:
> drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:2890 ixgbe_get_lcd_t_x550em() warn: missing error code? 'status'
> 
> Fix it by clearly stating returning error code as 0.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Closes: https://lore.kernel.org/r/202401041701.6QKTsZmx-lkp@intel.com/
> Fixes: 6ac743945960 ("ixgbe: Add support for entering low power link up state")

No need for a Fixes tag.

> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

Thanks, again.  I do think this makes it a lot more clear.

regards,
dan carpenter

