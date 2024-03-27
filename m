Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5216888E7EB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 16:09:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AA2C8131F;
	Wed, 27 Mar 2024 15:08:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qm0ojQeo1g0W; Wed, 27 Mar 2024 15:08:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CBD4D8139F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711552136;
	bh=FGUoqKxAQrqnoBrdwR+KD2Oip1GwaKOaioEDRMyB75o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sGleH7hhFzBsLSIcHzjWtuAaMcS4X9bZSJJ2Hww9E/YvtmZnElJeFHj77tKn5ZV7x
	 qcrl0BX4HWNvdUp2V9KKh8J7cyOQIHxpR4IzXva2VGINaVmgTfhA8czPSO2u96MzT8
	 6dgLm9fYVk6CUgbJyuylSt3DM7yjzPo/W9zj0LTOKi5tgEEwQPhPGmmyY8GcixAidc
	 3OjED7FFu+UmZYkTPMempH9Ea7ELzbqGza0FFlw3Yf5NKhWzxltTkuCJSjO6bUEVlV
	 BdLwONUfQFTg3neynP9G/JY2/Sh0UcZT4wHWCMP9s9y9UOgVdsaaAWxhdivIqsaYRx
	 6HwVdiTmErFfg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBD4D8139F;
	Wed, 27 Mar 2024 15:08:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A17E1BF407
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 11:26:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6614260B63
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 11:26:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GD4jdnNVbc0y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 11:26:09 +0000 (UTC)
X-Greylist: delayed 303 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 27 Mar 2024 11:26:08 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EED4F6082A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EED4F6082A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.64.228;
 helo=mta-64-228.siemens.flowmailer.net;
 envelope-from=fm-68982-20240327112102a7df1fc80ac0eb92ac-t60bk1@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-64-228.siemens.flowmailer.net
 (mta-64-228.siemens.flowmailer.net [185.136.64.228])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EED4F6082A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 11:26:08 +0000 (UTC)
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id
 20240327112102a7df1fc80ac0eb92ac
 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 12:21:02 +0100
Message-ID: <ab114fcc84c50723bb88d40ccbbeedf7b48dbe0e.camel@siemens.com>
From: Florian Bezdeka <florian.bezdeka@siemens.com>
To: "Song, Yoong Siang" <yoong.siang.song@intel.com>, Kurt Kanzenbach
 <kurt@linutronix.de>, "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, Alexei Starovoitov <ast@kernel.org>, Daniel
 Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev
 <sdf@google.com>, "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
Date: Wed, 27 Mar 2024 12:21:01 +0100
In-Reply-To: <PH0PR11MB583028B2023E1E809B45B51DD8352@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <20240325020928.1987947-1-yoong.siang.song@intel.com>
 <d2623ac0f1cb07a23976416cdcf9eee1986747b0.camel@siemens.com>
 <87h6gtb0p0.fsf@kurt.kurt.home>
 <PH0PR11MB583028B2023E1E809B45B51DD8352@PH0PR11MB5830.namprd11.prod.outlook.com>
