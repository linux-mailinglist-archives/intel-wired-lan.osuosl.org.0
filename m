Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A09FAE0915
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 16:49:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C15794084D;
	Thu, 19 Jun 2025 14:49:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7msiyGe0cqQD; Thu, 19 Jun 2025 14:49:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BF6C4087B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750344568;
	bh=bJZoX1H0pKg0M1SA/qWQWR7S8HdwU3H818dBwncJTdc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1725R3DJ7vR2M4ele6r1ckeh6C0wTAhDf3Gwp5EuHWuXxyDcshHK50AwFi16tm5vY
	 qdiAaCvblv4judSsE+pBvtYDvOy6aiC8eKSJX0hUrlobXGpUW/PAp5sOS3nhLyXxww
	 EKRLzG0RxewCSTovKGzYh1NiAjB3QMao0KuvaIGsKh6CClwhod6bXDZLYD4Oj7ozlR
	 FFy4JEfKxHEuqePWzeR0HCC8jarvQsoknSnLs+LvKSMSreiUeEZZSDJt1LJZM4PaPG
	 Uj6Ld6hNzVhy37wcC8Z0dv1wtrN0LBpFVrYErOkhmHw7qwNQ7MNGNn9jMjz3Bg0A/s
	 VQ7r6zZ9zYvfg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BF6C4087B;
	Thu, 19 Jun 2025 14:49:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BCFA5181
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 14:49:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A3C5E40385
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 14:49:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XzxmqR0MqQyk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jun 2025 14:49:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.168.172.154;
 helo=fhigh-a3-smtp.messagingengine.com;
 envelope-from=marmarek@invisiblethingslab.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 805904005D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 805904005D
Received: from fhigh-a3-smtp.messagingengine.com
 (fhigh-a3-smtp.messagingengine.com [103.168.172.154])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 805904005D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jun 2025 14:49:25 +0000 (UTC)
Received: from phl-compute-09.internal (phl-compute-09.phl.internal
 [10.202.2.49])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 581E4114020C;
 Thu, 19 Jun 2025 10:49:24 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-09.internal (MEProxy); Thu, 19 Jun 2025 10:49:24 -0400
X-ME-Sender: <xms:cyNUaEnYa0G1sUb84ZBhFlK4VUI7EnqZb09Th03Ch3b__EKDbZfkZA>
 <xme:cyNUaD3JfrhPZhAYb_im_3cEsgIMcIR4uwiVk8XU57QqPDTmjMZ5IW9VTRpHFChca
 -Xc5QZbI_4DxA>
X-ME-Received: <xmr:cyNUaCrVZNisjWjtpJLFBwpZlx_bqvLZOROBm1V6HEJVhgEJ6Vf4YvrwGLffyBmRMU6PcMdDhn2LLTAwtkiciuaSy0K5SivFwvA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgdehkedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 epfffhvfevuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrrhgvkhcuofgr
 rhgtiiihkhhofihskhhiqdfikphrvggtkhhiuceomhgrrhhmrghrvghksehinhhvihhsih
 gslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnhepheduvdfghfet
 gefftdfhfeethfehhefhtefgvefhvdetkeekkeduhedtgeeiieehnecuffhomhgrihhnpe
 hlrghunhgthhhprggurdhnvghtpdhkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhi
 iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrghrmhgrrhgvkhesihhnvhhish
 hisghlvghthhhinhhgshhlrggsrdgtohhmpdhnsggprhgtphhtthhopedutddpmhhouggv
 pehsmhhtphhouhhtpdhrtghpthhtohepvhhithgrlhihrdhlihhfshhhihhtshesihhnth
 gvlhdrtghomhdprhgtphhtthhopegthhhrihhsthhirghnsehhvghushgvlhdrvghupdhr
 tghpthhtohepphhmvghniigvlhesmhholhhgvghnrdhmphhgrdguvgdprhgtphhtthhope
 grnhhthhhonhihrdhlrdhnghhuhigvnhesihhnthgvlhdrtghomhdprhgtphhtthhopehp
 rhiivghmhihslhgrfidrkhhithhsiigvlhesihhnthgvlhdrtghomhdprhgtphhtthhope
 hnvghtuggvvhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehinhhtvghl
 qdifihhrvgguqdhlrghnsehlihhsthhsrdhoshhuohhslhdrohhrghdprhgtphhtthhope
 hrvghgrhgvshhsihhonhhssehlihhsthhsrdhlihhnuhigrdguvghvpdhrtghpthhtohep
 shhtrggslhgvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:cyNUaAnrDe5gOluv7mW957b8hkPn-cs_e4l4l_hd67YhsdAQtUd_yg>
 <xmx:cyNUaC3tppNB8Tf7EBGAdh3Lj7Y3neFd0u-PJVqLE7hWQE-OLXCA3g>
 <xmx:cyNUaHsGjAPJ0XRwSVxI2FMYnwLQD7wl-HlbaIrc4VXiI_yLMtkolA>
 <xmx:cyNUaOXVcmZYTyvSqiDSrseLZCxfNBnn0urA6Rg9YdpFvsbWI0Mjpg>
 <xmx:dCNUaJ12bXse_-m0zr5Z1uEkvH76zhMMJ9d66p-WRWHZpM_FKcqjxUym>
