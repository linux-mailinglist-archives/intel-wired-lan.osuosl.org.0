Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A681ADEDF4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jun 2025 15:36:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA71040528;
	Wed, 18 Jun 2025 13:36:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nBJVtwB0QJNR; Wed, 18 Jun 2025 13:36:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7F2D40533
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750253772;
	bh=vz/7ulDQUN+PP0dM9GXUeJUIxa3j77kggycAnGY4Aws=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CTYRtkAxueWNb+Nhlt2dLQW/DjIOvk3f7Jci3H/uMiL1jqAzdw+aRxvTlddw1DCO6
	 JKEh5y7F7S/pdNoMKJ+P7MlGt8h6hCYJQZ0NbkeEkrpxQkWxn45w4LXoaxsXRFoUui
	 0dBOCMCAnKYUilIANFqlAsYecyOTXekzBxnGL8d/tPV8lp3JKyDSF68xbsWxtdQ2zR
	 IMuyN1VQt86SLdQGMeVvBdWhPYQ+8joda6WnNByygIbAQTjLS36FpB0NQV4l/BdooZ
	 fSwzX9xhg5o78Y/9oC+eK0Ak6Gzfw0RkRBZnqaJeC8SzJVe/lnqCRN56IyulXkSm+O
	 Y+6OL/GgorVXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7F2D40533;
	Wed, 18 Jun 2025 13:36:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 80AA4151
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 13:36:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6F187606D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 13:36:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YNf9SLZ3bWLK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 13:36:09 +0000 (UTC)
X-Greylist: delayed 432 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 18 Jun 2025 13:36:08 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EE669606B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE669606B6
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.168.172.144;
 helo=fout-a1-smtp.messagingengine.com;
 envelope-from=marmarek@invisiblethingslab.com; receiver=<UNKNOWN> 
Received: from fout-a1-smtp.messagingengine.com
 (fout-a1-smtp.messagingengine.com [103.168.172.144])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EE669606B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 13:36:08 +0000 (UTC)
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfout.phl.internal (Postfix) with ESMTP id 3C3EE13803E5;
 Wed, 18 Jun 2025 09:28:55 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Wed, 18 Jun 2025 09:28:55 -0400
X-ME-Sender: <xms:Fr9SaDXJus_9wzUBchy22L94tQaXiufEdKVnROeqHWYQeShz8rfzhA>
 <xme:Fr9SaLllH_4qsIi8S7lkt7IzPA12B7PwPZ9NER9vhxA7C43-hUIf7z4WwbLb0HVFs
 YV_GojJXvSTeg>
X-ME-Received: <xmr:Fr9SaPbdrpTw5w0TpLJytfxSIOg8_i3mFK54MVTuFqKyrsBept5evnej6pthMxauXbyJo1JCd-lNSFhmDj_k_GDtE2hEvlN1nu4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgddvjeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesghdtreertddtjeen
 ucfhrhhomhepofgrrhgvkhcuofgrrhgtiiihkhhofihskhhiqdfikphrvggtkhhiuceomh
 grrhhmrghrvghksehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggft
 rfgrthhtvghrnhepgfduleetfeevhfefheeiteeliefhjefhleduveetteekveettddvge
 euteefjedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrrhhmrghrvghksehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomhdpnh
 gspghrtghpthhtohepledpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepphhmvghn
 iigvlhesmhholhhgvghnrdhmphhgrdguvgdprhgtphhtthhopehvihhtrghlhidrlhhifh
 hshhhithhssehinhhtvghlrdgtohhmpdhrtghpthhtoheprghnthhhohhnhidrlhdrnhhg
 uhihvghnsehinhhtvghlrdgtohhmpdhrtghpthhtohepphhriigvmhihshhlrgifrdhkih
 htshiivghlsehinhhtvghlrdgtohhmpdhrtghpthhtohepnhgvthguvghvsehvghgvrhdr
 khgvrhhnvghlrdhorhhgpdhrtghpthhtohepihhnthgvlhdqfihirhgvugdqlhgrnheslh
 hishhtshdrohhsuhhoshhlrdhorhhgpdhrtghpthhtoheprhgvghhrvghsshhiohhnshes
 lhhishhtshdrlhhinhhugidruggvvhdprhgtphhtthhopehsthgrsghlvgesvhhgvghrrd
 hkvghrnhgvlhdrohhrghdprhgtphhtthhopehsrghshhgrlheskhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:Fr9SaOXxiqGZJ6PRaIa1vVEGuUGYlV8waY0PKFMz6vUCtVlRJMMQZA>
 <xmx:Fr9SaNmA3G7BgKOD7Z-LCPHmL8e5C1fA3zSKLINjbABD4bobzBU2OQ>
 <xmx:Fr9SaLdumMaeA8tTEHRt0xFh8RLLLD6U7Ae96pcY-B2EBn2cB_M3hw>
 <xmx:Fr9SaHEfsbeM9YCETFAke0FdKOpdgWawjzDq4svvZe4ZsdNf6LSutg>
 <xmx:F79SaEJ90y1IT8yN5gw3royZ04hOBwZRf1UdlaDLIYQjXoAz976a7W8A>
