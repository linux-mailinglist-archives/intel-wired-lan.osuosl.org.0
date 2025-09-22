Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E66B8FF30
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Sep 2025 12:15:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6F7D61767;
	Mon, 22 Sep 2025 10:15:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EGM-jMZS6KEF; Mon, 22 Sep 2025 10:15:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B244B61755
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758536103;
	bh=PvS7pnVBJGP/Kboa7ZTklGo2lHDaQKSkJiAjzSui8oo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yoi+HlNN0gjZN/+/YsnT1YxsOPnTbRi8cKv1vjkvEJZMXgWU2Tzy4D1+eti7Qtuha
	 2jm61jlTYVdpQUog2C+6c3DphktClBPAkQ4rs+KVqyPeBuwl4OliW/UDWAz7Iwwa8P
	 jke2o6MzBmN1LMSWDKWpA6bAmH+z92TvK1708uKRk/fdq+8y+/Agjb0BXRuwXPnOMj
	 XsenHc3trpSJWSMQz/N8uRs2Gjf6J4uw/eUd55vRovU70pXapKc0yvzlnSkLf+oPoA
	 yc75NW2b0RJK2OU9lknNlyzAP7E81v1ZTzRJZcjUk74KnBG7SXHWSJt2LRcECExfx4
	 ITu0Hy5D3h5Sg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B244B61755;
	Mon, 22 Sep 2025 10:15:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 22BD0116C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 10:15:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 142C1614E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 10:15:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wOLDvmN_6q6Y for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Sep 2025 10:15:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.174;
 helo=out-174.mta1.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D215261745
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D215261745
Received: from out-174.mta1.migadu.com (out-174.mta1.migadu.com
 [95.215.58.174])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D215261745
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Sep 2025 10:14:58 +0000 (UTC)
Message-ID: <2e8aaa9b-f783-4fb2-89b5-8e0978edea33@linux.dev>
Date: Mon, 22 Sep 2025 11:14:51 +0100
MIME-Version: 1.0
To: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>, Carolina Jubran
 <cjubran@nvidia.com>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
References: <20250919194651.2164987-1-vadim.fedorenko@linux.dev>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250919194651.2164987-1-vadim.fedorenko@linux.dev>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1758536095;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PvS7pnVBJGP/Kboa7ZTklGo2lHDaQKSkJiAjzSui8oo=;
 b=vikacqF4pAYnYuetD7En5rb6kSY9PmHR2G2CcvhCmFVb4UDNQaGM3RU2ClvJHMeH1M+fKw
 zQAZYCZt0NLuIMaBfm+OU5XvnP3u+juPdKsblQ3YHI0fCBfWW8UOhDj8uUWVNg9Nx5+C0g
 v2abAQoZWifPHlGai7dI59vId0Ex7B0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=vikacqF4
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 0/5] add FEC bins
 histogram report via ethtool
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

