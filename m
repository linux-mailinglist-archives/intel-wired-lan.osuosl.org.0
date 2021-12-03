Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8B7467AB2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Dec 2021 16:58:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC0B7403CA;
	Fri,  3 Dec 2021 15:58:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SSkk7GQ3PBVx; Fri,  3 Dec 2021 15:58:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB71D403C2;
	Fri,  3 Dec 2021 15:58:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C2861BF315
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Dec 2021 15:58:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4ABCF403C1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Dec 2021 15:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g2NRGP940aQu for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Dec 2021 15:58:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C20A640355
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Dec 2021 15:58:26 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id D5DC2580299;
 Fri,  3 Dec 2021 10:58:25 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Fri, 03 Dec 2021 10:58:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=JjPqo0
 7GzclQowIXgO11ef1Z0XrbTc75Ybow2HLgDHM=; b=f4shhmDNENyDIebbipMSlH
 ZDnY9Qay2V4O8BXWtRSo/7eU3xDc0vBMjSuTuSj0ailJOl9sIASZGKUiHgCMVPNm
 fVdUcOWgvvMP2w0HCG1jVP8bO65EfZFVHuRZ4lZ5qU8t1Bp6OWnXLPGrq3dbUTBA
 1KuxcogyhdAY4VNH2JQW84eWLB3y4+TRnr/dBvzTcnQV2o5cpo7RWM6xFDP9wl1C
 4PE0q9VRN3Bg5F9ETZIQ1ZA3vjedBaIbuFxdoKqhzs2Z7tlH+2prWtK1pXru0srq
 IBr5kpvqCzQTkULEUR3IssG1lUXVd0bPifWPKX1KUpFBSWqXP4WM/Rlg1PPPqXgQ
 ==
X-ME-Sender: <xms:oD6qYd8-8iXaSgjmR-3yWDwQ9ES9WB1nk8nwwJWlk-FnwiwBBrRwvw>
 <xme:oD6qYRs7K2ycOb1iLZ3nscl1P6KoRYe3LV9tioru5qpZF4hFwQSITCJMjgfKK9yH8
 2tLa94rjQgUL9Y>
X-ME-Received: <xmr:oD6qYbDExsN3C_3mTW8t16u5-uaxEbr4d62EFMx2hFoEbPLispkPVoHJJCtXnnnFYODlp_E1lOO3MdB1NB4Uu5fuHchkVw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrieejgdekhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepkfguohcuufgt
 hhhimhhmvghluceoihguohhstghhsehiughoshgthhdrohhrgheqnecuggftrfgrthhtvg
 hrnheptdffkeekfeduffevgeeujeffjefhtefgueeugfevtdeiheduueeukefhudehleet
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepihguoh
 hstghhsehiughoshgthhdrohhrgh
X-ME-Proxy: <xmx:oD6qYRdLeye03_rgc5cL3zP7pLEfKRfZwqSkL36AvB2ysANkSLz4CA>
 <xmx:oD6qYSNnbfx2ESeHx3Zao7XWS76_Q2NnJULK88qFPKIe-ofNeziHdg>
 <xmx:oD6qYTn4aLShaqiV6UJ9DP_cXopWd_4jbOr1h3NkyY_sosidcAj0Lw>
 <xmx:oT6qYTmLAbk0-3K-u7gNJcTljd7ZhtXJxMhgpGSR16Vbc-hkfIG3qg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 3 Dec 2021 10:58:23 -0500 (EST)
Date: Fri, 3 Dec 2021 17:58:20 +0200
From: Ido Schimmel <idosch@idosch.org>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <Yao+nK40D0+u8UKL@shredder>
References: <20211201180208.640179-1-maciej.machnikowski@intel.com>
 <20211201180208.640179-3-maciej.machnikowski@intel.com>
 <Yai/e5jz3NZAg0pm@shredder>
 <MW5PR11MB5812455176BC656BABCFF1B0EA699@MW5PR11MB5812.namprd11.prod.outlook.com>
 <Yaj13pwDKrG78W5Y@shredder>
 <PH0PR11MB583105F8678665253A362797EA699@PH0PR11MB5831.namprd11.prod.outlook.com>
 <87pmqdojby.fsf@nvidia.com>
 <MW5PR11MB581202E2A601D34E30F1E5AEEA6A9@MW5PR11MB5812.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MW5PR11MB581202E2A601D34E30F1E5AEEA6A9@MW5PR11MB5812.namprd11.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 2/4] ethtool: Add ability
 to configure recovered clock for SyncE feature
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
Cc: Petr Machata <petrm@nvidia.com>, "mkubecek@suse.cz" <mkubecek@suse.cz>,
 "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "saeed@kernel.org" <saeed@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Dec 03, 2021 at 02:55:05PM +0000, Machnikowski, Maciej wrote:
> If you have 32 port switch chip with 2 recovered clock outputs how will you
> tell the chip to get the 18th port to pin 0 and from port 20 to pin 1? That's
> the part those patches addresses. The further side of "which clock should the
> EEC use" belongs to the DPLL subsystem and I agree with that.
> 
> Or to put it into different words:
> This API will configure given quality level  frequency reference outputs on chip's
> Dedicated outputs. On a board you will connect those to the EEC's reference inputs.

So these outputs are hardwired into the EEC's inputs and are therefore
only meaningful as EEC inputs? If so, why these outputs are not
configured via the EEC object?

> 
> The EEC's job is to validate the inputs and lock to them following certain rules,
> The PHY/MAC (and this API) job is to deliver reference signals to the EEC. 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
