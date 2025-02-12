Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D725FA3297B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 16:05:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BBD4424EA;
	Wed, 12 Feb 2025 15:05:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id To9oTgVH3UkS; Wed, 12 Feb 2025 15:05:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B61F2424E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739372739;
	bh=0LW+cJqHaSbaqjs/gJfVwUq4cdkqyGBJej9TaePDAfw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lhVEAOAt38zNayQ/C+HrbTkPjIKhdQBawcxXa8dEnYoj8ddkRmhk1cK96+TLWvuzx
	 RwOR3TnsMMZn2b+QG7fGLM+2qmJDDPZTF6YFpTDYGSplmQTJeE8UrUrk4zmHXGJyGD
	 p/iNmZYReWgD5NaOSllVDGBv3Gv2ocQuBAk0X22WTHoaSrOyDwFndRbKrT/VqVIRkH
	 cH5qoAJec3pYEO6Vk/3cQH2p7IJVOB7+Ohh4jDHoEWm0i+W0okd4u1SBFon8w6q1X9
	 +lpVHdqzOnyNsz6aRigY76zFrtE3Rj/zZW1stoFfPnhFMXcPqJtGcAGbbxtLW/Ga0R
	 Sw/Iak1yJLPuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B61F2424E3;
	Wed, 12 Feb 2025 15:05:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 97B45C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 15:05:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 790D64131D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 15:05:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0x3tjFM3Qrun for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 15:05:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::331; helo=mail-wm1-x331.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 44EC441325
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44EC441325
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 44EC441325
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 15:05:36 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 5b1f17b1804b1-43944181e68so38793735e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 07:05:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739372734; x=1739977534;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0LW+cJqHaSbaqjs/gJfVwUq4cdkqyGBJej9TaePDAfw=;
 b=R/aRg6Q16Tovj5wliYVtv5WqhsMV/VIuxxaRUph1LH7HXtKHro5tFnLjMQITzhTrba
 vSMehxAOtpok/MRtxWxwDA8U/UpuU9ykFKzzrgWltb0NxTnb+uNluryo4mPRsJorp57e
 MFuLjJEMprhpnyRdEXGSvEOXz7I6k0bKofTRClMoS+ZJl6yBLQ4FG+xPl97uWujR40rS
 ZrF2HujQvc/n0AplSZe3OXXnGfYETQH115injc3qj05RrzVEpzmwSyI0EGtV+THfBr4D
 KvEom8LTZNeEoR1u/eLNk8dlukWIxb8ZJ2Kdkrhqc4gaHJ/IPQLiim2Dgo/Y4gzB9JK9
 qrxA==
X-Gm-Message-State: AOJu0YypTCh8gtO0u+vAvn6CkKtFrGianDNY2kMXxu8mYGi1hYtKM42R
 rXkQCKm8oTTjsJz/4nyU5GFhwisrgx/6fEM0rBAngfqrbwOfIWl51bCrN7fVf7o=
X-Gm-Gg: ASbGncsm2+H9JsC1wkqN5/ZontS1RXAx5PIITCaEYtWF6hnUOGCG3X9gk17B7FykwmS
 BA8SmSr3jvrQ20RwdavTCSbSU/Gc1G63iGBxR3mR/HToRf5uxl/hzUNw3yx8ujSY4/ImNcCT1pR
 WPr1O1ctxZ/qCSs2lietLAVUavprLVHi6/fcxHgOJ81Zg6hKQcYLYwYFCMY9CChMyeDv1F8Z09h
 TwRzOzEAZnh3PEToE/yViSGGoYMqpuR7DyZ1hjXpVCzgPfvjKXo63pQHZTUGNT56ek4F5jCDIAT
 e6boFn3WDONKsUCxqnGoBCceiw==
X-Google-Smtp-Source: AGHT+IHBCT1DisQ2uWD0re37YqmFa5N5jQkihG3cb5IpzwueQUwofnfOov0k0D8x4BE4nLsrJGBwLg==
X-Received: by 2002:a05:600c:510c:b0:439:48f6:dd6e with SMTP id
 5b1f17b1804b1-439581be2demr33842435e9.19.1739372732308; 
 Wed, 12 Feb 2025 07:05:32 -0800 (PST)
Received: from jiri-mlt ([194.212.255.194]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4395a078489sm21958685e9.33.2025.02.12.07.05.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2025 07:05:31 -0800 (PST)
Date: Wed, 12 Feb 2025 16:05:29 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com, 
 netdev@vger.kernel.org, horms@kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <x2wsjmoizxg3hi44luqmc7smete2dhqze5do5qnfw7p527ixcs@ynsfzwvggawj>
References: <20250212131413.91787-1-jedrzej.jagielski@intel.com>
 <20250212131413.91787-2-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250212131413.91787-2-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1739372734; x=1739977534;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=0LW+cJqHaSbaqjs/gJfVwUq4cdkqyGBJej9TaePDAfw=;
 b=blp/olXkXcjM20PEwvsAuE+UMTWD18drDMiMely3gEx0jwaOjStk5rMumsLuveShwD
 Ptdh9pv32Uyj3TG7HJfwa5W+kHB+zPE2uYwLDoKgJSIddsdTRaVVGkEjPnSLcWPGIq98
 P6z2dNJXHVc9JAWKn6IbuiTaCgGQtAOOslFbSklidAXhcrLl5cgHslOplkF0xpM6m/zQ
 yfwpOnh/VxjKha6LnmDg9dF4DhPQ1lhP18AHnrK+UG9Rv7uHR5G94hDYxJ8jUjRIZj15
 bAT3faDqHIrURzgQPSLGwGfA79c8rU9zMyFMtFHmCLP7uhHBN4On1fsqqXGPweWBQ2k0
 QuPQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=blp/olXk
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 01/14] devlink: add value
 check to devlink_info_version_put()
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

Wed, Feb 12, 2025 at 02:14:00PM +0100, jedrzej.jagielski@intel.com wrote:
>Prevent from proceeding if there's nothing to print.
>
>Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