Feedback-ID: i1568416f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 18 Jun 2025 09:28:53 -0400 (EDT)
Date: Wed, 18 Jun 2025 15:28:51 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 regressions@lists.linux.dev, stable@vger.kernel.org,
 Sasha Levin <sashal@kernel.org>
Message-ID: <aFK_ExmGqmi-oQby@mail-itl>
References: <b5d72f51-3cd0-aeca-60af-41a20ad59cd5@intel.com>
 <Z_-l2q9ZhszFxiqA@mail-itl>
 <d37a7c9e-7b3f-afc2-b010-e9785f39a785@intel.com>
 <aAZF0JUKCF0UvfF6@mail-itl> <aAZH7fpaGf7hvX6T@mail-itl>
 <e0034a96-e285-98c8-b526-fb167747aedc@intel.com>
 <aB0zLQawNrImVqPE@mail-itl>
 <c918d4f5-ee53-4f64-b152-cea0f6d99c4f@molgen.mpg.de>
 <aB0-JLSDT03fosST@mail-itl> <aB1JnJG_CH5vxAsw@mail-itl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="iUL4KGRviabJX8Lu"
Content-Disposition: inline
In-Reply-To: <aB1JnJG_CH5vxAsw@mail-itl>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 invisiblethingslab.com; h=cc:cc:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1750253335;
 x=1750339735; bh=vz/7ulDQUN+PP0dM9GXUeJUIxa3j77kggycAnGY4Aws=; b=
 WIAuXkm9l14HnRsq+a1xjXC9OQMw0cStyCOO0VyO1kntZf+QvA1RXHQEE+5D336a
 +FH+YijbW8zZS4F7C21Au630CUB27tUWo6QmQw3SCr+JZkxqDfYnwUfTNTTjU7q/
 xIBAdGnSip0Rk3i45TIkQQHJtcXhpvFC1fUriosNzfqBUCsJSOze5nWFNaaH0bG1
 iynaonWX6LxjIw6b7rqiYbop6VSdrXc+8xjE+ihWLE6I1i/4QBP+lOMJ+qhyL3KP
 N4/jMjnRSkRDk3+Fs0CcW5yfE3tFCsbeVi3/daCSVd3pCiDv1mk4FzHjDhBDnJnw
 MqFsPf/TGHsKjbzMC/nvRQ==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1750253335; x=1750339735; bh=vz/7ulDQUN+PP0dM9GXUeJUIxa3j77kggyc
 AnGY4Aws=; b=Sd9kZIkwjLSpU63LKWOqonj0DhUPRtv3KFnyftCDFFHhMhRnB5C
 YSpZKF/nvENe/HtM43I9NLi+UBlL8n7vidU1rxwSqyMNFUaqHKGDLlnP2RWxDTFV
 VXUXxOzsNXTkpzIrniCXy8LIbPGL1LHLoVKwn7dB91bN1dCAac7iiRrEvqemVZdv
 eREyXRdZS68rstll5G3p037yKeR6UfDVzddhhJnzL1pci2jbO4PcvAHcTE67SPZJ
 tUORupVgtDItOelNRBA/8QAE/mgrCxjFbQXvVWE7gS5IL3HvgXGDwG2YJIyi4Yj7
 j346176r/cBIF7229PSGdtskqQpK7TO7lQQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=invisiblethingslab.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=invisiblethingslab.com
 header.i=@invisiblethingslab.com header.a=rsa-sha256 header.s=fm1
 header.b=WIAuXkm9; 
 dkim=pass (2048-bit key,
 unprotected) header.d=messagingengine.com header.i=@messagingengine.com
 header.a=rsa-sha256 header.s=fm1 header.b=Sd9kZIkw
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


