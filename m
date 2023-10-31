Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 332057DD6D1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 20:57:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B364083F54;
	Tue, 31 Oct 2023 19:57:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B364083F54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698782268;
	bh=GyN4k8R/6YQNI3W/L3l+PesNA+uSrG+sea1nc7BHGVM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iU0TgZtzOwKr3Y5zSSzVP+sxLU9ELGmXAEbgf3ZZTJxtNiE1sLeAK7h3Ev6pMvqLg
	 tNl6NyZZQGha4aElszSeqqR7VyZWs/zGSKCIA8MbOtMeRMFaOsJnlqpajG3QZb0tPm
	 p7rQkXIqigd8C8SvBFd7NlXzZJvJrAnl1c98KVQJMmBs98WIwPaQd/mDcPmMKJhoYI
	 miqROsB03geK/rAA+TRZXDCmaOqJaJHaPfi4jo0aYROx/J5SKcWIy9y0uTvDGZdcGx
	 Bhe5zt0F34yoWvd3KXWk57AzBVrFaF9srvJ84zF0kArNaH3QA35AJ9XEiayCLWU0WX
	 z3cRm66k3sgrw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wpOCF8CxGFI7; Tue, 31 Oct 2023 19:57:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A846B83F45;
	Tue, 31 Oct 2023 19:57:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A846B83F45
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F3CC1BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 19:57:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3673A6F6B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 19:57:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3673A6F6B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zjPlGJ_pYkvu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 19:57:42 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 837046F687
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 19:57:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 837046F687
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 6F369B80E43;
 Tue, 31 Oct 2023 19:57:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71EADC433C7;
 Tue, 31 Oct 2023 19:57:38 +0000 (UTC)
Date: Tue, 31 Oct 2023 12:57:37 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Gal Pressman <gal@nvidia.com>
Message-ID: <20231031125737.0d9a648e@kernel.org>
In-Reply-To: <ff81c4e7-0787-4357-bb92-9da334a4ddaf@nvidia.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231017173448.3f1c35aa@kernel.org>
 <CAKgT0Udz+YdkmtO2Gbhr7CccHtBbTpKich4er3qQXY-b2inUoA@mail.gmail.com>
 <20231018165020.55cc4a79@kernel.org>
 <45c6ab9f-50f6-4e9e-a035-060a4491bded@intel.com>
 <20231020153316.1c152c80@kernel.org>
 <c2c0dbe8-eee5-4e87-a115-7424ba06d21b@intel.com>
 <20231020164917.69d5cd44@kernel.org>
 <f6ab0dc1-b5d5-4fff-9ee2-69d21388d4ca@intel.com>
 <89e63967-46c4-49fe-87bc-331c7c2f6aab@nvidia.com>
 <e644840d-7f3d-4e3c-9e0f-6d958ec865e0@intel.com>
 <e471519b-b253-4121-9eec-f7f05948c258@nvidia.com>
 <a2a1164f-1492-43d1-9667-5917d0ececcb@intel.com>
 <d097e7d3-5e16-44ba-aa92-dfb7fbedc600@nvidia.com>
 <aa1dd347-a16c-44f8-95ad-5d50bcba8f34@intel.com>
 <70132b6f-542f-4fe6-971f-ab9ea80acbe4@nvidia.com>
 <e7679b57-af11-42b1-91c7-b18cbcc70119@intel.com>
 <20231031082023.3fd4761b@kernel.org>
 <ff81c4e7-0787-4357-bb92-9da334a4ddaf@nvidia.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1698782258;
 bh=nEcINVTOJMdm+dcaCe/lMlijXRQXljtnkQahZ1Mfaps=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MmW7E9yGNpYfOKZsCi8lIfjhqfbZDDIjw/EK6doXaAJ/xFW/+8eSNlCgs8tyc9ooO
 G+X1gds5DuFC2fNpn82KC4Z+jNJQ14ZvTHqkndBSTvDhAdYCrZiU2ccppgs7No0DNq
 tXylHS3FP1hvdrI1o91XBFTeCwIMZ6Cy899aEJ3drZhUigFb2l1tmU86SIKFFGrFiS
 Qm6eDVO2/JUS05Fuvj7qB1Sxl3aNDgKXRvsadw+B2qKTTNfTgZ/QlUuJUZ4wQ6N4Q4
 VzFY0/5KxHVIC11so5QnqlDhuTZiK//6b0tpJWnie7A8r2mrONqW8MoYV8u4iDNdNZ
 MNvlkXymcPN+g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MmW7E9yG
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 Ahmed Zaki <ahmed.zaki@intel.com>, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 31 Oct 2023 18:13:20 +0200 Gal Pressman wrote:
> Sure, IIUC, ice's implementation does a:
> (SRC_IP ^ DST_IP, SRC_IP ^ DST_IP, SRC_PORT ^ DST_PORT, SRC_PORT ^ DST_PORT)
> 
> Our implementation isn't exactly xor, it is:
> (SRC_IP | DST_IP, SRC_IP ^ DST_IP, SRC_PORT | DST_PORT, SRC_PORT ^ DST_PORT)
> 
> The way I see it, the xor implementation should be clearly documented,
> so no one uses the same flag with a different implementation by mistake.

Got it, thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