Feedback-ID: i1568416f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 19 Jun 2025 10:49:20 -0400 (EDT)
Date: Thu, 19 Jun 2025 16:49:18 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Christian Heusel <christian@heusel.eu>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 regressions@lists.linux.dev, stable@vger.kernel.org,
 Sasha Levin <sashal@kernel.org>
Message-ID: <aFQjby7mQxvShBm7@mail-itl>
References: <aAZF0JUKCF0UvfF6@mail-itl> <aAZH7fpaGf7hvX6T@mail-itl>
 <e0034a96-e285-98c8-b526-fb167747aedc@intel.com>
 <aB0zLQawNrImVqPE@mail-itl>
 <c918d4f5-ee53-4f64-b152-cea0f6d99c4f@molgen.mpg.de>
 <aB0-JLSDT03fosST@mail-itl> <aB1JnJG_CH5vxAsw@mail-itl>
 <aFK_ExmGqmi-oQby@mail-itl>
 <87584d6f-5a31-47aa-bba3-1aadfc18fbe6@heusel.eu>
 <9fb5f018-7333-421b-8e2d-1f6eb98cffaa@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="vm5OGfsTLL6JBXBT"
Content-Disposition: inline
In-Reply-To: <9fb5f018-7333-421b-8e2d-1f6eb98cffaa@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 invisiblethingslab.com; h=cc:cc:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1750344564;
 x=1750430964; bh=bJZoX1H0pKg0M1SA/qWQWR7S8HdwU3H818dBwncJTdc=; b=
 gRjTxKXa7EdZ4uJc6H+pm7CbN5FBQHL15xnfO/fGHk7dALRSpHGbMhV4avHhue87
 pZlE7Gu6B21nUzZB5pavhcr5OTavYOmn48ofCng6C89hkpX5fQ/dU1zzLsbSiEk5
 HmG8Bawu8LuUbPtIkOzqM6SQgI9lS+bXkEfyVkFCJi/9dumFfKrdG4Z4XC+xK4w5
 ZmRnlB7Z0cy8HCl9AR4FQfd8Oa155Kuqz711wdKts1hYq4sT0Eq8UAwPCjjcFKKo
 FBnwcQkynhl1OlBIKIXkRsqTCo4IZwroPRn/clzJMpTJGbi2gzFSosfJOrm94LYq
 l44aKq+9AJxKluDYsDok2g==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1750344564; x=1750430964; bh=bJZoX1H0pKg0M1SA/qWQWR7S8HdwU3H818d
 BwncJTdc=; b=iPTH6ECAQoWMY49Z8UaWWfUnvlldg3wFE6G50XJv0/Wj8W07mSn
 XY5Syj7xDtGWCCDDr/LddbbemYIJgvoU3Yr4WxrI4hUF2NGspsdv3zSgZEVKPHDa
 x9Ewh9MdGlA/uZMA+GUhSbBygjUKjxNhNRlycrFZIMBE+eMY+iklJ0urU6K8c3js
 oDV58o+zO+XqQIfAVEa6AXc8lZpBEoG+vZt6RFSUYNmFMHdNubrIng3R02P20Jj6
 u/WsLZMiBsy76X7fGYMoKv2brBjN94lkcLLmKCxvhlBNed+VkFGGR+0th9wKD6oc
 nZDkuXbotYM6vHRoDyr3GhHq6UV+8qOf+ww==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=invisiblethingslab.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=invisiblethingslab.com
 header.i=@invisiblethingslab.com header.a=rsa-sha256 header.s=fm1
 header.b=gRjTxKXa; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm1 header.b=iPTH6ECA
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e heavy packet loss on
 Meteor Lake - 6.14.2
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


