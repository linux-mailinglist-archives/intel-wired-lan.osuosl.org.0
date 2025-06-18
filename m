Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5611BADF0A4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jun 2025 17:04:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5764080DE2;
	Wed, 18 Jun 2025 15:04:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mr0oKd_J4b3g; Wed, 18 Jun 2025 15:04:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4EF2480DE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750259072;
	bh=U1Adh7LXT/5bB/srNjs/Q74DNy0BP80+21pefP89i9Y=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P0qRiNeO7dDKnfUCjdP3fysXdpbXFfc6ckiib8zrU2EZJtY2+5QlTtJpC9ro6pQi7
	 rcltSi6KzqCn+b6+QuRfmGv5c6KJhqvxOWoil0fL/Pj1PaMAzbN9/0TJR1E3ZoRoWO
	 PGkH96AxjZ7LMVJNSD1OZXSw7BZ9SRD1wIJaIJyFEQrBVENPebma+CHEQNwe5MCYYW
	 HdymGGRTu4h7qmIZpXYiaWhdTpbKrBuHLGW/W+QBfskIXMvpbf4bpkJbx9WnPHfr1I
	 +WJ4FWNuo9udaFDPB56R/JTToVxUdu2ewAPsKBLVJP5frQj794imWIXpJHlgQhJzii
	 TGtFiKhTu3fTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EF2480DE5;
	Wed, 18 Jun 2025 15:04:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 830E6151
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 13:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7FDA4607B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 13:47:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7PQkNHsImJ-3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 13:47:46 +0000 (UTC)
X-Greylist: delayed 334 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 18 Jun 2025 13:47:45 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0E303606F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E303606F2
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.126.133;
 helo=mout.kundenserver.de; envelope-from=christian@heusel.eu;
 receiver=<UNKNOWN> 
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0E303606F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 13:47:45 +0000 (UTC)
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from localhost ([80.187.65.175]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MGiAs-1uVmnQ0g2E-0065kb; Wed, 18 Jun 2025 15:41:39 +0200
Date: Wed, 18 Jun 2025 15:41:34 +0200
From: Christian Heusel <christian@heusel.eu>
To: Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?=
 <marmarek@invisiblethingslab.com>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, 
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, 
 regressions@lists.linux.dev, stable@vger.kernel.org,
 Sasha Levin <sashal@kernel.org>
Message-ID: <87584d6f-5a31-47aa-bba3-1aadfc18fbe6@heusel.eu>
References: <Z_-l2q9ZhszFxiqA@mail-itl>
 <d37a7c9e-7b3f-afc2-b010-e9785f39a785@intel.com>
 <aAZF0JUKCF0UvfF6@mail-itl> <aAZH7fpaGf7hvX6T@mail-itl>
 <e0034a96-e285-98c8-b526-fb167747aedc@intel.com>
 <aB0zLQawNrImVqPE@mail-itl>
 <c918d4f5-ee53-4f64-b152-cea0f6d99c4f@molgen.mpg.de>
 <aB0-JLSDT03fosST@mail-itl> <aB1JnJG_CH5vxAsw@mail-itl>
 <aFK_ExmGqmi-oQby@mail-itl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="f5u6kpjicn4mlvgm"
Content-Disposition: inline
In-Reply-To: <aFK_ExmGqmi-oQby@mail-itl>
X-Provags-ID: V03:K1:NaeQa51SxlkdUa4Lvc/txxkbY+/R1JiRw6uUYhaNd+hzPWDnQwV
 AiLpOv6EsaDvBmaelfJtX2bnKTo7cgmxaxHdeQNcBVSsN/Cotdsi+Q5ZelPOMGv4QAQYdhK
 1nJdpGE4S5gkDp5jXBQTH8Lq5zPhT9GHSGGyBb4lpguI3jCReDXcDA28SLnvKzyexjVUTsT
 gFGcMukN9iX/CoybcwqPA==
UI-OutboundReport: notjunk:1;M01:P0:QQ9B5nVcxWc=;JAuDoPeLkzFpoxVs8gAJM+ZW01D
 yfZg8aSQRTTOvwnURLkNjxoInlXR06iGzSQBuT9cQ/GOjKlLBDlFqzQynhG9k4ORUDqhlv2H5
 HOwEwF97TTL4O3eOJsqxOTYaNnc4cVdAWKwAWqqN56KAysViCTjeF72UktLgpDjkOVKfFB9it
 nFQttLqdPEFfa5H84LUyc9LoQSXD+RRpBKknmjdTzig9nNj/a6SWDtYkQ58poeb5JPQPLYV8V
 /t5jSr9o6jyXZyDetY3EVCEgOyvj5xDJM0nItAS0t3fcwHucAhTvlz7LJXIandEfDXu8AFqZL
 Pr9PB35Bsm19HzgHGgG79BB1KYIzBcpCKyWb+UB7/uKOpOukQIkyN+zuSwgV1L6Ebu4mQpJVH
 UWDpPCLdKg9yi/jjB8BzrW0IyxXbLq0s48J0MlA5HTPkyYywatxcMccMuGLVEwE0DpEPygz/E
 AwwZy4QP0xDhGDzw4HbYRvk/tMPxDvnTnC5p7KcvE3UJa/rW2Me0fORtQLPC65B8QauX6rnZm
 Yk/dQaYSyNLp/XHUu10jqFblOCf4gyLDoHvUKYlFcFuciH+YwuC58JVRsPnFD2DJbJFfMGoMb
 sv/g75X/MFnM1yVXR+ba8ad6rfS6fsV5KjB4CeoScZy0o6A++XQ8j05T5jGpQRkOUSXfgA3IS
 HCix8kuZYTpQEt3mx7HO3WSvuH+S9w7G2Nu7WnzXEVil/vIQcXKT30LPFIPCsSCowEhX/ByMQ
 vsTRniuso1buO1s96nGNEFzlKbLXGjEQ3UJInrz34V2wluXXO/x4GJU7dmNK3TWS7vmgJB7UI
 v4SNVC8b3TJ+G3VfUEF7z810h4zVBikOFw4/VA+H5Xskie9QrN/7S2vleaxmLLfo96AxgJ68U
 MQBDRSUp1luxKC/lG2r9rDTS3qrN1pL5p9k5R3GfbCFaiOyk8ms+46Xw2jhPUbJS73lhvOJyz
 6elulEcFhQvewqjipuRzih/ZSjWsUiGR3k5iQOHru5NnyNK0KoF7RlTpiTJ3CnmKsZQCInxN6
 BswlAA3nOVRsKsuHnGkvXYsgFYsXi122449BrzHug4Wzt2W3ef8o4+v3eoZvyhREnGd/PvGly
 cP1N6s4RynadUehLbBxEeVrmM2vLWKJ6rp3xWEcVpPbdiUPODXqmOP6cUcdxsK2DMAELKr6NX
 8PSlkrEKo2nhpXyxKFgszrJTGrdtpcVcQOTjQwVtc6VZBUlg1Zxtv7hTlyPjH79ffadGvbiDf
 DLMZ9MAPp0V63meJhF6BY/xQF52cv0uHBHqKDFks75aOFCznJ8BtSaxQDViuDrqLMjL7GRgJb
 bwcZmlF47Mepst5CkGQXU3fyf56sNXe9xiWxS/0/F3JCj+rZ4FN7M1VR55K8bn+nwA3FymHM2
 8Sk8nSBERJIyddIw1U43tIvUJG2nQrie/Ep84=
X-Mailman-Approved-At: Wed, 18 Jun 2025 15:04:29 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=heusel.eu; 
 s=s1-ionos; t=1750254464; x=1750859264; i=christian@heusel.eu;
 bh=U1Adh7LXT/5bB/srNjs/Q74DNy0BP80+21pefP89i9Y=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:Message-ID:References:
 MIME-Version:Content-Type:In-Reply-To:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=WHPMBvscfwnnckIIWQ5swsLR0YWJeMt1HlTakl0+oNEuZ5b1sECmzzrXqK36Rxho
 IyyrbKREH1zid7VgwpByKxXQDC1WFwcE2JSU/hj/au86UbRhr4OoDW+gy8jxdErCJ
 8dLe7eRtVdiIiQSFubRmIFR+HLEK17HM/BsWIXsR+BqTqh2WZNwb4WAE/XraeJKRX
 hZ6MqOll5W70wXyXcxdcp54k/9omNuQKCAbRo54D+qxaRgYDs648mhHZiKkM2hNgM
 rnZY3g+hMR9/IgXg0uxVUYU6fCB8NuvisLumOBCzKSRKCPFanKpCmKjH9oBOvfGHw
 efZLKVoVTKDZT0UjSQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=heusel.eu
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=heusel.eu header.i=christian@heusel.eu
 header.a=rsa-sha256 header.s=s1-ionos header.b=WHPMBvsc
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


--f5u6kpjicn4mlvgm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e heavy packet loss on
 Meteor Lake - 6.14.2
MIME-Version: 1.0

On 25/06/18 03:28PM, Marek Marczykowski-G=C3=B3recki wrote:
> On Fri, May 09, 2025 at 02:17:32AM +0200, Marek Marczykowski-G=C3=B3recki=
 wrote:
> > On Fri, May 09, 2025 at 01:28:36AM +0200, Marek Marczykowski-G=C3=B3rec=
ki wrote:
> > > On Fri, May 09, 2025 at 01:13:28AM +0200, Paul Menzel wrote:
> > > > Dear Marek, dear Vitaly,
> > > >=20
> > > >=20
> > > > Am 09.05.25 um 00:41 schrieb Marek Marczykowski-G=C3=B3recki:
> > > > > On Thu, May 08, 2025 at 09:26:18AM +0300, Lifshits, Vitaly
> > > > > > On 4/21/2025 4:28 PM, Marek Marczykowski-G=C3=B3recki wrote:
> > > > > > > On Mon, Apr 21, 2025 at 03:19:12PM +0200, Marek Marczykowski-=
G=C3=B3recki wrote:
> > > > > > > > On Mon, Apr 21, 2025 at 03:44:02PM +0300, Lifshits, Vitaly =
wrote:
> > > > > > > > >=20
> > > > > > > > >=20
> > > > > > > > > On 4/16/2025 3:43 PM, Marek Marczykowski-G=C3=B3recki wro=
te:
> > > > > > > > > > On Wed, Apr 16, 2025 at 03:09:39PM +0300, Lifshits, Vit=
aly wrote:
> > > > > > > > > > > Can you please also share the output of ethtool -i? I=
 would like to know the
> > > > > > > > > > > NVM version that you have on your device.
> > > > > > > > > >=20
> > > > > > > > > > driver: e1000e
> > > > > > > > > > version: 6.14.1+
> > > > > > > > > > firmware-version: 1.1-4
> > > > > > > > > > expansion-rom-version:
> > > > > > > > > > bus-info: 0000:00:1f.6
> > > > > > > > > > supports-statistics: yes
> > > > > > > > > > supports-test: yes
> > > > > > > > > > supports-eeprom-access: yes
> > > > > > > > > > supports-register-dump: yes
> > > > > > > > > > supports-priv-flags: yes
> > > > > > > > > >=20
> > > > > > > > >=20
> > > > > > > > > Your firmware version is not the latest, can you check wi=
th the board
> > > > > > > > > manufacturer if there is a BIOS update to your system?
> > > > > > > >=20
> > > > > > > > I can check, but still, it's a regression in the Linux driv=
er - old
> > > > > > > > kernel did work perfectly well on this hw. Maybe new driver=
 tries to use
> > > > > > > > some feature that is missing (or broken) in the old firmwar=
e?
> > > > > > >=20
> > > > > > > A little bit of context: I'm maintaining the kernel package f=
or a Qubes
> > > > > > > OS distribution. While I can try to update firmware on my tes=
t system, I
> > > > > > > have no influence on what hardware users will use this kernel=
, and
> > > > > > > which firmware version they will use (and whether all the ven=
dors
> > > > > > > provide newer firmware at all). I cannot ship a kernel that i=
s known
> > > > > > > to break network on some devices.
> > > > > > >=20
> > > > > > > > > Also, you mentioned that on another system this issue doe=
sn't reproduce, do
> > > > > > > > > they have the same firmware version?
> > > > > > > >=20
> > > > > > > > The other one has also 1.1-4 firmware. And I re-checked, e1=
000e from
> > > > > > > > 6.14.2 works fine there.
> > > >=20
> > > > > > Thank you for your detailed feedback and for providing the requ=
ested
> > > > > > information.
> > > > > >=20
> > > > > > We have conducted extensive testing of this patch across multip=
le systems
> > > > > > and have not observed any packet loss issues. Upon comparing th=
e mentioned
> > > > > > setups, we noted that while the LAN controller is similar, the =
CPU differs.
> > > > > > We believe that the issue may be related to transitions in the =
CPU's low
> > > > > > power states.
> > > > > >=20
> > > > > > Consequently, we kindly request that you disable the CPU low po=
wer state
> > > > > > transitions in the S0 system state and verify if the issue pers=
ists. You can
> > > > > > disable this in the kernel parameters on the command line with =
idle=3Dpoll.
> > > > > > Please note that this command is intended for debugging purpose=
s only, as it
> > > > > > may result in higher power consumption.
> > > > >=20
> > > > > I tried with idle=3Dpoll, and it didn't help, I still see a lot o=
f packet
> > > > > losses. But I can also confirm that idle=3Dpoll makes the system =
use
> > > > > significantly more power (previously at 25-30W, with this option =
stays
> > > > > at about 42W).
> > > > >=20
> > > > > Is there any other info I can provide, enable some debug features=
 or
> > > > > something?
> > > > >=20
> > > > > I see the problem is with receiving packets - in my simple ping t=
est,
> > > > > the ping target sees all the echo requests (and respond to them),=
 but
> > > > > the responses aren't reaching ping back (and are not visible on t=
cpdump
> > > > > on the problematic system either).
> > > >=20
> > > > As the cause is still unclear, can the commit please be reverted in=
 the