--iUL4KGRviabJX8Lu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 18 Jun 2025 15:28:51 +0200
From: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>,
	Tony Nguyen <anthony.l.nguyen@intel.com>,
	Przemek Kitszel <przemyslaw.kitszel@intel.com>,
	netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
	regressions@lists.linux.dev, stable@vger.kernel.org,
	Sasha Levin <sashal@kernel.org>
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e heavy packet loss on
 Meteor Lake - 6.14.2

On Fri, May 09, 2025 at 02:17:32AM +0200, Marek Marczykowski-G=C3=B3recki w=
rote:
> On Fri, May 09, 2025 at 01:28:36AM +0200, Marek Marczykowski-G=C3=B3recki=
 wrote:
> > On Fri, May 09, 2025 at 01:13:28AM +0200, Paul Menzel wrote:
> > > Dear Marek, dear Vitaly,
> > >=20
> > >=20
> > > Am 09.05.25 um 00:41 schrieb Marek Marczykowski-G=C3=B3recki:
> > > > On Thu, May 08, 2025 at 09:26:18AM +0300, Lifshits, Vitaly
> > > > > On 4/21/2025 4:28 PM, Marek Marczykowski-G=C3=B3recki wrote:
> > > > > > On Mon, Apr 21, 2025 at 03:19:12PM +0200, Marek Marczykowski-G=
=C3=B3recki wrote:
> > > > > > > On Mon, Apr 21, 2025 at 03:44:02PM +0300, Lifshits, Vitaly wr=
ote:
> > > > > > > >=20
> > > > > > > >=20
> > > > > > > > On 4/16/2025 3:43 PM, Marek Marczykowski-G=C3=B3recki wrote:
> > > > > > > > > On Wed, Apr 16, 2025 at 03:09:39PM +0300, Lifshits, Vital=
y wrote:
> > > > > > > > > > Can you please also share the output of ethtool -i? I w=
ould like to know the
> > > > > > > > > > NVM version that you have on your device.
> > > > > > > > >=20
> > > > > > > > > driver: e1000e
> > > > > > > > > version: 6.14.1+
> > > > > > > > > firmware-version: 1.1-4
> > > > > > > > > expansion-rom-version:
> > > > > > > > > bus-info: 0000:00:1f.6
> > > > > > > > > supports-statistics: yes
> > > > > > > > > supports-test: yes
> > > > > > > > > supports-eeprom-access: yes
> > > > > > > > > supports-register-dump: yes
> > > > > > > > > supports-priv-flags: yes
> > > > > > > > >=20
> > > > > > > >=20
> > > > > > > > Your firmware version is not the latest, can you check with=
 the board
> > > > > > > > manufacturer if there is a BIOS update to your system?
> > > > > > >=20
> > > > > > > I can check, but still, it's a regression in the Linux driver=
 - old
> > > > > > > kernel did work perfectly well on this hw. Maybe new driver t=
ries to use
> > > > > > > some feature that is missing (or broken) in the old firmware?
> > > > > >=20
> > > > > > A little bit of context: I'm maintaining the kernel package for=
 a Qubes
