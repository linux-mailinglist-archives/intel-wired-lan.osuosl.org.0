Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF82777CB0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 17:51:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81A7083FFF;
	Thu, 10 Aug 2023 15:51:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81A7083FFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691682675;
	bh=BlElNGtRaYZscjp2duEKWaWPQBANO4nfByf1iW+6/PY=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P9N2z3clLPDr8aaa665OlnMX72YZ4busB8fop+cYFWRMLgi7EKu26BEwiYMWrQd3W
	 zhC1ekpr7uRXNxO4NhehExBQACvYSmzqLedBJgiZ0J5lR/HxHUKad4qyDyVtLIcAGS
	 3oaJ3IzY49g7dCPiUI7PCzwRFbTcPUPgL+oGP7qdB95x24d6T+vo4k1iUH7NvLYGmR
	 Ut4XK4Enok1jgJlNxyOheqy0FjQ6jVSm8jRt1ELNmHSHoJ+CbytnrpFFi2gaVUtjTF
	 YMkPKsXMJRZd+Z2k0kb/f5VJohvCagjwJi7T6CkBaS4EcNDd0ACgbKuZhZjvj/t1rZ
	 1s+Oq72Ia0abQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8f6fDeMFRGLQ; Thu, 10 Aug 2023 15:51:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9006584005;
	Thu, 10 Aug 2023 15:51:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9006584005
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A5A0D1BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 15:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8AB79417B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 15:51:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8AB79417B5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q0EeuFJ7BCiX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 15:51:05 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CEE314012D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 15:51:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEE314012D
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9140463861;
 Thu, 10 Aug 2023 15:51:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BE67C433C8;
 Thu, 10 Aug 2023 15:51:03 +0000 (UTC)
Date: Thu, 10 Aug 2023 08:51:02 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20230810085102.30b01d62@kernel.org>
In-Reply-To: <38f4dcfd-ccee-3481-a862-58b269bc0acc@intel.com>
References: <20230809151529.842798-1-poros@redhat.com>
 <38f4dcfd-ccee-3481-a862-58b269bc0acc@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691682664;
 bh=1mLxM2cwBzu4CEmkaRoNn++ZOQ+dvHOMD8BKuKYi7Kc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LOtc26X0gHudlfZPsfmYzARQM6dXUgefeDu+UloaMVozEXo+spTAPZ006pWnm+WOu
 sAHF3v8KuruVNB58VfDLVM6Fy24KMe7Ozjq3ilks643alEKW+RJExad4HBy+5AkVAA
 /feh/E+z4e5HxhbgxSLngRSCk9b/3Ab1avAh2AE3ux4NHCeuTdXRPilAwwOVCK5Snc
 w/xLsiMcgWVs/ADwjpVxOb/P5gXe0q6qGvWONb0UpYGh4MCy1abD0lf52Ubi5s/2p4
 MZKyX2IY0pg2192tT2TamGqfh8mCNqouZFne9WRepRrlCPuTLBBF/3SK6S/YrouTFE
 kNXWvHuU36NOA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=LOtc26X0
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/2] Fix VF to VM attach detach
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>, "Maziarz,
 Kamil" <kamil.maziarz@intel.com>, "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Zulinski,
 NorbertX" <norbertx.zulinski@intel.com>,
 "dawidx.wesierski@intel.com" <dawidx.wesierski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 10 Aug 2023 14:52:33 +0200 Przemek Kitszel wrote:
> You have forgot to propagate reviewed-by tags from v1 (Simon's, Jake's, 
> mine)
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> (I'm not sure if I should copy-paste not mine RBs here?)

Not 100% sure either but most of the time I reckon it'd be a good thing.
Higher probability that we may miss a tag than that the person intended
to withdraw it. Just make sure the person who's tag you're copying is
on CC and that you add a link to where the tag was provided.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