> > > > master branch due adhere to Linux=E2=80=99 no-regression policy, so=
 that it can be
> > > > reverted from the stable series?
> > > >=20
> > > > Marek, did you also test 6.15 release candidates?
> > >=20
> > > The last test I did was on 6.15-rc3. I can re-test on -rc5.
> >=20
> > Same with 6.15-rc5.
>=20
> And the same issue still applies to 6.16-rc2. FWIW Qubes OS kernel has
> this buggy patch revered and nobody complained (contrary to the version
> with the patch included). Should I submit the revert patch?

Just submit a revert then =F0=9F=91=8D I have no authority here, but had go=
od
experience with just sending a revert patch in the past =F0=9F=A4=97

Cheers,
Chris

--f5u6kpjicn4mlvgm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEb3ea3iR6a4oPcswTwEfU8yi1JYUFAmhSwg4ACgkQwEfU8yi1
JYWccw/+K8uI558Nsi8UvcuVv0R4kgDY52VMb6rsW48vr5s6XE2PvdAngPESVbdH
6DHPqDSTl4aqXRMvpe7Ep3HEgYrCPiWUyM0po3CBJLvUiQ8xmhOQ1S5SEhiYZxaV
TAWWcJKMfuLdIJAbi8ZZi++gKP4U94+xm9lWWDQuGHJriebqWkQnNw6JgKCiYIuf
3ALKLYeooFUR5eBpWMwMXtBfU3L1RZBiBtV0JluC443SdI2fGpxQRLLdMZd9QLZH
mTSA8rTRldwCCm9HxxprbPM05EPjXhzAghRbWqlV0wFoCtUEOnErMK5HDT1heyiu
gcgWL+ZmG/zSp7gF1zyTS8aSrEX3Z87K1jeeNWpRn0G3q1SE7/PaFqbwHsAolb5v
zZmAZIDb6F6ZmzAMrsrIP77KsIYy9jSGPWq48za1ytznZB5uRBTDPAIC2HlZEG3m
DOgDryAfQn/DIhirE0Ao0EmWRLKdGa53cPBqTFoE9/N7CR1mhSK4bi/d0bbsnC7M
OT8IDgIO4z2MZhZJbo0oYPOUOeiyddcJhKoQZ0FetvfOtRuYugU993W4ZkBdm9vs
veRIy5m+cqu7jm7zO8f+5rqRviRPY8qzlLUMLHJUp7C+HPDVyVdyGDuqC2SHDiSr
VY0P6C7UiEbu9zZwMziLpRvBdRs67F6H50Uv3ifxGrs5yuL6Gh0=
=yH9B
-----END PGP SIGNATURE-----

--f5u6kpjicn4mlvgm--
