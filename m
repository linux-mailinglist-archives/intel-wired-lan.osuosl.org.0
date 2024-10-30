Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CABEE9B70EC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2024 01:13:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 418A98161D;
	Thu, 31 Oct 2024 00:12:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UkzPmre7fZk8; Thu, 31 Oct 2024 00:12:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 84B6281638
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730333578;
	bh=1gQ9k41W3wMLr1E72MP7qlXIkEHrg2DS7W0/qcJ6WFE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KiXx/VEd3eeYeOLqYPhYM6jz7ip2Z7xp+BwwGxuA563IqTEFe4zMFhPBWTKiIaQko
	 OAS7h5fHB01UBW02XP05/Ka772y72ltYVCKAjp9EX0UpKMWQsqqwyDLBqjKfx6086t
	 LicZU6s6h4YJkCEY6ThT1jD7Rqvjzxhl71P5+z45ooR/v1/GNqv6Dbb7VskWepPold
	 BOVeERTSkUfCkO2FzQKXTFP2gtN4qLrqCTkMPfI/v5262g8Zzo3wrVekkO6fC5JoSC
	 plOH6TTUGMeQZPfeaRe++bCVPJg5EMRVSYDFI7ec2jKH4Hy1G55o4NmJtryCAGWSFr
	 X7LXO9/+YkiEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84B6281638;
	Thu, 31 Oct 2024 00:12:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 23A575E50
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 00:12:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 11B4D40E92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 00:12:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hzGeBySNzs61 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2024 00:12:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1EAF240E85
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1EAF240E85
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1EAF240E85
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 00:12:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9B36F5C6FFA;
 Thu, 31 Oct 2024 00:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEA34C4CEF0;
 Wed, 30 Oct 2024 23:48:06 +0000 (UTC)
Date: Wed, 30 Oct 2024 16:48:05 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Caleb Sander Mateos <csander@purestorage.com>
Cc: Tal Gilboa <talgi@nvidia.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon
 Horman <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shay Agroskin
 <shayagr@amazon.com>, Arthur Kiyanovski <akiyano@amazon.com>, David Arinzon
 <darinzon@amazon.com>, Noam Dagan <ndagan@amazon.com>, Saeed Bishara
 <saeedb@amazon.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Florian Fainelli
 <florian.fainelli@broadcom.com>, Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Michael Chan
 <michael.chan@broadcom.com>, Doug Berger <opendmb@gmail.com>, Claudiu
 Manoil <claudiu.manoil@nxp.com>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Jian Shen <shenjian15@huawei.com>, Salil Mehta <salil.mehta@huawei.com>,
 Jijie Shao <shaojijie@huawei.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Sunil Goutham <sgoutham@marvell.com>,
 Geetha sowjanya <gakula@marvell.com>, Subbaraya Sundeep
 <sbhatta@marvell.com>, hariprasad <hkelam@marvell.com>, Felix Fietkau
 <nbd@nbd.name>, Sean Wang <sean.wang@mediatek.com>, Mark Lee
 <Mark-MC.Lee@mediatek.com>, Lorenzo Bianconi <lorenzo@kernel.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Saeed Mahameed
 <saeedm@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>, Leon Romanovsky
 <leon@kernel.org>, Louis Peens <louis.peens@corigine.com>, Shannon Nelson
 <shannon.nelson@amd.com>, Brett Creeley <brett.creeley@amd.com>, "Michael
 S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Xuan Zhuo
 <xuanzhuo@linux.alibaba.com>, Eugenio =?UTF-8?B?UMOpcmV6?=
 <eperezma@redhat.com>, Roy Pledge <Roy.Pledge@nxp.com>, Christophe Leroy
 <christophe.leroy@csgroup.eu>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-rdma@vger.kernel.org,
 oss-drivers@corigine.com, virtualization@lists.linux.dev,
 linuxppc-dev@lists.ozlabs.org
Message-ID: <20241030164805.40408945@kernel.org>
In-Reply-To: <20241030194914.3268865-2-csander@purestorage.com>
References: <20241030194914.3268865-1-csander@purestorage.com>
 <20241030194914.3268865-2-csander@purestorage.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1730332089;
 bh=Q0wXyQGBlYip/F0j6/woGSioAXOUzqyfPJJC3tkOLK8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ju76EdaxYrc2VgAjivV0KVt2GMgCCgQhkFEfaJJ6/pgDxTefM1lg4Tf1OWyD6kJF1
 KPs45HSaTf/dlBDXadIlmKLrd/PTXlvHaEPFN+6htEnDe9la3DhVDjvzJ08pFbHCu1
 Mi9Dcrl+rhMsrI94lHkbmm+ltjVTd56lvqQYX2iMsa9T1VhTsDaczRIlDIIrjNFfwV
 BJFkhdoI7ChFFbj0fL95fN0enUv6F2jgu70AtVwj6XP/DlYWjcgdm+p8m6To/KCBGH
 7u3hKM5vMU2n1gcpbXdQJ1gi5+guUy9KsxG9mMUy4fX4yx/ByjRBAgjJViZhPyf2di
 YfF8DVjTLFaVg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ju76Edax
Subject: Re: [Intel-wired-lan] [PATCH 2/2] dim: pass dim_sample to net_dim()
 by reference
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

On Wed, 30 Oct 2024 13:49:08 -0600 Caleb Sander Mateos wrote:
> net_dim() is currently passed a struct dim_sample argument by value.
> struct dim_sample is 24 bytes. Since this is greater 16 bytes, x86-64
> passes it on the stack. All callers have already initialized dim_sample
> on the stack, so passing it by value requires pushing a duplicated copy
> to the stack. Either witing to the stack and immediately reading it, or
> perhaps dereferencing addresses relative to the stack pointer in a chain
> of push instructions, seems to perform quite poorly.

Looks like patch 1 didn't get CCed to netdev. Please repost?
-- 
pw-bot: cr
