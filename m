Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69100B85AF8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 17:40:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E02D605CE;
	Thu, 18 Sep 2025 15:40:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dxOM8satecqQ; Thu, 18 Sep 2025 15:40:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7F9A605D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758210006;
	bh=T6BZ74K7NAO2zW7jZ6vG89Tm0AtcEgvrfsAlTbl3HIo=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l/mQCdMSo+Tm+TMy0MfWEb8VpKyDjOUbNNrfEKV9UfTfz/OQgKqofvzM+oK8dbFcu
	 o5dvaSBJiMlsNebIKIs6FvY3vyh00DQfHWL15rW8MMnfRJfABeVq6tsIqExI1IKJKc
	 3OYh5NhP3dast9Tb55T49JhKWpmknZzO/OUvQENTsb7GAYx3KmlDp/ff7R5hXAhlfC
	 4YNaVV8eGWkBpVtIQx8td1bRSwPgTWqd08VpAxdiXQM+DkSMGTJvxQn0dW1v1Ul+Km
	 xAdwvq9BSP0sBCLykp4bU6W0A3T7hVa3Iaw9t1PNZn3wxpSXilNTd4Dlz304Dg7FJu
	 74NwRYHNzvx2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7F9A605D5;
	Thu, 18 Sep 2025 15:40:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C381F279
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 15:40:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A9D724008F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 15:40:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 15lImUWTQS_C for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 15:40:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 029DB40061
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 029DB40061
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 029DB40061
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 15:40:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 20281601D5;
 Thu, 18 Sep 2025 15:40:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2E52C4CEE7;
 Thu, 18 Sep 2025 15:40:01 +0000 (UTC)
Date: Thu, 18 Sep 2025 08:40:00 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Carolina Jubran <cjubran@nvidia.com>
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Andrew Lunn
 <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>, Pavan Chebbi
 <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>, Gal Pressman
 <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org, Donald Hunter
 <donald.hunter@gmail.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, netdev@vger.kernel.org, Yael Chemla
 <ychemla@nvidia.com>, Dragos Tatulea <dtatulea@nvidia.com>
Message-ID: <20250918084000.1b4fb4f4@kernel.org>
In-Reply-To: <76611a9c-4c53-40a2-96c1-e1cf5b211611@nvidia.com>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
 <20250916191257.13343-4-vadim.fedorenko@linux.dev>
 <20250917174638.238fa5fc@kernel.org>
 <4d3a0a08-bda4-483f-a120-b1f905ec0761@nvidia.com>
 <20250918073551.782c5c25@kernel.org>
 <76611a9c-4c53-40a2-96c1-e1cf5b211611@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758210002;
 bh=T6BZ74K7NAO2zW7jZ6vG89Tm0AtcEgvrfsAlTbl3HIo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IHflm/A+vpAygcZIfolMpJH+YUURnj7y5T6HcWGcDXH64mmV1l/YpMEibtls5X7lS
 J6cNRah6vwkTIp7m4R1YJaa44DFOBwjZHQMcZ2NviyLqJOi2mpAkNzLGT8VbvFtpOI
 zDUdQyLdPnezvUNMcb9w6FWtJc3ru6HRszriY3sA/heXQ3/Wj0fCIihYYeJu3345l0
 1W/rJVUIOLIOj23mavEohQypaXMGCFpBNV5taxSNeATcK+l2nBMGjjeG1UEBTs81Ct
 qeXTG3ma4u9nA4E8Ay+rTIGVv/Ds8S7NJlfVEMRgb9IOTmuklcxTXhlfUOPsD1RKVq
 ysR7Rf1nX+aAA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=IHflm/A+
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

On Thu, 18 Sep 2025 18:16:14 +0300 Carolina Jubran wrote:
> On 18/09/2025 17:35, Jakub Kicinski wrote:
> > On Thu, 18 Sep 2025 17:25:40 +0300 Carolina Jubran wrote: =20
> >>> why does MLX5E_FEC_RS_HIST_MAX exist?
> >>> We care that bins_cnt <=3D ETHTOOL_FEC_HIST_MAX - 1
> >>> or is there something in the interface that hardcodes 16? =20
> >> My intention was to keep mlx5 capped at 16 even if ethtool raises its =
max.
> >> We=E2=80=99ll only increase this once we know the device should expose=
 more than 16.
> >> Since our HW has internal modes that can report more than 16 bins, this
> >> ensures we don=E2=80=99t accidentally expose them if ethtool increases=
 its max. =20
> > But why? =20
>=20
> Because currently those modes shouldn't be exposed for ethernet.

I understand that the modes should not be exposed.
I don't get why this has anything to do with the number of bins.
Does the FW hardcode that the non-Ethernet modes use bins >=3D16?
When you say "internal modes that can report more than 16 bins"
it sounds like it uses bins starting from 0, e.g. 0..31.
