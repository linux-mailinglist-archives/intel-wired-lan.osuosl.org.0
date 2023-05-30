Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A37AF715EE8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 14:21:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42DE7416D0;
	Tue, 30 May 2023 12:21:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42DE7416D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685449264;
	bh=NkG8G4C3YPWlpZtMUuzyh8QqD2FffC2jG3Ku1ffs89U=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v6ckNdK8Mw04eBCIKDa/LSzKdGxf+bjutpdleCdDRBaoNw1v71byy1OkrGfeO344m
	 KuwABLOETFs7gIHdDYUpcT8A7XE+t+/R3lb/1fydYWtWkXpdvowi7+34yn+yr/Tg96
	 DvjMraaNSTLzW0F/oolRVFfCFj+hRV2EDeTOdX2j+DtXOuhV1o4/EnvjvoR8BL50oh
	 M511hgecytOmMEmaL7qrAMB6TIid0UD+hQfLvIIfTS0tUxTmjcDCYmraQ2DlSAfmlh
	 FWDWOGhRmfInsmh5SyLq4xOzxx7BOPubVKTJH2nmmKgD7NPi7R6pJYXTcU1wxGver8
	 plaQyZ4Lrwk2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Ur2ATQYgDAy; Tue, 30 May 2023 12:21:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A607416D8;
	Tue, 30 May 2023 12:21:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A607416D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B29F1BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 12:20:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 338E341E7B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 12:20:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 338E341E7B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MEF48Pm_wOH1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 12:20:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF245416D0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF245416D0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 12:20:54 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org
In-Reply-To: <20230530091948.1408477-3-vladimir.oltean@nxp.com>
References: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
 <20230530091948.1408477-3-vladimir.oltean@nxp.com>
Date: Tue, 30 May 2023 14:20:50 +0200
Message-ID: <87leh6qacd.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1685449252;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tdnAZsjhgls6Ysa0NOeGOUiZJaoZowNmTdGhfiI/C5U=;
 b=fZ8qv0Te23M/bJLqj9Tgbb6ugLulO4dv61shIIvrlyKEBW41yLyUKBn0iNHMPNtKFd2821
 hkp0tNq3kBGxqPg684mBxMVGyGc6ykkwnDkaPUujjhu9YJmZYGSaqC4W2YOG4JJzhci0Pl
 P4IyAJ+Kfg7WpBsb0U7owvrkNiMuqsJ8A91b5BUWCk5dbZmDvPJ3HtQySAozCDWlvBwRge
 JX+21vUpL52Ye+ta5dvu1tUOZcum/Yq4f3F92883L//eYymb5IRXX5WLJrGvfnt40WjdfI
 X9BiPl0QuRP43rXkBw1qFMXIWOi4i54hjjPcSJruT5/z9TtqmyblvbcbaMrMvQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1685449252;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tdnAZsjhgls6Ysa0NOeGOUiZJaoZowNmTdGhfiI/C5U=;
 b=xzMIJMURQ7ginLdQaR9ahBUEgohs1yMYQ3L6XcZKS7DdsKI8IGT0ffq+b4ML/g1j3pSCMm
 nW3/uAatyUQETvBg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=fZ8qv0Te; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=xzMIJMUR
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] net/sched: taprio:
 replace tc_taprio_qopt_offload :: enable with a "cmd" enum
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ferenc Fejes <ferenc.fejes@ericsson.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Cong Wang <xiyou.wangcong@gmail.com>,
 Gerhard Engleder <gerhard@engleder-embedded.com>, UNGLinuxDriver@microchip.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Xiaoliang Yang <xiaoliang.yang_1@nxp.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Mohammad Athari Bin Ismail <mohammad.athari.ismail@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Pranavi Somisetty <pranavi.somisetty@amd.com>,
 Jiri Pirko <jiri@resnulli.us>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Roger Quadros <rogerq@kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Michael Sit Wei Hong <michael.wei.hong.sit@intel.com>,
 Harini Katakam <harini.katakam@amd.com>, linux-kernel@vger.kernel.org,
 Jose Abreu <joabreu@synopsys.com>, Oleksij Rempel <linux@rempel-privat.de>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============4828022638765800172=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4828022638765800172==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Tue May 30 2023, Vladimir Oltean wrote:
