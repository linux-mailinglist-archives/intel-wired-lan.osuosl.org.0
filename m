Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCA4A1A8F1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 18:29:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B94BA4173B;
	Thu, 23 Jan 2025 17:29:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bjlx124au--e; Thu, 23 Jan 2025 17:29:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45BDE41779
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737653375;
	bh=oxINAJ0LeLqJ3M0qS3mB6DNG37C/XjqZ02n4XQg2+vE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L0+bjAkjMd7itm1ffUPF70XlZ+HOIIVKJ0UifY3CjMa2mljTcv6De6NVIIufRuGjm
	 MAmXHzyMMPaMx4ke21EkctZIV6QeC+4tFys0StpOVKtDyjoRUOUSYakMUcQ922JPOZ
	 SmJQCZeeQgoLp9Mw5GiNh+wfMmvAQ0QORAvN/4slWmG/IeaT/l4LJxXGbdX3UE6zv0
	 YNa1LEJojWlzZDpJIyxs1hw0UF3y5KEJlvOd73liCYQCqgQ5J+Mu73LRBFNZuy0UjO
	 MRiUKVA424XQ6y3RmS1zkZ8id9bmadLXZGqorwbjVQQsyMNjz5q9rYH+1DsFl9n0gh
	 4REcwe/uVNWVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45BDE41779;
	Thu, 23 Jan 2025 17:29:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E016FB88
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 17:29:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B803441627
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 17:29:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dfcgR7KQR204 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 17:29:32 +0000 (UTC)
X-Greylist: delayed 303 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 23 Jan 2025 17:29:30 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8DDB6415F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8DDB6415F1
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.64.228;
 helo=mta-64-228.siemens.flowmailer.net;
 envelope-from=fm-68982-202501231724231bdfdc0be2736eeed0-uumvsw@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-64-228.siemens.flowmailer.net
 (mta-64-228.siemens.flowmailer.net [185.136.64.228])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8DDB6415F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 17:29:30 +0000 (UTC)
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id
 202501231724231bdfdc0be2736eeed0
 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 18:24:24 +0100
Message-ID: <ea087229cc6f7953875fc69f1b73df1ae1ee9b72.camel@siemens.com>
From: Florian Bezdeka <florian.bezdeka@siemens.com>
To: "Song, Yoong Siang" <yoong.siang.song@intel.com>, "Bouska, Zdenek"
 <zdenek.bouska@siemens.com>, "David S . Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Willem de
 Bruijn <willemb@google.com>, Donald Hunter <donald.hunter@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Bjorn Topel <bjorn@kernel.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer
 <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, "Damato, Joe"
 <jdamato@fastly.com>, Stanislav Fomichev <sdf@fomichev.me>, Xuan Zhuo
 <xuanzhuo@linux.alibaba.com>, Mina Almasry <almasrymina@google.com>, Daniel
 Jurgens <danielj@nvidia.com>, Andrii Nakryiko <andrii@kernel.org>, Eduard
 Zingerman <eddyz87@gmail.com>, Mykola Lysenko <mykolal@fb.com>, Martin
 KaFai Lau <martin.lau@linux.dev>, Song Liu <song@kernel.org>, Yonghong Song
 <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Shuah Khan
 <shuah@kernel.org>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose
 Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, 
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "xdp-hints@xdp-project.net"
 <xdp-hints@xdp-project.net>
Date: Thu, 23 Jan 2025 18:24:22 +0100
In-Reply-To: <PH0PR11MB583095A2F12DA10D57781D18D8E02@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <20250116155350.555374-1-yoong.siang.song@intel.com>
 <20250116155350.555374-5-yoong.siang.song@intel.com>
 <AS1PR10MB5675499EE0ED3A579151D3D3EBE02@AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM>
 <PH0PR11MB583095A2F12DA10D57781D18D8E02@PH0PR11MB5830.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-68982:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm2; 
 d=siemens.com; i=florian.bezdeka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=oxINAJ0LeLqJ3M0qS3mB6DNG37C/XjqZ02n4XQg2+vE=;
 b=avfOWyEPThY0qZHFWBl2B3Waotz+8loLJ+mZUtGGItUwfJOUtG7FrfOs0qOKpl8WBbOxTJ
 hmxCiPBT8gqw2waOxbkfTxYZZHTxmmdmq4PuV6EuhYS6vXo67MhLp5hspGJKBF2pL9FC0+Qo
 MynnVI+uRPOsDiP0334hKKXlZ+L4Bf/rJn8iadkanOpnW1TPw4Y69HZ940bExo8i6vtnn/2C
 O0P4fqcEZTdD+oO2Fpdf1JfU18oZI2bdZ4VkBWvUV9rdG4Kw9NJ32KkkBu5OAE07aaDI1nwa
 Rry4DyQN0YMb5WgK/aYrOP/K5Kg61gheKSrhrhKKNf5XcktSigozEdDg==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=florian.bezdeka@siemens.com
 header.a=rsa-sha256 header.s=fm2 header.b=avfOWyEP
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 4/4] igc: Add launch time
 support to XDP ZC
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

Hi all,