> > > > > > OS distribution. While I can try to update firmware on my test =
system, I
> > > > > > have no influence on what hardware users will use this kernel, =
and
> > > > > > which firmware version they will use (and whether all the vendo=
rs
> > > > > > provide newer firmware at all). I cannot ship a kernel that is =
known
> > > > > > to break network on some devices.
> > > > > >=20
> > > > > > > > Also, you mentioned that on another system this issue doesn=
't reproduce, do
> > > > > > > > they have the same firmware version?
> > > > > > >=20
> > > > > > > The other one has also 1.1-4 firmware. And I re-checked, e100=
0e from
> > > > > > > 6.14.2 works fine there.
> > >=20
> > > > > Thank you for your detailed feedback and for providing the reques=
ted
> > > > > information.
> > > > >=20
> > > > > We have conducted extensive testing of this patch across multiple=
 systems
> > > > > and have not observed any packet loss issues. Upon comparing the =
mentioned
> > > > > setups, we noted that while the LAN controller is similar, the CP=
U differs.
> > > > > We believe that the issue may be related to transitions in the CP=
U's low
> > > > > power states.
> > > > >=20
> > > > > Consequently, we kindly request that you disable the CPU low powe=
r state
> > > > > transitions in the S0 system state and verify if the issue persis=
ts. You can
> > > > > disable this in the kernel parameters on the command line with id=
le=3Dpoll.
> > > > > Please note that this command is intended for debugging purposes =
only, as it
> > > > > may result in higher power consumption.
> > > >=20
> > > > I tried with idle=3Dpoll, and it didn't help, I still see a lot of =
packet
> > > > losses. But I can also confirm that idle=3Dpoll makes the system use
> > > > significantly more power (previously at 25-30W, with this option st=
ays
> > > > at about 42W).
> > > >=20
> > > > Is there any other info I can provide, enable some debug features or
> > > > something?
> > > >=20
> > > > I see the problem is with receiving packets - in my simple ping tes=
t,
> > > > the ping target sees all the echo requests (and respond to them), b=
ut
> > > > the responses aren't reaching ping back (and are not visible on tcp=
dump
> > > > on the problematic system either).
> > >=20
> > > As the cause is still unclear, can the commit please be reverted in t=
he
> > > master branch due adhere to Linux=E2=80=99 no-regression policy, so t=
hat it can be
> > > reverted from the stable series?
> > >=20
> > > Marek, did you also test 6.15 release candidates?
> >=20
> > The last test I did was on 6.15-rc3. I can re-test on -rc5.
>=20
> Same with 6.15-rc5.

And the same issue still applies to 6.16-rc2. FWIW Qubes OS kernel has
this buggy patch revered and nobody complained (contrary to the version
with the patch included). Should I submit the revert patch?

--=20
Best Regards,
Marek Marczykowski-G=C3=B3recki
Invisible Things Lab

--iUL4KGRviabJX8Lu
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhrpukzGPukRmQqkK24/THMrX1ywFAmhSvxMACgkQ24/THMrX
1yyXAQf+K53U8Y6jWL6iyqumhg77CPbzn0qaQrxtA2sKrbY+GBzdBG3ptbzs1bY0
T5YlBl9fiGCHMqAO1H/BgQnbHY7oRk2jMgR10m52fMWE0pnsHPcHxVi2ChLvrpfx
UdYSbRHZpEDwVZNfQkAI0ppKGF/It+BtIjD9xWeLqOiezEr6GmT2Z1uvBywbwq4m
AbK3ZFzvSHIEUyVQZMXopcGwsAzJWL19/zPJOLLXDIMhUy9mKvpNR7/MjivwuuT4
Y0oy6tAuqGLJv3m0oIIByL7lAc/2oq0TizFTqOGnvGMJYALdXiA2QpKNZSc2MT8t
NUXAGDW3WOntp2X+TvgJW4+pfqn8Rw==
=MhTN
-----END PGP SIGNATURE-----

--iUL4KGRviabJX8Lu--
