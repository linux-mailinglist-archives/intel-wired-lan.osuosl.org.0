Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EE59927F9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2024 11:20:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A99260744;
	Mon,  7 Oct 2024 09:20:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WpjXGLJg4-i5; Mon,  7 Oct 2024 09:20:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 515496074A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728292826;
	bh=ILhejzyvsn9kCBk/pLYqb1pHNvOKTywyx34p8dgeWWo=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tQBsRmbS0Mg1rQY30sZJqRA9EqVF6ygORtdkcQwpDTvAJEnC724GEO94nutiwsxBG
	 QaNDpE8qBnseeyuQqGb5pJOsrz9uTSJogY82EfZ15neQkQtV/Y7GSNtSHhTi9+y5r3
	 KChn2TyvUmep0GlSilzcN7WKqHK7tPl/yqnFrVNZDf7wuu+i2dyRCGWmFKcJPUnZxF
	 c7W6edyjN1sFwqjVJrayZ/pspN1PKc7l/+LNNo1ueOdMaShkLLL97qsIv+RhWsu30K
	 tYanyWQSV+whEpiHYWo6uBbA7pwA5sD7bOgPcmtvwXwsDzUHKEYI2dVfqO4zxrLT7a
	 r2ANptw6R2WUA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 515496074A;
	Mon,  7 Oct 2024 09:20:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CBDBE1BF2B8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 09:20:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B9A6E60744
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 09:20:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iWjVqIZwysYO for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2024 09:20:24 +0000 (UTC)
X-Greylist: delayed 327 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 07 Oct 2024 09:20:23 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BCAEC6071A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCAEC6071A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BCAEC6071A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 09:20:23 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Joe Damato <jdamato@fastly.com>, netdev@vger.kernel.org
In-Reply-To: <20241003233850.199495-3-jdamato@fastly.com>
References: <20241003233850.199495-1-jdamato@fastly.com>
 <20241003233850.199495-3-jdamato@fastly.com>
Date: Mon, 07 Oct 2024 11:14:51 +0200
Message-ID: <87msjg46lw.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1728292493;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ILhejzyvsn9kCBk/pLYqb1pHNvOKTywyx34p8dgeWWo=;
 b=UEPMYj8U8PeoCIDMxrM9YIBlbJQ+LGt6Dear3XCNWOJgJRS4o0gI6rFb3omUQaDXQQ8lso
 kpm7AddJjyESCchyMLoQ1o73X/uZT0RP1jATKDV2oxTsxLe6Ie7xTbTQQXiqzIJe7ZRgCB
 yT+SwYjDjet6m4HUguyyoZZdrQqHJRNqcamJVWl+bZhbVdqdoG0P90OmKpgoyHg//W46q8
 qY/yP2Em0u7/PF0kATyuhaCIwYegxhYhFdXAF0WtYp9BhhTI1dLoQQQ5KNi+AH+IVmtGXX
 LI00PUuZJKagKRvs9DX3vNhPzQQff7495ylcC87kfiXp/z68Z8yP2TozEfeYUw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1728292493;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ILhejzyvsn9kCBk/pLYqb1pHNvOKTywyx34p8dgeWWo=;
 b=Iw/bEKIxzy+PzeYK32U1OyNVFCDn4052LD0tJJ8oC4ZYEtIyChQCVP+FOasBkjg7C/SNDO
 mfEDG6GggTG4F5CQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=UEPMYj8U; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=Iw/bEKIx
Subject: Re: [Intel-wired-lan] [RFC net-next 2/2] igc: Link queues to NAPI
 instances
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joe Damato <jdamato@fastly.com>, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi Joe,

