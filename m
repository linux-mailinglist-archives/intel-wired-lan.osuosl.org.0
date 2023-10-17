Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E77947CCDCC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 22:20:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6827861406;
	Tue, 17 Oct 2023 20:20:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6827861406
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697574008;
	bh=gDbAbn4FXxFVGYGYCE3o4dNWaEOQlrK66hEOn5cENzY=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AtFiJ4Fktj6XVh2KD7XycjaOq4FUNllVAwPiLNQOLRoVSVNUe2ybdHldg+AQ+/c+A
	 LyL2QZoQx1sXs0yBDyovswaIww6wXk+Tvg/D1TsMT7ieCMNsBLepI5zF1XwS6Jax0O
	 BgHCgpeajFYJhnl8DiBJaOUngxAMSfEBkAyGlJ+ijzq4VRjgYFQObnhpne7W8eW0u7
	 V9e4JzXs0nF5b9AlCW9bebDO88QAXBLqpKNRGNeK6Hn1SnHjeKtXlUXqU5bMRgY/LX
	 A9LdRfBwO2H81eY64GEszFn7AaDgdWrCOXWWHIEmMvWJZJqFXq/mAwKpUpC3gdMlv+
	 V2ZomWmdMvyDA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OlpVJ1G8OXKK; Tue, 17 Oct 2023 20:20:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AA096102E;
	Tue, 17 Oct 2023 20:20:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AA096102E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C3D81BF297
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 20:20:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 444B56102E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 20:20:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 444B56102E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pa0O0BXUB5hJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 20:20:01 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 977766102D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 20:20:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 977766102D
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 0AA07B81F28;
 Tue, 17 Oct 2023 20:19:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3FD5C433C7;
 Tue, 17 Oct 2023 20:19:57 +0000 (UTC)
Date: Tue, 17 Oct 2023 13:19:57 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20231017131957.200bbb7e@kernel.org>
In-Reply-To: <CAKgT0UepNjfPp=TzXyY9Z7rYSGPZyUY64yjB2pqgWTP56=hCcA@mail.gmail.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <afb4a06f-cfba-47ba-adb3-09bea7cb5f00@intel.com>
 <CAKgT0UdPe_Lb=E+P+zuwyyWVfqBQWLaomwGLwkqnsr0mf40E+g@mail.gmail.com>
 <31cde50b-2603-443c-8f55-a0809ecdd987@intel.com>
 <CAKgT0UepNjfPp=TzXyY9Z7rYSGPZyUY64yjB2pqgWTP56=hCcA@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697573998;
 bh=7f38VTgPNThxtQB+t4iwNPxsBALtJlMLE4P2e5Y2R1s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oe3Xj8mmHHNFmpW9r54h/3Fb4nnfs44+0xDXiU2NXqOQlHtUsNYs3Jtib4hTZjjbR
 ZjTZIzILkVVv51abb85tPu8BkjNufiTZplpmiXPufrOr2XQbGNOy7hXYfRzRE1a9UE
 Vse6T4yl601SRxPx5o+eRHgsNsJIUT2PfXqB5ITw1hzof9I/OSTjytUViKNecONtLJ
 QnSu1H83/gLaQBVOESqhfOsKemzAyTifyB/BnugITnq7NlFtcsXvs26XTbQ/DI/ZLx
 DZrjcMnKwpmWPWaJ+C5Rutbdy5MRB8TGIvMHv8a+JwIAKJKAGA4YWQId9/NUkaUZKM
 z12ZrZ6cU/RXw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=oe3Xj8mm
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
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, vladimir.oltean@nxp.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 17 Oct 2023 13:03:39 -0700 Alexander Duyck wrote:
> > > My thought would be to possibly just look at reducing your messaging
> > > to a warning from the driver if the inputs are not symmetric, but you
> > > have your symmetric xor hash function enabled.  
> >
> > With the restrictions (to be moved into ice_ethtool), the user is unable
> > to use non-symmetric inputs.  
> 
> I think a warning would make more sense than an outright restriction.
> You could warn on both the enabling if the mask is already unbalanced,
> or you could warn if the mask is set to be unbalanced after enabling
> your hashing.

Either it's a valid configuration or we should error out in the core.
Keep in mind that we can always _loosen_ the restriction, like you
asked for VLAN ID, but we can never _tighten_ it without breaking uAPI.
So error.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