Autocrypt: =?US-ASCII?Q?addr=3Dflorian.bezdeka@siemen?=
 =?US-ASCII?Q?s.com;_prefer-encrypt=3Dmutual?=
 =?US-ASCII?Q?;_keydata=3DmQENBFwsf8QBCAC2f4AQWu92LZC4bKyUYRxWIpWqGz790s?=
 =?US-ASCII?Q?pcYkXO7M8kfea4iC8qMxv2hT4HT0LTncRP6WiovVN2PeoOBfN5BSa5z?=
 =?US-ASCII?Q?LIrZGVXh7KmbdKhwhVU+ynoTq9G5uaO2Kos7Vv7nNCuatIq8tSNILuoB?=
 =?US-ASCII?Q?DFTAZnJW3y1V7YOwhDCPl5gbLSYqUY3OE0yksbtCcVI5istT4ED6mjQ?=
 =?US-ASCII?Q?9W+3uH1LrgFeEF0oxTjrEPxO5ZYATz0f/TYC8WiM0sMrV+n0eMDntlzA?=
 =?US-ASCII?Q?63D6lcRi5mNp2jPsJkq3tbWqyCrAe1sKPVJB44ekFwCk0kDIuhR13Q3R?=
 =?US-ASCII?Q?HE4Or/9sznhMUQjYueWXvTZfzH/VsQJHABEBAAG0LUZsb3JpYW4gQmV6?=
 =?US-ASCII?Q?ZGVrYSA8Zmxvcmlhbi5iZXpkZWthQHNpZW1lbnMuY29tPokBVAQTAQg?=
 =?US-ASCII?Q?APhYhBAzL4P3jiTHdthsq4cj0O1fnOEBVBQJcLH/FAhsDBQkB4TOABQs?=
 =?US-ASCII?Q?JCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEMj0O1fnOEBVc6YIAJ8oO4x?=
 =?US-ASCII?Q?TjOCpjxaS8XQE6VW50HE9I6ShbQVWUEGhF4qzJaACTQDjdg/aio7qNRa?=
 =?US-ASCII?Q?mnAy83Hy9sAxKVhXs+1R1fstN+JO8zgD3tJspucUkCiXlYu+Qcv2d6C?=
 =?US-ASCII?Q?ostv+h4nv8fkSoeLfsQu3GJt6W0RN7t+8H/9fUMXyuB8GWo4bhaZcti6?=
 =?US-ASCII?Q?78CotGLs6UGZpYEGiAMto8+9zVO/tdY1BkREM6bCVeQ9FnnpTRQy/tU5?=
 =?US-ASCII?Q?xemMWJI64UUP92TUIbQ3TZKAz4iG/Mle+YjiHBGrJM7TxjE3sDg5J2Fa?=
 =?US-ASCII?Q?HX4wmZPKGdB6wANKupf6HMMt2y7gduVmMKzgb8PDMLPZwWBSvjELQqz?=
 =?US-ASCII?Q?hiZAQ0EYLSqZwEIAIR4HMTQC4F4YxatIl6MIDY03zD4M3ZQpgyQ6QFL9?=
 =?US-ASCII?Q?Dq0I+PGc7A6z5rsGl76+D8pDFSN2BBJiLLlQadxKc3ZyTTlRp4bc=09bf?=
 =?US-ASCII?Q?FZRmsAXwVfLtBauXxGo9pkyhk8Vcjb2EJm6XR8PH99buGOXlFfTLsmeA?=
 =?US-ASCII?Q?ji/F4jU3qlUnwZMBvHZwRSFqOGdwKPMvW3FppfmREQ0o4xJ4b/bxGXx?=
 =?US-ASCII?Q?ko21uyR/S5rEJx6X8Ukw95h3JinXHx/g2cjbKHrWBDKoqtX9IZCamDny?=
 =?US-ASCII?Q?R+sfLWQbOKOrLNYLwLAQwOTVlZWTgue10G1q6Zi0r8RQ2T1Uy+ZLYagv?=
 =?US-ASCII?Q?Cbzp/lT7p3mv3ba68llX896c0AEQEAAbQ/QmV6ZGVrYSwgRmxvcmlhbj?=
 =?US-ASCII?Q?sgQmV6ZGVrYSBGbG9yaWFuIDxmbG9yaWFuLmJlemRla2FAc2llbWVuc?=
 =?US-ASCII?Q?y5jb20+iQEcBBABCAAGBQJgtKpnAAoJEEoHyE9rG1dPpJYH+gPnqpu7h?=
 =?US-ASCII?Q?4fsWOxco38e74MsazoUdfndTYP5tgaYTVE51ZhOZBl+4jYaywsmmFm9g?=
 =?US-ASCII?Q?6N4Tw3GiMEDB4YU1X7gQZ60fDKpYL5SnCu5qZirJ4RCV4LDA0789ir+6?=
 =?US-ASCII?Q?8/zfwXBTV5QoMH0+MkXB4BL+Km3f7X/GdN5oRoItAyKDBcEfGJo6afT?=
 =?US-ASCII?Q?PtcUdI9n7ExCSfJwb0SBvvkvUsdNppFDGOOHSioINbEHBs2VUvE43toM?=
 =?US-ASCII?Q?4mPLfhFIAtDcn5Byt80/kotU8v3Iyf86NYCa+0h77xTsKHcCUqe8Rvow?=
 =?US-ASCII?Q?bCIbig9GGbbd54TasfqQQOiAkn/WeGl33+UIVX1Q8zo7eyMJHzLJQ3I=3D?=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-68982:519-21489:flowmailer