--vm5OGfsTLL6JBXBT
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 19 Jun 2025 16:49:18 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: Christian Heusel <christian@heusel.eu>,
	Paul Menzel <pmenzel@molgen.mpg.de>,
	Tony Nguyen <anthony.l.nguyen@intel.com>,
	Przemek Kitszel <przemyslaw.kitszel@intel.com>,
	netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
	regressions@lists.linux.dev, stable@vger.kernel.org,
	Sasha Levin <sashal@kernel.org>
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e heavy packet loss on
 Meteor Lake - 6.14.2

On Thu, Jun 19, 2025 at 03:20:35PM +0300, Lifshits, Vitaly wrote:
>=20
>=20
> On 6/18/2025 4:41 PM, Christian Heusel wrote:
> > On 25/06/18 03:28PM, Marek Marczykowski-G=C3=B3recki wrote:
> > > On Fri, May 09, 2025 at 02:17:32AM +0200, Marek Marczykowski-G=C3=B3r=
ecki wrote:
> > > > On Fri, May 09, 2025 at 01:28:36AM +0200, Marek Marczykowski-G=C3=
=B3recki wrote:
> > > > > On Fri, May 09, 2025 at 01:13:28AM +0200, Paul Menzel wrote:
> > > > > > Dear Marek, dear Vitaly,
> > > > > >=20
> > > > > >=20
> > > > > > Am 09.05.25 um 00:41 schrieb Marek Marczykowski-G=C3=B3recki:
> > > > > > > On Thu, May 08, 2025 at 09:26:18AM +0300, Lifshits, Vitaly
> > > > > > > > On 4/21/2025 4:28 PM, Marek Marczykowski-G=C3=B3recki wrote:
> > > > > > > > > On Mon, Apr 21, 2025 at 03:19:12PM +0200, Marek Marczykow=
ski-G=C3=B3recki wrote:
> > > > > > > > > > On Mon, Apr 21, 2025 at 03:44:02PM +0300, Lifshits, Vit=
aly wrote:
> > > > > > > > > > >=20
> > > > > > > > > > >=20
> > > > > > > > > > > On 4/16/2025 3:43 PM, Marek Marczykowski-G=C3=B3recki=
 wrote:
> > > > > > > > > > > > On Wed, Apr 16, 2025 at 03:09:39PM +0300, Lifshits,=
 Vitaly wrote:
> > > > > > > > > > > > > Can you please also share the output of ethtool -=
i? I would like to know the
> > > > > > > > > > > > > NVM version that you have on your device.
> > > > > > > > > > > >=20
> > > > > > > > > > > > driver: e1000e
> > > > > > > > > > > > version: 6.14.1+
> > > > > > > > > > > > firmware-version: 1.1-4
> > > > > > > > > > > > expansion-rom-version:
> > > > > > > > > > > > bus-info: 0000:00:1f.6
> > > > > > > > > > > > supports-statistics: yes
> > > > > > > > > > > > supports-test: yes
> > > > > > > > > > > > supports-eeprom-access: yes
> > > > > > > > > > > > supports-register-dump: yes
> > > > > > > > > > > > supports-priv-flags: yes
> > > > > > > > > > > >=20
> > > > > > > > > > >=20
> > > > > > > > > > > Your firmware version is not the latest, can you chec=
k with the board
> > > > > > > > > > > manufacturer if there is a BIOS update to your system?
> > > > > > > > > >=20
> > > > > > > > > > I can check, but still, it's a regression in the Linux =
driver - old
> > > > > > > > > > kernel did work perfectly well on this hw. Maybe new dr=
iver tries to use
> > > > > > > > > > some feature that is missing (or broken) in the old fir=
mware?
> > > > > > > > >=20
> > > > > > > > > A little bit of context: I'm maintaining the kernel packa=
ge for a Qubes
> > > > > > > > > OS distribution. While I can try to update firmware on my=
 test system, I
> > > > > > > > > have no influence on what hardware users will use this ke=
rnel, and
> > > > > > > > > which firmware version they will use (and whether all the=
 vendors
> > > > > > > > > provide newer firmware at all). I cannot ship a kernel th=
at is known
> > > > > > > > > to break network on some devices.
> > > > > > > > >=20
> > > > > > > > > > > Also, you mentioned that on another system this issue=
 doesn't reproduce, do
