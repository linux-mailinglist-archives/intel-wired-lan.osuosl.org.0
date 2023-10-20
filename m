Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 748937D1934
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Oct 2023 00:33:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E4774344E;
	Fri, 20 Oct 2023 22:33:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E4774344E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697841210;
	bh=eBq1sL4kV/o7MZL8wwRS/pYDN/mo9e8EfOQH+f3poSs=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZL7LCVWt5JxQUiGWGYPfX2SfOkTHjcx3/oM78nLQ2vxS3DAegEHe3xngVpQpUWtLV
	 EOiU3w3Ewfet3/ikDzA0iIwvRg7FlOz7+pMz9fCO7EYO4f3YLRNTP5jRGlRqfjv9lB
	 eHmB/t9/AK8sXJ+/By0ydm59HpykA3ZUkC3iol1+7bVjfYi3MJcU68lcMHKDCOdRlL
	 Rfhr1xHNWzmflPNKTNOzpjh4sOqRop31c6aTA/o6SUIxEKM22xlNr2VaJ0qkXh6gCN
	 q3F3Ykq92AKlPKS3/UQrRp26e5MFRr7QSDpzgRaughlwFGSJYvlIkhNydhPHBFG6dn
	 Fa8GONyTTWi0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ivST0_lPdFis; Fri, 20 Oct 2023 22:33:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4AEA74012D;
	Fri, 20 Oct 2023 22:33:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AEA74012D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 92A0B1BF370
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 22:33:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D001402D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 22:33:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D001402D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zyeZLGYKI-_B for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Oct 2023 22:33:23 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1AB0E4012D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Oct 2023 22:33:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AB0E4012D
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 10576CE323D;
 Fri, 20 Oct 2023 22:33:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D194C433C8;
 Fri, 20 Oct 2023 22:33:17 +0000 (UTC)
Date: Fri, 20 Oct 2023 15:33:16 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20231020153316.1c152c80@kernel.org>
In-Reply-To: <45c6ab9f-50f6-4e9e-a035-060a4491bded@intel.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
 <20231017131727.78e96449@kernel.org>
 <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
 <20231017173448.3f1c35aa@kernel.org>
 <CAKgT0Udz+YdkmtO2Gbhr7CccHtBbTpKich4er3qQXY-b2inUoA@mail.gmail.com>
 <20231018165020.55cc4a79@kernel.org>
 <45c6ab9f-50f6-4e9e-a035-060a4491bded@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697841198;
 bh=iAM2xrf3gpA6507Ws2KOBubhjHDpEVAP1baBI4pCtOg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=l8BcevqWgmrirS8+FYutiZO291vr6KqZWwRWayNTYntJOWXZHGehWDx//2eIWMhvy
 /Lr8uRTICWOEZVTPIDLBn1ONr8W0TMb5HOgS4PXlKMHIkWpf5RpGcp2VdxM0nRDg5E
 kve8FLjLadYlesJdISFbBTR+NxHBDav9SwkFvNYxaY8OLtN0wh1R7R6LzKBTFED3j0
 oY1Aktg9Wtwl9RvC7nXv3tQ4tsP5FLLJQ+CQv7Yzhtqhg6CVBu9tAejW9x8CVS9s53
 067HUMNlnyzKzBAUXCDQ1+55nGvy7CZT6sA2vxZibfe0P/snViT6aJKemefmp+/D9B
 XsHqPTblc7ylw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=l8BcevqW
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
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 20 Oct 2023 15:24:41 -0600 Ahmed Zaki wrote:
> > IMO fat warning in the documentation and ethtool man saying that this
> > makes the algo (any / all) vulnerable to attack would be enough.
> > Willem?  
> 
> Please advise on the next step. Should I send a new version with the Doc 
> warning, or will you use v5?

Not just the doc changes:

| We can use one of the reserved fields of struct ethtool_rxfh to carry
| this extension. I think I asked for this at some point, but there's
| only so much repeated feedback one can send in a day :(

https://lore.kernel.org/all/20231016163059.23799429@kernel.org/

You can take care of that, post v6 and see what Alex and Willem say.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
