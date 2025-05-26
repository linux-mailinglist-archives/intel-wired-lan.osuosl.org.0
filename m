Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A092DAC3D02
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 May 2025 11:36:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95E3B607F0;
	Mon, 26 May 2025 09:36:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BuNzG_9eAHVR; Mon, 26 May 2025 09:36:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 277AC60668
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748252176;
	bh=X9BRM0LvviL+8wFs3cVyB9IuGOiHLgzwjeAZMfe4f9o=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Au6/gkV8gQyw5JLTD1xqyJrFwlnuLMr1h0a21xi33FYD7R1aPExSkK181BTctaSRS
	 FRPCxOxkejjcI1WOvgg8EtOAqBZuzTb31IbLQSpAw3EVX9/hdanVq4XeHRvyFhtIAC
	 oBqY2xeZuGyCa31R40un8mwiKoEHgpcFv+00AG+n9HhHsZazava8Nh2SehT9bUBuYm
	 l0FzsK1D7EFfI0jsJcAJf+iMb+hjc1BvJoHW3J8Ysbj8t0BL9A4xMHzrRdA7McWn9+
	 SyC3spiE5s7TtbXHOqtY/4PU0cBRGktfGgn6NwptChnwSbdxM5jK1cS6hIwXQBeobn
	 4dBOfPcE5bWmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 277AC60668;
	Mon, 26 May 2025 09:36:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3281719D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 09:36:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 18EAD80B27
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 09:36:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KnlXvG-tItJJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 May 2025 09:36:14 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32f; helo=mail-wm1-x32f.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DEE1D809CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DEE1D809CA
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DEE1D809CA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 09:36:11 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-43d2d952eb1so15340745e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 02:36:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748252170; x=1748856970;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=X9BRM0LvviL+8wFs3cVyB9IuGOiHLgzwjeAZMfe4f9o=;
 b=mg48BGgYbbDoltIuAIGmhNdaSKaNfzEhA/HMStMtEYfVYoDh2vYxUasBairEDlThVO
 6/BFl/UHuBKbew2f65EI9Pq4YtKVGX/sDzEZQtK6l5a8+iqsKSujJBD4RU7w34cnHejT
 YKG7ee6bvlqIsONR+QKAuP2pFYnW0+MRz2LjRu0l1YYQ0Z0uA+cEPKuR/Nf/OAew1AhT
 b1rhxRd4M6ibhWPFl3vI9ldcYTMZkrwDRD1R7nz1o+jNqTdGE9i6ocaw2T0lT+fP4STM
 a60+9QKXHsIOnT9gR66d47AGFi8+kGvwWQhTvC7k18AOtOPd4LePauUnwd9lYlhGESfI
 MFrQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWs4Wh1XpUJltAB+/OyGYj1LUKpvLZOw8I+HGNSHDK9feaPEqvkWhUB7ofDPgGr1jDKWRJGvM920GNeSHAo0Eo=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyWyj7Wr9wPrxEC8fmPjB+V81RhV+wd1F0LbxOKK+axZqYIYbx8
 0FU/RlnovLhKlPdQGa2S4nO7DqKcAeJGbXwOJP2T84+8YBVTkrHrOOw9M+wX6gGmlRU=
X-Gm-Gg: ASbGnctz8oQKXWGE1F7T3XH6SBx9yI6LFyebIoOzStYOss+bUFkMTYulSRwYSI96iI9
 17ClvDOpqGViDee7xPdv+XVDm/EY9hK0uEs6C9e49HevizzzNtT55VcIDmFL+LfQlkT76GpUxRC
 abwL5hekUW93wHBb2DXJCTviU4GShstBTSnfeEcsKhHGhp5ijRdxbiInKIYvomJFOQm3RwsiTT6
 bKQ9Qe8EpOtr3V+a7yloefniYArgBVeIeiezoXWm/40xSeLpiXSVc1EUCrG9moHSz2Y7pn8BUsw
 AUeIwrMXghFVM4qR3ITW9cJfDtkUK4uPd4/MM35YkCwAHFzFKOXehx9x0wos/9a/qZOHpzwIgMM
 nO/4=
X-Google-Smtp-Source: AGHT+IGDSx/uqIzjPbt/RIIG6sl81DhorcyGxspFB+QasTmVd+rJASc8gBkYSwK9BSg3kAtpjSzzEA==
X-Received: by 2002:a05:6000:2082:b0:3a3:ec58:ea98 with SMTP id
 ffacd0b85a97d-3a4cb45f1dbmr6352050f8f.22.1748252169629; 
 Mon, 26 May 2025 02:36:09 -0700 (PDT)
Received: from jiri-mlt (37-48-1-197.nat.epc.tmcz.cz. [37.48.1.197])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-442eb8c92d9sm227117135e9.2.2025.05.26.02.36.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 May 2025 02:36:09 -0700 (PDT)
Date: Mon, 26 May 2025 11:36:05 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net, 
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, milena.olech@intel.com, corbet@lwn.net,
 netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-doc@vger.kernel.org
Message-ID: <2xdi4cs4iuvio4mm5qx3ybu2i7ceiwexjgj426uodujgza742y@t7cjhunlpbvd>
References: <20250523154224.1510987-1-arkadiusz.kubalewski@intel.com>
 <20250523154224.1510987-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523154224.1510987-2-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1748252170; x=1748856970;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=X9BRM0LvviL+8wFs3cVyB9IuGOiHLgzwjeAZMfe4f9o=;
 b=ePTCqrEXLQe1k4jZkfpCc2KsaszhKJGFC8sgFWzham3pl1U5I+EXoD7ZqephJamuyn
 3QWeYoMyV3JJmb3Uifbo70lOytR14wrc859r+hpGR+XcFj9LiFb42e933X/vXJKU+x/m
 w32oX+aRQINPryIsprlXwDIPSB/Q/eGO6JaPA0FlYihj1OrrBQ2VinNHkZ2xzMOjNOUj
 6WRWXU7GuSgV4R28AgudfXiuaz3iPFQ0oTjUvPZgtRkviaVH5TWxRZP2iRB7aZA/aknk
 8xDUs7L/xcgiKdofBOqOP1WC+gnw+GWJYSb2JWZ34kg8gqWOJ+oVudinb0VVAvzxTsA+
 ettg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=ePTCqrEX
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/3] dpll: add
 phase-offset-monitor feature to netlink spec
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

Fri, May 23, 2025 at 05:42:22PM +0200, arkadiusz.kubalewski@intel.com wrote:
>Add enum dpll_feature_state for control over features.
>
>Add dpll device level attribute:
>DPLL_A_PHASE_OFFSET_MONITOR - to allow control over a phase offset monitor
>feature. Attribute is present and shall return current state of a feature
>(enum dpll_feature_state), if the device driver provides such capability,
>otherwie attribute shall not be present.
>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Reviewed-by: Milena Olech <milena.olech@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