> > > > > > > > > > > they have the same firmware version?
> > > > > > > > > >=20
> > > > > > > > > > The other one has also 1.1-4 firmware. And I re-checked=
, e1000e from
> > > > > > > > > > 6.14.2 works fine there.
> > > > > >=20
> > > > > > > > Thank you for your detailed feedback and for providing the =
requested
> > > > > > > > information.
> > > > > > > >=20
> > > > > > > > We have conducted extensive testing of this patch across mu=
ltiple systems
> > > > > > > > and have not observed any packet loss issues. Upon comparin=
g the mentioned
> > > > > > > > setups, we noted that while the LAN controller is similar, =
the CPU differs.
> > > > > > > > We believe that the issue may be related to transitions in =
the CPU's low
> > > > > > > > power states.
> > > > > > > >=20
> > > > > > > > Consequently, we kindly request that you disable the CPU lo=
w power state
> > > > > > > > transitions in the S0 system state and verify if the issue =
persists. You can
> > > > > > > > disable this in the kernel parameters on the command line w=
ith idle=3Dpoll.
> > > > > > > > Please note that this command is intended for debugging pur=
poses only, as it
> > > > > > > > may result in higher power consumption.
> > > > > > >=20
> > > > > > > I tried with idle=3Dpoll, and it didn't help, I still see a l=
ot of packet
> > > > > > > losses. But I can also confirm that idle=3Dpoll makes the sys=
tem use
> > > > > > > significantly more power (previously at 25-30W, with this opt=
ion stays
> > > > > > > at about 42W).
> > > > > > >=20
> > > > > > > Is there any other info I can provide, enable some debug feat=
ures or
> > > > > > > something?
> > > > > > >=20
> > > > > > > I see the problem is with receiving packets - in my simple pi=
ng test,
> > > > > > > the ping target sees all the echo requests (and respond to th=
em), but
> > > > > > > the responses aren't reaching ping back (and are not visible =
on tcpdump
> > > > > > > on the problematic system either).
> > > > > >=20
> > > > > > As the cause is still unclear, can the commit please be reverte=
d in the
> > > > > > master branch due adhere to Linux=E2=80=99 no-regression policy=
, so that it can be
> > > > > > reverted from the stable series?
> > > > > >=20
> > > > > > Marek, did you also test 6.15 release candidates?
> > > > >=20
> > > > > The last test I did was on 6.15-rc3. I can re-test on -rc5.
> > > >=20
> > > > Same with 6.15-rc5.
> > >=20
> > > And the same issue still applies to 6.16-rc2. FWIW Qubes OS kernel has
> > > this buggy patch revered and nobody complained (contrary to the versi=
on
> > > with the patch included). Should I submit the revert patch?
>=20
> It is not a good idea to revert this patch as most of the systems will
> encounter the original issues (PHY access and packet loss). The reason I
> first introduced this patch was because big vendors reported the packet l=
oss
> issue. You can refer to the following sightings:
> https://answers.launchpad.net/ubuntu/+question/816003
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2066064
> https://bugzilla.kernel.org/show_bug.cgi?id=3D218869

It would be useful to have any of those links in the original commit...

> As an intermediate solution we can either use a privileged flag to make it
> configurable. I will share with you a patch that might fix the issue
> on your system that I would like you to try.

Yes, that patch works :)

> FYI, we are currently investigating a similar issue that seems to be due =
to
> a misconfiguration of the system firmware.

Can you share some details? I can forward the info to firmware
developers for this system (it's Dasharo - coreboot-based firmware).

--=20
Best Regards,
Marek Marczykowski-G=C3=B3recki
Invisible Things Lab

--vm5OGfsTLL6JBXBT
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhrpukzGPukRmQqkK24/THMrX1ywFAmhUI28ACgkQ24/THMrX
1ywBswf/axdjrt0YTe8yVedsXB0BdcGcvKydnbQDSnI3snpPrt37TBA6mWrSTDRL
V4iYeWjfNMn2kPGi2uRq7uzx/WRU/Fu/Uc/AAFD8sSQl4dw4fNUIIX/CZTmEcvH+
kTUGDOhO6NPUCryKOHqSx8M3nMuIc+dHeQt6NrXhJMsp9t8NkS8cijtT7XuEHajv
ESc7VynKZNzS5vG4Jx1FlCXh1b1P3cXAKsaV/7k5mEIkjxtph1w/2lOTczq4iFaD
QDR6cW563uPfgdJLnk8uzKnLCjWfAZyCVJhTjpXUUIBIkVMf2Z/lnAl1Nh41/FIo
T2AARajG/M4oB/SV7F4hu61RfJXv5g==
=bkS0
-----END PGP SIGNATURE-----

--vm5OGfsTLL6JBXBT--
