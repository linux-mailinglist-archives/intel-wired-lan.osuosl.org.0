Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0371494DAD0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Aug 2024 07:04:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3AAC441391;
	Sat, 10 Aug 2024 05:04:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dna75FLK4BBX; Sat, 10 Aug 2024 05:04:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48AE44138B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723266247;
	bh=EF1ylEYDfUpPrmMSUJqw9uq/GgTVKqGyTRiONwYjiXs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4nexD6xOpk27kS6O5g3i4Bgz7V69nSYVwBs7HjGTc0+VXnAULgD4eV3gpk+SGIgKJ
	 241zbp/wjKT78UMO8HcH3xRXoFY0/9Ww3HKk+2fZstk6yN/tZQqqLRU5eOXxTc8gkk
	 jyZG+klZtqiUKqfFQoSUJmsrjIIBwWYW8zKm/5Ss8xGgYYC5DSYS9RtJQJY8bW+YVH
	 +ue3bazhkkH4YSlAhZu30QPYtJ19Gssa+RNIKhhZxFRUetbbs5NUvwkmXHh6xM4brA
	 1q93nKSfg8T+Ak4IDWGUcbVecpOLnigKH/eIvXi7LwhTR1Tjdxr+nwZxR8r7DopmzK
	 tsV3ZSZBs0UrQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48AE44138B;
	Sat, 10 Aug 2024 05:04:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 14A111BF285
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 05:04:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 00FBA41386
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 05:04:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id avVIpnvBlTe5 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Aug 2024 05:04:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::433; helo=mail-pf1-x433.google.com;
 envelope-from=richardcochran@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 370A841382
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 370A841382
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 370A841382
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 05:04:05 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id
 d2e1a72fcca58-70d2a6e31f1so143202b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 09 Aug 2024 22:04:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723266244; x=1723871044;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EF1ylEYDfUpPrmMSUJqw9uq/GgTVKqGyTRiONwYjiXs=;
 b=VsvKtlOVf2RrG6Zvcw9t9XFVonj8djprdorv9ktb0Fwefcu6ay4cb/FssdIuLYFM9P
 QH61YJWF6DmAjx3JALUwaHBo4MDdXS3TESY+zivjz8PZsaPkbhiGKuep0fTITf65Y2Uh
 6NbgwrHpaz6DVJyUbXNnN+K7t19IoujuvHeT1Ny+M3Daw8kdHO1IOptuQfH1wNXlQjho
 Qi/MhC/Qogyfuprs8yaIPHKkQLkJ32jUl78F3YZwCtH1ojUFsPggvxxBsNFwTBj30PcQ
 4NnTkABujiZH0zqJCv+9zY2M+Dlj04sWL6HxABy8nxAY04WwJNlL++ptemqW2ZZWIU3i
 L/xQ==
X-Gm-Message-State: AOJu0Ywh/lX2yfs+H156fF+8+vxj7LXPDyKQv43UL5HEeBT/YaJCf7iC
 XjQZOCsu8X72l7FQdz6rW6HXRw+wUAQFyZEJpaSPrUy7R42qYCtu
X-Google-Smtp-Source: AGHT+IFHjTn9AA8sti07RfxyPTI0/0m0irWEAB86cudnkSZ5wPUtQ79956cjbv3Kdbpl7zgp7QKHpg==
X-Received: by 2002:a05:6a00:91e9:b0:70b:705f:8c5d with SMTP id
 d2e1a72fcca58-710dcb4aaf2mr2365053b3a.4.1723266244019; 
 Fri, 09 Aug 2024 22:04:04 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2600:1700:2430:6f6f:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-710e58bd3bfsm571455b3a.89.2024.08.09.22.04.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Aug 2024 22:04:03 -0700 (PDT)
Date: Fri, 9 Aug 2024 22:04:01 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <Zrb0wdmIsksG38Uc@hoboy.vegasvil.org>
References: <20240810002302.2054816-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240810002302.2054816-1-vinicius.gomes@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1723266244; x=1723871044; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=EF1ylEYDfUpPrmMSUJqw9uq/GgTVKqGyTRiONwYjiXs=;
 b=ODBU/hpQtHGSC00DZF5q0S1BXRtiKf7qGS9jJm0khH/DOekIfYLCbh7wyuWHpdLqE2
 +sbR2Z9oM9YcwuLqoohUWwIDfEQxVfaQ423Eyj3S5neFR84+nYdIO07vV0kH4+ekpDGb
 6oh82L3jQB4IvhyqpuSju39CYI5SjtevGsT9AzO+frxyYP0wKgXnH5O+cFRY529GX8pz
 Z16RJ27pnWPXRN27Cx2K9RgfBPWngclFSYMA/9AgCewu2dHKwUX3pxsQfJx6Y8qAXyg1
 XvmAPOieMi0xCaIFLVcFJGLe/4aND1FFaABn/oHXZgC2EceNaGl5pDAF+9jgXiZKfYwA
 e2Bg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=ODBU/hpQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igb: Fix not clearing
 TimeSync interrupts for 82580
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
Cc: sasha.neftin@intel.com, netdev@vger.kernel.org, kurt@linutronix.de,
 linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Eric Dumazet <edumazet@google.com>, daiweili@gmail.com,
 anthony.l.nguyen@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 09, 2024 at 05:23:02PM -0700, Vinicius Costa Gomes wrote:
> It was reported that 82580 NICs have a hardware bug that makes it
> necessary to write into the TSICR (TimeSync Interrupt Cause) register
> to clear it.

Bug, or was it a feature?

Or IOW, maybe i210 changed the semantics of the TSICR?

And what about the 82576?

Thanks,
Richard