On Thu, 2025-01-23 at 16:41 +0000, Song, Yoong Siang wrote:
> On Thursday, January 23, 2025 11:40 PM, Bouska, Zdenek <zdenek.bouska@sie=
mens.com> wrote:
> >=20
> > Hi Siang,
> >=20
> > I tested this patch series on 6.13 with Intel I226-LM (rev 04).
> >=20
> > I also applied patch "selftests/bpf: Actuate tx_metadata_len in xdp_hw_=
metadata" [1]
> > and "selftests/bpf: Enable Tx hwtstamp in xdp_hw_metadata" [2] so that =
TX timestamps
> > work.
> >=20
> > HW RX-timestamp was small (0.5956 instead of 1737373125.5956):
> >=20
> > HW RX-time:   595572448 (sec:0.5956) delta to User RX-time sec:17373731=
24.9873 (1737373124987318.750 usec)
> > XDP RX-time:   1737373125582798388 (sec:1737373125.5828) delta to User =
RX-time sec:0.0001 (92.733 usec)
> >=20
> > Igc's raw HW RX-timestamp in front of frame data was overwritten by BPF=
 program on
> > line 90 in tools/testing/selftests/bpf: meta->hint_valid =3D 0;
> >=20
> > "HW timestamp has been copied into local variable" comment is outdated =
on
> > line 2813 in drivers/net/ethernet/intel/igc/igc_main.c after
> > commit 069b142f5819 igc: Add support for PTP .getcyclesx64() [3].
> >=20
> > Workaround is to add unused data to xdp_meta struct:
> >=20
> > --- a/tools/testing/selftests/bpf/xdp_metadata.h
> > +++ b/tools/testing/selftests/bpf/xdp_metadata.h
> > @@ -49,4 +49,5 @@ struct xdp_meta {
> >                __s32 rx_vlan_tag_err;
> >        };
> >        enum xdp_meta_field hint_valid;
> > +       __u8 avoid_IGC_TS_HDR_LEN[16];
> > };
> >=20
>=20
> Hi Zdenek Bouska,=20
>=20
> Thanks for your help on testing this patch set.
> You are right, there is some issue with the Rx hw timestamp,
> I will submit the bug fix patch when the solution is finalized,
> but the fix will not be part of this launch time patch set.
> Until then, you can continue to use your WA.

I think there is no simple fix for that. That needs some discussion
around the "expectations" to the headroom / meta data area in front of
the actual packet data.

To be able to write generic BPF programs - generic in terms of "works
with all drivers" - the headroom is expected to be available for use
inside the BPF program.

I think that is true for most drivers / devices, but at least igc is
different in this regard. Devices deliver the RX timestamp in front of
the actual data while other devices deliver the meta information as
part of the RX descriptor.

For igc we get:

+----------+-----------------+-----+------+
| headroom | custom metadata |RX TS| data |
+----------+-----------------+-----+------+
           ^                       ^
           |                       |
 xdp_buff->data_meta        xdp_buff->data


The only information the application gets is a pointer to the start of
the data section. For calculating / finding the beginning of the meta
data area the application has to go backward.

That is exactly how it is currently implemented in the selftest.

Problem: By writing into the calculated meta data area the BPF program
might already destroy meta information delivered by the driver. At
least for igc this is a problem.

I hope that was clear...

Best regards,
Florian

>=20
> > But Launch time still does not work:
> >=20
> > HW Launch-time:   1737374407515922696 (sec:1737374407.5159) delta to HW=
 TX-complete-time sec:-0.9999 (-999923.649 usec)
> >=20
> > Command "sudo ethtool -X enp1s0 start 1 equal 1" was in v4 [4] but is n=
ot in v6.
> > Was that intentional? After executing it Launch time feature works:
>=20
> This ethtool command is to use RSS method to route the incoming packet
> to the queue which has launch time enabled. However, not every device sup=
port
> RSS. So I move to use a more generic method, which is vlan priority metho=
d,
> to route the incoming packet. Therefore, you need to send an
> UDP packet with VLAN priority 1 to port 9091 of DUT.
>=20
> Below is example of my python script to generate the vlan UDP packet.
> You can have a quick try on it.
>=20
> from scapy.all import *
> from scapy.all import Ether, Dot1Q, IP, UDP
> packet =3D Ether(src=3D"44:ab:bc:bb:21:44", dst=3D"22:ab:bc:bb:12:34") / =
Dot1Q(vlan=3D100, prio=3D1) / IP(src=3D"169.254.1.2", dst=3D"169.254.1.1") =
/ UDP(dport=3D9091)
> sendp(packet, iface=3D"enp1s0")
>=20
> Thanks & Regards
> Siang
>=20
> >=20
> > HW Launch-time:   1737374618088557111 (sec:1737374618.0886) delta to HW=
 TX-complete-time sec:0.0000 (0.012 usec)
> >=20
> > Thank you for XDP launch time support!
> >=20
> > [1] https://lore.kernel.org/linux-kernel/20241205044258.3155799-1-
> > yoong.siang.song@intel.com/
> > [2] https://lore.kernel.org/linux-kernel/20241205051936.3156307-1-
> > yoong.siang.song@intel.com/
> > [3]
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/comm=
it/?id=3D069
> > b142f58196bd9f47b35e493255741e2c663c7
> > [4] https://lore.kernel.org/linux-kernel/20250106135724.9749-1-
> > yoong.siang.song@intel.com/
> >=20
> > Best regards,
> > Zdenek Bouska
> >=20
> > --
> > Siemens, s.r.o
> > Foundational Technologies
> >=20

