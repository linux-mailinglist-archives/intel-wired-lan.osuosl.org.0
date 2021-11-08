Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A534499D3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Nov 2021 17:30:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC0F080DDB;
	Mon,  8 Nov 2021 16:30:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FUR9TPj3CJl1; Mon,  8 Nov 2021 16:30:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 848AC80D1C;
	Mon,  8 Nov 2021 16:30:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C7D2A1BF97E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Nov 2021 16:30:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B676C60623
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Nov 2021 16:30:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yRt3GESXwKgf for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Nov 2021 16:30:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wnew1-smtp.messagingengine.com (wnew1-smtp.messagingengine.com
 [64.147.123.26])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CDDD86060A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Nov 2021 16:30:00 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 75F162B0162A;
 Mon,  8 Nov 2021 11:29:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 08 Nov 2021 11:29:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=MZvp7a
 2mXTAiGBx6VD3+4iAJ4DcWCBfSPtZAEQOsy1k=; b=HoNvWcbC2oUhERbJbl7FZk
 MFqzuH4xz8l2HbvH3vy0iv4hl1hrJjFkbzdEOQn8kWPOOSvYj4BXBmVVrUSuMXbk
 7TvhOEGflk90b/HJdzr48eni5YqUVuSprJuedcwl8TyerhbuOOpLPkgrzz742A4Y
 14m1sqi/s10wLzIX+6G7f21lsFDp+840oXER5YKxqngVK604LMvmkpkpXC73tFJe
 R1DY3jT0ErQ/Hpymt8EtlbdKY/Mah1kH5P9mAZLiBHtBC1vCvv+jDW+Sv7M3M0HA
 8KBJcnTtKS+2z4QAOiX5+pblvw5ndErT2bDHwH6DOcU1m55ul21S25qeRPbhDofw
 ==
X-ME-Sender: <xms:hFCJYRx2w_-5WdSbYdWh2GETy8DkFPdHYf-t7yDa8bqmyJtngDO1SA>
 <xme:hFCJYRSOHPQfO8wuYeBP5HKJcRw1Zxqpg53f2FL2w4ml406V3LYrV8oHFqPp5Gc_8
 Gq9CVR1-oCa7Ak>
X-ME-Received: <xmr:hFCJYbXOnuElwCsy592uXNSO_9Ug0z8y0cw7eUIQ1xEd27uP1rDlqfR21sxjDBnhFXRXQtFAHhbZC6dcYXKAsQzWL7ywDQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddruddvgdekjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguoh
 hstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:hFCJYTgNFIhMZ4SN_QPsQUBtlhap7f9eF74KkiZ5awZzvZ5zRvSTMw>
 <xmx:hFCJYTC1TfCEUUG15zpDxnSGQy1WcH_BGh9JeeIOrwrgL9yppHC-Uw>
 <xmx:hFCJYcLhBUvWLjEP3C3pteKFfBHejRKj6e4N-dS6kYN0jvGfIPzLmA>
 <xmx:hVCJYfvrps-r07TCJkObom_a8opG7ST05-MfpT_0ztIOpgCQ3n4A5DEq51M>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 8 Nov 2021 11:29:55 -0500 (EST)
