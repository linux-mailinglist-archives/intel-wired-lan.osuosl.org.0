Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF7FA3B2A6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2025 08:41:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CB294616A;
	Wed, 19 Feb 2025 07:41:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fmJ_-ggB0cOl; Wed, 19 Feb 2025 07:41:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57EF14F94D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739950868;
	bh=1MXOl5x0hytxt1TgAj3QbAK7ZAvG/bSYGzXlYGKLQzM=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QkUvsN+l0NHLbnx18W8/ZJojmdLXAYz28xLWEC0c+Z5nDuRMaNpu7Sg5byWYIqt/f
	 dfNtl5zueM0cE8bOI/v3CUm+Il4d3gCf0OsUmSuyZ7RxPoX2F+qI9Z829Q/ZULY+v+
	 gXPZ7AJP6TROcYKSUStYEnHZ6/hsLV9YoE5LstTuSwZmJr+Vx6T8LXNO4bwooQRmlk
	 ke/JF7ZxQc6MTm/QqEhl7SFGikOWqNs5I7erHHd/LPWL5gyZdikQyTKkgBorfVnW7K
	 CCj1lgMuA+NN11Ic4Ik6oDZmcbraWb6YZYIwj56AHh1hdmn9DWnB8w4Irp/IGiFUfX
	 79gY0LvahXLzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57EF14F94D;
	Wed, 19 Feb 2025 07:41:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E61A1127
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 07:41:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C46FD61AC1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 07:41:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yfsM-di_xQBk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2025 07:41:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EEF64612A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EEF64612A9
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EEF64612A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 07:41:04 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Joe Damato <jdamato@fastly.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
In-Reply-To: <Z7T4Cpv80pWF45tc@LQ3V64L9R2>
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
 <20250217-igb_irq-v2-2-4cb502049ac2@linutronix.de>
 <Z7T4Cpv80pWF45tc@LQ3V64L9R2>
