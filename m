Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCD7B02BC1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Jul 2025 17:55:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC18740724;
	Sat, 12 Jul 2025 15:55:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iIii5eYsXuYt; Sat, 12 Jul 2025 15:55:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3B00405F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752335721;
	bh=l32soV8iz0aikV3DmPpJnwgVrKchOr3wZvD9Egt2l4U=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hK6oh8tWy5pujtbwZ6HDWz2ZN6MFfU0GnJ4iV6Aw6v9SOT9GbNASSHP2hpnkFTnIg
	 O8uL6ru4u8njfh+XuQHYoBoHJWEUEcn8rNOaXrci7pq5ffS56PbfMRxDlxREoSpkA9
	 6kTMxa8tE3nwRo6PPrnC2RXBcIK6It3xePadJW1a+mE28l6JFEruG3w3zAlNEaVlCB
	 n4f/z9CMqWO3TK14kmSnSx4g1P6VYs/ya36czUyXQFoCcVreJjBU6jGb5LXvOoJt29
	 flSedJAa6NfkA3TjlDBQfyTwJD1mjUpG0mgCxf/CSN7ciUCUSCpJkEGwSEi2nw2D25
	 nkXLxgXxDBLhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3B00405F6;
	Sat, 12 Jul 2025 15:55:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 103B468
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Jul 2025 15:55:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D690401D5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Jul 2025 15:55:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RRcH_jDFdPvt for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Jul 2025 15:55:20 +0000 (UTC)
X-Greylist: delayed 2561 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 12 Jul 2025 15:55:19 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CDD6740130
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDD6740130
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=65.21.191.19;
 helo=maynard.decadent.org.uk; envelope-from=ben@decadent.org.uk;
 receiver=<UNKNOWN> 
Received: from maynard.decadent.org.uk (maynard.decadent.org.uk [65.21.191.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CDD6740130
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Jul 2025 15:55:19 +0000 (UTC)
Received: from [89.234.162.240] (helo=deadeye)
 by maynard with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.96) (envelope-from <ben@decadent.org.uk>)
 id 1uabtz-0059j5-2N; Sat, 12 Jul 2025 15:12:35 +0000
Received: from ben by deadeye with local (Exim 4.98.2)
 (envelope-from <ben@decadent.org.uk>) id 1uabty-00000002Vec-2keS;
 Sat, 12 Jul 2025 17:12:34 +0200
Message-ID: <c40b5e6cb26654f698e51b131956065b952ad222.camel@decadent.org.uk>
From: Ben Hutchings <ben@decadent.org.uk>
To: intel-wired-lan@lists.osuosl.org, linux-pci <linux-pci@vger.kernel.org>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Michael Chan <mchan@broadcom.com>
Cc: Laurent Bonnaud <L.Bonnaud@laposte.net>, 1104670@bugs.debian.org, 
 netdev@vger.kernel.org
Date: Sat, 12 Jul 2025 17:12:30 +0200
In-Reply-To: <8a232a97-5917-41d3-8e88-e68abdc83202@laposte.net>
References: <89159d74-c343-480f-9509-b6457244d65d@laposte.net>
 <8a232a97-5917-41d3-8e88-e68abdc83202@laposte.net>
Content-Type: multipart/signed; micalg="pgp-sha512";
 protocol="application/pgp-signature"; boundary="=-EOHNBDwerU4Tq4Na6UmU"
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 89.234.162.240
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on maynard); SAEximRunCond expanded to false
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=decadent.org.uk
Subject: Re: [Intel-wired-lan] Bug#1104670: linux-image-6.12.25-amd64:
 system does not shut down - GHES: Fatal hardware error
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


--=-EOHNBDwerU4Tq4Na6UmU
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

