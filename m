Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3F59BA7E7
	for <lists+intel-wired-lan@lfdr.de>; Sun,  3 Nov 2024 21:21:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5ECB40248;
	Sun,  3 Nov 2024 20:21:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b1-gzQsGzvnF; Sun,  3 Nov 2024 20:21:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3CDE4024C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730665306;
	bh=8Ukc+M8CZYwlrpkjWIRwsZhzje/hVh2caYXefeqy6UU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LSjU8FCwMOrBcgKdkylkyaCLsKWl9RxhDNsHHUSDsIXlzFFIYgFTa6S2FtNuMYNrj
	 NjmZrA7PeXG/Wsto9lSzrkaJ1LKc9GngIrn4GhbvzWSKJ4p7iTPw0WADwxqsDSVT9R
	 t4vfazzt0OeTP1tWHmjqGjmGQDQlqQlh7eDc1c2lM5365ai1Z713wOH7sUJol0Ajrq
	 QrKuWUUf+Iii9cSvo1MeDKaZKx/s3zmV4DV+7jl6T+mJGRtzjyUs1kGLWgMoJ6XukS
	 GpD04Ug4wgLCH2HKtf+F6PSmS0qNBlQf5a+lQrcSTMzRTKXSNI7xcl3WEG0EXLqj7n
	 fEFX/5GlZ9PEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3CDE4024C;
	Sun,  3 Nov 2024 20:21:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EF4A1723
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Nov 2024 20:21:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DC909605C9
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Nov 2024 20:21:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0hHDrhwfndk6 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  3 Nov 2024 20:21:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 238F5605C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 238F5605C4
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 238F5605C4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  3 Nov 2024 20:21:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id D59F8A41CBB;
 Sun,  3 Nov 2024 20:19:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD122C4CECD;
 Sun,  3 Nov 2024 20:21:39 +0000 (UTC)
Date: Sun, 3 Nov 2024 12:21:38 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Caleb Sander Mateos <csander@purestorage.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Arthur Kiyanovski
 <akiyano@amazon.com>, Brett Creeley <brett.creeley@amd.com>, Broadcom
 internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>, Claudiu Manoil
 <claudiu.manoil@nxp.com>, David Arinzon <darinzon@amazon.com>, "David S.
 Miller" <davem@davemloft.net>, Doug Berger <opendmb@gmail.com>, Eric
 Dumazet <edumazet@google.com>, Eugenio =?UTF-8?B?UMOpcmV6?=
 <eperezma@redhat.com>, Felix Fietkau <nbd@nbd.name>, Florian Fainelli
 <florian.fainelli@broadcom.com>, Geetha sowjanya <gakula@marvell.com>,
 hariprasad <hkelam@marvell.com>, Jason Wang <jasowang@redhat.com>, Jonathan
 Corbet <corbet@lwn.net>, Leon Romanovsky <leon@kernel.org>, Lorenzo
 Bianconi <lorenzo@kernel.org>, Louis Peens <louis.peens@corigine.com>, Mark
 Lee <Mark-MC.Lee@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Michael Chan <michael.chan@broadcom.com>, "Michael S. Tsirkin"
 <mst@redhat.com>, Noam Dagan <ndagan@amazon.com>, Paolo Abeni
 <pabeni@redhat.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Roy
 Pledge <Roy.Pledge@nxp.com>, Saeed Bishara <saeedb@amazon.com>, Saeed
 Mahameed <saeedm@nvidia.com>, Sean Wang <sean.wang@mediatek.com>, Shannon
 Nelson <shannon.nelson@amd.com>, Shay Agroskin <shayagr@amazon.com>, Simon
 Horman <horms@kernel.org>, Subbaraya Sundeep <sbhatta@marvell.com>, Sunil
 Goutham <sgoutham@marvell.com>, Tal Gilboa <talgi@nvidia.com>, Tariq Toukan
 <tariqt@nvidia.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Vladimir
 Oltean <vladimir.oltean@nxp.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 oss-drivers@corigine.com, virtualization@lists.linux.dev
Message-ID: <20241103122138.6d0d62f6@kernel.org>
In-Reply-To: <20241031002326.3426181-2-csander@purestorage.com>
References: <20241031002326.3426181-1-csander@purestorage.com>
 <20241031002326.3426181-2-csander@purestorage.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1730665301;
 bh=8Ukc+M8CZYwlrpkjWIRwsZhzje/hVh2caYXefeqy6UU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hbPRZL054fJi30LppOH0pHtwRISF1ZSCdVrUtYIu0ppNa8ioEdfJ/dm3YYfLz3NtM
 FDDzikzL4fj4/2tA7J1E2L9mrUIuRitDbxRchOPRHLYcpY+eVOIJJUF/2sw3Nv+KC/
 MkKYL5CoKKRrOmeBncDVf/hgEJBxRSJtwv+KWf1H5OACVRVjFtm4ZhiLiklw82+0AM
 m+Qj20+jgyR1zDpVDBdBJVbyxI0vaXCMLviA7xAjCakdiPWw7LkGP1wzsNIVt0xcPl
 p/Kmu0WgZ75pRzFzZgf6IDZpKyq49AkrdXRhOn5GT7MpWMd7DiNlI4obZ4xpQ3JFue
 qRzwHjaAGgKpw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=hbPRZL05
Subject: Re: [Intel-wired-lan] [resend PATCH 2/2] dim: pass dim_sample to
 net_dim() by reference
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

On Wed, 30 Oct 2024 18:23:26 -0600 Caleb Sander Mateos wrote:
> In a heavy TCP workload, mlx5e_handle_rx_dim() consumes 3% of CPU time,
> 94% of which is attributed to the first push instruction to copy
> dim_sample on the stack for the call to net_dim():

Change itself looks fine, so we can apply, but this seems surprising.
Are you sure this is not just some measurement problem?
Do you see 3% higher PPS with this change applied?
