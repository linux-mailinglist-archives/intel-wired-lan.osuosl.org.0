Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2409914102E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jan 2020 18:47:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF59A87E53;
	Fri, 17 Jan 2020 17:47:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PPQZQR-7AosP; Fri, 17 Jan 2020 17:47:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ACC6A88158;
	Fri, 17 Jan 2020 17:47:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E1271BF30B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2020 17:26:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 98EB422005
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2020 17:26:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WE4aEhJO3CRl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jan 2020 17:26:19 +0000 (UTC)
X-Greylist: delayed 00:09:38 by SQLgrey-1.7.6
Received: from mail-c.ads.isi.edu (mail-c.ads.isi.edu [128.9.180.198])
 by silver.osuosl.org (Postfix) with ESMTPS id C5E8020480
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2020 17:26:19 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="22258381"
Received: from pool-108-14-86-129.nycmny.ftas.verizon.net (HELO
 smtp.ads.isi.edu) ([108.14.86.129])
 by mail-c.ads.isi.edu with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2020 09:16:39 -0800
Date: Fri, 17 Jan 2020 12:16:37 -0500
From: Ryan Goodfellow <rgoodfel@isi.edu>
To: =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>
Message-ID: <20200117171637.GB69024@smtp.ads.isi.edu>
References: <14f9e1bf5c3a41dbaec53f83cb5f0564@isi.edu>
 <CAJ+HfNhdPEe34DVUAj4eHxLkBUSTo2CXbLHoWu+dwFCp753oMg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ+HfNhdPEe34DVUAj4eHxLkBUSTo2CXbLHoWu+dwFCp753oMg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Fri, 17 Jan 2020 17:47:07 +0000
Subject: Re: [Intel-wired-lan] zero-copy between interfaces
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
Cc: "xdp-newbies@vger.kernel.org" <xdp-newbies@vger.kernel.org>,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 17, 2020 at 01:32:07PM +0100, Bj=F6rn T=F6pel wrote:
> On Mon, 13 Jan 2020 at 01:28, Ryan Goodfellow <rgoodfel@isi.edu> wrote:
> >
> [...]
> >
> > I could not get zero-copy to work with the i40e driver as it would cras=
h. I've
> > attached the corresponding traces from dmesg.
> =

> Thanks Ryan! I had a look at the crash, and it's in the XDP setup:
> =

> i40e_xdp_setup:
> ...
>  for (i =3D 0; i < vsi->num_queue_pairs; i++)
>      WRITE_ONCE(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);
> =

> and the vsi->rx_ring[0] is NULL. This is clearly broken.
> =

> It would help with more lines from your dmesg: the cut i40e log hints
> that something is really broken:
> =

> [  328.579154] i40e 0000:b7:00.2: failed to get tracking for 256
> queues for VSI 0 err -12
> [  328.579280] i40e 0000:b7:00.2: setup of MAIN VSI failed
> [  328.579367] i40e 0000:b7:00.2: can't remove VEB 162 with 0 VSIs left
> =

> Is it possible to dig out the complete log?

Hi Bj=F6rn,

I've linked a full dmesg log from an XDP setup crash. Note that there are =

two i40e cards on this machine. The X710 (0000:65:00.0, 0000:65:00.1) works =

fine, the X722 (0000:b7:00.0, 0000:b7:00.1, 0000:b7:00.2, 0000:b7:00.3) is =
the
one that is crashing on XDP setup.

https://gitlab.com/mergetb/tech/network-emulation/kernel/snippets/1931080

Some info that may be useful:

ry@turbine:~$ sudo ethtool -i eno7
driver: i40e
version: 2.8.20-k
firmware-version: 3.33 0x80001006 1.1747.0
expansion-rom-version:
bus-info: 0000:b7:00.2
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes

The firmware version 3.33 was the latest I could find as of a few weeks ago.

ry@turbine:~$ sudo lspci -vvv | grep 722
b7:00.0 Ethernet controller: Intel Corporation Ethernet Connection X722 for=
 10GBASE-T (rev 04)
	DeviceName: Intel LAN X722 #1
	Subsystem: Super Micro Computer Inc Ethernet Connection X722 for 10GBASE-T
b7:00.1 Ethernet controller: Intel Corporation Ethernet Connection X722 for=
 10GBASE-T (rev 04)
	DeviceName: Intel LAN X722 #2
	Subsystem: Super Micro Computer Inc Ethernet Connection X722 for 10GBASE-T
b7:00.2 Ethernet controller: Intel Corporation Ethernet Connection X722 for=
 10GbE SFP+ (rev 04)
	DeviceName: Intel LAN X722 #3
	Subsystem: Super Micro Computer Inc Ethernet Connection X722 for 10GbE SFP+
b7:00.3 Ethernet controller: Intel Corporation Ethernet Connection X722 for=
 10GbE SFP+ (rev 04)
	DeviceName: Intel LAN X722 #4
	Subsystem: Super Micro Computer Inc Ethernet Connection X722 for 10GbE SFP+

ry@ryzen:~$ uname -a
Linux ryzen 4.19.0-6-amd64 #1 SMP Debian 4.19.67-2+deb10u2 (2019-11-11) x86=
_64 GNU/Linux

ry@turbine:~/kmoa/bpf-next$ git log -2
commit 60d71397d27e7859fdaaaaab6594e4d977ae46e2 (HEAD -> master)
Author: Ryan Goodfellow <rgoodfel@isi.edu>
Date:   Wed Jan 15 16:54:39 2020 -0500

    add xdpsock_multidev sample program

    This is a simple program that uses AF_XDP sockets to forward packets
    between two interfaces using a common memory region and no copying of
    packets.

    Signed-off-by: Ryan Goodfellow <rgoodfel@isi.edu>

commit 9173cac3b64e6785dd604f5075e6035b045a0026 (origin/master, origin/HEAD)
Author: Andrii Nakryiko <andriin@fb.com>
Date:   Wed Jan 15 11:08:56 2020 -0800

    libbpf: Support .text sub-calls relocations

    The LLVM patch https://reviews.llvm.org/D72197 makes LLVM emit function=
 call
    relocations within the same section. This includes a default .text sect=
ion,
    which contains any BPF sub-programs. This wasn't the case before and so=
 libbpf
    was able to get a way with slightly simpler handling of subprogram call
    relocations.

    This patch adds support for .text section relocations. It needs to ensu=
re
    correct order of relocations, so does two passes:
    - first, relocate .text instructions, if there are any relocations in i=
t;
    - then process all the other programs and copy over patched .text instr=
uctions
    for all sub-program calls.

    v1->v2:
    - break early once .text program is processed.

    Signed-off-by: Andrii Nakryiko <andriin@fb.com>
    Signed-off-by: Alexei Starovoitov <ast@kernel.org>
    Acked-by: Yonghong Song <yhs@fb.com>
    Cc: Alexei Starovoitov <ast@kernel.org>
    Link: https://lore.kernel.org/bpf/20200115190856.2391325-1-andriin@fb.c=
om

-- =

~ ry
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