Date: Mon, 8 Nov 2021 18:29:50 +0200
From: Ido Schimmel <idosch@idosch.org>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <YYlQfm3eW/jRS4Ra@shredder>
References: <20211105205331.2024623-1-maciej.machnikowski@intel.com>
 <20211105205331.2024623-7-maciej.machnikowski@intel.com>
 <YYfd7DCFFtj/x+zQ@shredder>
 <MW5PR11MB58120F585A5CF1BCA1E7E958EA919@MW5PR11MB5812.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MW5PR11MB58120F585A5CF1BCA1E7E958EA919@MW5PR11MB5812.namprd11.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 6/6] docs: net: Add
 description of SyncE interfaces
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "saeed@kernel.org" <saeed@kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 08, 2021 at 08:35:17AM +0000, Machnikowski, Maciej wrote:
> > -----Original Message-----
> > From: Ido Schimmel <idosch@idosch.org>
> > Sent: Sunday, November 7, 2021 3:09 PM
> > To: Machnikowski, Maciej <maciej.machnikowski@intel.com>
> > Subject: Re: [PATCH v2 net-next 6/6] docs: net: Add description of SyncE
> > interfaces
> > 
> > On Fri, Nov 05, 2021 at 09:53:31PM +0100, Maciej Machnikowski wrote:
> > > +Interface
> > > +=========
> > > +
> > > +The following RTNL messages are used to read/configure SyncE recovered
> > > +clocks.
> > > +
> > > +RTM_GETRCLKRANGE
> > > +-----------------
> > > +Reads the allowed pin index range for the recovered clock outputs.
> > > +This can be aligned to PHY outputs or to EEC inputs, whichever is
> > > +better for a given application.
> > 
> > Can you explain the difference between PHY outputs and EEC inputs? It is
> > no clear to me from the diagram.
> 
> PHY is the source of frequency for the EEC, so PHY produces the reference
> And EEC synchronizes to it.
> 
> Both PHY outputs and EEC inputs are configurable. PHY outputs usually are
> configured using PHY registers, and EEC inputs in the DPLL references
> block
>  
> > How would the diagram look in a multi-port adapter where you have a
> > single EEC?
> 
> That depends. It can be either a multiport PHY - in this case it will look
> exactly like the one I drawn. In case we have multiple PHYs their recovered
> clock outputs will go to different recovered clock inputs and each PHY
> TX clock inputs will be driven from different EEC's synchronized outputs
> or from a single one through  clock fan out.
> 
> > > +Will call the ndo_get_rclk_range function to read the allowed range
> > > +of output pin indexes.
> > > +Will call ndo_get_rclk_range to determine the allowed recovered clock
> > > +range and return them in the IFLA_RCLK_RANGE_MIN_PIN and the
> > > +IFLA_RCLK_RANGE_MAX_PIN attributes
> > 
> > The first sentence seems to be redundant
> > 
> > > +
> > > +RTM_GETRCLKSTATE
> > > +-----------------
> > > +Read the state of recovered pins that output recovered clock from
> > > +a given port. The message will contain the number of assigned clocks
> > > +(IFLA_RCLK_STATE_COUNT) and an N pin indexes in
> > IFLA_RCLK_STATE_OUT_IDX
> > > +To support multiple recovered clock outputs from the same port, this
> > message
> > > +will return the IFLA_RCLK_STATE_COUNT attribute containing the number
> > of
> > > +active recovered clock outputs (N) and N IFLA_RCLK_STATE_OUT_IDX
> > attributes
> > > +listing the active output indexes.
> > > +This message will call the ndo_get_rclk_range to determine the allowed
> > > +recovered clock indexes and then will loop through them, calling
> > > +the ndo_get_rclk_state for each of them.
> > 
> > Why do you need both RTM_GETRCLKRANGE and RTM_GETRCLKSTATE? Isn't
> > RTM_GETRCLKSTATE enough? Instead of skipping over "disabled" pins in the
> > range IFLA_RCLK_RANGE_MIN_PIN..IFLA_RCLK_RANGE_MAX_PIN, just
> > report the
> > state (enabled / disable) for all
> 
> Great idea! Will implement it.
>  
> > > +
> > > +RTM_SETRCLKSTATE
> > > +-----------------
> > > +Sets the redirection of the recovered clock for a given pin. This message
> > > +expects one attribute:
> > > +struct if_set_rclk_msg {
> > > +	__u32 ifindex; /* interface index */
> > > +	__u32 out_idx; /* output index (from a valid range)
> > > +	__u32 flags; /* configuration flags */
> > > +};
> > > +
> > > +Supported flags are:
> > > +SET_RCLK_FLAGS_ENA - if set in flags - the given output will be enabled,
> > > +		     if clear - the output will be disabled.
> > 
> > In the diagram you have two recovered clock outputs going into the EEC.
> > According to which the EEC is synchronized?
> 
> That will depend on the future DPLL configuration. For now it'll be based
> on the DPLL's auto select ability and its default configuration.
>  
> > How does user space know which pins to enable?
> 
> That's why the RTM_GETRCLKRANGE was invented but I like the suggestion
> you made above so will rework the code to remove the range one and
> just return the indexes with enable/disable bit for each of them. In this
> case youserspace will just send the RTM_GETRCLKSTATE to learn what
> can be enabled.

In the diagram there are multiple Rx lanes, all of which might be used
by the same port. How does user space know to differentiate between the
quality levels of the clock signal recovered from each lane / pin when
the information is transmitted on a per-port basis via ESMC messages?

The uAPI seems to be too low-level and is not compatible with Nvidia's
devices and potentially other vendors. We really just need a logical
interface that says "Synchronize the frequency of the EEC to the clock
recovered from port X". The kernel / drivers should abstract the inner
workings of the device from user space. Any reason this can't work for
ice?

I also want to re-iterate my dissatisfaction with the interface being
netdev-centric. By modelling the EEC as a standalone object we will be
able to extend it to set the source of the EEC to something other than a
netdev in the future. If we don't do it now, we will end up with two
ways to report the source of the EEC (i.e., EEC_SRC_PORT and something
else).

Other advantages of modelling the EEC as a separate object include the
ability for user space to determine the mapping between netdevs and EECs
(currently impossible) and reporting additional EEC attributes such as
SyncE clockIdentity and default SSM code. There is really no reason to
report all of this identical information via multiple netdevs.

With regards to rtnetlink vs. something else, in my suggestion the only
thing that should be reported per-netdev is the mapping between the
netdev and the EEC. Similar to the way user space determines the mapping
from netdev to PHC via ETHTOOL_GET_TS_INFO. If we go with rtnetlink,
this can be reported as a new attribute in RTM_NEWLINK, no need to add
new messages.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