Date: Wed, 19 Feb 2025 08:41:01 +0100
Message-ID: <875xl62xgy.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739950862;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1MXOl5x0hytxt1TgAj3QbAK7ZAvG/bSYGzXlYGKLQzM=;
 b=AHu7y0LHsQL0ITATUVvgu1cu0PzpWV8PYSH3C3EgxthQTDmBctUthNS8rWS8alcdmM8tUE
 +GhQeiPrp1fQkvCVWEofUZELHaIeEENIpCL/gLVJRMqyt2Ws/foFHo6fH/iP8YJtdYZfGk
 G28M3zptSbrTUfLCmMjsJqtlXX3tuOVFnBTa/vP9kZbegtKXwKE5TroKs0A7qmEcBx5mXu
 U2NVzmNau+x5kji048R6zC3S5gCaPsTuAqrCk7XfwpheXmrw+U1POaXqHojOSIq1mIIwDy
 PQvRh8wZcS4p/enwUw+8m0d9uAyRVsxX9mQajCzDyRbPIYfACMyF0+ufrIDAaA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739950862;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1MXOl5x0hytxt1TgAj3QbAK7ZAvG/bSYGzXlYGKLQzM=;
 b=XVhfX6yk6F4yD4/jp/sR5bsekA1xMB8C9xcerBjqdrlO3wFtNL8nFEw0MExtOxAt+noB+V
 Plrqrvxa/Oza0bCA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=AHu7y0LH; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=XVhfX6yk
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/4] igb: Link queues to
 NAPI instances
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

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Tue Feb 18 2025, Joe Damato wrote:
> On Mon, Feb 17, 2025 at 12:31:22PM +0100, Kurt Kanzenbach wrote:
>> Link queues to NAPI instances via netdev-genl API. This is required to u=
se
>> XDP/ZC busy polling. See commit 5ef44b3cb43b ("xsk: Bring back busy poll=
ing
>> support") for details.
>>=20
>> This also allows users to query the info with netlink:
>>=20
>> |$ ./tools/net/ynl/pyynl/cli.py --spec Documentation/netlink/specs/netde=
v.yaml \
>> |                               --dump queue-get --json=3D'{"ifindex": 2=
}'
>> |[{'id': 0, 'ifindex': 2, 'napi-id': 8201, 'type': 'rx'},
>> | {'id': 1, 'ifindex': 2, 'napi-id': 8202, 'type': 'rx'},
>> | {'id': 2, 'ifindex': 2, 'napi-id': 8203, 'type': 'rx'},
>> | {'id': 3, 'ifindex': 2, 'napi-id': 8204, 'type': 'rx'},
>> | {'id': 0, 'ifindex': 2, 'napi-id': 8201, 'type': 'tx'},
>> | {'id': 1, 'ifindex': 2, 'napi-id': 8202, 'type': 'tx'},
>> | {'id': 2, 'ifindex': 2, 'napi-id': 8203, 'type': 'tx'},
>> | {'id': 3, 'ifindex': 2, 'napi-id': 8204, 'type': 'tx'}]
>>=20
>> Add rtnl locking to PCI error handlers, because netif_queue_set_napi()
>> requires the lock held.
>>=20
>> While at __igb_open() use RCT coding style.
>>=20
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> ---
>>  drivers/net/ethernet/intel/igb/igb.h      |  2 ++
>>  drivers/net/ethernet/intel/igb/igb_main.c | 43 ++++++++++++++++++++++++=
+++----
>>  drivers/net/ethernet/intel/igb/igb_xsk.c  |  2 ++
>>  3 files changed, 42 insertions(+), 5 deletions(-)
>
> [...]
>
>> @@ -9737,16 +9765,21 @@ static void igb_io_resume(struct pci_dev *pdev)
>>  	struct net_device *netdev =3D pci_get_drvdata(pdev);
>>  	struct igb_adapter *adapter =3D netdev_priv(netdev);
>>=20=20
>> +	rtnl_lock();
>>  	if (netif_running(netdev)) {
>>  		if (!test_bit(__IGB_DOWN, &adapter->state)) {
>>  			dev_dbg(&pdev->dev, "Resuming from non-fatal error, do nothing.\n");
>> +			rtnl_unlock();
>>  			return;
>>  		}
>> +
>>  		if (igb_up(adapter)) {
>>  			dev_err(&pdev->dev, "igb_up failed after reset\n");
>> +			rtnl_unlock();
>>  			return;
>>  		}
>>  	}
>> +	rtnl_unlock();
>
> Does RTNL need to be held when calling netif_running()? If not, you
> could probably reduce the size of the section under the lock a bit?

All the other instances in the driver guard the netif_running(), too.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAme1iw0THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgh6lD/9WWV/wxz4UD7aPbEoGlB9Kdg2kdxlc
0cQhUG/k2MS7Qft0rFt/lZKLUwOrHgu0tvDl4CqOm3SdcLSnOMWAZTKtgXh6m4MH
r7eYW38Ol7HQlzH1XnExUdKwttMY5U3SIuua8d/3L9NkKI46yPXEY6YnkFi450i9
lB1NYCM6SUdCXAS5g3syKb9KhlFTjfq+o4sBdk/okU7fv0hHIGHFmlS8a8PtDIEI
DxROpHcuzJ86evCiXbv4Q7AHRWEvLG6LoTpM0SAxe03usOYVaLw/4g9NYfzfJDj2
Acg4H2iXmcuH5AQ6dNq2C6U1yOY6ILjYSHWDwB9pYzygcRsJwbF3RUP0jx98GMpv
Thw0MwoZfd2jAlfGJmin9FOLOAwu046f0m5+qKuz48obail2GAbn9C0p7rHdBuO9
o+YeqyN0oaPHXi7H8FcFWmefUba/Gs6SR0Cvj9AJ5wotTV2HOf2gbDMcudVeI3Ij
gMh9K1jbhVlt5vc5E5auBKydCplni1HD1ftrClzj+O9bMsBFMuacAwAWTKMk6MiD
VWl9+iGf2B1iXR0tona5Q/211YifOMdeYlXdCn9Olro3tsRqMZfVRo10WU/OBTiE
MPbMIUnsgOOkPvlvBmkg+T37FMT37R3twWPuLef4PsUOge/pdFcFGd0JcE7ES/J/
icZzSdCfxdKvDw==
=alsw
-----END PGP SIGNATURE-----
--=-=-=--
