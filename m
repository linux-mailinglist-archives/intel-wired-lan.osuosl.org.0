Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFDAA82469
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 14:11:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9967240680;
	Wed,  9 Apr 2025 12:11:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Jd688hjPpvz; Wed,  9 Apr 2025 12:11:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15AA7408F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744200704;
	bh=s/+XScN+DX/hI6ZdffBa6gflMtgoXQ6VeTHcwMIEqqk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CoTPKSb+lMW2KnS3NYWDOss0/x5rjNCWIS08BTRjt+CR8lYcsMehewXwfwanP4erq
	 yh9Yxw03fdKGZkJZqZBygU5vf37kHW4QP2o5QrxpmTv8z6Y3YAsfHxyFbq1uJKtQJa
	 jRbPT/D1qFka625zIQNNl0ahiqyzq81nOodmklNM77rDCooUOM0+kI736K2MJGgGKE
	 zXJRe6cl6PBe6LpxgtUjU3KEeS7r0XrF+RQgZpwvenfX5djLMcM76woJhI7kdb4vNp
	 SeY5gdhTaxkc/55C7jxKps3YWB+IfOKWh4263DYMtQy/Smdxk3qTfr+zXjSN5q/t1D
	 RuhP0ulVCcWZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15AA7408F8;
	Wed,  9 Apr 2025 12:11:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 17FD0D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:11:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F24BA60A7A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:11:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7MDkSWknN6tf for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 12:11:42 +0000 (UTC)
X-Greylist: delayed 313 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 09 Apr 2025 12:11:42 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 549B16074F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 549B16074F
Received-SPF: Pass (sender SPF authorized) identity=helo;
 client-ip=103.168.172.149; helo=fout-a6-smtp.messagingengine.com;
 envelope-from=idosch@idosch.org; receiver=<UNKNOWN> 
Received: from fout-a6-smtp.messagingengine.com
 (fout-a6-smtp.messagingengine.com [103.168.172.149])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 549B16074F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:11:42 +0000 (UTC)
Received: from phl-compute-09.internal (phl-compute-09.phl.internal
 [10.202.2.49])
 by mailfout.phl.internal (Postfix) with ESMTP id 8E89D1380163;
 Wed,  9 Apr 2025 08:06:28 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-09.internal (MEProxy); Wed, 09 Apr 2025 08:06:28 -0400
X-ME-Sender: <xms:w2L2Zz9p9K_CFb4UmG-rCRInMZ87KjqXs1XsKdx_KYEuWbnfH5ewWA>
 <xme:w2L2Z_uFqXFK6p5-UvfGuFQX613mnQG7JesCQQmaqslXc-acfbPEemriikN07Gz7a
 2NsppgNFxr_jHc>
X-ME-Received: <xmr:w2L2ZxDmUdiXg8tnZF0E7yB702SF5BuD7p0kHv7zFqptYGYVnX0SjLYD2pMp>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvtdehleehucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
 gvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesthdtredttddt
 vdenucfhrhhomhepkfguohcuufgthhhimhhmvghluceoihguohhstghhsehiughoshgthh
 drohhrgheqnecuggftrfgrthhtvghrnhepvddufeevkeehueegfedtvdevfefgudeifedu
 ieefgfelkeehgeelgeejjeeggefhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
 hmpehmrghilhhfrhhomhepihguohhstghhsehiughoshgthhdrohhrghdpnhgspghrtghp
 thhtohepgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepmhgrrhhthihnrgdrsh
 iirghprghrqdhmuhgulhgrfieslhhinhhugidrihhnthgvlhdrtghomhdprhgtphhtthho
 pehinhhtvghlqdifihhrvgguqdhlrghnsehlihhsthhsrdhoshhuohhslhdrohhrghdprh
 gtphhtthhopehnvghtuggvvhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthho
 pehmihgthhgrlhdrkhhusghirghksehinhhtvghlrdgtohhm
X-ME-Proxy: <xmx:w2L2Z_fANOu9qd9HL46WJ86i3MLZ2FK-Uqdl9XzwMYiEyQwBHiGecw>
 <xmx:w2L2Z4PXy9yhE-L9K4px5nzk7jWw_NeZPyuAOeJZ27ab5u2TMfN-Bg>
 <xmx:w2L2ZxkRFe47LzyavREWgo7025jId4KxjNIZQJSahK9SKOFLtrvxxQ>
 <xmx:w2L2ZytP_i_22DYY1Z4UMujCE1PyNiKhQagX1qBEV2w6BIkQ8TFndg>
 <xmx:xGL2Z8aw1HFviLpTJWr6BRM3ZixbN-RZ14AYqtUgIhIVq-WGzSlDoyeV>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 9 Apr 2025 08:06:26 -0400 (EDT)
Date: Wed, 9 Apr 2025 15:06:24 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>
Message-ID: <Z_ZiwNUJy7xGeT8m@shredder>
References: <20250409113622.161379-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250409113622.161379-4-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250409113622.161379-4-martyna.szapar-mudlaw@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1744200388; x=1744286788; bh=s/+XScN+DX/hI6ZdffBa6gflMtgoXQ6VeTH
 cwMIEqqk=; b=kQ3VdiaCcWaSzeMTAmaAXP+IzHhY4VC7rdP1UtrXwe5zZ4Gk4PC
 aAmyMVrrn0U7U9wUKVhsL8VKBT9e71SAhBzS3UOW5TxzQT0iNUsiwHM3kstErAUB
 QiYKIquOt+r2mh1yf4IoYv5TsX0021Ge84f0lGftF6hMYmsv6bmTsPeXCZwGA3B1
 mC+NVOErppxChvlI1fog2NyY7zov9k0xQ/hqMqY8Ic7hK8i1Og2zLLt4maWkKD25
 zp6sfrysIKJ5oMKnKy/sLMeTOcYyNKRsp0cQu22fHoAAUNMQt7qIDDaPbsYmgbXS
 WLkAdUW4UKnMX5qQX89K2oM2kI12ZfmKmAQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=idosch.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm2 header.b=kQ3VdiaC
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: add
 link_down_events statistic
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 09, 2025 at 01:36:23PM +0200, Martyna Szapar-Mudlaw wrote:
> Introduce a new ethtool statistic to ice driver, `link_down_events`,
> to track the number of times the link transitions from up to down.
> This counter can help diagnose issues related to link stability,
> such as port flapping or unexpected link drops.
> 
> The counter increments when a link-down event occurs and is exposed
> via ethtool stats as `link_down_events.nic`.

Are you aware of commit 9a0f830f8026 ("ethtool: linkstate: add a
statistic for PHY down events")?

Better to report this via the generic counter than a driver-specific
one.
