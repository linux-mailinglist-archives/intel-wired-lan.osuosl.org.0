Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 796C27DD065
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 16:20:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BB27614A0;
	Tue, 31 Oct 2023 15:20:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BB27614A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698765634;
	bh=v/hbxeIhiaU3RewDjQtVkrDimnqZ9ZLtBCH+Sd4NEcM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=30y7OCaCUAQcaGf2be0X9fwO2mwdh2JhfiX3B0Y09rk4Zg4G+DFhhEQWvKg47coOE
	 j6Qr7KxasFKA2IQ516zjNwOlmv4nSYmyOAoJGvJ+ojhrUkmtlgmcjKia1I9/IW4AEv
	 5kcdmcKY5ESnRLGtWSwMINJC4On07ZNBI6ppXlNhY0J/kYuBugIuU07O0gosOePjwW
	 stmlNuicJ951DoM8L7p8pdiEUes4n6ak0PLeqr+Ikmyuh1Ko7BeTJb5H7JkUchDGiU
	 7QPwUDbYELFLU+loF2kzUJX8NlmN41W9jzZVnWt64oUF8CeZGHxoN29Fe/8cStiSg2
	 KINawbZKlPi3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LueLSQTVzihl; Tue, 31 Oct 2023 15:20:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 061226149B;
	Tue, 31 Oct 2023 15:20:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 061226149B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A483A1BF322
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 15:20:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 88D848232C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 15:20:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88D848232C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qfU_6PteOFd5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 15:20:26 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA9AF8232A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 15:20:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA9AF8232A
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id AD9DF60EFC;
 Tue, 31 Oct 2023 15:20:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B6C6C433CA;
 Tue, 31 Oct 2023 15:20:24 +0000 (UTC)
Date: Tue, 31 Oct 2023 08:20:23 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Gal Pressman <gal@nvidia.com>
Message-ID: <20231031082023.3fd4761b@kernel.org>
In-Reply-To: <e7679b57-af11-42b1-91c7-b18cbcc70119@intel.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231017131727.78e96449@kernel.org>
 <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
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
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1698765625;
 bh=+pUsleWzGMzecEeUZif7UWECC6Mweiv0OQf1A394Bkw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hv1wKYy8+OLbQMgqnshEK/330tGcnyimFW7fLtgJoOlKTlpSMbSPtkyluGUhUgIJU
 QK1lqkPvF1cDZwwmBaTj23GXuQpCjTTEfjUkHgVFDpeJiIAdk7ClovoD9ZxGT2we+t
 VdytgADwcsNRUK/Qjuy2zJ9ugwHUrDGKrYjFRFaOMbkhbXOakCnyU7vM2y6tB/k2G9
 kE69nuGxdA/PS/VGx8Eh2mnwAGzQIfAfimNSgeaPvztPu0DpS1uWnu+V9d96pLC/e0
 ByP8lErAY/VNo3yfVM88/ZLelTfyZ6KfyAd2RwD4V3zNet+LBUiAis6hGaQKW8WfYd
 EtNtZDJG+Ifow==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=hv1wKYy8
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

On Tue, 31 Oct 2023 09:14:58 -0600 Ahmed Zaki wrote:
> Do you mean add vendor-specific implementation details to common docs? 
> Not sure if I have seen this before. Any examples?
> 
> Or, we can add a note in ethtool doc that each vendor's implementation 
> is different and "Refer to your vendor's specifications for more info".

Gal, can you shed any more detail on who your implementation differs?
It will help the discussion, and also - I'm not sure how you can do
xor differently..
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
