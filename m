Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E74A77709E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 08:43:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30AC660FFD;
	Thu, 10 Aug 2023 06:43:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30AC660FFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691649800;
	bh=4QZsGGCKBzlAvz1x6FiqEEkHob5baADEgFbDCCUnjRU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pQ7rPAy89QnuvZ5w5P4YRwL+pTqNXY/bchteQGQMP/uiaV3Z5IHi8cM7uT6NAvMjv
	 LOt4MNXgsZsTEDA9G097pbQTDskvdpl62Ix5OUK0OJZqTwwAkxI2VxpBijKiKBEAhD
	 OHrn/U9kbgw8jZFbk4lhaJtYsgS6WVG6Rx+lgI5I+uiCJYxxcn/B04vBw/v630BcZR
	 zM4AtiUOcXmqrB0tXXiGO55vkH7Aev5h+FXXGx/l6S5/3Hj0VaUS47TbwNo4D5+qLo
	 c8RSzH2N5Apf/zzfmlcN9my+/lk/G2YjLIcSACmwnYzoXVtSpWM8BMmhWUDXWG1vUP
	 MW2AXnHw0nQ+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iv64vasvIkFq; Thu, 10 Aug 2023 06:43:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17D0560FF9;
	Thu, 10 Aug 2023 06:43:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17D0560FF9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7388C1BF39F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 06:43:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 524334023B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 06:43:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 524334023B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qZA2OxsQuZ8J for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 06:43:07 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AEC14400E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 06:43:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEC14400E7
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-3fe5c0e58c0so5137425e9.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Aug 2023 23:43:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691649783; x=1692254583;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yut2Z+a14yxMcDEXkZzdFPLfRVZ9Qb94p4k3EOO68Sk=;
 b=VHKLtODl166ehBPyfBjJhtGUSKDMUGmhCgcMlUfx2wghVu8eBaScrfEZ6IMRvs3Ilc
 vTGUHjaavB38DAK7oxic9amUjHgySWO+Ih245hegGR5vkLHub0vPcFGytGG3MjytrpCY
 ijaI1+kzbk1ORBbzbX8je7MXqjeXmWn9bhUhiev+J23c/df3jsNM4Xx6zYo8FWlX/kTn
 11isUVQ6apJgy4+lRvYTbvvVLPcJIUvnzgEgKQWnAU6sMm+pJ/pbZvwy89pI+jNKjAeS
 CpIF/D57XwyupRL+ZCle42kqi+oDd+W1r3Zc0m7evAGQtLVZt5/XVYLLyHD/qc9NoKaK
 po/Q==
X-Gm-Message-State: AOJu0YyMZECsXEtktPLPSTVuoW/C8T1la6409ihXqbUIGoQyowHldR8W
 3fAAJ9S5BVqA3VQ0DcjauA37Mw==
X-Google-Smtp-Source: AGHT+IEb+I3lyZINCDfzufoiEQMlOzN4F9fGAh7xM3gOhb0li7sIX6eV0rOgKMK5X7Ymolf57qXmPA==
X-Received: by 2002:a05:600c:4fd5:b0:3fe:4d66:2d4b with SMTP id
 o21-20020a05600c4fd500b003fe4d662d4bmr1096237wmq.28.1691649782577; 
 Wed, 09 Aug 2023 23:43:02 -0700 (PDT)
Received: from localhost ([212.23.236.67]) by smtp.gmail.com with ESMTPSA id
 b10-20020a5d550a000000b0031801aa34e2sm1066784wrv.9.2023.08.09.23.43.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Aug 2023 23:43:01 -0700 (PDT)
Date: Thu, 10 Aug 2023 08:43:00 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <ZNSG9GwGhND0YsBr@nanopsycho>
References: <20230809214027.556192-1-vadim.fedorenko@linux.dev>
 <20230809214027.556192-8-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230809214027.556192-8-vadim.fedorenko@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1691649783; x=1692254583; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=yut2Z+a14yxMcDEXkZzdFPLfRVZ9Qb94p4k3EOO68Sk=;
 b=1jfPBNHE0y4mAOO5VPnZKKKbCc0i2D7mzRSFE7xLau88UAVMFTX/eIuLcqpU9qIQqF
 nTnGkB+J9fE04oWwgeY69dzIzbrmF5HkVCJfbjUZYUxWqtVAeGP/n/32olVrS/Kq9gP0
 AdyrPcVcNQKU7lmrCLa6Q/x6Q3yOqy5Q/MuD0TDr8+p44PerbSjSQCyClZSUb61+HMwx
 05UzRyUzxOz48sQV74+3TaRKFSxhTkC4j6c7aYvU5iK1WLq8pWDPehJlpEXtCwNaSitv
 zCuNUMe+m53dt2TPiqkgm7G1h+L+qYGH7c+p+gc5KfR+yJdkbVBMsdUgF81bOGfrXvAa
 imJw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=1jfPBNHE
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 7/9] ice: implement dpll
 interface to control cgu
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
Cc: Bart Van Assche <bvanassche@acm.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-clk@vger.kernel.org,
 Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Aug 09, 2023 at 11:40:25PM CEST, vadim.fedorenko@linux.dev wrote:
>From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

[...]


>+/**
>+ * ice_dpll_deinit - Disable the driver/HW support for dpll subsystem
>+ * the dpll device.
>+ * @pf: board private structure
>+ *
>+ * Handles the cleanup work required after dpll initialization, freeing
>+ * resources and unregistering the dpll, pin and all resources used for
>+ * handling them.
>+ *
>+ * Context: Destroys pf->dplls.lock mutex.
>+ */
>+void ice_dpll_deinit(struct ice_pf *pf)
>+{
>+	bool cgu = ice_is_feature_supported(pf, ICE_F_CGU);
>+
>+	if (!test_bit(ICE_FLAG_DPLL, pf->flags))
>+		return;
>+	if (cgu)
>+		ice_dpll_deinit_worker(pf);
>+	clear_bit(ICE_FLAG_DPLL, pf->flags);

Clearing the flag after deinit worker somehow implicates that it needs
to be set until here. That is not true.

Please rather use test_and_clear_bit() instead of test_bit() which would
takes care of the clear alongside with the check.

With or without that.

Signed-off-by: Jiri Pirko <jiri@nvidia.com>

[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
