Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF49C40031E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Sep 2021 18:19:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6046380DAA;
	Fri,  3 Sep 2021 16:19:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FWo2xjyyh0Vv; Fri,  3 Sep 2021 16:19:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7366380EAD;
	Fri,  3 Sep 2021 16:19:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 799F01C113E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 16:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 67F3060681
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 16:19:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=networkplumber-org.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EM1nqsMw0uYe for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Sep 2021 16:19:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 082C66063D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 16:19:00 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id f129so6015630pgc.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 Sep 2021 09:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=odGeZgDUh80LbtOglqZT7TpIL3a8b5IUWFxM/rMRVuo=;
 b=hh+hnnzNXtfUDoDduEq8Qy1zGG6JdTaSlow02XWgKLKDK8SludKizTBs7YPd6/MVHy
 kjXlUWECX8C60WbBobplP9Xun1YFUilkKp+c3drIyKQG7ArptopF63iUlrTN9L16l3tF
 rF4UlAU72eo4KrRtzkYeNO3gQjvIlSpoqy4OqD5OSDGeyHPW7U5FcqyhUHfzxkCmnEpo
 +M5gaCGHxvs3hobPjHkSRMow16STRhvFC7BCv4XQmQw/M7unxZCwTnC+aqgIewomlTdW
 P4/i03ejkjjqKMsX+kuvm1TrFLhcw9cV3QBqVrMhnFpYuuIPSM3yTYFGZa7LtJq9UfFP
 irqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=odGeZgDUh80LbtOglqZT7TpIL3a8b5IUWFxM/rMRVuo=;
 b=ap5mHu6q/OrOs4Z3ZzpK/eTfpu10N5RME4TFsg6IctDFAeQFle4FFqPBp7dmDP8jOA
 qZ8FqRLYLr3dKN5rD/puMfmf5Ipd4RWANocAQ9iAOnSjgW8SQsvSCwfKgZ/NSSFemfhC
 o1avDEwObyllhAAR53rCliB5GoSYcXsL6JTNaIFhQuGGLkZ9hFJjmpGO8ZrNjRO0Z2Ok
 4S3t7fJhhAKag7j/XlxODuBHvcjlCtSF9fR2//ZgFeeZTXsn+kdc4XRgtGh/zNP8cbc/
 gejh/AlYQPjQxTdiAuv8MeGJaX+jyfbFVu1cI+h6vatkrmWDEA+7QlmlC00LchWiCIFb
 0b2A==
X-Gm-Message-State: AOAM532ecaWSPVqOGJySuNp5UcDu6LrPtSg8N44A0N9R7LzezLw+HFwg
 ExlRDY680Unla+H6f9l4VWbTVA==
X-Google-Smtp-Source: ABdhPJxbirKV8uNI4Ze/GuQJ/lxTM+sX5BkaryzloCIuJ4Q6JPCS1Jdu2jvp5k/Z2HQvX02FVK8iGw==
X-Received: by 2002:a62:1b92:0:b0:3eb:3f92:724 with SMTP id
 b140-20020a621b92000000b003eb3f920724mr3891732pfb.3.1630685940371; 
 Fri, 03 Sep 2021 09:19:00 -0700 (PDT)
Received: from hermes.local (204-195-33-123.wavecable.com. [204.195.33.123])
 by smtp.gmail.com with ESMTPSA id b7sm5736505pfl.195.2021.09.03.09.18.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 09:19:00 -0700 (PDT)
Date: Fri, 3 Sep 2021 09:18:57 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
Message-ID: <20210903091857.70bdf57a@hermes.local>
In-Reply-To: <20210903151436.529478-2-maciej.machnikowski@intel.com>
References: <20210903151436.529478-1-maciej.machnikowski@intel.com>
 <20210903151436.529478-2-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
Cc: abyagowi@fb.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 linux-kselftest@vger.kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri,  3 Sep 2021 17:14:35 +0200
Maciej Machnikowski <maciej.machnikowski@intel.com> wrote:

> This patch series introduces basic interface for reading the Ethernet
> Equipment Clock (EEC) state on a SyncE capable device. This state gives
> information about the state of EEC. This interface is required to
> implement Synchronization Status Messaging on upper layers.
> 
> Initial implementation returns SyncE EEC state and flags attributes.
> The only flag currently implemented is the EEC_SRC_PORT. When it's set
> the EEC is synchronized to the recovered clock recovered from the
> current port.
> 
> SyncE EEC state read needs to be implemented as a ndo_get_eec_state
> function.
> 
> Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>

Is there a simpler way to do this? Seems like you are adding
a lot for a use case specific to a small class of devices.
For example adding a new network device operation adds small
amount of bloat to every other network device in the kernel.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