X-Mailman-Approved-At: Wed, 27 Mar 2024 15:08:51 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm1; 
 d=siemens.com; i=florian.bezdeka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=FGUoqKxAQrqnoBrdwR+KD2Oip1GwaKOaioEDRMyB75o=;
 b=CGUw99V0HjizVNE3UApeXPD9+uHHhXmsyZEYTUgE0MzTD4w1Ozpmo4TFQYF8JQH0iggT0x
 QFWgSKmbprLsTPXnbQNXgj8wqlD6W8TbXgIU71ZoghtuBRT1gnSqTZW9Dee668Vuhvc6h0ls
 wzj5DDPanluAH3AB7DEsFcAseISXY=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=siemens.com header.i=florian.bezdeka@siemens.com
 header.a=rsa-sha256 header.s=fm1 header.b=CGUw99V0
Subject: Re: [Intel-wired-lan] [xdp-hints] Re: [PATCH iwl-next,
 v4 1/1] igc: Add Tx hardware timestamp request for AF_XDP zero-copy
 packet
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2024-03-26 at 14:55 +0000, Song, Yoong Siang wrote:
> On Tuesday, March 26, 2024 9:08 PM, Kurt Kanzenbach <kurt@linutronix.de> =
wrote:
> > Hi Florian,
> >=20
> > On Tue Mar 26 2024, Florian Bezdeka wrote:
> > > On Mon, 2024-03-25 at 10:09 +0800, Song Yoong Siang wrote:
> > > > This patch adds support to per-packet Tx hardware timestamp request=
 to
> > > > AF_XDP zero-copy packet via XDP Tx metadata framework. Please note =
that
> > > > user needs to enable Tx HW timestamp capability via igc_ioctl() wit=
h
> > > > SIOCSHWTSTAMP cmd before sending xsk Tx hardware timestamp request.
> > > >=20
> > > > Same as implementation in RX timestamp XDP hints kfunc metadata, Ti=
mer 0
> > > > (adjustable clock) is used in xsk Tx hardware timestamp. i225/i226 =
have
> > > > four sets of timestamping registers. *skb and *xsk_tx_buffer pointe=
rs
> > > > are used to indicate whether the timestamping register is already o=
ccupied.
> > >=20
> > > Let me make sure that I fully understand that: In my own words:
> > >=20
> > > With that applied I'm able to get the point in time from the device
> > > when a specific frame made it to the wire. I have to enable that
> > > functionality using the mentioned ioctl() call first, and then check
> > > the meta area (located in the umem right before the frame payload)
> > > while consuming the completion queue/ring. Correct?
>=20
> Hi Florian,
>=20
> Yes, you are right. But before you pass the frame to driver, make sure
> you request Tx metadata hardware timestamp feature by setting
> XDP_TXMD_FLAGS_TIMESTAMP flag.
> You can refer to tools/testing/selftests/bpf/xdp_hw_metadata.c
> on how to do it.=20

Got it. Thanks!

>=20
> > >=20
> > > If so, we now have a feedback channel for meta information for/from T=
X.
> > > Are there any plans - or would it be possible - to support Earliest
> > > TxTime First (NET_SCHED_ETF) QDisc based on that channel? In the past
> > > we had the problem that we we're missing a feedback channel to
> > > communicate back invalid lunch times.
> >=20
> > Just asking: How would that work? AFAIK XDP bypasses the Qdisc
> > layer. Currently invalid Launch Times are accounted in the ETF Qdisc
> > itself. Does that mean every driver has to take care of it?
> >=20
> > Thanks,
> > Kurt
>=20
> Florian & Kurt,
>=20
> Yes, me and Stanislav are trying to add Earliest TxTime First / Launch Ti=
me to the framework.
> Please refer to [1] for the patchset. The metadata framework will just pa=
ss the
> Launch time value to driver, and driver need to handle the rest.
> In the patchset, I am enabling it on stmmac driver only, but we need more=
 drivers
> to check whether the design is feasible for different drivers, cause each=
 driver is
> having their own limitation on launch time. Therefore, after this tx hwts=
 patch accepted,
> I will try to enable launch time on igc driver, and submit new version.=
=20

Nice to hear! Keep me in the loop and let me know if I could support
somehow.

>=20
> Kurt is right that current metadata framework is lacking a way to feedbac=
k whether
> the launch time is invalid or not. Maybe we can try to enable launch time=
 without feedback,
> then discuss about the status report design.

In case the launch time is invalid - couldn't we simply skip the frame
and "forward" it back to the application (completion queue/ring) after
adjusting some meta-information (like the TX timestamps in this patch)
telling the application what happened?

Thanks a lot!
Florian

>=20
> [1] https://patchwork.kernel.org/project/netdevbpf/cover/20231203165129.1=
740512-1-yoong.siang.song@intel.com/
>=20
> Thanks & Regards
> Siang

