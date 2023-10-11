Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7467C46E6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 02:54:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1259E415FF;
	Wed, 11 Oct 2023 00:54:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1259E415FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696985696;
	bh=bZHJxpTRJV72nXGUDCbCyLzH5D1r0lgko4v+N4RUS8U=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L1fJQ0nvBKLoMywHRc8jb/xZe7cQS9wU2ClrVkgd4zMmLav9bpOVue6fMh+1iDt18
	 4WclFiMYkYClj6PaU1TEVpvipqNSoA8ykxGZO7v9xAs3iBtTbBT0DhhPrP5e2/BsJK
	 If9Q5GiXRT+hK2m9hZgfwL42srfLHNkw7PYCu53oiysUQDmotR2F69M/Llvfzcrfih
	 jPU9rr7Ub7G5phwWRBARAe0x67QPpZHE86SedepY5LkxBLjFtzw+MwZ1jMMzCEbd3/
	 WGqVsn32gL1yyN5V/sfmFP2XaX29C6wyJ6ybPsm97CE7UAvHyDdagvCsIXPGQi9LbC
	 HQuaZvCo8CvLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FMRZLLknma-V; Wed, 11 Oct 2023 00:54:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 421D54158B;
	Wed, 11 Oct 2023 00:54:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 421D54158B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 783241BF97E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 00:54:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 501A680CE6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 00:54:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 501A680CE6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dHSG43AH549v for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 00:54:45 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 11D4B80BCB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 00:54:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11D4B80BCB
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D5A2F60C11;
 Wed, 11 Oct 2023 00:54:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 058DCC433C8;
 Wed, 11 Oct 2023 00:54:42 +0000 (UTC)
Date: Tue, 10 Oct 2023 17:54:41 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <20231010175441.755cb82a@kernel.org>
In-Reply-To: <20231010174731.3a1d454e@kernel.org>
References: <20231010-strncpy-drivers-net-ethernet-intel-igbvf-netdev-c-v1-1-69ccfb2c2aa5@google.com>
 <5dc78e2f-62c1-083a-387f-9afabac02007@intel.com>
 <CAFhGd8ppobxMnvrMT4HrRkf0LvHE1P-utErp8Tk22Fb9OO=8Rw@mail.gmail.com>
 <20231010174731.3a1d454e@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696985683;
 bh=0H4iRVCJQWGz61Tmn2yBFyuOebfIUuGff1Pt5wvl8yQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=cvUFTAbx2/KN98oDPIvh9DGkRgRIbMXADOBHzGo+2U3qjgAozV7EpZSxuBtsc5jZ7
 cSqIONfcgAzTs85Ws4XS7bchxVLjz704w0sCbiqMoMSGrlb7Q16kRN2xnWWL3F28a9
 fAUwCILxx/NfB0JaudWnkpxCyVITNWn+o2RuBHb9rfc6pqcIGl3LhcFsbUjswN2t+z
 eiIIGp1pD6KLueDKpP1iOUT1XMKMHb2sdJN6kd/jWlDCojSfA8ev/KatXJJw4Bkl2S
 +iZeldSxJSaIDdZXw1izRBoYF3t4mcoZuy4pMXjAidbrQ3+6sN1Pi563lNPNIV1qNy
 jc3OCKhj1svaQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cvUFTAbx
Subject: Re: [Intel-wired-lan] [PATCH] igbvf: replace deprecated strncpy
 with strscpy
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 10 Oct 2023 17:47:31 -0700 Jakub Kicinski wrote:
> Please do read the netdev rules Jesse pointed you at.
> Maybe it's the combined flow of strncpy and __counted_by patches
> but managing the state of the "hardening" patches is getting 
> a bit tedious :(
> 
> Please group them into reasonable series. Do not repost withing 24h.
> Do not have more than 15 patches for networking pending at any given
> time. That's basically the gist of our "good citizen" rules.

FWIW you can see how many pending patches you have pending in netdev
using this here link:

https://patchwork.kernel.org/project/netdevbpf/list/?submitter=206354
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
