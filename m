Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D247923D2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Sep 2023 17:14:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E0A64181F;
	Tue,  5 Sep 2023 15:14:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E0A64181F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693926863;
	bh=VUqitx6BwZnZc8JyhP0Q+qs9Mq08LW8VXhcJTVFMm+g=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nMvWyymJUK16t8h599tscSstcN6hYiMBBYrpXBMOBV9p823uHqEcrd5yPRcFZS3pW
	 WqKaGlSEc+XSgp+QImetkNdVeRhMI2KIwxAfuOMYcc+LaDHDTnvmz1/s4oq9M67Z4w
	 Lz/4VQePQtl+9FHNext7ClJgXHwv7933+m+jWj1VOGnsZvZNA8XXQktpqMqIxGf8kf
	 CgvXSq0p13z+RSeb0V6GUulEJM/ERb8IMWf3UswdWbtghtxJL1336JAVUO3XvNZSCZ
	 UL5+6abunM5UtEfOlWuJxhuaQCL0eeUT+pUxy+d731ava7WB2bkzXvYjT2IE/2haDJ
	 vImp2A90gwZyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YM-PAH4peOVN; Tue,  5 Sep 2023 15:14:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FE124181E;
	Tue,  5 Sep 2023 15:14:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FE124181E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 762E31BF364
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 03:53:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E9AA811E7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 03:53:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E9AA811E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1vxVEmoHq82C for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Sep 2023 03:53:37 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 884A080FF9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 03:53:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 884A080FF9
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id A873CCE1087;
 Tue,  5 Sep 2023 03:53:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5106C433C7;
 Tue,  5 Sep 2023 03:53:30 +0000 (UTC)
Date: Mon, 04 Sep 2023 20:53:27 -0700
From: Kees Cook <kees@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
User-Agent: K-9 Mail for Android
In-Reply-To: <20230904123107.116381-1-przemyslaw.kitszel@intel.com>
References: <20230904123107.116381-1-przemyslaw.kitszel@intel.com>
Message-ID: <78830434-CCE0-4DF5-829C-F0D78AE35E79@kernel.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 05 Sep 2023 15:14:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1693886011;
 bh=2Tt27aPoIM/AL822212rYJakGr4phaOlrKxLY65dfRc=;
 h=Date:From:To:CC:Subject:In-Reply-To:References:From;
 b=ZE8jq185aVpuTpfi+0B6tJcOKYA00muUdT5zw+lm6Nn3hB14/6s02yAKZ/lc6rjqi
 ATB3gPKpaXlRhKC1d0hYGbjMZ71NJYGc7RZnLG29md81GpQHJQ0MvC6tuuN/V4FAZF
 S9v/ngEvOzn5Kpc90pZhsc7oWpem4pK9LEWBW1pYBAGBqp6APYA2KvzV7MgHJCITrx
 D5s17RmA9zBIUoQAwuEu3nOoLcJfv7pnq+WgYo3yYA3r8Xqi6us9LyztbH740mYcKI
 F3AknOE6u+9xXvEIusbCD3PsQmDi2JjYgfoCHDU8XPE4/4B0PQcqqXHU2/qFf8qB62
 L0thO6iB7hRDg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ZE8jq185
Subject: Re: [Intel-wired-lan] [RFC net-next v4 0/7] introduce DEFINE_FLEX()
 macro
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
Cc: Kees Cook <keescook@chromium.org>, Steven Zou <steven.zou@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 David Laight <David.Laight@ACULAB.COM>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On September 4, 2023 5:31:00 AM PDT, Przemek Kitszel <przemyslaw.kitszel@intel.com> wrote:
>Add DEFINE_FLEX() macro, that helps on-stack allocation of structures
>with trailing flex array member.
>Expose __struct_size() macro which reads size of data allocated
>by DEFINE_FLEX().
>
>Accompany new macros introduction with actual usage,
>in the ice driver - hence targeting for netdev tree
>- please me know if it is best approach here?

Yes, I'm fine with this. The changes to the string headers are relatively localized.


-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