On 19/09/2025 20:46, Vadim Fedorenko wrote:
> IEEE 802.3ck-2022 defines counters for FEC bins and 802.3df-2024
> clarifies it a bit further. Implement reporting interface through as
> addition to FEC stats available in ethtool. NetDevSim driver has simple
> implementation as an example while mlx5 has much more complex solution.
> 
> The example query is the same as usual FEC statistics while the answer
> is a bit more verbose:
> 
> [vmuser@archvm9 linux]$ ./tools/net/ynl/pyynl/cli.py --spec Documentation/netlink/specs/ethtool.yaml --do fec-get --json '{"header":{"dev-index": 10, "flags": 4}}'
> {'auto': 0,
>   'header': {'dev-index': 10, 'dev-name': 'eni10np1'},
>   'modes': {'bits': {}, 'nomask': True, 'size': 121},
>   'stats': {'corr-bits': [],
>             'corrected': [123],
>             'hist': [{'bin-high': 0,
>                       'bin-low': 0,
>                       'bin-val': 445,
>                       'bin-val-per-lane': [125, 120, 100, 100]},
>                      {'bin-high': 3, 'bin-low': 1, 'bin-val': 12},
>                      {'bin-high': 7,
>                       'bin-low': 4,
>                       'bin-val': 2,
>                       'bin-val-per-lane': [2, 0, 0, 0]}],
>             'uncorr': [4]}}
> 
> v3 -> v4:
> * update spec to avoid using underscores
> * make core accumulate per-lane errors into bin error counter
> * adjust wording in Documentation
> * improve FEC type check in mlx5
> * add selftest to do sanity check of reported histogram
> * partially carry-over Rb tags from Aleksandr because of logical changes
> v3 Link - https://lore.kernel.org/netdev/20250916191257.13343-1-vadim.fedorenko@linux.dev/
> v2 -> v3:
> * fix yaml spec to use binary array for histogram per-lane values
> * fix spelling
> v1 -> v2:
> * fix memset size of FEC histogram bins in mlx5
> * adjust fbnic driver FEC stats callback
> 
> Links to RFC discussions:
> v1 - https://lore.kernel.org/netdev/20250729102354.771859-1-vadfed@meta.com/
> v2 - https://lore.kernel.org/netdev/20250731231019.1809172-1-vadfed@meta.com/
> v3 - https://lore.kernel.org/netdev/20250802063024.2423022-1-vadfed@meta.com/
> v4 - https://lore.kernel.org/netdev/20250807155924.2272507-1-vadfed@meta.com/
> v5 - https://lore.kernel.org/netdev/20250815132729.2251597-1-vadfed@meta.com/
> 
> Carolina Jubran (3):
>    net/mlx5e: Don't query FEC statistics when FEC is disabled
>    net/mlx5e: Add logic to read RS-FEC histogram bin ranges from PPHCR
>    net/mlx5e: Report RS-FEC histogram statistics via ethtool
> 
> Vadim Fedorenko (2):
>    ethtool: add FEC bins histogram report
>    selftests: net-drv: stats: sanity check FEC histogram
> 
>   Documentation/netlink/specs/ethtool.yaml      |  26 ++++
>   Documentation/networking/ethtool-netlink.rst  |   5 +
>   .../net/ethernet/broadcom/bnxt/bnxt_ethtool.c |   3 +-
>   .../ethernet/fungible/funeth/funeth_ethtool.c |   3 +-
>   .../ethernet/hisilicon/hns3/hns3_ethtool.c    |   3 +-
>   drivers/net/ethernet/intel/ice/ice_ethtool.c  |   4 +-
>   .../marvell/octeontx2/nic/otx2_ethtool.c      |   3 +-
>   drivers/net/ethernet/mellanox/mlx5/core/en.h  |   1 +
>   .../ethernet/mellanox/mlx5/core/en_ethtool.c  |   5 +-
>   .../net/ethernet/mellanox/mlx5/core/en_main.c |   8 ++
>   .../ethernet/mellanox/mlx5/core/en_stats.c    | 125 +++++++++++++++++-
>   .../ethernet/mellanox/mlx5/core/en_stats.h    |   3 +-
>   .../net/ethernet/meta/fbnic/fbnic_ethtool.c   |   3 +-
>   drivers/net/ethernet/sfc/ethtool.c            |   3 +-
>   drivers/net/ethernet/sfc/siena/ethtool.c      |   3 +-
>   drivers/net/netdevsim/ethtool.c               |  25 +++-
>   include/linux/ethtool.h                       |  25 +++-
>   .../uapi/linux/ethtool_netlink_generated.h    |  11 ++
>   net/ethtool/fec.c                             |  75 ++++++++++-
>   tools/testing/selftests/drivers/net/stats.py  |  35 ++++-
>   20 files changed, 345 insertions(+), 24 deletions(-)

selftest needs fix in error handling path, v5 is on the way---
pw-bot: cr
