Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7B66E1092
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 17:04:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4AE098408A;
	Thu, 13 Apr 2023 15:04:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AE098408A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681398255;
	bh=Ua69HTFRBCH4pB7/2heZ5OOZoxWwJ9Fof2BzHJRz8mw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4FSX4UeLLB5uxnb3IqfvWa+S3UL8d5dxkjy32KbsmMSyYTpAGhpFttP7G8X8yHP4S
	 q5L6uJosxH27hoCRC0+/Q0ZoNLUn7yY/1laRcrNsSEU033/s0g4MC1EqwLJ8rP7RvS
	 iKwbp30Rrm15UpJ3kBpaZdCA5dqSpk538Br0pRnBLKJ6ZfZjegoKEikysvERSQgGtC
	 807/bsxB+t3TA3UI7SYU9C5mPMvUoh3S2T54npvNvtQ+JxQyuKY5qI2dgO0u4V8ymv
	 xdjRBwyyTomhfN0rbM8OmhTf59QMCFNwdRbAjG3ybZHqL56aXfv36BEDCS2JExyoOI
	 PkJi6f3dUwJHw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HHqAPzvR2SXM; Thu, 13 Apr 2023 15:04:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A28D83F38;
	Thu, 13 Apr 2023 15:04:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A28D83F38
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 663FD1C3DB3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 15:04:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E9278408A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 15:04:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E9278408A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A6xZQJ0GV6SJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Apr 2023 15:04:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FA4284093
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9FA4284093
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 15:04:08 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E9EC963D2A;
 Thu, 13 Apr 2023 15:04:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC5A7C433EF;
 Thu, 13 Apr 2023 15:04:06 +0000 (UTC)
Date: Thu, 13 Apr 2023 08:04:05 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <20230413080405.30bbe3bd@kernel.org>
In-Reply-To: <DM6PR11MB46577E14FE17ADA6D1E74E789B989@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230412133811.2518336-1-arkadiusz.kubalewski@intel.com>
 <20230412203500.36fb7c36@kernel.org>
 <DM6PR11MB46577E14FE17ADA6D1E74E789B989@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681398247;
 bh=JdbgbeQTK4oXXpvwy/OkbrBX79V7CMl8I2rByssnbK8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=YPGDH/bbVb36/Vi0t11lP6f2sRR4SOLUf7fIxJRUtI28miO5mrqAWIL/3j1+kYij5
 Znu5MBMUAZ+ABRUL93fKTMB8SrOPqtCDWAWceK9xh6JuqFmfUN0jdOLKeXXtxaZjlk
 Mji3Ymgy4JBemOYnGu9wR+RTKyZ/BPk926GVY3BLbrJozJPXSyT4kwpnvRSM1BGqMQ
 lDdzkfb6wkR/K9+ZE7ddssGuJ4sacrzsSzrfTlCIV7dOuOB08yFa6iiLh6ZIpQyFy4
 pQXosljbJNj3i7pKtYMvmQu2Iu5JzdM+4DG/oqhlS/RRYM3agdlvngB1MvkVuACpU7
 GLBtV7XMPP1Sw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=YPGDH/bb
Subject: Re: [Intel-wired-lan] [RFC PATCH v1] ice: add CGU info to devlink
 info callback
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>, "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 13 Apr 2023 13:43:52 +0000 Kubalewski, Arkadiusz wrote:
> >Is it flashed together with the rest of the FW components of the NIC?
> >Or the update method is different?  
> 
> Right now there is no mechanics for CGU firmware update at all, this is why I
> mention that this is for now mostly for debugging purposes.
> There are already some works ongoing to have CGU FW update possible, first with
> Intel's nvmupdate packages and tools. But, for Linux we probably also gonna
> need to support update through devlink, at least this seems right thing to do,
> as there is already possibility to update NIC firmware with devlink.

Only FW versions which are updated with a single flashing operation /
are part of a single FW image should be reported under the device
instance. If the flash is separate you need to create a separate
devlink (sub)instance or something along those lines.

Differently put - the components in the API are components of the FW
image, not components of a board.

We had a similar discussion about "line cards" before.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