On Thu Oct 03 2024, Joe Damato wrote:
> Link queues to NAPI instances via netdev-genl API so that users can
> query this information with netlink:
>
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
>                          --dump queue-get --json=3D'{"ifindex": 2}'
>
> [{'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'rx'},
>  {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'rx'},
>  {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'rx'},
>  {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
>  {'id': 1, 'ifindex': 2, 'napi-id': 8194, 'type': 'tx'},
>  {'id': 2, 'ifindex': 2, 'napi-id': 8195, 'type': 'tx'},
>  {'id': 3, 'ifindex': 2, 'napi-id': 8196, 'type': 'tx'}]
>
> Since igc uses only combined queues, you'll note that the same NAPI ID
> is present for both rx and tx queues at the same index, for example
> index 0:
>
> {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'rx'},
> {'id': 0, 'ifindex': 2, 'napi-id': 8193, 'type': 'tx'},
>
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 30 ++++++++++++++++++++---
>  1 file changed, 26 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethe=
rnet/intel/igc/igc_main.c
> index 7964bbedb16c..b3bd5bf29fa7 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -4955,6 +4955,7 @@ static int igc_sw_init(struct igc_adapter *adapter)
>  void igc_up(struct igc_adapter *adapter)
>  {
>  	struct igc_hw *hw =3D &adapter->hw;
> +	struct napi_struct *napi;
>  	int i =3D 0;
>=20=20
>  	/* hardware has been reset, we need to reload some things */
> @@ -4962,8 +4963,17 @@ void igc_up(struct igc_adapter *adapter)
>=20=20
>  	clear_bit(__IGC_DOWN, &adapter->state);
>=20=20
> -	for (i =3D 0; i < adapter->num_q_vectors; i++)
> -		napi_enable(&adapter->q_vector[i]->napi);
> +	for (i =3D 0; i < adapter->num_q_vectors; i++) {
> +		napi =3D &adapter->q_vector[i]->napi;
> +		napi_enable(napi);
> +		/* igc only supports combined queues, so link each NAPI to both
> +		 * TX and RX
> +		 */

igc has IGC_FLAG_QUEUE_PAIRS. For example there may be 2 queues
configured, but 4 vectors active (and 4 IRQs). Is your patch working
with that?  Can be tested easily with `ethtool -L <inf> combined 2` or
by booting with only 2 CPUs.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmcDposTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgkVmD/9qaFbTuNtod2nGZcKugdGzZE7UPryI
vjNn7+3IRXDCkRsCXqZpU+Ay4i78xFdFH3z4C8r1YK8Idl7xWvNYbSHicN1/dFea
zCGVkCyDr2cG/Nen2ty1+BaMyY3xVkmPKsO3/i5bTwJ8iLHr1RI20SQl7AlDdj4w
ZzrtmH28A12Vt6zf+Jw3cKHCCzP+V44Qkd6yeYL8W7Tqyu4nefLnmkGC4pL1aAKm
5Hck67WdesDYi3QmzVfB8WcUbtG/SIAheYz80rIA+1YGgxXJ163slMis458w2gxQ
t3vqFLHAxcDVq39DUhJOqFA6821BGUGzebA/2nq7vjnti8JA9lIn6hbzTj2Ficwi
AezoP1W6G1vyMlha7q4+AKcHfY0L6CelU5fF1PVkCFcld4HEMM5CmZ6yeOKHCQ8s
P5ylfIJJPO1l8GrKJrtuY8bshBz4yHv8aKoepydkO/VgFnfQ+x/orzcYrAYSBOoC
8VkQdadBeoD8qCvttQv1GbDUM+3My1exs3k0lB836+bYfz29Yi+Rj3KKuzPPzw5D
44ic3S0Qv84pydQBNxiXH0/Nmc+GhZRfIURSV1BwLqluwImh4xaC89W+4ltypwhL
gA/V3nipKhx2nzx3NAsAhm8sk+17B11j1Ba5G+lmLv8JG4Bv+GirXVlmraiYruhK
LfqS6xN2o9s2GQ==
=LMbF
-----END PGP SIGNATURE-----
--=-=-=--
