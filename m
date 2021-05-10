Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A1976379063
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 16:12:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 463E483E8C;
	Mon, 10 May 2021 14:12:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JZvtbWPIcZg5; Mon, 10 May 2021 14:12:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52E3F83C77;
	Mon, 10 May 2021 14:12:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 832C61BF38E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 14:11:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7141460BC6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 14:11:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=benboeckel.net header.b="gQh6u0zh";
 dkim=pass (2048-bit key) header.d=messagingengine.com
 header.b="FkYLunR8"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cTq0QhhmuqCU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 14:11:05 +0000 (UTC)
X-Greylist: delayed 00:10:23 by SQLgrey-1.8.0
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com
 [66.111.4.224])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0884460BDC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 14:11:04 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 14AAD5807B2;
 Mon, 10 May 2021 10:00:38 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 10 May 2021 10:00:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=benboeckel.net;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=fwXudyHn8IUNsmfHA12W5pUxFzr
 IcUsJJs6niPOOwGc=; b=gQh6u0zhPsG//1fbjCgHH3SUq5OZEixVi+ckcNcOvNr
 8f8S6u6OqczboxIeZQzxpdw3AUy1t45vyyuSQKDA1+yJJEqv0Na0yFB8YXQoxGQa
 A5mz/uekXLKQlXSBVpDzZgWHaTwxLQ8cfd/84Seg6MJA86M+DwrG/rxkfmjHnsDx
 Vsn+We4G3Oh5Yvv4HNwlluWEHPMQsGoYqOZqIpzyUGPfcSXaDfcxgaoBasafO20O
 Nia4uZb9+lsHdBKwEogjjnykkTJJzKThWOeq3e2hyjT/F/nLvkiGpnFJ0uMYCJ5w
 yhbph4b45d/9JdizeckN5aTq6WAACtGxOiZQK1Svtuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=fwXudy
 Hn8IUNsmfHA12W5pUxFzrIcUsJJs6niPOOwGc=; b=FkYLunR8+bNyojGntZzlTv
 lNhoU5Ih8GFYdgqBiM9GEeBgkR7PC0rd49vKxgNK2oVHYiwvnJ0pFHee6wyNEefG
 07iyoKlPp2/47lNX2/0a3w6XYC3Muan3VrHn9DIyh2AJDD/sq19lwcD+nClmgOGW
 3kjTJut/WH9S1nO20R6vTeVSVeiFhLK/oh1ul5trEQZynTCu46HI2dcf9dXPVKk9
 sOjDpOdiQFUH6B6gq1Emr8rDL+S3scV3gAHdetS1J2hIDO0dgu0hscWNc8fHxaey
 25F3JvGPZJisNAQmAtq62YqH7TCAIzVvBqJwx8rI9Oyho2YDtxrFPxf1S0VsKOTA
 ==
X-ME-Sender: <xms:hDyZYCqZ48w__j-3J2DdcFFyCNO8Px1wZAdweI2vgyXQ5g_1A_avfw>
 <xme:hDyZYAoPMp-2hhXE5dIuFZVKJLDFR-LeVjsu56BtdhTJGnUi8Md4Pqb1pnf9Vqqdn
 t02Gw-Ku9S6gnwxX4I>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdegkedgjedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttderjeenucfhrhhomhepuegvnhcu
 uehovggtkhgvlhcuoehmvgessggvnhgsohgvtghkvghlrdhnvghtqeenucggtffrrghtth
 gvrhhnpeevffdtteetgfdttdekueefgedttddtueeugeekgeetffeuteffjeduieehhfek
 tdenucfkphepvdegrdduieelrddvtddrvdehheenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmvgessggvnhgsohgvtghkvghlrdhnvght
X-ME-Proxy: <xmx:hDyZYHO7a0I2ObO3iNQCJFMynfyvzQSxH3x8A4ShPc13xjvG6wh63A>
 <xmx:hDyZYB6OL9_iqJiCXEkFvw1uMnu0UHjkSyxn6Irx0qOidEFWAmkwbA>
 <xmx:hDyZYB472gSq8MYTawlNh6oofIzwaZQvJxltEegElvbnNVF17UiCaA>
 <xmx:hjyZYNFuZhUi4dOrdPamnliiTh3owe6Tf-ewK9C2k9SXGvHlGfVlTg>
Received: from localhost (unknown [24.169.20.255])
 by mail.messagingengine.com (Postfix) with ESMTPA;
 Mon, 10 May 2021 10:00:35 -0400 (EDT)
Date: Mon, 10 May 2021 10:00:34 -0400
From: Ben Boeckel <me@benboeckel.net>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Message-ID: <YJk8gkMlk8dtaEsz@erythro.dev.benboeckel.internal>
References: <cover.1620641727.git.mchehab+huawei@kernel.org>
 <2ae366fdff4bd5910a2270823e8da70521c859af.camel@infradead.org>
 <20210510135518.305cc03d@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210510135518.305cc03d@coco.lan>
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Mailman-Approved-At: Mon, 10 May 2021 14:12:37 +0000
Subject: Re: [Intel-wired-lan] [PATCH 00/53] Get rid of UTF-8 chars that can
 be mapped as ASCII
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
Cc: alsa-devel@alsa-project.org, kvm@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-fpga@vger.kernel.org,
 dri-devel@lists.freedesktop.org, keyrings@vger.kernel.org,
 linux-riscv@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>,
 linux-rdma@vger.kernel.org, x86@kernel.org, linux-acpi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 linux-ext4@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-sgx@vger.kernel.org, coresight@lists.linaro.org, rcu@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-integrity@vger.kernel.org, David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 10, 2021 at 13:55:18 +0200, Mauro Carvalho Chehab wrote:
>     $ git grep "CPU 0 has been" Documentation/RCU/
>       Documentation/RCU/Design/Data-Structures/Data-Structures.rst:| #. CPU 0 has been in dyntick-idle mode for quite some time. When it   |
>       Documentation/RCU/Design/Data-Structures/Data-Structures.rst:|    notices that CPU 0 has been in dyntick idle mode, which qualifies  |

The kernel documentation uses hard line wraps, so such a naive grep is
going to always fail unless such line wraps are taken into account. Not
saying this isn't an improvement in and of itself, but smarter searching
strategies are likely needed anyways.

--Ben
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
