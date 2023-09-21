Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4477A940C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Sep 2023 14:09:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D10CA40114;
	Thu, 21 Sep 2023 12:09:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D10CA40114
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695298177;
	bh=VXbZsDDdUaPZ0skWVfOM5J6zUWQ8kf6J8K7EH0ASgUM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9k8KnjEENhzJ8OxQjVyYmjMg/4SH7p/lPwS/33KF7TzrFb85geW3QPVy2j0cbA1EK
	 i1gJfE14ayErTgA23Tzx0QEzgiBO6Qmuk4G6R8ma/AJGOXTWPqeyCvFg3sDddjLdRI
	 bu9S7nFubyJbeTKjRr3KPoe4+OX48bwMvAlqgKoKH5NaumphOdDNGLj9S3sdKGFuwo
	 TLKrmyI5QE0ydSKXZmhn/J6CnYuZgaFJm2x1yBBBODhjpuEoNrQ/IdxrhbhhqWNz06
	 y22VPqOGyecSP7y624y5slh3XsEO4zU3ZpGJh2rDeTedwjtDfHaqyAe/qy6Bh89XdD
	 nMD1jBnjPNFJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WQ24A-D0k0Jl; Thu, 21 Sep 2023 12:09:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC585409BD;
	Thu, 21 Sep 2023 12:09:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC585409BD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5454A1BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 12:09:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0CDCF80DB2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 12:09:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CDCF80DB2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C0zS__xzuxQ1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Sep 2023 12:09:30 +0000 (UTC)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5ACB380D37
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Sep 2023 12:09:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5ACB380D37
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id E7EEE32009ED;
 Thu, 21 Sep 2023 08:09:28 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Thu, 21 Sep 2023 08:09:29 -0400
X-ME-Sender: <xms:dzIMZSTSw7SdZ2UBHffbazOgIFm845w2n-IyG3_ubigZg9ti5T6hPg>
 <xme:dzIMZXztUh_wWECxbEXQViqezawi6hGzu4y8bATC8QLBqPD-rKWAd--0laZ5LFmqr
 xCOS--XMcRpmyY>
X-ME-Received: <xmr:dzIMZf3dXEVkADZpr_VYjaW3GUb7WJjf3BWy9MaL2LYphIhse451uFfT2AlKr6XvX1GFvs2N8870cKM8MMq4oTwEIRrlHQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudekiedggeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcu
 ufgthhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrth
 htvghrnhepvddufeevkeehueegfedtvdevfefgudeifeduieefgfelkeehgeelgeejjeeg
 gefhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepih
 guohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:dzIMZeA-G0jyHdSfj_prP2gpjCxADQzGREbk96nwy0vOAi8q8o5SKw>
 <xmx:dzIMZbjJ2qAZmnAdyytAK6ETnDrnwbWSRU6ZXoqFJk_Tnp-pNxTfIA>
 <xmx:dzIMZarP6RSCDKzFKlCByun-w0NDQqtUEH5lNcjE33wqEKJKYamOCg>
 <xmx:eDIMZYvAWGkhr3urUbRkdPa93kpMf4AcMTK04i59Yd2wN_EX9Jo0jQ>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 21 Sep 2023 08:09:26 -0400 (EDT)
Date: Thu, 21 Sep 2023 15:09:22 +0300
From: Ido Schimmel <idosch@idosch.org>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
Message-ID: <ZQwycrJW5nhXu0TF@shredder>
References: <20230824085459.35998-1-wojciech.drewek@intel.com>
 <20230824083201.79f79513@kernel.org>
 <MW4PR11MB57768054635E8DEF841BB2A9FDE3A@MW4PR11MB5776.namprd11.prod.outlook.com>
 <ZOsNhgd3ZxXEaEA5@shredder>
 <MW4PR11MB57766C3B9C05C94F51630251FDE7A@MW4PR11MB5776.namprd11.prod.outlook.com>
 <ZO9dhzhK+psufXqS@shredder>
 <MW4PR11MB5776601FD7C2C577C78576A3FDE4A@MW4PR11MB5776.namprd11.prod.outlook.com>
 <ZQB1HcpTsB2Sf6Co@shredder>
 <MW4PR11MB5776FD835D06ED08B07D3FD6FDF6A@MW4PR11MB5776.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MW4PR11MB5776FD835D06ED08B07D3FD6FDF6A@MW4PR11MB5776.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1695298168; x=1695384568; bh=j9l1iUgC0pIY3
 8j8kkS173GVTz7E0Zg5FtYlimNdc1Q=; b=BXAL3cftBayzpsqFv5k/MafAFDkzx
 kVCen8ISvlHaatt0bZVZ2+L4HGXWrIS8j4t6BjYaPHDYC3YMecCkVp7eo6KI/nAZ
 mGHdVBvyEw891k9zrRe1P4c1lhQZTmbokmYunY07TVO12NT4KoOt+Usd15znsdXP
 PMA+bDPT+VbSZi7eOzDUQf46Yx+dS6s96AInMBL39VoJewulTJrv0yu2aEBJRLpF
 Cpi0k3x83kU/zLqM82mr1QgUMsQsc7iFsTJxxSGlK5IBhQPl92Bq5F5ql7NaKCvl
 c5eBH81J0GAkNvGEFcNICuzoxniqcP1bJye8dsMbneKnttYsPdr1C5pSg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=BXAL3cft
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Disable Cage Max
 Power override
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
Cc: Jakub Kicinski <kuba@kernel.org>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 15, 2023 at 01:15:01PM +0000, Drewek, Wojciech wrote:
> In ice driver port split works per device not per port. According to
> /Documentation/networking/devlink/ice.rst, section "Port split":
> 	The "ice" driver supports port splitting only for port 0, as the FW has
> 	a predefined set of available port split options for the whole device.
> And if you look at available port options (same file) you'll see that in case of "Split count" 1
> only quad 1 is working. And in case of "Split count" 2 the second quad might be used. So, if we
> increase max_pwr in the first quad in case of "Split count" 1 and then switch to "Split count" 2,
> the second quad might end up with no link (because it will have decreased max_pwr).

But there's also an option where the second cage isn't actually used.
Anyway, my suggestion is to allow user space to set / get the max power
using ethtool and give user space visibility about link down reason via
the ethtool extended state.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
