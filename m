Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 389FD9B946C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Nov 2024 16:30:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEADA606BE;
	Fri,  1 Nov 2024 15:30:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4MIP6-fr1cW2; Fri,  1 Nov 2024 15:30:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03C75606CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730475048;
	bh=W9ptO2AWHJvDBqBcplJ9x7hVH9AqEur0XDGEUTb8INw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tLVIRPU51UZWEzlTT4l0eJKm7Y0sd68vTvxfEDOrwaZtM+DL1w8R6VBJLGxpSgLd3
	 tzhrG9/Zneeoj8Ht57vhHKhk0c56sKC20HZbYlvb9k5R+pL35Ugu/9N4OFSyywxDi+
	 cksMUj3BwxMRfbUtvbTFMM14T2hL+S+eBjj6eu08r+NKtYDA5A9pWg20OfQG19ReFX
	 8RT2Hv8NMqJm+Bvkvsf96C5V7EN/qEpedwwWuj2Wu0DHDEyPIgL1QzEmeqWpD1QELo
	 /5tFHJslmM/2+xWn0X88cd7gBAPJgEcNmWNlqeML0Oqd2MWEc3251GVR7AhMC6eWC0
	 Xx7zeNy8NLC/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03C75606CA;
	Fri,  1 Nov 2024 15:30:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8C1E05E50
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 18:22:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D20C4018E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 18:22:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b7muI01oG7a4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2024 18:22:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=207.171.188.206;
 helo=smtp-fw-9106.amazon.com; envelope-from=prvs=027303c81=akiyano@amazon.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 709F440E19
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 709F440E19
Received: from smtp-fw-9106.amazon.com (smtp-fw-9106.amazon.com
 [207.171.188.206])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 709F440E19
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 18:22:43 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.11,247,1725321600"; d="scan'208";a="771897177"
Thread-Topic: [resend PATCH 1/2] dim: make dim_calc_stats() inputs const
 pointers
Received: from pdx4-co-svc-p1-lb2-vlan2.amazon.com (HELO
 smtpout.prod.us-east-1.prod.farcaster.email.amazon.dev) ([10.25.36.210])
 by smtp-border-fw-9106.sea19.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Oct 2024 18:22:33 +0000
Received: from EX19MTAEUA002.ant.amazon.com [10.0.10.100:61073]
 by smtpin.naws.eu-west-1.prod.farcaster.email.amazon.dev [10.0.2.199:2525]
 with esmtp (Farcaster)
 id 5b69f371-b19a-4292-b4a0-5c7f596b7e5d; Thu, 31 Oct 2024 18:22:32 +0000 (UTC)
X-Farcaster-Flow-ID: 5b69f371-b19a-4292-b4a0-5c7f596b7e5d
Received: from EX19D005EUA001.ant.amazon.com (10.252.50.159) by
 EX19MTAEUA002.ant.amazon.com (10.252.50.126) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.34;
 Thu, 31 Oct 2024 18:22:31 +0000
Received: from EX19D022EUA002.ant.amazon.com (10.252.50.201) by
 EX19D005EUA001.ant.amazon.com (10.252.50.159) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.35;
 Thu, 31 Oct 2024 18:22:31 +0000
Received: from EX19D022EUA002.ant.amazon.com ([fe80::7f87:7d63:def0:157d]) by
 EX19D022EUA002.ant.amazon.com ([fe80::7f87:7d63:def0:157d%3]) with
 mapi id 15.02.1258.034; Thu, 31 Oct 2024 18:22:31 +0000