On Sun, 2025-05-04 at 13:45 +0200, Laurent Bonnaud wrote:
[...]
>   - Previously the kernel would output an error in /var/lib/systemd/pstor=
e/ but would shutdown anyway.
>=20
>   - Now, with kernel 6.1.135-1, the shutdown is blocked as with 6.12.x ke=
rnels (see below).
> --
> Laurent.
>=20
> <30>[  961.098671] systemd-shutdown[1]: Rebooting.
> <6>[  961.098743] kvm: exiting hardware virtualization
> <6>[  961.361878] megaraid_sas 0000:17:00.0: megasas_disable_intr_fusion =
is called outbound_intr_mask:0x40000009
> <6>[  961.414526] ACPI: PM: Preparing to enter system sleep state S5
> <0>[  963.828210] {1}[Hardware Error]: Hardware error from APEI Generic H=
ardware Error Source: 5
> <0>[  963.828213] {1}[Hardware Error]: event severity: fatal
> <0>[  963.828214] {1}[Hardware Error]:  Error 0, type: fatal
> <0>[  963.828216] {1}[Hardware Error]:   section_type: PCIe error
> <0>[  963.828216] {1}[Hardware Error]:   port_type: 0, PCIe end point
> <0>[  963.828217] {1}[Hardware Error]:   version: 3.0
> <0>[  963.828218] {1}[Hardware Error]:   command: 0x0002, status: 0x0010
> <0>[  963.828220] {1}[Hardware Error]:   device_id: 0000:01:00.1
> <0>[  963.828221] {1}[Hardware Error]:   slot: 6
> <0>[  963.828222] {1}[Hardware Error]:   secondary_bus: 0x00
> <0>[  963.828223] {1}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x=
1563
> <0>[  963.828224] {1}[Hardware Error]:   class_code: 020000
> <0>[  963.828225] {1}[Hardware Error]:   aer_uncor_status: 0x00100000, ae=
r_uncor_mask: 0x00018000
> <0>[  963.828226] {1}[Hardware Error]:   aer_uncor_severity: 0x000ef010
> <0>[  963.828227] {1}[Hardware Error]:   TLP Header: 40000001 0000000f 90=
028090 00000000
[...]

It seems that this is a known bug in the BIOS of several Dell PowerEdge
models including (in this case) the R540.

A workaround was added to the tg3 driver
<https://git.kernel.org/linus/e0efe83ed325277bb70f9435d4d9fc70bebdcca8>
and a similar change was proposed (but not accepted) in the i40e driver
<https://lore.kernel.org/all/20241227035459.90602-1-yue.zhao@shopee.com/>.
On tihis system the erorr log points to a deivce handled by the ixgbe
driver, and no workaround has been implemented for that.

Since this issue seems to affect multiple different NIC vendors and
drivers, would it make more sense to implement this workaround as a PCI
quirk?

Ben.

--=20
Ben Hutchings
Experience is directly proportional to the value of equipment destroyed
                                                    - Carolyn Scheppner

--=-EOHNBDwerU4Tq4Na6UmU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEErCspvTSmr92z9o8157/I7JWGEQkFAmhye14ACgkQ57/I7JWG
EQkCGRAArhhsaQfYReSLaDpResfBQgdhi852snU1Y27XpESTwii1AV8M71XxWPnw
m4WnPVctGUQg2Qb6nrwGaiJUr7Rj/R+RzkKynuYmVsVthZGTZtyOx525S/HjJVmQ
IFOdJA0Mw2czAUo6xB4rwBga9Leq5U7y2zkjvVb9qtMs3A7y5FaLYSv8WRArECXx
HP2BoWtxv3ItxcU9Os4TYwkcVQga9zpKCUxUzrUvLOKOAIneduV3zqUeoy0YD958
kkpXLN+PuqGzaxFLzr/r63d4wlBY+De2Vtd/yWKzSr+5n5ZeZ/yi6ZDxWjJXe42c
B4IIIrh/EsZRXL0ThEwo6sjoaBFxCMwSLhdwIsIhTGXl702VXynS+CqRMT9G8x9T
EUZj5F3PIKYSB5nb+r2t/XEosAL8z2a7bbZWkQUHruUXpycXCdDFa7rLJdqKBva0
TFYgstWr9V7oHzPsocZfT3k/UbArzGAwuKk0sWXTAobYmN1vun//muNK03xmu5V8
ib0t2CXjFiQLtoKPtfev2/BC5lYWb9lMUha7cukLZjPTNQr9dINvqKOc0OlcNd0d
Lefcf8f13nzQDAr8U/kTWWzz0u1+fTR41jwrr+Qz0ohS7/JJis8hpZSW1ji2ImKj
Q2YDgm36H28uGMpQzll638Q0SR7+A6CkCHeelMpKNmtulS9+z1w=
=tyMx
-----END PGP SIGNATURE-----

--=-EOHNBDwerU4Tq4Na6UmU--
