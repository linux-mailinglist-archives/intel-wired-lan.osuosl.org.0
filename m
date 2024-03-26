Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B05688C613
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 15:58:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4997540592;
	Tue, 26 Mar 2024 14:58:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XSqPfeHWeLwo; Tue, 26 Mar 2024 14:58:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D8E640558
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711465131;
	bh=2NnN3yr0wpdVoxDzh4ChyQUmMIKdzLGg6sxkzDgAI3o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VCXxMRD9zZMXFXJ7q4RyWRl4tksfEX9aIJnZ4O6Ck+TNHzo8AJmYBKNOr+QhT0UYG
	 GZPc0jfQ6eI3UIkcJVcB5fCaSG5DB1Sb/zEym8l8h8ksrzPhjHWNGmgMD7HqgaJ6p3
	 CpnuS+MzJAGiNBGPFAwtxVgDvF/171zyURcI4x/EGAUI2HNVQa5XKXb0kd34fMXQQq
	 SSwfGVSJnEI9KD51gLm36liCGR4tg9xQrwt8u48Ch1+H5GaW+crR1VqRstfeo1rty0
	 NuMlZ10zUbr6o8Yt5H4MStTMoo8L2xwusmK4jXTFUCAghnvo+WD8CFwadeHL2pGr11
	 UC7qwFnV6gPzg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D8E640558;
	Tue, 26 Mar 2024 14:58:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC31B1BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 09:03:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 95DF6407CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 09:03:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eJ8sXIU_i1eP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 09:03:14 +0000 (UTC)
X-Greylist: delayed 314 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 26 Mar 2024 09:03:12 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 00BF4407DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00BF4407DC
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.64.227;
 helo=mta-64-227.siemens.flowmailer.net;
 envelope-from=fm-68982-2024032608565655986cc1717746bf8d-8rrdfa@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-64-227.siemens.flowmailer.net
 (mta-64-227.siemens.flowmailer.net [185.136.64.227])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 00BF4407DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 09:03:12 +0000 (UTC)
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id
 2024032608565655986cc1717746bf8d
 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 09:57:51 +0100
Message-ID: <d2623ac0f1cb07a23976416cdcf9eee1986747b0.camel@siemens.com>
From: Florian Bezdeka <florian.bezdeka@siemens.com>
To: Song Yoong Siang <yoong.siang.song@intel.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, Alexei
 Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@google.com>, Vinicius
 Costa Gomes <vinicius.gomes@intel.com>, Kurt Kanzenbach
 <kurt@linutronix.de>, Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Tue, 26 Mar 2024 09:56:54 +0100
In-Reply-To: <20240325020928.1987947-1-yoong.siang.song@intel.com>
References: <20240325020928.1987947-1-yoong.siang.song@intel.com>
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
X-Mailman-Approved-At: Tue, 26 Mar 2024 14:58:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm1; 
 d=siemens.com; i=florian.bezdeka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=2NnN3yr0wpdVoxDzh4ChyQUmMIKdzLGg6sxkzDgAI3o=;
 b=ZnoEPez1s9mkret+84aiVoBbI7kPnBo2K4g9LdoGjJ6Vk+54YX25G3Z0y+4eJYiwYj9198
 nShsv9+TKBXTbNRidg9c/ePK/1HTATRNvXrX5F8nP9DbiWexkWFe2E3jYfd0oSnZt4QonXdX
 PS7EotffJHiFxuv+AOwqR675HZ0WQ=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=siemens.com header.i=florian.bezdeka@siemens.com
 header.a=rsa-sha256 header.s=fm1 header.b=ZnoEPez1
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, xdp-hints@xdp-project.net,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2024-03-25 at 10:09 +0800, Song Yoong Siang wrote:
> This patch adds support to per-packet Tx hardware timestamp request to
> AF_XDP zero-copy packet via XDP Tx metadata framework. Please note that
> user needs to enable Tx HW timestamp capability via igc_ioctl() with
> SIOCSHWTSTAMP cmd before sending xsk Tx hardware timestamp request.
>=20
> Same as implementation in RX timestamp XDP hints kfunc metadata, Timer 0
> (adjustable clock) is used in xsk Tx hardware timestamp. i225/i226 have
> four sets of timestamping registers. *skb and *xsk_tx_buffer pointers
> are used to indicate whether the timestamping register is already occupie=
d.

Let me make sure that I fully understand that: In my own words:

With that applied I'm able to get the point in time from the device
when a specific frame made it to the wire. I have to enable that
functionality using the mentioned ioctl() call first, and then check
the meta area (located in the umem right before the frame payload)
while consuming the completion queue/ring. Correct?

If so, we now have a feedback channel for meta information for/from TX.
Are there any plans - or would it be possible - to support Earliest
TxTime First (NET_SCHED_ETF) QDisc based on that channel? In the past
we had the problem that we we're missing a feedback channel to
communicate back invalid lunch times.
=20
>=20
> Furthermore, a boolean variable named xsk_pending_ts is used to hold the
> transmit completion until the tx hardware timestamp is ready. This is
> because, for i225/i226, the timestamp notification event comes some time
> after the transmit completion event. The driver will retrigger hardware i=
rq
> to clean the packet after retrieve the tx hardware timestamp.
>=20
> Besides, xsk_meta is added into struct igc_tx_timestamp_request as a hook
> to the metadata location of the transmit packet. When the Tx timestamp
> interrupt is fired, the interrupt handler will copy the value of Tx hwts
> into metadata location via xsk_tx_metadata_complete().
>=20
> This patch is tested with tools/testing/selftests/bpf/xdp_hw_metadata
> on Intel ADL-S platform. Below are the test steps and results.

