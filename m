Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2EEB161B8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 15:45:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F137782925;
	Wed, 30 Jul 2025 13:45:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JsoXjwA5AwQn; Wed, 30 Jul 2025 13:45:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 421EE82A29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753883125;
	bh=99cxL8htYRt+yGKbu/4cFc974KX5UESL7l+AmDSxrnM=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OUAJmBTFcfzIfXXicHHyNdbcaFBPf01kRPocSBYVTa5INV1g3n4Q/qmOWSJvUwiep
	 WyVY8GBEnPckFtgSatFOASe8bcTDR44uifd/THfKazGmmvffkUixx16h2T0Z14cbv+
	 etetHNvD7zC2vVicRyLZgn3SgKqL5iaHfSd6iB4tZIYtofKEth6WDYXJzA/c13CdNH
	 uqsyXX5QshB6xgB1+BfDf+INusUFXYncremy+4rgUXnt7ohpwovrnnfYqq50fcdyg/
	 sqG71wggP14WZqQDMSEBFgjS4bWTl7T44oUu3Tvs1evPkflFMRlMZ08qk3MOtBnTmZ
	 qlqmseM2ZkgwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 421EE82A29;
	Wed, 30 Jul 2025 13:45:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F804186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 13:45:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 00E7F4080A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 13:45:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yUTpc64Gwwy7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 13:45:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5DF9640763
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DF9640763
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5DF9640763
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 13:45:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id D083D6113A;
 Wed, 30 Jul 2025 13:45:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31CABC4CEE7;
 Wed, 30 Jul 2025 13:45:20 +0000 (UTC)
Date: Wed, 30 Jul 2025 06:45:19 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Vadim Fedorenko <vadfed@meta.com>, Andrew Lunn <andrew@lunn.ch>, Michael
 Chan <michael.chan@broadcom.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Tariq Toukan <tariqt@nvidia.com>, Gal Pressman <gal@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Donald Hunter <donald.hunter@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
Message-ID: <20250730064519.38abc0c3@kernel.org>
In-Reply-To: <15ca2392-1dbd-4f4d-a478-3d8edc32bc90@linux.dev>
References: <20250729102354.771859-1-vadfed@meta.com>
 <20250729184529.149be2c3@kernel.org>
 <15ca2392-1dbd-4f4d-a478-3d8edc32bc90@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1753883120;
 bh=13ObknUHmABT+w8CaNxwkbPmI3GtDczqQN2CCJN7YjM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=t83Oy5sCfDdc9Dduz4fVHZN9v1uyS2a+9XcuIuewQvegVOzJdk+irdN3AUcz5Am9z
 zcHu1jDHNd7QyOGcsNFtj+VfnaHI5rh+I0SjxHTIu+r1axAcnO1ajZVwn8lVzmjUER
 yu7WfvFObbDxkmtAmdOY54SA795arO5Ve9PkAoprKsHq68x2oGiKM1omVFXJpTm+av
 VTBpK1dojJ7YLSsGxUS88pqr+KlUpYP4wg3hxqMNVV0ibzBKxMnNucwF5KSJKpMAnA
 C3KKSawsl3j2EATteo0JYdCS6JoXt4VfRHleaJnfks3nzW6VroXzBbBfS2ZdDzjWEZ
 lcvaQ2jKwEQpQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=t83Oy5sC
Subject: Re: [Intel-wired-lan] [RFC PATCH] ethtool: add FEC bins histogramm
 report
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

On Wed, 30 Jul 2025 10:22:36 +0100 Vadim Fedorenko wrote:
> >> +    name: fec-hist
> >> +    subset-of: fec-stat =20
> >=20
> > no need to make this a subset, better to make it its own attr set =20
>=20
> like a set for general histogram? or still fec-specific?

You can make it a general histogram, I guess =F0=9F=A4=94=EF=B8=8F
No strong preference.

> >> +    attributes:
> >> +      -
> >> +        name: fec-hist-bin-low
> >> +      -
> >> +        name: fec-hist-bin-high
> >> +      -
> >> +        name: fec-hist-bin-val
> >>     -
> >>       name: fec
> >>       attr-cnt-name: __ethtool-a-fec-cnt =20
> >  =20
> >> +static const struct ethtool_fec_hist_range netdevsim_fec_ranges[] =3D=
 {
> >> +	{  0,  0},
> >> +	{  1,  3},
> >> +	{  4,  7},
> >> +	{ -1, -1}
> >> +}; =20
> >=20
> > Let's add a define for the terminating element? =20
>=20
> I believe it's about (-1, -1) case. If we end up using (0, 0) then there
> is no need to define anything, right?

Yup, 0,0 is better written as {} so no need for a define.
