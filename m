Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B6185BCD0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 14:04:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2EDB414C9;
	Tue, 20 Feb 2024 13:04:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HHKpMdqCvHpm; Tue, 20 Feb 2024 13:04:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B4E6414D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708434252;
	bh=MguooG1wWXhhU2XrxZzlI4PqiqfVvkh/HrVz/TH/EUI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b/YmyFUqQdZJGEKTgsIUo2+XoPfuSfetGm0976EfGWt3Kvx1j8GO2T7PzEevOF399
	 HnmH60VXmnltxNtERuIDt/WrNqpXuEZ8SQU2DekZaEHbNdXPIXwegXeseLJjChVDHX
	 /lyiffz9LH56cr8tFOu6nlP63CGJg0jtelq1GcZTlDT1guahX/PIzgBIYohZkZaYjv
	 Zla24iwuJ3CdNhfmS84BlHALor/Nl7zcU1UCzegzUyxlqJz+hQojJiyG8FFuXcD9mG
	 iAdn3rEj8YPf648R3DXmxbMjKhiWsfF4nemQoNAis1+6ez0Yq199O9RL5suEv8JKtr
	 UZQ3PGrN5mUug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B4E6414D1;
	Tue, 20 Feb 2024 13:04:12 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D0D61BF5B5
 for <intel-wired-lan@osuosl.org>; Tue, 20 Feb 2024 13:04:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0667E60767
 for <intel-wired-lan@osuosl.org>; Tue, 20 Feb 2024 13:04:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7DhAjNgjK_1n for <intel-wired-lan@osuosl.org>;
 Tue, 20 Feb 2024 13:04:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=149.217.70.16;
 helo=smtp-out2.mpia-hd.mpg.de; envelope-from=kulas@mpia.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 593BF60623
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 593BF60623
Received: from smtp-out2.mpia-hd.mpg.de (smtp-out2.mpia-hd.mpg.de
 [149.217.70.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 593BF60623
 for <intel-wired-lan@osuosl.org>; Tue, 20 Feb 2024 13:04:07 +0000 (UTC)
Received: from mailer.mpia-hd.mpg.de (mailer.mpia-hd.mpg.de [149.217.71.6])
 by smtp-out2.mpia-hd.mpg.de (Postfix) with ESMTPS id 74ADF139ED;
 Tue, 20 Feb 2024 14:04:04 +0100 (CET)
Received: from mailer.mpia-hd.mpg.de (localhost [127.0.0.1])
 by mailer.mpia-hd.mpg.de (Postfix) with ESMTP id 6E85D10C6CEB;
 Tue, 20 Feb 2024 14:04:04 +0100 (CET)
X-Virus-Scanned: amavisd-new at mpia-hd.mpg.de
Received: from mailer.mpia-hd.mpg.de (mailer.mpia-hd.mpg.de [149.217.71.6]) by
 mailer.mpia-hd.mpg.de (Postfix) with ESMTPSA id DA8B310C6CB1; 
 Tue, 20 Feb 2024 14:04:03 +0100 (CET)
Date: Tue, 20 Feb 2024 14:17:37 +0100
From: Martin Kulas <kulas@mpia.de>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <ZdSmcQ1HI8cOSJhj@argosmk.mpia-hd.mpg.de>
References: <7b655203-0dba-4531-956a-c63048f7de10@mpia.de>
 <cc999834-3068-42ab-a3e7-f83115d7d901@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <cc999834-3068-42ab-a3e7-f83115d7d901@molgen.mpg.de>
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=mpia.de; h=
 content-transfer-encoding:in-reply-to:content-disposition
 :content-type:content-type:mime-version:references:message-id
 :subject:subject:from:from:date:date:received; s=mailer201911;
 t=1708434244; x=1710248645; bh=z2ThWhQ016i1xFYa0UfdwPBjeD7bIlbq
 G8M3isn7CTo=; b=vCLyD6K5xEXStR6V2Y4YWNc9obQJDteE1EXTG2G1GEhzXxRZ
 AnX+s7AtiNJtZLN7qNngloKhf6wBKvN9Jg8sDjpNVjbSosI2HMW9cdDd7aYI310d
 gKRZ4uBIr3hpve3pSmM1dbSwPQpekGmHdt7kmE1kydUyJkEQ+Mxa+x8qFLsFbJU3
 JRxEmhVU7WPXDuGmUxhruM74KyMikGzmGZLEs5zzy4pjPsgKygg5h7y+cXDTYo02
 bePx4/8Ce4MnrHtDQzU+/m+x15YY/BDVLOLsnfag2VBvhoCauguqqCKLw5OxfUKa
 uR4ioMvglRMz7FP1TM5qGD4Xo7Q9H5rKa/iZ9w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=mpia.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=mpia.de header.i=@mpia.de header.a=rsa-sha256
 header.s=mailer201911 header.b=vCLyD6K5
X-Mailman-Original-Authentication-Results: mailer.mpia-hd.mpg.de (amavisd-new); 
 dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
 header.d=mpia.de
Subject: Re: [Intel-wired-lan] Intel E810-XXVDA2: Too high TX timestamp read
 latency
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
Cc: intel-wired-lan@osuosl.org, Karol Kolacinski <karol.kolacinski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Paul,

On Fri, Feb 16, 2024 at 10:18:03PM +0100, Paul Menzel wrote:
>=20
> Am 16.02.24 um 15:18 schrieb Martin Kulas:
>=20
> > My time-sensitive user space application reads out
> > the hardware TX timestamp via poll() and recvmsg(MSG_ERRQUEUE).
> > On an Intel E810-XXVDA2 (for SFP),=A0it takes roughly 700 microsecond=
s
> > until the TX timestamp is available in user space (Linux 6.7.4).
> > This latency of 700 microseconds is far too high for my application.
> > For comparison,=A0on an Intel X550 card (Twisted pair),
> > my application retrieves the TX timestamp in roughly 30 microseconds
> > which is acceptable.
> >=20

[...]

> >=20
> > When searching for a solution about this high latency TX timestamp re=
ad,
> > I found the following thread from 2022:
> >=20
> > https://patchwork.ozlabs.org/project/intel-wired-lan/patch/2022080214=
5757.273270-1-karol.kolacinski@intel.com/#2963591
> >=20
> > Is this patch already in the current Linux Kernel 6.7.4 or is it pend=
ing?
>=20
> In the metadata on the patchwork page it says *Accepted*, and it seems =
to be
> commit 1229b33973c7 (ice: Add low latency Tx timestamp read) added to L=
inux
> 6.1-rc1, so it should be in Linux 6.1.
>=20
> Please build the Linux kernel from this commit to rule out any regressi=
on.
> (If that commit actually should support such low times that you require=
. The
> commit message says something about 20 ms before.)

After having applied that commit,  the TX timestamp read latency stays
unacceptable high (in the range of about 700 microseconds), i.e. no
regression.


Here you find details about the E810-XXVDA2 network card with=20
high Tx timestamp read latency:

    $ ethtool enp65s0f1
    Settings for enp65s0f1:
    	Supported ports: [ FIBRE ]
    	Supported link modes:   1000baseT/Full
    	                        10000baseT/Full
    	                        25000baseCR/Full
    	                        25000baseSR/Full
    	                        1000baseX/Full
    	                        10000baseSR/Full
    	                        10000baseLR/Full
    	Supported pause frame use: Symmetric
    	Supports auto-negotiation: No
    	Supported FEC modes: None
    	Advertised link modes:  10000baseT/Full
    	Advertised pause frame use: No
    	Advertised auto-negotiation: No
    	Advertised FEC modes: None
    	Speed: 10000Mb/s
    	Duplex: Full
    	Auto-negotiation: off
    	Port: Direct Attach Copper
    	PHYAD: 0
    	Transceiver: internal
    	Supports Wake-on: d
    	Wake-on: d
            Current message level: 0x00000007 (7)
                                   drv probe link
    	Link detected: yes
    $ ethtool -i enp65s0f1
    driver: ice
    version: 6.0.0-rc4-kulas-1229+
    firmware-version: 4.40 0x8001c96c 1.3534.0
    expansion-rom-version:
    bus-info: 0000:41:00.1
    supports-statistics: yes
    supports-test: yes
    supports-eeprom-access: yes
    supports-register-dump: yes
    supports-priv-flags: yes
    $


With an other NIC that supports hardware TX timestamping (Intel X550),
the TX timestamp read latency is much smaller than on Intel E810-XXVDA2,
i.e. 7 microseconds.  I am puzzled that an older Intel network card=20
provides the hardware TX timestamp about 100 times faster than=20
an new Intel network card. =20

Configuration of the X550 network card with=20
low Tx timestamp read latency:

    $ ethtool eno3
    Settings for eno3:
    	Supported ports: [ TP ]
    	Supported link modes:   100baseT/Full
    	                        1000baseT/Full
    	                        10000baseT/Full
    	                        2500baseT/Full
    	                        5000baseT/Full
    	Supported pause frame use: Symmetric
    	Supports auto-negotiation: Yes
    	Supported FEC modes: Not reported
    	Advertised link modes:  100baseT/Full
    	                        1000baseT/Full
    	                        10000baseT/Full
    	Advertised pause frame use: Symmetric
    	Advertised auto-negotiation: Yes
    	Advertised FEC modes: Not reported
    	Speed: 10000Mb/s
    	Duplex: Full
    	Auto-negotiation: on
    	Port: Twisted Pair
    	PHYAD: 0
    	Transceiver: internal
    	MDI-X: Unknown
    	Supports Wake-on: umbg
    	Wake-on: g
            Current message level: 0x00000007 (7)
                                   drv probe link
    	Link detected: yes
    $ ethtool -i eno3
    driver: ixgbe
    version: 5.17.12-100.fc34.x86_64
    firmware-version: 0x80001685, 22.0.9
    expansion-rom-version:=20
    bus-info: 0000:02:00.0
    supports-statistics: yes
    supports-test: yes
    supports-eeprom-access: yes
    supports-register-dump: yes
    supports-priv-flags: yes
    $


Do you find anything suspicious in the configuration?
Is it a problem of connector types, i.e. twisted pair vs. direct attach?


If you want to experiment by your own,  you find
a minimum program to read out hardware TX timestamp in my ownCloud
space:

https://owncloud.gwdg.de/index.php/s/q7F6IuoynzGGZis


Which tuning knobs exist that allows me to reduce the latency
for reading out the TX timestamp from the network card?


Kind regards,
Martin
