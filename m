Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C97AA7FA617
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Nov 2023 17:20:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D09140877;
	Mon, 27 Nov 2023 16:20:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D09140877
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701102007;
	bh=YudaQM3mCG//DDxDMMpHXZVF9bfRYg6POuxUu0YxzNs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=78QQ+w+j28OAa4y/rOMJgpqatebPKT2KqTfTi+su/D1konNFRHxXvn3Gvz+hh19F/
	 i5x9B/HmpCHvETr5UZwDkQPEfotQ5L5k3SNAYsJXpDPxB4KVetkjetrp6TA+Ufm2GV
	 F2yTxKwV7XEkee8IHZ9+Q7mOfHsiduL2EN6HRNZhiKVRf2TBIyPIhz9qQ2lN0endHM
	 jvLRONV29IxivHWZyiaCxMmNdkVdUu43pgBThYjUB6d6GY0LHiPuFj7XFOv/PpMFhe
	 8034Zy5QhG04B650ciGbImeGYhGaFnj/ZCfLY+RibsrN/duxfcw+kYBV0czhK5de9r
	 QuICyRUaTCs5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R1wI7mrX0OJ4; Mon, 27 Nov 2023 16:20:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 31CB74087D;
	Mon, 27 Nov 2023 16:20:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 31CB74087D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D7F211BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Nov 2023 09:32:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A5E9F60BA2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Nov 2023 09:32:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5E9F60BA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vV0q6g_dB4B7 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Nov 2023 09:32:01 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD47660BA0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Nov 2023 09:32:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD47660BA0
Received: by mail-ej1-x629.google.com with SMTP id
 a640c23a62f3a-9fd0059a967so830948566b.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Nov 2023 01:32:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700991119; x=1701595919;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=yOmU3FcLv9IHpWnpXMOyRk8N4XGLikXGYmNhZRvfrgU=;
 b=t1GinuOyfJ/KKeJaGuf6cq48BcUJAFkVgNUqw5MiLMPTKsS5hRg0Hn5XY8C1GUOgg2
 x1Korxy2g6vIyCfBsj04lH4iO6ABn8hmA20lPvn0Mb9M6quWFrIe2gIbms9Fx0Yvkh6c
 xkDBe+l8uQ28zRHxh52uTut8kE77b94lEHhuzpeRxQ41vBFfNXKQQYHK3HMNQgiRtScW
 zJkN3/GaeTJ+O/Yapzlv0A9VNxwsUDzsfN00Z2sYa/+nw452heZ1hk+3tCvQPgnMmHJO
 tjXBJq3jwWb+z8rs7kNnLpyTKcRZ1lCZEWHGa7G+ICAiiEiTrTlui1UlfvGXW1ZpwZnZ
 2KuQ==
X-Gm-Message-State: AOJu0Yzu/QFvJx4pZ5w+mShiYr0On1KJg9VL6/XtuLj7diBrqnU+1uOE
 IaQcNIKXDXo60KPiA0OHyA==
X-Google-Smtp-Source: AGHT+IFiyQ8KwfT65OFm0PDvf4ZvSLhyz6q80dozLeTorz/TstJdgQTPkx7bTv9Lu+BWDvgds42ULA==
X-Received: by 2002:a17:906:14e:b0:9f2:6fac:e266 with SMTP id
 14-20020a170906014e00b009f26face266mr7287798ejh.1.1700991118482; 
 Sun, 26 Nov 2023 01:31:58 -0800 (PST)
Received: from p183 ([46.53.252.219]) by smtp.gmail.com with ESMTPSA id
 x24-20020a170906135800b009fc8233fb66sm4371905ejb.36.2023.11.26.01.31.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Nov 2023 01:31:57 -0800 (PST)
Date: Sun, 26 Nov 2023 12:31:56 +0300
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <072e3c8f-88d4-4947-9f90-b26533267c4f@p183>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Approved-At: Mon, 27 Nov 2023 16:20:01 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700991119; x=1701595919; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=yOmU3FcLv9IHpWnpXMOyRk8N4XGLikXGYmNhZRvfrgU=;
 b=lJcV49stM9ugNH2B5myoZBW0MgU04hZpEJA/uWhd0+dv3R8Tst4FaTpo3DLIwPcmZR
 ftD6tw7a7gqoPenouyqFPrR9HHowtrGWIGJ6dtSHILfYGuBVc27DGcm3oH2DuQm9chJ+
 Xfe6lmBFoNVMKM6dZl8po1p0YLHeVEdnSluuE+s/NFv69JXYwf4gu+URxb9TObvCTZ63
 cm6ej+qKewTbgE72gExrDGPIqrxkuqKkC3KLLyV/B4PFTNjmbMcJudec2ZA+phvhOTk9
 GhHEWTYxdwDAxaS2aSNp6YgFW7vpOeG0Ofs5NEY+8uXTS0zJlPz54xR+1SPYWdC7mjKz
 6emg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=lJcV49st
Subject: [Intel-wired-lan] i40e: bug at i40e_napi_poll trace event?
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

"i40e_napi_poll" does

	TP_fast_assign(
                __entry->curr_cpu = get_cpu();
        ),

which should be buggy because get_cpu() disables preemption and there is
no put_cpu() in sight (and none necessary?).
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
