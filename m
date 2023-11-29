Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A42987FD549
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 12:16:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 17996401F3;
	Wed, 29 Nov 2023 11:16:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17996401F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701256562;
	bh=LFl8aXo7cczxLEFY6rsEi5ALxMD9p0yu+EZ1CQT1AhI=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0//tJsSw2yRBPN0WQKAhIanBgyQ7wpgedoL3FJ4NYc/+dD2NDif0nOBa272At23SZ
	 F87rU4yJOYh4IvRtzdj4ooNweximsrEwWhMWlPPUzHg8gbMSKc1qaEoWGpSu8eBPP5
	 UxB9x6aFk846fVwqtEGAhmp5Y8kCX4h54L4Q/6M9JtJ1NBAepVtAuqOvvhXdt6ScCy
	 5Tsg7QszNkxMKlmebnAYJ2x1AeXhBes3yOqU5V0/I3/qvyRDtd7Jf2t+MXEN8MvYzi
	 4cDSJt0FI6mpCoWxMQd4vQYRgHGbQHthb2zy+RXhucp8kc7NvbVkNaf6TXgJcPswJb
	 LMcvaUw1MxVCA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GSY3ihIL1i5b; Wed, 29 Nov 2023 11:16:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A65E5401DD;
	Wed, 29 Nov 2023 11:16:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A65E5401DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D39591BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 11:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AAB8F60AD0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 11:15:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAB8F60AD0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ExAVJHV3nDj7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 11:15:54 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1F251605B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 11:15:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F251605B5
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <87bkbdsb4b.fsf@intel.com>
References: <20231128074849.16863-1-kurt@linutronix.de>
 <87bkbdsb4b.fsf@intel.com>
Date: Wed, 29 Nov 2023 12:15:47 +0100
Message-ID: <87leagstcs.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1701256550;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ojjqn6RAZ7dRmbhoMLtsEoETVpSbscfP7NVTUIt6ulI=;
 b=ahoKKx1DqT1QhEA5R3lCjFX38Wdn0ZEENUvdMdpGsqVwb7c+HArWuoSVzrmz6dEH0ZpiEj
 2/TwjG4Y2z81vv9FaSIa3qNgoLEAGcDqLnZA245E8KcR6/bUEIJ5yvWISxh/NK8Lef2VaO
 XWQg/3vmbR9co6nwWjnS8QUaAVW7jWq+JKY3sj2yuXQQt+1cM3dX86cEoqDwj7oBPnYwgB
 NL8Blu64b4hOBjDK3ZDceBKd1Ul9+2d81XghyS7fb5KY0kJngbIv2h/1DikVBvI1105Ep5
 /kvJxmVyoP97l0vXBDHHQNtwpY6AQpEdWcvb8mkM+v1tTdPFPI8k0sIBiyafhw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1701256550;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ojjqn6RAZ7dRmbhoMLtsEoETVpSbscfP7NVTUIt6ulI=;
 b=q3RVPLeKPyDyIvMyMW+C3YL4d1utIhR2gP28DadJEIrBWZmq9FuPkjn1+7p3CWQBx3ZkAq
 pA23Xn2t70NWf5Bw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=ahoKKx1D; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=q3RVPLeK
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/5] igc: ethtool: Check VLAN
 TCI mask
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============1843733420251727768=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1843733420251727768==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

On Tue Nov 28 2023, Vinicius Costa Gomes wrote:
> Kurt Kanzenbach <kurt@linutronix.de> writes:
>
>> Hi,
>>
>> currently it is possible to configure receive queue assignment using the VLAN
>> TCI field with arbitrary masks. However, the hardware only supports steering
>> either by full TCI or the priority (PCP) field. In case a wrong mask is given by
>> the user the driver will silently convert it into a PCP filter which is not
>> desired. Therefore, add a check for it.
>>
>> Patches #1 to #4 are minor things found along the way.
>>
>
> Some very minor things: patches 2,3 and 4 have extra long lines in their
> commit messages that checkpatch.pl doesn't seem to like.

OK. checkpatch wants 75 chars per line. These patches have 80 set. I'll
adjust it.

>
> Patches 4 and 5 read more like fixes to me. I think they could be
> proposed to -net, as they contain fixes to user visible issues. Do you
> think that makes sense?

Probably yes. I'll sent them to -net instead. Fixes tags would be:

 - Patch 4: 2b477d057e33 ("igc: Integrate flex filter into ethtool ops")
 - Patch 5: 7991487ecb2d ("igc: Allow for Flex Filters to be installed")

>
> As for the code, feel free to add my Ack to the series:
>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmVnHWMTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzguX7D/9QOX6/YZWQUibiAo/cINtmbD3KxNNW
IX0gBMf+y3vcEhM0tUI0BQqraMaxuPYZpYZqyTch+Tew2NzPcSazAx5/Ijvzve53
WI+U2DqRlo0ow3KY/shXX0pTR8sCvqPRGzZ1hqPR2vbnqai87TBSz4rD/jcGob+9
7sND2eYDy50zt25St9kPqCj23UEE6G6b/uH0Pqm0zNeCaX+Z4tV4fZJ+MHgnjweF
xa9QOSLxfgBACEZO6XtKbFYOX8CdVLN/dDD48dQZYzXxmFlH6qKgIXNbXLTLtaMb
exC5Au75iZJT78UiFS6bIBtfke4yMDvpf0e6DRStfYdBjJ71QVuMpXe5Kc4cSagH
FvZcll0OBreKWRCPA9K797m5KZoi7Mky8CBdRMXPMoZ2D0X+zJ1tu91tGHCh9Vnb
10gsM1zl4uTB421dpSDqBI2LtbkGhIpH/id5JaaluI7yv4QP4w2ksA++39rZ1fMy
ax+TM64bFx7VoCtupb/WRBXwjgk25eressB83mb45k3ZHxPa27aZcKcthNNjySwh
mQ0OCcVzKi0/M81rKzXJ6O/I9iLATh+Eb10nzwlbrR4IfnwPa7yhePdzGtbZKpH2
fqFl/1LyA4K+GHEMmsessAVSxu1pmZ2ixW7gOgkSyieHXNbp3ZftHwZW65WRPksp
BHv9pHHT6jsX0Q==
=M4Tk
-----END PGP SIGNATURE-----
--=-=-=--

--===============1843733420251727768==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1843733420251727768==--
