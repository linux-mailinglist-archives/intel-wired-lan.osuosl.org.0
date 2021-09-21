Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C803D41340A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Sep 2021 15:27:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6820283503;
	Tue, 21 Sep 2021 13:27:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hf72VH62MANd; Tue, 21 Sep 2021 13:27:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5736F83372;
	Tue, 21 Sep 2021 13:27:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8CE531BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 13:25:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 85B358332A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 13:25:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ofZTT4HYz28H for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Sep 2021 13:25:58 +0000 (UTC)
X-Greylist: delayed 00:09:55 by SQLgrey-1.8.0
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6EE8883180
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 13:25:58 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id 76F333200495;
 Tue, 21 Sep 2021 09:16:00 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Tue, 21 Sep 2021 09:16:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=2gpvT6
 gYfhZrqxZ3BpEQR8xTPmX4u9XRLQLIUgpM+2o=; b=OQqQ0O8ddAfsMqNIvX61El
 J9shfRvIVW+9uYqPJcVWMlPOGcOdcAqiB0hT5jWLyV7Q3fZFzNpI+CGFK8+t686T
 evkcXwzMNaYP5bA258sKxIrGXczucPBnujEwL3MK37pRm3Kalm4OGHJXUtV8OYeB
 6zt45nRgtcA2aLVjRCSh57f5VRC6aYZHhL5ActwK4NxgdEUTY7hYBii6bD+6TkYP
 FBUpM/XT/oNDiyDz/ymRMhH5NQlOreb7ePGjxaqTX7zCT0ccw5/5ERnzZbqGTo2k
 wSfcejS/CdE90m9P/HkJM7n9eS2I6UPkG26SvWnqyUnSOJRQ7/Wt0nDEiCsnIjAw
 ==
X-ME-Sender: <xms:D9tJYYnyYOq4HL_9vh1AJLNlaq1of_fGkoU59sZfXGE3KDi0BZopyQ>
 <xme:D9tJYX12cJHM6u6-33ivaHGinSamyMXFZi5jorlOViwLbwIPu6Ye5rD0bVDaye-jB
 iiKo58UWnbctMk>
X-ME-Received: <xmr:D9tJYWoZ849Jsju22Ldhj_z9bC7MqlNrhU6XnZZCk7RP04NMXaMaMsVOWITbJSYghTl7udrLngkyOh9iJ7Q5XTsJoLXxUg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeigedgiedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpeduveetjeegkeevtdffudethedvveejjeeuueekueeitdefvdfhhfelgfehveef
 hfenucffohhmrghinheprhgvnhgvshgrshdrtghomhenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiughoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:D9tJYUl68lHSO-qdwzlA-A2W6gxP5eANoayhg4NrY9Pgx4aPLUB4Dg>
 <xmx:D9tJYW1rqwNSpsyseQ_9k1V5IkExKYozaJv_ZwYMMF-XVJXVik6_0Q>
 <xmx:D9tJYbtH46GwLefakG_MHY2kI-poyJXGbpS_1jPjjRSyUa_znUb5ng>
 <xmx:ENtJYQoMBDYxJcuepNdAq4TZDcE-Hq7VucFXNiAFJ_ZfLV_Prk4TZw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 21 Sep 2021 09:15:58 -0400 (EDT)
Date: Tue, 21 Sep 2021 16:15:55 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
Message-ID: <YUnbCzBOPP9hWQ5c@shredder>
References: <20210903151436.529478-1-maciej.machnikowski@intel.com>
 <20210903151436.529478-2-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210903151436.529478-2-maciej.machnikowski@intel.com>
X-Mailman-Approved-At: Tue, 21 Sep 2021 13:27:45 +0000
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
Cc: abyagowi@fb.com, netdev@vger.kernel.org, richardcochran@gmail.com,
 linux-kselftest@vger.kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 03, 2021 at 05:14:35PM +0200, Maciej Machnikowski wrote:
> diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
> index eebd3894fe89..78a8a5af8cd8 100644
> --- a/include/uapi/linux/if_link.h
> +++ b/include/uapi/linux/if_link.h
> @@ -1273,4 +1273,35 @@ enum {
>  
>  #define IFLA_MCTP_MAX (__IFLA_MCTP_MAX - 1)
>  
> +/* SyncE section */
> +
> +enum if_eec_state {
> +	IF_EEC_STATE_INVALID = 0,
> +	IF_EEC_STATE_FREERUN,
> +	IF_EEC_STATE_LOCKACQ,
> +	IF_EEC_STATE_LOCKREC,
> +	IF_EEC_STATE_LOCKED,
> +	IF_EEC_STATE_HOLDOVER,
> +	IF_EEC_STATE_OPEN_LOOP,
> +	__IF_EEC_STATE_MAX,

Can you document these states? I'm not clear on what LOCKACQ, LOCKREC
and OPEN_LOOP mean. I also don't see ice using them and it's not really
a good practice to add new uAPI without any current users.

From v1 I understand that these states were copied from commit
797d3186544f ("ptp: ptp_clockmatrix: Add wait_for_sys_apll_dpll_lock.")
from Renesas.

Figure 11 in the following PDF describes the states, but it seems
specific to the particular device and probably shouldn't be exposed to
user space as-is:
https://www.renesas.com/us/en/document/dst/8a34041-datasheet

I have a few questions about this being a per-netdev attribute:

1. My understanding is that in the multi-port adapter you are working
with you have a single EEC that is used to set the Tx frequency of all
the ports. Is that correct?

2. Assuming the above is correct, is it possible that one port is in
LOCKED state and another (for some reason) is in HOLDOVER state? If yes,
then I agree about this being a per-netdev attribute. The interface can
also be extended with another attribute specifying the HOLDOVER reason.
For example, netdev being down.

Regardless, I agree with previous comments made about this belonging in
ethtool rather than rtnetlink.

> +};
> +
> +#define IF_EEC_STATE_MAX	(__IF_EEC_STATE_MAX - 1)
> +#define EEC_SRC_PORT		(1 << 0) /* recovered clock from the port is
> +					  * currently the source for the EEC
> +					  */

I'm not sure about this one. If we are going to expose this as a
per-netdev attribute (see more below), any reason it can't be added as
another state (e.g., IF_EEC_STATE_LOCKED_SRC)?

IIUC, in the common case of a simple NE the source of the EEC is always
one of the ports, but in the case of a PRC the source is most likely
external (e.g., GPS).

If so, I think we need a way to represent the EEC as a separate object
with the ability to set its source and report it via the same interface.
I'm unclear on how exactly an external source looks like, but for the
netdev case maybe something like this:

devlink clock show [ dev clock CLOCK ]
devlink clock set DEV clock CLOCK [ { src_type SRC_TYPE } ]
SRC_TYPE : = { port DEV/PORT_INDEX }

The only source type above is 'port' with the ability to set the
relevant port, but more can be added. Obviously, 'devlink clock show'
will give you the current source in addition to other information such
as frequency difference with respect to the input frequency.

Finally, can you share more info about the relation to the PHC? My
understanding is that one of the primary use cases for SyncE is to drive
all the PHCs in the network using the same frequency. How do you imagine
this configuration is going to look like? Can the above interface be
extended for that?

All of the above might be complete nonsense as I'm still trying to wrap
my head around the subject.

Thanks for working on this
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
