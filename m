Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 765C1903F70
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 17:01:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3900560A98;
	Tue, 11 Jun 2024 15:01:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R_T28xEIizt5; Tue, 11 Jun 2024 15:01:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 043E7608CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718118070;
	bh=jA9dvE7L9ZJmw9za/ZknPNMPAQ+nyOtSi6kn/GimkXY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lPDtmdod5pe+wMSjQURJUSf2NdssvQfRTXOjbtSqFj+rBDo1VDUi7AhDll7s2X4a1
	 9j5jl4ugaU0lZ25bSjiWNMicRhfJV2WWFPUTZrz0JY/a9ID0gyDtp6MTxxI2NlvvdZ
	 UJG84d5eXspS4WQMH/T35gzTJZ0cbj+JnxqE6BnrYr7ZsL+mVnEM47DmB4L3Cm+xJV
	 fXteSX59+Si7Q/Iik+l/ghp5cGAn2tcZTnuLmeuni7MeatFFaaiKwUHR2BpW3SAvNj
	 ui+1vi/Wa7N0bux7VzhoYCcxPtuGVFsuw3rjcCZ1jMCKdy3siPRvZ/c0liWj6cg8Xi
	 PesxStOqZW+mw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 043E7608CA;
	Tue, 11 Jun 2024 15:01:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 397301BF390
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 13:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3189B404B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 13:22:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2M8gbthRvDfB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 13:22:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=broonie@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4486640474
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4486640474
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4486640474
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 13:22:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 3E75860DF5;
 Tue, 11 Jun 2024 13:22:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46807C2BD10;
 Tue, 11 Jun 2024 13:22:40 +0000 (UTC)
Date: Tue, 11 Jun 2024 14:22:37 +0100
From: Mark Brown <broonie@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <ZmhPnQqYFXWP4heL@finisterre.sirena.org.uk>
References: <20240611130103.3262749-7-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="Xh2Kj1DQz4GcFSrR"
Content-Disposition: inline
In-Reply-To: <20240611130103.3262749-7-gregkh@linuxfoundation.org>
X-Cookie: Your love life will be... interesting.
X-Mailman-Approved-At: Tue, 11 Jun 2024 15:01:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718112160;
 bh=jA9dvE7L9ZJmw9za/ZknPNMPAQ+nyOtSi6kn/GimkXY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OJvxpd51vL1fgaAMZi+67oKms4QBWh1elR9Hk7cG6nG9e9gXGeFrMfWIIAEael+i3
 lAkE99VPxEfh5CyATJUju6DP+t3VIiBAQTucjgQ0ijMajJBcxew3jixbWnwkA4lB3w
 ugE0bmKSv4ByzTWhXiqCIEtwrFfOxt+cNpxRnb5kV3Pnz4F4fIUqKNgxjQoYWWx4Qh
 8zpY0odtnULrAV/ck1rMQnSKWXf63qG4qt6DqqFfTrBr+8cSR+V1A2y62QjUtMw5og
 nm+chU1m0V08cd11shPoWB/8gBRuAnigd/2INuHL6WAuyjUDRqmNsS6XCFFfwI6dMG
 6+fylC4MotZmw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=OJvxpd51
Subject: Re: [Intel-wired-lan] [PATCH 1/6] auxbus: make to_auxiliary_drv
 accept and return a constant pointer
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>,
 Dave Ertman <david.m.ertman@intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Bard Liao <yung-chuan.liao@linux.intel.com>,
 sound-open-firmware@alsa-project.org, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 Takashi Iwai <tiwai@suse.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-sound@vger.kernel.org,
 Bingbu Cao <bingbu.cao@intel.com>, Jaroslav Kysela <perex@perex.cz>,
 Michael Chan <michael.chan@broadcom.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>, netdev@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, Tariq Toukan <tariqt@nvidia.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--Xh2Kj1DQz4GcFSrR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 11, 2024 at 03:01:04PM +0200, Greg Kroah-Hartman wrote:
> In the quest to make struct device constant, start by making
> to_auziliary_drv() return a constant pointer so that drivers that call
> this can be fixed up before the driver core changes.

Acked-by: Mark Brown <broonie@kernel.org>

--Xh2Kj1DQz4GcFSrR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmZoT5wACgkQJNaLcl1U
h9BOJwf/aeKGbgsNQMBhINPc1+PAR8b5cph+EiF+ikcvcatJwJlRp44vA9jbRubp
RmTlt5cENNxdSPxZ4L1agVt+lbemBcTfLZFQLj+KvZjLhC2oeXhkcbjY3eLmIsVw
yQjm6MBnwdVo/8KD/jHCX4VMeCIcqtyTSjXqy3Q7kWlquqICAer7jB2riTxPOsUA
AZ8DvqF1TQees1OHELAdmRRkcSOufQXeZRHCfeiDTpAFFnOazvtPmeAPcQpA5c8v
JITj6HWMZxHRs9efcbyOOTVYnUcE3cZY3lUuqKJqzEfI08F75CJiZvb1hS/fRrPU
6Nig9Tiir3XUu0ajZMrfXBdbm+3HOg==
=XJxc
-----END PGP SIGNATURE-----

--Xh2Kj1DQz4GcFSrR--