From: "Kiyanovski, Arthur" <akiyano@amazon.com>
To: Florian Fainelli <florian.fainelli@broadcom.com>, Caleb Sander Mateos
 <csander@purestorage.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, "Brett
 Creeley" <brett.creeley@amd.com>, Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Christophe Leroy
 <christophe.leroy@csgroup.eu>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "Arinzon, David" <darinzon@amazon.com>, "David S. Miller"
 <davem@davemloft.net>, Doug Berger <opendmb@gmail.com>, Eric Dumazet
 <edumazet@google.com>, =?utf-8?B?RXVnZW5pbyBQw6lyZXo=?=
 <eperezma@redhat.com>, Felix Fietkau <nbd@nbd.name>, Geetha sowjanya
 <gakula@marvell.com>, hariprasad <hkelam@marvell.com>, Jakub Kicinski
 <kuba@kernel.org>, Jason Wang <jasowang@redhat.com>, Jonathan Corbet
 <corbet@lwn.net>, Leon Romanovsky <leon@kernel.org>, Lorenzo Bianconi
 <lorenzo@kernel.org>, Louis Peens <louis.peens@corigine.com>, Mark Lee
 <Mark-MC.Lee@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Michael Chan <michael.chan@broadcom.com>, "Michael S. Tsirkin"
 <mst@redhat.com>, "Dagan, Noam" <ndagan@amazon.com>, Paolo Abeni
 <pabeni@redhat.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, "Roy
 Pledge" <Roy.Pledge@nxp.com>, "Bshara, Saeed" <saeedb@amazon.com>, "Saeed
 Mahameed" <saeedm@nvidia.com>, Sean Wang <sean.wang@mediatek.com>, "Shannon
 Nelson" <shannon.nelson@amd.com>, "Agroskin, Shay" <shayagr@amazon.com>,
 Simon Horman <horms@kernel.org>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Sunil Goutham <sgoutham@marvell.com>, Tal Gilboa <talgi@nvidia.com>, "Tariq
 Toukan" <tariqt@nvidia.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Xuan Zhuo
 <xuanzhuo@linux.alibaba.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org"
 <linux-mediatek@lists.infradead.org>, "linuxppc-dev@lists.ozlabs.org"
 <linuxppc-dev@lists.ozlabs.org>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "oss-drivers@corigine.com"
 <oss-drivers@corigine.com>, "virtualization@lists.linux.dev"
 <virtualization@lists.linux.dev>
Thread-Index: AQHbKys/FLYzAvitdkSVBoM6s5J6lrKhGqwAgAARw2A=
Date: Thu, 31 Oct 2024 18:22:15 +0000
Deferred-Delivery: Thu, 31 Oct 2024 18:21:26 +0000
Message-ID: <7bf7d713339e4854bfcb80c866aa55fe@amazon.com>
References: <20241031002326.3426181-1-csander@purestorage.com>
 <d9c01354-853c-459b-9da4-3c1d77102749@broadcom.com>
In-Reply-To: <d9c01354-853c-459b-9da4-3c1d77102749@broadcom.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.106.101.5]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 01 Nov 2024 15:30:43 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1730398963; x=1761934963;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=W9ptO2AWHJvDBqBcplJ9x7hVH9AqEur0XDGEUTb8INw=;
 b=MB+JSeOzCQxKvAEf02S6awjA1Gbmh0Wgxkb3wyddJVLQcyDycp8lVTIa
 4j77XVRpQQAAc1OIm18g006dUj53q+P6XMXxjKpbz2R/puag2D3pwYjQ1
 mgj+3I0KcKWCaEBkYN6rFIiEPJ63bvo52QtulM3c6+7y1fDC6URUVD/Tf
 s=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazon201209 header.b=MB+JSeOz
Subject: Re: [Intel-wired-lan] [resend PATCH 1/2] dim: make dim_calc_stats()
 inputs const pointers
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

T24gMTAvMzAvMjQgMTc6MjMsIENhbGViIFNhbmRlciBNYXRlb3Mgd3JvdGU6DQo+IE1ha2UgdGhl
IHN0YXJ0IGFuZCBlbmQgYXJndW1lbnRzIHRvIGRpbV9jYWxjX3N0YXRzKCkgY29uc3QgcG9pbnRl
cnMgdG8gDQo+IGNsYXJpZnkgdGhhdCB0aGUgZnVuY3Rpb24gZG9lcyBub3QgbW9kaWZ5IHRoZWly
IHZhbHVlcy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogQ2FsZWIgU2FuZGVyIE1hdGVvcyA8Y3NhbmRl
ckBwdXJlc3RvcmFnZS5jb20+DQoNClJldmlld2VkLWJ5OiBBcnRodXIgS2l5YW5vdnNraSA8YWtp
eWFub0BhbWF6b24uY29tPg0KDQpUaGFua3MsDQpBcnRodXINCg==
