Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D26BF84C0BD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 00:17:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61BF941924;
	Tue,  6 Feb 2024 23:17:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lx-pdev4CPjn; Tue,  6 Feb 2024 23:17:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC38841BAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707261465;
	bh=nxcWmppdvL1QRYTV9/JaXJCX2Dg5kaEz7A5haw5G3+M=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FwyIMABnDI7+tyh605hhyFsYDMNPAgw8MC2XUYv+CEaQEuOFJmqYepP47ATYz3oS8
	 KSRcojeELFm2kNq+0pNk6XR/sAaZrvzUCdLrBs4srkV9QrjibcSbLTzDteR4C0PIsG
	 rrtIA+5gH/ZIxVVXIzI/4vWIJ1kp9mfKhyV3fI64kacmnA1HaLw0KJih3hDrbMNOhF
	 Afkk47AHqWeJY0p+zhqy/aBg3sz4PJOP4I5I7EzPMmJDIkt1sD43YXxvH7lCEC8l7H
	 2JBWJ8CawVsds4kdPpXIvYHtWuglFAzUn9Cstv0I+hhluX15kX7dEY45dBWGvg5zhj
	 KRV2+8A+EmPqw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC38841BAA;
	Tue,  6 Feb 2024 23:17:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 98FA51BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 23:17:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 911448236E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 23:17:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TSjudIMpxaws for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Feb 2024 23:17:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 63AA982362
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 63AA982362
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 63AA982362
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 23:17:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id D034ECE179B;
 Tue,  6 Feb 2024 23:17:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3F3EC433C7;
 Tue,  6 Feb 2024 23:17:34 +0000 (UTC)
Date: Tue, 6 Feb 2024 15:17:33 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <20240206151733.076ddfcd@kernel.org>
In-Reply-To: <CO1PR11MB508916E50B5BA5A85BE28852D6462@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240206033804.1198416-1-alan.brady@intel.com>
 <20240206105737.50149937@kernel.org>
 <d93d8608-be23-401a-b163-da7ce4dc476f@intel.com>
 <20240206120303.0fd22238@kernel.org>
 <CO1PR11MB508916E50B5BA5A85BE28852D6462@CO1PR11MB5089.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1707261455;
 bh=xDeP1WzOK7z0TrBaP7cyYGKrsqjlegG7W3Yixb26mAM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=N8p+DySBWJ75qkCh7OjMVqv9bMVjApCJNhKXHlo2S+sDkIVQItorHFPY0strszai/
 3YlgUQbtcJz4asTMTowCqnHCrTkIQ3BpdnpJnZg6EYAFasbGKgkKjtVpHmTIowJ5xs
 A/bwZI9Tb6+w1e1k2ut0Cr++uml61X1D5/yNOg5GPktwZYumJjlVqptxU3CLLc8v22
 0mQqg8hfe66G861JpvCwBE2Q1oIEwjmkrDyO/8zmiZdB8UQxODrvPxVenhNfEE/Nil
 V6p0e/bfQhM6eCUXCeQBayzNuS1aXwFb57FwPunnJuAA4f+wmwzw+YNc2oyK+yg05S
 +Py/FxQLeMvKA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=N8p+DySB
Subject: Re: [Intel-wired-lan] [PATCH v4 00/10 iwl-next] idpf: refactor
 virtchnl messages
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
Cc: "willemdebruijn.kernel@gmail.com" <willemdebruijn.kernel@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Brady,
 Alan" <alan.brady@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Bagnucki,
 Igor" <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 6 Feb 2024 22:50:25 +0000 Keller, Jacob E wrote:
> > Hm, okay, that does sound like making it worse.
> > I'll disable the minmax coccicheck for now, it seems noisy.  
> 
> Maybe you could make the coccicheck only complain if the value is
> non-zero or not const? Maybe that's a bit too complicated... Hm

Non-zero could work. It may be worthwhile to look at the warnings cocci
currently generates and figure out what's common among the cases where
warning doesn't make sense.
