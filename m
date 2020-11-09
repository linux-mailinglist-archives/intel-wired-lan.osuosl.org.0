Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6996D2AC642
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Nov 2020 21:48:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B154B85FFD;
	Mon,  9 Nov 2020 20:48:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XsD3KJY592kI; Mon,  9 Nov 2020 20:48:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3725E85FD4;
	Mon,  9 Nov 2020 20:48:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C5DB1BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 20:48:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 57FA285FA7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 20:48:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rMqvpklHXYXp for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Nov 2020 20:48:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CAF9F85FA4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 20:48:27 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id f16so10304991otl.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Nov 2020 12:48:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:message-id:in-reply-to:references:subject
 :mime-version:content-transfer-encoding;
 bh=J669Eof3CEJD8PSQp6rHHKzPIgW64KnkQofFLzioASo=;
 b=G4/5zN6LEiieOdnp0FVzEq0jjCC3Bt6nRxeEu912FIZuGEK0Awj3Egi3xKEPEnd7WU
 f/i78jXk6QS+KBwDE1Cs74Mv6EOzQSOqb7VS3PyokbP4iYt05Ujj0XL85+ykO7nMWtO/
 8zWIzdXpp5gArk5uBbrSl2iyIEVVqpym/itcrkhMWSTHcqnYVKZ1NT/Xo9SNOp6DvxA7
 r2KiZqtCtUKokHQ8ymV/geJPebQvIPVFEiy2jeQiT9FDuQHUiKosGmqlH6bX4EkHKVO5
 IxFo3S6I2AP0xuvTPC02/AptGSaurYFiFS5TYug0QLOGjfvXip+SP17UXPRjcV/kYBcl
 /PTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
 :references:subject:mime-version:content-transfer-encoding;
 bh=J669Eof3CEJD8PSQp6rHHKzPIgW64KnkQofFLzioASo=;
 b=OaT1+siWw30EZKm3i0rOsWLj45DEuXyMuXj4PIncSmMyAsUBJcev68UTWUoWglJBsm
 HHeZUR01f/A0cQdoqJssTew1KpiFpQxVRmPWDwNL3bw3+cVbEXycfo0Kxrbs8jpl89OM
 K96gELCvyBN+O7xTNl1jWHeHCoFC+UWIxWXIuZN0AvDaRq3aYSA3aI3HLPFaus1PR9Dn
 qpldqD6xmylUPAiBqfBhoeOSWmhMP3bpC9LfZmsrzk0asAt/C4g7BThv3sr8oigts44V
 YebDVOskgXbAmQqDpYkM62iEA93oaQIoXzBVmzjwPEhEvReuw3rNSoZdlnropbXUFv+6
 HMFg==
X-Gm-Message-State: AOAM532bjHGgu/MW6PUJET7i6bI3SaFvuokskvewKcRZWC3W0NoJ5Sm7
 Aq2mlZ9N3WqgKOKCOJqqmz4=
X-Google-Smtp-Source: ABdhPJxz2Zu5RJ+3AlrUBvVxulSDjiP0gbPD3Btzbr1XnO6hbyOOQcdxTwOS9yEq0Ha4Kw9LBcdXBA==
X-Received: by 2002:a9d:7505:: with SMTP id r5mr11254812otk.64.1604954907193; 
 Mon, 09 Nov 2020 12:48:27 -0800 (PST)
Received: from localhost ([184.63.162.180])
 by smtp.gmail.com with ESMTPSA id 61sm2862941otc.9.2020.11.09.12.48.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 12:48:26 -0800 (PST)
Date: Mon, 09 Nov 2020 12:48:19 -0800
From: John Fastabend <john.fastabend@gmail.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>, magnus.karlsson@intel.com, 
 bjorn.topel@intel.com, ast@kernel.org, daniel@iogearbox.net, 
 netdev@vger.kernel.org, jonathan.lemon@gmail.com
Message-ID: <5fa9ab136176d_8c0e208cd@john-XPS-13-9370.notmuch>
In-Reply-To: <1604498942-24274-4-git-send-email-magnus.karlsson@gmail.com>
References: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
 <1604498942-24274-4-git-send-email-magnus.karlsson@gmail.com>
Mime-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 3/6] i40e: remove unnecessary
 sw_ring access from xsk Tx
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
Cc: maciejromanfijalkowski@gmail.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Magnus Karlsson wrote:
> From: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> Remove the unnecessary access to the software ring for the AF_XDP
> zero-copy driver. This was used to record the length of the packet so
> that the driver Tx completion code could sum this up to produce the
> total bytes sent. This is now performed during the transmission of the
> packet, so no need to record this in the software ring.
> 
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---

Acked-by: John Fastabend <john.fastabend@gmail.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
