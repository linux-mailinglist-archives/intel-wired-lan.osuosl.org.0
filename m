Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50022A694B5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 17:21:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBC038127F;
	Wed, 19 Mar 2025 16:21:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IvLECb8jQSWf; Wed, 19 Mar 2025 16:21:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A3DE81293
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742401306;
	bh=MnYXiDZjqKVxg7WWziHarX+d0hjIdExLZOQ0h/DFHUc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fNJoaS012Sz338GOutTv7HHQb04pURQGWo/kvIklj1xvh9D9vuM5448VRhK91eeK2
	 L1Mc99w580OsDpiwy3c7ILwUmHeHOSj2Q7P1Tqn4MqbQ6I2R8/mDmbF5mpu6n8OGxB
	 d2uzN4T2S56YudI8FjHe68rA54JiwsresKYMwsDKXvY87O11BxNzNx56AmQGfld+BF
	 Z6A0gd5i2onlXe8sGqDz+A9VoB/Uetocn8y2/lyFWkxPV2L+i9HeLnUNzubkgK/Ws2
	 o5nkFBtgQkSoHvGGVdni1GSww2sgBZfi+jktEUfjStXUdKJMR6Jjc4O/oU8GNcer7G
	 64NiNihg6jPeA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A3DE81293;
	Wed, 19 Mar 2025 16:21:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BCC10CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 16:21:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9D800401AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 16:21:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1KZfFX1rJaTQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 16:21:43 +0000 (UTC)
X-Greylist: delayed 303 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 19 Mar 2025 16:21:42 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 08AC340134
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08AC340134
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.64.228;
 helo=mta-64-228.siemens.flowmailer.net;
 envelope-from=fm-68982-202503191616365b00ba21298230e128-pdl1cj@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-64-228.siemens.flowmailer.net
 (mta-64-228.siemens.flowmailer.net [185.136.64.228])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 08AC340134
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 16:21:42 +0000 (UTC)
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id
 202503191616365b00ba21298230e128
 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 17:16:36 +0100
Message-ID: <d4b15c726e7c2219eb09b094ae9fc1299fae51e8.camel@siemens.com>
From: Florian Bezdeka <florian.bezdeka@siemens.com>
To: Zdenek Bouska <zdenek.bouska@siemens.com>, Tony Nguyen	
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>,  Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet	
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni	
 <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann	
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John
 Fastabend <john.fastabend@gmail.com>, Andre Guedes
 <andre.guedes@intel.com>, Vedang Patel	 <vedang.patel@intel.com>, Maciej
 Fijalkowski <maciej.fijalkowski@intel.com>,  Jithu Joseph
 <jithu.joseph@intel.com>, Song Yoong Siang <yoong.siang.song@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Wed, 19 Mar 2025 17:16:35 +0100
In-Reply-To: <20250319-igc-fix-tx-zero-copy-drops-v1-1-d90bc63a4dc4@siemens.com>
References: <20250319-igc-fix-tx-zero-copy-drops-v1-1-d90bc63a4dc4@siemens.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-68982:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm1; 
 d=siemens.com; i=florian.bezdeka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=MnYXiDZjqKVxg7WWziHarX+d0hjIdExLZOQ0h/DFHUc=;
 b=Mzb/lx92eUDI5Hqp5dDM//cwC+4G8p3xWxToy1ra9+s3tvGwKjReMavb84jkoBPqSFojJx
 iCfcdQ2Ma6PYADu89VDoFl/i0peM7GIrPhJ3mxjCt0zGhO4Rt6pu8OSkLul+Cv7m69TICrBa
 JQ8ZLUGfFbZs+kAbYrcHzwzrs9CjUd2rZ9vWmrQ19TuGFCEtpWlSTEunSn1e5tBrLThG2HEb
 zZrWr2vMw3BlDwssO7ZLFaDmintNy2cBw+yPMXEwgG2wfZ3IxaJpoOyjg46RI1nzC0u+m0Lx
 rx8m9vOxKB9eIpa+oRruokQMKhZvbgw0DSRFSFZZXi1aLKOPSFDMQdLQ==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=florian.bezdeka@siemens.com
 header.a=rsa-sha256 header.s=fm1 header.b=Mzb/lx92
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: Fix TX drops in XDP ZC
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

On Wed, 2025-03-19 at 15:18 +0100, Zdenek Bouska wrote:
> Fixes TX frame drops in AF_XDP zero copy mode when budget < 4.
> xsk_tx_peek_desc() consumed TX frame and it was ignored because of
> low budget. Not even AF_XDP completion was done for dropped frames.
>=20
> It can be reproduced on i226 by sending 100000x 60 B frames with
> launch time set to minimal IPG (672 ns between starts of frames)
> on 1Gbit/s. Always 1026 frames are not sent and are missing a
> completion.
>=20
> Fixes: 9acf59a752d4c ("igc: Enable TX via AF_XDP zero-copy")
> Signed-off-by: Zdenek Bouska <zdenek.bouska@siemens.com>

Reviewed-by: Florian Bezdeka <florian.bezdeka@siemens.com>

> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethe=
rnet/intel/igc/igc_main.c
> index 472f009630c9..f2e0a30a3497 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -3042,7 +3042,7 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
>  	 * descriptors. Therefore, to be safe, we always ensure we have at leas=
t
>  	 * 4 descriptors available.
>  	 */
> -	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget >=3D 4) {
> +	while (budget >=3D 4 && xsk_tx_peek_desc(pool, &xdp_desc)) {
>  		struct igc_metadata_request meta_req;
>  		struct xsk_tx_metadata *meta =3D NULL;
>  		struct igc_tx_buffer *bi;
>=20
> ---
> base-commit: 8ef890df4031121a94407c84659125cbccd3fdbe
> change-id: 20250310-igc-fix-tx-zero-copy-drops-1c4a81441033
>=20
> Best regards,
> --=20
> Zdenek Bouska
>=20
> Siemens, s.r.o.
> Foundational Technologies

