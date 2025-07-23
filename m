Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A27B9B0F201
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 14:13:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DCEF60B99;
	Wed, 23 Jul 2025 12:13:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nGwYOR13F1UQ; Wed, 23 Jul 2025 12:13:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86D6860EEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753272792;
	bh=FldOWy8/ITk7ZhfwmeYSrmVuHjEwyUuCLxbw5dH2QjU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=suMJ1oUGBNftD0TcLuJSSMUxWoEeYanH8N0hh1wIXtBO8iCQ+Dz33nuyCaRYoFFMK
	 rGWlnqtFWj2X700cgyeQd2589G7h0Eg8gamUMEieeQcACP2GbwTHs4gz2YxS63QwMR
	 Qj6lnyxWHPKv7qDapSUnt5qSuCY0qqEgHxVPUQGSByPh9y1sFXJLJZZvJZe42/LFQy
	 TtpZeFktTVny9CT5J3+IvG2A4C6yycfgB50dMNld2lJL6WuQ8xNF0UG6Z3ySAsGSqf
	 UfL4j8EAwgUZXb98DRSgJjpqHewBn8+STSAzAj4rpVcxn08UMksCWfPQxHx0ZDZOrS
	 X/+zeZYAAhPuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86D6860EEE;
	Wed, 23 Jul 2025 12:13:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C5FADA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 12:13:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7E4B360D72
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 12:13:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nKdlRUAiO4gK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 12:13:09 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::336; helo=mail-wm1-x336.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3860B60B99
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3860B60B99
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3860B60B99
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 12:13:06 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-45618ddd62fso68202275e9.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 05:13:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753272784; x=1753877584;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FldOWy8/ITk7ZhfwmeYSrmVuHjEwyUuCLxbw5dH2QjU=;
 b=NY/EtqBYO7jOP02fMNrjhIV2P2FwF5w61HIeEuPMrM9WKa6s6sGyF/bCaQXS5W4bqX
 FyOCiEhFP8BkFkBP6Mwmp+ES3Ja0PE5n/eov1ezT0Ky/o9Z2SYYFz+AcTFHR8K2pFZWB
 phyezn1556H3uvTNV4blEWK2iulhGo6Ya1lVPplg/PqwXS1BAnFN9RWtB99SVcPtl6/f
 c2ry1c3/zLme5SqgWzSx6KHP5yn2qU1dnt9ymTI5F5WCVt4UMBJfLjzlHz9iQEFAp261
 3bVjHlqGOqprJJ5pPRKUiv4Z4oVknDLMIIPan8fsr7n2sS5UDHknHomBddBlRi/T/yP3
 7kcQ==
X-Gm-Message-State: AOJu0YxWBQ9vVG4M7rfcW77CxnLsHAzIKWJpTTer44To/iAyLgt2Xpls
 vLpEVFH/FtcogvtazWyXn/6Xhjt/9RSkIQk1Z3CDH5/xvrx7uQSekq+CreOZqk09XPY=
X-Gm-Gg: ASbGncsVmPMyS8AFi/cl1dpDMQlJtXFsAm0X8sAVCoBk/I4DD01SPDITN1DvzR2/sy/
 igovoqWiCBEFa/gBjc/+sobIRaaqie8FnSm2fkIKrD9ejRubBy8vTJbkfixwHtA/aLSOjZuqsyZ
 T+W2Sn8bg1aiHVF3EBcjP9xNXr5DTTRUrjI0LixAL1S8Wc/HDYsznbFRwxhOlxvSpoTJ0ly3+4/
 7kkCMTpORXNaCtMzEgUun3M3AcSA6J6C/SApkgNUrqRmRTBidWmcg7sDZBQ4/76jEDvpqNLIHHw
 0yQLpsCO9Jly/tSOoFDxamoQvhs8QySshM+wBkJ1w7Kxulpc0HAY/9rY2eLm6JbiaWsq/nEdpUG
 kFswLrYy939Fs4pzHNZl24zPr
X-Google-Smtp-Source: AGHT+IEzrHcondk4/pQXmw1qMla46+2r0BeNYSpJhDSNNR0BQ/8qr7wpSrABN3Lz7VmTYLw4x8Snbg==
X-Received: by 2002:a05:600c:80c6:b0:456:1560:7c63 with SMTP id
 5b1f17b1804b1-45868ed969dmr18211865e9.3.1753272784217; 
 Wed, 23 Jul 2025 05:13:04 -0700 (PDT)
Received: from jiri-mlt ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-458648f5ed9sm33783085e9.2.2025.07.23.05.13.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Jul 2025 05:13:03 -0700 (PDT)
Date: Wed, 23 Jul 2025 14:12:56 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 przemyslaw.kitszel@intel.com, dawid.osuchowski@linux.intel.com
Message-ID: <2hgukyjbhhafp5zruf5yb5rjddmjsyo4hwjd5gyyuomuugr5wu@vrftn6sxn4yr>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1753272784; x=1753877584;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=FldOWy8/ITk7ZhfwmeYSrmVuHjEwyUuCLxbw5dH2QjU=;
 b=DOEH+E1Ly8HFBq+T/zUKn0IXrHSAxlaUEhK4Id9jGH+vm3T3leFTMDoXvv5AZOfG/7
 5AIp5UNe+ncokQGBby9U/4owIezl0O6zeEcp7pZgsw39curgVUJNrP2AT1cade8NCqYe
 ZzcMFF71yGBmW47sUJfvi/5a3kkzsWY8gY0QC6mMkS1JvQwGnhBGDC74DYo8J5jcYjrO
 w8aMdchJbLEYplvWvjo0z4c6J7Jl5ylRvPoQq8vqJie4iKyP7+tKT4Nhirc9OM0SxpzV
 4x8Xo3/7MlVprut5+qzUMYPKA1fPuk71sc/5/+AK9JsIZmXzCjxCHEDV9krASn2pMWby
 Zw/Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=DOEH+E1L
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 00/15] Fwlog support in
 ixgbe
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

Tue, Jul 22, 2025 at 12:45:45PM +0200, michal.swiatkowski@linux.intel.com wrote:
>Hi,
>
>Firmware logging is a feature that allow user to dump firmware log using
>debugfs interface. It is supported on device that can handle specific

Did you consider using devlink health reporter for dumping this?
