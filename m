Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F202453A2C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Nov 2021 20:30:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7805C40410;
	Tue, 16 Nov 2021 19:30:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HXT1kTe_eh4Y; Tue, 16 Nov 2021 19:30:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 54EC0403E9;
	Tue, 16 Nov 2021 19:30:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DE0131BF57F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 19:30:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CB1A5403E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 19:30:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EzpRZIBso4WL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Nov 2021 19:30:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2E9D8403E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 19:30:43 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5CF336140D;
 Tue, 16 Nov 2021 19:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637091042;
 bh=+Ty9ThuacF/5qyYxqg9AiudbC/9ecfrcUqPzo23RDEg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Dec4gNcWXRpxxeGuPPN0Je6wnv+GK53gbhZfr3mpa5pvgY7OtTmkM/e3rLFoHcaYE
 mHYMqBiCMZCDd8e3yCFhvEWcSr9qmsqoxB9IZxePbaqNeZpv2hjpkF5+EVpItygWnR
 VzntnqfLoYVVxyBSQPjljmfirEMn3BkQZ8ApFVOI5nsoh6Pt7uorlg/KnBS/1DqjSP
 Ycm3kAvTPjbls6/UTrew9gktgVJ/yxy+G+YUUugRjuQtwD73Ptbo1AbDIqm7k6NfDE
 quIl5rZJhT8qz13itA1g7U04Nq0ylCDsGWXHmJdudp5dIgu3y7o+mFFy0gHe/PuiqB
 peIqT0CBDxizA==
Date: Tue, 16 Nov 2021 11:30:41 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Florian Westphal <fw@strlen.de>
Message-ID: <20211116113041.17fd8ff2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20211116154111.GF6326@breakpoint.cc>
References: <20211110114448.2792314-1-maciej.machnikowski@intel.com>
 <20211110114448.2792314-3-maciej.machnikowski@intel.com>
 <YY0+PmNU4MSGfgqA@hog> <20211111162252.GJ16363@breakpoint.cc>
 <MW5PR11MB58124A70268058505368A5C8EA999@MW5PR11MB5812.namprd11.prod.outlook.com>
 <20211116154111.GF6326@breakpoint.cc>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 2/6] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>,
 "petrm@nvidia.com" <petrm@nvidia.com>, "abyagowi@fb.com" <abyagowi@fb.com>,
 Sabrina Dubroca <sd@queasysnail.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Machnikowski,
 Maciej" <maciej.machnikowski@intel.com>, "saeed@kernel.org" <saeed@kernel.org>,
 "idosch@idosch.org" <idosch@idosch.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 16 Nov 2021 16:41:11 +0100 Florian Westphal wrote:
> > and the concept of that functionality
> > is - any packet network can implement it - SONET, GPON or even wireless.  
> 
> Ethtool ops expose a wide range of low-level functions not related to
> ethernet, e.g. eeprom dump, interrupt coalescing settings of and so on
> and so forth.
> 
> But hey, if net maintainers are ok with rtnetlink...

I agree, this has been brought up by 5 people or so already.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
