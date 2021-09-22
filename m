Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C47414B0E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Sep 2021 15:51:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 61B4740578;
	Wed, 22 Sep 2021 13:51:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rycjn3Chw8xg; Wed, 22 Sep 2021 13:51:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4706B40576;
	Wed, 22 Sep 2021 13:51:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 952FE1BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 06:22:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 82D5A83EDA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 06:22:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QLZcy-MDh4JU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Sep 2021 06:22:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D444B83E38
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 06:22:11 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id 8EB733201CF8;
 Wed, 22 Sep 2021 02:22:10 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Wed, 22 Sep 2021 02:22:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=FxOlqX
 be295nOShnbwm0vH+4KEHmjGRkKffE/LvQIG8=; b=B/uKbHU/4yHRmy8ekiRoYo
 y29eNFNK3C3MqHLZ/TpJHAe2tJP7was1/4rsbTMP0JXOhfp7eyWQAiMBPwkUalzP
 lNlg/VMlhTEuf/GZ+iWwGUW357FwnHbMFL8a1odtUOiAqyoArvAJ8uCdgQZ3e7L4
 YbS8sAeYxJ8QTObi4iKfWKybuHUUCzKkdy3Zftc3tqZZZwnhUtpozf+6zMj4YviH
 vaVGwxhPfjEpQN6mZMihhG/yhc63D6mLx+UVtKdTFUu34iBqm8fNwEyT0MCzUiCi
 Hvq/y5sTzv1DgW9xYlobhHZ2nhpcDuUNiHjVfJzfY5PFRUA/fb8gg7EdEo5MXOgg
 ==
X-ME-Sender: <xms:kctKYYlTbXyUEWhXxgnbAJKwzXAoauQ5Pp9GF3mns1-cZEcnT-mtJA>
 <xme:kctKYX3D20vHMdOHDH-3opUa7dnlT3oGD9w2zC_YB53hETvwcxcD2YwmeePldzj8R
 rF4wroRDh8DNQE>
X-ME-Received: <xmr:kctKYWri0FKGOViCtNkz0u7GsVUXt6_DVOMJgpmJOmCb8FMGVDMwMO-kXgUVCrfz1oa4CBDBR4VYwQqrCoiFW3SNNHNCBg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeiiedguddtudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcu
 ufgthhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrth
 htvghrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudeh
 leetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepih
 guohhstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:kctKYUkP99iOdwA7vV70_zpMp7duypnGQW9HuJO7Rx_Ov7XF-I1bDQ>
 <xmx:kctKYW3cfPo64an5WdAI5FAfRi3GgQYDRUXqNGsn9Uuyko60W_Bf6Q>
 <xmx:kctKYbtklhBX49WPf6wC2F1-loEhSG5OgHbN_VWifgUqOFHaM_41sQ>
 <xmx:kstKYQqt6lfSuI-vuA9J7knt4heRYYZOyapQa09PZ2qlTRmZd_A_AQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 22 Sep 2021 02:22:08 -0400 (EDT)
Date: Wed, 22 Sep 2021 09:22:04 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <YUrLjGJwMc/UpqOK@shredder>
References: <20210903151436.529478-1-maciej.machnikowski@intel.com>
 <20210903151436.529478-2-maciej.machnikowski@intel.com>
 <YUnbCzBOPP9hWQ5c@shredder>
 <PH0PR11MB4951E98FCEC0F1EA230BA1DAEAA19@PH0PR11MB4951.namprd11.prod.outlook.com>
 <YUny/edqnbdTFnBS@shredder>
 <20210921141445.24ae714e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210921141445.24ae714e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Mailman-Approved-At: Wed, 22 Sep 2021 13:51:02 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] rtnetlink: Add new
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
Cc: "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Machnikowski,
 Maciej" <maciej.machnikowski@intel.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Sep 21, 2021 at 02:14:45PM -0700, Jakub Kicinski wrote:
> On Tue, 21 Sep 2021 17:58:05 +0300 Ido Schimmel wrote:
> > > > The only source type above is 'port' with the ability to set the
> > > > relevant port, but more can be added. Obviously, 'devlink clock show'
> > > > will give you the current source in addition to other information such
> > > > as frequency difference with respect to the input frequency.  
> > > 
> > > We considered devlink interface for configuring the clock/DPLL, but a
> > > new concept was born at the list to add a DPLL subsystem that will
> > > cover more use cases, like a TimeCard.  
> > 
> > The reason I suggested devlink is that it is suited for device-wide
> > configuration and it is already used by both MAC drivers and the
> > TimeCard driver. If we have a good reason to create a new generic
> > netlink family for this stuff, then OK.
> 
> For NICs mapping between devlink instances and HW is not clear.
> Most register devlink per PCI dev which usually maps to a Eth port.
> So if we have one DPLL on a 2 port NIC mapping will get icky, no?

Yes, having to represent the same EEC in multiple devlink instances is
not nice.

> 
> Is the motivation to save the boilerplate code associated with new
> genetlink family or something more? 

I don't mind either way. I simply wanted to understand the motivation
for not using any existing framework. The above argument is convincing
enough, IMO.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
