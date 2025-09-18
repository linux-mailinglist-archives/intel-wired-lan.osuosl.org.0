Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F002B85459
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 16:35:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDA474180D;
	Thu, 18 Sep 2025 14:35:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cd4YPRAEl7CS; Thu, 18 Sep 2025 14:35:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4870F417FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758206156;
	bh=NG9Iy41L3OlERbb6D3HvOfX8MkhsXZHvsfHT7rh7Otc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3NYhkDwE3dy33dt8qXweKJXtX73VVNHPjR3D3KNM4Gi37C5M/FltfNrgROXZWNC5V
	 2Gu3XXHfNJHg4fJtmLNNMS8Iomvvi/vUHe0qkneAmR19Tuj9oo1fN1bzEUFUm0R1Ct
	 L6CXjnyTwnvS/OQfnbSKGE9adH/Skc16KuHpqHI9/URTuLxEC//6ijoyrvUm3naqsx
	 aR3lGZ+jZPBJnsiydIOhOjx+hap3CjitmJK2IeA98SqaQrbUyBYLdCnmrPHd8xnz8+
	 TJ1CXx/YB3TQKWG6bO4fuFSihTLfULlcPMxrbM3EkHQm5O3PlUi8/SsVjlz+bDmbhj
	 HAn4xWNtQkLgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4870F417FE;
	Thu, 18 Sep 2025 14:35:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E94E279
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 14:35:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E685284BFF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 14:35:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lm3U5jaA4uQT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 14:35:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4EF1F84B26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4EF1F84B26
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4EF1F84B26
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 14:35:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id E1B1A601BC;
 Thu, 18 Sep 2025 14:35:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1925C4CEE7;
 Thu, 18 Sep 2025 14:35:51 +0000 (UTC)
Date: Thu, 18 Sep 2025 07:35:51 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Carolina Jubran <cjubran@nvidia.com>
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Andrew Lunn
 <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>, Pavan Chebbi
 <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>, Gal Pressman
 <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org, Donald Hunter
 <donald.hunter@gmail.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, netdev@vger.kernel.org, Yael Chemla
 <ychemla@nvidia.com>, Dragos Tatulea <dtatulea@nvidia.com>
Message-ID: <20250918073551.782c5c25@kernel.org>
In-Reply-To: <4d3a0a08-bda4-483f-a120-b1f905ec0761@nvidia.com>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
 <20250916191257.13343-4-vadim.fedorenko@linux.dev>
 <20250917174638.238fa5fc@kernel.org>
 <4d3a0a08-bda4-483f-a120-b1f905ec0761@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758206152;
 bh=NG9Iy41L3OlERbb6D3HvOfX8MkhsXZHvsfHT7rh7Otc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Y3YLy2kgJBY35maajYaDE6E3dGQ/Sg7FLvWUreos9FEhi2BiFG/sFw6F4YtZscda1
 LwZBTXf7ONLAS/wJ4646i0E155J4kZPVDzIBgkPZQ2/hHiJxwS0ZPCClXi84Ej7xhv
 GSOuXtjGUSETN7wuyE6Y5CHRSZwzVc86hxAafylEFRSF0P3FR5KQrenXc18zlmMisr
 JDTTn1YaISp0NoRx/dc7FutAPqRZRrQrxON8pkBc2M0nFtdGIG7ONisDAKUybyPeNY
 wLXLeSeptK8Ffg4gtxUnuO3PebbWTgSdb/fdZTP5oqjRyvHYcEsnXPFsuNnwb5Nqkj
 wWrJbBGOL/huQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Y3YLy2kg
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 3/4] net/mlx5e: Add logic
 to read RS-FEC histogram bin ranges from PPHCR
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

On Thu, 18 Sep 2025 17:25:40 +0300 Carolina Jubran wrote:
> > why does MLX5E_FEC_RS_HIST_MAX exist?
> > We care that bins_cnt <=3D ETHTOOL_FEC_HIST_MAX - 1
> > or is there something in the interface that hardcodes 16? =20
>=20
> My intention was to keep mlx5 capped at 16 even if ethtool raises its max.
> We=E2=80=99ll only increase this once we know the device should expose mo=
re than 16.
> Since our HW has internal modes that can report more than 16 bins, this=20
> ensures we don=E2=80=99t accidentally expose them if ethtool increases it=
s max.

But why?