> Inspired from struct flow_cls_offload :: cmd, in order for taprio to be
> able to report statistics (which is future work), it seems that we need
> to drill one step further with the ndo_setup_tc(TC_SETUP_QDISC_TAPRIO)
> multiplexing, and pass the command as part of the common portion of the
> muxed structure.
>
> Since we already have an "enable" variable in tc_taprio_qopt_offload,
> refactor all drivers to check for "cmd" instead of "enable", and reject
> every other command except "replace" and "destroy" - to be future proof.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---

[...]

> diff --git a/drivers/net/dsa/hirschmann/hellcreek.c b/drivers/net/dsa/hir=
schmann/hellcreek.c
> index 595a548bb0a8..af50001ccdd4 100644
> --- a/drivers/net/dsa/hirschmann/hellcreek.c
> +++ b/drivers/net/dsa/hirschmann/hellcreek.c
> @@ -1885,13 +1885,17 @@ static int hellcreek_port_setup_tc(struct dsa_swi=
tch *ds, int port,
>  	case TC_SETUP_QDISC_TAPRIO: {
>  		struct tc_taprio_qopt_offload *taprio =3D type_data;
>=20=20
> -		if (!hellcreek_validate_schedule(hellcreek, taprio))
> -			return -EOPNOTSUPP;
> +		switch (taprio->cmd) {
> +		case TAPRIO_CMD_REPLACE:
> +			if (!hellcreek_validate_schedule(hellcreek, taprio))
> +				return -EOPNOTSUPP;
>=20=20
> -		if (taprio->enable)
>  			return hellcreek_port_set_schedule(ds, port, taprio);
> -
> -		return hellcreek_port_del_schedule(ds, port);
> +		case TAPRIO_CMD_DESTROY:
> +			return hellcreek_port_del_schedule(ds, port);
> +		default:
> +			return -EOPNOTSUPP;
> +		}
>  	}
>  	default:
>  		return -EOPNOTSUPP;

Uhm, seems like the current code validates the schedule even for
removing a schedule which seems a bit odd. With your changes it looks
correct.

Acked-by: Kurt Kanzenbach <kurt@linutronix.de> # hellcreek

Anyway, the hellcreek device has Tx overrun counters per TC. Even though
they should be zero, simply because the hardware Length Aware Shaper is
enabled by default.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmR16iITHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgkgAD/sH6+pSNn/XkaMNq42jziiZnqWffmMr
Nh0eHkqZEXNIBdYtaHhMDv+UySQW2mYItvt+A5sEWzMGDphJluPslMtYdrm98yaE
LMklWNsKSD0Rp4r74n9b1nFjwSYUbdFX9juS4d/fWMlLAdxfIQ5+ADem4v+82nHa
h8STScKKSQLU2L6js/NO1vRXqlOI2Kk2dycw7PPDcCLme/GaWygQG2u8SNE7g+ij
wp/3sh4O1N6P7wIPHJoRhpr+LU5qBpRjkkE89t/7l7aj91XqnSQ1e08Pe7ryZ5wz
Uq2sVg8oDtGpmv6xciMGGpkAYrIYG/qCjLEz+w15Nq6ur9dwvrNqsyYmTUu84GqH
bSQLxYIPynAOacF7oLy2I+YVMdWJwSw/3iP63LSszGmv7igjaWk/rKRW/OnBLKNj
5q+SVPvCaMGl7PRlaEGnW2QMy4ua2CWIL0nBsJLpe26UFljXA860aytaV1zCItGg
s5GlMspLwC0OEbL8s/E+l8InjJoqIMTn7I6Pqh/G+Wk0QfCD+3vZenRo/uyOBCuc
/xOs0fevBDhGNGqbYR0y6oX/fwzSvwEfjYBb/pWFov5Vh1gh7Dbd6TG2PUq/0g9H
TEc/Qqzr3JDPy1kKkrDVnjOdxwYmFXDcQ3I3V+TmOG2hSkMgdCdZqGE0ygem6W7X
nI5BAnq+D8if4g==
=C7wP
-----END PGP SIGNATURE-----
--=-=-=--

--===============4828022638765800172==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4828022638765800172==--
