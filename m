Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D490E571F6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2019 21:44:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5CB03203A0;
	Wed, 26 Jun 2019 19:44:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ZLeGCQpZpiP; Wed, 26 Jun 2019 19:44:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 41E5C21538;
	Wed, 26 Jun 2019 19:44:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 05FB51BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 19:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 020E787D57
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 19:44:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yXQUqLsKWwb0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2019 19:44:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5616F87D56
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 19:44:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 12:44:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,421,1557212400"; 
 d="asc'?scan'208";a="245538021"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by orsmga001.jf.intel.com with ESMTP; 26 Jun 2019 12:44:29 -0700
Message-ID: <4f0681155a6057bf40e281bfc251aba60c296201.camel@intel.com>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: Vedang Patel <vedang.patel@intel.com>, netdev@vger.kernel.org
Date: Wed, 26 Jun 2019 12:44:59 -0700
In-Reply-To: <1561500439-30276-2-git-send-email-vedang.patel@intel.com>
References: <1561500439-30276-1-git-send-email-vedang.patel@intel.com>
 <1561500439-30276-2-git-send-email-vedang.patel@intel.com>
Organization: Intel
User-Agent: Evolution 3.32.3 (3.32.3-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/8] igb: clear out
 skb->tstamp after reading the txtime
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
Reply-To: jeffrey.t.kirsher@intel.com
Cc: jiri@resnulli.us, l@dorileo.org, sergei.shtylyov@cogentembedded.com,
 jakub.kicinski@netronome.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com,
 eric.dumazet@gmail.com, davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============6424788401985175641=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============6424788401985175641==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-azZSYmfVbNnCAR9yg4Im"


--=-azZSYmfVbNnCAR9yg4Im
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-06-25 at 15:07 -0700, Vedang Patel wrote:
> If a packet which is utilizing the launchtime feature (via SO_TXTIME
> socket
> option) also requests the hardware transmit timestamp, the hardware
> timestamp is not delivered to the userspace. This is because the
> value in
> skb->tstamp is mistaken as the software timestamp.
>=20
> Applications, like ptp4l, request a hardware timestamp by setting the
> SOF_TIMESTAMPING_TX_HARDWARE socket option. Whenever a new timestamp
> is
> detected by the driver (this work is done in igb_ptp_tx_work() which
> calls
> igb_ptp_tx_hwtstamps() in igb_ptp.c[1]), it will queue the timestamp
> in the
> ERR_QUEUE for the userspace to read. When the userspace is ready, it
> will
> issue a recvmsg() call to collect this timestamp.  The problem is in
> this
> recvmsg() call. If the skb->tstamp is not cleared out, it will be
> interpreted as a software timestamp and the hardware tx timestamp
> will not
> be successfully sent to the userspace. Look at skb_is_swtx_tstamp()
> and the
> callee function __sock_recv_timestamp() in net/socket.c for more
> details.
>=20
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 1 +
>  1 file changed, 1 insertion(+)

Since this fix is really not needed for the rest of the patch series,
if you have to do another version of the series, can you drop this
patch from any future version?  I don't want to keep spinning my
validation team on a updated version of this patch, that is not really
being updated.

I plan to take this version of the patch and will hold onto it for my
next 1GbE updates to Dave.

--=-azZSYmfVbNnCAR9yg4Im
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiTyZWz+nnTrOJ1LZ5W/vlVpL7c4FAl0TyzsACgkQ5W/vlVpL
7c5J2hAAifwAwmTbjWs8qvmait61oc1eR8LKSgjOnkQRejuOXV39ziObqJIDnY2D
Ml2Q7K7qHiHkPvRj3asC/XdUAnjJn0n/se2vdU6XhRx8ZyvpG+/xVk4fvNkSnCA6
0vUFSekauyuWN15+CN98U7Fcdwqhb4fdsKKr4CFtjexHrio+0uptGV7OUvmziF5R
b/0kitLOrnnMEzjDYbDQnTrafwLcFcEkcnV9fPCToZD0Sq0cSD3YYt2E/CypYQy8
Ik9D8aJc/eGWk3jxWNd2l80O7+tZ2sWEeccC8kRw9oPnw1JP7hJl815vY9nesHv5
Wv4hm++nqa+lbma33u8eoCjnOemy4lqcyLtAO1ejBegTtYZ/SPnOxduXfbWaIyJr
HbBKdFRTv3BgEokImjsur8IYGXjAzcHiaRHCZCSVigwfQiGQHsMWs9qdXqh4HUVB
Anoq1jUQulRP5W6dPkWd/O1cwzwP7HjsvGL4r/LEkYrvXNcCJHyw9nQbsWdBLm/y
sLYNlR/yYhznK9GI5S4PKqTu5uBwCizKgljsaIL/eq5ggWAflBty2+w7Q5O7W/mF
32OQf7xQJSBC+hJYxQ/u0XOsfqnqXzxRKX/qUrKyjnA1cpQmiq9rN8C+Hd1D67pk
QalevgsLEZzBnAOhOTr2xj4REdUFloG1QgQ/SnrDwuEJaz1FiuI=
=pMYP
-----END PGP SIGNATURE-----

--=-azZSYmfVbNnCAR9yg4Im--


--===============6424788401985175641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6424788401985175641==--

